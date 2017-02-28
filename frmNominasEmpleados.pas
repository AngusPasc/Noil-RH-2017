unit frmNominasEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_Connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, dblookup, CustomizeDlg, MasUtilerias, 
  UnitExcel, ComObj,
  JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvEdit,
  DBAdvEd, DBDateTimePicker, DBLabelEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  Tfrm_NominasEmpleados = class(TForm)
    ds_Nominas: TDataSource;
    zq_Nominas: TZQuery;
    Label1: TLabel;
    tsNombre: TDBEdit;
    Label2: TLabel;
    zq_NominasiId: TIntegerField;
    zq_NominassNomina: TStringField;
    zq_NominasdFechaInicial: TDateField;
    zq_NominasdFechaFinal: TDateField;
    Label3: TLabel;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    DBLabelEdit1: TDBLabelEdit;
    Label4: TLabel;
    frmBarra1: TfrmBarra;
    zq_NominasdTotal: TFloatField;
    Label5: TLabel;
    DBLabelEdit2: TDBLabelEdit;
    zq_NominasDIAS: TIntegerField;
    ReporteNominas: TfrxReport;
    zq_datosdeempleado_: TZQuery;
    frx_datosdeempleado: TfrxDBDataset;
    zq_datosdeempleado_sIdEmpleado: TStringField;
    zq_datosdeempleado_sNombreCompleto: TStringField;
    zq_datosdeempleado_sRfc: TStringField;
    zq_datosdeempleado_sDomicilio: TStringField;
    zq_datosdeempleado_sCiudad: TStringField;
    zq_datosdeempleado_sPuesto: TStringField;
    zq_datosdeempleado_sIdArea: TStringField;
    zq_datosdeempleado_sTelefono: TStringField;
    zq_datosdeempleado_seMail: TStringField;
    zq_datosdeempleado_dSueldo: TFloatField;
    zq_datosdeempleado_sStatus: TStringField;
    zq_datosdeempleado_sCuenta: TStringField;
    zq_datosdeempleado_lLabora: TStringField;
    zq_datosdeempleado_sBanco: TStringField;
    zq_datosdeempleado_sCuentaInterbancaria: TStringField;
    zq_datosdeempleado_sCurp: TStringField;
    zq_datosdeempleado_sImss: TStringField;
    zq_datosdeempleado_sNacionalidad: TStringField;
    zq_datosdeempleado_sEstadoCivil: TStringField;
    zq_datosdeempleado_dFechaNacimiento: TDateField;
    zq_datosdeempleado_dFechaTerminoLabores: TDateField;
    zq_datosdeempleado_dFechaInicioLabores: TDateField;
    zq_datosdeempleado_iId_Puesto: TIntegerField;
    zq_datosdeempleado_sLibretaMar: TStringField;
    zq_datosdeempleado_sCartilla: TStringField;
    zq_datosdeempleado_sCedulaProfesional: TStringField;
    zq_datosdeempleado_sLugarNacimiento: TStringField;
    zq_datosdeempleado_sCarrera: TStringField;
    zq_datosdeempleado_iId_RegistroPatronal: TIntegerField;
    zq_datosdeempleado_dSalarioDiario: TFloatField;
    zq_datosdeempleado_dFactorIntegracion: TFloatField;
    zq_datosdeempleado_dPromedioVariables: TFloatField;
    zq_datosdeempleado_dSalarioIntegrado: TFloatField;
    zq_percepciones: TZQuery;
    frx_Percepciones: TfrxDBDataset;
    zq_datosdeempleado_dSalarioReal: TFloatField;
    zq_datosdeempleado_dDiasLaborados: TFloatField;
    zq_Egresos: TZQuery;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ds_Egresos: TDataSource;
    zq_EgresosiIdFolio: TIntegerField;
    zq_EgresosdTotalCheque: TFloatField;
    zq_NominasiIdEgreso: TIntegerField;
    DBLabelEdit3: TDBLabelEdit;
    Label7: TLabel;
    Label8: TLabel;
    ZQuery2: TZQuery;
    IntegerField3: TIntegerField;
    StringField24: TStringField;
    DateField4: TDateField;
    DateField5: TDateField;
    FloatField6: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    DataSource1: TDataSource;
    zq_EgresossEgreso: TStringField;
    zq_NominasdTotalRestante: TFloatField;
    LabelRestante: TLabel;
    zq_deducciones: TZQuery;
    frx_Deducciones: TfrxDBDataset;
    zq_percepcionesiId: TIntegerField;
    zq_percepcionesiId_Nomina: TIntegerField;
    zq_percepcionessIdEmpleado: TStringField;
    zq_percepcionesdCantidad: TFloatField;
    zq_percepcionessDescripcion: TStringField;
    zq_percepcionesdImporte: TFloatField;
    zq_percepcioneslImprime: TStringField;
    zq_percepcioneslTipo: TStringField;
    zq_percepcionesdImporteTotal: TFloatField;
    zq_deduccionesiId: TIntegerField;
    zq_deduccionesiId_Nomina: TIntegerField;
    zq_deduccionessIdEmpleado: TStringField;
    zq_deduccionesdCantidad: TFloatField;
    zq_deduccionessDescripcion: TStringField;
    zq_deduccionesdImporte: TFloatField;
    zq_deduccioneslImprime: TStringField;
    zq_deduccioneslTipo: TStringField;
    zq_deduccionesdImporteTotal: TFloatField;
    ExportaNomina: TSaveDialog;
    zq_datosdeempleado_dFaltas: TFloatField;
    PopupMenu1: TPopupMenu;
    ReportedeNminas1: TMenuItem;
    EliminarNmina1: TMenuItem;
    qryDatosReporte: TZQuery;
    qryDeduccionesxEmpleado: TZQuery;
    qryIngresosxEmpleado: TZQuery;
    qryDatosReportesIdEmpleado: TStringField;
    qryDatosReportearea: TStringField;
    qryDatosReportenombre: TStringField;
    qryDatosReportelaborados: TFloatField;
    qryDatosReportesalario_diario: TFloatField;
    qryDatosReportedif_imms: TLargeintField;
    qryDatosReportetotal_nomina: TStringField;
    qryDatosReportetotal_pagar: TFloatField;
    qryDatosReportecuenta: TStringField;
    qryDatosReporteBanco: TStringField;
    qryDeduccionesxEmpleadodImporte: TFloatField;
    Filtro_FechaInicial: TJvDatePickerEdit;
    Label9: TLabel;
    Label10: TLabel;
    Filtro_FechaFinal: TJvDatePickerEdit;
    zq_datosdeempleado: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField1: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    IntegerField1: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    IntegerField2: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    zq_datosdeempleadosDescripcionArea: TStringField;
    zq_ReporteAcumulados: TZQuery;
    zq_AcumuladosTotales: TZQuery;
    frxNominas: TfrxDBDataset;
    zq_NominasNominaString: TStringField;
    grid_nominas: TRxDBGrid;
    zq_NominasiProcesada: TIntegerField;
    button2: TcxButton;
    BUtton4: TcxButton;
    Button3: TcxButton;
    Button1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure SiguienteCajon(Sender: TObject; var Key: Char);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure zq_NominasAfterPost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure zq_NominasAfterScroll(DataSet: TDataSet);
    procedure zq_NominasiIdEgresoChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormatoEncabezado;
    procedure FormatoDefault;
    procedure FormatoGrupo;
    procedure FormatoTipoImporte;
    procedure FormatoImporte;
    procedure FormatoTitulo(color: Tcolor; size: integer);
    procedure FormatoEncabezadoDefault(color: Tcolor; size: integer);
    procedure Button3Click(Sender: TObject);
    procedure EliminarNmina1Click(Sender: TObject);
    procedure ReportedeNminas1Click(Sender: TObject);
    procedure Filtro_FechaInicialChange(Sender: TObject);
    procedure Filtro_FechaFinalChange(Sender: TObject);
    procedure ImprimeReporteAcumulados;
    procedure ImprimeReporteNominas;
    procedure Button4Click(Sender: TObject);
    procedure zq_NominasCalcFields(DataSet: TDataSet);
    procedure grid_nominasKeyPress(Sender: TObject; var Key: Char);
    procedure grid_nominasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    function MostrarFormChild(sForm: string): boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_NominasEmpleados: Tfrm_NominasEmpleados;
  Excel, Libro, Hoja: Variant;

