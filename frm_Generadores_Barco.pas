unit frm_Generadores_Barco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, RxCombos, UnitExcepciones,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Buttons,
  ComCtrls, frxClass, utilerias, RxMemDS, frxDBSet, DateUtils, UFunctionsGHH,
  DBDateTimePicker, NxCollection;
 function IsDate(ADate: string): Boolean;
type
  TfrmGeneradoresBarco = class(TForm)
    QryContratos: TZReadOnlyQuery;
    frGenerador: TfrxReport;
    rxGeneradorDia: TRxMemoryData;
    rxGeneradorDiasContrato: TStringField;
    rxGeneradorDiasNumeroOrden: TStringField;
    rxGeneradorDiasNumeroActividad: TStringField;
    rxGeneradorDiamDescripcion: TMemoField;
    rxGeneradorDiasMedida: TStringField;
    rxGeneradorDiadia1: TFloatField;
    rxGeneradorDiadia2: TFloatField;
    rxGeneradorDiadia3: TFloatField;
    rxGeneradorDiadia4: TFloatField;
    rxGeneradorDiadia5: TFloatField;
    rxGeneradorDiadia6: TFloatField;
    rxGeneradorDiadia7: TFloatField;
    rxGeneradorDiadia8: TFloatField;
    rxGeneradorDiadia9: TFloatField;
    rxGeneradorDiadia10: TFloatField;
    rxGeneradorDiadia11: TFloatField;
    rxGeneradorDiadia12: TFloatField;
    rxGeneradorDiadia13: TFloatField;
    rxGeneradorDiadia14: TFloatField;
    rxGeneradorDiadia15: TFloatField;
    rxGeneradorDiadia16: TFloatField;
    rxGeneradorDiadia17: TFloatField;
    rxGeneradorDiadia18: TFloatField;
    rxGeneradorDiadia19: TFloatField;
    rxGeneradorDiadia20: TFloatField;
    rxGeneradorDiadia21: TFloatField;
    rxGeneradorDiadia22: TFloatField;
    rxGeneradorDiadia23: TFloatField;
    rxGeneradorDiadia24: TFloatField;
    rxGeneradorDiadia25: TFloatField;
    rxGeneradorDiadia26: TFloatField;
    rxGeneradorDiadia27: TFloatField;
    rxGeneradorDiadia28: TFloatField;
    rxGeneradorDiadia29: TFloatField;
    rxGeneradorDiadia30: TFloatField;
    rxGeneradorDiadia31: TFloatField;
    dsGerencial: TfrxDBDataset;
    rxGeneradorDiasTitulo: TMemoField;
    rxGeneradorDiadTotal: TFloatField;
    rxGeneradorDiasGrupo: TStringField;
    rxGeneradorDiasTipoObra: TStringField;
    rxGeneradorDiasIdEquipo: TStringField;
    rxGeneradorDiasIdPersonal: TStringField;
    rxGeneradorDiamDescripcionContrato: TMemoField;
    rxGeneradorDiasIdCuenta: TStringField;
    rxGeneradorDiasDescripcionCategoria: TStringField;
    rxGeneradorDiasIdTipoPersonal: TStringField;
    rxGeneradorDiadVentaMN: TCurrencyField;
    rxGeneradorDiadVentaDLL: TCurrencyField;
    rxGeneradorDiadTotalMN: TCurrencyField;
    rxGeneradorDiadTotalDLL: TCurrencyField;
    rxGeneradorDiasIdFase: TStringField;
    rxGeneradorDiasAgrupaPersonal: TStringField;
    rxGeneradorDiasContratoBarco: TStringField;
    rxGeneradorDiasEmbarcacionPrincipal: TStringField;
    rxGeneradorDiasAnexo: TStringField;
    rxGeneradorDiaSt1: TStringField;
    rxGeneradorDiaSt2: TStringField;
    rxGeneradorDiaSt3: TStringField;
    rxGeneradorDiaSt4: TStringField;
    rxGeneradorDiaSt5: TStringField;
    rxGeneradorDiaSt6: TStringField;
    rxGeneradorDiaSt7: TStringField;
    rxGeneradorDiaSt8: TStringField;
    rxGeneradorDiaSt9: TStringField;
    rxGeneradorDiaSt10: TStringField;
    rxGeneradorDiaSt11: TStringField;
    rxGeneradorDiaSt12: TStringField;
    rxGeneradorDiaSt13: TStringField;
    rxGeneradorDiaSt14: TStringField;
    rxGeneradorDiaSt15: TStringField;
    rxGeneradorDiaSt16: TStringField;
    rxGeneradorDiaSt17: TStringField;
    rxGeneradorDiaSt18: TStringField;
    rxGeneradorDiaSt19: TStringField;
    rxGeneradorDiaSt20: TStringField;
    rxGeneradorDiaSt21: TStringField;
    rxGeneradorDiaSt22: TStringField;
    rxGeneradorDiaSt23: TStringField;
    rxGeneradorDiaSt24: TStringField;
    rxGeneradorDiaSt25: TStringField;
    rxGeneradorDiaSt26: TStringField;
    rxGeneradorDiaSt27: TStringField;
    rxGeneradorDiaSt28: TStringField;
    rxGeneradorDiaSt29: TStringField;
    rxGeneradorDiaSt30: TStringField;
    rxGeneradorDiaSt31: TStringField;
    rxGeneradorDiasTituloContrato: TStringField;
    rxGeneradorDiasDescripcionCorta: TStringField;
    rxGeneradorDiasTituloOpcional: TStringField;
    rxGeneradorDiaFechaFinal: TDateField;
    rxGeneradorDiaFechaInicial: TDateField;
    PanelOpciones: TNxHeaderPanel;
    chkCategoria: TCheckBox;
    ChkCobroPU: TCheckBox;
    chkPU: TCheckBox;
    chkVigenciaBarco: TCheckBox;
    chkJornadas: TCheckBox;
    NxHeaderPanel1: TNxHeaderPanel;
    Label5: TLabel;
    opcBarco: TRadioButton;
    opcConsolidadoBarco: TRadioButton;
    opcBarcoPlataforma: TRadioButton;
    opcBarcoTipo: TRadioButton;
    opcEquipoDetalladoObra: TRadioButton;
    opcEquipoDetallado: TRadioButton;
    opcPersonalDetalladoObra: TRadioButton;
    opcPersonalDetallado: TRadioButton;
    opcMaterialDetalladoObra: TRadioButton;
    opcPernoctaDetalladoObra: TRadioButton;
    opcPernoctaDetallado: TRadioButton;
    opcTripulacionDiaria: TRadioButton;
    opcTripulacionxGrupo: TRadioButton;
    OpcHojaSeguimiento: TRadioButton;
    btnEstimacionPlataforma: TRadioButton;
    btnEstimacionGeneral: TRadioButton;
    opcPernoctaPlataformaImporte: TRadioButton;
    opcPernoctaOrdenImporte: TRadioButton;
    opcMaterialesPlataformaImporte: TRadioButton;
    opcPersonalPlataformaImporte: TRadioButton;
    opcPersonalOrdenImporte: TRadioButton;
    opcEquipoPlataformaImporte: TRadioButton;
    opcEquipoOrdenImporte: TRadioButton;
    opcBarcoPlataformaImporte: TRadioButton;
    opcBarcoOrdenImporte: TRadioButton;
    opcBarcoGeneralImporte: TRadioButton;
    lblImporte1: TLabel;
    NxHeaderPanel2: TNxHeaderPanel;
    Label2: TLabel;
    Label1: TLabel;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    tsContrato: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    tsPlataformas: TComboBox;
    rxGeneradorDiasNumeroEstimacion: TStringField;
    chkPEP: TCheckBox;
    chkTiempoExtra: TCheckBox;
    chkCompleto: TCheckBox;
    pnl1: TPanel;
    btnImprimir: TBitBtn;
    btnSalir: TBitBtn;
    chkReporteNuevo: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsContratoEnter(Sender: TObject);
    procedure tsContratoExit(Sender: TObject);
    procedure tsContratoKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure frGeneradorGetValue(const VarName: string; var Value: Variant);
    procedure chkPUClick(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tdFechaInicioChange(Sender: TObject);
    procedure btnEstimacionGeneralEnter(Sender: TObject);
    procedure btnEstimacionPlataformaEnter(Sender: TObject);

    //AQUI VIENEN LAS FUNCIONES Y PROCEDIMIENTOS
    procedure BuscaContratoEmbarcacion(); //Diavaz 15 Abril 2012   iv@n,,
    procedure GeneradorPernoctaDetallado();
    procedure InsertaPernoctas();
    procedure InsertaTiempoExtra(sParamAgrupa, sParamOrden : string);
    procedure BuscaEstimacion(sParamOrden :string);
    procedure InsertaAnexo(sParamAnexo: string);
    procedure OrdenConBarco(sParamOrden : string);
    procedure opcConsolidadoBarcoEnter(Sender: TObject);
    procedure opcEquipoDetalladoObraEnter(Sender: TObject);
    procedure opcPersonalDetalladoObraEnter(Sender: TObject);
    procedure opcPernoctaDetalladoObraEnter(Sender: TObject);
    procedure opcBarcoExit(Sender: TObject);
    procedure opcBarcoPlataformaEnter(Sender: TObject);
    procedure opcBarcoTipoEnter(Sender: TObject);
    procedure opcEquipoDetalladoEnter(Sender: TObject);
    procedure opcPersonalDetalladoEnter(Sender: TObject);
    procedure opcMaterialDetalladoObraEnter(Sender: TObject);
    procedure opcPernoctaDetalladoEnter(Sender: TObject);
    procedure opcTripulacionDiariaEnter(Sender: TObject);
    procedure opcTripulacionxGrupoEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeneradoresBarco: TfrmGeneradoresBarco;
  sOpcionReporte : String ;
  embarcacion    : TZReadOnlyQuery ;
  Anexo_personal,
  Anexo_equipo,
  Anexo_material,
  Anexo_pernocta,
  sPersonalPU,
  sEquipoPU,
  sCobro,
  sAgrupa,
  MiDescripcion,
  CopyAnexo_personal,
  CopyAnexo_equipo,
  CopyAnexo_material,
  CopyAnexo_pernocta,
  NumeroEstimacion      : string;

implementation

{$R *.dfm}

procedure TfrmGeneradoresBarco.btnEstimacionGeneralEnter(Sender: TObject);
begin
    chkVigenciaBarco.Enabled := False;
end;

procedure TfrmGeneradoresBarco.btnEstimacionPlataformaEnter(Sender: TObject);
begin
    chkVigenciaBarco.Enabled := False;
end;

procedure TfrmGeneradoresBarco.btnImprimirClick(Sender: TObject);
var
    sCadena,
    sOrden, sTiempoExtra, sOrdenTiempoExt  : String ;
    t, iPos : Byte ;
    sDia    : String ;
    linea1  : String;
    linea2  : String;
    Embarcacion, sLineaTiempoExtra : string;
    QryConfiguracion : TZReadOnlyQuery ;
    dsConfiguracion  : TfrxDBDataSet ;
    tOrigen          : TComponent ;
    rCaratula        : TfrxReport;
    dsGenerador      : TfrxDBDataSet;
    sNumeroActividad : string;
    MemoryHoja       : TrxMemoryData;
begin
 //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicio.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicio' );
   tdFechaFinal.SetFocus;
   exit;
   end;
try
    if chkCobroPU.Checked then
       sCobro := 'Si'
    else
        sCobro := 'No';

    if chkCategoria.Checked = True then
    begin
          linea1 := 'sAgrupaPersonal';
          linea2 := 'sDescripcionG';
    end
    else
    begin
         linea1 := 'sIdPersonal';
         linea2 := 'sDescripcion';
    end;

    if chkCompleto.Checked then
       sTiempoExtra := ''
    else
    begin
        if chkTiempoExtra.Checked then
           sLineaTiempoExtra := ' and p.sIdTipoPersonal = "TE" '
        else
           sLineaTiempoExtra := ' and p.sIdTipoPersonal <> "TE" ';
    end;

    if chkPU.Checked then
    begin
        sPersonalPU := ' and bp.sTipoObra = "PU" ';
        sEquipoPU   := ' and e.sIdTipoEquipo = "PU" ';
        Anexo_personal := '';
        Anexo_equipo   := '';
        Anexo_material := '';
        Anexo_pernocta := '';
        sAgrupa        := '';
        MiDescripcion  := 'p.sDescripcion';
        linea1         := 'sIdPersonal';
        linea2         := 'sDescripcion';
    end
    else
    begin
         sPersonalPU := ' and bp.sTipoObra = "ADM" ';
         sEquipoPU   := ' and e.sIdTipoEquipo <> "PU" ';
         Anexo_personal := CopyAnexo_personal;
         Anexo_equipo   := CopyAnexo_equipo;
         Anexo_material := CopyAnexo_material;
         Anexo_pernocta := CopyAnexo_pernocta;
         sAgrupa        := 'Inner Join grupospersonal gp on (p.sAgrupaPersonal = gp.sIdGrupo) ';
         MiDescripcion  := 'gp.sDescripcion';
    end;

    //Datos de la configuracion del sistema..
    rDiario := TfrxReport.Create(tOrigen);

    qryConfiguracion            := TZReadOnlyQuery.Create(tOrigen);
    qryConfiguracion.Connection := connection.zConnection;
    dsConfiguracion             := TfrxDBDataSet.Create(tOrigen);
    dsConfiguracion.DataSet     := QryConfiguracion;
    dsConfiguracion.UserName    := 'dsConfiguracion';

    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c.iFirmasGeneradores, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, c.sReportesCIA ' +
        'From configuracion c ' +
        'Where c.sContrato = :Contrato');
    QryConfiguracion.ParamByName('contrato').AsString := global_contrato;
    QryConfiguracion.Open;

    global_miReporte := QryConfiguracion.FieldValues['sReportesCIA'];

    //Primero el Id de la Embarcacion principal... OSA 2011 ivan,,
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia '+
                       'where sContrato =:Contrato and dFechaInicio <= :Fecha and dFechaFinal >=:Fecha order by dFechaInicio');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
    connection.QryBusca.ParamByName('Fecha').AsDate      := tdFechaFinal.Date;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        global_barco := connection.QryBusca.FieldValues['sIdEmbarcacion'];

        if chkVigenciaBarco.Checked then
           Embarcacion := connection.QryBusca.FieldValues['sIdEmbarcacion']
        else
           Embarcacion := '%';
    end
    else
       messageDLG('No existe una Vigencia de Embarcacion Principal', mtInformation, [mbOk], 0);

    // nuevas opciones del reporte diario ....
    sDiarioPeriodo := DateToStr( tdFechaInicio.Date ) + ' AL ' + DateToStr( tdFechaFinal.Date );
    rxGeneradorDia.Active := True;

    // Estimacion ... Final ....
    if btnEstimacionGeneral.Checked then
    begin
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       // Primero metemos el barco .....
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
       begin
          QryContratos.Active := False ;
          QryContratos.Active := True ;
          if QryContratos.RecordCount > 0 then
          begin
             While NOT QryContratos.Eof Do
             Begin
                // Barco ...
                connection.QryBusca.Active := False ;
                connection.QryBusca.SQL.Clear ;
                connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor * t.dVentaMN) as dVentaMN, sum(f.sFactor * t.dVentaDLL) as  dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sClasificacion order By f.sContrato, t.iOrden ') ;
                connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
                connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
                connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
                connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
                connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
                connection.QryBusca.Params.ParamByName('Contrato').Value       := QryContratos.FieldValues['sContrato'] ;
                connection.QryBusca.open ;
                If connection.qrybusca.recordcount > 0 then
                begin
                    While NOT connection.qryBusca.Eof Do
                    begin
                       rxGeneradorDia.Append ;
                       rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                       rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                       rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                       rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                       rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
                       rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
                       rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
                       rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                       rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                       rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                       rxGeneradorDia.FieldValues['dTotalMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                       rxGeneradorDia.FieldValues['dTotalDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                       rxGeneradorDia.Post ;
                       connection.qryBusca.Next ;
                   end;

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;
                end ;

               // Ahora metemos personal ... modificooo soriano 20-septiembre del 2010
               connection.QryBusca.Active := False ;
               connection.QryBusca.SQL.Clear ;
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, sum(bp.dCantidad * p.dVentaMN) as dVentaMN, ' +
                                       'sum(bp.dCantidad * p.dVentaDLL) as dVentaDLL from bitacoradepersonal bp ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'" '+sPersonalPU+') ' +
                                        sAgrupa +
                                       'Inner Join contratos c on (c.sContrato = bp.sContrato) ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'where bp.sContrato = :contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato ' +
                                       'order By bp.sContrato') ;
               connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
               connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
               connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value       := QryContratos.FieldValues['sContrato'] ;
               connection.QryBusca.open ;
               If connection.qrybusca.recordcount > 0 then
               begin
                   // Termino el Barco ...
                   // Metemos un registro en blanco ...
                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato']:= '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad']    := global_Materialbordo ;
                   rxGeneradorDia.FieldValues['mDescripcion']        := global_MaterialbordoDesc ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   While NOT connection.qryBusca.Eof Do
                   begin
                        rxGeneradorDia.Append ;
                        rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                        rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                        rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                        rxGeneradorDia.FieldValues['sNumeroOrden'] := '' ;
                        rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelPersonal ;
                        rxGeneradorDia.FieldValues['mDescripcion']     := global_labelPersonalDesc ;
                        rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                        rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                        rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.Post ;
                        connection.qryBusca.Next ;
                   end;
               end;

               // Ahora metemos equipos ... modificooo soriano 20-septiembre del 2010
               connection.QryBusca.Active := False ;
               connection.QryBusca.SQL.Clear ;
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, sum(be.dCantidad * e.dVentaMN) as dVentaMN, ' +
                                       'sum(be.dCantidad * e.dVentaDLL) as dVentaDLL from bitacoradeequipos be ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (c.sContrato = be.sContrato) ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'where be.sContrato = :contrato and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato ' +
                                       'order By be.sContrato') ;
               connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
               connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
               connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value       := QryContratos.FieldValues['sContrato'] ;
               connection.QryBusca.open ;
               If connection.qrybusca.recordcount > 0 then
               begin
                   // Metemos un registro en blanco ...

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   While NOT connection.qryBusca.Eof Do
                   begin
                        rxGeneradorDia.Append ;
                        rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                        rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                        rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                        rxGeneradorDia.FieldValues['sNumeroOrden'] := '' ;
                        rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelEquipo ;
                        rxGeneradorDia.FieldValues['mDescripcion'] :=  global_labelEquipoDesc ;
                        rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                        rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                        rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.Post ;
                        connection.qryBusca.Next ;
                   end;
               end ;

               // Ahora metemos PERNOCTAS ...
               connection.QryBusca.Active := False ;
               connection.QryBusca.SQL.Clear ;
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, sum(bp.dCantidad * ct.dVentaMN) as dVentaMN, ' +
                                       'sum(bp.dCantidad * ct.dVentaDLL) as dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (c.sContrato = bp.sContrato) ' +
                                       'where bp.sContrato = :contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato ' +
                                       'order By bp.sContrato') ;
               connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
               connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
               connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value       := QryContratos.FieldValues['sContrato'] ;
               connection.QryBusca.open ;
               If connection.qrybusca.recordcount > 0 then
               begin
                   // Metemos un registro en blanco ...
                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   While NOT connection.qryBusca.Eof Do
                   begin
                        rxGeneradorDia.Append ;
                        rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                        rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                        rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                        rxGeneradorDia.FieldValues['sNumeroOrden'] := '' ;
                        rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelPernocta ;
                        rxGeneradorDia.FieldValues['mDescripcion']     := global_labelPernoctaDesc    ;
                        rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                        rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                        rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.Post ;
                        connection.qryBusca.Next ;
                   end;

                   // Estos faltan, se van en blanco por el momento ...
                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := global_Materialtierra  ;
                   rxGeneradorDia.FieldValues['mDescripcion'] :=  global_MaterialtierraDesc;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

