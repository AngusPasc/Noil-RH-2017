unit frm_catalogoentidadeseducativas;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, FormAutoScaler, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, AdvGlowButton,
  cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, UnitGenerales;

type
  TfrmCatalogoEntidadesEducativas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    tsNombre: TDBEdit;
    dbNivelAcademico: TDBComboBox;
    frmBarra1: TfrmBarra;
    qryEntidadesEducativas: TZQuery;
    dsEntidadesEducativas: TDataSource;
    Label4: TLabel;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    Label5: TLabel;
    Button2: TButton;
    dsLocalidades: TDataSource;
    zqryLocalidades: TZQuery;
    zqryMunicipios: TZQuery;
    dsMunicipios: TDataSource;
    zqryEstados: TZQuery;
    dsEstados: TDataSource;
    dbEstados: TDBLookupComboBox;
    dbMunicipios: TDBLookupComboBox;
    dbLocalidades: TDBLookupComboBox;
    zqryEstadosid_Estados: TIntegerField;
    zqryEstadossClaveEstado: TStringField;
    zqryEstadossNombre: TStringField;
    zqryMunicipiosid_municipios: TIntegerField;
    zqryMunicipiossClaveMunicipios: TStringField;
    zqryMunicipiossNombre: TStringField;
    zqryMunicipiosid_Estado: TIntegerField;
    zqryLocalidadesid_Localidad: TIntegerField;
    zqryLocalidadessDescripcion: TStringField;
    zqryLocalidadesid_Municipio: TIntegerField;
    zqryLocalidadesid_Estados: TIntegerField;
    qryEntidadesEducativasid_entidadeseducativas: TIntegerField;
    qryEntidadesEducativassNombre: TStringField;
    qryEntidadesEducativassNivelAcademico: TStringField;
    qryEntidadesEducativasid_localidad: TIntegerField;
    qryEntidadesEducativasid_municipios: TIntegerField;
    qryEntidadesEducativasid_Estados: TIntegerField;
    zMunicipios: TZQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    zLocalidades: TZQuery;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    qryEntidadesEducativasLocalidad: TStringField;
    qryEntidadesEducativasMunicipio: TStringField;
    qryEntidadesEducativasEstado: TStringField;
    fsc_escuelas: TFormAutoScaler;
    pnlTiposDocumentos: TPanel;
    lbl1: TLabel;
    edtCampo: TEdit;
    btnAgregarCampo: TButton;
    btnCancelar: TButton;
    btnEfecVendedorActualEnum: TcxButton;
    btnEfecVendedorActualRemoverTipo: TcxButton;
    btnEfecVendedorActualEnum1: TcxButton;
    btnEfecVendedorActualRemoverTipo1: TcxButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_escuelas: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_estatusEnter(Sender: TObject);
    procedure grid_estatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_estatusKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreEnter(Sender: TObject);
    procedure tsNombreExit(Sender: TObject);
    procedure grid_estatusMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_estatusMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_estatusTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure tiColoresEnter(Sender: TObject);
    procedure tiColoresExit(Sender: TObject);
    procedure dbNivelAcademicoEnter(Sender: TObject);
    procedure dbNivelAcademicoExit(Sender: TObject);
    procedure dbNivelAcademicoKeyPress(Sender: TObject; var Key: Char);
    procedure qryEntidadesEducativasAfterInsert(DataSet: TDataSet);
    procedure dbEstadosClick(Sender: TObject);
    procedure dbMunicipiosClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure grid_escuelasDblClick(Sender: TObject);
    procedure dbEstadosKeyPress(Sender: TObject; var Key: Char);
    procedure dbMunicipiosKeyPress(Sender: TObject; var Key: Char);
    procedure dbEstadosEnter(Sender: TObject);
    procedure dbEstadosExit(Sender: TObject);
    procedure dbMunicipiosEnter(Sender: TObject);
    procedure dbMunicipiosExit(Sender: TObject);
    procedure dbLocalidadesEnter(Sender: TObject);
    procedure dbLocalidadesExit(Sender: TObject);
    procedure closeFormulario;
    procedure btnEfecVendedorActualEnumClick(Sender: TObject);
    procedure btnEfecVendedorActualRemoverTipoClick(Sender: TObject);
    procedure btnEfecVendedorActualEnum1Click(Sender: TObject);
    procedure btnEfecVendedorActualRemoverTipo1Click(Sender: TObject);
    procedure estadoBotones(estado : Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoEntidadesEducativas : TfrmCatalogoEntidadesEducativas;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;
  CrearNvaLocalidad : Boolean;
  
  implementation
uses
    frm_inteligent, frm_catalogolocalidad_academico, frmEmpleados;
{$R *.dfm}

procedure TfrmCatalogoEntidadesEducativas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TfrmCatalogoEntidadesEducativas.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qryEntidadesEducativas.Active := False ;
   qryEntidadesEducativas.Open ;

   zqryEstados.Active := False ;
   zqryEstados.Open ;

   zqryMunicipios.Active := False ;
   zqryMunicipios.Open ;

   zqryLocalidades.Active := False ;
   zqryLocalidades.Open ;

   CrearNvaLocalidad := False;

   
  // UtGrid:=TicdbGrid.create(grid_Escuelas);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;
procedure TfrmCatalogoEntidadesEducativas.grid_escuelasDblClick(
  Sender: TObject);
begin
  CloseFormulario;
end;

procedure TfrmCatalogoEntidadesEducativas.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsNombre.SetFocus;
end;

procedure TfrmCatalogoEntidadesEducativas.frmBarra1btnAddClick(Sender: TObject);
begin
  // insertamos...
  frmBarra1.btnAddClick(Sender);
  estadoBotones(true);
  Insertar1.Enabled  := False;
  Editar1.Enabled    := False;
  Registrar1.Enabled :=  True;
  Can1.Enabled       :=  True;
  Eliminar1.Enabled  := False;
  Refresh1.Enabled   := False;
  Salir1.Enabled     := False;
  global_movimiento := 'Insertó';
  tsNombre.SetFocus;
  qryEntidadesEducativas.Append ;
  qryEntidadesEducativas.FieldValues['sNivelAcademico'] := 'PROFESIONAL';
  qryEntidadesEducativas.FieldValues['sNombre'] := '';
  dbEstados.KeyValue := 1;

  tsNombre.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
  grid_Escuelas.Enabled := False;
end;

procedure TfrmCatalogoEntidadesEducativas.frmBarra1btnEditClick(Sender: TObject);
begin
  //editamos los datos...
  If qryEntidadesEducativas.RecordCount > 0 Then
  Begin
    try
      frmBarra1.btnEditClick(Sender);
      estadoBotones(true);
      Insertar1.Enabled := False ;
      Editar1.Enabled := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled := True ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled := False ;
      Salir1.Enabled := False ;
      sOpcion := 'Edit';
      global_movimiento := 'Modificó';
      tsNombre.SetFocus;
      qryEntidadesEducativas.Edit;
      grid_Escuelas.Enabled := False;
    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al agregar registro', 0);
      end;
    end;
  End;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmCatalogoEntidadesEducativas.frmBarra1btnPostClick(Sender: TObject);
var
    lEdicion : boolean;
    mov : String;
begin
  try
    if trim(tsNombre.Text) = '' then
    begin
      MessageDlg('El Campo de Nombre debe tener un valor!', mtInformation, [mbOk], 0);
      exit;
    end;

    if Length(dbLocalidades.Text) < 1 then
    begin
      ShowMessage('El Campo de Localidad debe tener un valor!');
      dbLocalidades.SetFocus;
    Exit;
    end;
    // se inserta el registro...
    if qryEntidadesEducativas.State = dsInsert then
      connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT MAX(id_entidadeseducativas) AS id FROM rh_entidadeseducativas;');
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount = 0 then
      qryEntidadesEducativas.FieldValues['id_entidadeseducativas'] := 1
    else

    qryEntidadesEducativas.FieldValues['id_entidadeseducativas'] := connection.QryBusca.FieldByName('id').AsInteger + 1;
    qryEntidadesEducativas.FieldValues['sNombre'] := tsNombre.Text;
    qryEntidadesEducativas.FieldValues['sNivelAcademico'] :=                     dbNivelAcademico.Text;
    qryEntidadesEducativas.FieldValues['id_localidad']  := zqryLocalidades.FieldValues['id_localidad'];
    qryEntidadesEducativas.FieldValues['id_municipios'] := zqryMunicipios.FieldValues['id_municipios'];
    qryEntidadesEducativas.FieldValues['id_Estados']    :=       zqryEstados.FieldValues['id_Estados'];
    qryEntidadesEducativas.Post ;

    if global_movimiento = 'Insertó' then
      mov:= 'Se realizó la inserción de la Entidad Educativa No. [' + qryEntidadesEducativas.FieldByName('id_entidadeseducativas').AsString + ']'
    else if global_movimiento = 'Modificó' then
      mov:= 'Se realizó la modificación de la Entidad Educativa No. [' + qryEntidadesEducativas.FieldByName('id_entidadeseducativas').AsString  + ']';

    kardex_almacen(mov, global_movimiento);

    frmBarra1.btnPostClick(Sender);
    Insertar1.Enabled  :=  True;
    Editar1.Enabled    :=  True;
    Registrar1.Enabled := False;
    Can1.Enabled       := False;
    Eliminar1.Enabled  :=  True;
    Refresh1.Enabled   :=  True;
    Salir1.Enabled     :=  True;
    grid_Escuelas.Enabled  :=    True;
    desactivapop(popupprincipal);
    zqryMunicipios.Filtered  := False;
    zqryLocalidades.Filtered := False;
    qryEntidadesEducativas.Refresh;
    grid_Escuelas.Refresh;
    estadoBotones(False);

    //Cuando se de en el boton Guardar, entonces se debe de mostrar el recien creado
    closeFormulario;
  except
    on E:Exception do
    begin
      ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
    end;
  end
end;

procedure TfrmCatalogoEntidadesEducativas.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   estadoBotones(False);
   qryEntidadesEducativas.Cancel;
   zqryMunicipios.Filtered  := False;
   zqryLocalidades.Filtered := False;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled :=   False;
   grid_Escuelas.Enabled    :=  True;
   sOpcion := '';
   global_movimiento := '';
end;

procedure TfrmCatalogoEntidadesEducativas.frmBarra1btnDeleteClick(Sender: TObject);
var mov : String;
begin
  If qryEntidadesEducativas.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        global_movimiento := 'Eliminó';
        mov:= 'Se realizó la eliminación de la Entidad Educativa No. [' + qryEntidadesEducativas.FieldByName('id_entidadeseducativas').AsString + ']';
        qryEntidadesEducativas.Delete;
        kardex_almacen(mov, global_movimiento);
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Estatus de Empleados', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmCatalogoEntidadesEducativas.frmBarra1btnRefreshClick(Sender: TObject);
begin
  qryEntidadesEducativas.refresh ;
end;

procedure TfrmCatalogoEntidadesEducativas.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled  :=  True;
  Editar1.Enabled    :=  True;
  Registrar1.Enabled := False;
  Can1.Enabled       := False;
  Eliminar1.Enabled  :=  True;
  Refresh1.Enabled   :=  True;
  Salir1.Enabled     :=  True;
  Close
end;

procedure TfrmCatalogoEntidadesEducativas.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogoEntidadesEducativas.qryEntidadesEducativasAfterInsert(DataSet: TDataSet);
begin
  begin
    qryEntidadesEducativas.FieldValues['sDescripcion'] := '*' ;
    qryEntidadesEducativas.FieldValues['iAplicaEquiposActivos'] := 'Neutral' ;
  end;
end;

procedure TfrmCatalogoEntidadesEducativas.Copy1Click(Sender: TObject);
begin
  UtGrid.AddRowsFromClip;
end;

procedure TfrmCatalogoEntidadesEducativas.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmCatalogoEntidadesEducativas.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;
end;

procedure TfrmCatalogoEntidadesEducativas.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
begin
   CloseFormulario;
end;

procedure TfrmCatalogoEntidadesEducativas.dbEstadosClick(Sender: TObject);
begin
  zqryMunicipios.Filtered := False;
  zqryMunicipios.Filter := 'id_Estado = ' + intToStr(qryEntidadesEducativas.FieldByName('id_Estados').AsInteger);
  zqryMunicipios.Filtered := True;
end;

procedure TfrmCatalogoEntidadesEducativas.dbEstadosEnter(Sender: TObject);
begin
  dbEstados.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.dbEstadosExit(Sender: TObject);
begin
  dbEstados.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.dbEstadosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbMunicipios.SetFocus
end;

procedure TfrmCatalogoEntidadesEducativas.dbLocalidadesEnter(Sender: TObject);
begin
  dbLocalidades.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.dbLocalidadesExit(Sender: TObject);
begin
  dbLocalidades.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.dbMunicipiosClick(Sender: TObject);
begin
  zqryLocalidades.Filtered := False;
  zqryLocalidades.Filter := 'id_Municipio = ' + intToStr(qryEntidadesEducativas.FieldByName('id_municipios').AsInteger);
  zqryLocalidades.Filtered := True;
end;

procedure TfrmCatalogoEntidadesEducativas.dbMunicipiosEnter(Sender: TObject);
begin
  dbMunicipios.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.dbMunicipiosExit(Sender: TObject);
begin
  dbMunicipios.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.dbMunicipiosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbLocalidades.SetFocus
end;

procedure TfrmCatalogoEntidadesEducativas.dbNivelAcademicoEnter(Sender: TObject);
begin
  dbNivelAcademico.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.dbNivelAcademicoExit(Sender: TObject);
begin
  dbNivelAcademico.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.dbNivelAcademicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsNombre.SetFocus
end;

procedure TfrmCatalogoEntidadesEducativas.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmCatalogoEntidadesEducativas.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmCatalogoEntidadesEducativas.btnEfecVendedorActualEnum1Click(
  Sender: TObject);
var
  Form : TForm;
  X : integer;
begin
  try
    Form   :=       TForm.Create(nil);
    lbl1.Caption := 'Nuevo Municipio';
    form.Width  := 210;
    Form.Height := 135;
    form.BorderStyle :=       bsDialog;
    form.BorderIcons := [biSystemMenu];
    form.Caption := '';
    form.Position :=    poScreenCenter;
    edtcampo.Text := '';
    pnlTiposDocumentos.Parent :=    form;
    pnlTiposDocumentos.Align := alclient;
    pnlTiposDocumentos.Visible :=   true;

    if ( form.ShowModal = mrOk ) and ( Length( Trim( edtCampo.Text ) ) > 0 ) then
    begin
      with connection.zCommand do
      begin
        with zqryMunicipios do
        begin
          for x := 0 to Length(edtCampo.Text) - 1 do
          begin
            if edtCampo.text[x] = char(44) then
              raise exception.Create('El nuevo campo no puede contener comas(",")');
          end;

          zqryMunicipios.First;
          while not zqryMunicipios.Eof do
          begin
            if lowercase( zqryMunicipios.FieldByName('sNombre').AsString ) = lowercase( Trim( edtCampo.Text ) ) then
              raise exception.Create('El campo ya existe');

            zqryMunicipios.Next;
          end;

          //Si no ha habido error, insertar el nuevo item a la tabla rh_municipios
          zqryMunicipios.Insert;
          zqryMunicipios.FieldByName('id_municipios').AsInteger := 0;
          zqryMunicipios.FieldByName('sNombre').AsString := edtCampo.Text;
          zqryMunicipios.FieldByName('id_Estado').AsString := dbEstados.KeyValue;
          zqryMunicipios.Post;

          zqryMunicipios.Refresh;

          MessageDlg('Municipio registrado correctamente', mtinformation,  [mbok], 0);
        end;
      end;
    end;
  except
    on e:Exception do
      MessageDlg('No se puede continuar'+#10 + e.Message, mtinformation,  [mbok], 0);
  end;
end;

procedure TfrmCatalogoEntidadesEducativas.btnEfecVendedorActualEnumClick(
  Sender: TObject);
var
  Form : TForm;
  X : integer;
begin
  try
    Form   :=    TForm.Create(nil);
    lbl1.Caption := 'Nuevo Estado';
    form.Width  := 210;
    Form.Height := 135;
    form.BorderStyle :=       bsDialog;
    form.BorderIcons := [biSystemMenu];
    form.Caption := '';
    form.Position :=    poScreenCenter;
    edtcampo.Text := '';
    pnlTiposDocumentos.Parent :=    form;
    pnlTiposDocumentos.Align := alclient;
    pnlTiposDocumentos.Visible :=   true;

    if ( form.ShowModal = mrOk ) and ( Length( Trim( edtCampo.Text ) ) > 0 ) then
    begin
      with connection.zCommand do
      begin
        with dbEstados do
        begin
          for x := 0 to Length(edtCampo.Text) - 1 do
            if edtCampo.text[x] = char(44) then
              raise exception.Create('El nuevo campo no puede contener comas(",")');

          zqryEstados.First;
          while not zqryEstados.Eof do
          begin
            if lowercase( zqryEstados.FieldByName('sNombre').AsString ) = lowercase( Trim( edtCampo.Text ) ) then
              raise exception.Create('El campo ya existe');

            zqryEstados.Next;
          end;

          //Si no ha habido error, insertar el nuevo item a la tabla rh_estados
          zqryEstados.Insert;
          zqryEstados.FieldByName('id_estados').AsInteger := 0;
          zqryEstados.FieldByName('sNombre').AsString := edtCampo.Text;
          zqryEstados.Post;

          zqryEstados.Refresh;

          MessageDlg('Estado registrado correctamente', mtinformation,  [mbok], 0);

          ZMunicipios.Refresh;

          try
            ZMunicipios.Filtered := False;
            ZMunicipios.Filter := 'id_Estado = ' + VarToStr( dbEstados.KeyValue);
            ZMunicipios.Filtered := True;
          except
            ZMunicipios.Filtered := False;
          end;
        end;
      end;
    end;
  except
    on e:Exception do
      MessageDlg('No se puede continuar'+#10 + e.Message, mtinformation,  [mbok], 0);
  end;
end;

procedure TfrmCatalogoEntidadesEducativas.btnEfecVendedorActualRemoverTipo1Click(
  Sender: TObject);
begin
  with connection.qrybusca do
  begin
    active := false;
    sql.text := 'Select * From rh_localidad where id_Municipio = :id_Municipio limit 1';
    parambyname('id_Municipio').AsInteger := dbMunicipios.KeyValue;
    open;
  end;

  if connection.qrybusca.RecordCount = 0 then
  begin
    if messagedlg('Desea eliminar el Municipio: '+ dbMunicipios.Text, mtconfirmation, [mbyes, mbcancel], 0 ) = mryes then
    begin
      with connection.zcommand do
      begin
        active := false;
        sql.Text := 'delete from rh_municipios where id_Municipios = :id_Municipios';
        Params.ParamByName('id_Municipios').AsInteger := dbMunicipios.KeyValue;
        execsql;
      end;
      zMunicipios.Refresh;
    end;
  end
  else
    MessageDlg('No se puede eliminar ya hay registros asignados al Municipio: '+ dbMunicipios.Text, mtinformation, [mbok], 0);
end;

procedure TfrmCatalogoEntidadesEducativas.btnEfecVendedorActualRemoverTipoClick(
  Sender: TObject);
begin
  with connection.qrybusca do
  begin
    active := false;
    sql.text := 'Select * From rh_municipios where id_Estado = :id_Estado limit 1';
    parambyname('id_Estado').AsInteger := dbEstados.KeyValue;
    open;
  end;

  if connection.qrybusca.RecordCount = 0 then
  begin
    if messagedlg('Desea eliminar el Estado: '+ dbEstados.Text, mtconfirmation, [mbyes, mbcancel], 0 ) = mryes then
    begin
      with connection.zcommand do
      begin
        active := false;
        sql.Text := 'delete from rh_estados where id_Estados = :id_Estados';
        Params.ParamByName('id_Estados').AsInteger := dbEstados.KeyValue;
        execsql;
      end;
      zqryEstados.Refresh;
      zqryEstados.Last;
      dbEstados.KeyValue := zqryEstados.FieldByName('id_estados').AsInteger;
    end;
  end
  else
    MessageDlg('No se puede eliminar ya hay registros asignados al Estado: '+ dbEstados.Text, mtinformation, [mbok], 0);
end;

procedure TfrmCatalogoEntidadesEducativas.Button2Click(Sender: TObject);
begin
  if qryEntidadesEducativas.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmCatalogolocalidad_academico') then
    begin
        Application.CreateForm(TfrmCatalogolocalidad_academico, frmCatalogolocalidad_academico);
        frmCatalogolocalidad_academico.ShowModal;
        zqryLocalidades.Refresh;
        zLocalidades.Refresh;
    end;
  end;
end;

procedure TfrmCatalogoEntidadesEducativas.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmCatalogoEntidadesEducativas.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmCatalogoEntidadesEducativas.estadoBotones(estado: Boolean);
begin
  btnEfecVendedorActualEnum.Enabled := estado;
  btnEfecVendedorActualRemoverTipo.Enabled := estado;
  btnEfecVendedorActualEnum1.Enabled := estado;
  btnEfecVendedorActualRemoverTipo1.Enabled := estado;
end;

procedure TfrmCatalogoEntidadesEducativas.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmCatalogoEntidadesEducativas.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmCatalogoEntidadesEducativas.grid_estatusEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoEntidadesEducativas.grid_estatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoEntidadesEducativas.grid_estatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoEntidadesEducativas.grid_estatusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmCatalogoEntidadesEducativas.grid_estatusMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmCatalogoEntidadesEducativas.grid_estatusTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmCatalogoEntidadesEducativas.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
    tsNombre.SetFocus
end;

procedure TfrmCatalogoEntidadesEducativas.tiColoresEnter(Sender: TObject);
begin
  //tiColores.Color := $00E6FEFF;
end;

procedure TfrmCatalogoEntidadesEducativas.tiColoresExit(Sender: TObject);
begin
  //tiColores.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.tsNombreEnter(Sender: TObject);
begin
  tsNombre.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.tsNombreExit(Sender: TObject);
begin
  tsNombre.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEntidadesEducativas.tsNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    dbEstados.SetFocus;
end;

procedure TfrmCatalogoEntidadesEducativas.closeFormulario;
begin
  try
    if Assigned(frm_Empleados)then
    begin
      frmEmpleados.frm_Empleados.zqEntidadesEducativas.Refresh;
      frmEmpleados.frm_Empleados.cxEscuela.DataBinding.DataSource.DataSet.FieldByName('id_entidadeseducativas').AsInteger := qryEntidadesEducativas.FieldValues['id_entidadeseducativas'];
      Close;
    end;
  Except
  end;
end;

end.
