unit frm_OpcionesAvances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  AdvCircularProgress, UnitExcepciones;
type
  TfrmOpcionesAvances = class(TForm)
    pgOpciones: TsPageControl;
    pgPartidas: TsTabSheet;
    CmdOk: TButton;
    CmdCancel: TButton;
    GroupPageRange: TGroupBox;
    DescrL: TLabel;
    optTodas: TRadioButton;
    OptReportadas: TRadioButton;
    opcPartidas: TRadioButton;
    EditPartidas: TEdit;
    GroupQuality: TGroupBox;
    chkMayor: TCheckBox;
    chkMenor: TCheckBox;
    chkIgual: TCheckBox;
    Label1: TLabel;
    ComboPorciento: TComboBox;
    pgEstructura: TsTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    optTodosPaquetes: TRadioButton;
    optNingunPaquete: TRadioButton;
    optNumeroPaquetes: TRadioButton;
    EditPaquetes: TEdit;
    mdReporte: TRxMemoryData;
    mdReportesContrato: TStringField;
    mdReportesNumeroActividad: TStringField;
    mdReportemDescripcion: TMemoField;
    mdReportedCantidad: TFloatField;
    mdReportesMedida: TStringField;
    mdReporteDia1: TFloatField;
    mdReporteDia2: TFloatField;
    mdReporteDia3: TFloatField;
    mdReporteDia4: TFloatField;
    mdReporteDia5: TFloatField;
    mdReporteDia6: TFloatField;
    mdReporteDia7: TFloatField;
    mdReporteDia8: TFloatField;
    mdReporteDia9: TFloatField;
    mdReporteDia10: TFloatField;
    mdReporteDia11: TFloatField;
    mdReporteDia12: TFloatField;
    mdReporteDia13: TFloatField;
    mdReporteDia14: TFloatField;
    mdReporteDia15: TFloatField;
    mdReporteDia16: TFloatField;
    mdReporteDia17: TFloatField;
    mdReporteDia18: TFloatField;
    mdReporteDia19: TFloatField;
    mdReporteDia20: TFloatField;
    mdReporteDia21: TFloatField;
    mdReporteDia22: TFloatField;
    mdReporteDia23: TFloatField;
    mdReporteDia24: TFloatField;
    mdReporteDia25: TFloatField;
    mdReporteDia26: TFloatField;
    mdReporteDia27: TFloatField;
    mdReporteDia28: TFloatField;
    mdReporteDia29: TFloatField;
    mdReporteDia30: TFloatField;
    mdReporteDia31: TFloatField;
    mdReportesWbs: TStringField;
    mdReportedTotal: TFloatField;
    mdReporteMes: TStringField;
    mdReporteAnio: TStringField;
    mdReportedIdFecha: TDateField;
    mdReportesWbsAnterior: TStringField;
    mdDatosAux: TRxMemoryData;
    StringField10: TStringField;
    StringField11: TStringField;
    MemoField3: TMemoField;
    FloatField1: TFloatField;
    StringField12: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    StringField13: TStringField;
    FloatField34: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    DateField1: TDateField;
    mdDatosAuxsWbsAnterior: TStringField;
    Q_Detalle: TZReadOnlyQuery;
    Detalle: TRxMemoryData;
    StringField1: TStringField;
    StringField2: TStringField;
    MemoField1: TMemoField;
    FloatField4: TFloatField;
    StringField3: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DateField2: TDateField;
    StringField7: TStringField;
    DetallesWbs: TStringField;
    DetalledAvanceActual: TFloatField;
    mdDatosAuxdFechaInicio: TDateField;
    mdDatosAuxdFechaFinal: TDateField;
    mdReportedFechaInicio: TDateField;
    mdReportedFechaFinal: TDateField;
    DetalledFechaInicio: TDateField;
    DetalledFechaFinal: TDateField;
    pgAlcances: TsTabSheet;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    optTodosAlcances: TRadioButton;
    optUltimoAlcance: TRadioButton;
    optNumeroAlcance: TRadioButton;
    txtNumeroAlcance: TEdit;
    optNingunAlcance: TRadioButton;
    DetalleFase: TIntegerField;
    DetallesDescripcion: TStringField;
    mdReporteFase: TIntegerField;
    mdReportesDescripcion: TStringField;
    mdDatosAuxFase: TIntegerField;
    mdDatosAuxsDescripcion: TStringField;
    GroupBox3: TGroupBox;
    chkAllPaquetes: TRadioButton;
    chkEspPaquete: TRadioButton;
    txtIsometrico: TEdit;
    DetalledCantidadAnterior: TFloatField;
    DetalledAvanceAnterior: TFloatField;
    mdReportedTotalAnt: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure CmdOkClick(Sender: TObject);
    procedure EditPaquetesEnter(Sender: TObject);
    procedure opcPartidasExit(Sender: TObject);
    procedure EditPartidasEnter(Sender: TObject);
    procedure ComboPorcientoChange(Sender: TObject);
    procedure txtNumeroAlcanceEnter(Sender: TObject);
    procedure optNumeroAlcanceExit(Sender: TObject);
    procedure txtIsometricoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcionesAvances: TfrmOpcionesAvances;

implementation

uses
    frm_ReportePeriodo;

{$R *.dfm}

procedure TfrmOpcionesAvances.CmdOkClick(Sender: TObject);
var
  sCadena, sDia, MiWbs : String;
  iPos, NumPaq, i,x      : Integer;
  Q_Paquetes,
  Q_Fases              : tzReadOnlyquery ;
  ArrayPaquetes : array [1..10, 1..2] of String;

  {Variable de Opciones..}
  Nivel  : integer;
  Condicion : string;
  Partidas,
  sSigno    : string;
  lContinua : boolean;
  sAlcanceVar,
  sAlcanceLine,
  sAlcanceGrupo,
  sAlcance       : string;

  {Para busqueda de Alcances}
  Alcance,
  AlcanceAux    : string;
  lMuestra      : boolean;

  {Para Tablas de ActividadesxAnexo o ActividadexOrden}
  sCampo,
  sTabla,
  sLineaWbs,
  sLineaJoin,
  sLineaCondicion,
  sLineaCondicion2,
  sIsometrico, MiMes : String;
  MiFechaI, MiFechaF, MiFecha: tDate;
  Total  : double;
  //*******************BRITO 27/01/11*********************
  myYear, myMonth, myDay : Word;
  //*******************BRITO 27/01/11*********************

