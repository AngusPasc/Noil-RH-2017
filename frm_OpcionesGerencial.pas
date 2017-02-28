unit frm_OpcionesGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  AdvCircularProgress, UnitExcepciones, sListBox, sCheckListBox, sMaskEdit,
  sCustomComboEdit, sTooledit, ZAbstractDataset, sCurrEdit, NxPageControl,
  Grids, DBGrids, AdvPageControl, NxCollection, NxEdit;
type
  TfrmOpcionesGerencial = class(TForm)
    pgOpciones: TsPageControl;
    pgPartidas: TsTabSheet;
    pgEstructura: TsTabSheet;
    pgAlcances: TsTabSheet;
    QryConfiguracion: TZReadOnlyQuery;
    QryConfiguracioniFirmasGeneradores: TStringField;
    QryConfiguracioniFirmas: TStringField;
    QryConfiguracionsOrdenPerEq: TStringField;
    QryConfiguracionsTipoPartida: TStringField;
    QryConfiguracionsImprimePEP: TStringField;
    QryConfiguracionsClaveSeguridad: TStringField;
    QryConfiguracioncStatusProceso: TStringField;
    QryConfiguracionsOrdenExtraordinaria: TStringField;
    QryConfiguracionlLicencia: TStringField;
    QryConfiguracionsDireccion1: TStringField;
    QryConfiguracionsDireccion2: TStringField;
    QryConfiguracionsDireccion3: TStringField;
    QryConfiguracionsCiudad: TStringField;
    QryConfiguracionsTelefono: TStringField;
    QryConfiguracionbImagen: TBlobField;
    QryConfiguracionsContrato: TStringField;
    QryConfiguracionsNombre: TStringField;
    QryConfiguracionsPiePagina: TStringField;
    QryConfiguracionsEmail: TStringField;
    QryConfiguracionsWeb: TStringField;
    QryConfiguracionsSlogan: TStringField;
    QryConfiguracionsFirmasElectronicas: TStringField;
    QryConfiguracionlImprimeExtraordinario: TStringField;
    QryConfiguracionsCodigo: TStringField;
    QryConfiguracionmDescripcion: TMemoField;
    QryConfiguracionsTitulo: TMemoField;
    QryConfiguracionmCliente: TMemoField;
    QryConfiguracionbImagenPEP: TBlobField;
    dsConfiguracion: TfrxDBDataset;
    dsMovimientos: TfrxDBDataset;
    qryMovimientos: TZReadOnlyQuery;
    qryArribos: TZReadOnlyQuery;
    dsArribosReporte: TfrxDBDataset;
    dsClimaReporte: TfrxDBDataset;
    qryClimaReporte: TZReadOnlyQuery;
    rxCondiciones: TRxMemoryData;
    rxCondicionessCantidad1: TStringField;
    rxCondicionessDescripcionTiempo1: TStringField;
    rxCondicionessDireccion1: TStringField;
    rxCondicionessMedida1: TStringField;
    rxCondicionessCantidad2: TStringField;
    rxCondicionessDescripcionTiempo2: TStringField;
    rxCondicionessDireccion2: TStringField;
    rxCondicionessMedida2: TStringField;
    rxRecursos: TRxMemoryData;
    rxRecursossRecurso1: TStringField;
    rxRecursossMedida1: TStringField;
    rxRecursosdCantidadConsumo1: TFloatField;
    rxRecursosdCantidadProducido1: TFloatField;
    rxRecursosdCantidadActual1: TFloatField;
    rxRecursossRecurso2: TStringField;
    rxRecursossMedida2: TStringField;
    rxRecursosdCantidadConsumo2: TFloatField;
    rxRecursosdCantidadProducido2: TFloatField;
    rxRecursosdCantidadActual2: TFloatField;
    rxRecursossRecurso3: TStringField;
    rxRecursossMedida3: TStringField;
    rxRecursosdCantidadConsumo3: TFloatField;
    rxRecursosdCantidadProducido3: TFloatField;
    rxRecursosdCantidadActual3: TFloatField;
    rxRecursossRecurso4: TStringField;
    rxRecursossMedida4: TStringField;
    rxRecursosdCantidadConsumo4: TFloatField;
    rxRecursosdCantidadProducido4: TFloatField;
    rxRecursosdCantidadActual4: TFloatField;
    rxRecursosEmbarcacion: TStringField;
    embarcacion: TZReadOnlyQuery;
    dsEmbarcacion: TfrxDBDataset;
    dsOrdenes: TfrxDBDataset;
    qryOrdenes: TZReadOnlyQuery;
    rxOrdenes: TRxMemoryData;
    rxOrdenessOrden: TStringField;
    rxOrdenessDescripcionOrden: TStringField;
    rxOrdenesdAvanceProgramado: TFloatField;
    rxOrdenesdAvanceReal: TFloatField;
    rxOrdenesdAvanceProgramadoAnt: TFloatField;
    rxOrdenesdAvanceProgramadoDiario: TFloatField;
    rxOrdenesdAvanceAnterior: TFloatField;
    rxOrdenesdAvanceDiario: TFloatField;
    rxOrdenesdTiempoProgramado: TFloatField;
    rxOrdenesdTiempoReal: TFloatField;
    rxOrdenessHoraEfectivo: TStringField;
    rxOrdenessHoraMuerto: TStringField;
    rxOrdenessHoraMalTiempo: TStringField;
    rxOrdenessTipoActividad: TStringField;
    rxOrdenessNumeroActividad: TStringField;
    rxOrdenesmDescripcion: TMemoField;
    rxOrdenesdAvancePartida: TFloatField;
    rxOrdenessTipoNota: TStringField;
    rxOrdenessHoraInicio: TStringField;
    rxOrdenessHoraFinal: TStringField;
    rxOrdenessHoras: TStringField;
    rReporte: TfrxReport;
    qryNotasGenerales: TZReadOnlyQuery;
    dsNotasGenerales: TfrxDBDataset;
    rxOrdenessNegrita: TStringField;
    rxCondicionessUbicacion: TStringField;
    zOrdenes: TZQuery;
    ds_ordenes: TDataSource;
    rxArribos: TRxMemoryData;
    rxArribossHoraInicio: TStringField;
    rxArribossHoraFinal: TStringField;
    rxArribosmDescripcion: TMemoField;
    rxMovimientos: TRxMemoryData;
    StringField1: TStringField;
    StringField2: TStringField;
    MemoField1: TMemoField;
    rxArribossContrato: TStringField;
    rxMovimientossContrato: TStringField;
    rxPersonal: TRxMemoryData;
    dsPersonal: TfrxDBDataset;
    rxPersonalsIdPersonal: TStringField;
    rxPersonalmDescripcion: TMemoField;
    rxPersonaldCantidad1: TFloatField;
    rxPersonaldCantidad2: TFloatField;
    rxPersonaldCantidad3: TFloatField;
    rxPersonaldCantidad4: TFloatField;
    rxPersonaldCantidad5: TFloatField;
    rxPersonaldCantidad7: TFloatField;
    rxPersonaldCantidad6: TFloatField;
    rxPersonaliNivel: TIntegerField;
    rxPersonalsOrden1: TStringField;
    rxPersonalsOrden2: TStringField;
    rxPersonalsOrden3: TStringField;
    rxPersonalsOrden4: TStringField;
    rxPersonalsOrden5: TStringField;
    rxPersonalsOrden6: TStringField;
    rxPersonalsOrden7: TStringField;
    rxEquipo: TRxMemoryData;
    MemoField2: TMemoField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    dsEquipo: TfrxDBDataset;
    rxEquiposIdEquipo: TStringField;
    QryConfiguracionsContratoBarco: TStringField;
    QryConfiguracionmDescripcionBarco: TMemoField;
    tiempo: TTimer;
    pgNotas: TsTabSheet;
    pgBarco: TAdvPageControl;
    pgLocalizacion: TAdvTabSheet;
    mLocalizacion: TMemo;
    pgInicio: TAdvTabSheet;
    mMovInicio: TMemo;
    pgFinal: TAdvTabSheet;
    mMovTermino: TMemo;
    pgMovimiento: TAdvTabSheet;
    mNotaMovimiento: TMemo;
    pgArribo: TAdvTabSheet;
    mNotaArribo: TMemo;
    rxMovimientossContinua: TStringField;
    rxArribossContinua: TStringField;
    rxPersonaldCantidad8: TFloatField;
    rxPersonalsOrden8: TStringField;
    rxEquipodCantidad8: TFloatField;
    rxEquiposOrden8: TStringField;
    rxPersonalsAnexo: TStringField;
    rxEquiposAnexo: TStringField;
    NxHeaderPanel1: TNxHeaderPanel;
    tsListaOrden: TRxCheckListBox;
    CmdOk: TButton;
    CmdCancel: TButton;
    NxHeaderPanel2: TNxHeaderPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DescrL: TLabel;
    tFecha: TsDateEdit;
    hInicio: TMaskEdit;
    hTermino: TMaskEdit;
    cmdWarning: TBitBtn;
    NxHeaderPanel3: TNxHeaderPanel;
    Grid_Ordenes: TDBGrid;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    tPonderado: TsCalcEdit;
    tNivel: TsCalcEdit;
    tProgramado: TsCalcEdit;
    tReal: TsCalcEdit;
    chkJornada: TCheckBox;
    cmdCalcula: TBitBtn;
    chkCalcula: TCheckBox;
    cmbOkOrden: TBitBtn;
    cmdOkBarco: TBitBtn;
    NxHeaderPanel4: TNxHeaderPanel;
    mNotasGerencial: TMemo;
    cmdOkNotas: TBitBtn;
    procedure tFechaEnter(Sender: TObject);
    procedure tFechaExit(Sender: TObject);
    procedure hInicioEnter(Sender: TObject);
    procedure hInicioExit(Sender: TObject);
    procedure hTerminoEnter(Sender: TObject);
    procedure hTerminoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tFechaChange(Sender: TObject);

    procedure ordenesactuales;
    procedure CrearGerencialExcel();
    procedure CrearGerencialPDF();
    function  CalculaAvances(sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamTipo, sParamHoraI, sParamHoraF : string;  dParamFecha :tDate; dParamPonderado : double; dParamNivel : integer) : double;
    procedure GuardaDatosRx(sParamClasificacion : string);
    procedure InsertaDato();
    procedure OpcionesOrden(sParamOrden : string);
    procedure NotasBarco();
    procedure Personal();
    procedure Equipo();
    procedure BuscaMovimientos();
    function  CalculaJornadas() :integer;
    function  CalculaDias(dParamContrato : string): double;
    procedure ValidaDatos();
    procedure NotasGerencial(sParamContrato, sParamOrden, sParamInicio, sParamFinal :string; dParamFechaI, dParamFechaF :tdate);

    procedure CmdOkClick(Sender: TObject);
    procedure rReporteGetValue(const VarName: string; var Value: Variant);
    procedure EditPaquetesEnter(Sender: TObject);
    procedure pgOpcionesChange(Sender: TObject);
    procedure tsListaOrdenOpcionClick(Sender: TObject);
    procedure cmbOkOrdenClick(Sender: TObject);
    procedure cmdOkBarcoClick(Sender: TObject);
    procedure zOrdenesAfterScroll(DataSet: TDataSet);
    procedure hInicioKeyPress(Sender: TObject; var Key: Char);
    procedure hTerminoKeyPress(Sender: TObject; var Key: Char);
    procedure tFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tNivelKeyPress(Sender: TObject; var Key: Char);
    procedure tPonderadoKeyPress(Sender: TObject; var Key: Char);
    procedure tProgramadoKeyPress(Sender: TObject; var Key: Char);
    procedure tRealKeyPress(Sender: TObject; var Key: Char);
    procedure tNivelEnter(Sender: TObject);
    procedure tNivelExit(Sender: TObject);
    procedure tPonderadoEnter(Sender: TObject);
    procedure tPonderadoExit(Sender: TObject);
    procedure tProgramadoEnter(Sender: TObject);
    procedure tProgramadoExit(Sender: TObject);
    procedure tRealEnter(Sender: TObject);
    procedure tRealExit(Sender: TObject);
    procedure cmdCalculaClick(Sender: TObject);
    procedure tiempoTimer(Sender: TObject);
    procedure cmdWarningClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcionesGerencial: TfrmOpcionesGerencial;
  //Variables locales de Gerencial
  dProgramadoAcum,
  dProgramadoAnt,
  dProgramadoDia,
  dRealAcum,
  dRealAnt,
  dRealDia,
  dTiempoReal,
  dAvancePaquete  : double;
  num, total_orden  : integer;
  ArrayPaquetes: array[1..10, 1..4] of string;
  ArrayTiempos:  array[1..36, 1..4] of string;
  ArrayEquipos:  array[1..30] of string;
  //Notas de barco
  sUbicacion, sInicio, sFinal, sMovimiento, sArribo : string;
  lInserta, lAplica, lAlerta : boolean;
  sConceptoTiempos  : string;
  sHoraFinal, sMensaje : string;

implementation

uses
    frm_bitacoradepartamental_2, frm_Paquetes_gerencial;

{$R *.dfm}

procedure TfrmOpcionesGerencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    cafree;
end;

procedure TfrmOpcionesGerencial.FormShow(Sender: TObject);
begin
    try
       tfecha.Date := date;
       lAlerta     := False;
       if frmbitacoradepartamental_2.Active then
       begin
           tfecha.date   := frmbitacoradepartamental_2.tdIdFecha.Date;
           if (frmbitacoradepartamental_2.QryBitacora.FieldValues['sHoraInicio'] <> '00:00') and
              (frmbitacoradepartamental_2.QryBitacora.FieldValues['sHoraFinal']  <> '00:00') then
           begin
               hInicio.Text  := frmbitacoradepartamental_2.QryBitacora.FieldValues['sHoraInicio'];
               hTermino.Text := frmbitacoradepartamental_2.QryBitacora.FieldValues['sHoraFinal'];
           end;
           ValidaDatos;
       end;
    except
       tfecha.Date := date;
    end;
    pgOpciones.ActivePageIndex := 0;
    ordenesactuales;
