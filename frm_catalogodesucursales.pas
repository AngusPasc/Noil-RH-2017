unit frm_catalogodesucursales;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, jpeg, rxToolEdit, RXDBCtrl, ExtDlgs, JvDBImage;

type
  TfrmCatalogodesucursales = class(TForm)
    grid_sucursales: TDBGrid;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    tscodigoOrganizacion: TDBEdit;
    qrysucursales: TZQuery;
    ds_sucursales: TDataSource;
    tsnombreOrganizacion: TDBEdit;
    Label3: TLabel;
    tstituloOrganizacion: TDBEdit;
    Label4: TLabel;
    tsRfc: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tsregistroPatronal: TDBEdit;
    Label8: TLabel;
    tstelefono1: TDBEdit;
    Label9: TLabel;
    tstelefono2: TDBEdit;
    Label10: TLabel;
    tstelefono3: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    tstelefono4: TDBEdit;
    tmComentarios: TDBMemo;
    GroupBox1: TGroupBox;
    tstelefono5: TDBEdit;
    tdfecha: TDBDateEdit;
    ractivo: TDBComboBox;
    Label1: TLabel;
    OpenPicture: TOpenPictureDialog;
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
    bImagen: TImage;
    tsDescripcion: TDBMemo;
    tsdomicilio: TDBMemo;
    tsdomiciliofiscal: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_sucursalesCellClick(Column: TColumn);
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
    procedure grid_sucursalesEnter(Sender: TObject);
    procedure grid_sucursalesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_sucursalesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsnombreOrganizacionEnter(Sender: TObject);
    procedure tsnombreOrganizacionExit(Sender: TObject);
    procedure grid_sucursalesMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_sucursalesMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_sucursalesTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tsnombreOrganizacionKeyPress(Sender: TObject; var Key: Char);
    procedure tiColoresEnter(Sender: TObject);
    procedure tiColoresExit(Sender: TObject);
    procedure qrysucursalesAfterScroll(DataSet: TDataSet);
    procedure tmComentariosKeyPress(Sender: TObject; var Key: Char);
    procedure tscodigoOrganizacionKeyPress(Sender: TObject; var Key: Char);
    procedure tscodigoOrganizacionEnter(Sender: TObject);
    procedure tscodigoOrganizacionExit(Sender: TObject);
    procedure tstituloOrganizacionKeyPress(Sender: TObject; var Key: Char);
    procedure tstituloOrganizacionEnter(Sender: TObject);
    procedure tstituloOrganizacionExit(Sender: TObject);
    procedure tsRfcKeyPress(Sender: TObject; var Key: Char);
    procedure tsRfcEnter(Sender: TObject);
    procedure tsRfcExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaEnter(Sender: TObject);
    procedure tdFechaExit(Sender: TObject);
    procedure tsregistroPatronalKeyPress(Sender: TObject; var Key: Char);
    procedure tsregistroPatronalEnter(Sender: TObject);
    procedure tsregistroPatronalExit(Sender: TObject);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure tsDomicilioKeyPress(Sender: TObject; var Key: Char);
    procedure tsDomicilioEnter(Sender: TObject);
    procedure tsDomicilioExit(Sender: TObject);
    procedure tsdomicilioFiscalKeyPress(Sender: TObject; var Key: Char);
    procedure tsdomicilioFiscalEnter(Sender: TObject);
    procedure tsdomicilioFiscalExit(Sender: TObject);
    procedure tstelefono1KeyPress(Sender: TObject; var Key: Char);
    procedure tstelefono1Enter(Sender: TObject);
    procedure tstelefono1Exit(Sender: TObject);
    procedure tstelefono2KeyPress(Sender: TObject; var Key: Char);
    procedure tstelefono2Enter(Sender: TObject);
    procedure tstelefono2Exit(Sender: TObject);
    procedure tstelefono3KeyPress(Sender: TObject; var Key: Char);
    procedure tstelefono3Enter(Sender: TObject);
    procedure tstelefono3Exit(Sender: TObject);
    procedure tstelefono4KeyPress(Sender: TObject; var Key: Char);
    procedure tstelefono4Enter(Sender: TObject);
    procedure tstelefono4Exit(Sender: TObject);
    procedure tstelefono5KeyPress(Sender: TObject; var Key: Char);
    procedure tstelefono5Enter(Sender: TObject);
    procedure tstelefono5Exit(Sender: TObject);
    procedure rActivoClick(Sender: TObject);
    procedure rInactivoClick(Sender: TObject);
    procedure ractivoKeyPress(Sender: TObject; var Key: Char);
    procedure ractivoEnter(Sender: TObject);
    procedure ractivoExit(Sender: TObject);
    //procedure muestraImagen();
    procedure bImagenDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogodesucursales : TfrmCatalogodesucursales;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles;
{$R *.dfm}

