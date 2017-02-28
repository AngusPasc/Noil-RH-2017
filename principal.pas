unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractDataset, ZDataset, DB, ZAbstractRODataset, ZConnection, global,
  ExtCtrls, StdCtrls, Buttons, CheckLst, ComCtrls, Newpanel,strutils, DateUtils;

type
  Tfrm_principal = class(TForm)
    Label12: TLabel;
    tNewGroupBox1: tNewGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    tsServer: TEdit;
    chkReportes: TCheckBox;
    chkGeneradores: TCheckBox;
    cmbFechas: TComboBox;
    tdIdFecha: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    chkConfiguracion: TCheckBox;
    tsContrato: TEdit;
    chkParametros: TCheckBox;
    tsNumeroOrden: TEdit;
    chkFotografias: TCheckBox;
    chkDesde: TCheckBox;
    txtBase1: TEdit;
    tsGroup: tNewGroupBox;
    Label11: TLabel;
    ChkServidores: TCheckListBox;
    btnAdd: TBitBtn;
    btnEdti: TBitBtn;
    btnEliminar: TBitBtn;
    txtBase2: TEdit;
    tNewGroupBox2: tNewGroupBox;
    tiComentarios: TMemo;
    btnSincroniza: TButton;
    grTablas: tNewGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    tblContratos: TCheckBox;
    tblConfiguracion: TCheckBox;
    tblConvenios: TCheckBox;
    tblAnexosMensuales: TCheckBox;
    tblActividadesxAnexo: TCheckBox;
    tblOrdenesdeTrabajo: TCheckBox;
    tblActividadesxOrden: TCheckBox;
    tblAvancesProgramados: TCheckBox;
    tblAvancesFisicos: TCheckBox;
    tblDistribuciondeActividades: TCheckBox;
    tblDistribuciondeAnexo: TCheckBox;
    tblAvancesxActividad: TCheckBox;
    tsPassword: TEdit;
    tblTiposdeMovimiento: TCheckBox;
    tblTurnos: TCheckBox;
    tblPersonal: TCheckBox;
    tblEquipos: TCheckBox;
    tblGrupos: TCheckBox;
    tblIsometricos: TCheckBox;
    tblFirmas: TCheckBox;
    tblConfiguracionGral: TCheckBox;
    tblAlcances: TCheckBox;
    tsIdConvenio: TEdit;
    tblTrinomio: TCheckBox;
    tblOrdenCambio: TCheckBox;
    tspass1: TEdit;
    tspass2: TEdit;
    Timer: TTimer;
    adoConexion: TZConnection;
    command: TZReadOnlyQuery;
    adoConsulta2: TZReadOnlyQuery;
    QryDestino: TZReadOnlyQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    adoConexion2: TZConnection;
    QryConfiguracion: TZReadOnlyQuery;
    QryContratos: TZReadOnlyQuery;
    QryReporteDiario: TZReadOnlyQuery;
    QryOrigen: TZReadOnlyQuery;
    adoConsulta: TZReadOnlyQuery;
    cmdExporta: TZQuery;
    Label13: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function funccomparacnf ( dbparamorigen, dbparamdestino : tzReadOnlyQuery; sparamcontrato, sparamtable, sparamorden, sparamconvenio, sparamtipo : string) : boolean ;
    procedure procdelete ( dbparam : tzReadOnlyQuery; sparamcontrato, sparamorden, sparamtable, sparamreporte, sparamturno : string; dparamfecha : tdate) ;
    procedure procdeletecnf ( dbparam : tzReadOnlyQuery; sparamcontrato, sparamtable, sparamorden, sparamconvenio : string) ;
    procedure procinserta ( dbparam : tzReadOnlyQuery; sparamcontrato, sparamorden, sparamtable, sparamreporte, sparamturno : string; dparamfecha : tdate) ;
    procedure procvalidareporte ( dbparam : tzReadOnlyQuery; sparamcontrato, sparamorden, sparamtable, sparamreporte, sparamturno : string; dparamfecha : tdate) ;
    procedure procvalidadatos ( dbparam : tzReadOnlyQuery) ;
    procedure procinsertacnf ( dbparam : tzReadOnlyQuery; sparamcontrato, sparamtable, sparamorden, sparamconvenio : string) ;
    function funcsql ( dbparam : tZReadOnlyquery; stable : string) : widestring ;
    function tamanyo (archivo : string): real;
    procedure timertimer(sender: tobject);
    procedure btnSincronizaClick(Sender: TObject);
    procedure chkParametrosClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEdtiClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

  svector   : array [1..100] of string ;
  sserverprincipal : string ;
  scontratosup     : widestring ;
  sordenesup       : widestring ;
  sconvenioorigen  : string ;
  sconveniodestino : string ;
  sturno           : string ;
  sopcion          : string ;
  lvalido   : boolean ;
  global_db : string ;
  detectar: string;

implementation

{$R *.dfm}


function Tfrm_principal.funcsql ( dbparam : tzReadOnlyQuery; stable :string) : widestring ;
var
    scadenainsert,
    scadenavalues  : widestring ;
    registro : byte ;
begin
    scadenainsert := 'insert into ' + stable + ' (' ;
    scadenavalues := 'values ( ' ;
    for registro := 0 to dbparam.fieldcount - 1 do
    begin
        scadenainsert := scadenainsert + dbparam.fields[registro].displayname ;
        if registro < (dbparam.fieldcount - 1) then
            scadenainsert := scadenainsert + ', '
        else
            scadenainsert := scadenainsert + ') ' ;

        scadenavalues := scadenavalues + ':param' + IntToStr(registro + 1) ;
        if registro < (dbparam.fieldcount - 1) then
            scadenavalues := scadenavalues + ', '
        else
            scadenavalues := scadenavalues + ') '
    end ;
    funcsql := scadenainsert + scadenavalues ;
end ;


procedure Tfrm_principal.btnAddClick(Sender: TObject);
var
    sip : string ;
begin
    sip := inputbox('inteligent','dirección ip del servidor remoto?', '') ;
    chkservidores.items.add(sip)
end;


procedure Tfrm_principal.timertimer(sender: tobject);
var
    itablas : byte ;
    tdfechareporte : tdate ;
    iitem : byte ;
    sserver : string ;
begin
    lvalido := false ;
    if midstr(timetostr(time), 1 , 5 ) = '23:00'then
        lvalido := true ;
    if lvalido then
    begin
        tdfechafinal.date := date ;
        tdidfecha.date := tdfechafinal.date - 7 ;
        btnsincroniza.click
    end ;
end;

function Tfrm_principal.tamanyo (archivo : string): real;
var
   busca : tsearchrec;
begin
   if  findfirst ( archivo , faanyfile, busca )  = 0 then
      result := busca.size / 1024
   else
      result:=0;
end;

procedure Tfrm_principal.btnEdtiClick(Sender: TObject);
var
    sip : string ;
begin
    if chkservidores.items.count > 0 then
      if chkservidores.itemindex > 0 then
      begin
          sip := inputbox('inteligent','dirección ip del servidor remoto?', chkservidores.items.strings[chkservidores.itemindex]) ;
          chkservidores.items.strings[chkservidores.itemindex] := sip
      end
end;

procedure Tfrm_principal.btnEliminarClick(Sender: TObject);
var
    iitem : byte ;
begin
    for iitem := chkservidores.items.count downto 1 do
        if chkservidores.checked [iitem - 1] then
            chkservidores.items.delete(iitem - 1)
end;

procedure Tfrm_principal.btnSincronizaClick(Sender: TObject);
var
    itablas : byte ;
    tdfechareporte : tdate ;
    iitem : byte ;
    sserver : string ;
    lcontinua : boolean ;
