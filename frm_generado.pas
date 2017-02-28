unit frm_generado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, DBCtrls, Buttons, frm_connection, global,
  ExtCtrls, Mask, frxClass, frxDBSet, ComCtrls, RXDBCtrl, Menus,
  PanelDown, Newpanel, utilerias, RxMemDS, DateUtils, UnitExcel, ComObj,
  strUtils, jpeg, ZAbstractRODataset, ZDataset, RxLookup, rxToolEdit, rxCurrEdit,
  sSkinProvider, udbgrid, unitexcepciones, Unitvalidatexto;

type
  TfrmGenerado = class(TForm)
    ds_bitacora: TDataSource;
    ds_generado: TDataSource;
    dsBitacora: TfrxDBDataset;
    dsGenerado: TfrxDBDataset;
    PopupPrincipal: TPopupMenu;
    Imprimir1: TMenuItem;
    ComentariosAdicionales: TMenuItem;
    N4: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    ds_AnexoConvenio: TDataSource;
    ds_Estimaciones: TDataSource;
    rDiario: TfrxReport;
    nmFichaTecnica: TMenuItem;
    SaveImage: TSaveDialog;
    popImage: TPopupMenu;
    Grabar1: TMenuItem;
    tNewGroupBox2: tNewGroupBox;
    Label13: TLabel;
    Label4: TLabel;
    imgNotas: TImage;
    tdIdFecha: TDateTimePicker;
    chkAnexo: TCheckBox;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    tdPonderado: TCurrencyEdit;
    tdVentaMN: TCurrencyEdit;
    tdCantidadAnexo: TCurrencyEdit;
    tdInstalado: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    tdExcedente: TCurrencyEdit;
    tsWbs: TEdit;
    tsMedida: TEdit;
    Panel: tNewGroupBox;
    Grid_PartidasConvenios: TRxDBGrid;
    PanelPartidas: tNewGroupBox;
    GridActividades: TDBGrid;
    ds_actividadesxorden: TDataSource;
    ActividadesxOrden: TZReadOnlyQuery;
    ActividadesxOrdensNumeroOrden: TStringField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdensMedida: TStringField;
    ActividadesxOrdendCantidad: TFloatField;
    ActividadesxOrdendVentaMN: TFloatField;
    ActividadesxOrdendFechaInicio: TDateField;
    ActividadesxOrdendFechaFinal: TDateField;
    ActividadesxOrdendInstalado: TFloatField;
    ActividadesxOrdendExcedente: TFloatField;
    ActividadesxOrdendPonderado: TFloatField;
    ActividadesxOrdensDescripcion: TStringField;
    ActividadesxOrdendPendiente: TFloatField;
    ActividadesxOrdendInstaladoTotal: TFloatField;
    ActividadesxOrdensWbsAnterior: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    PageHistorico: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LabelBitacora: TLabel;
    Grid_Bitacora: TRxDBGrid;
    tdAcumulado: TCurrencyEdit;
    LabelGenerador: TLabel;
    grid_Generado: TRxDBGrid;
    gIsometrico: tNewGroupBox;
    bImagen: TImage;
    tdAcumuladoGenerado: TCurrencyEdit;
    AnexoConvenio: TZReadOnlyQuery;
    AnexoConveniosWbs: TStringField;
    AnexoConveniosNumeroActividad: TStringField;
    AnexoConveniodCantidadAnexo: TFloatField;
    AnexoConveniosMedida: TStringField;
    AnexoConveniodVentaMN: TFloatField;
    AnexoConveniodVentaDLL: TFloatField;
    AnexoConveniodFechaInicio: TDateField;
    AnexoConveniodFechaFinal: TDateField;
    AnexoConveniodPonderado: TFloatField;
    AnexoConveniosDescripcion: TStringField;
    Estimaciones: TZReadOnlyQuery;
    btnExit: TBitBtn;
    btnPrinter: TBitBtn;
    grAcumulados: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    LabelComparativo: TLabel;
    tdTotalBitacora: TCurrencyEdit;
    tdTotalGenerado: TCurrencyEdit;
    tdPendiente: TCurrencyEdit;
    Bitacora: TZReadOnlyQuery;
    BitacorasContrato: TStringField;
    BitacoradIdFecha: TDateField;
    BitacoraiIdDiario: TIntegerField;
    BitacorasNumeroOrden: TStringField;
    BitacorasIdTurno: TStringField;
    BitacoradCantidad: TFloatField;
    BitacoradAvance: TFloatField;
    BitacorasIsometrico: TStringField;
    BitacorasDescripcion: TStringField;
    BitacorasNumeroReporte: TStringField;
    BitacorasOrigenTierra: TStringField;
    BitacorasDescripcionTurno: TStringField;
    BitacorasWbs: TStringField;
    Generado: TZReadOnlyQuery;
    QryIsometricos: TZReadOnlyQuery;
    Label11: TLabel;
    btnNext: TBitBtn;
    btnPrevious: TBitBtn;
    tiRegistro: TCurrencyEdit;
    tsNumeroActividad: TRxDBLookupCombo;
    ds_Partidas: TDataSource;
    QryPartidas: TZReadOnlyQuery;
    EstimacionesiNumeroEstimacion: TStringField;
    EstimacionessDescripcion: TStringField;
    EstimacionesdFechaInicio: TDateField;
    EstimacionesdFechaFinal: TDateField;
    EstimacionesdCantidad: TFloatField;
    EstimacionesdMontoMN: TFloatField;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Grid_Estimaciones: TRxDBGrid;
    EstimacionesdAcumuladoAnterior: TFloatField;
    EstimacionesdAcumuladoActual: TFloatField;
    EstimacionesdMontoAcumuladoAnteriorMN: TFloatField;
    EstimacionesdMontoAcumuladoMN: TFloatField;
    SubContratos: TZReadOnlyQuery;
    ds_SubContratos: TDataSource;
    SubContratossContrato: TStringField;
    SubContratossSubContrato: TStringField;
    SubContratosiNumeroEstimacion: TStringField;
    SubContratossNumeroOrden: TStringField;
    SubContratossNumeroGenerador: TStringField;
    SubContratossWbs: TStringField;
    SubContratossNumeroActividad: TStringField;
    SubContratossIsometrico: TStringField;
    SubContratossPrefijo: TStringField;
    SubContratosdCantidad: TFloatField;
    GridSubContratos: TRxDBGrid;
    dsEstimaciones: TfrxDBDataset;
    dsSubContratos: TfrxDBDataset;
    EstimacionessContrato: TStringField;
    SubContratosdFechaInicio: TDateField;
    SubContratosdFechaFinal: TDateField;
    rInforme: TfrxReport;
    sSkinProvider1: TsSkinProvider;
    ReportadovsGenerado: TMenuItem;
    tsNumeroOrden: TDBLookupComboBox;
    Label1: TLabel;
    ordenesdetrabajo: TZReadOnlyQuery;
    ds_ordenesdetrabajo: TDataSource;
    SaveDialog1: TSaveDialog;
    ordenesdetrabajosNumeroOrden: TStringField;
    GroupBox2: TGroupBox;
    chkAprecia: TCheckBox;
    PanelProgress: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    BarraEstado: TProgressBar;
    ImprimirEstimaciones1: TMenuItem;
    gridActividadesAnexo: TDBGrid;
    ResumendeAlcances: TZReadOnlyQuery;
    ResumendeAlcancesifase: TIntegerField;
    ResumendeAlcancesdponderado: TFloatField;
    ResumendeAlcancessdescripcion: TStringField;
    ResumendeAlcancesdcantidad: TFloatField;
    ds_Resumen: TDataSource;
    qryPartidasDelAnexo: TZReadOnlyQuery;
    dsPartidasDelAnexo: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure GeneradoAfterScroll(DataSet: TDataSet);
    procedure BitacoraAfterScroll(DataSet: TDataSet);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure rInformeGetValue(const VarName: string;
      var Value: Variant);
    procedure Imprimir1Click(Sender: TObject);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure Grid_BitacoraDblClick(Sender: TObject);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure Grid_BitacoraKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_BitacoraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure grid_GeneradoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure nmFichaTecnicaClick(Sender: TObject);
    procedure grid_GeneradoGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grabar1Click(Sender: TObject);
    procedure ActividadesxOrdenAfterScroll(DataSet: TDataSet);
    procedure tdIdFechaChange(Sender: TObject);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure QryIsometricosAfterScroll(DataSet: TDataSet);
    procedure btnNextClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure GridActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_BitacoraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_GeneradoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EstimacionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridSubContratosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_BitacoraMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_GeneradoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EstimacionesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridSubContratosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridActividadesTitleClick(Column: TColumn);
    procedure GridSubContratosTitleClick(Column: TColumn);
    procedure Grid_EstimacionesTitleClick(Column: TColumn);
    procedure grid_GeneradoTitleClick(Column: TColumn);
    procedure Grid_BitacoraTitleClick(Column: TColumn);
    procedure tdTotalBitacoraKeyPress(Sender: TObject; var Key: Char);
    procedure tdTotalGeneradoKeyPress(Sender: TObject; var Key: Char);
    procedure tdPendienteKeyPress(Sender: TObject; var Key: Char);
    procedure tdPonderadoKeyPress(Sender: TObject; var Key: Char);
    procedure tsMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tsWbsKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tdInstaladoKeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure tdExcedenteKeyPress(Sender: TObject; var Key: Char);
    procedure tdTotalBitacoraEnter(Sender: TObject);
    procedure tdTotalBitacoraExit(Sender: TObject);
    procedure tdTotalGeneradoEnter(Sender: TObject);
    procedure tdTotalGeneradoExit(Sender: TObject);
    procedure tdPendienteEnter(Sender: TObject);
    procedure tdPendienteExit(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure ReportadovsGeneradoClick(Sender: TObject);
    procedure formatoEncabezado();
    procedure ReportadovsGeneradoxPartidaClick(Sender: TObject);
    procedure ImprimirEstimaciones1Click(Sender: TObject);
    procedure qryPartidasDelAnexoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerado: TfrmGenerado;
  utgrid: ticdbgrid;
  utgrid2: ticdbgrid;
  utgrid3: ticdbgrid;
  utgrid4: ticdbgrid;
  utgrid5: ticdbgrid;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;

  //Matriz de colores
  Colores: array[1..10, 1..2] of integer;
  columnas: array[1..1400] of string;
  sExcelPartida: string;

implementation

uses frm_comentariosxanexo;

{$R *.dfm}

procedure TfrmGenerado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  utgrid2.Destroy;
  utgrid3.Destroy;
  utgrid4.Destroy;
  utgrid5.Destroy;
  action := cafree;
  global_isometrico := ''
end;

procedure TfrmGenerado.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdIdFecha.SetFocus
end;

procedure TfrmGenerado.tsWbsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdcantidadanexo.SetFocus
end;

procedure TfrmGenerado.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdIdFecha.SetFocus
end;

procedure TfrmGenerado.FormShow(Sender: TObject);
var
  x, i, y, z: integer;
begin
    {Definimos colores...}
  colores[1, 1] := 3;
  colores[2, 1] := 5;
  colores[3, 1] := 6;
  colores[4, 1] := 8;
  colores[5, 1] := 10;
  colores[6, 1] := 11;
  colores[7, 1] := 12;
  colores[8, 1] := 13;
  colores[9, 1] := 14;
  colores[10, 1] := 15;

    {Colocamor color texto..}
  colores[1, 2] := 1;
  colores[2, 2] := 1;
  colores[3, 2] := 0;
  colores[4, 2] := 0;
  colores[5, 2] := 0;
  colores[6, 2] := 1;
  colores[7, 2] := 1;
  colores[8, 2] := 1;
  colores[9, 2] := 1;
  colores[10, 2] := 0;

    // soad - > Llenado del array de las columnas del Excel..
  for x := 1 to 26 do
    columnas[x] := Chr(64 + x);

  i := 27;
  for x := 1 to 26 do
  begin
    for y := 1 to 26 do
    begin
      columnas[i] := Chr(64 + x) + Chr(64 + y);
      i := i + 1;
    end;
  end;

  for x := 1 to 1 do
  begin
    for y := 1 to 26 do
    begin
      for z := 1 to 26 do
      begin
        columnas[i] := Chr(64 + x) + Chr(64 + y) + Chr(64 + z);
        i := i + 1;
      end;
    end;
  end;

  try
    UtGrid := TicdbGrid.create(gridactividades);
    UtGrid2 := TicdbGrid.create(grid_bitacora);
    UtGrid3 := TicdbGrid.create(grid_generado);
    UtGrid4 := TicdbGrid.create(grid_estimaciones);
    UtGrid5 := TicdbGrid.create(gridsubcontratos);

    global_isometrico := '';
    tdIdFecha.Date := Date;

    OrdenesdeTrabajo.Active := False;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato;
    Ordenesdetrabajo.Open;

    QryPartidas.Active := False;
    QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
    QryPartidas.Params.ParamByName('Contrato').Value := global_contrato;
    QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
    QryPartidas.Params.ParamByName('Convenio').Value := global_convenio;
    QryPartidas.Open;

    PageHistorico.ActivePageIndex := 0;
    tsNumeroActividad.SetFocus;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_generado', 'Al iniciar el formulario', 0);
    end;
  end;
end;

procedure TfrmGenerado.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaPU;
end;

procedure TfrmGenerado.btnExitClick(Sender: TObject);
begin
  close
end;

procedure TfrmGenerado.tsNumeroActividadEnter(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_entradaPU;
end;

procedure TfrmGenerado.btnPrinterClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
   if not FileExists(global_files + global_miReporte + '_ReportadoVsGenerado.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_ReportadoVsGenerado.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;
  //empieza validacion
  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('No concepto');

  cadenas.Add(tsnumeroactividad.Text);


  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  //continuainserccion de datos
  try
    if gridactividades.DataSource.DataSet.IsEmpty = false then
    begin
      rInforme.LoadFromFile(global_files + global_miReporte + '_ReportadoVsGenerado.fr3');
      rInforme.PreviewOptions.MDIChild := False;
      rInforme.PreviewOptions.Modal := True;
      rInforme.PreviewOptions.Maximized := lCheckMaximized();
      rInforme.PreviewOptions.ShowCaptions := False;
      rInforme.Previewoptions.ZoomMode := zmPageWidth;
      rInforme.ShowReport;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_generado', 'Al imprimir', 0);
    end;
  end;

end;

procedure TfrmGenerado.GeneradoAfterScroll(DataSet: TDataSet);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  bImagen.Picture.LoadFromFile('');
  bImagen.Picture.Bitmap := nil;
  tiRegistro.Value := 0;
  if Generado.RecordCount > 0 then
  begin
    Grid_Generado.Hint := Generado.FieldValues['mComentarios'];
    gIsometrico.Caption := 'ISOMETRICO ' + Generado.FieldValues['sIsometrico'] + '-' + Generado.FieldValues['sPrefijo'];
    LabelGenerador.Caption := 'Generado a la fecha [' + DateTostr(Generado.FieldValues['dFechaFinal']) + '] :';

    QryIsometricos.Active := False;
    QryIsometricos.Params.ParamByName('Contrato').DataType := ftString;
    QryIsometricos.Params.ParamByName('Contrato').Value := global_Contrato;
    QryIsometricos.Params.ParamByName('Orden').DataType := ftString;
    QryIsometricos.Params.ParamByName('Orden').Value := Generado.FieldValues['sNumeroOrden'];
    QryIsometricos.Params.ParamByName('Generador').DataType := ftString;
    QryIsometricos.Params.ParamByName('Generador').Value := Generado.FieldValues['sNumeroGenerador'];
    QryIsometricos.Params.ParamByName('Isometrico').DataType := ftString;
    QryIsometricos.Params.ParamByName('Isometrico').Value := Generado.FieldValues['sIsometrico'];
    QryIsometricos.Params.ParamByName('Prefijo').DataType := ftString;
    QryIsometricos.Params.ParamByName('Prefijo').Value := Generado.FieldValues['sPrefijo'];
    QryIsometricos.Open;
    if QryIsometricos.RecordCount > 0 then
      btnNext.Enabled := True
    else
      bImagen.Picture := nil;

    tiRegistro.Value := 1;
    if chkAnexo.Checked then
    begin
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select Sum(b.dCantidad) as dAcumulado From estimacionxpartida b INNER JOIN estimaciones e ON ' +
        '(b.sContrato = e.sContrato And b.sNumeroOrden = e.sNumeroOrden And b.sNumeroGenerador = e.sNumeroGenerador And e.iConsecutivo <= :Consecutivo) ' +
        'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad Group By b.sNumeroActividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Consecutivo').DataType := ftInteger;
      connection.qryBusca.Params.ParamByName('Consecutivo').Value := Generado.FieldValues['iConsecutivo'];
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        tdAcumuladoGenerado.Text := connection.qryBusca.FieldValues['dAcumulado']
      else
        tdAcumuladoGenerado.Text := '0.00';
    end
    else
    begin
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select Sum(b.dCantidad) as dAcumulado From estimacionxpartida b INNER JOIN estimaciones e ON ' +
        '(b.sContrato = e.sContrato And b.sNumeroOrden = e.sNumeroOrden And b.sNumeroGenerador = e.sNumeroGenerador And e.iConsecutivo <= :Consecutivo) ' +
        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sNumeroActividad = :Actividad Group By b.sNumeroActividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      connection.qryBusca.Params.ParamByName('Consecutivo').DataType := ftInteger;
      connection.qryBusca.Params.ParamByName('Consecutivo').Value := Generado.FieldValues['iConsecutivo'];
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        tdAcumuladoGenerado.Text := connection.qryBusca.FieldValues['dAcumulado']
      else
        tdAcumuladoGenerado.Text := '0.00';
    end
  end
  else
  begin
    bImagen.Picture := nil;
    Grid_Generado.Hint := '';
    gIsometrico.Caption := '';

    LabelGenerador.Caption := 'Acumulado';
    tdAcumuladoGenerado.Text := '0.00'
  end;
end;

procedure TfrmGenerado.BitacoraAfterScroll(DataSet: TDataSet);
begin
  if Bitacora.RecordCount > 0 then
  begin
    LabelBitacora.Caption := 'Reportado a la fecha [' + DateTostr(Bitacora.FieldValues['dIdFecha']) + '] :';
    if chkAnexo.Checked then
    begin
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select Sum(b.dCantidad) as dAcumulado From bitacoradeactividades b ' +
        'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad And b.dIdFecha <= :Fecha Group By b.sNumeroActividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
      connection.qryBusca.Params.ParamByName('Fecha').Value := Bitacora.FieldValues['dIdFecha'];
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        tdAcumulado.Text := connection.qryBusca.FieldValues['dAcumulado']
      else
        tdAcumulado.Text := '0.00';
    end
    else
    begin
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select Sum(b.dCantidad) as dAcumulado From bitacoradeactividades b ' +
        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sNumeroActividad = :Actividad And b.dIdFecha <= :Fecha Group By b.sNumeroActividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
      connection.qryBusca.Params.ParamByName('Fecha').Value := Bitacora.FieldValues['dIdFecha'];
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        tdAcumulado.Text := connection.qryBusca.FieldValues['dAcumulado']
      else
        tdAcumulado.Text := '0.00';
    end
  end
  else
  begin
    tdAcumulado.Text := '0.00';
    LabelBitacora.Caption := 'Acumulado'
  end
end;

procedure TfrmGenerado.tdIdFechaEnter(Sender: TObject);
begin
  tdIdFecha.Color := global_color_entradaPU;
end;

procedure TfrmGenerado.tdIdFechaExit(Sender: TObject);
begin
  tdIdFecha.Color := global_color_salidaPU;
end;

procedure TfrmGenerado.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdtotalbitacora.SetFocus
end;

procedure TfrmGenerado.tdInstaladoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    currencyedit1.SetFocus
end;

procedure TfrmGenerado.tdPendienteEnter(Sender: TObject);
begin
  tdpendiente.Color := global_color_entradaPU;
end;

procedure TfrmGenerado.tdPendienteExit(Sender: TObject);
begin
  tdpendiente.Color := global_color_salidaPU;
end;

procedure TfrmGenerado.tdPendienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdponderado.SetFocus
end;

procedure TfrmGenerado.tdPonderadoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsmedida.SetFocus
end;

procedure TfrmGenerado.tdTotalBitacoraEnter(Sender: TObject);
begin
  tdtotalbitacora.Color := global_color_entradaPU;
end;

procedure TfrmGenerado.tdTotalBitacoraExit(Sender: TObject);
begin
  tdtotalbitacora.Color := global_color_salidaPU;
end;

procedure TfrmGenerado.tdTotalBitacoraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdtotalgenerado.SetFocus
end;

procedure TfrmGenerado.tdTotalGeneradoEnter(Sender: TObject);
begin
  tdtotalgenerado.Color := global_color_entradaPU;
end;

procedure TfrmGenerado.tdTotalGeneradoExit(Sender: TObject);
begin
  tdtotalgenerado.Color := global_color_salidaPU;
end;

procedure TfrmGenerado.tdTotalGeneradoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdpendiente.SetFocus
end;

procedure TfrmGenerado.tdVentaMNKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tswbs.SetFocus
end;

procedure TfrmGenerado.rInformeGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'MI_FECHA') = 0 then
    Value := DateToStr(tdIdFecha.Date);
  if CompareText(VarName, 'DESCRIPCION') = 0 then
    Value := frmGenerado.Hint;
  if CompareText(VarName, 'PARTIDA') = 0 then
    Value := tsNumeroActividad.Text;

  if CompareText(VarName, 'CANTIDAD_ANEXO') = 0 then
    Value := tdCantidadAnexo.Value;
  if CompareText(VarName, 'MEDIDA') = 0 then
    Value := tsMedida.Text;
  if CompareText(VarName, 'PRECIO') = 0 then
    Value := tdVentaMN.Value;

end;

procedure TfrmGenerado.Imprimir1Click(Sender: TObject);
begin

  btnPrinter.Click

end;

procedure TfrmGenerado.ImprimirEstimaciones1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// CONSULTA ESTIMACIONES //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      Ren, nivel, i, Fila, total: integer;
      Q_Partidas, Q_Estimacion: TZReadOnlyQuery;
      dVolumen, dGeneradoTotal: double;
      Progreso, TotalProgreso: real;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Q_Estimacion := TZReadOnlyQuery.Create(self);
      Q_Estimacion.Connection := connection.zConnection;

      Ren := 6;
      // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 18;
      Excel.Columns['C:C'].ColumnWidth := 0;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 40;
      Excel.Columns['F:G'].ColumnWidth := 12;
      Excel.Columns['H:L'].ColumnWidth := 0.58;

      {Encabezado}
      Hoja.Range['B2:B2'].Select;
      Excel.Selection.Value := 'GENERADORES X ESTIMACION';
      Excel.Selection.Font.Size := 14;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A5:A5'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B5:B5'].Select;
      Excel.Selection.Value := 'Frente';
      FormatoEncabezado;
      Hoja.Range['C5:C5'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['D5:D5'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['E5:E5'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F5:F5'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G5:G5'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H5:H5'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I5:I5'].Select;
      Excel.Selection.Value := 'Precio M.N.';
      FormatoEncabezado;
      Hoja.Range['J5:J5'].Select;
      Excel.Selection.Value := 'Precio DLL';
      FormatoEncabezado;
      Hoja.Range['K5:K5'].Select;
      Excel.Selection.Value := 'Fecha I.';
      FormatoEncabezado;
      Hoja.Range['L5:L5'].Select;
      Excel.Selection.Value := 'Fecha F.';
      FormatoEncabezado;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden  order by iItemOrden ');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        Fila := 13;
        Q_Estimacion.Active := False;
        Q_Estimacion.SQL.Clear;
        Q_Estimacion.SQL.Add('select e.iNumeroEstimacion, g.sNumeroGenerador, g.dFechaInicio, g.dFechaFinal, g.sNumeroAnexo, p.sIsometrico, p.sNumeroActividad  from estimacionperiodo e ' +
          'left join estimaciones g on (e.sContrato = e.sContrato and e.iNumeroEstimacion = g.iNumeroEstimacion) ' +
          'inner join estimacionxpartida p on (p.sContrato = g.sContrato and p.sNumeroOrden =:Orden and p.sNumeroGenerador = g.sNumeroGenerador) ' +
          'where e.sContrato =:Contrato order by e.iNumeroEstimacion, g.sNumeroGenerador');
        Q_Estimacion.ParamByName('Contrato').AsString := global_contrato;
        Q_Estimacion.ParamByName('Orden').AsString := tsNumeroOrden.Text;
        Q_Estimacion.Open;

        if Q_Estimacion.RecordCount > 0 then
          Excel.Columns[columnas[13] + ':' + columnas[Q_Estimacion.RecordCount + 13]].ColumnWidth := 20;

        Q_Estimacion.First;
        while not Q_Estimacion.Eof do
        begin
               {Ecabezado de la Estimacion..}
          Hoja.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := 'Estimacion ' + Q_Estimacion.FieldValues['iNumeroEstimacion'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Interior.ColorIndex := 49;

               {Numero de Generador..}
          Hoja.Range[columnas[Fila] + '2', columnas[Fila] + '2'].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := 'Generador ' + Q_Estimacion.FieldValues['sNumeroGenerador'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Interior.ColorIndex := 34;

               {Periodo del Generador..}
          Hoja.Range[columnas[Fila] + '3', columnas[Fila] + '3'].Select;
          Excel.Selection.NumberFormat := '@';
          try
            Excel.Selection.Value := DateToStr(Q_Estimacion.FieldValues['dFechaInicio']) + ' al ' + DateToStr(Q_Estimacion.FieldValues['dFechaFinal']);
          except
          end;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Size := 9;
          Excel.Selection.Interior.ColorIndex := 16;

               {Isometrico del Generador..}
          Hoja.Range[columnas[Fila] + '4', columnas[Fila] + '4'].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := Q_Estimacion.FieldValues['sIsometrico'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Size := 9;
          Excel.Selection.Interior.ColorIndex := 15;

               {Anexo del Generador..}
          Hoja.Range[columnas[Fila] + '5', columnas[Fila] + '5'].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := Q_Estimacion.FieldValues['sNumeroAnexo'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Size := 9;
          Excel.Selection.Interior.ColorIndex := 16;

          inc(Fila);
          Q_Estimacion.Next;
        end;

        total := Fila;

           {Encabezado Total Generado..}
        Excel.Columns[columnas[Fila] + ':' + columnas[Fila]].ColumnWidth := 15;
        Hoja.Range[columnas[Fila] + '1', columnas[Fila] + '5'].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := 'Total Generado';
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 16;

        connection.QryBusca.First;
        while not connection.QryBusca.Eof do
        begin
                {Movimiento de la Barra..}
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

                {Continua con los datos..}
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := global_contrato;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Hoja.Cells[Ren, 2].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroOrden'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['iNivel'];

          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 5].Value := '';

          if Alto > 15 then
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
          else
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 7].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidad'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 8].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 9].Select;
          Excel.Selection.Value := CurrToStrF(connection.QryBusca.FieldValues['dVentaMN'], ffCurrency, 2);

          Hoja.Cells[Ren, 10].Select;
          Excel.Selection.Value := CurrToStrF(connection.QryBusca.FieldValues['dVentaDLL'], ffCurrency, 2);

          Hoja.Cells[Ren, 11].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

          Hoja.Cells[Ren, 12].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

                {Colores de los paquetes..}
          if connection.QryBusca.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
            nivel := connection.QryBusca.FieldValues['iNivel'];
            Hoja.Range['A' + IntToStr(Ren) + ':L' + IntToStr(Ren)].Select;
            if colores[nivel + 1, 2] = 1 then
              Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := colores[nivel + 1, 1];
          end
          else
          begin
                    {Consultamos si la partida esta reprotada..}
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
            Q_Partidas.SQL.Add('select g.iNumeroEstimacion, g.sNumeroOrden, g.sNumeroGenerador, p.sNumeroActividad, g.sNumeroAnexo, ' +
              'p.sWbs, SUM(p.dCantidad) as dCantidad from estimacionxpartida p ' +
              'inner join estimaciones g on (g.sContrato = p.sContrato and g.sNumeroGenerador = p.sNumeroGenerador) ' +
              'where p.sContrato =:Contrato and p.sNumeroOrden =:Orden ' +
              'and p.sWbs =:Wbs group by g.sNumeroGenerador, p.sWbs order by g.iNumeroEstimacion, g.sNumeroGenerador ');
            Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
            Q_Partidas.Params.ParamByName('Contrato').Value := global_contrato;
            Q_Partidas.Params.ParamByName('Orden').DataType := ftString;
            Q_Partidas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Q_Partidas.Params.ParamByName('Wbs').DataType := ftString;
            Q_Partidas.Params.ParamByName('Wbs').Value := connection.QryBusca.FieldByName('sWbs').AsString;
            Q_Partidas.Open;

            dGeneradoTotal := 0;
            i := 12;
            if Q_Partidas.RecordCount > 0 then
            begin
              Q_Estimacion.First;
              while not Q_Estimacion.Eof do
              begin
                if (Q_Estimacion.FieldValues['iNumeroEstimacion'] = Q_partidas.FieldValues['iNumeroEstimacion']) and
                  (Q_Estimacion.FieldValues['sNumeroGenerador'] = Q_partidas.FieldValues['sNumeroGenerador']) then
                begin
                  Hoja.Cells[Ren, 1 + i].Select;
                  Excel.Selection.NumberFormat := '@';
                  Excel.Selection.Value := Q_Partidas.FieldValues['dCantidad'];
                  Excel.Selection.HorizontalAlignment := xlRight;
                  Excel.Selection.VerticalAlignment := xlCenter;
                  Excel.Selection.Interior.ColorIndex := 41;

                  dGeneradoTotal := dGeneradoTotal + Q_Partidas.FieldValues['dCantidad'];
                end;
                inc(i);
                Q_Estimacion.Next;
              end;
            end
            else
              i := i + Q_Estimacion.RecordCount;

                    {Total Generado..}
            Hoja.Cells[Ren, i + 1].Select;
            Excel.Selection.Value := dGeneradoTotal;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Bold := True;
            if dGeneradoTotal = connection.QryBusca.FieldByName('dCantidad').AsFloat then
              Excel.Selection.Font.Color := clBlue;
            if dGeneradoTotal > connection.QryBusca.FieldByName('dCantidad').AsFloat then
              Excel.Selection.Font.Color := clRed;
          end;
          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
   {fORMATO DE LAS CELDAS..}
      Hoja.Range['M2:' + columnas[Fila] + IntToStr(Ren - 1)].Select;
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
      Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;
      Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

      Hoja.Range['A1:L4'].Select;
   // Formato general de encabezado de datos..
      Excel.Selection.Font.Color := clNavy;
      Excel.Selection.Interior.ColorIndex := 15;
      Excel.Selection.Interior.Pattern := xlSolid;

      Hoja.Cells[5, 13].Select;

      Q_Partidas.Destroy;
      Q_Estimacion.Destroy;

    end;


  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'GENERADORES X ESTIMACION';
      except
        Hoja.Name := 'GENERADORES X ESTIMACION';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
      Excel.DisplayAlerts := True;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al generar el Reporte de Extimaciones:' + #10 + #10 + e.Message;
      end;
    end;

    Result := Resultado;
  end;

begin
  try
    if tsNumeroOrden.Text = '' then
    begin
      messageDLG('Para continuar Selecciona un Frente de Trabajo', mtInformation, [mbOk], 0);
      exit;
    end;

      // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    if not SaveDialog1.Execute then
      Exit;

    PanelProgress.Visible := True;
    Label15.Refresh;
    Label16.Refresh;
    Label17.Refresh;
    BarraEstado.Position := 0;

      // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
    except
      FreeAndNil(Excel);
      showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
      Exit;
    end;

    if chkAprecia.Checked then
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := True;
    end
    else
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := False;
    end;

    Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

      // Verificar si cuenta con las hojas necesarias
    while Libro.Sheets.Count < 2 do
      Libro.Sheets.Add;

      // Verificar si se pasa de hojas necesarias
    Libro.Sheets[1].Select;
    while Libro.Sheets.Count > 1 do
      Excel.ActiveWindow.SelectedSheets.Delete;

      // Proceder a generar la hoja REPORTE
    CadError := '';

    if GenerarPlantilla then
    begin
         // Grabar el archivo de excel con el nombre dado
      Excel.Visible := True;
      Excel.DisplayAlerts := True;
      Excel.ScreenUpdating := True;
      PanelProgress.Visible := False;
      messageDlg('El Reporte se Generó Correctamente!', mtConfirmation, [mbOk], 0);
    end;

    Excel := '';

    if CadError <> '' then
      showmessage(CadError);
  finally
    PanelProgress.Visible := False;
  end;

end;

procedure TfrmGenerado.ReportadovsGeneradoClick(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      MiFechaI, MiFechaF, MiFecha: tDate;
      Ren, nivel, i, Fila, total: integer;
      Q_Partidas, Q_Estimacion: TZReadOnlyQuery;
      dVolumen, dGenerado, dGeneradoTotal, dAcumulado, dRepGen: double;
      lColor: boolean;
      meses: array[1..12] of string;
      Progreso, TotalProgreso: real;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Q_Estimacion := TZReadOnlyQuery.Create(self);
      Q_Estimacion.Connection := connection.zConnection;

      {Llenamos los meses}
      meses[1] := 'Enero';
      meses[2] := 'Febrero';
      meses[3] := 'Marzo';
      meses[4] := 'Abril';
      meses[5] := 'Mayo';
      meses[6] := 'Junio';
      meses[7] := 'Julio';
      meses[8] := 'Agosto';
      meses[9] := 'Septiembre';
      meses[10] := 'Octubre';
      meses[11] := 'Noviembre';
      meses[12] := 'Diciembre';

      Ren := 3;
      // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 18;
      Excel.Columns['C:C'].ColumnWidth := 0;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 40;
      Excel.Columns['F:G'].ColumnWidth := 12;
      Excel.Columns['H:L'].ColumnWidth := 0.58;

      {Encabezado}
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'REPORTADO VS GENERADO';
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 14;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A2:A2'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B2:B2'].Select;
      Excel.Selection.Value := 'Frente';
      FormatoEncabezado;
      Hoja.Range['C2:C2'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['D2:D2'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['E2:E2'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F2:F2'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G2:G2'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H2:H2'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I2:I2'].Select;
      Excel.Selection.Value := 'Precio M.N.';
      FormatoEncabezado;
      Hoja.Range['J2:J2'].Select;
      Excel.Selection.Value := 'Precio DLL';
      FormatoEncabezado;
      Hoja.Range['K2:K2'].Select;
      Excel.Selection.Value := 'Fecha I.';
      FormatoEncabezado;
      Hoja.Range['L2:L2'].Select;
      Excel.Selection.Value := 'Fecha F.';
      FormatoEncabezado;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden ' + sExcelPartida + ' order by iItemOrden ');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      if sExcelPartida <> '' then
      begin
        connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      end;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        MiFecha := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
        MiFechaI := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
        MiFechaF := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime;
        Fila := 13;
        lColor := True;
        for i := 0 to (MonthsBetween(MiFechaF, MiFechaI) + 1) do
        begin
               {Ecanezado del Mes..}
          Hoja.Range[columnas[Fila] + '1', columnas[Fila + 3] + '1'].Select;
          Excel.Selection.MergeCells := True;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := meses[StrToInt(copy(DateToStr(MiFecha), 4, 2))] + ' de ' + copy(DateToStr(MiFecha), 7, 4);
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Bold := False;
          if lColor then
          begin
            Excel.Selection.Font.Color := clBlack;
            Excel.Selection.Interior.ColorIndex := 15;
          end
          else
          begin
            Excel.Selection.Font.Color := clBlack;
            Excel.Selection.Interior.ColorIndex := 16;
          end;

          Hoja.Range[columnas[Fila] + '2', columnas[Fila + 3] + '2'].Select;
          Excel.Selection.Font.Bold := False;

          if lColor then
          begin
            Excel.Selection.Font.Color := clBlack;
            Excel.Selection.Interior.ColorIndex := 36;
            lColor := False;
          end
          else
          begin
            Excel.Selection.Font.Color := clBlack;
            Excel.Selection.Interior.ColorIndex := 15;
            lColor := True;
          end;

               {Datos fijos de la columna..}
          Hoja.Range[columnas[Fila] + '2', columnas[Fila] + '2'].Select;
          Excel.Selection.MergeCells := True;
          Excel.Selection.Value := 'Reportado';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Range[columnas[Fila + 1] + '2', columnas[Fila + 1] + '2'].Select;
          Excel.Selection.MergeCells := True;
          Excel.Selection.Value := 'Rep. Acum.';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Range[columnas[Fila + 2] + '2', columnas[Fila + 2] + '2'].Select;
          Excel.Selection.MergeCells := True;
          Excel.Selection.Value := 'Generado';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Range[columnas[Fila + 3] + '2', columnas[Fila + 3] + '2'].Select;
          Excel.Selection.MergeCells := True;
          Excel.Selection.Value := 'Rep. - Gen.';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          MiFecha := IncMonth(MiFecha);
          inc(Fila, 4);
        end;
        total := Fila;

           {Encabezado Total Reportado..}
        Excel.Columns[columnas[Fila] + ':' + columnas[Fila]].ColumnWidth := 15;
        Hoja.Range[columnas[Fila] + '1', columnas[Fila] + '2'].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := 'Total Reportado';
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 16;

           {Encabezado Total Generado..}
        Excel.Columns[columnas[Fila + 1] + ':' + columnas[Fila + 1]].ColumnWidth := 15;
        Hoja.Range[columnas[Fila + 1] + '1', columnas[Fila + 1] + '2'].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := 'Total Generado';
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clBlack;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 36;

        connection.QryBusca.First;
        while not connection.QryBusca.Eof do
        begin
                {Movimiento de la Barra..}
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

                {Continua con los datos..}
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := global_contrato;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Hoja.Cells[Ren, 2].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroOrden'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['iNivel'];

          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 5].Value := '';

          if Alto > 15 then
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
          else
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 7].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidad'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 8].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 9].Select;
          Excel.Selection.Value := CurrToStrF(connection.QryBusca.FieldValues['dVentaMN'], ffCurrency, 2);

          Hoja.Cells[Ren, 10].Select;
          Excel.Selection.Value := CurrToStrF(connection.QryBusca.FieldValues['dVentaDLL'], ffCurrency, 2);

          Hoja.Cells[Ren, 11].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

          Hoja.Cells[Ren, 12].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

                {Colores de los paquetes..}
          if connection.QryBusca.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
            nivel := connection.QryBusca.FieldValues['iNivel'];
            Hoja.Range['A' + IntToStr(Ren) + ':L' + IntToStr(Ren)].Select;
            if colores[nivel + 1, 2] = 1 then
              Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := colores[nivel + 1, 1];
          end
          else
          begin
            MiFecha := MiFechaI;
                    {Consultamos si la partida esta reprotada..}
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
            Q_Partidas.SQL.Add('Select b.sWbs,b.sNumeroActividad, sum(a.dCantidad) as dCantidad, a.dIdFecha, b.dCantidad as dVolumen ' +
              'From actividadesxorden b ' +
              'left JOIN bitacoradeactividades a ' +
              'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs And a.dIdFecha <=:Final and b.sNumeroOrden=a.sNumeroOrden) ' +
              'left JOIN tiposdemovimiento t ' +
              'ON (b.sContrato=t.sContrato And a.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") ' +
              'Where b.sContrato=:Contrato And b.sIdConvenio=:Convenio And b.sNumeroOrden =:Orden and a.sWbs =:Wbs ' +
              'Group By b.sWbs,month(a.dIdFecha),year(a.dIdFecha) Order By b.sNumeroActividad,b.iItemOrden,a.dIdFecha');
            Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
            Q_Partidas.Params.ParamByName('Contrato').Value := global_contrato;
            Q_Partidas.Params.ParamByName('Convenio').DataType := ftString;
            Q_Partidas.Params.ParamByName('Convenio').Value := global_convenio;
            Q_Partidas.Params.ParamByName('Orden').DataType := ftString;
            Q_Partidas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Q_Partidas.Params.ParamByName('Final').DataType := ftDate;
            Q_Partidas.Params.ParamByName('Final').Value := MiFechaF;
            Q_Partidas.Params.ParamByName('Wbs').DataType := ftString;
            Q_Partidas.Params.ParamByName('Wbs').Value := connection.QryBusca.FieldByName('sWbs').AsString;
            Q_Partidas.Open;

            if Q_Partidas.RecordCount > 0 then
            begin
              dVolumen := 0;
              dGeneradoTotal := 0;
              fila := 1;
              dAcumulado := 0;
              dRepGen := 0;
              while not Q_Partidas.Eof do
              begin
                for i := 0 to (MonthsBetween(MiFechaF, MiFechaI) + 1) do
                begin
                                {Volumenes Generados...}
                  Q_Estimacion.Active := False;
                  Q_Estimacion.SQL.Clear;
                  Q_Estimacion.SQL.Add('select es.iNumeroEstimacion, p.sNumeroGenerador, sum(p.dCantidad) as dCantidad FROM estimacionxpartida p ' +
                    'inner join estimaciones e on (e.sContrato = p.sContrato and e.sNumeroGenerador = p.sNumeroGenerador) ' +
                    'inner join estimacionperiodo es on (p.sContrato = es.sContrato and e.iNumeroEstimacion = es.iNumeroEstimacion ' +
                    'and ((MONTH(es.dFechaInicio) =:Mes ) and (YEAR(es.dFechaInicio)=:Anio))) ' +
                    'where p.sContrato =:Contrato and p.sNumeroOrden =:Orden and sWbs =:Wbs group by es.iNumeroEstimacion ');
                  Q_Estimacion.ParamByName('Contrato').AsString := global_contrato;
                  Q_Estimacion.ParamByName('Orden').AsString := tsNumeroOrden.Text;
                  Q_Estimacion.ParamByName('Wbs').AsString := connection.QryBusca.FieldByName('sWbs').AsString;
                  Q_Estimacion.ParamByName('Mes').AsInteger := StrToInt(copy(DateToStr(MiFecha), 4, 2));
                  Q_Estimacion.ParamByName('Anio').AsInteger := StrToInt(copy(DateToStr(MiFecha), 7, 4));
                  Q_Estimacion.Open;

                  dGenerado := 0;
                  while not Q_Estimacion.Eof do
                  begin
                    dGenerado := dGenerado + Q_Estimacion.FieldByName('dCantidad').AsFloat;
                    dGeneradoTotal := dGeneradoTotal + Q_Estimacion.FieldByName('dCantidad').AsFloat;
                    Q_Estimacion.Next;
                  end;

                                {Generado..}
                  if dGenerado > 0 then
                  begin
                    Hoja.Cells[Ren, 12 + Fila + 2].Select;
                    Excel.Selection.Value := dGenerado;
                    Excel.Selection.HorizontalAlignment := xlCenter;
                    Excel.Selection.VerticalAlignment := xlCenter;
                    Excel.Selection.Font.Bold := False;
                    Excel.Selection.Font.Color := 9;
                    if dGenerado > 0 then
                      Excel.Selection.Interior.ColorIndex := 44;
                  end;

                                {Volumenes Reportados..}
                  if copy(DateToStr(MiFecha), 4, 2) = copy(DateToStr(Q_Partidas.FieldByName('dIdFecha').AsDateTime), 4, 2) then
                  begin
                                    {Reportado..}
                    Hoja.Cells[Ren, 12 + Fila].Select;
                    Excel.Selection.Value := Q_Partidas.FieldByName('dCantidad').AsFloat;
                    Excel.Selection.HorizontalAlignment := xlCenter;
                    Excel.Selection.VerticalAlignment := xlCenter;
                    Excel.Selection.Font.Bold := False;
                    Excel.Selection.Font.Color := 9;
                    Excel.Selection.Interior.ColorIndex := 41;

                    dAcumulado := Q_Partidas.FieldByName('dCantidad').AsFloat + dRepGen;

                                    {Acumulado..}
                    Hoja.Cells[Ren, 12 + Fila + 1].Select;
                    Excel.Selection.Value := dAcumulado;
                    Excel.Selection.HorizontalAlignment := xlCenter;
                    Excel.Selection.VerticalAlignment := xlCenter;
                    Excel.Selection.Font.Bold := False;
                    if dVolumen > Q_Partidas.FieldByName('dVolumen').AsFloat then
                      Excel.Selection.Font.Color := clRed
                    else
                      Excel.Selection.Font.Color := 9;

                    dVolumen := dVolumen + Q_Partidas.FieldByName('dCantidad').AsFloat;
                    Q_Partidas.Next;
                  end
                  else
                  begin
                    dAcumulado := dRepGen;

                                    {Acumulado..}
                    Hoja.Cells[Ren, 12 + Fila + 1].Select;
                    Excel.Selection.Value := dAcumulado;
                    Excel.Selection.HorizontalAlignment := xlCenter;
                    Excel.Selection.VerticalAlignment := xlCenter;
                    Excel.Selection.Font.Bold := False;
                    if dVolumen > Q_Partidas.FieldByName('dVolumen').AsFloat then
                      Excel.Selection.Font.Color := clRed
                    else
                      Excel.Selection.Font.Color := 9;
                  end;

                  dRepGen := FloatToCurr(dAcumulado - dGenerado);

                                {Diferencia - Reportado - Generado}
                  Hoja.Cells[Ren, 12 + Fila + 3].Select;
                  Excel.Selection.Value := dRepGen;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment := xlCenter;
                  Excel.Selection.Font.Bold := False;
                  Excel.Selection.Font.Color := 9;

                  inc(Fila, 4);
                  MiFecha := IncMonth(MiFecha)
                end;
              end;

                        {Total Reportado..}
              Hoja.Cells[Ren, 12 + Fila].Select;
              Excel.Selection.Value := dVolumen;
              Excel.Selection.HorizontalAlignment := xlRight;
              Excel.Selection.VerticalAlignment := xlCenter;
              Excel.Selection.Font.Bold := True;
              if dVolumen = Q_Partidas.FieldByName('dVolumen').AsFloat then
                Excel.Selection.Font.Color := clBlue;
              if dVolumen > Q_Partidas.FieldByName('dVolumen').AsFloat then
                Excel.Selection.Font.Color := clRed;

                        {Total Generado..}
              Hoja.Cells[Ren, 12 + Fila + 1].Select;
              Excel.Selection.Value := dGeneradoTotal;
              Excel.Selection.HorizontalAlignment := xlRight;
              Excel.Selection.VerticalAlignment := xlCenter;
              Excel.Selection.Font.Bold := True;
              if dGeneradoTotal = Q_Partidas.FieldByName('dVolumen').AsFloat then
                Excel.Selection.Font.Color := clBlue;
              if dGeneradoTotal > Q_Partidas.FieldByName('dVolumen').AsFloat then
                Excel.Selection.Font.Color := clRed;
            end;
          end;
          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
   {fORMATO DE LAS CELDAS..}
      Hoja.Range['M3:' + columnas[Fila + 13] + IntToStr(Ren - 1)].Select;
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
      Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;
      Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

      Hoja.Range['A1:L1'].Select;
   // Formato general de encabezado de datos..
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Color := clNavy;
      Excel.Selection.Interior.ColorIndex := 15;
      Excel.Selection.Interior.Pattern := xlSolid;

      Hoja.Cells[2, 2].Select;

      Q_Partidas.Destroy;
      Q_Estimacion.Destroy;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'REPORTADO vs GENERADO FRENTE: ' + tsNumeroOrden.Text;
      except
        Hoja.Name := 'REPORTADO vs GENERADO ';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
      Excel.DisplayAlerts := True;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al generar Reportado vs Generado:' + #10 + #10 + e.Message;
      end;
    end;

    Result := Resultado;
  end;

begin
  try
    if tsNumeroOrden.Text = '' then
    begin
      messageDLG('Para continuar Selcciona un Frente de Trabajo', mtInformation, [mbOk], 0);
      exit;
    end;

      // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    if not SaveDialog1.Execute then
      Exit;

    PanelProgress.Visible := True;
    Label15.Refresh;
    Label16.Refresh;
    Label17.Refresh;
    BarraEstado.Position := 0;
      // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
    except
      FreeAndNil(Excel);
      showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
      Exit;
    end;

    if chkAprecia.Checked then
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := True;
    end
    else
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := False;
    end;

    Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

      // Verificar si cuenta con las hojas necesarias
    while Libro.Sheets.Count < 2 do
      Libro.Sheets.Add;

      // Verificar si se pasa de hojas necesarias
    Libro.Sheets[1].Select;
    while Libro.Sheets.Count > 1 do
      Excel.ActiveWindow.SelectedSheets.Delete;

      // Proceder a generar la hoja REPORTE
    CadError := '';

    if GenerarPlantilla then
    begin
         // Grabar el archivo de excel con el nombre dado
      Excel.Visible := True;
      Excel.DisplayAlerts := True;
      Excel.ScreenUpdating := True;
      PanelProgress.Visible := False;
      messageDlg('El Archivo de Excel se Generó Correctamente!', mtConfirmation, [mbOk], 0);
    end;

    Excel := '';

    if CadError <> '' then
      showmessage(CadError);
  finally
    PanelProgress.Visible := False;
  end;
end;

procedure TfrmGenerado.ReportadovsGeneradoxPartidaClick(Sender: TObject);
begin
  sExcelPartida := ' and sNumeroActividad =:Actividad ';
  ReportadovsGenerado.Click;
  sExcelPartida := '';
end;

procedure TfrmGenerado.ComentariosAdicionalesClick(Sender: TObject);
begin
  if gridActividades.DataSource.DataSet.IsEmpty = false then
  begin
    if gridActividades.DataSource.DataSet.RecordCount > 0 then
    begin
      global_partida := tsNumeroActividad.Text;
      Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
      frmComentariosxAnexo.show;
    end
    else
      showmessage('no existen partidas para aplicar comentarios');
  end
  else
    showmessage('no existen partidas para aplicar comentarios');
end;

procedure TfrmGenerado.Copy1Click(Sender: TObject);
begin
  try
    if gridactividades.DataSource.DataSet.IsEmpty = false then
      utgrid.CopyRowsToClip;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_generado', 'Al copiar registro', 0);
    end;
  end;
end;

procedure TfrmGenerado.CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdexcedente.SetFocus
end;

procedure TfrmGenerado.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmGenerado.tsMedidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdventamn.SetFocus
end;

procedure TfrmGenerado.tsNumeroActividadChange(Sender: TObject);
begin
  qryPartidasDelAnexo.Active := False;
  qryPartidasDelAnexo.Params.ParamByName('contrato').DataType := ftString;
  qryPartidasDelAnexo.Params.ParamByName('contrato').Value := global_contrato;
  qryPartidasDelAnexo.Params.ParamByName('convenio').DataType := ftString;
  qryPartidasDelAnexo.Params.ParamByName('convenio').Value := global_convenio;
  qryPartidasDelAnexo.Params.ParamByName('actividad').DataType := ftString;
  qryPartidasDelAnexo.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
  qryPartidasDelAnexo.Open;

end;

procedure TfrmGenerado.imgNotasDblClick(Sender: TObject);
begin
  ComentariosAdicionales.Click
end;

procedure TfrmGenerado.GridActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if gridactividades.Focused = true then
  begin
    if gridactividades.datasource.DataSet.IsEmpty = false then
      if gridactividades.DataSource.DataSet.RecordCount > 0 then
        UtGrid.dbGridMouseMoveCoord(x, y);
  end;

end;

procedure TfrmGenerado.GridActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if gridactividades.Focused = true then
  begin
    if gridactividades.datasource.DataSet.IsEmpty = false then
      if gridactividades.DataSource.DataSet.RecordCount > 0 then
        UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
  end;

end;

procedure TfrmGenerado.GridActividadesTitleClick(Column: TColumn);
begin
  try
    if gridactividades.Focused = true then
    begin
      if gridactividades.datasource.DataSet.IsEmpty = false then
        if gridactividades.DataSource.DataSet.RecordCount > 0 then
          UtGrid.DbGridTitleClick(Column);
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_generado', 'Al ordenar grid', 0);
    end;
  end;
end;

procedure TfrmGenerado.GridSubContratosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if gridsubcontratos.Focused = true then
  begin
    if gridsubcontratos.datasource.DataSet.IsEmpty = false then
      if gridsubcontratos.DataSource.DataSet.RecordCount > 0 then
        UtGrid5.dbGridMouseMoveCoord(x, y);
  end;

end;

procedure TfrmGenerado.GridSubContratosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if gridsubcontratos.Focused = true then
  begin
    if gridsubcontratos.datasource.DataSet.IsEmpty = false then
      if gridsubcontratos.DataSource.DataSet.RecordCount > 0 then
        UtGrid5.DbGridMouseUp(Sender, Button, Shift, X, Y);
  end;

end;

procedure TfrmGenerado.GridSubContratosTitleClick(Column: TColumn);
begin
  if gridsubcontratos.Focused = true then
  begin
    if gridsubcontratos.datasource.DataSet.IsEmpty = false then
      if gridsubcontratos.DataSource.DataSet.RecordCount > 0 then
        UtGrid5.DbGridTitleClick(Column);
  end;

end;

procedure TfrmGenerado.Grid_BitacoraDblClick(Sender: TObject);
begin
  if Bitacora.State <> dsInactive then
    if Bitacora.RecordCount > 0 then
       // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], global_convenio, Bitacora.FieldValues['dIdFecha'], '', frmGenerado, rDiario.OnGetValue )
end;

procedure TfrmGenerado.rDiarioGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
    Value := sDiarioDescripcionCorta;

  if CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
    Value := sDiarioComentario;

  if CompareText(VarName, 'sNewTexto') = 0 then
    Value := sDiarioTitulo;

  if CompareText(VarName, 'PERIODO') = 0 then
    Value := sDiarioPeriodo;


  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSuperIntendente
    else
      Value := sSuperIntendentePatio;

  if CompareText(VarName, 'SUPERVISOR') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSupervisor
    else
      Value := sSupervisorPatio;

  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSupervisorTierra
    else
      Value := sResidente;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sPuestoSuperIntendente
    else
      Value := sPuestoSuperIntendentePatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sPuestoSupervisor
    else
      Value := sPuestoSupervisorPatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sPuestoSupervisorTierra
    else
      Value := sPuestoResidente;

  if CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
    Value := mDescripcionOrden;
  if CompareText(VarName, 'PLATAFORMA') = 0 then
    Value := sPlataformaOrden;
  if CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
    Value := sJornadasSuspendidas;
  if CompareText(VarName, 'TURNO') = 0 then
    Value := sDescripcionTurno;

  if CompareText(VarName, 'REAL_ANTERIOR') = 0 then
    Value := dRealGlobalAnterior;
  if CompareText(VarName, 'REAL_ACTUAL') = 0 then
    Value := dRealGlobalActual;
  if CompareText(VarName, 'REAL_ACUMULADO') = 0 then
    Value := dRealGlobalAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
    Value := dProgramadoGlobalAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
    Value := dProgramadoGlobalActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
    Value := dProgramadoGlobalAcumulado;


  if CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
    Value := dRealOrdenAnterior;
  if CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
    Value := dRealOrdenActual;
  if CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
    Value := dRealOrdenAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
    Value := dProgramadoOrdenActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAcumulado;
end;

procedure TfrmGenerado.Grid_BitacoraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
         // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], global_convenio, Bitacora.FieldValues['dIdFecha'], '', frmGenerado, rDiario.OnGetValue )
end;

procedure TfrmGenerado.Grid_BitacoraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if grid_bitacora.Focused = true then
  begin
    if grid_bitacora.datasource.DataSet.IsEmpty = false then
      if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
        UtGrid2.dbGridMouseMoveCoord(x, y);
  end;
end;

procedure TfrmGenerado.Grid_BitacoraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if grid_bitacora.Focused = true then
  begin
    if grid_bitacora.datasource.DataSet.IsEmpty = false then
      if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
        UtGrid2.DbGridMouseUp(Sender, Button, Shift, X, Y);
  end;
end;

procedure TfrmGenerado.Grid_BitacoraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var
  sCampo: string;
begin
  sCampo := Field.FieldName;
  if chkAnexo.Checked then
    if sTipoOrden = 'ASC' then
    begin
      Bitacora.Active := False;
      Bitacora.SQL.Clear;
      Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
        't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b INNER JOIN tiposdemovimiento t ON ' +
        '(b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad ' +
        'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado DESC');
      Bitacora.Params.ParamByName('Contrato').DataType := ftString;
      Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
      Bitacora.Params.ParamByName('Actividad').DataType := ftString;
      Bitacora.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
      Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
      Bitacora.Params.ParamByName('Ordenado').Value := sCampo;
      Bitacora.Open;
      sTipoOrden := 'DESC'
    end
    else
    begin
      Bitacora.Active := False;
      Bitacora.SQL.Clear;
      Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
        't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b INNER JOIN tiposdemovimiento t ON ' +
        '(b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad ' +
        'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado ASC');
      Bitacora.Params.ParamByName('Contrato').DataType := ftString;
      Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
      Bitacora.Params.ParamByName('Actividad').DataType := ftString;
      Bitacora.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
      Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
      Bitacora.Params.ParamByName('Ordenado').Value := sCampo;
      Bitacora.Open;
      sTipoOrden := 'ASC'
    end
  else
    if sTipoOrden = 'ASC' then
    begin
      Bitacora.Active := False;
      Bitacora.SQL.Clear;
      Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
        't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b INNER JOIN tiposdemovimiento t ON ' +
        '(b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sNumeroActividad = :Actividad ' +
        'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado DESC');
      Bitacora.Params.ParamByName('Contrato').DataType := ftString;
      Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
      Bitacora.Params.ParamByName('Orden').DataType := ftString;
      Bitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      Bitacora.Params.ParamByName('Actividad').DataType := ftString;
      Bitacora.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
      Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
      Bitacora.Params.ParamByName('Ordenado').Value := sCampo;
      Bitacora.Open;
      sTipoOrden := 'DESC'
    end
    else
    begin
      Bitacora.Active := False;
      Bitacora.SQL.Clear;
      Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
        't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b INNER JOIN tiposdemovimiento t ON ' +
        '(b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sNumeroActividad = :Actividad ' +
        'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado ASC');
      Bitacora.Params.ParamByName('Contrato').DataType := ftString;
      Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
      Bitacora.Params.ParamByName('Orden').DataType := ftString;
      Bitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      Bitacora.Params.ParamByName('Actividad').DataType := ftString;
      Bitacora.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
      Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
      Bitacora.Params.ParamByName('Ordenado').Value := sCampo;
      Bitacora.Open;
      sTipoOrden := 'ASC'
    end