//                   rxGeneradorDia.Append ;
//                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
//                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
//                   rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
//                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
//                   rxGeneradorDia.FieldValues['sNumeroActividad'] := 'C-18' ;
//                   rxGeneradorDia.FieldValues['mDescripcion'] := 'SUMINISTRO DE MATERIALES PARA TRABAJOS DE REHABILITACION Y ADECUACION' ;
//                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
//                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
//                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
//                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
//                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
//                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
//                   rxGeneradorDia.Post ;
               end;

               QryContratos.Next
             end
          end ;

          try
            If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
            Else
                rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;
          except
              on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Impresion de Numeros Generadores', 'Al generar firmas al imprimir Estimacion x Orden', 0);
              end;
          end;

          BuscaContratoEmbarcacion;
          frGenerador.LoadFromFile(Global_Files + global_miReporte +'_estimaciongeneral.fr3') ;
          frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
       end
       else
       begin
          // de un solo contrato
                connection.QryBusca.Active := False ;
                connection.QryBusca.SQL.Clear ;
                connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor * t.dVentaMN) as dVentaMN, sum(f.sFactor * t.dVentaDLL) as  dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sClasificacion order By f.sContrato, t.iOrden ') ;
                connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
                connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
                connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
                connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
                connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
                connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
                connection.QryBusca.open ;
                If connection.qrybusca.recordcount > 0 then
                begin
                    While NOT connection.qryBusca.Eof Do
                    begin
                       rxGeneradorDia.Append ;
                       rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                       rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                       rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                       rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                       rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
                       rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
                       rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
                       rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                       rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                       rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                       rxGeneradorDia.FieldValues['dTotalMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                       rxGeneradorDia.FieldValues['dTotalDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                       rxGeneradorDia.Post ;
                       connection.qryBusca.Next ;
                   end;

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;
                end ;

               // Ahora metemos personal ...    modificooo soriano 20-septiembre del 2010
               connection.QryBusca.Active := False ;
               connection.QryBusca.SQL.Clear ;
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, sum(bp.dCantidad * p.dVentaMN) as dVentaMN, ' +
                                       'sum(bp.dCantidad * p.dVentaDLL) as dVentaDLL from bitacoradepersonal bp ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'"'+sPersonalPU+') ' +
                                        sAgrupa +
                                       'Inner Join contratos c on (c.sContrato = bp.sContrato) ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'where bp.sContrato = :contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato ' +
                                       'order By bp.sContrato') ;
               connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
               connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
               connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
               connection.QryBusca.open ;
               If connection.qrybusca.recordcount > 0 then
               begin
                   // Termino el Barco ...
                   // Metemos un registro en blanco ...
                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := global_Materialbordo ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := global_MaterialbordoDesc ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;
                   While NOT connection.qryBusca.Eof Do
                   begin
                        rxGeneradorDia.Append ;
                        rxGeneradorDia.FieldValues['sGrupo']               := 'INTEL-CODE' ;
                        rxGeneradorDia.FieldValues['sContrato']            := connection.QryBusca.FieldValues['sContrato'] ;
                        rxGeneradorDia.FieldValues['sTitulo']              := connection.QryBusca.FieldValues['sTitulo'] ;
                        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                        rxGeneradorDia.FieldValues['sNumeroOrden']         := '' ;
                        rxGeneradorDia.FieldValues['sNumeroActividad']     := global_labelPersonal ;
                        rxGeneradorDia.FieldValues['mDescripcion']         := global_labelPersonalDesc ;
                        rxGeneradorDia.FieldValues['sMedida']              := 'LOTE' ;
                        rxGeneradorDia.FieldValues['dVentaMN']             := connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dVentaDLL']            := connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.FieldValues['dTotal']               := 1 ;
                        rxGeneradorDia.FieldValues['dTotalMN']             := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dTotalDLL']            := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.Post ;
                        connection.qryBusca.Next ;
                   end;
               end;

               // Ahora metemos equipos ... modificooo soriano 20-septiembre del 2010
               connection.QryBusca.Active := False ;
               connection.QryBusca.SQL.Clear ;
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, sum(be.dCantidad * e.dVentaMN) as dVentaMN, ' +
                                       'sum(be.dCantidad * e.dVentaDLL) as dVentaDLL from bitacoradeequipos be ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (c.sContrato = be.sContrato) ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'where be.sContrato = :contrato and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato ' +
                                       'order By be.sContrato') ;
               connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
               connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
               connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
               connection.QryBusca.open ;
               If connection.qrybusca.recordcount > 0 then
               begin
                   // Metemos un registro en blanco ...

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;
                   While NOT connection.qryBusca.Eof Do
                   begin
                        rxGeneradorDia.Append ;
                        rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                        rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                        rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                        rxGeneradorDia.FieldValues['sNumeroOrden'] := '' ;
                        rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelEquipo ;
                        rxGeneradorDia.FieldValues['mDescripcion']     := global_labelEquipoDesc ;
                        rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                        rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                        rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.Post ;
                        connection.qryBusca.Next ;
                   end;
               end ;

               // Ahora metemos PERNOCTAS ...
               connection.QryBusca.Active := False ;
               connection.QryBusca.SQL.Clear ;
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, sum(bp.dCantidad * ct.dVentaMN) as dVentaMN, ' +
                                       'sum(bp.dCantidad * ct.dVentaDLL) as dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (c.sContrato = bp.sContrato) ' +
                                       'where bp.sContrato = :contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato ' +
                                       'order By bp.sContrato') ;
               connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
               connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
               connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
               connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
               connection.QryBusca.open ;
               If connection.qrybusca.recordcount > 0 then
               begin
                   // Metemos un registro en blanco ...
                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;
                   While NOT connection.qryBusca.Eof Do
                   begin
                        rxGeneradorDia.Append ;
                        rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                        rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                        rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                        rxGeneradorDia.FieldValues['sNumeroOrden'] := '' ;
                        rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelPernocta ;
                        rxGeneradorDia.FieldValues['mDescripcion']     := global_labelPernoctaDesc ;
                        rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                        rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                        rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                        rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                        rxGeneradorDia.Post ;
                        connection.qryBusca.Next ;
                   end;
                   // Estos faltan, se van en blanco por el momento ...
                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := global_Materialtierra ;
                   rxGeneradorDia.FieldValues['mDescripcion']     := global_MaterialtierraDesc ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

                   rxGeneradorDia.Append ;
                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                   rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                   rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                   rxGeneradorDia.Post ;

//                   rxGeneradorDia.Append ;
//                   rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
//                   rxGeneradorDia.FieldValues['sTitulo'] := '' ;
//                   rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
//                   rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
//                   rxGeneradorDia.FieldValues['sNumeroActividad'] := 'C-18' ;
//                   rxGeneradorDia.FieldValues['mDescripcion'] := 'SUMINISTRO DE MATERIALES PARA TRABAJOS DE REHABILITACION Y ADECUACION' ;
//                   rxGeneradorDia.FieldValues['sMedida'] := '' ;
//                   rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
//                   rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
//                   rxGeneradorDia.FieldValues['dTotal'] := 0 ;
//                   rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
//                   rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
//                   rxGeneradorDia.Post ;
               end;


          try
              If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                  rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
              Else
                  rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;
          except
              on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Impresion de Numeros Generadores', 'Al generar firmas al imprimir Estimacion x Orden', 0);
              end;
          end;

          BuscaContratoEmbarcacion;
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_estimaciongeneral.fr3') ;
          frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
       end;
    end;

    // EStimacion por Plataforma .....

    if btnEstimacionPlataforma.Checked then
    begin
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       // Primero metemos el barco .....
       If ((tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') and (tsPlataformas.Text = '<<<<< TODOS LOS FRENTES >>>>>')) then
       begin
          QryContratos.Active := False ;
          QryContratos.Active := True ;
          if QryContratos.RecordCount > 0 then
          begin
             While NOT QryContratos.Eof Do
             Begin
                Connection.QryBusca2.Active := False ;
                Connection.QryBusca2.SQL.Clear ;
                Connection.QryBusca2.SQL.Add('Select sNumeroOrden from ordenesdetrabajo Where scontrato =:Contrato Order By sNumeroOrden') ;
                Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Contrato').Value    := QryContratos.FieldValues['sContrato'] ;
                Connection.QryBusca2.Open ;
                if Connection.QryBusca2.RecordCount > 0 then
                begin
                    While NOT Connection.QryBusca2.Eof Do
                    Begin
                        // Barco ...
                        connection.QryBusca.Active := False ;
                        connection.QryBusca.SQL.Clear ;
                        connection.QryBusca.SQL.Add('select c.sContrato, f.sNumeroOrden, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                                'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor * t.dVentaMN) as dVentaMN, sum(f.sFactor * t.dVentaDLL) as  dVentaDLL ' +
                                'from fasesxorden f ' +
                                'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" ) ' +
                                'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                                'where f.sContrato = :Contrato and f.sNumeroOrden = :orden and f.dIdFecha >= :FechaInicio and f.dIdFecha <= :FechaFinal ' +
                                'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion order By f.sContrato, f.sNumeroOrden, t.iOrden ') ;
                        connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
                        connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
                        connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
                        connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
                        connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
                        connection.QryBusca.Params.ParamByName('Contrato').Value       := QryContratos.FieldValues['sContrato'] ;
                        connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
                        connection.QryBusca.Params.ParamByName('orden').Value       := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                        connection.QryBusca.open ;
                        If connection.qrybusca.recordcount > 0 then
                        begin
                            While NOT connection.qryBusca.Eof Do
                            begin
                                 rxGeneradorDia.Append ;
                                 rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                                 rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                                 rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                                 rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                                 rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                                 rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
                                 rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
                                 rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
                                 rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                                 rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                                 rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                                 rxGeneradorDia.FieldValues['dTotalMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                                 rxGeneradorDia.FieldValues['dTotalDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                                 rxGeneradorDia.Post ;
                                 connection.qryBusca.Next ;
                           end;
                           rxGeneradorDia.Append ;
                           rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                           rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                           rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                           rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                           rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                           rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                           rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                           rxGeneradorDia.FieldValues['sMedida'] := '' ;
                           rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                           rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                           rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                           rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                           rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                           rxGeneradorDia.Post ;

                        end ;

                       // Ahora metemos personal ...
                        connection.QryBusca.Active := False ;
                        connection.QryBusca.SQL.Clear ;
                        connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, ba.sNumeroOrden, sum(bp.dCantidad * p.dVentaMN) as dVentaMN, ' +
                                       'sum(bp.dCantidad * p.dVentaDLL) as dVentaDLL from bitacoradepersonal bp ' +
                                       'inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'" '+sPersonalPU+') ' +
                                       'Inner Join contratos c on (c.sContrato = bp.sContrato) ' +
                                       'where bp.sContrato = :contrato and ba.sNumeroOrden = :Orden and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, ba.sNumeroOrden ' +
                                       'order By bp.sContrato, ba.sNumeroOrden') ;
                        connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
                        connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
                        connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
                        connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
                        connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
                        connection.QryBusca.Params.ParamByName('Contrato').Value       := QryContratos.FieldValues['sContrato'] ;
                        connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
                        connection.QryBusca.Params.ParamByName('orden').Value       := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                        connection.QryBusca.open ;
                        If connection.qrybusca.recordcount > 0 then
                        begin
                            // Metemos un registro en blanco ...
                             rxGeneradorDia.Append ;
                             rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                             rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                             rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                             rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                             rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                             rxGeneradorDia.FieldValues['sNumeroActividad'] := global_Materialbordo ;
                             rxGeneradorDia.FieldValues['mDescripcion'] := global_MaterialbordoDesc ;
                             rxGeneradorDia.FieldValues['sMedida'] := '' ;
                             rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                             rxGeneradorDia.Post ;

                             rxGeneradorDia.Append ;
                             rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                             rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                             rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                             rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                             rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                             rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                             rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                             rxGeneradorDia.FieldValues['sMedida'] := '' ;
                             rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                             rxGeneradorDia.Post ;

                             While NOT connection.qryBusca.Eof Do
                             begin
                                  rxGeneradorDia.Append ;
                                  rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                                  rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                                  rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                                  rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                                  rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                                  rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelPersonal ;
                                  rxGeneradorDia.FieldValues['mDescripcion'] := global_labelPersonalDesc ;
                                  rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                                  rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                                  rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                                  rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                                  rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                                  rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                                  rxGeneradorDia.Post ;
                                  connection.qryBusca.Next ;
                             end;
                         end;

                         // Ahora metemos equipos ...
                         connection.QryBusca.Active := False ;
                         connection.QryBusca.SQL.Clear ;
                         connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, ba.sNumeroOrden, sum(be.dCantidad * e.dVentaMN) as dVentaMN, ' +
                                       'sum(be.dCantidad * e.dVentaDLL) as dVentaDLL from bitacoradeequipos be ' +
                                       'inner join bitacoradeactividades ba on (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (c.sContrato = be.sContrato) ' +
                                       'where be.sContrato = :contrato and ba.sNumeroOrden = :orden and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, ba.sNumeroOrden ' +
                                       'order By be.sContrato, ba.sNumeroOrden') ;
                         connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
                         connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
                         connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
                         connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
                         connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
                         connection.QryBusca.Params.ParamByName('Contrato').Value       := QryContratos.FieldValues['sContrato'] ;
                         connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
                         connection.QryBusca.Params.ParamByName('orden').Value       := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                         connection.QryBusca.open ;
                         If connection.qrybusca.recordcount > 0 then
                         begin
                           // Metemos un registro en blanco ...
                             rxGeneradorDia.Append ;
                             rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                             rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                             rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                             rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                             rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                             rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                             rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                             rxGeneradorDia.FieldValues['sMedida'] := '' ;
                             rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                             rxGeneradorDia.Post ;

                             While NOT connection.qryBusca.Eof Do
                             begin
                                  rxGeneradorDia.Append ;
                                  rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                                  rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                                  rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                                  rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                                  rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                                  rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelEquipo ;
                                  rxGeneradorDia.FieldValues['mDescripcion'] :=  global_labelEquipoDesc ;
                                  rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                                  rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                                  rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                                  rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                                  rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                                  rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                                  rxGeneradorDia.Post ;
                                  connection.qryBusca.Next ;
                             end;
                         end ;

                         // Ahora metemos PERNOCTAS ...
                         connection.QryBusca.Active := False ;
                         connection.QryBusca.SQL.Clear ;
                         connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, bp.sNumeroOrden, sum(bp.dCantidad * ct.dVentaMN) as dVentaMN, ' +
                                       'sum(bp.dCantidad * ct.dVentaDLL) as dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (c.sContrato = bp.sContrato) ' +
                                       'where bp.sContrato = :contrato and bp.sNumeroOrden = :orden and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.sNumeroOrden ' +
                                       'order By bp.sContrato, bp.sNumeroOrden') ;
                         connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
                         connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
                         connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
                         connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
                         connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
                         connection.QryBusca.Params.ParamByName('Contrato').Value       := QryContratos.FieldValues['sContrato'] ;
                         connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
                         connection.QryBusca.Params.ParamByName('orden').Value       := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                         connection.QryBusca.open ;
                         If connection.qrybusca.recordcount > 0 then
                         begin
                             // Metemos un registro en blanco ...
                             rxGeneradorDia.Append ;
                             rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                             rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                             rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                             rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                             rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                             rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                             rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                             rxGeneradorDia.FieldValues['sMedida'] := '' ;
                             rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                             rxGeneradorDia.Post ;
                             While NOT connection.qryBusca.Eof Do
                             begin
                                rxGeneradorDia.Append ;
                                rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                                rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                                rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                                rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                                rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                                rxGeneradorDia.FieldValues['sNumeroActividad']     := global_labelPernocta ;
                                rxGeneradorDia.FieldValues['mDescripcion']         := global_labelPernoctaDesc ;
                                rxGeneradorDia.FieldValues['sMedida']              := 'LOTE' ;
                                rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                                rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                                rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                                rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                                rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                                rxGeneradorDia.Post ;
                                connection.qryBusca.Next ;
                             end;

                             // Estos faltan, se van en blanco por el momento ...
                             rxGeneradorDia.Append ;
                             rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                             rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                             rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                             rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca2.FieldValues['sNumeroOrden'] ;
                             rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                             rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                             rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                             rxGeneradorDia.FieldValues['sMedida'] := '' ;
                             rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                             rxGeneradorDia.Post ;

                             rxGeneradorDia.Append ;
                             rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                             rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                             rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                             rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca2.FieldValues['sNumeroOrden'] ;
                             rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                             rxGeneradorDia.FieldValues['sNumeroActividad']     := global_Materialtierra ;
                             rxGeneradorDia.FieldValues['mDescripcion'] := global_MaterialtierraDesc ;
                             rxGeneradorDia.FieldValues['sMedida'] := '' ;
                             rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                             rxGeneradorDia.Post ;

                             rxGeneradorDia.Append ;
                             rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                             rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                             rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
                             rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca2.FieldValues['sNumeroOrden'] ;
                             rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                             rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                             rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                             rxGeneradorDia.FieldValues['sMedida'] := '' ;
                             rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                             rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                             rxGeneradorDia.Post ;