begin
     ticomentarios.clear ;
     ticomentarios.lines.add('inicia proceso de sincronización') ;
                
     adoconexion2.Disconnect ;
     adoconexion2.port     := 3306 ;
     adoConexion2.HostName := tsServer.text ;
     adoConexion2.User     := IntelUser ;
     if trim(tspass1.Text) = '' then
        adoConexion2.Password := IntelPass
     else
        adoConexion2.Password := tspass1.Text;
     adoConexion2.Database := txtBase1.text ;
     adoConexion2.Connect ;

     // inicia sincronización de los servidores seleccionados ..
     if chkparametros.checked then
         if tscontrato.text = '' then
             if messagedlg('se enviara el contenido de la configuración seleccionada de todos los contratos ' +
                           'existentes en los servidores seleccionados a la dirección ip ' + tsserver.text +
                           ' desea continuar con la operación'  , mtconfirmation, [mbyes, mbno], 1) = mryes then
                  lcontinua := true
             else
                  lcontinua := false
         else
             if messagedlg('se enviara el contenido de la configuración seleccionada del contrato ' + tscontrato.text +
                           ' existente en los servidor seleccionado a la dirección ip ' + tsserver.text +
                           ' desea continuar con la operación'  , mtconfirmation, [mbyes, mbno], 1) = mryes then
                  lcontinua := true
             else
                  lcontinua := false
     else
          lcontinua := true ;

     if lcontinua then
       for iitem := chkservidores.items.count downto 1 do
        if chkservidores.checked [iitem - 1] then
        begin
           //try
                   sserver := chkservidores.items.strings[iitem - 1] ;
                   adoconexion.Disconnect ;
                   adoconexion.port     := 3306 ;
                   adoConexion.HostName := chkservidores.items.strings[iitem - 1]  ;
                   adoConexion.User     := IntelUser ;
                   if trim(tspass2.Text) = '' then
                      adoConexion.Password :=  IntelPass
                   else
                      adoConexion.Password :=  tspass2.Text;
                   adoConexion.Database := txtBase2.text ;
                   adoConexion.Connect ;
                   If (adoConexion.HostName=adoConexion2.HostName) And (adoConexion.Database=adoConexion2.Database) Then
                    Begin
                       MessageDlg('No Se Pueden Sincronizar DOS SERVIDORES Y BD IGUALES.' , mtWarning, [mbOk], 0) ;
                       Exit ;
                    end ;
                   ticomentarios.lines.add('sincronización servidor ' + sserver) ;

               qrycontratos.active := false ;
               qrycontratos.sql.clear ;
               if tscontrato.text <> '' then
               begin
                   If chkDesde.Checked Then
                        qrycontratos.sql.add('select sTipoObra, scontrato from contratos where scontrato >= :contrato')
                   else
                        qrycontratos.sql.add('select sTipoObra, scontrato from contratos where scontrato = :contrato') ;
                   qrycontratos.params.parambyname('contrato').datatype := ftstring ;
                   qrycontratos.params.parambyname('contrato').value := tscontrato.text ;
               end
               else
               begin
                   qrycontratos.sql.add('select scontrato from contratos where lstatus = "Activo" order by scontrato') ;
               end ;
               qrycontratos.open ;

               while not qrycontratos.eof do
               begin
                   ticomentarios.lines.add('sincronización contrato ' + qrycontratos.fieldvalues['scontrato']) ;
                   if chkreportes.checked then
                   begin
                       If (tsNumeroOrden.Text <> '') And (tsNumeroOrden.Text <> 'XXX' ) Then
                       Begin
                           ordenesdetrabajo.active := false ;
                           ordenesdetrabajo.sql.Clear ;
                           ordenesdetrabajo.SQL.Add('Select o.sNumeroOrden, c.sIdConvenio from ordenesdetrabajo o ' +
                                                    'INNER JOIN configuracion c ON (o.sContrato = c.sContrato) ' +
                                                    'where o.sContrato = :Contrato and o.sNumeroOrden = :Orden') ;
                           ordenesdetrabajo.params.parambyname('contrato').datatype := ftstring ;
                           ordenesdetrabajo.params.parambyname('contrato').value := qrycontratos.fieldvalues['scontrato'] ;
                           ordenesdetrabajo.params.parambyname('orden').datatype := ftstring ;
                           ordenesdetrabajo.params.parambyname('orden').value := tsNumeroOrden.Text ;
                           ordenesdetrabajo.open ;
                       End
                       Else
                       Begin
                           ordenesdetrabajo.active := false ;
                           ordenesdetrabajo.sql.Clear ;
                           ordenesdetrabajo.SQL.Add('Select o.sNumeroOrden, c.sIdConvenio from ordenesdetrabajo o ' +
                                                    'INNER JOIN configuracion c ON (o.sContrato = c.sContrato) ' +
                                                    'where o.sContrato = :Contrato order by o.sNumeroOrden') ;
                           ordenesdetrabajo.params.parambyname('contrato').datatype := ftstring ;
                           ordenesdetrabajo.params.parambyname('contrato').value := qrycontratos.fieldvalues['scontrato'] ;
                           ordenesdetrabajo.open ;
                       End ;

                       sordenesup := '' ;
                       scontratosup := '' ;
                       sconvenioorigen := '' ;
                       sopcion := 'sincroniza' ;
                       ordenesdetrabajo.first ;
                       while not ordenesdetrabajo.eof do
                       begin
                           sconvenioorigen := ordenesdetrabajo.fieldvalues['sidconvenio'] ;
                           if chkconfiguracion.checked then
                              if pos ( ordenesdetrabajo.fieldvalues ['snumeroorden'] , sordenesup ) = 0 then
                               begin
                                   if sordenesup <> '' then
                                       sordenesup := sordenesup + '|' ;

                                   sordenesup := sordenesup + ordenesdetrabajo.fieldvalues ['snumeroorden'] ;
                                   if not funccomparacnf( qryorigen, qrydestino, qrycontratos.fieldvalues['scontrato'] , 'actividadesxorden', ordenesdetrabajo.fieldvalues['snumeroorden'], sconvenioorigen, 'normal' ) then
                                   begin
                                       procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] , 'actividadesxorden', ordenesdetrabajo.fieldvalues['snumeroorden'], sconvenioorigen) ;
                                       procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'actividadesxorden', ordenesdetrabajo.fieldvalues['snumeroorden'], sconvenioorigen) ;
                                   end ;

                                   if not funccomparacnf( qryorigen, qrydestino, qrycontratos.fieldvalues['scontrato'] , 'firmas', ordenesdetrabajo.fieldvalues['snumeroorden'], 'XXX' , 'normal' ) then
                                   begin
                                       procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] , 'firmas', ordenesdetrabajo.fieldvalues['snumeroorden'], 'XXX') ;
                                       procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] ,  'firmas', ordenesdetrabajo.fieldvalues['snumeroorden'], 'XXX') ;
                                   end
                               end ;

                           ticomentarios.lines.add('sincronización orden de trabajo ' + ordenesdetrabajo.fieldvalues['snumeroorden']) ;
                           tdfechareporte := tdidfecha.date ;

                           qryreportediario.active := false ;
                           qryreportediario.sql.clear ;
                           qryreportediario.sql.add('select didfecha, snumeroorden, snumeroreporte, sidturno from reportediario where scontrato = :contrato and snumeroorden = :orden and didfecha >= :fechai And didfecha <= :fechaf Order By dIdFecha' ) ;
                           qryreportediario.params.parambyname('contrato').datatype := ftstring ;
                           qryreportediario.params.parambyname('contrato').value := qrycontratos.fieldvalues['scontrato'] ;
                           qryreportediario.params.parambyname('orden').datatype := ftstring ;
                           qryreportediario.params.parambyname('orden').value := ordenesdetrabajo.fieldvalues['snumeroorden'] ;
                           qryreportediario.params.parambyname('fechai').datatype := ftdate ;
                           qryreportediario.params.parambyname('fechai').value := tdIdFecha.Date ;
                           qryreportediario.params.parambyname('fechaf').datatype := ftdate ;
                           qryreportediario.params.parambyname('fechaf').value := tdFechaFinal.Date ;
                           qryreportediario.open ;

                           while not qryreportediario.eof do
                           begin
                              ticomentarios.lines.add('fecha ' + qryreportediario.fieldbyname('didfecha').asstring ) ;

                              //Valida Reporte si existe..
                              procvalidareporte( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'reportediario', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;

                              //Validacion de datos..
                              procvalidadatos(command);

                              If NOT chkFotografias.Checked Then
                              Begin
                                  procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'reportediario', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                  ticomentarios.lines.add('sincronizando caratula del reporte diario ... ok : ' + qryreportediario.fieldvalues['snumeroreporte']) ;

                                  procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'firmas', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                  ticomentarios.lines.add('sincronizando firmas del reporte diario ... ok') ;

                                  if qrycontratos.FieldValues['sTipoObra'] = 'BARCO' then
                                  begin
                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'tripulacionpernocta', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando los tripulacion pernocta ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'fasesxorden', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando los prorrateos ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'recursos', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando recursos ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'condicionesclimatologicas', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando condiciones climatologicas ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'movimientosdeembarcacion', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando movimientos de embarcación ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'tripulaciondiaria', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando tripulacion ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'tripulaciondiaria_listado', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando listado de personal ... ok') ;
                                  end
                                  else
                                  begin
                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'jornadasdiarias', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando jornadas diarias ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'tramitedepermisos', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando tramite de permisos ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'volumen de obra', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando volumenes de obra ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradealcances', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando bitacora de alcances ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradeactividades', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando bitacora de actividades ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradepersonal', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando bitacora de personal ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradeequipos', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando bitacora de equipos ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX' , 'avisos de embarque', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando avisos de embarque ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX' , 'actividadescanceladas', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando partidas canceladas ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX' , 'reportegerencial', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando reporte gerencial ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradepaquetes', 'XXX', 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando bitacora de paquetes ... ok') ;

                                      procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'avancesglobalesxorden', 'XXX', 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                                      ticomentarios.lines.add('sincronizando avances globales x orden ... ok') ;
                                  end;
                              End ;
                              procinserta( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'reportefotografico', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                              ticomentarios.lines.add('sincronizando reporte fotografico ... ok') ;

                              sleep (300) ;
                              qryreportediario.Next
                           end ;
                           ordenesdetrabajo.next
                       end
                   end ;

                   if chkgeneradores.checked then
                   begin
                       If (tsNumeroOrden.Text <> '') And (tsNumeroOrden.Text <> 'XXX' ) Then
                       Begin
                           ordenesdetrabajo.active := false ;
                           ordenesdetrabajo.sql.Clear ;
                           ordenesdetrabajo.SQL.Add('Select o.sNumeroOrden, c.sIdConvenio from ordenesdetrabajo o ' +
                                                    'INNER JOIN configuracion c ON (o.sContrato = c.sContrato) ' +
                                                    'where o.sContrato = :Contrato and o.sNumeroOrden = :Orden') ;
                           ordenesdetrabajo.params.parambyname('contrato').datatype := ftstring ;
                           ordenesdetrabajo.params.parambyname('contrato').value := qrycontratos.fieldvalues['scontrato'] ;
                           ordenesdetrabajo.params.parambyname('orden').datatype := ftstring ;
                           ordenesdetrabajo.params.parambyname('orden').value := tsNumeroOrden.Text ;
                           ordenesdetrabajo.open ;
                       End
                       Else
                       Begin
                           ordenesdetrabajo.active := false ;
                           ordenesdetrabajo.sql.Clear ;
                           ordenesdetrabajo.SQL.Add('Select o.sNumeroOrden, c.sIdConvenio from ordenesdetrabajo o ' +
                                                    'INNER JOIN configuracion c ON (o.sContrato = c.sContrato) ' +
                                                    'where o.sContrato = :Contrato order by o.sNumeroOrden') ;
                           ordenesdetrabajo.params.parambyname('contrato').datatype := ftstring ;
                           ordenesdetrabajo.params.parambyname('contrato').value := qrycontratos.fieldvalues['scontrato'] ;
                           ordenesdetrabajo.open ;
                       End ;

                       ordenesdetrabajo.first ;
                       while not ordenesdetrabajo.eof do
                       begin
                           procdelete( command, qrycontratos.fieldvalues['scontrato'] ,  ordenesdetrabajo.fieldvalues['snumeroorden'] , 'estimaciones',  'XXX', 'XXX', tdfechafinal.date ) ;
                           procinserta( command, qrycontratos.fieldvalues['scontrato'] ,  ordenesdetrabajo.fieldvalues['snumeroorden'] , 'estimaciones', 'XXX', 'XXX', tdfechafinal.date ) ;
                           ordenesdetrabajo.Next
                       end ;
                       procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'ordendecambio', 'XXX' , 'XXX' ) ;

                   end ;

                   if (chkparametros.checked) then
                      if (tspassword.text = 'XDAEFE') then
                      begin
                           // convenios ..
                           sconvenioorigen := tsidconvenio.text ;
                           sopcion := 'sincroniza' ;
                           if tblcontratos.checked then
                           begin
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'contratos', 'XXX' , 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'contratos', 'XXX' , 'XXX' ) ;
                               ticomentarios.lines.add('contrato actualizado ... ok') ;
                           end ;
                           if tblconfiguracion.checked then
                           begin
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'configuracion', 'XXX' , 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'configuracion', 'XXX' , 'XXX' ) ;
                               ticomentarios.lines.add('configuracion actualizada ... ok') ;
                           end ;
                           if tblconvenios.checked then
                           begin
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'convenios', 'XXX' , sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'convenios', 'XXX' , sconvenioorigen ) ;
                               ticomentarios.lines.add('todos los convenios actualizados ... ok') ;
                           end ;
                           if tblanexosmensuales.checked then
                           begin
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'anexosmensuales', 'XXX' , sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'anexosmensuales', 'XXX' , sconvenioorigen ) ;
                               ticomentarios.lines.add('anexos mensuales actualizado ... ok') ;
                           end ;
                           if tblactividadesxanexo.checked then
                           begin
                               // anexo c ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] , 'actividadesxanexo', 'XXX', sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'actividadesxanexo', 'XXX', sconvenioorigen ) ;
                               ticomentarios.lines.add('todos las partidas anexo en los distintos convenios actualizado ... ok') ;
                           end ;
                           if tblordenesdetrabajo.checked then
                           begin
                               // ordenesdetrabajo ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] , 'ordenesdetrabajo', tsnumeroorden.text , 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'ordenesdetrabajo', tsnumeroorden.text, 'XXX' ) ;
                               ticomentarios.lines.add('todos las ordenes de trabajo actualizadas ... ok') ;
                           end ;
                           if tblactividadesxorden.checked then
                           begin
                               // actividades x orden ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'actividadesxorden', tsnumeroorden.text, sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'actividadesxorden', tsnumeroorden.text, sconvenioorigen ) ;
                               ticomentarios.lines.add('todos las partidas de las ordenes de trabajo en los distintos convenios actualizado ... ok') ;
                           end ;
                           if tblavancesprogramados.checked then
                           begin
                               // avances programados ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'avancesglobales', tsnumeroorden.text, sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'avancesglobales', tsnumeroorden.text, sconvenioorigen) ;
                               ticomentarios.lines.add('todos los avances programados en los distintos convenios actualizado ... ok') ;
                           end ;
                           if tblavancesfisicos.checked then
                           begin
                               // avances fisicos ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'avancesglobalesxorden', tsnumeroorden.text, sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'avancesglobalesxorden', tsnumeroorden.text, sconvenioorigen ) ;
                               ticomentarios.lines.add('todos los avances fisicos en los distintos convenios actualizado ... ok') ;
                           end ;
                           if tbldistribuciondeactividades.checked then
                           begin
                               // distribucion de actividades ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'distribuciondeactividades', tsnumeroorden.text, sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'distribuciondeactividades', tsnumeroorden.text, sconvenioorigen ) ;
                               ticomentarios.lines.add('todas las distribuciones del programa de trabajo en los distintos convenios actualizado ... ok') ;
                           end ;
                           if tbldistribuciondeanexo.checked then
                           begin
                               // distribucion de actividades anexo ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'distribuciondeanexo', 'XXX', sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'distribuciondeanexo', 'XXX', sconvenioorigen ) ;
                               ticomentarios.lines.add('todas las distribuciones del anexo en los distintos convenios actualizado ... ok') ;
                           end ;
                           if tblalcances.checked then
                           begin
                               // alcances ... ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'alcancesxactividad', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'alcancesxactividad', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todas los alcances x partida actualizado ... ok') ;
                           end ;
                           if tblavancesxactividad.checked then
                           begin
                               // avances por paquetes ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'avancesxactividad', tsnumeroorden.text,  sconvenioorigen ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'avancesxactividad', tsnumeroorden.text, sconvenioorigen ) ;
                               ticomentarios.lines.add('todos los avances de los distintos paquetes en los distintos convenios actualizado ... ok') ;
                           end ;
                           if tbltiposdemovimiento.checked then
                           begin
                               // avances por paquetes ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'tiposdemovimiento', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'tiposdemovimiento', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todos los tipos de movimiento ... ok') ;
                           end ;
                           if tblturnos.checked then
                           begin
                               // avances por paquetes ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'turnos', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'turnos', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todos los turnos ... ok') ;
                           end ;
                           if tblpersonal.checked then
                           begin
                               // avances por paquetes ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'personal', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'personal', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todo el personal ... ok') ;
                           end ;
                           if tblequipos.checked then
                           begin
                               // avances por paquetes ..
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'equipos', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'equipos', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todo el equipo ... ok') ;
                           end ;
                           if tblgrupos.checked then
                           begin
                               // avances grupos ...
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'gruposisometrico', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'gruposisometrico', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todo los grupos de isometricos ... ok') ;
                           end ;
                           if tblisometricos.checked then
                           begin
                               // avances grupos ...
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'isometricos', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'isometricos', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todo los isometricos ... ok') ;
                           end ;
                           if tblfirmas.checked then
                           begin
                               // firmantes ...
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'firmas', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'firmas', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todas las firmas... ok') ;
                           end ;
                           if tblTrinomio.checked then
                           begin
                               // trinomios ...
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'contrato_trinomio', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'contrato_trinomio', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todo los trinomios del contrato ... ok') ;
                           end ;
                           if tblOrdenCambio.checked then
                           begin
                               // trinomios ...
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'ordendecambio', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'ordendecambio', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todas las ordendes de cambio del contrato ... ok') ;
                           end ;

                           if tblconfiguraciongral.checked then
                           begin
                                // configuración general del sistema ...
                                // departamentos ...
                               procdeletecnf( command, 'XXX' ,  'departamentos', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'departamentos', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('departamentos... ok') ;
                                // embarcaciones ...
                               procdeletecnf( command, qrycontratos.fieldvalues['scontrato'] ,  'embarcaciones', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, qrycontratos.fieldvalues['scontrato'] , 'embarcaciones', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('embarcaciones... ok') ;
                                // estatus ...
                               procdeletecnf( command, 'XXX' ,  'estatus', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'estatus', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('estatus... ok') ;
                                // fases x proyecto ...
                               procdeletecnf( command, 'XXX' ,  'fasesxproyecto', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'fasesxproyecto', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('fases x proyecto... ok') ;
                                // grupos ...
                               procdeletecnf( command, 'XXX' ,  'grupos', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'grupos', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('grupos... ok') ;
                                // grupos isometrico ...
                               procdeletecnf( command, 'XXX' ,  'gruposisometrico', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'gruposisometrico', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('gruposisometrico... ok') ;
                                // grupos x programa ...
                               procdeletecnf( command, 'XXX' ,  'gruposxprograma', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'gruposxprograma', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('gruposxprograma... ok') ;
                                // pernoctan ...
                               procdeletecnf( command, 'XXX' ,  'pernoctan', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'pernoctan', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('pernoctan... ok') ;
                                // plataformas ...
                               procdeletecnf( command, 'XXX' ,  'plataformas', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'plataformas', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('plataformas... ok') ;
                                // programas ...
                               procdeletecnf( command, 'XXX' ,  'programas', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'programas', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('programas... ok') ;
                                // proveedores ...
                               procdeletecnf( command, 'XXX' ,  'proveedores', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'proveedores', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('proveedores... ok') ;
                                // residencias ...
                               procdeletecnf( command, 'XXX' ,  'residencias', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'residencias', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('residencias.. ok') ;
                                // tiposdeconvenio ...
                               procdeletecnf( command, 'XXX' ,  'tiposdeconvenio', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'tiposdeconvenio', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('tipos de convenio.. ok') ;
                                // tiposdeembarcación ...
                               procdeletecnf( command, 'XXX' ,  'tiposdeembarcacion', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'tiposdeembarcacion', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('tipos de embarcación.. ok') ;
                                // tiposdeequipo ...
                               procdeletecnf( command, 'XXX' ,  'tiposdeequipo', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'tiposdeequipo', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('tipos de equipos.. ok') ;
                                // tiposdeestimacion...
                               procdeletecnf( command, 'XXX' ,  'tiposdeestimacion', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'tiposdeestimacion', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('tipos de estimacion.. ok') ;

                                // tiposdeinventario...
                               procdeletecnf( command, 'XXX' ,  'tiposdeinventario', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'tiposdeinventario', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('tipos de inventario.. ok') ;

                                // tiposdeorden...
                               procdeletecnf( command, 'XXX' ,  'tiposdeorden', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'tiposdeorden', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('tipos de orden.. ok') ;

                                // tiposdepermiso...
                               procdeletecnf( command, 'XXX' ,  'tiposdepermiso', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'tiposdepermiso', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('tipos de permiso.. ok') ;

                                // tiposdepersonal...
                               procdeletecnf( command, 'XXX' ,  'tiposdepersonal', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'tiposdepersonal', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('tipos de personal.. ok') ;

                                // activos ...
                               procdeletecnf( command, 'XXX' ,  'activos', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'activos', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todos los activos.. ok') ;

                                // activos ...
                               procdeletecnf( command, 'XXX' ,  'inteligent_message', 'XXX', 'XXX' ) ;
                               procinsertacnf( command, 'XXX' , 'inteligent_message', 'XXX', 'XXX' ) ;
                               ticomentarios.lines.add('todos los mensajes.. ok') ;


                           end ;

                       end
                       else
                           messagedlg('la contraseña del usuario intel-code es incorrecta.', mtwarning, [mbok], 0) ;
                   qrycontratos.next
               end ;
               ticomentarios.lines.add('finalizando sincronización del servidor ' + sserver) ;
//           except
//               ticomentarios.lines.add('ocurrio un error al sincronizar el servidor ' + sserver) ;
//           end
         end ;
   ticomentarios.lines.add('proceso de sincronización finalizado') ;
end;


procedure Tfrm_principal.procdeletecnf ( dbparam : TZReadOnlyQuery; sparamcontrato, sparamtable, sparamorden, sparamconvenio : string) ;
var
    scomando : string ;
begin
    if sparamtable = 'avisos de embarque' then
    begin
        scomando := 'delete from anexo_suministro where scontrato = :contrato ' ;
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( scomando ) ;
        dbparam.params.parambyname('contrato').datatype := ftstring ;
        dbparam.params.parambyname('contrato').value := sparamcontrato ;
        dbparam.ExecSQL ;

        scomando := 'delete from anexo_psuministro where scontrato = :contrato ' ;
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( scomando ) ;
        dbparam.params.parambyname('contrato').datatype := ftstring ;
        dbparam.params.parambyname('contrato').value := sparamcontrato ;
        dbparam.ExecSQL ;
    end
    else
        if sparamtable = 'requisiciones' then
        begin
            scomando := 'delete from anexo_requisicion where scontrato = :contrato ' ;
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( scomando ) ;
            dbparam.params.parambyname('contrato').datatype := ftstring ;
            dbparam.params.parambyname('contrato').value := sparamcontrato ;
            dbparam.ExecSQL ;

            scomando := 'delete from anexo_prequisicion where scontrato = :contrato ' ;
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( scomando ) ;
            dbparam.params.parambyname('contrato').datatype := ftstring ;
            dbparam.params.parambyname('contrato').value := sparamcontrato ;
            dbparam.ExecSQL ;
        end
        else
            if sparamtable = 'ordenes de compra' then
            begin
                scomando := 'delete from anexo_pedidos where scontrato = :contrato ' ;
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( scomando ) ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.ExecSQL ;

                scomando := 'delete from anexo_ppedido where scontrato = :contrato ' ;
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( scomando ) ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.ExecSQL ;
            end
            else
            begin
                scomando := 'delete from ' + sparamtable ;
                if uppercase(sparamcontrato) <> 'XXX' then
                    scomando := scomando + ' where scontrato = :contrato ' ;
                if uppercase(sparamorden) <> 'XXX' then
                    scomando := scomando + ' and snumeroorden = :orden ' ;
                if uppercase(sparamconvenio) <> 'XXX' then
                    scomando := scomando + ' and sidconvenio = :convenio ' ;

                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( scomando ) ;
                if uppercase(sparamcontrato) <> 'XXX' then
                begin
                    dbparam.params.parambyname('contrato').datatype := ftstring ;
                    dbparam.params.parambyname('contrato').value := sparamcontrato ;
                end ;
                if uppercase(sparamorden) <> 'XXX' then
                begin
                    dbparam.params.parambyname('orden').datatype := ftstring ;
                    dbparam.params.parambyname('orden').value := sparamorden ;
                end ;
                if uppercase(sparamconvenio) <> 'XXX' then
                begin
                    dbparam.params.parambyname('convenio').datatype := ftstring ;
                    dbparam.params.parambyname('convenio').value := sparamconvenio ;
                end ;
                dbparam.ExecSQL ;
            end
end;


procedure Tfrm_principal.procdelete( dbparam : tzReadOnlyQuery; sparamcontrato, sparamorden, sparamtable, sparamreporte, sparamturno : string; dparamfecha : tdate) ;
begin
    if (sparamtable = 'estimaciones') then
    begin
        qrydestino.active := false ;
        qrydestino.sql.clear ;
        qrydestino.sql.add('select inumeroestimacion from estimacionperiodo where scontrato = :contrato and year(dfechainicio) = :anno and month(dfechafinal) = :mes') ;
        qrydestino.params.parambyname('contrato').datatype := ftstring ;
        qrydestino.params.parambyname('contrato').value := sparamcontrato ;
        qrydestino.params.parambyname('anno').datatype  := ftinteger ;
        qrydestino.params.parambyname('anno').value     := yearof(dparamfecha) ;
        qrydestino.params.parambyname('mes').datatype   := ftinteger ;
        qrydestino.params.parambyname('mes').value      := monthof(dparamfecha) ;
        qrydestino.open ;
        while not qrydestino.eof do
        begin
            adoconsulta2.active := false ;
            adoconsulta2.sql.clear ;
            adoconsulta2.sql.add('select snumeroorden, snumerogenerador from estimaciones where scontrato = :contrato and inumeroestimacion = :estimacion and snumeroorden = :orden') ;
            adoconsulta2.params.parambyname('contrato').datatype := ftstring ;
            adoconsulta2.params.parambyname('contrato').value := sparamcontrato ;
            adoconsulta2.params.parambyname('estimacion').datatype := ftstring ;
            adoconsulta2.params.parambyname('estimacion').value := qrydestino.fieldvalues['inumeroestimacion'] ;
            adoconsulta2.params.parambyname('orden').datatype := ftstring ;
            adoconsulta2.params.parambyname('orden').value := sparamorden ;
            adoconsulta2.open ;
            while not adoconsulta2.eof do
            begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( 'delete from estimacionxpartida where scontrato = :contrato and snumeroorden = :orden and snumerogenerador = :generador') ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.params.parambyname('orden').datatype := ftstring ;
                dbparam.params.parambyname('orden').value := adoconsulta2.fieldvalues['snumeroorden'] ;
                dbparam.params.parambyname('generador').datatype := ftstring ;
                dbparam.params.parambyname('generador').value := adoconsulta2.fieldvalues['snumerogenerador'] ;
                dbparam.ExecSQL ;
                adoconsulta2.next
            end ;

            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( 'delete from estimaciones where scontrato = :contrato and inumeroestimacion = :estimacion and snumeroorden = :orden') ;
            dbparam.params.parambyname('contrato').datatype := ftstring ;
            dbparam.params.parambyname('contrato').value := sparamcontrato ;
            dbparam.params.parambyname('estimacion').datatype := ftstring ;
            dbparam.params.parambyname('estimacion').value := qrydestino.fieldvalues['inumeroestimacion'] ;
            dbparam.params.parambyname('orden').datatype := ftstring ;
            dbparam.params.parambyname('orden').value := sparamorden ;
            dbparam.ExecSQL ;

            qrydestino.next
        end ;
    end ;

    if sparamtable ='reportefotografico' then
    begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( 'delete from reportefotografico where scontrato = :contrato and snumeroreporte = :reporte') ;
        dbparam.params.parambyname('contrato').datatype := ftstring ;
        dbparam.params.parambyname('contrato').value := sparamcontrato ;
        dbparam.params.parambyname('reporte').datatype := ftstring ;
        dbparam.params.parambyname('reporte').value := sparamreporte ;
        dbparam.ExecSQL ;
    end ;

    if (sparamtable = 'recursos') or (sparamtable = 'tripulaciondiaria') or (sparamtable = 'tripulaciondiaria_listado')or (sparamtable = 'movimientosdeembarcacion')
       or (sparamtable = 'condicionesmeteorologicas') or (sparamtable = 'fasesxorden') or (sparamtable = 'tripulacionpernocta') then
    begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        if sparamtable <> 'fasesxorden' then
        begin
            dbparam.SQL.Add ( 'delete from '+sparamtable+' where scontrato = :contrato and dIdFecha = :fecha') ;
            dbparam.params.parambyname('contrato').datatype := ftstring ;
            dbparam.params.parambyname('contrato').value    := sparamcontrato ;
        end
        else
           dbparam.SQL.Add ( 'delete from '+sparamtable+' where dIdFecha = :fecha') ;
        dbparam.params.parambyname('fecha').datatype    := ftDate ;
        dbparam.params.parambyname('fecha').value       := dparamfecha ;
        dbparam.ExecSQL;
    end;

    if sparamtable ='bitacoradeactividades' then
    begin
        qrydestino.active := false ;
        qrydestino.sql.clear ;
        qrydestino.sql.add('select sidtipomovimiento from tiposdemovimiento where scontrato = :contrato and sclasificacion = "notas"') ;
        qrydestino.params.parambyname('contrato').datatype := ftstring ;
        qrydestino.params.parambyname('contrato').value := sparamcontrato ;
        qrydestino.open ;
        while not qrydestino.eof do
        begin
             adoconsulta2.active := false ;
             adoconsulta2.sql.clear ;
             adoconsulta2.sql.add('select iiddiario from bitacoradeactividades where scontrato = :contrato and snumeroorden = :orden and didfecha = :fecha and sidtipomovimiento = :tipo and sidturno = :turno') ;
             adoconsulta2.params.parambyname('contrato').datatype := ftstring ;
             adoconsulta2.params.parambyname('contrato').value := sparamcontrato ;
             adoconsulta2.params.parambyname('orden').datatype := ftstring ;
             adoconsulta2.params.parambyname('orden').value := sparamorden ;
             adoconsulta2.params.parambyname('fecha').datatype := ftdate ;
             adoconsulta2.params.parambyname('fecha').value := dparamfecha ;
             adoconsulta2.params.parambyname('tipo').datatype := ftstring ;
             adoconsulta2.params.parambyname('tipo').value := qrydestino.fieldvalues['sidtipomovimiento'];
             adoconsulta2.params.parambyname('turno').datatype := ftstring ;
             adoconsulta2.params.parambyname('turno').value := sparamturno ;
             adoconsulta2.open ;
             while not adoconsulta2.eof do
             begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( 'delete from bitacoradepersonal where scontrato = :contrato and didfecha = :fecha and iiddiario = :diario') ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.params.parambyname('fecha').datatype := ftdate ;
                dbparam.params.parambyname('fecha').value := dparamfecha ;
                dbparam.params.parambyname('diario').datatype := ftinteger ;
                dbparam.params.parambyname('diario').value := adoconsulta2.fieldvalues['iiddiario'] ;
                dbparam.ExecSQL ;

                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( 'delete from bitacoradeequipos where scontrato = :contrato and didfecha = :fecha and iiddiario = :diario') ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.params.parambyname('fecha').datatype := ftdate ;
                dbparam.params.parambyname('fecha').value := dparamfecha ;
                dbparam.params.parambyname('diario').datatype := ftinteger ;
                dbparam.params.parambyname('diario').value := adoconsulta2.fieldvalues['iiddiario'] ;
                dbparam.ExecSQL ;
                adoconsulta2.next
             end ;

             dbParam.Active := False ;
             dbParam.SQL.Clear ;
             dbparam.SQL.Add ( 'delete from bitacoradeactividades where scontrato = :contrato and snumeroorden = :orden and didfecha = :fecha and sidtipomovimiento = :tipo and sidturno = :turno') ;
             dbparam.params.parambyname('contrato').datatype := ftstring ;
             dbparam.params.parambyname('contrato').value := sparamcontrato ;
             dbparam.params.parambyname('orden').datatype := ftstring ;
             dbparam.params.parambyname('orden').value := sparamorden ;
             dbparam.params.parambyname('fecha').datatype := ftdate ;
             dbparam.params.parambyname('fecha').value := dparamfecha ;
             dbparam.params.parambyname('tipo').datatype := ftstring ;
             dbparam.params.parambyname('tipo').value := qrydestino.fieldvalues['sidtipomovimiento'];
             dbparam.params.parambyname('turno').datatype := ftstring ;
             dbparam.params.parambyname('turno').value := sparamturno ;
             dbparam.ExecSQL ;
             qrydestino.next
         end
    end ;

    if sparamtable ='volumen de obra' then
    begin
        qrydestino.active := false ;
        qrydestino.sql.clear ;
        qrydestino.sql.add('select sidtipomovimiento from tiposdemovimiento where scontrato = :contrato and sclasificacion = "tiempo en operacion"') ;
        qrydestino.params.parambyname('contrato').datatype := ftstring ;
        qrydestino.params.parambyname('contrato').value := sparamcontrato ;
        qrydestino.open ;
        while not qrydestino.eof do
        begin
             adoconsulta2.active := false ;
             adoconsulta2.sql.clear ;
             adoconsulta2.sql.add('select iiddiario from bitacoradeactividades where scontrato = :contrato and snumeroorden = :orden and didfecha = :fecha and sidtipomovimiento = :tipo and sidturno = :turno') ;
             adoconsulta2.params.parambyname('contrato').datatype := ftstring ;
             adoconsulta2.params.parambyname('contrato').value := sparamcontrato ;
             adoconsulta2.params.parambyname('orden').datatype := ftstring ;
             adoconsulta2.params.parambyname('orden').value := sparamorden ;
             adoconsulta2.params.parambyname('fecha').datatype := ftdate ;
             adoconsulta2.params.parambyname('fecha').value := dparamfecha ;
             adoconsulta2.params.parambyname('tipo').datatype := ftstring ;
             adoconsulta2.params.parambyname('tipo').value := qrydestino.fieldvalues['sidtipomovimiento'];
             adoconsulta2.params.parambyname('turno').datatype := ftstring ;
             adoconsulta2.params.parambyname('turno').value := sparamturno ;
             adoconsulta2.open ;
             while not adoconsulta2.eof do
             begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( 'delete from bitacoradepersonal where scontrato = :contrato and didfecha = :fecha and iiddiario = :diario') ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.params.parambyname('fecha').datatype := ftdate ;
                dbparam.params.parambyname('fecha').value := dparamfecha ;
                dbparam.params.parambyname('diario').datatype := ftinteger ;
                dbparam.params.parambyname('diario').value := adoconsulta2.fieldvalues['iiddiario'] ;
                dbparam.ExecSQL ;

                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( 'delete from bitacoradeequipos where scontrato = :contrato and didfecha = :fecha and iiddiario = :diario') ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.params.parambyname('fecha').datatype := ftdate ;
                dbparam.params.parambyname('fecha').value := dparamfecha ;
                dbparam.params.parambyname('diario').datatype := ftinteger ;
                dbparam.params.parambyname('diario').value := adoconsulta2.fieldvalues['iiddiario'] ;
                dbparam.ExecSQL ;

                adoconsulta2.next
             end ;
             dbParam.Active := False ;
             dbParam.SQL.Clear ;
             dbparam.SQL.Add ( 'delete from bitacoradeactividades where scontrato = :contrato and snumeroorden = :orden and didfecha = :fecha and sidtipomovimiento = :tipo and sidturno = :turno') ;
             dbparam.params.parambyname('contrato').datatype := ftstring ;
             dbparam.params.parambyname('contrato').value := sparamcontrato ;
             dbparam.params.parambyname('orden').datatype := ftstring ;
             dbparam.params.parambyname('orden').value := sparamorden ;
             dbparam.params.parambyname('fecha').datatype := ftdate ;
             dbparam.params.parambyname('fecha').value := dparamfecha ;
             dbparam.params.parambyname('tipo').datatype := ftstring ;
             dbparam.params.parambyname('tipo').value := qrydestino.fieldvalues['sidtipomovimiento'];
             dbparam.params.parambyname('turno').datatype := ftstring ;
             dbparam.params.parambyname('turno').value := sparamturno ;
             dbparam.ExecSQL ;
             qrydestino.next
         end
    end ;

    if (sparamtable = 'bitacoradealcances') then
    begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( 'delete from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha and snumeroorden = :orden and sidturno = :turno') ;
        dbparam.params.parambyname('contrato').datatype := ftstring ;
        dbparam.params.parambyname('contrato').value := sparamcontrato ;
        dbparam.params.parambyname('fecha').datatype := ftdate ;
        dbparam.params.parambyname('fecha').value := dparamfecha ;
        dbparam.params.parambyname('orden').datatype := ftstring ;
        dbparam.params.parambyname('orden').value := sparamorden ;
        dbparam.params.parambyname('turno').datatype := ftstring ;
        dbparam.params.parambyname('turno').value := sparamturno ;
        dbparam.ExecSQL ;
    end ;

    if sparamtable ='avisos de embarque' then
    begin
        qrydestino.active := false ;
        qrydestino.sql.clear ;
        qrydestino.sql.add('select * from anexo_suministro where scontrato = :contrato and didfecha = :fecha') ;
        qrydestino.params.parambyname('contrato').datatype := ftstring ;
        qrydestino.params.parambyname('contrato').value := sparamcontrato ;
        qrydestino.params.parambyname('fecha').datatype := ftdate ;
        qrydestino.params.parambyname('fecha').value := dparamfecha ;
        qrydestino.open ;
        while not qrydestino.eof do
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( 'delete from anexo_psuministro where scontrato = :contrato and ifolio = :folio') ;
            dbparam.params.parambyname('contrato').datatype := ftstring ;
            dbparam.params.parambyname('contrato').value := qrydestino.fieldvalues['scontrato'] ;
            dbparam.params.parambyname('folio').datatype := ftinteger ;
            dbparam.params.parambyname('folio').value := qrydestino.fieldvalues['ifolio'] ;
            dbparam.ExecSQL ;
            qrydestino.next
        end ;
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( 'delete from anexo_suministro where scontrato = :contrato and didfecha = :fecha')  ;
        dbparam.params.parambyname('contrato').datatype := ftstring ;
        dbparam.params.parambyname('contrato').value := sparamcontrato ;
        dbparam.params.parambyname('fecha').datatype := ftdate ;
        dbparam.params.parambyname('fecha').value := dparamfecha ;
        dbparam.ExecSQL ;
    end ;

    if (sparamtable = 'bitacoradepersonal') or (sparamtable = 'bitacoradeequipos') then
    begin
        qrydestino.active := false ;
        qrydestino.sql.clear ;
        qrydestino.sql.add('select iiddiario from bitacoradeactividades where scontrato = :contrato and snumeroorden = :orden and didfecha = :fecha and sidturno = :turno') ;
        qrydestino.params.parambyname('contrato').datatype := ftstring ;
        qrydestino.params.parambyname('contrato').value := sparamcontrato ;
        qrydestino.params.parambyname('orden').datatype := ftstring ;
        qrydestino.params.parambyname('orden').value := sparamorden ;
        qrydestino.params.parambyname('fecha').datatype := ftdate ;
        qrydestino.params.parambyname('fecha').value := dparamfecha ;
        qrydestino.params.parambyname('turno').datatype := ftstring ;
        qrydestino.params.parambyname('turno').value := sparamturno ;
        qrydestino.open ;
        while not qrydestino.eof do
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( 'delete from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha and iiddiario = :diario')  ;
            dbparam.params.parambyname('contrato').datatype := ftstring ;
            dbparam.params.parambyname('contrato').value := sparamcontrato ;
            dbparam.params.parambyname('fecha').datatype := ftdate ;
            dbparam.params.parambyname('fecha').value := dparamfecha ;
            dbparam.params.parambyname('diario').datatype := ftinteger ;
            dbparam.params.parambyname('diario').value := qrydestino.fieldvalues['iiddiario'] ;
            dbparam.ExecSQL ;
            qrydestino.next ;
        end
    end ;

    if (sparamtable = 'jornadasdiarias') or (sparamtable = 'tramitedepermisos')
        or (sparamtable = 'reportediario') or (sparamtable = 'bitacoradepaquetes') then
    begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        if sparamturno = 'XXX' then
            dbparam.SQL.Add (  'delete from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha and snumeroorden = :orden ')
        else
            dbparam.SQL.Add (  'delete from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha and snumeroorden = :orden and sidturno = :turno') ;

        dbparam.params.parambyname('contrato').datatype := ftstring ;
        dbparam.params.parambyname('contrato').value := sparamcontrato ;
        dbparam.params.parambyname('fecha').datatype := ftdate ;
        dbparam.params.parambyname('fecha').value := dparamfecha ;
        dbparam.params.parambyname('orden').datatype := ftstring ;
        dbparam.params.parambyname('orden').value := sparamorden ;
        if sparamturno <> 'XXX' then
        begin
            dbparam.params.parambyname('turno').datatype := ftstring ;
            dbparam.params.parambyname('turno').value := sparamturno ;
        end ;

        dbparam.ExecSQL ;
     end ;

     if (sparamtable = 'avancesglobalesxorden') or (sparamtable = 'actividadescanceladas') then
     begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( 'delete from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha') ;
        dbparam.params.parambyname('contrato').datatype := ftstring ;
        dbparam.params.parambyname('contrato').value := sparamcontrato ;
        dbparam.params.parambyname('fecha').datatype := ftdate ;
        dbparam.params.parambyname('fecha').value := dparamfecha ;
        dbparam.ExecSQL ;
     end ;
end ;


procedure Tfrm_principal.chkParametrosClick(Sender: TObject);
begin
    if chkparametros.checked then
    begin
        chkreportes.enabled := false ;
        chkgeneradores.enabled := false ;
        chkconfiguracion.enabled := false ;
        chkreportes.checked := false ;
        chkgeneradores.checked := false ;
        chkconfiguracion.checked := false ;
        grtablas.visible := true ;
    end
    else
    begin
        tblcontratos.checked := false ;
        tblconfiguracion.checked := false ;
        tblconvenios.checked := false ;
        tblanexosmensuales.checked := false ;
        tblactividadesxanexo.checked := false ;
        tblordenesdetrabajo.checked := false ;
        tblactividadesxorden.checked := false ;
        tblavancesprogramados.checked := false ;
        tblavancesfisicos.checked := false ;
        tbldistribuciondeactividades.checked := false ;
        tbldistribuciondeanexo.checked := false ;
        tblalcances.checked := false ;
        tblavancesxactividad.checked := false ;
        tbltiposdemovimiento.checked := false ;
        tblturnos.checked := false ;
        tblpersonal.checked := false ;
        tblequipos.checked := false ;
        tblgrupos.checked := false ;
        tblisometricos.checked := false ;
        tblfirmas.checked := false ;
        tblconfiguraciongral.checked := false ;

        chkreportes.enabled := true ;
        chkgeneradores.enabled := true ;
        chkconfiguracion.enabled := true ;
        chkreportes.checked := true ;
        chkgeneradores.checked := true ;
        chkconfiguracion.checked := true ;
        grtablas.visible := false ;        
    end
end;

procedure Tfrm_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  adoconexion.Disconnect ;
  adoconexion2.Disconnect ;
  action := cafree ;
end;


function Tfrm_principal.funccomparacnf( dbparamorigen, dbparamdestino : tzReadOnlyQuery; sparamcontrato, sparamtable, sparamorden, sparamconvenio, sparamtipo : string) : boolean;
var
    irecord   : byte ;
    lcontinua : boolean ;
    scomando : string ;
begin
    scomando := 'select * from ' + sparamtable + ' where scontrato = :contrato ' ;
    if sparamorden <> 'XXX' then
        scomando := scomando + ' and snumeroorden = :orden ' ;
    if sparamconvenio <> 'XXX' then
        scomando := scomando + ' and sidconvenio = :convenio ' ;

    dbparamorigen.active := false ;
    dbparamorigen.sql.clear ;
    dbparamorigen.sql.add(scomando) ;
    dbparamorigen.params.parambyname('contrato').datatype := ftstring ;
    dbparamorigen.params.parambyname('contrato').value := sparamcontrato ;

    dbparamdestino.active := false ;
    dbparamdestino.sql.clear ;
    dbparamdestino.sql.add( scomando ) ;
    dbparamdestino.params.parambyname('contrato').datatype := ftstring ;
    dbparamdestino.params.parambyname('contrato').value := sparamcontrato ;

    if sparamorden <> 'XXX' then
    begin
        dbparamorigen.params.parambyname('orden').datatype := ftstring ;
        dbparamorigen.params.parambyname('orden').value := sparamorden ;
        dbparamdestino.params.parambyname('orden').datatype := ftstring ;
        dbparamdestino.params.parambyname('orden').value := sparamorden ;
    end ;

    if sparamconvenio <> 'XXX' then
    begin
        dbparamorigen.params.parambyname('convenio').datatype := ftstring ;
        dbparamorigen.params.parambyname('convenio').value := sparamconvenio ;
        dbparamdestino.params.parambyname('convenio').datatype := ftstring ;
        dbparamdestino.params.parambyname('convenio').value := sparamconvenio ;
    end ;
    dbparamorigen.open ;
    dbparamdestino.open ;

    lcontinua := true ;
    if dbparamorigen.recordcount <> dbparamdestino.recordcount then
         lcontinua := false ;

    if (sparamtipo = 'extendida') then
        while not dbparamorigen.eof and lcontinua do
        begin
            if not dbparamdestino.eof then
            begin
                dbparamdestino.recno := dbparamorigen.recno ;
                irecord := 0 ;
                while (irecord < dbparamorigen.fieldcount) and lcontinua do
                begin
                    if dbparamorigen.fields[irecord ].value <> dbparamdestino.fields[irecord ].value then
                        lcontinua := false ;
                    irecord := irecord + 1
                end
            end
            else
                lcontinua := false ;
            dbparamorigen.next
        end ;
    result := lcontinua
end ;

procedure Tfrm_principal.FormShow(Sender: TObject);
var
    miarchivo : string ;
    filetext  : textfile ;
    wcadena   : widestring ;
    stipo     : String ;
    iPos      : Byte ;
begin
//    global_db := 'inteligent' ;
    lvalido := false ;
    chkservidores.items.clear ;
    miarchivo := ExtractFilePath(Application.Exename) + 'inteligent.ini' ;
    assignfile (filetext, miarchivo) ;
    reset(filetext) ;
    while not eof (filetext) do
    begin
        readln (filetext, wcadena) ;
        iPos := Pos ( '=' , wCadena) ;
        If UpperCase(MidStr ( wCadena , 1 , iPos - 1 )) = 'DATA_NAME' Then
            If MidStr ( wCadena , 1 , Pos ( '=' , wCadena ) - 1 ) <> '' Then
                 global_db := MidStr( wCadena , Pos ( '=' , wCadena ) + 1 , Length (wCadena))
            Else
                 global_db := 'inteligent'
        else
            if midstr ( wcadena , 1 , 1 ) = '[' then
                stipo := midstr ( wcadena , 1 , pos ( ']' , wcadena ))
            else
            begin
                if stipo = '[SERVER_PRINCIPAL]' then
                    tsserver.text := midstr ( wcadena , 1 , pos ( '=' , wcadena ) - 1 ) ;
                if stipo = '[SERV_SINC]' then
                    chkservidores.items.add(midstr ( wcadena , 1 , pos ( '=' , wcadena ) - 1 ))
            end
    end ;
    tdidfecha.date := date ;
    tdfechafinal.date := date ;
    closefile (filetext) ;
end;


procedure Tfrm_principal.procinserta( dbparam : tzreadOnlyQuery; sparamcontrato, sparamorden, sparamtable, sparamreporte, sparamturno : string; dparamfecha : tdate) ;
var
    sparametro : string;
    registro   : byte ;
begin
    if sparamtable ='estimaciones' then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from estimacionperiodo where scontrato = :contrato and dfechainicio <= :fechainicio and dfechafinal >= :fechafinal') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('fechainicio').datatype := ftdate ;
        qryorigen.params.parambyname('fechainicio').value := dparamfecha ;
        qryorigen.params.parambyname('fechafinal').datatype := ftdate ;
        qryorigen.params.parambyname('fechafinal').value := dparamfecha ;
        qryorigen.open ;
        If QryOrigen.RecordCount > 0 Then
        Begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'estimacionperiodo')) ;
        End ;
        while not qryorigen.eof do
        begin
            // primero se inserta la caratula de la estimación
            try
                dbParam.Active := False ;
                for registro := 0 to qryorigen.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                    If qryorigen.fields[registro].IsNull Then
                        dbparam.params.parambyname(sparametro).value := ''
                    Else
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                end ;
                dbparam.ExecSQL ;
            except

            end ;

            // primero remplazamos las caratulas del generador ...
            adoconsulta.active := false ;
            adoconsulta.sql.clear ;
            adoconsulta.sql.add('select * from estimaciones where scontrato = :contrato and inumeroestimacion = :estimacion and snumeroorden = :orden') ;
            adoconsulta.params.parambyname('contrato').datatype := ftstring ;
            adoconsulta.params.parambyname('contrato').value := sparamcontrato ;
            adoconsulta.params.parambyname('estimacion').datatype := ftstring ;
            adoconsulta.params.parambyname('estimacion').value := qryorigen.fieldvalues['inumeroestimacion'] ;
            adoconsulta.params.parambyname('orden').datatype := ftstring ;
            adoconsulta.params.parambyname('orden').value := sparamorden ;
            adoconsulta.open ;
            while not adoconsulta.eof do
            begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( 'delete from estimacionxpartida where scontrato = :contrato and snumeroorden = :orden and snumerogenerador = :generador') ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.params.parambyname('orden').datatype := ftstring ;
                dbparam.params.parambyname('orden').value := adoconsulta.fieldvalues['snumeroorden'] ;
                dbparam.params.parambyname('generador').datatype := ftstring ;
                dbparam.params.parambyname('generador').value := adoconsulta.fieldvalues['snumerogenerador'] ;
                dbparam.ExecSQL ;

                dbParam.Active := False ;
                dbParam.SQL.Clear  ;
                dbparam.SQL.Add ( 'delete from estimaciones where scontrato = :contrato and snumeroorden = :orden and snumerogenerador = :generador') ;
                dbparam.params.parambyname('contrato').datatype := ftstring ;
                dbparam.params.parambyname('contrato').value := sparamcontrato ;
                dbparam.params.parambyname('orden').datatype := ftstring ;
                dbparam.params.parambyname('orden').value := adoconsulta.fieldvalues['snumeroorden'] ;
                dbparam.params.parambyname('generador').datatype := ftstring ;
                dbparam.params.parambyname('generador').value := adoconsulta.fieldvalues['snumerogenerador'] ;
                dbparam.ExecSQL ;
                try
                    dbParam.Active := False ;
                    dbParam.SQL.Clear ;
                    dbparam.SQL.Add ( funcsql(adoconsulta , 'estimaciones') ) ;
                    for registro := 0 to adoconsulta.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := adoconsulta.fields[registro].datatype ;
                        If adoconsulta.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := adoconsulta.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                adoconsulta.next
            end ;

            // ahora remplazamos las partidas del generador
            adoconsulta.active := false ;
            adoconsulta.sql.clear ;
            adoconsulta.sql.add('select e2.* from estimaciones e ' +
                                'inner join estimacionxpartida e2 on (e.scontrato = e2.scontrato and e.snumeroorden = e2.snumeroorden and e.snumerogenerador = e2.snumerogenerador) ' +
                                'where e.scontrato = :contrato and e.inumeroestimacion = :estimacion and e.snumeroorden = :orden') ;
            adoconsulta.params.parambyname('contrato').datatype := ftstring ;
            adoconsulta.params.parambyname('contrato').value := sparamcontrato ;
            adoconsulta.params.parambyname('estimacion').datatype := ftstring ;
            adoconsulta.params.parambyname('estimacion').value := qryorigen.fieldvalues['inumeroestimacion'] ;
            adoconsulta.params.parambyname('orden').datatype := ftstring ;
            adoconsulta.params.parambyname('orden').value := sparamorden ;
            adoconsulta.open ;
            If adoConsulta.RecordCount > 0 Then
            Begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( funcsql(adoconsulta , 'estimacionxpartida') ) ;
            End ;
            while not adoconsulta.eof do
            begin
                dbParam.Active := False ;
                try
                    for registro := 0 to adoconsulta.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := adoconsulta.fields[registro].datatype ;
                        If adoconsulta.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := adoconsulta.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                adoconsulta.next
            end ;
            qryorigen.next
        end
    end ;

    if sparamtable ='reportefotografico' then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from reportefotografico where scontrato = :contrato and snumeroreporte = :reporte') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('reporte').datatype := ftstring ;
        qryorigen.params.parambyname('reporte').value := sparamreporte ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'reportefotografico') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end
    end ;

    if sparamtable ='bitacoradeactividades' then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select a.* from bitacoradeactividades a inner join tiposdemovimiento b on ' +
                          '(a.scontrato = b.scontrato and a.sidtipomovimiento = b.sidtipomovimiento and b.sclasificacion = "notas") ' +
                          'where a.scontrato = :contrato and a.snumeroorden = :orden and a.didfecha = :fecha and a.sidturno = :turno') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'bitacoradeactividades') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        //If (qryorigen.fields[registro].IsNull) and (registro <> 4) Then
                        //    dbparam.params.parambyname(sparametro).value := ''
                        //Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except
                end ;
                qryorigen.next
            end
        end
    end ;

    if sparamtable ='volumen de obra' then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select a.* from bitacoradeactividades a inner join tiposdemovimiento b on ' +
                          '(a.scontrato = b.scontrato and a.sidtipomovimiento = b.sidtipomovimiento and b.sclasificacion = "tiempo en operacion") ' +
                          'where a.scontrato = :contrato and a.snumeroorden = :orden and a.didfecha = :fecha and a.sidturno = :turno') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'bitacoradeactividades') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        //If qryorigen.fields[registro].IsNull Then
                        //    dbparam.params.parambyname(sparametro).value := ''
                        //Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end
    end ;

    if sparamtable ='bitacoradealcances' then
    begin
        // primero se insertan los alcances de las partidas ....
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select a.* from bitacoradealcances a where a.scontrato = :contrato and a.snumeroorden = :orden and a.didfecha = :fecha and a.sidturno = :turno') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'bitacoradealcances') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end ;

        // despues se insertan los verdaderos alcances ...
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select b.* from bitacoradealcances a  ' +
                          'inner join alcancesxactividad b on (a.scontrato = b.scontrato and a.snumeroactividad = b.snumeroactividad) ' +
                          'where a.scontrato = :contrato and a.snumeroorden = :orden and a.didfecha = :fecha and a.sidturno = :turno') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'alcancesxactividad') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except
                    // no lo grabo si existe ....
                end ;
                qryorigen.next
            end
        end ;
    end ;

    if sparamtable ='avisos de embarque' then
    begin
        // primero el encabezado del suministro
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from anexo_suministro where scontrato = :contrato and didfecha = :fecha') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'anexo_suministro') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end ;

            // partidas de todos los suministros
            qryorigen.first ;
            while not qryorigen.eof do
            begin
                adoconsulta.active := false ;
                adoconsulta.sql.clear ;
                adoconsulta.sql.add('select * from anexo_psuministro where scontrato = :contrato and ifolio = :folio') ;
                adoconsulta.params.parambyname('contrato').datatype := ftstring ;
                adoconsulta.params.parambyname('contrato').value := sparamcontrato ;
                adoconsulta.params.parambyname('folio').datatype := ftinteger ;
                adoconsulta.params.parambyname('folio').value := qryorigen.fieldvalues['ifolio'] ;
                adoconsulta.open ;
                if adoconsulta.recordcount > 0 then
                begin
                    dbParam.Active := False ;
                    dbParam.SQL.Clear ;
                    dbparam.SQL.Add ( funcsql(qryorigen , 'anexo_psuministro') ) ;
                    while not adoconsulta.eof do
                    begin
                        try
                            dbParam.Active := False ;
                            for registro := 0 to adoconsulta.fieldcount - 1 do
                            begin
                                sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                dbparam.params.parambyname(sparametro).datatype := adoconsulta.fields[registro].datatype ;
                                If adoconsulta.fields[registro].IsNull Then
                                    dbparam.params.parambyname(sparametro).value := ''
                                Else
                                    dbparam.params.parambyname(sparametro).value := adoconsulta.fields[registro].value ;
                            end ;
                            dbparam.ExecSQL ;
                        except

                        end ;
                        adoconsulta.next
                    end
                end ;
                qryorigen.next
            end
        end
    end ;

    if (sparamtable = 'bitacoradepersonal') or (sparamtable = 'bitacoradeequipos') then
    begin
        // primero se inserta la bitacora de personal o equipo segun sea el caso
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select a.* from ' + sparamtable + ' a inner join bitacoradeactividades b on ' +
                          '(a.scontrato = b.scontrato and a.didfecha = b.didfecha and a.iiddiario = b.iiddiario and b.snumeroorden = :orden and b.sidturno = :turno) ' +
                          'where a.scontrato = :contrato and a.didfecha = :fecha') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;

        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , sparamtable) ) ;
            while not qryorigen.eof do
            begin
                try
                //    QryOrigen.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                        If qryorigen.fields[registro].IsNull Then
//                             dbparam.params.parambyname(sparametro).value := ''
//                        Else
                             dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end ;

        // la tabla vinculada, metemos las diferencias ...
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        if (sparamtable = 'bitacoradepersonal') then
            qryorigen.sql.add('select distinct p.* from ' + sparamtable + ' a ' +
                              'inner join bitacoradeactividades b on (a.scontrato = b.scontrato and a.didfecha = b.didfecha and a.iiddiario = b.iiddiario and b.snumeroorden = :orden and b.sidturno = :turno) ' +
                              'inner join personal p on (a.scontrato = p.scontrato and a.sidpersonal = p.sidpersonal)' +
                              'where a.scontrato = :contrato and a.didfecha = :fecha')
        else
            qryorigen.sql.add('select distinct e.* from ' + sparamtable + ' a ' +
                              'inner join bitacoradeactividades b on (a.scontrato = b.scontrato and a.didfecha = b.didfecha and a.iiddiario = b.iiddiario and b.snumeroorden = :orden and b.sidturno = :turno) ' +
                              'inner join equipos e on (a.scontrato = e.scontrato and a.sidequipo = e.sidequipo)' +
                              'where a.scontrato = :contrato and a.didfecha = :fecha') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            if (sparamtable = 'bitacoradepersonal') then
                dbparam.SQL.Add ( funcsql(qryorigen , 'personal') )
            else
                dbparam.SQL.Add ( funcsql(qryorigen , 'equipos') ) ;

            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                        If qryorigen.fields[registro].IsNull Then
//                            dbparam.params.parambyname(sparametro).value := ''
//                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except
                    // no lo graba porque existe ....
                end ;
                qryorigen.next
            end
        end ;

        if (sparamtable = 'bitacoradepersonal') then
        begin
            // insertamos las plataformas ...
            qryorigen.active := false ;
            qryorigen.sql.clear ;
            qryorigen.sql.add('select distinct p.* from ' + sparamtable + ' a ' +
                              'inner join bitacoradeactividades b on (a.scontrato = b.scontrato and a.didfecha = b.didfecha and a.iiddiario = b.iiddiario and b.snumeroorden = :orden and b.sidturno = :turno) ' +
                              'inner join plataformas p on (a.sidplataforma = p.sidplataforma)' +
                              'where a.scontrato = :contrato and a.didfecha = :fecha') ;
            qryorigen.params.parambyname('contrato').datatype := ftstring ;
            qryorigen.params.parambyname('contrato').value := sparamcontrato ;
            qryorigen.params.parambyname('orden').datatype := ftstring ;
            qryorigen.params.parambyname('orden').value := sparamorden ;
            qryorigen.params.parambyname('fecha').datatype := ftdate ;
            qryorigen.params.parambyname('fecha').value := dparamfecha ;
            qryorigen.params.parambyname('turno').datatype := ftstring ;
            qryorigen.params.parambyname('turno').value := sparamturno ;
            qryorigen.open ;
            if qryorigen.recordcount > 0 then
            begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( funcsql(qryorigen , 'plataformas' )) ;
                while not qryorigen.eof do
                begin
                    try
                        dbParam.Active := False ;
                        for registro := 0 to qryorigen.fieldcount - 1 do
                        begin
                            sparametro := 'param' + trim(inttostr(registro + 1)) ;
                            dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                            If qryorigen.fields[registro].IsNull Then
//                                dbparam.params.parambyname(sparametro).value := ''
//                            Else
                                dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                        end ;
                        dbparam.ExecSQL ;
                    except
                        // no lo graba porque existe ....
                    end ;
                    qryorigen.next
                end
            end
        end ;

        // insertamos las pernoctas ...
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select distinct p.* from ' + sparamtable + ' a ' +
                          'inner join bitacoradeactividades b on (a.scontrato = b.scontrato and a.didfecha = b.didfecha and a.iiddiario = b.iiddiario and b.snumeroorden = :orden and b.sidturno = :turno) ' +
                          'inner join pernoctan p on (a.sidpernocta = p.sidpernocta)' +
                          'where a.scontrato = :contrato and a.didfecha = :fecha') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'pernoctas' )) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                        If qryorigen.fields[registro].IsNull Then
//                            dbparam.params.parambyname(sparametro).value := ''
//                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except
                    // no lo graba porque existe ....
                end ;
                qryorigen.next
            end
        end
    end ;

    if (sparamtable = 'tramitedepermisos') or (sparamtable = 'reportediario') then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha and snumeroorden = :orden and sidturno = :turno') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , sparamtable )) ;
            while not qryorigen.eof do
            begin
                dbParam.Active := False ;
                for registro := 0 to qryorigen.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                    If qryorigen.fields[registro].IsNull Then
                        dbparam.params.parambyname(sparametro).value := ''
                    Else
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                end ;
                dbparam.ExecSQL ;
                qryorigen.next
            end
        end
    end ;

    if (sparamtable = 'firmas') then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from ' + sparamtable + ' where scontrato = :contrato and didfecha <= :fecha and snumeroorden = :orden') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    dbParam.SQL.Clear ;
                    dbparam.SQL.Add ( 'delete from firmas where scontrato = :contrato and snumeroorden = :orden and dIdFecha = :fecha') ;
                    dbparam.params.parambyname('contrato').datatype := ftstring ;
                    dbparam.params.parambyname('contrato').value := qryorigen.fieldvalues['sContrato'] ;
                    dbparam.params.parambyname('orden').datatype := ftstring ;
                    dbparam.params.parambyname('orden').value := qryorigen.fieldvalues['sNumeroOrden'] ;
                    dbparam.params.parambyname('fecha').datatype := ftDate ;
                    dbparam.params.parambyname('fecha').value := qryorigen.fieldvalues['dIdFecha'] ;
                    dbparam.ExecSQL ;
                    dbParam.Active := False ;
                    dbParam.SQL.Clear ;
                    dbparam.SQL.Add ( funcsql(qryorigen , sparamtable )) ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end
    end ;

    if (sparamtable = 'bitacoradepaquetes') then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha and snumeroorden = :orden') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , sparamtable )) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end
    end ;


    if (sparamtable = 'jornadasdiarias') then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha and snumeroorden = :orden and sidturno = :turno') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , sparamtable )) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end ;


        // los tipos de movimientos de los tiempos muertos ...
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select e.* from jornadasdiarias a '+
                          'inner join tiposdemovimiento e on (a.scontrato = e.scontrato and a.sidtipomovimiento = e.sidtipomovimiento) ' +
                          'where a.scontrato = :contrato and a.didfecha = :fecha and a.snumeroorden = :orden') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'tiposdemovimiento' )) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except
                    // no lo grabo si existe ....
                end ;
                qryorigen.next
            end
        end ;

        // meto las lanchas ...
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select e.* from jornadasdiarias a '+
                          'inner join embarcaciones e on (a.scontrato = e.scontrato and a.sidembarcacion = e.sidembarcacion) ' +
                          'where a.scontrato = :contrato and a.didfecha = :fecha and a.snumeroorden = :orden') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'embarcaciones' )) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except
                    // no lo grabo si existe ....
                end ;
                qryorigen.next
            end
        end ;
    end ;

    if (sparamtable = 'avancesglobalesxorden') or (sparamtable = 'actividadescanceladas') then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , sparamtable )) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        If qryorigen.fields[registro].IsNull Then
                            dbparam.params.parambyname(sparametro).value := ''
                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except
                end ;
                qryorigen.next
            end
        end
    end ;

    if (sparamtable = 'recursos') or (sparamtable = 'tripulaciondiaria') or (sparamtable = 'tripulaciondiaria_listado')or (sparamtable = 'movimientosdeembarcacion')
         or (sparamtable = 'condicionesmeteorologicas') or (sparamtable = 'tripulacionpernocta') or (sparamtable = 'fasesxorden') then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;

        if sparamtable <> 'fasesxorden' then
        begin
            qryorigen.sql.add('select * from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha') ;
            qryorigen.params.parambyname('contrato').datatype := ftstring ;
            qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        end
        else
           qryorigen.sql.add('select * from ' + sparamtable + ' where didfecha = :fecha') ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , sparamtable )) ;
            while not qryorigen.eof do
            begin