implementation
Uses frmEmpleadosPorNomina, frm_Inteligent, frmNomina_ImprimirRecibos;

{$R *.dfm}

procedure Tfrm_NominasEmpleados.FormatoEncabezadoDefault(color: Tcolor; size: integer);
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlLeft;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := size;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clBlack;
  Excel.Selection.Interior.Color := color;
  Excel.Selection.WrapText := True;
end;

procedure Tfrm_NominasEmpleados.FormatoEncabezado;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clBlack;
  Excel.Selection.Interior.Color := $00EBEBEB;
end;

procedure Tfrm_NominasEmpleados.FormatoDefault;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlLeft;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

procedure Tfrm_NominasEmpleados.FormatoGrupo;
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

procedure Tfrm_NominasEmpleados.FormatoTipoImporte;
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

procedure Tfrm_NominasEmpleados.FormatoImporte;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlLeft;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.NumberFormat:='$ #,##0.00';
end;

procedure Tfrm_NominasEmpleados.FormatoTitulo(color: Tcolor; size: integer);
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := size;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clBlack;
  Excel.Selection.Interior.Color := color;
end;

procedure Tfrm_NominasEmpleados.ImprimeReporteAcumulados;
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
  CeldasPorSumar, CeldaSuma, CeldaResta, NominasAplicadas: String;
  ImportePorGrupo: Double;
  ListaCeldas, ListaNominas: TStringList;
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
      ListaNominas := TStringList.Create;
      QryBusca := TZQuery.Create(Self);
      QryBusca.Connection := Connection.zConnection;
      QryBusca.SQL.Text := 'SELECT * FROM configuracion WHERE sContrato = ' + QuotedStr(Global_Contrato);
      QryBusca.Open;

      Libro.Range['C1:C1'].Select;
      Excel.Selection.Value := QryBusca.FieldByName('sNombre').AsString;
      Libro.Range['C2:C2'].Select;
      Excel.Selection.Value := QryBusca.FieldByName('sRfc').AsString;
      Libro.Range['C3:C3'].Select;
      Excel.Selection.Value := 'REPORTE DE ACUMULADOS PARA LA NÓMINA DEL ' + FormatDateTime('dd/mm/yyyy', Filtro_FechaInicial.Date) + ' AL ' + FormatDateTime('dd/mm/yyyy', Filtro_FechaFinal.Date) ;//+ FechaDeNomina;
      Excel.Selection.Font.Bold := True;

      sIdArea := 'Sin Area';
      sTipoImporte := 'Sin Importe';
      Fila := 5;
      ContadorDeFilas := 0;
      zq_Nominas.First;
      NominasAplicadas := '';
      if zq_Nominas.RecordCount = 0 then begin
        ShowMessage('Selecciona una nómina al menos.');
        Exit;
      end;
      while Not zq_Nominas.Eof do begin
        NominasAplicadas := NominasAplicadas + zq_Nominas.FieldByName('iId').AsString;
        if ContadorDeFilas < zq_Nominas.RecordCount - 1 then begin
          NominasAplicadas := NominasAplicadas + ',';
        end;
        Inc(ContadorDeFilas);
        zq_Nominas.Next;
      end;
      zq_ReporteAcumulados.Active := False;
      zq_AcumuladosTotales.Active := False;
      
      zq_ReporteAcumulados.SQL.Text := StringReplace(zq_ReporteAcumulados.SQL.Text, ':ListaDeIds', NominasAplicadas, [rfReplaceAll, rfIgnoreCase]);
      zq_AcumuladosTotales.SQL.Text := StringReplace(zq_AcumuladosTotales.SQL.Text, ':ListaDeIds', NominasAplicadas, [rfReplaceAll, rfIgnoreCase]);
//      ShowMessage(NominasAplicadas);
      ContadorDeFilas := 0;

//      zq_ReporteAcumulados.Active := False;
//      zq_ReporteAcumulados.Params.ParamByName('ListaDeIds').Value := NominasAplicadas;
      zq_ReporteAcumulados.Open;