end;

procedure TfrmGenerado.Grid_BitacoraTitleClick(Column: TColumn);
begin
  if grid_bitacora.Focused = true then
  begin
    if grid_bitacora.datasource.DataSet.IsEmpty = false then
      if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
        UtGrid2.DbGridTitleClick(Column);
  end;
end;

procedure TfrmGenerado.Grid_EstimacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if grid_estimaciones.Focused = true then
  begin
    if grid_estimaciones.datasource.DataSet.IsEmpty = false then
      if grid_estimaciones.DataSource.DataSet.RecordCount > 0 then
        UtGrid4.dbGridMouseMoveCoord(x, y);
  end;
end;

procedure TfrmGenerado.Grid_EstimacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if grid_estimaciones.Focused = true then
  begin
    if grid_estimaciones.datasource.DataSet.IsEmpty = false then
      if grid_estimaciones.DataSource.DataSet.RecordCount > 0 then
        UtGrid4.DbGridMouseUp(Sender, Button, Shift, X, Y);
  end;
end;

procedure TfrmGenerado.Grid_EstimacionesTitleClick(Column: TColumn);
begin
  if grid_estimaciones.Focused = true then
  begin
    if grid_estimaciones.datasource.DataSet.IsEmpty = false then
      if grid_estimaciones.DataSource.DataSet.RecordCount > 0 then
        UtGrid4.DbGridTitleClick(Column);
  end;
