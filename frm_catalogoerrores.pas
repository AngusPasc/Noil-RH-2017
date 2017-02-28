unit frm_catalogoerrores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  frm_connection, StdCtrls, Mask, DBCtrls, rxToolEdit, RXDBCtrl,
  ImgList,global, unitexcepciones, udbgrid, ComCtrls, Frm_ConfErrores, Buttons,
  frm_barra, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, NxCollection, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfrmCatalogoErrores = class(TForm)
    ds_catrrores: TDataSource;
    pnlCatErrores: TNxHeaderPanel;
    tsFechaInicio: TDateTimePicker;
    ZCatErrores: TZQuery;
    tsFechaFinal: TDateTimePicker;
    Label6: TLabel;
    Label5: TLabel;
    ImgLstBotones: TImageList;
    frmBarra1: TfrmBarra;
    cxGridCatErrores: TcxGrid;
    grid_cataErrores: TcxGridDBTableView;
    grid_cataErroresdFecha1: TcxGridDBColumn;
    grid_cataErroressMensaje1: TcxGridDBColumn;
    grid_cataErroressFormulario1: TcxGridDBColumn;
    grid_cataErroressDescripcion1: TcxGridDBColumn;
    grdcaterrlvl: TcxGridLevel;
    pnlinfError: TNxHeaderPanel;
    Label1: TLabel;
    tsFormulario: TDBEdit;
    tsDescripcion: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    MemMensaje: TDBMemo;
    MemError: TDBMemo;
    Label3: TLabel;
    btnConf: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure tsFechaInicioEnter(Sender: TObject);
    procedure tsFechaInicioExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure MemErrorEnter(Sender: TObject);
    procedure MemErrorExit(Sender: TObject);
    procedure MemMensajeEnter(Sender: TObject);
    procedure MemMensajeExit(Sender: TObject);
    procedure tsFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tsFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsFormularioKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure MemErrorKeyPress(Sender: TObject; var Key: Char);
    procedure MemMensajeKeyPress(Sender: TObject; var Key: Char);
    procedure tsFechaFinalEnter(Sender: TObject);
    procedure tsFechaFinalExit(Sender: TObject);
    procedure tsFormularioEnter(Sender: TObject);
    procedure tsFormularioExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ZCatErroressMensajeValidate(Sender: TField);
    procedure btnConfClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refrescarLista();
  end;

var
  frmCatalogoErrores: TfrmCatalogoErrores;
  utgrid:ticdbgrid;
implementation

{$R *.dfm}

procedure TfrmCatalogoErrores.refrescarLista;
begin
  if (tsFechaInicio.Date>tsFechaFinal.date) then
  begin
    showmessage('La fecha final no debe ser menor que la fecha de inicio');
    tsFechafinal.setFocus;
    exit;
  end;

  ZCatErrores.Active := false;
  ZCatErrores.Params.ParamByName('fechaini').AsDate := tsFechaInicio.Date;
  ZCatErrores.Params.ParamByName('fechafin').AsDate := tsFechaFinal.Date + 1;
  ZCatErrores.Open;
end;

procedure TfrmCatalogoErrores.tsDescripcionEnter(Sender: TObject);
begin
  tsdescripcion.Color := global_color_entradaERP
end;

procedure TfrmCatalogoErrores.tsDescripcionExit(Sender: TObject);
begin
  tsdescripcion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoErrores.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
      If Key = #13 Then
        memerror.SetFocus
end;

procedure TfrmCatalogoErrores.tsFechaFinalEnter(Sender: TObject);
begin

  tsfechafinal.color:=global_color_entradaERP;
end;

procedure TfrmCatalogoErrores.tsFechaFinalExit(Sender: TObject);
begin
  tsfechafinal.color:=global_color_salidaERP;
  refrescarLista;
end;

procedure TfrmCatalogoErrores.tsFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
      If Key = #13 Then
        tsformulario.SetFocus
end;

procedure TfrmCatalogoErrores.tsFechaInicioEnter(Sender: TObject);
begin
  tsfechainicio.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoErrores.tsFechaInicioExit(Sender: TObject);
begin
  tsfechainicio.color:= global_color_salidaERP;
  refrescarLista;
end;

procedure TfrmCatalogoErrores.tsFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsfechafinal.SetFocus
end;

procedure TfrmCatalogoErrores.tsFormularioEnter(Sender: TObject);
begin
  tsformulario.color:=global_color_entradaERP
end;

procedure TfrmCatalogoErrores.tsFormularioExit(Sender: TObject);
begin
  tsformulario.color:=global_color_salidaERP;
end;