end;

procedure TfrmOpcionesGerencial.hInicioEnter(Sender: TObject);
begin
    hinicio.Color := global_color_entrada;
end;

procedure TfrmOpcionesGerencial.hInicioExit(Sender: TObject);
begin
    hinicio.Color := global_color_salida;
end;

procedure TfrmOpcionesGerencial.hInicioKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       htermino.SetFocus;
end;

procedure TfrmOpcionesGerencial.hTerminoEnter(Sender: TObject);
begin
    htermino.Color := global_color_entrada;
end;

procedure TfrmOpcionesGerencial.hTerminoExit(Sender: TObject);
begin
    htermino.Color := global_Color_salida;
    ordenesactuales;
    ValidaDatos;
end;

procedure TfrmOpcionesGerencial.hTerminoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       cmdok.SetFocus;
end;

procedure TfrmOpcionesGerencial.tFechaChange(Sender: TObject);
begin
    ordenesactuales;
    ValidaDatos;
end;

procedure TfrmOpcionesGerencial.tFechaEnter(Sender: TObject);
begin
    tfecha.Color := global_color_entrada;
end;

procedure TfrmOpcionesGerencial.tFechaExit(Sender: TObject);
begin
    tfecha.Color := global_color_salida;
end;

procedure TfrmOpcionesGerencial.tFechaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       hInicio.SetFocus;
end;

procedure TfrmOpcionesGerencial.tiempoTimer(Sender: TObject);
begin
    if lAlerta = True then
    begin
        if tiempo.Interval = 900 then
        begin
            cmdWarning.Visible := False;
            tiempo.Interval := 1000;
        end
        else
        begin
            cmdWarning.Visible := True;
            tiempo.Interval := 900;
        end;

    end;
end;

procedure TfrmOpcionesGerencial.tNivelEnter(Sender: TObject);
begin
    tNivel.Color := global_Color_entrada;
end;

procedure TfrmOpcionesGerencial.tNivelExit(Sender: TObject);
begin
    tNivel.Color := global_color_salida
end;

procedure TfrmOpcionesGerencial.tNivelKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tPonderado.SetFocus;
end;

procedure TfrmOpcionesGerencial.tPonderadoEnter(Sender: TObject);
begin
    tPonderado.Color := global_Color_entrada
end;

procedure TfrmOpcionesGerencial.tPonderadoExit(Sender: TObject);
begin
    tPonderado.Color := global_Color_salida
end;

procedure TfrmOpcionesGerencial.tPonderadoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tProgramado.SetFocus;
end;

procedure TfrmOpcionesGerencial.tProgramadoEnter(Sender: TObject);
begin
    tProgramado.Color := global_Color_entrada
end;

procedure TfrmOpcionesGerencial.tProgramadoExit(Sender: TObject);
begin
    tProgramado.Color := global_color_salida
end;

procedure TfrmOpcionesGerencial.tProgramadoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tReal.SetFocus;
end;

procedure TfrmOpcionesGerencial.tRealEnter(Sender: TObject);
begin
    tReal.Color := global_Color_entrada
end;

procedure TfrmOpcionesGerencial.tRealExit(Sender: TObject);
begin
    tReal.Color := global_Color_salida
end;

procedure TfrmOpcionesGerencial.tRealKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       cmbOkOrden.SetFocus;
end;

procedure TfrmOpcionesGerencial.tsListaOrdenOpcionClick(Sender: TObject);
begin
    OpcionesOrden(zOrdenes.FieldValues['sContrato']);
end;

procedure TfrmOpcionesGerencial.zOrdenesAfterScroll(DataSet: TDataSet);
begin
    if zOrdenes.RecordCount > 0 then
    begin
        OpcionesOrden(zOrdenes.FieldValues['sContrato']);
    end;
end;

procedure TfrmOpcionesGerencial.pgOpcionesChange(Sender: TObject);
begin
    if pgOpciones.ActivePageIndex = 2 then
    begin
        pgInicio.Caption := 'Inicio '+ hInicio.Text;
        pgFinal.Caption  := 'Termino '+ htermino.Text;
    end;

    if pgOpciones.ActivePageIndex > 0 then
    begin
       InsertaDato;
       ValidaDatos;
    end;

    if pgOpciones.ActivePageIndex = 1 then
    begin
       if tsListaOrden.Items.Count > 0 then
          OpcionesOrden(zOrdenes.FieldValues['sContrato']);
       tNivel.SetFocus;
    end;

    if pgOpciones.ActivePageIndex >= 2 then
       NotasBarco;
end;

procedure TfrmOpcionesGerencial.rReporteGetValue(const VarName: string;
  var Value: Variant);
begin
   //Reporte Gerencial
   If CompareText(VarName, 'HORA_INICIO') = 0 then
       Value := hInicio.Text ;
   If CompareText(VarName, 'HORA_FINAL') = 0 then
       Value := hTermino.Text ;
   If CompareText(VarName, 'FECHA_REPORTE') = 0 then
       Value := tfecha.Date ;
   If CompareText(VarName, 'FECHA_REPORTECONS') = 0 then
       Value := global_fecha_reportecons ;
   If CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
       Value := global_dias_por_transcurrir ;
   If CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
       Value := global_dias_transcurridos ;
   If CompareText(VarName, 'EMBARCACION') = 0 then
       Value := global_nombre_Embarcacion ;

   If CompareText(VarName, 'FECHA_GERENCIAL') = 0 then
      if hInicio.Text > hTermino.Text then
         Value := DateToStr(tfecha.Date - 1) +' - '+ DateToStr(tfecha.Date)
      else
         Value := tfecha.Date;     
end;

procedure TfrmOpcionesGerencial.CmdOkClick(Sender: TObject);
begin
    InsertaDato;
    CrearGerencialPDF;
end;

procedure TfrmOpcionesGerencial.cmdWarningClick(Sender: TObject);
begin
    if lAlerta then
        messageDLG(sMensaje, mtWarning, [mbOk], 0)
     else
        messageDLG('La información esta completa!', mtInformation, [mbOk], 0);

     lAlerta := False;
     cmdWarning.Visible := False;
end;

procedure TfrmOpcionesGerencial.CrearGerencialExcel;
begin
   //Excel
end;

procedure TfrmOpcionesgerencial.CrearGerencialPDF;
var
   //Variables Gerencial
   fila : integer;
   lContinua : boolean;
   iNivel    : double;
   WbsAnterior, WbsAnteriorPaquete, WbsActual, sFrente, sHora : string;
   tFechaGerencial : tDate;
   totalNiveles    : integer;
   zMovimientos    : tzReadOnlyQuery;