//                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                        If qryorigen.fields[registro].IsNull Then
//                            dbparam.params.parambyname(sparametro).value := ''
//                        Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
//                except
//                end ;
                qryorigen.next
            end
        end
    end ;

end ;


procedure Tfrm_principal.procvalidareporte( dbparam : tzreadOnlyQuery; sparamcontrato, sparamorden, sparamtable, sparamreporte, sparamturno : string; dparamfecha : tdate) ;
var
    sparametro : string;
    registro   : byte ;
begin
    if (sparamtable = 'reportediario') then
    begin
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from ' + sparamtable + ' where scontrato = :contrato and didfecha = :fecha and snumeroorden = :orden and sidturno = :turno') ;
        qryorigen.params.parambyname('contrato').datatype := ftstring ;
        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
        qryorigen.params.parambyname('orden').datatype := ftstring ;
        qryorigen.params.parambyname('orden').value := sparamorden ;
        qryorigen.params.parambyname('fecha').datatype := ftdate ;
        qryorigen.params.parambyname('fecha').value := dparamfecha ;
        qryorigen.params.parambyname('turno').datatype := ftstring ;
        qryorigen.params.parambyname('turno').value := sparamturno ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            If NOT chkFotografias.Checked Then
            Begin
                if qryContratos.FieldValues['sTipoObra'] = 'BARCO' then
                begin
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'tripulacionpernocta', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'fasesxorden', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'tripulaciondiaria', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'tripulaciondiaria_listado', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'movimientosdeembarcacion', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'recursos', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'condicionesclimatologicas', '', qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , qryreportediario.fieldvalues['snumeroorden'] , 'reportediario', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradeactividades', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                end
                else
                begin
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradepersonal', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradeequipos', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradepernocta', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'jornadasdiarias', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'tramitedepermisos', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'volumen de obra', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradealcances', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradeactividades', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX' , 'avisos de embarque', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX' , 'actividadescanceladas', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX' , 'reportegerencial', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , ordenesdetrabajo.fieldvalues['snumeroorden'], 'bitacoradepaquetes', 'XXX', 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'avancesglobalesxorden', 'XXX', 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'reportefotografico', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
                    procdelete( command, qrycontratos.fieldvalues['scontrato'] , qryreportediario.fieldvalues['snumeroorden'] , 'reportediario', qryreportediario.fieldvalues['snumeroreporte'], qryreportediario.fieldvalues['sidturno'], qryreportediario.fieldvalues['didfecha']) ;
                end;
            End;
            procdelete( command, qrycontratos.fieldvalues['scontrato'] , 'XXX', 'reportefotografico', qryreportediario.fieldvalues['snumeroreporte'], 'XXX', qryreportediario.fieldvalues['didfecha']) ;
        end;
    end ;
