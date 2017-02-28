unit frm_usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, frm_connection, global, StdCtrls,
  DBCtrls, Mask, DB, Menus, ADODB, ZAbstractRODataset, ZDataset,unitactivapop,
  ZAbstractDataset, Jpeg, sButton, UnitTBotonesPermisos,
  UnitExcepciones, UnitValidaTexto, JvExControls, JvLabel, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, CxGridExportLink, ShellApi;

type
  TfrmUsuarios = class(TForm)
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
    Usuarios: TZQuery;
    ds_usuarios: TDataSource;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    tsIdUsuario: TDBEdit;
    tsPassword: TDBEdit;
    tsNombre: TDBEdit;
    tsPuesto: TDBEdit;
    tlActivo: TDBComboBox;
    tsIp: TDBEdit;
    tsIdDepartamento: TDBLookupComboBox;
    grDerechos: TGroupBox;
    tlValida: TDBCheckBox;
    tlAutoriza: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    tsIdGrupo: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    dbVerificaReq: TDBCheckBox;
    dbAutorizaReq: TDBCheckBox;
    GroupBox3: TGroupBox;
    dbRevisaOperac: TDBCheckBox;
    dbRevisaAdmon: TDBCheckBox;
    dbAutorizaOrdenesc: TDBCheckBox;
    dbRecibeReq: TDBCheckBox;
    dbAcceso: TDBComboBox;
    dbEnviaMail: TDBComboBox;
    CmdConfigura: TsButton;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    dbInsertar: TDBCheckBox;
    dbEliminar: TDBCheckBox;
    dbImprimir: TDBCheckBox;
    dbEditar: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    tsAjuste: TDBCheckBox;
    GroupBox4: TGroupBox;
    lEstimacionAutorizar: TDBCheckBox;
    lEstimacionDesautorizar: TDBCheckBox;
    lEstimacionDesvalidar: TDBCheckBox;
    lEstimacionValidar: TDBCheckBox;
    GroupBox5: TGroupBox;
    JvLabel1: TJvLabel;
    ljustecantidad: TDBCheckBox;
    tspasword: TDBEdit;
    DBEdit1: TDBEdit;
    tsCorreo: TDBEdit;
    ds_grupos: TDataSource;
    ds_deptos: TDataSource;
    deptos: TZReadOnlyQuery;
    grupos: TZQuery;
    grid_usuariosDBTableView1: TcxGridDBTableView;
    grid_usuariosLevel1: TcxGridLevel;
    grid_usuarios: TcxGrid;
    Grid__usuarios1: TcxGridDBColumn;
    Grid__camNombre: TcxGridDBColumn;
    Grid__campuesto: TcxGridDBColumn;
    Grid__camarea: TcxGridDBColumn;
    Grid__camActivo: TcxGridDBColumn;
    Grid__camIp: TcxGridDBColumn;
    Grid__camAutoriza: TcxGridDBColumn;
    mniExportarExcel: TMenuItem;
    dlgSave1: TSaveDialog;
    procedure tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure tsPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure tsPuestoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure tlActivoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsIdDepartamentoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_usuariosCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsIdUsuarioEnter(Sender: TObject);
    procedure tsIdUsuarioExit(Sender: TObject);
    procedure tsPasswordEnter(Sender: TObject);
    procedure tsPasswordExit(Sender: TObject);
    procedure tsNombreEnter(Sender: TObject);
    procedure tsNombreExit(Sender: TObject);


    procedure tsPuestoEnter(Sender: TObject);
    procedure tsPuestoExit(Sender: TObject);
    procedure tlActivoEnter(Sender: TObject);
    procedure tlActivoExit(Sender: TObject);
    procedure tsIpEnter(Sender: TObject);
    procedure tsIpExit(Sender: TObject);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_usuariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_usuariosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmdConfiguraClick(Sender: TObject);
    procedure UsuariosAfterScroll(DataSet: TDataSet);
    procedure generarAlerta;
    procedure dbEnviaMailExit(Sender: TObject);
    procedure dbEnviaMailChange(Sender: TObject);
    procedure tsCorreoEnter(Sender: TObject);
    procedure tsCorreoExit(Sender: TObject);
    procedure tsCorreoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdDepartamentoEnter(Sender: TObject);
    procedure tsIdDepartamentoExit(Sender: TObject);
    procedure mniExportarExcelClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmUsuarios: TfrmUsuarios;
   Opcion : String ;
   usuario, clave, ClaveOriginal, Registro_Actual : String ;
   lOldInsertar, lOldEditar, lOldEliminar, lOldImprimir: boolean;
   BotonPermiso: TBotonesPermisos;
   datos: array[1..200] of string;

