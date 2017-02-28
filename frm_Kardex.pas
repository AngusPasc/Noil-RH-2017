unit frm_Kardex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, RXDBCtrl, frm_connection, DBCtrls,UnitTBotonesPermisos,
  StdCtrls, Buttons, global, ZAbstractRODataset, ZDataset, udbgrid,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, ImgList, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  FormAutoScaler ,CxGridExportLink,ShellAPI;

type
  TfrmKardex = class(TForm)
    ds_usuarios: TDataSource;
    Filtro: TGroupBox;
    chkTodos: TCheckBox;
    tsIdUsuario: TDBLookupComboBox;
    Label1: TLabel;
    ds_KardexSistema: TDataSource;
    Usuarios: TZReadOnlyQuery;
    Kardex: TZReadOnlyQuery;
    cxGrid_Kardex: TcxGrid;
    grdkardexlvl: TcxGridLevel;
    gridKardex: TcxGridDBTableView;
    gridKardexsIdUsuario1: TcxGridDBColumn;
    gridKardexdIdFecha1: TcxGridDBColumn;
    gridKardexsHora1: TcxGridDBColumn;
    gridKardexlOrigen1: TcxGridDBColumn;
    gridKardexsDescripcion1: TcxGridDBColumn;
    iconos: TcxImageList;
    cxBtnSalir: TcxButton;
    cxBtnVisualizar: TcxButton;
    dlgSave1: TSaveDialog;
    pmexportar: TPopupMenu;
    mniExportarExcel1: TMenuItem;
    FormAutoScaler1: TFormAutoScaler;
    procedure tsIdUsuarioEnter(Sender: TObject);
    procedure tsIdUsuarioExit(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniExportarExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKardex: TfrmKardex;
  utgrid:ticdbgrid;
  BotonPermiso: TBotonesPermisos;
implementation

uses UInteliDialog;

{$R *.dfm}

procedure TfrmKardex.tsIdUsuarioEnter(Sender: TObject);
begin
    tsIdUsuario.Color := global_color_entradaERP
end;

procedure TfrmKardex.tsIdUsuarioExit(Sender: TObject);
begin
    tsIdUsuario.Color := global_color_salidaPU
end;

procedure TfrmKardex.btnVisualizarClick(Sender: TObject);
begin
    Kardex.Active := False ;
    Kardex.SQL.Clear ;
    If chkTodos.Checked Then
    Begin
        Kardex.SQL.Add('Select * From kardex_sistema Where sContrato = :Contrato Order By dIdFecha, sHora DESC') ;
        Kardex.Params.ParamByName('Contrato').DataType := ftString ;
        Kardex.Params.ParamByName('Contrato').Value := global_contrato ;
        Kardex.Open ;
    End
    Else
    Begin
        Kardex.SQL.Add('Select * From kardex_sistema Where sContrato = :Contrato And sIdUsuario = :Usuario Order By dIdFecha, sHora DESC') ;
        Kardex.Params.ParamByName('Contrato').DataType := ftString ;
        Kardex.Params.ParamByName('Contrato').Value := global_contrato ;
        Kardex.Params.ParamByName('Usuario').DataType := ftString ;
        Kardex.Params.ParamByName('Usuario').Value := tsIdUsuario.KeyValue ;
        Kardex.Open ;
    End;

end;

procedure TfrmKardex.tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    cxbtnVisualizar.SetFocus;
end;

procedure TfrmKardex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  botonpermiso.free;
  action := cafree ;
end;

procedure TfrmKardex.FormShow(Sender: TObject);
begin
  usuarios.Open ;
end;

procedure TfrmKardex.mniExportarExcel1Click(Sender: TObject);
Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxGrid_Kardex);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TfrmKardex.btnSalirClick(Sender: TObject);
begin
    Close
end;

end.