end ;


procedure Tfrm_principal.procvalidadatos( dbparam : tzreadOnlyQuery) ;
var
    sparametro : string;
    registro   : byte ;
begin
    //Verificamos los departamentos
    qryorigen.active := false ;
    qryorigen.sql.clear ;
    qryorigen.sql.add('select * from departamentos') ;
    qryorigen.open ;
    if qryorigen.recordcount > 0 then
    begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( funcsql(qryorigen , 'departamentos') ) ;
        while not qryorigen.eof do
        begin
            try
                dbParam.Active := False ;
                for registro := 0 to qryorigen.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                    If qryorigen.fields[registro].IsNull Then
//                        dbparam.params.parambyname(sparametro).value := ''
//                    Else
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                end ;
                dbparam.ExecSQL ;
            except

            end ;
            qryorigen.next
        end
    end;

    //Verificamos los usuarios existentes.
    qryorigen.active := false ;
    qryorigen.sql.clear ;
    qryorigen.sql.add('select * from usuarios') ;
    qryorigen.open ;
    if qryorigen.recordcount > 0 then
    begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( funcsql(qryorigen , 'usuarios') ) ;
        while not qryorigen.eof do
        begin
            try
                dbParam.Active := False ;
                for registro := 0 to qryorigen.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                    If qryorigen.fields[registro].IsNull Then
