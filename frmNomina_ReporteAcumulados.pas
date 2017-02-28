unit frmNomina_ReporteAcumulados;

interface

uses
//  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//  Dialogs, DB, DateUtils,
//  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
//  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
//  NxDBGrid, frmPrincipal, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
//  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
//  JvDBDatePickerEdit, DBLabelEdit, frxClass, frxDBSet, global, OleCtrls,
//  OleServer, ExcelXP, ComObj, Excel2000;
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_Connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, dblookup, CustomizeDlg,
  UnitExcel, ComObj,
  JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvEdit,
  DBAdvEd, DBDateTimePicker, DBLabelEdit, HTMLabel, frmNomina_EmpleadosPorNomina;

type
  Tfrm_Nomina_ReporteAcumulados = class(TForm)
    zq_datosdeempleado: TZQuery;
    zq_datosdeempleadosIdEmpleado: TStringField;
    zq_datosdeempleadosNombreCompleto: TStringField;
    zq_datosdeempleadosRfc: TStringField;
    zq_datosdeempleadosDomicilio: TStringField;
    zq_datosdeempleadosCiudad: TStringField;
    zq_datosdeempleadosPuesto: TStringField;
    zq_datosdeempleadosIdArea: TStringField;
    zq_datosdeempleadosTelefono: TStringField;
    zq_datosdeempleadoseMail: TStringField;
    zq_datosdeempleadodSueldo: TFloatField;
    zq_datosdeempleadosStatus: TStringField;
    zq_datosdeempleadosCuenta: TStringField;
    zq_datosdeempleadolLabora: TStringField;
    zq_datosdeempleadosBanco: TStringField;
    zq_datosdeempleadosCuentaInterbancaria: TStringField;
    zq_datosdeempleadosCurp: TStringField;
    zq_datosdeempleadosImss: TStringField;
    zq_datosdeempleadosNacionalidad: TStringField;
    zq_datosdeempleadosEstadoCivil: TStringField;
    zq_datosdeempleadodFechaNacimiento: TDateField;
    zq_datosdeempleadodFechaTerminoLabores: TDateField;
    zq_datosdeempleadodFechaInicioLabores: TDateField;
    zq_datosdeempleadoiId_Puesto: TIntegerField;
    zq_datosdeempleadosLibretaMar: TStringField;
    zq_datosdeempleadosCartilla: TStringField;
    zq_datosdeempleadosCedulaProfesional: TStringField;
    zq_datosdeempleadosLugarNacimiento: TStringField;
    zq_datosdeempleadosCarrera: TStringField;
    zq_datosdeempleadoiId_RegistroPatronal: TIntegerField;
    zq_datosdeempleadodSalarioDiario: TFloatField;
    zq_datosdeempleadodFactorIntegracion: TFloatField;
    zq_datosdeempleadodPromedioVariables: TFloatField;
    zq_datosdeempleadodSalarioIntegrado: TFloatField;
    zq_datosdeempleadodSalarioReal: TFloatField;
    zq_datosdeempleadodDiasLaborados: TFloatField;
    zq_datosdeempleadodFaltas: TFloatField;
    frx_datosdeempleado: TfrxDBDataset;
    ReporteNominas: TfrxReport;
    zq_percepciones: TZQuery;
    zq_percepcionesiId: TIntegerField;
    zq_percepcionesiId_Nomina: TIntegerField;
    zq_percepcionessIdEmpleado: TStringField;
    zq_percepcionesdCantidad: TFloatField;
    zq_percepcionessDescripcion: TStringField;
    zq_percepcionesdImporte: TFloatField;
    zq_percepcioneslImprime: TStringField;
    zq_percepcioneslTipo: TStringField;
    zq_percepcionesdImporteTotal: TFloatField;
    frx_Percepciones: TfrxDBDataset;
    zq_deducciones: TZQuery;
    zq_deduccionesiId: TIntegerField;
    zq_deduccionesiId_Nomina: TIntegerField;
    zq_deduccionessIdEmpleado: TStringField;
    zq_deduccionesdCantidad: TFloatField;
    zq_deduccionessDescripcion: TStringField;
    zq_deduccionesdImporte: TFloatField;
    zq_deduccioneslImprime: TStringField;
    zq_deduccioneslTipo: TStringField;
    zq_deduccionesdImporteTotal: TFloatField;
    frx_Deducciones: TfrxDBDataset;
    zq_Nominas: TZQuery;
    zq_NominasdTotalRestante: TFloatField;
    zq_NominasiId: TIntegerField;
    zq_NominassNomina: TStringField;
    zq_NominasdFechaInicial: TDateField;
    zq_NominasdFechaFinal: TDateField;
    zq_NominasiIdEgreso: TIntegerField;
    zq_NominasdDias: TFloatField;
    zq_NominassNombreEmpresa: TStringField;
    zq_NominassRFC: TStringField;
    zq_NominasiId_RegistroPatronal: TIntegerField;
    zq_NominasiId_ZonaGeografica: TIntegerField;
    zq_NominasdSalarioMinimo: TFloatField;
    zq_NominasdSalarioMinimoDF: TFloatField;
    zq_NominasiProcesada: TIntegerField;
    zq_NominasDIAS: TLargeintField;
    zq_NominasdTotal: TFloatField;
    zq_datosdeempleadosDescripcionArea: TStringField;
    zq_ReporteAcumulados: TZQuery;
    zq_AcumuladosTotales: TZQuery;
    Label1: TLabel;
    Button1: TButton;
    procedure FormatoEncabezado;
    procedure FormatoGrupo;
    procedure FormatoTipoImporte;
    procedure FormatoImporte;
    procedure FormatoDefault;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ImprimeReporteNominas;
    procedure ImprimeReporteAcumulados;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_ReporteAcumulados: Tfrm_Nomina_ReporteAcumulados;
  Excel, Libro, Hoja: Variant;
  FechaDeNomina: String;