begin
    //Definimos la fecha de acuerdo al horario del gerencial
    if hInicio.Text > hTermino.Text  then
       tFechaGerencial := tFecha.Date - 1
    else
       tFechaGerencial := tFecha.Date;

    //Datos de la configuracion
    QryConfiguracion.Active := False;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c.iFirmasReportes, c.iFirmasGeneradores, c.iFirmas, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, '+
                             ' (select sContrato from contratos where sTipoObra = "BARCO" ) as sContratoBarco, ' +
                             ' (select mDescripcion from contratos where sTipoObra = "BARCO" ) as mDescripcionBarco, ' +
                             'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, '+
                             'c.sDireccion1, c.sDireccion2, c.sDireccion3, c.sCiudad, c.sTelefono,  '+
                             'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, '+
                             'c2.sCodigo, c2.mDescripcion, c2.sTitulo, c2.mCliente, c2.bImagen as bImagenPEP '+
                             'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                             'Where c2.sContrato = :Contrato group by sContrato ');
    QryConfiguracion.ParamByName('Contrato').AsString := global_contrato;
    QryConfiguracion.Open;

    //Condiciones climatologicas
    QryClimaReporte.Active := False;
    QryClimaReporte.SQL.Clear;
    QryClimaReporte.SQL.Add('select sCantidad, c.sDescripcion as sDescripcionTiempo,d.sDescripcion as sDireccion, c.sMedida '+
                        'from condicionesclimatologicas cm '+
                        'inner join condiciones c on (cm.iIdCondicion=c.iIdCondicion ) '+
                        'inner join direcciones d on (cm.iIdDireccion=d.iIdDireccion) '+
                        'where cm.sContrato=:Contrato and cm.dIdFecha=:Fecha and cm.sHorario =:Hora Group By sDescripcionTiempo');
    QryClimaReporte.Params.ParamByName('Contrato').DataType := ftString;
    QryClimaReporte.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco;
    QryClimaReporte.Params.ParamByName('Fecha').DataType    := ftDate;
    QryClimaReporte.Params.ParamByName('Fecha').Value       := tFecha.Date;
    QryClimaReporte.Params.ParamByName('Hora').AsString     := hTermino.Text;
    QryClimaReporte.Open;

    rxCondiciones.EmptyTable;
    num := 1;
    if QryClimaReporte.RecordCount > 0 then
    begin
        rxCondiciones.Append;
        rxCondiciones.Post;
    end;
    while not QryClimaReporte.Eof do
    begin
        rxCondiciones.Edit;
        rxCondiciones.FieldValues['sDescripcionTiempo'+ IntToStr(num)] := QryClimaReporte.FieldValues['sDescripcionTiempo'];
        rxCondiciones.FieldValues['sCantidad'+IntToStr(num)]  := QryClimaReporte.FieldValues['sCantidad'];
        rxCondiciones.FieldValues['sDireccion'+IntToStr(num)] := QryClimaReporte.FieldValues['sDireccion'];
        rxCondiciones.FieldValues['sMedida'+IntToStr(num)]    := QryClimaReporte.FieldValues['sMedida'];
        rxCondiciones.Post;
        inc(num);
        QryClimaReporte.Next;
    end;

    //Ahora guardamos la ubicacion de la embarcacion.
    zMovimientos := TZReadOnlyQuery.Create(self);
    zMovimientos.Connection := connection.zConnection;
    zMovimientos.Active := False;
    zMovimientos.SQL.Clear;
    zMovimientos.SQL.Add('select sUbicacionBarco, sNotaInicio, sNotaFinal, sNotaMovimiento, sNotaArribo from gerencial_diario where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin group by dIdFecha');
    zMovimientos.ParamByName('fecha').AsDate      := tfecha.Date;
    zMovimientos.ParamByName('inicio').AsString   := hInicio.Text;
    zMovimientos.ParamByName('fin').AsString      := htermino.Text;
    zMovimientos.Open;

    if zMovimientos.RecordCount > 0 then
    begin
        rxCondiciones.Edit;
        rxCondiciones.FieldValues['sUbicacion'] := zMovimientos.FieldValues['sUbicacionBarco'];
        rxCondiciones.Post;
    end;

    //Existencias de combustible de la embarcación
    embarcacion.Active := False;
    embarcacion.SQL.Clear;
    embarcacion.SQL.Add('select re.sDescripcion as sRecurso, re.sMedida, r.dConsumo, r.dProduccion, r.dRecibido, r.dExistenciaActual, e.sDescripcion as Embarcacion '+
                        'from recursos r '+
                        'inner join recursosdeexistencias re on (r.iIdRecursoExistencia=re.iIdRecursoExistencia) '+
                        'inner join embarcaciones e on (e.sContrato = r.sContrato and e.sIdEmbarcacion = r.sIdEmbarcacion and e.sTipo = "Principal") '+
                        'where r.sContrato =:Contrato and r.dIdFecha=:Fecha ');
    embarcacion.Params.ParamByName('Contrato').DataType := ftString;
    embarcacion.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco;
    embarcacion.Params.ParamByName('Fecha').DataType    := ftDate;
    embarcacion.Params.ParamByName('Fecha').Value       := tfecha.Date - 1;
    embarcacion.Open;

    rxRecursos.EmptyTable;
    num := 1;
    if embarcacion.RecordCount > 0 then
    begin
        rxRecursos.Append;
        rxRecursos.Post;
    end;
    while not embarcacion.Eof do
    begin
        rxRecursos.Edit;
        rxRecursos.FieldValues['sRecurso'+ IntToStr(num)]             := embarcacion.FieldValues['sRecurso'];
        rxRecursos.FieldValues['sMedida'+IntToStr(num)]               := embarcacion.FieldValues['sMedida'];
        if hInicio.Text > hTermino.Text then
        begin
            rxRecursos.FieldValues['dCantidadConsumo'+IntToStr(num)]   := embarcacion.FieldValues['dConsumo'];
            rxRecursos.FieldValues['dCantidadProducido'+IntToStr(num)] := embarcacion.FieldValues['dProduccion'] + embarcacion.FieldValues['dRecibido'];
        end;
        rxRecursos.FieldValues['dCantidadActual'+IntToStr(num)]        := embarcacion.FieldValues['dExistenciaActual'];
        rxRecursos.FieldValues['Embarcacion']                          := embarcacion.FieldValues['Embarcacion'];
        rxRecursos.Post;
        inc(num);
        Global_nombre_Embarcacion := embarcacion.FieldValues['Embarcacion'];
        embarcacion.Next;
    end;

    //Ordenes afectadas
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select b.sContrato, o.sIdFolio, c.mDescripcion, c.sTitulo, n.sIdConvenio, n.dDuracion from bitacoradeactividades b '+
                                'inner join reportediario r on (r.sContrato = b.sContrato and r.dIdFecha = b.dIdFecha and r.sNumeroOrden = b.sNumeroOrden) '+
                                'inner join contratos c on (b.sContrato = c.sContrato) '+
                                'inner join convenios n on (n.sContrato = c.sContrato and n.sIdConvenio = r.sIdConvenio) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = c.sContrato) '+
                                'where c.sContrato <> c.sCodigo and b.dIdFecha =:fechaF group by b.sContrato');
    connection.zCommand.ParamByName('fechaF').AsDate := tfechaGerencial;
    connection.zCommand.Open;

    rxOrdenes.EmptyTable;
    while not connection.zCommand.Eof do
    begin
        fila := 0;
        num := tsListaorden.Items.Count ;
        lContinua := True;
        while fila < num do
        begin
            if tsListaOrden.Items.Strings[fila] = connection.zCommand.FieldValues['sIdFolio'] then
               if tsListaOrden.Checked[fila] = False then
                  lContinua := False;
            inc(fila);
        end;

        //Si esta marcada la orden continua,,
        if lContinua then
        begin
            dProgramadoAcum:= 0;
            dProgramadoAnt := 0;
            dProgramadoDia := 0;
            dRealAcum      := 0;
            dRealAnt       := 0;
            dRealDia       := 0;
            dTiempoReal    := 0;

            //Primero consultamos cuantos frentes contiene la orden para traer fisicos y programados,,
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato ');
            connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca2.Open;

            sFrente := '';
            if connection.QryBusca2.RecordCount = 1 then
               sFrente  := connection.QryBusca2.FieldValues['sNumeroOrden'];

            //Avances Programados Anteriores
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select sum(p.dAvancePonderadoDia) as dAvancePonderadoDiaAnt from avancesglobales p '+
                                         'where p.sContrato =:Contrato and p.sIdConvenio =:Convenio and p.dIdFecha <:Fecha and p.sNumeroOrden =:orden group by sContrato ');
            connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca2.ParamByName('Convenio').AsString := connection.zCommand.FieldValues['sIdConvenio'];
            connection.QryBusca2.ParamByName('Fecha').AsDate      := tfechaGerencial;
            connection.QryBusca2.ParamByName('Orden').AsString    := sFrente;
            connection.QryBusca2.Open;

            if connection.QryBusca2.RecordCount > 0 then
               dProgramadoAnt  := connection.QryBusca2.FieldValues['dAvancePonderadoDiaAnt'];

             //Avances Programados Actuales
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select sum(p.dAvancePonderadoDia) as dAvancePonderadoDia from avancesglobales p '+
                                         'where p.sContrato =:Contrato and p.sIdConvenio =:Convenio and p.dIdFecha =:Fecha and p.sNumeroOrden =:orden group by sContrato ');
            connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca2.ParamByName('Convenio').AsString := connection.zCommand.FieldValues['sIdConvenio'];
            connection.QryBusca2.ParamByName('Fecha').AsDate      := tFechaGerencial;
            connection.QryBusca2.ParamByName('Orden').AsString    := sFrente;
            connection.QryBusca2.Open;

            if connection.QryBusca2.RecordCount > 0 then
               dProgramadoDia  := connection.QryBusca2.FieldValues['dAvancePonderadoDia'];

            dProgramadoAcum :=  dProgramadoDia + dProgramadoAnt;

            //Avances Fisicos Anterior
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select sum(dAvance) as Avance from avancesglobalesxorden p '+
                                         'where p.sContrato =:Contrato and p.sIdConvenio =:Convenio and p.dIdFecha < :Fecha and p.sNumeroOrden =:orden group by sContrato');
            connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca2.ParamByName('Convenio').AsString := connection.zCommand.FieldValues['sIdConvenio'];
            connection.QryBusca2.ParamByName('Fecha').AsDate      := tFechaGerencial;
            connection.QryBusca2.ParamByName('Orden').AsString    := sFrente;
            connection.QryBusca2.Open;

            if connection.QryBusca2.RecordCount > 0 then
               dRealAnt := connection.QryBusca2.FieldValues['Avance'];

            //Avances Fisicos Actual
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select sum(dAvance) as Avance from avancesglobalesxorden p '+
                                         'where p.sContrato =:Contrato and p.sIdConvenio =:Convenio and p.dIdFecha = :Fecha and p.sNumeroOrden =:orden group by sContrato');
            connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca2.ParamByName('Convenio').AsString := connection.zCommand.FieldValues['sIdConvenio'];
            connection.QryBusca2.ParamByName('Fecha').AsDate      := tFechaGerencial;
            connection.QryBusca2.ParamByName('Orden').AsString    := sFrente;
            connection.QryBusca2.Open;

            if connection.QryBusca2.RecordCount > 0 then
               dRealDia := connection.QryBusca2.FieldValues['Avance'];

            dRealAcum := dRealDia + dRealAnt;
            //Aqui introducimos los dias programados y preguntamos si se imprimen los horarios en la orden
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select * from gerencial_diario where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin and sContrato =:Contrato ');
            connection.QryBusca.ParamByName('fecha').AsDate      := tfecha.Date;
            connection.QryBusca.ParamByName('inicio').AsString   := hInicio.Text;
            connection.QryBusca.ParamByName('fin').AsString      := htermino.Text;
            connection.QryBusca.ParamByName('contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca.Open;

            lAplica := false;
            if connection.QryBusca.RecordCount > 0 then
            begin
                dTiempoReal    := connection.QryBusca.FieldValues['dRealDias'];
                if connection.QryBusca.FieldValues['lAplicaJornada'] = 'Si' then
                    lAplica    := True;
            end;
            sConceptoTiempos := '';
            lInserta := True;
            GuardaDatosRx('');
            lInserta := False;

            //Primero las jornadas diarias.
            if lAplica then
            begin
                fila := CalculaJornadas;
                num := 1;
                while num <= fila do
                begin
                    GuardaDatosRx('Efectivos');
                    inc(num);
                end;                         
            end;

            sConceptoTiempos := '';
            //Ahora consultamos partidas reportadas
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select b.sContrato, b.dIdFecha, b.iIdDiario, o.sWbsAnterior, b.sWbs, o.iNivel, b.sIdTipoMovimiento, b.sNumeroOrden, b.sNumeroActividad, b.mDescripcion, g.iNivel as Nivel, g.dFactorPonderado, b.lImprime '+
                                         'from bitacoradeactividades b '+
                                         'left join actividadesxorden o on (o.sContrato = b.sContrato and o.sIdConvenio =:Convenio and b.sWbs = o.sWbs and b.sNumeroActividad = o.sNumeroActividad and o.sTipoActividad = "Actividad") '+
                                         'inner join gerencial_diario g on (g.dIdFecha =:FechaF and g.sHoraInicio =:HoraInicio and g.sHoraFinal =:HoraFinal and g.sContrato =:Contrato ) '+
                                         'where b.sContrato =:Contrato and b.dIdFecha >=:FechaI and b.dIdFecha <=:FechaF and b.sHoraInicio =:HoraInicio and b.sHoraFinal =:HoraFinal '+
                                         'and (b.sIdTipoMovimiento = "E" or b.sIdTipoMovimiento = "N") group by b.sNumeroOrden, b.dIdFecha, b.sWbs order by b.sNumeroOrden, o.iItemOrden');
            connection.QryBusca2.ParamByName('Contrato').AsString   := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca2.ParamByName('Convenio').AsString   := connection.zCommand.FieldValues['sIdConvenio'];
            connection.QryBusca2.ParamByName('FechaI').AsDate       := tfechaGerencial;
            connection.QryBusca2.ParamByName('FechaF').AsDate       := tFechaGerencial;
            connection.QryBusca2.ParamByName('HoraInicio').AsString := hInicio.Text;
            connection.QryBusca2.ParamByName('HoraFinal').AsString  := hTermino.Text;
            connection.QryBusca2.Open;

            WbsActual := 'iv@n';
            sFrente   := 'iv@n';
            WbsAnteriorPaquete := 'iv@an';
            while not connection.QryBusca2.Eof do
            begin
                if sFrente <> connection.QryBusca2.FieldValues['sNumeroOrden'] then
                begin
                    if connection.QryBusca2.FieldValues['sIdTipoMovimiento'] = 'N' then
                        NotasGerencial(connection.zCommand.FieldValues['sContrato'], connection.QryBusca2.FieldValues['sNumeroOrden'],
                                       hInicio.Text, hTermino.Text, tfechaGerencial, tfechaGerencial);
                    sFrente := connection.QryBusca2.FieldValues['sNumeroOrden'];
                end;

                if (WbsActual <> connection.QryBusca2.FieldValues['sWbs']) and (connection.QryBusca2.FieldValues['sIdTipoMovimiento'] = 'E' ) then
                begin
                    num := 1;
                    iNivel       := connection.QryBusca2.FieldValues['Nivel'];
                    WbsAnterior  := connection.QryBusca2.FieldValues['sWbsAnterior'];

                    if connection.QryBusca2.FieldValues['lImprime'] = 'Si' then
                    begin
                        ArrayPaquetes[num,1] := connection.QryBusca2.FieldValues['sNumeroActividad'];
                        ArrayPaquetes[num,2] := connection.QryBusca2.FieldValues['mDescripcion'];
                        ArrayPaquetes[num,3] := 'Actividad';
                        //Funcion avances
                        dAvancePaquete := CalculaAvances(connection.zCommand.FieldValues['sContrato'], connection.zCommand.FieldValues['sIdConvenio'],
                                          connection.QryBusca2.FieldValues['sNumeroOrden'], connection.QryBusca2.FieldValues['sWbs'], 'Partida',
                                          hInicio.Text, hTermino.Text, tFechaGerencial, 0, 0);
                        ArrayPaquetes[num,4] := FloatToStr(dAvancePaquete);
                        inc(num);
                    end;

                    if WbsAnteriorPaquete <> WbsAnterior then
                    begin
                        WbsAnteriorPaquete := WbsAnterior;
                        while iNivel > 0 do
                        begin
                            //Consultamos los paquetes que le corresponden a cada partida.
                            connection.QryBusca.Active := False;
                            connection.QryBusca.SQL.Clear;
                            connection.QryBusca.SQL.Add('select sWbs, sWbsAnterior, sNumeroActividad, mDescripcion, dPonderado '+
                                                        'from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
                            connection.QryBusca.ParamByName('Contrato').AsString  := connection.zCommand.FieldValues['sContrato'];
                            connection.QryBusca.ParamByName('Convenio').AsString  := connection.zCommand.FieldValues['sIdConvenio'];
                            connection.QryBusca.ParamByName('Orden').AsString     := connection.QryBusca2.FieldValues['sNumeroOrden'];
                            connection.QryBusca.ParamByName('Wbs').AsString       := WbsAnterior;
                            connection.QryBusca.Open;

                            if connection.QryBusca.RecordCount > 0 then
                            begin
                                WbsAnterior          := connection.QryBusca.FieldValues['sWbsAnterior'];
                                ArrayPaquetes[num,1] := connection.QryBusca.FieldValues['sNumeroActividad'];
                                ArrayPaquetes[num,2] := connection.QryBusca.FieldValues['mDescripcion'];
                                ArrayPaquetes[num,3] := 'Paquete';
                                dAvancePaquete := 0;
                                //Funcion avances
                                dAvancePaquete := CalculaAvances(connection.zCommand.FieldValues['sContrato'], connection.zCommand.FieldValues['sIdConvenio'],
                                                  connection.QryBusca2.FieldValues['sNumeroOrden'], connection.QryBusca.FieldValues['sWbs'], 'Paquete',
                                                  hInicio.text, hTermino.Text, tfechaGerencial, connection.QryBusca.FieldValues['dPonderado'], num - 1);
                                ArrayPaquetes[num,4] := FloatToStr(dAvancePaquete * connection.QryBusca2.FieldValues['dFactorPonderado']);
                                inc(num);
                             end;
                            iNivel := iNivel - 1;
                        end;
                    end;

                    dec(num);
                    while num > 0 do
                    begin
                        //Insertamos las partidas y paquetes..
                        GuardaDatosRx('Partidas');
                        dec(num);
                    end;
                    WbsActual := connection.QryBusca2.FieldValues['sWbs'];
                end;

                //Ahora inseratamos todas las notas del gerencial por partida..
                if connection.QryBusca2.FieldValues['sIdTipoMovimiento'] = 'E' then
                begin
                    connection.QryBusca.Active := False;
                    connection.QryBusca.SQL.Clear;
                    connection.QryBusca.SQL.Add('select sHoraInicio, sHoraFinal, mDescripcion, sConceptoGerencial, lImprime '+
                                                'from bitacoradeactividades where sContrato =:Contrato and dIdFecha =:Fecha '+
                                                'and sWbs =:Wbs and sNumeroOrden =:Orden and sIdTipoMovimiento = "G" and iIdDiarioNota =:Diario');
                    connection.QryBusca.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
                    connection.QryBusca.ParamByName('Fecha').AsDate      := connection.QryBusca2.FieldValues['dIdFecha'];
                    connection.QryBusca.ParamByName('Orden').AsString    := connection.QryBusca2.FieldValues['sNumeroOrden'];
                    connection.QryBusca.ParamByName('Wbs').AsString      := connection.QryBusca2.FieldValues['sWbs'];
                    connection.QryBusca.ParamByName('Diario').AsInteger  := connection.QryBusca2.FieldValues['iIdDiario'];
                    connection.QryBusca.Open;

                    while not connection.QryBusca.Eof do
                    begin
                        GuardaDatosRx('Notas');
                        connection.QryBusca.Next;
                    end;
                end;

                connection.QryBusca2.Next;
            end;
        end;
        connection.zCommand.Next;
    end;

    //Cargar el query movimeintos del barco segun gerencial
    qryMovimientos.Active := False;
    qryMovimientos.SQL.Clear;
    qryMovimientos.SQL.Add('Select m.sContrato, m.dIdFecha, m.sHoraInicio, m.sHoraFinal, mDescripcion, m.lContinuo, '+
                           'e.sIdTipoEmbarcacion from movimientosdeembarcacion m '+
                           'inner join embarcaciones e On ( m.sContrato=e.sContrato And m.sIdEmbarcacion=e.sIdEmbarcacion) '+
                           'Where m.sContrato=:Contrato and m.dIdFecha>=:fechaI and m.dIdFecha<=:fechaF and sIdTipoEmbarcacion = "B/G" '+
                           'order by dIdFecha, sHoraInicio');
    qryMovimientos.ParamByName('Contrato').AsString := global_contrato_barco;
    qryMovimientos.ParamByName('fechaI').AsDate     := tfechaGerencial;
    qryMovimientos.ParamByName('fechaF').AsDate     := tfecha.Date;
    qryMovimientos.Open;

    //Movimientos del barco
    rxMovimientos.Active := False;
    rxMovimientos.Active := True;
    rxMovimientos.EmptyTable;
    while not qryMovimientos.Eof do
    begin
        if hInicio.Text > hTermino.Text then
        begin
            if QryMovimientos.FieldValues['dIdFecha'] = tFechaGerencial then
            begin
                if (QryMovimientos.FieldValues['sHoraFinal'] > hInicio.Text) and (QryMovimientos.FieldValues['sHoraFinal'] <= '24:00') then
                begin

                    rxMovimientos.Append;
                    rxMovimientos.FieldValues['sContrato']    := qryMovimientos.FieldValues['sContrato'];
                    rxMovimientos.FieldValues['sHoraInicio']  := qryMovimientos.FieldValues['sHoraInicio'];
                    rxMovimientos.FieldValues['sHoraFinal']   := qryMovimientos.FieldValues['sHoraFinal'];
                    rxMovimientos.FieldValues['mDescripcion'] := qryMovimientos.FieldValues['mDescripcion'];
                    rxMovimientos.FieldValues['sContinua']    := qryMovimientos.FieldValues['lContinuo'];
                    rxMovimientos.Post;
                end;
            end
            else
            begin
                If (QryMovimientos.FieldValues['sHoraInicio'] < hTermino.Text) then
                begin
                    rxMovimientos.Append;
                    rxMovimientos.FieldValues['sContrato']    := qryMovimientos.FieldValues['sContrato'];
                    rxMovimientos.FieldValues['sHoraInicio']  := qryMovimientos.FieldValues['sHoraInicio'];
                    rxMovimientos.FieldValues['sHoraFinal']   := qryMovimientos.FieldValues['sHoraFinal'];
                    rxMovimientos.FieldValues['mDescripcion'] := qryMovimientos.FieldValues['mDescripcion'];
                    rxMovimientos.FieldValues['sContinua']    := qryMovimientos.FieldValues['lContinuo'];
                    rxMovimientos.Post;
                end;
            end;
        end
        else
        begin
            If (QryMovimientos.FieldValues['sHoraFinal'] > hInicio.Text) and (QryMovimientos.FieldValues['sHoraInicio'] < hTermino.Text) then
            begin
                rxMovimientos.Append;
                rxMovimientos.FieldValues['sContrato']    := qryMovimientos.FieldValues['sContrato'];
                rxMovimientos.FieldValues['sHoraInicio']  := qryMovimientos.FieldValues['sHoraInicio'];
                rxMovimientos.FieldValues['sHoraFinal']   := qryMovimientos.FieldValues['sHoraFinal'];
                rxMovimientos.FieldValues['mDescripcion'] := qryMovimientos.FieldValues['mDescripcion'];
                rxMovimientos.FieldValues['sContinua']    := qryMovimientos.FieldValues['lContinuo'];
                rxMovimientos.Post;
            end;
        end;
        qryMovimientos.Next;
    end;

    if rxMovimientos.RecordCount > 0 then
    begin
        //Primer movimiento,,
        rxMovimientos.First;
        rxMovimientos.Edit;
        rxMovimientos.FieldValues['sHoraInicio']  := hInicio.Text;
        rxMovimientos.FieldValues['mDescripcion'] := zMovimientos.FieldValues['sNotaInicio'];
        rxMovimientos.Post;

        //Ultimo movimiento..
        rxMovimientos.Last;
        rxMovimientos.Edit;
        rxMovimientos.FieldValues['sHoraFinal']   := hTermino.Text;
        rxMovimientos.FieldValues['mDescripcion'] := zMovimientos.FieldValues['sNotaFinal'];
        rxMovimientos.Post;
    end;

    //Aqui es donde consolidamos movimientos que continuan despues de las 24:00 hrs,
    rxMovimientos.First;
    while not rxMovimientos.Eof do
    begin
        if rxMovimientos.FieldValues['sContinua'] = 'Si' then
        begin
            sHora := rxMovimientos.FieldValues['sHoraInicio'];
            rxMovimientos.Delete;
            rxMovimientos.Edit;
            rxMovimientos.FieldValues['sHoraInicio']  := sHora;
            rxMovimientos.FieldValues['mDescripcion'] := zMovimientos.FieldValues['sNotaMovimiento'];
            rxMovimientos.Post;

            if rxMovimientos.RecordCount = 2 then
            begin
                rxMovimientos.Next;
                rxMovimientos.Delete;
            end;

        end;
        rxMovimientos.Next;
    end;

   //Cargar el query de arribos
    qryArribos.Active := False;
    qryArribos.SQL.Clear;
    qryArribos.SQL.Add('Select m.sContrato, m.dIdFecha, m.sHoraInicio, m.sHoraFinal, mDescripcion, m.lContinuo, '+
                       'e.sIdTipoEmbarcacion from movimientosdeembarcacion m '+
                       'inner join embarcaciones e On ( m.sContrato=e.sContrato And m.sIdEmbarcacion=e.sIdEmbarcacion) '+
                       'Where m.sContrato=:contrato and m.dIdFecha>=:fechaI and m.dIdFecha<=:fechaF And m.sTipo = "ARRIBO" '+
                       'order by dIdFecha, sHoraInicio');
    qryArribos.ParamByName('Contrato').AsString := global_contrato_barco;
    qryArribos.ParamByName('FechaI').AsDate     := tfechaGerencial;
    qryArribos.ParamByName('FechaF').AsDate     := tfecha.Date;
    qryArribos.Open;

    //Arribos de vuelos y helicopterios
    rxArribos.EmptyTable;
    while not qryArribos.Eof do
    begin
        if hInicio.Text > hTermino.Text then
        begin
            if qryArribos.FieldValues['dIdFecha'] = tFechaGerencial then
            begin
                if (qryArribos.FieldValues['sHoraFinal'] > hInicio.Text) and (qryArribos.FieldValues['sHoraFinal'] <= '24:00') then
                begin
                    sHora := qryArribos.FieldValues['sHoraInicio'];
                    rxArribos.Append;
                    rxArribos.FieldValues['sContrato']    := qryArribos.FieldValues['sContrato'];
                    rxArribos.FieldValues['sHoraInicio']  := qryArribos.FieldValues['sHoraInicio'];
                    rxArribos.FieldValues['sHoraFinal']   := qryArribos.FieldValues['sHoraFinal'];
                    rxArribos.FieldValues['mDescripcion'] := qryArribos.FieldValues['mDescripcion'];
                    rxArribos.FieldValues['sContinua']    := qryArribos.FieldValues['lContinuo'];
                    rxArribos.Post;
                end;
            end
            else
            begin
                If (qryArribos.FieldValues['sHoraInicio'] < hTermino.Text) then
                begin
                    rxArribos.Append;
                    rxArribos.FieldValues['sContrato']    := qryArribos.FieldValues['sContrato'];
                    rxArribos.FieldValues['sHoraInicio']  := qryArribos.FieldValues['sHoraInicio'];
                    rxArribos.FieldValues['sHoraFinal']   := qryArribos.FieldValues['sHoraFinal'];
                    rxArribos.FieldValues['mDescripcion'] := qryArribos.FieldValues['mDescripcion'];
                    rxArribos.FieldValues['sContinua']    := qryArribos.FieldValues['lContinuo'];
                    rxArribos.Post;
                end;
            end;
        end
        else
        begin
            If (qryArribos.FieldValues['sHoraFinal'] > hInicio.Text) and (qryArribos.FieldValues['sHoraInicio'] < hTermino.Text) then
            begin
                rxArribos.Append;
                rxArribos.FieldValues['sContrato']    := qryArribos.FieldValues['sContrato'];
                rxArribos.FieldValues['sHoraInicio']  := qryArribos.FieldValues['sHoraInicio'];
                rxArribos.FieldValues['sHoraFinal']   := qryArribos.FieldValues['sHoraFinal'];
                rxArribos.FieldValues['mDescripcion'] := qryArribos.FieldValues['mDescripcion'];
                rxArribos.FieldValues['sContinua']    := qryArribos.FieldValues['lContinuo'];
                rxArribos.Post;
            end;
        end;
        qryArribos.Next;
    end;

    //Aqui es donde consolidamos movimientos que continuan despues de las 24:00 hrs,
    rxArribos.First;
    while not rxArribos.Eof do
    begin
        if rxArribos.FieldValues['sContinua'] = 'Si' then
        begin
            sHora := rxArribos.FieldValues['sHoraInicio'];
            rxArribos.Delete;
            rxArribos.Edit;
            rxArribos.FieldValues['sHoraInicio']  := sHora;
            rxArribos.FieldValues['mDescripcion'] := zMovimientos.FieldValues['sNotaArribo'];
            rxArribos.Post;
        end;
        rxArribos.Next;
    end;

    //Cargar el query de Notas Generales
    qryNotasGenerales.Active := False;
    qryNotasGenerales.Sql.Clear;
    qryNotasGenerales.Sql.Add('select * from gerencial_diario where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin group by dIdFecha');
    qryNotasGenerales.ParamByName('fecha').AsDate    := tfecha.Date;
    qryNotasGenerales.ParamByName('inicio').AsString := hInicio.Text;
    qryNotasGenerales.ParamByName('fin').AsString    := htermino.Text;
    qryNotasGenerales.Open;

    //Llamamos funcion personal
    personal;

    //Lamamos funcion equipos
    equipo;

    rReporte.PreviewOptions.MDIChild := False ;
    rReporte.PreviewOptions.Modal := False ;
    //rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
    rReporte.PreviewOptions.ShowCaptions := False ;
    rReporte.Previewoptions.ZoomMode := zmPageWidth ;
    rReporte.LoadFromFile (global_files + GLobal_MiReporte+'_GerencialOrdenes.fr3') ;
    rReporte.ShowReport() ;
    if not FileExists(global_files + GLobal_MiReporte+'_GerencialOrdenes.fr3') then
        showmessage('El archivo de reporte '+GLobal_MiReporte+'_GerencialOrdenes.fr3 no existe, notifique al administrador del sistema');

    zMovimientos.Destroy;
    close;
end;

procedure TfrmOpcionesGerencial.EditPaquetesEnter(Sender: TObject);
begin

end;

//Procedimiento para guardar datos del Rx,
procedure TfrmOpcionesGerencial.GuardaDatosRx(sParamClasificacion: string);
begin
    if lInserta then
       rxOrdenes.Append
    else
    begin
        rxOrdenes.Edit;
        lInserta := True;
    end;
    rxOrdenes.FieldValues['sOrden']                 := connection.zCommand.FieldValues['sIdFolio'];
    rxOrdenes.FieldValues['sDescripcionOrden']      := connection.zCommand.FieldValues['mDescripcion'];
    rxOrdenes.FieldValues['dAvanceProgramado']      := dProgramadoAcum;
    rxOrdenes.FieldValues['dAvanceProgramadoAnt']   := dProgramadoAnt;
    rxOrdenes.FieldValues['dAvanceProgramadoDiario']:= dProgramadoDia;
    rxOrdenes.FieldValues['dAvanceReal']            := dRealAcum;
    rxOrdenes.FieldValues['dAvanceAnterior']        := dRealAnt;
    rxOrdenes.FieldValues['dAvanceDiario']          := dRealDia;
    rxOrdenes.FieldValues['dTiempoProgramado']      := connection.zCommand.FieldValues['dDuracion'];
    rxOrdenes.FieldValues['dTiempoReal']            := dTiempoReal;
    rxOrdenes.FieldValues['sTipoNota']              := '';

    if sParamClasificacion = 'Efectivos' then
    begin
        rxOrdenes.FieldValues['sTipoNota']          := 'Tiempos';
        rxOrdenes.FieldValues['sNumeroActividad']   := ArrayTiempos[num, 2];
        rxOrdenes.FieldValues['sHoras']             := ArrayTiempos[num, 3];
        rxOrdenes.FieldValues['mDescripcion']       := ArrayTiempos[num, 4];
        rxOrdenes.Post;
    end;

    if sParamClasificacion = 'Notas' then
    begin
        rxOrdenes.FieldValues['sTipoNota']          := 'Notas';
        rxOrdenes.FieldValues['sNumeroActividad']   := connection.QryBusca.FieldValues['sConceptoGerencial'] ;
        rxOrdenes.FieldValues['mDescripcion']       := connection.QryBusca.FieldValues['mDescripcion'];
        rxOrdenes.FieldValues['dAvancePartida']     := 0;
        rxOrdenes.FieldValues['sHoraInicio']        := connection.QryBusca.FieldValues['sHoraInicio'];
        rxOrdenes.FieldValues['sHoraFinal']         := connection.QryBusca.FieldValues['sHoraFinal'];
        rxOrdenes.Post;
    end;

    if sParamClasificacion = 'Partidas' then
    begin
        rxOrdenes.FieldValues['sTipoNota']          := 'Partidas';
        rxOrdenes.FieldValues['sTipoActividad']     := ArrayPaquetes[num, 3];
        rxOrdenes.FieldValues['sNumeroActividad']   := ArrayPaquetes[num, 1];
        rxOrdenes.FieldValues['mDescripcion']       := ArrayPaquetes[num, 2];
        rxOrdenes.FieldValues['dAvancePartida']     := ArrayPaquetes[num, 4];
        rxOrdenes.Post;
    end;
end;

procedure TfrmOpcionesGerencial.cmbOkOrdenClick(Sender: TObject);
begin
    //Actualizamos valores de las ordenes,,
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update gerencial_diario set iNivel =:Nivel, dFactorPonderado =:Factor, dProgramadoDias =:Programado, dRealDias =:Real, lAplicaJornada =:jornada, lCalculaPaquete =:Calcula '+
                                'where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin and sContrato =:Contrato ');
    connection.QryBusca.ParamByName('fecha').AsDate       := tfecha.Date;
    connection.QryBusca.ParamByName('inicio').AsString    := hInicio.Text;
    connection.QryBusca.ParamByName('fin').AsString       := htermino.Text;
    connection.QryBusca.ParamByName('contrato').AsString  := zOrdenes.FieldValues['sContrato'];
    connection.QryBusca.ParamByName('Nivel').AsFloat      := tNivel.Value;
    connection.QryBusca.ParamByName('Factor').AsFloat     := tPonderado.Value;
    connection.QryBusca.ParamByName('Programado').AsFloat := tProgramado.Value;
    connection.QryBusca.ParamByName('Real').AsFloat       := tReal.Value;
    if chkJornada.Checked then
       connection.QryBusca.ParamByName('jornada').AsString := 'Si'
    else
       connection.QryBusca.ParamByName('jornada').AsString := 'No';

    if chkCalcula.Checked then
       connection.QryBusca.ParamByName('calcula').AsString := 'Si'
    else
       connection.QryBusca.ParamByName('calcula').AsString := 'No';
    connection.QryBusca.ExecSQL;