//                             rxGeneradorDia.Append ;
//                             rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
//                             rxGeneradorDia.FieldValues['sTitulo'] := '' ;
//                             rxGeneradorDia.FieldValues['sContrato'] :=  QryContratos.FieldValues['sContrato'] ;
//                             rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca2.FieldValues['sNumeroOrden'] ;
//                             rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
//                             rxGeneradorDia.FieldValues['sNumeroActividad'] := 'C-18' ;
//                             rxGeneradorDia.FieldValues['mDescripcion'] := 'SUMINISTRO DE MATERIALES PARA TRABAJOS DE REHABILITACION Y ADECUACION' ;
//                             rxGeneradorDia.FieldValues['sMedida'] := '' ;
//                             rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
//                             rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
//                             rxGeneradorDia.FieldValues['dTotal'] := 0 ;
//                             rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
//                             rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
//                             rxGeneradorDia.Post ;
                         end;
                         connection.QryBusca2.Next
                    End;
                end;
               QryContratos.Next
             end
          end ;
          If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
              rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
          Else
              rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

          BuscaContratoEmbarcacion;
          frGenerador.LoadFromFile(Global_Files+ global_miReporte + '_estimacionplataforma.fr3') ;
          frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
       end
       else
       begin
              // Barco ...
              connection.QryBusca.Active := False ;
              connection.QryBusca.SQL.Clear ;
              connection.QryBusca.SQL.Add('select c.sContrato, f.sNumeroOrden, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                                'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor * t.dVentaMN) as dVentaMN, sum(f.sFactor * t.dVentaDLL) as  dVentaDLL ' +
                                'from fasesxorden f ' +
                                'inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" ) ' +
                                'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                                'where f.sContrato = :Contrato and f.sNumeroOrden = :orden and f.dIdFecha >= :FechaInicio and f.dIdFecha <= :FechaFinal ' +
                                'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion order By f.sContrato, f.sNumeroOrden, t.iOrden ') ;
              connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
              connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
              connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
              connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
              connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
              connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('orden').Value       := tsPlataformas.Text ;
              connection.QryBusca.open ;
              If connection.qrybusca.recordcount > 0 then
              begin
                   While NOT connection.qryBusca.Eof Do
                   begin
                          rxGeneradorDia.Append ;
                          rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                          rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                          rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                          rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                          rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                          rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
                          rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
                          rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
                          rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                          rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                          rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                          rxGeneradorDia.FieldValues['dTotalMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                          rxGeneradorDia.FieldValues['dTotalDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                          rxGeneradorDia.Post ;
                          connection.qryBusca.Next ;
                    end;
                    rxGeneradorDia.Append ;
                    rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                    rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                    rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                    rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
                    rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                    rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                    rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                    rxGeneradorDia.FieldValues['sMedida'] := '' ;
                    rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                    rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                    rxGeneradorDia.Post ;
              end ;

              // Ahora metemos personal ...
              connection.QryBusca.Active := False ;
              connection.QryBusca.SQL.Clear ;
              connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, ba.sNumeroOrden, sum(bp.dCantidad * p.dVentaMN) as dVentaMN, ' +
                                       'sum(bp.dCantidad * p.dVentaDLL) as dVentaDLL from bitacoradepersonal bp ' +
                                       'inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'" '+sPersonalPU+') ' +
                                       'Inner Join contratos c on (c.sContrato = bp.sContrato) ' +
                                       'where bp.sContrato = :contrato and ba.sNumeroOrden = :Orden and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, ba.sNumeroOrden ' +
                                       'order By bp.sContrato, ba.sNumeroOrden') ;
              connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
              connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
              connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
              connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
              connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
              connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('orden').Value       := tsPlataformas.Text ;
              connection.QryBusca.open ;
              If connection.qrybusca.recordcount > 0 then
              begin
                    // Metemos un registro en blanco ...
                    rxGeneradorDia.Append ;
                    rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                    rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                    rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                    rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
                    rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                    rxGeneradorDia.FieldValues['sNumeroActividad'] := global_Materialbordo ;
                    rxGeneradorDia.FieldValues['mDescripcion'] := global_MaterialbordoDesc ;
                    rxGeneradorDia.FieldValues['sMedida'] := '' ;
                    rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                    rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                    rxGeneradorDia.Post ;

                    rxGeneradorDia.Append ;
                    rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                    rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                    rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                    rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
                    rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                    rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                    rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                    rxGeneradorDia.FieldValues['sMedida'] := '' ;
                    rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                    rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                    rxGeneradorDia.Post ;

                    While NOT connection.qryBusca.Eof Do
                    begin
                          rxGeneradorDia.Append ;
                          rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                          rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                          rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                          rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                          rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                          rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelPersonal ;
                          rxGeneradorDia.FieldValues['mDescripcion']     := global_labelPersonalDesc ;
                          rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                          rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                          rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                          rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                          rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                          rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                          rxGeneradorDia.Post ;
                          connection.qryBusca.Next ;
                    end;
              end;

              // Ahora metemos equipos ...
              connection.QryBusca.Active := False ;
              connection.QryBusca.SQL.Clear ;
              connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, ba.sNumeroOrden, sum(be.dCantidad * e.dVentaMN) as dVentaMN, ' +
                                       'sum(be.dCantidad * e.dVentaDLL) as dVentaDLL from bitacoradeequipos be ' +
                                       'inner join bitacoradeactividades ba on (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (c.sContrato = be.sContrato) ' +
                                       'where be.sContrato = :contrato and ba.sNumeroOrden = :orden and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, ba.sNumeroOrden ' +
                                       'order By be.sContrato, ba.sNumeroOrden') ;
              connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
              connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
              connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
              connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
              connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
              connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('orden').Value       := tsPlataformas.Text ;
              connection.QryBusca.open ;
              If connection.qrybusca.recordcount > 0 then
              begin
                    // Metemos un registro en blanco ...
                    rxGeneradorDia.Append ;
                    rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                    rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                    rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                    rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
                    rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                    rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                    rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                    rxGeneradorDia.FieldValues['sMedida'] := '' ;
                    rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                    rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                    rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                    rxGeneradorDia.Post ;

                    While NOT connection.qryBusca.Eof Do
                    begin
                           rxGeneradorDia.Append ;
                           rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                           rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                           rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                           rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                           rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                           rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelEquipo ;
                           rxGeneradorDia.FieldValues['mDescripcion']     := global_labelEquipoDesc ;
                           rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                           rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                           rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                           rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                           rxGeneradorDia.Post ;
                           connection.qryBusca.Next ;
                    end;
              end ;

              // Ahora metemos PERNOCTAS ...
              connection.QryBusca.Active := False ;
              connection.QryBusca.SQL.Clear ;
              connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, c.sContrato, bp.sNumeroOrden, sum(bp.dCantidad * ct.dVentaMN) as dVentaMN, ' +
                                       'sum(bp.dCantidad * ct.dVentaDLL) as dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (c.sContrato = bp.sContrato) ' +
                                       'where bp.sContrato = :contrato and bp.sNumeroOrden = :orden and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.sNumeroOrden ' +
                                       'order By bp.sContrato, bp.sNumeroOrden') ;
              connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
              connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
              connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
              connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
              connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
              connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('orden').Value       := tsPlataformas.Text ;
              connection.QryBusca.open ;
              If connection.qrybusca.recordcount > 0 then
              begin
                     // Metemos un registro en blanco ...
                     rxGeneradorDia.Append ;
                     rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                     rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                     rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                     rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
                     rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                     rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                     rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                     rxGeneradorDia.FieldValues['sMedida'] := '' ;
                     rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                     rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                     rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                     rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                     rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                     rxGeneradorDia.Post ;
                     While NOT connection.qryBusca.Eof Do
                     begin
                           rxGeneradorDia.Append ;
                           rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                           rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
                           rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                           rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
                           rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                           rxGeneradorDia.FieldValues['sNumeroActividad'] := global_labelPernocta ;
                           rxGeneradorDia.FieldValues['mDescripcion'] :=  global_labelPernoctaDesc ;
                           rxGeneradorDia.FieldValues['sMedida'] := 'LOTE' ;
                           rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                           rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                           rxGeneradorDia.FieldValues['dTotal'] := 1 ;
                           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                           rxGeneradorDia.Post ;
                           connection.qryBusca.Next ;
                      end;

                      // Estos faltan, se van en blanco por el momento ...
                      rxGeneradorDia.Append ;
                      rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                      rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                      rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                      rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
                      rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                      rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                      rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                      rxGeneradorDia.FieldValues['sMedida'] := '' ;
                      rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                      rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                      rxGeneradorDia.Post ;

                      rxGeneradorDia.Append ;
                      rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                      rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                      rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                      rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
                      rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                      rxGeneradorDia.FieldValues['sNumeroActividad'] := global_Materialtierra ;
                      rxGeneradorDia.FieldValues['mDescripcion'] := global_MaterialtierraDesc ;
                      rxGeneradorDia.FieldValues['sMedida'] := '' ;
                      rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                      rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                      rxGeneradorDia.Post ;

                      rxGeneradorDia.Append ;
                      rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                      rxGeneradorDia.FieldValues['sTitulo'] := '' ;
                      rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
                      rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
                      rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
                      rxGeneradorDia.FieldValues['sNumeroActividad'] := '' ;
                      rxGeneradorDia.FieldValues['mDescripcion'] := '' ;
                      rxGeneradorDia.FieldValues['sMedida'] := '' ;
                      rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
                      rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
                      rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
                      rxGeneradorDia.Post ;

