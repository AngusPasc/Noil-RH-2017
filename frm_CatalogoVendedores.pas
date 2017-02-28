unit frm_CatalogoVendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, cxClasses, frm_barra,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxContainer,
  StdCtrls, cxDBEdit, cxMemo, cxCheckBox, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frm_connection, global, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, UFunctionsGHH,
  dxBarBuiltInMenu, dxRibbon, frxClass, frxDBSet, utilerias;

type
  TfrmCatVendedores = class(TForm)
    frmBarra1: TfrmBarra;
    dxbrmngr1: TdxBarManager;
    dxEditar1: TdxBarButton;
    dxGuardar1: TdxBarButton;
    dxCancelar1: TdxBarButton;
    dxEliminar1: TdxBarButton;
    dxSalir1: TdxBarButton;
    dxRefrescar1: TdxBarButton;
    dxImprimir1: TdxBarButton;
    dxInsertar2: TdxBarButton;
    dxInsertar1: TdxBarButton;
    dxRefrescar2: TdxBarButton;
    dxEditar2: TdxBarButton;
    dxEliminar2: TdxBarButton;
    dxGuardar2: TdxBarButton;
    dxCancelar2: TdxBarButton;
    dxSalir2: TdxBarButton;
    Datos: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxgrd1: TcxGrid;
    Grid_Vendedores: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    lbCompania: TcxLabel;
    lbRazonSocial: TcxLabel;
    lbNumerode: TcxLabel;
    lbCorreoElectronico: TcxLabel;
    lbRFC: TcxLabel;
    tsNombre: TcxDBTextEdit;
    tsEmail: TcxDBTextEdit;
    tsDepartamento: TcxDBTextEdit;
    ds_CatVendedores: TDataSource;
    qrCatVendedores: TZQuery;
    qrCatVendedoressIdCompania: TStringField;
    qrCatVendedoressNombre: TStringField;
    qrCatVendedoressEmail: TStringField;
    qrCatVendedoressIdDepartamento: TStringField;
    qrCatVendedoressGenero: TStringField;
    cbGenero: TcxDBComboBox;
    cxLabel1: TcxLabel;
    qrCatVendedoressTelefonoOf: TStringField;
    qrCatVendedoressTelefonoCel: TStringField;
    Grid_VendedoressNombre1: TcxGridDBColumn;
    Grid_VendedoressEmail1: TcxGridDBColumn;
    Grid_VendedoressIdDepartamento1: TcxGridDBColumn;
    Grid_VendedoressGenero1: TcxGridDBColumn;
    Grid_VendedoressTelefonoOf1: TcxGridDBColumn;
    Grid_VendedoressTelefonoCel1: TcxGridDBColumn;
    tcTelCelular: TcxDBTextEdit;
    tsTelOficina: TcxDBTextEdit;
    intgrfldCatVendedoresiIdVendedor: TIntegerField;
    pmpop_menu: TdxRibbonPopupMenu;
    frxDsVendedores: TfrxDBDataset;
    frxrprtVendedores: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);

    procedure cambioEstado;
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure tsEmailKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelOficinaKeyPress(Sender: TObject; var Key: Char);
    procedure tcTelCelularKeyPress(Sender: TObject; var Key: Char);
    procedure tsDepartamentoKeyPress(Sender: TObject; var Key: Char);
    procedure cbGeneroKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreEnter(Sender: TObject);
    procedure tsNombreExit(Sender: TObject);
    procedure telefonoKeyPress(Sender: TObject; var Key: Char);
    procedure btnPrinterClick(Sender: TObject);
  private
    sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;


var
  sTipoPersonal : String ;
  frmCatVendedores: TfrmCatVendedores;


implementation

uses frmCompanias;

{$R *.dfm}

procedure TfrmCatVendedores.btnAddClick(Sender: TObject);
begin
  qrCatVendedores.Append;
  Datos.ActivePageIndex:=0;
  frmBarra1.btnAddClick(Sender);
  tsNombre.SetFocus;
  cbGenero.ItemIndex := 0;
end;

procedure TfrmCatVendedores.btnCancelClick(Sender: TObject);
begin
  qrCatVendedores.Cancel;
  frmBarra1.btnCancelClick(Sender);
  Datos.ActivePageIndex:=1;
end;

procedure TfrmCatVendedores.btnDeleteClick(Sender: TObject);
begin
try
  qrCatVendedores.Delete;
except
  ShowMessage('No se puede eliminar. El vendedor esta activo');
end;

end;

procedure TfrmCatVendedores.btnEditClick(Sender: TObject);
begin
  if qrcatVendedores.RecordCount > 0 then
  begin
    qrCatVendedores.Edit;
    frmBarra1.btnEditClick(Sender);
    Datos.ActivePageIndex:=0;
    tsNombre.SetFocus;
  end
  else
    MessageDlg('No hay informacion que editar', mtInformation, [mbOk], 0);
end;