//      zq_AcumuladosTotales.Active := False;
//      zq_AcumuladosTotales.Params.ParamByName('ListaDeIds').Value := NominasAplicadas;
      zq_AcumuladosTotales.Open;

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
      Excel.Selection.Value := 'REPORTE DE ACUMULADOS TOTALES DEL ' + FormatDateTime('dd/mm/yyyy', Filtro_FechaInicial.Date) + ' AL ' + FormatDateTime('dd/mm/yyyy', Filtro_FechaFinal.Date) ;// + FechaDeNomina;
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

procedure Tfrm_NominasEmpleados.ImprimeReporteNominas;
Var
  ErrorMsg: String;
  QryBusca, Query, Qry2, QryAreas: TZQuery;
  Fila, SubFila, AutoInc, Columna, ColumnaInicial, IntColumnaFinal,
  FilaDeGrupoInicialAnterior, FilaDeGrupoFinalAnterior,
  FilaDeGrupoInicial, x: Integer;
  Salario, RangoPercepciones, RangoDeducciones, CeldaSalario,
  sIdArea, sArea, ColumnaFinal, CadenaStr: String;
  ImportePorGrupo: Double;
  ListaSalarioDiario, ListaSalario: TStringList;
  ImporteTotal : Double;
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
    Excel.WorkBooks[1].WorkSheets[1].Name := 'Reporte';
    Libro := Excel.WorkBooks[1].WorkSheets['Reporte'];

    Excel.Columns[1].ColumnWidth := 5;
    Excel.Columns[2].ColumnWidth := 50;
    Excel.Columns[3].ColumnWidth := 15;
    Excel.Columns[4].ColumnWidth := 15;
    
    Try
      ListaSalario := TStringList.Create;
      QryBusca := TZQuery.Create(Self);
      QryBusca.Connection := Connection.zConnection;
      QryBusca.SQL.Text := 'SELECT * FROM configuracion WHERE sContrato = ' + QuotedStr(Global_Contrato);
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


      zq_Percepciones.Active := False;
      zq_Percepciones.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
      zq_Percepciones.Open;
      zq_Deducciones.Active := False;
      zq_Deducciones.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
      zq_Deducciones.Open;
      zq_datosdeempleado.Active := False;
      zq_datosdeempleado.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
      zq_datosdeempleado.Open;

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
        ListaSalario.Add('D' + IntToStr(Fila + 2)); //Agrega la celda para sumar al final.
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
                Qry2.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE sIdEmpleado = '+QuotedStr(zq_DatosDeEmpleado.FieldByName('sIdEmpleado').AsString)+' AND iId_Catalogo = '+Query.FieldByName('iId').AsString+' AND lTipo = ''Percepcion'' AND iId_Nomina = ' + zq_Nominas.FieldByName('iId').AsString;
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
        FormatoDefault;;
        Excel.Selection.NumberFormat:='$ #,##0.00';

        Fila := SubFila + 1;
        Inc(AutoInc);
        zq_DatosDeEmpleado.Next;
      end;

        Libro.Range[ColumnaNombre(IntColumnaFinal)+IntToStr(FilaDeGrupoInicial - 1)+':'+ColumnaNombre(IntColumnaFinal)+IntToStr(FilaDeGrupoInicial - 1)].Select;
        Excel.Selection.Formula := '=SUM(' + ColumnaNombre(IntColumnaFinal) + IntToStr(FilaDeGrupoInicial) + ':' + ColumnaNombre(IntColumnaFinal) + IntToStr(Fila) + ')';
        FormatoEncabezado;
        Excel.Selection.Borders.Color := clBlack;
        Excel.Selection.Interior.Color := $00FEF0E2;
        Excel.Selection.HorizontalAlignment := xlLeft;
        Excel.Selection.NumberFormat := '$ #,##0.00';

        Libro.Range['D'+IntToStr(Fila + 1)+':'+'D'+IntToStr(Fila + 1)].Select;
        CadenaStr := '=SUM(';
        for x := 0 to ListaSalario.Count - 1 do begin
          CadenaStr := CadenaStr + ListaSalario[x];
          if x < ListaSalario.Count then begin
            CadenaStr := CadenaStr + ',';
          end;
        end;
        CadenaStr := CadenaStr + ')';
        Excel.Selection.Formula := CadenaStr;
        FormatoEncabezado;
        Excel.Selection.Borders.Color := clBlack;
        Excel.Selection.Interior.Color := $00FEF0E2;
        Excel.Selection.HorizontalAlignment := xlLeft;
        Excel.Selection.NumberFormat := '$ #,##0.00';

        //Aqui imprimimos el total de la nomina..
        Libro.Range['T'+IntToStr(Fila + 1)+':'+'T'+IntToStr(Fila + 1)].Select;
        Excel.Selection.Formula := '=SUMAR.SI(S8:S'+ IntToStr(Fila) + ',">=0",' +'T8:T'+IntToStr(Fila)+')';
        FormatoEncabezado;
        Excel.Selection.Borders.Color := clBlack;
        Excel.Selection.Interior.Color := $00FEF0E2;
        Excel.Selection.HorizontalAlignment := xlLeft;
        Excel.Selection.NumberFormat:='$ #,##0.00';

    Finally
      QryBusca.Free;
      ListaSalario.Free;
    End;

    Excel.Visible:=True;
  Finally
    Excel := Unassigned;
  End;
end;

procedure Tfrm_NominasEmpleados.Button1Click(Sender: TObject);
begin
  frmEmpleadosPorNomina.iId_Nomina := zq_Nominas.FieldByName('iId').AsInteger;
  frmEmpleadosPorNomina.DiasTotales := zq_Nominas.FieldByName('DIAS').AsInteger;
  frmEmpleadosPorNomina.iIdEgreso := zq_Nominas.FieldByName('iIdEgreso').AsInteger;
  Application.CreateForm(Tfrm_EmpleadosPorNomina, frm_EmpleadosPorNomina);
  frmEmpleadosPorNomina.iId_Nomina := zq_Nominas.FieldByName('iId').AsInteger;
  frmEmpleadosPorNomina.DiasTotales := zq_Nominas.FieldByName('DIAS').AsInteger;
  frmEmpleadosPorNomina.iIdEgreso := zq_Nominas.FieldByName('iIdEgreso').AsInteger;
  frm_EmpleadosPorNomina.Show;
  frmEmpleadosPorNomina.iId_Nomina := zq_Nominas.FieldByName('iId').AsInteger;
  frmEmpleadosPorNomina.DiasTotales := zq_Nominas.FieldByName('DIAS').AsInteger;
  frmEmpleadosPorNomina.iIdEgreso := zq_Nominas.FieldByName('iIdEgreso').AsInteger;
