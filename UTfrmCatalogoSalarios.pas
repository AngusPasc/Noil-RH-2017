unit UTfrmCatalogoSalarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, ExtCtrls, frm_barra,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, dxLayoutContainer, dxLayoutControl, cxContainer,
  dxLayoutcxEditAdapters, cxDBEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, cxLabel;

type
 tOrganizacion = class
   Id: Integer;
   Titulo: String;
 end;

  TFrmCatalogoSalarios = class(TForm)
    frmBarra1: TfrmBarra;
    pnlDatos: TPanel;
    CxTabOrganizacion: TcxTabControl;
    CxDbGridSalarios: TcxGridDBTableView;
    cxLevel1: TcxGridLevel;
    CxGridDatos: TcxGrid;
    CxColumnCodigo: TcxGridDBColumn;
    CxColumnSalario: TcxGridDBColumn;
    CxColumnImporte: TcxGridDBColumn;
    CxColumnMoneda: TcxGridDBColumn;
    CxColumnTipoNomina: TcxGridDBColumn;
    CxColumnAplicacion: TcxGridDBColumn;
    zSalarios: TZQuery;
    zUptSalario: TZQuery;
    zMoneda: TZQuery;
    zGrupoSalario: TZQuery;
    zOrganizacion: TZQuery;
    zTipoNomina: TZQuery;
    dsSalarios: TDataSource;
    dsUptSalarios: TDataSource;
    dsTipoNomina: TDataSource;
    dsOrganizacion: TDataSource;
    dsGrupoSalario: TDataSource;
    pnlUpt: TPanel;
    dsMoneda: TDataSource;
    DxLayoutLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    CxCbbOrganizacion: TcxDBLookupComboBox;
    dxlytmOrganizacion: TdxLayoutItem;
    cxTextCodigo: TcxDBTextEdit;
    dxlytmLayoutControl1Item11: TdxLayoutItem;
    cxTextTitulo: TcxDBTextEdit;
    dxlytmLayoutControl1Item12: TdxLayoutItem;
    CxCurrencyImporte: TcxDBCurrencyEdit;
    dxlytmLayoutControl1Item13: TdxLayoutItem;
    CxDateAplicacion: TcxDBDateEdit;
    dxlytmLayoutControl1Item14: TdxLayoutItem;
    CxCbbMoneda: TcxDBLookupComboBox;
    dxlytmLayoutControl1Item15: TdxLayoutItem;
    CxCbbTipoSalario: TcxDBComboBox;
    dxlytmLayoutControl1Item16: TdxLayoutItem;
    CxCbbGrupoSalario: TcxDBLookupComboBox;
    dxlytmGrupoSalario: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxlytcrtdgrpLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    CxCbbTipoNomina: TcxDBLookupComboBox;
    dxlytmTipoNomina: TdxLayoutItem;
    pnlBton: TPanel;
    cxbtnGuardar: TcxButton;
    cxbtnCancel: TcxButton;
    zMaxSalario: TZQuery;
    LblLLave: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure CxTabOrganizacionClick(Sender: TObject);
    procedure CxCbbTipoNominaPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxbtnGuardarClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxbtnCancelClick(Sender: TObject);
    procedure CxDbGridSalariosDblClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    Function validacampos: Boolean;
    Procedure Controles(Oculta: Boolean);
  public
    Resultado: Integer;
    gForm: TForm;
    { Public declarations }
  end;

var
  FrmCatalogoSalarios: TFrmCatalogoSalarios;

implementation

{$R *.dfm}

procedure TFrmCatalogoSalarios.btnAddClick(Sender: TObject);
begin
  try
    Controles((TOrganizacion(CxTabOrganizacion.Tabs.Objects[cxTabOrganizacion.TabIndex]).Id = -1));
    if (TOrganizacion(CxTabOrganizacion.Tabs.Objects[cxTabOrganizacion.TabIndex]).Id = -1) then
    begin
      LblLLave.Caption := 'Llave: ' + zSalarios.FieldByName('TituloSalario').asString;
      CxCbbTipoSalario.Text := zSalarios.fieldByName('TipoSalario').asString;
    end
    else
      lblLlave.Caption := '';
    Resultado := mrCancel;
    zUptSalario.Close;
    zUptSalario.ParamByName('IdSalario').asInteger := -9;
    zUptSalario.Open;
    zUptSalario.Append;
    pnlUpt.Visible := true;
    gForm.ShowModal;
    if (Resultado = mrOk) then
    begin
      btnRefreshClick(nil);
    end;
  finally
    if zUptSalario.state in [dsInsert, dsEdit] then
      zUptSalario.Cancel;
  end;
end;