procedure TfrmCatalogoErrores.tsFormularioKeyPress(Sender: TObject;
  var Key: Char);
begin
      If Key = #13 Then
        tsdescripcion.SetFocus
end;

procedure TfrmCatalogoErrores.ZCatErroressMensajeValidate(Sender: TField);
begin
    if length(trim(sender.text))< 10 then
    begin
      messagedlg('El Campo de Mensaje debe tener al menos 10 Caracteres',mtinformation,[mbok],0);
      Memmensaje.SetFocus;
      abort;
    end;
end;

procedure TfrmCatalogoErrores.btnCancelClick(Sender: TObject);
begin
  if ZCatErrores.State in [dsInsert, dsEdit] then begin
    zCatErrores.Cancel;
    cxGridCatErrores.Enabled := True;
    tsFormulario.SetFocus;
    frmBarra1.btnAdd.Enabled := True;
    frmBarra1.btnEdit.Enabled := True;
    frmBarra1.btnPost.Enabled := False;
    frmBarra1.btnCancel.Enabled := False;
    frmBarra1.btnDelete.Enabled := True;
    frmBarra1.btnPrinter.Enabled := True;
    frmBarra1.btnRefresh.Enabled := True;
    frmBarra1.btnExit.Enabled := True;
    //btnAplicar.Enabled := True;
    btnConf.Enabled := True;
    tsFechaInicio.Enabled := True;
    tsFechaFinal.Enabled := True;
  end;
end;

procedure TfrmCatalogoErrores.btnConfClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConfErrores, FrmConfErrores);
  FrmConfErrores.ShowModal;
end;

procedure TfrmCatalogoErrores.btnDeleteClick(Sender: TObject);
begin
  if ZCatErrores.RecordCount > 0 then begin
    Try
      zCatErrores.Delete;
    Except
      ShowMessage('No se puede eliminar el registro desde aquí, avise a un administrador del sistema');
    End;
  end;
end;

procedure TfrmCatalogoErrores.btnEditClick(Sender: TObject);
begin
  if ZCatErrores.RecordCount > 0 then begin
    cxGridCatErrores.Enabled := False;
    ZCatErrores.Edit;
    tsFormulario.SetFocus;
    frmBarra1.btnAdd.Enabled := False;
    frmBarra1.btnEdit.Enabled := False;
    frmBarra1.btnPost.Enabled := True;
    frmBarra1.btnCancel.Enabled := True;
    frmBarra1.btnDelete.Enabled := False;
    frmBarra1.btnPrinter.Enabled := False;
    frmBarra1.btnRefresh.Enabled := False;
    frmBarra1.btnExit.Enabled := False;
    //btnAplicar.Enabled := False;
    btnConf.Enabled := False;
    tsFechaInicio.Enabled := False;
    tsFechaFinal.Enabled := False;
  end;
end;

procedure TfrmCatalogoErrores.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCatalogoErrores.btnPostClick(Sender: TObject);
begin
  if ZCatErrores.State in [dsInsert, dsEdit] then begin
    zCatErrores.Post;
    cxGridCatErrores.Enabled := True;
    tsFormulario.SetFocus;
    frmBarra1.btnAdd.Enabled := True;
    frmBarra1.btnEdit.Enabled := True;
    frmBarra1.btnPost.Enabled := False;
    frmBarra1.btnCancel.Enabled := False;
    frmBarra1.btnDelete.Enabled := True;
    frmBarra1.btnPrinter.Enabled := True;
    frmBarra1.btnRefresh.Enabled := True;
    frmBarra1.btnExit.Enabled := True;
    //btnAplicar.Enabled := True;
    btnConf.Enabled := True;
    tsFechaInicio.Enabled := True;
    tsFechaFinal.Enabled := True;
  end;
end;

procedure TfrmCatalogoErrores.btnRefreshClick(Sender: TObject);
begin
  zCatErrores.Refresh;
end;

procedure TfrmCatalogoErrores.btnAplicarClick(Sender: TObject);
begin
  refrescarLista;
end;

procedure TfrmCatalogoErrores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmCatalogoErrores.FormShow(Sender: TObject);
begin
  tsFechaInicio.Date := Now;
  tsFechaFinal.Date := Now;
  refrescarLista();
end;

