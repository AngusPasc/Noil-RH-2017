unit frm_WizardContrato;

interface

uses                                  
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, frm_connection, global, jpeg, Utilerias,
  Dialogs, AdvOfficePager, ExtCtrls, StdCtrls, AdvGlowButton, DBCtrls,
  AdvOfficePagerStylers, sButton, ImgList, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtDlgs, frm_seleccion2,
  Mask, sMaskEdit, sCustomComboEdit, sTooledit, ComCtrls, ZSqlProcessor,
  dxGDIPlusClasses, JvDialogs, rxAnimate, cxControls, cxContainer, cxEdit,
  cxImage, JvExExtCtrls, JvSpecialImage;

type
  TfrmWizard = class(TForm)
    pnlBotones: TPanel;
    officeOrganizacion: TAdvOfficePager;
    officeWizardr: TAdvOfficePage;
    lblCodigo: TLabel;
    lblNombre: TLabel;
    lblOrganizacion: TLabel;
    edtCodigo: TEdit;
    edtNombre: TEdit;
    edtOrganizacion: TEdit;
    officeWizardr1: TAdvOfficePage;
    officeWizardr2: TAdvOfficePage;
    lblEmpresa: TLabel;
    lblActivoIntegral: TLabel;
    lblResidencia: TLabel;
    lblContrato: TLabel;
    cbbEmpresa: TDBLookupComboBox;
    cbbActivoIntegral: TDBLookupComboBox;
    cbbResidencia: TDBLookupComboBox;
    edtContrato: TEdit;
    imgLogo: TImage;
    btnSiguiente: TcxButton;
    btnAtras: TcxButton;
    btnCancelar: TcxButton;
    advfcpgrfcstylr1: TAdvOfficePagerOfficeStyler;
    zqryNivelesOrganizacion: TZQuery;
    zqOrganizacion: TZQuery;
    lblDescripcion: TLabel;
    memoDescripcion: TMemo;
    zqryEmpresa: TZQuery;
    zqryActivo: TZQuery;
    zqryResidencia: TZQuery;
    dsEmpresa: TDataSource;
    dsActivo: TDataSource;
    dsResidencia: TDataSource;
    dsOrganizacion: TDataSource;
    zqrycontratos: TZQuery;
    OpenPicture: TOpenPictureDialog;
    lblDirectorio: TLabel;
    pbBarraEstado: TProgressBar;
    dlgArchivo: TOpenDialog;
    btnArchivo: TcxButton;
    sqlScript: TZSQLProcessor;
    img2: TJvSpecialImage;
    btnSiguiente2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnSiguienteClick(Sender: TObject);
    procedure btnAtrasClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure crearOrganizacion;
    procedure insertarDepartamento;
    procedure eliminarDepYOrg;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure crearActivoIntegral;
    procedure crearResidencia;
    procedure eliminarActivoYResidencia;
    procedure inicializarQueriesCombos;

    procedure crearContrato;
    procedure comprobarImagen;
    procedure imgLogoClick(Sender: TObject);

    procedure eliminarContrato;
    procedure eliminarConfiguracion;

    procedure crearTurno;
    procedure eliminarTurno;

    procedure crearConvenio;
    procedure eliminarConvenio;

    procedure eliminarUsuarioAdmin;

    procedure crearContratosXUsuario;
    procedure eliminarContratosXUsuario;

    procedure crearTiposDeMovimiento;
    procedure eliminarTiposDeMovimiento;
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtNombreEnter(Sender: TObject);
    procedure edtNombreExit(Sender: TObject);
    procedure edtNombreKeyPress(Sender: TObject; var Key: Char);
    procedure edtContratoExit(Sender: TObject);
    procedure edtContratoEnter(Sender: TObject);
    procedure edtContratoKeyPress(Sender: TObject; var Key: Char);
    procedure memoDescripcionEnter(Sender: TObject);
    procedure memoDescripcionExit(Sender: TObject);
    procedure edtOrganizacionEnter(Sender: TObject);
    procedure edtOrganizacionExit(Sender: TObject);
    procedure edtOrganizacionKeyPress(Sender: TObject; var Key: Char);
    procedure cbbEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbActivoIntegralKeyPress(Sender: TObject; var Key: Char);
    procedure cbbResidenciaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbEmpresaEnter(Sender: TObject);
    procedure cbbEmpresaExit(Sender: TObject);
    procedure cbbActivoIntegralEnter(Sender: TObject);
    procedure cbbActivoIntegralExit(Sender: TObject);
    procedure cbbResidenciaEnter(Sender: TObject);
    procedure cbbResidenciaExit(Sender: TObject);
    procedure memoDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure btnArchivoClick(Sender: TObject);
    procedure sqlScriptAfterExecute(Processor: TZSQLProcessor;
      StatementIndex: Integer);
  private
    { Private declarations }
    after : Integer;
  public
    { Public declarations }
  end;



var
  frmWizard: TfrmWizard;

implementation
{$R *.dfm}
uses
  frm_acceso;


procedure TfrmWizard.btnArchivoClick(Sender: TObject);
var
  ejecutarScript : TZQuery;
  Progreso, TotalProgreso : double;
begin
  //Abrir el explordor de window para buscar el archivo txt con el scriot de las tablas
  after := 0;
  if dlgArchivo.Execute() then
  begin

  try
    sqlScript.LoadFromFile( dlgArchivo.FileName);
    pbBarraEstado.Visible := True;



    sqlscript.Script.Count;
    sqlScript.Parse;

    pbBarraEstado.Max := sqlScript.StatementCount;

    lblDirectorio.Caption := 'Procesando...';

    Application.ProcessMessages;

    sqlScript.Execute;


    ShowMessage('Script ejecutado correctamente');

    pbBarraEstado.Position := 0;
    pbBarraEstado.Refresh;

    lblDirectorio.Caption := 'Archivo con Script de Nominas';

    Application.ProcessMessages;
    //ShowMessage( IntToStr( after ) );
  except
    //En caso de que ocurra una excepcion, mandar mensaje de que el script no pudo ser ejecutado
    ShowMessage('El Script no pudo ser ejecutado!');
  end;

  end;