procedure TfrmCatVendedores.btnExitClick(Sender: TObject);
begin
  if (qrCatVendedores.State in [dsInsert]) or (qrCatVendedores.State in [dsEdit]) then
    qrCatVendedores.Cancel;
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure TfrmCatVendedores.btnPostClick(Sender: TObject);
begin
  if qrCatVendedores.State in [dsInsert] then
    qrCatVendedores.FieldByName('sIdCompania').AsString := global_contrato;
  qrCatVendedores.Post;
  frmBarra1.btnPostClick(Sender);
  Datos.ActivePageIndex:=1;

  //Si el formulario frmCompanias esta abierto, entonces pasar el vendedor creado al combo box de Vendedor
  if Assigned(frm_Companias) and (frm_Companias.frm_CompaniasAbierto = True) and (frm_Companias.catVendedoresNormal = True) then
  begin
     frm_Companias.qrCatVendedores.Close;
     frm_Companias.qrCatVendedores.Open;
     frm_Companias.qrCatVendedores.Refresh;
     frm_Companias.cbbVendedor.KeyValue := qrCatVendedores.FieldValues['iIdVendedor'];
     frm_Companias.cbbVendedor.SetFocus;
     Close;
  end;
end;

procedure TfrmCatVendedores.btnPrinterClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_VTAVendedores.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_VTAVendedores.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;
  If qrCatVendedores.RecordCount > 0 Then
  begin
    frxrprtVendedores.PreviewOptions.MDIChild := False ;
    frxrprtVendedores.PreviewOptions.Modal := True ;
    frxrprtVendedores.PreviewOptions.Maximized := lCheckMaximized () ;
    frxrprtVendedores.PreviewOptions.ShowCaptions := False ;
    frxrprtVendedores.Previewoptions.ZoomMode := zmPageWidth ;
    frxrprtVendedores.LoadFromFile(global_files + global_miReporte + '_VTAVendedores.fr3') ;
    frxrprtVendedores.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
  end;

end;

procedure TfrmCatVendedores.btnRefreshClick(Sender: TObject);
begin
  qrCatVendedores.Refresh;
  Datos.ActivePageIndex:=1;
end;

procedure TfrmCatVendedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(frm_Companias) and (frm_Companias.frm_CompaniasAbierto = True) and (frm_Companias.catVendedoresNormal = True) then
  begin
     frm_Companias.catVendedoresNormal := False;
  end;

  Action := cafree;
end;

procedure TfrmCatVendedores.FormShow(Sender: TObject);
begin
  qrCatVendedores.Active := False;
  qrCatVendedores.ParamByName('compania').AsString := global_contrato;
  qrCatVendedores.Open;
end;

procedure TfrmCatVendedores.tcTelCelularKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsDepartamento.SetFocus;
end;

procedure TfrmCatVendedores.telefonoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tcTelCelular.SetFocus;

    if not(Key in ['0'..'9','.',#8]) then
    begin
      Key:=#0;
    end;
end;

procedure TfrmCatVendedores.tsDepartamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    cbGenero.SetFocus;
end;

procedure TfrmCatVendedores.tsEmailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsTelOficina.SetFocus;
end;

procedure TfrmCatVendedores.tsNombreEnter(Sender: TObject);
begin
  if (Sender is tcxdbtextedit) then
    (Sender as tcxdbtextedit).Style.Color := $00FDDC86;
  if (Sender is tcxdbcombobox) then
    (Sender as tcxdbcombobox).Style.Color := $00FDDC86;
  if (Sender is tcxDBMemo) then
    (Sender as tcxDBMemo).Style.Color := $00FDDC86;
  
end;

procedure TfrmCatVendedores.tsNombreExit(Sender: TObject);
begin
  if (Sender is tcxdbtextedit) then
    (Sender as tcxdbtextedit).Style.Color := clWindow;
  if (Sender is tcxdbcombobox) then
    (Sender as tcxdbcombobox).Style.Color := clWindow;
  if (Sender is tcxDBMemo) then
  (Sender as tcxDBMemo).Style.Color := clWindow;
end;

procedure TfrmCatVendedores.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsEmail.SetFocus;

    if not((Key in ['A'..'Z','A',#8, #32]) or (Key in ['a'..'z', 'a', #8, #32])) then
  begin
    Key:=#0;
  end;
end;

procedure TfrmCatVendedores.tsTelOficinaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tcTelCelular.SetFocus;
end;

procedure TfrmCatVendedores.cambioEstado;
begin
  if (qrCatVendedores.State in [dsInsert]) or (qrCatVendedores.State in [dsEdit]) then
  begin
    frmBarra1.btnAdd.Enabled := False;
    frmBarra1.btnEdit.Enabled := False;
    frmBarra1.btnPost.Enabled := True;
    frmBarra1.btnCancel.Enabled := True;
    frmBarra1.btnDelete.Enabled := False;
    frmBarra1.btnRefresh.Enabled := False;
  end
  else if qrCatVendedores.State in [dsBrowse] then
  begin
    frmBarra1.btnAdd.Enabled := True;
    frmBarra1.btnEdit.Enabled := True;
    frmBarra1.btnPost.Enabled := False;
    frmBarra1.btnCancel.Enabled := False;
    frmBarra1.btnDelete.Enabled := True;
    frmBarra1.btnRefresh.Enabled := True;
  end;
end;

procedure TfrmCatVendedores.cbGeneroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNombre.SetFocus;
end;

end.