procedure TfrmCatalogodesucursales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
  end;

procedure TfrmCatalogodesucursales.FormShow(Sender: TObject);

begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qrysucursales.Active := False ;
   qrysucursales.Open ;

   //qrysucursales.
   //muestraImagen;

   grid_sucursales.SetFocus;
   UtGrid:=TicdbGrid.create(grid_sucursales);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;
procedure TfrmCatalogodesucursales.grid_sucursalesCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogodesucursales.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmCatalogodesucursales.frmBarra1btnAddClick(Sender: TObject);
var
    NumeroConsecutivo : integer;
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sOpcion := 'insert';

   qrysucursales.Append ;
   qrysucursales.FieldValues['codigoOrganizacion'] := '';

   tscodigoOrganizacion.SetFocus;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_sucursales.Enabled := False;


end;

procedure TfrmCatalogodesucursales.frmBarra1btnEditClick(Sender: TObject);
begin
    If qrysucursales.RecordCount > 0 Then
    Begin
        try
           frmBarra1.btnEditClick(Sender);
           Insertar1.Enabled := False ;
           Editar1.Enabled := False ;
           Registrar1.Enabled := True ;
           Can1.Enabled := True ;
           Eliminar1.Enabled := False ;
           Refresh1.Enabled := False ;
           Salir1.Enabled := False ;
           sOpcion := 'Edit';
           tscodigoOrganizacion.SetFocus;
           qrysucursales.Edit;
           grid_sucursales.Enabled := False;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Sucursales', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmCatalogodesucursales.frmBarra1btnPostClick(Sender: TObject);
var
    nombres, cadenas: TStringList;
    bS: TStream;
    Pic: TJpegImage;
    BlobField: tField;
begin

    if OpenPicture.FileName <> '' then
    begin
      try
        BlobField := qrysucursales.FieldByName('imagen');
        BS := qrysucursales.CreateBlobStream(BlobField, bmWrite);
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromFile(OpenPicture.FileName);
            Pic.SaveToStream(Bs);
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      except

      end
    end;

    if(trim(tscodigoOrganizacion.Text) = '') or
      (trim(tstituloOrganizacion.Text) = '') or
      (trim(tsnombreOrganizacion.Text) = '') or
      (trim(tsrfc.Text) = '') or
      (trim(tsregistroPatronal.Text) = '') or
      (trim(tsdomicilioFiscal.Text) = '')
    then
    begin
       MessageDlg('Revise los campos Codigo, Titulo, Nombre, RFC, Registro Patronal, Domicilio Fiscal de la Organizacion!', mtInformation, [mbOk], 0);
       exit;
    end;

    //buscamos el id maximo..}
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select max(idOrganizacion) as Id from nuc_organizacion ');
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
       qrysucursales.FieldValues['idorganizacion'] := connection.QryBusca.FieldValues['id'] + 1;

    qrysucursales.FieldValues['idnivel'] := 0;
    qrysucursales.FieldValues['padre'] := 0;

  {Continua insercion de datos..}

   try
       qrysucursales.Post ;
       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;

       frmBarra1.btnPostClick(Sender);

   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Sucursales', 'Al salvar registro', 0);
       frmBarra1.btnCancel.Click ;
       end;
   end;
   //desactivapop(popupprincipal);
  //desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  //frmBarra1.btnPrinter.Enabled := False;
  frmBarra1.btnCancel.Click ;
  //grid_deptos.Enabled := True;

   //BotonPermiso.permisosBotones(frmBarra1);
   //frmbarra1.btnPrinter.Enabled := False;

   if sOpcion = 'Edit' then
   begin
       grid_sucursales.Enabled := True;
       sOpcion := '';
   end;