end;

procedure Tfrm_NominasEmpleados.Button2Click(Sender: TObject);
Var
  ErrorMsg: String;
  QryBusca, Query, Qry2: TZQuery;
  Fila, SubFila, AutoInc, Columna, ColumnaInicial: Integer;
  Salario, RangoPercepciones, RangoDeducciones, CeldaSalario: String;
begin
  ImprimeReporteNominas;
  Exit;


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
    Excel.WorkBooks[1].WorkSheets[1].Name := 'Reporte';
    Libro := Excel.WorkBooks[1].WorkSheets['Reporte'];

    Excel.Columns[1].ColumnWidth := 5;
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
      Excel.Selection.Value := 'TOTAL';
      FormatoEncabezado;


      zq_Percepciones.Active := False;
      zq_Percepciones.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
      zq_Percepciones.Open;
      zq_Deducciones.Active := False;
      zq_Deducciones.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
      zq_Deducciones.Open;
      zq_datosdeempleado.Active := False;
      zq_datosdeempleado.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
      zq_datosdeempleado.Open;

      zq_datosdeempleado.First;

      Fila := 8;
      AutoInc := 1;
      while Not zq_DatosDeEmpleado.Eof do begin
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
        Libro.Range['D' + IntToStr(Fila + 2) + ':D' + IntToStr(Fila + 2)].Select;
        Excel.Selection.Value := Salario;
        FormatoDefault;
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
                Qry2.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE sIdEmpleado = '+QuotedStr(zq_DatosDeEmpleado.FieldByName('sIdEmpleado').AsString)+' AND iId_Catalogo = '+Query.FieldByName('iId').AsString+' AND lTipo = ''Deduccion'';';
                Qry2.Open;
                if Qry2.RecordCount > 0 then begin
                  Excel.Selection.Value := Qry2.FieldByName('dImporte').AsString;
                end else begin
                  Excel.Selection.Value := '0.00';
                end;

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

        Fila := SubFila + 1;
        Inc(AutoInc);
        zq_DatosDeEmpleado.Next;
      end;
    Finally
      QryBusca.Free;
    End;

    Excel.Visible:=True;
  Finally
    Excel := Unassigned;
  End;

end;

procedure Tfrm_NominasEmpleados.Button3Click(Sender: TObject);
Var
  Query: TZQuery;
begin
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;
    Query.SQL.Text := 'SELECT * FROM nom_nominas WHERE iId =:nomina ';
    Query.ParamByName('nomina').AsInteger := zq_nominas.FieldValues['iId'];
    Query.Open;

    if Query.RecordCount > 0 then
       global_nomina := Query.FieldByName('iId').AsInteger
    else
       global_nomina := 0;

    if not MostrarFormChild('frm_Nomina_ImprimirRecibos') then
    begin
        Application.CreateForm(Tfrm_Nomina_ImprimirRecibos, frm_Nomina_ImprimirRecibos);
        frm_Nomina_ImprimirRecibos.show;
    end;
end;

procedure Tfrm_NominasEmpleados.Button4Click(Sender: TObject);
begin
  ImprimeReporteAcumulados;
end;

