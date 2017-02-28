unit frmLiquidacionFiniquito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, global,
  NxCollection, AdvGlowButton, dblookup, JvExControls, JvDBLookup,
  AdvDBLookupComboBox, Menus, frxClass, frxDBSet, RxMemDS, utilerias, masUtilerias,
  StrUtils;

type
  Tfrm_LiqFini = class(TForm)
    headerFiniquito: TNxHeaderPanel;
    headerLiquidacion: TNxHeaderPanel;
    chxLiquidacion: TCheckBox;
    chxFiniquito: TCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtPrimaVacacional: TDBEdit;
    txtAguinaldo: TDBEdit;
    txtIsrFiniquito: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    txtIndemnizacion: TDBEdit;
    txt20dias: TDBEdit;
    txtAntiguedad: TDBEdit;
    txtIsrLiquidacion: TDBEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    txtVacDiasTrabajados: TDBEdit;
    Label17: TLabel;
    txtVacDiasTomados: TDBEdit;
    Label18: TLabel;
    txtVacPagar: TDBEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnCalcularLiqFin: TAdvGlowButton;
    btnImprimirLiqFin: TAdvGlowButton;
    rbtImss: TRadioButton;
    rbtSueldo: TRadioButton;
    Label15: TLabel;
    Label16: TLabel;
    txtMontoFiniquito: TDBEdit;
    Label19: TLabel;
    txtMontoLiquidacion: TDBEdit;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label1: TLabel;
    txtIsrAnterior: TDBEdit;
    qryFiniquito: TZQuery;
    dsFiniquito: TDataSource;
    dsDatosGenerales: TDataSource;
    qryDatosGenerales: TZQuery;
    dsLiquidacion: TDataSource;
    qryLiquidacion: TZQuery;
    txtSalDiario: TDBEdit;
    txtSalMensual: TDBEdit;
    txtSalDiarioInt: TDBEdit;
    txtSalMensualInt: TDBEdit;
    Label20: TLabel;
    lblEmpleado: TLabel;
    qryDeduccionesEmpleado: TZQuery;
    dsDeduccionesEmpleado: TDataSource;
    Label21: TLabel;
    txtVacaciones: TDBEdit;
    lblEliminarFiniquito: TLabel;
    lblEliminarLiquidacion: TLabel;
    cbxIsr: TDBLookupComboBox;
    qryDeduccionesEmpleadoiId: TIntegerField;
    qryDeduccionesEmpleadosNombre: TStringField;
    qryDeduccionesEmpleadodImporte: TFloatField;
    rReportes: TfrxReport;
    fdsFiniquito: TfrxDBDataset;
    PopupImprimir: TPopupMenu;
    Finiquito1: TMenuItem;
    Liquidacin1: TMenuItem;
    fdsLiquidacion: TfrxDBDataset;
    qryLiquidacioniId: TIntegerField;
    qryLiquidacionsIdEmpleado: TStringField;
    qryLiquidaciondISRAnterior: TFloatField;
    qryLiquidaciondIndemnizacion: TFloatField;
    qryLiquidaciond20Dias: TFloatField;
    qryLiquidaciondPrimaAntiguedad: TFloatField;
    qryLiquidaciondMontoLiquidacion: TFloatField;
    qryLiquidaciondISRLiquidacion: TFloatField;
    qryLiquidacioniIdDeduccion: TLargeintField;
    qryLiquidacionfFecha: TDateField;
    qryFiniquitoiId: TIntegerField;
    qryFiniquitosIdEmpleado: TStringField;
    qryFiniquitoiVacacionesDiasTrabajados: TIntegerField;
    qryFiniquitoiVacacionesDiasTomados: TIntegerField;
    qryFiniquitoiVacacionesDiasPagar: TIntegerField;
    qryFiniquitodPrimaVac: TFloatField;
    qryFiniquitodAguinaldo: TFloatField;
    qryFiniquitodMontoFiniquito: TFloatField;
    qryFiniquitodISRFiniquito: TFloatField;
    qryFiniquitodVacaciones: TFloatField;
    qryFiniquitofFecha: TDateField;
    qryDatosGeneralesiId: TIntegerField;
    qryDatosGeneralessIdEmpleado: TStringField;
    qryDatosGeneralesdSaldoDiario: TFloatField;
    qryDatosGeneralesdSaldoDiarioIntegrado: TFloatField;
    qryDatosGeneralesdSaldoMensual: TFloatField;
    qryDatosGeneralesdSaldoMensualIntegrado: TFloatField;
    qryDatosGeneralessOpcion: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rbtImssClick(Sender: TObject);
    procedure datosGenerales;
    function quitaComas(cadena :string) : Double;
    procedure Inicializa_Valores_Finiquito;
    procedure Calculo_Liquidacion();
    procedure Calculo_Finiquito();
    procedure variables_Liquidacion_Finiquito;
    procedure despues_eliminar;
    procedure rbtSueldoClick(Sender: TObject);
    procedure txtVacDiasTomadosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chxFiniquitoClick(Sender: TObject);
    procedure chxLiquidacionClick(Sender: TObject);
    procedure cbxIsrClick(Sender: TObject);
    procedure lblEliminarFiniquitoMouseEnter(Sender: TObject);
    procedure lblEliminarLiquidacionMouseEnter(Sender: TObject);
    procedure lblEliminarLiquidacionMouseLeave(Sender: TObject);
    procedure lblEliminarFiniquitoMouseLeave(Sender: TObject);
    procedure lblEliminarFiniquitoClick(Sender: TObject);
    procedure lblEliminarLiquidacionClick(Sender: TObject);
    procedure btnImprimirLiqFinClick(Sender: TObject);
    procedure Finiquito1Click(Sender: TObject);
    procedure Liquidacin1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_LiqFini: Tfrm_LiqFini;
  salario_diario, salario_diario_integrado : double;
  salario_mensual, salario_mensual_integrado : double;
  anios_laborados, anios_laborados_mas1, dias_proporcionales_aguinaldo, dias_proporcionales, dias_vacaciones : Integer;
  total_finiquito, total_liquidacion, isr_finiquito, isr_liquidacion : double;
  vacaciones, primavac, aguinaldo : double;
  dias20, prima, Indemnizacion : double;
  wAnyo, wMes, wDia: Word;
  sIdEmpleado, sql, sOpcion: String;
  calculo, Error : Boolean;
  query : TZQuery;