end;

procedure TfrmWizard.btnAtrasClick(Sender: TObject);
begin
  //Boton Atras
  (*if officeOrganizacion.AdvPages[2].TabVisible = true then
  begin
    officeOrganizacion.AdvPages[2].TabVisible:=false;
    officeWizardr2.Visible := False;
    officeOrganizacion.AdvPages[1].TabVisible:=True;
    officeWizardr1.Visible := true;
    btnAtras.Visible := True;



    //Eliminar TiposdeMovimiento
    //eliminarTiposDeMovimiento;

    //Eliminar Contratosxusuario
    //eliminarContratosXUsuario;

    //Eliminar Convenio
    //eliminarConvenio;

    //Eliminar Turno
    //eliminarTurno;

    //si estoy en la tercer pestana se debe eliminar la configuracion creada
    //eliminarConfiguracion;

    //tambien Si estoy en la tercer pestana y doy regresar, entonces se debe eliminar el contrato que se habia creado
    //eliminarContrato;


  end else*)
  if officeOrganizacion.AdvPages[1].TabVisible = true then
  begin
    officeOrganizacion.AdvPages[1].TabVisible:=false;
    officeWizardr1.Visible := False;
    officeOrganizacion.AdvPages[0].TabVisible:=True;
    officeWizardr.Visible := True;
    btnAtras.Visible := False;

    btnSiguiente.Visible := True;
    btnSiguiente2.Visible := False;

    eliminarDepYOrg;
    eliminarActivoYResidencia;

    edtCodigo.setFocus;
  end;
end;

procedure TfrmWizard.btnCancelarClick(Sender: TObject);
begin
  //Eliminar procesos en forma de reversa, primero se eliminan la configuracion, contrato puesto que si no marcara un error
  //de llaves foranes, por esa razon hay que eliminar de atras hacia adelante

  //Eliminar TiposDeMovimiento
  eliminarTiposDeMovimiento;

  //Eliminar Contratosxusuario
  eliminarContratosXUsuario;

  //Eliminar usuario admin creado cuando se abre la ventana de wizard
  eliminarUsuarioAdmin;

  //Eliminar ActivosYResidencias
  eliminarActivoYResidencia;

  //Eliminar Convenio
  eliminarConvenio;

  //si estoy en la tercer pestana de debe Eliminar el Turno creado
  eliminarTurno;

  //si estoy en la tercer pestana se debe eliminar la configuracion creada
  eliminarConfiguracion;

  //tambien Si estoy en la tercer pestana y doy regresar, entonces se debe eliminar el contrato que se habia creado
  eliminarContrato;

  //Antes de cerrar, realiza una eliminacion de la organizacion que se estaba cerrando pero que se detuvo por haber cancelado
  eliminarDepYOrg;

  //Boton cancelar realizar un Close
  Close;
end;

procedure TfrmWizard.btnSiguienteClick(Sender: TObject);
var
  zqryOrganizacionExiste : TZQuery;
begin
  //Boton siguiente
  if officeOrganizacion.AdvPages[0].TabVisible = true then //Pestana organizacion
  begin
    //Revisar que los campos no esten vacios, si estan vacios mandar un mensaje que hay k llenar los campos
    if edtCodigo.Text = '' then
    begin
      ShowMessage('El campo Codigo esta vacio');
      edtCodigo.SetFocus;
    end else if edtNombre.Text = '' then
    begin
      ShowMessage('El campo Nombre esta vacio');
      edtNombre.SetFocus;
    end else if edtOrganizacion.Text = '' then
    begin
      ShowMessage('El campo Organizacion esta vacio');
      edtOrganizacion.SetFocus;
    end
    else
    begin
      officeOrganizacion.AdvPages[0].TabVisible:=false;
      officeWizardr.Visible := false;

      officeOrganizacion.AdvPages[1].TabVisible:=True;
      officeWizardr1.Visible := true;
      btnAtras.Visible := True;
      btnSiguiente.Visible := False;
      btnSiguiente2.Visible := True;
      //Poner el foco en el campo Contrato de la segunda ventana
      edtContrato.SetFocus;

      //Si llega hasta aqui, entonces insertar la organizacion y el departamento
      //Hay que comprobar que el codigo de Organizacion exista, y si no existe entonces que se cree con dicho codigo de organizacion
      //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

      //Crear los registros de nuc_organizacion
        zqOrganizacion.Active := False;
        zqOrganizacion.Open;


      zqryOrganizacionExiste := TZQuery.Create(Self);
        zqryOrganizacionExiste.Connection := connection.ZConnection;
        zqryOrganizacionExiste.Active:=False;
        zqryOrganizacionExiste.SQL.Clear;
        zqryOrganizacionExiste.SQL.Add('select * from nuc_organizacion where codigoorganizacion = :codigoorganizacion');
        zqryOrganizacionExiste.Params.ParamByName('codigoorganizacion').AsString := edtCodigo.Text;
        zqryOrganizacionExiste.Open;

        if zqryOrganizacionExiste.RecordCount > 0 then
        begin
          ShowMessage('El codigo de Organizacion ya existe');
          edtCodigo.SetFocus;
        end
        else
        begin
          crearOrganizacion;
          insertarDepartamento;
          crearActivoIntegral;  //Crear activo integral por primera vez
          crearResidencia;//Crea una primera residencia

          //Inicializar queris de combos (empresa, activo, residencia)
          inicializarQueriesCombos;
          //Mostrar los valores de los combos por default
          zqryEmpresa.First;
          cbbEmpresa.KeyValue := zqryEmpresa.FieldByName('tituloorganizacion').AsString;

          zqryActivo.First;
          cbbActivoIntegral.KeyValue := zqryActivo.FieldByName('sDescripcion').AsString;

          zqryResidencia.First;
          cbbResidencia.KeyValue := zqryResidencia.FieldByName('sDescripcion').AsString;
        end;

      //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    end;

  end else if officeOrganizacion.AdvPages[1].TabVisible = true then //Pestana Contrato
  begin
    //Revisar que los campos no esten vacios, si estan vacios mandar un mensaje que hay k llenar los campos
    if cbbEmpresa.Text = '' then
    begin
      ShowMessage('El campo Empresa esta vacio');
      cbbEmpresa.SetFocus;
    end else if cbbActivoIntegral.Text = '' then
    begin
      ShowMessage('El campo Activo Integral esta vacio');
      cbbActivoIntegral.SetFocus;
    end else if cbbResidencia.Text = '' then
    begin
      ShowMessage('El campo Residencia esta vacio');
      cbbResidencia.SetFocus;
    end else if edtContrato.Text = '' then
    begin
      ShowMessage('El campo Contrato esta vacio');
      edtContrato.SetFocus;
    end else if memoDescripcion.Text = '' then
    begin
      ShowMessage('El campo Descripcion esta vacio');
      memoDescripcion.SetFocus;
    end
    else
    begin
      //Inicializar el zqryContratos para que se pueda utilizar
      zqrycontratos.Active := false;
      zqrycontratos.Open;

      //Crear un contrato por default
      crearContrato;

      //Checar si hay imagen cargadsa, sino mandar un mensaje de que tiene que anadirse la imagen
      comprobarImagen;
    end;
  end;
