unit frm_OpcionesBarco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  UFunctionsGHH;
type
  TfrmOpcionesBarco = class(TForm)
    pgOpciones: TsPageControl;
    pgPartidas: TsTabSheet;
    CmdOk: TButton;
    CmdCancel: TButton;
    GroupPageRange: TGroupBox;
    GroupQuality: TGroupBox;
    Fi: TDateTimePicker;
    Ff: TDateTimePicker;
    Label1: TLabel;
    Label3: TLabel;
    ChkTodo: TCheckBox;
    optTodas: TRadioButton;
    optEmbarcacion: TRadioButton;
    RArribo: TRadioButton;
    RDisposicion: TRadioButton;
    tdEmbarcacionExist: TDBLookupComboBox;
    Embarcaciones2: TZReadOnlyQuery;
    StringField4: TStringField;
    StringField8: TStringField;
    ds_embarcaciones2: TDataSource;
    mExistencias: TRxMemoryData;
    qry_MuestraAgua: TZReadOnlyQuery;
    ds_MuestraAgua: TDataSource;
    qry_MuestraMov: TZReadOnlyQuery;
    ds_MuestraMov: TDataSource;
    chkExistencias: TCheckBox;
    chkConsumoEQ: TCheckBox;
    chkConsumos: TCheckBox;
    chkRecibido: TCheckBox;
    chkProducido: TCheckBox;
    procedure CmdOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkExistenciasClick(Sender: TObject);
    procedure chkConsumoEQClick(Sender: TObject);
    procedure chkConsumosClick(Sender: TObject);
    procedure chkRecibidoClick(Sender: TObject);
    procedure chkProducidoClick(Sender: TObject);
    procedure chkExistenciasEnter(Sender: TObject);
    procedure chkConsumoEQEnter(Sender: TObject);
    procedure chkConsumosEnter(Sender: TObject);
    procedure chkRecibidoEnter(Sender: TObject);
    procedure chkProducidoEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcionesBarco: TfrmOpcionesBarco;
  CadenaDiesel, sTituloDiesel : string;

implementation

uses
    frm_AdmonyTiempos;

{$R *.dfm}

procedure TfrmOpcionesBarco.chkConsumoEQClick(Sender: TObject);
begin      
    if chkConsumoEQ.Checked then
    begin
        chkExistencias.Checked := False;
        chkConsumoEQ.Checked   := True;
        chkConsumos.Checked    := False;
        chkRecibido.Checked    := False;
        chkProducido.Checked   := False;
    end;
end;

procedure TfrmOpcionesBarco.chkConsumoEQEnter(Sender: TObject);
begin
    cadenaDiesel  := ' r.dConsumoEquipos as dExistenciaActual, r.dConsumo from recursos r ';
    sTituloDiesel := 'CONSUMO DE EQUIPOS';
end;

procedure TfrmOpcionesBarco.chkConsumosClick(Sender: TObject);
begin
    if chkConsumos.Checked  then
    begin
        chkExistencias.Checked := False;
        chkConsumoEQ.Checked   := False;
        chkConsumos.Checked    := True;
        chkRecibido.Checked    := False;
        chkProducido.Checked   := False;
    end;
end;

procedure TfrmOpcionesBarco.chkConsumosEnter(Sender: TObject);
begin
    cadenaDiesel := ' r.dConsumo as dExistenciaActual, r.dConsumo from recursos r ';
    sTituloDiesel := 'CONSUMOS';
end;

procedure TfrmOpcionesBarco.chkExistenciasClick(Sender: TObject);
begin         
    if chkExistencias.Checked then
    begin
        chkExistencias.Checked := True;
        chkConsumoEQ.Checked   := False;
        chkConsumos.Checked    := False;
        chkRecibido.Checked    := False;
        chkProducido.Checked   := False;
    end;
end;

procedure TfrmOpcionesBarco.chkExistenciasEnter(Sender: TObject);
begin
    cadenaDiesel := ' r.dExistenciaActual, r.dConsumo from recursos r ';
    sTituloDiesel := 'EXISTENCIAS';
end;