end;

procedure TfrmOpcionesGerencial.cmdCalculaClick(Sender: TObject);
begin
    tReal.Value := CalculaDias(zOrdenes.FieldValues['sContrato']);
end;

procedure TfrmOpcionesGerencial.cmdOkBarcoClick(Sender: TObject);
begin
    //Actualizamos datos del barco
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update gerencial_diario set sUbicacionBarco =:Ubicacion, sNotaInicio =:NotaInicio, sNotaFinal =:NotaFinal, sNotaGerencial =:NotaGerencial, sNotaMovimiento =:NotaMovimiento, sNotaArribo =:NotaArribo '+
                                'where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin ');
    connection.QryBusca.ParamByName('fecha').AsDate       := tfecha.Date;
    connection.QryBusca.ParamByName('inicio').AsString    := hInicio.Text;
    connection.QryBusca.ParamByName('fin').AsString       := htermino.Text;
    connection.QryBusca.ParamByName('Ubicacion').AsMemo   := mLocalizacion.Text;
    connection.QryBusca.ParamByName('NotaInicio').AsMemo  := mMovInicio.Text;
    connection.QryBusca.ParamByName('NotaFinal').AsMemo   := mMovTermino.Text;
    connection.QryBusca.ParamByName('NotaGerencial').AsMemo  := mNotasGerencial.Text;
    connection.QryBusca.ParamByName('NotaMovimiento').AsMemo := mNotaMovimiento.Text;
    connection.QryBusca.ParamByName('NotaArribo').AsMemo     := mNotaArribo.Text;
    connection.QryBusca.ExecSQL;