//                        dbparam.params.parambyname(sparametro).value := ''
//                    Else
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                end ;
                dbparam.ExecSQL ;
            except

            end ;
            qryorigen.next
        end
    end;

    //Verificamos los contratos u ordenes x usuarios.
    qryorigen.active := false ;
    qryorigen.sql.clear ;
    qryorigen.sql.add('select * from contratosxusuario') ;
    qryorigen.open ;
    if qryorigen.recordcount > 0 then
    begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( funcsql(qryorigen , 'contratosxusuario') ) ;
        while not qryorigen.eof do
        begin
            try
                dbParam.Active := False ;
                for registro := 0 to qryorigen.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                    If qryorigen.fields[registro].IsNull Then
//                        dbparam.params.parambyname(sparametro).value := ''
//                    Else
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                end ;
                dbparam.ExecSQL ;
            except

            end ;
            qryorigen.next
        end
    end;

    //Verificamos los frentes de trabajo x usuarios.
    qryorigen.active := false ;
    qryorigen.sql.clear ;
    qryorigen.sql.add('select * from ordenesxusuario') ;
    qryorigen.open ;
    if qryorigen.recordcount > 0 then
    begin
        dbParam.Active := False ;
        dbParam.SQL.Clear ;
        dbparam.SQL.Add ( funcsql(qryorigen , 'ordenesxusuario') ) ;
        while not qryorigen.eof do
        begin
            try
                dbParam.Active := False ;
                for registro := 0 to qryorigen.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