implementation

{$R *.dfm}

procedure Tfrm_Nomina_ReporteAcumulados.FormatoEncabezado;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clWhite;
  Excel.Selection.Interior.Color := $00EBEBEB;
end;

procedure Tfrm_Nomina_ReporteAcumulados.FormatoGrupo;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Color := clWhite;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clBlack;
  Excel.Selection.Interior.Color := $00FF9933;
end;

procedure Tfrm_Nomina_ReporteAcumulados.FormatoTipoImporte;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clBlack;
  Excel.Selection.Interior.Color := $00FFD9B3;
end;

procedure Tfrm_Nomina_ReporteAcumulados.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Nomina_ReporteAcumulados.FormatoDefault;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlLeft;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

procedure Tfrm_Nomina_ReporteAcumulados.FormatoImporte;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlLeft;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.NumberFormat:='$ #,##0.00';
end;

procedure Tfrm_Nomina_ReporteAcumulados.ImprimeReporteAcumulados;
Var
  ErrorMsg: String;
  QryBusca, Query, Qry2, QryAreas: TZQuery;
  Fila, SubFila, AutoInc, Columna, ColumnaInicial, IntColumnaFinal,
  FilaDeGrupoInicialAnterior, FilaDeGrupoFinalAnterior,
  FilaDeGrupoInicial,
  FilaDeGrupo, FilaDeGrupoAnterior,
  FilaDeImportes, FilaDeImportesAnterior, FiladeImportesFinalAnterior,
  ContadorDeFilas: Integer;
  Salario, RangoPercepciones, RangoDeducciones, CeldaSalario,
  sIdArea, sTipoImporte, sLabelTipoImporte, sArea, ColumnaFinal,
  CeldasPorSumar, CeldaSuma, CeldaResta: String;
  ImportePorGrupo: Double;
  ListaCeldas: TStringList;
  ContinuaCalculoPercepciones: Boolean;