end;

function TfrmOpcionesgerencial.CalculaAvances;
var
     zQAvances, zQCalcula : TzReadOnlyQuery;
     dAvance   : double;
     sSelect, sCondicion, sCondicionHora, sParamCalcula : string;
begin
    zQAvances := TZReadOnlyQuery.Create(self);
    zQAvances.Connection := connection.zConnection;

    zQCalcula := TZReadOnlyQuery.Create(self);
    zQCalcula.Connection := connection.zConnection;

    sParamCalcula := '';
    //Buscamos que ordenes se calculan en automatico y cuales obtienen datos de paquetes,
    zQAvances.Active := False ;
    zQAvances.SQL.Clear ;
    zQAvances.SQL.Add('select lCalculaPaquete from gerencial_diario '+
                      'where sContrato =:Contrato and dIdFecha =:Fecha and sHoraInicio =:Inicio and sHoraFinal =:Final ') ;
    zQAvances.ParamByName('Contrato').AsString := sParamContrato;
    if sParamHoraI > sParamHoraF then
       zQAvances.ParamByName('fecha').AsDate   := dParamFecha + 1
    else
       zQAvances.ParamByName('fecha').AsDate   := dParamFecha;
    zQAvances.ParamByName('Inicio').AsString   := sParamHoraI;
    zQAvances.ParamByName('Final').AsString    := sParamHoraF;
    zQAvances.Open;

    if zQAvances.RecordCount > 0 then
       sParamCalcula := zQAvances.FieldValues['lCalculaPaquete'];

    sSelect := '';
    if sParamTipo = 'Paquete' then
    begin
        dAvance := 0;
        if sParamCalcula = 'Si' then
        begin
             sSelect    := 'Select sum((o.dPonderado/o.dCantidad)* b.dCantidad) as AvanceFisico ';
             sCondicion := 'And b.lAlcance = "No" and b.sWbs like :Wbs group by o.sContrato order by o.sWbs ';
             sParamWbs  := sParamWbs + '.%';
        end
        else
        begin
            //Obtenermos los avances de la bitacora de paquetes..
            zQAvances.Active := False ;
            zQAvances.SQL.Clear ;
            zQAvances.SQL.Add('select dAvance from bitacoradepaquetes '+
                              'where sContrato =:Contrato and sIdConvenio =:Convenio and dIdFecha =:Fecha '+
                              'and sNumeroOrden =:Orden and sWbs =:Wbs ') ;
            zQAvances.ParamByName('Contrato').AsString := sParamContrato;
            zQAvances.ParamByName('Convenio').AsString := sParamConvenio;
            zQAvances.ParamByName('Orden').AsString    := sParamOrden;
            zQAvances.ParamByName('Fecha').AsDate      := dParamFecha ;
            zQAvances.ParamByName('Wbs').AsString      := sParamWbs;
            zQAvances.Open;

            if zqAvances.RecordCount > 0 then
               dAvance := zqAvances.FieldValues['dAvance'];

            CalculaAvances := dAvance;
        end;
    end;

    if sParamTipo = 'Partida' then
    begin
        sSelect    := 'Select sum((100/o.dCantidad)* b.dCantidad) as AvanceFisico ';
        sCondicion := 'And b.lAlcance = "No" and b.sWbs = :Wbs group by o.sContrato order by o.sWbs ';
        dAvance := 0;
    end;

    if sSelect <> '' then
    begin
        try
            //Ahora calculamos los avances anteriores por paquetes o partidas..
            zQAvances.Active := False ;
            zQAvances.SQL.Clear ;
            zQAvances.SQL.Add(sSelect +' From bitacoradeactividades b '+
                      'inner join actividadesxorden o on (b.sContrato = o.sContrato And o.sIdConvenio =:Convenio And o.sNumeroOrden = b.sNumeroOrden And b.sNumeroActividad = o.sNumeroActividad and b.sWbs = o.sWbs and o.sTipoActividad = "Actividad") '+
                      'Where b.sContrato =:Contrato and b.sNumeroOrden =:Orden and b.dIdFecha < :Fecha '+ sCondicion) ;
            zQAvances.ParamByName('Contrato').AsString := sParamContrato;
            zQAvances.ParamByName('Convenio').AsString := sParamConvenio;
            zQAvances.ParamByName('Orden').AsString    := sParamOrden;
            zQAvances.ParamByName('Fecha').AsDate      := dParamFecha;
            zQAvances.ParamByName('Wbs').AsString      := sParamWbs;
            zQAvances.Open;

            if zQAvances.RecordCount > 0 then
               if zQAvances.FieldValues['AvanceFisico'] > 100 then
                  dAvance := 100
               else
                  dAvance := zQAvances.FieldValues['AvanceFisico'];

            //Calculo de avance porcentual paquete
            if sParamTipo = 'Paquete' then
            begin
                dAvance := ((dAvance / dParamPonderado)* 100);
                if dAvance > 100 then
                   dAvance := 100;
            end;

            if sParamHoraI > sParamHoraF then
               sCondicionHora := ' '
            else
               sCondicionHora := ' and b.sHoraInicio =:hInicio and b.sHoraFinal =:hFinal ';

            //Ahora calculamos los avances actuales por paquetes o partidas..
            zQAvances.Active := False ;
            zQAvances.SQL.Clear ;
            zQAvances.SQL.Add(sSelect + ' From bitacoradeactividades b '+
                      'inner join actividadesxorden o on (b.sContrato = o.sContrato And o.sIdConvenio =:Convenio And o.sNumeroOrden = b.sNumeroOrden And b.sNumeroActividad = o.sNumeroActividad and b.sWbs = o.sWbs and o.sTipoActividad = "Actividad") '+
                      'Where b.sContrato =:Contrato and b.sNumeroOrden =:Orden and b.dIdFecha =:Fecha '+ sCondicionHora +sCondicion) ;
            zQAvances.ParamByName('Contrato').AsString := sParamContrato;
            zQAvances.ParamByName('Convenio').AsString := sParamConvenio;
            zQAvances.ParamByName('Orden').AsString    := sParamOrden;
            zQAvances.ParamByName('Fecha').AsDate      := dParamFecha;
            zQAvances.ParamByName('Wbs').AsString      := sParamWbs ;
            if sParamHoraI < sParamHoraF then
            begin
               zQAvances.ParamByName('hInicio').AsString  := sParamHoraI;
               zQAvances.ParamByName('hFinal').AsString   := sParamHoraF;
            end;
            zQAvances.Open;

            if zQAvances.RecordCount > 0 then
            begin
                if sParamTipo = 'Partida' then
                begin
                    if zQAvances.FieldValues['AvanceFisico'] > 100 then
                      dAvance := 100
                    else
                      dAvance := dAvance + zQAvances.FieldValues['AvanceFisico'];
                end;

                //Calculo de avance porcentual paquete
                if sParamTipo = 'Paquete' then
                begin
                    dAvance := dAvance + ((zQAvances.FieldValues['AvanceFisico'] / dParamPonderado)* 100);
                    if dAvance > 100 then
                       dAvance := 100;
                end;
            end;

            CalculaAvances := dAvance;
        Except
        end;
    end;
    zQAvances.Destroy;
    zQCalcula.Destroy;
end;

function TfrmOpcionesgerencial.CalculaJornadas() : integer;
var
    indice   : integer;
    sHoras, Descripcion, sTiempoMuerto, sNumeroOrden : string;
begin
      //Aqui consultamos tiempos efectivos, tiempos muertos y tiempos inactivos..
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select j.sNumeroOrden, j.sTipo, j.sIdTipoMovimiento, j.sHoraInicio, j.sHoraFinal, r.sTiempoEfectivo, j.sTiempoMuerto,  j.mDescripcion, p.sDescripcion '+
                                  'from jornadasdiarias j '+
                                  'inner join reportediario r on(r.sContrato = j.sContrato and r.dIdfecha = j.dIdfecha and r.sNumeroOrden = j.sNumeroOrden and r.sIdTurno = j.sIdTurno) '+
                                  'inner join ordenesdetrabajo o on (o.sContrato = j.sContrato and o.sNumeroOrden = j.sNumeroOrden) '+
                                  'inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma) '+
                                  'where j.sContrato =:contrato and j.dIdFecha =:fecha order by j.sNumeroOrden, j.sTipo');
      connection.QryBusca.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
      if hInicio.text > hTermino.Text then
         connection.QryBusca.ParamByName('fecha').AsDate := tfecha.Date - 1
      else
         connection.QryBusca.ParamByName('fecha').AsDate := tfecha.Date;
      connection.QryBusca.Open;

      indice := 0;
      sNumeroOrden := '';
      while not connection.QryBusca.Eof do
      begin
          if sNumeroOrden <> connection.QryBusca.FieldValues['sNumeroOrden'] then
             sNumeroOrden := connection.QryBusca.FieldValues['sNumeroOrden'];

          if connection.QryBusca.FieldValues['sIdTipoMovimiento'] = null then
          begin
              sConceptoTiempos := 'TIEMPO EFECTIVO';
              sHoraFinal       := connection.QryBusca.FieldValues['sHoraFinal'];
              sHoras           := connection.QryBusca.FieldValues['sTiempoEfectivo'];
              Descripcion      := connection.QryBusca.FieldValues['sDescripcion'];
              inc(indice);
          end;

          //Aqui se van a acumular los tiempos muertos o inactivoss
          if (sHoraFinal <= hTermino.Text) or ((sHoraFinal > hInicio.Text) and (hInicio.Text > hTermino.Text)) then
          begin
              if connection.QryBusca.FieldValues['sIdTipoMovimiento'] = 'MT' then
              begin
                  sConceptoTiempos := 'MAL TIEMPO';
                  if (sNumeroOrden = connection.QryBusca.FieldValues['sNumeroOrden']) and (sConceptoTiempos = ArrayTiempos[indice,2]) then
                  begin
                      sHoras      := sfnSumaHoras(sHoras,connection.QryBusca.FieldValues['sTiempoMuerto']);
                      Descripcion := Descripcion +' '+ connection.QryBusca.FieldValues['mDescripcion'];
                  end
                  else
                  begin
                      sHoras      := connection.QryBusca.FieldValues['sTiempoMuerto'];
                      Descripcion := connection.QryBusca.FieldValues['mDescripcion'];
                      inc(indice);
                  end;
              end;

              if (connection.QryBusca.FieldValues['sIdTipoMovimiento'] <> null) and (connection.QryBusca.FieldValues['sIdTipoMovimiento'] <> 'MT') then
              begin
                  sConceptoTiempos := 'TIEMPO MUERTO';
                  if (sNumeroOrden = connection.QryBusca.FieldValues['sNumeroOrden']) and (sConceptoTiempos = ArrayTiempos[indice,2]) then
                  begin
                      sHoras      := sfnSumaHoras(sHoras,connection.QryBusca.FieldValues['sTiempoMuerto']);
                      Descripcion := Descripcion +' '+ connection.QryBusca.FieldValues['mDescripcion'];
                  end
                  else
                  begin
                      sHoras      := connection.QryBusca.FieldValues['sTiempoMuerto'];
                      Descripcion := connection.QryBusca.FieldValues['mDescripcion'];
                      inc(indice);
                  end;
              end;
          end;
          //Guardamos los datos en un array
          ArrayTiempos[indice,1] := connection.QryBusca.FieldValues['sNumeroOrden'];
          ArrayTiempos[indice,2] := sConceptoTiempos;
          ArrayTiempos[indice,3] := sHoras;
          ArrayTiempos[indice,4] := Descripcion;
          connection.QryBusca.Next;
          CalculaJornadas := indice;
      end;