end;

procedure TfrmWizard.cbbActivoIntegralEnter(Sender: TObject);
begin
  cbbActivoIntegral.Color := global_color_entrada
end;

procedure TfrmWizard.cbbActivoIntegralExit(Sender: TObject);
begin
  cbbActivoIntegral.Color := global_color_salida
end;

procedure TfrmWizard.cbbActivoIntegralKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cbbResidencia.SetFocus
end;

procedure TfrmWizard.cbbEmpresaEnter(Sender: TObject);
begin
  cbbEmpresa.Color := global_color_entrada
end;

procedure TfrmWizard.cbbEmpresaExit(Sender: TObject);
begin
  cbbEmpresa.Color := global_color_salida
end;

procedure TfrmWizard.cbbEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cbbActivoIntegral.SetFocus
end;

procedure TfrmWizard.cbbResidenciaEnter(Sender: TObject);
begin
  cbbResidencia.Color := global_color_entrada
end;

procedure TfrmWizard.cbbResidenciaExit(Sender: TObject);
begin
  cbbResidencia.Color := global_color_salida
end;

procedure TfrmWizard.cbbResidenciaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtContrato.SetFocus
end;

procedure TfrmWizard.comprobarImagen;
var
  bS : TStream;
  Pic: TJpegImage;
  BlobField: tField;
  nuc_Organizacion_Imagen : TZQuery;
  activos_Imagen : TZQuery;
  zqryConfiguracion : TZQuery;
begin
  if (zqrycontratos.FieldValues['bImagen'] = '') then
    begin
      if OpenPicture.FileName <> '' then
      begin
        try
          BlobField := zqrycontratos.FieldByName('bImagen');
          BS := zqrycontratos.CreateBlobStream(BlobField, bmWrite);
          try
            Pic := TJpegImage.Create;
            try
              Pic.LoadFromFile(OpenPicture.FileName);
              Pic.SaveToStream(Bs);

              //Actualizar la tabla nuc_organizacion para agregarle la imagen
              nuc_Organizacion_Imagen := TZQuery.Create(Self);
              nuc_Organizacion_Imagen.Connection := connection.ZConnection;
              nuc_Organizacion_Imagen.Active:=False;
              nuc_Organizacion_Imagen.SQL.Clear;
              nuc_Organizacion_Imagen.SQL.Add('update nuc_organizacion set imagen = :imagen where codigoorganizacion = :codigoorganizacion');
              nuc_Organizacion_Imagen.Params.ParamByName('codigoorganizacion').AsString := edtCodigo.Text;
              nuc_Organizacion_Imagen.ParamByName('imagen').LoadFromFile(OpenPicture.FileName, ftGraphic);
              nuc_Organizacion_Imagen.ExecSQL;

              //Actualizar la tabla activos
              activos_Imagen := TZQuery.Create(Self);
              activos_Imagen.Connection := connection.ZConnection;
              activos_Imagen.Active:=False;
              activos_Imagen.SQL.Clear;
              activos_Imagen.SQL.Add('update activos set bimagen = :bimagen where sIdActivo = "01"');
              activos_Imagen.ParamByName('bimagen').LoadFromFile(OpenPicture.FileName, ftGraphic);
              activos_Imagen.ExecSQL;

              officeOrganizacion.AdvPages[1].TabVisible:=false;
              officeWizardr1.Visible := False;
              (*officeOrganizacion.AdvPages[2].TabVisible:=True;
              officeWizardr2.Visible := true;
              btnAtras.Visible := True;*)


            finally
              Pic.Free;
            end;
          finally
            bS.Free
          end
        except

        end
      end
      else
      begin
        MessageDlg('Agrega una Imagen al Nuevo Contrato ! ', mtInformation, [mbOk], 0);

        officeOrganizacion.AdvPages[1].TabVisible:=true;
        officeWizardr1.Visible := true;
        officeOrganizacion.AdvPages[2].TabVisible:=false;
        officeWizardr2.Visible := false;
        btnAtras.Visible := True;

        exit;
      end;

      zqrycontratos.Post;

      //Aqui mismo se creara la configuracion
      zqryConfiguracion := TZQuery.Create(Self);
      zqryConfiguracion.Connection := connection.ZConnection;
      zqryConfiguracion.Active := False;
      zqryConfiguracion.SQL.Clear;
      zqryConfiguracion.SQL.Add('INSERT INTO configuracion(sContrato, sTipoContrato, sFormato, bimagen) VALUES (:contrato, :tipo, :formato, :bimagen)');
      zqryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
      zqryConfiguracion.Params.ParamByName('contrato').value := edtContrato.Text;
      zqryConfiguracion.Params.ParamByName('tipo').DataType := ftString;
      zqryConfiguracion.Params.ParamByName('tipo').value := 'Precio Unitario';
      zqryConfiguracion.Params.ParamByName('formato').DataType := ftString;
      zqryConfiguracion.Params.ParamByName('formato').value := concat(edtContrato.Text, '-');
      zqryConfiguracion.ParamByName('bimagen').LoadFromFile(OpenPicture.FileName, ftGraphic);

      try
      begin
        zqryConfiguracion.ExecSQL;
      end;
      except
      on e : Exception do
        ShowMessage(e.Message);
      end;

      //Crear turno
      crearTurno;

      //Crear Convenio
      crearConvenio;

      //Crear contratosxusuario
      crearContratosXUsuario;

      //Crear tiposdemovimiento
      crearTiposDeMovimiento;

      frmWizard.Visible := False;
      Close;

      frm_Acceso.frmAcceso.Visible := False;
      frm_acceso.frmacceso.Close;

      //Application.CreateForm(TfrmSeleccion2, frmSeleccion2);
      //frmSeleccion2.ShowModal;
    end;