//                      rxGeneradorDia.Append ;
//                      rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
//                      rxGeneradorDia.FieldValues['sTitulo'] := '' ;
//                      rxGeneradorDia.FieldValues['sContrato'] :=  tsContrato.Text ;
//                      rxGeneradorDia.FieldValues['sNumeroOrden'] := tsPlataformas.Text ;
//                      rxGeneradorDia.FieldValues['mDescripcionContrato'] := '' ;
//                      rxGeneradorDia.FieldValues['sNumeroActividad'] := 'C-18' ;
//                      rxGeneradorDia.FieldValues['mDescripcion'] := 'SUMINISTRO DE MATERIALES PARA TRABAJOS DE REHABILITACION Y ADECUACION' ;
//                      rxGeneradorDia.FieldValues['sMedida'] := '' ;
//                      rxGeneradorDia.FieldValues['dVentaMN'] := 0 ;
//                      rxGeneradorDia.FieldValues['dVentaDLL'] := 0 ;
//                      rxGeneradorDia.FieldValues['dTotal'] := 0 ;
//                      rxGeneradorDia.FieldValues['dTotalMN'] := 0 ;
//                      rxGeneradorDia.FieldValues['dTotalDLL'] := 0 ;
//                      rxGeneradorDia.Post ;
                end;
                If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                     rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
                Else
                     rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

                BuscaContratoEmbarcacion;
                frGenerador.LoadFromFile(Global_Files + global_miReporte + '_estimacionplataforma.fr3') ;
                frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
          end ;
    end ;


    // Termina la estimacion ....
    // Reportes de Generadores con Importes ....
    // Reporte Uno
    if opcBarcoGeneralImporte.Checked then
    begin
       sOpcionReporte := 'BARCO' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, ' +
                        '(select mDescripcion from contratos where sContrato =:Contrato) as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'where f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sClasificacion order By t.iOrden ')
       Else
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sClasificacion order By t.iOrden ') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ; 
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value     := tsContrato.Text ;
       end
       else
       begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value     := global_contrato_barco ;
       end;

       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
           rxGeneradorDia.Append ;
           rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
           rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
           rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
           rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
           rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
           rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
           rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.Post ;
          connection.qryBusca.Next ;
       end;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadordebarcogeneralImporte_2.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Dos
    if opcBarcoOrdenImporte.Checked then
    begin
       sOpcionReporte := 'BARCO' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'where f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sClasificacion order By f.sContrato, t.iOrden ')
       Else
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sClasificacion order By f.sContrato, t.iOrden ') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;

       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
           rxGeneradorDia.Append ;
           rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
           rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
           rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
           rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
           rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
           rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
           rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
           rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.Post ;
          connection.qryBusca.Next ;
       end;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadordebarcoordenImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Tres
    if opcBarcoPlataformaImporte.Checked then
    begin
       sOpcionReporte := 'BARCO' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, f.sNumeroOrden, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'where f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion order By f.sContrato, f.sNumeroOrden, t.iOrden ')
       Else
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, f.sNumeroOrden, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion order By f.sContrato, f.sNumeroOrden, t.iOrden ') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;

       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
           rxGeneradorDia.Append ;
           rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
           rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
           rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
           rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
           rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
           rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
           rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
           rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
           rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.Post ;
          connection.qryBusca.Next ;
       end;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadordebarcoplataformaImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Generadores de Equipo con Importes ....
    // Reporte Numero 4
    if opcEquipoOrdenImporte.Checked then
    begin
       sOpcionReporte := 'EQUIPOS' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor, e.dVentaMN, e.dVentaDLL from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, be.sIdEquipo ' +
                                       'order By be.sContrato, e.iItemOrden')
       Else
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor, e.dVentaMN, e.dVentaDLL from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.sContrato = :Contrato and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, be.sIdEquipo ' +
                                       'order By be.sContrato, e.iItemOrden') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;
       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
          rxGeneradorDia.Append ;
          rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
          rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
          rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
          rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
          rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
          rxGeneradorDia.FieldValues['sIdEquipo'] := connection.QryBusca.FieldValues['sIdEquipo'] ;
          rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
          rxGeneradorDia.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
          rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
          rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
          rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
          rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
          rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
          rxGeneradorDia.FieldValues['sAnexo'] := Anexo_equipo;
          rxGeneradorDia.Post ;
          connection.qryBusca.Next ;
       end;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorequipoxordenImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Numero 5
    if opcEquipoPlataformaImporte.Checked then
    begin
       sOpcionReporte := 'EQUIPOS' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor, e.dVentaMN, e.dVentaDLL from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, ba.sNumeroOrden, be.sIdEquipo ' +
                                       'order By be.sContrato, ba.sNumeroOrden, e.iItemOrden')
       Else
       begin
           If (tsPlataformas.Text = '<<<<< TODOS LOS FRENTES >>>>>') then
                connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor, e.dVentaMN, e.dVentaDLL from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.sContrato = :Contrato and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, ba.sNumeroOrden, be.sIdEquipo ' +
                                       'order By be.sContrato, ba.sNumeroOrden, e.iItemOrden')
           else
                connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor, e.dVentaMN, e.dVentaDLL from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.sContrato = :Contrato and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal and ba.sNumeroOrden = :orden ' +
                                       'Group By be.sContrato, ba.sNumeroOrden, be.sIdEquipo ' +
                                       'order By be.sContrato, ba.sNumeroOrden, e.iItemOrden') ;

       end ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
           If (tsPlataformas.Text <> '<<<<< TODOS LOS FRENTES >>>>>') then
           Begin
              connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Orden').Value       := tsPlataformas.Text ;
           End ;
       End;

       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
          rxGeneradorDia.Append ;
          rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
          rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
          rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
          rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
          rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
          rxGeneradorDia.FieldValues['sIdEquipo'] := connection.QryBusca.FieldValues['sIdEquipo'] ;
          rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
          rxGeneradorDia.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
          rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
          rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
          rxGeneradorDia.FieldValues['dTotal']    := connection.QryBusca.FieldValues['sFactor'] ;
          rxGeneradorDia.FieldValues['dTotalMN']  := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
          rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
          rxGeneradorDia.FieldValues['sAnexo']    := Anexo_equipo;
          rxGeneradorDia.Post ;
          connection.qryBusca.Next ;
       end;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorequipoxplataformaImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Generadores de Personal con Importes ....
    // Reporte Numero 6
    if opcPersonalOrdenImporte.Checked then
    begin
       sOpcionReporte := 'PERSONAL' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal,' +
                                       'p.sDescripcion, p.sMedida, '+MiDescripcion+' as sDescripcionG, bp.dIdFecha, sum(bp.dCantidad) as sFactor, p.dVentaMN, p.dVentaDLL from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'" '+sPersonalPU+') ' +
                                        sAgrupa+
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                       'where bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.'+linea1+' ' +
                                       'order By bp.sContrato, p.iItemOrden')
       Else
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal,' +
                                       'p.sDescripcion, p.sMedida, '+MiDescripcion+' as sDescripcionG, bp.dIdFecha, sum(bp.dCantidad) as sFactor, p.dVentaMN, p.dVentaDLL from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'" '+sPersonalPU+') ' +
                                        sAgrupa  +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                       'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.'+linea1+' ' +
                                       'order By bp.sContrato, p.iItemOrden') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;
       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
          rxGeneradorDia.Append ;
          rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
          rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
          rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
          rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
          rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
          rxGeneradorDia.FieldValues['sIdPersonal'] := connection.QryBusca.FieldValues['sIdPersonal'] ;
          rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues[''+linea2+''] ;
          rxGeneradorDia.FieldValues['sAgrupaPersonal'] := connection.QryBusca.FieldValues['sAgrupaPersonal'] ;
          rxGeneradorDia.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
          rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
          rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
          rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
          rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
          rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
          rxGeneradorDia.FieldValues['sAnexo'] := Anexo_personal;
          rxGeneradorDia.Post ;
          connection.qryBusca.Next ;
       end;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpersonalxordenImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Numero 7
    if opcPersonalPlataformaImporte.Checked then
    begin
       sOpcionReporte := 'PERSONAL' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal,' +
                                       'p.sDescripcion, p.sMedida, '+MiDescripcion+' as sDescripcionG, bp.dIdFecha, sum(bp.dCantidad) as sFactor, p.dVentaMN, p.dVentaDLL from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'" '+sPersonalPU+') ' +
                                        sAgrupa  +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                       'where bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, ba.sNumeroOrden, bp.'+linea1+' ' +
                                       'order By bp.sContrato, ba.sNumeroOrden, p.iItemOrden')
       Else
       begin
           If (tsPlataformas.Text = '<<<<< TODOS LOS FRENTES >>>>>') then
                connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal,' +
                                       'p.sDescripcion, p.sMedida, '+MiDescripcion+' as sDescripcionG, bp.dIdFecha, sum(bp.dCantidad) as sFactor, p.dVentaMN, p.dVentaDLL from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'" '+sPersonalPU+') ' +
                                        sAgrupa  +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                       'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, ba.sNumeroOrden, bp.'+linea1+' ' +
                                       'order By bp.sContrato, ba.sNumeroOrden, p.iItemOrden')
           else
                connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal,' +
                                       'p.sDescripcion, p.sMedida, '+MiDescripcion+' as sDescripcionG, bp.dIdFecha, sum(bp.dCantidad) as sFactor, p.dVentaMN, p.dVentaDLL from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and bp.sIdPersonal = p.sIdPersonal and p.lCobro = "'+sCobro+'" '+sPersonalPU+') ' +
                                        sAgrupa  +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                       'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal and ba.sNumeroOrden = :Orden ' +
                                       'Group By bp.sContrato, ba.sNumeroOrden, bp.'+linea1+' ' +
                                       'order By bp.sContrato, ba.sNumeroOrden, p.iItemOrden') ;

       end ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
           If (tsPlataformas.Text <> '<<<<< TODOS LOS FRENTES >>>>>') then
           Begin
              connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Orden').Value       := tsPlataformas.Text ;
           End ;
       End;
       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
          rxGeneradorDia.Append ;
          rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
          rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
          rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
          rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
          rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
          rxGeneradorDia.FieldValues['sIdPersonal'] := connection.QryBusca.FieldValues['sIdPersonal'] ;
          rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues[''+linea2+''] ;
          rxGeneradorDia.FieldValues['sAgrupaPersonal'] := connection.QryBusca.FieldValues['sAgrupaPersonal'] ;
          rxGeneradorDia.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
          rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
          rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
          rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
          rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
          rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
          rxGeneradorDia.FieldValues['sAnexo'] := Anexo_personal;
          rxGeneradorDia.Post ;
          connection.qryBusca.Next ;
       end;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpersonalxplataformaImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reportes Nuevos, de Material .....
    if opcMaterialDetalladoObra.Checked then
    begin
       sOpcionReporte := 'MATERIALES' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bm.sContrato, ba.sNumeroOrden, f.sIdFase, f.sDescripcion, bm.sWbs, bm.sIdMaterial, ' +
                                       'a.mDescripcion, a.sMedida, bm.dIdFecha, bm.dCantidad as sFactor, a.dVentaMN, a.dVentaDLL from bitacorademateriales bm ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bm.sContrato and ba.dIdFecha = bm.dIdFecha and ba.iIdDiario = bm.iIdDiario) ' +
                                       'Inner Join reportediario r On (r.sContrato = ba.sContrato and r.dIdFecha = ba.dIdFecha and r.sNumeroOrden = ba.sNumeroOrden and r.sIdTurno = ba.sIdTurno ) '  +
                                       'Inner Join actividadesxanexo a on (bm.sContrato = a.sContrato and r.sIdConvenio = a.sIdConvenio and bm.sWbs = a.sWbs And bm.sIdMaterial = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                       'Inner Join contratos c on (bm.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") ' +
                                       'Inner Join fasesxproyecto f on (a.sIdFase = f.sIdFase) ' +
                                       'where bm.dIdFecha >= :FechaInicio ' +
                                       'and bm.dIdFecha <= :FechaFinal ' +
                                       'Group By bm.sContrato, f.sIdFase, ba.sNumeroOrden ' +
                                       'order By bm.sContrato, f.sIdFase, ba.sNumeroOrden, a.iItemOrden')
       Else
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bm.sContrato, ba.sNumeroOrden, f.sIdFase, f.sDescripcion, bm.sWbs, bm.sIdMaterial, ' +
                                       'a.mDescripcion, a.sMedida, bm.dIdFecha, sum(bm.dCantidad) as sFactor, a.dVentaMN, a.dVentaDLL from bitacorademateriales bm ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bm.sContrato and ba.dIdFecha = bm.dIdFecha and ba.iIdDiario = bm.iIdDiario) ' +
                                       'Inner Join reportediario r On (r.sContrato = ba.sContrato and r.dIdFecha = ba.dIdFecha and r.sNumeroOrden = ba.sNumeroOrden and r.sIdTurno = ba.sIdTurno ) ' +
                                       'Inner Join actividadesxanexo a on (bm.sContrato = a.sContrato and r.sIdConvenio = a.sIdConvenio and bm.sWbs = a.sWbs And bm.sIdMaterial = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                       'Inner Join contratos c on (bm.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA")  ' +
                                       'Inner Join fasesxproyecto f on (a.sIdFase = f.sIdFase) ' +
                                       'where bm.sContrato = :Contrato and bm.dIdFecha >= :FechaInicio ' +
                                       'and bm.dIdFecha <= :FechaFinal ' +
                                       'Group By bm.sContrato, f.sIdFase, ba.sNumeroOrden, bm.sIdMaterial ' +
                                       'order By bm.sContrato, f.sIdFase, ba.sNumeroOrden, a.iItemOrden') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;
       connection.QryBusca.open ;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdFase'] + connection.QryBusca.FieldValues['sWbs']) then
          begin
              if rxGeneradorDia.State = dsInsert then
              begin
                 rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                 rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                 rxGeneradorDia.Post ;
              end ;

              sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdFase'] + connection.QryBusca.FieldValues['sWbs'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sIdFase'] := connection.QryBusca.FieldValues['sIdFase'] ;
              rxGeneradorDia.FieldValues['sGrupo'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdPersonal'] := connection.QryBusca.FieldValues['sIdFase'] + '.' +connection.QryBusca.FieldValues['sIdMaterial'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['mDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
              rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              rxGeneradorDia.FieldValues['sAnexo'] := Anexo_material ;
              rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
       begin
           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.Post ;
       end ;

       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
       begin
           //Buscamos si la Optativa es Administrativa para tomar los firmantes de Barco..
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato and bTipoAdmon = "Si"');
           connection.zCommand.ParamByName('contrato').AsString := tsContrato.Text;
           connection.zCommand.Open;

           if connection.zCommand.RecordCount > 0 then
               rDiarioFirmas(global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
           else
               rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;
       end;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadormaterialdetalle.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;


    if opcMaterialesPlataformaImporte.Checked then
    begin
       sOpcionReporte := 'MATERIALES' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bm.sContrato, ba.sNumeroOrden, f.sIdFase, f.sDescripcion, bm.sWbs, bm.sIdMaterial, ' +
                                       'a.mDescripcion, a.sMedida, bm.dIdFecha, sum(bm.dCantidad) as sFactor, a.dVentaMN, a.dVentaDLL from bitacorademateriales bm ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bm.sContrato and ba.dIdFecha = bm.dIdFecha and ba.iIdDiario = bm.iIdDiario) ' +
                                       'Inner Join reportediario r On (r.sContrato = ba.sContrato and r.dIdFecha = ba.dIdFecha and r.sNumeroOrden = ba.sNumeroOrden and r.sIdTurno = ba.sIdTurno ) '  +
                                       'Inner Join actividadesxanexo a on (bm.sContrato = a.sContrato and r.sIdConvenio = a.sIdConvenio and bm.sWbs = a.sWbs And bm.sIdMaterial = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                       'Inner Join contratos c on (bm.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") ' +
                                       'Inner Join fasesxproyecto f on (a.sIdFase = f.sIdFase) ' +
                                       'where bm.dIdFecha >= :FechaInicio ' +
                                       'and bm.dIdFecha <= :FechaFinal ' +
                                       'Group By bm.sContrato, f.sIdFase, ba.sNumeroOrden, bm.sIdMaterial ' +
                                       'order By bm.sContrato, f.sIdFase, ba.sNumeroOrden, a.iItemOrden')
       Else
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bm.sContrato, ba.sNumeroOrden, f.sIdFase, f.sDescripcion, bm.sWbs, bm.sIdMaterial, ' +
                                       'a.mDescripcion, a.sMedida, bm.dIdFecha, sum(bm.dCantidad) as sFactor, a.dVentaMN, a.dVentaDLL from bitacorademateriales bm ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bm.sContrato and ba.dIdFecha = bm.dIdFecha and ba.iIdDiario = bm.iIdDiario) ' +
                                       'Inner Join reportediario r On (r.sContrato = ba.sContrato and r.dIdFecha = ba.dIdFecha and r.sNumeroOrden = ba.sNumeroOrden and r.sIdTurno = ba.sIdTurno ) ' +
                                       'Inner Join actividadesxanexo a on (bm.sContrato = a.sContrato and r.sIdConvenio = a.sIdConvenio and bm.sWbs = a.sWbs And bm.sIdMaterial = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                       'Inner Join contratos c on (bm.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA")  ' +
                                       'Inner Join fasesxproyecto f on (a.sIdFase = f.sIdFase) ' +
                                       'where bm.sContrato = :Contrato and bm.dIdFecha >= :FechaInicio ' +
                                       'and bm.dIdFecha <= :FechaFinal ' +
                                       'Group By bm.sContrato, f.sIdFase, ba.sNumeroOrden, bm.sIdMaterial ' +
                                       'order By bm.sContrato, f.sIdFase, ba.sNumeroOrden, a.iItemOrden') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;
       connection.QryBusca.open ;

       While NOT connection.qryBusca.Eof Do
       begin
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sIdFase'] := connection.QryBusca.FieldValues['sIdFase'] ;
              rxGeneradorDia.FieldValues['sGrupo'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdPersonal'] := connection.QryBusca.FieldValues['sIdFase'] + '.' +connection.QryBusca.FieldValues['sIdMaterial'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['mDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
              rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
              rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
              rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
              rxGeneradorDia.FieldValues['sAnexo'] := Anexo_material;
              connection.qryBusca.Next ;
       end;

       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadormaterialxplataformaImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reportes de Personal Pernoctas
    // Reporte Numero 8
    if opcPernoctaOrdenImporte.Checked then
    begin
       sOpcionReporte := 'PERNOCTAS' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                       'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor, ct.sMedida, ct.dVentaMN, ct.dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") ' +
                                       'where bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.sIdCuenta ' +
                                       'order By bp.sContrato, bp.sIdCuenta')
       Else
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                       'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor, ct.sMedida, ct.dVentaMN, ct.dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") ' +
                                       'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.sIdCuenta ' +
                                       'order By bp.sContrato, bp.sIdCuenta') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;

       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdCuenta'] := connection.QryBusca.FieldValues['sIdCuenta'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] :=  connection.QryBusca.FieldValues['sMedida']  ;
              rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
              rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
              rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
              rxGeneradorDia.FieldValues['sAnexo'] := Anexo_pernocta;
              rxGeneradorDia.Post ;
              connection.qryBusca.Next ;
       end;

       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpernoctaxordenImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;


    // Reporte Numero 9
    if opcPernoctaPlataformaImporte.Checked then
    begin
       sOpcionReporte := 'PERNOCTAS' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                       'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor, ct.sMedida, ct.dVentaMN, ct.dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") ' +
                                       'where bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.sIdCuenta ' +
                                       'order By bp.sContrato, bp.sIdCuenta')
       Else
       begin
           If (tsPlataformas.Text = '<<<<< TODOS LOS FRENTES >>>>>') then
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                       'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor, ct.sMedida, ct.dVentaMN, ct.dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") ' +
                                       'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.sIdCuenta ' +
                                       'order By bp.sContrato, bp.sIdCuenta')
           else
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                       'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor, ct.sMedida, ct.dVentaMN, ct.dVentaDLL from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") ' +
                                       'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal and bp.sNumeroOrden = :orden ' +
                                       'Group By bp.sContrato, bp.sIdCuenta ' +
                                       'order By bp.sContrato, bp.sIdCuenta') ;
       end;

       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
           If (tsPlataformas.Text <> '<<<<< TODOS LOS FRENTES >>>>>') then
           Begin
              connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Orden').Value       := tsPlataformas.Text ;
           End ;
       End;

       connection.QryBusca.open ;
       While NOT connection.qryBusca.Eof Do
       begin
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdCuenta'] := connection.QryBusca.FieldValues['sIdCuenta'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] :=  connection.QryBusca.FieldValues['sMedida']  ;
              rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
              rxGeneradorDia.FieldValues['dTotal'] := connection.QryBusca.FieldValues['sFactor'] ;
              rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
              rxGeneradorDia.FieldValues['sAnexo']    := Anexo_pernocta;
              rxGeneradorDia.Post ;
              connection.qryBusca.Next ;
       end;

       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpernoctaxplataformaImporte.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Generadores de Barco sin Importe.....
    if OpcBarco.Checked then
    begin
       sOpcionReporte := 'BARCO' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.sNumeroPOT, "" as sNumeroOrden, '+
                        '(select mDescripcion from contratos where sContrato =:Contrato) as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco"  and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion  like :Embarcacion ) '+
                        'where f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sClasificacion, f.dIdFecha order By t.iOrden, f.dIdFecha ')
       Else
       begin
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTitulo, c.sNumeroPOT, "" as sNumeroOrden, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco"  and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion like :Embarcacion ) ');
           if chkReporteNuevo.Checked then
              connection.QryBusca.SQL.Add('where f.dIdFecha >= :FechaInicio and f.dIdFecha <= :FechaFinal ')
           else
              connection.QryBusca.SQL.Add('where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio and f.dIdFecha <= :FechaFinal ');

            connection.QryBusca.SQL.Add('Group By f.sClasificacion, f.dIdFecha order By t.iOrden, f.dIdFecha ') ;
       end;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       connection.QryBusca.Params.ParamByName('Embarcacion').DataType   := ftString ;
       connection.QryBusca.Params.ParamByName('Embarcacion').Value      := Embarcacion ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           if chkReporteNuevo.Checked = false then
           begin
               connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value     := tsContrato.Text ;
           end;
       End
       else
       begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value     := global_Contrato_barco ;
       end;

       connection.QryBusca.open ;
       if (chkReporteNuevo.Checked) then
       begin
           If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
              BuscaEstimacion(global_contrato_barco)
           else
              BuscaEstimacion(tsContrato.Text);
           InsertaAnexo('Barco');
       end;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sIdTipoMovimiento']) then
          begin
              if (chkReporteNuevo.Checked) then
                 If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                     BuscaEstimacion(global_contrato_barco)
                 else
                     BuscaEstimacion(tsContrato.Text);

              if rxGeneradorDia.State = dsInsert then
              begin
                 rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                 rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                 rxGeneradorDia.Post ;
              end ;

              sCadena := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo']    := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo']   := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida']      := 'DIA' ;
              rxGeneradorDia.FieldValues['dTotal']       := 0 ;
              rxGeneradorDia.FieldValues['FechaInicial'] := tdFechaInicio.Date;
              rxGeneradorDia.FieldValues['dVentaMN']     := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL']    := connection.QryBusca.FieldValues['dVentaDLL'] ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;

              if (chkReporteNuevo.Checked) then
                 If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                     OrdenConBarco(global_contrato_barco)
                 else
                     OrdenConBarco(tsContrato.Text);
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
       begin
           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.Post ;
       end ;

       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       if chkReporteNuevo.Checked then
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorbarcogeneral_2.fr3')
       else
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorbarcogeneral.fr3');
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end ;

    // Reporte numero 2
    if OpcConsolidadoBarco.Checked then
    begin
       sOpcionReporte := 'BARCO' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTipoObra as sNumeroOrden, f.sContrato, c.mDescripcion as mDescripcionContrato, ' +
                        'c.sTitulo, f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si") ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion  like :Embarcacion ) '+
                        'where f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By c.sTipoObra,  f.sClasificacion, f.sContrato, f.dIdFecha order By c.sTipoObra, t.iOrden, f.sContrato, f.dIdFecha ')
       Else
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTipoObra as sNumeroOrden, f.sContrato, c.mDescripcion as mDescripcionContrato, ' +
                        'c.sTitulo, f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si") ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion  like :Embarcacion ) '+
                        'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By c.sTipoObra, f.sClasificacion, f.sContrato, f.dIdFecha order By c.sTipoObra, t.iOrden, f.sContrato, f.dIdFecha ') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       connection.QryBusca.Params.ParamByName('Embarcacion').DataType   := ftString ;
       connection.QryBusca.Params.ParamByName('Embarcacion').Value      := Embarcacion ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;

       connection.QryBusca.open ;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdTipoMovimiento'] + connection.QryBusca.FieldValues['sContrato']) then
          begin
              if rxGeneradorDia.State = dsInsert then
              begin
                 rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                 rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                 rxGeneradorDia.Post ;
              end ;

              sCadena := connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdTipoMovimiento'] + connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
       begin
           rxGeneradorDia.FieldValues['dTotalMN']  := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.Post ;
       end ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorConsolidadoBarco.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Numero 3
    if opcBarcoPlataforma.Checked then
    begin
       sOpcionReporte := 'BARCO' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTipoObra,  f.sNumeroOrden, f.sContrato, c.sTitulo, c.mDescripcion  as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion  like :Embarcacion ) '+
                        'where f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion, f.dIdFecha order By f.sContrato, f.sNumeroOrden, t.iOrden, f.dIdFecha ')
       Else
           connection.QryBusca.SQL.Add('select c.sContrato, c.sTipoObra,  f.sNumeroOrden, f.sContrato, c.mDescripcion as mDescripcionContrato, c.sTitulo, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion  like :Embarcacion ) '+
                        'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion, f.dIdFecha order By f.sContrato, f.sNumeroOrden, t.iOrden, f.dIdFecha ') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       connection.QryBusca.Params.ParamByName('Embarcacion').DataType   := ftString ;
       connection.QryBusca.Params.ParamByName('Embarcacion').Value      := Embarcacion ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;

       connection.QryBusca.open ;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sTipoObra'] + connection.QryBusca.FieldValues['sIdTipoMovimiento'] + connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden']) then
          begin
              if rxGeneradorDia.State = dsInsert then
              begin
                 rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                 rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                 rxGeneradorDia.Post ;
              end ;

              sCadena := connection.QryBusca.FieldValues['sTipoObra'] + connection.QryBusca.FieldValues['sIdTipoMovimiento'] + connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sTipoObra'] := connection.QryBusca.FieldValues['sTipoObra'] ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
       begin
           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.Post ;
       end ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadordetallebarcoorden.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Numero 4
    if opcBarcoTipo.Checked then
    begin
       sOpcionReporte := 'BARCO' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select f.sContrato, c.sTitulo, f.sNumeroOrden, c.mDescripcion as mDescripcionContrato, ' +
                        'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                        'from fasesxorden f ' +
                        'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si") ' +
                        'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                        'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion  like :Embarcacion ) '+
                        'where f.dIdFecha >= :FechaInicio ' +
                        'and f.dIdFecha <= :FechaFinal ' +
                        'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion, f.dIdFecha order By f.sContrato, f.sNumeroOrden, t.iOrden, f.dIdFecha ')
       Else
       begin
           If (tsPlataformas.Text = '<<<<< TODOS LOS FRENTES >>>>>') then
               connection.QryBusca.SQL.Add('select f.sContrato, c.mDescripcion as mDescripcionContrato, c.sTitulo, f.sNumeroOrden, ' +
                            'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                            'from fasesxorden f ' +
                            'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                            'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                            'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion  like :Embarcacion ) '+
                            'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio ' +
                            'and f.dIdFecha <= :FechaFinal ' +
                            'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion, f.dIdFecha order By f.sContrato, f.sNumeroOrden, t.iOrden, f.dIdFecha ')
           Else
               connection.QryBusca.SQL.Add('select f.sContrato, c.mDescripcion as mDescripcionContrato, c.sTitulo, f.sNumeroOrden, ' +
                            'f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.dVentaMN, t.dVentaDLL ' +
                            'from fasesxorden f ' +
                            'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" and t.lGenera = "Si" ) ' +
                            'Inner Join contratos c on (f.sContrato = c.sContrato) ' +
                            'Inner Join movimientosdeembarcacion me on (f.dIdFecha = me.dIdFecha and me.iIdDiario = f.iIdDiario and me.sIdEmbarcacion  like :Embarcacion ) '+
                            'where f.sContrato = :Contrato and f.dIdFecha >= :FechaInicio ' +
                            'and f.dIdFecha <= :FechaFinal and f.sNumeroOrden = :Orden ' +
                            'Group By f.sContrato, f.sNumeroOrden, f.sClasificacion, f.dIdFecha order By f.sContrato, f.sNumeroOrden, t.iOrden, f.dIdFecha ') ;
       end ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       connection.QryBusca.Params.ParamByName('Embarcacion').DataType   := ftString ;
       connection.QryBusca.Params.ParamByName('Embarcacion').Value      := Embarcacion ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
           If (tsPlataformas.Text <> '<<<<< TODOS LOS FRENTES >>>>>') then
           Begin
              connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Orden').Value       := tsPlataformas.Text ;
           End ;
       End;

       connection.QryBusca.open ;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdTipoMovimiento']) then
          begin
              if rxGeneradorDia.State = dsInsert then
              begin
                 rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
                 rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
                 rxGeneradorDia.Post ;
              end ;

              sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sIdTipoMovimiento'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] := 'DIA' ;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              rxGeneradorDia.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
              rxGeneradorDia.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
       begin
           rxGeneradorDia.FieldValues['dTotalMN'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaMN'] ;
           rxGeneradorDia.FieldValues['dTotalDLL'] := rxGeneradorDia.FieldValues['dTotal'] * connection.QryBusca.FieldValues['dVentaDLL'] ;
           rxGeneradorDia.Post ;
       end ;

       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadordeBarco.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reportes de Equipos
    // Reporte Numero 5
    if opcEquipoDetalladoObra.Checked then
    begin
       sOpcionReporte := 'EQUIPOS' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, be.sIdEquipo, be.dIdFecha ' +
                                       'order By be.sContrato, e.iItemOrden, be.dIdFecha')
       Else
           connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.sContrato = :Contrato and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, be.sIdEquipo, be.dIdFecha ' +
                                       'order By be.sContrato, e.iItemOrden, be.dIdFecha') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;

       connection.QryBusca.open ;
       sCadena := '' ;
       sOrden  := '';
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdEquipo']) then
          begin
              if chkReporteNuevo.Checked then
                 if sOrden <> connection.QryBusca.FieldValues['sContrato'] then
                 begin
                     If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                         BuscaEstimacion(global_contrato_barco)
                     else
                         BuscaEstimacion(tsContrato.Text);
                     InsertaAnexo('Equipo');
                     sOrden := connection.QryBusca.FieldValues['sContrato'];
                 end;

              if rxGeneradorDia.State = dsInsert then
                  rxGeneradorDia.Post ;

              sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdEquipo'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo']               := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato']            := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo']              := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdEquipo']            := connection.QryBusca.FieldValues['sIdEquipo'] ;
              rxGeneradorDia.FieldValues['mDescripcion']         := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida']              := connection.QryBusca.FieldValues['sMedida'] ;
              rxGeneradorDia.FieldValues['FechaInicial']         := tdFechaInicio.Date;
              rxGeneradorDia.FieldValues['sAnexo']               := Anexo_equipo ;
              rxGeneradorDia.FieldValues['dTotal']               := 0 ;
              rxGeneradorDia.FieldValues['sNumeroEstimacion']    := NumeroEstimacion;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
           rxGeneradorDia.Post ;

       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
       begin
           //Buscamos si la Optativa es Administrativa para tomar los firmantes de Barco..
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato and bTipoAdmon = "Si"');
           connection.zCommand.ParamByName('contrato').AsString := tsContrato.Text;
           connection.zCommand.Open;

           if connection.zCommand.RecordCount > 0 then
               rDiarioFirmas(global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
           else
               rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;
       end;

       BuscaContratoEmbarcacion;
       if chkReporteNuevo.Checked then
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorequipoxtipo_2.fr3')
       else
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorequipoxtipo.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Numero 6
    if opcEquipoDetallado.Checked then
    begin
       sOpcionReporte := 'EQUIPOS' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, ba.sNumeroOrden, be.sIdEquipo, be.dIdFecha ' +
                                       'order By be.sContrato, ba.sNumeroOrden, e.iItemOrden, be.dIdFecha')
       Else
       Begin
           If (tsPlataformas.Text = '<<<<< TODOS LOS FRENTES >>>>>') then
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.sContrato = :Contrato and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal ' +
                                       'Group By be.sContrato, ba.sNumeroOrden, be.sIdEquipo, be.dIdFecha ' +
                                       'order By be.sContrato, ba.sNumeroOrden, e.iItemOrden, be.dIdFecha')
           Else
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, be.sContrato, ba.sNumeroOrden, be.sIdEquipo, ' +
                                       'e.sDescripcion, e.sMedida, be.dIdFecha, sum(be.dCantidad) as sFactor from bitacoradeequipos be ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ba.iIdDiario = be.iIdDiario) ' +
                                       'Inner Join equipos e on (be.sContrato = e.sContrato and be.sIdEquipo = e.sIdEquipo and e.lCobro = "'+sCobro+'" '+sEquipoPU+') ' +
                                       'Inner Join contratos c on (be.sContrato = c.sContrato ) ' +
                                       'where be.sContrato = :Contrato and be.dIdFecha >= :FechaInicio ' +
                                       'and be.dIdFecha <= :FechaFinal and ba.sNumeroOrden = :orden ' +
                                       'Group By be.sContrato, ba.sNumeroOrden, be.sIdEquipo, be.dIdFecha ' +
                                       'order By be.sContrato, ba.sNumeroOrden, e.iItemOrden, be.dIdFecha') ;

       End;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
           If (tsPlataformas.Text <> '<<<<< TODOS LOS FRENTES >>>>>') then
           Begin
              connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Orden').Value       := tsPlataformas.Text ;
           End ;
       End;

       connection.QryBusca.open ;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdEquipo']) then
          begin
              if rxGeneradorDia.State = dsInsert then
                  rxGeneradorDia.Post ;

              sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdEquipo'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdEquipo'] := connection.QryBusca.FieldValues['sIdEquipo'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
              rxGeneradorDia.FieldValues['sAnexo'] := Anexo_equipo;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
           rxGeneradorDia.Post ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
       begin
           //Buscamos si la Optativa es Administrativa para tomar los firmantes de Barco..
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato and bTipoAdmon = "Si"');
           connection.zCommand.ParamByName('contrato').AsString := tsContrato.Text;
           connection.zCommand.Open;

           if connection.zCommand.RecordCount > 0 then
               rDiarioFirmas(global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
           else
               rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;
       end;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorequipodetalle.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reportes de Personal
    // Reporte Numero 7       Modificacion sIdPersonal x sAgrupaPersonal.. para especialidades..
    if opcPersonalDetalladoObra.Checked then
    begin
       sOpcionReporte := 'PERSONAL' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       {27.marzo.2011: adal, modificar order by, para separar y agrupar por sMedida y la cantidad > 0}
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal, p.iJornada, ' +
                                       'p.sIdTipoPersonal, p.sDescripcion, '+MiDescripcion+' as sDescripcionG, p.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and  bp.sIdPersonal = p.sIdPersonal and p.lCobro ="'+sCobro+'" '+ sLineaTiempoExtra +' ) ' +
                                        sAgrupa  +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato) ' +
                                       'where bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal and bp.sIdPernocta not like :Embarcacion and bp.dCantidad > 0 ' + sPersonalPU+
                                       'Group By bp.sContrato, p.'+ linea1 +', bp.dIdFecha ')
       Else
           connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal, p.iJornada, ' +
                                       'p.sIdTipoPersonal, p.sDescripcion, '+MiDescripcion+' as sDescripcionG, p.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and  bp.sIdPersonal = p.sIdPersonal and p.lCobro ="'+sCobro+'" '+ sLineaTiempoExtra +' ) ' +
                                        sAgrupa +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato) ' +
                                       'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal and bp.sIdPernocta not like :Embarcacion and bp.dCantidad > 0 ' + sPersonalPU +
                                       'Group By bp.sContrato, p.'+ linea1 +', bp.dIdFecha ');
       if chkReporteNuevo.Checked then
          connection.QryBusca.SQL.Add('order By bp.sContrato, p.iItemOrden ,bp.dIdFecha  asc')
       else
          connection.QryBusca.SQL.Add('order By bp.sContrato , p.sMedida desc, p.iItemOrden ,bp.dIdFecha  asc');

       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       connection.QryBusca.Params.ParamByName('Embarcacion').DataType   := ftString ;
       connection.QryBusca.Params.ParamByName('Embarcacion').Value      := 'TIERRA' ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
       End;

       connection.QryBusca.open ;
       sCadena := '';
       sOrden  := '';
       sTiempoExtra := '';
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdPersonal']) then
          begin
              //Esta parte es para Generadores de Diavaz,, mayo 2012 iv@an
              if chkReporteNuevo.Checked then
              begin
                 if sCadena <> '' then
                     if chkJornadas.Checked = False then
                        If chkCompleto.Checked then
                           if pos('TIEMPO EXTRA', connection.QryBusca.FieldValues[''+linea2+'']) = 0 then
                              InsertaTiempoExtra(sTiempoExtra, sOrdenTiempoExt);

                 sTiempoExtra    := connection.QryBusca.FieldValues['sAgrupaPersonal'];
                 sOrdenTiempoExt := connection.QryBusca.FieldValues['sContrato'];

                 If sOrden <> connection.QryBusca.FieldValues['sContrato'] then
                 begin
                     If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                         BuscaEstimacion(global_contrato_barco)
                     else
                         BuscaEstimacion(tsContrato.Text);

                     if chkJornadas.Checked then
                        InsertaAnexo('PersonalPU')
                     else
                        InsertaAnexo('Personal');
                     sOrden := connection.QryBusca.FieldValues['sContrato'];
                 end;
              end;
              //Continua proceso...
              if rxGeneradorDia.State = dsInsert then
              begin
                  rxGeneradorDia.Post ;
                  if chkJornadas.Checked then
                     If chkCompleto.Checked then
                        if pos('TIEMPO EXTRA', rxGeneradorDia.FieldValues['mDescripcion']) > 0 then
                           rxGeneradorDia.Delete;
              end;

              sCadena      := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdPersonal'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo']    := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo']   := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdTipoPersonal']      := connection.QryBusca.FieldValues['sIdTipoPersonal'] ;
              rxGeneradorDia.FieldValues['sIdPersonal']          := connection.QryBusca.FieldValues['sIdPersonal'] ;
              rxGeneradorDia.FieldValues['sAgrupaPersonal']      := connection.QryBusca.FieldValues['sAgrupaPersonal'] ;
              rxGeneradorDia.FieldValues['mDescripcion']         := connection.QryBusca.FieldValues[''+linea2+''] ;
              if chkJornadas.Checked then
                 rxGeneradorDia.FieldValues['sMedida']        := 'H-H'
              else
                 rxGeneradorDia.FieldValues['sMedida']        := connection.QryBusca.FieldValues['sMedida'] ;
              rxGeneradorDia.FieldValues['FechaInicial']      := tdFechaInicio.Date;
              rxGeneradorDia.FieldValues['sAnexo']            := Anexo_personal ;
              rxGeneradorDia.FieldValues['dTotal']            := 0 ;
              rxGeneradorDia.FieldValues['sNumeroEstimacion'] := NumeroEstimacion;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          if chkJornadas.Checked then
             rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] * connection.QryBusca.FieldValues['iJornada']
          else
             rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'];
          rxGeneradorDia.FieldByName('FechaInicial').AsDateTime  := tdFEchaInicio.Date;
          rxGeneradorDia.FieldByName('FechaFinal').AsDateTime  := tdFEchaFinal.Date ;

          if chkJornadas.Checked then
             rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + (connection.QryBusca.FieldValues['sFactor'] * connection.QryBusca.FieldValues['iJornada'])
          else
             rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
       begin
           rxGeneradorDia.Post ;
           if chkReporteNuevo.Checked then
              if chkJornadas.Checked = False then
                 If chkCompleto.Checked then
                    if pos('TIEMPO EXTRA', connection.QryBusca.FieldValues[''+linea2+'']) = 0 then
                       InsertaTiempoExtra(sTiempoExtra, sOrdenTiempoExt);

           if chkJornadas.Checked then
              If chkCompleto.Checked then
                 if pos('TIEMPO EXTRA', rxGeneradorDia.FieldValues['mDescripcion']) > 0 then
                    rxGeneradorDia.Delete;
       end;

       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
       begin
           //Buscamos si la Optativa es Administrativa para tomar los firmantes de Barco..
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato and bTipoAdmon = "Si"');
           connection.zCommand.ParamByName('contrato').AsString := tsContrato.Text;
           connection.zCommand.Open;

           if connection.zCommand.RecordCount > 0 then
               rDiarioFirmas(global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
           else
               rDiarioFirmas(tsContrato.Text, '', 'A', tdFechaFinal.Date , frmGeneradoresBarco) ;
       end;

       BuscaContratoEmbarcacion;
       if chkReporteNuevo.Checked then
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpersonalxtipo_2.fr3')
       else
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpersonalxtipo.fr3');
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;          

    // Reporte Numero 8
    // Modificacion sIdPersonal x sAgrupaPersonal.. para especialidades..
    if opcPersonalDetallado.Checked then
    begin
       sOpcionReporte := 'PERSONAL' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       {27.marzo.2011: adal, modificar order by, para separar y agrupar por sMedida y la cantidad > 0}
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal, p.iJornada, ' +
                                       'p.sIdTipoPersonal, p.sDescripcion, '+MiDescripcion+' as sDescripcionG, p.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and  bp.sIdPersonal = p.sIdPersonal and p.lCobro ="'+sCobro+'" '+ sLineaTiempoExtra +' ) ' +
                                        sAgrupa  +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato) ' +
                                       'where bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal and bp.sIdPernocta not like :Embarcacion and bp.dCantidad > 0 ' + sPersonalPU +
                                       'Group By bp.sContrato, ba.sNumeroOrden, p.'+ linea1 +', bp.dIdFecha ')
       Else
       begin
           If (tsPlataformas.Text = '<<<<< TODOS LOS FRENTES >>>>>') then
               connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal, p.iJornada, ' +
                                       'p.sIdTipoPersonal, p.sDescripcion, '+MiDescripcion+' as sDescripcionG, p.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and  bp.sIdPersonal = p.sIdPersonal and p.lCobro ="'+sCobro+'" '+ sLineaTiempoExtra +' ) ' +
                                        sAgrupa +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato) ' +
                                       'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal and bp.sIdPernocta not like :Embarcacion and bp.dCantidad > 0 ' +sPersonalPU +
                                       'Group By bp.sContrato, ba.sNumeroOrden, p.'+ linea1 +', bp.dIdFecha ')
           else
               connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, bp.sIdPersonal, bp.sAgrupaPersonal, p.iJornada, ' +
                                       'p.sIdTipoPersonal, p.sDescripcion, '+MiDescripcion+' as sDescripcionG, p.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepersonal bp ' +
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) ' +
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and  bp.sIdPersonal = p.sIdPersonal and p.lCobro ="'+sCobro+'" '+ sLineaTiempoExtra +' ) ' +
                                        sAgrupa +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato) ' +
                                       'where bp.sContrato = :Contrato and bp.sNumeroOrden =:Orden and bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal and bp.sIdPernocta not like :Embarcacion and bp.dCantidad > 0 ' + sPersonalPU +
                                       'Group By bp.sContrato, ba.sNumeroOrden, p.'+ linea1 +', bp.dIdFecha ');

       end;
       if chkReporteNuevo.Checked then
          connection.QryBusca.SQL.Add('order By bp.sContrato, ba.sNumeroOrden, p.iItemOrden ,bp.dIdFecha  asc')
       else
          connection.QryBusca.SQL.Add('order By bp.sContrato, ba.sNumeroOrden, p.sMedida desc, p.iItemOrden ,bp.dIdFecha  asc');

       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       connection.QryBusca.Params.ParamByName('Embarcacion').DataType   := ftString ;
       connection.QryBusca.Params.ParamByName('Embarcacion').Value      := 'TIERRA' ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
           If (tsPlataformas.Text <> '<<<<< TODOS LOS FRENTES >>>>>') then
           Begin
               connection.QryBusca.Params.ParamByName('Orden').DataType   := ftString ;
               connection.QryBusca.Params.ParamByName('Orden').Value      := tsPlataformas.Text ;
           End ;
       End;

       connection.QryBusca.open ;
       sCadena := '';
       sOrden  := '';
       sTiempoExtra := '';
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdPersonal']) then
          begin
              //Esta parte es para Generadores de Diavaz,, mayo 2012 iv@an
              if chkReporteNuevo.Checked then
              begin
                 if sCadena <> '' then
                     if chkJornadas.Checked = False then
                        If chkCompleto.Checked then
                           if pos('TIEMPO EXTRA', connection.QryBusca.FieldValues[''+linea2+'']) = 0 then
                              InsertaTiempoExtra(sTiempoExtra, sOrdenTiempoExt);

                 sTiempoExtra    := connection.QryBusca.FieldValues['sAgrupaPersonal'];
                 sOrdenTiempoExt := connection.QryBusca.FieldValues['sContrato'];

                 If sOrden <> connection.QryBusca.FieldValues['sContrato'] then
                 begin
                     If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                         BuscaEstimacion(global_contrato_barco)
                     else
                         BuscaEstimacion(tsContrato.Text);

                     if chkJornadas.Checked then
                        InsertaAnexo('PersonalPU')
                     else
                        InsertaAnexo('Personal');
                     sOrden := connection.QryBusca.FieldValues['sContrato'];
                 end;
              end;
              //Continua proceso...
              if rxGeneradorDia.State = dsInsert then
              begin
                  rxGeneradorDia.Post ;
                  if chkJornadas.Checked then
                     If chkCompleto.Checked then
                        if pos('TIEMPO EXTRA', rxGeneradorDia.FieldValues['mDescripcion']) > 0 then
                           rxGeneradorDia.Delete;
              end;

              sCadena      := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdPersonal'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo']    := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo']   := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdTipoPersonal']      := connection.QryBusca.FieldValues['sIdTipoPersonal'] ;
              rxGeneradorDia.FieldValues['sIdPersonal']          := connection.QryBusca.FieldValues['sIdPersonal'] ;
              rxGeneradorDia.FieldValues['sAgrupaPersonal']      := connection.QryBusca.FieldValues['sAgrupaPersonal'] ;
              rxGeneradorDia.FieldValues['mDescripcion']         := connection.QryBusca.FieldValues[''+linea2+''] ;
              if chkJornadas.Checked then
                 rxGeneradorDia.FieldValues['sMedida']        := 'H-H'
              else
                 rxGeneradorDia.FieldValues['sMedida']        := connection.QryBusca.FieldValues['sMedida'] ;
              rxGeneradorDia.FieldValues['FechaInicial']      := tdFechaInicio.Date;
              rxGeneradorDia.FieldValues['sAnexo']            := Anexo_personal ;
              rxGeneradorDia.FieldValues['dTotal']            := 0 ;
              rxGeneradorDia.FieldValues['sNumeroEstimacion'] := NumeroEstimacion;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          if chkJornadas.Checked then
             rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] * connection.QryBusca.FieldValues['iJornada']
          else
             rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'];
          rxGeneradorDia.FieldByName('FechaInicial').AsDateTime  := tdFEchaInicio.Date;
          rxGeneradorDia.FieldByName('FechaFinal').AsDateTime  := tdFEchaFinal.Date ;

          if chkJornadas.Checked then
             rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + (connection.QryBusca.FieldValues['sFactor'] * connection.QryBusca.FieldValues['iJornada'])
          else
             rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
       begin
           rxGeneradorDia.Post ;
           if chkReporteNuevo.Checked then
              if chkJornadas.Checked = False then
                 If chkCompleto.Checked then
                    if pos('TIEMPO EXTRA', connection.QryBusca.FieldValues[''+linea2+'']) = 0 then
                       InsertaTiempoExtra(sTiempoExtra, sOrdenTiempoExt);

           if chkJornadas.Checked then
              If chkCompleto.Checked then
                 if pos('TIEMPO EXTRA', rxGeneradorDia.FieldValues['mDescripcion']) > 0 then
                    rxGeneradorDia.Delete;
       end;


       if rxGeneradorDia.State = dsInsert then
           rxGeneradorDia.Post ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
       begin
           //Buscamos si la Optativa es Administrativa para tomar los firmantes de Barco..
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato and bTipoAdmon = "Si"');
           connection.zCommand.ParamByName('contrato').AsString := tsContrato.Text;
           connection.zCommand.Open;

           if connection.zCommand.RecordCount > 0 then
               rDiarioFirmas(global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
           else
               rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;
       end;

       BuscaContratoEmbarcacion;
       if chkReporteNuevo.Checked then
          frGenerador.LoadFromFile(Global_Files + global_miReporte +'_generadorpersonaldetalle2.fr3')
       else
          frGenerador.LoadFromFile(Global_Files + global_miReporte +'_generadorpersonaldetalle.fr3');
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reportes de Personal Pernoctas
    // Reporte Numero 9
    if opcPernoctaDetalladoObra.Checked then
    begin
       sOpcionReporte := 'PERNOCTAS' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;

       //Consulta de las pernoctas de la tabla bitacora de pernoctas forma normal,,
       if chkPEP.Checked = False then
       begin
           If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
               connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ct.sIdPernocta, ct.sMedida, ' +
                                           'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepernocta bp ' +
                                           'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                           'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                           'where bp.dIdFecha >= :FechaInicio ' +
                                           'and bp.dIdFecha <= :FechaFinal ' +
                                           'Group By bp.sContrato, bp.sIdCuenta, bp.dIdFecha ' +
                                           'order By bp.sContrato, bp.sIdCuenta, bp.dIdFecha')
           Else
               connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ct.sIdPernocta, ct.sMedida, ' +
                                           'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepernocta bp ' +
                                           'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                           'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                           'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                           'and bp.dIdFecha <= :FechaFinal ' +
                                           'Group By bp.sContrato, bp.sIdCuenta, bp.dIdFecha ' +
                                           'order By bp.sContrato, bp.sIdCuenta, bp.dIdFecha') ;
           connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
           connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
           connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
           connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
           If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
           Begin
               connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
           End;
       end
       else
       begin //Consulta de las pernoctas de las visitas PEP se obtienen directamente de bitacora de personal
           sOpcionReporte := 'PERNOCTAS PERSONAL Y VISITAS DE PEMEX' ;
           //**SQL CONSULTA PERSONAL #
           connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, ba.sNumeroOrden, ct.sIdCuenta, '+
                                       'ct.sIdPernocta, ct.sMedida, ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepersonal bp '+
                                       'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) '+
                                       'Inner Join personal p on (bp.sContrato = p.sContrato and  bp.sIdPersonal = p.sIdPersonal and (not p.sIdTipoPersonal = :PU) And p.lCobro =:Cobro and p.sIdTipoPersonal <> "PE-C") '+
                                       'Inner join cuentas ct on (ct.sIdCuenta = bp.sTipoPernocta) ');
           if chkPU.Checked = false then  //Personal de P.U. No (Agrupoa por Categorias)
              connection.QryBusca.SQL.Add('Inner Join grupospersonal gp on (p.sAgrupaPersonal = gp.sIdGrupo) ');

           connection.QryBusca.SQL.Add('Inner Join contratos c on (bp.sContrato = c.sContrato) ');

           If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
              connection.QryBusca.SQL.Add('where bp.dIdFecha >= :FechaInicio and bp.dIdFecha <= :FechaFinal and bp.sIdPernocta like :Embarcacion and bp.dCantidad > 0 ')
           else
              connection.QryBusca.SQL.Add('where bp.sContrato =:Contrato and bp.dIdFecha >= :FechaInicio and bp.dIdFecha <= :FechaFinal and bp.sIdPernocta like :Embarcacion and bp.dCantidad > 0 ');

           connection.QryBusca.SQL.Add('Group By bp.sContrato, bp.sTipoPernocta , bp.dIdFecha order  By bp.sContrato, ct.sIdCuenta, bp.dIdFecha  asc');

           connection.QryBusca.Params.ParamByName('FechaInicio').DataType  := ftDate ;
           connection.QryBusca.Params.ParamByName('FechaInicio').Value     := tdFechaInicio.Date ;
           connection.QryBusca.Params.ParamByName('FechaFinal').DataType   := ftDate ;
           connection.QryBusca.Params.ParamByName('FechaFinal').Value      := tdFEchaFinal.Date ;
           connection.QryBusca.Params.ParamByName('Embarcacion').DataType  := ftString ;
           connection.QryBusca.Params.ParamByName('Embarcacion').Value     := Embarcacion ;
           if chkPU.Checked then //Personal de P.U. Si
              connection.QryBusca.ParamByName('PU').AsString  := 'PU'
           else                  //Personal de P.U. No
               connection.QryBusca.ParamByName('PU').AsString := 'PU';
           //Cobro Personal No
           connection.QryBusca.ParamByName('Cobro').AsString  := 'No';

           If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
           Begin
               connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString ;
               connection.QryBusca.Params.ParamByName('Contrato').Value     := tsContrato.Text ;
           End;
       end;

       connection.QryBusca.open ;

       sCadena := '' ;
       sOrden  := '' ;
       connection.QryBusca.First;
       While NOT connection.qryBusca.Eof Do
       begin
          if chkReporteNuevo.Checked then
             if sOrden = '' then
             begin
                 BuscaEstimacion(connection.QryBusca.FieldValues['sContrato']);
                 InsertaAnexo('Pernocta');
                 sOrden := connection.QryBusca.FieldValues['sContrato'];
             end;

          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdCuenta']) then
          begin
              BuscaEstimacion(connection.QryBusca.FieldValues['sContrato']);
              if rxGeneradorDia.State = dsInsert then
                 rxGeneradorDia.Post ;

              if chkReporteNuevo.Checked then
              begin
                 if sCadena <> '' then
                 begin
                     connection.QryBusca.Prior;
                     InsertaPernoctas;
                     connection.QryBusca.Next;
                 end;

                 if sOrden <> connection.QryBusca.FieldValues['sContrato'] then
                 begin
                     InsertaAnexo('Pernocta');
                     sOrden := connection.QryBusca.FieldValues['sContrato'];
                 end;
              end;

              sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdCuenta'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato']            := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo']              := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdCuenta']            := connection.QryBusca.FieldValues['sIdPernocta'] ;
              rxGeneradorDia.FieldValues['mDescripcion']         := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida']              := connection.QryBusca.FieldValues['sMedida'] ;
              rxGeneradorDia.FieldValues['FechaInicial']         := tdFechaInicio.Date;
              rxGeneradorDia.FieldValues['sAnexo']  :=  Anexo_pernocta ;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              rxGeneradorDia.FieldValues['sNumeroEstimacion']    := NumeroEstimacion;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'];

          sDia := 'St' + Trim(InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime)));
          if connection.QryBusca.FieldValues['sFactor'] = Null then
            rxGeneradorDia.FieldValues [sDia] := '1'
          else
            rxGeneradorDia.FieldValues [sDia] := '0';

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next;
       end;

       if rxGeneradorDia.State = dsInsert then
       begin
           connection.QryBusca.Prior;
           InsertaPernoctas;
           rxGeneradorDia.Post ;
       end;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
       begin
           //Buscamos si la Optativa es Administrativa para tomar los firmantes de Barco..
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato and bTipoAdmon = "Si"');
           connection.zCommand.ParamByName('contrato').AsString := tsContrato.Text;
           connection.zCommand.Open;

           if connection.zCommand.RecordCount > 0 then
               rDiarioFirmas(global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
           else
               rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;
       end;

       BuscaContratoEmbarcacion;
       if chkReporteNuevo.Checked then
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpernoctaxtipo_2.fr3')
       else
          frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpernoctaxtipo.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Numero 10
    if opcPernoctaDetallado.Checked then
    begin
       sOpcionReporte := 'PERNOCTAS' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                       'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepernocta bp ' +
                                       'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                       'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                       'where bp.dIdFecha >= :FechaInicio ' +
                                       'and bp.dIdFecha <= :FechaFinal ' +
                                       'Group By bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, bp.dIdFecha ' +
                                       'order By bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, bp.dIdFecha')
       Else
       Begin
           If (tsPlataformas.Text = '<<<<< TODOS LOS FRENTES >>>>>') then
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                           'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepernocta bp ' +
                                           'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                           'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                           'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                           'and bp.dIdFecha <= :FechaFinal ' +
                                           'Group By bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, bp.dIdFecha ' +
                                           'order By bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, bp.dIdFecha')
           Else
               connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                           'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepernocta bp ' +
                                           'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                           'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") ' +
                                           'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                           'and bp.dIdFecha <= :FechaFinal and bp.sNumeroOrden = :Orden ' +
                                           'Group By bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, bp.dIdFecha ' +
                                           'order By bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, bp.dIdFecha') ;
       End ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
       Begin
           connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
           connection.QryBusca.Params.ParamByName('Contrato').Value       := tsContrato.Text ;
           If (tsPlataformas.Text <> '<<<<< TODOS LOS FRENTES >>>>>') then
           Begin
              connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
              connection.QryBusca.Params.ParamByName('Orden').Value       := tsPlataformas.Text ;
           End ;
       End;

       connection.QryBusca.open ;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdCuenta']) then
          begin
              if rxGeneradorDia.State = dsInsert then
                  rxGeneradorDia.Post ;

              sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sNumeroOrden'] + connection.QryBusca.FieldValues['sIdCuenta'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'] ;
              rxGeneradorDia.FieldValues['sIdCuenta'] := connection.QryBusca.FieldValues['sIdCuenta'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] := '' ;
              rxGeneradorDia.FieldValues['sAnexo']  := Anexo_pernocta ;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
           rxGeneradorDia.Post ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadorpernoctadetalle.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    // Reporte Numero 11
    // Tripulacion Diaria .....
    if opcTripulacionDiaria.Checked then
    begin
       sOpcionReporte := 'REPORTE DE TRIPULACION' ;
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;

       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, td.sContrato, t.sIdCategoria, ca.sDescripcion as sDescripcionCategoria, ' +
                                   'td.sIdTripulacion, t.sDescripcion, td.dIdFecha, sum(td.iNacionales) as sFactor from tripulaciondiaria td ' +
                                   'Inner Join tripulacion t on (td.sContrato = t.sContrato and td.sIdTripulacion = t.sIdTripulacion and td.sIdCategoria = t.sIdCategoria ) ' +
                                   'Inner Join categorias ca on (t.sIdCategoria = ca.sIdCategoria) ' +
                                   'Inner Join contratos c on (td.sContrato = c.sContrato) ' +
                                   'where td.dIdFecha >= :FechaInicio ' +
                                   'and td.dIdFecha <= :FechaFinal ' +
                                   'Group By td.sContrato, t.sIdCategoria, td.sIdTripulacion, td.dIdFecha ' +
                                   'order By td.sContrato, t.sIdCategoria, td.sIdTripulacion, td.dIdFecha') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       connection.QryBusca.open ;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdCategoria'] + connection.QryBusca.FieldValues['sIdTripulacion']) then
          begin
              if rxGeneradorDia.State = dsInsert then
                  rxGeneradorDia.Post ;

              sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdCategoria'] + connection.QryBusca.FieldValues['sIdTripulacion'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sDescripcionCategoria'] := connection.QryBusca.FieldValues['sDescripcionCategoria'] ;
              rxGeneradorDia.FieldValues['sIdCuenta'] := connection.QryBusca.FieldValues['sIdTripulacion'] ;
              rxGeneradorDia.FieldValues['mDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
              rxGeneradorDia.FieldValues['sMedida'] :=  '' ;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
           rxGeneradorDia.Post ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadortripulaciondetalle.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;
    // Reporte Numero 12
    if opcTripulacionxGrupo.Checked then
    begin
       If rxGeneradorDia.RecordCount > 0 then
          rxGeneradorDia.EmptyTable   ;
       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       connection.QryBusca.SQL.Add('select c.sTitulo, c.mDescripcion as mDescripcionContrato, td.sContrato, t.sIdCategoria, ca.sDescripcion as sDescripcionCategoria, ' +
                                       'td.dIdFecha, sum(td.iNacionales) as sFactor from tripulaciondiaria td ' +
                                       'Inner Join tripulacion t on (td.sContrato = t.sContrato and td.sIdTripulacion = t.sIdTripulacion and td.sIdCategoria = t.sIdCategoria ) ' +
                                       'Inner Join categorias ca on (t.sIdCategoria = ca.sIdCategoria) ' +
                                       'Inner Join contratos c on (td.sContrato = c.sContrato) ' +
                                       'where td.dIdFecha >= :FechaInicio ' +
                                       'and td.dIdFecha <= :FechaFinal ' +
                                       'Group By td.sContrato, t.sIdCategoria, td.dIdFecha ' +
                                       'order By td.sContrato, t.sIdCategoria, td.dIdFecha') ;
       connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
       connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
       connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
       connection.QryBusca.open ;
       sCadena := '' ;
       While NOT connection.qryBusca.Eof Do
       begin
          if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdCategoria'] ) then
          begin
              if rxGeneradorDia.State = dsInsert then
                  rxGeneradorDia.Post ;

              sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdCategoria'] ;
              rxGeneradorDia.Append ;
              rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
              rxGeneradorDia.FieldValues['sContrato'] := connection.QryBusca.FieldValues['sContrato'] ;
              rxGeneradorDia.FieldValues['sTitulo'] := connection.QryBusca.FieldValues['sTitulo'] ;
              rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
              rxGeneradorDia.FieldValues['sDescripcionCategoria'] := connection.QryBusca.FieldValues['sDescripcionCategoria'] ;
              rxGeneradorDia.FieldValues['sMedida'] :=  '' ;
              rxGeneradorDia.FieldValues['dTotal'] := 0 ;
              for iPos := 1 to 31 do
                  rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
          end ;
          sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
          rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'] ;

          rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
          connection.qryBusca.Next ;
       end;

       if rxGeneradorDia.State = dsInsert then
           rxGeneradorDia.Post ;
       If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
           rDiarioFirmas( global_Contrato_Barco, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco)
       Else
           rDiarioFirmas(tsContrato.Text, '', 'A',tdFechaFinal.Date , frmGeneradoresBarco) ;

       BuscaContratoEmbarcacion;
       frGenerador.LoadFromFile(Global_Files + global_miReporte + '_generadortripulaciongrupo.fr3') ;
       frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
    end;

    dsConfiguracion.Destroy;
    QryConfiguracion.Destroy;

    //HOJA SE SEGUIMIENTO GENERAODRES DE BARCOO..
    if opcHojaSeguimiento.Checked then
    begin
        If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
        Begin
            QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
            QryConfiguracion.Connection := connection.zconnection;

            QryGenerador := TZReadOnlyQuery.Create(tOrigen);
            QryGenerador.Connection := connection.zconnection;

            dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
            dsConfiguracion.DataSet := QryConfiguracion;
            dsConfiguracion.UserName := 'dsConfiguracion';

            dsGenerador := TfrxDBDataSet.Create(tOrigen);
            dsGenerador.FieldAliases.Clear;
            dsGenerador.DataSet  := QryGenerador;
            dsGenerador.UserName := 'dsGenerador';

            QryConfiguracion.Active := False;
            QryConfiguracion.SQL.Clear;
            QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
                  'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
                  'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
                  'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
                  'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
                  'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                  'Where c2.sContrato = :Contrato');
            QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
            QryConfiguracion.Params.ParamByName('contrato').Value    := tsContrato.Text;
            QryConfiguracion.Open;

            QryGenerador.Active := False;
            QryGenerador.SQL.Clear;
            QryGenerador.SQL.Add('Select iNumeroEstimacion, :FechaI as dFechaInicio, :FechaF as dFechaFinal '+
                          'From estimacionperiodo '+
                          'where sContrato =:Contrato and :Fecha >= dFechaInicio and :Fecha <= dFechaFinal  ');
            QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
            QryGenerador.Params.ParamByName('Contrato').Value    := tsContrato.Text;
            QryGenerador.Params.ParamByName('Fecha').DataType    := ftDate;
            QryGenerador.Params.ParamByName('Fecha').Value       := tdFechaFinal.Date;
            QryGenerador.Params.ParamByName('FechaI').DataType   := ftString;
            QryGenerador.Params.ParamByName('FechaI').Value      := DateToStr(tdFechaInicio.Date);
            QryGenerador.Params.ParamByName('FechaF').DataType   := ftString;
            QryGenerador.Params.ParamByName('FechaF').Value      := DateToStr(tdFechaFinal.Date);
            QryGenerador.Open;

            frGenerador.DataSets.Add(dsConfiguracion);
            frGenerador.DataSets.Add(dsGenerador);

            frGenerador.LoadFromFile(global_files + global_miReporte +'_hojaseggeneradores.fr3');
            frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));

            QryGenerador.Destroy;
            QryConfiguracion.Destroy;
            dsGenerador.Destroy;
            dsConfiguracion.Destroy;
        End
        else
            messageDLG('Seleccione un Numero de Optativa / Programa !', mtInformation, [mbok], 0);
    end;

