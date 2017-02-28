unit UTFrmCatalogoCargos;

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
  cxNavigator, DB, cxDBData, cxContainer, DBCtrls, Menus, ComCtrls, StdCtrls,
  cxCheckBox, cxDBEdit, AdvEdit, DBAdvEd, Mask, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, frm_barra, ExtCtrls, cxLabel, cxMemo, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxButtonEdit, cxButtons, Grids, DBGrids, global;

type
  TFrmCatalogoCargos = class(TForm)
    Panel1: TPanel;
    frmBarra1: TfrmBarra;
    Panel2: TPanel;
    PnlProgreso: TPanel;
    TituloProgreso: TLabel;
    Progreso: TProgressBar;
    PopupMenu1: TPopupMenu;
    Importardesdenominas1: TMenuItem;
    Sustituyendotodo1: TMenuItem;
    verificandoidentificador1: TMenuItem;
    pnlEmpresa: TPanel;
    CxDbTextCodigo: TcxDBTextEdit;
    CxDbTextTitulo: TcxDBTextEdit;
    CxCbbJornada: TcxDBComboBox;
    CxCbbCobraFestivos: TcxDBComboBox;
    CxDbSpinBtnNivel: TcxDBSpinEdit;
    CxMemoResponsabilidades: TcxDBMemo;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxlblTitulo: TcxLabel;
    cxlbljornada: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    CxLookUpEmpresa: TcxLookupComboBox;
    CxLookUpTipoNomina: TcxLookupComboBox;
    zEmpresa: TZQuery;
    zTipoNomina: TZQuery;
    zCargo: TZQuery;
    dsEmpresa: TDataSource;
    dsTipoNomina: TDataSource;
    dsCargo: TDataSource;
    cxlbl7: TcxLabel;
    TcxBtnSalario: TcxDBButtonEdit;
    zMaxCargo: TZQuery;
    zSalarios: TZQuery;
    pnlSalarios: TPanel;
    cxbtnAceptar: TcxButton;
    cxbtnCancel: TcxButton;
    dsSalarios: TDataSource;
    CxDbGridSalarios: TcxGridDBTableView;
    cxLevel1: TcxGridLevel;
    CxGridSalarios: TcxGrid;
    CxColumnSalario: TcxGridDBColumn;
    CxColumnImporte: TcxGridDBColumn;
    CxColumnTipo: TcxGridDBColumn;
    CxStyle2: TcxStyleRepository;
    cxstyl1: TcxStyle;
    checkPagarDescanso: TcxDBCheckBox;
    TcxSalario: TcxTextEdit;
    cxgridPuestos: TcxGrid;
    cxgrdbtblvwCxDbGridPuestos: TcxGridDBTableView;
    cxgrdbclmncodigocargo: TcxGridDBColumn;
    cxgrdbclmntitulocargo: TcxGridDBColumn;
    cxgrdlvlLevelCxGridPuestosLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure CxLookUpTipoNominaPropertiesChange(Sender: TObject);
    procedure CxDbTextCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTextTituloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxCbbJornadaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxCbbCobraFestivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbSpinBtnNivelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TcxBtnSalarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxMemoResponsabilidadesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TcxBtnSalarioPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure zCargoAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Procedure EstadoBotones;
    Function ValidaCampos: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoCargos: TFrmCatalogoCargos;

implementation

uses
  Frm_CatalogoDePostulante, frmEmpleados, frm_connection;

{$R *.dfm}

procedure TFrmCatalogoCargos.btnAddClick(Sender: TObject);
begin
  try
    if zCargo.active then
      zCargo.Append;
  finally
    estadoBotones;
    if CxDbTextCodigo.CanFocus then
      CxDbTextCodigo.SetFocus;
  end;
end;

procedure TFrmCatalogoCargos.btnCancelClick(Sender: TObject);
begin
  try
    if zCargo.State in [dsInsert, dsEdit] then
      zCargo.Cancel;
  finally
    estadoBotones;
  end;
end;