procedure Tfrm_NominasEmpleados.EliminarNmina1Click(Sender: TObject);
begin
 If zq_Nominas.RecordCount  > 0 then
    if MessageDlg('¿Desea eliminar la Nómina seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
{       frm_Connection.QryBusca.Active := False ;
         frm_Principal.qryBusca.SQL.Clear ;
         frm_principal.QryBusca.SQL.Add('Select sIdNumeroCuenta from tesoreriaegresos Where sIdNumeroCuenta =:Cuenta');
         frm_principal.QryBusca.Params.ParamByName('Cuenta').DataType := ftString ;
         frm_principal.QryBusca.Params.ParamByName('Cuenta').Value    := zQCuentasBancarias.FieldValues['sIdNumeroCuenta'] ;
         frm_Principal.QryBusca.Open ;
         If frm_Principal.QryBusca.RecordCount > 0 Then
             MessageDlg('NO SE PUEDE BORRAR, EXISTE EN EGRESOS.', mtInformation, [mbOk], 0)
         Else}
         zq_Nominas.Delete ;
      except
        MessageDlg('No se pudo eliminar el registro: Existen registros asociados esta Nómina', mtInformation, [mbOk], 0);
      end
    end
end;

procedure Tfrm_NominasEmpleados.Filtro_FechaFinalChange(Sender: TObject);
var
  Id : integer;
begin
  //Buscamos el Id de la nomina...
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select iId from nom_nominas where dFechaInicial >= :FechaI AND dFechaInicial <= :FechaF ');
  connection.zCommand.Params.ParamByName('FechaI').AsDate := Filtro_FechaInicial.Date;
  connection.zCommand.Params.ParamByName('FechaF').AsDate := Filtro_FechaFinal.Date;
  connection.zCommand.Open;

  Id := 0;
  if connection.zCommand.RecordCount > 0 then
     Id := connection.zCommand.FieldValues['iId'];

  zq_Nominas.Active := False;
  zq_Nominas.Params.ParamByName('FechaInicial').AsDate := Filtro_FechaInicial.Date;
  zq_Nominas.Params.ParamByName('FechaFinal').AsDate := Filtro_FechaFinal.Date;
  zq_Nominas.Params.ParamByName('Id').AsInteger := Id;
  zq_Nominas.Open;

end;

procedure Tfrm_NominasEmpleados.Filtro_FechaInicialChange(Sender: TObject);
var
  Id : integer;
begin
  //Buscamos el Id de la nomina...
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select iId from nom_nominas where dFechaInicial >= :FechaI AND dFechaInicial <= :FechaF ');
  connection.zCommand.Params.ParamByName('FechaI').AsDate := Filtro_FechaInicial.Date;
  connection.zCommand.Params.ParamByName('FechaF').AsDate := Filtro_FechaFinal.Date;
  connection.zCommand.Open;

  Id := 0;
  if connection.zCommand.RecordCount > 0 then
     Id := connection.zCommand.FieldValues['iId'];

  zq_Nominas.Active := False;
  zq_Nominas.SQL.Clear;
  zq_Nominas.SQL.Add('SELECT nom.*, DATEDIFF(nom.dFechaFinal, nom.dFechaInicial) + 1 AS DIAS, ' +
                      '((select sum(dImporte) from nom_detallesporempleado where iId_nomina = :id and lTipo = "percepcion") - ' +
                      '(select sum(dImporte) from nom_detallesporempleado where iId_nomina = :id and lTipo = "Deduccion")) ' +
                      '  AS dTotal  FROM nom_nominas AS nom LEFT JOIN nom_empleadospornomina AS en ON (en.iId_Nomina = nom.iId) ' +
                      ' WHERE nom.dFechaInicial >= :FechaInicial AND nom.dFechaInicial <= :FechaFinal  GROUP BY nom.iId ORDER BY iId DESC ' );
  zq_Nominas.Params.ParamByName('FechaInicial').AsDate := Filtro_FechaInicial.Date;
  zq_Nominas.Params.ParamByName('FechaFinal').AsDate := Filtro_FechaFinal.Date;
  zq_Nominas.Params.ParamByName('Id').AsInteger := Id;
  zq_Nominas.Open;
end;

procedure Tfrm_NominasEmpleados.FormActivate(Sender: TObject);
begin
  zq_Nominas.Refresh;
end;

procedure Tfrm_NominasEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_NominasEmpleados.FormShow(Sender: TObject);
var
  Id : integer;
begin
  //Buscamos el Id de la nomina...
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select iId from nom_nominas where dFechaInicial >= :FechaI AND dFechaInicial <= :FechaF ');
  connection.zCommand.Params.ParamByName('FechaI').AsDate := Filtro_FechaInicial.Date;
  connection.zCommand.Params.ParamByName('FechaF').AsDate := Filtro_FechaFinal.Date;
  connection.zCommand.Open;

  Id := 0;
  if connection.zCommand.RecordCount > 0 then
     Id := connection.zCommand.FieldValues['iId'];

  zq_Nominas.Active := False;
  zq_Nominas.Params.ParamByName('Id').AsInteger := Id;
  zq_Nominas.Open;
  Grid_nominas.SetFocus;
end;

procedure Tfrm_NominasEmpleados.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);

  zq_Egresos.Active := False;
  zq_Egresos.SQL.Clear;
  zq_Egresos.SQL.Add(' ' +
  'SELECT ' +
  '    CONCAT(dIdFecha, ": ", iIdFolio, " - ", SUBSTR(mDescripcion, 1, 100)) AS sEgreso, ' +
  '    iIdFolio, ' +
  '    ABS(dImporteTotal) AS dTotalCheque ' +
  'FROM con_tesoreriaegresos ' +
  'WHERE ' +
  '    sTipoMovimiento = "GASTOS" ' +
  '    AND ' +
  '    lComprobado = "No" ' +
  'ORDER BY dIdFecha DESC;' +
  '');
  zq_Egresos.Open;

  DBLookUpComboBox1.Refresh;
  zq_Nominas.Append ;
  tsNombre.SetFocus;

end;

procedure Tfrm_NominasEmpleados.frmBarra1btnCancelClick(Sender: TObject);
begin
  zq_Nominas.Cancel ;
  frmBarra1.btnCancelClick(Sender);
end;