end;

procedure TfrmGenerado.grid_GeneradoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var
  sCampo: string;
begin
  sCampo := Field.FieldName;
  if chkAnexo.Checked then
    if sTipoOrden = 'ASC' then
    begin
      Generado.Active := False;
      Generado.SQL.Clear;
      Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
        'where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
        'Order By :Ordenado DESC');
      Generado.Params.ParamByName('Contrato').DataType := ftString;
      Generado.Params.ParamByName('Contrato').Value := global_contrato;
      Generado.Params.ParamByName('Actividad').DataType := ftString;
      Generado.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Generado.Params.ParamByName('Fecha').DataType := ftDate;
      Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Generado.Params.ParamByName('Ordenado').DataType := ftString;
      Generado.Params.ParamByName('Ordenado').Value := sCampo;
      Generado.Open;
      sTipoOrden := 'DESC'
    end
    else
    begin
      Generado.Active := False;
      Generado.SQL.Clear;
      Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
        'where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
        'Order By :Ordenado ASC');
      Generado.Params.ParamByName('Contrato').DataType := ftString;
      Generado.Params.ParamByName('Contrato').Value := global_contrato;
      Generado.Params.ParamByName('Actividad').DataType := ftString;
      Generado.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Generado.Params.ParamByName('Fecha').DataType := ftDate;
      Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Generado.Params.ParamByName('Ordenado').DataType := ftString;
      Generado.Params.ParamByName('Ordenado').Value := sCampo;
      Generado.Open;
      sTipoOrden := 'ASC'
    end
  else
    if sTipoOrden = 'ASC' then
    begin
      Generado.Active := False;
      Generado.SQL.Clear;
      Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
        'where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
        'Order By :Ordenado DESC');
      Generado.Params.ParamByName('Contrato').DataType := ftString;
      Generado.Params.ParamByName('Contrato').Value := global_contrato;
      Generado.Params.ParamByName('Orden').DataType := ftString;
      Generado.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      Generado.Params.ParamByName('Actividad').DataType := ftString;
      Generado.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Generado.Params.ParamByName('Fecha').DataType := ftDate;
      Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Generado.Params.ParamByName('Ordenado').DataType := ftString;
      Generado.Params.ParamByName('Ordenado').Value := sCampo;
      Generado.Open;
      sTipoOrden := 'DESC'
    end
    else
    begin
      Generado.Active := False;
      Generado.SQL.Clear;
      Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
        'where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
        'Order By :Ordenado ASC');
      Generado.Params.ParamByName('Contrato').DataType := ftString;
      Generado.Params.ParamByName('Contrato').Value := global_contrato;
      Generado.Params.ParamByName('Orden').DataType := ftString;
      Generado.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      Generado.Params.ParamByName('Actividad').DataType := ftString;
      Generado.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Generado.Params.ParamByName('Fecha').DataType := ftDate;
      Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Generado.Params.ParamByName('Ordenado').DataType := ftString;
      Generado.Params.ParamByName('Ordenado').Value := sCampo;
      Generado.Open;
      sTipoOrden := 'ASC'
    end
