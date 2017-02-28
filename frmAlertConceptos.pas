unit frmAlertConceptos;

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
  Tfrm_AlertConceptos = class(TForm)
    ds_AlertCpto: TDataSource;
    zq_AlertCpto: TZQuery;
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
    Grid_AlertCpto: TcxGrid;
    BView_AlertCpto: TcxGridDBTableView;
    BView_AlertCptocodigodepartamento1: TcxGridDBColumn;
    BView_AlertCptotitulodepartamento1: TcxGridDBColumn;
    Grid_AlertCptoLevel1: TcxGridLevel;
    dxBarManager1Bar1: TdxBar;
    cxDBNombre: TcxDBTextEdit;
    lkpModulo: TcxDBComboBox;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure cambio_estado;
    procedure cxDBNombreEnter(Sender: TObject);
    procedure cxDBNombreExit(Sender: TObject);
    procedure lkpModuloKeyPress(Sender: TObject; var Key: Char);
    procedure lkpModuloEnter(Sender: TObject);
    procedure lkpModuloExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_AlertConceptos: Tfrm_AlertConceptos;
  //utgrid:ticdbgrid;
implementation

uses frm_connection, frm_repositorio, frmNotificaciones;

{$R *.dfm}

procedure Tfrm_AlertConceptos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
 // frm_Notificaciones.zq_Conceptos.Refresh;
 // frm_Notificaciones.cbConcepto.EditValue:=zq_AlertCpto.FieldByName('iIdConcepto').AsInteger;
end;

procedure Tfrm_AlertConceptos.FormShow(Sender: TObject);
begin
  zq_AlertCpto.Active := False ;
  zq_AlertCpto.Open ;
end;

procedure Tfrm_AlertConceptos.frmBarra1btnAddClick(Sender: TObject);
begin
  zq_AlertCpto.Append;
  lkpModulo.SetFocus;
  cambio_estado;
end;

procedure Tfrm_AlertConceptos.frmBarra1btnCancelClick(Sender: TObject);
begin
  zq_AlertCpto.Cancel;
  cambio_estado;
end;

procedure Tfrm_AlertConceptos.frmBarra1btnDeleteClick(Sender: TObject);
begin
 If zq_AlertCpto.RecordCount  > 0 then
    if MessageDlg('¿Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zq_AlertCpto.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_AlertConceptos.frmBarra1btnEditClick(Sender: TObject);
begin
  If zq_AlertCpto.RecordCount > 0 Then
  begin
      zq_AlertCpto.Edit ;
      cambio_estado;
  end;
end;

procedure Tfrm_AlertConceptos.frmBarra1btnExitClick(Sender: TObject);
begin
  Close
end;

procedure Tfrm_AlertConceptos.frmBarra1btnPostClick(Sender: TObject);
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT MAX(iIdConcepto) AS id FROM alert_conceptos;');
  connection.QryBusca.Open;


  if connection.QryBusca.FieldValues['id'] = null then
      zq_AlertCpto.FieldValues['iIdConcepto'] := 1
  else
       zq_AlertCpto.FieldValues['iIdConcepto'] := connection.QryBusca.FieldValues['id'] + 1;

  zq_AlertCpto.Post;
  cambio_estado;

end;

procedure Tfrm_AlertConceptos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zq_AlertCpto.Refresh
end;

procedure Tfrm_AlertConceptos.lkpModuloEnter(Sender: TObject);
begin
  lkpModulo.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_AlertConceptos.lkpModuloExit(Sender: TObject);
begin
  lkpModulo.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_AlertConceptos.lkpModuloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        cxDBNombre.SetFocus
end;

procedure Tfrm_AlertConceptos.cambio_estado;
begin
  if zq_AlertCpto.State in [dsInsert,dsEdit] then
  begin
    dxInsertar.Enabled      :=False;
    dxEditar.Enabled        :=False;
    dxGuardar.Enabled       :=True;
    dxCancelar.Enabled      :=True;
    dxEliminar.Enabled      :=False;
    dxImprimir.Enabled      :=False;
    dxRefrescar.Enabled     :=False;
    dxSalir.Enabled         :=False;
    Grid_AlertCpto.Enabled    :=False;
  end else
  if zq_AlertCpto.State in [dsBrowse] then
  begin
    dxInsertar.Enabled      :=True;
    dxEditar.Enabled        :=True;
    dxGuardar.Enabled       :=False;
    dxCancelar.Enabled      :=False;
    dxEliminar.Enabled      :=True;
    dxImprimir.Enabled      :=True;
    dxRefrescar.Enabled     :=True;
    dxSalir.Enabled         :=True;
    Grid_AlertCpto.Enabled    :=True;
  end;
end;

procedure Tfrm_AlertConceptos.cxDBNombreEnter(Sender: TObject);
begin
  cxDBNombre.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_AlertConceptos.cxDBNombreExit(Sender: TObject);
begin
  cxDBNombre.Style.Color := global_color_salidaERP;
end;

end.
