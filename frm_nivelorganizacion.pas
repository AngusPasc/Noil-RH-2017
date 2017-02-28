unit frm_nivelorganizacion;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, dxBar, dxRibbonRadialMenu, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGridLevel, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinOffice2013LightGray, dxRibbon;

type
  Tfrmnivelorganizacion = class(TForm)
    qryestatus: TZQuery;
    ds_estatus: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    tsDescripcion: TDBEdit;
    dbPerforacion: TDBComboBox;
    qryestatusidnivelOrganizacion: TIntegerField;
    strngfldqryestatusacceso: TStringField;
    strngfldqryestatustitulonivel: TStringField;
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
    Grid_Organizacion: TcxGrid;
    cxgrdbtblvwBView_Organizacion: TcxGridDBTableView;
    cxgrdlvlGrid_OrganizacionLevel1: TcxGridLevel;
    cxgrdbclmnGrid_OrganizacionDBTableView1acceso1: TcxGridDBColumn;
    cxgrdbclmnGrid_OrganizacionDBTableView1titulonivel1: TcxGridDBColumn;
    pm1: TdxRibbonPopupMenu;
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
    procedure qryestatusAfterScroll(DataSet: TDataSet);
    procedure qryestatusAfterInsert(DataSet: TDataSet);
    procedure dxRefrescarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnivelorganizacion : Tfrmnivelorganizacion;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles, frm_inteligent, Func_Genericas;
{$R *.dfm}

procedure Tfrmnivelorganizacion.dxRefrescarClick(Sender: TObject);
begin
  qryestatus.Refresh;
end;

procedure Tfrmnivelorganizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  botonpermiso.Free;
end;

procedure Tfrmnivelorganizacion.FormShow(Sender: TObject);
begin
   OpcButton := '' ;
   qryestatus.Active := False ;
   qryestatus.Open ;
end;
procedure Tfrmnivelorganizacion.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure Tfrmnivelorganizacion.frmBarra1btnAddClick(Sender: TObject);
begin
   qryestatus.Append ;
   qryestatus.FieldValues['titulonivel'] := '';
   tsDescripcion.SetFocus;
   ActivarDesactivar_Botones(dxBarManager1, qryestatus, Grid_Organizacion);
end;

procedure Tfrmnivelorganizacion.frmBarra1btnEditClick(Sender: TObject);
begin
  If qryestatus.RecordCount > 0 Then
  Begin
    sOpcion := 'Edit';
    tsDescripcion.SetFocus;
    qryEstatus.Edit;
    ActivarDesactivar_Botones(dxBarManager1, qryestatus, Grid_Organizacion);
  End;
end;

procedure Tfrmnivelorganizacion.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
begin
  if trim(tsDescripcion.Text) = '' then
  begin
    MessageDlg('La descripcion debe tener un valor!', mtInformation, [mbOk], 0);
    exit;
  end;
  qryestatus.Post ;
  ActivarDesactivar_Botones(dxBarManager1, qryestatus, Grid_Organizacion);
end;

procedure Tfrmnivelorganizacion.frmBarra1btnCancelClick(Sender: TObject);
begin
  qryestatus.Cancel;
  ActivarDesactivar_Botones(dxBarManager1, qryestatus, Grid_Organizacion);
  sOpcion := '';
end;

procedure Tfrmnivelorganizacion.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If qryestatus.RecordCount > 0 then
  begin
    if MSG_YN('Desea eliminar el Registro Activo?') then
    begin
      try
        qryestatus.Delete;
      except
        on e : exception do
        begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Estatus de Empleados', 'Al eliminar registro', 0);
        end;
      end
    end
  end;
end;

procedure Tfrmnivelorganizacion.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryestatus.refresh ;
end;

procedure Tfrmnivelorganizacion.frmBarra1btnExitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnivelorganizacion.qryestatusAfterInsert(DataSet: TDataSet);
begin

    qryestatus.FieldValues['acceso'] := 'true' ;
end;

procedure Tfrmnivelorganizacion.qryestatusAfterScroll(DataSet: TDataSet);
begin
    if qryestatus.RecordCount > 0 then
    begin
        if (qryestatus.State <> dsInsert) then
         // tiColores.ItemIndex := qryestatus.FieldValues['iColor'];
    end;
end;

procedure Tfrmnivelorganizacion.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure Tfrmnivelorganizacion.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure Tfrmnivelorganizacion.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

end.