end;


procedure TfrmGenerado.grid_GeneradoTitleClick(Column: TColumn);
begin
  if grid_generado.Focused = true then
  begin
    if grid_generado.datasource.DataSet.IsEmpty = false then
      if grid_generado.DataSource.DataSet.RecordCount > 0 then
        UtGrid3.DbGridTitleClick(Column);
  end;
end;

procedure TfrmGenerado.nmFichaTecnicaClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_rFichaTecnica.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_rFichaTecnica.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;
  try
    if gridActividades.DataSource.Dataset.isempty = false then
    begin
      if gridActividades.DataSource.DataSet.RecordCount > 0 then
      begin
        if tsNumeroActividad.Text <> '' then
          procFichaTecnica(global_contrato, global_convenio, tsNumeroActividad.Text, frmGenerado);
      end
      else
        showmessage('no existen partidas para generar ficha técnica ');
    end
    else
      showmessage('no existen partidas para generar ficha técnica ');
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_generado', 'Al imprimir ficha tecnica', 0);
    end;
  end;
end;

procedure TfrmGenerado.grid_GeneradoGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lEstima').AsString = 'No' then
    Background := clSilver;

  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString <> 'Autorizado' then
    Background := clGradientActiveCaption
end;

procedure TfrmGenerado.grid_GeneradoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if grid_generado.Focused = true then
  begin
    if grid_generado.datasource.DataSet.IsEmpty = false then
      if grid_generado.DataSource.DataSet.RecordCount > 0 then
        UtGrid3.dbGridMouseMoveCoord(x, y);
  end;
