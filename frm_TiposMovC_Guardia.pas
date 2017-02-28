unit frm_TiposMovC_Guardia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,  cxStyles, {dxSkinscxPCPainter, }
  cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxContainer,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  dxRibbonRadialMenu, cxTextEdit, cxDBEdit, cxLabel, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, frm_barra, {dxSkinsForm,} ExtCtrls, FormAutoScaler, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, utilerias;

type
  TfrmTiposMovC_Guardia = class(TdxRibbonForm)
    frmBarra1: TfrmBarra;
    cxLabel1: TcxLabel;
    iId: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    sDescripcion: TcxDBTextEdit;
    zqryMovto: TZQuery;
    dsMovto: TDataSource;
    frxDBdsMovto: TfrxDBDataset;
    RpMovto: TfrxReport;
    intgrfldMovtoiIdTipoMovto: TIntegerField;
    strngfldMovtosDescripcion: TStringField;
    Panel1: TPanel;
    cxGdMovto: TcxGrid;
    cxGridDbTableGdMovtoDBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1iIdTipoMovto1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sDescripcion1: TcxGridDBColumn;
    cxgrdlvlGdMovtoLevel1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxRibbonRadialMenu1: TdxRibbonRadialMenu;
    btnadd: TdxBarButton;
    btnedit: TdxBarButton;
    btnpost: TdxBarButton;
    btncancel: TdxBarButton;
    btndelete: TdxBarButton;
    btnprinter: TdxBarButton;
    btnrefresh: TdxBarButton;
    btnsalir: TdxBarButton;
    bbandera: TcxTextEdit;
    fsc_TiposMovC_G: TFormAutoScaler;
    procedure FormCreate(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTiposMovC_Guardia: TfrmTiposMovC_Guardia;

implementation
uses frm_inteligent, frm_connection, global, frm_empleadosguardias, Func_Genericas;

{$R *.dfm}

{ TForm1 }

procedure TfrmTiposMovC_Guardia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if bbandera.text ='frmTiposMovC_Guardia' then
  begin
    frmempleadosguardias.zqryTipoMovto.Refresh;
    frmempleadosguardias.TipoMovimiento.EditValue:=  (zqryMovto.FieldByName('iIdTipoMovto').asInteger);
    bbandera.text:='';
  end;
  Action:=caFree;
end;

procedure TfrmTiposMovC_Guardia.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmTiposMovC_Guardia.FormShow(Sender: TObject);
begin
  zqryMovto.Active:=false;
  zqryMovto.Open;
end;

procedure TfrmTiposMovC_Guardia.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  cxGdMovto.Enabled := False;
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT MAX(iIdTipoMovto) as id FROM seguimientotipomovto;');
  connection.QryBusca.Open;
  zqryMovto.Append;
  if connection.QryBusca.RecordCount > 0 then
  begin
    zqryMovto.FieldByName('iIdTipoMovto').AsInteger := (connection.QryBusca.FieldByName('id').AsInteger + 1);
  end
  else
  begin
    zqryMovto.FieldByName('iIdTipoMovto').AsInteger := 1;
  end;
  sDescripcion.SetFocus;
end;

procedure TfrmTiposMovC_Guardia.frmBarra1btnCancelClick(Sender: TObject);
begin
  zqryMovto.Cancel;
  frmBarra1.btnCancelClick(Sender);
  cxGdMovto.Enabled := True;
end;

procedure TfrmTiposMovC_Guardia.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if zqryMovto.RecordCount > 0 then
  begin
    if MessageDlg('Desea Eliminar el registro seleccionado', mtConfirmation, [ mbYes, mbNo ], 0) = mrYes then
      zqryMovto.Delete;
  end
  else
    MessageDlg( 'No hay registros que eliminar.', mtInformation, [ mbOK ], 0 );

end;

procedure TfrmTiposMovC_Guardia.frmBarra1btnEditClick(Sender: TObject);
begin
  if zqryMovto.RecordCount > 0 then
  begin
    zqryMovto.Edit;
    cxGdMovto.Enabled := False;
    frmBarra1.btnEditClick(Sender);
  end
  else MSG_ER('No hay regitros para editar');
  
end;

procedure TfrmTiposMovC_Guardia.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   frmTiposMovC_Guardia.Close;
end;

procedure TfrmTiposMovC_Guardia.frmBarra1btnPostClick(Sender: TObject);
begin
  if sDescripcion.Text = '' then
  MSG_ER('El campo descripcion no puede ir vacio')
  else
  begin
    zqryMovto.Post;
    frmBarra1.btnPostClick(Sender);
    cxGdMovto.Enabled :=True;
    MSG_OK('El registro se almaceno correctamente');
  end;

end;

procedure TfrmTiposMovC_Guardia.frmBarra1btnPrinterClick(Sender: TObject);
begin
  if zqryMovto.RecordCount > 0 then
  begin
    RpMovto.LoadFromFile(global_files + 'TiposMovimientosGuardias.fr3');
    RpMovto.ShowReport();
  end else msg_er('No registros que imprimir');
end;

procedure TfrmTiposMovC_Guardia.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zqryMovto.Active:=false;
  zqryMovto.Open;
end;

end.