procedure Tfrm_NominasEmpleados.frmBarra1btnDeleteClick(Sender: TObject);
begin

 If zq_Nominas.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
{       frm_Connection.QryBusca.Active := False ;
         frm_Principal.qryBusca.SQL.Clear ;
         frm_principal.QryBusca.SQL.Add('Select sIdNumeroCuenta from tesoreriaegresos Where sIdNumeroCuenta =:Cuenta');
         frm_principal.QryBusca.Params.ParamByName('Cuenta').DataType := ftString ;
         frm_principal.QryBusca.Params.ParamByName('Cuenta').Value    := zQCuentasBancarias.FieldValues['sIdNumeroCuenta'] ;
         frm_Principal.QryBusca.Open ;
         If frm_Principal.QryBusca.RecordCount > 0 Then
             MessageDlg('NO SE PUEDE BORRAR, EXISTE EN EGRESOS.', mtInformation, [mbOk], 0)
         Else}
         zq_Nominas.Delete ;
      except
        MessageDlg('No se pudo eliminar el registro: Existen registros asociados esta prestación', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_NominasEmpleados.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  zq_Egresos.Active := False;
  zq_Egresos.SQL.Clear;
  zq_Egresos.SQL.Add(' ' +
  'SELECT ' +
  '    CONCAT(dIdFecha, ": ", iIdFolio, " - ", SUBSTR(mDescripcion, 1, 100)) AS sEgreso, ' +
  '    iIdFolio, ' +
  '    ABS(dImporteTotal) AS dTotalCheque ' +
  'FROM con_tesoreriaegresos ' +
  'WHERE ' +
  '    sTipoMovimiento = "GASTOS" ' +
  'ORDER BY dIdFecha DESC;' +
  '');
  zq_Egresos.Open;

  If zq_Nominas.RecordCount > 0 Then
  begin
      zq_Nominas.Edit ;
      tsNombre.SetFocus
  end ;
end;

procedure Tfrm_NominasEmpleados.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_NominasEmpleados.frmBarra1btnPostClick(Sender: TObject);
begin
  zq_Nominas.Post ;
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_NominasEmpleados.frmBarra1btnPrinterClick(Sender: TObject);
begin
  zq_Percepciones.Active := False;
  zq_Percepciones.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
  zq_Percepciones.Open;
  zq_Deducciones.Active := False;
  zq_Deducciones.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
  zq_Deducciones.Open;
  zq_datosdeempleado.Active := False;
  zq_datosdeempleado.Params.ParamByName('IdNomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
  zq_datosdeempleado.Open;
  ReporteNominas.LoadFromFile(global_files + 'Recibos_de_Nomina.fr3');
  ReporteNominas.ShowReport();
end;

procedure Tfrm_NominasEmpleados.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zq_Nominas.Refresh;
end;

procedure Tfrm_NominasEmpleados.grid_nominasGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  try
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if zq_nominas.RecordCount > 0 then
      begin
          if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iProcesada').AsInteger = 1 then
          begin
              AFont.Color := clRed;
             // Afont.Style := [fsBold];
          end
          else
          begin
              AFont.Color := clBlack;
             // Afont.Style := [fsBold];
          end;
      end;
  except

  end;
end;

procedure Tfrm_NominasEmpleados.grid_nominasKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then begin
    Button1.Click;
  end;
end;

procedure Tfrm_NominasEmpleados.ReportedeNminas1Click(Sender: TObject);
var
  I, x, y, Cta : integer;
  total_pagar_todos, total_nomina_todos : double;
  verdadero: Boolean;
  letra, letra_ant, letra_max, porciento, signo_pesos, area : string;
  deduciones, deduciones_totales, ingresos, ingresos_totales : TStringList;
begin
  if zq_Nominas.RecordCount > 0 then
  begin
    if zq_Nominas.FieldByName('iId').AsString <> '' then
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
          end;

        Excel.Visible := True;
        Excel.DisplayAlerts:= False;
        Excel.WorkBooks.Add;
        Excel.WorkBooks[1].WorkSheets[1].Name := 'Reporte';
        Libro := Excel.WorkBooks[1].WorkSheets['Reporte'];

        for I := 1 to 50 do
        begin
          Excel.Columns[I].ColumnWidth := 15;
        end;

        Libro.Rows[1].RowHeight := 30;

        Try
          Libro.Range['B2:B4'].Select;
          Excel.Selection.Value := 'EMPELADO';
          FormatoEncabezado;
          Libro.Range['C2:C4'].Select;
          Excel.Selection.Value := 'DÍAS LABORADOS';
          FormatoEncabezado;
          Libro.Range['D2:D4'].Select;
          Excel.Selection.Value := 'SALARIO DIARIO';
          FormatoEncabezado;
          Libro.Range['E2:E4'].Select;
          Excel.Selection.Value := 'DIF. IMSS';
          FormatoEncabezado;

          Connection.QryBusca.Active := False;
          Connection.QryBusca.SQL.Clear;
          Connection.QryBusca.SQL.Add('SELECT iId, sNombre FROM nom_catalogodededucciones WHERE lImprime = '+quotedstr('True')+';');
          Connection.QryBusca.Open;
          y := 6;
          x := 3;
          deduciones := TStringList.Create;
          deduciones_totales := TStringList.Create;
          Connection.QryBusca.First;
          while not Connection.QryBusca.Eof do
          begin
              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x+1)].Select;
              Excel.Selection.Value := Connection.QryBusca.FieldByName('sNombre').AsString;
              FormatoEncabezado;
              deduciones.Add(Connection.QryBusca.FieldByName('iId').AsString);
              deduciones_totales.Add('0');
              Connection.QryBusca.Next;
          end;
          letra := ColumnaNombre(y-1);
          Libro.Range['F2:' + letra + '2'].Select;
          Excel.Selection.Value := 'DEDUCCIÓN';
          FormatoTitulo(clSilver,12);

          ingresos := TStringList.Create;
          ingresos_totales := TStringList.Create;
          Connection.QryBusca.Active := False;
          Connection.QryBusca.SQL.Clear;
          Connection.QryBusca.SQL.Add('SELECT iId, sNombre FROM nom_catalogodeprestaciones WHERE lImprime = '+quotedstr('True')+';');
          Connection.QryBusca.Open;
          Connection.QryBusca.First;
          letra_ant := ColumnaNombre(y);
          while not Connection.QryBusca.Eof do
          begin
              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x+1)].Select;
              Excel.Selection.Value := Connection.QryBusca.FieldByName('sNombre').AsString;
              FormatoEncabezado;
              ingresos.Add(Connection.QryBusca.FieldByName('iId').AsString);
              ingresos_totales.Add('0');
              Connection.QryBusca.Next;
          end;
          letra := ColumnaNombre(y-1);

          Libro.Range[letra_ant + '2:' + letra + '2'].Select;
          Excel.Selection.Value := 'INGRESOS';
          FormatoTitulo(clSilver,12);

          letra := ColumnaNombre(y);
          Inc(y);
          Libro.Range[letra + '2:' + letra + '4'].Select;
          Excel.Selection.Value := 'TOTAL NÓMINA';
          FormatoEncabezado;
          letra := ColumnaNombre(y);
          Inc(y);
          Libro.Range[letra + '2:' + letra + '4'].Select;
          Excel.Selection.Value := 'TOTAL A PAGAR';
          FormatoEncabezado;
          letra := ColumnaNombre(y);
          Inc(y);
          Libro.Range[letra + '2:' + letra + '4'].Select;
          Excel.Selection.Value := 'NO. CUENTA';
          FormatoEncabezado;
          letra := ColumnaNombre(y);
          Inc(y);
          Libro.Range[letra + '2:' + letra + '4'].Select;
          Excel.Selection.Value := 'BANCO';
          FormatoEncabezado;

          Libro.Range['B1:' + letra + '1'].Select;
          Excel.Selection.Value := 'NÓMINA DEL   '+ zq_Nominas.FieldByName('dFechaInicial').AsString + '   AL   ' + zq_Nominas.FieldByName('dFechaFinal').AsString;
          FormatoTitulo(clWhite,15);

          qryDatosReporte.Active := False;
          qryDatosReporte.Params.ParamByName('nomina').AsInteger := zq_Nominas.FieldByName('iId').AsInteger;
          qryDatosReporte.Open;
          letra_max := letra;

          if qryDatosReporte.RecordCount > 0 then
          begin
            x := 5;
            y := 2;
            area := 'prueba';
            total_pagar_todos := 0;
            total_nomina_todos := 0;
            qryDatosReporte.First;
            while not qryDatosReporte.Eof do
            begin
              if qryDatosReporte.FieldByName('area').AsString <> area then
              begin
                Libro.Range['B'+IntToStr(x)+':' + letra_max + IntToStr(x)].Select;
                Excel.Selection.Value := qryDatosReporte.FieldByName('area').AsString;
                Excel.Selection.Font.Color := clMaroon;
                FormatoEncabezadoDefault(clWhite,10);
                area := qryDatosReporte.FieldByName('area').AsString;
                Inc(x);
              end;

              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
              Excel.Selection.Value :=  qryDatosReporte.FieldByName('nombre').AsString;
              FormatoDefault;
              Excel.Selection.Borders.Color := clBlack;

              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
              Excel.Selection.Value :=  qryDatosReporte.FieldByName('laborados').AsString;
              FormatoDefault;
              Excel.Selection.Borders.Color := clBlack;

              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
              Excel.Selection.Value :=  qryDatosReporte.FieldByName('salario_diario').AsString;
              FormatoDefault;
              Excel.Selection.Borders.Color := clBlack;

              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
              Excel.Selection.Value :=  qryDatosReporte.FieldByName('dif_imms').AsString;
              FormatoDefault;
              Excel.Selection.Borders.Color := clBlack;

              for i := 0 to deduciones.Count - 1 do
              begin
                  qryDeduccionesxEmpleado.Active := False;
                  qryDeduccionesxEmpleado.Params.ParamByName('empleado').AsString := qryDatosReporte.FieldByName('sIdEmpleado').AsString;
                  qryDeduccionesxEmpleado.Params.ParamByName('deduccion').AsString := deduciones[i];
                  qryDeduccionesxEmpleado.Open;
                  letra := ColumnaNombre(y);
                  Inc(y);
                  Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
                  if qryDeduccionesxEmpleado.RecordCount > 0 then
                  begin
                     Excel.Selection.Value :=  qryDeduccionesxEmpleado.FieldByName('dImporte').AsString;
                     deduciones_totales[i] := IntToStr(StrToInt(deduciones_totales[i]) + qryDeduccionesxEmpleado.FieldByName('dImporte').AsInteger);
                  end else
                  begin
                      Excel.Selection.Value :=  '0';
                  end;
                  FormatoDefault;
                  Excel.Selection.Borders.Color := clBlack;
              end;

              for i := 0 to ingresos.Count - 1 do
              begin
                  qryIngresosxEmpleado.Active := False;
                  qryIngresosxEmpleado.Params.ParamByName('empleado').AsString := qryDatosReporte.FieldByName('sIdEmpleado').AsString;
                  qryIngresosxEmpleado.Params.ParamByName('ingreso').AsString := ingresos[i];
                  qryIngresosxEmpleado.Open;
                  letra := ColumnaNombre(y);
                  Inc(y);
                  Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
                  if qryIngresosxEmpleado.RecordCount > 0 then
                  begin
                     Excel.Selection.Value :=  qryIngresosxEmpleado.FieldByName('dImporte').AsString;
                     ingresos_totales[i] := IntToStr(StrToInt(ingresos_totales[i]) + qryIngresosxEmpleado.FieldByName('dImporte').AsInteger);
                  end else
                  begin
                     Excel.Selection.Value :=  '0';
                  end;
                  FormatoDefault;
                  Excel.Selection.Borders.Color := clBlack;
              end;

              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
              Excel.Selection.Value :=  qryDatosReporte.FieldByName('total_nomina').AsString;
              FormatoDefault;
              Excel.Selection.Borders.Color := clBlack;
              total_nomina_todos := total_nomina_todos + StrToFloat(StringReplace(qryDatosReporte.FieldByName('total_nomina').AsString, ',', '',[rfReplaceAll]));

              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
              Excel.Selection.Value :=  qryDatosReporte.FieldByName('total_pagar').AsString;
              FormatoDefault;
              Excel.Selection.Borders.Color := clBlack;
              total_pagar_todos := total_pagar_todos + StrToFloat(StringReplace(qryDatosReporte.FieldByName('total_pagar').AsString, ',', '',[rfReplaceAll]));

              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
              Excel.Selection.Value :=  qryDatosReporte.FieldByName('cuenta').AsString;
              FormatoDefault;
              Excel.Selection.Borders.Color := clBlack;

              letra := ColumnaNombre(y);
              Inc(y);
              Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
              Excel.Selection.Value :=  qryDatosReporte.FieldByName('Banco').AsString;
              FormatoDefault;
              Excel.Selection.Borders.Color := clBlack;

              y := 2;
              Inc(x);
              qryDatosReporte.Next;
            end;///fin de while
            letra := ColumnaNombre(5);
            Libro.Range['B'+IntToStr(x)+':' + letra + IntToStr(x)].Select;
            Excel.Selection.Value := 'Totales';
            Excel.Selection.Font.Color := clMaroon;
            FormatoEncabezadoDefault(clWhite,10);

            y := 6;
            for i := 0 to deduciones.Count - 1 do
            begin
               letra := ColumnaNombre(y);
               Inc(y);
               Libro.Range[letra + IntToStr(x) + ':' + letra + IntToStr(x)].Select;
               Excel.Selection.Value := deduciones_totales[i];
               Excel.Selection.Font.Color := clBlack;
               FormatoEncabezadoDefault(clWhite,10);
            end;

            for i := 0 to ingresos.Count - 1 do
            begin
               letra := ColumnaNombre(y);
               Inc(y);
               Libro.Range[letra + IntToStr(x) + ':' + letra + IntToStr(x)].Select;
               Excel.Selection.Value := ingresos_totales[i];
               Excel.Selection.Font.Color := clBlack;
               FormatoEncabezadoDefault(clWhite,10);
            end;

            letra := ColumnaNombre(y);
            Inc(y);
            Libro.Range[letra + IntToStr(x) + ':' + letra + IntToStr(x)].Select;
            Excel.Selection.Value := total_nomina_todos;
            Excel.Selection.Font.Color := clBlack;
            FormatoEncabezadoDefault(clWhite,10);

            letra := ColumnaNombre(y);
            Inc(y);
            Libro.Range[letra + IntToStr(x) + ':' + letra + IntToStr(x)].Select;
            Excel.Selection.Value := total_pagar_todos;
            Excel.Selection.Font.Color := clBlack;
            FormatoEncabezadoDefault(clWhite,10);

            letra := ColumnaNombre(y);
            Libro.Range[letra + IntToStr(x) + ':' + letra_max + IntToStr(x)].Select;
            Excel.Selection.Value := '';
            Excel.Selection.Font.Color := clMaroon;
            FormatoEncabezadoDefault(clWhite,10);
            
          end;
        Except
          On E: Exception do begin
            ShowMessage(E.Message);
            FreeAndNil(Excel);
            Exit;
          end;
        End;
        Excel.Visible:=True;
      Finally
        Excel := Unassigned;
      End;
    end;//fin de  <> ''
  end;///fin de recordCount
