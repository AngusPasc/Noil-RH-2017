unit frm_CatDoctos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvCombo, AdvDBComboBox, ExtCtrls, AdvEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, frm_barra, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,frm_connection, AdvDBLookupComboBox, DBCtrls,
  DBAdvEd, ComCtrls, AdvDateTimePicker, AdvDBDateTimePicker,global, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,DebenuPDFLibrary,UFunctionsGHH,
  frxClass, frxDBSet, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, ExportaExcel,
  cxGrid;

type
  TfrmCatDoctos = class(TForm)
    Panel3: TPanel;
    Panel5: TPanel;
    ZqContratos: TZQuery;
    ZqFrentes: TZQuery;
    DsContratos: TDataSource;
    DsFrentes: TDataSource;
    ZqCtrlDoctos: TZQuery;
    DsCtrlDoctos: TDataSource;
    ZqCtrlDoctosiIdCtrlDocumental: TIntegerField;
    ZqCtrlDoctossContrato: TStringField;
    ZqCtrlDoctossnumeroorden: TStringField;
    ZqCtrlDoctoslRegion: TStringField;
    ZqCtrlDoctoslTipo: TStringField;
    ZqCtrlDoctossFolio: TStringField;
    ZqCtrlDoctosmAsunto: TMemoField;
    ZqCtrlDoctoslAnexo: TStringField;
    ZqCtrlDoctosdFechaElaboracion: TDateField;
    ZqCtrlDoctosdFechaSello: TDateField;
    ZqCtrlDoctossTurnado: TStringField;
    ZqCtrlDoctosdFechaTurno: TDateField;
    ZqCtrlDoctossDescProyecto: TMemoField;
    ZqCtrlDoctossFolioContestacion: TStringField;
    ZqCtrlDoctossElabora: TStringField;
    ZqCtrlDoctossFirma: TStringField;
    ZqCtrlDoctossDirigido: TStringField;
    ZqCtrlDoctoslRespuesta: TStringField;
    ZqCtrlDoctosidDocumento: TIntegerField;
    PreviewScrollBox: TScrollBox;
    imgPreview: TImage;
    Archivo: TFileOpenDialog;
    FGuardarArchivo: TFileSaveDialog;
    Panel6: TPanel;
    CxBtnCargar: TcxButton;
    CxBtnGuardar: TcxButton;
    CxBtnLimpiar: TcxButton;
    btnViewPrintNextPage: TcxButton;
    btnViewPrintPrevPage: TcxButton;
    cmbZoom: TcxComboBox;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    ImprimirConcentrado1: TMenuItem;
    Exportacion1: TMenuItem;
    FrReporte: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ZReporte: TZQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    MemoField1: TMemoField;
    StringField6: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField7: TStringField;
    DateField3: TDateField;
    MemoField2: TMemoField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField2: TIntegerField;
    Panel8: TPanel;
    PnlDatos: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    EdtNFolio: TDBAdvEdit;
    CmbRegion: TAdvDBComboBox;
    CmbTipo: TAdvDBComboBox;
    MAsunto: TDBMemo;
    ChkAnexo: TDBCheckBox;
    DtSello: TAdvDBDateTimePicker;
    DtTurno: TAdvDBDateTimePicker;
    MDescProyecto: TDBMemo;
    ChkRespuesta: TDBCheckBox;
    EdtFRespuesta: TDBAdvEdit;
    frmBarra1: TfrmBarra;
    Splitter2: TSplitter;
    gridPrincipal: TcxGrid;
    Grid_Documentos: TcxGridDBTableView;
    Grid_DocumentosColumn1: TcxGridDBColumn;
    Grid_DocumentosColumn2: TcxGridDBColumn;
    Grid_DocumentosColumn3: TcxGridDBColumn;
    Grid_DocumentosColumn4: TcxGridDBColumn;
    Grid_DocumentosColumn5: TcxGridDBColumn;
    Grid_DocumentosColumn6: TcxGridDBColumn;
    Grid_DocumentosColumn7: TcxGridDBColumn;
    Grid_DocumentosColumn8: TcxGridDBColumn;
    Grid_DocumentosColumn9: TcxGridDBColumn;
    Grid_DocumentosColumn10: TcxGridDBColumn;
    Grid_DocumentosColumn11: TcxGridDBColumn;
    Grid_DocumentosColumn12: TcxGridDBColumn;
    Grid_DocumentosColumn13: TcxGridDBColumn;
    Grid_DocumentosColumn14: TcxGridDBColumn;
    Grid_DocumentosColumn15: TcxGridDBColumn;
    Grid_DocumentosColumn16: TcxGridDBColumn;
    Grid_DocumentosColumn17: TcxGridDBColumn;
    gridPrincipalLevel1: TcxGridLevel;
    ZqOts: TZQuery;
    DsOts: TDataSource;
    Panel1: TPanel;
    CmbContrato: TAdvDBLookupComboBox;
    CmbProyecto: TAdvDBLookupComboBox;
    CmbCodigo: TAdvDBLookupComboBox;
    Splitter1: TSplitter;
    ZqUsuarios: TZQuery;
    CmbFirma: TAdvDBComboBox;
    CmbTurnado: TAdvDBComboBox;
    CmbCreado: TAdvDBComboBox;
    DtElaboracion: TAdvDBDateTimePicker;
    CmbDirigido: TAdvDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure ZqContratosAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure ZqFrentesAfterScroll(DataSet: TDataSet);
    procedure ZqCtrlDoctoslTipoChange(Sender: TField);
    procedure CxBtnCargarClick(Sender: TObject);
    procedure CxBtnGuardarClick(Sender: TObject);
    procedure CxBtnLimpiarClick(Sender: TObject);
    procedure btnViewPrintPrevPageClick(Sender: TObject);
    procedure btnViewPrintNextPageClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ZqCtrlDoctosAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrinterClick(Sender: TObject);
    procedure ZqOtsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ImprimirConcentrado1Click(Sender: TObject);
    procedure Exportacion1Click(Sender: TObject);
    procedure ZqCtrlDoctosAfterPost(DataSet: TDataSet);
    procedure ZqCtrlDoctosAfterCancel(DataSet: TDataSet);
    procedure ZqCtrlDoctosAfterInsert(DataSet: TDataSet);
    procedure ZqCtrlDoctosAfterEdit(DataSet: TDataSet);
    procedure CmbTipoChange(Sender: TObject);
    procedure CmbRegionChange(Sender: TObject);


  private
    DirTemp:string;
    //PDF
    ViewPrintQP: TDebenuPDFLibrary;
    ViewPrintPageNum: Integer;
    procedure RenderPage;
    Procedure LoadFilePdf(sFile:TFilename;var ViewPrintParam:TDebenuPDFLibrary);
    Procedure LoadFileJPEG(sFile:TFilename);
    Procedure LoadFileJPEGPdf(sFile:TFilename;var ViewPrintParam:TDebenuPDFLibrary);
    procedure CargarFirmas(cmb:TAdvDBComboBox);
    { Private declarations }
  public
    //Pdf
    Mode:vsMode;
    TipoFile:smFile;
    PDFStream:Tstream;
    FileName:TFileName;
    sNameFile:String;
    { Public declarations }
  end;