end;

procedure TfrmGenerado.grid_GeneradoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if grid_generado.Focused = true then
  begin
    if grid_generado.datasource.DataSet.IsEmpty = false then
      if grid_generado.DataSource.DataSet.RecordCount > 0 then
        UtGrid3.DbGridMouseUp(Sender, Button, Shift, X, Y);
  end;
end;

procedure TfrmGenerado.Grabar1Click(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('No concepto');

  cadenas.Add(tsnumeroactividad.Text);


  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos
  try

    if Generado.RecordCount > 0 then
    begin
      SaveImage.Title := 'Respaldar Imagen';
      SaveImage.FileName := Generado.FieldValues['sIsometrico'] + '-' + Generado.FieldValues['sPrefijo'];
      if SaveImage.Execute then
        bImagen.Picture.SaveToFile(SaveImage.FileName)
    end
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_generado', 'Al grabar imagen', 0);
    end;
  end;
end;

procedure TfrmGenerado.ActividadesxOrdenAfterScroll(DataSet: TDataSet);
begin
  if ActividadesxOrden.RecordCount > 0 then
  begin
    tdAcumuladoGenerado.Text := '0.00';
    tdAcumulado.Text := '0.00';
    tdTotalGenerado.Value := 0;
    tdTotalBitacora.Value := 0;
    QryIsometricos.Active := False;
    QryIsometricos.Params.ParamByName('Contrato').DataType := ftString;
    QryIsometricos.Params.ParamByName('Contrato').Value := global_Contrato;
    QryIsometricos.Params.ParamByName('Orden').DataType := ftString;
    QryIsometricos.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
    QryIsometricos.Params.ParamByName('Generador').DataType := ftString;
    QryIsometricos.Params.ParamByName('Generador').Value := '';
    QryIsometricos.Params.ParamByName('Isometrico').DataType := ftString;
    QryIsometricos.Params.ParamByName('Isometrico').Value := '';
    QryIsometricos.Params.ParamByName('Prefijo').DataType := ftString;
    QryIsometricos.Params.ParamByName('Prefijo').Value := '';
    QryIsometricos.Open;

    SubContratos.Active := False;
    SubContratos.Params.ParamByName('Contrato').DataType := ftString;
    SubContratos.Params.ParamByName('Contrato').Value := global_contrato;
    SubContratos.Params.ParamByName('orden').DataType := ftString;
    SubContratos.Params.ParamByName('orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
    SubContratos.Params.ParamByName('wbs').DataType := ftString;
    SubContratos.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
    SubContratos.Params.ParamByName('Actividad').DataType := ftString;
    SubContratos.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
    SubContratos.Open;


    tiRegistro.Value := 0;
    bImagen.picture := nil;

    if chkAnexo.Checked then
    begin
      Bitacora.Active := False;
      Bitacora.SQL.Clear;
      Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
        't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b ' +
        'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad ' +
        'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado');
      Bitacora.Params.ParamByName('Contrato').DataType := ftString;
      Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
      Bitacora.Params.ParamByName('Actividad').DataType := ftString;
      Bitacora.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
      Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
      Bitacora.Params.ParamByName('Ordenado').Value := 'dIdFecha';
      Bitacora.Open;

      Generado.Active := False;
      Generado.SQL.Clear;
      Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
        'where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
        'Order By e2.iConsecutivo, e.sIsometrico');
      Generado.Params.ParamByName('Contrato').DataType := ftString;
      Generado.Params.ParamByName('Contrato').Value := global_contrato;
      Generado.Params.ParamByName('Actividad').DataType := ftString;
      Generado.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Generado.Params.ParamByName('Fecha').DataType := ftDate;
      Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Generado.Open;

      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select sum(e.dCantidad) as dCantidad From estimacionxpartida e ' +
        'INNER JOIN estimaciones e1 ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e1.lStatus = "Autorizado") ' +
        'where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad And e1.dFechaFinal <= :Fecha And e.lEstima = "Si" ' +
        'Group By e.sWbs, e.sNumeroActividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
      connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        tdTotalGenerado.Value := connection.qryBusca.FieldValues['dCantidad'];

      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad From bitacoradeactividades Where sContrato = :Contrato ' +
        'And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
      connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        tdTotalBitacora.Value := connection.qryBusca.FieldValues['dCantidad'];
    end
    else
    begin
      Bitacora.Active := False;
      Bitacora.SQL.Clear;
      Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
        't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b INNER JOIN tiposdemovimiento t ON ' +
        '(b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad ' +
        'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado');
      Bitacora.Params.ParamByName('Contrato').DataType := ftString;
      Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
      Bitacora.Params.ParamByName('Orden').DataType := ftString;
      Bitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      Bitacora.Params.ParamByName('wbs').DataType := ftString;
      Bitacora.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
      Bitacora.Params.ParamByName('Actividad').DataType := ftString;
      Bitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
      Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
      Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
      Bitacora.Params.ParamByName('Ordenado').Value := 'dIdFecha';
      Bitacora.Open;

      Generado.Active := False;
      Generado.SQL.Clear;
      Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
        'where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sWbs = :wbs And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
        'Order By e2.iConsecutivo, e.sIsometrico');
      Generado.Params.ParamByName('Contrato').DataType := ftString;
      Generado.Params.ParamByName('Contrato').Value := global_contrato;
      Generado.Params.ParamByName('Orden').DataType := ftString;
      Generado.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      Generado.Params.ParamByName('wbs').DataType := ftString;
      Generado.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
      Generado.Params.ParamByName('Actividad').DataType := ftString;
      Generado.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
      Generado.Params.ParamByName('Fecha').DataType := ftDate;
      Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Generado.Open;

      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select sum(e.dCantidad) as dCantidad From estimacionxpartida e ' +
        'INNER JOIN estimaciones e1 ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e1.lStatus = "Autorizado") ' +
        'where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sWbs = :Wbs And e.sNumeroActividad = :Actividad And e1.dFechaFinal <= :Fecha And e.lEstima = "Si" ' +
        'Group By e.sNumeroActividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
      connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
      connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        tdTotalGenerado.Value := connection.qryBusca.FieldValues['dCantidad'];

      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad From bitacoradeactividades Where sContrato = :Contrato ' +
        'And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
      connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
      connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        tdTotalBitacora.Value := connection.qryBusca.FieldValues['dCantidad'];
    end;

    if tdTotalBitacora.Value > tdTotalGenerado.Value then
    begin
      LabelComparativo.Caption := 'Por Generarar';
      tdPendiente.Value := tdTotalBitacora.Value - tdTotalGenerado.Value
    end
    else
      if tdTotalBitacora.Value > tdTotalGenerado.Value then
      begin
        LabelComparativo.Caption := 'Por Reportar';
        tdPendiente.Value := tdTotalGenerado.Value - tdTotalBitacora.Value
      end
      else
      begin
        LabelComparativo.Caption := '=';
        tdPendiente.Value := 0
      end;
  end;