begin
  Try
    Try
      Excel := CreateOleObject('Excel.Application');
    Except
      On E: Exception do begin
        FreeAndNil(Excel);
        ShowMessage(E.Message);
        Exit;
      end;
    End;

    Excel.Visible := True;
    Excel.DisplayAlerts:= False;
    Excel.WorkBooks.Add;
    Excel.WorkBooks[1].WorkSheets[1].Name := 'Acumulados';
    Libro := Excel.WorkBooks[1].WorkSheets['Acumulados'];

    Excel.Columns[1].ColumnWidth := 5;
    Excel.Columns[2].ColumnWidth := 50;
    Excel.Columns[3].ColumnWidth := 15;
    Excel.Columns[4].ColumnWidth := 15;

    Try
      ListaCeldas := TStringList.Create;
      QryBusca := TZQuery.Create(Self);
      QryBusca.Connection := Connection.zConnection;
      QryBusca.SQL.Text := 'SELECT * FROM configuracion';
      QryBusca.Open;

      Libro.Range['C1:C1'].Select;
      Excel.Selection.Value := QryBusca.FieldByName('sNombre').AsString;
      Libro.Range['C2:C2'].Select;
      Excel.Selection.Value := QryBusca.FieldByName('sRfc').AsString;
      Libro.Range['C3:C3'].Select;
      Excel.Selection.Value := 'REPORTE DE ACUMULADOS PARA LA NÓMINA ' + FechaDeNomina;
      Excel.Selection.Font.Bold := True;

      sIdArea := 'Sin Area';
      sTipoImporte := 'Sin Importe';
      Fila := 5;
      while Not zq_ReporteAcumulados.Eof do begin
        ContinuaCalculoPercepciones := False;
        if sIdArea <> zq_ReporteAcumulados.FieldByName('sIdArea').AsString then begin
          FilaDeGrupoAnterior := FilaDeGrupo;
          if Fila > 5 then begin
            Libro.Range['F'+IntToStr(FilaDeGrupoAnterior)+':F'+IntToStr(FilaDeGrupoAnterior)].Select;
            if CeldaSuma = 'NA' then begin
              Excel.Selection.Formula := '=' + CeldaResta;
            end else
            if CeldaResta = 'NA' then begin
              Excel.Selection.Formula := '=' + CeldaSuma;
            end else begin
              Excel.Selection.Formula := '=' + CeldaSuma + '-' + CeldaResta;
            end;
            Excel.Selection.NumberFormat := '$ ##,##0.00';
            FormatoGrupo;
          end;
          sIdArea := zq_ReporteAcumulados.FieldByName('sIdArea').AsString;
          Libro.Range['A'+IntToStr(Fila)+':E'+IntToStr(Fila)].Select;
          Excel.Selection.Value := '          ' + zq_ReporteAcumulados.FieldByName('Area').AsString;
          Excel.Selection.MergeCells := True;
          FormatoGrupo;
          Excel.Selection.HorizontalAlignment := xlLeft;
          FilaDeGrupo := Fila;
          Inc(Fila);
          ContinuaCalculoPercepciones := True;
          CeldaSuma := 'NA';
          CeldaResta := 'NA';
        end;

        if (sTipoImporte <> zq_ReporteAcumulados.FieldByName('lTipo').AsString) OR (ContinuaCalculoPercepciones) then begin
          FilaDeImportesAnterior := FilaDeImportes;
          if ContinuaCalculoPercepciones then begin
            FiladeImportesFinalAnterior := Fila - 1;
          end else begin
            FiladeImportesFinalAnterior := Fila;
          end;
          if Fila > 7 then begin
            Libro.Range['D'+IntToStr(FilaDeImportesAnterior - 1)+':D'+IntToStr(FilaDeImportesAnterior - 1)].Select;
            Excel.Selection.Formula := '=SUM(C'+IntToStr(FilaDeImportesAnterior)+':C'+IntToStr(FiladeImportesFinalAnterior - 1)+')';
            Excel.Selection.NumberFormat := '$ ##,##0.00';
            FormatoTipoImporte;
          end;
          sTipoImporte := zq_ReporteAcumulados.FieldByName('lTipo').AsString;
          if sTipoImporte = 'Percepcion' then begin
            CeldaSuma := 'D'+IntToStr(Fila);
            sLabelTipoImporte := 'PERCEPCIONES';
          end else
          if sTipoImporte = 'Deduccion' then begin
            CeldaResta := 'D'+IntToStr(Fila);
            sLabelTipoImporte := 'DEDUCCIONES';
          end else begin
            sLabelTipoImporte := sTipoImporte;
          end;
          Libro.Range['A'+IntToStr(Fila)+':C'+IntToStr(Fila)].Select;
          Excel.Selection.Value := sLabelTipoImporte;
          Excel.Selection.MergeCells := True;
          FormatoTipoImporte;
          Inc(Fila);
          FilaDeImportes := Fila;
        end;

        Libro.Range['B'+IntToStr(Fila)+':B'+IntToStr(Fila)].Select;
        Excel.Selection.Value := zq_ReporteAcumulados.FieldByName('sDescripcion').AsString;
        FormatoDefault;

        Libro.Range['C'+IntToStr(Fila)+':C'+IntToStr(Fila)].Select;
        Excel.Selection.Value := zq_ReporteAcumulados.FieldByName('Acumulado').AsString;
