unit frm_compara2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, DBCtrls, StdCtrls, Grids, DBGrids, DB, global,
  Buttons, Mask, ExtCtrls, frxClass, frxDBSet, RXCtrls, frxDMPExport,
  frxCross, ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart, Newpanel,
  RxMemDS, ZAbstractRODataset, ZDataset, Menus, DateUtils, udbgrid,
  unitexcepciones, UFunctionsGHH,UnitTBotonesPermisos, cxGraphics, cxControls,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmComparativo2 = class(TForm)
    ds_avancesglobales: TDataSource;
    GroupBox1: TGroupBox;
    btnExit: TBitBtn;
    btnPrinter: TBitBtn;
    Bevel2: TBevel;
    Label6: TLabel;
    btnRefresh: TBitBtn;
    Avances: TfrxDBDataset;
    chImpresion: TCheckBox;
    frxAvances: TfrxReport;
    frxAvancesTotales: TfrxReport;
    Catalogo_001: TfrxReport;
    rxGraficaProgramado: TRxMemoryData;
    StringField16: TStringField;
    rxGraficaProgramadodFecha: TDateField;
    FloatField4: TFloatField;
    rxGraficaFisico: TRxMemoryData;
    StringField14: TStringField;
    rxGraficaFisicodFecha: TDateField;
    FloatField7: TFloatField;
    rxGraficaFinanciero: TRxMemoryData;
    StringField2: TStringField;
    DateField2: TDateField;
    FloatField3: TFloatField;
    chkSeries: TGroupBox;
    chkProgramado: TCheckBox;
    chkFisico: TCheckBox;
    chkFinanciero: TCheckBox;
    chkParametros: TGroupBox;
    Label2: TLabel;
    chk3D: TCheckBox;
    chkLeyendas: TCheckBox;
    up3D: TUpDown;
    ti3D: TMaskEdit;
    chkEjes: TCheckBox;
    chkAdicionales: TCheckBox;
    rxAvancesContrato: TRxMemoryData;
    rxAvancesContratodIdFecha: TDateField;
    rxAvancesContratodProgramadoDia: TFloatField;
    rxAvancesContratodProgramadoAcum: TFloatField;
    rxAvancesContratodFisicoDia: TFloatField;
    rxAvancesContratodFisicoAcumulado: TFloatField;
    SaveSql: TSaveDialog;
    popGraphics: TPopupMenu;
    Exportar1: TMenuItem;
    Label1: TLabel;
    ds_ordenesdetrabajo: TDataSource;
    ordenesdetrabajo: TZReadOnlyQuery;
    tsNumeroOrden: TComboBox;
    chkTurnos: TCheckBox;
    grGeneral: tNewGroupBox;
    dbGraphicsRespaldo: TDBChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    dbGraphics: TDBChart;
    FastLineSeries1: TFastLineSeries;
    FastLineSeries2: TFastLineSeries;
    FastLineSeries3: TFastLineSeries;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_avances: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure btnPrinterClick(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
    procedure up3DChanging(Sender: TObject; var AllowChange: Boolean);
    procedure chk3DClick(Sender: TObject);
    procedure chkLeyendasClick(Sender: TObject);
    procedure chkEjesClick(Sender: TObject);
    procedure chkProgramadoClick(Sender: TObject);
    procedure chkFisicoClick(Sender: TObject);
    procedure chkFinancieroClick(Sender: TObject);
    procedure chkAdicionalesClick(Sender: TObject);
    procedure tsNumeroOrdenChange(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure frxAvancesTotalesGetValue(const VarName: String;
      var Value: Variant);
    procedure frxAvancesGetValue(const VarName: String;
      var Value: Variant);
    procedure Catalogo_001GetValue(const VarName: String;
      var Value: Variant);
    procedure chkTurnosClick(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComparativo2: TfrmComparativo2;
  //utgrid:ticdbgrid;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso2: TBotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmComparativo2.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAvOrden');
  BotonPermiso2 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAvOrden',popGraphics);
  BotonPermiso.permisosBotones2(nil, nil, nil, btnPrinter);
  BotonPermiso2.permisosBotones(nil);
  try
    sMenuP:=stMenu;
    //UtGrid:=TicdbGrid.create(grid_avances);
    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('contrato').Value := global_contrato ;
    OrdenesdeTrabajo.Open ;
    While NOT OrdenesdeTrabajo.Eof Do
    Begin
        tsNumeroOrden.Items.Add(OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ) ;
        OrdenesdeTrabajo.Next ;
    End ;

    if Ordenesdetrabajo.RecordCount > 0 then
    begin
        tsNumeroOrden.ItemIndex := 0;
        tsNumeroOrden.OnChange(sender);
    end;

    tsNumeroOrden.Text := 'SELECCIONE ORDEN DE TRABAJO' ;

    tsNumeroOrden.SetFocus
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al iniciar el formulario', 0);
   end;
  end;
end;

procedure TfrmComparativo2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  BotonPermiso2.Free;
  action := cafree ;

end;

procedure TfrmComparativo2.btnExitClick(Sender: TObject);
begin
      close
end;

procedure TfrmComparativo2.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        grid_avances.SetFocus
end;

procedure TfrmComparativo2.btnPrinterClick(Sender: TObject);
begin
 if TcxGridDBTableView(grid_avances.ActiveView).DataController.DataSource.DataSet.IsEmpty=false then
 begin
  try
  begin
     If chImpresion.Checked = True Then
        If MessageDlg( 'Desea imprimir el comparativo fisico-programado',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
            if not FileExists(global_files + global_miReporte + '_avances_totales.fr3') then
            begin
                showmessage('El archivo de reporte '+global_Mireporte+'_avances_totales.fr3 no existe, notifique al administrador del sistema');
                exit;
            end;
            frxAvancesTotales.LoadFromFile(Global_Files + global_miReporte + '_avances_totales.fr3') ;
            frxAvancesTotales.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        end
        Else
        begin
            if not FileExists(global_files + global_miReporte + '_avances_generales.fr3') then
            begin
                showmessage('El archivo de reporte '+global_Mireporte+'_avances_generales.fr3 no existe, notifique al administrador del sistema');
                exit;
            end;
            frxAvances.LoadFromFile(Global_Files + global_miReporte + '_avances_generales.fr3') ;
            frxAvances.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        end
    Else
    begin
        if not FileExists(global_files + global_miReporte + '_programados.fr3') then
        begin
            showmessage('El archivo de reporte '+global_Mireporte+'_programados.fr3 no existe, notifique al administrador del sistema');
            exit;
        end;
        catalogo_001.LoadFromFile(Global_Files + global_miReporte + '_programados.fr3') ;
        catalogo_001.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    end;

  end
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al imprimir', 0);
   end;
 end
 end
 else
  showmessage('No existen registros para imprimir');
end;

procedure TfrmComparativo2.Exportar1Click(Sender: TObject);
begin
  try
  if TcxGridDBTableView(grid_avances.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
   begin
    SaveSql.Title := 'Guardar Grafica';
    If SaveSql.Execute Then
         dbGraphics.SaveToBitmapFile(SaveSql.FileName);
   end
   else
   showmessage('No existen datos para exportar');
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al exportar gráfica', 0);
    end;
  end;
end;

procedure TfrmComparativo2.up3DChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    dbGraphics.Chart3DPercent := Up3D.Position ;

end;

procedure TfrmComparativo2.chk3DClick(Sender: TObject);
begin
    dbGraphics.View3D := chk3d.Checked ;
end;

procedure TfrmComparativo2.chkLeyendasClick(Sender: TObject);
begin
    dbGraphics.Series[0].Marks.Visible := chkLeyendas.Checked ;
    dbGraphics.Series[1].Marks.Visible := chkLeyendas.Checked ;
    dbGraphics.Series[2].Marks.Visible := chkLeyendas.Checked ;
end;

procedure TfrmComparativo2.chkEjesClick(Sender: TObject);
begin
    dbGraphics.LeftAxis.Visible := chkEjes.Checked
end;

procedure TfrmComparativo2.chkProgramadoClick(Sender: TObject);
begin
    dbGraphics.Series[0].Active := chkProgramado.Checked ;
end;

procedure TfrmComparativo2.chkTurnosClick(Sender: TObject);
begin
    tsNumeroOrden.OnChange(sender);
end;

procedure TfrmComparativo2.chkFisicoClick(Sender: TObject);
begin
    dbGraphics.Series[1].Active := chkFisico.Checked ;
end;

procedure TfrmComparativo2.chkFinancieroClick(Sender: TObject);
begin
    dbGraphics.Series[2].Active := chkFinanciero.Checked ;
end;

procedure TfrmComparativo2.chkAdicionalesClick(Sender: TObject);
var
   sFecha : String ;
begin
  try
    If rxGraficaFinanciero.RecordCount > 0 then
        rxGraficaFinanciero.EmptyTable  ;

    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select year(dFechaFinal) as dAnno , month(dFechaFinal) as dMes From estimaciones Where ' +
                                'sContrato = :Contrato and sNumeroOrden = :orden Group By Year(dFechaFinal), month(dFechaFinal)' ) ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca2.params.ParamByName('orden').DataType := ftString ;
    Connection.qryBusca2.params.ParamByName('orden').Value := tsNumeroOrden.Text ;
    Connection.qryBusca.Open ;
    While NOT Connection.qryBusca.Eof Do
    Begin
        If Connection.qryBusca.FieldValues['dMes'] <= 8 Then
            sFecha := '01/0' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1))  + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
        Else
            If Connection.qryBusca.FieldValues['dMes'] <= 11 Then
                sFecha := '01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1)) + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
            Else
                sFecha := '01/01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dAnno'] + 1)) ;
        sFecha := DateToStr(StrToDate(sFecha) - 1) ;


        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        If chkAdicionales.Checked Then
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimaciones ' +
                                         'Where sContrato = :Contrato And dFechaFinal <= :Fecha And sNumeroOrden = :orden Group By sContrato' )
        Else
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimaciones ' +
                                         'Where sContrato = :Contrato And dFechaFinal <= :Fecha And sNumeroGenerador NOT Like "%A%" And sNumeroOrden = :orden Group By sContrato' ) ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := strToDate(sFecha) ;
        Connection.qryBusca2.params.ParamByName('orden').DataType := ftString ;
        Connection.qryBusca2.params.ParamByName('orden').Value := tsNumeroOrden.Text ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
        Begin
           rxGraficaFinanciero.Append ;
           rxGraficaFinanciero.FieldValues['sDescripcion'] := global_contrato ;
           rxGraficaFinanciero.FieldValues['dFecha'] := sFecha ;
           rxGraficaFinanciero.FieldValues['dFinanciero'] := (Connection.qryBusca2.FieldValues['dReal'] / dMontoContrato) * 100 ;
           rxGraficaFinanciero.Post ;
        End ;
        Connection.qryBusca.Next
    End
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al consultar tabla estimaciones', 0);
    end;
  end;