end;

procedure TfrmWizard.crearActivoIntegral;
var
  crearActivoIntegral : TZQuery;
begin
  //Crear un primer activo integral con datos por default para este primer activo
  crearActivoIntegral:= TZQuery.Create(Self);
  crearActivoIntegral.Connection := connection.ZConnection;
  crearActivoIntegral.Active:=False;
  crearActivoIntegral.SQL.Clear;
  crearActivoIntegral.SQL.Add('insert into activos(sIdActivo, sDescripcion, iAccesos)' +
              'values("01", :sDescripcion, 500)');
  crearActivoIntegral.Params.ParamByName('sDescripcion').AsString := edtNombre.Text;
  crearActivoIntegral.ExecSQL;
end;

procedure TfrmWizard.crearContrato;
begin
  //Crea el contrato por default
  zqrycontratos.Append;

  zqrycontratos.FieldValues['sContrato'] := edtContrato.Text;
  zqrycontratos.FieldValues['mDescripcion'] := memoDescripcion.Text;
  zqrycontratos.FieldValues['sIdActivo'] := zqryActivo.FieldByName('sIdActivo').AsString;
  zqrycontratos.FieldValues['sIdResidencia'] := zqryResidencia.FieldByName('sIdResidencia').AsString;
  zqrycontratos.FieldValues['sCentroGestor'] := '*';
  zqrycontratos.FieldValues['sCentroBeneficio'] := '*';
  zqrycontratos.FieldValues['sPosicionFinanciera'] := '*';
  zqrycontratos.FieldValues['sElementoPEP'] := '*';
  zqrycontratos.FieldValues['sCentroCosto'] := '*';
  zqrycontratos.FieldValues['sFondo'] := '*';
  zqrycontratos.FieldValues['slicitacion'] := '*';
  zqrycontratos.FieldValues['stitulo'] := '*';
  zqrycontratos.FieldValues['sCuentaMayor'] := '*';
  zqrycontratos.FieldValues['sTipoObra'] := 'PROGRAMADA';
  zqrycontratos.FieldValues['sPoliza'] := '*';
  zqrycontratos.FieldValues['mComentarios'] := '*';
  zqrycontratos.FieldValues['sUbicacion'] := '*';
  zqrycontratos.FieldValues['lStatus'] := 'Activo';
  zqrycontratos.FieldValues['sCodigo'] := '*';
  zqrycontratos.FieldValues['mCliente'] := '*';
  zqrycontratos.FieldValues['sMascara'] := '*';
  zqrycontratos.FieldValues['idorganizacion'] := 0;
  zqrycontratos.FieldValues['lCobraPersonal'] := 'No';
  zqrycontratos.FieldValues['lCobraEquipo'] := 'No';
  zqrycontratos.FieldValues['lJorPu'] := 'No';
  //zqrycontratos.Post;
end;

procedure TfrmWizard.crearContratosXUsuario;
begin
  //Crea contratosxusuario cuando se de click en el boton sig en la segunda ventana
        if global_usuario <> 'INTEL-CODE' then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zcommand.SQL.Add('INSERT INTO contratosxusuario ( sContrato, sIdUsuario ) VALUES ' +
            '(:contrato , :usuario)');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').value := edtContrato.Text;
          connection.zCommand.Params.ParamByName('usuario').DataType := ftString;
          connection.zCommand.Params.ParamByName('usuario').value := 'admin';
          connection.zCommand.ExecSQL;

          //Ahora buscamos los usuarios que tengan habilitada la opcion de asignar contratos en autoo..
          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('select sIdUsuario from usuarios where lAsignaFrentes = "Si"');
          connection.QryBusca2.Open;

          if connection.QryBusca2.RecordCount > 0 then
          begin
            while not connection.QryBusca2.Eof do
            begin
              try
              //Se inserta el nuevo contrato a los usuarios...
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zcommand.SQL.Add('INSERT INTO contratosxusuario ( sContrato, sIdUsuario ) VALUES ' +
                  '(:contrato , :usuario)');
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('contrato').value := edtContrato.Text;
                connection.zCommand.Params.ParamByName('usuario').DataType := ftString;
                connection.zCommand.Params.ParamByName('usuario').value := connection.QryBusca2.FieldValues['sIdUsuario'];
                connection.zCommand.ExecSQL;
              except

              end;
              connection.QryBusca2.Next;
            end;
          end;
        end;
end;

procedure TfrmWizard.crearConvenio;
var
  crearConvenio : TZQuery;