//        ListaCeldas.Add('C'+IntToStr(Fila));
        FormatoImporte;

        Inc(Fila);

        zq_ReporteAcumulados.Next;
      end;

      Libro.Range['F'+IntToStr(FilaDeGrupo)+':F'+IntToStr(FilaDeGrupo)].Select;
      if CeldaSuma = 'NA' then begin
        Excel.Selection.Formula := '=' + CeldaResta;
      end else
      if CeldaResta = 'NA' then begin
        Excel.Selection.Formula := '=' + CeldaSuma;
      end else begin
        Excel.Selection.Formula := '=' + CeldaSuma + '-' + CeldaResta;
      end;
      Excel.Selection.NumberFormat := '$ ##,##0.00';
      FormatoGrupo;

      Libro.Range['D'+IntToStr(FilaDeImportes - 1)+':D'+IntToStr(FilaDeImportes - 1)].Select;
      Excel.Selection.Formula := '=SUM(C'+IntToStr(FilaDeImportes)+':C'+IntToStr(Fila)+')';
      Excel.Selection.NumberFormat := '$ ##,##0.00';
      FormatoTipoImporte;

      {$REGION 'HOJA DE TOTALIZADOS'}
      Excel.WorkBooks[1].WorkSheets[2].Name := 'Totales';
      Excel.WorkBooks[1].WorkSheets[2].Select;
      Libro := Excel.WorkBooks[1].WorkSheets[2];

      Excel.Columns[1].ColumnWidth := 5;
      Excel.Columns[2].ColumnWidth := 50;
      Excel.Columns[3].ColumnWidth := 15;
      Excel.Columns[4].ColumnWidth := 15;

      Libro.Range['C1:C1'].Select;
      Excel.Selection.Value := QryBusca.FieldByName('sNombre').AsString;
      Libro.Range['C2:C2'].Select;
      Excel.Selection.Value := QryBusca.FieldByName('sRfc').AsString;
      Libro.Range['C3:C3'].Select;
      Excel.Selection.Value := 'REPORTE DE ACUMULADOS TOTALES ' + FechaDeNomina;
      Excel.Selection.Font.Bold := True;

      Fila := 5;
      sTipoImporte := 'N/A';
      ContadorDeFilas := 1;
      while Not zq_AcumuladosTotales.Eof do begin
        if sTipoImporte <> zq_AcumuladosTotales.FieldByName('lTipo').AsString then begin
          sTipoImporte := zq_AcumuladosTotales.FieldByName('lTipo').AsString;
          if Fila > 5 then begin
            FilaDeImportesAnterior := FilaDeImportes;
            Libro.Range['D'+IntToStr(FilaDeImportesAnterior - 1)+':D'+IntToStr(FilaDeImportesAnterior - 1)].Select;
            Excel.Selection.Formula := '=SUM(C'+IntToStr(FilaDeImportesAnterior)+':C'+IntToStr(Fila - 1) + ')';
            FormatoDefault;
            Excel.Selection.NumberFormat := '$ ##,##0.00';
            Excel.Selection.Font.Bold := True;
            CeldaSuma := 'D' + IntToStr(FilaDeImportesAnterior - 1);
//            if ContadorDeFilas > 1 then begin
//              CeldaResta := 'D' + IntToStr(FilaDeImportesAnterior - 1);
//            end else begin
//              CeldaSuma := 'D' + IntToStr(FilaDeImportesAnterior - 1);
//            end;
          end;


          if sTipoImporte = 'Percepcion' then begin
            sLabelTipoImporte := 'PERCEPCIONES';
          end else
          if sTipoImporte = 'Deduccion' then begin
            sLabelTipoImporte := 'DEDUCCIONES';
          end else begin
            sLabelTipoImporte := sTipoImporte;
          end;

          Libro.Range['A'+IntToStr(Fila)+':C'+IntToStr(Fila)].Select;
          Excel.Selection.Value := sLabelTipoImporte;
          FormatoDefault;
          Excel.Selection.MergeCells := True;
          Excel.Selection.Font.Bold := True;
          Inc(Fila);
          Inc(ContadorDeFilas);
          //FilaDeImportes, FilaDeImportesAnterior, FiladeImportesFinalAnterior: Integer;
          FilaDeImportes := Fila;
        end;


        Libro.Range['B'+IntToStr(Fila)+':B'+IntToStr(Fila)].Select;
        Excel.Selection.Value := zq_AcumuladosTotales.FieldByName('sDescripcion').AsString;
        FormatoDefault;
        Excel.Selection.Font.Bold := True;

        Libro.Range['C'+IntToStr(Fila)+':C'+IntToStr(Fila)].Select;
        Excel.Selection.Value := zq_AcumuladosTotales.FieldByName('Acumulado').AsString;
        FormatoImporte;

        Inc(Fila);

        zq_AcumuladosTotales.Next;
      end;

      Libro.Range['D'+IntToStr(FilaDeImportes - 1)+':D'+IntToStr(FilaDeImportes - 1)].Select;
      Excel.Selection.Formula := '=SUM(C'+IntToStr(FilaDeImportes)+':C'+IntToStr(Fila - 1) + ')';
      FormatoDefault;
      Excel.Selection.NumberFormat := '$ ##,##0.00';
      Excel.Selection.Font.Bold := True;
      CeldaResta := 'D' + IntToStr(FilaDeImportes - 1);

      Libro.Range['B'+IntToStr(Fila)+':B'+IntToStr(Fila)].Select;
      Excel.Selection.Value := 'TOTALES';
      FormatoDefault;
      Excel.Selection.Font.Bold := True;

      Libro.Range['C'+IntToStr(Fila)+':C'+IntToStr(Fila)].Select;
      Excel.Selection.Formula := '=' + CeldaSuma + '-' + CeldaResta;
      FormatoImporte;
      Excel.Selection.Font.Bold := True;

      {$ENDREGION}

    Finally
      ListaCeldas.Free;
    End;
  Finally