except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Impresion de Numeros Generadores', 'Al imprimir', 0);
    end;
end;

end;

procedure TfrmGeneradoresBarco.btnSalirClick(Sender: TObject);
begin
    close;
end;

procedure TfrmGeneradoresBarco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmGeneradoresBarco.FormShow(Sender: TObject);
var
    QryAnexos  : TZReadOnlyQuery ;
begin
    embarcacion            :=  TzReadOnlyQuery.Create(Self);
    embarcacion.Connection :=  connection.zConnection;

    QryAnexos            :=  TzReadOnlyQuery.Create(Self);
    QryAnexos.Connection :=  connection.zConnection;

    // Oculto cuando el usuario sea distinto de INTEL-CODE ...
    tdFechaInicio.Date := Date ;
    tdFEchaFinal.Date := Date ;

    tsPlataformas.Items.Clear ;
    tsPlataformas.Items.Add('<<<<< TODOS LOS FRENTES >>>>>' ) ;
    tsPlataformas.ItemIndex := 0 ;

    tsContrato.Items.Clear ;
    tsContrato.Items.Add('<<<<< TODOS LOS ANEXOS >>>>>' ) ;
    QryContratos.Active := False ;
    QryContratos.ParamByName('FechaI').AsDate := tdFechaInicio.Date;
    QryContratos.ParamByName('FechaF').AsDate := tdFechaFinal.Date;
    QryContratos.Open ;
    if QryContratos.RecordCount > 0 then
    begin
          While NOT QryContratos.Eof Do
          Begin
              tsContrato.Items.Add(QryContratos.FieldValues['sContrato'] ) ;
              QryContratos.Next
          End;
    end;
    tsContrato.ItemIndex := 0 ;
    tdFechaInicio.SetFocus ;

    embarcacion.Active := False ;
    embarcacion.SQL.Clear ;
    embarcacion.SQL.Add('Select sDescripcion from embarcaciones Where sContrato = :Contrato And sTipo="Principal"') ;
    embarcacion.Params.ParamByName('Contrato').DataType := ftString ;
    embarcacion.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco ;
    embarcacion.Open ;
    if embarcacion.RecordCount > 0  then
         Global_nombre_Embarcacion := embarcacion.FieldValues['sDescripcion'] ;

    //Buscamos los anexos para personal, equipo, materiales..
    QryAnexos.Active := False;
    QryAnexos.SQL.Clear;
    QryAnexos.SQL.Add('select sAnexo from anexos where sTipo = "PERSONAL"');
    QryAnexos.Open;

    if QryAnexos.RecordCount > 0 then
       Anexo_personal := QryAnexos.FieldValues['sAnexo']
    else
       Anexo_personal := 'SIN ANEXO';

    QryAnexos.Active := False;
    QryAnexos.SQL.Clear;
    QryAnexos.SQL.Add('select sAnexo from anexos where sTipo = "EQUIPO"');
    QryAnexos.Open;

    if QryAnexos.RecordCount > 0 then
       Anexo_equipo := QryAnexos.FieldValues['sAnexo']
    else
       Anexo_equipo := 'SIN ANEXO';

    QryAnexos.Active := False;
    QryAnexos.SQL.Clear;
    QryAnexos.SQL.Add('select sAnexo from anexos where sTipo = "MATERIAL"');
    QryAnexos.Open;

    if QryAnexos.RecordCount > 0 then
       Anexo_material := QryAnexos.FieldValues['sAnexo']
    else
       Anexo_material := 'SIN ANEXO';

    QryAnexos.Active := False;
    QryAnexos.SQL.Clear;
    QryAnexos.SQL.Add('select sAnexo from anexos where sTipo = "PERNOCTA"');
    QryAnexos.Open;

    if QryAnexos.RecordCount > 0 then
       Anexo_pernocta := QryAnexos.FieldValues['sAnexo']
    else
       Anexo_pernocta := 'SIN ANEXO';

    CopyAnexo_personal := Anexo_personal;
    CopyAnexo_equipo   := Anexo_equipo;
    CopyAnexo_material := Anexo_material;
    CopyAnexo_pernocta := Anexo_pernocta;