procedure TfrmOpcionesBarco.chkProducidoClick(Sender: TObject);
begin
    if chkProducido.Checked then
    begin
        chkExistencias.Checked := False;
        chkConsumoEQ.Checked   := False;
        chkConsumos.Checked    := False;
        chkRecibido.Checked    := False;
        chkProducido.Checked   := True;
    end;
end;

procedure TfrmOpcionesBarco.chkProducidoEnter(Sender: TObject);
begin
    cadenaDiesel := ' r.dProduccion as dExistenciaActual, r.dConsumo from recursos r ';
    sTituloDiesel := 'PRODUCCION';
end;

procedure TfrmOpcionesBarco.chkRecibidoClick(Sender: TObject);
begin
    if chkRecibido.Checked then
    begin
        chkExistencias.Checked := False;
        chkConsumoEQ.Checked   := False;
        chkConsumos.Checked    := False;
        chkRecibido.Checked    := True;
        chkProducido.Checked   := False;
    end;
end;

procedure TfrmOpcionesBarco.chkRecibidoEnter(Sender: TObject);
begin
    cadenaDiesel := ' r.dRecibido as dExistenciaActual, r.dConsumo from recursos r ';
    sTituloDiesel := 'RECEPCION';
end;

procedure TfrmOpcionesBarco.CmdOkClick(Sender: TObject);
var
   cta : integer;
   sCadena, sDia : string;
   meses : array[ 1..12 ] of String;