//    Close;
    Excel := Unassigned;
  End;
end;

procedure Tfrm_Nomina_ReporteAcumulados.ImprimeReporteNominas;
Var
  ErrorMsg: String;
  QryBusca, Query, Qry2, QryAreas: TZQuery;
  Fila, SubFila, AutoInc, Columna, ColumnaInicial, IntColumnaFinal,
  FilaDeGrupoInicialAnterior, FilaDeGrupoFinalAnterior,
  FilaDeGrupoInicial: Integer;
  Salario, RangoPercepciones, RangoDeducciones, CeldaSalario,
  sIdArea, sArea, ColumnaFinal: String;
  ImportePorGrupo: Double;
begin

  Try
//    if Not ExportaNomina.Execute then begin
//      Exit;
//    end;

    Try
      Excel := CreateOleObject('Excel.Application');
    Except
      On E: Exception do begin
        FreeAndNil(Excel);
        ShowMessage(E.Message);
        Exit;
      end;
    End;


    Excel.Visible := True;
    Excel.DisplayAlerts:= False;
    Excel.WorkBooks.Add;
    Excel.WorkBooks[1].WorkSheets[1].Name := 'Reporte';
    Libro := Excel.WorkBooks[1].WorkSheets['Reporte'];

    Excel.Columns[1].ColumnWidth := 5;
//    Excel.Columns[1].Font.Size := 10;
//    Excel.Columns[1].Font.Bold := False;
//    Excel.Columns[1].Font.Name := 'Calibri';
//    Excel.Columns[1].Borders.Color := clBlack;
    Excel.Columns[2].ColumnWidth := 50;
    Excel.Columns[3].ColumnWidth := 15;
    Excel.Columns[4].ColumnWidth := 15;
    
    Try
      QryBusca := TZQuery.Create(Self);
      QryBusca.Connection := Connection.zConnection;
      QryBusca.SQL.Text := 'SELECT * FROM configuracion';
      QryBusca.Open;

      Libro.Range['C1:C1'].Select;
      Excel.Selection.Value := QryBusca.FieldByName('sNombre').AsString;
      Libro.Range['C2:C2'].Select;
      Excel.Selection.Value := QryBusca.FieldByName('sRfc').AsString;
      Libro.Range['C3:C3'].Select;
      Excel.Selection.Value := 'NOMINA: ' + zq_Nominas.FieldByName('sNomina').AsString + ' DE ' +  zq_Nominas.FieldByName('dFechaInicial').AsString + ' A ' + zq_Nominas.FieldByName('dFechaFinal').AsString;

      Libro.Range['A5:A7'].Select;
      Excel.Selection.Value := 'ID';
      FormatoEncabezado;
      Libro.Range['B5:B7'].Select;
      Excel.Selection.Value := 'PERSONAL';
      FormatoEncabezado;
      Libro.Range['C5:C5'].Select;
      Excel.Selection.Value := 'DIAS LABORADOS';
      FormatoEncabezado;
      Libro.Range['C6:C6'].Select;
      Excel.Selection.Value := 'FALTAS';
      FormatoEncabezado;
      Libro.Range['C7:C7'].Select;
      Excel.Selection.Value := 'DIAS A PAGAR';
      FormatoEncabezado;
      Libro.Range['D6:D6'].Select;
      Excel.Selection.Value := 'SALARIO DIARIO';
      FormatoEncabezado;
      Libro.Range['D7:D7'].Select;
      Excel.Selection.Value := 'SUELDO';
      FormatoEncabezado;

      //Bucle de Percepciones:
      Try
        Query := TZQuery.Create(Self);
        Query.Connection := Connection.zConnection;
        Query.SQL.Text := 'SELECT * FROM nom_catalogodeprestaciones WHERE lImprime = ''True'' ORDER BY sCodigo DESC;';
        Query.Open;
        Columna := 5;
        ColumnaInicial := Columna;
        if Query.RecordCount > 0 then begin
          while Not Query.Eof do begin
            Libro.Cells[7, Columna].Select;
            Excel.Selection.Value := Query.FieldByName('sNombre').AsString;
            FormatoEncabezado;
            Excel.Columns[Columna].AutoFit;
            Inc(Columna);
            Query.Next;
          end;
        end;
        RangoPercepciones := ColumnaNombre(ColumnaInicial)+'7:'+ColumnaNombre(Columna - 1)+'7';
        Libro.Range[ColumnaNombre(ColumnaInicial)+'6:'+ColumnaNombre(Columna - 1)+'6'].Select;
        Excel.Selection.Value := 'PERCEPCIONES';
        FormatoEncabezado;

      Finally
        Query.Free;
      End;

      //Bucle de Deducciones:
      Try
        Query := TZQuery.Create(Self);
        Query.Connection := Connection.zConnection;
        Query.SQL.Text := 'SELECT * FROM nom_catalogodededucciones WHERE lImprime = ''True'' ORDER BY sCodigo DESC;';
        Query.Open;
        ColumnaInicial := Columna;
        if Query.RecordCount > 0 then begin
          while Not Query.Eof do begin
            Libro.Cells[7, Columna].Select;
            Excel.Selection.Value := Query.FieldByName('sNombre').AsString;
            FormatoEncabezado;
            Excel.Columns[Columna].AutoFit;
            Inc(Columna);
            Query.Next;
          end;
        end;
        RangoDeducciones := ColumnaNombre(ColumnaInicial)+'7:'+ColumnaNombre(Columna - 1)+'7';
        Libro.Range[ColumnaNombre(ColumnaInicial)+'6:'+ColumnaNombre(Columna - 1)+'6'].Select;
        Excel.Selection.Value := 'DEDUCCIONES';
        FormatoEncabezado;

      Finally
        Query.Free;
      End;

      Libro.Range[ColumnaNombre(Columna)+'7:'+ColumnaNombre(Columna)+'7'].Select;
      ColumnaFinal := ColumnaNombre(Columna);
      IntColumnaFinal := Columna;
      Excel.Selection.Value := 'TOTAL';
      FormatoEncabezado;