procedure TFrmCatalogoCargos.btnDeleteClick(Sender: TObject);
begin
  try
    if zCargo.active and (zCargo.RecordCount > 0) and (MessageDlg('¿Estás seguro que deseas eliminar el cargo [' + zCargo.FieldByName('CodigoCargo').AsString + ' - ' + zCargo.FieldByName('TituloCargo').asString +']?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes)then
      zCargo.Delete;
  finally
    estadoBotones;
  end;
end;

procedure TFrmCatalogoCargos.btnEditClick(Sender: TObject);
begin
  try
    if zCargo.active and (zCargo.Recordcount > 0) then
      zCargo.Edit;
  finally
    estadoBotones;
    if CxDbTextCodigo.CanFocus then
      CxDbTextCodigo.SetFocus;
  end;
end;

procedure TFrmCatalogoCargos.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCatalogoCargos.btnPostClick(Sender: TObject);
var
  Error: Boolean;
  CadMsj: String;
begin
  try
    Error := ValidaCampos;
    if Not Error then
    begin
      if zCargo.State in [dsInsert, dsEdit] then
      begin
        if zCargo.State = dsInsert then
        begin
          zMaxCargo.Close;
          zCargo.FieldByName('IdTipoNomina').AsInteger   := CxLookUpTipoNomina.EditValue;
          zCargo.FieldByName('IdOrganizacion').AsInteger :=    CxLookUpEmpresa.EditValue;
          zCargo.FieldByName('Activo').AsString := 'Si';
          zMaxCargo.Open;
          zCargo.FieldByName('IdCargo').AsInteger := zMaxCargo.FieldByName('IdCargo').AsInteger + 1;
          CadMsj := 'Salario Guardado correctamente.';
        end
        else
          CadMsj := 'Salario Editado correctamente.';
        zCargo.Post;
        MessageDlg(CadMsj, mtInformation, [mbOK], 0);
      end;

      //Estas lineas es para actualizar los combos de otros formularios de los cuales se haya llamado este formulario
      if global_frmActivo = 'Frm_CatalogoDePostulante' then
      begin
        FrmCatalogoDePostulante.zq_Puestos.Refresh;
        FrmCatalogoDePostulante.dbPuesto.EditValue := zCargo.FieldByName('IdCargo').AsInteger;
        Close;

        global_frmActivo := '';
      end else if global_frmActivo = 'frmEmpleados' then
      begin
        frm_Empleados.zq_Puestos.Refresh;
        frm_Empleados.cxCategoria.DataBinding.DataSource.DataSet.FieldByName('iId_Puesto').AsInteger := zCargo.FieldByName('IdCargo').AsInteger;
        Close;

        global_frmActivo := '';
      end;
    end;
  finally
    if not error then
    begin
      estadoBotones;
      if zCargo.active then
        zCargo.Refresh
      else
        zCargo.Open;
    end;
  end;
end;

procedure TFrmCatalogoCargos.cxbtnAceptarClick(Sender: TObject);
begin
  if zCargo.State in [dsInsert, dsEdit] then
    if zSalarios.FieldByName('Tipo').AsString = 'SALARIO FIJO' then
      zCargo.FieldByName('IdSalario').AsInteger := zSalarios.FieldByName('Id').AsInteger
    else
      zCargo.FieldByName('IdSalario').AsInteger := zSalarios.FieldByName('Id').AsInteger;

  TcxSalario.Text    := zSalarios.FieldByName('TituloSalario').AsString + ' [$ ' + zSalarios.FieldByName('importe').AsString + ']';
  TcxBtnSalario.Text := zSalarios.FieldByName('TituloSalario').AsString + ' [$ ' + zSalarios.FieldByName('importe').AsString + ']';
end;

procedure TFrmCatalogoCargos.CxCbbCobraFestivosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    CxDbSpinBtnNivel.SetFocus;
end;

procedure TFrmCatalogoCargos.CxCbbJornadaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    CxCbbCobraFestivos.SetFocus;
end;

procedure TFrmCatalogoCargos.CxDbSpinBtnNivelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    TcxBtnSalario.SetFocus;
end;

procedure TFrmCatalogoCargos.CxDbTextCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    CxDbTextTitulo.SetFocus;
end;

procedure TFrmCatalogoCargos.CxDbTextTituloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    CxCbbJornada.SetFocus;
end;

procedure TFrmCatalogoCargos.CxLookUpTipoNominaPropertiesChange(
  Sender: TObject);
var
  Cursor: TCursor;
  locTipoNomina, LocIdOrganizacion: Integer;
begin
  Try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      if zTipoNomina.Locate('IdTipoNomina', CxLookUpTipoNomina.EditValue, []) then
      begin
        LocTipoNomina := zTipoNomina.FieldByName('IdTipoNomina').AsInteger;

        if zEmpresa.Locate('IdOrganizacion', CxLookUpEmpresa.EditValue, []) then
          LocIdOrganizacion := zEmpresa.FieldByName('IdOrganizacion').AsInteger;

        zCargo.Active := False;
        zCargo.Params.ParamByName('IdTipoNomina').DataType    :=         ftInteger;
        zCargo.Params.ParamByName('IdTipoNomina').AsInteger   :=     LocTipoNomina;
        zCargo.Params.ParamByName('IdOrganizacion').DataType  :=         ftInteger;
        zCargo.Params.ParamByName('IdOrganizacion').AsInteger := LocIdOrganizacion;
        zCargo.Open;
      end;
    finally
      Screen.Cursor := Cursor;
      EstadoBotones;
    end;
  Except
    on e: Exception do
      MessageDlg('Ha ocurrido un error. Informe de lo siguiente a su administrador de sistema.', mtError, [mbOK], 0);
  End;
end;

procedure TFrmCatalogoCargos.CxMemoResponsabilidadesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    CxDbTextCodigo.SetFocus;
end;

procedure TFrmCatalogoCargos.EstadoBotones;
var
  estado: Boolean;
begin
  Estado := (zcargo.active);
  frmBarra1.btnAdd.enabled := estado and Not(zCargo.State in [dsEdit,dsInsert]);
  FrmBarra1.btnEdit.enabled   := (Estado) and (zCargo.RecordCount > 0) and Not(zCargo.State in [dsEdit,dsInsert]);
  FrmBarra1.btnPost.enabled := (Estado) and (zCargo.State in [dsEdit,dsInsert]);
  FrmBarra1.btnDelete.enabled := (Estado) and (zCargo.RecordCount > 0) and Not(zCargo.State in [dsEdit,dsInsert]);
  FrmBarra1.btnCancel.enabled  :=     (Estado) and (zCargo.State in [dsEdit,dsInsert]);
  FrmBarra1.btnRefresh.enabled := (Estado) and Not (zCargo.State in [dsEdit,dsInsert]);

  CxGridPuestos.Enabled := Not (zCargo.State in [dsInsert, dsEdit]);
  CxLookUpEmpresa.Enabled := Not (zCargo.State in [dsInsert, dsEdit]);;
  CxLookUpTipoNomina.Enabled := Not (zCargo.State in [dsInsert, dsEdit]);

  CxDbTextCodigo.Enabled     := (zCargo.State in [dsInsert, dsEdit]);
  CxDbTextTitulo.Enabled     := (zCargo.State in [dsInsert, dsEdit]);
  cxCbbJornada.Enabled       := (zCargo.State in [dsInsert, dsEdit]);
  cxCbbCobraFestivos.Enabled := (zCargo.State in [dsInsert, dsEdit]);
  CxDbSpinBtnNivel.Enabled   := (zCargo.State in [dsInsert, dsEdit]);
  TcxBtnSalario.Enabled      := (zCargo.State in [dsInsert, dsEdit]);
  checkPagarDescanso.Enabled := (zCargo.State in [dsInsert, dsEdit]);
  CxMemoResponsabilidades.Enabled := (zCargo.State in [dsInsert, dsEdit]);
end;

procedure TFrmCatalogoCargos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmCatalogoCargos.FormCreate(Sender: TObject);
begin
  zCargo.Connection := connection.zConnection;
end;

procedure TFrmCatalogoCargos.FormShow(Sender: TObject);
begin
  zEmpresa.Open;
  zTipoNomina.open;

  if zEmpresa.RecordCount > 0 then
    CxLookUpEmpresa.ItemIndex := 0;

  EstadoBotones;
end;

procedure TFrmCatalogoCargos.TcxBtnSalarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    CxMemoResponsabilidades.SetFocus;
end;

procedure TFrmCatalogoCargos.TcxBtnSalarioPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  gForm: TForm;
begin
  Try
    GForm := TForm.Create(self);
    gForm.Caption     := 'Selección de Salario';
    gForm.BorderStyle :=       bsDialog;
    gForm.Position    := poScreenCenter;
    gForm.Width := 500;
    pnlSalarios.Parent  :=    gForm;
    pnlSalarios.Align   := ALClient;
    pnlSalarios.Visible :=     True;
    
    zSalarios.Active := False;
    zSalarios.Params.ParamByName('IdTipoNomina').AsInteger   := CxLookUpTipoNomina.EditValue;
    zSalarios.Params.ParamByName('IdOrganizacion').AsInteger :=    CxLookUpEmpresa.EditValue;
    zSalarios.Open;

    gForm.ShowModal;
  Finally
    if pnlSalarios.Parent <> Self then
    begin
      pnlSalarios.Visible :=  False;
      pnlSalarios.Align   := alNone;
      pnlSalarios.Parent  :=   Self;
    end;
  End;
end;

function TFrmCatalogoCargos.ValidaCampos: Boolean;
Var
  Error: Boolean;
begin
  Error := False;
  if Length(Trim(cxdbTextCodigo.Text)) = 0 then
  Begin
    MessageDlg('Escribe un código para el puesto.', mtInformation, [mbOK], 0);
    Error := True;

    if CxDbTextCodigo.CanFocus then
      CxDbTextCodigo.SetFocus;
  End;

  if Not Error and (Length(Trim(CxDbTextTitulo.Text)) = 0) then
  Begin
    MessageDlg('Escribe un título para el puesto.', mtInformation, [mbOK], 0);
    Error := True;

    if CxDbTextTitulo.CanFocus then
      CxDbTextTitulo.SetFocus;
  End;

  if Not error and (Length(Trim(CxCbbJornada.Text)) = 0) then
  Begin
    MessageDlg('Escribe una jornada para el puesto.', mtInformation, [mbOK], 0);
    Error := True;

    if CxCbbJornada.CanFocus then
      CxCbbJornada.SetFocus;
  End;

  if Not error and (Length(Trim(CxCbbCobraFestivos.Text)) = 0) then
  Begin
    MessageDlg('Define si cobra festivo o no el puesto.', mtInformation, [mbOK], 0);
    Error := True;

    if CxCbbCobraFestivos.CanFocus then
      CxCbbCobraFestivos.SetFocus;
  End;

  Result := Error;
end;

procedure TFrmCatalogoCargos.zCargoAfterScroll(DataSet: TDataSet);
begin
  TcxSalario.Text := zCargo.FieldByName('TituloSalario').AsString;
end;

end.