end;

procedure TfrmCatalogodesucursales.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   qrysucursales.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_sucursales.Enabled := True;
   sOpcion := '';
end;

procedure TfrmCatalogodesucursales.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   qrysucursales.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     try
         qrysucursales.Delete;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Sucursales', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmCatalogodesucursales.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qrysucursales.refresh ;
end;

procedure TfrmCatalogodesucursales.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;

procedure TfrmCatalogodesucursales.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogodesucursales.bImagenDblClick(Sender: TObject);
begin
  if (sOpcion = 'Edit') or (sOpcion = 'insert') then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
        bImagen.Picture.LoadFromFile('');
      end
    end
  end

end;

procedure TfrmCatalogodesucursales.qrysucursalesAfterScroll(DataSet: TDataSet);
Var
  BlobField: TField;
  Bs: TStream;
  Pic: TJPegImage;
begin
    if qrysucursales.RecordCount > 0 then
    begin
        BlobField := qrysucursales.FieldByName('imagen');
        BS := qrysucursales.CreateBlobStream(BlobField, bmRead);
        if bs.Size > 1 then
        begin
          try
            Pic := TJpegImage.Create;
            try
              Pic.LoadFromStream(bS);
              bImagen.Picture.Graphic := Pic;
            finally
              Pic.Free;
            end;
          finally
            bS.Free
          end;
        end
    else
      bImagen.Picture.Graphic := Nil;
    end;

end;

procedure TfrmCatalogodesucursales.rActivoClick(Sender: TObject);
begin
  qrysucursales.FieldValues['activo'] := true;
end;

procedure TfrmCatalogodesucursales.ractivoEnter(Sender: TObject);
begin
     ractivo.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.ractivoExit(Sender: TObject);
begin
    ractivo.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.ractivoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      Groupbox1.SetFocus;
end;

procedure TfrmCatalogodesucursales.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmCatalogodesucursales.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmCatalogodesucursales.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmCatalogodesucursales.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmCatalogodesucursales.rInactivoClick(Sender: TObject);
begin
    qrysucursales.FieldValues['activo'] := false;
end;

procedure TfrmCatalogodesucursales.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmCatalogodesucursales.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmCatalogodesucursales.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmCatalogodesucursales.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmCatalogodesucursales.grid_sucursalesEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogodesucursales.grid_sucursalesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogodesucursales.grid_sucursalesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogodesucursales.grid_sucursalesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmCatalogodesucursales.grid_sucursalesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmCatalogodesucursales.grid_sucursalesTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmCatalogodesucursales.tscodigoOrganizacionEnter(Sender: TObject);
begin
    tscodigoOrganizacion.Color := global_color_entradaERP
end;

procedure TfrmCatalogodesucursales.tscodigoOrganizacionExit(Sender: TObject);
begin
      tscodigoOrganizacion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tscodigoOrganizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      tsnombreOrganizacion.SetFocus
end;

procedure TfrmCatalogodesucursales.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmCatalogodesucursales.tsDescripcionExit(Sender: TObject);
begin
    tsdescripcion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      tsdomicilio.SetFocus
end;

procedure TfrmCatalogodesucursales.tsDomicilioEnter(Sender: TObject);
begin
    tsDomicilio.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tsDomicilioExit(Sender: TObject);
begin
     tsDomicilio.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tsdomicilioFiscalEnter(Sender: TObject);
begin
     tsdomicilioFiscal.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tsdomicilioFiscalExit(Sender: TObject);
begin
    tsdomicilioFiscal.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tsdomicilioFiscalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      tmcomentarios.SetFocus
end;

procedure TfrmCatalogodesucursales.tsDomicilioKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        tsdomiciliofiscal.SetFocus
end;

