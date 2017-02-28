unit frm_catalogolocalidad_academico;

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
  cxGrid;

type
  TfrmCatalogolocalidad_academico = class(TForm)
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
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    tsDescripcion: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    qryLocalidad: TZQuery;
    dsLocalidad: TDataSource;
    frmBarra1: TfrmBarra;
    qryLocalidadid_Localidad: TIntegerField;
    qryLocalidadsDescripcion: TStringField;
    qryLocalidadid_Municipio: TIntegerField;
    ZQ_Estados: TZQuery;
    ds_Estados: TDataSource;
    ZQ_Estadosid_Estados: TIntegerField;
    ZQ_EstadossClaveEstado: TStringField;
    ZQ_EstadossNombre: TStringField;
    dbEstados: TDBLookupComboBox;
    ZQ_Municipios: TZQuery;
    ds_Municipios: TDataSource;
    dbMunicipios: TDBLookupComboBox;
    qryMunicipios: TZQuery;
    qryLocalidadNombre_Municipio: TStringField;
    qryLocalidadid_Estados: TIntegerField;
    qryLocalidadNombre_estado: TStringField;
    ZQ_Municipiosid_municipios: TIntegerField;
    ZQ_MunicipiossClaveMunicipios: TStringField;
    ZQ_MunicipiossNombre: TStringField;
    ZQ_Municipiosid_Estado: TIntegerField;
    qryMunicipiosid_municipios: TIntegerField;
    qryMunicipiossClaveMunicipios: TStringField;
    qryMunicipiossNombre: TStringField;
    qryMunicipiosid_Estado: TIntegerField;
    fsc_locAcd: TFormAutoScaler;
    btnEfecVendedorActualEnum: TcxButton;
    btnEfecVendedorActualRemoverTipo: TcxButton;
    pnlTiposDocumentos: TPanel;
    lbl1: TLabel;
    edtCampo: TEdit;
    btnAgregarCampo: TButton;
    btnCancelar: TButton;
    btnEfecVendedorActualEnum1: TcxButton;
    btnEfecVendedorActualRemoverTipo1: TcxButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_localidades: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure grid_localidadesEnter(Sender: TObject);
    procedure grid_localidadesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_localidadesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_localidadesMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_localidadesMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_1TitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure dbequiposEnter(Sender: TObject);
    procedure dbequiposExit(Sender: TObject);
    procedure dbequiposKeyPress(Sender: TObject; var Key: Char);
    procedure dbEstadosClick(Sender: TObject);
    procedure qryLocalidadAfterInsert(DataSet: TDataSet);
    procedure btnEfecVendedorActualEnumClick(Sender: TObject);
    procedure btnEfecVendedorActualRemoverTipoClick(Sender: TObject);
    procedure btnEfecVendedorActualEnum1Click(Sender: TObject);
    procedure btnEfecVendedorActualRemoverTipo1Click(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogolocalidad_academico : TfrmCatalogolocalidad_academico;
  //utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_catalogoentidadeseducativas;
{$R *.dfm}

procedure TfrmCatalogolocalidad_academico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
   try
    frm_catalogoentidadeseducativas.frmCatalogoEntidadesEducativas.zqryLocalidades.Refresh;
    frm_catalogoentidadeseducativas.frmCatalogoEntidadesEducativas.dbLocalidades.KeyValue    :=  qryLocalidad.FieldValues['id_Localidad'];
  Except
  end;
end;

procedure TfrmCatalogolocalidad_academico.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
  OpcButton := '' ;
  frmbarra1.btnCancel.Click;

  ZQ_Estados.Active := False;
  ZQ_Estados.Open ;

  ZQ_Municipios.Active := False;
  ZQ_Municipios.Open ;

  qryLocalidad.Active := False;
  qryLocalidad.Open ;

 // grid_localidades.SetFocus;
 // UtGrid:=TicdbGrid.create(grid_localidades);

  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;

  if assigned(frmCatalogoEntidadesEducativas) then
  if (frmCatalogoEntidadesEducativas.qryEntidadesEducativas.State = dsEdit) or (frmCatalogoEntidadesEducativas.qryEntidadesEducativas.State = dsInsert) then
  begin
    frmBarra1.btnAddClick(Sender);

    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;

    qryLocalidad.Append;
    qryLocalidad.FieldValues['sDescripcion'] := '';
    qryLocalidad.FieldValues['id_Municipio'] := frmCatalogoEntidadesEducativas.dbMunicipios.KeyValue;
    qryLocalidad.FieldValues['id_Estados'] := frmCatalogoEntidadesEducativas.dbEstados.KeyValue;

    dbEstados.KeyValue := frmCatalogoEntidadesEducativas.dbEstados.KeyValue;
    dbMunicipios.KeyValue := frmCatalogoEntidadesEducativas.dbMunicipios.KeyValue;
    dbEstados.Enabled := False;
    dbMunicipios.Enabled := False;

    tsDescripcion.SetFocus;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;
    grid_localidades.Enabled := False;
  end;
end;
procedure TfrmCatalogolocalidad_academico.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmCatalogolocalidad_academico.frmBarra1btnAddClick(Sender: TObject);
begin
   btnEfecVendedorActualEnum.Enabled := True;
   btnEfecVendedorActualRemoverTipo.Enabled := True;
   btnEfecVendedorActualEnum1.Enabled := True;
   btnEfecVendedorActualRemoverTipo1.Enabled := True;
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   qryLocalidad.insert;
   qryLocalidad.FieldValues['sDescripcion'] := '';
   tsDescripcion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_localidades.Enabled := False;

end;

procedure TfrmCatalogolocalidad_academico.frmBarra1btnEditClick(Sender: TObject);
begin
    If qryLocalidad.RecordCount > 0 Then
    Begin
        try
           btnEfecVendedorActualEnum.Enabled := True;
           btnEfecVendedorActualRemoverTipo.Enabled := True;
           btnEfecVendedorActualEnum1.Enabled := True;
           btnEfecVendedorActualRemoverTipo1.Enabled := True;

           frmBarra1.btnEditClick(Sender);
           Insertar1.Enabled := False ;
           Editar1.Enabled := False ;
           Registrar1.Enabled := True ;
           Can1.Enabled := True ;
           Eliminar1.Enabled := False ;
           Refresh1.Enabled := False ;
           Salir1.Enabled := False ;
           sOpcion := 'Edit';
           tsDescripcion.SetFocus;
           qryLocalidad.Edit;
           grid_localidades.Enabled := False;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al agregar registro', 0);
           end;
        end;
    End;
end;

procedure TfrmCatalogolocalidad_academico.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  Cursor: tCursor;
begin
  try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := CrappStart;
      frmBarra1.btnPostClick(Sender);
      if Length(trim(tsDescripcion.Text)) > 0 then
      begin
        with connection.QryBusca do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('SELECT MAX(id_Localidad) AS id FROM rh_localidad;');
          Open;
        end;

        if connection.QryBusca.RecordCount = 0 then
          qryLocalidad.FieldValues['id_Localidad'] := 1
        else
          qryLocalidad.FieldValues['id_Localidad'] := connection.QryBusca.FieldByName('id').AsInteger + 1;

        qryLocalidad.Post;
      end
      else
        MessageDlg('La descripcion debe tener un valor!', mtInformation, [mbOk], 0);
    Finally
      Insertar1.Enabled  := True ;
      Editar1.Enabled    := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled       := False ;
      Eliminar1.Enabled  := True ;
      Refresh1.Enabled   := True ;
      Salir1.Enabled     := True ;
      grid_localidades.Enabled := True;

      desactivapop(popupprincipal);
//
      if zq_Municipios.Filtered  then
        ZQ_Municipios.Filtered := False;
//
      if qryLocalidad.State <> dsBrowse then
        qryLocalidad.Cancel;

      if not (qryLocalidad.State in [dsInsert, dsEdit]) then
        qryLocalidad.Refresh;

      btnEfecVendedorActualEnum.Enabled := False;
      btnEfecVendedorActualRemoverTipo.Enabled := False;
      btnEfecVendedorActualEnum1.Enabled := False;
      btnEfecVendedorActualRemoverTipo1.Enabled := False;

      Screen.Cursor := Cursor;
    End;
  except
    on E:Exception do
    begin
      ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
    end;
  end;
end;

procedure TfrmCatalogolocalidad_academico.frmBarra1btnCancelClick(Sender: TObject);
begin

   frmBarra1.btnCancelClick(Sender);
   qryLocalidad.Cancel;
   ZQ_Municipios.Filtered := False;

//   Insertar1.Enabled := True ;
//   Editar1.Enabled := True ;
//   Registrar1.Enabled := False ;
//   Can1.Enabled := False ;
//   Eliminar1.Enabled := True ;
//   Refresh1.Enabled := True ;
//   Salir1.Enabled := True ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_localidades.Enabled := True;
   sOpcion := '';

   btnEfecVendedorActualEnum.Enabled := False;
   btnEfecVendedorActualRemoverTipo.Enabled := False;
   btnEfecVendedorActualEnum1.Enabled := False;
   btnEfecVendedorActualRemoverTipo1.Enabled := False;
end;

procedure TfrmCatalogolocalidad_academico.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If qryLocalidad.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     try
         qryLocalidad.Delete;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Estatus de Empleados', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmCatalogolocalidad_academico.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryLocalidad.refresh ;
end;

procedure TfrmCatalogolocalidad_academico.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close;
end;

procedure TfrmCatalogolocalidad_academico.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogolocalidad_academico.qryLocalidadAfterInsert(
  DataSet: TDataSet);
begin
   qryLocalidad.FieldValues['id_Estados']:=1 ;
   qryLocalidad.FieldValues['id_Municipio'] := 1;
end;

procedure TfrmCatalogolocalidad_academico.Copy1Click(Sender: TObject);
begin
//UtGrid.AddRowsFromClip;
end;

procedure TfrmCatalogolocalidad_academico.Cut1Click(Sender: TObject);
begin
 // UtGrid.CopyRowsToClip;
end;

procedure TfrmCatalogolocalidad_academico.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

 If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogolocalidad_academico.dbequiposEnter(Sender: TObject);
begin
     //dbequipos.Color := global_color_entradaERP
end;

procedure TfrmCatalogolocalidad_academico.dbequiposExit(Sender: TObject);
begin
    //dbequipos.Color := global_color_salidaERP
end;

procedure TfrmCatalogolocalidad_academico.dbequiposKeyPress(Sender: TObject;
  var Key: Char);
begin
      if Key = #13 then
          tsdescripcion.SetFocus
end;


procedure TfrmCatalogolocalidad_academico.dbEstadosClick(Sender: TObject);
begin
  ZQ_Municipios.Filtered := False;
  ZQ_Municipios.Filter := 'id_Estado = ' + intToStr(qryLocalidad.FieldByName('id_Estados').AsInteger);
  ZQ_Municipios.Filtered := True;
end;

procedure TfrmCatalogolocalidad_academico.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmCatalogolocalidad_academico.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmCatalogolocalidad_academico.btnEfecVendedorActualEnum1Click(
  Sender: TObject);
var
  Form : TForm;
  X : integer;
begin
  try
    try
      Form := TForm.Create(nil);
      lbl1.Caption := 'Nuevo Municipio';
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
          with dbMunicipios do
          begin
            for x := 0 to Length(edtCampo.Text) - 1 do
            begin
              if edtCampo.text[x] = char(44) then
                raise exception.Create('El nuevo campo no puede contener comas(",")');
            end;

            ZQ_Municipios.First;
            while not ZQ_Municipios.Eof do
            begin
              if lowercase( ZQ_Municipios.FieldByName('sNombre').AsString ) = lowercase( Trim( edtCampo.Text ) ) then
                raise exception.Create('El campo ya existe');

              ZQ_Municipios.Next;
            end;

            //Si no ha habido error, insertar el nuevo item a la tabla rh_estados
            ZQ_Municipios.Insert;
            ZQ_Municipios.FieldByName('id_municipios').AsInteger := 0;
            ZQ_Municipios.FieldByName('sNombre').AsString := edtCampo.Text;
            ZQ_Municipios.FieldByName('id_Estado').AsString := dbEstados.KeyValue;
            ZQ_Municipios.Post;

            ZQ_Municipios.Refresh;

            MessageDlg('Municipio registrado correctamente', mtinformation,  [mbok], 0);
          end;
        end;
      end;
    except
      on e:Exception do
        MessageDlg('No se puede continuar'+#10 + e.Message, mtinformation,  [mbok], 0);
    end;
  finally
  end;
end;

procedure TfrmCatalogolocalidad_academico.btnEfecVendedorActualEnumClick(
  Sender: TObject);
var
  Form : TForm;
  X : integer;
begin
  try
    try
      Form := TForm.Create(nil);
      lbl1.Caption := 'Nuevo Estado';
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
          with dbEstados do
          begin
            for x := 0 to Length(edtCampo.Text) - 1 do
              if edtCampo.text[x] = char(44) then
                raise exception.Create('El nuevo campo no puede contener comas(",")');


            ZQ_Estados.First;
            while not ZQ_Estados.Eof do
            begin
              if lowercase( ZQ_Estados.FieldByName('sNombre').AsString ) = lowercase( Trim( edtCampo.Text ) ) then
                raise exception.Create('El campo ya existe');

              ZQ_Estados.Next;
            end;

            //Si no ha habido error, insertar el nuevo item a la tabla rh_estados
            ZQ_Estados.Insert;
            ZQ_Estados.FieldByName('id_estados').AsInteger := 0;
            ZQ_Estados.FieldByName('sNombre').AsString := edtCampo.Text;
            ZQ_Estados.Post;

            ZQ_Estados.Refresh;

            MessageDlg('Estado registrado correctamente', mtinformation,  [mbok], 0);

            //ZQ_Estados.Last;
            //dbEstados.KeyValue := ZQ_Estados.FieldByName('id_estados').AsInteger;

            ZQ_Municipios.Refresh;

            try
              ZQ_Municipios.Filtered := False;
              ZQ_Municipios.Filter := 'id_Estado = ' + VarToStr( dbEstados.KeyValue);
              ZQ_Municipios.Filtered := True;
            except
              ZQ_Municipios.Filtered := False;
            end;
          end;
        end;
      end;
    except
      on e:Exception do
        MessageDlg('No se puede continuar'+#10 + e.Message, mtinformation,  [mbok], 0);
    end;
  finally
  end;
end;

procedure TfrmCatalogolocalidad_academico.btnEfecVendedorActualRemoverTipo1Click(
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
      ZQ_Municipios.Refresh;
    end;
  end
  else
    MessageDlg('No se puede eliminar ya hay registros asignados al Municipio: '+ dbMunicipios.Text, mtinformation, [mbok], 0);
end;

procedure TfrmCatalogolocalidad_academico.btnEfecVendedorActualRemoverTipoClick(
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
      ZQ_Estados.Refresh;
      ZQ_Estados.Last;
      dbEstados.KeyValue := ZQ_Estados.FieldByName('id_estados').AsInteger;
    end;
  end
  else
    MessageDlg('No se puede eliminar ya hay registros asignados al Estado: '+ dbEstados.Text, mtinformation, [mbok], 0);
end;

procedure TfrmCatalogolocalidad_academico.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmCatalogolocalidad_academico.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmCatalogolocalidad_academico.Refresh1Click(Sender: TObject);
begin
    //frmBarra1.btnRefresh.Click
end;

procedure TfrmCatalogolocalidad_academico.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmCatalogolocalidad_academico.grid_localidadesEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogolocalidad_academico.grid_localidadesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogolocalidad_academico.grid_localidadesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogolocalidad_academico.grid_localidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 // UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmCatalogolocalidad_academico.grid_localidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmCatalogolocalidad_academico.dbgrd_1TitleClick(Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmCatalogolocalidad_academico.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmCatalogolocalidad_academico.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmCatalogolocalidad_academico.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogolocalidad_academico.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if frmbarra1.btnPost.Enabled = True then
       if key =#13 then
          frmBarra1.btnPost.SetFocus;
end;

end.
