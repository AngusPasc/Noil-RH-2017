unit frmtipopersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxStyles,{ dxSkinscxPCPainter,} cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, frm_barra,{ dxSkinsForm,} ZAbstractRODataset,
  ZAbstractDataset, ZDataset, dxRibbonRadialMenu, cxContainer, cxTextEdit,
  cxDBEdit, cxLabel, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter;

type
  Tfrm_tipopersonal = class(TdxRibbonForm)
    frmBarra1: TfrmBarra;
    ZQTipoPersonal: TZQuery;
    dsZQTipoPersonal: TDataSource;
    ZQTipoPersonaliIdTipo: TIntegerField;
    ZQTipoPersonalsDescripcion: TStringField;
    dxbrmngr1: TdxBarManager;
    dxEditar: TdxBarButton;
    dxGuardar: TdxBarButton;
    dxCancelar: TdxBarButton;
    dxEliminar: TdxBarButton;
    dxSalir: TdxBarButton;
    dxRefrescar: TdxBarButton;
    dxImprimir: TdxBarButton;
    dxInsertar: TdxBarButton;
    pm1: TdxRibbonPopupMenu;
    grid_tipopersonal: TcxGrid;
    cxgrdbtblvwBView_tipopersonal: TcxGridDBTableView;
    cxgrdbclmnBView_tipopersonaliIdTipo1: TcxGridDBColumn;
    cxgrdbclmnBView_tipopersonalsDescripcion1: TcxGridDBColumn;
    cxgrdlvl_tipopersonalLevel1: TcxGridLevel;
    pnl1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dbIdTipo: TcxDBTextEdit;
    sDescripcion: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actualizar;
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure cambio_stado;
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tipopersonal: Tfrm_tipopersonal;

implementation
uses frm_connection, Utilerias, Func_Genericas;
//fin de uses
{$R *.dfm}

{ TForm1 }

procedure Tfrm_tipopersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfrm_tipopersonal.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure Tfrm_tipopersonal.FormShow(Sender: TObject);
begin
  actualizar;
end;
procedure Tfrm_tipopersonal.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  cambio_stado;
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT MAX(iIdTipo) as id FROM tipo_personal;');
  connection.QryBusca.Open;
  ZQTipoPersonal.Append;
  if connection.QryBusca.RecordCount > 0 then
    ZQTipoPersonal.FieldByName('iIdTipo').AsInteger := (connection.QryBusca.FieldByName('id').AsInteger + 1)
  else
    ZQTipoPersonal.FieldByName('iIdTipo').AsInteger := 1;
end;

procedure Tfrm_tipopersonal.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  ZQTipoPersonal.Cancel;
  cambio_stado;
end;

procedure Tfrm_tipopersonal.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if ZQTipoPersonal.RecordCount>0 then
  begin
    if MSG_YN('Desea eliminar el Registro Activo?') then
    begin
      ZQTipoPersonal.Delete;
      MSG_OK('El registro fue eliminado exitosamente');
    end ;
  end else msg_er('No hay registros para eliminar');
end;

procedure Tfrm_tipopersonal.frmBarra1btnEditClick(Sender: TObject);
begin
  if ZQTipoPersonal.RecordCount>0 then
  begin
    frmBarra1.btnEditClick(Sender);
    ZQTipoPersonal.Edit;
    cambio_stado;
  end else msg_er('No hay registros que editar');
end;

procedure Tfrm_tipopersonal.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure Tfrm_tipopersonal.frmBarra1btnPostClick(Sender: TObject);
var mensaje : string;
begin
  frmBarra1.btnPostClick(Sender);
  if sDescripcion.Text = '' then
  begin
    MSG_W('Debe capturar la descripcion');
    Exit;
  end;
  if ZQTipoPersonal.State in [dsInsert] then
    mensaje:= 'Registro Guardado con éxito'
  else if ZQTipoPersonal.State in [dsedit] then
    mensaje:= 'Registro actualizado con éxito';
  ZQTipoPersonal.Post;
  cambio_stado;
  MSG_OK(mensaje);
end;

procedure Tfrm_tipopersonal.frmBarra1btnRefreshClick(Sender: TObject);
begin
  actualizar;
end;

procedure Tfrm_tipopersonal.actualizar;
begin
  ZQTipoPersonal.Active:=False;
  ZQTipoPersonal.Open;
end;
procedure Tfrm_tipopersonal.cambio_stado;
begin
   if ZQTipoPersonal.state in [dsBrowse] then
   begin
      dxInsertar.Enabled        :=True;
      dxEditar.Enabled          :=True;
      dxGuardar.Enabled         :=False;
      dxCancelar.Enabled        :=False;
      dxEliminar.Enabled        :=True;
      dxImprimir.Enabled        :=True;
      dxRefrescar.Enabled       :=True;
      dxSalir.Enabled           :=True;
      grid_tipopersonal.Enabled :=true;
   end else if ZQTipoPersonal.state in [dsInsert,dsEdit] then
   begin
      dxInsertar.Enabled        :=False;
      dxEditar.Enabled          :=False;
      dxGuardar.Enabled         :=True;
      dxCancelar.Enabled        :=True;
      dxEliminar.Enabled        :=False;
      dxImprimir.Enabled        :=False;
      dxRefrescar.Enabled       :=False;
      dxSalir.Enabled           :=False;
      grid_tipopersonal.Enabled :=false;
   end;
end;
end.