var
  frmCatDoctos: TfrmCatDoctos;

implementation

{$R *.dfm}

procedure TfrmCatDoctos.btnAddClick(Sender: TObject);
begin
  try
    if length(trim(CmbContrato.Text)) = 0 then
      raise Exception.Create('Es necesario que seleccione una OT.');
    if length(trim(CmbProyecto.Text)) = 0 then
      raise Exception.Create('Es necesario que seleccione un proyecto.');
    ZqCtrlDoctos.Connection.StartTransaction;
    ZqCtrlDoctos.Append;
    ZqCtrlDoctos.FieldByName('dFechaSello').AsDateTime := Now;
    ZqCtrlDoctos.FieldByName('dfechaturno').AsDateTime := Now;
    ZqCtrlDoctos.FieldByName('sContrato').AsString := CmbContrato.Text;
    ZqCtrlDoctos.FieldByName('snumeroorden').AsString := CmbProyecto.Text;
    ZqCtrlDoctos.FieldByName('lRegion').AsString := 'Interno';
    ZqCtrlDoctos.FieldByName('lTipo').AsString := 'Recibido';
    ZqCtrlDoctos.FieldByName('lAnexo').AsString := 'No';
    ZqCtrlDoctos.FieldByName('dFechaElaboracion').AsDateTime := (Now);
    ZqCtrlDoctos.FieldByName('sElabora').AsString := global_firma;
    ZqCtrlDoctos.FieldByName('sDescProyecto').AsString := ZqOts.FieldByName('mdescripcion').AsString;
    ZqCtrlDoctos.FieldByName('lRespuesta').AsString := 'No';
    frmBarra1.btnAddClick(Sender);
    CmbRegion.SetFocus;
    CxBtnCargar.Enabled := True;
    CxBtnLimpiar.Enabled := True;
  except
    on e:exception do
      ShowMessage('No se puede realizar la insercción de un nuevo registro por el siguiente motivo:'+#10+e.Message);

  end;
end;



procedure TfrmCatDoctos.btnCancelClick(Sender: TObject);
begin
  ZqCtrlDoctos.Cancel;
  try
    ZqCtrlDoctos.CancelUpdates;
  except
    ;
  end;
  if ZqCtrlDoctos.Connection.InTransaction then
    ZqCtrlDoctos.Connection.Rollback;
  frmBarra1.btnCancelClick(Sender);
  CxBtnCargar.Enabled := False;
  CxBtnLimpiar.Enabled := False;
end;

procedure TfrmCatDoctos.btnDeleteClick(Sender: TObject);
var zD:TZQuery;
begin
  try
    if ZqCtrlDoctos.RecordCount = 0 then
      raise Exception.Create('No hay ningun registro seleccionado.');

    if MessageDlg('¿Quiere borrar el registro '+ZqCtrlDoctos.FieldByName('sfolio').AsString+' con su documento respectivo en caso de tenerlo asignado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise Exception.Create('***');

    zD := TZQuery.Create(nil);
    try
      zD.Connection := connection.zConnection;
      Zd.Active := False;
      zD.SQL.Text := 'Delete from ctrl_archivo where iddocumento = :id';
      zD.ParamByName('Id').AsString :=  ZqCtrlDoctos.FieldByName('iddocumento').AsString;
      zD.ExecSQL;
    finally
      zD.Free;
    end;

    ZqCtrlDoctos.Delete;

    ZqCtrlDoctos.Refresh;
  except
    on e:Exception do
      if e.Message <> '***' then
        ShowMessage('No se puede realizar la eliminacion del registro por el siguiente motivo:'+#10+e.Message);
  end;
end;

procedure TfrmCatDoctos.btnEditClick(Sender: TObject);
begin
  try
    if ZqCtrlDoctos.RecordCount = 0 then
      raise Exception.Create('No hay registro seleccionado para editar.');
    ZqCtrlDoctos.Connection.StartTransaction;  
    ZqCtrlDoctos.Edit;
    ZqCtrlDoctos.FieldByName('sDescProyecto').AsString := ZqOts.FieldByName('mdescripcion').AsString;
    frmBarra1.btnEditClick(Sender);
    CxBtnCargar.Enabled := True;
    CxBtnLimpiar.Enabled := True;
    CmbRegion.SetFocus;
  except
    on e:exception do
      ShowMessage('No se puede realizar la edicion del registro por el siguiente motivo:'+#10+e.Message);
  end;
end;

procedure TfrmCatDoctos.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCatDoctos.btnPostClick(Sender: TObject);
begin
  try
    //Creacion de llave
    if ZqCtrlDoctos.State = dsInsert then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Text := 'Select ifnull(max(iIdCtrlDocumental),0)+1 as maximo from ctrl_documental';
      connection.QryBusca.Open;
      ZqCtrlDoctos.FieldByName('iIdCtrlDocumental').AsInteger := connection.QryBusca.FieldByName('maximo').AsInteger;
    end;

    //validaciones
    if Length(Trim(ZqCtrlDoctos.FieldByName('iIdCtrlDocumental').AsString)) = 0 then
      raise Exception.Create('No se pudo crear un identificador llave propio.');

    if Length(Trim(ZqCtrlDoctos.FieldByName('scontrato').AsString)) = 0 then
      raise Exception.Create('No hay un OT asignado al registro.');

    if Length(Trim(ZqCtrlDoctos.FieldByName('snumeroorden').AsString)) = 0 then
      raise Exception.Create('No hay un proyecto asignado al registro.');

    if Length(Trim(ZqCtrlDoctos.FieldByName('lRegion').AsString)) = 0 then
      raise Exception.Create('No hay una región asignado al registro.');

    if Length(Trim(ZqCtrlDoctos.FieldByName('ltipo').AsString)) = 0 then
      raise Exception.Create('No hay un Tipo asignado al registro.');

    if Length(Trim(ZqCtrlDoctos.FieldByName('sFolio').AsString)) = 0 then
      raise Exception.Create('No hay un numero de folio asignado al registro.');

    if Length(Trim(ZqCtrlDoctos.FieldByName('lAnexo').AsString)) = 0 then
      raise Exception.Create('No hay un valor para anexo asignado al registro.');

    if Length(Trim(ZqCtrlDoctos.FieldByName('dFechaelaboracion').AsString)) = 0 then
      raise Exception.Create('No hay una fecha asignada al registro.');

    if Length(Trim(ZqCtrlDoctos.FieldByName('sElabora').AsString)) = 0 then
      raise Exception.Create('No hay un nombre del que elabora el registro asignado al registro.');

    ZqCtrlDoctos.FieldByName('sElabora').AsString := CmbCreado.Text;
    ZqCtrlDoctos.FieldByName('sTurnado').AsString := CmbTurnado.Text;
    ZqCtrlDoctos.FieldByName('sFirma').AsString := CmbFirma.Text;
    //Limpieza de campos
    if ZqCtrlDoctos.FieldByName('ltipo').AsString = 'Enviado' then
    begin
      ZqCtrlDoctos.FieldByName('sTurnado').Clear;
      ZqCtrlDoctos.FieldByName('dfechaturno').Clear;
    end
    else
    if ZqCtrlDoctos.FieldByName('ltipo').AsString = 'Recibido' then
    begin
      ZqCtrlDoctos.FieldByName('sfirma').Clear;
      if ZqCtrlDoctos.FieldByName('lRegion').AsString = 'Interno'  then
        ZqCtrlDoctos.FieldByName('sDirigido').Clear;
    end;



    ZqCtrlDoctos.Post;
    if ZqCtrlDoctos.Connection.InTransaction then
      ZqCtrlDoctos.Connection.Commit;
    ZqCtrlDoctos.Refresh;  
    frmBarra1.btnPostClick(Sender);
    CxBtnCargar.Enabled := False;
    CxBtnLimpiar.Enabled := False;
  except
    on e:Exception do
      ShowMessage('No se puede realizar el guardado del registro por el siguiente motivo:'+#10+e.Message);
  end;
end;

procedure TfrmCatDoctos.btnPrinterClick(Sender: TObject);
begin
  try
    ZReporte.Active := False;
    ZReporte.Open;
    If ZReporte.RecordCount > 0 Then
    begin
      FrReporte.LoadFromFile(global_files + 'CtrlDocumental.fr3') ;
      FrReporte.ShowReport();
    end;
    //  FrReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'CtrlDoc'))
  except
  end;

end;

procedure TfrmCatDoctos.btnRefreshClick(Sender: TObject);
begin
  ZqCtrlDoctos.Refresh;
end;

procedure TfrmCatDoctos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if connection.zConnection.InTransaction then
    connection.zConnection.Rollback;
  action := cafree;
end;

procedure TfrmCatDoctos.FormCreate(Sender: TObject);
begin
  DirTemp := ExtractFilePath(Application.ExeName)+'\temp'
end;

procedure TfrmCatDoctos.FormShow(Sender: TObject);
begin
  ZqUsuarios.Open;
  CargarFirmas(cmbfirma);
  CargarFirmas(cmbturnado);
  CargarFirmas(CmbCreado);
  CargarFirmas(CmbDirigido);
  ZqContratos.Open;
  if not ZqContratos.Locate('scontrato',global_contrato_barco,[]) then
    ZqContratos.First;
  CmbCodigo.ItemIndex := ZqContratos.RecNo-1;
  if not DirectoryExists(dirtemp) then
    MkDir(dirtemp);
  ZqContratos.AfterScroll := ZqContratosAfterScroll;
  ZqContratosAfterScroll(ZqContratos);
end;

procedure TfrmCatDoctos.CargarFirmas(cmb:TAdvDBComboBox);
begin
  cmb.Items.Clear;
  ZqUsuarios.First;
  while not ZqUsuarios.Eof do
  begin
    cmb.Items.Add(ZqUsuarios.FieldByName('sfirma').AsString);
    ZqUsuarios.Next;
  end;
end;

procedure TfrmCatDoctos.CmbRegionChange(Sender: TObject);
begin
  Cmbdirigido.Visible := ((CmbTipo.text = 'Enviado') or (CmbRegion.Text = 'Externo'));
end;

procedure TfrmCatDoctos.CmbTipoChange(Sender: TObject);
begin
  dtTurno.Visible := CmbTipo.text = 'Recibido';
  CmbTurnado.Visible := CmbTipo.text = 'Recibido';

  CmbFirma.Visible := CmbTipo.text = 'Enviado';
  Cmbdirigido.Visible := ((CmbTipo.text = 'Enviado') or (CmbRegion.Text = 'Externo'));
end;

procedure TfrmCatDoctos.ImprimirConcentrado1Click(Sender: TObject);
begin
  ZReporte.Active := False;
  ZReporte.Open;
  If ZReporte.RecordCount > 0 Then
  begin
    FrReporte.LoadFromFile(global_files + 'CtrlDocumental.fr3') ;
    FrReporte.ShowReport();
  end;
end;

procedure TfrmCatDoctos.ZqContratosAfterScroll(DataSet: TDataSet);
begin
  ZqOts.Active := False;
  ZqOts.ParamByName('codigo').AsString := ZqContratos.FieldByName('scontrato').AsString;
  ZqOts.Open;
  if not ZqOts.Locate('scontrato',global_contrato,[]) then
    ZqOts.First;
  if ZqOts.RecordCount > 0 then
    CmbContrato.ItemIndex := ZqOts.RecNo-1;
end;

procedure TfrmCatDoctos.ZqCtrlDoctosAfterCancel(DataSet: TDataSet);
begin
  gridPrincipal.enabled := True;
  PnlDatos.Enabled := False;
end;

procedure TfrmCatDoctos.ZqCtrlDoctosAfterEdit(DataSet: TDataSet);
begin
  gridPrincipal.enabled := False;
  PnlDatos.Enabled := True;
end;

procedure TfrmCatDoctos.ZqCtrlDoctosAfterInsert(DataSet: TDataSet);
begin
  gridPrincipal.enabled := False;
  PnlDatos.Enabled := True;
end;

procedure TfrmCatDoctos.ZqCtrlDoctosAfterPost(DataSet: TDataSet);
begin
  gridPrincipal.enabled := True;
  PnlDatos.Enabled := False;
end;

procedure TfrmCatDoctos.ZqCtrlDoctosAfterScroll(DataSet: TDataSet);
begin
  try
    dtTurno.Visible := ZqCtrlDoctos.FieldByName('lTipo').AsString = 'Recibido';
    CmbTurnado.Visible := ZqCtrlDoctos.FieldByName('lTipo').AsString = 'Recibido';

    CmbFirma.Visible := ZqCtrlDoctos.FieldByName('lTipo').AsString = 'Enviado';
    Cmbdirigido.Visible := ((ZqCtrlDoctos.FieldByName('lTipo').AsString = 'Enviado') or (ZqCtrlDoctos.FieldByName('lRegion').AsString = 'Externo'));

    CxBtnLimpiar.Click;
    cmbZoom.ItemIndex := 1;
  except
    ;
  end;
end;

procedure TfrmCatDoctos.ZqCtrlDoctoslTipoChange(Sender: TField);
begin
  dtTurno.Visible := ZqCtrlDoctos.FieldByName('lTipo').AsString = 'Recibido';
  CmbTurnado.Visible := ZqCtrlDoctos.FieldByName('lTipo').AsString = 'Recibido';

  CmbFirma.Visible := ZqCtrlDoctos.FieldByName('lTipo').AsString = 'Enviado';
  Cmbdirigido.Visible := ((ZqCtrlDoctos.FieldByName('lTipo').AsString = 'Enviado') or (ZqCtrlDoctos.FieldByName('lRegion').AsString = 'Externo'));
end;

procedure TfrmCatDoctos.ZqFrentesAfterScroll(DataSet: TDataSet);
begin
  ZqCtrlDoctos.Close;
  ZqCtrlDoctos.ParamByName('ot').AsString := CmbContrato.Text;
  ZqCtrlDoctos.ParamByName('proyecto').AsString := CmbProyecto.Text;
  ZqCtrlDoctos.Open;
end;

  procedure TfrmCatDoctos.ZqOtsAfterScroll(DataSet: TDataSet);
begin
  ZqFrentes.Active := False;
  ZqFrentes.ParamByName('Contrato').AsString := ZqOts.FieldByName('scontrato').AsString;
  ZqFrentes.Open;
  ZqFrentes.First;
  CmbProyecto.ItemIndex := ZqFrentes.RecNo-1;
end;

{$REGION 'PDF'}
procedure TfrmCatDoctos.cxButton1Click(Sender: TObject);
begin
  try
    if ZqCtrlDoctos.RecordCount = 0 then
      raise Exception.Create('No hay registros cargados.');

    if length(trim(ZqCtrlDoctos.FieldByName('iddocumento').AsString)) = 0  then
      raise Exception.Create('El registro seleccionado no tiene documento cargado.');

     connection.QryBusca2.Active := False;
     connection.QryBusca2.SQL.Text := 'select * from ctrl_archivo where iddocumento = :id';
     connection.QryBusca2.ParamByName('id').AsInteger := ZqCtrlDoctos.FieldByName('iddocumento').asinteger;
     connection.QryBusca2.Open;

     if connection.QryBusca2.RecordCount = 0 then
       raise Exception.Create('El documento al que hace referencia el registro ya no existe.');

     TBlobField(connection.QryBusca2.FieldByName('bDocumento')).SaveToFile(DirTemp+'\'+ZqCtrlDoctos.FieldByName('sfolio').AsString);
     LoadFilePdf(DirTemp+'\'+ZqCtrlDoctos.FieldByName('sfolio').AsString,ViewPrintQP);

  finally

  end;

end;

procedure TfrmCatDoctos.Exportacion1Click(Sender: TObject);
begin
  ExportExcelPersonalizado(connection.contrato,Grid_Documentos,'Documentos','Concentrado de documentos');

end;

procedure TfrmCatDoctos.btnViewPrintNextPageClick(Sender: TObject);
begin
  if Assigned(ViewPrintQP) then
  begin
    if ViewPrintPageNum < ViewPrintQP.PageCount then
    begin
      Inc(ViewPrintPageNum);
      RenderPage;
    end;
  end;
end;

procedure TfrmCatDoctos.btnViewPrintPrevPageClick(Sender: TObject);
begin
  if ViewPrintPageNum > 1 then
  begin
    Dec(ViewPrintPageNum);
    RenderPage;
  end;
end;

procedure TfrmCatDoctos.CxBtnCargarClick(Sender: TObject);
var
  BlankBM: TBitmap;
  ZqDoc:TZQuery;
begin
  if TipoFile=smPDF then
  begin

    if Assigned(ViewPrintQP) then
    begin
      ViewPrintQP.Free;
      ViewPrintQP := nil;
    end;

    if Archivo.Execute then
    begin
      LoadFilePdf(Archivo.filename,ViewPrintQP);
      FileName:=Archivo.filename;
      if ZqCtrlDoctos.State in [dsInsert,dsEdit] then
      begin
        ZqDoc := TZQuery.Create(nil);
        try
          ZqDoc.Connection := connection.zConnection;
          ZqDoc.Active := False;
          ZqDoc.SQL.Text := 'Select * from ctrl_archivo where iddocumento = :id';
          if length(trim(ZqCtrlDoctos.FieldByName('iddocumento').AsString)) = 0 then
          begin
            ZqDoc.ParamByName('id').AsInteger := -1;
            ZqDoc.open;
            ZqDoc.Append;
            TBlobField(ZqDoc.FieldByName('bDocumento')).LoadFromFile(FileName);
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Text := 'Select ifnull(max(iddocumento),0)+1 as maximo from ctrl_archivo';
            connection.QryBusca.Open;
            ZqDoc.FieldByName('iddocumento').AsInteger := connection.QryBusca.FieldByName('maximo').AsInteger;
            ZqCtrlDoctos.FieldByName('iddocumento').asinteger := connection.QryBusca.FieldByName('maximo').AsInteger;
            ZqDoc.Post;
          end
          else
          begin
            ZqDoc.ParamByName('id').AsInteger := ZqCtrlDoctos.FieldByName('iddocumento').asinteger;
            ZqDoc.Open;
            if ZqDoc.RecordCount = 0 then
            begin

              ZqDoc.Append;
              TBlobField(ZqDoc.FieldByName('bDocumento')).LoadFromFile(FileName);
              connection.QryBusca.Active := False;
              connection.QryBusca.SQL.Text := 'Select ifnull(max(iddocumento),0)+1 as maximo from ctrl_archivo';
              connection.QryBusca.Open;
              ZqDoc.FieldByName('iddocumento').AsInteger := connection.QryBusca.FieldByName('maximo').AsInteger;
              ZqCtrlDoctos.FieldByName('iddocumento').asinteger := connection.QryBusca.FieldByName('maximo').AsInteger;
            end
            else
            begin
              ZqDoc.edit;
              TBlobField(ZqDoc.FieldByName('bDocumento')).LoadFromFile(FileName);
            end;
            ZqDoc.Post;
          end;
        finally
          ZqDoc.Free;
        end;


      end;
    end
    else
    begin
      BlankBM := TBitmap.Create;
      try
        imgPreview.Picture.Assign(BlankBM);
      finally
        BlankBM.Free;
      end;
      ViewPrintQP.Free;
      ViewPrintQP := nil;
    end;
  end;

  if TipoFile=smJPEG then
  begin
    if Archivo.Execute then
    begin
      //LoadFileJPEG(Archivo.filename);
      LoadFileJPEGPdf(Archivo.filename,ViewPrintQP);
      FileName:=Archivo.filename;
    end
    else
    begin
      BlankBM := TBitmap.Create;
      try
        imgPreview.Picture.Assign(BlankBM);
      finally
        BlankBM.Free;
      end;
    //  ViewPrintQP.Free;
    //  ViewPrintQP := nil;
    end;

  end;
end;

procedure TfrmCatDoctos.CxBtnGuardarClick(Sender: TObject);
begin
  if ZqCtrlDoctos.RecordCount = 0 then
    raise Exception.Create('No hay registros cargados.');

  if length(trim(ZqCtrlDoctos.FieldByName('iddocumento').AsString)) = 0  then
    raise Exception.Create('El registro seleccionado no tiene documento cargado.');

  if sNameFile<>'' then
    FGuardarArchivo.FileName:=sNameFile;

  if FGuardarArchivo.Execute then
  begin
    if TipoFile=smPdf then
      ViewPrintQP.SaveToFile(FGuardarArchivo.FileName+'.pdf');

    if TipoFile=smJPeg then
      ViewPrintQP.RenderDocumentToFile(72, 1, 1, 0,FGuardarArchivo.FileName);
     // ViewPrintQP.SaveImageToFile(FGuardarArchivo.FileName);
  end;
end;

procedure TfrmCatDoctos.CxBtnLimpiarClick(Sender: TObject);
var
  BlankBM: TBitmap;
begin
  BlankBM := TBitmap.Create;
  try
    imgPreview.Picture.Assign(BlankBM);
  finally
    BlankBM.Free;
  end;
  ViewPrintQP.Free;
  ViewPrintQP := nil;
end;

procedure TfrmCatDoctos.LoadFileJPEG(sFile: TFilename);
var
  Password: string;
  R: Integer;
  BlankBM: TBitmap;
begin

  if FileExists(sFile) then
  begin
    try
      imgPreview.Picture.LoadFromFile(CompressImage(sFile,80));
      imgPreview.AutoSize:=true;
    Except
      MessageDlg('El Archivo JPEG no puede leerse.', mtError, [mbOK], 0);
    end;
    //ViewPrintQP.Free;
      //ViewPrintQP := nil;

  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
  end;
end;

procedure TfrmCatDoctos.LoadFileJPEGPdf(sFile: TFilename;
  var ViewPrintParam: TDebenuPDFLibrary);
var
  Password: string;
  R: Integer;
  CanProceed: Boolean;
  BlankBM: TBitmap;
  lWidth :Integer;
  lHeight:Integer;
begin

 // ViewPrintParam.addi
  CanProceed:=false;
  if FileExists(sFile) then
  begin
    ViewPrintParam := TDebenuPDFLibrary.Create;
    if ViewPrintParam.UnlockKey('jt3m77ty7ph97a6bp8t54f35y') = 1 then
    begin
      try
        ViewPrintParam.AddImageFromFile(CompressImage(sFile,80),0);
        lWidth := ViewPrintParam.ImageWidth();
        lHeight := ViewPrintParam.ImageHeight();
        ViewPrintParam.SetPageDimensions(lWidth, lHeight);
        ViewPrintParam.DrawImage(0, lHeight, lWidth, lHeight);

        CanProceed := True;
      except
        MessageDlg('El Archivo PDF no puede leerse.', mtError, [mbOK], 0);
      end;
    end
    else
      MessageDlg('La licencia es Incorrecta o a Expirado.', mtError, [mbOK], 0);
  end;

  if CanProceed then
  begin
    ViewPrintPageNum := 1;
    RenderPage;
  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
    ViewPrintQP.Free;
    ViewPrintQP := nil;
  end;

end;

procedure TfrmCatDoctos.LoadFilePdf(sFile: TFilename;
  var ViewPrintParam: TDebenuPDFLibrary);
var
  Password: string;
  R: Integer;
  CanProceed: Boolean;
  BlankBM: TBitmap;
begin


  CanProceed:=false;
  if FileExists(sFile) then
  begin
    ViewPrintParam := TDebenuPDFLibrary.Create;
    if ViewPrintParam.UnlockKey('jt3m77ty7ph97a6bp8t54f35y') = 1 then
    begin
      if ViewPrintParam.LoadFromFile(sFile, '') = 1 then
      begin
        CanProceed := True;
      end
      else
        MessageDlg('El Archivo PDF no puede leerse.', mtError, [mbOK], 0);
    end
    else
      MessageDlg('La licencia es Incorrecta o a Expirado.', mtError, [mbOK], 0);
  end;

  if CanProceed then
  begin
    ViewPrintPageNum := 1;
    RenderPage;
  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
    ViewPrintQP.Free;
    ViewPrintQP := nil;
  end;
end;

procedure TfrmCatDoctos.RenderPage;
var
  BM: TBitmap;
  MS: TMemoryStream;
  DPI: Integer;
begin
  BM := TBitmap.Create;
  try
    imgPreview.Picture.Assign(BM);
    PreviewScrollBox.HorzScrollBar.Position := 0;
    PreviewScrollBox.VertScrollBar.Position := 0;
    imgPreview.Left := 0;
    imgPreview.Top := 0;
  finally
    BM.Free;
  end;

  if Assigned(ViewPrintQP) then
  begin
    MS := TMemoryStream.Create;
    try
      DPI := ((cmbZoom.ItemIndex + 1) * 25 * 96) div 100;
      ViewPrintQP.RenderPageToStream(DPI, ViewPrintPageNum, 0, MS);
      MS.Seek(0, soFromBeginning);
      BM := TBitmap.Create;
      try
        BM.LoadFromStream(MS);
        imgPreview.AutoSize := True;
        imgPreview.Picture.Assign(BM);
      finally
        BM.Free;
      end;
    finally
      MS.Free;
    end;
  end;
end;

  {$ENDREGION}

end.