begin
  try
    Q_Paquetes := tzReadOnlyQuery.Create(Self) ;
    Q_Paquetes.Connection := connection.zConnection ;

    {ANTES DE ENTRAR AL CUERPO DEL REPORTE VERIFCAMOS OPCIONES..}
    {Nivel}
    if optTodosPaquetes.Checked then
       Nivel := 10;

    if optNingunPaquete.Checked then
       Nivel := 0;

    if optNumeroPaquetes.Checked then
    begin
      try
          if EditPaquetes.Text <> '' then
             Nivel := StrToInt(EditPaquetes.Text)
          else
             Nivel := 0;
      Except
          MessageDLG('El Numero de Paquetes es Incorrecto', mtError, [mbOk], 0);
          exit;
      end;
    end;

    if optNumeroAlcance.Checked then
    begin
      try
          if txtNumeroAlcance.Text <> '' then
             Nivel := StrToInt(txtNumeroAlcance.Text)
          else
             Nivel := 0;
      Except
          MessageDLG('El Numero de Alcance es Incorrecto', mtError, [mbOk], 0);
          exit;
      end;
    end;

    {*Checamos opciones marcadas..}
    if frmReportePeriodo.rbVolumenGeneral.Checked then
    begin
        sCampo           := 'a.dCantidadAnexo';
        sTabla           := ' actividadesxanexo ';
        sLineaWbs        := '';
       // sLineaJoin       := ' and a.sIdFase = ""';
        sLineaCondicion  := '';
        sLineaCondicion2 := '';
    end
    else
    begin
        sCampo           := 'a.dCantidad';
        sTabla           := ' actividadesxorden ';
        sLineaWbs        := ' and a.sWbs = b.sWbs ';
        sLineaJoin       := ' and b.sNumeroOrden=a.sNumeroOrden ';
        sLineaCondicion  := ' And b.sNumeroOrden =:Orden ';
        sLineaCondicion2 := ' and sNumeroOrden =:Orden ';
    end;

    {########## Ahora obtenemos los Volumenes por partida..############}
    {Esta parte es nueva.. busqueda por isometricos.. 24 Febrero de 2011}
    if chkEsppaquete.Checked then
    begin
        Q_Detalle.Active := False ;
        Q_Detalle.SQL.Clear;
        Q_Detalle.SQL.Add('Select sWbs, sTipoActividad from '+sTabla+' '+
                          'Where sContrato =:Contrato '+sLineaCondicion2+' and sIdConvenio =:Convenio and sTipoActividad ="Paquete" and mDescripcion =:isometrico ');
        Q_Detalle.Params.ParamByName('Contrato').AsString   := global_contrato;
        Q_Detalle.Params.ParamByName('Convenio').AsString   := global_convenio;
        if sTabla = ' actividadesxorden ' then
           Q_Detalle.Params.ParamByName('Orden').AsString   := frmReportePeriodo.tsNumeroOrden3.Text;
        Q_Detalle.Params.ParamByName('isometrico').AsString := txtIsometrico.Text;
        Q_Detalle.Open;

        if Q_Detalle.RecordCount > 0 then
        begin
            sIsometrico := Q_Detalle.FieldByName('sWbs').AsString;
            lContinua := True;
            {Una vez encontrado el isometrico se busca el ultimo nivel..de paquetes..}
            while lContinua do
            begin
                Q_Detalle.Active := False ;
                Q_Detalle.SQL.Clear;
                Q_Detalle.SQL.Add('Select sWbs, sTipoActividad from '+sTabla+' '+
                                  'Where sContrato =:Contrato '+sLineaCondicion2+' and sIdConvenio =:Convenio and sTipoActividad ="Paquete" and sWbsAnterior =:Wbs ');
                Q_Detalle.Params.ParamByName('Contrato').AsString   := global_contrato;
                Q_Detalle.Params.ParamByName('Convenio').AsString   := global_convenio;
                if sTabla = ' actividadesxorden ' then
                   Q_Detalle.Params.ParamByName('Orden').AsString   := frmReportePeriodo.tsNumeroOrden3.Text;
                Q_Detalle.Params.ParamByName('Wbs').AsString        := sIsometrico;
                Q_Detalle.Open;

                if Q_Detalle.RecordCount > 0 then
                   sIsometrico := Q_Detalle.FieldByName('sWbs').AsString
                else
                   lContinua := False;
            end;
            sIsometrico := ' and a.sWbsAnterior = "'+ sIsometrico + '" ';
        end;
    end;
    {inician busquedas..}
    If ((frmReportePeriodo.rbDetalleInstalacion.Checked) or (frmReportePeriodo.rbVolumenGeneral.Checked)) and (frmReportePeriodo.chkFases.Checked = False) Then
    Begin
        Detalle.Open;
        Detalle.EmptyTable;

        {Esta opcion es para buscar por partidas...}
        if opcPartidas.Checked then
        begin
            EditPartidas.Text := EditPartidas.Text + ',0';
            Partidas  := EditPartidas.Text;
            lContinua := True;
            while lContinua do
            begin
                if pos(',', EditPartidas.Text) = 0 then
                   lContinua := False
                else
                    Partidas := copy(Partidas, 0, pos(',', Partidas) - 1);

                Q_Detalle.Active := False ;
                Q_Detalle.SQL.Clear;
                if not(frmReportePeriodo.rbVolumenGeneral.Checked) then
                begin

                  Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,substr(a.mDescripcion,1,255) as mDescripcion,a.sMedida,a.dVentaMN,'+sCampo+',b.dIdFecha,b.dCantidad as dAvanceActual,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio '+
                          'From bitacoradeactividades b '+
                          'INNER JOIN '+sTabla+' a '+
                          'ON (a.sContrato=b.sContrato '+sLineaWbs+' And a.sNumeroActividad=b.sNumeroActividad '+sIsometrico+' And a.sIdConvenio=:Convenio '+sLineaJoin+') '+
                          'INNER JOIN tiposdemovimiento t '+
                          'ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Tiempo en Operacion") '+
                          'Where b.sContrato =:Contrato '+sLineaCondicion+' And b.dIdFecha <=:Final and b.sNumeroActividad =:Partida '+
                          'Group By b.sWbs, b.dIdFecha Order By anio, mes, a.sNumeroActividad, a.iItemOrden, b.dIdFecha');

                end
                else
                begin
                  Q_Detalle.SQL.text:='Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,substr(a.mDescripcion,1,255) as mDescripcion,a.sMedida,a.dVentaMN, ' +
                                      'a.dCantidadAnexo,b.dIdFecha,ifnull(b.dCantidad,0) as dAvanceActual,ifnull(MONTH(b.dIdFecha),MONTH(:inicio)) as mes,ifnull(YEAR(b.dIdFecha),YEAR(:inicio)) as anio '+
                                      'From actividadesxanexo a '+
                                      'left join bitacoradeactividades b ON (a.sContrato=b.sContrato  And a.sNumeroActividad=b.sNumeroActividad And b.dIdFecha between :inicio and :Final) ' +
                                      'left JOIN tiposdemovimiento t ON (a.sContrato = t.sContrato '+
                                      'And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Tiempo en Operacion") ' +
                                      'Where a.sContrato =:Contrato And a.sIdConvenio=:Convenio and a.sNumeroActividad =:Partida ' +
                                      'Group By b.sWbs, b.dIdFecha Order By anio, mes, a.sNumeroActividad, a.iItemOrden, b.dIdFecha ';


                  Q_Detalle.Params.ParamByName('Inicio').DataType    := ftDate ;
                  Q_Detalle.Params.ParamByName('Inicio').Value       := frmReportePeriodo.tdFechaInicial.Date ;
                end;

                Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
                Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
                Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
                Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
                if sTabla = ' actividadesxorden ' then
                begin
                    Q_Detalle.Params.ParamByName('Orden').DataType := ftString ;
                    Q_Detalle.Params.ParamByName('Orden').Value    := frmReportePeriodo.tsNumeroOrden3.Text ;
                end;
                Q_Detalle.Params.ParamByName('Final').DataType    := ftDate ;
                Q_Detalle.Params.ParamByName('Final').Value       := frmReportePeriodo.tdFechaFinal.Date ;
                Q_Detalle.Params.ParamByName('Partida').DataType  := ftString ;
                Q_Detalle.Params.ParamByName('Partida').Value     := Partidas ;
                Q_Detalle.Open ;

                if Q_Detalle.RecordCount > 0 then
                begin
                    while not Q_Detalle.Eof do
                    begin
                        Detalle.Append;
                        Detalle.FieldByName('sContrato').AsString        := Q_Detalle.FieldByName('sContrato').AsString ;
                        Detalle.FieldByName('sWbs').AsString             := Q_Detalle.FieldByName('sWbs').AsString ;
                        Detalle.FieldByName('sWbsAnterior').AsString     := Q_Detalle.FieldByName('sWbsAnterior').AsString ;
                        Detalle.FieldByName('sNumeroActividad').AsString := Q_Detalle.FieldByName('sNumeroActividad').AsString ;
                        Detalle.FieldByName('mDescripcion').AsString     := Q_Detalle.FieldByName('mDescripcion').AsString ;
                        if sTabla = ' actividadesxorden ' then
                          if Q_Detalle.FieldByName('dIdFecha').AsDateTime < frmReportePeriodo.tdFechaInicial.Date then
                            Detalle.FieldByName('dCantidadAnterior').AsFloat := Q_Detalle.FieldValues['dCantidad']
                          else
                            Detalle.FieldValues['dCantidad']     := Q_Detalle.FieldValues['dCantidad']
                        else
                          if Q_Detalle.FieldByName('dIdFecha').AsDateTime < frmReportePeriodo.tdFechaInicial.Date then
                            Detalle.FieldByName('dCantidadAnterior').AsFloat := Q_Detalle.FieldValues['dCantidadAnexo']
                          else
                            Detalle.FieldByName('dCantidad').AsFloat := Q_Detalle.FieldByName('dCantidadAnexo').AsFloat;
                        Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                        Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                        if Q_Detalle.FieldByName('dIdFecha').AsDateTime < frmReportePeriodo.tdFechaInicial.Date then
                          Detalle.FieldByName('dAvanceAnterior').AsFloat := Q_Detalle.FieldByName('dAvanceActual').AsFloat
                        else
                          Detalle.FieldByName('dAvanceActual').AsFloat   := Q_Detalle.FieldByName('dAvanceActual').AsFloat;
                        Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                        Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                        Detalle.Post;
                        Q_Detalle.Next;
                    end;
                end;

                EditPartidas.Text := copy(EditPartidas.Text, pos(',', EditPartidas.Text) + 1, length(EditPartidas.Text));
                Partidas := EditPartidas.Text;
            end;
        end;

        {Esta opcion es para buscar solo partidas reportadas}
        if optReportadas.Checked then
        begin
             Q_Detalle.Active := False ;
             Q_Detalle.SQL.Clear;
             Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,substr(a.mDescripcion,1,255) as mDescripcion,a.sMedida,a.dVentaMN,'+sCampo+',b.dIdFecha,sum(b.dCantidad) as dAvanceActual,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio '+
                        'From bitacoradeactividades b '+
                        'INNER JOIN '+sTabla+' a '+
                        'ON (a.sContrato=b.sContrato '+sLineaWbs+' And a.sNumeroActividad=b.sNumeroActividad '+sIsometrico+' And a.sIdConvenio=:Convenio '+sLineaJoin+') '+
                        'INNER JOIN tiposdemovimiento t '+
                        'ON (b.sContrato=t.sContrato And b.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") '+
                        'Where b.sContrato=:Contrato '+sLineaCondicion+' And b.dIdFecha >= :Inicio and b.dIdFecha <=:Final '+
                        'Group By b.sWbs,b.dIdFecha Order By anio,mes,a.sNumeroActividad,a.iItemOrden,b.dIdFecha');
             Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
             Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
             if sTabla = ' actividadesxorden ' then
             begin
                 Q_Detalle.Params.ParamByName('Orden').DataType := ftString ;
                 Q_Detalle.Params.ParamByName('Orden').Value    := frmReportePeriodo.tsNumeroOrden3.Text ;
             end;
             Q_Detalle.Params.ParamByName('Inicio').DataType    := ftDate ;
             Q_Detalle.Params.ParamByName('Inicio').Value       := frmReportePeriodo.tdFechaInicial.Date ;
             Q_Detalle.Params.ParamByName('Final').DataType    := ftDate ;
             Q_Detalle.Params.ParamByName('Final').Value       := frmReportePeriodo.tdFechaFinal.Date ;
             Q_Detalle.Open ;

             if Q_Detalle.RecordCount > 0 then
             begin
                 while not Q_Detalle.Eof do
                 begin
                     Detalle.Append;
                     Detalle.FieldByName('sContrato').AsString        := Q_Detalle.FieldByName('sContrato').AsString ;
                     Detalle.FieldByName('sWbs').AsString             := Q_Detalle.FieldByName('sWbs').AsString ;
                     Detalle.FieldByName('sWbsAnterior').AsString     := Q_Detalle.FieldByName('sWbsAnterior').AsString ;
                     Detalle.FieldByName('sNumeroActividad').AsString := Q_Detalle.FieldByName('sNumeroActividad').AsString ;
                     Detalle.FieldByName('mDescripcion').AsString     := Q_Detalle.FieldByName('mDescripcion').AsString ;
                     if sTabla = ' actividadesxorden ' then
                       if q_Detalle.FieldByName('dIdFecha').AsDateTime < frmReportePeriodo.tdFechaInicial.Date then
                         Detalle.FieldByName('dCantidadAnterior').AsFloat := Q_Detalle.FieldByName('dCantidad').AsFloat
                       else
                         Detalle.FieldByName('dCantidad').AsFloat := Q_Detalle.FieldByName('dCantidad').AsFloat
                     else
                       if q_Detalle.FieldByName('dIdFecha').AsDateTime < frmReportePeriodo.tdFechaInicial.Date then
                         Detalle.FieldByName('dCantidadAnterior').AsFloat := Q_Detalle.FieldByName('dCantidadAnexo').AsFloat
                       else
                         Detalle.FieldByName('dCantidad').AsFloat := Q_Detalle.FieldByName('dCantidadAnexo').AsFloat;
                     Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                     Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                     if q_Detalle.FieldByName('dIdFecha').AsDateTime < frmReportePeriodo.tdFechaInicial.Date then
                       Detalle.FieldByName('dAvanceAnterior').AsFloat := Q_Detalle.FieldByName('dAvanceActual').AsFloat
                     else
                       Detalle.FieldByName('dAvanceActual').AsFloat := Q_Detalle.FieldByName('dAvanceActual').AsFloat;
                     Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                     Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                     Detalle.Post;
                     Q_Detalle.Next;
                 end;
            end;
        end;

        {Esta opcion es para buscar todas las partidas del programa de Trabajo...}
        if optTodas.Checked then
        begin
             if sTabla = ' actividadesxorden ' then
             begin
                sLineaCondicion := ' and a.sNumeroOrden =:Orden ';
                sCampo          := 'a.dCantidad';
             end
             else
             begin
                sLineaCondicion := ' ';
                sCampo          := 'a.dCantidadAnexo';
             end;

             Q_Detalle.Active := False ;
             Q_Detalle.SQL.Clear;
             Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,substr(a.mDescripcion,1,255) as mDescripcion,a.sMedida,a.dVentaMN,'+sCampo+' as dCantidad,a.sTipoActividad  '+
                          'From '+sTabla+' a '+
                          'Where a.sContrato =:Contrato '+sLineaCondicion+' And a.sIdConvenio=:Convenio Order By a.iItemOrden ');
             Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
             Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
             if sTabla = ' actividadesxorden ' then
             begin
                 Q_Detalle.Params.ParamByName('Orden').DataType := ftString ;
                 Q_Detalle.Params.ParamByName('Orden').Value    := frmReportePeriodo.tsNumeroOrden3.Text ;
             end;
             Q_Detalle.Open ;

             mdReporte.Open;
             mdReporte.EmptyTable;
             if Q_Detalle.RecordCount > 0 then
             begin
                 iPos     := Q_Detalle.RecordCount;
                 MiFecha  := frmReportePeriodo.tdFechaInicial.Date ;
                 MiFechaI := frmReportePeriodo.tdFechaInicial.Date ;
                 MiFechaF := frmReportePeriodo.tdFechaFinal.Date ;
                 MiMes    := Copy(DateToStr(MiFecha),4,2) ;

                 for i := 1 to ( DaysBetween(MiFechaF,MiFechaI) + 1) do
                 begin
                     if MiMes = Copy(DateToStr(MiFecha),4,2) then
                     begin
                         while not Q_Detalle.Eof do
                         begin
                             if Q_Detalle.FieldByName('sTipoActividad').AsString = 'Paquete' then
                             begin
                                 mdReporte.Append;
                                 mdReporte.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                                 mdReporte.FieldValues['sWbs']             := 'Paquete' ;
                                 mdReporte.FieldValues['sWbsAnterior']     := '';
                                 mdReporte.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                                 mdReporte.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                                 mdReporte.FieldValues['dCantidad']        := 0 ;
                                 mdReporte.FieldValues['sMedida']          := '' ;
                                 mdReporte.FieldValues['Mes']              := MiMes ;
                                 mdReporte.FieldValues['Anio']             := Copy(DateToStr(MiFecha),7,4) ;
                                 mdReporte.FieldValues['dIdFecha']         := MiFecha;
                                 mdReporte.FieldValues['dTotal']           := 0 ;
                                 mdREporte.Post;
                             end
                             else
                             begin
                                 mdReporte.Append;
                                 mdReporte.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                                 mdReporte.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                                 mdReporte.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'];
                                 mdReporte.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                                 mdReporte.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                                 mdReporte.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'];
                                 mdReporte.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'];
                                 mdReporte.FieldValues['Mes']              := MiMes ;
                                 mdReporte.FieldValues['Anio']             := Copy(DateToStr(MiFecha),7,4) ;
                                 mdReporte.FieldValues['dIdFecha']         := MiFecha;
                                 mdReporte.FieldValues['dTotal']           := 0 ;
                                 mdREporte.Post;
                             end;
                             Q_Detalle.Next;
                         end;

                         //Ahora buscamos lo reportado por cada partida..
                         connection.QryBusca.Active := False;
                         connection.QryBusca.SQL.Clear;
                         connection.QryBusca.SQL.Add('Select b.sWbs,b.sNumeroActividad, sum(a.dCantidad) as dCantidad, dIdFecha '+
                                                     'From actividadesxorden b '+
                                                     'inner JOIN bitacoradeactividades a '+
                                                     'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs And a.dIdFecha =:Fecha and b.sNumeroOrden=a.sNumeroOrden) '+
                                                     'left JOIN tiposdemovimiento t '+
                                                     'ON (b.sContrato=t.sContrato And a.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") '+
                                                     'Where b.sContrato=:Contrato And b.sIdConvenio=:Convenio '+sLineaCondicion+' Group By b.sWbs Order By b.iItemOrden');
                         connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
                         connection.QryBusca.ParamByName('Convenio').AsString := global_convenio;
                         connection.QryBusca.ParamByName('Fecha').AsDate      := MiFecha;
                         if sTabla = ' actividadesxorden ' then
                            connection.QryBusca.ParamByName('Orden').AsString := frmReportePeriodo.tsNumeroOrden3.Text;
                         connection.QryBusca.Open;

                         if connection.QryBusca.RecordCount > 0 then
                         begin
                             while not connection.QryBusca.Eof do
                             begin
                                  mdReporte.First;
                                  Total := 0;
                                  while not mdReporte.Eof do
                                  begin
                                      if (mdReporte.FieldByName('Mes').AsString = MiMes) then
                                      begin
                                          if (connection.QryBusca.FieldByName('sWbs').AsString = mdReporte.FieldByName('sWbs').AsString) then
                                          begin
                                              mdReporte.Edit;
                                              mdReporte.FieldValues['dia' + IntToStr(StrToInt(copy(DateToStr(MiFecha),1,2))) ] := connection.QryBusca.FieldByName('dCantidad').AsFloat;
                                              mdReporte.FieldValues['dTotal'] := mdReporte.FieldValues['dTotal'] + connection.QryBusca.FieldByName('dCantidad').AsFloat + Total;
                                              mdReporte.Post;
                                              Total := 0;
                                          end;
                                      end
                                      else
                                          if (connection.QryBusca.FieldByName('sWbs').AsString = mdReporte.FieldByName('sWbs').AsString) then
                                             Total := Total + mdReporte.FieldByName('dTotal').AsFloat;

                                      mdReporte.Next;
                                  end;
                                  connection.QryBusca.Next;
                             end;
                         end;
                     end
                     else
                     begin
                         MiMes  := Copy(DateToStr(MiFecha),4,2);
                         Q_Detalle.First;
                     end;
                     MiFecha := IncDay(MiFecha);
                 end;
            end;
            frmReportePeriodo.dsReporte.DataSet := mdReporte;
            frmReportePeriodo.dsReporte.FieldAliases.Clear;

            if mdReporte.RecordCount > 0 then
            begin
                rDiarioFirmas (global_contrato, frmReportePeriodo.tsNumeroOrden3.Text, 'A',frmReportePeriodo.tdFechaFinal.Date , frmReportePeriodo ) ;
                frmReportePeriodo.rReporte.PreviewOptions.MDIChild := True ;
                frmReportePeriodo.rReporte.PreviewOptions.Modal := False ;
                frmReportePeriodo.rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
                frmReportePeriodo.rReporte.PreviewOptions.ShowCaptions := False ;
                frmReportePeriodo.rReporte.Previewoptions.ZoomMode := zmPageWidth ;
                frmReportePeriodo.rReporte.LoadFromFile (global_files + 'DetalleInstalacion.fr3') ;
                if not FileExists(global_files + 'DetalleInstalacion.fr3') then
                    showmessage('El archivo de reporte DetalleInstalacion.fr3 no existe, notifique al administrador del sistema');
                frmReportePeriodo.rReporte.ShowReport;
            end
            else begin
                showmessage('No hay datos para imprimir');
            end;
            exit;
        end;

        {Aquiterminan las opciones de Impresion}
        sCadena := '' ;
        Detalle.First;
        mdReporte.Open;
        mdReporte.EmptyTable;
        mdDatosAux.Open;
        mdDatosAux.EmptyTable;
        if Detalle.RecordCount > 0 then
        begin
        While NOT Detalle.Eof Do
        begin
            {Procedemos a llenar los RxMemoryData..}
            //if sCadena <> (Detalle.FieldValues['sContrato'] + Detalle.FieldValues['sWbs']+ Detalle.FieldValues['Mes'] + Detalle.FieldValues['Anio'] ) then

            // Modificación realizada por Eduardo Rangel - 07 de Marzo de 2011
            // Función: Corregir el problema de los valores numericos que emite el fieldvalues
            if sCadena <> (Detalle.FieldByName('sContrato').AsString + '|' + Detalle.FieldByName('sWbs').AsString + '|' + Detalle.FieldByName('Mes').AsString + '|' + Detalle.FieldByName('Anio').AsString) then
            begin
                if mdReporte.State = dsInsert then
                begin
                    mdDatosAux.First;
                    while not mdDatosAux.Eof do
                    begin
                        if (mdReporte.FieldValues['sNumeroActividad'] = mdDatosAux.FieldValues['sNumeroActividad']) and (mdReporte.FieldValues['sWbs'] = mdDatosAux.FieldValues['sWbs']) then
                            mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + mdDatosAux.FieldValues['dTotal'];
                        mdDatosAux.Next;
                    end;

                    {Llenamos Rx Auxiliar..}
                    mdDatosAux.Append;
                    mdDatosAux.FieldValues['sContrato']        := mdReporte.FieldValues['sContrato'] ;
                    mdDatosAux.FieldValues['sWbs']             := mdReporte.FieldValues['sWbs'] ;
                    mdDatosAux.FieldValues['sWbsAnterior']     := mdReporte.FieldValues['sWbsAnterior'] ;
                    mdDatosAux.FieldValues['sNumeroActividad'] := mdReporte.FieldValues['sNumeroActividad'] ;
                    mdDatosAux.FieldValues['mDescripcion']     := mdReporte.FieldValues['mDescripcion'] ;
                    mdDatosAux.FieldValues['dCantidad']        := mdReporte.FieldValues['dCantidad'] ;
                    mdDatosAux.FieldValues['sMedida']          := mdReporte.FieldValues['sMedida'] ;
                    mdDatosAux.FieldValues['Mes']              := mdReporte.FieldValues['Mes'] ;
                    mdDatosAux.FieldValues['Anio']             := mdReporte.FieldValues['Anio'] ;
                    mdDatosAux.FieldValues['dTotal']           := mdReporte.FieldValues['dTotal'] ;
                    mdDatosAux.FieldValues['dIdFecha']         := mdReporte.FieldValues['dIdFecha'];

                    for iPos := 1 to 31 do
                       mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ];

                    mdDatosAux.Post;
                    mdReporte.Post ;
                end;

                //sCadena := Detalle.FieldValues['sContrato'] + Detalle.FieldValues['sWbs'] + Detalle.FieldValues['Mes'] + Detalle.FieldValues['Anio'] ;
                sCadena := (Detalle.FieldByName('sContrato').AsString + '|' + Detalle.FieldByName('sWbs').AsString + '|' + Detalle.FieldByName('Mes').AsString + '|' + Detalle.FieldByName('Anio').AsString);

                {Llenamos Rx Principal..}
                mdReporte.Append;
                mdReporte.FieldValues['sContrato']        := Detalle.FieldValues['sContrato'] ;
                mdReporte.FieldValues['sWbs']             := Detalle.FieldValues['sWbs'] ;
                mdReporte.FieldValues['sWbsAnterior']     := Detalle.FieldValues['sWbsAnterior'] ;
                mdReporte.FieldValues['sNumeroActividad'] := Detalle.FieldValues['sNumeroActividad'] ;
                mdReporte.FieldValues['mDescripcion']     := Detalle.FieldValues['mDescripcion'] ;
                mdReporte.FieldValues['dCantidad']        := Detalle.FieldValues['dCantidad'] ;
                mdReporte.FieldValues['sMedida']          := Detalle.FieldValues['sMedida'] ;
                mdReporte.FieldValues['Mes']              := Detalle.FieldValues['Mes'] ;
                mdReporte.FieldValues['Anio']             := Detalle.FieldValues['Anio'] ;
                mdReporte.FieldValues['dIdFecha']         := Detalle.FieldValues['dIdFecha'];
                mdReporte.FieldValues['dTotal']           := 0 ;

                for iPos := 1 to 31 do
                   mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0 ;

            end
            //**********************BRITO 27/01/11******************************
            else begin
                if mdReporte.State = dsInsert then begin
                    mdReporte.FieldValues['dIdFecha'] := Detalle.FieldValues['dIdFecha'];
                end;
            end;
            //**********************BRITO 27/01/11******************************
                sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(Detalle.FieldByName('dIdFecha').AsDateTime))) ;
                mdReporte.FieldValues [sDia]  := Detalle.FieldValues['dAvanceActual'] ;

            mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + Detalle.FieldValues['dAvanceActual'] ;
            Detalle.Next ;
         end;
        end;

        {Terminamos de llenar los 2 Rx..}
        if mdReporte.State = dsInsert then
        begin
            mdDatosAux.First;
            while not mdDatosAux.Eof do
            begin
                 if (mdReporte.FieldValues['sNumeroActividad'] = mdDatosAux.FieldValues['sNumeroActividad']) and (mdReporte.FieldValues['sWbs'] = mdDatosAux.FieldValues['sWbs']) then
                     mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + mdDatosAux.FieldValues['dTotal'];
                 mdDatosAux.Next;
            end;
            mdDatosAux.Append;
            mdDatosAux.FieldValues['sContrato']        := mdReporte.FieldValues['sContrato'] ;
            mdDatosAux.FieldValues['sWbs']             := mdReporte.FieldValues['sWbs'] ;
            mdDatosAux.FieldValues['sWbsAnterior']     := mdReporte.FieldValues['sWbsAnterior'] ;
            mdDatosAux.FieldValues['sNumeroActividad'] := mdReporte.FieldValues['sNumeroActividad'] ;
            mdDatosAux.FieldValues['mDescripcion']     := mdReporte.FieldValues['mDescripcion'] ;
            mdDatosAux.FieldValues['dCantidad']        := mdReporte.FieldValues['dCantidad'] ;
            mdDatosAux.FieldValues['sMedida']          := mdReporte.FieldValues['sMedida'] ;
            mdDatosAux.FieldValues['Mes']              := mdReporte.FieldValues['Mes'] ;
            mdDatosAux.FieldValues['Anio']             := mdReporte.FieldValues['Anio'] ;
            mdDatosAux.FieldValues['dTotal']           := mdReporte.FieldValues['dTotal'] ;
            mdDatosAux.FieldValues['dIdFecha']         := mdReporte.FieldValues['dIdFecha'];

            for iPos := 1 to 31 do
                mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ];
            mdDatosAux.Post;

            mdReporte.Post ;
        end;

        mdReporte.EmptyTable;
        mdDatosAux.First;
        MiWbs := '';
        while not mdDatosAux.Eof do
        begin
            if (mdDatosAux.FieldValues['dIdFecha'] >= frmReportePeriodo.tdFechaInicial.Date) or (opcPartidas.Checked=true) then
            begin
                {Limpiamos el vector..}
                for iPos := 1 to 10 do
                begin
                    ArrayPaquetes[iPos,1] := '';
                    ArrayPaquetes[iPos,2] := '';
                end;

                if MiWbs <> mdDatosAux.FieldValues['sWbsAnterior'] then
                begin
                    MiWbs  := mdDatosAux.FieldValues['sWbsAnterior'];
                    NumPaq := 0;
                    {Determinamos los niveles..}
                    for iPos := 1 to Nivel do
                    begin
                        {Empezamos buscando los paquetes..}
                        Q_Paquetes.Active := False;
                        Q_Paquetes.SQL.Clear;
                        Q_Paquetes.SQL.Add('select sWbsAnterior, sNumeroActividad, mDescripcion from '+sTabla+' where sContrato =:Contrato '+
                                           'and sIdConvenio =:Convenio '+sLineaCondicion2+' and sWbs =:Wbs and sTipoActividad = "Paquete" ');
                        Q_Paquetes.ParamByName('Contrato').AsString := global_contrato;
                        Q_Paquetes.ParamByName('Convenio').AsString := global_convenio;
                        if sTabla = ' actividadesxorden ' then
                            Q_Paquetes.ParamByName('Orden').AsString := frmReportePeriodo.tsNumeroOrden3.Text;
                        Q_Paquetes.ParamByName('Wbs').AsString       := MiWbs;
                        Q_Paquetes.Open;

                        {Guardamos los niveles en Array..}
                        if Q_Paquetes.RecordCount > 0 then
                        begin
                            MiWbs := Q_Paquetes.FieldValues['sWbsAnterior'];
                            ArrayPaquetes[iPos,1] := Q_Paquetes.FieldValues['sNumeroActividad'];
                            ArrayPaquetes[iPos,2] := Q_Paquetes.FieldValues['mDescripcion'];
                            Inc(NumPaq);
                        end;
                    end;
                    MiWbs := mdDatosAux.FieldValues['sWbsAnterior'];
                 end;

                {Ingresamos los paquetes del Array en orden al RxMemory Data.}
                if NumPaq > 0 then
                begin
                    While NumPaq > 0 do
                    begin
                        mdReporte.Append;
                        mdReporte.FieldValues['sNumeroActividad'] := ArrayPaquetes[NumPaq,1];
                        mdReporte.FieldValues['mDescripcion']     := ArrayPaquetes[NumPaq,2];
                        mdReporte.FieldValues['dCantidad']        := 0 ;
                        mdReporte.FieldValues['sWbs']             := 'Paquete' ;
                        mdReporte.FieldValues['Mes']              := mdDatosAux.FieldValues['Mes'] ;
                        mdReporte.FieldValues['Anio']             := mdDatosAux.FieldValues['Anio'] ;
                        mdReporte.FieldValues['dTotal']           := 0 ;

                        for i := 1 to 31 do
                            mdReporte.FieldValues['dia' + Trim(IntToStr(i)) ] := 0;

                        mdReporte.Post;
                        DEC(NumPaq)
                     end;
                end;

                mdReporte.Append;
                mdReporte.FieldValues['sContrato']        := mdDatosAux.FieldValues['sContrato'] ;
                mdReporte.FieldValues['sWbs']             := mdDatosAux.FieldValues['sWbs'] ;
                mdReporte.FieldValues['sNumeroActividad'] := mdDatosAux.FieldValues['sNumeroActividad'] ;
                mdReporte.FieldValues['mDescripcion']     := mdDatosAux.FieldValues['mDescripcion'] ;
                mdReporte.FieldValues['dCantidad']        := mdDatosAux.FieldValues['dCantidad'] ;
                mdReporte.FieldValues['sMedida']          := mdDatosAux.FieldValues['sMedida'] ;
                mdReporte.FieldValues['Mes']              := mdDatosAux.FieldValues['Mes'] ;
                mdReporte.FieldValues['Anio']             := mdDatosAux.FieldValues['Anio'] ;
                mdReporte.FieldValues['dTotal']           := mdDatosAux.FieldValues['dTotal'] ;

                //************************BRITO 27/01/11************************
                for iPos := 1 to 31 do begin
                    DecodeDate(frmReportePeriodo.tdFechaInicial.Date, myYear, myMonth, myDay);
                    if iPos >= myDay then  //ignorar los dias anteriores a la fecha de inicio
                        mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ]
                    else
                        mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0
                end;
                //************************BRITO 27/01/11************************
                mdReporte.Post;
            end;
            mdDatosAux.Next
        end;

        frmReportePeriodo.dsReporte.DataSet := mdReporte;
        frmReportePeriodo.dsReporte.FieldAliases.Clear;

        if mdReporte.RecordCount > 0 then
        begin
            rDiarioFirmas (global_contrato, frmReportePeriodo.tsNumeroOrden3.Text, 'A',frmReportePeriodo.tdFechaFinal.Date , frmReportePeriodo ) ;
            frmReportePeriodo.rReporte.PreviewOptions.MDIChild := True ;
            frmReportePeriodo.rReporte.PreviewOptions.Modal := False ;
            frmReportePeriodo.rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
            frmReportePeriodo.rReporte.PreviewOptions.ShowCaptions := False ;
            frmReportePeriodo.rReporte.Previewoptions.ZoomMode := zmPageWidth ;
            frmReportePeriodo.rReporte.LoadFromFile (global_files + 'DetalleInstalacion.fr3') ;
            frmReportePeriodo.rReporte.ShowReport;
            if not FileExists(global_files + 'DetalleInstalacion.fr3') then
                showmessage('El archivo de reporte DetalleInstalacion.fr3 no existe, notifique al administrador del sistema');
        end
        else begin
            showmessage('No hay datos para imprimir');
        end;
    End ;

    {########### Ahora obtenemos los Avances por partida...#############}
    If (frmReportePeriodo.rbDetalleAvances.Checked) and (frmReportePeriodo.chkFases.Checked = False) Then
    Begin
        {Condiciones}
        Condicion  := '0';
        if chkMayor.Checked then
        begin
           Condicion := copy(ComboPorciento.Text , 0, pos('%', ComboPorciento.Text) - 2);
           sSigno    := '>=';
        end;

        if chkMenor.Checked then
        begin
           Condicion := copy(ComboPorciento.Text , 0, pos('%', ComboPorciento.Text) - 2);
           sSigno    := '<=';
        end;

        if chkIgual.Checked then
        begin
           Condicion := copy(ComboPorciento.Text , 0, pos('%', ComboPorciento.Text) - 2);
           sSigno    := '=';
        end;

        Detalle.Open;
        Detalle.EmptyTable;

        {Esta opcion es para buscar por partidas...}
        if opcPartidas.Checked then
        begin
            EditPartidas.Text := EditPartidas.Text + ',0';
            Partidas  := EditPartidas.Text;
            lContinua := True;
            while lContinua do
            begin
                if pos(',', EditPartidas.Text) = 0 then
                   lContinua := False
                else
                    Partidas := copy(Partidas, 0, pos(',', Partidas) - 1);
                Q_Detalle.Active := False ;
                Q_Detalle.SQL.Clear;
                Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,substr(a.mDescripcion,1,255) as mDescripcion,a.sMedida,a.dVentaMN,a.dCantidad,b.dIdFecha,b.dAvanceActual,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio '+
                        'From bitacoradeactividades b '+
                        'INNER JOIN actividadesxorden a '+
                        'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs And a.sNumeroActividad=b.sNumeroActividad And a.sIdConvenio=:Convenio and b.sNumeroOrden=a.sNumeroOrden) '+
                        'INNER JOIN tiposdemovimiento t '+
                        'ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Tiempo en Operacion") '+
                        'Where b.sContrato =:Contrato And b.sNumeroOrden =:Orden And b.dIdFecha <=:Final and b.sNumeroActividad =:Partida '+
                        'Group By b.sWbs, b.dIdFecha Order By anio, mes, a.sNumeroActividad, a.iItemOrden, b.dIdFecha');
                Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
                Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
                Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
                Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
                Q_Detalle.Params.ParamByName('Orden').DataType    := ftString ;
                Q_Detalle.Params.ParamByName('Orden').Value       := frmReportePeriodo.tsNumeroOrden3.Text ;
                Q_Detalle.Params.ParamByName('Final').DataType    := ftDate ;
                Q_Detalle.Params.ParamByName('Final').Value       := frmReportePeriodo.tdFechaFinal.Date ;
                Q_Detalle.Params.ParamByName('Partida').DataType  := ftString ;
                Q_Detalle.Params.ParamByName('Partida').Value     := Partidas ;
                Q_Detalle.Open ;

                if Q_Detalle.RecordCount > 0 then
                begin
                    while not Q_Detalle.Eof do
                    begin
                        Detalle.Append;
                        Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                        Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                        Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                        Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                        Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                        Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                        Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                        Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                        Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                        Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                        Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                        Detalle.Post;
                        Q_Detalle.Next;
                    end;
                end;

                EditPartidas.Text := copy(EditPartidas.Text, pos(',', EditPartidas.Text) + 1, length(EditPartidas.Text));
                Partidas := EditPartidas.Text;
            end;
        end;

        {Esta opcion es para buscar solo partidas reportadas}
        if optReportadas.Checked then
        begin
             Q_Detalle.Active := False ;
             Q_Detalle.SQL.Clear;
             Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,substr(a.mDescripcion,1,255) as mDescripcion,a.sMedida,a.dVentaMN,a.dCantidad,b.dIdFecha,b.dAvanceActual,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio '+
                        'From bitacoradeactividades b '+
                        'INNER JOIN actividadesxorden a '+
                        'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs And a.sNumeroActividad=b.sNumeroActividad And a.sIdConvenio=:Convenio and b.sNumeroOrden=a.sNumeroOrden) '+
                        'INNER JOIN tiposdemovimiento t '+
                        'ON (b.sContrato=t.sContrato And b.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") '+
                        'Where b.sContrato=:Contrato And b.sNumeroOrden =:Orden And b.dIdFecha <=:Final '+
                        'Group By b.sWbs,b.dIdFecha Order By anio,mes,a.sNumeroActividad,a.iItemOrden,b.dIdFecha');
             Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
             Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
             Q_Detalle.Params.ParamByName('Orden').DataType    := ftString ;
             Q_Detalle.Params.ParamByName('Orden').Value       := frmReportePeriodo.tsNumeroOrden3.Text ;
             Q_Detalle.Params.ParamByName('Final').DataType    := ftDate ;
             Q_Detalle.Params.ParamByName('Final').Value       := frmReportePeriodo.tdFechaFinal.Date ;
             Q_Detalle.Open ;

             if Q_Detalle.RecordCount > 0 then
             begin
                 while not Q_Detalle.Eof do
                 begin
                     Detalle.Append;
                     Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                     Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                     Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                     Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                     Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                     Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                     Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                     Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                     Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                     Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                     Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                     Detalle.Post;
                     Q_Detalle.Next;
                 end;
            end;
        end;

        {Esta opcion es para buscar todas las partidas del programa de Trabajo...}
        if optTodas.Checked then
        begin
                 {primero las que estan en cero...}
             Q_Detalle.Active := False ;
             Q_Detalle.SQL.Clear;
             Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,substr(a.mDescripcion,1,255) as mDescripcion,a.sMedida,a.dVentaMN, 0 as dIdFecha, 0 as dCantidad, 0 as dAvanceActual,0 as mes,0 as anio '+
                          'From actividadesxorden a '+
                          'Where a.sContrato =:Contrato And a.sNumeroOrden =:Orden And a.sIdConvenio=:Convenio and a.sTipoActividad = "Actividad" and a.dInstalado = 0 '+
                          'Group By a.sWbs Order By a.sNumeroActividad, a.iItemOrden ');
             Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
             Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
             Q_Detalle.Params.ParamByName('Orden').DataType    := ftString ;
             Q_Detalle.Params.ParamByName('Orden').Value       := frmReportePeriodo.tsNumeroOrden3.Text ;
             Q_Detalle.Open ;

             if Q_Detalle.RecordCount > 0 then
             begin
                 while not Q_Detalle.Eof do
                 begin
                     Detalle.Append;
                     Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                     Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                     Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                     Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                     Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                     Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                     Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                     Detalle.FieldValues['dIdFecha']         := frmReportePeriodo.tdFechaInicial.Date;
                     Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                     Detalle.FieldValues['Mes']              := IntToStr(StrToInt(copy(DateToStr(frmReportePeriodo.tdFechaInicial.Date),4,2)));
                     Detalle.FieldValues['Anio']             := IntToStr(StrToInt(copy(DateToStr(frmReportePeriodo.tdFechaInicial.Date),7,4)));
                     Detalle.Post;
                     Q_Detalle.Next;
                 end;
            end;

             {luego las reportadas...}
             Q_Detalle.Active := False ;
             Q_Detalle.SQL.Clear;
             Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,substr(a.mDescripcion,1,255) as mDescripcion,a.sMedida,a.dVentaMN,a.dCantidad,b.dIdFecha,b.dAvanceActual,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio '+
                        'From bitacoradeactividades b '+
                        'INNER JOIN actividadesxorden a '+
                        'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs And a.sNumeroActividad=b.sNumeroActividad And a.sIdConvenio=:Convenio and b.sNumeroOrden=a.sNumeroOrden) '+
                        'INNER JOIN tiposdemovimiento t '+
                        'ON (b.sContrato=t.sContrato And b.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") '+
                        'Where b.sContrato=:Contrato And b.sNumeroOrden =:Orden And b.dIdFecha <=:Final '+
                        'Group By b.sWbs,b.dIdFecha Order By anio,mes,a.sNumeroActividad,a.iItemOrden,b.dIdFecha');
             Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
             Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
             Q_Detalle.Params.ParamByName('Orden').DataType    := ftString ;
             Q_Detalle.Params.ParamByName('Orden').Value       := frmReportePeriodo.tsNumeroOrden3.Text ;
             Q_Detalle.Params.ParamByName('Final').DataType    := ftDate ;
             Q_Detalle.Params.ParamByName('Final').Value       := frmReportePeriodo.tdFechaFinal.Date ;
             Q_Detalle.Open ;

             if Q_Detalle.RecordCount > 0 then
             begin
                 while not Q_Detalle.Eof do
                 begin
                     Detalle.Append;
                     Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                     Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                     Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                     Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                     Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                     Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                     Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                     Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                     Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                     Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'];
                     Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'];
                     Detalle.Post;
                     Q_Detalle.Next;
                 end;
            end;
        end;

        {Aquiterminan las opciones de Impresion}
        sCadena := '' ;
        Detalle.First;
        mdReporte.Open;
        mdReporte.EmptyTable;
        mdDatosAux.Open;
        mdDatosAux.EmptyTable;
        if Detalle.RecordCount > 0 then
        begin
        While NOT Detalle.Eof Do
        begin
            if sCadena <> (Detalle.FieldByName('sContrato').AsString + '|' + Detalle.FieldByName('sWbs').AsString + '|' + Detalle.FieldByName('Mes').AsString + '|' + Detalle.FieldByName('Anio').AsString) then
            begin
                if mdReporte.State = dsInsert then
                begin
                    mdDatosAux.First;
                    while not mdDatosAux.Eof do
                    begin
                         if (mdReporte.FieldValues['sNumeroActividad'] = mdDatosAux.FieldValues['sNumeroActividad']) and (mdReporte.FieldValues['sWbs'] = mdDatosAux.FieldValues['sWbs']) then
                             mdReporte.FieldValues['dTotal'] := mdReporte.FieldValues['dTotal'] + mdDatosAux.FieldValues['dTotal'];
                         mdDatosAux.Next;
                    end;
                    if (mdReporte.FieldValues['dTotal'] = 99.9999) or (mdReporte.FieldValues['dTotal'] > 100) then
                        mdReporte.FieldValues['dTotal'] := 100;

                    mdDatosAux.Append;
                    mdDatosAux.FieldValues['sContrato']        := mdReporte.FieldValues['sContrato'] ;
                    mdDatosAux.FieldValues['sWbs']             := mdReporte.FieldValues['sWbs'] ;
                    mdDatosAux.FieldValues['sWbsAnterior']     := mdReporte.FieldValues['sWbsAnterior'] ;
                    mdDatosAux.FieldValues['sNumeroActividad'] := mdReporte.FieldValues['sNumeroActividad'] ;
                    mdDatosAux.FieldValues['mDescripcion']     := mdReporte.FieldValues['mDescripcion'] ;
                    mdDatosAux.FieldValues['dCantidad']        := mdReporte.FieldValues['dCantidad'] ;
                    mdDatosAux.FieldValues['sMedida']          := mdReporte.FieldValues['sMedida'] ;
                    mdDatosAux.FieldValues['Mes']              := mdReporte.FieldValues['Mes'] ;
                    mdDatosAux.FieldValues['Anio']             := mdReporte.FieldValues['Anio'] ;
                    mdDatosAux.FieldValues['dTotal']           := mdReporte.FieldValues['dTotal'] ;
                    mdDatosAux.FieldValues['dIdFecha']         := mdReporte.FieldValues['dIdFecha'];

                    for iPos := 1 to 31 do
                       mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ];
                    mdDatosAux.Post;

                    mdReporte.Post ;
                end;

                sCadena := (Detalle.FieldByName('sContrato').AsString + '|' + Detalle.FieldByName('sWbs').AsString + '|' + Detalle.FieldByName('Mes').AsString + '|' + Detalle.FieldByName('Anio').AsString);
                //sCadena := Detalle.FieldValues['sContrato'] + Detalle.FieldValues['sWbs'] + Detalle.FieldValues['Mes'] + + Detalle.FieldValues['Anio'];

                mdReporte.Append;
                mdReporte.FieldValues['sContrato']        := Detalle.FieldValues['sContrato'] ;
                mdReporte.FieldValues['sWbs']             := Detalle.FieldValues['sWbs'] ;
                mdReporte.FieldValues['sWbsAnterior']     := Detalle.FieldValues['sWbsAnterior'] ;
                mdReporte.FieldValues['sNumeroActividad'] := Detalle.FieldValues['sNumeroActividad'] ;
                mdReporte.FieldValues['mDescripcion']     := Detalle.FieldValues['mDescripcion'] ;
                mdReporte.FieldValues['dCantidad']        := Detalle.FieldValues['dCantidad'] ;
                mdReporte.FieldValues['sMedida']          := Detalle.FieldValues['sMedida'] ;
                mdReporte.FieldValues['Mes']              := Detalle.FieldValues['Mes'] ;
                mdReporte.FieldValues['Anio']             := Detalle.FieldValues['Anio'] ;
                mdReporte.FieldValues['dIdFecha']         := Detalle.FieldValues['dIdFecha'];
                mdReporte.FieldValues['dTotal']           := 0 ;

                for iPos := 1 to 31 do
                  mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0 ;
            end ;
            sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(Detalle.FieldByName('dIdFecha').AsDateTime))) ;
            mdReporte.FieldValues [sDia] := Detalle.FieldValues['dAvanceActual'] ;

            mdReporte.FieldValues['dTotal'] := mdReporte.FieldValues['dTotal'] + Detalle.FieldValues['dAvanceActual'] ;
            Detalle.Next ;
        end;
        end;

        {Terminamos de llenar los 2 Rx..}
        if mdReporte.State = dsInsert then
        begin
            mdDatosAux.First;
            while not mdDatosAux.Eof do
            begin
                 if (mdReporte.FieldValues['sNumeroActividad'] = mdDatosAux.FieldValues['sNumeroActividad']) and (mdReporte.FieldValues['sWbs'] = mdDatosAux.FieldValues['sWbs']) then
                     mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + mdDatosAux.FieldValues['dTotal'];
                 mdDatosAux.Next;
            end;

            mdDatosAux.Append;
            mdDatosAux.FieldValues['sContrato']        := mdReporte.FieldValues['sContrato'] ;
            mdDatosAux.FieldValues['sWbs']             := mdReporte.FieldValues['sWbs'] ;
            mdDatosAux.FieldValues['sWbsAnterior']     := mdReporte.FieldValues['sWbsAnterior'] ;
            mdDatosAux.FieldValues['sNumeroActividad'] := mdReporte.FieldValues['sNumeroActividad'] ;
            mdDatosAux.FieldValues['mDescripcion']     := mdReporte.FieldValues['mDescripcion'] ;
            mdDatosAux.FieldValues['dCantidad']        := mdReporte.FieldValues['dCantidad'] ;
            mdDatosAux.FieldValues['sMedida']          := mdReporte.FieldValues['sMedida'] ;
            mdDatosAux.FieldValues['Mes']              := mdReporte.FieldValues['Mes'] ;
            mdDatosAux.FieldValues['Anio']             := mdReporte.FieldValues['Anio'] ;
            mdDatosAux.FieldValues['dTotal']           := mdReporte.FieldValues['dTotal'] ;
            mdDatosAux.FieldValues['dIdFecha']         := mdReporte.FieldValues['dIdFecha'];

            for iPos := 1 to 31 do
                mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ];
            mdDatosAux.Post;

            mdReporte.Post ;
        end;

        mdReporte.EmptyTable;
        mdDatosAux.First;
        MiWbs := '';
        while not mdDatosAux.Eof do
        begin
            {serie de validaciones para buscar mayores, menores o iguales..}
            lContinua := False;
            if chkMayor.Checked then
               if mdDatosAux.FieldValues['dTotal'] >= StrToFloat(condicion) then
                  lContinua := True;

            if (chkMenor.Checked) then
               if mdDatosAux.FieldValues['dTotal'] <= StrToFloat(condicion) then
                  lContinua := True;

            if chkIgual.Checked then
               if mdDatosAux.FieldValues['dTotal'] = StrToFloat(condicion)  then
                  lContinua := True;

            if condicion = '0' then
               lContinua := True;

            if (mdDatosAux.FieldValues['dIdFecha'] >= frmReportePeriodo.tdFechaInicial.Date) and (lContinua) then
            begin
                {Limpiamos el vector..}
                for iPos := 1 to 10 do
                begin
                    ArrayPaquetes[iPos,1] := '';
                    ArrayPaquetes[iPos,2] := '';
                end;

                if MiWbs <> mdDatosAux.FieldValues['sWbsAnterior'] then
                begin
                    MiWbs  := mdDatosAux.FieldValues['sWbsAnterior'];
                    NumPaq := 0;
                    {Determinamos los niveles..}
                    for iPos := 1 to Nivel do
                    begin
                        {Empezamos buscando los paquetes..}
                        Q_Paquetes.Active := False;
                        Q_Paquetes.SQL.Clear;
                        Q_Paquetes.SQL.Add('select sWbsAnterior, sNumeroActividad, mDescripcion from actividadesxorden where sContrato =:Contrato '+
                                           'and sIdConvenio =:Convenio and sNumeroOrden  =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
                        Q_Paquetes.ParamByName('Contrato').AsString := global_contrato;
                        Q_Paquetes.ParamByName('Convenio').AsString := global_convenio;
                        Q_Paquetes.ParamByName('Orden').AsString    := frmReportePeriodo.tsNumeroOrden3.Text;
                        Q_Paquetes.ParamByName('Wbs').AsString      := MiWbs;
                        Q_Paquetes.Open;

                        {Guardamos los niveles en Array..}
                        if Q_Paquetes.RecordCount > 0 then
                        begin
                            MiWbs := Q_Paquetes.FieldValues['sWbsAnterior'];
                            ArrayPaquetes[iPos,1] := Q_Paquetes.FieldValues['sNumeroActividad'];
                            ArrayPaquetes[iPos,2] := Q_Paquetes.FieldValues['mDescripcion'];
                            Inc(NumPaq);
                        end;
                    end;
                    MiWbs := mdDatosAux.FieldValues['sWbsAnterior'];
                 end;

                {Ingresamos los paquetes del Array en orden al RxMemory Data.}
                if NumPaq > 0 then
                begin
                    While NumPaq > 0 do
                    begin
                        mdReporte.Append;
                        mdReporte.FieldValues['sNumeroActividad'] := ArrayPaquetes[NumPaq,1];
                        mdReporte.FieldValues['mDescripcion']     := ArrayPaquetes[NumPaq,2];
                        mdReporte.FieldValues['dCantidad']        := 0 ;
                        mdReporte.FieldValues['sWbs']             := 'Paquete' ;
                        mdReporte.FieldValues['Mes']              := mdDatosAux.FieldValues['Mes'] ;
                        mdReporte.FieldValues['Anio']             := mdDatosAux.FieldValues['Anio'] ;
                        mdReporte.FieldValues['dTotal']           := 0 ;
                        for i := 1 to 31 do
                            mdReporte.FieldValues['dia' + Trim(IntToStr(i)) ] := 0;

                        mdReporte.Post;
                        Dec(NumPaq);
                     end;
                end;

                mdReporte.Append;
                mdReporte.FieldValues['sContrato']        := mdDatosAux.FieldValues['sContrato'] ;
                mdReporte.FieldValues['sWbs']             := mdDatosAux.FieldValues['sWbs'] ;
                mdReporte.FieldValues['sNumeroActividad'] := mdDatosAux.FieldValues['sNumeroActividad'] ;
                mdReporte.FieldValues['mDescripcion']     := mdDatosAux.FieldValues['mDescripcion'] ;
                mdReporte.FieldValues['dCantidad']        := mdDatosAux.FieldValues['dCantidad'] ;
                mdReporte.FieldValues['sMedida']          := mdDatosAux.FieldValues['sMedida'] ;
                mdReporte.FieldValues['Mes']              := mdDatosAux.FieldValues['Mes'] ;
                mdReporte.FieldValues['Anio']             := mdDatosAux.FieldValues['Anio'] ;
                mdReporte.FieldValues['dTotal']           := mdDatosAux.FieldValues['dTotal'] ;

                for iPos := 1 to 31 do
                    mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ];
                mdReporte.Post;
            end;
            mdDatosAux.Next
        end;

        frmReportePeriodo.dsReporte.DataSet := mdReporte;
        frmReportePeriodo.dsReporte.FieldAliases.Clear;

        if mdReporte.RecordCount > 0 then
        begin
            rDiarioFirmas (global_contrato, frmReportePeriodo.tsNumeroOrden3.Text, 'A',frmReportePeriodo.tdFechaFinal.Date , frmReportePeriodo ) ;
            frmReportePeriodo.rReporte.PreviewOptions.MDIChild := True ;
            frmReportePeriodo.rReporte.PreviewOptions.Modal := False ;
            frmReportePeriodo.rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
            frmReportePeriodo.rReporte.PreviewOptions.ShowCaptions := False ;
            frmReportePeriodo.rReporte.Previewoptions.ZoomMode := zmPageWidth ;
            frmReportePeriodo.rReporte.LoadFromFile (global_files + 'DetalleAvancesxPartida.fr3') ;
            frmReportePeriodo.rReporte.ShowReport;
            if not FileExists(global_files + 'DetalleAvancesxPartida.fr3') then
                showmessage('El archivo de reporte DetalleAvancesxPartida.fr3 no existe, notifique al administrador del sistema');
        end
        else begin
            showmessage('No hay datos para imprimir');
        end;
    End ;

    {#########################################################################}
    {Ahora obtenemos los Programados por partida..}
    If frmReportePeriodo.rbProgramado.Checked Then
    Begin
        Detalle.Open;
        Detalle.EmptyTable;

        {Esta opcion es para buscar por partidas...}
        if opcPartidas.Checked then
        begin
            EditPartidas.Text := EditPartidas.Text + ',0';
            Partidas  := EditPartidas.Text;
            lContinua := True;
            while lContinua do
            begin
                if pos(',', EditPartidas.Text) = 0 then
                   lContinua := False
                else
                    Partidas := copy(Partidas, 0, pos(',', Partidas) - 1);
                Q_Detalle.Active := False ;
                Q_Detalle.SQL.Clear;
                Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,mDescripcion,a.sMedida,a.dVentaMN,a.dCantidad,b.dCantidad as dAvanceActual,b.dIdFecha,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio,a.dFechaInicio,a.dFechaFinal '+
                                 'From actividadesxorden a '+
                                 'inner join distribuciondeactividades b '+
                                 'ON(a.sContrato=b.sContrato and a.sIdConvenio=b.sIdConvenio and b.sNumeroOrden=a.sNumeroOrden And a.sWbs=b.sWbs And a.sNumeroActividad=b.sNumeroActividad ) '+
                                 'Where a.sContrato =:Contrato And a.sNumeroOrden=:Orden And a.sIdConvenio=:Convenio and a.sNumeroActividad=:Partida and a.sTipoActividad="Actividad" '+
                                 'Group By b.sWbs,b.dIdFecha Order By anio,mes,a.sNumeroActividad,a.iItemOrden,b.dIdFecha');
                Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
                Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
                Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
                Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
                Q_Detalle.Params.ParamByName('Orden').DataType    := ftString ;
                Q_Detalle.Params.ParamByName('Orden').Value       := frmReportePeriodo.tsNumeroOrden3.Text ;
                Q_Detalle.Params.ParamByName('Partida').DataType  := ftString ;
                Q_Detalle.Params.ParamByName('Partida').Value     := Partidas ;
                Q_Detalle.Open ;

                if Q_Detalle.RecordCount > 0 then
                begin
                    while not Q_Detalle.Eof do
                    begin
                        Detalle.Append;
                        Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                        Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                        Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                        Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                        Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                        Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                        Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                        Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                        Detalle.FieldValues['dFechaInicio']     := Q_Detalle.FieldValues['dFechaInicio'];
                        Detalle.FieldValues['dFechaFinal']      := Q_Detalle.FieldValues['dFechaFinal'];
                        Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                        Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                        Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                        Detalle.Post;
                        Q_Detalle.Next;
                    end;
                end;

                EditPartidas.Text := copy(EditPartidas.Text, pos(',', EditPartidas.Text) + 1, length(EditPartidas.Text));
                Partidas := EditPartidas.Text;
            end;
        end;

        {Esta opcion es para buscar solo partidas reportadas}
        if optReportadas.Checked then
        begin
             Q_Detalle.Active := False ;
             Q_Detalle.SQL.Clear;
             Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad, mDescripcion,a.sMedida,a.dVentaMN,a.dCantidad,b.dCantidad as dAvanceActual,b.dIdFecha,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio,a.dFechaInicio,a.dFechaFinal '+
                               'From actividadesxorden a '+
                               'inner join distribuciondeactividades  b '+
                               'ON (a.sContrato=b.sContrato and a.sIdConvenio = b.sIdConvenio and b.sNumeroOrden=a.sNumeroOrden And a.sWbs=b.sWbs And a.sNumeroActividad=b.sNumeroActividad ) '+
                               'Where a.sContrato =:Contrato And a.sNumeroOrden =:Orden And a.sIdConvenio=:Convenio and a.sTipoActividad = "Actividad" '+
                               'Group By b.sWbs, b.dIdFecha Order By anio, mes, a.sNumeroActividad, a.iItemOrden, b.dIdFecha');
             Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
             Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
             Q_Detalle.Params.ParamByName('Orden').DataType    := ftString ;
             Q_Detalle.Params.ParamByName('Orden').Value       := frmReportePeriodo.tsNumeroOrden3.Text ;
             Q_Detalle.Open ;

             if Q_Detalle.RecordCount > 0 then
             begin
                 while not Q_Detalle.Eof do
                 begin
                     Detalle.Append;
                     Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                     Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                     Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                     Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                     Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                     Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                     Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                     Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                     Detalle.FieldValues['dFechaInicio']     := Q_Detalle.FieldValues['dFechaInicio'];
                     Detalle.FieldValues['dFechaFinal']      := Q_Detalle.FieldValues['dFechaFinal'];
                     Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                     Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                     Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                     Detalle.Post;
                     Q_Detalle.Next;
                 end;
            end;
        end;

        {Esta opcion es para buscar todas las partidas del programa de Trabajo...}
        if optTodas.Checked then
        begin
             //messageDLG('No es posible realizar esta consulta, usar las otras opciones', mtInformation, [mbOk], 0);
             //exit;
             Q_Detalle.Active := False ;
             Q_Detalle.SQL.Clear;
             Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad, mDescripcion,a.sMedida,a.dVentaMN,a.dCantidad,b.dCantidad as dAvanceActual,b.dIdFecha,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio,a.dFechaInicio,a.dFechaFinal '+
                                 'From actividadesxorden a '+
                                 'inner join distribuciondeactividades  b '+
                                 'ON (a.sContrato=b.sContrato and a.sIdConvenio = b.sIdConvenio and b.sNumeroOrden=a.sNumeroOrden And a.sWbs=b.sWbs And a.sNumeroActividad=b.sNumeroActividad ) '+
                                 'Where a.sContrato =:Contrato And a.sNumeroOrden =:Orden And a.sIdConvenio=:Convenio and a.sTipoActividad = "Actividad" '+
                                 'Group By b.sWbs, b.dIdFecha Order By anio, mes, a.sNumeroActividad, a.iItemOrden, b.dIdFecha');
             Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
             Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
             Q_Detalle.Params.ParamByName('Orden').DataType    := ftString ;
             Q_Detalle.Params.ParamByName('Orden').Value       := frmReportePeriodo.tsNumeroOrden3.Text ;
             Q_Detalle.Open ;

             if Q_Detalle.RecordCount > 0 then
             begin
                 while not Q_Detalle.Eof do
                 begin
                     Detalle.Append;
                     Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                     Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                     Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                     Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                     Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                     Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                     Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                     Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                     Detalle.FieldValues['dFechaInicio']     := Q_Detalle.FieldValues['dFechaInicio'];
                     Detalle.FieldValues['dFechaFinal']      := Q_Detalle.FieldValues['dFechaFinal'];
                     Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                     Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'];
                     Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'];
                     Detalle.Post;
                     Q_Detalle.Next;
                 end;
            end;
        end;

        {Aquiterminan las opciones de Impresion}
        sCadena := '' ;
        Detalle.First;
        mdReporte.Open;
        mdReporte.EmptyTable;
        mdDatosAux.Open;
        mdDatosAux.EmptyTable;
        if Detalle.RecordCount > 0 then
        begin
        While NOT Detalle.Eof Do
        begin
            {Procedemos a llenar los RxMemoryData..}
            if sCadena <> (Detalle.FieldByName('sContrato').AsString + '|' + Detalle.FieldByName('sWbs').AsString + '|' + Detalle.FieldByName('Mes').AsString + '|' + Detalle.FieldByName('Anio').AsString) then
            begin
                if mdReporte.State = dsInsert then
                begin
                    mdDatosAux.First;
                    while not mdDatosAux.Eof do
                    begin
                        if (mdReporte.FieldValues['sNumeroActividad'] = mdDatosAux.FieldValues['sNumeroActividad']) and (mdReporte.FieldValues['sWbs'] = mdDatosAux.FieldValues['sWbs']) then
                            mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + mdDatosAux.FieldValues['dTotal'];
                        mdDatosAux.Next;
                    end;

                    {Llenamos Rx Auxiliar..}
                    mdDatosAux.Append;
                    mdDatosAux.FieldValues['sContrato']        := mdReporte.FieldValues['sContrato'] ;
                    mdDatosAux.FieldValues['sWbs']             := mdReporte.FieldValues['sWbs'] ;
                    mdDatosAux.FieldValues['sWbsAnterior']     := mdReporte.FieldValues['sWbsAnterior'] ;
                    mdDatosAux.FieldValues['sNumeroActividad'] := mdReporte.FieldValues['sNumeroActividad'] ;
                    mdDatosAux.FieldValues['mDescripcion']     := mdReporte.FieldValues['mDescripcion'] ;
                    mdDatosAux.FieldValues['dCantidad']        := mdReporte.FieldValues['dCantidad'] ;
                    mdDatosAux.FieldValues['sMedida']          := mdReporte.FieldValues['sMedida'] ;
                    mdDatosAux.FieldValues['Mes']              := mdReporte.FieldValues['Mes'] ;
                    mdDatosAux.FieldValues['Anio']             := mdReporte.FieldValues['Anio'] ;
                    mdDatosAux.FieldValues['dTotal']           := mdReporte.FieldValues['dTotal'] ;
                    mdDatosAux.FieldValues['dIdFecha']         := mdReporte.FieldValues['dIdFecha'];
                    mdDatosAux.FieldValues['dFechaInicio']     := mdReporte.FieldValues['dFechaInicio'];
                    mdDatosAux.FieldValues['dFechaFinal']      := mdReporte.FieldValues['dFechaFinal'];

                    for iPos := 1 to 31 do
                       mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ];

                    mdDatosAux.Post;
                    mdReporte.Post ;
                end;

                sCadena := (Detalle.FieldByName('sContrato').AsString + '|' + Detalle.FieldByName('sWbs').AsString + '|' + Detalle.FieldByName('Mes').AsString + '|' + Detalle.FieldByName('Anio').AsString);
                //sCadena := Detalle.FieldValues['sContrato'] + Detalle.FieldValues['sWbs'] + Detalle.FieldValues['Mes'] + Detalle.FieldValues['Anio'] ;

                {Llenamos Rx Principal..}
                mdReporte.Append;
                mdReporte.FieldValues['sContrato']        := Detalle.FieldValues['sContrato'] ;
                mdReporte.FieldValues['sWbs']             := Detalle.FieldValues['sWbs'] ;
                mdReporte.FieldValues['sWbsAnterior']     := Detalle.FieldValues['sWbsAnterior'] ;
                mdReporte.FieldValues['sNumeroActividad'] := Detalle.FieldValues['sNumeroActividad'] ;
                mdReporte.FieldValues['mDescripcion']     := Detalle.FieldValues['mDescripcion'] ;
                mdReporte.FieldValues['dCantidad']        := Detalle.FieldValues['dCantidad'] ;
                mdReporte.FieldValues['sMedida']          := Detalle.FieldValues['sMedida'] ;
                mdReporte.FieldValues['Mes']              := Detalle.FieldValues['Mes'] ;
                mdReporte.FieldValues['Anio']             := Detalle.FieldValues['Anio'] ;
                mdReporte.FieldValues['dIdFecha']         := Detalle.FieldValues['dIdFecha'];
                mdReporte.FieldValues['dFechaInicio']     := Detalle.FieldValues['dFechaInicio'];
                mdReporte.FieldValues['dFechaFinal']      := Detalle.FieldValues['dFechaFinal'];
                mdReporte.FieldValues['dTotal']           := 0 ;

                for iPos := 1 to 31 do
                   mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0 ;

            end ;
                sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(Detalle.FieldByName('dIdFecha').AsDateTime))) ;
                mdReporte.FieldValues [sDia]  := Detalle.FieldValues['dAvanceActual'] ;

            mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + Detalle.FieldValues['dAvanceActual'] ;
            Detalle.Next ;
         end;
        end;
        {Terminamos de llenar los 2 Rx..}
        if mdReporte.State = dsInsert then
        begin
            mdDatosAux.First;
            while not mdDatosAux.Eof do
            begin
                 if (mdReporte.FieldValues['sNumeroActividad'] = mdDatosAux.FieldValues['sNumeroActividad']) and (mdReporte.FieldValues['sWbs'] = mdDatosAux.FieldValues['sWbs']) then
                     mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + mdDatosAux.FieldValues['dTotal'];
                 mdDatosAux.Next;
            end;
            mdDatosAux.Append;
            mdDatosAux.FieldValues['sContrato']        := mdReporte.FieldValues['sContrato'] ;
            mdDatosAux.FieldValues['sWbs']             := mdReporte.FieldValues['sWbs'] ;
            mdDatosAux.FieldValues['sWbsAnterior']     := mdReporte.FieldValues['sWbsAnterior'] ;
            mdDatosAux.FieldValues['sNumeroActividad'] := mdReporte.FieldValues['sNumeroActividad'] ;
            mdDatosAux.FieldValues['mDescripcion']     := mdReporte.FieldValues['mDescripcion'] ;
            mdDatosAux.FieldValues['dCantidad']        := mdReporte.FieldValues['dCantidad'] ;
            mdDatosAux.FieldValues['sMedida']          := mdReporte.FieldValues['sMedida'] ;
            mdDatosAux.FieldValues['Mes']              := mdReporte.FieldValues['Mes'] ;
            mdDatosAux.FieldValues['Anio']             := mdReporte.FieldValues['Anio'] ;
            mdDatosAux.FieldValues['dTotal']           := mdReporte.FieldValues['dTotal'] ;
            mdDatosAux.FieldValues['dIdFecha']         := mdReporte.FieldValues['dIdFecha'];
            mdDatosAux.FieldValues['dFechaInicio']     := mdReporte.FieldValues['dFechaInicio'];
            mdDatosAux.FieldValues['dFechaFinal']      := mdReporte.FieldValues['dFechaFinal'];

            for iPos := 1 to 31 do
                mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ];
            mdDatosAux.Post;

            mdReporte.Post ;
        end;

        mdReporte.EmptyTable;
        mdDatosAux.First;
        MiWbs := '';
        while not mdDatosAux.Eof do
        begin
              {Limpiamos el vector.. fREEEE }
                for iPos := 1 to 10 do
                begin
                    ArrayPaquetes[iPos,1] := '';
                    ArrayPaquetes[iPos,2] := '';
                end;

                if MiWbs <> mdDatosAux.FieldValues['sWbsAnterior'] then
                begin
                    MiWbs  := mdDatosAux.FieldValues['sWbsAnterior'];
                    NumPaq := 0;
                    {Determinamos los niveles..}
                    for iPos := 1 to Nivel do
                    begin
                        {Empezamos buscando los paquetes..}
                        Q_Paquetes.Active := False;
                        Q_Paquetes.SQL.Clear;
                        Q_Paquetes.SQL.Add('select sWbsAnterior, sNumeroActividad, mDescripcion from actividadesxorden where sContrato =:Contrato '+
                                           'and sIdConvenio =:Convenio and sNumeroOrden  =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
                        Q_Paquetes.ParamByName('Contrato').AsString := global_contrato;
                        Q_Paquetes.ParamByName('Convenio').AsString := global_convenio;
                        Q_Paquetes.ParamByName('Orden').AsString    := frmReportePeriodo.tsNumeroOrden3.Text;
                        Q_Paquetes.ParamByName('Wbs').AsString      := MiWbs;
                        Q_Paquetes.Open;

                        {Guardamos los niveles en Array..}
                        if Q_Paquetes.RecordCount > 0 then
                        begin
                            MiWbs := Q_Paquetes.FieldValues['sWbsAnterior'];
                            ArrayPaquetes[iPos,1] := Q_Paquetes.FieldValues['sNumeroActividad'];
                            ArrayPaquetes[iPos,2] := Q_Paquetes.FieldValues['mDescripcion'];
                            Inc(NumPaq);
                        end;
                    end;
                    MiWbs := mdDatosAux.FieldValues['sWbsAnterior'];
                 end;

                {Ingresamos los paquetes del Array en orden al RxMemory Data.}
                if NumPaq > 0 then
                begin
                    While NumPaq > 0 do
                    begin
                        mdReporte.Append;
                        mdReporte.FieldValues['sNumeroActividad'] := ArrayPaquetes[NumPaq,1];
                        mdReporte.FieldValues['mDescripcion']     := ArrayPaquetes[NumPaq,2];
                        mdReporte.FieldValues['dCantidad']        := 0 ;
                        mdReporte.FieldValues['sWbs']             := 'Paquete' ;
                        mdReporte.FieldValues['Mes']              := mdDatosAux.FieldValues['Mes'] ;
                        mdReporte.FieldValues['Anio']             := mdDatosAux.FieldValues['Anio'] ;
                        mdReporte.FieldValues['dTotal']           := 0 ;
                        for i := 1 to 31 do
                            mdReporte.FieldValues['dia' + Trim(IntToStr(i)) ] := 0;

                        mdReporte.Post;
                        DEC(NumPaq)
                     end;
                end;

                mdReporte.Append;
                mdReporte.FieldValues['sContrato']        := mdDatosAux.FieldValues['sContrato'] ;
                mdReporte.FieldValues['sWbs']             := mdDatosAux.FieldValues['sWbs'] ;
                mdReporte.FieldValues['sNumeroActividad'] := mdDatosAux.FieldValues['sNumeroActividad'] ;
                mdReporte.FieldValues['mDescripcion']     := mdDatosAux.FieldValues['mDescripcion'] ;
                mdReporte.FieldValues['dCantidad']        := mdDatosAux.FieldValues['dCantidad'] ;
                mdReporte.FieldValues['sMedida']          := mdDatosAux.FieldValues['sMedida'] ;
                mdReporte.FieldValues['Mes']              := mdDatosAux.FieldValues['Mes'] ;
                mdReporte.FieldValues['Anio']             := mdDatosAux.FieldValues['Anio'] ;
                mdReporte.FieldValues['dTotal']           := (100 / mdDatosAux.FieldValues['dCantidad']) * mdDatosAux.FieldValues['dTotal'] ;
                mdReporte.FieldValues['dFechaInicio']     := mdDatosAux.FieldValues['dFechaInicio'];
                mdReporte.FieldValues['dFechaFinal']      := mdDatosAux.FieldValues['dFechaFinal'];

                for iPos := 1 to 31 do
                begin
                    if mdDatosAux.FieldValues['dia' +Trim(IntToStr(iPos))] > 0 then
                       mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := (100 / mdDatosAux.FieldValues['dCantidad']) * mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ]
                    else
                       mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ];
                end;
                mdReporte.Post;
            mdDatosAux.Next
        end;

        frmReportePeriodo.dsReporte.DataSet := mdReporte;
        frmReportePeriodo.dsReporte.FieldAliases.Clear;

        if mdReporte.RecordCount > 0 then
        begin
            rDiarioFirmas (global_contrato, frmReportePeriodo.tsNumeroOrden3.Text, 'A',frmReportePeriodo.tdFechaFinal.Date , frmReportePeriodo ) ;
            frmReportePeriodo.rReporte.PreviewOptions.MDIChild := True ;
            frmReportePeriodo.rReporte.PreviewOptions.Modal := False ;
            frmReportePeriodo.rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
            frmReportePeriodo.rReporte.PreviewOptions.ShowCaptions := False ;
            frmReportePeriodo.rReporte.Previewoptions.ZoomMode := zmPageWidth ;
            frmReportePeriodo.rReporte.LoadFromFile (global_files + 'DetalleProgramadoxPartida.fr3') ;
            frmReportePeriodo.rReporte.ShowReport;
            if not FileExists(global_files + 'DetalleProgramadoxPartida.fr3') then
                showmessage('El archivo de reporte DetalleProgramadoxPartida.fr3 no existe, notifique al administrador del sistema');
        end
        else begin
            showmessage('No hay datos para imprimir');
        end;
    End ;

    {########## Ahora obtenemos los Volumenes por Alcances por Partida..############}
    If ((frmReportePeriodo.rbDetalleInstalacion.Checked) or (frmReportePeriodo.rbVolumenGeneral.Checked)) and (frmReportePeriodo.chkFases.Checked) Then
    Begin
        Q_Fases := tzReadOnlyQuery.Create(Self) ;
        Q_Fases.Connection := connection.zConnection ;

        {Opciones de configuraicon de Alcances...}
        if OptNingunAlcance.Checked then
           sAlcanceGrupo := ''
        else
        begin
           sAlcanceGrupo := 'b.iFase,';
           sAlcanceVar   := 'b.iFase,l.sDescripcion,';
           sAlcanceLine  := 'inner join alcancesxactividad l on (l.sContrato = b.sContrato and l.sNumeroActividad = b.sNumeroActividad and l.iFase = b.iFase) ';
        end;

        if OptUltimoAlcance.Checked then
           sAlcance := 'max(iFase) as iFase'
        else
           sAlcance := 'iFase';

        Detalle.Open;
        Detalle.EmptyTable;

        {Esta opcion es para buscar por partidas...}
        if opcPartidas.Checked then
        begin
            EditPartidas.Text := EditPartidas.Text + ',0';
            Partidas  := EditPartidas.Text;
            lContinua := True;
            while lContinua do
            begin
                if pos(',', EditPartidas.Text) = 0 then
                   lContinua := False
                else
                    Partidas := copy(Partidas, 0, pos(',', Partidas) - 1);
                Q_Detalle.Active := False ;
                Q_Detalle.SQL.Clear;
                Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,'+sAlcanceVar+'a.mDescripcion,a.sMedida,a.dVentaMN,'+sCampo+',b.dIdFecha,sum(b.dCantidad) as dAvanceActual,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio '+
                      'From bitacoradealcances b '+
                      'INNER JOIN '+sTabla+' a '+
                      'ON (a.sContrato=b.sContrato '+sLineaWbs+' And a.sNumeroActividad=b.sNumeroActividad And a.sIdConvenio=:Convenio '+sLineaJoin+') '+
                       sAlcanceLine +
                      'Where b.sContrato=:Contrato '+sLineaCondicion+' And b.dIdFecha <=:Final and b.sNumeroActividad =:Partida '+
                      'Group By b.sWbs,'+sAlcanceGrupo+'b.dIdFecha Order By anio,mes,a.sNumeroActividad,a.iItemOrden,b.dIdFecha');
                Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
                Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
                Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
                Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
                if sTabla = ' actividadesxorden ' then
                begin
                    Q_Detalle.Params.ParamByName('Orden').DataType := ftString ;
                    Q_Detalle.Params.ParamByName('Orden').Value    := frmReportePeriodo.tsNumeroOrden3.Text ;
                end;
                Q_Detalle.Params.ParamByName('Final').DataType    := ftDate ;
                Q_Detalle.Params.ParamByName('Final').Value       := frmReportePeriodo.tdFechaFinal.Date ;
                Q_Detalle.Params.ParamByName('Partida').DataType  := ftString ;
                Q_Detalle.Params.ParamByName('Partida').Value     := Partidas ;
                Q_Detalle.Open ;

                sCadena := '';
                if Q_Detalle.RecordCount > 0 then
                begin
                    while not Q_Detalle.Eof do
                    begin
                        {Esto es para mostrar la partida sin fases...}
                        if OptNingunAlcance.Checked then
                        begin
                            Detalle.Append;
                            Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                            Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                            Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                            Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                            Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                            if sTabla = ' actividadesxorden ' then
                               Detalle.FieldValues['dCantidad']     := Q_Detalle.FieldValues['dCantidad']
                            else
                               Detalle.FieldValues['dCantidad']     := Q_Detalle.FieldValues['dCantidadAnexo'];
                            Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                            Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                            Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                            Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                            Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                            Detalle.FieldValues['Fase']             := 1 ;
                            Detalle.FieldValues['sDescripcion']     := '' ;
                            Detalle.Post;
                            Q_Detalle.Next;
                        end;

                        {Esta otra parte mostramos las patidas con sus fases correspondientes..}
                        if (OptUltimoAlcance.Checked) or (optTodosAlcances.Checked) then
                        begin
                            {Esta otra parte mostramos las patidas con sus fases correspondientes..}
                            if sCadena <> Q_Detalle.FieldValues['sNumeroActividad'] then
                            begin
                                Q_Fases.Active := False;
                                Q_Fases.SQL.Clear;
                                Q_Fases.SQL.Add('select '+sAlcance+', sDescripcion from alcancesxactividad where sContrato =:Contrato and sNumeroActividad =:Actividad ');
                                Q_Fases.ParamByName('Contrato').AsString  := Q_Detalle.FieldValues['sContrato'];
                                Q_Fases.ParamByName('Actividad').AsString := Q_Detalle.FieldValues['sNumeroActividad'];
                                Q_Fases.Open;

                                sCadena := Q_Detalle.FieldValues['sNumeroActividad'];
                            end;

                            Q_Fases.First;
                            while not Q_Fases.Eof do
                            begin
                                if Q_Detalle.FieldValues['iFase'] = Q_Fases.FieldValues['iFase'] then
                                begin
                                    Detalle.Append;
                                    Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                                    Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                                    Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                                    Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                                    Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                                    Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                                    Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                                    Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                                    Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                                    Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                                    Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                                    Detalle.FieldValues['Fase']             := Q_Detalle.FieldValues['iFase'] ;
                                    Detalle.FieldValues['sDescripcion']     := Q_Detalle.FieldValues['sDescripcion'] ;
                                    Detalle.Post;
                                end;
                                Q_Fases.Next;
                            end;
                            Q_Detalle.Next;
                        end;

                        {Esta otra parte solo se muestran las fases escritas...}
                        if optNumeroAlcance.Checked then
                        begin
                            AlcanceAux := txtNumeroAlcance.Text + ',0';
                            Alcance    := AlcanceAux;
                            lMuestra   := True;
                            while lMuestra do
                            begin
                                if pos(',',AlcanceAux ) = 0 then
                                  lMuestra := False
                                else
                                    Alcance := copy(Alcance, 0, pos(',', Alcance) - 1);

                                if Q_Detalle.FieldValues['iFase'] = StrToInt(Alcance) then
                                begin
                                    Detalle.Append;
                                    Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                                    Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                                    Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                                    Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                                    Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                                    Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                                    Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                                    Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                                    Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                                    Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                                    Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                                    Detalle.FieldValues['Fase']             := Q_Detalle.FieldValues['iFase'] ;
                                    Detalle.FieldValues['sDescripcion']     := Q_Detalle.FieldValues['sDescripcion'] ;
                                    Detalle.Post;
                                end;
                                AlcanceAux := copy(AlcanceAux, pos(',', AlcanceAux) + 1, length(AlcanceAux));
                                Alcance    := AlcanceAux;
                            end;
                            Q_Detalle.Next;
                        end;
                    end;
                end;

                EditPartidas.Text := copy(EditPartidas.Text, pos(',', EditPartidas.Text) + 1, length(EditPartidas.Text));
                Partidas := EditPartidas.Text;
            end;
        end;

        {Esta opcion es para buscar solo partidas reportadas}
        if optReportadas.Checked then
        begin
             Q_Detalle.Active := False ;
             Q_Detalle.SQL.Clear;
             Q_Detalle.SQL.Add('Select a.sContrato,a.sWbs,a.sWbsAnterior,a.sNumeroActividad,'+sAlcanceVar+'a.mDescripcion,a.sMedida,a.dVentaMN,'+sCampo+',b.dIdFecha,sum(b.dCantidad) as dAvanceActual,MONTH(b.dIdFecha) as mes,YEAR(b.dIdFecha) as anio '+
                      'From bitacoradealcances b '+
                      'INNER JOIN '+sTabla+' a '+
                      'ON (a.sContrato=b.sContrato '+sLineaWbs+' And a.sNumeroActividad=b.sNumeroActividad And a.sIdConvenio=:Convenio '+sLineaJoin+') '+
                       sAlcanceLine +
                      'Where b.sContrato=:Contrato '+sLineaCondicion+' And b.dIdFecha <=:Final '+
                      'Group By b.sWbs,'+sAlcanceGrupo+'b.dIdFecha Order By anio,mes,a.sNumeroActividad,a.iItemOrden,b.dIdFecha');
             Q_Detalle.Params.ParamByName('Contrato').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Contrato').Value    := global_contrato ;
             Q_Detalle.Params.ParamByName('Convenio').DataType := ftString ;
             Q_Detalle.Params.ParamByName('Convenio').Value    := global_convenio ;
             if sTabla = ' actividadesxorden ' then
             begin
                 Q_Detalle.Params.ParamByName('Orden').DataType    := ftString ;
                 Q_Detalle.Params.ParamByName('Orden').Value       := frmReportePeriodo.tsNumeroOrden3.Text ;
             end;
             Q_Detalle.Params.ParamByName('Final').DataType    := ftDate ;
             Q_Detalle.Params.ParamByName('Final').Value       := frmReportePeriodo.tdFechaFinal.Date ;
             Q_Detalle.Open ;

             sCadena := '';
             if Q_Detalle.RecordCount > 0 then
             begin
                 while not Q_Detalle.Eof do
                 begin
                     {Esto es para mostrar la partida sin fases...}
                     if OptNingunAlcance.Checked then
                     begin
                        Detalle.Append;
                        Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                        Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                        Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                        Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                        Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                        if sTabla = ' actividadesxorden ' then
                           Detalle.FieldValues['dCantidad']     := Q_Detalle.FieldValues['dCantidad']
                        else
                           Detalle.FieldValues['dCantidad']     := Q_Detalle.FieldValues['dCantidadAnexo'];
                        Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                        Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                        Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                        Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                        Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                        Detalle.FieldValues['Fase']             := 1 ;
                        Detalle.FieldValues['sDescripcion']     := '' ;
                        Detalle.Post;
                        Q_Detalle.Next;
                     end;

                     {Esta otra parte mostramos las patidas con sus fases correspondientes..}
                     if (OptUltimoAlcance.Checked) or (optTodosAlcances.Checked) then
                     begin
                        if sCadena <> Q_Detalle.FieldValues['sNumeroActividad'] then
                        begin
                            Q_Fases.Active := False;
                            Q_Fases.SQL.Clear;
                            Q_Fases.SQL.Add('select '+sAlcance+', sDescripcion from alcancesxactividad where sContrato =:Contrato and sNumeroActividad =:Actividad ');
                            Q_Fases.ParamByName('Contrato').AsString  := Q_Detalle.FieldValues['sContrato'];
                            Q_Fases.ParamByName('Actividad').AsString := Q_Detalle.FieldValues['sNumeroActividad'];
                            Q_Fases.Open;

                            sCadena := Q_Detalle.FieldValues['sNumeroActividad'];
                        end;

                        Q_Fases.First;
                        while not Q_Fases.Eof do
                        begin
                            if Q_Detalle.FieldValues['iFase'] = Q_Fases.FieldValues['iFase'] then
                            begin
                                Detalle.Append;
                                Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                                Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                                Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                                Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                                Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                                Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                                Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                                Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                                Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                                Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                                Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                                Detalle.FieldValues['Fase']             := Q_Detalle.FieldValues['iFase'] ;
                                Detalle.FieldValues['sDescripcion']     := Q_Detalle.FieldValues['sDescripcion'] ;
                                Detalle.Post;
                            end;
                            Q_Fases.Next;
                        end;
                        Q_Detalle.Next;
                     end;

                     {Esta otra parte solo se muestran las fases escritas...}
                     if optNumeroAlcance.Checked then
                     begin
                         AlcanceAux := txtNumeroAlcance.Text + ',0';
                         Alcance    := AlcanceAux;
                         lMuestra   := True;
                         while lMuestra do
                         begin
                            if pos(',',AlcanceAux ) = 0 then
                               lMuestra := False
                            else
                                Alcance := copy(Alcance, 0, pos(',', Alcance) - 1);

                            if Q_Detalle.FieldValues['iFase'] = StrToInt(Alcance) then
                            begin
                                Detalle.Append;
                                Detalle.FieldValues['sContrato']        := Q_Detalle.FieldValues['sContrato'] ;
                                Detalle.FieldValues['sWbs']             := Q_Detalle.FieldValues['sWbs'] ;
                                Detalle.FieldValues['sWbsAnterior']     := Q_Detalle.FieldValues['sWbsAnterior'] ;
                                Detalle.FieldValues['sNumeroActividad'] := Q_Detalle.FieldValues['sNumeroActividad'] ;
                                Detalle.FieldValues['mDescripcion']     := Q_Detalle.FieldValues['mDescripcion'] ;
                                Detalle.FieldValues['dCantidad']        := Q_Detalle.FieldValues['dCantidad'] ;
                                Detalle.FieldValues['sMedida']          := Q_Detalle.FieldValues['sMedida'] ;
                                Detalle.FieldValues['dIdFecha']         := Q_Detalle.FieldValues['dIdFecha'];
                                Detalle.FieldValues['dAvanceActual']    := Q_Detalle.FieldValues['dAvanceActual'];
                                Detalle.FieldValues['Mes']              := Q_Detalle.FieldValues['Mes'] ;
                                Detalle.FieldValues['Anio']             := Q_Detalle.FieldValues['Anio'] ;
                                Detalle.FieldValues['Fase']             := Q_Detalle.FieldValues['iFase'] ;
                                Detalle.FieldValues['sDescripcion']     := Q_Detalle.FieldValues['sDescripcion'] ;
                                Detalle.Post;
                            end;
                            AlcanceAux := copy(AlcanceAux, pos(',', AlcanceAux) + 1, length(AlcanceAux));
                            Alcance    := AlcanceAux;
                         end;
                         Q_Detalle.Next;
                     end;

                 end;
            end;
        end;

        {Esta opcion es para buscar todas las partidas del programa de Trabajo...}
        if optTodas.Checked then
        begin
             messageDLG('No es posible realizar esta consulta, usar las otras opciones', mtInformation, [mbOk], 0);
             exit;
        end;

        {Aquiterminan las opciones de Impresion}
        sCadena := '' ;
        Detalle.First;
        mdReporte.Open;
        mdReporte.EmptyTable;
        mdDatosAux.Open;
        mdDatosAux.EmptyTable;
        if Detalle.RecordCount > 0 then
        begin
        While NOT Detalle.Eof Do
        begin
            {Procedemos a llenar los RxMemoryData..}
            if sCadena <> (Detalle.FieldByName('sContrato').AsString + '|' + Detalle.FieldByName('sWbs').AsString + '|' + Detalle.FieldByName('Fase').AsString + '|' + Detalle.FieldByName('Mes').AsString + '|' + Detalle.FieldByName('Anio').AsString) then
            begin
                if mdReporte.State = dsInsert then
                begin
                    mdDatosAux.First;
                    while not mdDatosAux.Eof do
                    begin
                        if (mdReporte.FieldValues['sNumeroActividad'] = mdDatosAux.FieldValues['sNumeroActividad']) and (mdReporte.FieldValues['sWbs'] = mdDatosAux.FieldValues['sWbs']) and (mdReporte.FieldValues['Fase'] = mdDatosAux.FieldValues['Fase']) then
                            mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + mdDatosAux.FieldValues['dTotal'];
                        mdDatosAux.Next;
                    end;

                    {Llenamos Rx Auxiliar..}
                    mdDatosAux.Append;
                    mdDatosAux.FieldValues['sContrato']        := mdReporte.FieldValues['sContrato'] ;
                    mdDatosAux.FieldValues['sWbs']             := mdReporte.FieldValues['sWbs'] ;
                    mdDatosAux.FieldValues['sWbsAnterior']     := mdReporte.FieldValues['sWbsAnterior'] ;
                    mdDatosAux.FieldValues['sNumeroActividad'] := mdReporte.FieldValues['sNumeroActividad'] ;
                    mdDatosAux.FieldValues['mDescripcion']     := mdReporte.FieldValues['mDescripcion'] ;
                    mdDatosAux.FieldValues['dCantidad']        := mdReporte.FieldValues['dCantidad'] ;
                    mdDatosAux.FieldValues['sMedida']          := mdReporte.FieldValues['sMedida'] ;
                    mdDatosAux.FieldValues['Mes']              := mdReporte.FieldValues['Mes'] ;
                    mdDatosAux.FieldValues['Anio']             := mdReporte.FieldValues['Anio'] ;
                    mdDatosAux.FieldValues['dTotal']           := mdReporte.FieldValues['dTotal'] ;
                    mdDatosAux.FieldValues['dIdFecha']         := mdReporte.FieldValues['dIdFecha'];
                    mdDatosAux.FieldValues['Fase']             := mdReporte.FieldValues['Fase'] ;
                    mdDatosAux.FieldValues['sDescripcion']     := mdReporte.FieldValues['sDescripcion'] ;

                    for iPos := 1 to 31 do
                       mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ];

                    mdDatosAux.Post;
                    mdReporte.Post ;
                end;

                sCadena := (Detalle.FieldByName('sContrato').AsString + '|' + Detalle.FieldByName('sWbs').AsString + '|' + Detalle.FieldByName('Fase').AsString + '|' + Detalle.FieldByName('Mes').AsString + '|' + Detalle.FieldByName('Anio').AsString);
                //sCadena := Detalle.FieldValues['sContrato'] + Detalle.FieldValues['sWbs'] + IntToStr(Detalle.FieldValues['Fase']) + Detalle.FieldValues['Mes'] + Detalle.FieldValues['Anio'] ;

                {Llenamos Rx Principal..}
                mdReporte.Append;
                mdReporte.FieldValues['sContrato']        := Detalle.FieldValues['sContrato'] ;
                mdReporte.FieldValues['sWbs']             := Detalle.FieldValues['sWbs'] ;
                mdReporte.FieldValues['sWbsAnterior']     := Detalle.FieldValues['sWbsAnterior'] ;
                mdReporte.FieldValues['sNumeroActividad'] := Detalle.FieldValues['sNumeroActividad'] ;
                mdReporte.FieldValues['mDescripcion']     := Detalle.FieldValues['mDescripcion'] ;
                mdReporte.FieldValues['dCantidad']        := Detalle.FieldValues['dCantidad'] ;
                mdReporte.FieldValues['sMedida']          := Detalle.FieldValues['sMedida'] ;
                mdReporte.FieldValues['Mes']              := Detalle.FieldValues['Mes'] ;
                mdReporte.FieldValues['Anio']             := Detalle.FieldValues['Anio'] ;
                mdReporte.FieldValues['dIdFecha']         := Detalle.FieldValues['dIdFecha'];
                mdReporte.FieldValues['Fase']             := Detalle.FieldValues['Fase'] ;
                mdReporte.FieldValues['sDescripcion']     := Detalle.FieldValues['sDescripcion'] ;
                mdReporte.FieldValues['dTotal']           := 0 ;

                for iPos := 1 to 31 do
                   mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := 0 ;

            end ;
                sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(Detalle.FieldByName('dIdFecha').AsDateTime))) ;
                mdReporte.FieldValues [sDia]  := Detalle.FieldValues['dAvanceActual'] ;

            mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + Detalle.FieldValues['dAvanceActual'] ;
            Detalle.Next ;
         end;
        end;
        {Terminamos de llenar los 2 Rx..}
        if mdReporte.State = dsInsert then
        begin
            mdDatosAux.First;
            while not mdDatosAux.Eof do
            begin
                 if (mdReporte.FieldValues['sNumeroActividad'] = mdDatosAux.FieldValues['sNumeroActividad']) and (mdReporte.FieldValues['sWbs'] = mdDatosAux.FieldValues['sWbs']) and (mdReporte.FieldValues['Fase'] = mdDatosAux.FieldValues['Fase']) then
                     mdReporte.FieldValues['dTotal']  := mdReporte.FieldValues['dTotal']  + mdDatosAux.FieldValues['dTotal'];
                 mdDatosAux.Next;
            end;
            mdDatosAux.Append;
            mdDatosAux.FieldValues['sContrato']        := mdReporte.FieldValues['sContrato'] ;
            mdDatosAux.FieldValues['sWbs']             := mdReporte.FieldValues['sWbs'] ;
            mdDatosAux.FieldValues['sWbsAnterior']     := mdReporte.FieldValues['sWbsAnterior'] ;
            mdDatosAux.FieldValues['sNumeroActividad'] := mdReporte.FieldValues['sNumeroActividad'] ;
            mdDatosAux.FieldValues['mDescripcion']     := mdReporte.FieldValues['mDescripcion'] ;
            mdDatosAux.FieldValues['dCantidad']        := mdReporte.FieldValues['dCantidad'] ;
            mdDatosAux.FieldValues['sMedida']          := mdReporte.FieldValues['sMedida'] ;
            mdDatosAux.FieldValues['Mes']              := mdReporte.FieldValues['Mes'] ;
            mdDatosAux.FieldValues['Anio']             := mdReporte.FieldValues['Anio'] ;
            mdDatosAux.FieldValues['dTotal']           := mdReporte.FieldValues['dTotal'] ;
            mdDatosAux.FieldValues['dIdFecha']         := mdReporte.FieldValues['dIdFecha'];
            mdDatosAux.FieldValues['Fase']             := mdReporte.FieldValues['Fase'] ;
            mdDatosAux.FieldValues['sDescripcion']     := mdReporte.FieldValues['sDescripcion'] ;

            for iPos := 1 to 31 do
                mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ];
            mdDatosAux.Post;

            mdReporte.Post ;
        end;

        mdReporte.EmptyTable;
        mdDatosAux.First;
        MiWbs := '';
        while not mdDatosAux.Eof do
        begin
            if mdDatosAux.FieldValues['dIdFecha'] >= frmReportePeriodo.tdFechaInicial.Date then
            begin
                {Limpiamos el vector..}
                for iPos := 1 to 10 do
                begin
                    ArrayPaquetes[iPos,1] := '';
                    ArrayPaquetes[iPos,2] := '';
                end;

                if MiWbs <> mdDatosAux.FieldValues['sWbsAnterior'] then
                begin
                    MiWbs  := mdDatosAux.FieldValues['sWbsAnterior'];
                    NumPaq := 0;
                    {Determinamos los niveles..}
                    for iPos := 1 to Nivel do
                    begin
                        {Empezamos buscando los paquetes..}
                        Q_Paquetes.Active := False;
                        Q_Paquetes.SQL.Clear;
                        Q_Paquetes.SQL.Add('select sWbsAnterior, sNumeroActividad, mDescripcion from '+sTabla+' where sContrato =:Contrato '+
                                           'and sIdConvenio =:Convenio '+sLineaCondicion2+' and sWbs =:Wbs and sTipoActividad = "Paquete" ');
                        Q_Paquetes.ParamByName('Contrato').AsString := global_contrato;
                        Q_Paquetes.ParamByName('Convenio').AsString := global_convenio;
                        if sTabla = ' actividadesxorden ' then
                           Q_Paquetes.ParamByName('Orden').AsString := frmReportePeriodo.tsNumeroOrden3.Text;
                        Q_Paquetes.ParamByName('Wbs').AsString      := MiWbs;
                        Q_Paquetes.Open;

                        {Guardamos los niveles en Array..}
                        if Q_Paquetes.RecordCount > 0 then
                        begin
                            MiWbs := Q_Paquetes.FieldValues['sWbsAnterior'];
                            ArrayPaquetes[iPos,1] := Q_Paquetes.FieldValues['sNumeroActividad'];
                            ArrayPaquetes[iPos,2] := Q_Paquetes.FieldValues['mDescripcion'];
                            Inc(NumPaq);
                        end;
                    end;
                    MiWbs := mdDatosAux.FieldValues['sWbsAnterior'];
                 end;

                {Ingresamos los paquetes del Array en orden al RxMemory Data.}
                if NumPaq > 0 then
                begin
                    While NumPaq > 0 do
                    begin
                        mdReporte.Append;
                        mdReporte.FieldValues['sNumeroActividad'] := ArrayPaquetes[NumPaq,1];
                        mdReporte.FieldValues['mDescripcion']     := ArrayPaquetes[NumPaq,2];
                        mdReporte.FieldValues['dCantidad']        := 0 ;
                        mdReporte.FieldValues['sWbs']             := 'Paquete' ;
                        mdReporte.FieldValues['Mes']              := mdDatosAux.FieldValues['Mes'] ;
                        mdReporte.FieldValues['Anio']             := mdDatosAux.FieldValues['Anio'] ;
                        mdReporte.FieldValues['dTotal']           := 0 ;
                        for i := 1 to 31 do
                            mdReporte.FieldValues['dia' + Trim(IntToStr(i)) ] := 0;

                        mdReporte.Post;
                        DEC(NumPaq)
                     end;
                end;

                mdReporte.Append;
                mdReporte.FieldValues['sContrato']        := mdDatosAux.FieldValues['sContrato'] ;
                mdReporte.FieldValues['sWbs']             := mdDatosAux.FieldValues['sWbs'] ;
                mdReporte.FieldValues['sNumeroActividad'] := mdDatosAux.FieldValues['sNumeroActividad'] ;
                mdReporte.FieldValues['mDescripcion']     := mdDatosAux.FieldValues['mDescripcion'] ;
                mdReporte.FieldValues['dCantidad']        := mdDatosAux.FieldValues['dCantidad'] ;
                mdReporte.FieldValues['sMedida']          := mdDatosAux.FieldValues['sMedida'] ;
                mdReporte.FieldValues['Mes']              := mdDatosAux.FieldValues['Mes'] ;
                mdReporte.FieldValues['Anio']             := mdDatosAux.FieldValues['Anio'] ;
                mdReporte.FieldValues['dTotal']           := mdDatosAux.FieldValues['dTotal'] ;
                mdReporte.FieldValues['Fase']             := mdDatosAux.FieldValues['Fase'] ;
                mdReporte.FieldValues['sDescripcion']     := mdDatosAux.FieldValues['sDescripcion'] ;

                for iPos := 1 to 31 do
                    mdReporte.FieldValues['dia' + Trim(IntToStr(iPos)) ] := mdDatosAux.FieldValues['dia' + Trim(IntToStr(iPos)) ];
                mdReporte.Post;
            end;
            mdDatosAux.Next
        end;

        frmReportePeriodo.dsReporte.DataSet := mdReporte;
        frmReportePeriodo.dsReporte.FieldAliases.Clear;

        if mdReporte.RecordCount > 0 then
        begin
            rDiarioFirmas (global_contrato, frmReportePeriodo.tsNumeroOrden3.Text, 'A',frmReportePeriodo.tdFechaFinal.Date , frmReportePeriodo ) ;
            frmReportePeriodo.rReporte.PreviewOptions.MDIChild := True ;
            frmReportePeriodo.rReporte.PreviewOptions.Modal := False ;
            frmReportePeriodo.rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
            frmReportePeriodo.rReporte.PreviewOptions.ShowCaptions := False ;
            frmReportePeriodo.rReporte.Previewoptions.ZoomMode := zmPageWidth ;
            frmReportePeriodo.rReporte.LoadFromFile (global_files + 'DetalleInstalacionFases.fr3') ;
            frmReportePeriodo.rReporte.ShowReport;
            if not FileExists(global_files + 'DetalleInstalacionFases.fr3') then
                showmessage('El archivo de reporte DetalleInstalacionFases.fr3 no existe, notifique al administrador del sistema');
        end
        else begin
            showmessage('No hay datos para imprimir');
        end;
    End ;

  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Opciones de Reporte', 'Al aceptar', 0);
    end;
  end;
