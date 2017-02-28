unit UTFrmGuardias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  StdCtrls, Mask, DBCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls, frm_barra,
  frm_connection, cxContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxSkinsdxBarPainter, dxBar, dxRibbon, UnitGenerales;

type
  TTipoNomina = class
    Id: Integer;
    Titulo: string;
  end;

  TFrmGuardias = class(TForm)
    frmBarra1: TfrmBarra;
    pnlGrid: TPanel;
    CxGridDatos: TcxGrid;
    CxGridGuardias: TcxGridDBTableView;
    CxColumnCxGridEquiposStatusPersonal: TcxGridDBColumn;
    CxColumnCxGridEquiposCuenta: TcxGridDBColumn;
    CxColumnCxGridEquiposCuentaInterbancaria: TcxGridDBColumn;
    CxColumnCxGridEquipoiId_Puesto: TcxGridDBColumn;
    CxColumnCodigo: TcxGridDBColumn;
    CxColumnTitulo: TcxGridDBColumn;
    CxLevelMain: TcxGridLevel;
    pnlDatos: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    dbedtTitulo: TDBEdit;
    dbedtCodigo: TDBEdit;
    zGuardias: TZQuery;
    dsGuardias: TDataSource;
    lbl3: TLabel;
    DbEdtDiasT: TDBEdit;
    DbEdtDiasD: TDBEdit;
    CxColumnDiasT: TcxGridDBColumn;
    CxColumnDiasD: TcxGridDBColumn;
    CxColumnDesde: TcxGridDBColumn;
    CxColumnHasta: TcxGridDBColumn;
    zGuardiasUpt: TZQuery;
    dsGuardiasUpt: TDataSource;
    pnlFiltro: TPanel;
    zTipoNomina: TZQuery;
    dsTipoNomina: TDataSource;
    CxLbl1: TcxLabel;
    dxBarManager1: TdxBarManager;
    DxPopMenuGuardias: TdxRibbonPopupMenu;
    DxBarBtnPeriodo: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    CxCbbTipoNomina: TDBLookupComboBox;
    Label1: TLabel;
    dbEdtNumero: TDBEdit;
    CxGridGuardiasiNumero: TcxGridDBColumn;
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure zGuardiasAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DxBarBtnPeriodoClick(Sender: TObject);
    procedure dbedtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxGridGuardiasDblClick(Sender: TObject);
    procedure dsTipoNominaDataChange(Sender: TObject; Field: TField);
    procedure dbEdtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtTituloEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure EstadoBotones;
    procedure CargarDatos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGuardias: TFrmGuardias;

implementation

{$R *.dfm}
Uses
  UTFrmPeriodosGuardia;

procedure TFrmGuardias.CargarDatos;
begin
  zGuardias.Active := False;
  zGuardias.Connection := connection.zConnection;
  zGuardias.Params.ParamByName('Activo').DataType := ftString;
  zGuardias.Params.ParamByName('Activo').AsString := 'Si';
  zGuardias.Params.ParamByName('idTipoNomina').DataType := ftInteger;
  zGuardias.Params.ParamByName('idTipoNomina').AsInteger := zTipoNomina.FieldByName('IdTiponomina').AsInteger;
  zGuardias.Params.ParamByName('idGuardia').DataType := ftInteger;
  zGuardias.Params.ParamByName('idGuardia').AsInteger := -1;
  zGuardias.Open;

  zGuardiasUpt.Active := False;
  zGuardiasUpt.Connection := connection.zConnection;
  zGuardiasUpt.Params.ParamByName('Activo').DataType := ftString;
  zGuardiasUpt.Params.ParamByName('Activo').AsString := 'Si';
  zGuardiasUpt.Params.ParamByName('idTipoNomina').DataType := ftInteger;
  zGuardiasUpt.Params.ParamByName('idTipoNomina').AsInteger := zTipoNomina.FieldByName('IdTiponomina').AsInteger;
  zGuardiasUpt.Params.ParamByName('idGuardia').DataType := ftInteger;
  zGuardiasUpt.Params.ParamByName('idGuardia').AsInteger := -1;
  zGuardiasUpt.Open;
end;

procedure TFrmGuardias.CxGridGuardiasDblClick(Sender: TObject);
begin
  if zGuardias.RecordCount > 0 then
    DxBarBtnPeriodoClick(nil)
  else
    MessageDlg('No hay registros disponibles.', mtInformation, [mbOK], 0);
end;