implementation

uses frm_connection, frmEmpleados;

{$R *.dfm}

procedure Tfrm_LiqFini.Finiquito1Click(Sender: TObject);
var
  dia, mes, anio, diaf, mesf, aniof, dia_ini, mes_ini, anio_ini : Word;
  monto, decimales : double;
begin
  if qryFiniquito.RecordCount > 0 then begin
    DecodeDate(now, anio, mes, dia);
    DecodeDate(frm_Empleados.zQEmpleados.FieldByName('dFechaTerminoLabores').AsDateTime, aniof, mesf, diaf);
    DecodeDate(frm_Empleados.zQEmpleados.FieldByName('dFechaInicioLabores').AsDateTime, anio_ini, mes_ini, dia_ini);
    rReportes.PreviewOptions.MDIChild := True ;
    rReportes.PreviewOptions.Modal := False ;
    rReportes.PreviewOptions.Maximized := lCheckMaximized () ;
    rReportes.PreviewOptions.ShowCaptions := False ;
    rReportes.Previewoptions.ZoomMode := zmPageWidth ;
    rReportes.DataSet := fdsFiniquito;
    rReportes.DataSetName := 'fdsFiniquito';
    rReportes.LoadFromFile (global_files + 'Reporte_Finiquito.fr3') ;
    rReportes.Variables.Variables['dia'] := dia;
    rReportes.Variables.Variables['mes'] := QuotedStr(esMes(mes));
    rReportes.Variables.Variables['anio'] := anio;
    rReportes.Variables.Variables['dia_fin'] := diaf;
    rReportes.Variables.Variables['mes_fin'] := QuotedStr(esMes(mesf));
    rReportes.Variables.Variables['anio_fin'] := aniof;
    rReportes.Variables.Variables['dia_ini'] := dia_ini;
    rReportes.Variables.Variables['mes_ini'] := QuotedStr(esMes(mes_ini));
    rReportes.Variables.Variables['anio_ini'] := anio_ini;
    monto := (qryFiniquito.FieldByName('dMontoFiniquito').AsFloat - qryFiniquito.FieldByName('dISRFiniquito').AsFloat);
    rReportes.Variables.Variables['monto'] := monto;
    rReportes.Variables.Variables['monto_letras'] := QuotedStr(xIntToLletres(trunc(monto)));
    decimales := monto - trunc(monto);
    if decimales > 0 then
      rReportes.Variables.Variables['decimales'] := AnsiMidStr(FloatToStr(decimales),3,2)
    else
      rReportes.Variables.Variables['decimales'] := AnsiMidStr(FloatToStr(decimales),4,2);
    rReportes.Variables.Variables['nombre'] := QuotedStr(frm_Empleados.zQEmpleados.FieldByName('sNombreCompleto').AsString);
    rReportes.ShowReport() ;
  end;