procedure TfrmCatalogodesucursales.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmCatalogodesucursales.tdFechaEnter(Sender: TObject);
begin
    tdFecha.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tdFechaExit(Sender: TObject);
begin
    tdfecha.Color := global_color_salidaERP;

end;

procedure TfrmCatalogodesucursales.tdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    tsdescripcion.SetFocus

end;

procedure TfrmCatalogodesucursales.tiColoresEnter(Sender: TObject);
begin
    //tiColores.Color := $00E6FEFF;
end;

procedure TfrmCatalogodesucursales.tiColoresExit(Sender: TObject);
begin
    //tiColores.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tmComentariosEnter(Sender: TObject);
begin
    tmComentarios.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tmComentariosExit(Sender: TObject);
begin
    tmComentarios.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tmComentariosKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    tstelefono1.SetFocus
end;

procedure TfrmCatalogodesucursales.tsnombreOrganizacionEnter(Sender: TObject);
begin
    tsnombreOrganizacion.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tsnombreOrganizacionExit(Sender: TObject);
begin
    tsnombreOrganizacion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tsnombreOrganizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
      tstituloOrganizacion.SetFocus
end;


procedure TfrmCatalogodesucursales.tsregistroPatronalEnter(Sender: TObject);
begin
    tsregistroPatronal.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tsregistroPatronalExit(Sender: TObject);
begin
    tsregistroPatronal.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tsregistroPatronalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
      tdfecha.SetFocus
end;

procedure TfrmCatalogodesucursales.tsRfcEnter(Sender: TObject);
begin
    tsRfc.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tsRfcExit(Sender: TObject);
begin
    tsRfc.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tsRfcKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
      tsregistropatronal.SetFocus
end;

procedure TfrmCatalogodesucursales.tstelefono1Enter(Sender: TObject);
begin
    tstelefono1.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono1Exit(Sender: TObject);
begin
     tstelefono1.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
      tstelefono2.SetFocus
end;

procedure TfrmCatalogodesucursales.tstelefono2Enter(Sender: TObject);
begin
    tstelefono2.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono2Exit(Sender: TObject);
begin
    tstelefono2.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono2KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
      tstelefono3.SetFocus
end;

procedure TfrmCatalogodesucursales.tstelefono3Enter(Sender: TObject);
begin
     tstelefono3.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono3Exit(Sender: TObject);
begin
     tstelefono3.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono3KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
      tstelefono4.SetFocus
end;

procedure TfrmCatalogodesucursales.tstelefono4Enter(Sender: TObject);
begin
     tstelefono4.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono4Exit(Sender: TObject);
begin
     tstelefono4.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono4KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
      tstelefono5.SetFocus
end;

procedure TfrmCatalogodesucursales.tstelefono5Enter(Sender: TObject);
begin
     tstelefono5.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono5Exit(Sender: TObject);
begin
    tstelefono5.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tstelefono5KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
      ractivo.SetFocus
end;

procedure TfrmCatalogodesucursales.tstituloOrganizacionEnter(Sender: TObject);
begin
    tstituloOrganizacion.Color := global_color_entradaERP;
end;

procedure TfrmCatalogodesucursales.tstituloOrganizacionExit(Sender: TObject);
begin
    tstituloOrganizacion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogodesucursales.tstituloOrganizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
      tsrfc.SetFocus
end;

//procedure TfrmCatalogodesucursales.muestraImagen;
//var
//  bS: TStream;
//  Pic: TJpegImage;
//  BlobField: tField;
//begin
//  bImagen.Picture.LoadFromFile('');
//  BlobField := qrysucursales.FieldByName('imagen');
//  BS := qrysucursales.CreateBlobStream(BlobField, bmRead);
//  if bs.Size > 15 then
//  begin
//    try
//      Pic := TJpegImage.Create;
//      try
//        Pic.LoadFromStream(bS);
//        bImagen.Picture.Graphic := Pic;
//      finally
//        Pic.Free;
//      end;
//    finally
//      bS.Free
//    end
//  end;
//end;

end.