end;

function TfrmOpcionesgerencial.CalculaDias(dParamContrato : string) : double;
var
    factor, efectivo, total, jornada : double;
    zDiario : tzReadOnlyQuery;
begin
    zDiario := tzReadOnlyQuery.Create(self);
    zDiario.Connection := connection.zConnection;

    CalculaDias := 0;
    zDiario.Active := False;
    zDiario.SQL.Clear;
    zDiario.SQL.Add('select j.sHoraInicio, j.sHoraFinal, r.sTiempoEfectivo,j.sJornada '+
                    'from jornadasdiarias j '+
                    'inner join reportediario r on(r.sContrato = j.sContrato and r.dIdfecha = j.dIdfecha and r.sNumeroOrden = j.sNumeroOrden and r.sIdTurno = j.sIdTurno) '+
                    'where j.sContrato =:Contrato and j.dIdFecha =:fecha and (sTipo = "Disponibilidad del Sitio") order by j.sNumeroOrden, j.sIdTipoMovimiento, j.sHoraFinal limit 1 ');
    zDiario.ParamByName('Contrato').AsString := dParamContrato;
    zDiario.ParamByName('fecha').AsDate      := tfecha.Date - 1;
    zDiario.Open;

    if zDiario.RecordCount > 0 then
    begin
        factor   := 1 / 24;
        jornada  := StrToInt(copy(zDiario.FieldValues['sJornada'], 1, 2)) * factor;
        efectivo := StrToInt(copy(zDiario.FieldValues['sTiempoEfectivo'], 1, 2)) * factor;

        if efectivo > 0 then
        begin
            if hInicio.Text < hTermino.Text then
            begin
                if hTermino.Text < zDiario.FieldValues['sHoraFinal'] then
                begin
                   if jornada <= 0.5 then
                      total := efectivo - ( (StrToInt(copy(zDiario.FieldValues['sHoraFinal'], 1, 2)) - StrToInt(copy(hTermino.Text,1,2)) )* factor)
                   else
                      total := 0.5;
                end
                else
                    total := efectivo;
            end;

            if hInicio.Text > hTermino.Text then
            begin
                if efectivo > 0.5 then
                   total := efectivo - 0.5
                else
                   total := 0;
            end;
        end;
        Calculadias := total;
    end;
    zDiario.Destroy;
end;


procedure TfrmOpcionesGerencial.ordenesactuales;
begin
    tslistaorden.Clear;
    //Agregamos todas las ordenes al gerencial
    zOrdenes.Active := False;
    zOrdenes.SQL.Clear;
    zOrdenes.SQL.Add('select c.sContrato, o.sIdFolio, c.mDescripcion, c.sTitulo from bitacoradeactividades b '+
                     'inner join reportediario r on (r.sContrato = b.sContrato and r.dIdFecha = b.dIdFecha and r.sNumeroOrden = b.sNumeroOrden) '+
                     'inner join contratos c on (b.sContrato = c.sContrato) '+
                     'inner join ordenesdetrabajo o on (o.sContrato = c.sContrato) '+
                     'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF and c.sContrato <> c.sCodigo group by b.sContrato');
    if hInicio.Text > hTermino.Text then
       zOrdenes.ParamByName('fechaI').AsDate  := tfecha.Date - 1
    else
       zOrdenes.ParamByName('fechaI').AsDate  := tfecha.Date;
    zOrdenes.ParamByName('fechaF').AsDate := tfecha.Date;
    zOrdenes.Open;

    while not zOrdenes.Eof do
    begin
        tslistaorden.Items.Add(zOrdenes.FieldValues['sIdFolio']);
        zOrdenes.Next;
    end;

    //Ahora palomeamos las reportadas en el dia,
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select b.sContrato, o.sIdFolio, substr(c.mDescripcion, 1, 250) as descripcion from bitacoradeactividades b '+
                                'inner join reportediario r on (r.sContrato = b.sContrato and r.dIdFecha = b.dIdFecha and r.sNumeroOrden = b.sNumeroOrden) '+
                                'inner join contratos c on (b.sContrato = c.sContrato) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = c.sContrato) '+
                                'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF and b.sContrato <> :Contrato group by b.sContrato ');
    Connection.qryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
    if hInicio.Text > hTermino.Text then
       Connection.qryBusca.ParamByName('fechaI').AsDate  := tfecha.Date - 1
    else
       Connection.qryBusca.ParamByName('fechaI').AsDate  := tfecha.Date;
    Connection.qryBusca.ParamByName('fechaF').AsDate := tfecha.Date;
    Connection.qryBusca.Open;
    while not Connection.qryBusca.Eof do
    begin
        tslistaorden.Checked[tslistaorden.Items.IndexOf(Connection.qryBusca.FieldValues['sIdFolio'])]  := true;
        Connection.qryBusca.Next;
    end;
end;


procedure TfrmOpcionesGerencial.InsertaDato;
begin
    sUbicacion  := '*';
    sInicio     := '*';
    sFinal      := '*';
    sMovimiento := '*';
    sArribo     := '*';
    BuscaMovimientos();
    zOrdenes.First;
    while not zOrdenes.Eof do
    begin
        //Revisamos si la orden está registrada en la fecha actual
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sContrato from gerencial_diario where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin and sContrato =:Contrato ');
        connection.QryBusca.ParamByName('fecha').AsDate      := tfecha.Date;
        connection.QryBusca.ParamByName('inicio').AsString   := hInicio.Text;
        connection.QryBusca.ParamByName('fin').AsString      := htermino.Text;
        connection.QryBusca.ParamByName('contrato').AsString := zOrdenes.FieldValues['sContrato'];
        connection.QryBusca.Open;

        //Sino se encuentra el registro darlo de alta
        if connection.QryBusca.RecordCount = 0 then
        begin
            //Antes de insertarlo consultamos el ultimo dia reportado para traer los valores guardados
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select iNivel, dFactorPonderado, dProgramadoDias, max(dRealDias) as dRealDias, lAplicaJornada, lCalculaPaquete from gerencial_diario where dIdFecha < :fecha and sContrato =:Contrato group by sContrato');
            connection.QryBusca2.ParamByName('fecha').AsDate      := tfecha.Date;
            connection.QryBusca2.ParamByName('contrato').AsString := zOrdenes.FieldValues['sContrato'];
            connection.QryBusca2.Open;

            if connection.QryBusca2.RecordCount > 0 then
            begin
                //Insertamos registros de acuerdo a datos anteriores,,
                connection.QryBusca.Active := False;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('insert into gerencial_diario (dIdFecha, sHoraInicio, sHoraFinal, sContrato, iNivel, dFactorPonderado, dProgramadoDias, dRealDias, sUbicacionBarco, sNotaInicio, sNotaFinal, sNotaMovimiento, sNotaArribo, lAplicaJornada, lCalculaPaquete) '+
                                        'values (:Fecha, :inicio, :fin, :contrato, :Nivel, :Ponderado, :Programado, :Real, :Ubicacion, :NotaInicio, :NotaFinal, :NotaMov, :NotaArribo, :jornada, :calcula)');
                connection.QryBusca.ParamByName('fecha').AsDate       := tfecha.Date;
                connection.QryBusca.ParamByName('inicio').AsString    := hInicio.Text;
                connection.QryBusca.ParamByName('fin').AsString       := htermino.Text;
                connection.QryBusca.ParamByName('contrato').AsString  := zOrdenes.FieldValues['sContrato'];
                connection.QryBusca.ParamByName('Nivel').AsInteger    := connection.QryBusca2.FieldValues['iNivel'];
                connection.QryBusca.ParamByName('Ponderado').AsFloat  := connection.QryBusca2.FieldValues['dFactorPonderado'];
                connection.QryBusca.ParamByName('Programado').AsFloat := connection.QryBusca2.FieldValues['dProgramadoDias'];
                connection.QryBusca.ParamByName('Real').AsFloat       := connection.QryBusca2.FieldValues['dRealDias'] + CalculaDias(zOrdenes.FieldValues['sContrato']);
                connection.QryBusca.ParamByName('Ubicacion').AsMemo   := sUbicacion;
                connection.QryBusca.ParamByName('NotaInicio').AsMemo  := sInicio;
                connection.QryBusca.ParamByName('NotaFinal').AsMemo   := sFinal;
                connection.QryBusca.ParamByName('NotaMov').AsMemo     := sMovimiento;
                connection.QryBusca.ParamByName('NotaArribo').AsMemo  := sArribo;
                connection.QryBusca.ParamByName('Jornada').AsString   := connection.QryBusca2.FieldValues['lAplicaJornada'];
                connection.QryBusca.ParamByName('Calcula').AsString   := connection.QryBusca2.FieldValues['lCalculaPaquete'];
                connection.QryBusca.ExecSQL;
            end
            else
            begin
                //insertamos registro nuevo
                connection.QryBusca.Active := False;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('insert into gerencial_diario (dIdFecha, sHoraInicio, sHoraFinal, dRealDias, sContrato, sUbicacionBarco, sNotaInicio, sNotaFinal, sNotaGerencial, sNotaMovimiento, sNotaArribo) '+
                                        'values (:Fecha, :inicio, :fin, :Real, :contrato, :Ubicacion, :NotaInicio, :NotaFinal, "*", :NotaMov, :NotaArribo)');
                connection.QryBusca.ParamByName('fecha').AsDate      := tfecha.Date;
                connection.QryBusca.ParamByName('inicio').AsString   := hInicio.Text;
                connection.QryBusca.ParamByName('fin').AsString      := htermino.Text;
                connection.QryBusca.ParamByName('Real').AsFloat      := CalculaDias(zOrdenes.FieldValues['sContrato']);
                connection.QryBusca.ParamByName('contrato').AsString := zOrdenes.FieldValues['sContrato'];
                connection.QryBusca.ParamByName('Ubicacion').AsMemo  := sUbicacion;
                connection.QryBusca.ParamByName('NotaInicio').AsMemo := sInicio;
                connection.QryBusca.ParamByName('NotaFinal').AsMemo  := sFinal;
                connection.QryBusca.ParamByName('NotaMov').AsMemo    := sMovimiento;
                connection.QryBusca.ParamByName('NotaArribo').AsMemo := sArribo;
                connection.QryBusca.ExecSQL;
            end;
        end
        else
        begin
            //solo buscamos los movimientos de barco para actualizar notas
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select * from gerencial_diario where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin group by dIdFecha');
            connection.QryBusca.ParamByName('fecha').AsDate      := tfecha.Date;
            connection.QryBusca.ParamByName('inicio').AsString   := hInicio.Text;
            connection.QryBusca.ParamByName('fin').AsString      := htermino.Text;
            connection.QryBusca.Open;

            if connection.QryBusca.RecordCount > 0 then
            begin
                 if (trim(connection.QryBusca.FieldValues['sUbicacionBarco']) <> '*') and (trim(connection.QryBusca.FieldValues['sUbicacionBarco']) <> '') then
                     sUbicacion := connection.QryBusca.FieldValues['sUbicacionBarco'];

                 if (trim(connection.QryBusca.FieldValues['sNotaInicio']) <> '*') and (trim(connection.QryBusca.FieldValues['sNotaInicio']) <> '')  then
                    sInicio := connection.QryBusca.FieldValues['sNotaInicio'];

                 if (trim(connection.QryBusca.FieldValues['sNotaFinal']) <> '*') and (trim(connection.QryBusca.FieldValues['sNotaFinal']) <> '') then
                    sFinal := connection.QryBusca.FieldValues['sNotaFinal'];

                 if (trim(connection.QryBusca.FieldValues['sNotaMovimiento']) <> '*') and (trim(connection.QryBusca.FieldValues['sNotaMovimiento']) <> '') then
                    sMovimiento := connection.QryBusca.FieldValues['sNotaMovimiento'];

                 if (trim(connection.QryBusca.FieldValues['sNotaArribo']) <> '*') and (trim(connection.QryBusca.FieldValues['sNotaArribo']) <> '')then
                    sArribo := connection.QryBusca.FieldValues['sNotaArribo'];

                //Actualizamos las notas de movimientos de barco
                connection.QryBusca2.Active := False;
                connection.QryBusca2.SQL.Clear;
                connection.QryBusca2.SQL.Add('Update gerencial_diario set sUbicacionBarco =:Ubicacion, sNotaInicio =:NotaI, sNotaFinal =:NotaF, sNotaMovimiento =:NotaMov, sNotaArribo =:NotaArribo where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin ');
                connection.QryBusca2.ParamByName('fecha').AsDate      := tfecha.Date;
                connection.QryBusca2.ParamByName('inicio').AsString   := hInicio.Text;
                connection.QryBusca2.ParamByName('fin').AsString      := htermino.Text;
                connection.QryBusca2.ParamByName('Ubicacion').AsMemo  := sUbicacion;
                connection.QryBusca2.ParamByName('NotaI').AsMemo      := sInicio;
                connection.QryBusca2.ParamByName('NotaF').AsMemo      := sFinal;
                connection.QryBusca2.ParamByName('NotaMov').AsMemo    := sMovimiento;
                connection.QryBusca2.ParamByName('NotaArribo').AsMemo := sArribo;
                connection.QryBusca2.ExecSQL;

            end;
        end;
        zOrdenes.Next;
    end;