implementation

uses frm_ConfiguraMail, Utilerias, UInteliDialog;

{$R *.dfm}

procedure TfrmUsuarios.tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tspassword.SetFocus
end;

procedure TfrmUsuarios.tsPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsnombre.SetFocus
end;

procedure TfrmUsuarios.tsPuestoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdGrupo.SetFocus
end;

procedure TfrmUsuarios.tsTipoUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tlactivo.SetFocus
end;

procedure TfrmUsuarios.UsuariosAfterScroll(DataSet: TDataSet);
begin
     if usuarios.FieldValues['lEnviaCorreo'] = 'Si' then
         CmdConfigura.Enabled := True
      else
          CmdConfigura.Enabled := False;
end;

procedure TfrmUsuarios.tlActivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    dbRecibeReq.SetFocus
end;

procedure TfrmUsuarios.tsIpKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    tsIdUsuario.SetFocus
end;

procedure TfrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Usuarios.Cancel ;
  action := cafree ;
        // Para localizar el usuario y determinar si puede Insertar, Eliminar, Editar, Imprimir
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Text := 'select eInsertar, eEditar, eEliminar, eImprimir, eGrabar from usuarios ' +
                                            'where sIdUsuario = :Usuario ';
            Connection.QryBusca.ParamByName('usuario').AsString := global_Usuario;
            Connection.QryBusca.Open;
            If Connection.QryBusca.RecordCount > 0 Then
              begin
                global_Insertar  := Connection.qryBusca.fieldValues['eInsertar'] ;
                global_Editar    := Connection.qryBusca.fieldValues['eEditar'] ;
                global_grabar    := Connection.qryBusca.fieldValues['eGrabar'] ;
                global_Eliminar  := Connection.qryBusca.fieldValues['eEliminar'] ;
                global_Imprimir  := Connection.qryBusca.fieldValues['eImprimir'] ;
              end;

  global_ventana := 'ENTRAR' ;
  BotonPermiso.free;
end;

procedure TfrmUsuarios.tsCorreoEnter(Sender: TObject);
begin
    tsCorreo.Color := global_color_entradaERP;
end;

procedure TfrmUsuarios.tsIdDepartamentoEnter(Sender: TObject);
begin
    tsIdDepartamento.Color := global_color_entradaERP;
end;

procedure TfrmUsuarios.tsIdDepartamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tspuesto.SetFocus
end;

procedure TfrmUsuarios.grid_usuariosCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled  = True then
        frmBarra1.btnCancel.Click ;
  Usuario := tsIdUsuario.Text ;
end;