end;

procedure TfrmGenerado.tdCantidadAnexoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdInstalado.SetFocus
end;

procedure TfrmGenerado.tdExcedenteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsnumeroactividad.SetFocus
end;

procedure TfrmGenerado.tdIdFechaChange(Sender: TObject);
begin
  try
    if ActividadesxOrden.Active then
      if ActividadesxOrden.RecordCount > 0 then
      begin
        tdAcumuladoGenerado.Text := '0.00';
        tdAcumulado.Text := '0.00';
        tdTotalGenerado.Value := 0;
        tdTotalBitacora.Value := 0;

        QryIsometricos.Active := False;
        QryIsometricos.Params.ParamByName('Contrato').DataType := ftString;
        QryIsometricos.Params.ParamByName('Contrato').Value := global_Contrato;
        QryIsometricos.Params.ParamByName('Orden').DataType := ftString;
        QryIsometricos.Params.ParamByName('Orden').Value := '';
        QryIsometricos.Params.ParamByName('Generador').DataType := ftString;
        QryIsometricos.Params.ParamByName('Generador').Value := '';
        QryIsometricos.Params.ParamByName('Isometrico').DataType := ftString;
        QryIsometricos.Params.ParamByName('Isometrico').Value := '';
        QryIsometricos.Params.ParamByName('Prefijo').DataType := ftString;
        QryIsometricos.Params.ParamByName('Prefijo').Value := '';
        QryIsometricos.Open;
        tiRegistro.Value := 0;
        bImagen.picture := nil;
        if chkAnexo.Checked then
        begin
          Bitacora.Active := False;
          Bitacora.SQL.Clear;
          Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
            't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b ' +
            'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
            'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
            'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
            'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad ' +
            'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado');
          Bitacora.Params.ParamByName('Contrato').DataType := ftString;
          Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
          Bitacora.Params.ParamByName('Actividad').DataType := ftString;
          Bitacora.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
          Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
          Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
          Bitacora.Params.ParamByName('Ordenado').Value := 'dIdFecha';
          Bitacora.Open;

          Generado.Active := False;
          Generado.SQL.Clear;
          Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
            'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
            'where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
            'Order By e2.iConsecutivo, e.sIsometrico');
          Generado.Params.ParamByName('Contrato').DataType := ftString;
          Generado.Params.ParamByName('Contrato').Value := global_contrato;
          Generado.Params.ParamByName('Actividad').DataType := ftString;
          Generado.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
          Generado.Params.ParamByName('Fecha').DataType := ftDate;
          Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          Generado.Open;

          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('Select sum(e.dCantidad) as dCantidad From estimacionxpartida e ' +
            'INNER JOIN estimaciones e1 ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e1.lStatus = "Autorizado") ' +
            'where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad And e1.dFechaFinal <= :Fecha And e.lEstima = "Si" ' +
            'Group By e.sWbs, e.sNumeroActividad');
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
          connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
          connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.qryBusca.Open;
          if connection.qryBusca.RecordCount > 0 then
            tdTotalGenerado.Value := connection.qryBusca.FieldValues['dCantidad'];

          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad From bitacoradeactividades Where sContrato = :Contrato ' +
            'And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
          connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
          connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.qryBusca.Open;
          if connection.qryBusca.RecordCount > 0 then
            tdTotalBitacora.Value := connection.qryBusca.FieldValues['dCantidad'];
        end
        else
        begin
          Bitacora.Active := False;
          Bitacora.SQL.Clear;
          Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
            't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b INNER JOIN tiposdemovimiento t ON ' +
            '(b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
            'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
            'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
            'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad ' +
            'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado');
          Bitacora.Params.ParamByName('Contrato').DataType := ftString;
          Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
          Bitacora.Params.ParamByName('Orden').DataType := ftString;
          Bitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
          Bitacora.Params.ParamByName('wbs').DataType := ftString;
          Bitacora.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
          Bitacora.Params.ParamByName('Actividad').DataType := ftString;
          Bitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
          Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
          Bitacora.Params.ParamByName('Ordenado').Value := 'dIdFecha';
          Bitacora.Open;

          Generado.Active := False;
          Generado.SQL.Clear;
          Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
            'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
            'where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sWbs = :wbs And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
            'Order By e2.iConsecutivo, e.sIsometrico');
          Generado.Params.ParamByName('Contrato').DataType := ftString;
          Generado.Params.ParamByName('Contrato').Value := global_contrato;
          Generado.Params.ParamByName('Orden').DataType := ftString;
          Generado.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
          Generado.Params.ParamByName('wbs').DataType := ftString;
          Generado.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
          Generado.Params.ParamByName('Actividad').DataType := ftString;
          Generado.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          Generado.Params.ParamByName('Fecha').DataType := ftDate;
          Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          Generado.Open;

          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('Select sum(e.dCantidad) as dCantidad From estimacionxpartida e ' +
            'INNER JOIN estimaciones e1 ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e1.lStatus = "Autorizado") ' +
            'where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sWbs = :Wbs And e.sNumeroActividad = :Actividad And e1.dFechaFinal <= :Fecha And e.lEstima = "Si" ' +
            'Group By e.sNumeroActividad');
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
          connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
          connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.qryBusca.Open;
          if connection.qryBusca.RecordCount > 0 then
            tdTotalGenerado.Value := connection.qryBusca.FieldValues['dCantidad'];

          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad From bitacoradeactividades Where sContrato = :Contrato ' +
            'And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
          connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
          connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.qryBusca.Open;
          if connection.qryBusca.RecordCount > 0 then
            tdTotalBitacora.Value := connection.qryBusca.FieldValues['dCantidad'];
        end;

        if tdTotalBitacora.Value > tdTotalGenerado.Value then
        begin
          LabelComparativo.Caption := 'Por Generarar';
          tdPendiente.Value := tdTotalBitacora.Value - tdTotalGenerado.Value
        end
        else
          if tdTotalBitacora.Value > tdTotalGenerado.Value then
          begin
            LabelComparativo.Caption := 'Por Reportar';
            tdPendiente.Value := tdTotalGenerado.Value - tdTotalBitacora.Value
          end
          else
          begin
            LabelComparativo.Caption := '=';
            tdPendiente.Value := 0
          end;
      end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_generado', 'Al seleccionar fecha de calculo', 0);
    end;
  end;