procedure TFrmCatalogoSalarios.btnDeleteClick(Sender: TObject);
begin
  if MessageDlg('¿Estás seguro que deseas eliminar el salario [' + zSalarios.FieldByName('TituloSalario').asString + ']', mtConfirmation, [mbyes, mbNo], 0) = mrYes then
  begin
    zUptSalario.Close;
    zUptSalario.ParamByName('IdSalario').asInteger :=  zSalarios.FieldByName('IdSalario').AsInteger;
    zUptSalario.Open;
    zUptSalario.Edit;
    zUptSalario.FieldbyName('Activo').AsString := 'No';
    zUptSalario.Post;
    btnRefreshClick(nil);
  end;
end;

procedure TFrmCatalogoSalarios.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmCatalogoSalarios.btnRefreshClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := CrAppStart;

    if zSalarios.active then
      zSalarios.Refresh
    else
      zSalarios.Open;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmCatalogoSalarios.Controles(Oculta: Boolean);
begin
  dxlytmOrganizacion.Visible := Not Oculta;
  dxlytmTipoNomina.Visible := Not Oculta;
  dxlytmGrupoSalario.Visible := Not Oculta;
  CxCbbTipoSalario.Properties.Items.Clear;
  if oculta then
  Begin
    gForm.Width := 415;
    gForm.Height := 260;
    CxCbbTipoSalario.Properties.Items.Add('SMVDF');
    CxCbbTipoSalario.Properties.Items.Add('SMVZ');
    cxCbbTipoSalario.ItemIndex := 0;
  End
  else
  begin
    gForm.Width := 445;
    gForm.Height := 285;

    CxCbbTipoSalario.Properties.Items.Add('Ninguno');
    cxCbbTipoSalario.ItemIndex := 0;
  end;
end;

procedure TFrmCatalogoSalarios.cxbtnCancelClick(Sender: TObject);
begin
  Resultado := mrCancel;
end;

procedure TFrmCatalogoSalarios.cxbtnGuardarClick(Sender: TObject);
var
  StrMsj: String;
begin
  if zUptSalario.state in [dsInsert, dsEdit] then
  begin
    if validaCampos then
    begin
      if zMaxSalario.active then
        zMaxSalario.Refresh
      else
        zMaxSalario.Open;

      if zUptSalario.State = dsinsert then
      begin
        zUptSalario.FieldByName('IdSalario').asInteger := zMaxSalario.fieldbyName('IdSalario').asInteger+1;
        zUptSalario.FieldByName('Idllave').asInteger := zMaxSalario.fieldbyName('IdSalario').asInteger+1;
        zUptSalario.FieldByName('SalarioIntegrado').asinteger := 0;
        zUptSalario.FieldByName('vacaciones').asinteger := 0;
        zUptSalario.FieldByName('PrimaVacacional').asinteger := 0;
        zUptSalario.FieldByName('Aguinaldo').asinteger := 0;
        zUptSalario.FieldByName('IdUsuario').asinteger := 1;
        zUptSalario.FieldByName('Fecharegistro').AsDateTime := now;
        zUptSalario.FieldByName('IdUsuarioModificacion').asinteger := 1;
        zUptSalario.FieldByName('Activo').AsString := 'Si';

        if TOrganizacion(CxTabOrganizacion.Tabs.Objects[cxTabOrganizacion.TabIndex]).Id = -1 then
        begin
          zUptSalario.FieldByName('IdGrupoSalario').Clear;
          zUptSalario.FieldByName('IdRangoSalarios').Clear;
          zUptSalario.FieldByName('IdTipoNomina').Clear;
          zUptSalario.FieldByName('IdOrganizacion').Clear;
          zUptSalario.FieldByName('IdLlave').AsInteger := zSalarios.FieldByName('IdLlave').asInteger;
        end;
      end;

      if zUptSalario.State = dsinsert then
        strMsj := 'Salario registrado exitosamente.'
      else
        strMsj := 'Salario modificado exitosamente.';

      zUptSalario.FieldByName('FechaModificacion').asDateTime := Now;
      zUptSalario.Post;
      
      MessageDlg(strMsj, mtInformation, [mbOK], 0);
      Resultado := Mrok;
      gForm.Close;
    end;
  end;
end;