procedure TfrmUsuarios.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled    := False ;
   Editar1.Enabled      := False ;
   Registrar1.Enabled   := True ;
   Can1.Enabled         := True ;
   Eliminar1.Enabled    := False ;
   Refresh1.Enabled     := False ;
   Salir1.Enabled       := False ;
   usuarios.Append ;
   usuarios.FieldValues['lActivo']      := 'Si';
   usuarios.FieldValues['lValida']      := 'No';
   usuarios.FieldValues['lAutoriza']    := 'No';
   usuarios.FieldValues['lAcceso']      := 'Si';
   usuarios.FieldValues['lRecibeReq']   := 'No';
   usuarios.FieldValues['lVerificaReq'] := 'No';
   usuarios.FieldValues['lAutorizaRequisiciones'] := 'No';
   usuarios.FieldValues['llRevisaGOperacion']     := 'No';
   usuarios.FieldValues['lRevisaCoordAdmin']      := 'No';
   usuarios.FieldValues['lAutorizaPedido']        := 'No';
   usuarios.FieldValues['lEnviaCorreo']           := 'No';
   usuarios.FieldValues['eInsertar']    := 'Si';
   usuarios.FieldValues['eEditar']      := 'Si';
   usuarios.FieldValues['eGrabar']      := 'Si';
   usuarios.FieldValues['eEliminar']    := 'Si';
   usuarios.FieldValues['eImprimir']    := 'Si';
   usuarios.FieldValues['lRevisaBarco'] := 'No';
   usuarios.FieldValues['lDesValidaRD'] := 'No';
   usuarios.FieldValues['lDesValidaGeneradores']   := 'No';
   usuarios.FieldValues['lDesAutorizaRD']          := 'No';
   usuarios.FieldValues['lDesAutorizaGeneradores'] := 'No';
   usuarios.FieldValues['lAsignaFrentes']          := 'No';
   usuarios.FieldValues['lRealizaAjustes']         := 'No';
   usuarios.FieldValues['lAutorizaEstimacion']     := 'No';
   usuarios.FieldValues['lValidaEstimacion']       := 'No';
   usuarios.FieldValues['lDesautorizaEstimacion']  := 'No';
   usuarios.FieldValues['lDesvalidaEstimacion']    := 'No';
   usuarios.FieldValues['lAjusteMaterial']         := 'No';

   //usuarios.FieldValues['lExportaExcel']    := 'No';
   //usuarios.FieldValues['lExportaPDF']    := 'No';
   tsIdUsuario.SetFocus;
   //activapop(frmUsuarios,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_usuarios.Enabled := False;
end;

procedure TfrmUsuarios.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled    := False ;
   Editar1.Enabled      := False ;
   Registrar1.Enabled   := True ;
   Can1.Enabled         := True ;
   Eliminar1.Enabled    := False ;
   Refresh1.Enabled     := False ;
   Salir1.Enabled       := False ;
   lOldInsertar := String(Usuarios.FieldValues['eInsertar']) = 'Si';
   lOldEditar := String(Usuarios.FieldValues['eEditar']) = 'Si';
   lOldEliminar := String(Usuarios.FieldValues['eEliminar']) = 'Si';
   lOldImprimir := String(Usuarios.FieldValues['eImprimir']) = 'Si';
   if uppercase(Usuarios.FieldByName('sidusuario').AsString)='ADMIN' then
       tsidusuario.Enabled:=false;
   try
       usuarios.Edit ;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Usuarios', 'Al editar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
   end ;
   if tsidusuario.Enabled then
       tsIdUsuario.SetFocus
   else
       tsPassword.SetFocus;
   //activapop(frmUsuarios,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_usuarios.Enabled := False;
end  ;

procedure TfrmUsuarios.generarAlerta;
var
  sAlerta, sPermisos: string;
begin
  sAlerta := ''; sPermisos := '';
  if (dbInsertar.Checked <> lOldInsertar)
  or (dbEditar.Checked <> lOldEditar)
  or (dbEliminar.Checked <> lOldEliminar)
  or (dbImprimir.Checked <> lOldImprimir)
  then begin
    sAlerta := 'Los permisos de usuario han cambiado, sus permisos actualmente son: '+ #10 + #10;

    if dbInsertar.Checked then
      sPermisos := sPermisos +'Insercion, ';
    if dbEditar.Checked then
      sPermisos := sPermisos +'Edicion, ';
    if dbEliminar.Checked then
      sPermisos := sPermisos +'Eliminacion, ';
    if dbImprimir.Checked then
      sPermisos := sPermisos +'Impresion, ';

    {if String(Usuarios.FieldValues['eInsertar']) = 'Si' then
      sPermisos := sPermisos +'Insercion, ';
    if String(Usuarios.FieldValues['eEditar']) = 'Si' then
      sPermisos := sPermisos +'Edicion, ';
    if String(Usuarios.FieldValues['eEliminar']) = 'Si' then
      sPermisos := sPermisos +'Eliminacion, ';
    if String(Usuarios.FieldValues['eImprimir']) = 'Si' then
      sPermisos := sPermisos +'Impresion, ';       }

    if sPermisos = '' then
      sPermisos := 'Sin permisos de insercion, edicion, eliminacion, impresion**';
    sPermisos := Copy(sPermisos, 1, length(sPermisos)-2);
    sAlerta := sAlerta + sPermisos;
    Usuarios.FieldValues['sAlerta'] := sAlerta;
  end;