procedure TfrmCatalogoErrores.frmBarra1btnAddClick(Sender: TObject);
begin
  //frmBarra1btnAddClick(Sender);
  cxGridCatErrores.Enabled := False;
  ZCatErrores.Open;
  tsFormulario.SetFocus;
  frmBarra1.btnAdd.Enabled := False;
  frmBarra1.btnEdit.Enabled := False;
  frmBarra1.btnPost.Enabled := True;
  frmBarra1.btnCancel.Enabled := True;
  frmBarra1.btnDelete.Enabled := False;
  frmBarra1.btnPrinter.Enabled := False;
  frmBarra1.btnRefresh.Enabled := False;
  frmBarra1.btnExit.Enabled := False;
  //btnAplicar.Enabled := False;
  btnConf.Enabled := False;
  tsFechaInicio.Enabled := False;
  tsFechaFinal.Enabled := False;
end;

procedure TfrmCatalogoErrores.frmBarra1btnCancelClick(Sender: TObject);
begin
  if ZCatErrores.State in [dsInsert, dsEdit] then begin
    zCatErrores.Cancel;
    cxGridCatErrores.Enabled := True;
    tsFormulario.SetFocus;
    frmBarra1.btnAdd.Enabled := True;
    frmBarra1.btnEdit.Enabled := True;
    frmBarra1.btnPost.Enabled := False;
    frmBarra1.btnCancel.Enabled := False;
    frmBarra1.btnDelete.Enabled := True;
    frmBarra1.btnPrinter.Enabled := True;
    frmBarra1.btnRefresh.Enabled := True;
    frmBarra1.btnExit.Enabled := True;
    //btnAplicar.Enabled := True;
    btnConf.Enabled := True;
    tsFechaInicio.Enabled := True;
    tsFechaFinal.Enabled := True;
  end;
end;

procedure TfrmCatalogoErrores.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if ZCatErrores.RecordCount > 0 then begin
    Try
      zCatErrores.Delete;
    Except
      ShowMessage('No se puede eliminar el registro desde aquí, avise a un administrador del sistema');
    End;
  end;
end;

procedure TfrmCatalogoErrores.frmBarra1btnEditClick(Sender: TObject);
begin
  if ZCatErrores.RecordCount > 0 then begin
    cxGridCatErrores.Enabled := False;
    ZCatErrores.Edit;
    tsFormulario.SetFocus;
    frmBarra1.btnAdd.Enabled := False;
    frmBarra1.btnEdit.Enabled := False;
    frmBarra1.btnPost.Enabled := True;
    frmBarra1.btnCancel.Enabled := True;
    frmBarra1.btnDelete.Enabled := False;
    frmBarra1.btnPrinter.Enabled := False;
    frmBarra1.btnRefresh.Enabled := False;
    frmBarra1.btnExit.Enabled := False;
    //btnAplicar.Enabled := False;
    btnConf.Enabled := False;
    tsFechaInicio.Enabled := False;
    tsFechaFinal.Enabled := False;
  end;
end;

procedure TfrmCatalogoErrores.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCatalogoErrores.frmBarra1btnPostClick(Sender: TObject);
begin
  if ZCatErrores.State in [dsInsert, dsEdit] then begin
    zCatErrores.Post;
    cxGridCatErrores.Enabled := True;
    tsFormulario.SetFocus;
    frmBarra1.btnAdd.Enabled := True;
    frmBarra1.btnEdit.Enabled := True;
    frmBarra1.btnPost.Enabled := False;
    frmBarra1.btnCancel.Enabled := False;
    frmBarra1.btnDelete.Enabled := True;
    frmBarra1.btnPrinter.Enabled := True;
    frmBarra1.btnRefresh.Enabled := True;
    frmBarra1.btnExit.Enabled := True;
    //btnAplicar.Enabled := True;
    btnConf.Enabled := True;
    tsFechaInicio.Enabled := True;
    tsFechaFinal.Enabled := True;
  end;
end;

procedure TfrmCatalogoErrores.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zCatErrores.Refresh;
end;

procedure TfrmCatalogoErrores.MemErrorEnter(Sender: TObject);
begin
  memerror.Color := global_color_entradaERP
end;

procedure TfrmCatalogoErrores.MemErrorExit(Sender: TObject);
begin
  memerror.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoErrores.MemErrorKeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 Then
        memmensaje.SetFocus
end;

procedure TfrmCatalogoErrores.MemMensajeEnter(Sender: TObject);
begin
if length(tsformulario.Text)<1 then
  memmensaje.ReadOnly:=true
else
memmensaje.ReadOnly:=false;
  memmensaje.Color := global_color_entradaERP
end;

procedure TfrmCatalogoErrores.MemMensajeExit(Sender: TObject);
begin
  memmensaje.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoErrores.MemMensajeKeyPress(Sender: TObject;
  var Key: Char);
begin

      If Key = #13 Then
        tsformulario.SetFocus
end;

end.