end;

procedure TfrmGeneradoresBarco.frGeneradorGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText( VarName, 'TITULO' ) = 0 then
    if sOpcionReporte = 'REPORTE DE TRIPULACION' then
        Value := sOpcionReporte
    else
        Value := 'GENERADOR DE ' + sOpcionReporte ;

  if CompareText( VarName, 'SUPERINTENDENTE' ) = 0 then
     Value := sSuperIntendente;

  if CompareText( VarName, 'ESTIMACION' ) = 0 then
  begin
      connection.QryBusca.Active := False ;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('select iNumeroEstimacion from estimacionperiodo where sContrato =:Contrato and sIdTipoEstimacion = "N" and dFechaInicio <= :fechaI and dFechaFinal >= :fechaF') ;
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato_barco ;
      connection.QryBusca.Params.ParamByName('fechaI').DataType   := ftDate ;
      connection.QryBusca.Params.ParamByName('fechaI').Value      := tdFechaInicio.Date ;
      connection.QryBusca.Params.ParamByName('fechaF').DataType   := ftDate ;
      connection.QryBusca.Params.ParamByName('fechaF').Value      := tdFechaFinal.Date ;
      connection.QryBusca.Open ;
      if connection.QryBusca.RecordCount > 0 then
          Value := connection.QryBusca.FieldValues ['iNumeroEstimacion']
      else
          Value := 'Sin No. de Estimacion';

  end;

  if CompareText( VarName, 'SUPERVISOR' ) = 0 then
     Value := sSupervisorGenerador;
  if CompareText( VarName, 'SUPERVISOR_TIERRA' ) = 0 then
     Value := sSupervisorTierra;
  if CompareText( VarName, 'SUPERVISOR_RESIDENTE' ) = 0 then
     Value := sResidente;
  if CompareText( VarName, 'SUPERVISOR_SUBCONTRATISTA' ) = 0 then
     Value := sSupervisorSubContratista;

  if CompareText( VarName, 'PUESTO_SUPERINTENDENTE' ) = 0 then
     Value := sPuestoSuperIntendente;
  if CompareText( VarName, 'PUESTO_SUPERVISOR' ) = 0 then
     Value := sPuestoSupervisorGenerador;
  if CompareText( VarName, 'PUESTO_SUPERVISOR_SUBCONTRATISTA' ) = 0 then
     Value := sPuestoSupervisorSubContratista;
  if CompareText( VarName, 'PUESTO_SUPERVISOR_TIERRA' ) = 0 then
     Value := sPuestoSupervisorTierra;
  if CompareText( VarName, 'PUESTO_SUPERVISOR_RESIDENTE' ) = 0 then
     Value := sPuestoResidente;
  if CompareText( VarName, 'PERGENOPT' ) = 0 then
     Value := sDiarioPeriodo  ;

  if CompareText( VarName, 'TIPOACUM' ) = 0 then
     Value := sTipoAcumulado  ;
  if CompareText( VarName, 'PUO' ) = 0 then
     Value := sTipoTitulo  ;
  If CompareText(VarName, 'EMBARCACION') = 0 then
     Value := global_nombre_Embarcacion ;
