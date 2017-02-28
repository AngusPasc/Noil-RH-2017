unit frm_PrintReportesDiarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  frxClass, frxDBSet, DB, StrUtils, Global, frm_connection, StdCtrls, ExtCtrls, Mask, frm_barra,
  DBCtrls, Grids, DBGrids, ADODB, RxLookup, Buttons, ZAbstractTable, UnitExcepciones,
  RXToolEdit, RXCurrEdit, RXDBCtrl, Utilerias, UReporteDiarioMix, udbgrid,
  DBDateTimePicker, JvBaseDlg, JvSelectDirectory, sMaskEdit, sCustomComboEdit,
  sTooledit, masUtilerias, Gauges, rxSpeedbar, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmPrintReportesDiarios = class( TForm )
    ds_reportediario: TDataSource;
    ReporteDiario: TZReadOnlyQuery;
    rDiario: TfrxReport;
    dsApoyo: TfrxDBDataset;
    QryReporteFotografico: TZQuery;
    PanelProgress: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    BarraEstado: TProgressBar;
    PopupMenu1: TPopupMenu;
    popValida: TMenuItem;
    popAutoriza: TMenuItem;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_reportes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    pnl1: TPanel;
    Progress: TGauge;
    btn1: TBitBtn;
    Directorio: TsDirectoryEdit;
    ts1: TEdit;
    pnl2: TPanel;
    ts2: TEdit;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    ts3: TEdit;
    tsOrdenes: TComboBox;
    edit4: TEdit;
    pnl3: TPanel;
    SpeedBar1: TSpeedBar;
    SpeedbarSection2: TSpeedbarSection;
    btnTiempoMuerto: TSpeedItem;
    btnFirmas: TSpeedItem;
    btnPermisos: TSpeedItem;
    btnEmbarque: TSpeedItem;
    btnVolumenes: TSpeedItem;
    btnAlcances: TSpeedItem;
    btnPersonalEquipo: TSpeedItem;
    procedure FormShow( Sender: TObject );
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tsOrdenesEnter(Sender: TObject);
    procedure tsOrdenesKeyPress(Sender: TObject; var Key: Char);
    procedure DirectorioExit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure popValidaClick(Sender: TObject);

    procedure procAjustaBitacoraAlcances(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
    procedure procAjustaBitacoraActividades(sParamContrato, sParamOrden, sParamTurno, sParamConvenio: string; dParamFecha: tDate);
    procedure Ajuste(dParamContrato, dParamConvenio, dParamOrden: string; dParamFecha: tDate);
    procedure procDelInsAvEmbarque(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);

    procedure PopupMenu1Popup(Sender: TObject);
    procedure popAutorizaClick(Sender: TObject);
    procedure btnTiempoMuertoClick(Sender: TObject);
    procedure ReporteDiarioAfterScroll(DataSet: TDataSet);
    procedure btnFirmasClick(Sender: TObject);
    procedure btnPermisosClick(Sender: TObject);
    procedure btnEmbarqueClick(Sender: TObject);
    procedure btnVolumenesClick(Sender: TObject);
    procedure btnAlcancesClick(Sender: TObject);
    procedure btnPersonalEquipoClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Entre             : Boolean ;
  frmPrintReportesDiarios  : TfrmPrintReportesDiarios;
  qryGetAcumulado   : TZReadOnlyQuery;
  UtGrid:TicDbGrid;
  iGrid: Integer;
  SavePlace: TBookmark;

  lPoder : boolean;
implementation

uses frm_ReporteDiarioTurno, frm_seguridad, frm_jornadasdiarias, frm_inteligent,
  frm_firmantes, frm_tramitedepermisos, frm_entradaanex,
  frm_bitacoradepartamental_2, frm_bitacoraxalcance, frm_bitacora2,
  frm_bitacoraOptativa;

{$R *.dfm}


procedure TfrmPrintReportesDiarios.btn1Click(Sender: TObject);
var
   Progreso, TotalProgreso : double;
begin
     if directorio.Text = '' then
     begin
         messageDLG('Seleccione un directorio!', mtInformation, [mbOk], 0);
         exit;
     end;

     global_directorio     := directorio.Text;
     global_reportes_fecha := True;
     PanelProgress.Visible := True;
     BarraEstado.Position  := 0;
     Label15.Caption       := 'Guardando reportes...';

     ReporteDiario.First;
     while not ReporteDiario.Eof do
     begin
          {Movimiento de la Barra..}
          Progreso := (1 / (ReporteDiario.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

          try
             if reportediario.FieldValues['sTipoObra'] = 'PROGRAMADA' then
                  procReporteDiarioCotemarProg(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmPrintReportesDiarios, rDiario.OnGetValue, Nil)
              Else
                  if reportediario.FieldValues['sTipoObra'] = 'OPTATIVA' then
                      procReporteDiarioCotemarOpt(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmPrintReportesDiarios, rDiario.OnGetValue )
                  Else
                      if reportediario.FieldValues['sTipoObra'] = 'BARCO' then
                         procReporteBarco(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['dIdFecha'], frmPrintReportesDiarios, rDiario.OnGetValue )
                      else
                          if reportediario.FieldValues['sTipoObra'] = 'MIXTA' then begin
                             if ReporteDiario.RecordCount > 0 then  begin
                                QryReporteFotografico.Active := False;
                                QryReporteFotografico.SQL.Clear;
                                QryReporteFotografico.SQL.Add('Select sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion From reportefotografico ' +
                                'Where sContrato = :Contrato And sNumeroReporte = :Reporte And lIncluye = "Si" Order By iImagen');
                                QryReporteFotografico.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sContrato').AsString;
                                QryReporteFotografico.ParamByName('Reporte').AsString  := ReporteDiario.FieldByName('sNumeroReporte').AsString;
                                QryReporteFotografico.Open;
                                procReporteDiarioCotemarMix(Self, rDiarioGetValue, Nil, ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldByName('sNumeroOrden').AsString, ReporteDiario.FieldByName('sNumeroReporte').AsString, ReporteDiario.FieldByName('sIdConvenio').AsString, ReporteDiario.FieldByName('dIdFecha').AsDateTime, ReporteDiario.FieldValues['sIdTurno'], 'Screen');
                             end;
                          end;
           except
              on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Impresion de Reportes Diarios(Barco)', 'Al imprimir reporte diario', 0);
              end;
           end;

         ReporteDiario.Next;
     end;
     global_reportes_fecha := False;
     global_directorio     := '';
     PanelProgress.Visible := False;
     messageDLG('Proceso Terminado con Exito!',mtInformation, [mbOk], 0);
end;

procedure TfrmPrintReportesDiarios.btnAlcancesClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    Begin
		    Application.CreateForm(TfrmBitacoraxAlcance, frmBitacoraxAlcance);
        try
          frmBitacoraxAlcance.showModal;
        finally
          freeandnil(frmBitacoraxAlcance);
        end;
    End;
end;

procedure TfrmPrintReportesDiarios.btnEmbarqueClick(Sender: TObject);
begin
    Application.CreateForm(TfrmEntradaAnex, frmEntradaAnex);
    frmEntradaAnex.Show;
end;

procedure TfrmPrintReportesDiarios.btnFirmasClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    Begin
        Application.CreateForm(TfrmFirmas, frmFirmas);
        frmfirmas.ShowModal;
    End;
end;

procedure TfrmPrintReportesDiarios.btnPermisosClick(Sender: TObject);
begin
    Application.CreateForm(TfrmTramitedePermisos, frmTramitedePermisos);
    frmTramitedePermisos.ShowModal;
end;

procedure TfrmPrintReportesDiarios.btnPersonalEquipoClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    begin
        //Cambio de Variables globales de personal y equipo..
        Connection.QryBusca2.Active := False ;
        Connection.QryBusca2.SQL.Clear ;
        Connection.QryBusca2.SQL.Add('Select lCobraPersonal, lJorPu, lCobraEquipo, sTipoObra From contratos Where sContrato = :Contrato') ;
        Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca2.Params.ParamByName('Contrato').Value    := param_Global_Contrato ;
        Connection.QryBusca2.Open ;
        if Connection.QryBusca2.RecordCount > 0 then
        Begin
          Global_Optativa  := Connection.QryBusca2.FieldValues['sTipoObra'] ;
          Global_Personal  := Connection.QryBusca2.FieldValues['lCobraPersonal'] ;
          Global_Equipo    := Connection.QryBusca2.FieldValues['lCobraEquipo'] ;
          Global_PuJor     := Connection.QryBusca2.FieldValues['lJorPu'] ;
        End;

        //Traemos las descripciones y descripciones de contrato de acuerdo al parametro..
        ActualizaConfiguraciones(param_global_contrato);
        if Connection.contrato.FieldValues['sTipoObra'] = 'PROGRAMADA' Then
        begin
          Application.CreateForm(TfrmBitacora2, frmBitacora2);
          frmBitacora2.ShowModal;
        end
        Else
        begin
          Application.CreateForm(TfrmBitacoraOptativa, frmBitacoraOptativa);
          frmBitacoraOptativa.showModal;
        end;
        //Regresamos las descripciones y descripciones de contrato de acuerdo al parametro..
        ActualizaConfiguraciones(global_contrato);

        //Regresamos los valores a las Variables globales de personal y equipo..
        Connection.QryBusca2.Active := False ;
        Connection.QryBusca2.SQL.Clear ;
        Connection.QryBusca2.SQL.Add('Select lCobraPersonal, lJorPu, lCobraEquipo, sTipoObra From contratos Where sContrato = :Contrato') ;
        Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca2.Params.ParamByName('Contrato').Value    := Global_Contrato ;
        Connection.QryBusca2.Open ;
        if Connection.QryBusca2.RecordCount > 0 then
        Begin
          Global_Optativa  := Connection.QryBusca2.FieldValues['sTipoObra'] ;
          Global_Personal  := Connection.QryBusca2.FieldValues['lCobraPersonal'] ;
          Global_Equipo    := Connection.QryBusca2.FieldValues['lCobraEquipo'] ;
          Global_PuJor     := Connection.QryBusca2.FieldValues['lJorPu'] ;
        End;
    end;
end;

procedure TfrmPrintReportesDiarios.btnTiempoMuertoClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    Begin
        Application.CreateForm(Tfrmjornadasdiarias, frmjornadasdiarias);
        frmjornadasdiarias.ShowModal;
    End
end;

procedure TfrmPrintReportesDiarios.btnVolumenesClick(Sender: TObject);
begin
    Application.CreateForm(TfrmBitacoraDepartamental_2,frmBitacoraDepartamental_2);
    If ReporteDiario.RecordCount > 0 Then
        frmBitacoraDepartamental_2.showmodal
end;

procedure TfrmPrintReportesDiarios.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
begin
   //Antes de imprimir verificamos si existen reportes sin validar anteriores al reporte diario,,
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select sContrato From reportediario Where sContrato = :Contrato And dIdFecha < :Fecha and lStatus <> "Autorizado" ');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Contrato').Value    := reportediario.FieldValues['sContrato'] ;
    Connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
    Connection.QryBusca.Params.ParamByName('Fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
    Connection.QryBusca.Open ;

     if Connection.QryBusca.RecordCount > 0 then
       messageDLG('Existen Reportes Diarios en Estatus "NO AUTORIZADO", En la Orden: '+reportediario.FieldValues['sContrato']+' Puede generar Diferencias en Avances Fisicos.', mtWarning, [mbOk], 0);

    //Consultamos la configuracion para actualizar variables globales
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select lCobraPersonal, lCobraEquipo, ljorpu from contratos where sContrato =:Contrato');
    connection.QryBusca.ParamByName('Contrato').AsString := reportediario.FieldValues['sContrato'];
    connection.QryBusca.Open;

    Global_Personal := connection.QryBusca.FieldValues['lCobraPersonal'];
    Global_Equipo   := connection.QryBusca.FieldValues['lCobraEquipo'];
    Global_PuJor    := connection.QryBusca.FieldValues['ljorpu'];
    try
       if reportediario.FieldValues['sTipoObra'] = 'PROGRAMADA' then
            procReporteDiarioCotemarProg(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmPrintReportesDiarios, rDiario.OnGetValue, Nil)
        Else
            if reportediario.FieldValues['sTipoObra'] = 'OPTATIVA' then
                procReporteDiarioCotemarOpt(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmPrintReportesDiarios, rDiario.OnGetValue )
            Else
                if reportediario.FieldValues['sTipoObra'] = 'BARCO' then
                   procReporteBarco(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['dIdFecha'], frmPrintReportesDiarios, rDiario.OnGetValue )
                else
                    if reportediario.FieldValues['sTipoObra'] = 'MIXTA' then begin
                      if ReporteDiario.RecordCount > 0 then  begin
                        QryReporteFotografico.Active := False;
                        QryReporteFotografico.SQL.Clear;
                        QryReporteFotografico.SQL.Add('Select sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion From reportefotografico ' +
                        'Where sContrato = :Contrato And sNumeroReporte = :Reporte And lIncluye = "Si" Order By iImagen');
                        QryReporteFotografico.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sContrato').AsString;
                        QryReporteFotografico.ParamByName('Reporte').AsString  := ReporteDiario.FieldByName('sNumeroReporte').AsString;
                        QryReporteFotografico.Open;
                        procReporteDiarioCotemarMix(Self, rDiarioGetValue, Nil, ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldByName('sNumeroOrden').AsString, ReporteDiario.FieldByName('sNumeroReporte').AsString, ReporteDiario.FieldByName('sIdConvenio').AsString, ReporteDiario.FieldByName('dIdFecha').AsDateTime, ReporteDiario.FieldValues['sIdTurno'], 'Screen');
                      end;
                    end;
    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Impresion de Reportes Diarios(Barco)', 'Al imprimir reporte diario', 0);
      end;
    end;
end;

procedure TfrmPrintReportesDiarios.DirectorioExit(Sender: TObject);
begin
     if trim(Directorio.Text) = '' then
        edit4.Text := 'Seleccione Directorio:'
     else
        Edit4.Text := 'Directorio Seleccionado:';
end;

procedure TfrmPrintReportesDiarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    //Consultamos la configuracion para actualizar variables globales
   connection.QryBusca.Active := False;
   connection.QryBusca.SQL.Clear;
   connection.QryBusca.SQL.Add('select lCobraPersonal, lCobraEquipo, ljorpu from contratos where sContrato =:Contrato');
   connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
   connection.QryBusca.Open;

   Global_Personal := connection.QryBusca.FieldValues['lCobraPersonal'];
   Global_Equipo   := connection.QryBusca.FieldValues['lCobraEquipo'];
   Global_PuJor    := connection.QryBusca.FieldValues['ljorpu'];

   Action := caFree;
end;

procedure TfrmPrintReportesDiarios.FormShow( Sender: TObject );
begin
   
   tdFechaInicio.Date := Date;
   tdFechaFinal.Date  := Date;

   connection.QryBusca.Active := False;
   connection.QryBusca.SQL.Clear;
   connection.QryBusca.SQL.Add('select sContrato from contratos');
   connection.QryBusca.Open;

   tsOrdenes.Items.Clear;
   tsOrdenes.Items.Add('<<Todas>>');
   while not connection.QryBusca.Eof do
   begin
       tsOrdenes.Items.Add(connection.QryBusca.FieldValues['sContrato']);
       connection.QryBusca.Next;
   end;

   ReporteDiario.Active := False ;
   ReporteDiario.Params.ParamByName('fechaI').DataType   := ftDate ;
   ReporteDiario.Params.ParamByName('fechaI').Value      := tdFechaInicio.Date ;
   ReporteDiario.Params.ParamByName('fechaF').DataType   := ftDate ;
   ReporteDiario.Params.ParamByName('fechaF').Value      := tdFechaFinal.Date ;
   ReporteDiario.Params.ParamByName('Contrato').DataType := ftString ;
   ReporteDiario.Params.ParamByName('Contrato').Value    := '%';
   ReporteDiario.Open ;

end;


procedure TfrmPrintReportesDiarios.rDiarioGetValue(const VarName: string;
  var Value: Variant);
begin
    //Aqui consultamos que las ordenes esten autorizadas
   connection.QryBusca.Active := False;
   connection.QryBusca.SQL.Clear;
   connection.QryBusca.SQL.Add('select * from reportediario where dIdFecha =:fecha and lStatus  <> "Autorizado" '+
                                'and sContrato <> :Contrato');
   connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
   connection.QryBusca.ParamByName('Fecha').AsDate      := ReporteDiario.FieldValues['dIdFecha'];
   connection.QryBusca.Open;

   if connection.QryBusca.RecordCount > 0 then
   begin
       if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
          Value := 'No';
   end
   else
   begin
       if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
           Value := 'Si';
   end;

   If CompareText(VarName, 'FECHA_REPORTE') = 0 then
       Value := global_fecha_barco ;
   If CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
       Value := global_dias_por_transcurrir ;
   If CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
       Value := global_dias_transcurridos ;

   If CompareText(VarName, 'TITULO_CENTRO') = 0 then
      Value := sTituloCentro ;

   If CompareText(VarName, 'ORDEN') = 0 then
      Value := 'DE LA ORDEN DE TRABAJO ' + ReporteDiario.FieldValues ['sNumeroOrden'] ;

   If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := ReporteDiario.FieldValues['dIdFecha']  ;

   If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := ReporteDiario.FieldValues['dIdFecha']  ;

   If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

   If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

   If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

   If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


   If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

   If CompareText(VarName, 'SUPERVISOR') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

   If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

   If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSuperIntendente
      Else
          Value := sPuestoSuperIntendentePatio ;

   If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisor
      Else
          Value := sPuestoSupervisorPatio ;

   If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisorTierra
      Else
          Value := sPuestoResidente ;


   If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;

   If CompareText(VarName, 'Oficio_Orden') = 0 then
      Value := sFolio  ;

   If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := sPlataformaOrden  ;

   If CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
      Value := sJornadasSuspendidas  ;

   If CompareText(VarName, 'TURNO') = 0 then
      Value := sDescripcionTurno ;

   If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := dRealGlobalAnterior ;
   If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := dRealGlobalActual ;
   If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := dRealGlobalAcumulado ;
   If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := dProgramadoGlobalAnterior ;
   If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := dProgramadoGlobalActual ;
   If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := dProgramadoGlobalAcumulado;


   If CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
      Value := dRealOrdenAnterior ;
   If CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
      Value := dRealOrdenActual ;
   If CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
      Value := dRealOrdenAcumulado ;
   If CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAnterior ;
   If CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
      Value := dProgramadoOrdenActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAcumulado ;

  //***********************BRITO 26/01/11***************************************
  if QryReporteFotografico.Active then begin
    if QryReporteFotografico.RecordCount > 0 then begin
      If CompareText(VarName, 'HAYFOTOS') = 0 then
        Value := 'SI' ;
    end
    else begin
      If CompareText(VarName, 'HAYFOTOS') = 0 then
        Value := 'NO' ;
    end;
  end;

  If CompareText(VarName, 'REPDIRC17') = 0 then
      Value := global_RepDirC17 ;
  //***********************BRITO 26/01/11***************************************
end;

procedure TfrmPrintReportesDiarios.ReporteDiarioAfterScroll(DataSet: TDataSet);
begin
    If Reportediario.RecordCount > 0 then
    Begin
        param_global_contrato := reportediario.FieldValues['sContrato'];
        global_fecha := ReporteDiario.FieldValues['dIdFecha'] ;
        global_orden := ReporteDiario.FieldValues['sNumeroOrden'] ;
        global_turno_reporte := ReporteDiario.FieldValues['sIdTurno'] ;
        convenio_reporte     := ReporteDiario.FieldValues['sIdConvenio'] ;
    End;
end;

procedure TfrmPrintReportesDiarios.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaInicio.Color := Global_color_entrada
end;

procedure TfrmPrintReportesDiarios.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        grid_reportes.setfocus
end;

procedure TfrmPrintReportesDiarios.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := Global_color_entrada
end;

procedure TfrmPrintReportesDiarios.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := Global_color_salida ;
    tdFechaFinal.Color  := Global_color_salida ;
    tsOrdenes.Color     := Global_Color_salida ;
    ReporteDiario.Active := False ;
    ReporteDiario.Params.ParamByName('fechaI').DataType   := ftDate ;
    ReporteDiario.Params.ParamByName('fechaI').Value      := tdFechaInicio.Date ;
    ReporteDiario.Params.ParamByName('fechaF').DataType   := ftDate ;
    ReporteDiario.Params.ParamByName('fechaF').Value      := tdFechaFinal.Date ;
    ReporteDiario.Params.ParamByName('Contrato').DataType := ftString ;
    if tsOrdenes.Text = '<<Todas>>' then
       ReporteDiario.Params.ParamByName('Contrato').Value := '%'
    else
       ReporteDiario.Params.ParamByName('Contrato').Value := tsOrdenes.Text;
    ReporteDiario.Open ;

end;

procedure TfrmPrintReportesDiarios.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
       tdFechaFinal.setfocus
end;

procedure TfrmPrintReportesDiarios.tsOrdenesEnter(Sender: TObject);
begin
    tsOrdenes.Color := Global_color_entrada
end;

procedure TfrmPrintReportesDiarios.tsOrdenesKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        grid_reportes.setfocus
end;

procedure TfrmPrintReportesDiarios.popValidaClick(Sender: TObject);
var
   OrdenesdeTrabajo : TZReadOnlyQuery;
   iJornada : integer;
   sJornada : string;
   Progreso, TotalProgreso : double;
begin
    OrdenesdeTrabajo := TZReadOnlyQuery.Create(self);
    OrdenesdeTrabajo.connection := connection.zConnection;

      {Revision si el reporte de barco ya fue abierto Se vuelve a refrescar los datos... 23 de Febrero de 2011}
      if ReporteDiario.FieldValues['sIdUsuarioBarco'] <> '' then
         //messageDLG('El Prorrateo de Barco necesita Actualizarse, para Hacerlo debe Imprimir el Reporte de Barco seleccionado. ', mtInformation, [mbOk], 0);
         procReporteBarco(ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['dIdFecha'], frmPrintReportesDiarios, rDiario.OnGetValue);

      if ReporteDiario.RecordCount > 0 then
       // if Grid_reportes.SelectedRows.Count > 0 then
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
            if (global_valida <> '') then
              lPoder := True
            else
              lPoder := False
          end
          else
          begin
            lPoder := True;
            global_valida := global_usuario;
          end
        else
          MessageDlg('Seleccione por lo menos un reporte diario', mtInformation, [mbOk], 0);

      if lPoder then
      begin
          PanelProgress.Visible := True;
          BarraEstado.Position  := 0;

          SavePlace := TcxGridDBTableView(Grid_reportes.ActiveView).DataController.DataSource.DataSet.GetBookmark;
          with TcxGridDBTableView(Grid_reportes.ActiveView).DataController.DataSource.DataSet do
          begin
            //  for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
              begin
                  {Movimiento de la Barra..}
                 // Progreso             := (1 / (Grid_reportes.SelectedRows.Count )) * (BarraEstado.Max - BarraEstado.Min) / 4;
                  TotalProgreso        := TotalProgreso + Progreso;
                  BarraEstado.Position := Trunc(TotalProgreso);
                  Label15.Caption      := 'Validando Reportes ['+FieldValues['sContrato']+']...';
                  Label15.Refresh;
                  PanelProgress.Refresh;

                 // GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
                  if reportediario.FieldValues['lStatus'] = 'Pendiente' then
                  begin
                      // Primero Elimino todo de la Bitacora de Paquetes de ese dia ...
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('Delete from bitacoradepaquetes where sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = :Orden ' +
                        'And dIdFecha = :fecha ');
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                      connection.zCommand.Params.ParamByName('convenio').Value := FieldValues['sIdConvenio'];
                      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                      connection.zCommand.ExecSQL;

                      // Inserccion de todos los paquetes en 0 a la fecha seleccionada ....
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('insert into bitacoradepaquetes (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dAvance) ' +
                        'select sContrato, sIdConvenio, :fecha, sNumeroOrden, sWbs, sNumeroActividad, 0 from actividadesxorden ' +
                        'Where sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = :orden And sTipoActividad = "Paquete" ' +
                        'on duplicate key update dAvance=0');
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                      connection.zCommand.Params.ParamByName('convenio').Value := FieldValues['sIdConvenio'];
                      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                      connection.zCommand.ExecSQL();

                      // Inicia Proceso de Reajuste de Paquetes .... Primero la Bitacora de Alcances
                      // ajusto los historicos a 0 y calculo los nuevos historicos ...
                      procAjustaBitacoraAlcances(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['dIdFecha']);

                      // Ahora la Bitacora de Actividades
                      // ajusto los historicos a 0 y calculo los nuevos historicos ...
                      procAjustaBitacoraActividades(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['sIdConvenio'], FieldValues['dIdFecha']);

                      TotalProgreso        := TotalProgreso + Progreso;
                      BarraEstado.Position := Trunc(TotalProgreso);
                      PanelProgress.Refresh;

                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance / 100  ' +
                        'Where sContrato = :Contrato And dIdFecha = :Fecha And sIdConvenio = :convenio And sNumeroOrden = :Orden');
                      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('contrato').value := FieldValues['sContrato'];
                      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                      connection.zCommand.Params.ParamByName('convenio').value := FieldValues['sIdConvenio'];
                      connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('fecha').value := FieldValues['dIdFecha'];
                      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Orden').value := FieldValues['sNumeroOrden'];
                      connection.zCommand.ExecSQL;

                      //Llamamos funcion de ajuste de diferencias de decimales en avances Fisicos por frente ...
                      Ajuste(FieldValues['sContrato'], FieldValues['sIdConvenio'], FieldValues['sNumeroOrden'], FieldValues['dIdFecha']);

                      // Primero Elimino todo de la Bitacora de Paquetes de ese dia ...
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('Delete from bitacoradepaquetes where sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = :Orden ' +
                        'And dIdFecha = :fecha');
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                      connection.zCommand.Params.ParamByName('convenio').Value := FieldValues['sIdConvenio'];
                      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Orden').Value := '';
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                      connection.zCommand.ExecSQL;

                      // Avances del Contrato ....
                      try
                          connection.zCommand.Active := False;
                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add('insert into bitacoradepaquetes (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dAvance) ' +
                            'select sContrato, sIdConvenio, :fecha, "", sWbs, sNumeroActividad, 0 from actividadesxanexo ' +
                            'Where sContrato = :contrato And sIdConvenio = :convenio And sTipoActividad = "Paquete"');
                          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                          connection.zCommand.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                          connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                          connection.zCommand.Params.ParamByName('convenio').Value := FieldValues['sIdConvenio'];
                          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                          connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                          connection.zCommand.ExecSQL();
                      except
                        on e: exception do begin
                          MessageDlg('Error ' + e.Message, mtError, [mbOk], 0);
                        end;
                      end;

                      //llama el procedimiento de ajusta contrato
                      procAjustaContrato(FieldValues['sContrato'], FieldValues['sIdConvenio'], FieldValues['dIdFecha'], frmprintreportesdiarios);

                      TotalProgreso        := TotalProgreso + Progreso;
                      BarraEstado.Position := Trunc(TotalProgreso);
                      PanelProgress.Refresh;

                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance / 100  ' +
                        'Where sContrato = :Contrato And dIdFecha = :Fecha And sIdConvenio = :convenio And sNumeroOrden = :Orden');
                      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('contrato').value := FieldValues['sContrato'];
                      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                      connection.zCommand.Params.ParamByName('convenio').value := FieldValues['sIdConvenio'];
                      connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('fecha').value := FieldValues['dIdFecha'];
                      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Orden').Value := '';
                      connection.zCommand.ExecSQL;

                      {Llamamos funcion de ajuste de diferencias de decimales en avances Fisicos...}
                      Ajuste(FieldValues['sContrato'], FieldValues['sIdConvenio'], '', FieldValues['dIdFecha']);

                      //Determino la jornada a laborar en el dia .....
                      OrdenesdeTrabajo.Active := false;
                      OrdenesdeTrabajo.SQL.Clear;
                      OrdenesdeTrabajo.SQL.Add('select ijornada from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Orden ');
                      OrdenesdeTrabajo.ParamByName('Contrato').AsString := FieldValues['sContrato'];
                      OrdenesdeTrabajo.ParamByName('Orden').AsString    := reportediario.FieldValues['sNumeroOrden'];
                      OrdenesdeTrabajo.Open;

                      if OrdenesdeTrabajo.FieldValues['iJornada'] = 0 then
                        iJornada := ifnJornadaDia(FieldValues['sContrato'], FieldValues['dIdFecha'], frmprintreportesdiarios)
                      else

                        iJornada := OrdenesdeTrabajo.FieldValues['iJornada'];

                      if iJornada < 10 then
                        sJornada := '0' + Trim(IntToStr(iJornada)) + ':00'
                      else
                        sJornada := Trim(IntToStr(iJornada)) + ':00';

                      try
                          cfnCalculaAvances(FieldValues['sContrato'],
                            FieldValues['sNumeroOrden'],
                            FieldValues['sIdConvenio'],
                            FieldValues['sIdTurno'],
                            True,
                            FieldValues['dIdFecha'],
                            'Avanzada',
                            frmprintreportesdiarios);
                      except
                        on e: exception do begin
                          MessageDlg('Error ' + e.Message, mtError, [mbOk], 0);

                        end;
                      end;

                      TotalProgreso        := TotalProgreso + Progreso;
                      BarraEstado.Position := Trunc(TotalProgreso);
                      PanelProgress.Refresh;

                      OrdenesdeTrabajo.Active := false;
                      OrdenesdeTrabajo.SQL.Clear;
                      OrdenesdeTrabajo.SQL.Add('select ijornada from ordenesdetrabajo where sContrato =:Contrato');
                      OrdenesdeTrabajo.ParamByName('Contrato').AsString := FieldValues['sContrato'];
                      OrdenesdeTrabajo.Open;

                      // Proceso para actualizacion de avances .....
                      if OrdenesdeTrabajo.RecordCount >= 1 then {08/marzo/2012 : adal,calcular los avances aunque sea solo un frente}
                         procAvancesHistorico(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sIdConvenio'], FieldValues['sIdTurno'], FieldValues['dIdFecha'], True, frmprintreportesdiarios)
                      else
                         procAvancesHistorico(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sIdConvenio'], FieldValues['sIdTurno'], FieldValues['dIdFecha'], False, frmprintreportesdiarios);

                      // Actualizar valores del reporte diario
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('Update reportediario SET lStatus = :Status , sIdUsuarioValida = :Valida, iPersonal = 0, ' +
                        'sTiempoAdicional = "00:00", sTiempoEfectivo = "00:00", sTiempoMuerto = "00:00", sTiempoMuertoReal = "00:00", ' +
                        'dAvProgAnteriorOrden = :ProgAntOrden, dAvProgActualOrden = :ProgActOrden, dAvRealAnteriorOrden = :RealAntOrden, dAvRealActualOrden = :RealActOrden ' +
                        'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Turno').Value := FieldValues['sIdTurno'];
                      connection.zCommand.Params.ParamByName('Status').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Status').Value := 'Validado';
                      connection.zCommand.Params.ParamByName('Valida').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Valida').Value := global_valida;
                      connection.zCommand.Params.ParamByName('ProgAntOrden').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('ProgAntOrden').Value := dProgramadoOrdenAnterior;
                      connection.zCommand.Params.ParamByName('ProgActOrden').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('ProgActOrden').Value := dProgramadoOrdenActual;
                      connection.zCommand.Params.ParamByName('RealAntOrden').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('RealAntOrden').Value := dRealOrdenAnterior;
                      connection.zCommand.Params.ParamByName('RealActOrden').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('RealActOrden').Value := dRealOrdenActual;
                      connection.zCommand.ExecSQL();

                      // Actualizo los avances globales de todos reportes del dia ....
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('Update reportediario SET dAvProgAnteriorContrato = :ProgAntContrato, ' +
                        'dAvProgActualContrato = :ProgActContrato, dAvRealAnteriorContrato = :RealAntContrato, ' +
                        'dAvRealActualContrato = :RealActcontrato ' +
                        'Where sContrato = :Contrato And dIdFecha = :fecha');
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                      connection.zCommand.Params.ParamByName('ProgAntContrato').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('ProgAntContrato').Value := dProgramadoGlobalAnterior;
                      connection.zCommand.Params.ParamByName('ProgActContrato').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('ProgActContrato').Value := dProgramadoGlobalActual;
                      connection.zCommand.Params.ParamByName('RealAntContrato').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('RealAntContrato').Value := dRealGlobalAnterior;
                      connection.zCommand.Params.ParamByName('RealActContrato').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('RealActContrato').Value := dRealGlobalActual;
                      connection.zCommand.ExecSQL();

                      //Termino de Identificar la Jornada

                      if FieldValues['sOrigenTierra'] = 'No' then
                      begin //loboazul27
                          procInicializaJornadas(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], sJornada, FieldValues['dIdFecha'], frmprintreportesdiarios);
                          procActualizaJornadas(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['dIdFecha'], frmprintreportesdiarios);
                      end;

                      // Termina Proceso de Actualizacion de Avances ......

                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                        'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                      connection.zCommand.Params.ParamByName('Usuario').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Usuario').Value := Global_Usuario;
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('Fecha').Value := Date;
                      connection.zCommand.Params.ParamByName('Hora').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss.zzz', Now);
                      connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Descripcion').Value := 'Validación del Reporte Diario No. [' + FieldValues['sNumeroReporte'] + ']. VALIDA ' + global_valida;
                      connection.zCommand.Params.ParamByName('Origen').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Origen').Value := 'Reporte Diario';
                      connection.zCommand.ExecSQL();

                  end
                  else
                     MessageDlg('El Reporte Diario [' + FieldValues['sNumeroReporte'] + '] se encuentra en estado de '+ reportediario.FieldValues['lStatus'], mtInformation, [mbOk], 0);
              end;
          end;
      end;

      try
         ReporteDiario.Refresh;
         TcxGridDBTableView(Grid_reportes.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
      except
      else
         TcxGridDBTableView(Grid_reportes.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
      end;
      PanelProgress.Visible := False;
      MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
end;

procedure TfrmPrintReportesDiarios.popAutorizaClick(Sender: TObject);
var
  lRecordChange : boolean;
  Progreso, TotalProgreso : double;
begin
    try
        Connection.CommandTrx.Active := False;
        Connection.CommandTrx.SQL.Text := 'START TRANSACTION';
        Connection.CommandTrx.ExecSQL;

        frmSeguridad.tsPasswordValida.Text := '';
        global_tipo_autorizacion := 'Autorización';
        lPoder := False;

        if ReporteDiario.RecordCount > 0 then
         // if Grid_reportes.SelectedRows.Count > 0 then
            if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
            begin
              frmSeguridad.ShowModal;
              if (global_autoriza <> '') then
                lPoder := True
              else
                lPoder := False
            end
            else
            begin
              lPoder := True;
              global_autoriza := global_usuario;
            end
          else
              raise Exception.Create('-Seleccione por lo menos un reporte diario.');

          if lPoder then
          begin
              PanelProgress.Visible := True;
              BarraEstado.Position  := 0;

              lRecordChange := False;
              SavePlace := TcxGridDBTableView(Grid_reportes.ActiveView).DataController.DataSource.DataSet.GetBookmark;
              with TcxGridDBTableView(Grid_reportes.ActiveView).DataController.DataSource.DataSet do
              begin
                 // for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
                  begin
                      {Movimiento de la Barra..}
                    //  Progreso := (1 / (Grid_reportes.SelectedRows.Count + 1)) * (BarraEstado.Max - BarraEstado.Min);
                      TotalProgreso := TotalProgreso + Progreso;
                      BarraEstado.Position := Trunc(TotalProgreso);
                      Label15.Caption := 'Validando Reportes ['+FieldValues['sContrato']+']...';
                      Label15.Refresh;Label15.Refresh;
                      PanelProgress.Refresh;

                     // GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));

                      if FieldValues['lStatus'] = 'Validado' then
                      begin
                          //Aqui Inserto los Totalizados por Plataformas  de Pernoctas
                          Connection.QryBusca.Active := False;
                          Connection.QryBusca.SQL.Clear;
                          Connection.QryBusca.SQL.Add('select bp.sTipoPernocta, bp.sIdPernocta, bp.sContrato, ba.sNumeroOrden, bp.dIdFecha, ba.iIdDiario, ' +
                            'sum(bp.dCantidad) as dCantidad from bitacoradepersonal bp ' +
                            'Inner Join bitacoradeactividades ba ' +
                            'On (bp.sContrato=ba.sContrato And bp.dIdFecha=ba.dIdFecha And bp.iIdDiario=ba.iIdDiario and ba.sIdTurno =:Turno) ' +
                            'inner join pernoctan per on (per.sIdPernocta = bp.sIdPernocta and per.sClasificacion = "FLOTEL") ' +
                            'inner join personal p on (p.sContrato = bp.sContrato and p.sIdPersonal = bp.sIdPersonal and p.lPernocta = "Si") ' +
                            'Where bp.dIdFecha=:Fecha And bp.scontrato =:Contrato ' +
                            'And sNumeroOrden =:Orden and bp.lAplicaPernocta = "Si" And bp.sDescripcion not like "%TIEMPO EXTRA%" ' +
                            'Group by bp.dIdFecha, ba.sNumeroOrden, bp.sTipoPernocta ');
                          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
                          Connection.QryBusca.Params.ParamByName('Contrato').Value := ReporteDiario.FieldValues['sContrato'];
                          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
                          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'];
                          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
                          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'];
                          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString;
                          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'];
                          Connection.QryBusca.Open;

                          while not Connection.qryBusca.Eof do
                          begin
                              Connection.CommandTrx.Active := False;
                              Connection.CommandTrx.Sql.Text := 'select * from bitacoradepernocta where sContrato = :Contrato and dIdFecha = :Fecha and sNumeroOrden = :Orden and sIdCuenta = :Cuenta';
                              Connection.CommandTrx.ParamByName('Contrato').AsString := ReporteDiario.FieldValues['sContrato'];
                              Connection.CommandTrx.ParamByName('Fecha').AsDate := ReporteDiario.FieldValues['dIdFecha'];
                              Connection.CommandTrx.ParamByName('Orden').AsString := ReporteDiario.FieldValues['sNumeroOrden'];
                              Connection.CommandTrx.ParamByName('Cuenta').AsString := Connection.QryBusca.FieldValues['sTipoPernocta'];
                              Connection.CommandTrx.Open;

                              if Connection.CommandTrx.RecordCount = 0 then
                              begin
                                  Connection.CommandTrx.Active := False;
                                  connection.CommandTrx.SQL.Clear;
                                  connection.CommandTrx.SQL.Add(' insert into bitacoradepernocta ' +
                                    ' set sContrato=:Contrato ,' +
                                    ' dIdFecha     =:Fecha,' +
                                    ' sNumeroOrden =:NumeroOrden,' +
                                    ' sIdCuenta    =:Actividad,' +
                                    ' dCantidad    =:Cantidad, ' +
                                    ' iIdDiario    =:Diario ');
                                  connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
                                  connection.CommandTrx.ParamByName('Contrato').Value := ReporteDiario.FieldValues['sContrato'];
                                  connection.CommandTrx.ParamByName('Fecha').DataType := ftDate;
                                  connection.CommandTrx.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'];
                                  connection.CommandTrx.ParamByName('NumeroOrden').DataType := ftString;
                                  connection.CommandTrx.ParamByName('NumeroOrden').Value := ReporteDiario.FieldValues['sNumeroOrden'];
                                  connection.CommandTrx.ParamByName('Actividad').DataType := ftString;
                                  connection.CommandTrx.ParamByName('Actividad').Value := Connection.QryBusca.FieldValues['sTipoPernocta'];
                                  connection.CommandTrx.ParamByName('Cantidad').DataType := ftFloat;
                                  connection.CommandTrx.ParamByName('Cantidad').Value := Connection.QryBusca.FieldValues['dCantidad'];
                                  connection.CommandTrx.ParamByName('Diario').DataType := ftInteger;
                                  connection.CommandTrx.ParamByName('Diario').Value := Connection.QryBusca.FieldValues['iIdDiario'];
                                  connection.CommandTrx.ExecSQL;
                              end
                              else
                              begin
                                  {Sumamos las cantidades por turno,,}
                                  Connection.CommandTrx.Edit;
                                  Connection.CommandTrx.FieldByName('dCantidad').AsFloat := Connection.CommandTrx.FieldByName('dCantidad').AsFloat + Connection.QryBusca.FieldValues['dCantidad'];
                                  Connection.CommandTrx.Post;
                              end;
                              Connection.QryBusca.Next;
                          end;

                          {En esta otra parte insertamos las parnoctas asignadas directamente...}
                          Connection.QryBusca.Active := False;
                          Connection.QryBusca.SQL.Clear;
                          Connection.QryBusca.SQL.Add('select bp.sIdCuenta, bp.sContrato, ba.sNumeroOrden, bp.dIdFecha, ba.iIdDiario, ' +
                            'sum(bp.dCantidad) as dCantidad from bitacoradepernocta_aux bp ' +
                            'Inner Join bitacoradeactividades ba ' +
                            'On (bp.sContrato=ba.sContrato And bp.dIdFecha=ba.dIdFecha And bp.iIdDiario=ba.iIdDiario and ba.sIdTurno =:Turno ) ' +
                            'Where bp.dIdFecha=:Fecha And bp.scontrato =:Contrato ' +
                            'And sNumeroOrden =:Orden Group by bp.dIdFecha, ba.sNumeroOrden, bp.sIdCuenta  ');
                          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
                          Connection.QryBusca.Params.ParamByName('Contrato').Value := ReporteDiario.FieldValues['sContrato'];
                          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
                          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'];
                          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
                          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'];
                          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString;
                          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'];
                          Connection.QryBusca.Open;

                          if Connection.QryBusca.RecordCount > 0 then
                          begin
                              while not Connection.qryBusca.Eof do
                              begin
                                   try
                                      //Insertamos la pernocta en caso se que no exista en la bitacora de pernoctass..
                                      connection.CommandTrx.SQL.Clear;
                                      connection.CommandTrx.SQL.Add(' insert into bitacoradepernocta ' +
                                        ' set sContrato=:Contrato ,' +
                                        ' dIdFecha     =:Fecha,' +
                                        ' sNumeroOrden =:NumeroOrden,' +
                                        ' sIdCuenta    =:Actividad,' +
                                        ' dCantidad    =:Cantidad, ' +
                                        ' iIdDiario     =:Diario ');
                                      connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
                                      connection.CommandTrx.ParamByName('Contrato').Value := ReporteDiario.FieldValues['sContrato'];
                                      connection.CommandTrx.ParamByName('Fecha').DataType := ftDate;
                                      connection.CommandTrx.ParamByName('Fecha').Value := Connection.QryBusca.FieldValues['dIdfecha'];
                                      connection.CommandTrx.ParamByName('NumeroOrden').DataType := ftString;
                                      connection.CommandTrx.ParamByName('NumeroOrden').Value := Connection.QryBusca.FieldValues['sNumeroOrden'];
                                      connection.CommandTrx.ParamByName('Actividad').DataType := ftString;
                                      connection.CommandTrx.ParamByName('Actividad').Value := Connection.QryBusca.FieldValues['sIdCuenta']; ;
                                      connection.CommandTrx.ParamByName('Cantidad').DataType := ftFloat;
                                      connection.CommandTrx.ParamByName('Cantidad').Value := Connection.QryBusca.FieldValues['dCantidad'];
                                      connection.CommandTrx.ParamByName('Diario').DataType := ftInteger;
                                      connection.CommandTrx.ParamByName('Diario').Value := Connection.QryBusca.FieldValues['iIdDiario'];
                                      connection.CommandTrx.ExecSQL;
                                   except
                                        //En caso contrario solo totalizamos las pernoctas para el generador..
                                        connection.CommandTrx.SQL.Clear;
                                        connection.CommandTrx.SQL.Add(' update bitacoradepernocta set dCantidad = dCantidad + :Cantidad ' +
                                          ' where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdCuenta =:Cuenta ');
                                        connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
                                        connection.CommandTrx.ParamByName('Contrato').Value := ReporteDiario.FieldValues['sContrato'];
                                        connection.CommandTrx.ParamByName('Fecha').DataType := ftDate;
                                        connection.CommandTrx.ParamByName('Fecha').Value := Connection.QryBusca.FieldValues['dIdfecha'];
                                        connection.CommandTrx.ParamByName('Orden').DataType := ftString;
                                        connection.CommandTrx.ParamByName('Orden').Value := Connection.QryBusca.FieldValues['sNumeroOrden'];
                                        connection.CommandTrx.ParamByName('Cuenta').DataType := ftString;
                                        connection.CommandTrx.ParamByName('Cuenta').Value := Connection.QryBusca.FieldValues['sIdCuenta'];
                                        connection.CommandTrx.ParamByName('Cantidad').DataType := ftFloat;
                                        connection.CommandTrx.ParamByName('Cantidad').Value := Connection.QryBusca.FieldValues['dCantidad'];
                                        connection.CommandTrx.ExecSQL;
                                   end;
                                   Connection.QryBusca.Next
                              end;
                          end;
                          lRecordChange := True;
                                  // Al Autorizar un reporte el sistema debera crear las notas automaticamente de los avisos de embarque recibidos ...
                          //procDelInsAvEmbarque(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['dIdFecha']);

                          connection.CommandTrx.Active := False;
                          connection.CommandTrx.SQL.Clear;
                          connection.CommandTrx.SQL.Add('Update reportediario SET lStatus = :Status , sIdUsuarioAutoriza = :Valida , sIdUsuarioResidente = :Residente ' +
                            'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
                          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                          connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
                          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
                          connection.CommandTrx.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                          connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Turno').Value := FieldValues['sIdTurno'];
                          connection.CommandTrx.Params.ParamByName('Status').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Status').Value := 'Autorizado';
                          connection.CommandTrx.Params.ParamByName('Valida').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Valida').Value := global_autoriza;
                          connection.CommandTrx.Params.ParamByName('Residente').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Residente').Value := global_autoriza;
                          connection.CommandTrx.ExecSQL();

                          // Actualizo Kardex del Sistema ....
                          //Sleep(iPausa) ;
                          connection.CommandTrx.Active := False;
                          connection.CommandTrx.SQL.Clear;
                          connection.CommandTrx.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                            'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
                          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Contrato').Value := FieldValues['sContrato'];
                          connection.CommandTrx.Params.ParamByName('Usuario').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Usuario').Value := Global_Usuario;
                          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
                          connection.CommandTrx.Params.ParamByName('Fecha').Value := Date;
                          connection.CommandTrx.Params.ParamByName('Hora').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss.zzz', Now);
                          connection.CommandTrx.Params.ParamByName('Descripcion').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Descripcion').Value := 'Autorización del Reporte Diario No. [' + FieldValues['sNumeroReporte'] + '] del dia [' + ReporteDiario.fieldByName('dIdFecha').AsString + ']. AUTORIZA ' + global_autoriza;
                          connection.CommandTrx.Params.ParamByName('Origen').DataType := ftString;
                          connection.CommandTrx.Params.ParamByName('Origen').Value := 'Reporte Diario';
                          connection.CommandTrx.ExecSQL();

                          /////////// E N V I O  D E  C O R R E O S ////////////
                          //||||||||||||||||||||||||||||||||||||||||||||||||||||
                          global_enviaMail := '';
                          if connection.configuracion.FieldValues['lEnviaCorreo'] = 'Si' then
                          begin
                              Connection.QryBusca2.Active := False;
                              Connection.QryBusca2.SQL.Clear;
                              Connection.QryBusca2.SQL.Add('select u.*, g.sMail as sMailPrincipal, g.sPassword as clave from usuarios u inner join grupos g on (u.sIdGrupo = g.sIdGrupo) where u.sIdUsuario =:Usuario and u.lEnviaCorreo = "Si" ');
                              Connection.QryBusca2.Params.ParamByName('Usuario').DataType := ftString;
                              Connection.QryBusca2.Params.ParamByName('Usuario').Value := global_usuario;
                              Connection.QryBusca2.Open;

                              if connection.QryBusca2.RecordCount > 0 then
                              begin
                                  try
                                      global_enviaMail := 'Si';
                                                  //Se manda a imprimir el reporte diario..
                                      if connection.contrato.FieldValues['sTipoObra'] = 'PROGRAMADA' then
                                        procReporteDiarioCotemarProg(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sNumeroReporte'], FieldValues['sIdTurno'], FieldValues['sIdConvenio'], FieldValues['dIdFecha'], '', frmPrintReportesDiarios, rDiario.OnGetValue, nil)
                                      else
                                        if connection.contrato.FieldValues['sTipoObra'] = 'OPTATIVA' then
                                          procReporteDiarioCotemarOpt(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sNumeroReporte'], FieldValues['sIdTurno'], FieldValues['sIdConvenio'], FieldValues['dIdFecha'], '', frmPrintReportesDiarios, rDiario.OnGetValue)
                                        else
                                          if connection.contrato.FieldValues['sTipoObra'] = 'MIXTA' then
                                            procReporteDiarioCotemarMix(Self, rDiarioGetValue, nil, FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sNumeroReporte'], FieldValues['sIdConvenio'], FieldValues['dIdFecha'], global_turno, 'Screen')
                                          else
                                            if connection.contrato.FieldValues['sTipoObra'] = 'BARCO' then
                                              procReporteBarco(FieldValues['sContrato'], FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['dIdFecha'], frmDiarioTurno, rDiario.OnGetValue);
                                  except
                                    on e: exception do
                                    begin
                                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Valida Reportes Diarios/Generadores', 'Al imprimir reporte diario', 0);
                                    end;
                                  end;
                              end;
                          end;
                      end
                      else
                          MessageDlg('El Reporte Diario [' + FieldValues['sNumeroReporte'] + '] se encuentra en estado de '+ reportediario.FieldValues['lStatus'], mtInformation, [mbOk], 0);
                  end;
              end;

              Connection.ConnTrx.Commit;

              if lRecordChange then
              begin
                global_enviaMail := '';
                ReporteDiario.Active := False;
                ReporteDiario.Open;
                try
                   TcxGridDBTableView(Grid_reportes.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
                except

                else
                   TcxGridDBTableView(Grid_reportes.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
                end;
                PanelProgress.Visible := False;
                MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
              end;
        end;

    except
      on e: Exception do
      begin
        Connection.ConnTrx.Rollback;

        if e.Message[1] = '-' then
          MessageDlg(e.Message, mtWarning, [mbOk], 0)
        else
          MessageDlg('Ha ocurrido un error al tratar de registrar los cambios solicitados.' + #10 + #10 +
            'Informe del siguiente error al administrador del sistema:' + #10 +
            e.Message, mtWarning, [mbOk], 0);
      end;
    end;
end;

procedure TfrmPrintReportesDiarios.PopupMenu1Popup(Sender: TObject);
begin
    popValida.Enabled := False;
    popAutoriza.Enabled := False;
    if reportediario.FieldValues['lStatus'] = 'Pendiente' then
       popValida.Enabled := True;

    if reportediario.FieldValues['lStatus'] = 'Validado' then
       popAutoriza.Enabled := True;
end;

procedure TfrmPrintReportesDiarios.procAjustaBitacoraAlcances(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
var
   qryBitacora: tzReadOnlyQuery;
   dCantidadAnterior,
   dAvanceAnterior: Currency;
   iRecord : integer;
begin
  qryBitacora := tzReadOnlyQuery.Create(self);
  qryBitacora.Connection := connection.ConnTrx;

    // Inicializo los acumulados historicos de la bitacora de Alcances ...
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Update bitacoradealcances SET dCantidadAnterior = 0, dAvanceAnterior = 0, dCantidadActual = 0, dAvanceActual = 0 ' +
    'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
  connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
  connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
  connection.zCommand.Params.ParamByName('Turno').Value := sParamTurno;
  connection.zCommand.ExecSQL;

    // 1. Acumulados de la Bitacora de Alcances .... los almaceno en sus historicos ...
  qryBitacora.Active := False;
  qryBitacora.SQL.Clear;
  qryBitacora.SQL.Add('select iIdDiario, sWbs, sNumeroActividad, iFase, dCantidad, dAvance From bitacoradealcances where sContrato = :contrato and ' +
    'dIdFecha = :fecha And sNumeroOrden = :Orden and sIdTurno = :Turno order by sWbs, sNumeroActividad asc');
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := sParamContrato;
  qryBitacora.Params.ParamByName('Orden').DataType := ftString;
  qryBitacora.Params.ParamByName('Orden').Value := sParamOrden;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := dParamFecha;
  qryBitacora.Params.ParamByName('Turno').DataType := ftString;
  qryBitacora.Params.ParamByName('Turno').Value := sParamTurno;
  qryBitacora.Open;
  if qryBitacora.RecordCount > 0 then
  begin
    Progress.Visible := True;
    Progress.Progress := 1;
    Progress.MinValue := 1;
    Progress.MaxValue := qryBitacora.RecordCount;
    qryBitacora.First;

    for iRecord := 1 to Progress.MaxValue do
    begin
      try
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from bitacoradealcances where sContrato = :Contrato and ' +
          'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase Group By sWbs, sNumeroActividad');
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('contrato').Value := sParamContrato;
        connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
        connection.qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Orden').Value := sParamOrden;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := qryBitacora.FieldValues['sWbs'];
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Actividad').Value := qryBitacora.FieldValues['sNumeroActividad'];
        connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
        connection.qryBusca.Params.ParamByName('Fase').Value := qryBitacora.FieldValues['iFase'];
        connection.qryBusca.Open;
        dCantidadAnterior := 0;
        dAvanceAnterior := 0;
        if connection.qryBusca.RecordCount > 0 then
        begin
          dCantidadAnterior := connection.qryBusca.FieldValues['dInstalado'];
          dAvanceAnterior := connection.qryBusca.FieldValues['dAvance'];
        end;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET dCantidadAnterior = :CantidadAnterior, dAvanceAnterior = :AvanceAnterior, ' +
          'dCantidadActual = :CantidadActual, dAvanceActual = :AvanceActual ' +
          'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
        connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('diario').value := qryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.Params.ParamByName('CantidadAnterior').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadAnterior').value := dCantidadAnterior;
        connection.zCommand.Params.ParamByName('AvanceAnterior').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('AvanceAnterior').value := dAvanceAnterior;
        connection.zCommand.Params.ParamByName('CantidadActual').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadActual').value := qryBitacora.FieldValues['dCantidad'];
        connection.zCommand.Params.ParamByName('AvanceActual').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('AvanceActual').value := qryBitacora.FieldValues['dAvance'];
        connection.zCommand.ExecSQL;
      except
        MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de actividades', mtWarning, [mbOk], 0);
      end;
      Progress.Progress := iRecord;
      QryBitacora.Next;
    end;
    Progress.Visible := False;
  end;
  QryBitacora.Destroy;
end;

procedure TfrmPrintReportesDiarios.procAjustaBitacoraActividades(sParamContrato, sParamOrden, sParamTurno, sParamConvenio: string; dParamFecha: tDate);
var
  qryBitacora: tzReadOnlyQuery;
  dCantidadAnterior,
  dAvanceAnterior: Currency;
  iRecord : integer;
begin
  qryBitacora := tzReadOnlyQuery.Create(self);
  qryBitacora.Connection := connection.ConnTrx;

    // Inicializo la Bitacora Principal

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Update bitacoradeactividades SET dCantidadAnterior = 0, dAvanceAnterior = 0, dCantidadActual = 0, dAvanceActual = 0 ' +
    'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
  connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
  connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
  connection.zCommand.Params.ParamByName('Turno').Value := sParamTurno;
  connection.zCommand.ExecSQL;


  qryBitacora.Active := False;
  qryBitacora.SQL.Clear;
  qryBitacora.SQL.Add('select b.iIdDiario, b.sWbs, b.sNumeroActividad, Sum(b.dCantidad) as dCantidadActual, Sum(b.dAvance) as dAvanceActual from bitacoradeactividades b ' +
    'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroOrden = a.sNumeroOrden And ' +
    'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
    'where b.sContrato = :contrato and b.dIdFecha = :fecha And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno ' +
    'Group by b.sWbs, b.sNumeroActividad order by a.iItemOrden, a.sNumeroActividad asc');
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := sParamContrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := sParamConvenio;
  qryBitacora.Params.ParamByName('Orden').DataType := ftString;
  qryBitacora.Params.ParamByName('Orden').Value := sParamOrden;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := dParamFecha;
  qryBitacora.Params.ParamByName('Turno').DataType := ftString;
  qryBitacora.Params.ParamByName('Turno').Value := sParamTurno;
  qryBitacora.Open;
  if QryBitacora.RecordCount > 0 then
  begin
    Progress.Visible := True;
    Progress.Progress := 1;
    Progress.MinValue := 1;
    Progress.MaxValue := QryBitacora.RecordCount;
    QryBitacora.First;
    for iRecord := 1 to Progress.MaxValue do
    begin
      try
                 // Aqui almaceno el avance anterior acumulado .........
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from bitacoradeactividades where sContrato = :Contrato and ' +
          'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('contrato').Value := sParamContrato;
        connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
        connection.qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Orden').Value := sParamOrden;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := qryBitacora.FieldValues['sWbs'];
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Actividad').Value := qryBitacora.FieldValues['sNumeroActividad'];
        connection.qryBusca.Open;
        dCantidadAnterior := 0;
        dAvanceAnterior := 0;
        if connection.qryBusca.RecordCount > 0 then
        begin
          dCantidadAnterior := connection.qryBusca.FieldValues['dInstalado'];
          dAvanceAnterior := connection.qryBusca.FieldValues['dAvance'];
        end;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dCantidadAnterior = :CantidadAnterior, dAvanceAnterior = :AvanceAnterior, ' +
          'dCantidadActual = :CantidadActual, dAvanceActual = :AvanceActual ' +
          'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
        connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('diario').value := qryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.Params.ParamByName('CantidadAnterior').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadAnterior').value := dCantidadAnterior;
        connection.zCommand.Params.ParamByName('AvanceAnterior').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('AvanceAnterior').value := dAvanceAnterior;
        connection.zCommand.Params.ParamByName('CantidadActual').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadActual').value := qryBitacora.FieldValues['dCantidadActual'];
        connection.zCommand.Params.ParamByName('AvanceActual').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('AvanceActual').value := qryBitacora.FieldValues['dAvanceActual'];
        connection.zCommand.ExecSQL;
      except
        on E: Exception do
        begin
          MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de actividades : ' + e.Message, mtWarning, [mbOk], 0);
        end;
      end;
      Progress.Progress := iRecord;
      QryBitacora.Next;
    end;
    Progress.Visible := False;
  end;

    //// Bitacora de Paquetes ...
  qryBitacora.Active := False;
  qryBitacora.SQL.Clear;
  qryBitacora.SQL.Add('select b.sWbs, sum((b.dAvance * a.dPonderado)) as dAvanceReal from bitacoradeactividades b ' +
    'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroOrden = a.sNumeroOrden And ' +
    'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
    'where b.sContrato = :contrato and b.dIdFecha = :fecha And b.sNumeroOrden = :Orden ' +
    'Group by b.sWbs order by b.sWbs, a.iNivel DESC');
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := sParamContrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := sParamConvenio;
  qryBitacora.Params.ParamByName('Orden').DataType := ftString;
  qryBitacora.Params.ParamByName('Orden').Value := sParamOrden;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := dParamFecha;
  qryBitacora.Open;
  if QryBitacora.RecordCount > 0 then
  begin
    Progress.Visible := True;
    Progress.Progress := 1;
    Progress.MinValue := 1;
    Progress.MaxValue := QryBitacora.RecordCount;
    QryBitacora.First;
    for iRecord := 1 to Progress.MaxValue do
    begin
      try
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance + :Avance  ' +
          'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdConvenio = :convenio And InStr(:wbs, concat(sWbs,".")) > 0');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').value := sParamOrden;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').value := sParamConvenio;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
        connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('wbs').value := QryBitacora.FieldValues['sWbs'];
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').value := QryBitacora.FieldValues['dAvanceReal'];
        connection.zCommand.ExecSQL;
      except
        on e: exception do
        begin
          MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de actividades ' + e.Message, mtWarning, [mbOk], 0);
        end;
      end;
      Progress.Progress := iRecord;
      QryBitacora.Next;
    end;
    Progress.Visible := False;
  end;

  QryBitacora.Destroy;
end;

procedure TfrmPrintReportesDiarios.Ajuste(dParamContrato: string; dParamConvenio: string; dParamOrden: string; dParamFecha: TDate);
var
  Q_BuscaPaquete,
    Q_BuscaAvance,
    Q_Actualiza,
    Q_SumaOrden: TZReadOnlyQuery;
  Avance,
    diferencia: Double;
  Nivel, Total,
    num: integer;
  LineTabla: string;
  lContinua: boolean;
begin
  if dParamOrden <> '' then
    LineTabla := 'actividadesxorden'
  else
    LineTabla := 'actividadesxanexo';

  lContinua := False;

  Q_BuscaPaquete := TZReadOnlyQuery.Create(self);
  Q_BuscaPaquete.Connection := connection.ConnTrx;

  Q_BuscaAvance := TZReadOnlyQuery.Create(self);
  Q_BuscaAvance.Connection := connection.ConnTrx;

  Q_Actualiza := TZReadOnlyQuery.Create(self);
  Q_Actualiza.Connection := connection.ConnTrx;

  Q_SumaOrden := TZReadOnlyQuery.Create(self);
  Q_SumaOrden.Connection := connection.ConnTrx;

   {Buscamos el avance General del Contrato del dia..}
  Q_BuscaAvance.Active;
  Q_BuscaAvance.SQL.Clear;
  Q_BuscaAvance.SQL.Add('Select * From avancesglobalesxorden  Where ' +
    'sContrato =:Contrato And sNumeroOrden=:Orden And sIdConvenio =:Convenio And dIdFecha =:Fecha');
  Q_BuscaAvance.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaAvance.ParamByName('Convenio').AsString := dParamConvenio;
  Q_BuscaAvance.ParamByName('Orden').AsString := dParamOrden;
  Q_BuscaAvance.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaAvance.Open;

   {Buscamos los paquetes Reportados en el dia..}
  Q_BuscaPaquete.Active;
  Q_BuscaPaquete.SQL.Clear;
  Q_BuscaPaquete.SQL.Add('Select b.*, a.iNivel, a.iItemOrden, a.sWbsAnterior From bitacoradepaquetes  b ' +
    'inner join ' + LineTabla + ' a on (a.sContrato = b.sContrato and a.sIdConvenio = b.sIdConvenio and a.sWbs = b.sWbs ' +
    'and a.sNumeroActividad = b.sNumeroActividad and a.sTipoActividad = "Paquete") ' +
    'Where b.sContrato =:Contrato And b.sNumeroOrden=:Orden And b.sIdConvenio =:Convenio and b.dAvance > 0 And b.dIdFecha =:Fecha order by a.iItemorden');
  Q_BuscaPaquete.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaPaquete.ParamByName('Convenio').AsString := dParamConvenio;
  Q_BuscaPaquete.ParamByName('Orden').AsString := dParamOrden;
  Q_BuscaPaquete.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaPaquete.Open;

  Nivel := 0;
  if Q_BuscaPaquete.RecordCount > 0 then
  begin
       {Primero buscamos el paquete principal..}
    while not Q_BuscaPaquete.Eof do
    begin
      if (Q_BuscaPaquete.FieldValues['sWbsAnterior'] = '') or (Q_BuscaPaquete.FieldValues['sWbs'] = 'A') then
        Avance := Q_BuscaPaquete.FieldValues['dAvance'];

      if Nivel < Q_BuscaPaquete.FieldValues['iNivel'] then
        Inc(Nivel);
      Q_BuscaPaquete.Next;
    end;

       {Luego comparamos si vairan los decimales...}
    if Avance <> Q_BuscaAvance.FieldValues['dAvance'] then
      lContinua := True;

       {Si hubo diferencia en Decimales entramos al ajuste de decimales..}
    Q_BuscaPaquete.First;
    if lContinua then
    begin
            {Primero Actualizamos los niveles maximos..}
      for num := 0 to Nivel do
      begin
                {Contamos cuantos paquetes estan en el nivel maximo..}

        Total := 0;
        Q_BuscaPaquete.First;
        while not Q_BuscaPaquete.Eof do
        begin
          if num = Q_BuscaPaquete.FieldValues['iNivel'] then
            Inc(Total);
          Q_BuscaPaquete.Next;
        end;
            {13.marzo.2012: adal, error de divicion entre cero}
                {Ahora vamos a repartir la diferencia entre el numero de paquetes..}
        if Total <> 0 then
        begin
          if Avance < Q_BuscaAvance.FieldValues['dAvance'] then
            diferencia := (Q_BuscaAvance.FieldByName('dAvance').AsFloat - Avance) / Total
          else
            diferencia := (Avance - Q_BuscaAvance.FieldByName('dAvance').AsFloat) / Total;
        end
        else
        begin
          diferencia := 0;
        end;

        Q_BuscaPaquete.First;
        while not Q_BuscaPaquete.Eof do
        begin
          if Q_BuscaPaquete.FieldValues['iNivel'] = num then
          begin
                        {Actualizamos el dato..}
            Q_Actualiza.Active := False;
            Q_Actualiza.SQL.Clear;
            Q_Actualiza.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = :Avance  ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdConvenio = :convenio And sWbs =:Wbs ');
            Q_Actualiza.Params.ParamByName('contrato').DataType := ftString;
            Q_Actualiza.Params.ParamByName('contrato').value := dParamContrato;
            Q_Actualiza.Params.ParamByName('Orden').DataType := ftString;
            Q_Actualiza.Params.ParamByName('Orden').value := dParamOrden;
            Q_Actualiza.Params.ParamByName('convenio').DataType := ftString;
            Q_Actualiza.Params.ParamByName('convenio').value := dParamConvenio;
            Q_Actualiza.Params.ParamByName('fecha').DataType := ftDate;
            Q_Actualiza.Params.ParamByName('fecha').value := dParamFecha;
            Q_Actualiza.Params.ParamByName('wbs').DataType := ftString;
            Q_Actualiza.Params.ParamByName('wbs').value := Q_BuscaPaquete.FieldValues['sWbs'];
            Q_Actualiza.Params.ParamByName('Avance').DataType := ftFloat;
            if Avance < Q_BuscaAvance.FieldValues['dAvance'] then
              Q_Actualiza.Params.ParamByName('Avance').value := Q_BuscaPaquete.FieldValues['dAvance'] + diferencia
            else
              Q_Actualiza.Params.ParamByName('Avance').value := Q_BuscaPaquete.FieldValues['dAvance'] - diferencia;
            Q_Actualiza.ExecSQL;
          end;
          Q_BuscaPaquete.Next;
        end;
      end;
    end;
  end;

  Q_BuscaPaquete.Destroy;
  Q_BuscaAvance.Destroy;
  Q_Actualiza.Destroy;
end;


procedure TfrmPrintReportesDiarios.procDelInsAvEmbarque(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
var
  sTexto: string;
  iDiario: Integer;
  StringList,
    StringListxOrden: TStrings;
  MaximoDiario: tzReadOnlyQuery;
begin
  MaximoDiario := tzReadOnlyQuery.Create(self);
  MaximoDiario.Connection := connection.zConnection;
  MaximoDiario.SQL.Clear;
  MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades ' +
    'where sContrato = :contrato and dIdFecha = :fecha  Group By sContrato');

    // Borramos todas las notas producto de los Avisos de Embarque
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Delete From bitacoradeactividades Where sContrato = :Contrato And sIdTurno = :Turno And dIdFecha = :Fecha And sIdTipoMovimiento = "AE" ');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
  connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
  connection.zCommand.Params.ParamByName('Turno').Value := sParamTurno;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.zCommand.ExecSQL();

  StringList := TStringList.Create;
  StringListxOrden := TStringList.Create;
  StringList.Clear;
  StringList.Add('');

  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
  connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  connection.qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Orden').Value := 'CONTRATO NO. ' + sParamContrato;
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
  begin
    if global_title_embarque = '' then
    begin
      if Connection.qryBusca.RecordCount > 1 then
        StringList.Add('CON ESTA FECHA SE VERIFICAN Y VALIDAN LAS LISTAS DE VERIFICACIÓN DE LOS SIGUIENTES AVISOS DE EMBARQUE.')
      else
        StringList.Add('CON ESTA FECHA SE VERIFICA Y VALIDA LA LISTA DE VERIFICACIÓN DEL SIGUIENTE AVISO DE EMBARQUE.');
      StringList.Add('  #         AVISO DE EMB.                           FECHA DE RECEPCIÓN');
    end
    else
    begin
      StringList.Add(global_title_embarque);
      StringList.Add('  #         No. DE ENTRADA                          FECHA DE RECEPCIÓN');
    end;

    while not Connection.qryBusca.Eof do
    begin
      sTexto := '                                                             ';
      sTexto := StuffString(sTexto, 2, 5, Connection.qryBusca.fieldByName('iFolio').AsString);
      sTexto := StuffString(sTexto, 12, 15, Connection.qryBusca.FieldValues['sReferencia']);
      sTexto := StuffString(sTexto, 58, 10, Connection.qryBusca.fieldByName('dFechaAviso').AsString);
      StringList.Add(sTexto);
      Connection.qryBusca.Next;
    end;

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sNumeroOrden From ordenesdetrabajo Where sContrato = :Contrato And cIdStatus  = :Status');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
    connection.qryBusca.Params.ParamByName('status').DataType := ftString;
    connection.qryBusca.Params.ParamByName('status').Value := connection.configuracion.FieldValues['cStatusProceso'];
    Connection.qryBusca.Open;
    while not Connection.qryBusca.Eof do
    begin
      Connection.qryBusca2.Active := False;
      Connection.qryBusca2.SQL.Clear;
      Connection.qryBusca2.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato;
      Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
      Connection.qryBusca2.Params.ParamByName('Fecha').Value := dParamFecha;
      Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Orden').Value := Connection.qryBusca.FieldValues['sNumeroOrden'];
      Connection.qryBusca2.Open;
      StringListxOrden.Clear;
      while not Connection.qryBusca2.Eof do
      begin
        sTexto := '                                                             ';
        sTexto := StuffString(sTexto, 2, 5, Connection.qryBusca2.fieldByName('iFolio').AsString);
        sTexto := StuffString(sTexto, 12, 15, Connection.qryBusca2.FieldValues['sReferencia']);
        sTexto := StuffString(sTexto, 58, 10, Connection.qryBusca2.fieldByName('dFechaAviso').AsString);
        StringListxOrden.Add(sTexto);
        Connection.qryBusca2.Next;
      end;
      StringListxOrden.Add('');

      if Pos('TIERRA', sParamOrden) > 0 then
        global_inicio := global_inicio + 8000;

      MaximoDiario.Active := False;
      MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
      MaximoDiario.Params.ParamByName('Contrato').Value := sParamContrato;
      MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
      MaximoDiario.Params.ParamByName('Fecha').Value := dParamFecha;
      MaximoDiario.Open;
      if MaximoDiario.FieldByName('TotalDiario').IsNull then
        iDiario := global_inicio + 1
      else
        iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Insert Into bitacoradeactividades (sContrato, dIdFecha, iIdDiario, sIdTurno, sIdDepartamento, sNumeroOrden, sIdTipoMovimiento, mDescripcion)' +
        'Values (:Contrato, :Fecha, :Diario, :Turno, :Depto, :Orden, :Tipo, :Descripcion) ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Diario').Value := iDiario;
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
      connection.zCommand.Params.ParamByName('Turno').value := sParamTurno;
      connection.zCommand.Params.ParamByName('Depto').DataType := ftString;
      if global_depto = '' then
        connection.zCommand.Params.ParamByName('Depto').Value := NULL
      else
        connection.zCommand.Params.ParamByName('Depto').Value := global_depto;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := Connection.qryBusca.FieldValues['sNumeroOrden'];
      connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
      connection.zCommand.Params.ParamByName('Tipo').Value := 'AE';
      connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
      connection.zCommand.Params.ParamByName('Descripcion').Value := StringList.Text + StringListxOrden.Text;
      connection.zCommand.ExecSQL();
      Connection.qryBusca.Next;
    end;
  end
  else
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
    connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
    connection.qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
    connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Orden').Value := sParamOrden;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      if global_title_embarque = '' then
      begin
        if Connection.qryBusca.RecordCount > 1 then
          StringList.Add('CON ESTA FECHA SE VERIFICAN Y VALIDAN LAS LISTAS DE VERIFICACIÓN DE LOS SIGUIENTES AVISOS DE EMBARQUE.')
        else
          StringList.Add('CON ESTA FECHA SE VERIFICA Y VALIDA LA LISTA DE VERIFICACIÓN DEL SIGUIENTE AVISO DE EMBARQUE.');
        StringList.Add('  #         AVISO DE EMB.                             FECHA DE RECEPCIÓN');
      end
      else
      begin
        StringList.Add(global_title_embarque);
        StringList.Add('  #         No. DE ENTRADA                           FECHA DE RECEPCIÓN');
      end;

      while not Connection.qryBusca.Eof do
      begin
        sTexto := '                                                             ';
        sTexto := StuffString(sTexto, 2, 5, Connection.qryBusca.fieldByName('iFolio').AsString);
        sTexto := StuffString(sTexto, 12, 15, Connection.qryBusca.FieldValues['sReferencia']);
        sTexto := StuffString(sTexto, 58, 10, Connection.qryBusca.fieldByName('dFechaAviso').AsString);
        StringList.Add(sTexto);
        Connection.qryBusca.Next;
      end;
      StringList.Add('');
      if Pos('TIERRA', sParamOrden) > 0 then
        global_inicio := global_inicio + 8000;

      MaximoDiario.Active := False;
      MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
      MaximoDiario.Params.ParamByName('Contrato').Value := sParamContrato;
      MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
      MaximoDiario.Params.ParamByName('Fecha').Value := dParamFecha;
      MaximoDiario.Open;
      if MaximoDiario.FieldByName('TotalDiario').IsNull then
        iDiario := global_inicio + 1
      else
        iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Insert Into bitacoradeactividades (sContrato, dIdFecha, iIdDiario, sIdTurno, sIdDepartamento, sNumeroOrden, sIdTipoMovimiento, mDescripcion)' +
        'Values (:Contrato, :Fecha, :Diario, :Turno, :Depto, :Orden, :Tipo, :Descripcion) ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Diario').Value := iDiario;
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
      connection.zCommand.Params.ParamByName('Turno').value := sParamTurno;
      connection.zCommand.Params.ParamByName('Depto').DataType := ftString;
      if global_depto = '' then
        connection.zCommand.Params.ParamByName('Depto').Value := NULL
      else
        connection.zCommand.Params.ParamByName('Depto').Value := global_depto;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
      connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
      connection.zCommand.Params.ParamByName('Tipo').Value := 'AE';
      connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
      connection.zCommand.Params.ParamByName('Descripcion').Value := StringList.Text;
      connection.zCommand.ExecSQL();
      Connection.qryBusca.Next
    end
  end;
  MaximoDiario.Destroy;
end;

end.