end;

procedure Tfrm_NominasEmpleados.tsCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_NominasEmpleados.tsNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_NominasEmpleados.zq_NominasAfterPost(DataSet: TDataSet);
begin
  zq_Nominas.Refresh;
end;

procedure Tfrm_NominasEmpleados.zq_NominasAfterScroll(DataSet: TDataSet);
Var
  Continue: Boolean;
  Id: Integer;
begin
  zq_Egresos.Active := False;
  zq_Egresos.SQL.Clear;
  if zq_Nominas.State in [dsInsert, dsEdit] then begin
    zq_Egresos.SQL.Add(' ' +
    'SELECT ' +
    '    CONCAT(dIdFecha, ": ", iIdFolio, " - ", SUBSTR(mDescripcion, 1, 100)) AS sEgreso, ' +
    '    iIdFolio, ' +
    '    ABS(dImporteTotal) AS dTotalCheque ' +
    'FROM con_tesoreriaegresos ' +
    'WHERE ' +
    '    sTipoMovimiento = "GASTOS" ' +
    '    AND ' +
    '    lComprobado = "No" ' +
    'ORDER BY dIdFecha DESC;' +
    '');
  end else begin
    zq_Egresos.SQL.Add(' ' +
    'SELECT ' +
    '    CONCAT(dIdFecha, ": ", iIdFolio, " - ", SUBSTR(mDescripcion, 1, 100)) AS sEgreso, ' +
    '    iIdFolio, ' +
    '    ABS(dImporteTotal) AS dTotalCheque ' +
    'FROM con_tesoreriaegresos ' +
    'WHERE ' +
    '    iIdFolio = ' + IntToStr(zq_Nominas.FieldByName('iIdEgreso').AsInteger) + ' ' +
    'ORDER BY dImporteTotal ASC;' +
    '');
  end;