//      zq_Percepciones.Active := False;
//      zq_Percepciones.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
//      zq_Percepciones.Open;
//      zq_Deducciones.Active := False;
//      zq_Deducciones.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
//      zq_Deducciones.Open;
//      zq_datosdeempleado.Active := False;
//      zq_datosdeempleado.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
//      zq_datosdeempleado.Open;

      zq_datosdeempleado.First;

      Fila := 8;
      AutoInc := 1;
      sIdArea := 'Sin Area';//zq_DatosDeEmpleado.FieldByName('sIdArea').AsString;
      while Not zq_DatosDeEmpleado.Eof do begin
        if zq_DatosDeEmpleado.FieldByName('sIdArea').AsString <> sIdArea then begin
          FilaDeGrupoInicialAnterior := FilaDeGrupoInicial;
          FilaDeGrupoFinalAnterior := Fila - 1;
          if FilaDeGrupoFinalAnterior > 8 then begin
            Libro.Range[ColumnaNombre(IntColumnaFinal)+IntToStr(FilaDeGrupoInicialAnterior - 1)+':'+ColumnaNombre(IntColumnaFinal)+IntToStr(FilaDeGrupoInicialAnterior - 1)].Select;
            Excel.Selection.Formula := '=SUM(' + ColumnaNombre(IntColumnaFinal) + IntToStr(FilaDeGrupoInicialAnterior) + ':' + ColumnaNombre(IntColumnaFinal) + IntToStr(FilaDeGrupoFinalAnterior) + ')';
            FormatoEncabezado;
            Excel.Selection.Borders.Color := clBlack;
            Excel.Selection.Interior.Color := $00FEF0E2;
            Excel.Selection.HorizontalAlignment := xlLeft;
            Excel.Selection.NumberFormat:='$ #,##0.00';
          end;