end;
function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;
procedure TfrmGeneradoresBarco.tdFechaFinalChange(Sender: TObject);
begin
//  tdFechaFinal.MinDate:=tdFechainicio.Date;
  
end;

procedure TfrmGeneradoresBarco.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entrada
end;

procedure TfrmGeneradoresBarco.tdFechaFinalExit(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_salida;
    tsContrato.Items.Clear ;
    tsContrato.Items.Add('<<<<< TODOS LOS ANEXOS >>>>>' ) ;
    QryContratos.Active := False ;
    QryContratos.ParamByName('FechaI').AsDate := tdFechaInicio.Date;
    QryContratos.ParamByName('FechaF').AsDate := tdFechaFinal.Date;
    QryContratos.Open ;
    if QryContratos.RecordCount > 0 then
    begin
        While NOT QryContratos.Eof Do
        Begin
            tsContrato.Items.Add(QryContratos.FieldValues['sContrato'] ) ;
            QryContratos.Next
        End;
   end;
   tsContrato.ItemIndex := 0 ;
   tsContrato.SetFocus;
end;

procedure TfrmGeneradoresBarco.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 Then
        tsContrato.SetFocus
end;

procedure TfrmGeneradoresBarco.tdFechaInicioChange(Sender: TObject);
begin
  tdFechaFinal.Date:=tdFechainicio.Date;

end;

procedure TfrmGeneradoresBarco.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entrada
end;

procedure TfrmGeneradoresBarco.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salida ;
    tsContrato.Items.Clear ;
    tsContrato.Items.Add('<<<<< TODOS LOS ANEXOS >>>>>' ) ;
    QryContratos.Active := False ;
    QryContratos.ParamByName('FechaI').AsDate := tdFechaInicio.Date;
    QryContratos.ParamByName('FechaF').AsDate := tdFechaFinal.Date;
    QryContratos.Open ;
    if QryContratos.RecordCount > 0 then
    begin
        While NOT QryContratos.Eof Do
        Begin
            tsContrato.Items.Add(QryContratos.FieldValues['sContrato'] ) ;
            QryContratos.Next
        End;
   end;
   tsContrato.ItemIndex := 0 ;
   tdFechaFinal.SetFocus;
end;

procedure TfrmGeneradoresBarco.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        tdFechaFinal.SetFocus
end;

procedure TfrmGeneradoresBarco.tsContratoEnter(Sender: TObject);
begin
    tsContrato.Color := global_color_entrada
end;

procedure TfrmGeneradoresBarco.tsContratoExit(Sender: TObject);
begin
    tsContrato.Color := global_color_salida;
    tsPlataformas.Items.Clear ;
    tsPlataformas.Items.Add('<<<<< TODOS LOS FRENTES >>>>>' ) ;
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select sNumeroOrden from ordenesdetrabajo Where scontrato =:Contrato Order By sNumeroOrden') ;
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Contrato').Value    := tsContrato.Text ;
    Connection.QryBusca.Open ;
    if Connection.QryBusca.RecordCount > 0 then
    begin
          While NOT Connection.QryBusca.Eof Do
          Begin
              tsPlataformas.Items.Add(Connection.QryBusca.FieldValues['sNumeroOrden'] ) ;
              Connection.QryBusca.Next ;
          End;
    end;
    tsPlataformas.ItemIndex := 0 ;
    tsPlataformas.SetFocus
end;

procedure TfrmGeneradoresBarco.tsContratoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        btnImprimir.SetFocus 
end;

procedure TfrmGeneradoresBarco.BuscaContratoEmbarcacion;
var
    ContratoBarco, Embarcacion : string;
begin
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select sContrato from contratos where sTipoObra = "BARCO" and sContrato = sCodigo ');
    Connection.QryBusca.Open ;

    if connection.QryBusca.RecordCount > 0 then
       ContratoBarco := connection.QryBusca.FieldValues['sContrato']
    else
        ContratoBarco := 'NINGUNO';

    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select sDescripcion from embarcaciones where sContrato =:Contrato and sIdEmbarcacion =:Embarcacion ');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString ;
    Connection.QryBusca.Params.ParamByName('Contrato').Value       := ContratoBarco;
    Connection.QryBusca.Params.ParamByName('Embarcacion').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Embarcacion').Value    := global_barco;
    Connection.QryBusca.Open ;

    if connection.QryBusca.RecordCount > 0 then
       Embarcacion := connection.QryBusca.FieldValues['sDescripcion']
    else
        Embarcacion := 'SIN EMBARCACION PRINCIPAL';

    rxGeneradorDia.First;
    while not rxGeneradorDia.Eof do
    begin
          rxGeneradorDia.Edit;
          rxGeneradorDia.FieldValues['sContratoBarco']        := ContratoBarco;
          rxGeneradorDia.FieldValues['sEmbarcacionPrincipal'] := Embarcacion;
          rxGeneradorDia.Post;
          rxGeneradorDia.Next;
    end;   

end;

procedure TfrmGeneradoresBarco.chkPUClick(Sender: TObject);
begin
     if chkPu.Checked then
     begin
        //chkCobroPU.Visible := True;
        chkCobroPU.Checked := False;
     end
     else
     begin
          //chkCobroPU.Visible := False;
          chkCobroPU.Checked := False;
     end;
end;

procedure TfrmGeneradoresBarco.GeneradorPernoctaDetallado;
var
    zPernoctas : tzReadOnlyQuery;
    sCadena, sDia: string;
    iPos : integer;
begin
     zPernoctas := TzReadOnlyQuery.Create(self);
     zPernoctas.Connection := connection.zConnection;

     //Consultamos todas las cuentas de pernoctas.
     zPernoctas.Active := False;
     zPernoctas.SQL.Clear;
     zPernoctas.SQL.Add('select p.*, a.sAnexo, a.sDescripcion as DescripcionAnexo from cuentas p '+
                       'left join anexos a on (a.sTipo = "Pernocta")');
     zPernoctas.Open;

     //Insertamos el concepto de Anexo de Pernoctas     
     zPernoctas.First;
     while not zPernoctas.Eof do
     begin
         connection.QryBusca.Active := False ;
         connection.QryBusca.SQL.Clear ;
         If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
             connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                         'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepernocta bp ' +
                                         'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                         'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                         'where bp.dIdFecha >= :FechaInicio ' +
                                         'and bp.dIdFecha <= :FechaFinal and bp.sIdCuenta =:Cuenta ' +
                                         'Group By bp.sContrato, bp.sIdCuenta, bp.dIdFecha ' +
                                         'order By bp.sContrato, bp.sIdCuenta, bp.dIdFecha')
         Else
             connection.QryBusca.SQL.Add('select c.sNumeroPOT, c.sTitulo, c.mDescripcion as mDescripcionContrato, bp.sContrato, bp.sNumeroOrden, bp.sIdCuenta, ' +
                                         'ct.sDescripcion, bp.dIdFecha, sum(bp.dCantidad) as sFactor from bitacoradepernocta bp ' +
                                         'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) ' +
                                         'Inner Join contratos c on (bp.sContrato = c.sContrato ) ' +
                                         'where bp.sContrato = :Contrato and bp.dIdFecha >= :FechaInicio ' +
                                         'and bp.dIdFecha <= :FechaFinal and bp.sIdCuenta =:Cuenta ' +
                                         'Group By bp.sContrato, bp.sIdCuenta, bp.dIdFecha ' +
                                         'order By bp.sContrato, bp.sIdCuenta, bp.dIdFecha') ;
         connection.QryBusca.Params.ParamByName('FechaInicio').DataType   := ftDate ;
         connection.QryBusca.Params.ParamByName('FechaInicio').Value      := tdFechaInicio.Date ;
         connection.QryBusca.Params.ParamByName('FechaFinal').DataType    := ftDate ;
         connection.QryBusca.Params.ParamByName('FechaFinal').Value       := tdFEchaFinal.Date ;
         If (tsContrato.Text <> '<<<<< TODOS LOS ANEXOS >>>>>') then
         Begin
             connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString ;
             connection.QryBusca.Params.ParamByName('Contrato').Value     := tsContrato.Text ;
         End;
         connection.QryBusca.Params.ParamByName('Cuenta').DataType        := ftString ;
         connection.QryBusca.Params.ParamByName('Cuenta').Value           := zPernoctas.FieldValues['sIdCuenta'];
         connection.QryBusca.open ;
         sCadena := '' ;
         While NOT connection.qryBusca.Eof Do
         begin
             //Colocamos el restos de los datos no consultados..
             if rxGeneradorDia.RecordCount = 1 then
             begin
                rxGeneradorDia.Edit;
                rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                rxGeneradorDia.FieldValues['sContrato']            := connection.QryBusca.FieldValues['sContrato'] ;
                rxGeneradorDia.FieldValues['sTitulo']              := connection.QryBusca.FieldValues['sTitulo'] ;
                rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
                rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                rxGeneradorDia.Post;
             end;

            if sCadena <> (connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdCuenta']) then
            begin
                if rxGeneradorDia.State = dsInsert then
                    rxGeneradorDia.Post ;

                sCadena := connection.QryBusca.FieldValues['sContrato'] + connection.QryBusca.FieldValues['sIdCuenta'] ;
                rxGeneradorDia.Append ;
                rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
                rxGeneradorDia.FieldValues['sContrato']            := connection.QryBusca.FieldValues['sContrato'] ;
                rxGeneradorDia.FieldValues['sTitulo']              := connection.QryBusca.FieldValues['sTitulo'] ;
                rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
                rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
                rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
                rxGeneradorDia.FieldValues['sIdCuenta']            := connection.QryBusca.FieldValues['sIdCuenta'] ;
                rxGeneradorDia.FieldValues['mDescripcion']         := connection.QryBusca.FieldValues['sDescripcion'] ;
                rxGeneradorDia.FieldValues['sMedida'] :=  '' ;
                rxGeneradorDia.FieldValues['sAnexo']  :=  Anexo_pernocta ;
                rxGeneradorDia.FieldValues['dTotal'] := 0 ;
                for iPos := 1 to 31 do
                    rxGeneradorDia.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0.000000 ;
            end ;
            sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime))) ;
            rxGeneradorDia.FieldValues [sDia] := connection.QryBusca.FieldValues['sFactor'];

            sDia := 'St' + Trim(InttoStr(DayOfTheMonth(connection.QryBusca.FieldByName('dIdFecha').AsDateTime)));
            if connection.QryBusca.FieldValues['sFactor'] = Null then
              rxGeneradorDia.FieldValues [sDia] := '1'
            else
              rxGeneradorDia.FieldValues [sDia] := '0';

            rxGeneradorDia.FieldValues['dTotal'] := rxGeneradorDia.FieldValues['dTotal'] + connection.QryBusca.FieldValues['sFactor'] ;
            connection.qryBusca.Next;
         end;
         zPernoctas.Next;
     end;

