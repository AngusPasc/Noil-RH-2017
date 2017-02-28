unit frm_contratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ComCtrls, ToolWin, unitGenerales,
  StdCtrls, DBCtrls, Mask, frm_connection, DateUtils, frm_barra, Global,
  Menus, jpeg, ExtCtrls, ExtDlgs, RXDBCtrl, RxLookup,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dblookup,
  unitexcepciones, udbgrid, unittbotonespermisos, UnitValidaTexto, unitactivapop,
  rxToolEdit, rxCurrEdit, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxGDIPlusClasses, FormAutoScaler, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxProgressBar, cxLabel;

type
  TfrmContratos = class(TForm)
    frmBarra1: TfrmBarra;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    ds_contratos: TDataSource;
    contratos: TZQuery;
    Residencias: TZReadOnlyQuery;
    dsResidencias: TDataSource;
    pnl1: TPanel;
    label4: TLabel;
    label5: TLabel;
    label6: TLabel;
    label7: TLabel;
    label9: TLabel;
    label19: TLabel;
    label20: TLabel;
    label1: TLabel;
    label2: TLabel;
    label3: TLabel;
    label8: TLabel;
    label10: TLabel;
    tsContrato: TDBEdit;
    tmComentarios: TDBMemo;
    tmDescripcion: TDBMemo;
    tmCliente: TDBMemo;
    grp1: TGroupBox;
    bImagen: TImage;
    tlStatus: TDBCheckBox;
    tsUbicacion: TDBEdit;
    tsCodigo: TDBEdit;
    tsLicitacion: TDBEdit;
    tmTitulo: TDBMemo;
    OpenPicture: TOpenPictureDialog;
    dsActivos: TDataSource;
    Activos: TZReadOnlyQuery;
    Anexos: TZReadOnlyQuery;
    ds_anexos: TDataSource;
    zq_NucOrg: TZQuery;
    ds_NucOrg: TDataSource;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_contratos: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    Grid_colUbicacion: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column1: TcxGridDBColumn;
    Grid_licitacion: TcxGridDBColumn;
    frmtsclr1: TFormAutoScaler;
    MItmContrato: TMenuItem;
    tsTipoObra: TcxDBComboBox;
    tsIdResidencia: TcxDBLookupComboBox;
    tsIdActivo: TcxDBLookupComboBox;
    dblkcbbidorganizacion: TcxDBLookupComboBox;
    LabelProceso: TcxLabel;
    progreso: TcxProgressBar;
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsContratoKeyPress(Sender: TObject; var Key: Char);
    procedure tsActivoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_contratosCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Insertar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsContratoEnter(Sender: TObject);
    procedure tsContratoExit(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tmClienteEnter(Sender: TObject);
    procedure tmClienteExit(Sender: TObject);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure grid_contratosEnter(Sender: TObject);
    procedure tsIdResidenciaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdResidenciaEnter(Sender: TObject);
    procedure tsIdResidenciaExit(Sender: TObject);
    procedure tsUbicacionEnter(Sender: TObject);
    procedure tsUbicacionExit(Sender: TObject);
    procedure tsUbicacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdActivoEnter(Sender: TObject);
    procedure tsIdActivoExit(Sender: TObject);
    procedure tsIdActivoKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsCodigoEnter(Sender: TObject);
    procedure tsCodigoExit(Sender: TObject);
    procedure tsCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure tsLicitacionEnter(Sender: TObject);
    procedure tsLicitacionExit(Sender: TObject);
    procedure tsLicitacionKeyPress(Sender: TObject; var Key: Char);
    procedure tmTituloEnter(Sender: TObject);
    procedure tmTituloExit(Sender: TObject);
    procedure tmTituloKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoObraKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoObraEnter(Sender: TObject);
    procedure tsTipoObraExit(Sender: TObject);

    procedure tsAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_contratosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_contratosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_contratosTitleClick(Column: TColumn);

    procedure ActualizaContrato;
    procedure cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MItmContratoClick(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);
    procedure dblkcbbidorganizacionEnter(Sender: TObject);
    procedure dblkcbbidorganizacionExit(Sender: TObject);

  private
    { Private declarations }     
    CopiaContrato:string;
  public
    { Public declarations }
  end;

var
  frmContratos: TfrmContratos;
  sientra: Byte;
  //utgrid: ticdbgrid;
  botonpermiso: tbotonespermisos;
  ContratoActual, ContratoAnterior: string;
implementation

//uses dlg_Contratos;

{$R *.dfm}

procedure TfrmContratos.frmBarra1btnAddClick(Sender: TObject);
var
  QCopia:TZReadOnlyQuery;
  i:Integer;
  cName:string;
  Inicializar:Boolean;
begin
  //activapop(frmContratos, popupprincipal);
  Inicializar:=True;
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;
  OpcButton := 'New';

  contratos.Append;
  if CopiaContrato<>'' then
  begin
    QCopia:=TZReadOnlyQuery.Create(nil);
    try
      QCopia.Connection:=connection.zConnection;
      QCopia.SQL.Text:='select * from contratos where sContrato=:Contrato';
      QCopia.ParamByName('Contrato').AsString:=CopiaContrato;
      QCopia.Open;
      if QCopia.RecordCount=1 then
      begin
        contratos.CopyFields(QCopia);
        contratos.FieldByName('sContrato').AsString:='';
        Inicializar:=False;
      end;
    finally
      QCopia.Destroy;
    end;
  end;





  if Inicializar then
  begin
    contratos.FieldValues['mComentarios'] := '*';
    contratos.FieldValues['idOrganizacion'] := 0;
    contratos.FieldValues['sCentroGestor'] := '*';
    contratos.FieldValues['sCentroBeneficio'] := '*';
    contratos.FieldValues['sPosicionFinanciera'] := '*';
    contratos.FieldValues['sElementoPEP'] := '*';
    contratos.FieldValues['sCentroCosto'] := '*';
    contratos.FieldValues['sFondo'] := '*';
    contratos.FieldValues['slicitacion'] := '*';
    contratos.FieldValues['stitulo'] := '*';
    contratos.FieldValues['sCuentaMayor'] := '*';
    contratos.FieldValues['sTipoObra'] := 'PROGRAMADA';
    contratos.FieldValues['sPoliza'] := '*';
    contratos.FieldValues['mComentarios'] := '*';
    contratos.FieldValues['sUbicacion'] := '*';
    contratos.FieldValues['lStatus'] := 'Activo';
    contratos.FieldValues['sCodigo'] := '*';
    contratos.FieldValues['mCliente'] := '*';
    contratos.FieldValues['mDescripcion'] := '*';
    contratos.FieldValues['sMascara'] := '*';
    tlStatus.Checked := True;


    contratos.FieldValues['lCobraPersonal'] := 'No';
    contratos.FieldValues['lCobraEquipo'] := 'No';
  end;
  tsContrato.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  tsContrato.Enabled := true;
end;

procedure TfrmContratos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;
  OpcButton := 'Edit';
  try
    //activapop(frmContratos, popupprincipal);
    contratos.Edit;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Contratos', 'Al editar registro', 0);
      frmBarra1.btnCancelClick(Sender);
    end;
  end;
  tsContrato.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  contratoAnterior := contratos.fieldvalues['sContrato'];
   // if contratos.FieldValues['sContrato'] = contratos.FieldValues['sCodigo'] then
  tsContrato.Enabled := false;
  MessageDlg('Aqui no podra cambiar el Contrato, solo la informacion adicional.' +
    'Para cambiar el "Contrato" vaya al menu Herramientas > Importacion de datos > (Click en el boton)Cambiar Contrato', mtInformation, [mbOk], 0);
end;

procedure TfrmContratos.frmBarra1btnPostClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField,Campo: tField;
  cadena,CadCampos,CadValues: string;
  i:Integer;
begin

  CadCampos:='';
  CadValues:='';
  {Validacion del campo ID (caracteres validos)}
  if not validaTexto(nil, nil, 'Contrato', tsContrato.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  try
    if tsContrato.Text = '' then
      cadena := cadena + #13 + '» Contrato';

    if tsCodigo.Text = '' then
      cadena := cadena + #13 + '» Codif. Empresa/Auxiliar';

    if tsIdResidencia.Text = '' then
      cadena := cadena + #13 + '» Residencia';

    if tsTipoObra.Text = '' then
          cadena := cadena + #13 + '» Tipo de Obra';


    if tmDescripcion.Text = '' then
      cadena := cadena + #13 + '» Descripcion';

    if tmCliente.Text = '' then
      cadena := cadena + #13 + '» Cliente';

    if tsIdActivo.Text = '' then
      cadena := cadena + #13 + '» Activo';

    if tsUbicacion.Text = '' then
      cadena := cadena + #13 + '» Ubicacion';

    if tsLicitacion.Text = '' then
      cadena := cadena + #13 + '» Licitacion';

    if cadena <> '' then
    begin
      MessageDlg('Existen Datos Vacíos Favor de Llenar.' + cadena, mtInformation, [mbOk], 0);
      exit;
    end;

    contratoActual := tsContrato.Text;


    if (contratos.FieldValues['bImagen'] = '') or (sientra = 10) then
    begin
      if OpenPicture.FileName <> '' then
      begin
        try
          BlobField := contratos.FieldByName('bImagen');
          BS := contratos.CreateBlobStream(BlobField, bmWrite);
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
      end
      else
      begin
        MessageDlg('Agrega una Imagen al Nuevo Contrato ! ', mtInformation, [mbOk], 0);
        exit;
      end
    end;
    //desactivapop(popupprincipal);

      //Global_Personal := contratos.FieldValues['lCobraPersonal'];
      //Global_Equipo   := contratos.FieldValues['lCobraEquipo'];

     if CopiaContrato='' then
      contratos.FieldValues['sIdAnexo'] := 'C' ;
     contratos.Post;

       //Buscamos el contrato de Barco...
    Connection.QryBusca.Close;
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('select scontrato from contratos where sTipoObra = "BARCO" and sContrato = sCodigo ');
    Connection.QryBusca.Open;

    if Connection.QryBusca.RecordCount > 0 then
      global_contrato_barco := Connection.QryBusca.FieldByName('sContrato').AsString
    else
      global_contrato_barco := '';


    if OpcButton = 'New' then
    begin
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('select * from configuracion where sContrato = :contrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      if CopiaContrato='' then
        Connection.QryBusca.Params.ParamByName('Contrato').Value := contratos.FieldValues['sContrato']
      else
        Connection.QryBusca.Params.ParamByName('Contrato').AsString:=CopiaContrato;
      Connection.QryBusca.Open;

      if (Connection.QryBusca.RecordCount = 0) or (CopiaContrato<>'') then
      begin
        if CopiaContrato='' then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zcommand.SQL.Add('INSERT INTO configuracion ( sContrato, sIdConvenio, sNombre, sNombreCorto) VALUES (:contrato, "C-00", :sNombre, :sNombreCorto)');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
          connection.zCommand.Params.ParamByName('sNombre').DataType := ftString;
          connection.zCommand.Params.ParamByName('sNombre').value := contratos.FieldValues['sContrato'];
          connection.zCommand.Params.ParamByName('sNombreCorto').DataType := ftString;
          connection.zCommand.Params.ParamByName('sNombreCorto').value := contratos.FieldValues['sContrato'];
          connection.zCommand.ExecSQL;
        end
        else
          if (Connection.QryBusca.RecordCount = 1)  then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zcommand.SQL.Text:= 'select * from configuracion where sContrato = :contrato';
            Connection.zcommand.Params.ParamByName('Contrato').AsString:=contratos.FieldValues['sContrato'];
            Connection.zcommand.Open;
            if Connection.zcommand.RecordCount=0 then
            begin
              Connection.zcommand.Append;
              Connection.zcommand.CopyFields(Connection.QryBusca);
              Connection.zcommand.FieldByName('sContrato').AsString:=contratos.FieldValues['sContrato'];
              Connection.zcommand.Post;
            end;
          end;

        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO turnos ( sContrato, sIdTurno, sDescripcion ) VALUES (:contrato , "A", "UNICO")');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.ExecSQL;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO convenios ( sContrato, sIdConvenio, sNumeroOrden, sDescripcion, dFecha, dFechaInicio, dFechaFinal, dMontoMN, dMontoDLL ) VALUES ' +
          '(:contrato , "C-00", "CC00","PLAZO DE EJECUCION PROYECTO", :fecha, :fechai, :fechaf, :montomn, :montodll)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := date;
        connection.zCommand.Params.ParamByName('fechai').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fechai').value := date;
        connection.zCommand.Params.ParamByName('fechaf').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fechaf').value := date;
        connection.zCommand.Params.ParamByName('montomn').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('montomn').value := 0;
        connection.zCommand.Params.ParamByName('montodll').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('montodll').value := 0;
        connection.zCommand.ExecSQL;

        //connection.zCommand.ExecSQL ;

        if global_usuario <> 'ACCESO_TOTAL' then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zcommand.SQL.Add('INSERT INTO contratosxusuario ( sContrato, sIdUsuario ) VALUES ' +
            '(:contrato , :usuario)');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
          connection.zCommand.Params.ParamByName('usuario').DataType := ftString;
          connection.zCommand.Params.ParamByName('usuario').value := global_usuario;
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
                connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
                connection.zCommand.Params.ParamByName('usuario').DataType := ftString;
                connection.zCommand.Params.ParamByName('usuario').value := connection.QryBusca2.FieldValues['sIdUsuario'];
                connection.zCommand.ExecSQL;
              except

              end;
              connection.QryBusca2.Next;
            end;
          end;
        end;

                // Inserta los tipos de movimiento ....
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL ) VALUES ' +
          '(:contrato , :tipo, :descripcion, :clasificacion, :orden, "No", 1, 0, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('tipo').value := 'E';
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftString;
        connection.zCommand.Params.ParamByName('descripcion').value := 'VOLUMEN DE OBRA';
        connection.zCommand.Params.ParamByName('clasificacion').DataType := ftString;
        connection.zCommand.Params.ParamByName('clasificacion').value := 'Tiempo en Operacion';
        connection.zCommand.Params.ParamByName('orden').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('orden').value := 1;
        connection.zCommand.ExecSQL;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL ) VALUES ' +
          '(:contrato , :tipo, :descripcion, :clasificacion, :orden, "No", 1, 0, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('tipo').value := 'A';
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftString;
        connection.zCommand.Params.ParamByName('descripcion').value := 'ALCANCES POR PARTIDA';
        connection.zCommand.Params.ParamByName('clasificacion').DataType := ftString;
        connection.zCommand.Params.ParamByName('clasificacion').value := 'Tiempo en Operacion';
        connection.zCommand.Params.ParamByName('orden').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('orden').value := 1;
        connection.zCommand.ExecSQL;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL ) VALUES ' +
          '(:contrato , :tipo, :descripcion, :clasificacion, :orden, "No", 1, 0, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('tipo').value := 'N';
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftString;
        connection.zCommand.Params.ParamByName('descripcion').value := 'COMENTARIOS';
        connection.zCommand.Params.ParamByName('clasificacion').DataType := ftString;
        connection.zCommand.Params.ParamByName('clasificacion').value := 'Notas';
        connection.zCommand.Params.ParamByName('orden').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('orden').value := 4;
        connection.zCommand.ExecSQL;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL ) VALUES ' +
          '(:contrato , :tipo, :descripcion, :clasificacion, :orden, "No", 1, 0, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('tipo').value := 'AE';
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftString;
        connection.zCommand.Params.ParamByName('descripcion').value := 'RECEPCION DE MATERIALES';
        connection.zCommand.Params.ParamByName('clasificacion').DataType := ftString;
        connection.zCommand.Params.ParamByName('clasificacion').value := 'Notas';
        connection.zCommand.Params.ParamByName('orden').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('orden').value := 4;
        connection.zCommand.ExecSQL;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL ) VALUES ' +
          '(:contrato , :tipo, :descripcion, :clasificacion, :orden, "No", 1, 0, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('tipo').value := 'M-1';
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftString;
        connection.zCommand.Params.ParamByName('descripcion').value := 'MAL TIEMPO';
        connection.zCommand.Params.ParamByName('clasificacion').DataType := ftString;
        connection.zCommand.Params.ParamByName('clasificacion').value := 'Tiempo Muerto';
        connection.zCommand.Params.ParamByName('orden').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('orden').value := 3;
        connection.zCommand.ExecSQL;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL ) VALUES ' +
          '(:contrato , :tipo, :descripcion, :clasificacion, :orden, "No", 1, 0, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('tipo').value := 'M-9';
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftString;
        connection.zCommand.Params.ParamByName('descripcion').value := 'OTROS TIEMPOS INACTIVOS';
        connection.zCommand.Params.ParamByName('clasificacion').DataType := ftString;
        connection.zCommand.Params.ParamByName('clasificacion').value := 'Tiempo Muerto';
        connection.zCommand.Params.ParamByName('orden').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('orden').value := 3;
        connection.zCommand.ExecSQL;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add('INSERT INTO tiposdemovimiento ( sContrato, sIdTipoMovimiento, sDescripcion, sClasificacion, iOrden, lGrafica, iColor, dVentaMN, dVentaDLL ) VALUES ' +
          '(:contrato , :tipo, :descripcion, :clasificacion, :orden, "No", 1, 0, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := contratos.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('tipo').value := 'TMDS';
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftString;
        connection.zCommand.Params.ParamByName('descripcion').value := 'AJUSTES DE JORNADAS';
        connection.zCommand.Params.ParamByName('clasificacion').DataType := ftString;
        connection.zCommand.Params.ParamByName('clasificacion').value := 'Tiempo Muerto';
        connection.zCommand.Params.ParamByName('orden').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('orden').value := 5;
        connection.zCommand.ExecSQL;

        kardex_almacen('Crea Proyecto No. [' + contratos.FieldByName('sContrato').AsString + ']', 'Otros Movimientos');

          MessageDlg('Los Datos se Guardaron Correctamente !', mtInformation, [mbOk], 0);
      end
      else
      begin
        messageDLG('El Contrato ya existe. Favor de Verificar', mtInformation, [mbOk], 0);
        exit;
      end;
    end
    else
    begin
          {Verificamos si aplica la modificacion de contratos}
      if ContratoActual <> ContratoAnterior then
             //ActualizaContrato;
    end;
    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    Salir1.Enabled := True;
    CopiaContrato:='';
    frmBarra1.btnPostClick(Sender);
  except
    on e: exception do //cpl>>
    begin
 //     MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
      //soad -> Si existe el error se procede a eliminar toda la basura creada....

      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('delete from configuracion where sContrato = :contrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := contratos.FieldValues['sContrato'];
      Connection.QryBusca.ExecSQL;

      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('delete from turnos where sContrato = :contrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := contratos.FieldValues['sContrato'];
      Connection.QryBusca.ExecSQL;

      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('delete from turnos where sContrato = :contrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := contratos.FieldValues['sContrato'];
      Connection.QryBusca.ExecSQL;

      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('delete from ordenesdetrabajo where sContrato = :contrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := contratos.FieldValues['sContrato'];
      Connection.QryBusca.ExecSQL;

      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('delete from tiposdemovimiento where sContrato = :contrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value    := contratos.FieldValues['sContrato'];
      Connection.QryBusca.ExecSQL;

      //A lo ultimo el contrato el contrato...
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('delete from convenios where sContrato = :contrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value    := contratos.FieldValues['sContrato'];
      Connection.QryBusca.ExecSQL;


       //el de contratos tambien por soriano
        Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('delete from contratos where sContrato = :contrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value    := contratos.FieldValues['sContrato'];
      Connection.QryBusca.ExecSQL;


//  end;
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Contratos', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click;

    end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  tsContrato.Enabled := true;
end;

procedure TfrmContratos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  //desactivapop(popupprincipal);
  contratos.Cancel;

  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  tsContrato.Enabled := true;
  CopiaContrato:='';
end;

procedure TfrmContratos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if contratos.RecordCount > 0 then
      if MessageDlg('Desea eliminar la información contenida en el proyecto '+contratos.FieldByName('sContrato').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          if (contratos.FieldByName('sContrato').AsString = global_contrato) or (contratos.FieldByName('sTipoObra').AsString = 'Barco') then
             MessageDlg('No se puede eliminar el Poryecto actual, notifique al administrador del sistema.', mtInformation, [mbOk], 0)
          else
          begin
              kardex_almacen('Elimina Proyecto No. [' + contratos.FieldByName('sContrato').AsString + ']', 'Otros Movimientos');
              BarraMostrar(True,progreso, LabelProceso);
              {procedure BuscaElimina_datos(sParamTabla, sLlevaContrato, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamContrato, sParamFolio, sParamWbs, sParamAct, sParamNuevoContrato, sParamNuevoFolio, sParamNuevaWbs, sParamNuevaAct : string; accion :string);}
              BuscaElimina_datos(1,'contratos', 'sContrato', '', '', '', contratos.FieldByName('sContrato').AsString, '', '', '', '', '', '', '', 'borrar', False, progreso);
              BarraMostrar(False,progreso, LabelProceso);
              contratos.Delete;
          end;
      end;
end;

procedure TfrmContratos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Activos.Refresh;
  Residencias.refresh;
  contratos.refresh;
end;

procedure TfrmContratos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  close
end;

procedure TfrmContratos.tsContratoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsCodigo.SetFocus
end;

procedure TfrmContratos.tsActivoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsUbicacion.SetFocus
end;



procedure TfrmContratos.tsAnexoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tmDescripcion.SetFocus;
end;

procedure TfrmContratos.grid_contratosCellClick(Column: TColumn);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarra1.btnCancel.Enabled = True then
     frmBarra1.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin

      BlobField := contratos.FieldByName('bImagen');
      BS := contratos.CreateBlobStream(BlobField, bmRead);
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
        end
      end
      else
        if fileExists(global_ruta + 'MiImagen.jpg') then
           bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
        else
           bImagen.Picture := nil
  end
end;

procedure TfrmContratos.FormShow(Sender: TObject);
begin

  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adContratos', PopupPrincipal);
  //UtGrid := TicdbGrid.create(grid_contratos);
  sientra := 20;
  contratos.Active := False;
  contratos.SQL.Clear;
  contratos.SQL.Add('Select * From contratos Order By sContrato');
  contratos.Open;

  Activos.Active := False;
  Activos.Active := True;

  Residencias.Active := False;
  Residencias.Open;

  Anexos.Active := False;
  Anexos.Open;

  zq_NucOrg.Active:=False;
  zq_NucOrg.Open;

  OpcButton := '';
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  frmBarra1.btnCancel.Click;
  contratos.Refresh;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmContratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  contratos.Cancel;
  connection.contrato.Active := False;
  connection.contrato.Open;
  action := cafree;
  //utgrid.destroy;
  botonpermiso.Free;
end;

procedure TfrmContratos.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmContratos.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmContratos.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmContratos.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmContratos.MItmContratoClick(Sender: TObject);
begin
  CopiaContrato:=contratos.FieldByName('sContrato').AsString;
  frmBarra1.btnAdd.Click;
end;

procedure TfrmContratos.PopupPrincipalPopup(Sender: TObject);
begin
  MItmContrato.Enabled:=False;
  if contratos.State=dsBrowse then
    MItmContrato.Enabled:=True;
end;

procedure TfrmContratos.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin
    BlobField := contratos.FieldByName('bImagen');
    BS := contratos.CreateBlobStream(BlobField, bmRead);
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
      end
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end

end;

procedure TfrmContratos.cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin
    BlobField := contratos.FieldByName('bImagen');
    BS := contratos.CreateBlobStream(BlobField, bmRead);
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
      end
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end

end;

procedure TfrmContratos.cxgrdbtblvwGrid1DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin
    BlobField := contratos.FieldByName('bImagen');
    BS := contratos.CreateBlobStream(BlobField, bmRead);
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
      end
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end


end;

procedure TfrmContratos.dblkcbbidorganizacionEnter(Sender: TObject);
begin
   dblkcbbidorganizacion.style.color := global_color_entradaErp
end;

procedure TfrmContratos.dblkcbbidorganizacionExit(Sender: TObject);
begin
   dblkcbbidorganizacion.style.color := global_color_salidaErp
end;

procedure TfrmContratos.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmContratos.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmContratos.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmContratos.tsContratoEnter(Sender: TObject);
begin
  tsContrato.Color := global_color_entradaERP
end;

procedure TfrmContratos.tsContratoExit(Sender: TObject);
begin
  tsContrato.Color := global_color_salidaERP;
end;

procedure TfrmContratos.tmDescripcionEnter(Sender: TObject);
begin
  tmDescripcion.Color := global_color_entradaERP
end;

procedure TfrmContratos.tmDescripcionExit(Sender: TObject);
begin
  tmDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmContratos.tmClienteEnter(Sender: TObject);
begin
  tmCliente.Color := global_color_entradaERP
end;

procedure TfrmContratos.tmClienteExit(Sender: TObject);
begin
  tmCliente.Color := global_color_salidaERP;
end;

procedure TfrmContratos.tmComentariosEnter(Sender: TObject);
begin
  tmComentarios.Color := global_color_entradaERP
end;

procedure TfrmContratos.tmComentariosExit(Sender: TObject);
begin
  tmComentarios.Color := global_color_salidaERP;
end;

procedure TfrmContratos.bImagenClick(Sender: TObject);

begin
  if (contratos.State = dsInsert) or (contratos.State = dsEdit) then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        sientra := 10;
        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
        if fileExists(global_ruta + 'MiImagen.jpg') then
          bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
        else
          bImagen.Picture := nil
      end
    end
  end
end;

procedure TfrmContratos.grid_contratosEnter(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if contratos.RecordCount > 0 then
  begin
    BlobField := contratos.FieldByName('bImagen');
    BS := contratos.CreateBlobStream(BlobField, bmRead);
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
      end
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end
end;

procedure TfrmContratos.grid_contratosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmContratos.grid_contratosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmContratos.grid_contratosTitleClick(Column: TColumn);
begin
  //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmContratos.tsIdResidenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmdescripcion.SetFocus
end;

procedure TfrmContratos.tsIdResidenciaEnter(Sender: TObject);
begin
  tsIdResidencia.Style.Color := global_color_entradaERP
end;

procedure TfrmContratos.tsIdResidenciaExit(Sender: TObject);
begin
  tsIdResidencia.Style.Color := global_color_salidaERP;
end;

procedure TfrmContratos.tsUbicacionEnter(Sender: TObject);
begin
  tsUbicacion.color := global_color_entradaERP
end;

procedure TfrmContratos.tsUbicacionExit(Sender: TObject);
begin
  tsUbicacion.color := global_color_salidaERP;
end;

procedure TfrmContratos.tsUbicacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    TSLICITACION.SetFocus
end;

procedure TfrmContratos.tsIdActivoEnter(Sender: TObject);
begin
  tsIdActivo.Style.Color := global_color_entradaERP
end;

procedure TfrmContratos.tsIdActivoExit(Sender: TObject);
begin
  tsIdActivo.Style.Color := global_color_salidaERP;
end;

procedure TfrmContratos.tsIdActivoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsUbicacion.SetFocus
end;

procedure TfrmContratos.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmComentarios.SetFocus
end;

procedure TfrmContratos.tsCodigoEnter(Sender: TObject);
begin
  tsCodigo.Color := global_color_entradaERP
end;

procedure TfrmContratos.tsCodigoExit(Sender: TObject);
begin
  tsCodigo.Color := global_color_salidaERP;
end;

procedure TfrmContratos.tsCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      if global_cambioletrero = 20 then
         tsIdResidencia.SetFocus 
      else
         tstipoobra.SetFocus   ;
    end;
end;

procedure TfrmContratos.tsLicitacionEnter(Sender: TObject);
begin
  tslicitacion.color := global_color_entradaERP
end;

procedure TfrmContratos.tsLicitacionExit(Sender: TObject);
begin
  tslicitacion.color := global_color_salidaERP;
end;

procedure TfrmContratos.tsLicitacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tmTitulo.SetFocus;

end;

procedure TfrmContratos.tsTipoObraEnter(Sender: TObject);
begin
  tsTipoObra.Style.Color := global_color_entradaERP
end;

procedure TfrmContratos.tsTipoObraExit(Sender: TObject);
begin
  tsTipoObra.Style.Color := global_color_salidaERP;
end;

procedure TfrmContratos.tsTipoObraKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    tsidresidencia.SetFocus
end;

procedure TfrmContratos.tmTituloEnter(Sender: TObject);
begin
  tmTitulo.Color := global_color_entradaERP
end;

procedure TfrmContratos.tmTituloExit(Sender: TObject);
begin
  tmTitulo.Color := global_color_salidaERP;
end;

procedure TfrmContratos.tmTituloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tmComentarios.SetFocus;
end;

procedure TfrmContratos.ActualizaContrato;
var
  base, tabla, campo, cad: string;
  datos: array[1..300] of string;
  i, x: Integer;
begin
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Show tables');
  connection.qryBusca.Open;
  base := 'Tables_in_' + global_db;
  i := 1;
  while not connection.QryBusca.Eof do
  begin
    tabla := connection.QryBusca.FieldValues[base];
    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('describe ' + tabla + ' ');
    connection.qryBusca2.Open;

    if connection.QryBusca2.RecordCount > 0 then
    begin
      while not connection.QryBusca2.Eof do
      begin
        if connection.QryBusca2.FieldValues['Field'] <> 'sNumeroOrden' then
        begin
          if connection.QryBusca2.FieldValues['Field'] = 'sContrato' then
          begin
            datos[i] := tabla;
            i := i + 1;
          end;
        end;
        connection.QryBusca2.Next;
      end;
    end;
    connection.QryBusca.Next;
  end;

     // Actualiza todos los registros..
  if connection.QryBusca.RecordCount > 0 then
  begin
    for x := 1 to i - 1 do
    begin
      tabla := datos[x];
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('update ' + tabla + ' set sContrato = :Nuevo where sContrato = :Contrato ');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := ContratoAnterior;
      connection.qryBusca.Params.ParamByName('Nuevo').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Nuevo').Value := ContratoActual;
      connection.qryBusca.ExecSQL;
    end;
  end;
  messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
end;

end.