//          ImportePorGrupo := 0;
          sIdArea := zq_DatosDeEmpleado.FieldByName('sIdArea').AsString;
          Libro.Range['A'+IntToStr(Fila)+':'+ColumnaNombre(IntColumnaFinal - 1)+IntToStr(Fila)].Select;
          Excel.Selection.Value := zq_DatosDeEmpleado.FieldByName('sDescripcionArea').AsString;
          FormatoEncabezado;
          Excel.Selection.Borders.Color := clBlack;
          Excel.Selection.Interior.Color := $00FEF0E2;
          Excel.Selection.HorizontalAlignment := xlLeft;
          Inc(Fila);
          FilaDeGrupoInicial := Fila;
        end;

        SubFila := Fila + 2;

        {ID}
        Libro.Range['A'+IntToStr(Fila)+':A'+IntToStr(SubFila)].Select;
        Excel.Selection.Value := IntToStr(AutoInc);
        FormatoDefault;

        {NOMBRE DEL PERSONAL}
        Libro.Range['B'+IntToStr(Fila)+':B'+IntToStr(SubFila)].Select;
        Excel.Selection.Value := zq_DatosDeEmpleado.FieldByName('sNombreCompleto').AsString;
        FormatoDefault;

        
        {$REGION 'DIAS_LABORADOS'}
        Libro.Range['C'+IntToStr(Fila)+':C'+IntToStr(Fila)].Select;
        Excel.Selection.Value := zq_Nominas.FieldByName('DIAS').AsString;
        FormatoDefault;
        Libro.Range['C'+ IntToStr(Fila + 1) +':C' + IntToStr(Fila + 1)].Select;
        Excel.Selection.Value := zq_DatosdeEmpleado.FieldByName('dFaltas').AsString;
        FormatoDefault;
        Libro.Range['C'+ IntToStr(Fila + 2) + ':C'+ IntToStr(Fila + 2)].Select;
        Excel.Selection.Value := FloatToStr(zq_DatosdeEmpleado.FieldByName('dDiasLaborados').AsFloat);
        FormatoDefault;
        {$ENDREGION}

        {$REGION 'SALARIO'}
        Try
          Query := TZQuery.Create(Self);
          Query.Connection := Connection.zConnection;
          Query.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE sIdEmpleado = :Empleado AND iId_Nomina = :Nomina AND lBloqueado = ''True''';
          Query.Params.ParamByName('Empleado').AsString := zq_DatosDeEmpleado.FieldByName('sIdEmpleado').AsString;
          Query.Params.ParamByName('Nomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
          Query.Open;
          if Query.RecordCount > 0 then begin
            Salario := Query.FieldByName('dImporte').AsString;
          end else begin
            Salario := 'Procesar...';
          end;

        Finally
          Query.Free;
        End;
        Libro.Range['D' + IntToStr(Fila + 1) + ':D' + IntToStr(Fila + 1)].Select;
        Excel.Selection.Value := zq_DatosdeEmpleado.FieldByName('dSalarioIntegrado').AsString;
        FormatoDefault;
        Excel.Selection.NumberFormat:='$ ##0.00';
        Libro.Range['D' + IntToStr(Fila + 2) + ':D' + IntToStr(Fila + 2)].Select;
        Excel.Selection.Value := Salario;
        FormatoDefault;
        Excel.Selection.NumberFormat:='$ #,##0.00';
        {$ENDREGION}

        {$REGION 'PERCEPCIONES'}
        Try
          Query := TZQuery.Create(Self);
          Query.Connection := Connection.zConnection;
          Query.SQL.Text := 'SELECT * FROM nom_catalogodeprestaciones WHERE lImprime = ''True'' ORDER BY sCodigo DESC;';
          Query.Open;
          Columna := 5;
          ColumnaInicial:= Columna;

          if Query.RecordCount > 0 then begin
            Try
              Qry2 := TZQuery.Create(Self);
              Qry2.Connection := Connection.zConnection;
              while Not Query.Eof do begin
                Libro.Cells[IntToStr(Fila + 2), Columna].Select;
                Qry2.Active := False;
                Qry2.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE sIdEmpleado = '+QuotedStr(zq_DatosDeEmpleado.FieldByName('sIdEmpleado').AsString)+' AND iId_Catalogo = '+Query.FieldByName('iId').AsString+' AND lTipo = ''Percepcion'';';
                Qry2.Open;
                if Qry2.RecordCount > 0 then begin
                  Excel.Selection.Value := Qry2.FieldByName('dImporte').AsString;
                end else begin
                  Excel.Selection.Value := '0.00';
                end;
                Excel.Selection.NumberFormat:='$ #,##0.00';

                FormatoDefault;
                Inc(Columna);
                Query.Next;
              end;
            Finally
              RangoPercepciones := ColumnaNombre(ColumnaInicial) + IntToStr(Fila + 2) + ':' + ColumnaNombre(Columna - 1) + IntToStr(Fila + 2);
              Qry2.Free;
            End;
          end;
        Finally
          Query.Free;
        End;
        {$ENDREGION}

        {$REGION 'DEDUCCIONES'}
        Try
          Query := TZQuery.Create(Self);
          Query.Connection := Connection.zConnection;
          Query.SQL.Text := 'SELECT * FROM nom_catalogodededucciones WHERE lImprime = ''True'' ORDER BY sCodigo DESC;';
          Query.Open;
          ColumnaInicial:= Columna;

          if Query.RecordCount > 0 then begin
            Try
              Qry2 := TZQuery.Create(Self);
              Qry2.Connection := Connection.zConnection;
              while Not Query.Eof do begin
                Libro.Cells[IntToStr(Fila + 2), Columna].Select;
                Qry2.Active := False;
                Qry2.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE sIdEmpleado = '+QuotedStr(zq_DatosDeEmpleado.FieldByName('sIdEmpleado').AsString)+' AND iId_Catalogo = '+Query.FieldByName('iId').AsString+' AND lTipo = ''Deduccion'' AND iId_Nomina = ' + zq_Nominas.FieldByName('iId').AsString;
                Qry2.Open;
                if Qry2.RecordCount > 0 then begin
                  Excel.Selection.Value := Qry2.FieldByName('dImporte').AsString;
                end else begin
                  Excel.Selection.Value := '0.00';
                end;
                Excel.Selection.NumberFormat:='$ #,##0.00';

                FormatoDefault;
                Inc(Columna);
                Query.Next;
              end;
            Finally
              RangoDeducciones := ColumnaNombre(ColumnaInicial) + IntToStr(Fila + 2) + ':' + ColumnaNombre(Columna - 1) + IntToStr(Fila + 2);
              Qry2.Free;
            End;
          end;
        Finally
          Query.Free;
        End;
        {$ENDREGION}

        Libro.Cells[IntToStr(Fila + 2), Columna].Select;
        Excel.Selection.Formula := '=D' + IntToStr(Fila + 2) + ' + SUM('+RangoPercepciones+') - ' + 'SUM(' + RangoDeducciones+')';
        FormatoDefault;
        Excel.Selection.NumberFormat:='$ #,##0.00';
        
        Fila := SubFila + 1;
        Inc(AutoInc);
        zq_DatosDeEmpleado.Next;
      end;
//      if FilaDeGrupoInicial > 8 then begin
        Libro.Range[ColumnaNombre(IntColumnaFinal)+IntToStr(FilaDeGrupoInicial - 1)+':'+ColumnaNombre(IntColumnaFinal)+IntToStr(FilaDeGrupoInicial - 1)].Select;
        Excel.Selection.Formula := '=SUM(' + ColumnaNombre(IntColumnaFinal) + IntToStr(FilaDeGrupoInicial) + ':' + ColumnaNombre(IntColumnaFinal) + IntToStr(Fila) + ')';
        FormatoEncabezado;
        Excel.Selection.Borders.Color := clBlack;
        Excel.Selection.Interior.Color := $00FEF0E2;
        Excel.Selection.HorizontalAlignment := xlLeft;
        Excel.Selection.NumberFormat := '$ #,##0.00';
//      end;
    Finally

      QryBusca.Free;
    End;

    Excel.Visible:=True;
  Finally
    Excel := Unassigned;
  End;
end;

procedure Tfrm_Nomina_ReporteAcumulados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Nomina_ReporteAcumulados.FormShow(Sender: TObject);
Var
  Query: TZQuery;
  UltimaNomina: Integer;
begin
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;
    Query.SQL.Text := 'SELECT *, MAX(iId) FROM nom_nominas WHERE iProcesada = 1';
    Query.Open;
    if Query.RecordCount > 0 then begin
      UltimaNomina := Query.FieldByName('iId').AsInteger;
      FechaDeNomina := 'DEL ' + FormatDateTime('dd/mm', Query.FieldByName('dFechaInicial').AsDateTime) + ' AL ' + FormatDateTime('dd/mm', Query.FieldByName('dFechaFinal').AsDateTime);
    end else begin
      ShowMessage('No existen nóminas para imprimir recibos.');
      exit;
    end;

//    zq_Percepciones.Active := False;
//    zq_Percepciones.Params.ParamByName('IdNomina').AsInteger := UltimaNomina;
//    zq_Percepciones.Open;
//    zq_Deducciones.Active := False;
//    zq_Deducciones.Params.ParamByName('IdNomina').AsInteger := UltimaNomina;
//    zq_Deducciones.Open;
//    zq_datosdeempleado.Active := False;
//    zq_datosdeempleado.Params.ParamByName('IdNomina').AsInteger := UltimaNomina;
//    zq_datosdeempleado.Open;
//
//    zq_Nominas.Active := False;
//    zq_Nominas.Params.ParamByName('IdNomina').AsInteger := UltimaNomina;
//    zq_Nominas.Open;

    zq_ReporteAcumulados.Active := False;
    zq_ReporteAcumulados.Params.ParamByName('IdNomina').AsInteger := UltimaNomina;
    zq_ReporteAcumulados.Open;

    zq_AcumuladosTotales.Active := False;
    zq_AcumuladosTotales.Params.ParamByName('IdNomina').AsInteger := UltimaNomina;
    zq_AcumuladosTotales.Open;

//    ImprimeReporteNominas;
    ImprimeReporteAcumulados;
    Close;
  Finally
    Query.Free;

  End;
end;

end.