begin
  //Crea un convenio cuando el usuario de clik en el eboton sig
  crearConvenio := TZQuery.Create(Self);
  crearConvenio.Connection := connection.ZConnection;
  crearConvenio.Active := False;
  crearConvenio.SQL.Clear;
  crearConvenio.SQL.Add('INSERT INTO convenios ( sContrato, sIdConvenio, sDescripcion, dFecha, dFechaInicio, dFechaFinal, dMontoMN, dMontoDLL ) VALUES ' +
  '(:contrato , "", "PLAZO DE EJECUCION CONTRATADO", :fecha, :fechai, :fechaf, :montomn, :montodll)');
  crearConvenio.Params.ParamByName('contrato').DataType := ftString;
  crearConvenio.Params.ParamByName('contrato').value := edtContrato.Text;
  crearConvenio.Params.ParamByName('fecha').DataType := ftDate;
  crearConvenio.Params.ParamByName('fecha').value := date;
  crearConvenio.Params.ParamByName('fechai').DataType := ftDate;
  crearConvenio.Params.ParamByName('fechai').value := date;
  crearConvenio.Params.ParamByName('fechaf').DataType := ftDate;
  crearConvenio.Params.ParamByName('fechaf').value := date;
  crearConvenio.Params.ParamByName('montomn').DataType := ftFloat;
  crearConvenio.Params.ParamByName('montomn').value := 0;
  crearConvenio.Params.ParamByName('montodll').DataType := ftFloat;
  crearConvenio.Params.ParamByName('montodll').value := 0;
  crearConvenio.ExecSQL;
end;

procedure TfrmWizard.crearOrganizacion;
begin
  //Crea la organizacion en nuc_organizacion, para que es la segunda ventana lo muestre en los combos
    zqOrganizacion.Append ;
    zqOrganizacion.fieldbyname('codigoorganizacion').asstring := edtCodigo.Text;
   zqOrganizacion.fieldbyname('activo').asstring := 'Si';
   zqOrganizacion.fieldbyname('nombreorganizacion').asstring := edtNombre.Text;
   zqOrganizacion.fieldbyname('tituloorganizacion').asstring := edtOrganizacion.Text;
   zqOrganizacion.fieldbyname('padre').asinteger := -5;
   zqOrganizacion.fieldbyname('abrev').asstring  := '*';
   zqOrganizacion.fieldbyname('FactorPrimaVacacional').asfloat        := 0;
   zqOrganizacion.fieldbyname('FactorPrimaDominical').asfloat         := 0;
   zqOrganizacion.fieldbyname('DiasExcentoPrimaVacacional').asinteger := 15;
   zqOrganizacion.fieldbyname('DiasExcentoAguinaldo').asinteger       := 30;
   zqOrganizacion.fieldbyname('SeguroVidaINFONAVIT').asfloat          := 15;
   zqOrganizacion.FieldValues['Etiqueta']      := '*';
   zqOrganizacion.FieldValues['ComentaContab'] := '*';
   zqOrganizacion.FieldValues['rfc']           := '*';
   zqOrganizacion.FieldValues['telefono1']     := '(000) 0000000';
   zqOrganizacion.FieldValues['telefono2']     := '(000) 0000000';
   zqOrganizacion.FieldValues['telefono3']     := '(000) 0000000';
   zqOrganizacion.FieldValues['telefono4']     := '(000) 0000000';
   zqOrganizacion.FieldValues['activo']        := 'Si';
   zqOrganizacion.FieldValues['regpatimss']    := '0000000000';
   zqOrganizacion.FieldValues['RazonSocial']   := '*';
   zqOrganizacion.FieldValues['RegimenFiscal'] := 'REGIMEN GENERAL DE LEY';
   zqOrganizacion.FieldValues['Calle']         := '*';
   zqOrganizacion.FieldValues['Numero']        := 0;
   zqOrganizacion.FieldValues['Colonia']       := '*';
   zqOrganizacion.FieldValues['CP']            := 0;
   zqOrganizacion.FieldValues['Municipio']     := '*';
   zqOrganizacion.FieldValues['Localidad']     := '*';
   zqOrganizacion.FieldValues['Estado']        := '*';
   zqOrganizacion.FieldValues['Pais']          := 'MEXICO';
end;

procedure TfrmWizard.crearResidencia;
var
  crearResidencia : TZQuery;
begin
  //Crea por primera vez una residencia
  crearResidencia := TZQuery.Create(Self);
  crearResidencia.Connection := connection.ZConnection;
  crearResidencia.Active:=False;
  crearResidencia.SQL.Clear;
  crearResidencia.SQL.Add('insert into residencias(sIdResidencia, sDescripcion)' +
                        'values("01", :sDescripcion)');
  crearResidencia.Params.ParamByName('sDescripcion').AsString := 'NIVEL1-' + edtNombre.Text;
  crearResidencia.ExecSQL;
end;

procedure TfrmWizard.crearTiposDeMovimiento;
var
  crearTiposDeMovimiento : TZQuery;
begin
  //Crea los tipos de moeivmientos necesarios
  crearTiposDeMovimiento := TZQuery.Create(Self);
  crearTiposDeMovimiento.Connection := connection.ZConnection;
  crearTiposDeMovimiento.Active := False;
  crearTiposDeMovimiento.SQL.Clear;
  crearTiposDeMovimiento.SQL.Add('INSERT INTO tiposdemovimiento(sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL) VALUES ' +
  '(:contrato , "E", "VOLUMEN DE OBRA", "Tiempo en Operacion", 1, "No", 1, 0, 0), ' +
  '(:contrato , "N", "COMENTARIOS", "Notas", 4, "No", 1, 0, 0), ' +
  '(:contrato , "M-1", "MAL TIEMPO", "Tiempo Muerto", 3, "No", 1, 0, 0),' +
  '(:contrato , "M-9", "OTROS TIEMPOS INACTIVOS", "Tiempo Muerto", 3, "No", 1, 0, 0),' +
  '(:contrato , "TMDS", "AJUSTES DE JORNADAS", "Tiempo Muerto", 5, "No", 1, 0, 0)');
  crearTiposDeMovimiento.Params.ParamByName('contrato').DataType := ftString;
  crearTiposDeMovimiento.Params.ParamByName('contrato').value := edtContrato.Text;

  crearTiposDeMovimiento.ExecSQL;
end;

procedure TfrmWizard.crearTurno;
var
  crearTurno : TZQuery;