begin
     meses[1]  := 'ENERO';
     meses[2]  := 'FEBRERO';
     meses[3]  := 'MARZO';
     meses[4]  := 'ABRIL';
     meses[5]  := 'MAYO';
     meses[6]  := 'JUNIO';
     meses[7]  := 'JULIO';
     meses[8]  := 'AGOSTO';
     meses[9]  := 'SEPTIEMBRE';
     meses[10] := 'OCTUBRE';
     meses[11] := 'NOVIEMBRE';
     meses[12] := 'DICIEMBRE';

     if frmAdmonytiempos.pgAdmon.ActivePage.Name = 'TabExistencias' then
     begin
         if (chkExistencias.Checked = False) and (chkConsumoEQ.Checked = False) and
            (chkConsumos.Checked = False) and (chkRecibido.Checked = False) and (chkProducido.Checked = False) then
         begin
             messageDLG('Seleccione una Clasificacion de DIESEL (Consumo, Existencia...)', mtInformation, [mbOk], 0);
             exit;
         end;
     end;

     //Revisado por <ivan> 18 Septiembre 2010...
     if frmAdmonytiempos.pgAdmon.ActivePage.Name = 'movembarcacion' then
     begin
        frmAdmonyTiempos.dbMovimientos.FieldAliases.Clear;
        frmAdmonytiempos.dbMovimientos.DataSet := qry_MuestraMov;

        if ChkTodo.Checked = True then
        begin
           qry_MuestraMov.Active := False;
           qry_MuestraMov.SQL.Clear;
           qry_MuestraMov.SQL.Add('select  m.*, e.sDescripcion as barco, f.sContrato as Contrato, f.sNumeroOrden, f.sFactor as Factor '+
                                'from  movimientosdeembarcacion m '+
                                'inner join embarcaciones e on (m.sContrato = e.sContrato  and m.sIdEmbarcacion = e.sIdEmbarcacion) '+
                                'inner join fasesxorden f on (f.iIdDiario = m.iIdDiario and f.dIdFecha = m.dIdFecha) '+
                                'where m.dIdFecha >= :FechaI  and m.dIdFecha <= :FechaF '+
                                'and m.sIdFase = "OPER" order by m.sHoraInicio');
           qry_MuestraMov.Params.ParamByName( 'FechaI' ).DataType := ftDate;
           qry_MuestraMov.Params.ParamByName( 'FechaI' ).Value := Fi.Date;
           qry_MuestraMov.Params.ParamByName( 'FechaF' ).DataType := ftDate;
           qry_MuestraMov.Params.ParamByName( 'FechaF' ).Value := Ff.Date;
           qry_MuestraMov.Open;

           frmAdmonytiempos.fReporte.LoadFromFile (global_files + 'MovimientosBarco.fr3');
        end
        else
        begin
           qry_MuestraMov.Active := False;
           qry_MuestraMov.SQL.Clear;
           qry_MuestraMov.SQL.Add('select  m.*, e.sDescripcion as barco  '+
                                'from  movimientosdeembarcacion m '+
                                'inner join embarcaciones e on (m.sContrato = e.sContrato  and m.sIdEmbarcacion = e.sIdEmbarcacion) '+
                                'where m.dIdFecha >= :FechaI  and m.dIdFecha <= :FechaF '+
                                'and m.sIdFase = "OPER" order by m.sHoraInicio');
           qry_MuestraMov.Params.ParamByName( 'FechaI' ).DataType := ftDate;
           qry_MuestraMov.Params.ParamByName( 'FechaI' ).Value := Fi.Date;
           qry_MuestraMov.Params.ParamByName( 'FechaF' ).DataType := ftDate;
           qry_MuestraMov.Params.ParamByName( 'FechaF' ).Value := Ff.Date;
           qry_MuestraMov.Open;

           frmAdmonytiempos.fReporte.LoadFromFile (global_files + 'MovimientosBarco_Simple.fr3');
        end;
     end;

     //Consulta de las exitencias de Diesel por embarcaciones y rangos de fechas...
     if frmAdmonytiempos.pgAdmon.ActivePage.Name = 'TabExistencias' then
     begin

         if OptTodas.Checked then
         begin
            qry_MuestraAgua.Active := False;
            qry_MuestraAgua.SQL.Clear ;
            qry_MuestraAgua.SQL.Add('select r.sContrato, year(r.dIdFecha) as anio, MONTH(r.dIdFecha) as mes, r.dIdFecha, r.sIdEmbarcacion, e.sDescripcion, re.sMedida, re.sDescripcion as combustible, '+
                                     cadenaDiesel +
                                    'inner join embarcaciones e on(e.sContrato = r.sContrato and e.sIdEmbarcacion = r.sIdEmbarcacion) '+
                                    'inner join recursosdeexistencias re on (re.iIdRecursoExistencia = r.iIdRecursoExistencia and re.lCombustible = "Si") '+
                                    'where r.sContrato =:Contrato  and dIdFecha >=:FechaI and dIdFecha <=:FechaF group by r.sContrato, r.iIdRecursoExistencia, r.dIdFecha, r.sIdEmbarcacion, r.iIdRecursoExistencia '+
                                    'order by  r.iIdRecursoExistencia, YEAR(r.dIdFecha), month(r.dIdFecha), r.sIdEmbarcacion, r.dIdFecha ');
            qry_MuestraAgua.Params.ParamByName( 'Contrato' ).DataType := ftString;
            qry_MuestraAgua.Params.ParamByName( 'Contrato' ).Value    := global_contrato;
            qry_MuestraAgua.Params.ParamByName( 'FechaI' ).DataType    := ftDate;
            qry_MuestraAgua.Params.ParamByName( 'FechaI' ).Value       := Fi.Date;
            qry_MuestraAgua.Params.ParamByName( 'FechaF' ).DataType    := ftDate;
            qry_MuestraAgua.Params.ParamByName( 'FechaF' ).Value       := Ff.Date;
            qry_MuestraAgua.Open;
         end
         else
         begin
            qry_MuestraAgua.Active := False;
            qry_MuestraAgua.SQL.Clear ;
            qry_MuestraAgua.SQL.Add('select r.sContrato, year(r.dIdFecha) as anio, MONTH(r.dIdFecha) as mes, r.dIdFecha, r.sIdEmbarcacion, e.sDescripcion, re.sMedida, re.sDescripcion as combustible, '+
                                     cadenaDiesel +
                                    'inner join embarcaciones e on(e.sContrato = r.sContrato and e.sIdEmbarcacion = r.sIdEmbarcacion) '+
                                    'inner join recursosdeexistencias re on (re.iIdRecursoExistencia = r.iIdRecursoExistencia and re.lCombustible = "Si") '+
                                    'where r.sContrato =:Contrato  and r.dIdFecha >=:FechaI and r.dIdFecha <=:FechaF and r.sIdEmbarcacion =:Barco group by r.sContrato, r.iIdRecursoExistencia, r.dIdFecha, r.sIdEmbarcacion, r.iIdRecursoExistencia '+
                                    'order by  r.iIdRecursoExistencia, YEAR(r.dIdFecha), month(r.dIdFecha), r.sIdEmbarcacion, r.dIdFecha ');
            qry_MuestraAgua.Params.ParamByName( 'Contrato' ).DataType  := ftString;
            qry_MuestraAgua.Params.ParamByName( 'Contrato' ).Value     := global_contrato;
            qry_MuestraAgua.Params.ParamByName( 'FechaI' ).DataType    := ftDate;
            qry_MuestraAgua.Params.ParamByName( 'FechaI' ).Value       := Fi.Date;
            qry_MuestraAgua.Params.ParamByName( 'FechaF' ).DataType    := ftDate;
            qry_MuestraAgua.Params.ParamByName( 'FechaF' ).Value       := Ff.Date;
            qry_MuestraAgua.Params.ParamByName( 'Barco' ).DataType     := ftString;
            qry_MuestraAgua.Params.ParamByName( 'Barco' ).Value        := tdEmbarcacionExist.KeyValue;
            qry_MuestraAgua.Open;
         end;

            frmAdmonytiempos.dbOtrosMovimientos.FieldAliases.Clear;
            frmAdmonytiempos.dbOtrosMovimientos.DataSet := mExistencias;
            mExistencias.FieldDefs.Clear;

            for Cta := 0 to qry_MuestraAgua.FieldDefs.Count - 1 do
                 mExistencias.FieldDefs.Add(qry_MuestraAgua.FieldDefs.Items[Cta].Name, qry_MuestraAgua.FieldDefs.Items[Cta].DataType, qry_MuestraAgua.FieldDefs.Items[Cta].Size, qry_MuestraAgua.FieldDefs.Items[Cta].Required);

            for Cta := 1 to 31 do
            begin
                mExistencias.FieldDefs.Add('dia'+ IntToStr(Cta), ftFloat, 0, True);
                mExistencias.FieldDefs.Add('Cdia'+ IntToStr(Cta), ftFloat, 0, True);
            end;

            mExistencias.FieldDefs.Add('sMes',ftstring, 30, True);
            mExistencias.FieldDefs.Add('totalConsumo', ftFloat, 0, True);
            mExistencias.FieldDefs.Add('totalExistencia', ftFloat, 0, True);
            mExistencias.FieldDefs.Add('sTitulo', ftString, 25, True);

            mExistencias.Open;
            sCadena := '' ;
            Qry_MuestraAgua.First;
            mExistencias.EmptyTable;
            while not qry_MuestraAgua.Eof do
            begin
                 if sCadena <>  IntToStr(qry_MuestraAgua.Fieldvalues['mes']) + qry_MuestraAgua.Fieldvalues['sIdEmbarcacion']  then
                 begin
                      if mExistencias.State = dsInsert then
                         mExistencias.Post ;

                      sCadena :=  IntToStr(qry_MuestraAgua.Fieldvalues['mes'])  + qry_MuestraAgua.Fieldvalues['sIdEmbarcacion'];
                      mExistencias.Append;
                      mExistencias.FieldValues['sContrato']    := qry_MuestraAgua.FieldValues['sContrato'];
                      mExistencias.FieldValues['anio']         := qry_MuestraAgua.FieldValues['anio'];
                      mExistencias.FieldValues['mes']          := qry_MuestraAgua.FieldValues['mes'];
                      mExistencias.FieldValues['sDescripcion'] := qry_MuestraAgua.FieldValues['sDescripcion'];
                      mExistencias.FieldValues['sMedida']      := qry_MuestraAgua.FieldValues['sMedida'];
                      mExistencias.FieldValues['combustible']  := qry_MuestraAgua.FieldValues['combustible'];
                      mExistencias.FieldValues['sTitulo']      := sTituloDiesel;
                      for Cta := 1 to 31 do
                      begin
                          mExistencias.FieldValues['dia' + Trim(IntToStr(Cta)) ] := 0.000000 ;
                          mExistencias.FieldValues['totalExistencia'] := 0.000000;
                          mExistencias.FieldValues['totalConsumo']    := 0.000000;
                      end;

                      for cta := 1 to 12 do
                         if cta = qry_MuestraAgua.Fieldvalues['mes'] then
                            mExistencias.FieldValues['sMes'] := meses[cta];

                 end;
                 sDia := 'dia' + Trim (InttoStr(DayOfTheMonth(qry_MuestraAgua.FieldByName('dIdFecha').AsDateTime))) ;
                 mExistencias.FieldValues[sDia] := Qry_MuestraAgua.FieldValues['dExistenciaActual'] ;
                 mExistencias.FieldValues['totalExistencia'] := mExistencias.FieldValues['totalExistencia'] + mExistencias.FieldValues[sDia];
                 sDia := 'Cdia' + Trim (InttoStr(DayOfTheMonth(qry_MuestraAgua.FieldByName('dIdFecha').AsDateTime))) ;
                 mExistencias.FieldValues[sDia] := Qry_MuestraAgua.FieldValues['dExistenciaActual'] ;
                 mExistencias.FieldValues['totalConsumo']    := mExistencias.FieldValues['totalConsumo'] +  Qry_MuestraAgua.FieldValues['dExistenciaActual'];

                 qry_MuestraAgua.Next;
            end;
            if chkTodo.Checked then
               frmAdmonytiempos.fReporte.LoadFromFile (global_files + 'ReporteAguaDiselMes_Consumo.fr3')
            else
               frmAdmonytiempos.fReporte.LoadFromFile (global_files + 'ReporteAguaDiselMes.fr3')
     end;

     if frmAdmonytiempos.pgAdmon.ActivePage.Name = 'arriboembarcaciones' then
     begin
        frmAdmonyTiempos.dbMovimientos.FieldAliases.Clear;
        frmAdmonytiempos.dbMovimientos.DataSet := qry_MuestraMov;

        if RArribo.Checked = True then
        begin
            if chkTodo.Checked = True then
            begin
                qry_MuestraMov.Active := False;
                qry_MuestraMov.SQL.Clear;
                qry_MuestraMov.SQL.Add( 'select m.sContrato, m.*, e.sIdTipoEmbarcacion '+
                                         'from  movimientosdeembarcacion m  '+
                                         'inner join embarcaciones e '+
                                         'On ( m.sContrato = e.sContrato And m.sIdEmbarcacion = e.sIdEmbarcacion) '+
                                         'where m.dIdFecha >=:FechaI  '+
                                         'and m.dIdFecha <=:FechaF  '+
                                         'and m.sClasificacion = "" '+
                                         'and m.sTipo = "ARRIBO" order by m.dIdFecha, m.sTipo, m.sIdEmbarcacion, m.sHoraInicio ');
                qry_MuestraMov.Params.ParamByName( 'FechaI' ).DataType := ftDate;
                qry_MuestraMov.Params.ParamByName( 'FechaI' ).Value    := Fi.Date;
                qry_MuestraMov.Params.ParamByName( 'FechaF' ).DataType := ftDate;
                qry_MuestraMov.Params.ParamByName( 'FechaF' ).Value    := Ff.Date;
                qry_MuestraMov.ExecSQL;
            end
            else
            begin
                qry_MuestraMov.Active := False;
                qry_MuestraMov.SQL.Clear;
                qry_MuestraMov.SQL.Add( 'select m.*, e.sIdTipoEmbarcacion '+
                                         'from  movimientosdeembarcacion m  '+
                                         'inner join embarcaciones e '+
                                         'On ( m.sContrato = e.sContrato And m.sIdEmbarcacion = e.sIdEmbarcacion) '+
                                         'where m.dIdFecha >=:FechaI  '+
                                         'and m.dIdFecha <=:FechaF  '+
                                         'and m.sClasificacion = "" '+
                                         'and m.sTipo = "ARRIBO" order by m.dIdFecha, m.sHoraInicio ');
                qry_MuestraMov.Params.ParamByName( 'FechaI' ).DataType := ftDate;
                qry_MuestraMov.Params.ParamByName( 'FechaI' ).Value    := Fi.Date;
                qry_MuestraMov.Params.ParamByName( 'FechaF' ).DataType := ftDate;
                qry_MuestraMov.Params.ParamByName( 'FechaF' ).Value    := Ff.Date;
                qry_MuestraMov.ExecSQL;
            end; 
        end;

        if RDisposicion.Checked = True then
        begin
            qry_MuestraMov.Active := False;
            qry_MuestraMov.SQL.Clear;
            qry_MuestraMov.SQL.Add( 'select m.*, e.sIdTipoEmbarcacion '+
                                         'from  movimientosdeembarcacion m  '+
                                         'inner join embarcaciones e '+
                                         'On ( m.sContrato = e.sContrato And m.sIdEmbarcacion = e.sIdEmbarcacion) '+
                                         'where m.dIdFecha >=:FechaI  '+
                                         'and m.dIdFecha <=:FechaF  '+
                                         'and m.sClasificacion = "" '+
                                         'and m.sTipo = "DISPOSICION" order by m.dIdFecha, m.sTipo, m.sIdEmbarcacion, m.sHoraInicio ');
            qry_MuestraMov.Params.ParamByName( 'FechaI' ).DataType := ftDate;
            qry_MuestraMov.Params.ParamByName( 'FechaI' ).Value    := Fi.Date;
            qry_MuestraMov.Params.ParamByName( 'FechaF' ).DataType := ftDate;
            qry_MuestraMov.Params.ParamByName( 'FechaF' ).Value    := Ff.Date;
            qry_MuestraMov.ExecSQL;
        end;

        if ChkTodo.Checked = True then
           frmAdmonytiempos.fReporte.LoadFromFile (global_files + 'ArriboEmbarcacion_Agrupa.fr3')
        else
           frmAdmonytiempos.fReporte.LoadFromFile (global_files + 'ArriboEmbarcacion.fr3')

     end;

     frmAdmonytiempos.fReporte.PreviewOptions.MDIChild     := False ;
     frmAdmonytiempos.fReporte.PreviewOptions.Modal        := True ;
     frmAdmonytiempos.fReporte.PreviewOptions.Maximized    := lCheckMaximized () ;
     frmAdmonytiempos.fReporte.PreviewOptions.Buttons      := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
     frmAdmonytiempos.fReporte.PreviewOptions.ShowCaptions := False ;
     frmAdmonytiempos.fReporte.Previewoptions.ZoomMode     := zmPageWidth ;
     //frmAdmonytiempos.fReporte.ShowReport;
     frmAdmonyTiempos.fReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'));