end;

procedure Tfrm_LiqFini.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_LiqFini.FormShow(Sender: TObject);
begin
  lblEmpleado.Caption := frm_Empleados.zQEmpleados.FieldByName('sNombreCompleto').AsString;
  sIdEmpleado :=  frm_Empleados.zQEmpleados.FieldByName('sIdEmpleado').AsString;

  calculo := False;
  Error   := False;

  qryDatosGenerales.Active := False;
  qryDatosGenerales.Params.ParamByName('Empleado').AsString :=  sIdEmpleado;
  qryDatosGenerales.Open;

  qryFiniquito.Active := False;
  qryFiniquito.Params.ParamByName('Empleado').AsString :=  sIdEmpleado;
  qryFiniquito.Open;

  qryLiquidacion.Active := False;
  qryLiquidacion.Params.ParamByName('Empleado').AsString :=  sIdEmpleado;
  qryLiquidacion.Open;

  qryDeduccionesEmpleado.Active := False;
  qryDeduccionesEmpleado.Params.ParamByName('Empleado').AsString := sIdEmpleado;
  qryDeduccionesEmpleado.Open;

  variables_Liquidacion_Finiquito;

  if qryDatosGenerales.RecordCount > 0 then begin
    if qryDatosGenerales.FieldByName('sOpcion').AsString = 'imss' then begin
      rbtImss.Checked := True;
      rbtSueldo.Enabled := False;
    end
    else begin
      rbtSueldo.Checked := True;
      rbtImss.Enabled := False;
    end;

    salario_diario            := qryDatosGenerales.FieldByName('dSaldoDiario').AsFloat;
    salario_diario_integrado  := qryDatosGenerales.FieldByName('dSaldoDiarioIntegrado').AsFloat;
    salario_mensual           := qryDatosGenerales.FieldByName('dSaldoMensual').AsFloat;
    salario_mensual_integrado := qryDatosGenerales.FieldByName('dSaldoMensualIntegrado').AsFloat;

    txtSalDiario.Text     := Format('%m', [salario_diario]);
    txtSalDiarioInt.Text  := Format('%m', [salario_diario_integrado]);
    txtSalMensual.Text    := Format('%m', [salario_mensual]);
    txtSalMensualInt.Text := Format('%m', [salario_mensual_integrado]);

    btnImprimirLiqFin.Enabled := True;
  end
  else begin
    datosGenerales;
    btnImprimirLiqFin.Enabled := False;
  end;

  Inicializa_Valores_Finiquito;

  if qryLiquidacion.RecordCount > 0 then begin
    txtIsrAnterior.Text := qryLiquidacion.FieldByName('dISRAnterior').AsString;
    lblEliminarLiquidacion.Visible := True;
  end;

  txtVacDiasTomados.Enabled := False;
  txtVacPagar.Enabled := False;
  cbxIsr.Enabled := False;
  txtIsrAnterior.Enabled := False;
  query := TZQuery.Create(self);
  query.Connection := Connection.zConnection;
end;

procedure Tfrm_LiqFini.rbtImssClick(Sender: TObject);
begin
  datosGenerales;
end;

procedure Tfrm_LiqFini.rbtSueldoClick(Sender: TObject);
var
  proporcion_prima_vacacional, proporcion_aguinaldo : double;
begin
  salario_mensual           := quitaComas(FloatToStrF(frm_Empleados.zQEmpleados.FieldByName('dSueldo').AsFloat,ffNumber,7,2));
  salario_diario            := quitaComas(FloatToStrF((salario_mensual/30),ffNumber,7,2));

  proporcion_prima_vacacional  := quitaComas(FloatToStrF((((dias_vacaciones*salario_mensual)*0.25)/365),ffNumber,7,2));
  proporcion_aguinaldo := quitaComas(FloatToStrF(((15*proporcion_aguinaldo)/365),ffNumber,7,2));
  salario_diario_integrado  := proporcion_prima_vacacional + proporcion_aguinaldo + salario_diario;
  salario_mensual_integrado := (salario_diario_integrado*30);

  txtSalDiario.Text     := Format('%m', [salario_diario]);
  txtSalDiarioInt.Text  := Format('%m', [salario_diario_integrado]);
  txtSalMensual.Text    := Format('%m', [salario_mensual]);
  txtSalMensualInt.Text := Format('%m', [salario_mensual_integrado]);