begin
  //Crea un turno para la primera vez
  crearTurno := TZQuery.Create(Self);
  crearTurno.Connection := connection.ZConnection;
  crearTurno.SQL.Clear;
  crearTurno.SQL.Add('INSERT INTO turnos ( sContrato, sIdTurno, sDescripcion ) VALUES (:contrato , "A", "UNICO")');
  crearTurno.Params.ParamByName('contrato').DataType := ftString;
  crearTurno.Params.ParamByName('contrato').value := edtContrato.Text;
  crearTurno.ExecSQL;
end;

procedure TfrmWizard.edtCodigoEnter(Sender: TObject);
begin
  edtCodigo.Color := global_color_entrada
end;

procedure TfrmWizard.edtCodigoExit(Sender: TObject);
begin
  edtCodigo.Color := global_color_salida
end;

procedure TfrmWizard.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtNombre.SetFocus
end;

procedure TfrmWizard.edtContratoEnter(Sender: TObject);
begin
  edtContrato.Color := global_color_entrada
end;

procedure TfrmWizard.edtContratoExit(Sender: TObject);
begin
  edtContrato.Color := global_color_salida
end;

procedure TfrmWizard.edtContratoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    memoDescripcion.SetFocus
end;

procedure TfrmWizard.edtNombreEnter(Sender: TObject);
begin
  edtNombre.Color := global_color_entrada
end;

procedure TfrmWizard.edtNombreExit(Sender: TObject);
begin
  edtNombre.Color := global_color_salida
end;

procedure TfrmWizard.edtNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtOrganizacion.SetFocus
end;

procedure TfrmWizard.edtOrganizacionEnter(Sender: TObject);
begin
  edtOrganizacion.Color := global_color_entrada
end;

procedure TfrmWizard.edtOrganizacionExit(Sender: TObject);
begin
  edtOrganizacion.Color := global_color_salida
end;

procedure TfrmWizard.edtOrganizacionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnSiguiente.SetFocus
end;

procedure TfrmWizard.eliminarActivoYResidencia;
var
  eliminarActivoYResidencia : TZQuery;
begin
  //En caso de que el usuario de click en atras o cierre la ventana, se elimina el activo y la residencia creada
  //Eliminar el registro del activo ke se creo cuando de dio click en el boton siguiente
    eliminarActivoYResidencia := TZQuery.Create(Self);
    eliminarActivoYResidencia.Connection := connection.ZConnection;
    eliminarActivoYResidencia.Active:=False;
    eliminarActivoYResidencia.SQL.Clear;
    eliminarActivoYResidencia.SQL.Add('delete from activos where sIdActivo = "01"');
   eliminarActivoYResidencia.ExecSQL;

    //Eliminar el registro de la residencia ke se creo cuando de dio click en el boton siguiente
    eliminarActivoYResidencia.Active:=False;
    eliminarActivoYResidencia.SQL.Clear;
    eliminarActivoYResidencia.SQL.Add('delete from residencias where sIdResidencia = "01"');
    eliminarActivoYResidencia.ExecSQL;
end;

procedure TfrmWizard.eliminarConfiguracion;
var
  eliminarConfiguracion : TZQuery;
begin
  //Elimina la configuracion creada cuando se da click en el boton atras o cuando se cierra la ventana
  //Elimina el contrato si se da clik en regresar, o si se cierra la ventana
    eliminarConfiguracion := TZQuery.Create(Self);
    eliminarConfiguracion.Connection := connection.ZConnection;
    eliminarConfiguracion.Active:=False;
    eliminarConfiguracion.SQL.Clear;
    eliminarConfiguracion.SQL.Add('delete from configuracion where sContrato = :sContrato');

    eliminarConfiguracion.Params.ParamByName('sContrato').AsString := edtContrato.Text;
    eliminarConfiguracion.ExecSQL;
end;

procedure TfrmWizard.eliminarContrato;
var
  eliminarContrato : TZQuery;
begin
    //Elimina el contrato si se da clik en regresar, o si se cierra la ventana
    eliminarContrato := TZQuery.Create(Self);
    eliminarContrato.Connection := connection.ZConnection;
    eliminarContrato.Active:=False;
    eliminarContrato.SQL.Clear;
    eliminarContrato.SQL.Add('delete from contratos where sContrato = :sContrato');

    eliminarContrato.Params.ParamByName('sContrato').AsString := edtContrato.Text;
    eliminarContrato.ExecSQL;
end;

procedure TfrmWizard.eliminarContratosXUsuario;
var
  eliminarContratosXUsuario : TZQuery;
begin
  //Elimina los contratosxusuario que se hallan creado previamente
  //elimina el convenio cuando el usuario de clik en el eboton atras o en cancelar
  eliminarContratosXUsuario := TZQuery.Create(Self);
  eliminarContratosXUsuario.Connection := connection.ZConnection;
  eliminarContratosXUsuario.Active:=False;
  eliminarContratosXUsuario.SQL.Clear;
  eliminarContratosXUsuario.SQL.Add('delete from contratosxusuario where sContrato = :sContrato');

  eliminarContratosXUsuario.Params.ParamByName('sContrato').AsString := edtContrato.Text;
  eliminarContratosXUsuario.ExecSQL;
end;

procedure TfrmWizard.eliminarConvenio;
var
  eliminarConvenio : TZQuery;
begin
  //elimina el convenio cuando el usuario de clik en el eboton atras o en cancelar
  eliminarConvenio := TZQuery.Create(Self);
  eliminarConvenio.Connection := connection.ZConnection;
  eliminarConvenio.Active:=False;
  eliminarConvenio.SQL.Clear;
  eliminarConvenio.SQL.Add('delete from convenios where sContrato = :sContrato');

  eliminarConvenio.Params.ParamByName('sContrato').AsString := edtContrato.Text;
  eliminarConvenio.ExecSQL;
end;

procedure TfrmWizard.eliminarDepYOrg;
var
  eliminarDepYOrg : TZQuery;