end;

procedure TfrmGenerado.ActividadesxOrdenCalcFields(DataSet: TDataSet);
begin
  if ActividadesxOrden.FieldValues['dCantidad'] >= ActividadesxOrden.FieldValues['dInstalado'] then
    ActividadesxOrdendPendiente.Value := ActividadesxOrden.FieldValues['dCantidad'] - ActividadesxOrden.FieldValues['dInstalado']
  else
    ActividadesxOrdendPendiente.Value := 0;
  ActividadesxOrdendInstaladoTotal.Value := ActividadesxOrden.FieldValues['dExcedente'] + ActividadesxOrden.FieldValues['dInstalado'];

  connection.QryBusca2.Active := False;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select mDescripcion from actividadesxorden Where sContrato = :contrato and sNumeroOrden = :orden and sIdConvenio = :convenio and sWbs = :wbs and sTipoActividad = "Paquete"');
  connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('contrato').Value := global_contrato;
  connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('convenio').Value := global_convenio;
  connection.QryBusca2.Params.ParamByName('orden').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
  connection.QryBusca2.Params.ParamByName('wbs').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbsAnterior'];
  connection.QryBusca2.Open;
  if connection.QryBusca2.RecordCount > 0 then
    ActividadesxOrdensDescripcion.Text := connection.QryBusca2.FieldValues['mDescripcion'];