end;

procedure Tfrm_LiqFini.txtVacDiasTomadosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if trim(txtVacDiasTomados.Text) <> '' then begin
    if StrToInt(txtVacDiasTomados.Text) <= dias_vacaciones then begin
      txtVacPagar.Text := IntToStr(dias_vacaciones - StrToInt(txtVacDiasTomados.Text));
    end
    else begin
      messageDlg('EL numero es Mayor al los Dias Trabajados.',mtWarning,[mbOk],0);
      txtVacDiasTomados.Text := '0';
      txtVacPagar.Text := IntToStr(dias_vacaciones);
    end;
  end else begin
    txtVacPagar.Text := IntToStr(dias_vacaciones);
  end;
end;


procedure Tfrm_LiqFini.cbxIsrClick(Sender: TObject);
begin
  txtIsrAnterior.Text := qryDeduccionesEmpleado.FieldByName('dImporte').AsString;
end;

procedure Tfrm_LiqFini.chxFiniquitoClick(Sender: TObject);
begin
  if chxFiniquito.Checked then begin
    if qryFiniquito.RecordCount > 0 then begin
      qryFiniquito.Edit
    end
    else begin
      if qryFiniquito.State <> dsInsert then      
        qryFiniquito.Append;
    end;

    txtVacDiasTomados.Enabled := True;
    txtVacPagar.Enabled := True;
  end
  else begin
    if qryFiniquito.State IN [dsInsert, dsEdit] then
      qryFiniquito.Cancel;
    
    txtVacDiasTomados.Enabled := False;
    txtVacPagar.Enabled := False;
  end;
  
  Inicializa_Valores_Finiquito;
end;

procedure Tfrm_LiqFini.chxLiquidacionClick(Sender: TObject);
begin
  if chxLiquidacion.Checked then begin
    if qryLiquidacion.RecordCount > 0 then begin
      qryLiquidacion.Edit
    end
    else begin
      if qryLiquidacion.State <> dsInsert then
        qryLiquidacion.Append;
    end;

    cbxIsr.Enabled := True;
    txtIsrAnterior.Enabled := True;
  end
  else begin
    if qryLiquidacion.State IN [dsEdit, dsInsert] then
       qryLiquidacion.Cancel;

    if qryLiquidacion.RecordCount = 0 then
      txtIsrAnterior.Text := '';

    dsLiquidacion.AutoEdit := False;
    cbxIsr.Enabled := False;
    txtIsrAnterior.Enabled := False;
  end;

end;

procedure Tfrm_LiqFini.datosGenerales;
begin
  salario_diario            := quitaComas(FloatToStrF(frm_Empleados.zQEmpleados.FieldByName('dSalarioDiario').AsFloat,ffNumber,7,2));
  salario_diario_integrado  := quitaComas(FloatToStrF(frm_Empleados.zQEmpleados.FieldByName('dSalarioIntegrado').AsFloat,ffNumber,7,2));
  salario_mensual           := quitaComas(FloatToStrF(frm_Empleados.zQEmpleados.FieldByName('dSueldo').AsFloat,ffNumber,7,2));
  salario_mensual_integrado := (salario_diario_integrado*30);

  txtSalDiario.Text     := Format('%m', [salario_diario]);
  txtSalDiarioInt.Text  := Format('%m', [salario_diario_integrado]);
  txtSalMensual.Text    := Format('%m', [salario_mensual]);
  txtSalMensualInt.Text := Format('%m', [salario_mensual_integrado]);

end;

function Tfrm_LiqFini.quitaComas(cadena: string) : double;
begin
  Result := StrToFloat(StringReplace(cadena, ',', '', [rfReplaceAll, rfIgnoreCase]));
end;

procedure Tfrm_LiqFini.variables_Liquidacion_Finiquito;
var
  anios : double;
  wAnyo2 : Word;