end;

procedure TfrmUsuarios.frmBarra1btnPostClick(Sender: TObject);
Var
  Cadena : string ;
  nombres, cadenas: TStringList;
Begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Password');nombres.Add('Nombre');nombres.Add('Area');nombres.Add('Puesto');nombres.Add('Grupo');
  cadenas.Add(tsPassword.Text);cadenas.Add(tsNombre.Text);cadenas.Add(tsIdDepartamento.Text);cadenas.Add(tsPuesto.Text);cadenas.Add(tsIdGrupo.Text);
  if not validaTexto(nombres, cadenas, 'Usuario', tsIdUsuario.Text) then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
  {Continua insercion de datos}
  try
      Usuarios.FieldValues['sDestino']   := mUserMail[1];
      Usuarios.FieldValues['sCC']        := mUserMail[2];
      Usuarios.FieldValues['sCCO']       := mUserMail[3];
      Usuarios.FieldValues['sAsunto']    := mUserMail[4];
      Usuarios.FieldValues['sContenido'] := mUserMail[5];
      Usuarios.FieldValues['sAdjunto']   := '';
      if uppercase(Usuarios.FieldByName('sidusuario').AsString)='ADMIN' then
        Usuarios.FieldByName('spassword').AsString :=encripta(tspassword.Text);
      if Usuarios.State = dsEdit then
        generarAlerta
      else
        Usuarios.FieldValues['sAlerta'] := '';
      Usuarios.Post ;
      Insertar1.Enabled  := True ;
      Editar1.Enabled    := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled       := False ;
      Eliminar1.Enabled  := True ;
      Refresh1.Enabled   := True ;
      Salir1.Enabled     := True ;
      grid_usuarios.Enabled := True;
      frmBarra1.btnPostClick(Sender) ;
      tsidusuario.Enabled:=true;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Usuarios', 'Al salvar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
  end;
  //desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmUsuarios.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled   := True ;
  Editar1.Enabled     := True ;
  Registrar1.Enabled  := False ;
  Can1.Enabled        := False ;
  Eliminar1.Enabled   := True ;
  Refresh1.Enabled    := True ;
  Salir1.Enabled      := True ;
  tsidusuario.Enabled:=true;
  Usuarios.Cancel ;
  //desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  grid_usuarios.Enabled := True;
end;

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adUsuarios', PopupPrincipal);

   global_ventana := 'NO ENTRAR' ;

   OpcButton := '' ;
   frmBarra1.btnCancel.Click ;
   deptos.Active := False ;
   deptos.Open ;
   grupos.Active := False ;
   grupos.Open ;
   Usuarios.Active := False ;
   if uppercase(global_usuario)='ADMIN' then
    usuarios.parambyname('user').AsString:=''
   else usuarios.parambyname('user').AsString:='ADMIN';

//   Usuarios.SQL.Add('select * from usuarios order by sIdUsuario' ) ;
   Usuarios.Open ;

   If global_grupo = 'INTEL-CODE' Then
      grDerechos.Visible := True
   Else
      grDerechos.Visible := False;

   mUserMail[1] := '';
   mUserMail[2] := '';
   muserMail[3] := '';
   mUserMail[4] := '';
   mUserMail[5] := '';

   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmUsuarios.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Usuarios.RecordCount  > 0 then
    if uppercase(Usuarios.FieldByName('sidusuario').AsString)='ADMIN' then
      MessageDlg('Este Usuario No Puede ser Eliminado.', mtInformation, [mbOk], 0)
    else
    begin
      if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try

          Usuarios.Delete ;
        except
          on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Usuarios', 'Al editar registro', 0);
          end;
        end
      end ;
    end;
end;

procedure TfrmUsuarios.frmBarra1btnRefreshClick(Sender: TObject);
begin
  usuarios.Refresh ;
  Usuarios.Refresh ;
  deptos.Refresh ;
end;