end;

procedure TfrmOpcionesAvances.ComboPorcientoChange(Sender: TObject);
var
   cad : string;
   num : integer;
begin
     if pos('%', ComboPorciento.Text) <> 0 then
     begin
         cad := copy(Comboporciento.Text, 0 , pos('%', ComboPorciento.Text) - 2);
         try
             num := StrToInt(cad);
         Except
              messageDLG('Porcentaje Incorrecto!', mtError, [mbOk], 0);
              ComboPorciento.SetFocus;
         end;
     end
     else
     begin
         try
             num := StrToInt(cad);
         Except
              messageDLG('Porcentaje Incorrecto!', mtError, [mbOk], 0);
              ComboPorciento.SetFocus;
         end;
     end;
end;

procedure TfrmOpcionesAvances.EditPaquetesEnter(Sender: TObject);
begin
      optNumeroPaquetes.Checked := True;
end;

procedure TfrmOpcionesAvances.EditPartidasEnter(Sender: TObject);
begin
     opcPartidas.Checked := True;
end;

procedure TfrmOpcionesAvances.FormShow(Sender: TObject);
var
   i : integer;
begin
     if (frmReportePeriodo.rbDetalleInstalacion.Checked) or (frmReportePeriodo.rbProgramado.Checked) then
     begin
         chkMayor.Enabled := False;
         chkMenor.Enabled := False;
         chkIgual.Enabled := False;
         ComboPorciento.Enabled := False;
     end;

     if frmReportePeriodo.chkFases.Checked then
        pgAlcances.Enabled := True
     else
        pgAlcances.Enabled := False;

     ComboPorciento.Clear;
     for i := 1 to 100 do
         ComboPorciento.Items.Add(IntToStr(i) + ' %');

     ComboPorciento.ItemIndex := 0;

     if frmReportePeriodo.rbProgramado.Checked  then
     begin
      OPtTodas.checked:=true;
      optReportadas.enabled:=false;

     end;
end;

procedure TfrmOpcionesAvances.opcPartidasExit(Sender: TObject);
begin
    EditPartidas.Text := '';
end;

procedure TfrmOpcionesAvances.optNumeroAlcanceExit(Sender: TObject);
begin
     txtNumeroAlcance.Text := '';
end;

procedure TfrmOpcionesAvances.txtIsometricoEnter(Sender: TObject);
begin
     chkespPaquete.Checked := True;
end;

procedure TfrmOpcionesAvances.txtNumeroAlcanceEnter(Sender: TObject);
begin
    optNumeroAlcance.Checked := True;
end;

end.