end;

procedure TfrmGeneradoresBarco.InsertaPernoctas;
var
    zCuentas : tzReadOnlyQuery;
    iPos :integer;
begin
    zCuentas := tzReadOnlyQuery.Create(self);
    zCuentas.Connection := connection.zConnection;

    //Ahora consultamos todas las cuentas o categorias de pernoctas para insertarlas.
    zCuentas.Active := false;
    zCuentas.SQL.Clear;
    zCuentas.SQL.Add('select sIdPernocta, sIdCuenta, sMedida, sDescripcion from cuentas where sIdCuenta > :Cuenta');
    zCuentas.ParamByName('Cuenta').AsString := connection.QryBusca.FieldValues['sIdCuenta'];
    zCuentas.Open;

    while not zCuentas.Eof do
    begin
        rxGeneradorDia.Append ;
        rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
        rxGeneradorDia.FieldValues['sContrato']            := connection.QryBusca.FieldValues['sContrato'] ;
        rxGeneradorDia.FieldValues['sTitulo']              := connection.QryBusca.FieldValues['sTitulo'] ;
        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
        rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
        rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
        rxGeneradorDia.FieldValues['sIdCuenta']            := zCuentas.FieldValues['sIdPernocta'] ;
        rxGeneradorDia.FieldValues['mDescripcion']         := zCuentas.FieldValues['sDescripcion'];
        rxGeneradorDia.FieldValues['sMedida']              := zCuentas.FieldValues['sMedida'];
        rxGeneradorDia.FieldValues['FechaInicial']         := tdFechaInicio.Date;
        rxGeneradorDia.FieldValues['sAnexo']               := Anexo_pernocta ;
        rxGeneradorDia.FieldValues['dTotal']               := 0 ;
        rxGeneradorDia.FieldValues['sNumeroEstimacion']    := NumeroEstimacion;
        zCuentas.Next;
    end;
    zCuentas.Destroy;
end;

procedure TfrmGeneradoresBarco.InsertaTiempoExtra(sParamAgrupa: string; sParamOrden: string);
var
    zTiempos : tzReadOnlyQuery;
    iPos :integer;
begin
    zTiempos := tzReadOnlyQuery.Create(self);
    zTiempos.Connection := connection.zConnection;

    //Ahora consultamos todas las cuentas o categorias de pernoctas para insertarlas.
    zTiempos.Active := false;
    zTiempos.SQL.Clear;
    zTiempos.SQL.Add('select sIdPersonal, sDescripcion, sMedida from personal where sContrato =:Contrato and sIdPersonal =:Personal and lCobro = "'+sCobro+'" ');
    zTiempos.ParamByName('Contrato').AsString := global_contrato_barco;
    zTiempos.ParamByName('Personal').AsString :=  sParamAgrupa + '.1';
    zTiempos.Open;

    while not zTiempos.Eof do
    begin
        rxGeneradorDia.Append ;
        rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
        rxGeneradorDia.FieldValues['sContrato']            := sParamOrden;
        rxGeneradorDia.FieldValues['sTitulo']              := connection.QryBusca.FieldValues['sTitulo'] ;
        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
        rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
        rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
        rxGeneradorDia.FieldValues['sIdPersonal']          := zTiempos.FieldValues['sIdPersonal'] ;
        rxGeneradorDia.FieldValues['sAgrupaPersonal']      := zTiempos.FieldValues['sIdPersonal'] ;
        rxGeneradorDia.FieldValues['mDescripcion']         := zTiempos.FieldValues['sDescripcion'];
        rxGeneradorDia.FieldValues['sMedida']              := zTiempos.FieldValues['sMedida'];
        rxGeneradorDia.FieldValues['FechaInicial']         := tdFechaInicio.Date;
        rxGeneradorDia.FieldValues['sAnexo']               := Anexo_pernocta ;
        rxGeneradorDia.FieldValues['dTotal']               := 0 ;
        rxGeneradorDia.FieldValues['sNumeroEstimacion']    := NumeroEstimacion;
        rxGeneradorDia.Post;
        zTiempos.Next;
    end;
    zTiempos.Destroy;
end;

procedure TfrmGeneradoresBarco.opcBarcoExit(Sender: TObject);
begin
    chkReporteNuevo.Checked := True;
end;

procedure TfrmGeneradoresBarco.opcBarcoPlataformaEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := False;
end;

procedure TfrmGeneradoresBarco.opcBarcoTipoEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := False;
end;

procedure TfrmGeneradoresBarco.opcConsolidadoBarcoEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := False;
end;

procedure TfrmGeneradoresBarco.opcEquipoDetalladoEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := False;
end;

procedure TfrmGeneradoresBarco.opcEquipoDetalladoObraEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := True;
end;

procedure TfrmGeneradoresBarco.opcMaterialDetalladoObraEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := False;
end;

procedure TfrmGeneradoresBarco.opcPernoctaDetalladoEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := False;
end;

procedure TfrmGeneradoresBarco.opcPernoctaDetalladoObraEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := True;
end;

procedure TfrmGeneradoresBarco.opcPersonalDetalladoEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := True;
end;

procedure TfrmGeneradoresBarco.opcPersonalDetalladoObraEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := True;
end;

procedure TfrmGeneradoresBarco.opcTripulacionDiariaEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := False;
end;

procedure TfrmGeneradoresBarco.opcTripulacionxGrupoEnter(Sender: TObject);
begin
    chkReporteNuevo.Checked := False;
end;

//Colsuntamos los anexos de personal, equipo, pernocta y barco para insertarlos en el generador.
procedure TfrmGeneradoresBarco.InsertaAnexo(sParamAnexo: string);
var
    lEncuentra : boolean;
    zCuentas : tzReadOnlyQuery;
    iPos :integer;
begin
    zCuentas := tzReadOnlyQuery.Create(self);
    zCuentas.Connection := connection.zConnection;

    //Primero consultamos el anexo de las pernoctas.
    zCuentas.Active := false;
    zCuentas.SQL.Clear;
    zCuentas.SQL.Add('select sAnexo, sDescripcion, sMedida from anexos where sTipo =:Tipo');
    zCuentas.ParamByName('Tipo').AsString   := sParamAnexo;
    zCuentas.Open;

    if zCuentas.RecordCount > 0 then
    begin
        rxGeneradorDia.Append ;
        rxGeneradorDia.FieldValues['sGrupo'] := 'INTEL-CODE' ;
        rxGeneradorDia.FieldValues['sContrato']            := connection.QryBusca.FieldValues['sContrato'] ;
        rxGeneradorDia.FieldValues['sTitulo']              := connection.QryBusca.FieldValues['sTitulo'] ;
        rxGeneradorDia.FieldValues['mDescripcionContrato'] := connection.QryBusca.FieldValues['mDescripcionContrato'] ;
        rxGeneradorDia.FieldValues['sTituloOpcional']      := connection.QryBusca.FieldValues['sNumeroPOT'] ;
        rxGeneradorDia.FieldValues['sNumeroOrden']         := connection.QryBusca.FieldValues['sNumeroOrden'] ;
        rxGeneradorDia.FieldValues['sNumeroActividad']     := zCuentas.FieldValues['sAnexo'] ;
        rxGeneradorDia.FieldValues['sIdCuenta']            := zCuentas.FieldValues['sAnexo'] ;
        rxGeneradorDia.FieldValues['mDescripcion']         := zCuentas.FieldValues['sDescripcion'] ;
        rxGeneradorDia.FieldValues['sMedida']              := zCuentas.FieldValues['sMedida'] ;
        rxGeneradorDia.FieldValues['sIdPersonal']          := zCuentas.FieldValues['sAnexo'] ;
        rxGeneradorDia.FieldValues['sAgrupaPersonal']      := zCuentas.FieldValues['sAnexo'] ;
        rxGeneradorDia.FieldValues['sIdEquipo']            := zCuentas.FieldValues['sAnexo'] ;
        rxGeneradorDia.FieldValues['sAnexo']               := Anexo_pernocta ;
        rxGeneradorDia.FieldValues['dTotal']               := 0 ;
        rxGeneradorDia.FieldValues['FechaInicial']         := tdFechaInicio.Date;
        rxGeneradorDia.FieldValues['sNumeroEstimacion']    := NumeroEstimacion;
        //Cuando sea el Barco de acuerdo a criterio Diavaz,,
        if opcBarco.Checked  then
           if (chkReporteNuevo.Checked) then
               If (tsContrato.Text = '<<<<< TODOS LOS ANEXOS >>>>>') then
                   OrdenConBarco(global_contrato_barco)
               else
                   OrdenConBarco(tsContrato.Text);
        rxGeneradorDia.Post;
    end;
    zCuentas.Destroy;
end;

//Buscamos el numero de estimacion de acuerdo a la orden.
procedure TfrmGeneradoresBarco.BuscaEstimacion(sParamOrden: string);
var
    zEstimacion : tzReadOnlyquery;
begin
    zEstimacion := tzReadOnlyQuery.Create(self);
    zEstimacion.Connection := connection.zConnection;

    zEstimacion.Active := False;
    zEstimacion.SQL.Clear;
    zEstimacion.SQL.Add('select iNumeroEstimacion from estimacionperiodo where sContrato =:Contrato and :fecha >= dFechaInicio and :Fecha <= dFechaFinal');
    zEstimacion.ParamByName('Contrato').AsString := sParamOrden;
    zEstimacion.ParamByName('Fecha').AsDate      := tdfechaFinal.Date;
    zEstimacion.Open;

    if zEstimacion.RecordCount > 0 then
       NumeroEstimacion :=  zEstimacion.FieldValues['iNumeroEstimacion']
    else
       NumeroEstimacion :=  'Sin No. Estimacion';
    zEstimacion.Destroy;
end;

//Colocamos la descripcion de la orden y titulo para obtener el reporte de barco en dicha Orden.
procedure TfrmGeneradoresBarco.OrdenConBarco(sParamOrden: string);
var
    zOrdenes : tzReadOnlyquery;
begin
    zOrdenes := tzReadOnlyQuery.Create(self);
    zOrdenes.Connection := connection.zConnection;

    zOrdenes.Active := False;
    zOrdenes.SQL.Clear;
    zOrdenes.SQL.Add('select sNumeroPOT, mDescripcion from contratos where sContrato =:Contrato ');
    zOrdenes.ParamByName('Contrato').AsString := sParamOrden;
    zOrdenes.Open;

    if zOrdenes.RecordCount > 0 then
    begin
        rxGeneradorDia.FieldValues['mDescripcionContrato'] :=  zOrdenes.FieldValues['mDescripcion'];
        rxGeneradorDia.FieldValues['sTituloOpcional']      :=  zOrdenes.FieldValues['sNumeroPOT'];
    end
    else
    begin
        rxGeneradorDia.FieldValues['mDescripcionContrato'] :=  zOrdenes.FieldValues['mDescripcion'];
        rxGeneradorDia.FieldValues['sTituloOpcional']      :=  zOrdenes.FieldValues['sNumeroPOT'];
    end;

    zOrdenes.Destroy;
end;

end.