//                    If qryorigen.fields[registro].IsNull Then
//                        dbparam.params.parambyname(sparametro).value := ''
//                    Else
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                end ;
                dbparam.ExecSQL ;
            except

            end ;
            qryorigen.next
        end
    end;

    if QryContratos.FieldValues['sTipoObra'] = 'BARCO' then
    begin
        //Verificamos tripulacion
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from tripulacion') ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'tripulacion') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
    //                    If qryorigen.fields[registro].IsNull Then
    //                        dbparam.params.parambyname(sparametro).value := ''
    //                    Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end;

        //Verificamos plataformas
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from plataformas ') ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'tripulacion') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
    //                    If qryorigen.fields[registro].IsNull Then
    //                        dbparam.params.parambyname(sparametro).value := ''
    //                    Else
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end;

        //Verificamos embarcaciones
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from embarcaciones ') ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'embarcaciones') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end;

        //Verificamos reprogramacion_barco
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from reprogramacion_barco ') ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'reprogramacion_barco') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end;

        //Verificamos reprogramacion_barco
        qryorigen.active := false ;
        qryorigen.sql.clear ;
        qryorigen.sql.add('select * from categorias ') ;
        qryorigen.open ;
        if qryorigen.recordcount > 0 then
        begin
            dbParam.Active := False ;
            dbParam.SQL.Clear ;
            dbparam.SQL.Add ( funcsql(qryorigen , 'categorias') ) ;
            while not qryorigen.eof do
            begin
                try
                    dbParam.Active := False ;
                    for registro := 0 to qryorigen.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                        dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                    end ;
                    dbparam.ExecSQL ;
                except

                end ;
                qryorigen.next
            end
        end;
    end;
