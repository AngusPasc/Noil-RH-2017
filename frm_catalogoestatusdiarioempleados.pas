unit frm_catalogoestatusdiarioempleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, dxBar,
  dxRibbonRadialMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfrmCatalogoEstatusDiarioEmpleados = class(TForm)
  qryestatus: TZQuery;
  ds_estatus: TDataSource;
  qryestatussDescripcion: TStringField;
  qryestatusiColor: TIntegerField;
  qryestatusiColorTexto: TIntegerField;
  Panel1: TPanel;
  Panel2: TPanel;
  Label1: TLabel;
  tiColores: TColorBox;
  Label2: TLabel;
  tsDescripcion: TDBEdit;
  Label3: TLabel;
  TColorTexto: TColorBox;
  dxBarManager1: TdxBarManager;
  dxBarManager1Bar1: TdxBar;
  dxInsertar: TdxBarLargeButton;
  dxEditar: TdxBarLargeButton;
  dxGuardar: TdxBarLargeButton;
  dxCancelar: TdxBarLargeButton;
  dxEliminar: TdxBarLargeButton;
  dxRefrescar: TdxBarLargeButton;
  dxSalir: TdxBarLargeButton;
  dxImprimir: TdxBarLargeButton;
  PopupMenu: TdxRibbonRadialMenu;
  Grid_Estatus: TcxGrid;
  Grid_EstatusLevel1: TcxGridLevel;
  BView_EstatusDirario: TcxGridDBTableView;
  BView_EstatusDirariosDescripcion1: TcxGridDBColumn;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormShow(Sender: TObject);
  procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
  procedure tsDescripcionEnter(Sender: TObject);
  procedure tsDescripcionExit(Sender: TObject);
  procedure tiColoresEnter(Sender: TObject);
  procedure tiColoresExit(Sender: TObject);
  procedure qryestatusAfterScroll(DataSet: TDataSet);
  procedure TColorTextoEnter(Sender: TObject);
  procedure TColorTextoExit(Sender: TObject);
  procedure cambio_estado;
private
  { Private declarations }
public
  { Public declarations }
end;

var
  frmCatalogoEstatusDiarioEmpleados : TfrmCatalogoEstatusDiarioEmpleados;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

implementation
uses frm_consumibles, frm_repositorio, Func_Genericas;
{$R *.dfm}

procedure TfrmCatalogoEstatusDiarioEmpleados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.FormShow(Sender: TObject);
begin
  OpcButton := '' ;
  qryestatus.Active := False ;
  qryestatus.Open ;
  grid_estatus.SetFocus;
end;
procedure TfrmCatalogoEstatusDiarioEmpleados.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then tsDescripcion.SetFocus ;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.frmBarra1btnAddClick(Sender: TObject);
begin
  qryestatus.Append ;
  qryestatus.FieldValues['sDescripcion'] := '';
  tsDescripcion.SetFocus;
  cambio_estado;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.frmBarra1btnEditClick(Sender: TObject);
begin
  If qryestatus.RecordCount > 0 Then
  Begin
    sOpcion := 'Edit';
    tsDescripcion.SetFocus;
    qryEstatus.Edit;
    cambio_estado;
  End;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
begin
  if trim(tsDescripcion.Text) = '' then
  begin
    MessageDlg('La descripcion debe tener un valor!', mtInformation, [mbOk], 0);
    exit;
  end;
  qryestatus.FieldValues['iColor'] := tiColores.ItemIndex;
  qryestatus.FieldValues['iColorTexto'] := TColorTexto.ItemIndex;
  qryestatus.Post ;
  cambio_estado;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.frmBarra1btnCancelClick(Sender: TObject);
begin
  qryestatus.Cancel ;
  cambio_estado;
  sOpcion := '';
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   qryestatus.RecordCount > 0 then
  begin
    if MSG_YN('Desea eliminar el Registro Activo?') then
      qryestatus.Delete;
  end;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.frmBarra1btnRefreshClick(Sender: TObject);
begin
  qryestatus.refresh ;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.qryestatusAfterScroll(DataSet: TDataSet);
begin
  if qryestatus.RecordCount > 0 then
  begin
    if (qryestatus.State <> dsInsert) then
    begin
      tiColores.ItemIndex := qryestatus.FieldValues['iColor'];
      TColorTexto.ItemIndex := qryestatus.FieldValues['iColorTexto'];
    end;
  end;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.TColorTextoEnter(Sender: TObject);
begin
  TColorTexto.Color := $00E6FEFF;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.TColorTextoExit(Sender: TObject);
begin
  TColorTexto.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.tsIdGrupoKeyPress(Sender: TObject;var Key: Char);
begin
  If Key = #13 Then tsDescripcion.SetFocus
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.tiColoresEnter(Sender: TObject);
begin
  tiColores.Color := $00E6FEFF;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.tiColoresExit(Sender: TObject);
begin
  tiColores.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusDiarioEmpleados.cambio_estado;
begin
  if qryestatus.State in [dsInsert,dsEdit] then
  begin
    dxInsertar.Enabled      :=False;
    dxEditar.Enabled        :=False;
    dxGuardar.Enabled       :=True;
    dxCancelar.Enabled      :=True;
    dxEliminar.Enabled      :=False;
    dxImprimir.Enabled      :=False;
    dxRefrescar.Enabled     :=False;
    dxSalir.Enabled         :=False;
    grid_estatus.Enabled    :=False;
  end else
  if qryestatus.State in [dsBrowse] then
  begin
    dxInsertar.Enabled      :=True;
    dxEditar.Enabled        :=True;
    dxGuardar.Enabled       :=False;
    dxCancelar.Enabled      :=False;
    dxEliminar.Enabled      :=True;
    dxImprimir.Enabled      :=True;
    dxRefrescar.Enabled     :=True;
    dxSalir.Enabled         :=True;
    grid_estatus.Enabled    :=True;
  end;
end;
end.