end;

procedure TfrmComparativo2.tsNumeroOrdenChange(Sender: TObject);
var
    sFecha     : String ;
    iMiMes     : Byte ;
    dAcumulado : Currency ;
    dAcumuladoFisico : Currency ;
    dAvanceFisico    : Currency ;
    QryBuscarTurnos  : TZReadOnlyQuery;

    dProgramadoActual,
    dProgramadoAnterior,
    dProgramadoAcumulado,
    dProgramadoAcumulado_Aux : Currency;
    sTurno : string;
begin
 try
  // Primero Genera la Grafica ....

    Caption := tsNumeroOrden.Text  + '-' + connection.configuracion.FieldValues['sNombre'] + '. Monto del Contrato [' + connection.contrato.fieldByName('dMontoMN').AsString + ']' ;
    dMontoContrato := connection.contrato.FieldValues['dMontoMN'] ;

    SaveSql.FileName := global_contrato ;
    If rxGraficaProgramado.RecordCount > 0 then
      rxGraficaProgramado.EmptyTable   ;

    If rxGraficaFisico.RecordCount > 0 then
      rxGraficaFisico.EmptyTable  ;

    If rxGraficaFinanciero.RecordCount > 0 then
        rxGraficaFinanciero.EmptyTable  ;

    If rxAvancesContrato.RecordCount > 0 then
        rxAvancesContrato.EmptyTable  ;

    dbGraphics.RefreshData ;

    QryBuscarTurnos := TZReadOnlyQuery.Create(self);
    QryBuscarTurnos.Connection := connection.zConnection;

    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    if chkTurnos.Checked then
       Connection.qryBusca.SQL.Add('Select a.dIdFecha, a.dAvancePonderadoDia, a.dAvancePonderadoGlobal, af.dAvance, r.sIdTurno ' +
                                   'From avancesglobales a ' +
                                   'left join reportediario r on (r.sContrato = a.sContrato and r.sIdConvenio = a.sIdConvenio and r.sNumeroOrden = a.sNumeroOrden and r.dIdFecha = a.dIdfecha ) '+
                                   'left join avancesglobalesxorden af on (a.sContrato = af.sContrato and a.sIdConvenio = af.sIdConvenio and a.sNumeroOrden = af.sNumeroOrden and a.dIdFecha = af.dIdFecha and af.sIdTurno = r.sIdTurno) '+
                                   'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden order by a.dIdFecha' )
    else
        Connection.qryBusca.SQL.Add('Select a.dIdFecha, a.dAvancePonderadoDia, a.dAvancePonderadoGlobal, sum(af.dAvance) as dAvance ' +
                                   'From avancesglobales a ' +
                                   //'left join reportediario r on (r.sContrato = a.sContrato and r.sIdConvenio = a.sIdConvenio and r.sNumeroOrden = a.sNumeroOrden and r.dIdFecha = a.dIdfecha ) '+
                                   'left join avancesglobalesxorden af on (a.sContrato = af.sContrato and a.sIdConvenio = af.sIdConvenio and a.sNumeroOrden = af.sNumeroOrden and a.dIdFecha = af.dIdFecha ) '+
                                   'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden group by a.dIdFecha order by a.dIdFecha');
    Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Contrato').Value    := global_contrato ;
    Connection.qryBusca.params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Convenio').Value    := global_convenio ;
    Connection.qryBusca.params.ParamByName('Orden').DataType    := ftString ;
    Connection.qryBusca.params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
    Connection.qryBusca.Open ;

    If connection.QryBusca.RecordCount > 0 Then
        iMiMes := MonthOf(Connection.QryBusca.FieldValues['dIdFecha'])
    Else
        iMiMes := 0 ;
    dAcumuladoFisico := 0 ;
    dProgramadoAnterior := 0;
    While NOT Connection.qryBusca.Eof Do
    Begin
        If iMiMes <> MonthOf(Connection.QryBusca.FieldValues['dIdFecha']) Then
        Begin
            iMiMes := MonthOf(Connection.QryBusca.FieldValues['dIdFecha']) ;
            rxGraficaProgramado.Append ;
            rxGraficaProgramado.FieldValues['sDescripcion'] := global_contrato ;
            rxGraficaProgramado.FieldValues['dFecha'] := Connection.QryBusca.FieldValues['dIdFecha'] - 1 ;
            rxGraficaProgramado.FieldValues['dProgramado'] := dAcumulado ;
            rxGraficaProgramado.Post ;
            dAcumulado := 0 ;
        End ;
        dAvanceFisico := 0 ;
        If Connection.QryBusca.FieldValues['dAvance'] <> Null Then
        begin
            dAcumuladoFisico := dAcumuladoFisico + Connection.QryBusca.FieldValues['dAvance'] ;
            dAvanceFisico    := Connection.QryBusca.FieldValues['dAvance']
        End ;

        if chkTurnos.Checked then
        begin
            {Asignacion de valores a las variables,, }
            if rxAvancesContrato.FieldValues['dIdFecha'] <>  Connection.QryBusca.FieldValues['dIdFecha'] then
            begin
                dProgramadoActual        := Connection.QryBusca.FieldValues['dAvancePonderadoDia'];
                dProgramadoAcumulado_Aux := Connection.QryBusca.FieldValues['dAvancePonderadoGlobal'];
                dProgramadoAcumulado     := 0;
            end;

            {Consultamos los turnos por dia,, para obetner el porgramdo por turnos,, OSA ivan,,,}
            QryBuscarTurnos.Active := False;
            QryBuscarTurnos.SQL.Clear;
            QryBuscarTurnos.SQL.Add('select t.sIdTurno from turnos t '+
                                    'inner join reportediario r on (r.sContrato = t.sContrato and r.sNumeroOrden =:Orden and r.dIdFecha =:Fecha and r.sIdTurno = t.sIdTurno) '+
                                    'where t.sContrato =:Contrato order by t.sIdTurno DESC');
            QryBuscarTurnos.ParamByName('Contrato').AsString := global_contrato;
            QryBuscarTurnos.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
            QryBuscarTurnos.ParamByName('Fecha').AsDate      := Connection.QryBusca.FieldValues['dIdFecha'];
            QryBuscarTurnos.Open;

            {Ahora dividimos el programado de acuerdo a los turnos..}
            if QryBuscarTurnos.RecordCount > 0 then
            begin
                dProgramadoActual := dProgramadoActual / QryBuscarTurnos.RecordCount;
                sTurno            := QryBuscarTurnos.FieldValues['sIdTurno'];
            end;

            {Esto es para cuadrar los datos al avnce del dia,,}
            if Connection.qryBusca.FieldValues['sIdTurno'] = sTurno then
            begin
                dProgramadoActual    := dProgramadoAcumulado_Aux - dProgramadoAnterior;
                dProgramadoAnterior  := Connection.QryBusca.FieldValues['dAvancePonderadoGlobal'];
                dProgramadoAcumulado := Connection.QryBusca.FieldValues['dAvancePonderadoGlobal'];
            end
            else
            begin
                dProgramadoAnterior  := dProgramadoAnterior  + dProgramadoActual;
                dProgramadoAcumulado := dProgramadoAcumulado + dProgramadoAnterior;
            end;
        end
        else
        begin
            dProgramadoActual    := Connection.QryBusca.FieldValues['dAvancePonderadoDia'];
            dProgramadoAcumulado := Connection.QryBusca.FieldValues['dAvancePonderadoGlobal'];
        end;

        rxAvancesContrato.Append ;
        rxAvancesContrato.FieldValues['dIdFecha']         := Connection.QryBusca.FieldValues['dIdFecha'] ;
        rxAvancesContrato.FieldValues['dProgramadoDia']   := dProgramadoActual;
        rxAvancesContrato.FieldValues['dProgramadoAcum']  := dProgramadoAcumulado;
        rxAvancesContrato.FieldValues['dFisicoDia']       := dAvanceFisico;
        rxAvancesContrato.FieldValues['dFisicoAcumulado'] := dAcumuladoFisico;
        rxAvancesContrato.Post ;

        dAcumulado := Connection.QryBusca.FieldValues['dAvancePonderadoGlobal'] ;

        Connection.qryBusca.Next
    End ;
    QryBuscarTurnos.Destroy;


    If dAcumulado <> 0 Then
        With Connection.qryBusca DO
        begin
            If MonthOf(FieldValues['dIdFecha']) <= 8 Then
               sFecha := '01/0' + Trim(IntToStr(MonthOf(FieldValues['dIdFecha']) + 1))  + '/' + Trim(IntToStr(YearOf(FieldValues['dIdFecha'])))
            Else
               If MonthOf(FieldValues['dIdFecha']) <= 11 Then
                   sFecha := '01/' + Trim(IntToStr(MonthOf(FieldValues['dIdFecha']) + 1)) + '/' + Trim(IntToStr(YearOf(FieldValues['dIdFecha'])))
                Else
                   sFecha := '01/01/' + Trim(IntToStr(YearOf(FieldValues['dIdFecha']) + 1 )) ;
            sFecha := DateToStr(StrToDate(sFecha) - 1) ;
            rxGraficaProgramado.Append ;
            rxGraficaProgramado.FieldValues['sDescripcion'] := global_contrato ;
            rxGraficaProgramado.FieldValues['dFecha'] := sFecha ;
            rxGraficaProgramado.FieldValues['dProgramado'] := dAcumulado ;
            rxGraficaProgramado.Post ;

      End ;
    // El resto del avance Fisico .....

    Connection.qryBusca2.Active := False ;
    Connection.qryBusca2.SQL.Clear ;
    Connection.qryBusca2.SQL.Add('Select dIdFecha, dAvance ' +
                                'From avancesglobalesxorden ' +
                                'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden and dIdFecha > :fecha order by dIdFecha' ) ;
    Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca2.params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca2.params.ParamByName('Convenio').Value := global_convenio ;
    Connection.qryBusca2.params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca2.params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
    Connection.qryBusca2.params.ParamByName('fecha').DataType := ftDate ;
    Connection.qryBusca2.params.ParamByName('fecha').Value := connection.QryBusca.FieldValues['dIdFecha'] ;
    Connection.qryBusca2.Open ;
    While NOT Connection.qryBusca2.Eof Do
    Begin
        dAvanceFisico := 0 ;
        If Connection.QryBusca2.FieldValues['dAvance'] <> Null Then
        begin
            dAcumuladoFisico := dAcumuladoFisico + Connection.QryBusca2.FieldValues['dAvance'] ;
            dAvanceFisico := Connection.QryBusca2.FieldValues['dAvance']
        End ;
        rxAvancesContrato.Append ;
        rxAvancesContrato.FieldValues['dIdFecha'] := Connection.QryBusca2.FieldValues['dIdFecha'] ;
        rxAvancesContrato.FieldValues['dProgramadoDia'] := 0 ;
        rxAvancesContrato.FieldValues['dProgramadoAcum'] := Connection.QryBusca.FieldValues['dAvancePonderadoGlobal'] ;
        rxAvancesContrato.FieldValues['dFisicoDia'] := dAvanceFisico ;
        rxAvancesContrato.FieldValues['dFisicoAcumulado'] := dAcumuladoFisico ;
        rxAvancesContrato.Post ;
        Connection.qryBusca2.Next
    End ;


    // Real ...
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes From avancesglobalesxorden Where ' +
                                'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
    Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Convenio').Value := global_convenio ;
    Connection.qryBusca.params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
    Connection.qryBusca.Open ;
    While NOT Connection.qryBusca.Eof Do
    Begin
       If Connection.qryBusca.FieldValues['dMes'] <= 8 Then
          sFecha := '01/0' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1))  + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
       Else
          If Connection.qryBusca.FieldValues['dMes'] <= 11 Then
              sFecha := '01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1)) + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
          Else
              sFecha := '01/01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dAnno'] + 1)) ;

          sFecha := DateToStr(StrToDate(sFecha) - 1) ;
          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum(dAvance) as dMensual From avancesglobalesxorden Where ' +
                                       'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By sContrato' ) ;
          Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
          Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
          Connection.qryBusca2.params.ParamByName('Convenio').DataType := ftString ;
          Connection.qryBusca2.params.ParamByName('Convenio').Value := global_convenio ;
          Connection.qryBusca2.params.ParamByName('Orden').DataType := ftString ;
          Connection.qryBusca2.params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
          Connection.qryBusca2.params.ParamByName('Fecha').DataType := ftDate ;
          Connection.qryBusca2.params.ParamByName('Fecha').Value := StrToDate(sFecha) ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca.RecordCount > 0 Then
          Begin
             rxGraficaFisico.Append ;
             rxGraficaFisico.FieldValues['sDescripcion'] := global_contrato ;
             rxGraficaFisico.FieldValues['dFecha'] := sFecha ;
             rxGraficaFisico.FieldValues['dFisico'] := Connection.qryBusca2.FieldValues['dMensual'] ;
             rxGraficaFisico.Post ;
          End ;
          Connection.qryBusca.Next
     End ;

     // Financiero ....
     Connection.qryBusca.Active := False ;
     Connection.qryBusca.SQL.Clear ;
     Connection.qryBusca.SQL.Add('Select year(dFechaFinal) as dAnno , month(dFechaFinal) as dMes From estimaciones Where ' +
                                 'sContrato = :Contrato And sNumeroOrden = :orden Group By Year(dFechaFinal), month(dFechaFinal)' ) ;
     Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
     Connection.qryBusca.params.ParamByName('Contrato').Value := global_contrato ;
     Connection.qryBusca.params.ParamByName('orden').DataType := ftString ;
     Connection.qryBusca.params.ParamByName('orden').Value := tsNumeroOrden.Text ;
     Connection.qryBusca.Open ;
     While NOT Connection.qryBusca.Eof Do
     Begin
         If Connection.qryBusca.FieldValues['dMes'] <= 8 Then
             sFecha := '01/0' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1))  + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
         Else
             If Connection.qryBusca.FieldValues['dMes'] <= 11 Then
                 sFecha := '01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1)) + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
             Else
                 sFecha := '01/01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dAnno'] + 1)) ;
         sFecha := DateToStr(StrToDate(sFecha) - 1) ;

         Connection.qryBusca2.Active := False ;
         Connection.qryBusca2.SQL.Clear ;
         If chkAdicionales.Checked Then
              Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimaciones ' +
                                           'Where sContrato = :Contrato And dFechaFinal <= :Fecha and sNumeroOrden = :orden Group By sContrato' )
         Else
              Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimaciones ' +
                                           'Where sContrato = :Contrato And dFechaFinal <= :Fecha And sNumeroGenerador NOT Like "%A%" and sNumeroOrden = :orden Group By sContrato' ) ;

         Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
         Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
         Connection.qryBusca2.params.ParamByName('Fecha').DataType := ftDate ;
         Connection.qryBusca2.params.ParamByName('Fecha').Value := strToDate(sFecha) ;
         Connection.qryBusca2.params.ParamByName('orden').DataType := ftString ;
         Connection.qryBusca2.params.ParamByName('orden').Value := tsNumeroOrden.Text ;
         Connection.qryBusca2.Open ;
         If Connection.qryBusca2.RecordCount > 0 Then
         Begin
            try
               rxGraficaFinanciero.Append ;
               rxGraficaFinanciero.FieldValues['sDescripcion'] := global_contrato ;
               rxGraficaFinanciero.FieldValues['dFecha'] := sFecha ;
               rxGraficaFinanciero.FieldValues['dFinanciero'] := (Connection.qryBusca2.FieldValues['dReal'] / dMontoContrato) * 100 ;
               rxGraficaFinanciero.Post ;
            Except
                //No hace nada, con esto se evita el mensaje de error, division por cero.. 17 Febrero de 2011
            end;
         End ;
         Connection.qryBusca.Next
     End ;

     dbGraphics.Title.Text.Clear ;
     dbGraphics.Title.Text.Add ('Avances Programado/Fisico/Financiero') ;
     dbGraphics.Title.Text.Add (Caption) ;
     dbGraphics.Title.Text.Add (connection.contrato.FieldValues['mDescripcion']) ;

     rxAvancesContrato.Locate('dIdFecha', Date() , [loPartialKey]) ;

     // Nos posicionamos en el primer registro ...

     // Termino de Generar la Grafica ..
     // Termino de Actualizar los Datos principales del Contrato ...

 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al generar la gráfica', 0);
  end;

 end;
end;

procedure TfrmComparativo2.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmComparativo2.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmComparativo2.btnRefreshClick(Sender: TObject);
begin
   try
     rxAvancesContrato.Locate('dIdFecha', Date() , [loPartialKey]) ;
   except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Comparativo de Avances', 'Al actualizar Grid', 0);
    end;
   end;
end;

procedure TfrmComparativo2.frxAvancesTotalesGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'ORDEN_TRABAJO') = 0 then
      Value := tsNumeroOrden.Text ;
end;

procedure TfrmComparativo2.frxAvancesGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'ORDEN_TRABAJO') = 0 then
      Value := tsNumeroOrden.Text ;
end;

procedure TfrmComparativo2.Catalogo_001GetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'ORDEN_TRABAJO') = 0 then
      Value := tsNumeroOrden.Text ;
end;

end.