end ;


procedure Tfrm_principal.procinsertacnf( dbparam : tzReadOnlyQuery; sparamcontrato, sparamtable, sparamorden, sparamconvenio : string) ;
var
    sparametro : string;
    registro   : byte ;
    scomando   : string ;
begin
    if sparamtable = 'avisos de embarque' then
    begin
        scomando := 'select * from anexo_suministro where scontrato = :contrato ' ;
        if sopcion = 'sincroniza' then
        begin
            qryorigen.active := false ;
            qryorigen.sql.clear ;
            qryorigen.sql.add(scomando) ;
            qryorigen.params.parambyname('contrato').datatype := ftstring ;
            qryorigen.params.parambyname('contrato').value := sparamcontrato ;
            qryorigen.open ;
            if qryorigen.recordcount > 0 then
            begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( funcsql(qryorigen , 'anexo_suministro' )) ;
                while not qryorigen.eof do
                begin
                    try
                        dbParam.Active := False ;
                        for registro := 0 to qryorigen.fieldcount - 1 do
                        begin
                            sparametro := 'param' + trim(inttostr(registro + 1)) ;
                            dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                        end ;
                            dbparam.ExecSQL ;
                    except

                    end ;
                    qryorigen.next
                end
            end ;

            // partidas de la requisición
            scomando := 'select * from anexo_psuministro where scontrato = :contrato ' ;
            qryorigen.active := false ;
            qryorigen.sql.clear ;
            qryorigen.sql.add(scomando) ;
            qryorigen.params.parambyname('contrato').datatype := ftstring ;
            qryorigen.params.parambyname('contrato').value := sparamcontrato ;
            qryorigen.open ;
            if qryorigen.recordcount > 0 then
            begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( funcsql(qryorigen , 'anexo_psuministro' ) ) ;
                while not qryorigen.eof do
                begin
                    try
                        dbParam.Active := False ;
                        for registro := 0 to qryorigen.fieldcount - 1 do
                        begin
                            sparametro := 'param' + trim(inttostr(registro + 1)) ;
                            dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                            dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                        end ;
                            dbparam.ExecSQL ;
                    except

                    end ;
                    qryorigen.next
                end
            end
        end
        else
        begin
            qrydestino.active := false ;
            qrydestino.sql.clear ;
            qrydestino.sql.add(scomando) ;
            qrydestino.params.parambyname('contrato').datatype := ftstring ;
            qrydestino.params.parambyname('contrato').value := sparamcontrato ;
            qrydestino.open ;
            if qrydestino.recordcount > 0 then
            begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( funcsql(qrydestino , 'anexo_suministro' )) ;
                while not qrydestino.eof do
                begin
                    try
                        dbParam.Active := False ;
                        for registro := 0 to qrydestino.fieldcount - 1 do
                        begin
                            sparametro := 'param' + trim(inttostr(registro + 1)) ;
                            dbparam.params.parambyname(sparametro).datatype := qrydestino.fields[registro].datatype ;
                            dbparam.params.parambyname(sparametro).value := qrydestino.fields[registro].value ;
                        end ;
                        dbparam.ExecSQL ;
                    except
                    end ;
                    qrydestino.next
                end
            end ;

            // partidas de la requisición
            qrydestino.active := false ;
            qrydestino.sql.clear ;
            qrydestino.sql.add(scomando) ;
            qrydestino.params.parambyname('contrato').datatype := ftstring ;
            qrydestino.params.parambyname('contrato').value := sparamcontrato ;
            qrydestino.open ;
            if qrydestino.recordcount > 0 then
            begin
                dbParam.Active := False ;
                dbParam.SQL.Clear ;
                dbparam.SQL.Add ( funcsql(qrydestino , 'anexo_psuministro' )) ;
                while not qrydestino.eof do
                begin
                    try
                        for registro := 0 to qrydestino.fieldcount - 1 do
                        begin
                            sparametro := 'param' + trim(inttostr(registro + 1)) ;
                            dbparam.params.parambyname(sparametro).datatype := qrydestino.fields[registro].datatype ;
                            dbparam.params.parambyname(sparametro).value := qrydestino.fields[registro].value ;
                        end ;
                        dbparam.ExecSQL ;
                    except
                    end ;
                    qrydestino.next
                end
            end
        end
    end
    else
        if sparamtable = 'requisiciones' then
        begin
            scomando := 'select * from anexo_requisicion where scontrato = :contrato ' ;
            if sopcion = 'sincroniza' then
            begin
                qryorigen.active := false ;
                qryorigen.sql.clear ;
                qryorigen.sql.add(scomando) ;
                qryorigen.params.parambyname('contrato').datatype := ftstring ;
                qryorigen.params.parambyname('contrato').value := sparamcontrato ;
                qryorigen.open ;
                if qryorigen.recordcount > 0 then
                begin
                    dbParam.Active := False ;
                    dbParam.SQL.Clear ;
                    dbparam.SQL.Add ( funcsql(qryorigen , 'anexo_requisicion' )) ;
                    while not qryorigen.eof do
                    begin
                        try
                            dbParam.Active := False ;
                            for registro := 0 to qryorigen.fieldcount - 1 do
                            begin
                                sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                                dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                            end ;
                            dbparam.ExecSQL ;
                        except

                        end ;
                        qryorigen.next
                    end
                end ;
                // partidas de la requisición
                scomando := 'select * from anexo_prequisicion where scontrato = :contrato ' ;
                qryorigen.active := false ;
                qryorigen.sql.clear ;
                qryorigen.sql.add(scomando) ;
                qryorigen.params.parambyname('contrato').datatype := ftstring ;
                qryorigen.params.parambyname('contrato').value := sparamcontrato ;
                qryorigen.open ;
                if qryorigen.recordcount > 0 then
                begin
                    dbParam.Active := False ;
                    dbParam.SQL.Clear ;
                    dbparam.SQL.Add ( funcsql(qryorigen , 'anexo_prequisicion' )) ;
                    while not qryorigen.eof do
                    begin
                        try
                            dbParam.Active := False ;
                            for registro := 0 to qryorigen.fieldcount - 1 do
                            begin
                                sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                                dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                            end ;
                            dbparam.ExecSQL ;
                        except
                        end ;
                        qryorigen.next
                    end
                end
            end
            else
            begin
                qrydestino.active := false ;
                qrydestino.sql.clear ;
                qrydestino.sql.add(scomando) ;
                qrydestino.params.parambyname('contrato').datatype := ftstring ;
                qrydestino.params.parambyname('contrato').value := sparamcontrato ;
                qrydestino.open ;
                if qrydestino.recordcount > 0 then
                begin
                    dbParam.Active := False ;
                    dbParam.SQL.Clear ;
                    dbparam.SQL.Add ( funcsql(qrydestino , 'anexo_requisicion' )) ;
                    while not qrydestino.eof do
                    begin
                        try
                            dbParam.Active := False ;
                            for registro := 0 to qrydestino.fieldcount - 1 do
                            begin
                                sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                dbparam.params.parambyname(sparametro).datatype := qrydestino.fields[registro].datatype ;
                                dbparam.params.parambyname(sparametro).value := qrydestino.fields[registro].value ;
                            end ;
                            dbparam.ExecSQL ;
                        except

                        end ;
                        qrydestino.next
                    end
                end ;
                // partidas de la requisición
                qrydestino.active := false ;
                qrydestino.sql.clear ;
                qrydestino.sql.add(scomando) ;
                qrydestino.params.parambyname('contrato').datatype := ftstring ;
                qrydestino.params.parambyname('contrato').value := sparamcontrato ;
                qrydestino.open ;
                if qrydestino.recordcount > 0 then
                begin
                    dbParam.Active := False ;
                    dbParam.SQL.Clear ;
                    dbparam.SQL.Add ( funcsql(qrydestino , 'anexo_prequisicion' )) ;
                    while not qrydestino.eof do
                    begin
                        try
                            dbParam.Active := False ;
                            for registro := 0 to qrydestino.fieldcount - 1 do
                            begin
                                sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                dbparam.params.parambyname(sparametro).datatype := qrydestino.fields[registro].datatype ;
                                dbparam.params.parambyname(sparametro).value := qrydestino.fields[registro].value ;
                            end ;
                            dbparam.ExecSQL ;
                        except
                        end ;
                        qrydestino.next
                    end
                end
            end
        end
        else
            if sparamtable = 'ordenes de compra' then
            begin
                scomando := 'select * from anexo_pedidos where scontrato = :contrato ' ;
                if sopcion = 'sincroniza' then
                begin
                    qryorigen.active := false ;
                    qryorigen.sql.clear ;
                    qryorigen.sql.add(scomando) ;
                    qryorigen.params.parambyname('contrato').datatype := ftstring ;
                    qryorigen.params.parambyname('contrato').value := sparamcontrato ;
                    qryorigen.open ;
                    if qryorigen.recordcount > 0 then
                    begin
                        dbParam.Active := False ;
                        dbParam.SQL.Clear ;
                        dbparam.SQL.Add ( funcsql(qryorigen , 'anexo_pedidos' )) ;
                        while not qryorigen.eof do
                        begin
                            try
                                dbParam.Active := False ;
                                for registro := 0 to qryorigen.fieldcount - 1 do
                                begin
                                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                                    dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                                end ;
                                dbparam.ExecSQL ;
                            except

                            end ;
                            qryorigen.next
                        end
                    end ;

                    // partidas del pedido
                    scomando := 'select * from anexo_ppedido where scontrato = :contrato ' ;
                    qryorigen.active := false ;
                    qryorigen.sql.clear ;
                    qryorigen.sql.add(scomando) ;
                    qryorigen.params.parambyname('contrato').datatype := ftstring ;
                    qryorigen.params.parambyname('contrato').value := sparamcontrato ;
                    qryorigen.open ;
                    if qryorigen.recordcount > 0 then
                    begin
                        dbParam.Active := False ;
                        dbParam.SQL.Clear ;
                        dbparam.SQL.Add ( funcsql(qryorigen , 'anexo_ppedido' )) ;
                        while not qryorigen.eof do
                        begin
                            try
                                dbParam.Active := False ;
                                for registro := 0 to qryorigen.fieldcount - 1 do
                                begin
                                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                                    dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                                end ;
                                dbparam.ExecSQL ;
                            except

                            end ;
                            qryorigen.next
                        end
                    end
                end
                else
                begin
                    qrydestino.active := false ;
                    qrydestino.sql.clear ;
                    qrydestino.sql.add(scomando) ;
                    qrydestino.params.parambyname('contrato').datatype := ftstring ;
                    qrydestino.params.parambyname('contrato').value := sparamcontrato ;
                    qrydestino.open ;
                    if qrydestino.recordcount > 0 then
                    begin
                        dbParam.Active := False ;
                        dbParam.SQL.Clear ;
                        dbparam.SQL.Add ( funcsql(qrydestino , 'anexo_pedidos' )) ;
                        while not qrydestino.eof do
                        begin
                            try
                                dbParam.Active := False ;
                                for registro := 0 to qrydestino.fieldcount - 1 do
                                begin
                                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                    dbparam.params.parambyname(sparametro).datatype := qrydestino.fields[registro].datatype ;
                                    dbparam.params.parambyname(sparametro).value := qrydestino.fields[registro].value ;
                                end ;
                                dbparam.ExecSQL ;
                            except

                            end ;
                            qrydestino.next
                        end
                    end ;
                    qrydestino.active := false ;
                    qrydestino.sql.clear ;
                    qrydestino.sql.add(scomando) ;
                    qrydestino.params.parambyname('contrato').datatype := ftstring ;
                    qrydestino.params.parambyname('contrato').value := sparamcontrato ;
                    qrydestino.open ;
                    if qrydestino.recordcount > 0 then
                    begin
                        dbParam.Active := False ;
                        dbParam.SQL.Clear ;
                        dbparam.SQL.Add ( funcsql(qrydestino , 'anexo_ppedido' )) ;
                        while not qrydestino.eof do
                        begin
                            try
                                dbParam.Active := False ;
                                for registro := 0 to qrydestino.fieldcount - 1 do
                                begin
                                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                    dbparam.params.parambyname(sparametro).datatype := qrydestino.fields[registro].datatype ;
                                    dbparam.params.parambyname(sparametro).value := qrydestino.fields[registro].value ;
                                end ;
                                dbparam.ExecSQL ;
                            except

                            end ;
                            qrydestino.next
                        end
                    end
                 end
            end
            else
            begin
                scomando := 'select * from ' + sparamtable ;
                if uppercase(sparamcontrato) <> 'XXX' then
                    scomando := scomando + ' where scontrato = :contrato ' ;
                if uppercase(sparamorden) <> 'XXX' then
                    scomando := scomando + ' and snumeroorden = :orden ' ;
                if uppercase(sparamconvenio) <> 'XXX' then
                    scomando := scomando + ' and sidconvenio = :convenio ' ;

                if sopcion = 'sincroniza' then
                begin
                    qryorigen.active := false ;
                    qryorigen.sql.clear ;
                    qryorigen.sql.add(scomando) ;
                    if uppercase(sparamcontrato) <> 'XXX' then
                    begin
                        qryorigen.params.parambyname('contrato').datatype := ftstring ;
                        qryorigen.params.parambyname('contrato').value := sparamcontrato ;
                    end ;
                    if uppercase(sparamorden) <> 'XXX' then
                    begin
                        qryorigen.params.parambyname('orden').datatype := ftstring ;
                        qryorigen.params.parambyname('orden').value := sparamorden ;
                    end ;
                    if uppercase(sparamconvenio) <> 'XXX' then
                    begin
                        qryorigen.params.parambyname('convenio').datatype := ftstring ;
                        qryorigen.params.parambyname('convenio').value := sparamconvenio ;
                    end ;
                    qryorigen.open ;
                    if qryorigen.recordcount > 0 then
                    begin
                        dbParam.Active := False ;
                        dbParam.SQL.Clear ;
                        dbparam.SQL.Add ( funcsql(qryorigen , sparamtable )) ;
                        while not qryorigen.eof do
                        begin
                            try
                                dbParam.Active := False ;
                                for registro := 0 to qryorigen.fieldcount - 1 do
                                begin
                                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                    dbparam.params.parambyname(sparametro).datatype := qryorigen.fields[registro].datatype ;
                                    dbparam.params.parambyname(sparametro).value := qryorigen.fields[registro].value ;
                                end ;
                                dbparam.ExecSQL ;
                            except

                            end ;
                            qryorigen.next
                        end
                    end
                end
                else
                begin
                    qrydestino.active := false ;
                    qrydestino.sql.clear ;
                    qrydestino.sql.add(scomando) ;
                    qrydestino.params.parambyname('contrato').datatype := ftstring ;
                    qrydestino.params.parambyname('contrato').value := sparamcontrato ;
                    if sparamorden <> 'XXX' then
                    begin
                        qrydestino.params.parambyname('orden').datatype := ftstring ;
                        qrydestino.params.parambyname('orden').value := sparamorden ;
                    end ;
                    if sparamconvenio <> 'XXX' then
                    begin
                        qrydestino.params.parambyname('convenio').datatype := ftstring ;
                        qrydestino.params.parambyname('convenio').value := sparamconvenio ;
                    end ;
                    qrydestino.open ;
                    if qrydestino.recordcount > 0 then
                    begin
                        dbParam.Active := False ;
                        dbParam.SQL.Clear ;
                        dbparam.SQL.Add ( funcsql(qrydestino , sparamtable )) ;
                        while not qrydestino.eof do
                        begin
                            try
                                dbParam.Active := False ;
                                for registro := 0 to qrydestino.fieldcount - 1 do
                                begin
                                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                                    dbparam.params.parambyname(sparametro).datatype := qrydestino.fields[registro].datatype ;
                                    dbparam.params.parambyname(sparametro).value := qrydestino.fields[registro].value ;
                                end ;
                                dbparam.ExecSQL ;
                            except

                            end ;
                            qrydestino.next
                        end
                    end
                end
            end
end ;

end.