end;

procedure TfrmGenerado.QryIsometricosAfterScroll(DataSet: TDataSet);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  tiRegistro.Value := QryIsometricos.RecNo;
  bImagen.Picture := nil;
  if QryIsometricos.RecordCount > 0 then
  begin
    BlobField := QryIsometricos.FieldByName('bIsometrico');
    BS := QryIsometricos.CreateBlobStream(BlobField, bmRead);
    if bs.Size > 1 then
    begin
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          bImagen.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end
    end
  end
end;

procedure TfrmGenerado.qryPartidasDelAnexoAfterScroll(DataSet: TDataSet);
begin
  try
    QryIsometricos.Active := False;
    QryIsometricos.Params.ParamByName('Contrato').DataType := ftString;
    QryIsometricos.Params.ParamByName('Contrato').Value := global_Contrato;
    QryIsometricos.Params.ParamByName('Orden').DataType := ftString;
    QryIsometricos.Params.ParamByName('Orden').Value := '';
    QryIsometricos.Params.ParamByName('Generador').DataType := ftString;
    QryIsometricos.Params.ParamByName('Generador').Value := '';
    QryIsometricos.Params.ParamByName('Isometrico').DataType := ftString;
    QryIsometricos.Params.ParamByName('Isometrico').Value := '';
    QryIsometricos.Params.ParamByName('Prefijo').DataType := ftString;
    QryIsometricos.Params.ParamByName('Prefijo').Value := '';
    QryIsometricos.Open;
    tiRegistro.Value := 0;
    bImagen.picture := nil;

    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Select sWbs, sNumeroActividad, mDescripcion, dCantidadAnexo, sMedida, dVentaMN, dPonderado, dInstalado, dExcedente from actividadesxanexo ' +
      'Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroActividad = :actividad and sWbs=:wbs and sTipoActividad = "Actividad"');
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
    connection.QryBusca.Params.ParamByName('convenio').DataType := ftString;
    connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio;
    connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
    connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value := qryPartidasDelAnexo.FieldByName('sWbs').AsString;
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
    begin
      global_partida := tsNumeroActividad.Text;
      tdCantidadAnexo.Value := connection.QryBusca.FieldValues['dCantidadAnexo'];
      tdInstalado.Value := connection.QryBusca.FieldValues['dInstalado'];
      tdPendiente.Value := connection.QryBusca.FieldValues['dCantidadAnexo'] - connection.QryBusca.FieldValues['dInstalado'];
      tdExcedente.Value := connection.QryBusca.FieldValues['dExcedente'];
      tsWbs.Text := connection.QryBusca.FieldValues['sWbs'];
      tdVentaMN.Value := connection.QryBusca.FieldValues['dVentaMN'];
      tsMedida.Text := connection.QryBusca.FieldValues['sMedida'];
      tdPonderado.Value := connection.QryBusca.FieldValues['dPonderado'];
      frmGenerado.Hint := connection.QryBusca.FieldValues['mDescripcion'];

      frmGenerado.Caption := 'Volumenes Estimados de la Partida [' + tsNumeroActividad.Text + ']';

      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
      Connection.QryBusca.Open;
      if Connection.QryBusca.RecordCount > 0 then
        imgNotas.Visible := True;

      AnexoConvenio.Active := False;
      AnexoConvenio.Params.ParamByName('Contrato').DataType := ftString;
      AnexoConvenio.Params.ParamByName('Contrato').Value := global_contrato;
      AnexoConvenio.Params.ParamByName('Actividad').DataType := ftString;
      AnexoConvenio.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      AnexoConvenio.Params.ParamByName('wbs').DataType := ftString;
      AnexoConvenio.Params.ParamByName('wbs').Value := qryPartidasDelAnexo.FieldByName('sWbs').AsString;
      AnexoConvenio.Open;

      Estimaciones.Active := False;
      Estimaciones.Params.ParamByName('Contrato').DataType := ftString;
      Estimaciones.Params.ParamByName('Contrato').Value := global_contrato;
      Estimaciones.Params.ParamByName('Actividad').DataType := ftString;
      Estimaciones.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Estimaciones.Open;

      tdAcumuladoGenerado.Text := '0.00';
      tdAcumulado.Text := '0.00';
      tdTotalBitacora.Value := 0;
      tdTotalGenerado.Value := 0;

      ActividadesxOrden.Active := False;
      ActividadesxOrden.Params.ParamByName('contrato').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato;
      ActividadesxOrden.Params.ParamByName('convenio').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio;
      ActividadesxOrden.Params.ParamByName('actividad').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
      ActividadesxOrden.Params.ParamByName('wbsContrato').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('wbsContrato').Value := qryPartidasDelAnexo.FieldByName('sWbs').AsString;      
      ActividadesxOrden.Open;

      if tdTotalBitacora.Value > tdTotalGenerado.Value then
      begin
        LabelComparativo.Caption := 'Por Generarar';
        tdPendiente.Value := tdTotalBitacora.Value - tdTotalGenerado.Value
      end
      else
        if tdTotalBitacora.Value > tdTotalGenerado.Value then
        begin
          LabelComparativo.Caption := 'Por Reportar';
          tdPendiente.Value := tdTotalGenerado.Value - tdTotalBitacora.Value
        end
        else
        begin
          LabelComparativo.Caption := '=';
          tdPendiente.Value := 0
        end
    end
    else
    begin
      global_partida := '';
      tdCantidadAnexo.Value := 0;
      tdInstalado.Value := 0;
      tdPendiente.Value := 0;
      tdExcedente.Value := 0;
      tsWbs.Text := '';
      tdVentaMN.Value := 0;
      tsMedida.Text := '';
      tdPonderado.Value := 0;
      frmGenerado.Hint := '';

      frmGenerado.Caption := 'Compartivo Cantidad a Instalar Vs Generadores Vs Reportes Diarios';

      imgNotas.Visible := False;

      ActividadesxOrden.Active := False;
      ActividadesxOrden.Params.ParamByName('contrato').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato;
      ActividadesxOrden.Params.ParamByName('convenio').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio;
      ActividadesxOrden.Params.ParamByName('actividad').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('actividad').Value := '';
      ActividadesxOrden.Params.ParamByName('wbsContrato').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('wbsContrato').Value := '';      
      ActividadesxOrden.Open;


      AnexoConvenio.Active := False;
      AnexoConvenio.Params.ParamByName('Contrato').DataType := ftString;
      AnexoConvenio.Params.ParamByName('Contrato').Value := global_contrato;
      AnexoConvenio.Params.ParamByName('Actividad').DataType := ftString;
      AnexoConvenio.Params.ParamByName('Actividad').Value := '';
      AnexoConvenio.Open;

      Estimaciones.Active := False;
      Estimaciones.Params.ParamByName('Contrato').DataType := ftString;
      Estimaciones.Params.ParamByName('Contrato').Value := global_contrato;
      Estimaciones.Params.ParamByName('Actividad').DataType := ftString;
      Estimaciones.Params.ParamByName('Actividad').Value := '';
      Estimaciones.Open;

      Bitacora.Active := False;
      Bitacora.SQL.Clear;
      Bitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.sIdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico, ' +
        't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripcion as sDescripcionTurno From bitacoradeactividades b INNER JOIN tiposdemovimiento t ON ' +
        '(b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Notas" And t.sClasificacion <> "Tiempo Muerto") ' +
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad ' +
        'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado');
      Bitacora.Params.ParamByName('Contrato').DataType := ftString;
      Bitacora.Params.ParamByName('Contrato').Value := '';
      Bitacora.Params.ParamByName('Actividad').DataType := ftString;
      Bitacora.Params.ParamByName('Actividad').Value := '';
      Bitacora.Params.ParamByName('Fecha').DataType := ftDate;
      Bitacora.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Bitacora.Params.ParamByName('Ordenado').DataType := ftString;
      Bitacora.Params.ParamByName('Ordenado').Value := 'dIdFecha';
      Bitacora.Open;

      Generado.Active := False;
      Generado.SQL.Clear;
      Generado.SQL.Add('Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  ' +
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
        'where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad And e2.dFechaFinal <= :Fecha ' +
        'Order By e2.iConsecutivo, e.sIsometrico');
      Generado.Params.ParamByName('Contrato').DataType := ftString;
      Generado.Params.ParamByName('Contrato').Value := '';
      Generado.Params.ParamByName('Actividad').DataType := ftString;
      Generado.Params.ParamByName('Actividad').Value := '';
      Generado.Params.ParamByName('Fecha').DataType := ftDate;
      Generado.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      Generado.Open;

      tdTotalGenerado.Value := 0;
      tdTotalBitacora.Value := 0;
      LabelComparativo.Caption := '=';
      tdPendiente.Value := 0

    end
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_generado', 'Al seleccionar concepto', 0);
    end;
  end;

end;

procedure TfrmGenerado.btnNextClick(Sender: TObject);
begin
  btnPrevious.Enabled := True;
  if not QryIsometricos.eof then
    QryIsometricos.Next;
  if QryIsometricos.Eof then
    btnNext.Enabled := False;
end;

procedure TfrmGenerado.btnPreviousClick(Sender: TObject);
begin
  btnNext.Enabled := True;
  if not QryIsometricos.Bof then
    QryIsometricos.Prior;
  if QryIsometricos.Bof then
    btnPrevious.Enabled := False;
end;

procedure TfrmGenerado.formatoEncabezado;
begin
  Excel.Selection.MergeCells := False;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

end.