end;

procedure TfrmOpcionesGerencial.BuscaMovimientos;
begin
    //Ahora guardamos la ubicacion de la embarcacion y el ultimo horario del gerencial
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select mDescripcion from movimientosdeembarcacion where sContrato =:Contrato and dIdFecha =:Fecha '+
                                'and sClasificacion <> "" and sHoraInicio >= :HoraI and sHoraInicio < :HoraF order by sHoraInicio DESC limit 1');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato_barco;
    connection.zCommand.ParamByName('Fecha').AsDate      := tfecha.Date;
    if hInicio.Text > hTermino.Text then
       connection.zCommand.ParamByName('HoraI').AsString := '00:00'
    else
       connection.zCommand.ParamByName('HoraI').AsString := hInicio.Text;
    connection.zCommand.ParamByName('HoraF').AsString    := hTermino.Text;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
        sUbicacion := connection.zCommand.FieldValues['mDescripcion'];
        sFinal     := connection.zCommand.FieldValues['mDescripcion'];
    end;

    //Ahora guradamos el primer movimiento del gerencial
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select mDescripcion from movimientosdeembarcacion where sContrato =:Contrato and dIdFecha =:Fecha '+
                                'and sClasificacion <> "" and sHoraFinal >:HoraI  order by sHoraInicio ASC limit 1');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato_barco;
    if hInicio.Text > hTermino.Text  then
        connection.zCommand.ParamByName('Fecha').AsDate   := tfecha.Date - 1
    else
        connection.zCommand.ParamByName('Fecha').AsDate   := tfecha.Date;
    connection.zCommand.ParamByName('HoraI').AsString     := hInicio.Text;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
       sInicio := connection.zCommand.FieldValues['mDescripcion'];

    //Ahora guardamos los movimientos de barco que continuan despues de las 24:00 hrs.
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select mDescripcion from movimientosdeembarcacion where sContrato =:Contrato and dIdFecha =:Fecha '+
                                'and sClasificacion <> "" and lContinuo = "Si" and sHoraFinal <=:HoraF order by sHoraInicio DESC limit 1');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato_barco;
    if hInicio.Text > hTermino.Text  then
    begin
        connection.zCommand.ParamByName('Fecha').AsDate   := tfecha.Date - 1;
        connection.zCommand.ParamByName('HoraF').AsString := '24:00';
    end
    else
    begin
        connection.zCommand.ParamByName('Fecha').AsDate := tfecha.Date;
        connection.zCommand.ParamByName('HoraF').AsString := hTermino.Text ;
    end;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
       sMovimiento := connection.zCommand.FieldValues['mDescripcion'];

    //Ahora guardamos los arribos de embarcacion que continuron despues de las 24:00 hrs.
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select mDescripcion from movimientosdeembarcacion where sContrato =:Contrato and dIdFecha =:Fecha '+
                                'and sClasificacion = "" and lContinuo = "Si" and sHoraFinal <=:HoraF order by sHoraInicio DESC limit 1');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato_barco;
    if hInicio.Text > hTermino.Text  then
    begin
        connection.zCommand.ParamByName('Fecha').AsDate   := tfecha.Date - 1;
        connection.zCommand.ParamByName('HoraF').AsString := '24:00';
    end
    else
    begin
        connection.zCommand.ParamByName('Fecha').AsDate := tfecha.Date;
        connection.zCommand.ParamByName('HoraF').AsString := hTermino.Text ;
    end;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
       sArribo := connection.zCommand.FieldValues['mDescripcion'];
end;

procedure TfrmOpcionesGerencial.OpcionesOrden(sParamOrden: string);
begin
    //Revisamos si la orden está registrada en la fecha actual
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select * from gerencial_diario where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin and sContrato =:Contrato ');
    connection.QryBusca.ParamByName('fecha').AsDate      := tfecha.Date;
    connection.QryBusca.ParamByName('inicio').AsString   := hInicio.Text;
    connection.QryBusca.ParamByName('fin').AsString      := htermino.Text;
    connection.QryBusca.ParamByName('contrato').AsString := sParamOrden;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        tNivel.Value      := connection.QryBusca.FieldValues['iNivel'];
        tPonderado.Value  := connection.QryBusca.FieldValues['dFactorPonderado'];
        tProgramado.Value := connection.QryBusca.FieldValues['dProgramadoDias'];
        tReal.Value       := connection.QryBusca.FieldValues['dRealDias'];
        if connection.QryBusca.FieldValues['lAplicaJornada'] = 'Si' then
           chkJornada.Checked := True
        else
           chkJornada.Checked := False;

        if connection.QryBusca.FieldValues['lCalculaPaquete'] = 'Si' then
           chkCalcula.Checked := True
        else
           chkCalcula.Checked := False;
    end;
end;

procedure TfrmOpcionesGerencial.NotasBarco;
begin
    //Revisamos notas de barco
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select * from gerencial_diario where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin group by dIdFecha');
    connection.QryBusca.ParamByName('fecha').AsDate      := tfecha.Date;
    connection.QryBusca.ParamByName('inicio').AsString   := hInicio.Text;
    connection.QryBusca.ParamByName('fin').AsString      := htermino.Text;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        mLocalizacion.Text   := connection.QryBusca.FieldValues['sUbicacionBarco'];
        mMovInicio.Text      := connection.QryBusca.FieldValues['sNotaInicio'];
        mMovTermino.Text     := connection.QryBusca.FieldValues['sNotaFinal'];
        mNotasGerencial.Text := connection.QryBusca.FieldValues['sNotaGerencial'];
        mNotaMovimiento.Text := connection.QryBusca.FieldValues['sNotaMovimiento'];
        mNotaArribo.Text     := connection.QryBusca.FieldValues['sNotaArribo'];
    end;
end;

procedure TfrmOpcionesGerencial.Personal;
var
   zPersonal, zOrden : tzReadOnlyQuery;
   conteo, nivel, i : integer;
   sOrden : string;
begin
    zPersonal := tzReadOnlyQuery.Create(self);
    zPersonal.Connection := connection.zConnection;

    zOrden := tzReadOnlyQuery.Create(self);
    zOrden.Connection := connection.zConnection;

    //Primero consultamos todas las ordenes existentes,,
    zOrden.Active := False;
    zOrden.SQL.Clear;
    zOrden.SQL.Add('select b.sContrato, o.sDescripcionCorta, a.sNumeroOrden, o.sIdFolio, b.sIdPersonal, b.sDescripcion, sum(b.dCantidad) as dCantidad '+
                     'from bitacoradepersonal b '+
                     'inner join bitacoradeactividades a on (b.sContrato = a.sContrato and a.dIdFecha = b.dIdFecha and b.iIdDiario = a.iIdDiario and a.sHoraInicio =:horaI and a.sHoraFinal =:horaF) '+
                     'inner join personal p on ( p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal and sIdTipoPersonal = "PE-C" and lAplicaGerencial = "Si") '+
                     'inner join ordenesdetrabajo o on (o.sContrato = b.sContrato and o.sNumeroOrden = a.sNumeroOrden ) '+
                     'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF group by p.sContrato, a.sNumeroOrden order by p.sContrato, a.sNumeroOrden');
    if hInicio.Text > hTermino.Text then
       zOrden.ParamByName('fechaI').AsDate  := tfecha.Date - 1
    else
       zOrden.ParamByName('fechaI').AsDate  := tfecha.Date;
    zOrden.ParamByName('fechaF').AsDate  := tfecha.Date;
    zOrden.ParamByName('horaI').AsString := hInicio.Text;
    zOrden.ParamByName('horaF').AsString := hTermino.Text;
    zOrden.Open;

    //Ahora todas las categorias personal registradas y que apliquen al corte del gerencial como en lAplicaGerencial
    zPersonal.Active := False;
    zPersonal.SQL.Clear;
    zPersonal.SQL.Add('select ax.sAnexo, b.sContrato, o.sIdFolio, b.sAgrupaPersonal, b.sIdPersonal, b.sDescripcion, sum(b.dCantidad) as dCantidad '+
                      'from bitacoradepersonal b '+
                      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato and a.dIdFecha = b.dIdFecha and b.iIdDiario = a.iIdDiario and (a.sHoraInicio =:horaI and a.sHoraFinal =:horaF or a.lRepitePersonal = "Si")) '+
                      'inner join personal p on ( p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal and sIdTipoPersonal = "PE-C" and lAplicaGerencial = "Si") '+
                      'inner join ordenesdetrabajo o on (o.sContrato = b.sContrato and o.sNumeroOrden = a.sNumeroOrden ) '+
                      'left  join anexos ax on (sTipo = "Personal") '+
                      'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF group by p.sAgrupaPersonal order by p.iItemOrden');
    if hInicio.Text > hTermino.Text then
       zPersonal.ParamByName('fechaI').AsDate := tfecha.Date - 1
    else
       zPersonal.ParamByName('fechaI').AsDate := tfecha.Date;
    zPersonal.ParamByName('fechaF').AsDate    := tfecha.Date;
    zPersonal.ParamByName('horaI').AsString   := hInicio.Text;
    zPersonal.ParamByName('horaF').AsString   := hTermino.Text;
    zPersonal.Open;

    //Insertamos las categorias de personal
    rxPersonal.EmptyTable;
    conteo := 1;
    nivel  := 1;
    total_orden := 1;
    //contabilizamos el total de ordenes
    sOrden := 'iv@n';
    while not zOrden.Eof do
    begin
        if sOrden <> zOrden.FieldValues['sIdFolio'] then
        begin
            arrayEquipos[total_orden] := zOrden.FieldValues['sIdFolio'];
            inc(total_orden);
            sOrden := zOrden.FieldValues['sIdFolio'];
        end;

        if conteo > 8 then
        begin
            conteo := 1;
            inc(nivel);
        end;
        inc(conteo);
        zOrden.Next;
    end;

    for i := 1 to nivel do
    begin
        zPersonal.First;
        while not zPersonal.Eof do
        begin
            rxPersonal.Append;
            rxPersonal.FieldValues['iNivel'] := i;
            rxPersonal.FieldValues['sAnexo'] := zPersonal.FieldValues['sAnexo'];
            rxPersonal.FieldValues['sIdPersonal'] := zPersonal.FieldValues['sAgrupaPersonal'];
            rxPersonal.FieldValues['mDescripcion']:= zPersonal.FieldValues['sDescripcion'];
            rxPersonal.Post;
            zPersonal.Next;
        end;
    end;

    //Se comsulta de nuevo personal para obtener detalle por Orden
    zPersonal.Active := False;
    zPersonal.SQL.Clear;
    zPersonal.SQL.Add('select b.sContrato, o.sDescripcionCorta, a.sNumeroOrden, o.sIdFolio, b.sAgrupaPersonal, b.sIdPersonal, b.sDescripcion, sum(b.dCantidad) as dCantidad '+
                      'from bitacoradepersonal b '+
                      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato and a.dIdFecha = b.dIdFecha and b.iIdDiario = a.iIdDiario and (a.sHoraInicio =:horaI and a.sHoraFinal =:horaF or a.lRepitePersonal = "Si")) '+
                      'inner join personal p on ( p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal and sIdTipoPersonal = "PE-C" and lAplicaGerencial = "Si") '+
                      'inner join ordenesdetrabajo o on (o.sContrato = b.sContrato and o.sNumeroOrden = a.sNumeroOrden) '+
                      'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF group by b.sContrato,a.sNumeroOrden, p.sAgrupaPersonal order by b.sContrato, a.sNumeroOrden, p.iItemOrden');
    if hInicio.Text > hTermino.Text then
       zPersonal.ParamByName('fechaI').AsDate := tfecha.Date - 1
    else
       zPersonal.ParamByName('fechaI').AsDate := tfecha.Date;
    zPersonal.ParamByName('fechaF').AsDate    := tfecha.Date;
    zPersonal.ParamByName('horaI').AsString   := hInicio.Text;
    zPersonal.ParamByName('horaF').AsString   := hTermino.Text;
    zPersonal.Open;

    conteo := 1;
    nivel  := 1;
    //Insetamos los datos al rx Cantidades de personal x orden
    zPersonal.First;
    if zPersonal.RecordCount > 0 then
       sOrden := zPersonal.FieldValues['sDescripcionCorta'];
    while not zPersonal.Eof do
    begin
        if sOrden <> zPersonal.FieldValues['sDescripcionCorta'] then
        begin
           inc(conteo);
           sOrden := zPersonal.FieldValues['sDescripcionCorta'];
        end;

        if conteo > 8 then
        begin
            conteo := 1;
            inc(nivel);
        end;

        rxPersonal.First;
        while not rxPersonal.Eof do
        begin
            if rxPersonal.FieldValues['iNivel'] = nivel then
            begin
                rxPersonal.Edit;
                rxPersonal.FieldValues['sOrden'+IntToStr(conteo)] := zPersonal.FieldValues['sDescripcionCorta'];
                rxPersonal.Post;

                if rxPersonal.FieldValues['sIdPersonal'] = zPersonal.FieldValues['sAgrupaPersonal'] then
                begin
                    rxPersonal.Edit;
                    rxPersonal.FieldValues['dCantidad'+IntToStr(conteo)] := zPersonal.FieldValues['dCantidad'];
                    rxPersonal.Post;
                end;
            end;
            rxPersonal.Next;
        end;
        zPersonal.Next;
    end;
    zPersonal.Destroy;
    zOrden.Destroy;