procedure TFrmGuardias.dbedtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    if dbedtTitulo.CanFocus then
      dbedtTitulo.SetFocus;
end;

procedure TFrmGuardias.dbEdtNumeroKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedtcodigo.SetFocus
end;

procedure TFrmGuardias.dbedtTituloEnter(Sender: TObject);
begin
  if trim(dbedttitulo.Text) = '' then
    dbedtTitulo.Text := 'GUARDIA "'+dbedtNumero.Text+'-'+dbedtcodigo.Text+'"';
end;

procedure TFrmGuardias.dsTipoNominaDataChange(Sender: TObject; Field: TField);
begin
  if zTipoNomina.RecordCount > 0 then
    CargarDatos;
end;

procedure TFrmGuardias.DxBarBtnPeriodoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPeriodosGuardia, FrmPeriodosGuardia);
  FrmPeriodosGuardia.IdGuardia := zGuardias.FieldByName('IdGuardia').AsInteger;
  FrmPeriodosGuardia.dsDetalleGuardia.Dataset := zGuardias;
  FrmPeriodosGuardia.Show;
end;

procedure TFrmGuardias.EstadoBotones;
var
  Estado: Boolean;
begin
  estado := Not (zGuardiasUpt.State in [dsInsert, dsEdit]);
  frmBarra1.btnAdd.Enabled := Estado;
  frmBarra1.btnEdit.Enabled := Estado;
  frmBarra1.btnDelete.Enabled := Estado;
  frmBarra1.btnPrinter.Enabled := Estado;
  frmBarra1.btnRefresh.Enabled := Estado;
  frmBarra1.btnCancel.Enabled := Not Estado;
  frmBarra1.btnPost.Enabled := Not Estado;
  dbedtCodigo.Enabled := Not Estado;
  dbedtTitulo.Enabled := not Estado;

  Estado := False;
  Estado := (zGuardiasUpt.Active) and (zGuardiasUpt.RecordCount > 0) and Not (zGuardiasUpt.State in [dsInsert, dsEdit]);
  frmBarra1.btnDelete.Enabled := Estado;
  frmBarra1.btnEdit.Enabled := Estado;
end;

procedure TFrmGuardias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmGuardias.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  oTipoNom: TTipoNomina;
begin
  try

    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      zGuardias.Active := False;
      zGuardias.Connection := connection.zConnection;
      zGuardias.Params.ParamByName('Activo').DataType := ftString;
      zGuardias.Params.ParamByName('Activo').AsString := 'Si';
      zGuardias.Params.ParamByName('idGuardia').DataType := ftInteger;
      zGuardias.Params.ParamByName('idGuardia').AsInteger := -1;
      zGuardias.Open;

      zGuardiasUpt.Active := False;
      zGuardiasUpt.Connection := connection.zConnection;
      zGuardiasUpt.Params.ParamByName('Activo').DataType := ftString;
      zGuardiasUpt.Params.ParamByName('Activo').AsString := 'Si';
      zGuardiasUpt.Params.ParamByName('idGuardia').DataType := ftInteger;
      zGuardiasUpt.Params.ParamByName('idGuardia').AsInteger := -1;
      zGuardiasUpt.Open;

      //Cargar los tipos de Nómina Solo que tengan Salario multiple y No tengan
      //Liga con otras Nóminas
      zTipoNomina.Active := False;
      zTipoNomina.Connection := connection.zConnection;
      zTipoNomina.Open;

      zTipoNomina.Last;
      if zTipoNomina.RecordCount > 0 then
         CxCbbTipoNomina.KeyValue := zTiponomina.FieldByName('IdTipoNomina').AsInteger;

      EstadoBotones;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmGuardias.frmBarra1btnAddClick(Sender: TObject);
