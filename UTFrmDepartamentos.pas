unit UTFrmDepartamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, cxSplitter,
  cxInplaceContainer, cxTLData, cxDBTL, cxGroupBox, dxorgchr, DB, DBClient,
  cxMaskEdit, dxdborgc, frm_barra, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxLabel, cxMemo, cxDBEdit, cxTextEdit, ExtCtrls, Menus, StdCtrls,
  cxButtons;

type
  TFrmDepartamentos = class(TForm)
    PnlNIveles: TcxGroupBox;
    PnlOrganizacion: TcxGroupBox;
    dxTreeOrganizacion: TcxDBTreeList;
    dsOrganizacion: TDataSource;
    dsDeptos: TDataSource;
    cxColumnNombre: TcxDBTreeListColumn;
    dxOrgChart1: TdxDbOrgChart;
    frmBarra1: TfrmBarra;
    zDeptos: TZQuery;
    zOrganizacion: TZQuery;
    pnlDatos: TPanel;
    CxDbTextCodigo: TcxDBTextEdit;
    CxDbTextTitulo: TcxDBTextEdit;
    CxDbTextEtiqueta: TcxDBTextEdit;
    CxDbTextDescripcion: TcxDBTextEdit;
    CxMemoComentarios: TcxDBMemo;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxlblDescripcion: TcxLabel;
    cxlbl4: TcxLabel;
    cxbtnCancelar: TcxButton;
    zINCDeptos: TZQuery;
    cxbtnAceptar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxTreeOrganizacionSelectionChanged(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure cxbtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure cxbtnCancelarClick(Sender: TObject);
    procedure dxOrgChart1Click(Sender: TObject);
  private
    { Private declarations }
    gForm: TForm;
    Procedure CargarDeptos;
    Function ValidaCampos: Boolean;
  public
    Seleccionado: Integer;
    { Public declarations }
  end;

var
  FrmDepartamentos: TFrmDepartamentos;

implementation

{$R *.dfm}

procedure TFrmDepartamentos.btnAddClick(Sender: TObject);
begin
  if Assigned(gForm) then
  begin
    zDeptos.Insert;
    gForm.Caption := 'Captura de departamento.';
    pnlDatos.visible := true;
    gForm.ShowModal;
  end;
end;

procedure TFrmDepartamentos.btnDeleteClick(Sender: TObject);
var
  cursor: TCursor;
begin
  if zdeptos.fieldByName('IdDepartamento').asinteger = -5 then
    raise Exception.create('Este registro se puede eliminar.');

  If (MessageDlg('¿Estás seguro que deseas eliminar el depto seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = MrYes) and (zDeptos.Locate('IdDepartamento', Seleccionado, [])) then
  begin
    zDeptos.delete;
    btnRefreshClick(nil);
  end;
end;

procedure TFrmDepartamentos.btnEditClick(Sender: TObject);
begin
  if zDeptos.active and (zDeptos.RecordCount = 0) then
    raise Exception.create('No hay registros para editar.');

  if zdeptos.fieldByName('IdDepartamento').asinteger = -5 then
    raise Exception.create('Este registro no es editable.');

  if Assigned(gForm) then
  begin
    zDeptos.Edit;
    gForm.Caption := 'Edición de departamento.';
    pnlDatos.visible := true;
    gForm.ShowModal;
  end;
end;

procedure TFrmDepartamentos.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDepartamentos.btnRefreshClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := screen.cursor;
    try
      screen.Cursor := crAppStart;
      if zDeptos.active then
        zDeptos.refresh
      else
        zDeptos.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido el siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmDepartamentos.CargarDeptos;
var
  Bm: TBookmark;
begin
  if zOrganizacion.active then
  begin
    dxOrgChart1.DataSource := nil;
    Try
      zDeptos.ParamByName('IdDepartamento').AsInteger := -1;
      zDeptos.ParamByName('IdOrganizacion').AsInteger := zOrganizacion.fieldByName('IdOrganizacion').AsInteger;
      if zDeptos.active then
        zDeptos.refresh
      else
        zDeptos.Open;
    Finally
      if zDeptos.RecordCount = 0 then
        dxOrgChart1.Clear
      else
        dxOrgChart1.DataSource := dsDeptos;
    End;
  end;
end;

procedure TFrmDepartamentos.cxbtnAceptarClick(Sender: TObject);
begin
  if ValidaCampos then
  Try
    if zDeptos.State = dsInsert then
    begin
      if zINCDeptos.active then
        zINCDeptos.refresh
      else
        zINCDeptos.open;

      zDeptos.FieldByName('idDepartamento').AsInteger := zINCDeptos.fieldByName('IdDepartamento').asInteger;
      zDeptos.FieldByName('idOrganizacion').AsInteger := zOrganizacion.fieldByName('IdOrganizacion').asInteger;
      zDeptos.FieldByName('idPadre').AsInteger := Seleccionado;
      zDeptos.FieldByName('IdArbol').AsInteger := Seleccionado; //tevisar
      zDeptos.FieldByName('Nivel').AsInteger := dxOrgChart1.Selected.Level - 1;
      zDeptos.FieldByName('Herencia').AsString := '*';
      zDeptos.FieldByName('Activo').AsString := 'Si';
    end;

    zDeptos.post;
    gForm.Close;
    btnRefreshClick(nil);
  Except
    on e: Exception do
      MessageDlg('Ha ocurrido el siguiente error: ' + e.Message, mtError,[mbok], 0);
  End;
end;

procedure TFrmDepartamentos.cxbtnCancelarClick(Sender: TObject);
begin
  if zDeptos.state in [dsEdit, dsInsert] then
  begin
    zDeptos.Cancel;
  end;
end;

procedure TFrmDepartamentos.dxOrgChart1Click(Sender: TObject);
begin
  Try
    Seleccionado := (dxOrgChart1.KeyField.Value);
  Except
    Seleccionado := -5;
  End;
end;

procedure TFrmDepartamentos.dxTreeOrganizacionSelectionChanged(Sender: TObject);
begin
  CargarDeptos;
end;

procedure TFrmDepartamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TFrmDepartamentos.FormCreate(Sender: TObject);
begin
   gForm := TForm.create(Self);
   gForm.Width := 390;
   gForm.Height := 315;
   gForm.caption := '****';
   gForm.BorderStyle := bsDialog;
   gForm.Position := poScreenCenter;
   pnlDatos.parent := gForm;
   pnlDatos.Align := AlClient;
   pnlDatos.visible := False;
end;

procedure TFrmDepartamentos.FormShow(Sender: TObject);
begin
  zOrganizacion.active := false;
  zOrganizacion.ParamByName('IdOrganizacion').asInteger := -1;
  zOrganizacion.Open;
  CargarDeptos;
end;

function TFrmDepartamentos.ValidaCampos: Boolean;
begin
  try
    Result := False;

    if Length(trim(cxDbtextCodigo.text)) = 0 then
    begin
      CxDbTextCodigo.SetFocus;
      Raise Exception.Create('Código debe tener un valor.');
    end;

    if Length(trim(CxDbTextTitulo.text)) = 0 then
    begin
      CxDbTextTitulo.SetFocus;
      Raise Exception.Create('Título debe tener un valor.');
    end;

    if Length(trim(CxDbTextEtiqueta.text)) = 0 then
    begin
      CxDbTextEtiqueta.SetFocus;
      Raise Exception.Create('Etiqueta debe tener un valor.');
    end;

    if Length(trim(CxDbTextDescripcion.text)) = 0 then
    begin
      CxDbTextDescripcion.SetFocus;
      Raise Exception.Create('Descripción debe tener un valor.');
    end;

    Result := True;
  Except
    on e: Exception do
      MessageDlg(e.message, mtWarning, [mbOK], 0);
  end;
end;

end.
