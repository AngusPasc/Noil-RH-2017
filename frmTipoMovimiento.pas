unit frmTipoMovimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid,  NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid, global,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, dxBar, dxRibbonRadialMenu,
  cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxBlobEdit, cxMemo, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  cxContainer, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit,
  cxCalc, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar, Menus, cxButtons;

type
  Tfrm_tipomovimiento = class(TForm)
    dsTipoMov: TDataSource;
    zqTipoMov: TZQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Splitter1: TSplitter;
    dxBarManager1: TdxBarManager;
    dxInsertar: TdxBarLargeButton;
    dxEditar: TdxBarLargeButton;
    dxGuardar: TdxBarLargeButton;
    dxCancelar: TdxBarLargeButton;
    dxEliminar: TdxBarLargeButton;
    dxRefrescar: TdxBarLargeButton;
    dxSalir: TdxBarLargeButton;
    dxImprimir: TdxBarLargeButton;
    Grid_TipoMov: TcxGrid;
    BView_TipoMov: TcxGridDBTableView;
    BView_TipoMovcodigodepartamento1: TcxGridDBColumn;
    BView_TipoMovtitulodepartamento1: TcxGridDBColumn;
    Grid_TipoMovLevel1: TcxGridLevel;
    dxBarManager1Bar1: TdxBar;
    cxDBNombre: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure blbfldQCatalogodeAreasdescripcionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure blbfldQCatalogodeAreascomentariosGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cambio_estado;
    procedure cxDBNombreEnter(Sender: TObject);
    procedure cxDBNombreExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tmovimiento: string;
  frm_tipomovimiento: Tfrm_tipomovimiento;
  //utgrid:ticdbgrid;
implementation

uses frm_connection, frmEmpleados, frm_repositorio, frmOtrosGastos;

{$R *.dfm}

procedure Tfrm_tipomovimiento.blbfldQCatalogodeAreascomentariosGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure Tfrm_tipomovimiento.blbfldQCatalogodeAreasdescripcionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure Tfrm_tipomovimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  frm_otrosgastos.zqTipoMov.Refresh;
  frm_otrosgastos.cxDBTipo.EditValue:=zqTipoMov.FieldByName('iId').AsInteger;
end;

procedure Tfrm_tipomovimiento.FormShow(Sender: TObject);
begin
  zqTipoMov.Active := False ;
  zqTipoMov.Open ;
end;

procedure Tfrm_tipomovimiento.frmBarra1btnAddClick(Sender: TObject);
begin
  //frmBarra1.btnAddClick(Sender);
  zqTipoMov.Append;
  cxDBNombre.SetFocus;
  cambio_estado;
end;

procedure Tfrm_tipomovimiento.frmBarra1btnCancelClick(Sender: TObject);
begin
  zqTipoMov.Cancel;
  cambio_estado;
end;

procedure Tfrm_tipomovimiento.frmBarra1btnDeleteClick(Sender: TObject);
begin
 If zqTipoMov.RecordCount  > 0 then
    if MessageDlg('¿Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqTipoMov.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_tipomovimiento.frmBarra1btnEditClick(Sender: TObject);
begin
  //frmBarra1.btnEditClick(Sender);
  If zqTipoMov.RecordCount > 0 Then
  begin
      zqTipoMov.Edit ;
      cambio_estado;
  end;
end;

procedure Tfrm_tipomovimiento.frmBarra1btnExitClick(Sender: TObject);
begin
  Close
end;

procedure Tfrm_tipomovimiento.frmBarra1btnPostClick(Sender: TObject);
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT MAX(iId) AS id FROM con_tipodemov;');
  connection.QryBusca.Open;


  if connection.QryBusca.FieldValues['id'] = null then
      zqTipoMov.FieldValues['iId'] := 1
  else
       zqTipoMov.FieldValues['iId'] := connection.QryBusca.FieldValues['id'] + 1;

  zqTipoMov.Post;
  cambio_estado;

end;

procedure Tfrm_tipomovimiento.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zqTipoMov.Refresh
end;

procedure Tfrm_tipomovimiento.cambio_estado;
begin
  if zqTipoMov.State in [dsInsert,dsEdit] then
  begin
    dxInsertar.Enabled      :=False;
    dxEditar.Enabled        :=False;
    dxGuardar.Enabled       :=True;
    dxCancelar.Enabled      :=True;
    dxEliminar.Enabled      :=False;
    dxImprimir.Enabled      :=False;
    dxRefrescar.Enabled     :=False;
    dxSalir.Enabled         :=False;
    Grid_TipoMov.Enabled    :=False;
  end else
  if zqTipoMov.State in [dsBrowse] then
  begin
    dxInsertar.Enabled      :=True;
    dxEditar.Enabled        :=True;
    dxGuardar.Enabled       :=False;
    dxCancelar.Enabled      :=False;
    dxEliminar.Enabled      :=True;
    dxImprimir.Enabled      :=True;
    dxRefrescar.Enabled     :=True;
    dxSalir.Enabled         :=True;
    Grid_TipoMov.Enabled    :=True;
  end;
end;

procedure Tfrm_tipomovimiento.cxDBNombreEnter(Sender: TObject);
begin
  cxDBNombre.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_tipomovimiento.cxDBNombreExit(Sender: TObject);
begin
  cxDBNombre.Style.Color := global_color_salidaERP;
end;

end.
