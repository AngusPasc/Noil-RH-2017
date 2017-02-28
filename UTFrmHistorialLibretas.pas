unit UTFrmHistorialLibretas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, global, 
  Dialogs, ExtCtrls, frm_barra, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, DBCtrls, Mask, rxToolEdit, RXDBCtrl, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, cxButtons, Newpanel, Buttons, frxClass,
  frxDBSet;

type
  TFrmHistorialLibretas = class(TForm)
    frmBarra1: TfrmBarra;
    pnlGrid: TPanel;
    pnlDatos: TPanel;
    Grid_HIstorialLibretas: TcxGrid;
    BView_Libretas: TcxGridDBTableView;
    eTipoDocumento: TcxGridDBColumn;
    Grid_HIstorialLibretasLevel1: TcxGridLevel;
    DbEditFolioLibreta: TDBEdit;
    lbl2: TLabel;
    DbDateEdtAplicacion: TDBDateEdit;
    lbl3: TLabel;
    DbDateEdtVigencia: TDBDateEdit;
    lbl4: TLabel;
    zHistorialLibreta: TZQuery;
    dsHistorialLibreta: TDataSource;
    sFolioDocumento: TcxGridDBColumn;
    CxColumnAplicacion: TcxGridDBColumn;
    CxColumnVigencia: TcxGridDBColumn;
    Label1: TLabel;
    cmbTipoDocumento: TDBComboBox;
    btnEnum: TcxButton;
    pnlTiposDocumentos: TPanel;
    Label2: TLabel;
    edtCampo: TEdit;
    btnAgregarCampo: TButton;
    btnCancelar: TButton;
    btnRemoverTipo: TcxButton;
    GrupoImprime: tNewGroupBox;
    Label27: TLabel;
    dbEntidadEducativa: TDBLookupComboBox;
    btnCerrar: TBitBtn;
    btnImprimir: TBitBtn;
    cbbEmpleados: TComboBox;
    frxEsteEmpleado: TfrxDBDataset;
    reporteEsteEmpleado: TfrxReport;
    zqryHistorialGeneral: TZQuery;
    dsHistorialGeneral: TDataSource;
    frxHistorialGeneral: TfrxDBDataset;
    zqryHistorialLibretas2: TZQuery;
    dsHistorialLibretas2: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure zHistorialLibretaAfterOpen(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure DbEditFolioLibretaKeyPress(Sender: TObject; var Key: Char);
    procedure DbDateEdtAplicacionKeyPress(Sender: TObject; var Key: Char);
    procedure cmbTipoDocumentoEnter(Sender: TObject);
    procedure cmbTipoDocumentoExit(Sender: TObject);
    procedure cmbTipoDocumentoKeyPress(Sender: TObject; var Key: Char);
    procedure DbEditFolioLibretaEnter(Sender: TObject);
    procedure DbEditFolioLibretaExit(Sender: TObject);
    procedure DbDateEdtAplicacionEnter(Sender: TObject);
    procedure DbDateEdtAplicacionExit(Sender: TObject);
    procedure DbDateEdtVigenciaEnter(Sender: TObject);
    procedure DbDateEdtVigenciaExit(Sender: TObject);
    procedure btnEnumClick(Sender: TObject);
    procedure btnRemoverTipoClick(Sender: TObject);
    procedure edtCampoKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    procedure estadoBotonera;
    function ObtenerListaEnum(campo : string ) : string;
    function ObtenerCampos( Lista : string ): TStringList;
    { Private declarations }
  public
    idPersonal: Integer;

    { Public declarations }
  end;

var
  FrmHistorialLibretas: TFrmHistorialLibretas;

implementation

{$R *.dfm}

uses
  frm_connection, frmempleados;

procedure TFrmHistorialLibretas.btnCerrarClick(Sender: TObject);
begin
  //No mostrar GrupoImprime
  GrupoImprime.Visible := False;
end;

procedure TFrmHistorialLibretas.btnEnumClick(Sender: TObject);
var
  Form : TForm;
  X : integer;
  Campos : string;

  enum : TStringList;
begin
  try
    try
      Form := TForm.Create(nil);
      form.Width := 210;
      Form.Height := 135;
      form.BorderStyle := bsDialog;
      form.BorderIcons := [biSystemMenu];
      form.Caption := '';
      form.Position := poScreenCenter;
      edtcampo.Text := '';
      pnlTiposDocumentos.Parent := form;
      pnlTiposDocumentos.Align := alclient;
      pnlTiposDocumentos.Visible := true;

      if ( form.ShowModal = mrOk ) and ( Length( Trim( edtCampo.Text ) ) > 0 ) then
      begin
        with connection.zCommand do
        begin
          with CmbTipoDocumento do
          begin
            for x := 0 to Length(edtCampo.Text) - 1 do
            begin
              if edtCampo.text[x] = char(44) then
                raise exception.Create('El nuevo campo no puede contener comas(",")');
            end;

            for x := 0 to Items.Count do
            begin
              if lowercase( Items[x] ) = lowercase( Trim( edtCampo.Text ) ) then
                raise exception.Create('El campo ya existe');
            end;

            campos := '';
            for x := 0 to Items.Count - 1 do
              campos := campos + QuotedStr( Items[x] ) + ',';

            campos := campos + QuotedStr( Trim( edtCampo.Text ) );
          end;

          active := false;
          sql.Text := 'alter table rh_historialdocumentos modify column etipodocumento enum('+campos+') default ' + QuotedStr( CmbTipoDocumento.Items[0] );
          execsql;
          cmbtipodocumento.Text := Trim( edtCampo.Text );
        end;
      end;
    except
      on e:Exception do
        MessageDlg('No se puede continuar'+#10 + e.Message, mtinformation,  [mbok], 0);
    end;
  finally
    pnlTiposDocumentos.Parent  := FrmHistorialLibretas;
    pnlTiposDocumentos.Align   := alnone;
    pnlTiposDocumentos.Visible := false;
    pnlTiposDocumentos.Left    := 0;
    pnlTiposDocumentos.top     := 0;
    pnlTiposDocumentos.width   := 0;
    pnlTiposDocumentos.height  := 0;

    enum := ObtenerCampos( ObtenerListaEnum( cmbTipoDocumento.DataField ) );

    cmbtipoDocumento.Items.Clear;
    for x := 0 to enum.Count - 1 do
      cmbtipodocumento.Items.Add( enum[x] );
  end;
end;

procedure TFrmHistorialLibretas.btnImprimirClick(Sender: TObject);
begin
  //Si la opcion seleccionada es Este Empleada, entonces que muestre el Reporte Individual
  if cbbEmpleados.ItemIndex = 0 then
  begin
    zHistorialLibreta.Active := False;
    zHistorialLibreta.Params.ParamByName('IdPersonal').AsInteger := idPersonal;
    zHistorialLibreta.Open;
    reporteEsteEmpleado.LoadFromFile(global_files + global_MiReporte+ '_ReporteDocumentosIndividual.fr3') ;
    reporteEsteEmpleado.ShowReport();
  end else if cbbEmpleados.ItemIndex = 1 then
  begin
    zqryHistorialGeneral.Active := False;
    zqryHistorialGeneral.Open;
    reporteEsteEmpleado.LoadFromFile(global_files + global_MiReporte+ '_ReporteDocumentosGeneral.fr3') ;
    reporteEsteEmpleado.ShowReport();
  end;  
end;

procedure TFrmHistorialLibretas.btnRemoverTipoClick(Sender: TObject);
var
  x : integer;
  campos : string;

  enum : TStringList;
begin
  with connection.qrybusca do
  begin
    active := false;
    sql.text := 'Select * From rh_historialdocumentos where etipodocumento = :documento limit 1';
    parambyname('documento').asstring := cmbtipodocumento.Text;
    open;
  end;

  if connection.qrybusca.RecordCount = 0 then
  begin
    campos := '';
    for x := 0 to cmbtipodocumento.Items.Count - 1 do
    begin
      if lowercase( cmbtipodocumento.items[x] ) <> lowercase( cmbtipodocumento.text) then
        campos := campos + QuotedStr( cmbtipodocumento.Items[x] ) + ',';
    end;

    campos[ Length( campos ) ] := char(41);

    if messagedlg('Desea eliminar el tipo de documento: '+ cmbtipodocumento.Text, mtconfirmation, [mbyes, mbcancel], 0 ) = mryes then
    begin
      with connection.zcommand do
      begin
        active := false;
        sql.Text := 'alter table rh_historialdocumentos modify column etipodocumento enum('+campos+' default NULL';
        execsql;
      end;
    end;

    application.ProcessMessages;

    enum := ObtenerCampos( ObtenerListaEnum( cmbTipoDocumento.DataField ) );

    cmbtipoDocumento.Items.Clear;
    for x := 0 to enum.Count - 1 do
      cmbtipodocumento.Items.Add( enum[x] );

    cmbtipoDocumento.text := cmbtipoDocumento.items[0];
  end
  else
    MessageDlg('No se puede eliminar ya hay registros asignados a el tipo de documento: '+ cmbtipodocumento.Text, mtinformation, [mbok], 0);
end;

procedure TFrmHistorialLibretas.cmbTipoDocumentoEnter(Sender: TObject);
begin
  cmbTipoDocumento.Color := global_color_entradaERP;
end;

procedure TFrmHistorialLibretas.cmbTipoDocumentoExit(Sender: TObject);
begin
  cmbTipoDocumento.Color := global_color_salidaERP;
  if cmbTipoDocumento.Text = '' then
  begin
    messageDLG('Debe seleccionar un tipo de documento!', mtInformation, [mbOk], 0);
    cmbTipoDocumento.SetFocus;
  end;
end;

procedure TFrmHistorialLibretas.cmbTipoDocumentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  try
    if key=#13 then
      DbEditFolioLibreta.SetFocus;
  Except

  end;
end;

procedure TFrmHistorialLibretas.DbDateEdtAplicacionEnter(Sender: TObject);
begin
  DbDateEdtAplicacion.Color := global_color_entradaERP;
end;

procedure TFrmHistorialLibretas.DbDateEdtAplicacionExit(Sender: TObject);
begin
  DbDateEdtAplicacion.Color := global_color_salidaERP;
end;

procedure TFrmHistorialLibretas.DbDateEdtAplicacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    DbDateEdtVigencia.SetFocus;
end;

procedure TFrmHistorialLibretas.DbDateEdtVigenciaEnter(Sender: TObject);
begin
  DbDateEdtVigencia.Color := global_color_entradaERP;
end;

procedure TFrmHistorialLibretas.DbDateEdtVigenciaExit(Sender: TObject);
begin
  DbDateEdtVigencia.Color := global_color_salidaERP;
end;

procedure TFrmHistorialLibretas.DbEditFolioLibretaEnter(Sender: TObject);
begin
  DbEditFolioLibreta.Color := global_color_entradaERP;
end;

procedure TFrmHistorialLibretas.DbEditFolioLibretaExit(Sender: TObject);
begin
  DbEditFolioLibreta.Color := global_color_salidaERP;
end;

procedure TFrmHistorialLibretas.DbEditFolioLibretaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    DbDateEdtAplicacion.SetFocus;
end;

procedure TFrmHistorialLibretas.edtCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btnagregarcampo.SetFocus;
end;

procedure TFrmHistorialLibretas.estadoBotonera;
  var
  Stado: Boolean;
begin
  Stado := zHistorialLibreta.State in [dsEdit, dsInsert];
  DbEditFolioLibreta.Enabled  := Stado;
  DbDateEdtAplicacion.Enabled := Stado;
  DbDateEdtVigencia.Enabled   := Stado;

  frmBarra1.btnCancel.Enabled  :=     Stado;
  frmBarra1.btnPost.Enabled    :=     Stado;
  frmBarra1.btnDelete.Enabled  := Not Stado;
  frmBarra1.btnEdit.Enabled    := Not Stado;
  frmBarra1.btnPrinter.Enabled := Not Stado;
  frmBarra1.btnAdd.Enabled     := Not Stado;
end;

procedure TFrmHistorialLibretas.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
  campos : TStringList;
  x : integer;
begin
  campos := ObtenerCampos( ObtenerListaEnum( cmbTipoDocumento.DataField ) );

  cmbtipoDocumento.Items.Clear;
  for x := 0 to campos.Count - 1 do
    cmbtipodocumento.Items.Add( campos[x] );
end;

procedure TFrmHistorialLibretas.FormShow(Sender: TObject);
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      zHistorialLibreta.Active := False;
      zHistorialLibreta.SQL.Add('select * from rh_historialdocumentos  where iIdEmpleado = :IdPersonal');
      zHistorialLibreta.Params.ParamByName('IdPersonal').AsInteger := idPersonal;
      zHistorialLibreta.Open;

      zqryHistorialLibretas2.Active := false;
      zqryHistorialLibretas2.Params.ParamByName('IdPersonal').AsInteger := idPersonal;
      zqryHistorialLibretas2.Open;

      estadoBotonera;
      cmbTipoDocumento.enabled := false;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmHistorialLibretas.frmBarra1btnAddClick(Sender: TObject);
begin
  if zHistorialLibreta.Active then
  begin
    zHistorialLibreta.Insert;
    zHistorialLibreta.FieldValues['sFolioDocumento'] := '';
    zHistorialLibreta.FieldValues['eVencida']        := 'No';
    zHistorialLibreta.FieldValues['eReemplazada']    := 'No';
    estadoBotonera;
    cmbTipoDocumento.ItemIndex := 0;
    zHistorialLibreta.FieldValues['eTipoDocumento']  := cmbTipoDocumento.Text;
    cmbTipoDocumento.Enabled := true;
    cmbTipoDocumento.SetFocus;
  end;
end;

procedure TFrmHistorialLibretas.frmBarra1btnCancelClick(Sender: TObject);
begin
  zHistorialLibreta.Cancel;
  estadoBotonera;
  cmbTipoDocumento.enabled := false;
end;

procedure TFrmHistorialLibretas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if (zHistorialLibreta.Active)  and (MessageDlg('¿Está seguro que desea eliminar '+cmbTipoDocumento.Text+' con Folio [' + zHistorialLibreta.FieldByName('sFoliodocumento').asString + ']', mtConfirmation, [mbYes, mbNo], 0)= mrYes) then
  begin
    zHistorialLibreta.Delete;
    zqryHistorialLibretas2.Refresh;
    frmBarra1btnRefreshClick(nil);
    estadoBotonera;
  end;
end;

procedure TFrmHistorialLibretas.frmBarra1btnEditClick(Sender: TObject);
begin
  if zHistorialLibreta.Active then
    zHistorialLibreta.Edit;
    zHistorialLibreta.FieldValues['eVencida']      := 'No';
    zHistorialLibreta.FieldValues['eReemplazada']  := 'No';
    estadoBotonera;
    cmbTipoDocumento.enabled := true;
end;

procedure TFrmHistorialLibretas.frmBarra1btnExitClick(Sender: TObject);
begin    
   Close;
end;

procedure TFrmHistorialLibretas.frmBarra1btnPostClick(Sender: TObject);
var
    sFolio : string;
begin
  if Length(Trim(DbEditFolioLibreta.Text)) = 0 then
  begin
    MessageDlg('Escriba el Folio de '+ cmbTipoDocumento.Text, mtInformation, [mbOK], 0);
    if DbEditFolioLibreta.CanFocus then
      DbEditFolioLibreta.SetFocus;
    Exit;
  end;
  sFolio :=  Trim(DbEditFolioLibreta.Text);

  try
    if (zHistorialLibreta.Active)  and (zHistorialLibreta.State in [dsInsert, dsEdit])then
    begin
      zHistorialLibreta.FieldByName('iIdEmpleado').AsInteger    := idPersonal;
      zHistorialLibreta.FieldByName('idorganizacion').AsInteger := frmEmpleados.frm_Empleados.zQEmpleados.FieldByName('idorganizacion').AsInteger;
      zHistorialLibreta.FieldByName('sFolioDocumento').AsString := DbEditFolioLibreta.Text;
      zHistorialLibreta.FieldByName('dFechaAplicacion').AsDateTime := DbDateEdtAplicacion.Date;
      zHistorialLibreta.FieldByName('dFechaVigencia').AsDateTime := DbDateEdtVigencia.Date;
      zHistorialLibreta.FieldByName('eVencida').AsString := 'No';
      zHistorialLibreta.FieldByName('eReemplazada').AsString := 'No';
      zHistorialLibreta.Post;

      if (zHistorialLibreta.Active)  and (zHistorialLibreta.State in [dsInsert])then
      begin
        {Ahora colocamos los estatus a las libretas..}
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('update rh_historialdocumentos set eReemplazada ="Si" where eReemplazada = "No" and eVencida= "Si" and iIdEmpleado =:empleado and eTipoDocumento = :tipo ');
        connection.zCommand.ParamByName('empleado').AsInteger := idPersonal;
        connection.zCommand.ParamByName('tipo').AsString      := cmbTipoDocumento.Text;
        connection.zCommand.ExecSQL;
      end;

      MessageDlg('Datos de '+cmbTipoDocumento.Text+' registrado con éxito.', mtInformation, [mbOK], 0);

      zqryHistorialLibretas2.Active := false;
      zqryHistorialLibretas2.Params.ParamByName('IdPersonal').AsInteger := idPersonal;
      zqryHistorialLibretas2.Open;
      cmbTipoDocumento.enabled := false;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.message, mtError, [mbOK], 0);
  end;
  estadoBotonera;
end;

procedure TFrmHistorialLibretas.frmBarra1btnPrinterClick(Sender: TObject);
begin
  //Mostrar la ventana GrupoImprime
  GrupoImprime.Visible := True;
  
  cbbEmpleados.Items[0] := zqryHistorialLibretas2.FieldByName('sNombreCompleto').AsString;
end;

procedure TFrmHistorialLibretas.frmBarra1btnRefreshClick(Sender: TObject);
Var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  try
    if zHistorialLibreta.Active then
    zHistorialLibreta.Refresh;

    estadoBotonera;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmHistorialLibretas.zHistorialLibretaAfterOpen(DataSet: TDataSet);
var
  Stado: Boolean;
begin
  Stado := zHistorialLibreta.State in [dsEdit, dsInsert];
  DbEditFolioLibreta.Enabled := Stado;
  DbDateEdtAplicacion.Enabled := Stado;
  DbDateEdtVigencia.Enabled := Stado;

  frmBarra1.btnDelete.Enabled := (zHistorialLibreta.Active) and (zHistorialLibreta.recordCount > 0);
  frmBarra1.btnEdit.Enabled := (zHistorialLibreta.Active) and (zHistorialLibreta.recordCount > 0);
end;

function TFrmHistorialLibretas.ObtenerListaEnum(campo: string):string;
var
  zqConsulta : TZReadOnlyQuery;
  x,
  inicio,
  fin : integer;

  cadena,
  res : string;
begin
  inicio := -1;
  fin := -1;

  try
    zqConsulta := TZReadOnlyQuery.Create(nil);
    zqConsulta.Connection := connection.zConnection;
    with zqConsulta do
    begin
      active := false;
      sql.text := 'select replace( replace( replace(  '+
                      'replace( '+
                        'replace( '+
                          'information_schema.COLUMNS.COLUMN_TYPE , "enum", "") '+
                      ', "(" , "") '+
                     ', ")", "" ) '+
                    ', char(39), ""), ",", "*" ) as COLUMN_TYPE '+#13+#10+
                  'from information_schema.COLUMNS '+
                  'where information_schema.COLUMNS.TABLE_SCHEMA = :basededatos '+
                  '&& information_schema.COLUMNS.TABLE_NAME = "rh_historialdocumentos" '+
                  '&& information_schema.COLUMNS.DATA_TYPE = "enum" '+
                  '&& information_schema.COLUMNS.COLUMN_NAME = :campo ';
      parambyname('basededatos').AsString := connection.Database;
      parambyname('campo').AsString := campo;
      open;
    end;
    res := '';
    if zqConsulta.RecordCount > 0 then
      res := zqConsulta.FieldByName('COLUMN_TYPE').AsString;

    Result := res;
  finally
    zqConsulta.Free;
  end;
end;

function TFrmHistorialLibretas.ObtenerCampos(Lista: string) : tstringlist;
var
  items : TStringList;
  x, y,
  inicio,
  fin : integer;
  tmp : string;
begin
  items := TStringList.Create();
  if Length( Trim( lista ) ) > 0 then
  begin
    x := 1 ;
    inicio := x;
    fin := -1;
    while x <= Length( Lista ) + 1 do
    begin
      if ( lista[x] = '*' ) or ( lista[x] = #0 ) then
      begin
        tmp := '';
        for y := inicio to x - 1 do
          tmp := tmp + lista[y];

        items.Add( tmp );
        inicio := x + 1;
      end;
      inc(x);
    end;
  end;

  result := items;
end;

end.