//  zq_Egresos.Params.ParamByName('FechaInicial').AsDateTime := zq_Nominas.FieldByName('dFechaInicial').AsDateTime;
  zq_Egresos.Open;
  LabelRestante.Caption := FormatFloat('$ ###,##0.00', (zq_Egresos.FieldByName('dTotalCheque').AsFloat - zq_Nominas.FieldByName('dTotal').AsFloat));

end;

procedure Tfrm_NominasEmpleados.zq_NominasCalcFields(DataSet: TDataSet);
var
total, perc, deduc: double;

begin
  zq_Nominas.FieldByName('NominaString').AsString := 'DEL ' + FormatDateTime('dd', zq_Nominas.FieldByName('dFechaInicial').AsDateTime) + ' AL ' + FormatDateTime('dd', zq_Nominas.FieldByName('dFechaFinal').AsDateTime) + ' DE ' + EsMes( StrToInt(FormatDateTime('m', zq_Nominas.FieldByName('dFechaInicial').AsDateTime)));
   Connection.QryBusca.Active := False;
   Connection.QryBusca.SQL.Clear;
   Connection.QryBusca.SQL.Add(' select sum(dImporte) as percepcion, iId_Nomina ' +
           'from nom_detallesporempleado ' +
           'where iId_Nomina = :Idnomina and lTipo = "percepcion"');
   Connection.QryBusca.Params.ParamByName('Idnomina').Value := zq_Nominas.FieldByName('iId').AsInteger;
   Connection.QryBusca.Open;
   perc := Connection.QryBusca.FieldByName('percepcion').AsFloat;

   Connection.QryBusca.Active := False;
   Connection.QryBusca.SQL.Clear;
   Connection.QryBusca.SQL.Add(' select sum(dImporte) as Deduccion, iId_Nomina ' +
           'from nom_detallesporempleado ' +
           'where iId_Nomina = :Idnomina and lTipo = "Deduccion"');
   Connection.QryBusca.Params.ParamByName('Idnomina').Value := zq_Nominas.FieldByName('iId').AsInteger;
   Connection.QryBusca.Open;
   deduc := Connection.QryBusca.FieldByName('Deduccion').AsFloat;

   zq_Nominas.FieldByName('dtotal').Value := perc -  deduc;

end;

procedure Tfrm_NominasEmpleados.zq_NominasiIdEgresoChange(Sender: TField);
begin
  LabelRestante.Caption := FormatFloat('$ ###,##0.00', (zq_Egresos.FieldByName('dTotalCheque').AsFloat - zq_Nominas.FieldByName('dTotal').AsFloat));
end;

procedure Tfrm_NominasEmpleados.SiguienteCajon(Sender: TObject; var Key: Char);
Var
  Control: TWinControl;
begin
  Control := FindNextControl(Sender as TWinControl, True, True, True);
  if Key = #13 then begin
    if (FindNextControl(Sender as TWinControl, True, True, True) is TDBEdit) then begin
      SelectNext(Sender as TWinControl, True, True);
    end else begin
//      Control := FindNextControl(Sender as TWinControl, True, True, True);
//      SelectNext(Sender as TWinControl, True, True);
//      SiguienteCajon(Control, Key);
//      SelectNext(Control, True, True);
    end;
//    if not (SelectNext(Sender as TWinControl, True, True) is TDBEdit) then begin
//      SiguienteCajon(Sender, Key);
//    end;
  end;
end;


function Tfrm_NominasEmpleados.MostrarFormChild(sForm: string): boolean;
var
  i: integer;
begin
  result := false;
  if MDIChildCount <> 0 then
  begin
    for I := 0 to MDIChildCount - 1 do
      if uppercase(MDIChildren[i].Name) = uppercase(sform) then
      begin
        MDIChildren[i].Show;
        result := true;
        break;
      end;
  end;

end;

end.