end;

procedure TfrmOpcionesGerencial.Equipo;
var
   zEquipos, zOrden : tzReadOnlyQuery;
   conteo, nivel, i : integer;
   sOrden : string;
   lContinua : boolean;
begin
    zEquipos := tzReadOnlyQuery.Create(self);
    zEquipos.Connection := connection.zConnection;

    zOrden := tzReadOnlyQuery.Create(self);
    zOrden.Connection := connection.zConnection;

    //Primero consultamos todas las ordenes existentes,,
    zOrden.Active := False;
    zOrden.SQL.Clear;
    zOrden.SQL.Add('select b.sContrato, o.sIdFolio, b.sIdEquipo, b.sDescripcion, sum(b.dCantidad) as dCantidad '+
                   'from bitacoradeequipos b '+
                   'inner join bitacoradeactividades a on (b.sContrato = a.sContrato and a.dIdFecha = b.dIdFecha and b.iIdDiario = a.iIdDiario and a.sHoraInicio =:horaI and a.sHoraFinal =:horaF) '+
                   'inner join equipos p on ( p.sContrato = b.sContrato and p.sIdEquipo = b.sIdEquipo and sIdTipoEquipo = "EQ-C") '+
                   'inner join ordenesdetrabajo o on (o.sContrato = b.sContrato ) '+
                   'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF group by p.sContrato order by p.sContrato');
    if hInicio.Text > hTermino.Text then
       zOrden.ParamByName('fechaI').AsDate := tfecha.Date - 1
    else
       zOrden.ParamByName('fechaI').AsDate := tfecha.Date;
    zOrden.ParamByName('fechaF').AsDate    := tfecha.Date;
    zOrden.ParamByName('horaI').AsString   := hInicio.Text;
    zOrden.ParamByName('horaF').AsString   := hTermino.Text;
    zOrden.Open;

    //Ahora todas las categorias de equipo registradas y que apliquen al corte del gerencial como en lAplicaGerencial
    zEquipos.Active := False;
    zEquipos.SQL.Clear;
    zEquipos.SQL.Add('select ax.sAnexo, b.sContrato, o.sIdFolio, b.sIdEquipo, b.sDescripcion, sum(b.dCantidad) as dCantidad '+
                      'from bitacoradeequipos b '+
                      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato and a.dIdFecha = b.dIdFecha and b.iIdDiario = a.iIdDiario ) '+
                      'inner join equipos p on ( p.sContrato = b.sContrato and p.sIdEquipo = b.sIdEquipo and sIdTipoEquipo = "EQ-C" ) '+
                      'inner join ordenesdetrabajo o on (o.sContrato = b.sContrato and o.sNumeroOrden = a.sNumeroOrden) '+
                      'left  join anexos ax on (sTipo = "Equipo") '+
                      'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF group by p.sIdEquipo order by p.iItemOrden');
    if hInicio.Text > hTermino.Text then
       zEquipos.ParamByName('fechaI').AsDate := tfecha.Date - 1
    else
       zEquipos.ParamByName('fechaI').AsDate := tfecha.Date;
    zEquipos.ParamByName('fechaF').AsDate    := tfecha.Date;
    zEquipos.Open;

    //Insertamos las categorias de equipo
    rxEquipo.EmptyTable;
    conteo := 1;
    nivel  := 1;
    //contabilizamos el total de ordenes
    while not zOrden.Eof do
    begin
        if conteo > 8 then
        begin
            conteo := 1;
            inc(nivel);
        end;
        inc(conteo);
        zOrden.Next;
    end;

    for i := 1 to nivel do
    begin
        zEquipos.First;
        while not zEquipos.Eof do
        begin
            rxEquipo.Append;
            rxEquipo.FieldValues['iNivel'] := i;
            rxEquipo.FieldValues['sAnexo'] := zEquipos.FieldValues['sAnexo'];
            rxEquipo.FieldValues['sIdEquipo'] := trim(zEquipos.FieldValues['sIdEquipo']);
            rxEquipo.FieldValues['mDescripcion']:= zEquipos.FieldValues['sDescripcion'];
            rxEquipo.Post;
            zEquipos.Next;
        end;
    end;

    //Se comsulta de nuevo equipo para obtener detalle por Orden
    zEquipos.Active := False;
    zEquipos.SQL.Clear;
    zEquipos.SQL.Add('select b.sContrato, o.sIdFolio, b.sIdEquipo, b.sDescripcion, sum(b.dCantidad) as dCantidad '+
                      'from bitacoradeequipos b '+
                      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato and a.dIdFecha = b.dIdFecha and b.iIdDiario = a.iIdDiario ) '+
                      'inner join equipos p on ( p.sContrato = b.sContrato and p.sIdEquipo = b.sIdEquipo and sIdTipoEquipo = "EQ-C") '+
                      'inner join ordenesdetrabajo o on (o.sContrato = b.sContrato and o.sNumeroOrden = a.sNumeroOrden ) '+
                      'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF group by b.sContrato,p.sIdEquipo order by b.sContrato, p.iItemOrden');
    if hInicio.Text > hTermino.Text then
       zEquipos.ParamByName('fechaI').AsDate := tfecha.Date - 1
    else
       zEquipos.ParamByName('fechaI').AsDate := tfecha.Date;
    zEquipos.ParamByName('fechaF').AsDate    := tfecha.Date;
    zEquipos.Open;

    conteo := 0;
    nivel  := 1;
    //Insetamos los datos al rx Cantidades de equipo x orden
    zEquipos.First;
    //if zEquipos.RecordCount > 0 then
       sOrden := 'iv@n';
    while not zEquipos.Eof do
    begin
        if sOrden <> zEquipos.FieldValues['sIdFolio'] then
        begin
            lContinua := False;
            i := 1;
            while i < total_orden do
            begin
                if arrayEquipos[i] = zEquipos.FieldValues['sIdFolio'] then
                begin
                   lContinua := True;
                   inc(conteo);
                end;
                inc(i);
            end;
            sOrden := zEquipos.FieldValues['sIdFolio'];
        end;

        if conteo > 8 then
        begin
            conteo := 1;
            inc(nivel);
        end;

        if lContinua then
        begin
            rxEquipo.First;
            while not rxEquipo.Eof do
            begin
                if rxEquipo.FieldValues['iNivel'] = nivel then
                begin
                    rxEquipo.Edit;
                    rxEquipo.FieldValues['sOrden'+IntToStr(conteo)] := zEquipos.FieldValues['sIdFolio'];
                    rxEquipo.Post;

                    if rxEquipo.FieldValues['sIdEquipo'] = trim(zEquipos.FieldValues['sIdEquipo']) then
                    begin
                        rxEquipo.Edit;
                        rxEquipo.FieldValues['dCantidad'+IntToStr(conteo)] := zEquipos.FieldValues['dCantidad'];
                        rxEquipo.Post;
                    end;
                end;
                rxEquipo.Next;
            end;
        end;
        zEquipos.Next;
    end;
    zEquipos.Destroy;
    zOrden.Destroy;
end;

procedure TfrmOpcionesGerencial.ValidaDatos;
var
    zConsulta : tzReadOnlyQuery;
begin
    zConsulta := tzReadOnlyQuery.Create(self);
    zConsulta.Connection := connection.zConnection;

    sMensaje := 'La siguiente Información no ha sido Capturada: ';

    //Primero los movimientos de barco
    zConsulta.Active := False;
    zConsulta.SQL.Clear;
    zConsulta.SQL.Add('select sUbicacionBarco, sNotaInicio, sNotafinal from gerencial_diario where dIdFecha =:fecha and sHoraInicio =:Inicio and sHoraFinal =:Fin group by dIdFecha');
    zConsulta.ParamByName('fecha').AsDate    := tfecha.Date;
    zConsulta.ParamByName('inicio').AsString := hInicio.Text;
    zConsulta.ParamByName('fin').AsString    := htermino.Text;
    zConsulta.Open;

    if zConsulta.RecordCount > 0 then
       if ((zConsulta.FieldValues['sUbicacionBarco'] = '*') or (trim(zConsulta.FieldValues['sUbicacionBarco']) = '')) or
          ((zConsulta.FieldValues['sNotaInicio'] = '*') or (trim(zConsulta.FieldValues['sNotaInicio']) = '')) or
          ((zConsulta.FieldValues['sNotaFinal'] = '*') or (trim(zConsulta.FieldValues['sNotaFinal']) = '')) then
            sMensaje := sMensaje +#13+ '  * Movimientos de Barco [Ubicacion Embarcación, Movimientos del Día]';

    //Ahora las condiciones meteorologicas..
    zConsulta.Active := False;
    zConsulta.SQL.Clear;
    zConsulta.SQL.Add('select * from condicionesclimatologicas where sContrato =:contrato and dIdFecha =:fecha and sHorario =:Hora');
    zConsulta.ParamByName('fecha').AsDate      := tfecha.Date;
    zConsulta.ParamByName('contrato').AsString := global_contrato_barco;
    zConsulta.ParamByName('hora').AsString     := htermino.Text;
    zConsulta.Open;

    if zConsulta.RecordCount = 0 then
       sMensaje := sMensaje + #13 + '  * Condiciones meteorológicas al corte de las '+ htermino.Text + ' Hrs.';

    //Ahora las existencias de recursos..
    zConsulta.Active := False;
    zConsulta.SQL.Clear;
    zConsulta.SQL.Add('select * from recursos where sContrato =:contrato and dIdFecha =:fecha');
    zConsulta.ParamByName('fecha').AsDate      := tfecha.Date - 1;
    zConsulta.ParamByName('contrato').AsString := global_contrato_barco;
    zConsulta.Open;

    if zConsulta.RecordCount = 0 then
       sMensaje := sMensaje + #13 + '  * Existencias de Diesel, Agua, Lubircantes al corte de las 24:00 Hrs ';

    //Ahora el estatus de los reportes..
    zConsulta.Active := False;
    zConsulta.SQL.Clear;
    zConsulta.SQL.Add('select * from reportediario where dIdFecha =:fecha and lStatus <> "Autorizado" and sContrato <> :contrato');
    zConsulta.ParamByName('fecha').AsDate      := tfecha.Date;
    zConsulta.ParamByName('contrato').AsString := global_contrato_barco;
    zConsulta.Open;

    if zConsulta.RecordCount > 0 then
       sMensaje := sMensaje + #13 + '  * Reportes Diarios en Estatus de no Autorizados [Avances de la Orden] ';

    if sMensaje <> 'La siguiente Información no ha sido Capturada: ' then
       lAlerta := True
    else
       lAlerta := False;

    zConsulta.Destroy;   
end;

procedure TfrmOpcionesGerencial.NotasGerencial(sParamContrato: string; sParamOrden: string; sParamInicio: string; sParamFinal: string; dParamFechaI: TDate; dParamFechaF: TDate);
var
   zNotas : tzReadOnlyQuery;
begin
      zNotas := tzReadOnlyQuery.Create(self);
      zNotas.Connection := connection.zConnection;

      //Ahora Consultamos las notas de Reporte Diario..
      zNotas.Active := False;
      zNotas.SQL.Clear;
      zNotas.SQL.Add('select sContrato, dIdFecha, iIdDiario, sNumeroOrden, sHoraInicio, sHoraFinal '+
                     'from bitacoradeactividades b '+
                     'where sContrato =:Contrato and b.sNumeroOrden =:Orden and dIdFecha >=:FechaI and dIdFecha <=:FechaF '+
                     'and sIdTipoMovimiento = "N" and sHoraInicio =:HoraInicio and sHoraFinal =:HoraFinal group by sContrato, dIdfecha, iIdDiario');
      zNotas.ParamByName('Contrato').AsString   := sParamContrato;
      zNotas.ParamByName('Orden').AsString      := sParamOrden;
      zNotas.ParamByName('FechaI').AsDate       := dParamFechaI;
      zNotas.ParamByName('FechaF').AsDate       := dParamFechaI;
      zNotas.ParamByName('HoraInicio').AsString := sParamInicio;
      zNotas.ParamByName('HoraFinal').AsString  := sParamFinal;
      zNotas.Open;

      while not zNotas.Eof do
      begin
          //Ahora consultamos todas las notas del gerencial contenidas en Notas de Reportes Diarios.
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('select sHoraInicio, sHoraFinal, mDescripcion, sConceptoGerencial, lImprime '+
                                      'from bitacoradeactividades where sContrato =:Contrato and dIdFecha =:Fecha '+
                                      'and iIdDiarioNota =:Diario and sNumeroOrden =:Orden and sIdTipoMovimiento = "G"');
          connection.QryBusca.ParamByName('Contrato').AsString := sParamContrato;
          connection.QryBusca.ParamByName('Fecha').AsDate      := zNotas.FieldValues['dIdFecha'];
          connection.QryBusca.ParamByName('Diario').AsInteger  := zNotas.FieldValues['iIdDiario'];
          connection.QryBusca.ParamByName('Orden').AsString    := zNotas.FieldValues['sNumeroOrden'];
          connection.QryBusca.Open;

          //Insetamos las notas de gerencial por comentarios de Reporte Diario.
          while not connection.QryBusca.Eof do
          begin
              GuardaDatosRx('Notas');
              connection.QryBusca.Next;
          end;
          zNotas.Next;
      end;
      zNotas.Destroy;
end;


end.