begin
  //Elimina e departamento y la organizacion
    //Eliminar el registro del departamento ke se creo cuando de dio click en el boton siguiente
    eliminarDepYOrg := TZQuery.Create(Self);
    eliminarDepYOrg.Connection := connection.ZConnection;
    eliminarDepYOrg.Active:=False;
    eliminarDepYOrg.SQL.Clear;
    eliminarDepYOrg.SQL.Add('delete from nuc_departamento where codigodepartamento = :codigodepartamento');

    eliminarDepYOrg.Params.ParamByName('codigodepartamento').AsString := edtCodigo.Text;
    eliminarDepYOrg.ExecSQL;

    //Ahora eliminar el registro de la organizacion
    eliminarDepYOrg.Active:=False;
    eliminarDepYOrg.SQL.Clear;
    eliminarDepYOrg.SQL.Add('delete from nuc_organizacion where codigoorganizacion = :codigodepartamento');

    eliminarDepYOrg.Params.ParamByName('codigodepartamento').AsString := edtCodigo.Text;
    eliminarDepYOrg.ExecSQL;
end;

procedure TfrmWizard.eliminarTiposDeMovimiento;
var
  eliminarTiposDeMovimiento : TZQuery;
begin
  //Elimina los tiposdemoimiento, se dispara cuando el usuario da click en atras o cancelar
  eliminarTiposDeMovimiento := TZQuery.Create(Self);
  eliminarTiposDeMovimiento.Connection := connection.ZConnection;
  eliminarTiposDeMovimiento.Active:=False;
  eliminarTiposDeMovimiento.SQL.Clear;
 eliminarTiposDeMovimiento.SQL.Add('delete from tiposdemovimiento where sContrato = :sContrato');

  eliminarTiposDeMovimiento.Params.ParamByName('sContrato').AsString := edtContrato.Text;
  eliminarTiposDeMovimiento.ExecSQL;
end;

procedure TfrmWizard.eliminarTurno;
var
  eliminarTurno : TZQuery;
begin
  //Elimina el turno qu se habia creado cuando el usuario da en el boton atras o cierra la vetana cn el boton de cierre
  eliminarTurno := TZQuery.Create(Self);
  eliminarTurno.Connection := connection.ZConnection;
  eliminarTurno.Active:=False;
  eliminarTurno.SQL.Clear;
  eliminarTurno.SQL.Add('delete from turnos where sContrato = :sContrato');

  eliminarTurno.Params.ParamByName('sContrato').AsString := edtContrato.Text;
  eliminarTurno.ExecSQL;
end;

procedure TfrmWizard.eliminarUsuarioAdmin;
var
  eliminarUsuarioAdmin : TZQuery;
begin
  //Elimina al usuario admin creado cuando se abre la pestana, se elimina cuando se da click en cancelar
  eliminarUsuarioAdmin := TZQuery.Create(Self);
  eliminarUsuarioAdmin.Connection := connection.ZConnection;
  eliminarUsuarioAdmin.Active := False;
  eliminarUsuarioAdmin.SQL.Clear;
  eliminarUsuarioAdmin.SQL.Add('delete from usuarios where sIdUsuario = "admin"');
  eliminarUsuarioAdmin.ExecSQL;
end;

procedure TfrmWizard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Cuando se cierre, debe eleiminar la organizacion que se halla creado hasta ese momento
(*  if (officeWizardr1.Visible = True) or (officeWizardr2.Visible = true) then
  begin
    eliminarDepYOrg;
    eliminarActivoYResidencia;
  end;
 *) 
end;

procedure TfrmWizard.FormShow(Sender: TObject);
var
  insertarNivelesOrganizacion : TZQuery;
  usuarioAdmin : TZQuery;
begin

  //Ocultar el boton de la palomita verde
  btnSiguiente2.Visible := False;

  //Crear usuario admin con contrasena admin en caso de que no exista
  usuarioAdmin := TZQuery.Create(Self);
  usuarioAdmin.Connection := connection.ZConnection;
  usuarioAdmin.Active:=False;
  usuarioAdmin.SQL.Clear;
  usuarioAdmin.SQL.Add('select * from usuarios');
  usuarioAdmin.Open;

  //Si no hay ningun usuario, que se cree el usuario admin con contrasena admin
  if usuarioAdmin.RecordCount <= 0 then
  begin
     usuarioAdmin.Append;
     usuarioAdmin.FieldValues['sIdUsuario']   := 'admin';
     usuarioAdmin.FieldValues['sPassword']    := encripta('admin');
     usuarioAdmin.FieldValues['sNombre']      := 'Usuario Administrador';
     usuarioAdmin.FieldValues['Activo']       := 'Si';
     usuarioAdmin.FieldValues['lActivo']      := 'Si';
     usuarioAdmin.FieldValues['lValida']      := 'No';
     usuarioAdmin.FieldValues['lAutoriza']    := 'No';
     usuarioAdmin.FieldValues['lAcceso']      := 'Si';
     usuarioAdmin.FieldValues['lRecibeReq']   := 'No';
     usuarioAdmin.FieldValues['lVerificaReq'] := 'No';
     usuarioAdmin.FieldValues['lAutorizaRequisiciones'] := 'No';
     usuarioAdmin.FieldValues['llRevisaGOperacion']     := 'No';
     usuarioAdmin.FieldValues['lRevisaCoordAdmin']      := 'No';
     usuarioAdmin.FieldValues['lAutorizaPedido']        := 'No';
     usuarioAdmin.FieldValues['lEnviaCorreo']           := 'No';
     usuarioAdmin.FieldValues['eInsertar']    := 'Si';
     usuarioAdmin.FieldValues['eEditar']      := 'Si';
     usuarioAdmin.FieldValues['eGrabar']      := 'Si';
     usuarioAdmin.FieldValues['eEliminar']    := 'Si';
     usuarioAdmin.FieldValues['eImprimir']    := 'Si';
     usuarioAdmin.FieldValues['lRevisaBarco'] := 'No';
     usuarioAdmin.FieldValues['lDesValidaRD'] := 'No';
     usuarioAdmin.FieldValues['lDesValidaGeneradores']   := 'No';
     usuarioAdmin.FieldValues['lDesAutorizaRD']          := 'No';
     usuarioAdmin.FieldValues['lDesAutorizaGeneradores'] := 'No';
     usuarioAdmin.FieldValues['lAsignaFrentes']          := 'No';
     usuarioAdmin.FieldValues['lRealizaAjustes']         := 'No';
     usuarioAdmin.FieldValues['lAutorizaEstimacion']     := 'No';
     usuarioAdmin.FieldValues['lValidaEstimacion']       := 'No';
     usuarioAdmin.FieldValues['lDesautorizaEstimacion']  := 'No';
     usuarioAdmin.FieldValues['lDesvalidaEstimacion']    := 'No';
     usuarioAdmin.FieldValues['lAjusteMaterial']         := 'No';
     usuarioAdmin.FieldValues['ShowHint']                := 0;
     usuarioAdmin.Post;
  end;


  //Si no existen niveles de organizacion Crear los niveles de organizacion(empresa, convenio) en la tabla nuc_nivelOrganizacion
  zqryNivelesOrganizacion.Active := False;
  zqryNivelesOrganizacion.Open;

  if zqryNivelesOrganizacion.RecordCount <= 0 then //Si no hay ningun nivel de organizacion, entonces insertar los niveles
  begin
    insertarNivelesOrganizacion := TZQuery.Create(Self);
    insertarNivelesOrganizacion.Connection := connection.ZConnection;
    insertarNivelesOrganizacion.Active:=False;
    insertarNivelesOrganizacion.SQL.Clear;
    insertarNivelesOrganizacion.SQL.Add('insert into nuc_nivelorganizacion(idnivelOrganizacion, acceso, titulonivel) values(4, "true", "EMPRESA"), (5, "false", "CONVENIO")');

    insertarNivelesOrganizacion.ExecSQL;
  end;

  //Ocultar boton de Atras
  btnAtras.Visible := False;
  //Ocultar las otras pestanas

  officeOrganizacion.AdvPages[0].TabVisible:=true;
  officeWizardr.Visible := true;

  officeOrganizacion.AdvPages[1].TabVisible:=false;
  officeWizardr1.Visible := False;
  officeOrganizacion.AdvPages[2].TabVisible:=false;
  officeWizardr2.Visible := False;

  //Poner el foco en el campo
  edtCodigo.SetFocus;