begin
    anios_laborados := DaysBetween(frm_Empleados.zQEmpleados.FieldByName('dFechaInicioLabores').AsDateTime, frm_Empleados.zQEmpleados.FieldByName('dFechaTerminoLabores').AsDateTime);
    anios := ( anios_laborados/365 );
    anios_laborados := trunc(anios);
    if anios > anios_laborados then
      anios_laborados_mas1 := anios_laborados + 1
    else
      anios_laborados_mas1 := anios_laborados;

    DecodeDate(frm_Empleados.zQEmpleados.FieldByName('dFechaTerminoLabores').AsDateTime, wAnyo, wMes, wDia );
    dias_proporcionales_aguinaldo := DaysBetween(StrToDate( '01/01/'+IntToStr(wAnyo)), frm_Empleados.zQEmpleados.FieldByName('dFechaTerminoLabores').AsDateTime);

    DecodeDate(frm_Empleados.zQEmpleados.FieldByName('dFechaInicioLabores').AsDateTime, wAnyo2, wMes, wDia );
    dias_proporcionales := DaysBetween(StrToDate( IntToStr(wDia)+'/'+IntToStr(wMes)+'/'+IntToStr(wAnyo - 1)), frm_Empleados.zQEmpleados.FieldByName('dFechaTerminoLabores').AsDateTime);
    if dias_proporcionales = 365 then
      dias_proporcionales := 0;

    if anios_laborados > 0 then begin
      sql := 'SELECT iDias FROM  rh_vacaciones WHERE iAnio = '+IntToStr(anios_laborados_mas1);
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add(sql);
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then begin
        dias_vacaciones :=  connection.QryBusca.FieldByName('iDias').AsInteger;
      end
      else begin
        dias_vacaciones := 6;
    end;
  end;

end;

procedure Tfrm_LiqFini.Calculo_Liquidacion;
var
  porcentaje, Salario_Minimo, sal_inte : double;