procedure TfrmUsuarios.frmBarra1btnExitClick(Sender: TObject);
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


procedure TfrmUsuarios.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;


Procedure TfrmUsuarios.CmdConfiguraClick(Sender: TObject);
begin
    Application.CreateForm(TfrmConfiguraMail, frmConfiguraMail);
    frmConfiguraMail.show
end;


procedure TfrmUsuarios.dbEnviaMailChange(Sender: TObject);
begin
     if (usuarios.State = dsInsert) or (usuarios.State = dsEdit)  then
     begin
         if usuarios.FieldValues['lEnviaCorreo'] = 'No' then
         begin
             usuarios.FieldValues['lEnviaCorreo'] := 'Si';
             cmdConfigura.Enabled := True;
         end
         else
         begin
             usuarios.FieldValues['lEnviaCorreo'] := 'No';
             cmdConfigura.Enabled := False;
         end;
     end;
end;

procedure TfrmUsuarios.dbEnviaMailExit(Sender: TObject);
begin
    dbEnviaMail.Color := global_color_salidaPU
end;

procedure TfrmUsuarios.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmUsuarios.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmUsuarios.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmUsuarios.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmUsuarios.mniExportarExcelClick(Sender: TObject);
Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, grid_usuarios);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

Procedure TfrmUsuarios.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;



procedure TfrmUsuarios.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmUsuarios.tsCorreoExit(Sender: TObject);
begin
    tsCorreo.Color := global_color_salidaPU;
end;

procedure TfrmUsuarios.tsIdDepartamentoExit(Sender: TObject);
begin
    tsIdDepartamento.Color := global_color_salidaPU;
end;

procedure TfrmUsuarios.tsIdGrupoEnter(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_entradaERP
end;

procedure TfrmUsuarios.tsCorreoKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       tsIdDepartamento.SetFocus;
end;

procedure TfrmUsuarios.tsIdGrupoExit(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_salidaPU
end;

procedure TfrmUsuarios.tsIdUsuarioEnter(Sender: TObject);
begin
    tsIdUsuario.Color := global_color_entradaERP
end;

procedure TfrmUsuarios.tsIdUsuarioExit(Sender: TObject);
begin
    tsIdUsuario.Color := global_color_salidaPU  ;
    Usuario := tsIdUsuario.Text ;
end;

procedure TfrmUsuarios.tsPasswordEnter(Sender: TObject);
begin
    tsPassword.Color := global_color_entradaERP
end;

procedure TfrmUsuarios.tsPasswordExit(Sender: TObject);
begin
    tsPassword.Color := global_color_salidaPU ;
    clave   := tsPassword.Text ;
end;

procedure TfrmUsuarios.tsNombreEnter(Sender: TObject);
begin
    tsNombre.Color := global_color_entradaERP
end;

procedure TfrmUsuarios.tsNombreExit(Sender: TObject);
begin
    tsNombre.Color := global_color_salidaPU
end;

procedure TfrmUsuarios.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       tsCorreo.SetFocus;
end;

procedure TfrmUsuarios.tsPuestoEnter(Sender: TObject);
begin
    tsPuesto.Color := global_color_entradaERP
end;

procedure TfrmUsuarios.tsPuestoExit(Sender: TObject);
begin
    tsPuesto.Color := global_color_salidaPU
end;

procedure TfrmUsuarios.tlActivoEnter(Sender: TObject);
begin
    tlActivo.Color := global_color_entradaERP
end;

procedure TfrmUsuarios.tlActivoExit(Sender: TObject);
begin
    dbEnviaMail.Color := global_color_salidaPU
end;

procedure TfrmUsuarios.tsIpEnter(Sender: TObject);
begin
    tsIp.Color := global_color_EntradaERP
end;

procedure TfrmUsuarios.tsIpExit(Sender: TObject);
begin
    tsIp.Color := global_color_salidaPU
end;

procedure TfrmUsuarios.tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    dbAcceso.SetFocus
end;

procedure TfrmUsuarios.grid_usuariosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Usuario := tsIdUsuario.Text ;
end;

procedure TfrmUsuarios.grid_usuariosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Usuario := tsIdUsuario.Text ;
end;

end.