end;

procedure TfrmWizard.imgLogoClick(Sender: TObject);
begin
  //Cuando se de click en la imagen, se debe de abrir el explradr de window para elegir la imagen para el contrato
  OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        imgLogo.Picture.LoadFromFile(OpenPicture.FileName);
      except
        if fileExists(global_ruta + 'MiImagen.jpg') then
          imgLogo.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
        else
          imgLogo.Picture := nil
      end
    end
end;

procedure TfrmWizard.inicializarQueriesCombos;
begin
  //Inicializar TZQueries de los combos de empresa, activos y residencia
  zqryEmpresa.Active := False;
  zqryEmpresa.Open;

  zqryActivo.Active := False;
  zqryActivo.Open;

  zqryResidencia.Active := False;
  zqryResidencia.Open;
end;

procedure TfrmWizard.insertarDepartamento;
var
   lEdicion : boolean;
   indice   : integer;
begin
  //Inserta la organizacion en la tabla nuc_Organizacion
     zqOrganizacion.FieldValues['idnivel'] := 4;
     zqOrganizacion.FieldValues['fecha']   := date;

      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(idorganizacion) AS id FROM nuc_organizacion;');
      connection.QryBusca.Open;
      if connection.QryBusca.FieldValues['id'] = null then
        zqOrganizacion.FieldValues['idorganizacion'] := 1
      else
        zqOrganizacion.FieldValues['idorganizacion'] := connection.QryBusca.FieldValues['id'] + 1;
      zqOrganizacion.FieldValues['wbs'] := zqOrganizacion.FieldValues['idorganizacion'];
      zqOrganizacion.Post ;

      zqOrganizacion.Last;
      {Buscamos el maximo elemento..}
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(iddepartamento) AS id FROM nuc_departamento');
      connection.QryBusca.Open;
      if connection.QryBusca.FieldByName('id').AsInteger = 0 then
         indice := 1
      else
         indice := connection.QryBusca.FieldByName('id').AsInteger + 1;
      {Se crea el departamento en automatico..que hace referencia a la organizacion.}
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('insert into nuc_departamento (iddepartamento, idorganizacion, codigodepartamento, etiqueta, titulodepartamento, idarbol, idpadre, nivel, activo, herencia) '+
                          'VALUES (:iddepto, :idorganizacion, :codigo, :etiqueta, :titulodepto, :arbol, :padre, :nivel, "Si", "*")');
      connection.zCommand.ParamByName('iddepto').AsInteger        := indice;
      connection.zCommand.ParamByName('idorganizacion').AsInteger := zqOrganizacion.FieldValues['idorganizacion'];
      connection.zCommand.ParamByName('codigo').AsString          := zqOrganizacion.FieldValues['codigoorganizacion'];
      connection.zCommand.ParamByName('titulodepto').AsString     := zqOrganizacion.FieldValues['nombreorganizacion'];
      connection.zCommand.ParamByName('etiqueta').AsString        := zqOrganizacion.FieldValues['etiqueta'];
      connection.zCommand.ParamByName('arbol').AsInteger          := indice;
      connection.zCommand.ParamByName('padre').AsInteger          := -5;
      connection.zCommand.ParamByName('nivel').AsInteger          := 0;
      connection.zCommand.ExecSQL;
end;

procedure TfrmWizard.memoDescripcionEnter(Sender: TObject);
begin
  memoDescripcion.Color := global_color_entrada
end;

procedure TfrmWizard.memoDescripcionExit(Sender: TObject);
begin
  memoDescripcion.Color := global_color_salida
end;

procedure TfrmWizard.memoDescripcionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnSiguiente2.SetFocus
end;

procedure TfrmWizard.sqlScriptAfterExecute(Processor: TZSQLProcessor;
  StatementIndex: Integer);
begin
  pbBarraEstado.Position := pbBarraEstado.Position + 1;
  pbBarraEstado.Refresh;
end;

end.