begin

  query.Active := False;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM nom_liquidacion WHERE sIdEmpleado = '+QuotedStr(sIdEmpleado));
  query.Open;
  if query.RecordCount > 0 then begin///si ya hizo el calculo de la liquidacion
    if messageDlg('¿Desea Volver hacer el Cálculo para la Liquidación?',mtConfirmation,[mbYes,mbNo],0) = mrNo then 
      exit;
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('DELETE FROM nom_liquidacion WHERE sIdEmpleado = '+QuotedStr(sIdEmpleado));
    connection.QryBusca.ExecSQL;
  end;
  
  {$REGION '3 MESES DE INDEMNIZACION'}
  //Salario mensual integrado x 3 meses de indemnización.
  Indemnizacion := (Salario_Mensual_Integrado * 3);
  {$ENDREGION}

  {$REGION '20 DIAS POR CADA AÑO DE SERVICIOS'}
  //Salario diario integrado x 20 días por cada año de servicios, más la parte proporcional de acuerdo a los dias
  //laborados apartir del 1 de enero del año actual asta la fecha del despido.
  dias20 :=  ( ( Salario_Diario_Integrado*( anios_laborados*20 ) ) + ( ( ( Salario_Diario_Integrado*20 )/365 )*dias_proporcionales ) );
  {$ENDREGION}

  {$REGION 'PRMA DE ANTIGUEDAD'}
  //Salario diario integrado X 12 días por 1 año de servicio, más la parte proporcional de acuerdo a los dias
  //laborados apartir del 1 de enero del año actual asta la fecha del despido
  sql :=  'SELECT dSalarioMinimo ' +
          'FROM nom_catalogodezonasgeograficas  AS a ' +
          'WHERE iId = (SELECT iIdZonaGeografica FROM nom_configuracion);';
  query.Active := False;
  query.SQL.Clear;
  query.SQL.Add(sql);
  query.Open;
  if query.RecordCount > 0 then begin
      sal_inte := Salario_Diario_Integrado;
     Salario_Minimo := query.FieldByName('dSalarioMinimo').AsFloat;
     if (Salario_Minimo * 2) < Salario_Diario then begin
        Salario_Diario_Integrado := (Salario_Minimo * 2);
     end;
  end;
  prima := ( ( Salario_Diario_Integrado*( anios_laborados*12 ) ) + ( ( ( Salario_Diario_Integrado*12 )/365 )*dias_proporcionales ) );
  Salario_Diario_Integrado := sal_inte;
  {$ENDREGION}

  total_liquidacion := Indemnizacion + dias20 + prima;

  {$REGION 'CALCULO DE ISR SOBRE LA LIQUIDACION'}
  //ISR correspondiente al último sueldo
  //Conforme a la LFT se consideran hasta 90 SMGD por año de trabajo como proporción exenta
  porcentaje := (StrToFloat(txtIsrAnterior.Text)/Salario_Mensual);
  isr_liquidacion := ((((Salario_Minimo*90)*anios_laborados_mas1))*porcentaje);
  {$ENDREGION}

  if qryLiquidacion.State IN [dsBrowse, dsEdit] then
    qryLiquidacion.Append;

  try
    qryLiquidacion.FieldByName('sIdEmpleado').AsString := sIdEmpleado;
    qryLiquidacion.FieldByName('iIdDeduccion').AsString := qryDeduccionesEmpleado.FieldByName('iId').AsString;
    qryLiquidacion.FieldByName('dISRAnterior').AsFloat := qryDeduccionesEmpleado.FieldByName('dImporte').AsFloat;
    txtIndemnizacion.Text    := FloatToStr(quitaComas(FloatToStrF(Indemnizacion,ffNumber,7,2)));
    txt20dias.Text           := FloatToStr(quitaComas(FloatToStrF(dias20,ffNumber,7,2)));
    txtAntiguedad.Text       := FloatToStr(quitaComas(FloatToStrF(prima,ffNumber,7,2)));
    txtMontoLiquidacion.Text := FloatToStr(quitaComas(FloatToStrF(total_liquidacion,ffNumber,7,2)));
    txtIsrLiquidacion.Text   := FloatToStr(quitaComas(FloatToStrF(isr_liquidacion,ffNumber,7,2)));
    qryLiquidacion.FieldByName('fFecha').AsDateTime := now();
    qryLiquidacion.Post;
    calculo := True;
    Error   := False;
    btnImprimirLiqFin.Enabled := True;
  except
    on E : exception do begin
      messageDlg('Ocurrio un Error al Guardar los Datos!' + #10 + 'Comunique ésto al Administrador: ' + #10 + E.Message,mtError,[mbOk],0);
      Error := True;
    end;
  end;

  //showmessage('Total liquidacion ' + floattostr(total_liquidacion));
end;

procedure Tfrm_LiqFini.btnImprimirLiqFinClick(Sender: TObject);
begin
  PopupImprimir.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure Tfrm_LiqFini.Calculo_Finiquito;
var
  base_grabable_finiquito : double;
  vaca : Integer;
  var1, var2, var3 : String;
begin

  query.Active := False;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM nom_finiquito WHERE sIdEmpleado = '+QuotedStr(sIdEmpleado));
  query.Open;
  if query.RecordCount > 0 then begin///si ya hizo el calculo
    if messageDlg('¿Desea Volver hacer el Cálculo para el Finiquito?',mtConfirmation,[mbYes,mbNo],0) = mrNo then begin
      Inicializa_Valores_Finiquito;
      exit;
    end;
  end;

  {$REGION 'VACACIONES'}
  vaca := dias_vacaciones;
  dias_vacaciones := StrToInt(txtVacPagar.Text);
  vacaciones := ( ( ( dias_vacaciones / 365 ) * dias_proporcionales ) * Salario_Diario);
  dias_vacaciones := vaca;
  {$ENDREGION}

  {$REGION 'PRIMA VACACIONAL'}
  primavac := (vacaciones * 0.25);
  {$ENDREGION}

  {$REGION 'AGUINALDO PROPORCIONAL'}
  aguinaldo := ( ( ( 15/365 ) * dias_proporcionales_aguinaldo ) * Salario_Diario);
  {$ENDREGION}

  total_finiquito := vacaciones + primavac + aguinaldo;
  
  {$REGION 'CALCULO DE ISR SOBRE EL FINIQUITO'}
  base_grabable_finiquito :=  vacaciones + Salario_Mensual;

  sql :=  'SELECT * ' +
          'FROM nom_tarifamensual ' +
          'WHERE fLimiteInferior <= ' + FloatToStr(base_grabable_finiquito) + ' ' +
          'AND fLimiteSuperior >=  ' + FloatToStr(base_grabable_finiquito) + ';';
  query.Active := False;
  query.SQL.Clear;
  query.SQL.Add(sql);
  query.Open;
  if query.RecordCount = 0 then begin//si no se encuentra dentro del rango de nom_tarifamensual, seleccioname el mayor
    sql :=  'SELECT * ' +
            'FROM nom_tarifamensual ' +
            'WHERE fLimiteInferior = (SELECT MAX(fLimiteInferior) as fLimiteInferior FROM nom_tarifamensual);';
    query.Active := False;
    query.SQL.Clear;
    query.SQL.Add(sql);
    query.Open;
  end;

  isr_finiquito :=  ( base_grabable_finiquito - query.FieldByName('fLimiteInferior').AsFloat );
  isr_finiquito :=  ( isr_finiquito * (query.FieldByName('fPorcentaje').AsFloat/100));
  isr_finiquito := ( isr_finiquito + query.FieldByName('fCuotaFija').AsFloat );
  {$ENDREGION}

  //total_finiquito := total_finiquito - isr_finiquito;
  if qryFiniquito.State = dsBrowse then begin
    var1 := txtVacDiasTrabajados.Text;
    var2 := txtVacDiasTomados.Text;
    var3 := txtVacPagar.Text;
    qryFiniquito.Append;
    qryFiniquito.FieldByName('iVacacionesDiasTrabajados').AsString := var1;
    qryFiniquito.FieldByName('iVacacionesDiasTomados').AsString := var2;
    qryFiniquito.FieldByName('iVacacionesDiasPagar').AsString := var3;
  end;
  try
    qryFiniquito.FieldByName('sIdEmpleado').AsString := sIdEmpleado;
    txtVacaciones.Text      := FloatToStr(quitaComas(FloatToStrF(Vacaciones,ffNumber,7,2)));
    txtPrimaVacacional.Text := FloatToStr(quitaComas(FloatToStrF(primavac,ffNumber,7,2)));
    txtAguinaldo.Text       := FloatToStr(quitaComas(FloatToStrF(aguinaldo,ffNumber,7,2)));
    txtMontoFiniquito.Text  := FloatToStr(quitaComas(FloatToStrF(total_finiquito,ffNumber,7,2)));
    txtIsrFiniquito.Text    := FloatToStr(quitaComas(FloatToStrF(isr_finiquito,ffNumber,7,2)));
    qryFiniquito.FieldByName('fFecha').AsDateTime := now();
    qryFiniquito.Post;
    calculo := True;
    Error   := False;
    btnImprimirLiqFin.Enabled := True;
  except
    on E : exception do begin
      messageDlg('Ocurrio un Error al Guardar los Datos!' + #10 + 'Comunique ésto al Administrador: ' + #10 + E.Message,mtError,[mbOk],0);
      Error := True;
    end;
  end;

  //showmessage(floattostr(total_finiquito));

end;

procedure  Tfrm_LiqFini.Inicializa_Valores_Finiquito;
begin
  if qryFiniquito.RecordCount = 0 then begin
    if qryFiniquito.State <> dsInsert then    
      qryFiniquito.Append;
    txtVacDiasTrabajados.Text := IntToStr(dias_vacaciones);
    txtVacDiasTomados.Text := '0';
    txtVacPagar.Text := IntToStr(dias_vacaciones);
  end
  else begin
    if qryFiniquito.State = dsEdit then begin
      qryFiniquito.Refresh;
      qryFiniquito.Edit;
    end
    else begin
      qryFiniquito.Refresh;
    end;

    lblEliminarFiniquito.Visible := True;
  end;
end;

procedure Tfrm_LiqFini.lblEliminarFiniquitoClick(Sender: TObject);
begin
  if qryFiniquito.RecordCount > 0 then begin
    if messageDlg('¿Desea Eliminar el Cálculo de Finiquito para este Empleado?', mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('DELETE FROM nom_finiquito WHERE sIdEmpleado = ' + QuotedStr(sIdEmpleado));
      connection.QryBusca.ExecSQL;
      qryFiniquito.Refresh;
      lblEliminarFiniquito.Visible := False;
      despues_eliminar;
    end;
  end;
end;

procedure Tfrm_LiqFini.lblEliminarLiquidacionClick(Sender: TObject);
begin
  if qryLiquidacion.RecordCount > 0 then begin
    if messageDlg('¿Desea Eliminar el Cálculo de Liquidación para este Empleado?', mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('DELETE FROM nom_liquidacion WHERE sIdEmpleado = ' + QuotedStr(sIdEmpleado));
      connection.QryBusca.ExecSQL;
      qryLiquidacion.Refresh;
      lblEliminarLiquidacion.Visible := False;
      despues_eliminar;
    end;
  end;
end;

procedure Tfrm_LiqFini.lblEliminarFiniquitoMouseEnter(Sender: TObject);
begin
  lblEliminarFiniquito.Font.Color := clRed;
end;

procedure Tfrm_LiqFini.lblEliminarFiniquitoMouseLeave(Sender: TObject);
begin
  lblEliminarFiniquito.Font.Color := clMaroon;
end;

procedure Tfrm_LiqFini.lblEliminarLiquidacionMouseEnter(Sender: TObject);
begin
  lblEliminarLiquidacion.Font.Color := clRed;
end;

procedure Tfrm_LiqFini.lblEliminarLiquidacionMouseLeave(Sender: TObject);
begin
  lblEliminarLiquidacion.Font.Color := clMaroon;
end;

procedure Tfrm_LiqFini.Liquidacin1Click(Sender: TObject);
var
  monto, decimales : double;
begin
  if qryLiquidacion.RecordCount > 0 then begin
    rReportes.PreviewOptions.MDIChild := True ;
    rReportes.PreviewOptions.Modal := False ;
    rReportes.PreviewOptions.Maximized := lCheckMaximized () ;
    rReportes.PreviewOptions.ShowCaptions := False ;
    rReportes.Previewoptions.ZoomMode := zmPageWidth ;
    rReportes.DataSet := fdsLiquidacion;
    rReportes.DataSetName := 'fdsLiquidacion';
    rReportes.LoadFromFile (global_files + 'Reporte_Liquidacion.fr3') ;
    rReportes.Variables.Variables['fecha_inicio'] := frm_Empleados.zQEmpleados.FieldByName('dFechaInicioLabores').AsDateTime;
    rReportes.Variables.Variables['fecha_fin'] := frm_Empleados.zQEmpleados.FieldByName('dFechaTerminoLabores').AsDateTime;
    rReportes.Variables.Variables['dias'] := DaysBetween(frm_Empleados.zQEmpleados.FieldByName('dFechaInicioLabores').AsDateTime,frm_Empleados.zQEmpleados.FieldByName('dFechaTerminoLabores').AsDateTime);
    monto := (qryLiquidacion.FieldByName('dMontoLiquidacion').AsFloat - qryLiquidacion.FieldByName('dISRLiquidacion').AsFloat);
    //rReportes.Variables.Variables['total'] := QuotedStr(FloatToStrF(monto,ffNumber,7,2));
    rReportes.Variables.Variables['total'] := monto;
    rReportes.Variables.Variables['monto_letras'] := QuotedStr(xIntToLletres(trunc(monto)));
    decimales := monto - trunc(monto);
    if decimales > 0 then
      rReportes.Variables.Variables['decimales'] := AnsiMidStr(FloatToStr(decimales),3,2)
    else
      rReportes.Variables.Variables['decimales'] := AnsiMidStr(FloatToStr(decimales),4,2);
    rReportes.Variables.Variables['empleado'] := QuotedStr(frm_Empleados.zQEmpleados.FieldByName('sNombreCompleto').AsString);
    rReportes.Variables.Variables['cargo'] := QuotedStr(frm_Empleados.zQEmpleados.FieldByName('sPuesto').AsString);
    rReportes.ShowReport() ;
  end;
end;

procedure Tfrm_LiqFini.despues_eliminar;
var
  eliminar1, eliminar2  : Boolean;
begin
  eliminar1 := False;
  eliminar2 := False;
  if qryFiniquito.RecordCount = 0 then begin
     Inicializa_Valores_Finiquito;
     eliminar1 := True;
  end;

  if qryLiquidacion.RecordCount = 0 then begin
    txtIsrAnterior.Text := '';
    eliminar2 := True;
    if qryLiquidacion.State <> dsInsert then
      qryLiquidacion.Append;
  end;

  if (eliminar1 = True) AND (eliminar2 = True) then begin
    if qryDatosGenerales.RecordCount > 0 then begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('DELETE FROM nom_datgenLiqFini WHERE sIdEmpleado = ' + QuotedStr(sIdEmpleado));
      connection.QryBusca.ExecSQL;
    end;
    rbtImss.Enabled   := True;
    rbtSueldo.Enabled := True;
    btnImprimirLiqFin.Enabled := False;
  end;


end;

end.
