unit frm_nuc_organizacion;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,Utilerias,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset, jpeg,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, rxToolEdit, RXDBCtrl, frxpngimage, AdvGlowButton, ExtDlgs,
  FormAutoScaler, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Newpanel;

type
  Tfrm_nucOrganizacion = class(TForm)
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
    zqOrganizacion: TZQuery;
    ds_organizacion: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    frmBarra1: TfrmBarra;
    OpenPicture: TOpenPictureDialog;
    fsc_Organizacion: TFormAutoScaler;
    gpIndividual: tNewGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    DBCODIGO: TDBEdit;
    DBCP: TDBEdit;
    DBMunicipio: TDBEdit;
    DBLocalidad: TDBEdit;
    DBTelefono2: TDBEdit;
    DBEstado: TDBEdit;
    DBPais: TDBEdit;
    DBTelefono3: TDBEdit;
    DBTelefono4: TDBEdit;
    DBEtiqueta: TDBEdit;
    DBEtiquetaCont: TDBEdit;
    DBAbreviatura: TDBEdit;
    DBRazon: TDBEdit;
    DBRegPatronal: TDBEdit;
    DBCalle: TDBEdit;
    DBNumero: TDBEdit;
    DBColonia: TDBEdit;
    dbedttitulonivel: TDBEdit;
    dbedttitulonivel1: TDBEdit;
    dbRfc: TDBEdit;
    dbTelefono1: TDBEdit;
    dbDescripcion: TDBMemo;
    dbActiva: TDBComboBox;
    dbFecha: TDBDateEdit;
    zqOrganizacionidnivel: TIntegerField;
    zqOrganizacionpadre: TIntegerField;
    zqOrganizacionidorganizacion: TIntegerField;
    zqOrganizacionwbs: TStringField;
    zqOrganizacioncodigoorganizacion: TStringField;
    zqOrganizacionEtiqueta: TStringField;
    zqOrganizacionComentaContab: TStringField;
    zqOrganizacionnombreorganizacion: TStringField;
    zqOrganizaciontituloorganizacion: TStringField;
    zqOrganizaciondescripcion: TBlobField;
    zqOrganizacioncomentarios: TBlobField;
    zqOrganizacionfecha: TDateTimeField;
    zqOrganizacionrfc: TStringField;
    zqOrganizaciontelefono1: TStringField;
    zqOrganizaciontelefono2: TStringField;
    zqOrganizaciontelefono3: TStringField;
    zqOrganizaciontelefono4: TStringField;
    zqOrganizaciontelefono5: TStringField;
    zqOrganizacionimagen: TBlobField;
    zqOrganizacionactivo: TStringField;
    zqOrganizaciondomiciliofiscalorg: TBlobField;
    zqOrganizaciondomicilioorg: TBlobField;
    zqOrganizacionregpatimss: TStringField;
    zqOrganizacionIdSalario: TIntegerField;
    zqOrganizacionFactorPrimaDominical: TFloatField;
    zqOrganizacionFactorPrimaVacacional: TFloatField;
    zqOrganizacionDiasExcentoPrimaVacacional: TIntegerField;
    zqOrganizacionDiasExcentoAguinaldo: TIntegerField;
    zqOrganizacionSeguroVidaINFONAVIT: TFloatField;
    zqOrganizacionNSMTopeIntIMSS: TIntegerField;
    zqOrganizacionAbrev: TStringField;
    zqOrganizacionporcientoNomina: TFloatField;
    zqOrganizacionRazonSocial: TStringField;
    zqOrganizacionRegimenFiscal: TStringField;
    zqOrganizacionCalle: TStringField;
    zqOrganizacionNumero: TIntegerField;
    zqOrganizacionColonia: TStringField;
    zqOrganizacionCP: TIntegerField;
    zqOrganizacionMunicipio: TStringField;
    zqOrganizacionLocalidad: TStringField;
    zqOrganizacionEstado: TStringField;
    zqOrganizacionPais: TStringField;
    zqOrganizacionidRiesgoCFDI: TIntegerField;
    zqOrganizacionRutaArchivoCert: TMemoField;
    zqOrganizacionRutaArchivoKey: TMemoField;
    zqOrganizacionClaveCSD: TStringField;
    grid_organizacion: TcxGrid;
    cxgrdbtblvwBView_areas: TcxGridDBTableView;
    codigoorganizacion: TcxGridDBColumn;
    nombreorganizacion: TcxGridDBColumn;
    tituloorganizacion: TcxGridDBColumn;
    razonsocial: TcxGridDBColumn;
    grid_organizacionLevel1: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_estatusCellClick(Column: TColumn);

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
    procedure grid_estatusMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_estatusMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_estatusTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tiColoresEnter(Sender: TObject);
    procedure tiColoresExit(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure blbfldqryestatusdescripcionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure blbfldqryestatuscomentariosGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure blbfldqryestatusdomiciliofiscalorgGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure blbfldqryestatusdomicilioorgGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure DBCODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure dbedttitulonivel1KeyPress(Sender: TObject; var Key: Char);
    procedure dbRfcKeyPress(Sender: TObject; var Key: Char);
    procedure DBCODIGOEnter(Sender: TObject);
    procedure DBCODIGOExit(Sender: TObject);
    procedure dbedttitulonivelKeyPress(Sender: TObject; var Key: Char);
    procedure dbedttitulonivelEnter(Sender: TObject);
    procedure dbedttitulonivelExit(Sender: TObject);
    procedure dbedttitulonivel1Enter(Sender: TObject);
    procedure dbedttitulonivel1Exit(Sender: TObject);
    procedure DBEtiquetaExit(Sender: TObject);
    procedure DBEtiquetaEnter(Sender: TObject);
    procedure DBEtiquetaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEtiquetaContKeyPress(Sender: TObject; var Key: Char);
    procedure DBEtiquetaContEnter(Sender: TObject);
    procedure DBEtiquetaContExit(Sender: TObject);
    procedure DBAbreviaturaEnter(Sender: TObject);
    procedure DBAbreviaturaExit(Sender: TObject);
    procedure DBAbreviaturaKeyPress(Sender: TObject; var Key: Char);
    procedure DBRazonKeyPress(Sender: TObject; var Key: Char);
    procedure DBRazonEnter(Sender: TObject);
    procedure DBRazonExit(Sender: TObject);
    procedure DBRegPatronalEnter(Sender: TObject);
    procedure DBRegPatronalExit(Sender: TObject);
    procedure dbDescripcionEnter(Sender: TObject);
    procedure dbDescripcionExit(Sender: TObject);
    procedure DBCalleEnter(Sender: TObject);
    procedure DBCalleExit(Sender: TObject);
    procedure DBCalleKeyPress(Sender: TObject; var Key: Char);
    procedure DBNumeroEnter(Sender: TObject);
    procedure DBNumeroExit(Sender: TObject);
    procedure DBNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure DBColoniaKeyPress(Sender: TObject; var Key: Char);
    procedure DBColoniaEnter(Sender: TObject);
    procedure DBColoniaExit(Sender: TObject);
    procedure DBCPKeyPress(Sender: TObject; var Key: Char);
    procedure DBCPEnter(Sender: TObject);
    procedure DBCPExit(Sender: TObject);
    procedure DBMunicipioEnter(Sender: TObject);
    procedure DBMunicipioExit(Sender: TObject);
    procedure DBMunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure DBLocalidadKeyPress(Sender: TObject; var Key: Char);
    procedure DBLocalidadEnter(Sender: TObject);
    procedure DBLocalidadExit(Sender: TObject);
    procedure DBEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEstadoEnter(Sender: TObject);
    procedure DBEstadoExit(Sender: TObject);
    procedure DBPaisExit(Sender: TObject);
    procedure DBPaisEnter(Sender: TObject);
    procedure DBPaisKeyPress(Sender: TObject; var Key: Char);
    procedure dbTelefono1KeyPress(Sender: TObject; var Key: Char);
    procedure dbTelefono1Enter(Sender: TObject);
    procedure dbTelefono1Exit(Sender: TObject);
    procedure DBTelefono2KeyPress(Sender: TObject; var Key: Char);
    procedure DBTelefono2Exit(Sender: TObject);
    procedure DBTelefono2Enter(Sender: TObject);
    procedure DBTelefono3Exit(Sender: TObject);
    procedure DBTelefono3Enter(Sender: TObject);
    procedure DBTelefono3KeyPress(Sender: TObject; var Key: Char);
    procedure DBTelefono4KeyPress(Sender: TObject; var Key: Char);
    procedure DBTelefono4Enter(Sender: TObject);
    procedure DBTelefono4Exit(Sender: TObject);
    procedure dbActivaExit(Sender: TObject);
    procedure dbActivaKeyPress(Sender: TObject; var Key: Char);
    procedure dbActivaEnter(Sender: TObject);
    procedure dbFechaEnter(Sender: TObject);
    procedure dbFechaExit(Sender: TObject);
    procedure DBRegPatronalKeyPress(Sender: TObject; var Key: Char);
    procedure dbDescripcionKeyPress(Sender: TObject; var Key: Char);
   // function RedimensionarJPG(sFilePath: string): string;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_nucOrganizacion : Tfrm_nucOrganizacion;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;
  imagen           : string;
  bMostrar         : Boolean;

 // Function Tamanyo(Archivo : String): Real;
  implementation


{$R *.dfm}

procedure Tfrm_nucOrganizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  botonpermiso.Free;
end;

procedure Tfrm_nucOrganizacion.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   zqOrganizacion.Active := False ;
   zqOrganizacion.Open ;

   grid_organizacion.SetFocus;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;
procedure Tfrm_nucOrganizacion.grid_estatusCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;


procedure Tfrm_nucOrganizacion.frmBarra1btnAddClick(Sender: TObject);
begin

   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   frmBarra1.btnAddClick(Sender);
   dbFecha.SetFocus;

   zqOrganizacion.Append ;
   zqOrganizacion.fieldbyname('activo').asstring := 'Si';
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

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   sOpcion := 'New';

   dbFecha.date := date;
   grid_organizacion.Enabled := False;
   dbCodigo.SetFocus;

end;

procedure Tfrm_nucOrganizacion.frmBarra1btnEditClick(Sender: TObject);
begin
    If zqOrganizacion.RecordCount > 0 Then
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
          // tsDescripcion.SetFocus;
           zqOrganizacion.Edit;
           grid_organizacion.Enabled := False;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure Tfrm_nucOrganizacion.frmBarra1btnPostClick(Sender: TObject);
var
   lEdicion : boolean;
   indice   : integer;
begin
  frmBarra1.btnPostClick(Sender);

  if sOpcion = 'New' then
  begin
      zqOrganizacion.FieldValues['idnivel'] := 4;

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

  if sOpcion = 'Edit' then
  begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('update nuc_departamento set codigodepartamento =:codigo, etiqueta =:etiqueta,'+
                                  'titulodepartamento =:titulodepto '+
                                  'where idorganizacion =:organizacion and idpadre =-5 and nivel = 0');
      connection.zCommand.ParamByName('organizacion').AsInteger := zqOrganizacion.FieldValues['idorganizacion'];
      connection.zCommand.ParamByName('codigo').AsString        := zqOrganizacion.FieldValues['codigoorganizacion'];
      connection.zCommand.ParamByName('titulodepto').AsString   := zqOrganizacion.FieldValues['nombreorganizacion'];
      connection.zCommand.ParamByName('etiqueta').AsString      := zqOrganizacion.FieldValues['etiqueta'];
      connection.zCommand.ExecSQL;
      zqOrganizacion.Post ;
  end;
  sOpcion := '';
  Insertar1.Enabled  := True ;
  Editar1.Enabled    := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled       := False ;
  Eliminar1.Enabled  := True ;
  Refresh1.Enabled   := True ;
  Salir1.Enabled     := True ;
  grid_organizacion.Enabled := True;

  desactivapop(popupprincipal);
end;

procedure Tfrm_nucOrganizacion.frmBarra1btnCancelClick(Sender: TObject);
begin

   frmBarra1.btnCancelClick(Sender);
   zqOrganizacion.Cancel;

   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_organizacion.Enabled := True;
   sOpcion := '';
end;

procedure Tfrm_nucOrganizacion.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqOrganizacion.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     try
         zqOrganizacion.Edit;
         zqOrganizacion.FieldValues['activo'] := 'No';
         zqOrganizacion.post;

         connection.zCommand.Active := False;
         connection.zCommand.SQL.Clear;
         connection.zCommand.SQL.Add('update nuc_departamento set activo = "No" '+
                                    'where idorganizacion =:organizacion and idpadre =-5 and nivel = 0');
         connection.zCommand.ParamByName('organizacion').AsInteger := zqOrganizacion.FieldValues['idorganizacion'];
         connection.zCommand.ExecSQL;
         zqOrganizacion.Refresh;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Estatus de Empleados', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure Tfrm_nucOrganizacion.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zqOrganizacion.refresh ;
end;

procedure Tfrm_nucOrganizacion.frmBarra1btnExitClick(Sender: TObject);
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

procedure Tfrm_nucOrganizacion.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure Tfrm_nucOrganizacion.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure Tfrm_nucOrganizacion.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure Tfrm_nucOrganizacion.DBAbreviaturaEnter(Sender: TObject);
begin
    dbAbreviatura.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBAbreviaturaExit(Sender: TObject);
begin
    dbAbreviatura.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBAbreviaturaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       dbRazon.SetFocus
end;

procedure Tfrm_nucOrganizacion.dbActivaEnter(Sender: TObject);
begin
    dbActiva.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.dbActivaExit(Sender: TObject);
begin
    dbActiva.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.dbActivaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       dbFecha.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBCalleEnter(Sender: TObject);
begin
    dbCalle.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBCalleExit(Sender: TObject);
begin
    dbCalle.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBCalleKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       dbNumero.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBCODIGOEnter(Sender: TObject);
begin
    dbcodigo.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBCODIGOExit(Sender: TObject);
begin
    dbcodigo.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBCODIGOKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
    dbedttitulonivel.SetFocus;
end;

procedure Tfrm_nucOrganizacion.DBColoniaEnter(Sender: TObject);
begin
    dbColonia.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBColoniaExit(Sender: TObject);
begin
    dbColonia.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBColoniaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       dbCp.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBCPEnter(Sender: TObject);
begin
    dbCP.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBCPExit(Sender: TObject);
begin
    dbCP.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBCPKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       dbMunicipio.SetFocus
end;

procedure Tfrm_nucOrganizacion.dbedttitulonivel1Enter(Sender: TObject);
begin
    dbedttitulonivel1.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.dbedttitulonivel1Exit(Sender: TObject);
begin
    dbedttitulonivel1.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.dbedttitulonivel1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    dbEtiqueta.SetFocus;
end;

procedure Tfrm_nucOrganizacion.dbRfcKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    DBRegPatronal.SetFocus;
end;

procedure Tfrm_nucOrganizacion.dbTelefono1Enter(Sender: TObject);
begin
    dbTelefono1.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.dbTelefono1Exit(Sender: TObject);
begin
    dbTelefono1.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.dbTelefono1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       dbTelefono2.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBTelefono2Enter(Sender: TObject);
begin
    dbTelefono2.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBTelefono2Exit(Sender: TObject);
begin
    dbTelefono2.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBTelefono2KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       dbTelefono3.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBTelefono3Enter(Sender: TObject);
begin
    dbTelefono3.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBTelefono3Exit(Sender: TObject);
begin
    dbTelefono3.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBTelefono3KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       dbTelefono4.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBTelefono4Enter(Sender: TObject);
begin
    dbTelefono4.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBTelefono4Exit(Sender: TObject);
begin
    dbTelefono4.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBTelefono4KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
       dbActiva.SetFocus
end;

procedure Tfrm_nucOrganizacion.dbedttitulonivelEnter(Sender: TObject);
begin
    dbedttitulonivel.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.dbedttitulonivelExit(Sender: TObject);
begin
    dbedttitulonivel.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.dbedttitulonivelKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
      dbedttitulonivel1.SetFocus;
end;

procedure Tfrm_nucOrganizacion.DBEstadoEnter(Sender: TObject);
begin
    dbEstado.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBEstadoExit(Sender: TObject);
begin
    dbEstado.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBEstadoKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       dbPais.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBEtiquetaContEnter(Sender: TObject);
begin
    dbEtiquetaCont.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBEtiquetaContExit(Sender: TObject);
begin
    dbEtiquetaCont.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBEtiquetaContKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       DBAbreviatura.SetFocus;
end;

procedure Tfrm_nucOrganizacion.DBEtiquetaEnter(Sender: TObject);
begin
    dbetiqueta.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBEtiquetaExit(Sender: TObject);
begin
    dbetiqueta.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBEtiquetaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       DBEtiquetaCont.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBLocalidadEnter(Sender: TObject);
begin
    dbLocalidad.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBLocalidadExit(Sender: TObject);
begin
    dbLocalidad.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBLocalidadKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
       dbEstado.setfocus
end;

procedure Tfrm_nucOrganizacion.DBMunicipioEnter(Sender: TObject);
begin
    dbMunicipio.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBMunicipioExit(Sender: TObject);
begin
    dbMunicipio.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBMunicipioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       dbLocalidad.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBNumeroEnter(Sender: TObject);
begin
    dbNumero.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBNumeroExit(Sender: TObject);
begin
    dbNumero.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBNumeroKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       dbColonia.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBPaisEnter(Sender: TObject);
begin
    dbPais.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBPaisExit(Sender: TObject);
begin
    dbPais.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBPaisKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       dbTelefono1.SetFocus
end;

procedure Tfrm_nucOrganizacion.dbDescripcionEnter(Sender: TObject);
begin
    dbDescripcion.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.dbDescripcionExit(Sender: TObject);
begin
    dbDescripcion.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.dbDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
     DBCalle.SetFocus;
end;

procedure Tfrm_nucOrganizacion.DBRazonEnter(Sender: TObject);
begin
    dbRazon.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBRazonExit(Sender: TObject);
begin
    dbRazon.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBRazonKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       dbRfc.SetFocus
end;

procedure Tfrm_nucOrganizacion.DBRegPatronalEnter(Sender: TObject);
begin
    dbRegPatronal.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.DBRegPatronalExit(Sender: TObject);
begin
    dbRegPatronal.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.DBRegPatronalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       dbDescripcion.SetFocus;
end;

procedure Tfrm_nucOrganizacion.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure Tfrm_nucOrganizacion.dbFechaEnter(Sender: TObject);
begin
    dbFecha.Color := global_color_entradaERP;
end;

procedure Tfrm_nucOrganizacion.dbFechaExit(Sender: TObject);
begin
    dbFecha.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure Tfrm_nucOrganizacion.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure Tfrm_nucOrganizacion.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure Tfrm_nucOrganizacion.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure Tfrm_nucOrganizacion.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure Tfrm_nucOrganizacion.grid_estatusEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrm_nucOrganizacion.grid_estatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrm_nucOrganizacion.grid_estatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrm_nucOrganizacion.grid_estatusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_nucOrganizacion.grid_estatusMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_nucOrganizacion.grid_estatusTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_nucOrganizacion.AdvGlowButton1Click(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  nivel: Integer;
  BlobField: tField;
  QryBusca : tzquery;
begin

 { QryBusca := TZQuery.Create(Self);
  QryBusca.Connection := connection.zConnection;
  QryBusca.Active := False;
  QryBusca.SQL.Text := 'SELECT imagen FROM nuc_organizacion ';
  QryBusca.Open;

      bImagen.Picture.Bitmap := nil;
       if QryBusca.RecordCount > 0 then begin
        bImagen.Picture.LoadFromFile('');
        BlobField := QryBusca.FieldByName('imagen');
        BS := QryBusca.CreateBlobStream(BlobField, bmRead);
        if bs.Size > 15 then begin
          Try
            Pic := TJpegImage.Create;
            Try
              Pic.LoadFromStream(bS);
              bImagen.Picture.Graphic := Pic;
            Finally
              Pic.Free;
            End;
          Finally
            bS.Free
          End;
        end;
       end;
  end else begin
    AdvGlowButton1.Caption := 'Mostrar';
    bImagen.Picture.Graphic := Nil;
  end;     }
 end;


procedure Tfrm_nucOrganizacion.bImagenClick(Sender: TObject);
var
 Size: Real;
begin
{if zqOrganizacion.State in [dsInsert, dsEdit] then begin
    bImagen.Picture.Bitmap := nil;
    OpenPicture.Title := 'Inserta Imagen';
    imagen := '';
    if OpenPicture.Execute then begin
      Try
        imagen := RedimensionarJPG(OpenPicture.FileName);
        Size := Tamanyo(imagen);
        if Size <= 350 then
          bImagen.Picture.LoadFromFile(OpenPicture.FileName)
        else
          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
      Except
        bImagen.Picture.LoadFromFile('');
      End
    end;
  end;    }
end;

procedure Tfrm_nucOrganizacion.blbfldqryestatuscomentariosGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
    Text := Sender.AsString;
end;

procedure Tfrm_nucOrganizacion.blbfldqryestatusdescripcionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Sender.AsString;
end;

procedure Tfrm_nucOrganizacion.blbfldqryestatusdomiciliofiscalorgGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
    Text := Sender.AsString;
end;

procedure Tfrm_nucOrganizacion.blbfldqryestatusdomicilioorgGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
      Text := Sender.AsString;
end;

procedure Tfrm_nucOrganizacion.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
       // tsDescripcion.SetFocus
end;

procedure Tfrm_nucOrganizacion.tiColoresEnter(Sender: TObject);
begin
   // tiColores.Color := $00E6FEFF;
end;

procedure Tfrm_nucOrganizacion.tiColoresExit(Sender: TObject);
begin
   // tiColores.Color := global_color_salidaERP;
end;

procedure Tfrm_nucOrganizacion.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
{    if frmbarra1.btnPost.Enabled = True then
       if key =#13 then
          frmBarra1.btnPost.SetFocus;  }
  if key =#13 then
    dbedttitulonivel1.SetFocus;          
end;

end.