procedure TFrmCatalogoSalarios.CxCbbTipoNominaPropertiesChange(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := CrAppStart;

    zGrupoSalario.Close;
    with zGrupoSalario do
    begin
      if cxCbbTipoNomina.editvalue >= 0 then
       begin
          ParamByName('IdTipoNomina').AsInteger := CxCbbTipoNomina.EditValue;
          Open;
       end;
    end;

  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmCatalogoSalarios.CxDbGridSalariosDblClick(Sender: TObject);
begin
 frmBarra1btnEditClick(nil);
end;

procedure TFrmCatalogoSalarios.CxTabOrganizacionClick(Sender: TObject);
var
  LocIdOrganizacion: integer;
begin
  if zOrganizacion.recordCount > 0 then
  begin
    LocIdOrganizacion := TOrganizacion(CxTabOrganizacion.Tabs.Objects[cxTabOrganizacion.TabIndex]).Id;
    zSalarios.Close;
    With zSalarios do
    begin
      ParamByName('Activo').AsString := '-1';
      ParamByName('IdOrganizacion').AsInteger := LocIdOrganizacion;
      ParamByName('IdSalario').AsInteger := -1;
      if LocIdOrganizacion = -1 then
        ParamByName('IsNulo').asInteger := 1
      else
        ParamByName('IsNulo').asInteger := -1;
      Open;
    end;
  end;
end;

procedure TFrmCatalogoSalarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TFrmCatalogoSalarios.FormCreate(Sender: TObject);
begin
  gForm := TForm.create(Self);
  gForm.Caption := '****';
  gForm.Width := 415;
  gForm.Height := 275;
  gForm.Position := poScreenCenter;
  gForm.BorderStyle := bsDialog;
  pnlUpt.parent := gForm;
  pnlUpt.Align := AlClient;
end;

procedure TFrmCatalogoSalarios.FormShow(Sender: TObject);
var
  oOrg: TOrganizacion;
  cursor: tCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := CrAppStart;

    oOrg := TOrganizacion.create;
    oOrg.Id := -1;
    oOrg.Titulo := 'Generales';
    cxTabOrganizacion.tabs.AddObject('<GENERALES>', oOrg);

    zOrganizacion.open;
    zOrganizacion.First;
    while Not zOrganizacion.eof do
    begin
      oOrg := TOrganizacion.create;
      oOrg.Id := zOrganizacion.FieldByName('IdOrganizacion').asInteger;
      oOrg.Titulo := zOrganizacion.FieldByName('TituloOrganizacion').asString;
      cxTabOrganizacion.Tabs.AddObject(oOrg.Titulo, Oorg);
      zOrganizacion.next;
    end;

    if zOrganizacion.recordCount > 0 then
    begin
      CxTabOrganizacion.TabIndex := 0;
      CxTabOrganizacionClick(nil);
    end;

    zMoneda.Open;
    zTipoNomina.open
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmCatalogoSalarios.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zUptSalario.Cancel ;

end;

procedure TFrmCatalogoSalarios.frmBarra1btnEditClick(Sender: TObject);
begin
  try
    Controles((TOrganizacion(CxTabOrganizacion.Tabs.Objects[cxTabOrganizacion.TabIndex]).Id = -1));
    Resultado := mrCancel;
    zUptSalario.Close;
    zUptSalario.ParamByName('IdSalario').asInteger :=  zSalarios.FieldByName('IdSalario').AsInteger;
    zUptSalario.Open;
    zUptSalario.Edit;
    pnlUpt.Visible := true;
    gForm.ShowModal;
    if (Resultado = mrOk) then
    begin
      btnRefreshClick(nil);
    end;
  finally
    if zUptSalario.state in [dsInsert, dsEdit] then
      zUptSalario.Cancel;
  end;
end;

function TFrmCatalogoSalarios.validacampos: Boolean;
begin
  try
    Result := False;

    if dxlytmTipoNomina.visible and CxCbbTipoNomina.EditValue = null then
    begin
      if cxCbbtipoNomina.CanFocus then
        CxCbbTipoNomina.SetFocus;
      raise Exception.Create('Debes seleccionar un tipo de nómina para este tipo de salario.');
    end;

    if dxlytmGrupoSalario.visible and CxCbbGrupoSalario.EditValue = null then
    begin
      if CxCbbGrupoSalario.CanFocus then
        CxCbbGrupoSalario.SetFocus;
      raise Exception.Create('Debes seleccionar un grupo de salario.');
    end;

    if dxlytmOrganizacion.visible and CxCbbOrganizacion.EditValue = null then
    begin
      if CxCbbOrganizacion.CanFocus then
        CxCbbOrganizacion.SetFocus;
      raise Exception.Create('Debes seleccionar una organizacion a la que pertenecerá este salario.');
    end;

    if CxCbbMoneda.EditValue = null then
    begin
      raise Exception.Create('Debes seleccionar una moneda para el salario.');
    end;

    if Length(Trim(cxTextCodigo.Text)) = 0 then
    begin
      cxTextCodigo.SetFocus;
      Raise Exception.create('Escribe un código para el salario.');
    end;

    if Length(Trim(cxTextTitulo.Text)) = 0 then
    begin
      cxTextTitulo.SetFocus;
      Raise Exception.create('Escribe un título para el salario.');
    end;

    if Length(Trim(CxCurrencyImporte.Text)) = 0 then
    begin
      CxCurrencyImporte.SetFocus;
      Raise Exception.create('Escribe un importe para el salario.');
    end;

    if CxCbbTipoSalario.ItemIndex = -1 then
    begin
      CxCbbTipoSalario.SetFocus;
      raise Exception.create('Selecciona un tipo de salario.');
    end;

    if Length(Trim(CxDateAplicacion.Text)) = 0 then
    begin
      cxDateAplicacion.SetFocus;
      raise Exception.create('Define una fecha de aplicación en la que entrará en vigencia este salario.');
    end;

    Result := true;
  Except
    on e:Exception do
      MessageDlg(e.Message, mtWarning, [mbOK], 0);
  end;
end;

end.
