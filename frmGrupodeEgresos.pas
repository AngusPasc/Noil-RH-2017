unit frmGrupodeEgresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, global, UFunctionsGHH,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, dxBar, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxRibbonRadialMenu, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, frxClass, frxDBSet,
  dxRibbon;

type
  Tfrm_GrupodeEgresos = class(TForm)
    dszQGrupodeEgresos: TDataSource;
    qryGrupodeEgresos: TZQuery;
    frmBarra1: TfrmBarra;
    cGrupodeEgresossIdGrupo: TStringField;
    cGrupodeEgresossDescripcion: TStringField;
    Label1: TLabel;
    tsIdGrupo: TDBEdit;
    Label2: TLabel;
    tsDescripcion: TDBEdit;
    pnlEgresos: TPanel;
    grid_Comunidades: TcxGrid;
    BView_grid_Comunidades: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1sIdGrupo1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sDescripcion1: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    dxbrmngr1: TdxBarManager;
    Editar1: TdxBarButton;
    Registrar1: TdxBarButton;
    Can1: TdxBarButton;
    Eliminar1: TdxBarButton;
    Salir1: TdxBarButton;
    Refresh1: TdxBarButton;
    Imprimir1: TdxBarButton;
    Insertar1: TdxBarButton;
    dbfrxgposegresos: TfrxDBDataset;
    frxEgresos: TfrxReport;
    pm_popupgrupodeegresos: TdxRibbonPopupMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryGrupodeEgresosAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure grid_ComunidadesTitleClick(Column: TColumn);
    procedure grid_ComunidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPrinterClick(Sender: TObject);
    procedure closeFormulario;
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_GrupodeEgresos: Tfrm_GrupodeEgresos;
  //utgrid:ticdbgrid;
implementation

uses frm_connection, frmCatalogoEgresos;

{$R *.dfm}

procedure Tfrm_GrupodeEgresos.btnPrinterClick(Sender: TObject);
begin
   if not FileExists(global_files + global_miReporte + '_CADfrgpoEgresos.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrgpoEgresos.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

If qryGrupodeEgresos.RecordCount > 0 Then
    frxEgresos.PreviewOptions.Modal := False ;
    frxEgresos.PreviewOptions.ShowCaptions := False ;
    frxEgresos.Previewoptions.ZoomMode := zmPageWidth ;
    frxEgresos.LoadFromFile (global_files + global_miReporte + '_CADfrgpoEgresos.fr3') ;
      frxEgresos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))

end;

procedure Tfrm_GrupodeEgresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //utgrid.Destroy;
  closeFormulario;
  action := cafree ;
end;

procedure Tfrm_GrupodeEgresos.FormShow(Sender: TObject);
begin
  //UtGrid:=TicdbGrid.create(grid_Comunidades);
  qryGrupodeEgresos.Active := False ;
  qryGrupodeEgresos.Open ;
end;

procedure Tfrm_GrupodeEgresos.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  grid_Comunidades.Enabled:=False;
  qryGrupodeEgresos.Append ;
  tsIdGrupo.SetFocus;
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Imprimir1.Enabled := False ;
  Salir1.Enabled := False ;
end;

procedure Tfrm_GrupodeEgresos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  grid_Comunidades.Enabled:=True;
  qryGrupodeEgresos.Cancel;
  Insertar1.Enabled := true;
  Editar1.Enabled := true ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := true ;
  Refresh1.Enabled := true ;
  Imprimir1.Enabled := true ;
  Salir1.Enabled := true ;
end;

procedure Tfrm_GrupodeEgresos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If qryGrupodeEgresos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        qryGrupodeEgresos.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_GrupodeEgresos.frmBarra1btnEditClick(Sender: TObject);
begin
  If qryGrupodeEgresos.RecordCount > 0 Then
  begin
    frmBarra1.btnEditClick(Sender);
    grid_Comunidades.Enabled:=False;
    qryGrupodeEgresos.Edit ;
    tsIdGrupo.SetFocus;
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Imprimir1.Enabled := False ;
    Salir1.Enabled := False ;
  end ;
end;

procedure Tfrm_GrupodeEgresos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure Tfrm_GrupodeEgresos.frmBarra1btnPostClick(Sender: TObject);
var
  camposvacios : Boolean;
begin

  camposvacios := False;

  if (Trim( tsIdGrupo.Text) = '') or (Trim(tsDescripcion.Text) = '') then
    camposvacios := True;

  if Not camposvacios then
  begin
    qryGrupodeEgresos.Post ;
    closeFormulario;
    grid_Comunidades.Enabled:=True;
    frmBarra1.btnPostClick(Sender);
    Insertar1.Enabled := true;
    Editar1.Enabled := true ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := true ;
    Refresh1.Enabled := true ;
    Imprimir1.Enabled := true ;
    Salir1.Enabled := true ;
  end
  else
    MessageDlg('Existen campos vacios ', mtInformation, [mbOk], 0);
end;

procedure Tfrm_GrupodeEgresos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  qryGrupodeEgresos.Active:=false;
  qryGrupodeEgresos.Open;
end;

procedure Tfrm_GrupodeEgresos.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_GrupodeEgresos.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_GrupodeEgresos.grid_ComunidadesTitleClick(Column: TColumn);
begin

 //UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_GrupodeEgresos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        tsIdGrupo.SetFocus
end;

procedure Tfrm_GrupodeEgresos.tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        tsDescripcion.SetFocus
end;
procedure Tfrm_GrupodeEgresos.qryGrupodeEgresosAfterInsert(
  DataSet: TDataSet);
begin
    qryGrupodeEgresos.FieldValues['sIdGrupo'] := '*' ;
    qryGrupodeEgresos.FieldValues['sDescripcion'] := '*' ;
end;

procedure Tfrm_GrupodeEgresos.closeFormulario;
begin
    try
       frm_CatalogoEgresos.zqGrupodeEgresos.Refresh;
       frm_CatalogoEgresos.tsIdGrupo.KeyValue := qryGrupodeEgresos.FieldByName('sIdGrupo').AsString;
    Except
    end;
end;

end.