var Folio : String;
begin
  if (zGuardiasUpt.Active) then
  try
    try
      if zTipoNomina.RecordCount > 0 then
      begin
        zGuardiasUpt.Append;
        zGuardiasUpt.FieldByName('iNumeroGuardia').AsString := AutoFolio('GuardiaNumero','nom_guardia','iNumeroGuardia');
        zGuardiasUpt.FieldByName('CodigoGuardia').AsString := AutoFolio('GuardiaCodigo','nom_guardia','CodigoGuardia');
        zGuardiasUpt.FieldByName('Trabajados').AsInteger := zTipoNomina.FieldByName('DiasTrabajados').AsInteger;
        zGuardiasUpt.FieldByName('Descanso').AsInteger := zTipoNomina.FieldByName('DiasDescanso').AsInteger;
        EstadoBotones;

        if dbedtCodigo.CanFocus then
          dbedtnumero.SetFocus;      end
      else
      begin
        MessageDlg('Seleccione un tipo de nómina válido', mtInformation, [mbOK], 0);
        if CxCbbTipoNomina.CanFocus then
          CxCbbTipoNomina.SetFocus;
      end;
      if zGuardiasUpt.FieldByName('iNumeroGuardia').AsString = '' then
          dbEdtNumero.SetFocus
      ELSE
          dbedtCodigo.SetFocus;

      if zGuardiasUpt.FieldByName('CodigoGuardia').AsString = '' then
          dbedtCodigo.SetFocus
      ELSE
          dbedtTitulo.SetFocus;



    finally
      EstadoBotones;
    end;
  except
    zGuardiasUpt.Cancel;
  end;
end;

procedure TFrmGuardias.frmBarra1btnCancelClick(Sender: TObject);
begin
  if (zGuardiasUpt.Active) and (zGuardiasUpt.State in [dsInsert, dsEdit]) then
  begin
    try
      zGuardiasUpt.Cancel;
    finally
      EstadoBotones;
    end;
  end;
end;

procedure TFrmGuardias.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if (zGuardiasUpt.Active) and (zGuardiasUpt.RecordCount > 0)then
    if MessageDlg('¿Está seguro que desea eliminar la guardia completa[' + zGuardias.FieldByName('TituloGuardia').AsString + '] y sus periodos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zGuardiasUpt.Edit;
        zGuardiasUpt.FieldByName('Activo').AsString := 'No';
        zGuardiasUpt.Post;
        MessageDlg('Registros eliminado correctamente.', mtInformation, [mbOK], 0);
        frmBarra1btnRefreshClick(nil);
      finally
        EstadoBotones;
      end;
    end;
end;

procedure TFrmGuardias.frmBarra1btnEditClick(Sender: TObject);
begin
  if (zGuardiasUpt.Active) and (zGuardiasUpt.RecordCount > 0)then
  try
    try
      zGuardiasUpt.Edit;
    finally
      EstadoBotones;
    end;
  except
    zGuardiasUpt.Cancel;
  end;
end;

procedure TFrmGuardias.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmGuardias.frmBarra1btnPostClick(Sender: TObject);
var
  zMaxGuardias: TZQuery;
  Cursor: TCursor;
  ultId: Integer;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    if zGuardiasUpt.State = dsInsert then
    begin
      zMaxGuardias := TZQuery.create(self);
      zMaxGuardias.Active := False;
      zMaxGuardias.Connection := connection.zConnection;
      zMaxGuardias.SQL.Clear;
      zMaxGuardias.SQL.Text := 'select max(IdGuardia) as ultID from nom_guardia';
      zMaxGuardias.Open;

      if zMaxGuardias.RecordCount > 0 then
        ultId := zMaxGuardias.FieldByName('ultId').AsInteger + 1
      else
        ultId := 1;
    end;
    try
      if (zGuardiasUpt.Active) and (zGuardiasUpt.State in [dsInsert,dsEdit])then
      try
        if zGuardiasUpt.State = dsInsert then
          zGuardiasUpt.FieldByName('IdGuardia').AsInteger := ultId;
        zGuardiasUpt.FieldByName('IdTipoNomina').AsInteger := CxCbbTipoNomina.KeyValue;
        zGuardiasUpt.FieldByName('Activo').AsString := 'Si';
        zGuardiasUpt.Post;
        frmBarra1btnRefreshClick(nil);
      except
        on e: Exception do
        begin
          MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
          zGuardiasUpt.Cancel;
        end;
      end;
    finally
      EstadoBotones;
      if (assigned(zMaxGuardias)) and (zGuardiasUpt.State = dsInsert) then
        zMaxGuardias.Destroy;
      Screen.Cursor := Cursor;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmGuardias.frmBarra1btnRefreshClick(Sender: TObject);
begin
   if zGuardias.Active then
   try
    zGuardias.Refresh;
   finally
     EstadoBotones;
   end;
end;

procedure TFrmGuardias.zGuardiasAfterScroll(DataSet: TDataSet);
begin
  if (zGuardiasUpt.Active) and (zGuardiasUpt.RecordCount > 0) then
  begin
    if zGuardiasUpt.Locate('IdGuardia', zGuardias.FieldByName('IdGuardia').AsString, []) then
      ;
  end;
end;

end.