end;

procedure TfrmOpcionesBarco.FormShow(Sender: TObject);
begin
    Fi.Date := frmAdmonytiempos.tdFecha.Date;
    Ff.Date := frmAdmonytiempos.tdFecha.Date;

    Embarcaciones2.Active := False;
    Embarcaciones2.Params.ParamByName('Contrato').DataType := ftString ;
    Embarcaciones2.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco ;
    Embarcaciones2.Open;

    chkExistencias.visible := False;
    chkConsumoEQ.visible   := False;
    chkConsumos.visible    := False;
    chkRecibido.visible    := False;
    chkProducido.visible   := False;

    if frmAdmonytiempos.pgAdmon.ActivePage.Name = 'movembarcacion' then
    begin
        frmOpcionesBarco.Caption   := 'Movimientos Embarcacion';
        rArribo.Enabled            := False;
        rDisposicion.Enabled       := False;
        optTodas.Enabled           := False;
        optEmbarcacion.Enabled     := False;
        tdEmbarcacionExist.Enabled := False;
    end;

    if frmAdmonytiempos.pgAdmon.ActivePage.Name = 'TabExistencias' then
    begin
        frmOpcionesBarco.Caption    := 'Existencias';
        optTodas.Checked            := True;
        rArribo.Enabled             := False;
        rDisposicion.Enabled        := False;
        chkTodo.Caption             := 'Mostrar Otros Consumos';

        chkExistencias.visible := True;
        chkConsumoEQ.visible   := True;
        chkConsumos.visible    := True;
        chkRecibido.visible    := True;
        chkProducido.visible   := True;
    end;

    if frmAdmonytiempos.pgAdmon.ActivePage.Name = 'arriboembarcaciones' then
    begin
        frmOpcionesBarco.Caption   := 'Arribos / Disposiciones';
        rArribo.Checked            := True;
        optTodas.Enabled           := False;
        optEmbarcacion.Enabled     := False;
        tdEmbarcacionExist.Enabled := False;
        chkTodo.Caption            := 'Detallar Embarcaciones';
    end;
end;

end.
