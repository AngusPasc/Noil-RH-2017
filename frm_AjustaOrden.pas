unit frm_AjustaOrden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, global, frm_barra, db, Grids, DBGrids, frm_Connection, StdCtrls,
  DBCtrls, ComCtrls, Mask, Utilerias, masUtilerias, StrUtils, Menus, Buttons,
  ExtCtrls, frxClass, frxDBSet, jpeg, RXDBCtrl, DateUtils,
  math, ImgList, RxMemDS, ZAbstractRODataset, ZDataset,
  Gauges, ExcelXP, OleServer, Newpanel, RxGIF, Excel2000, rxToolEdit,
  rxCurrEdit, rxSpeedbar, udbgrid, UnitExcepciones, UFunctionsGHH, UnitValidacion;
type
  TfrmAjustaOrden = class(TForm)
    dsAnexoDT: TfrxDBDataset;
    SpeedBar1: TSpeedBar;
    SpeedbarSection2: TSpeedbarSection;
    btnValida: TSpeedItem;
    btnAdiciona: TSpeedItem;
    Label2: TLabel;
    rxMensual: TRxDBGrid;
    tdTotal: TCurrencyEdit;
    Label3: TLabel;
    tdImporte: TCurrencyEdit;
    MemoryAnexo: TRxMemoryData;
    MemoryAnexoAnno: TIntegerField;
    MemoryAnexoMes: TStringField;
    MemoryAnexoCantidad: TFloatField;
    MemoryAnexoiMes: TIntegerField;
    ds_Memory: TDataSource;
    btnDistribuye: TSpeedItem;
    MemoryAnexoMonto: TCurrencyField;
    Label1: TLabel;
    tdImportePartida: TCurrencyEdit;
    Panel: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tsMes: TComboBox;
    UpAnno: TUpDown;
    tdCantidad: TCurrencyEdit;
    tdMonto: TCurrencyEdit;
    tiAnno: TEdit;
    btnAdicionar: TBitBtn;
    btnSalir: TBitBtn;
    btnAnexoDT: TSpeedItem;
    btnAnexoDE: TSpeedItem;
    chkDT: TCheckBox;
    chkDE: TCheckBox;
    MemoryAnexoMontoDLL: TCurrencyField;
    Label8: TLabel;
    tdMontoDLL: TCurrencyEdit;
    Label9: TLabel;
    tdImportePartidaDLL: TCurrencyEdit;
    Label10: TLabel;
    tdImporteDLL: TCurrencyEdit;
    grid_actividades: TRxDBGrid;
    ds_actividadesxanexo: TDataSource;
    ActividadesxAnexo: TZReadOnlyQuery;
    ActividadesxAnexoiNivel: TIntegerField;
    ActividadesxAnexosWbs: TStringField;
    ActividadesxAnexosNumeroActividad: TStringField;
    ActividadesxAnexodFechaInicio: TDateField;
    ActividadesxAnexodFechaFinal: TDateField;
    ActividadesxAnexodCantidadAnexo: TFloatField;
    ActividadesxAnexosMedida: TStringField;
    ActividadesxAnexodVentaMN: TFloatField;
    ActividadesxAnexodPonderado: TFloatField;
    ActividadesxAnexodVentaDLL: TFloatField;
    ActividadesxAnexomDescripcion: TMemoField;
    ActividadesxAnexosTipoActividad: TStringField;
    ActividadesxAnexoiColor: TIntegerField;
    ActividadesxAnexosWbsSpace: TStringField;
    AnexoDT: TZReadOnlyQuery;
    SpeedItem1: TSpeedItem;
    Progress: TGauge;
    Label11: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    ds_ordenesdetrabajo: TDataSource;
    ordenesdetrabajo: TZReadOnlyQuery;
    ordenesdetrabajosNumeroOrden: TStringField;
    ordenesdetrabajosDescripcionCorta: TStringField;
    ordenesdetrabajosIdTipoOrden: TStringField;
    grImportar: tNewGroupBox;
    Label12: TLabel;
    btnResumido: TBitBtn;
    tsArchivo: TEdit;
    btnFiles: TBitBtn;
    OpenXLS: TOpenDialog;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelWorksheet1: TExcelWorksheet;
    SpeedBar2: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    sRefresh: TSpeedItem;
    sPrograma: TSpeedItem;
    sImportar2: TSpeedItem;
    rOpc1: TRadioButton;
    r: TRadioButton;
    btnAcumulados: TSpeedItem;
    btnEliminar: TSpeedItem;
    frxAnexo: TfrxReport;
    btnDistribucionMensual: TSpeedItem;
    SpeedItem2: TSpeedItem;
    function lExisteMedida(sMedida: string): Boolean;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MemoryAnexoAfterInsert(DataSet: TDataSet);
    procedure ActividadesxAnexoAfterScroll(DataSet: TDataSet);
    procedure btnValidaClick(Sender: TObject);
    procedure btnDistribuyeClick(Sender: TObject);
    procedure PanelExit(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure PanelEnter(Sender: TObject);
    procedure rxMensualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalirClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure tiAnnoEnter(Sender: TObject);
    procedure tiAnnoExit(Sender: TObject);
    procedure tiAnnoKeyPress(Sender: TObject; var Key: Char);
    procedure tsMesEnter(Sender: TObject);
    procedure tsMesExit(Sender: TObject);
    procedure tsMesKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoEnter(Sender: TObject);
    procedure tdMontoExit(Sender: TObject);
    procedure tdMontoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAnexoDTClick(Sender: TObject);
    procedure btnAnexoDEClick(Sender: TObject);
    procedure grid_actividadesKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoDLLEnter(Sender: TObject);
    procedure tdMontoDLLExit(Sender: TObject);
    procedure grid_actividadesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ActividadesxAnexoCalcFields(DataSet: TDataSet);
    procedure SpeedItem1Click(Sender: TObject);
    procedure procActualizaPonderado(sContrato, sConvenio, sNumeroOrden, sWbs, sActividad: string; dPonderado: currency);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure btnFilesClick(Sender: TObject);
    procedure btnResumidoClick(Sender: TObject);
    procedure grImportarExit(Sender: TObject);
    procedure sRefreshClick(Sender: TObject);
    procedure sProgramaClick(Sender: TObject);
    procedure sImportar2Click(Sender: TObject);
    procedure grImportarEnter(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnAcumuladosClick(Sender: TObject);
    procedure btnDistribucionMensualClick(Sender: TObject);
    procedure grid_actividadesTitleClick(Column: TColumn);
    procedure grid_actividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_actividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tdImportePartidaKeyPress(Sender: TObject; var Key: Char);
    procedure tdImportePartidaDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdTotalKeyPress(Sender: TObject; var Key: Char);
    procedure tdImporteKeyPress(Sender: TObject; var Key: Char);
    procedure tdImporteDLLKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedItem2Click(Sender: TObject);
    procedure tdCantidadChange(Sender: TObject);
    procedure tdMontoChange(Sender: TObject);
    procedure tdMontoDLLChange(Sender: TObject);

  private
    sMenuP: string;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmAjustaOrden: TfrmAjustaOrden;
  Months: array[1..12] of string;
  lInvalido: Boolean;
  lProcesoDistribucion: Boolean;
  sOpcion: string;
  utgrid: ticdbgrid;

implementation

{$R *.dfm}

procedure TfrmAjustaOrden.FormShow(Sender: TObject);
begin
  sMenuP := stMenu;
  UtGrid := TicdbGrid.create(grid_actividades);

  grImportar.Visible := False;
  Months[1] := 'ENERO';
  Months[2] := 'FEBRERO';
  Months[3] := 'MARZO';
  Months[4] := 'ABRIL';
  Months[5] := 'MAYO';
  Months[6] := 'JUNIO';
  Months[7] := 'JULIO';
  Months[8] := 'AGOSTO';
  Months[9] := 'SEPTIEMBRE';
  Months[10] := 'OCTUBRE';
  Months[11] := 'NOVIEMBRE';
  Months[12] := 'DICIEMBRE';

  lProcesoDistribucion := False;

  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato;
  OrdenesdeTrabajo.Open;

  if OrdenesdeTrabajo.RecordCount > 0 then
    tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];

  ActividadesxAnexo.Active := False;
  ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString;
  ActividadesxAnexo.Params.ParamByName('Contrato').Value := Global_Contrato;
  ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString;
  ActividadesxAnexo.Params.ParamByName('Convenio').Value := Global_Convenio;
  ActividadesxAnexo.Params.ParamByName('orden').DataType := ftString;
  ActividadesxAnexo.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
  begin
    ActividadesxAnexo.ParamByName('tam').AsInteger := Global_TamOrden;
    ActividadesxAnexo.ParamByName('separador').AsString := Global_SepOrden;
  end;
  ActividadesxAnexo.Open;
  tsNumeroOrden.SetFocus

end;

procedure TfrmAjustaOrden.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.destroy;
  action := cafree;
end;

procedure TfrmAjustaOrden.MemoryAnexoAfterInsert(DataSet: TDataSet);
begin
  if lInvalido then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
      MemoryAnexo.Cancel;
      Panel.Visible := True;
      Panel.SetFocus
    end
end;

procedure TfrmAjustaOrden.ActividadesxAnexoAfterScroll(DataSet: TDataSet);
begin
  grid_actividades.Hint := '';
  if ActividadesxAnexo.RecordCount > 0 then
  begin
    if lProcesoDistribucion = False then
    begin
      grid_actividades.Hint := ActividadesxAnexo.FieldValues['mDescripcion'];
      tdImportePartida.Value := ActividadesxAnexo.FieldValues['dCantidadAnexo'] * ActividadesxAnexo.FieldValues['dVentaMN'];
      tdImportePartidaDLL.Value := ActividadesxAnexo.FieldValues['dCantidadAnexo'] * ActividadesxAnexo.FieldValues['dVentaDLL'];

      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Sum(dt) as Cantidad, Sum(DEmn) as Monto, Sum(DEdll) as MontoDLL ' +
        'From ordenes_programamensual Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad ' +
        'Group By sWbs, sNumeroActividad');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
      Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
      Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
      begin
        tdTotal.Value := Connection.qryBusca.FieldValues['Cantidad'];
        tdImporte.Value := Connection.qryBusca.FieldValues['Monto'];
        tdImporteDLL.Value := Connection.qryBusca.FieldValues['MontoDLL'];
      end
      else
      begin
        tdtotal.Value := 0;
        tdImporte.Value := 0;
        tdImporteDLL.Value := 0;
      end;
    end;

    if MemoryAnexo.RecordCount > 0 then
      MemoryAnexo.EmptyTable;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Year(dIdFecha) as Anno, Month(dIdFecha) as Mes, DT as Cantidad, DEmn as Monto, DEdll as MontoDLL ' +
      'From ordenes_programamensual Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By ' +
      'sWbs, sNumeroActividad, Year(dIdFecha), Month(dIdFecha)');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    Connection.qryBusca.Open;
    lInvalido := False;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      Connection.qryBusca.First;
      while not Connection.qryBusca.Eof do
      begin
        MemoryAnexo.Append;
        MemoryAnexo.FieldValues['Anno'] := Connection.qryBusca.FieldValues['Anno'];
        MemoryAnexo.FieldValues['Mes'] := Months[Connection.qryBusca.FieldByName('Mes').AsInteger];
        MemoryAnexo.FieldValues['iMes'] := Connection.qryBusca.FieldValues['Mes'];
        MemoryAnexo.FieldValues['Cantidad'] := Connection.qryBusca.FieldValues['Cantidad'];
        MemoryAnexo.FieldValues['Monto'] := Connection.qryBusca.FieldValues['Monto'];
        MemoryAnexo.FieldValues['MontoDLL'] := Connection.qryBusca.FieldValues['MontoDLL'];
        MemoryAnexo.Post;
        Connection.qryBusca.Next
      end
    end;
    lInvalido := True;
  end
end;

procedure TfrmAjustaOrden.btnValidaClick(Sender: TObject);
var
  dImporteMN: Double;
  dAnexomn: Double;
  dImporteDLL,
    dAnexodll: Double;
begin
  try
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select a.sWbs, a.dCantidad, a.dVentaMN, a.dVentaDLL, Sum(m.DT) as DT, Sum(m.DEmn) as dDEmn, Sum(m.DEdll) as dDEdll ' +
      'From actividadesxorden a LEFT JOIN ordenes_programamensual m ' +
      'ON (a.sContrato = m.sContrato And a.sIdConvenio = m.sIdConvenio And a.sNumeroOrden = m.sNumeroOrden And a.sWbs = m.sWbs And a.sNumeroActividad = m.sNumeroActividad) ' +
      'Where a.sContrato = :contrato And a.sIdConvenio = :Convenio And ' +
      'a.sNumeroOrden = :Orden And a.dCantidad > 0 And a.sTipoActividad = "Actividad" ' +
      'Group By a.sWbs Order By a.iItemOrden');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount >= 0 then
    begin
      while not Connection.qryBusca.Eof do
      begin
        if chkDT.Checked = True then
          if Connection.qryBusca.fieldByName('DT').IsNull and Connection.qryBusca.FieldValues['dCantidad'] > 0 then
            MessageDlg('Existe Diferencia entre la cantidad a instalar y el Programa Mensual en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0)
          else
            if (Connection.qryBusca.FieldValues['dCantidad'] > 0) and (Connection.qryBusca.FieldValues['dCantidad'] <> Connection.qryBusca.FieldValues['DT']) then
              MessageDlg('Existe Diferencia entre la cantidad anexo y el Anexo DT en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0);

        if ChkDE.Checked = True then
        begin
          try
            dImporteMN := RoundTo(Connection.qryBusca.FieldValues['dCantidad'] * Connection.qryBusca.FieldValues['dVentaMN'], -2);
            if (Connection.qryBusca.FieldByName('dDEmn').IsNull) and (dImporteMN > 0) then
              MessageDlg('Existe Diferencia entre el importe total y el Programa Mensual con Importes en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0)
            else
            begin
              dAnexomn := RoundTo(Connection.qryBusca.FieldValues['dDEmn'], -2);
              if dImporteMN <> dAnexoMN then
                MessageDlg('Existe Diferencia entre el total en MN y el Anexo DE M.N. en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0);
            end;

            dImporteDLL := RoundTo(Connection.qryBusca.FieldValues['dCantidad'] * Connection.qryBusca.FieldValues['dVentaDLL'], -2);
            if (Connection.qryBusca.FieldByName('dDEdll').IsNull) and (dImporteDLL > 0) then
              MessageDlg('Existe Diferencia entre el importe total y el Programa Mensual con importes en moneda extranjera en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0)
            else
            begin
              dAnexodll := RoundTo(Connection.qryBusca.FieldValues['dDEdll'], -2);
              if dImporteDLL <> dAnexoDLL then
                MessageDlg('Existe Diferencia entre el importe total y el Programa Mensual con importes moneda extranjera en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0);
            end
          except
            MessageDlg('Error en la partida No. ' + Connection.qryBusca.FieldByName('sWbs').AsString, mtInformation, [mbOk], 0);
          end
        end;
        Connection.qryBusca.Next
      end
    end;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select a.sWbs, a.dCantidad, Sum(m.dCantidad) as DT From actividadesxorden a LEFT JOIN distribuciondeactividades m ' +
      'ON (a.sContrato = m.sContrato And a.sIdConvenio = m.sIdConvenio And a.sNumeroOrden = m.sNumeroOrden And a.sWbs = m.sWbs And a.sNumeroActividad = m.sNumeroActividad) ' +
      'Where a.sContrato = :contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden And a.sTipoActividad = "Actividad" Group By a.sWbs Order By a.iItemOrden');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount >= 0 then
    begin
      if chkDT.Checked = True then
        while not Connection.qryBusca.Eof do
        begin
          if Connection.qryBusca.FieldByName('DT').IsNull and Connection.qryBusca.FieldValues['dCantidad'] > 0 then
            MessageDlg('Existe Diferencia entre la cantidad anexo y la distribucion de la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0)
          else
            if (Connection.qryBusca.FieldValues['dCantidad'] > 0) and (Connection.qryBusca.FieldValues['dCantidad'] <> Connection.qryBusca.FieldValues['DT']) then
              MessageDlg('Existe Diferencia entre la cantidad anexo y la distribucion de la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0);
          Connection.qryBusca.Next
        end
    end;
    MessageDlg('Proceso Terminado con Exito !!', mtInformation, [mbOk], 0);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al validar', 0);
    end;
  end;
end;

procedure TfrmAjustaOrden.btnDistribucionMensualClick(Sender: TObject);
var
  qryFecha: TZReadOnlyQuery;
  qryActividades: TZReadOnlyQuery;
  iMi, iMf, iAi, iAf: Integer;
  dTotalMeses: Double;
  sMi, sMf, sAi, sAf: string;
  Pi, Pf: Double;
  sDT, sDEmn, sDEdll: string;
  sdCantidad, sdVentaMN, sdVentaDLL: string;
begin
  try
    qryFecha := TZReadOnlyQuery.Create(Self);
    qryFecha.Connection := connection.zConnection;
    qryActividades := TZReadOnlyQuery.Create(Self);
    qryActividades.Connection := connection.zConnection;
  {1. obtener las actividades de la orden}
    qryActividades.Active := False;
    qryActividades.SQL.Clear;
    qryActividades.SQL.Add(
      ' select ' +
      '  sNumeroActividad, ' +
      '  sWbs, ' +
      '  dCantidad, ' +
      '  dFechaInicio, ' +
      '  dFechaFinal, ' +
      '  (dVentaMN*dCantidad) as dVentaMN, ' +
      '  (dVentaDLL*dCantidad)  as dVentaDLL' +
      ' from actividadesxorden ' +
      ' where sContrato=:Contrato ' +
      ' and sNumeroOrden=:Orden ' +
      ' and sIdConvenio=:Convenio ' +
      ' and sTipoActividad="Actividad" ');
    qryActividades.Params.ParamByName('Contrato').DataType := ftString;
    qryActividades.Params.ParamByName('Contrato').Value := global_contrato;
    qryActividades.Params.ParamByName('Orden').DataType := ftString;
    qryActividades.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    qryActividades.Params.ParamByName('Convenio').DataType := ftString;
    qryActividades.Params.ParamByName('Convenio').Value := global_Convenio;
    qryActividades.Open;
    Progress.MinValue := 0;
    Progress.MaxValue := qryActividades.RecordCount;
    Progress.Visible := True;
    while not qryActividades.Eof do
    begin
      Progress.Progress := qryActividades.RecNo;
    {2. Obtener los meses de inicio y final de cada actividad}
      qryFecha.Active := False;
      qryFecha.SQL.Clear;
      qryFecha.SQL.Add('select month(:FechaInicio) as Mi,month(:FechaFinal) as Mf,YEAR(:FechaInicio) as Ai,YEAR(:FechaFinal) as Af');
      qryFecha.Params.ParamByName('FechaInicio').DataType := ftDate;
      qryFecha.Params.ParamByName('FechaInicio').Value := qryActividades.FieldValues['dFechaInicio'];
      qryFecha.Params.ParamByName('FechaFinal').DataType := ftDate;
      qryFecha.Params.ParamByName('FechaFinal').Value := qryActividades.FieldValues['dFechaFinal'];
      qryFecha.Open;
      if qryFecha.RecordCount > 0 then
      begin
        iMi := qryFecha.FieldValues['Mi'];
        iMf := qryFecha.FieldValues['Mf'];
        iAi := qryFecha.FieldValues['Ai'];
        iAf := qryFecha.FieldValues['Af'];

        sAi := IntToStr(iAi);
        sAf := IntToStr(iAf);
        if iMi < 10 then
          sMi := '0' + IntToStr(iMi)
        else
          sMi := IntToStr(iMi);
        if iMf < 10 then
          sMf := '0' + IntToStr(iMf)
        else
          sMf := IntToStr(iMf);
      end;

    {3. Obtener el total de meses entre la fecha de inicio y final}
      qryFecha.Active := False;
      qryFecha.SQL.Clear;
      qryFecha.SQL.Add('select PERIOD_DIFF("' + sAf + sMf + '","' + sAi + sMi + '") as dTotalMeses');
      qryFecha.Open;
      if qryFecha.RecordCount > 0 then
        dTotalMeses := StrToFloat(qryFecha.FieldValues['dTotalMeses']) + 1;

      if dTotalMeses = 0 then
        dTotalMeses := 1;
    {4. Obtener la distribucion mensual del DT, DEmn, DEdll}
      sdCantidad := qryActividades.FieldValues['dCantidad'];
      sdVentaMN := qryActividades.FieldValues['dVentaMN'];
      sdVentaDLL := qryActividades.FieldValues['dVentaDLL'];

      if dTotalMeses > 0 then
      begin
        sDT := FloatToStr(StrToFloat(sdCantidad) / dTotalMeses);
        sDEmn := FloatToStr(StrToFloat(sdVentaMN) / dTotalMeses);
        sDEdll := FloatToStr(StrToFloat(sdVentaDLL) / dTotalMeses);
      end
      else
      begin
        sDT := sdCantidad;
        sDEmn := sdVentaMN;
        sDEdll := sdVentaDLL;
      end;

    {5. Almacenar en ordenes_programamensual los resultados obtenidos de la actividad }
      with connection do
      begin
        Pi := StrToFloat(sAi + sMi);
        Pf := StrToFloat(sAf + sMf);
        while Pi <> pf do
        begin
          zCommand.Active := False;
          zCommand.SQL.Clear;
          zCommand.SQL.Add(
            ' insert into ordenes_programamensual ' +
            ' Values (:Contrato,:Convenio,:Orden,:Wbs,:Actividad,"' + sAi + '-' + sMi + '-01",' + sDT + ',' + sDEmn + ',' + sDEdll + ')' +
            ' on duplicate key update DT="' + sDT + '", DEmn="' + sDEmn + '", DEdll="' + sDEdll + '"');
          zCommand.Params.ParamByName('Contrato').DataType := ftString;
          zCommand.Params.ParamByName('Contrato').Value := global_contrato;
          zCommand.Params.ParamByName('Convenio').DataType := ftString;
          zCommand.Params.ParamByName('Convenio').Value := global_Convenio;
          zCommand.Params.ParamByName('Orden').DataType := ftString;
          zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          zCommand.Params.ParamByName('Wbs').DataType := ftString;
          zCommand.Params.ParamByName('Wbs').Value := qryActividades.FieldValues['sWbs'];
          zCommand.Params.ParamByName('Actividad').DataType := ftString;
          zCommand.Params.ParamByName('Actividad').Value := qryActividades.FieldValues['sNumeroActividad'];
          zCommand.ExecSQL;

          qryBusca.Active := False;
          qryBusca.SQL.Clear;
          qryBusca.SQL.Add('select PERIOD_ADD("' + sAi + sMi + '",1) as SiguientePeriodo');
          qryBusca.Open;
          if qryBusca.RecordCount > 0 then
            Pi := StrToFloat(qryBusca.FieldValues['SiguientePeriodo']);

          iMi := iMi + 1;

          if iMi > 12 then
          begin
            iMi := 1;
            iAi := iAi + 1;
            sAi := IntToStr(iAi);
          end;

          sMi := IntToStr(iMi);
          if iMi < 10 then
            sMi := '0' + IntToStr(iMi)
          else
            sMi := IntToStr(iMi);


        end;
      {proceso intermedio de ajuste de cantidades y costos}
        QryBusca.Active := False;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select :dDT-sum(DT) as DT,:dDEmn-sum(DEmn) as DEmn,:dDEdll-sum(DEdll) as DEdll from ordenes_programamensual ' +
          ' where sContrato=:Contrato and sIdConvenio=:Convenio and sNumeroOrden=:Orden and sWbs=:Wbs and sNumeroActividad=:Actividad' +
          ' and dIdFecha<>"' + sAi + '-' + sMi + '-01"' +
          ' group by sNumeroActividad,sWbs');
        QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        QryBusca.Params.ParamByName('Convenio').DataType := ftString;
        QryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
        QryBusca.Params.ParamByName('Orden').DataType := ftString;
        QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
        QryBusca.Params.ParamByName('Wbs').DataType := ftString;
        QryBusca.Params.ParamByName('Wbs').Value := qryActividades.FieldValues['sWbs'];
        QryBusca.Params.ParamByName('Actividad').DataType := ftString;
        QryBusca.Params.ParamByName('Actividad').Value := qryActividades.FieldValues['sNumeroActividad'];
        QryBusca.Params.ParamByName('dDt').DataType := ftFloat;
        QryBusca.Params.ParamByName('dDt').Value := qryActividades.FieldValues['dCantidad'];
        QryBusca.Params.ParamByName('dDEmn').DataType := ftFloat;
        QryBusca.Params.ParamByName('dDEmn').Value := qryActividades.FieldValues['dVentaMN'];
        QryBusca.Params.ParamByName('dDEdll').DataType := ftFloat;
        QryBusca.Params.ParamByName('dDEdll').Value := qryActividades.FieldValues['dVentaDLL'];

        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          sDT := FloatToStr(QryBusca.FieldValues['DT']);
          sDEmn := FloatToStr(QryBusca.FieldValues['DEmn']);
          sDEdll := FloatToStr(QryBusca.FieldValues['DEdll']);
          if QryBusca.FieldValues['DT'] < 0 then
            sDT := FloatToStr(QryBusca.FieldValues['DT'] * (-1));
          if QryBusca.FieldValues['DEmn'] < 0 then
            sDEmn := FloatToStr(QryBusca.FieldValues['DEmn'] * (-1));
          if QryBusca.FieldValues['DEdll'] < 0 then
            sDEdll := FloatToStr(QryBusca.FieldValues['DEdll'] * (-1));
        end;
      {insertar el ultimo mes}
        zCommand.Active := False;
        zCommand.SQL.Clear;
        zCommand.SQL.Add(
          ' insert into ordenes_programamensual ' +
          ' Values (:Contrato,:Convenio,:Orden,:Wbs,:Actividad,"' + sAi + '-' + sMi + '-01",' + sDT + ',' + sDEmn + ',' + sDEdll + ')' +
          ' on duplicate key update DT="' + sDT + '", DEmn="' + sDEmn + '", DEdll="' + sDEdll + '"');
        zCommand.Params.ParamByName('Contrato').DataType := ftString;
        zCommand.Params.ParamByName('Contrato').Value := global_contrato;
        zCommand.Params.ParamByName('Convenio').DataType := ftString;
        zCommand.Params.ParamByName('Convenio').Value := global_Convenio;
        zCommand.Params.ParamByName('Orden').DataType := ftString;
        zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
        zCommand.Params.ParamByName('Wbs').DataType := ftString;
        zCommand.Params.ParamByName('Wbs').Value := qryActividades.FieldValues['sWbs'];
        zCommand.Params.ParamByName('Actividad').DataType := ftString;
        zCommand.Params.ParamByName('Actividad').Value := qryActividades.FieldValues['sNumeroActividad'];
        zCommand.ExecSQL;

      end;
      qryActividades.Next;
    end;
    qryFecha.Destroy;
    qryActividades.Destroy;
    Progress.Visible := False;
    ShowMessage('El proceso ha finalizado !');

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al procesar fechas', 0);
    end;
  end;

end;

procedure TfrmAjustaOrden.btnDistribuyeClick(Sender: TObject);
var
  dFactor: Double;
  lValido: Boolean;
  days: array[1..7] of string;
  sFecha, sMyDia, txtAux: string;
  dFechaInicial: tDate;
  dFechaFinal: tDate;
  dDistribuido: Real;
  dAjuste: Real;
  dFactorDiario: Real;
  dCantidadEntera: Real;
  dHorasTotales: Real;
  dHorasDiarias: Real;
  sNumeroActividad,
    sWbs: string;
begin
  try
    sWbs := ActividadesxAnexo.FieldValues['sWbs'];
    sNumeroActividad := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    MemoryAnexo.First;
    while not MemoryAnexo.Eof do
    begin
      lValido := False;
      dFechaFinal := strToDate(sfnFechaFinal(MemoryAnexo.FieldValues['iMes'], MemoryAnexo.FieldValues['Anno']));
      lValido := True;
      if not lProcesoDistribucion then
      begin
        Connection.qryBusca.Active := False;
        Connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('Select sContrato From ordenes_programamensual ' +
          'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden and sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
        Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
        Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
        Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Actividad').Value := sNumeroActividad;
        Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
        Connection.qryBusca.Params.ParamByName('Fecha').Value := dFechaFinal;
        Connection.qryBusca.Open;
        if Connection.qryBusca.RecordCount = 0 then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('INSERT INTO ordenes_programamensual ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, DT, DEmn, DEdll ) ' +
            ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :dt, :demn, :dedll)');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
          connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
          Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
          Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
          connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('actividad').value := sNumeroActividad;
          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('fecha').value := dFechaFinal;
          connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('DT').value := MemoryAnexo.FieldValues['Cantidad'];
          connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('DEmn').value := MemoryAnexo.FieldValues['Monto'];
          connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('DEdll').value := MemoryAnexo.FieldValues['Montodll'];
          connection.zCommand.ExecSQL;
        end
        else
        begin
          try
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('UPDATE ordenes_programamensual SET dt = :dt, demn = :demn, deDLL = :deDLL Where sContrato = :Contrato And ' +
              'sIdConvenio = :Convenio and sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
            connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
            Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
            Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
            connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
            connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
            connection.zCommand.Params.ParamByName('actividad').value := sNumeroActividad;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('fecha').value := dFechaFinal;
            connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('DT').value := MemoryAnexo.FieldValues['Cantidad'];
            connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('DEmn').value := MemoryAnexo.FieldValues['Monto'];
            connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('DEdll').value := MemoryAnexo.FieldValues['MontoDLL'];
            connection.zCommand.ExecSQL;
          except
            MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
          end;
        end
      end;

      if lValido then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('DELETE FROM distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden and ' +
          'sWbs = :wbs And sNumeroActividad = :Actividad And Year(dIdFecha) = :Anno and Month(dIdFecha) = :Mes');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
        Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
        Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
        connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
        connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
        connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
        connection.zCommand.Params.ParamByName('Anno').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Anno').Value := MemoryAnexo.FieldValues['Anno'];
        connection.zCommand.Params.ParamByName('Mes').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Mes').Value := MemoryAnexo.FieldValues['iMes'];
        connection.zCommand.ExecSQL();

        if MemoryAnexo.FieldValues['Cantidad'] > 0 then
        begin
                // Adiciona los registros nuevos ....
          dFechaInicial := strToDate('01/' + Trim(IntToStr(MemoryAnexo.FieldValues['iMes'])) + '/' + Trim(IntToStr(MemoryAnexo.FieldValues['Anno'])));
          if (YearOf(dFechaInicial) = YearOf(ActividadesxAnexo.FieldValues['dFechaInicio'])) and (MonthOf(dFechaInicial) = MonthOf(ActividadesxAnexo.FieldValues['dFechaInicio'])) then
            dFechaInicial := ActividadesxAnexo.FieldValues['dFechaInicio']
          else
            if (dFechaInicial < ActividadesxAnexo.FieldValues['dFechaInicio']) then
              dFechaInicial := ActividadesxAnexo.FieldValues['dFechaInicio'];

          dFechaFinal := strToDate(sfnFechaFinal(MemoryAnexo.FieldValues['iMes'], MemoryAnexo.FieldValues['Anno']));

          if dFechaFinal > ActividadesxAnexo.FieldValues['dFechaFinal'] then
            dFechaFinal := ActividadesxAnexo.FieldValues['dFechaFinal'];

          dHorasTotales := 0;
          dHorasTotales := ifnJornadaTotal(global_contrato, dFechaInicial, dFechaFinal, frmAjustaOrden);
          if not lExisteMedida(ActividadesxAnexo.FieldValues['sMedida']) then
          begin
                     // Este proceso es facil, la distribucion x dia = Cantidad / Duracion
                     // Hago el Ciclo ...

            dDistribuido := 0;
            while dFechaInicial <= dFechaFinal do
            begin
              try
                dHorasDiarias := ifnJornadaDia(global_contrato, dFechaInicial, frmAjustaOrden);
              except
                on e: exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al calcular jornada dia al distribuir', 0);
                end;
              end;
              if dHorasDiarias > 0 then
              begin
                dFactorDiario := (dHorasDiarias / dHorasTotales) * MemoryAnexo.FieldValues['Cantidad'];
                Str(dFactorDiario: 8: 8, txtAux);
                txtAux := Copy(txtAux, 1, Pos('.', txtAux) + 5);
                try
                  dFactorDiario := rfnDecimal(txtAux);
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                    ' VALUES (:contrato, :convenio, :Orden, :fecha, :Wbs, :Actividad, :cantidad)');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                  connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                  connection.zCommand.Params.ParamByName('orden').value := tsNumeroOrden.Text;
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
                  connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial;
                  connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('cantidad').value := dFactorDiario;
                  connection.zCommand.ExecSQL;
                  dDistribuido := dDistribuido + dFactorDiario;
                except
                  MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                end;
              end;
              dFechaInicial := dFechaInicial + 1;
            end;

            dAjuste := 0;
            if dDistribuido > MemoryAnexo.FieldValues['Cantidad'] then
              dAjuste := (dDistribuido - MemoryAnexo.FieldValues['Cantidad']) * -1
            else
              if dDistribuido < MemoryAnexo.FieldValues['Cantidad'] then
                dAjuste := MemoryAnexo.FieldValues['Cantidad'] - dDistribuido;

            if dAjuste <> 0 then
            begin
              dFechaInicial := dFechaFinal;
              Connection.qryBusca.Active := False;
              Connection.qryBusca.SQL.Clear;
              Connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                'dIdFecha = :fecha And sWbs = :Wbs And sNumeroActividad = :Actividad');
              Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
              Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
              Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
              Connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
              Connection.qryBusca.Params.ParamByName('fecha').Value := dFechaInicial;
              Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
              Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Actividad').Value := sNumeroActividad;
              Connection.qryBusca.Open;
              if Connection.qryBusca.RecordCount > 0 then
              begin
                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE distribuciondeactividades SET dCantidad = :Cantidad ' +
                    'where sContrato = :contrato And dIdFecha = :fecha And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                  connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  connection.zCommand.Params.ParamByName('convenio').Value := global_convenio;
                  Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'];
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
                  connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] + dAjuste;
                  connection.zCommand.ExecSQL;
                except
                  MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + sNumeroActividad, mtInformation, [mbOk], 0)
                end
              end
              else
              begin
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                  'sWbs = :Wbs And sNumeroActividad = :Actividad Order By dIdFecha Desc');
                Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
                Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
                Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
                Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
                Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad;
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount > 0 then
                begin
                  try
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE distribuciondeactividades SET dCantidad = :Cantidad ' +
                      'where sContrato = :contrato And dIdFecha = :fecha And sNumeroOrden = :Orden and IdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad');
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    connection.zCommand.Params.ParamByName('convenio').Value := global_convenio;
                    Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
                    connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'];
                    connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
                    connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
                    connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                    connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] + dAjuste;
                    connection.zCommand.ExecSQL;
                  except
                    MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + ActividadesxAnexo.FieldValues['sNumeroActividad'], mtInformation, [mbOk], 0)
                  end
                end
              end
            end
          end
          else
          begin
                     // Ahora va el proceso dificil, deben ser cantidades enteras ....
                     // Proceso de Calculo de Horas Totales ......  : )
                     // 20 de Septiembre 2004
            dDistribuido := 0;
            dCantidadEntera := 0;
            while dFechaInicial <= dFechaFinal do
            begin
              try
                dHorasDiarias := ifnJornadaDia(global_contrato, dFechaInicial, frmAjustaOrden);
              except
                on e: exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al calcular jornada dia al distribuir', 0);
                end
              end;
              if dHorasDiarias > 0 then
              begin
                dFactorDiario := (dHorasDiarias / dHorasTotales) * MemoryAnexo.FieldValues['Cantidad'];
                Str(dFactorDiario: 8: 8, txtAux);
                txtAux := Copy(txtAux, 1, Pos('.', txtAux) + 5);

                try
                  dFactorDiario := rfnDecimal(txtAux);
                except
                  on e: exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al distribuir, al calcular factor diario', 0);
                  end;
                end;
                dCantidadEntera := dCantidadEntera + dFactorDiario;

                if dFechaInicial = dFechaFinal then
                begin
                  try
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                      ' VALUES (:contrato, :convenio, :Orden, :fecha, :Wbs, :Actividad, :cantidad)');
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                    Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
                    connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial;
                    connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
                    connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad;
                    connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                    connection.zCommand.Params.ParamByName('cantidad').value := dCantidadEntera;
                    connection.zCommand.ExecSQL;
                  except
                    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                  end;
                  dDistribuido := dDistribuido + dCantidadEntera;
                end
                else
                  if Trunc(dCantidadEntera) > 0 then
                  begin
                    try
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                        ' VALUES (:contrato, :convenio, :Orden, :fecha, :Wbs, :Actividad, :cantidad)');
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato;
                      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Convenio').value := Global_Convenio;
                      Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
                      connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
                      connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad;
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('Fecha').value := dFechaInicial;
                      connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('Cantidad').value := Trunc(dCantidadEntera);
                      connection.zCommand.ExecSQL;
                    except
                      MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                    end;
                    dDistribuido := dDistribuido + Trunc(dCantidadEntera);
                    dCantidadEntera := dCantidadEntera - Trunc(dCantidadEntera);
                  end
              end;
              dFechaInicial := dFechaInicial + +1;
            end;

            dAjuste := 0;
            if dDistribuido > MemoryAnexo.FieldValues['Cantidad'] then
              dAjuste := (dDistribuido - MemoryAnexo.FieldValues['Cantidad']) * -1
            else
              if dDistribuido < MemoryAnexo.FieldValues['Cantidad'] then
                dAjuste := MemoryAnexo.FieldValues['Cantidad'] - dDistribuido;

            if dAjuste <> 0 then
            begin
              dFechaInicial := dFechaFinal;
              Connection.qryBusca.Active := False;
              Connection.qryBusca.SQL.Clear;
              Connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                'dIdFecha = :fecha And sWbs = :Wbs And sNumeroActividad = :Actividad');
              Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
              Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
              Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
              Connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
              Connection.qryBusca.Params.ParamByName('fecha').Value := dFechaInicial;
              Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
              Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Actividad').Value := sNumeroActividad;
              Connection.qryBusca.Open;
              if Connection.qryBusca.RecordCount > 0 then
              begin
                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE distribuciondeactividades SET dCantidad = :Cantidad ' +
                    'where sContrato = :contrato And dIdFecha = :fecha And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                  connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  connection.zCommand.Params.ParamByName('convenio').Value := global_convenio;
                  Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'];
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
                  connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] + dAjuste;
                  connection.zCommand.ExecSQL;
                except
                  MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + sNumeroActividad, mtInformation, [mbOk], 0)
                end
              end
              else
              begin
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select dIdFecha, sNumeroActividad, dCantidad from distribuciondeactividades ' +
                  'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And ' +
                  'sNumeroActividad = :actividad Order By dIdFecha Desc');
                Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
                Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
                Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
                Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
                Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad;
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount > 0 then
                begin
                  try
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE distribuciondeactividades SET dCantidad = :Cantidad ' +
                      'where sContrato = :contrato And dIdFecha = :fecha And sIdConvenio = :Convenio and sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    connection.zCommand.Params.ParamByName('convenio').Value := global_convenio;
                    Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
                    connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'];
                    connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
                    connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                    connection.zCommand.Params.ParamByName('actividad').Value := sNumeroActividad;
                    connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                    connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] + dAjuste;
                    connection.zCommand.ExecSQL;
                  except
                    MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + ActividadesxAnexo.FieldValues['sNumeroActividad'], mtInformation, [mbOk], 0)
                  end
                end
              end
            end
          end
        end
        else
        begin
          if (MemoryAnexo.FieldValues['Monto'] <= 0) and (MemoryAnexo.FieldValues['MontoDLL'] <= 0) then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('DELETE FROM ordenes_programamensual Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
              'sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
            connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
            connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := dFechaFinal;
            connection.zCommand.ExecSQL();
          end;

        end
      end;
      MemoryAnexo.Next;
    end;

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Sum(dt) as Cantidad, Sum(DEmn) as Monto, Sum(DEdll) as MontoDLL From ordenes_programamensual ' +
      'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad ' +
      'Group By sContrato');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
    Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
    Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Actividad').Value := sNumeroActividad;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      tdTotal.Value := Connection.qryBusca.FieldValues['Cantidad'];
      tdImporte.Value := Connection.qryBusca.FieldValues['Monto'];
      tdImporteDLL.Value := Connection.qryBusca.FieldValues['MontoDLL'];
    end
    else
    begin
      tdtotal.Value := 0;
      tdImporte.Value := 0;
      tdImporteDLL.Value := 0;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al distribuir', 0);
    end;
  end;
end;

procedure TfrmAjustaOrden.PanelExit(Sender: TObject);
begin
  lInvalido := True;
  Panel.Visible := False;
end;

procedure TfrmAjustaOrden.btnAdicionaClick(Sender: TObject);
begin
  if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
  begin
    Panel.Visible := True;
    Panel.SetFocus
  end;
end;

procedure TfrmAjustaOrden.PanelEnter(Sender: TObject);
begin
  UpAnno.Position := YearOf(ActividadesxAnexo.FieldValues['dFechaInicio']);
  tsMes.ItemIndex := MonthOf(ActividadesxAnexo.FieldValues['dFechaInicio']) - 1;
  tdCantidad.Value := 0;
  tdMonto.Value := 0;
  lInvalido := False;
  tiAnno.SetFocus
end;

function TfrmAjustaOrden.lExisteMedida(sMedida: string): Boolean;
begin
  lExisteMedida := False;
  lExisteMedida := (strPos(pchar(connection.configuracion.FieldByName('txtMaterialAutomatico').AsString), pchar(sMedida + '|')) <> nil)
end;

procedure TfrmAjustaOrden.rxMensualKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//    If MemoryAnexo.RecordCount = MemoryAnexo.RecNo Then
//        MemoryAnexo.Cancel
end;

procedure TfrmAjustaOrden.btnSalirClick(Sender: TObject);
begin
  rxMensual.SetFocus
end;

procedure TfrmAjustaOrden.btnAdicionarClick(Sender: TObject);
begin
  MemoryAnexo.Append;
  MemoryAnexo.FieldValues['Anno'] := UpAnno.Position;
  MemoryAnexo.FieldValues['Mes'] := tsMes.Text;
  MemoryAnexo.FieldValues['iMes'] := tsMes.ItemIndex + 1;
  MemoryAnexo.FieldValues['Cantidad'] := tdCantidad.Value;
  MemoryAnexo.FieldValues['Monto'] := tdMonto.Value;
  MemoryAnexo.FieldValues['MontoDLL'] := tdMontoDLL.Value;
  MemoryAnexo.Post;

  if tsMes.ItemIndex < 11 then
    tsMes.ItemIndex := tsMes.ItemIndex + 1
  else
  begin
    tsMes.ItemIndex := 0;
    upAnno.Position := upanno.Position + 1;
  end;
  tdCantidad.SetFocus
//    rxMensual.SetFocus
end;

procedure TfrmAjustaOrden.tiAnnoEnter(Sender: TObject);
begin
  tiAnno.Color := global_color_entradaERP;
end;

procedure TfrmAjustaOrden.tiAnnoExit(Sender: TObject);
begin
  tiAnno.Color := global_color_salidaERP;
end;

procedure TfrmAjustaOrden.tiAnnoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsMes.SetFocus
end;

procedure TfrmAjustaOrden.tsMesEnter(Sender: TObject);
begin
  tsMes.Color := global_color_entradaERP;
end;

procedure TfrmAjustaOrden.tsMesExit(Sender: TObject);
begin
  tsMes.Color := global_color_salidaERP;
end;

procedure TfrmAjustaOrden.tsMesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdCantidad.SetFocus
end;

procedure TfrmAjustaOrden.tdCantidadChange(Sender: TObject);
begin
  tCurrenciEditChangef(tdCantidad, 'Cantidad');
end;

procedure TfrmAjustaOrden.tdCantidadEnter(Sender: TObject);
begin
  tdCantidad.Color := global_color_entradaERP;
end;

procedure TfrmAjustaOrden.tdCantidadExit(Sender: TObject);
begin
  tdCantidad.Color := global_color_salidaERP;
  tdMonto.Value := tdCantidad.Value * ActividadesxAnexo.FieldValues['dVentaMN'];
  tdMontoDLL.Value := tdCantidad.Value * ActividadesxAnexo.FieldValues['dVentaDLL']
end;

procedure TfrmAjustaOrden.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltrotCurrencyEdit(tdCantidad, key) then
    key := #0;

  if Key = #13 then
    tdMonto.SetFocus
end;

procedure TfrmAjustaOrden.tdImporteDLLKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdImportePartida.SetFocus
end;

procedure TfrmAjustaOrden.tdImporteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdimportedll.SetFocus
end;

procedure TfrmAjustaOrden.tdImportePartidaDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdtotal.SetFocus
end;

procedure TfrmAjustaOrden.tdImportePartidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdImportePartidaDLL.SetFocus
end;

procedure TfrmAjustaOrden.tdMontoEnter(Sender: TObject);
begin
  tdMonto.Color := global_color_entradaERP;
end;

procedure TfrmAjustaOrden.tdMontoExit(Sender: TObject);
begin
  tdMonto.Color := global_color_salidaERP;
end;

procedure TfrmAjustaOrden.tdMontoKeyPress(Sender: TObject; var Key: Char);
var
  PrecioMn: currency;
begin
  if not keyFiltrotCurrencyEdit(tdCantidad, key) then
    key := #0;
  if Key = #13 then
  begin
    PrecioMn := sTrToCurr(tdMonto.text);
    PrecioMn := (PrecioMn / Actividadesxanexo.FieldValues['dVentaMn']);
    tdCantidad.Text := CurrToStr(precioMn);
    tdMontoDLL.SetFocus
  end;
end;

procedure TfrmAjustaOrden.tdTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdimporte.SetFocus
end;

procedure TfrmAjustaOrden.btnAnexoDTClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_Anexo DT.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_Anexo DT.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;
  try
    AnexoDt.Active := False;
    AnexoDT.SQL.Clear;
    AnexoDT.SQL.Add('Select a.iItemOrden, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidad as dCantidadAnexo, a.dVentaMN, ' +
      'a.dVentaDLL, year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, d.DT as dMensual from actividadesxorden a ' +
      'inner join ordenes_programamensual d on (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio and a.sNumeroOrden = d.sNumeroOrden ' +
      'And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad) ' +
      'Where a.sContrato = :contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden And a.sTipoActividad = "Actividad" ' +
      'Order By a.iItemOrden, d.sNumeroActividad, Year(d.dIdFecha), month(d.dIdFecha)');
    AnexoDT.Params.ParamByName('Contrato').DataType := ftString;
    AnexoDT.Params.ParamByName('Contrato').Value := global_contrato;
    AnexoDT.Params.ParamByName('Convenio').DataType := ftString;
    AnexoDT.Params.ParamByName('Convenio').Value := global_convenio;
    AnexoDT.Params.ParamByName('Orden').DataType := ftString;
    AnexoDT.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    dsAnexoDT.FieldAliases.Clear;
    dsAnexoDT.DataSet := AnexoDT;
    dsAnexoDT.Open;
    AnexoDT.Open;

    if AnexoDT.RecordCount > 0 then
    begin
      frxAnexo.LoadFromFile(global_files +global_Mireporte+ '_Anexo DT.fr3');
      frxAnexo.PreviewOptions.MDIChild := True;
      frxAnexo.PreviewOptions.Modal := False;
      frxAnexo.PreviewOptions.Maximized := lCheckMaximized();
      frxAnexo.PreviewOptions.ShowCaptions := False;
      frxAnexo.Previewoptions.ZoomMode := zmPageWidth;
      frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
      if not FileExists(global_files + global_miReporte + '_Anexo DT.fr3') then
        showmessage('El archivo de reporte Anexo DT.fr3 no existe, notifique al administrador del sistema');
    end
    else begin
      showmessage('No hay datos para imprimir');
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al hacer clic en el Boton Anexo DT', 0);
    end;
  end;
end;

procedure TfrmAjustaOrden.btnAnexoDEClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_Anexo DE.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_Anexo DE.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;

  if not FileExists(global_files + global_miReporte + '_Anexo DE dll.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_Anexo DE dll.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;
  try
    AnexoDt.Active := False;
    AnexoDT.SQL.Clear;
    AnexoDT.SQL.Add('Select a.iItemOrden, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidad as dCantidadAnexo, a.dVentaMN, ' +
      'a.dVentaDLL, year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, ' +
      'd.DEmn as dMensualMN, d.DEdll as dMensualDLL from actividadesxorden a ' +
      'inner join ordenes_programamensual d on (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio and a.sNumeroOrden = d.sNumeroOrden ' +
      'And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad) ' +
      'Where a.sContrato = :contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden And a.sTipoActividad = "Actividad" ' +
      'Order By a.iItemOrden, d.sNumeroActividad, Year(d.dIdFecha), month(d.dIdFecha)');
    AnexoDT.Params.ParamByName('Contrato').DataType := ftString;
    AnexoDT.Params.ParamByName('Contrato').Value := global_contrato;
    AnexoDT.Params.ParamByName('Convenio').DataType := ftString;
    AnexoDT.Params.ParamByName('Convenio').Value := global_convenio;
    AnexoDT.Params.ParamByName('Orden').DataType := ftString;
    AnexoDT.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    dsAnexoDT.FieldAliases.Clear;
    dsAnexoDT.DataSet := AnexoDT;
    dsAnexoDT.Open;
    AnexoDT.Open;

    if AnexoDT.RecordCount > 0 then
    begin
      if MessageDlg('Desea Imprimir el Anexo DE en Moneda Nacional?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        frxAnexo.LoadFromFile(global_files +global_MiReporte+ '_Anexo DE.fr3')
      else
        frxAnexo.LoadFromFile(global_files + global_miReporte + '_Anexo DE dll.fr3');
      frxAnexo.PreviewOptions.MDIChild := True;
      frxAnexo.PreviewOptions.Modal := False;
      frxAnexo.PreviewOptions.Maximized := lCheckMaximized();
      frxAnexo.PreviewOptions.ShowCaptions := False;
      frxAnexo.Previewoptions.ZoomMode := zmPageWidth;
      frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    end
    else begin
      showmessage('No hay datos para imprimir');
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al hacer Clic en el boton Anexo DE', 0);
    end;
  end;
end;

procedure TfrmAjustaOrden.grid_actividadesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #26 then
  begin
    if MessageDlg('Desea ejecutar el proceso de distribución automatica de partidas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      lProcesoDistribucion := True;
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('DELETE FROM distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
      connection.zCommand.Params.ParamByName('orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.zCommand.ExecSQL();
      ActividadesxAnexo.First;
      while not ActividadesxAnexo.EOF do
      begin
        if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
          btnDistribuye.Click;
        ActividadesxAnexo.Next
      end;
      lProcesoDistribucion := False;
    end
  end
end;

procedure TfrmAjustaOrden.grid_actividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmAjustaOrden.grid_actividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmAjustaOrden.grid_actividadesTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmAjustaOrden.tdMontoDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltrotCurrencyEdit(tdCantidad, key) then
    key := #0;
  if Key = #13 then
    btnAdicionar.SetFocus
end;

procedure TfrmAjustaOrden.tdMontoChange(Sender: TObject);
begin
  tCurrenciEditChangef(tdCantidad, 'Cantidad');
end;

procedure TfrmAjustaOrden.tdMontoDLLChange(Sender: TObject);
begin
  tCurrenciEditChangef(tdCantidad, 'Cantidad');
end;

procedure TfrmAjustaOrden.tdMontoDLLEnter(Sender: TObject);
begin
  tdMontoDLL.Color := global_color_entradaERP;
end;

procedure TfrmAjustaOrden.tdMontoDLLExit(Sender: TObject);
begin
  tdMontoDLL.Color := global_color_salidaERP;
end;

procedure TfrmAjustaOrden.grid_actividadesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  try
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if ActividadesxAnexo.RecordCount > 0 then
      begin
        AFont.Color := esColor(ActividadesxAnexo.FieldValues['iColor']);
        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
        begin
          Afont.Style := [fsBold];
          Afont.Size := Afont.Size + 1
        end
      end
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al cambiar de registro de actividades', 0);
    end;
  end;
end;

procedure TfrmAjustaOrden.ActividadesxAnexoCalcFields(DataSet: TDataSet);
begin
  ActividadesxAnexosWbsSpace.Text := espaces(ActividadesxAnexo.FieldValues['iNivel']) + ActividadesxAnexo.FieldValues['sWbs'];
end;

procedure TfrmAjustaOrden.procActualizaPonderado(sContrato, sConvenio, sNumeroOrden, sWbs, sActividad: string; dPonderado: currency);
begin
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = :ponderado ' +
    'Where sContrato = :contrato And sIdConvenio = :convenio and sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :actividad');
  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
  Connection.zCommand.Params.ParamByName('contrato').Value := sContrato;
  Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
  Connection.zCommand.Params.ParamByName('convenio').Value := sConvenio;
  Connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
  Connection.zCommand.Params.ParamByName('Orden').Value := sNumeroOrden;
  Connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
  Connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
  Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
  Connection.zCommand.Params.ParamByName('actividad').Value := sActividad;
  Connection.zCommand.Params.ParamByName('ponderado').DataType := ftFloat;
  Connection.zCommand.Params.ParamByName('ponderado').Value := dPonderado;
  connection.zCommand.ExecSQL;
end;

procedure TfrmAjustaOrden.SpeedItem1Click(Sender: TObject);
var
  QryPrincipal: TZReadOnlyQuery;
  QryTotales: TZReadOnlyQuery;
  QryDistDiaria: TZReadOnlyQuery;

  dPonderadoAjuste,
    dTotalDivisor,
    dPonderadoDia,
    dPonderadoGlobal: Currency;
  iRecord: Integer;
  iDivisor: Byte;
  dFechaInicial: tDate;
begin
  try
    if MessageDlg('Desea Generar la Linea Base del Proyecto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
          // Inicializo Ponderados a 0 de Toda la Orden de Trabajo de las Actividades que se se calculen ...
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE actividadesxorden SET dPonderado = 0.00 WHERE sContrato = :contrato And ' +
        'sIdConvenio = :Convenio And sNumeroOrden = :Orden');
      Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      Connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      Connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
      Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
      Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.zCommand.ExecSQL;

      QryTotales := tzReadOnlyQuery.Create(self);
      QryTotales.Connection := connection.zconnection;

      QryPrincipal := tzReadOnlyQuery.Create(self);
      QryPrincipal.Connection := connection.zconnection;


      dPonderadoAjuste := 100;


      QryPrincipal.Active := False;
      QryPrincipal.SQL.Clear;

      QryTotales.Active := False;
      QryTotales.SQL.Clear;

      if dPonderadoAjuste > 0 then
      begin
        if connection.configuracion.FieldValues['lCalculoPonderado'] <> 'Mezcla' then
        begin
          if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Duracion' then
          begin
            QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, dDuracion as dValorPartida from actividadesxorden ' +
              'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
              'dDuracion > 0 and dCantidad > 0 And sTipoActividad = "Actividad" Order By iItemOrden');
            QryTotales.SQL.Add('Select SUM(dDuracion) as TotalDivisor from actividadesxorden ' +
              'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
              'dDuracion > 0 and dCantidad > 0 And ' +
              'sTipoActividad = "Actividad" Group By sNumeroOrden');
          end
          else
            if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Financiero' then
            begin
              QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, (dCantidad * dVentaMN) as dValorPartida from actividadesxorden ' +
                'Where sContrato = :contrato And sIdConvenio = :Convenio and sNumeroOrden = :Orden And ' +
                'dVentaMN > 0 And sTipoActividad = "Actividad" Order By iItemOrden');
              QryTotales.SQL.Add('Select SUM(dVentaMN * dCantidad) as TotalDivisor from actividadesxorden ' +
                'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                'sTipoActividad = "Actividad" Group By sNumeroOrden');
            end;

          QryPrincipal.Params.ParamByName('contrato').DataType := ftString;
          QryPrincipal.Params.ParamByName('contrato').Value := global_contrato;
          QryPrincipal.Params.ParamByName('convenio').DataType := ftString;
          QryPrincipal.Params.ParamByName('convenio').Value := global_convenio;
          QryPrincipal.Params.ParamByName('Orden').DataType := ftString;
          QryPrincipal.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          QryPrincipal.Open;

          dTotalDivisor := 0;
          QryTotales.Params.ParamByName('contrato').DataType := ftString;
          QryTotales.Params.ParamByName('contrato').Value := global_contrato;
          QryTotales.Params.ParamByName('convenio').DataType := ftString;
          QryTotales.Params.ParamByName('convenio').Value := global_convenio;
          QryTotales.Params.ParamByName('Orden').DataType := ftString;
          QryTotales.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          QryTotales.Open;
          if QryTotales.RecordCount > 0 then
            dTotalDivisor := QryTotales.FieldValues['TotalDivisor'];

          Progress.visible := True;
          Progress.MinValue := 1;
          Progress.MaxValue := QryPrincipal.RecordCount;
          Progress.Progress := 0;

          QryPrincipal.First;
          for iRecord := Progress.MinValue to Progress.MaxValue do
          begin
            procActualizaPonderado(global_contrato, global_convenio, tsNumeroOrden.Text, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
              ROUNDTO((QryPrincipal.FieldValues['dValorPartida'] * dPonderadoAjuste) / dTotalDivisor, -5));
            QryPrincipal.Next;
            Progress.Progress := iRecord;
          end;
        end
        else
        begin
                  // Es ponderado Mixto
                  // Financiero Nacional
          iDivisor := 0;
          QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, (dCantidad * dVentaMN) as dValorPartida from actividadesxorden ' +
            'Where sContrato = :contrato And sIdConvenio = :Convenio and sNumeroOrden = :Orden And ' +
            'dVentaMN > 0 And sTipoActividad = "Actividad" Order By iItemOrden');
          QryTotales.SQL.Add('Select SUM(dVentaMN * dCantidad) as TotalDivisor from actividadesxorden ' +
            'Where sContrato = :contrato And sIdConvenio = :Convenio and sNumeroOrden = :Orden And ' +
            'sTipoActividad = "Actividad" Group By sNumeroOrden');
          QryPrincipal.Params.ParamByName('contrato').DataType := ftString;
          QryPrincipal.Params.ParamByName('contrato').Value := global_contrato;
          QryPrincipal.Params.ParamByName('convenio').DataType := ftString;
          QryPrincipal.Params.ParamByName('convenio').Value := global_convenio;
          QryPrincipal.Params.ParamByName('Orden').DataType := ftString;
          QryPrincipal.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          QryPrincipal.Open;

          if QryPrincipal.RecordCount > 0 then
          begin
            iDivisor := iDivisor + 1;
            QryTotales.Params.ParamByName('contrato').DataType := ftString;
            QryTotales.Params.ParamByName('contrato').Value := global_contrato;
            QryTotales.Params.ParamByName('convenio').DataType := ftString;
            QryTotales.Params.ParamByName('convenio').Value := global_convenio;
            QryTotales.Params.ParamByName('Orden').DataType := ftString;
            QryTotales.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            QryTotales.Open;
            if QryTotales.RecordCount > 0 then
              dTotalDivisor := QryTotales.FieldValues['TotalDivisor'];

            Progress.visible := True;
            Progress.MinValue := 1;
            Progress.MaxValue := QryPrincipal.RecordCount;
            Progress.Progress := 0;

            QryPrincipal.First;
            for iRecord := Progress.MinValue to Progress.MaxValue do
            begin
              procActualizaPonderado(global_contrato, global_convenio, tsNumeroOrden.Text, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
                ROUNDTO((QryPrincipal.FieldValues['dValorPartida'] * dPonderadoAjuste) / dTotalDivisor, -5));
              QryPrincipal.Next;
              Progress.Progress := iRecord;
            end;
          end;

                  // Financiero DLL
          QryPrincipal.Active := False;
          QryPrincipal.SQL.Clear;
          QryTotales.Active := False;
          QryTotales.SQL.Clear;
          QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, (dCantidad * dVentaDLL) as dValorPartida from actividadesxorden ' +
            'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
            'dVentaDLL > 0 And sTipoActividad = "Actividad"  Order By iItemOrden');
          QryTotales.SQL.Add('Select SUM(dVentaDLL * dCantidad) as TotalDivisor from actividadesxorden ' +
            'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
            'lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sNumeroOrden');
          QryPrincipal.Params.ParamByName('contrato').DataType := ftString;
          QryPrincipal.Params.ParamByName('contrato').Value := global_contrato;
          QryPrincipal.Params.ParamByName('convenio').DataType := ftString;
          QryPrincipal.Params.ParamByName('convenio').Value := global_convenio;
          QryPrincipal.Params.ParamByName('Orden').DataType := ftString;
          QryPrincipal.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          QryPrincipal.Open;

          if QryPrincipal.RecordCount > 0 then
          begin
            iDivisor := iDivisor + 1;
            QryTotales.Params.ParamByName('contrato').DataType := ftString;
            QryTotales.Params.ParamByName('contrato').Value := global_contrato;
            QryTotales.Params.ParamByName('convenio').DataType := ftString;
            QryTotales.Params.ParamByName('convenio').Value := global_convenio;
            QryTotales.Params.ParamByName('Orden').DataType := ftString;
            QryTotales.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            QryTotales.Open;
            if QryTotales.RecordCount > 0 then
              dTotalDivisor := QryTotales.FieldValues['TotalDivisor'];

            Progress.visible := True;
            Progress.MinValue := 1;
            Progress.MaxValue := QryPrincipal.RecordCount;
            Progress.Progress := 0;

            QryPrincipal.First;
            for iRecord := Progress.MinValue to Progress.MaxValue do
            begin
              procActualizaPonderado(global_contrato, global_convenio, tsNumeroOrden.Text, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
                (QryPrincipal.FieldValues['dPonderado'] + ROUNDTO((QryPrincipal.FieldValues['dValorPartida'] * dPonderadoAjuste) / dTotalDivisor, -5)) / 2);
              QryPrincipal.Next;
              Progress.Progress := iRecord;
            end;
          end;

                  // Duracion ...
          QryPrincipal.Active := False;
          QryPrincipal.SQL.Clear;
          QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, dDuracion as dValorPartida from actividadesxorden ' +
            'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
            'dCantidad > 0 And sTipoActividad = "Actividad" Order By iItemOrden');
          QryTotales.Active := False;
          QryTotales.SQL.Clear;
          QryTotales.SQL.Add('Select SUM(dDuracion) as TotalDivisor from actividadesxorden ' +
            'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
            'dCantidad > 0 And lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sNumeroOrden');
          QryPrincipal.Params.ParamByName('contrato').DataType := ftString;
          QryPrincipal.Params.ParamByName('contrato').Value := global_contrato;
          QryPrincipal.Params.ParamByName('convenio').DataType := ftString;
          QryPrincipal.Params.ParamByName('convenio').Value := global_convenio;
          QryPrincipal.Params.ParamByName('orden').DataType := ftString;
          QryPrincipal.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
          QryPrincipal.Open;

          if QryPrincipal.RecordCount > 0 then
          begin
            iDivisor := iDivisor + 1;
            QryTotales.Params.ParamByName('contrato').DataType := ftString;
            QryTotales.Params.ParamByName('contrato').Value := global_contrato;
            QryTotales.Params.ParamByName('convenio').DataType := ftString;
            QryTotales.Params.ParamByName('convenio').Value := global_convenio;
            QryTotales.Params.ParamByName('Orden').DataType := ftString;
            QryTotales.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            QryTotales.Open;
            Progress.visible := True;
            Progress.MinValue := 1;
            Progress.MaxValue := QryPrincipal.RecordCount;
            Progress.Progress := 0;
            QryPrincipal.First;
            for iRecord := Progress.MinValue to Progress.MaxValue do
            begin
              procActualizaPonderado(global_contrato, global_convenio, tsNumeroOrden.Text, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
                (QryPrincipal.FieldValues['dPonderado'] + ROUNDTO((QryPrincipal.FieldValues['dValorPartida'] * dPonderadoAjuste) / dTotalDivisor, -5)) / 2);
              QryPrincipal.Next;
              Progress.Progress := iRecord;
            end;
          end
        end;

              // Ajusta todos los ponderados a 100
        QryTotales.Active := False;
        QryTotales.SQL.Clear;
        QryTotales.SQL.Add('Select SUM(dPonderado) as TotalPonderado from actividadesxorden Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sTipoActividad = "Actividad" Group By sNumeroOrden');
        QryTotales.Params.ParamByName('contrato').DataType := ftString;
        QryTotales.Params.ParamByName('contrato').Value := global_contrato;
        QryTotales.Params.ParamByName('convenio').DataType := ftString;
        QryTotales.Params.ParamByName('convenio').Value := global_convenio;
        QryTotales.Params.ParamByName('orden').DataType := ftString;
        QryTotales.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
        QryTotales.Open;
        dPonderadoAjuste := 100;
        if QryTotales.RecordCount > 0 then
          dPonderadoAjuste := 100 - QryTotales.FieldValues['TotalPonderado'];

        QryPrincipal.Active := False;
        QryPrincipal.Open;
        QryPrincipal.First;
        procActualizaPonderado(global_contrato, global_convenio, tsNumeroOrden.Text, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
          (QryPrincipal.FieldValues['dPonderado'] + dPonderadoAjuste));
      end;

      QryPrincipal.Destroy;
      QryTotales.Destroy;
      Connection.QryBusca2.Active := False;
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select Distinct sWBS From actividadesxorden ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sTipoActividad = "Paquete" Order By iNivel DESC');
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.QryBusca2.Open;
      while not Connection.QryBusca2.Eof do
      begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
          'sum(dCantidad * dVentaMN) as dMontoMN, sum(dCantidad * dVentaDLL) as dMontoDLL From actividadesxorden ' +
          'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWBSAnterior = :Paquete Group By sWBSAnterior');
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
        Connection.QryBusca.Params.ParamByName('Paquete').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
        Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
        Connection.QryBusca.Open;
        if Connection.QryBusca.RecordCount > 0 then
          if (not Connection.QryBusca.FieldByName('dFechaInicio').IsNull) and (not Connection.QryBusca.FieldByName('dFechaFinal').IsNull) then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update actividadesxorden SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
              'sWBS = :Paquete And sTipoActividad = "Paquete"');
            connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
            connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
            connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
            connection.zcommand.params.ParamByName('Orden').DataType := ftString;
            connection.zcommand.params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.zcommand.params.ParamByName('Paquete').DataType := ftString;
            connection.zcommand.params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
            connection.zcommand.params.ParamByName('Inicio').DataType := ftDate;
            connection.zcommand.params.ParamByName('Inicio').Value := Connection.QryBusca.FieldValues['dFechaInicio'];
            connection.zcommand.params.ParamByName('Final').DataType := ftDate;
            connection.zcommand.params.ParamByName('Final').Value := Connection.QryBusca.FieldValues['dFechaFinal'];
            connection.zcommand.params.ParamByName('Ponderado').DataType := ftFloat;
            if roundTo(Connection.QryBusca.FieldValues['dPonderado'], -2) >= 100 then
              connection.zcommand.params.ParamByName('Ponderado').Value := 100
            else
              connection.zcommand.params.ParamByName('Ponderado').Value := Connection.QryBusca.FieldValues['dPonderado'];
            connection.zcommand.params.ParamByName('MontoMN').DataType := ftFloat;
            connection.zcommand.params.ParamByName('MontoMN').Value := Connection.QryBusca.FieldValues['dMontoMN'];
            connection.zcommand.params.ParamByName('MontoDLL').DataType := ftFloat;
            connection.zcommand.params.ParamByName('MontoDLL').Value := Connection.QryBusca.FieldValues['dMontoDLL'];
            Connection.zCommand.ExecSQL;
          end;
        Connection.QryBusca2.Next
      end;
      ActividadesxAnexo.Active := False;
      ActividadesxAnexo.Open;


          // Linea Base del Proyecto ...
      dPonderadoGlobal := 0;
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('delete from avancesglobales WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :orden ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      connection.zCommand.ExecSQL;

      Connection.qryBusca2.Active := False;
      Connection.qryBusca2.SQL.Clear;
      Connection.qryBusca2.SQL.Add('Select dFechaInicio, dFechaFinal from actividadesxorden ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden and sTipoActividad = "Paquete" And iNivel = 0');
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.qryBusca2.Open;
      if connection.QryBusca2.FieldValues['dFechaFinal'] > connection.QryBusca2.FieldValues['dFechaInicio'] then
        iRecord := (Connection.qryBusca2.FieldValues['dFechaFinal'] - Connection.qryBusca2.FieldValues['dFechaInicio']) + 1
      else
        iRecord := 1;


      QryDistDiaria := tzReadOnlyQuery.Create(self);
      QryDistDiaria.Connection := connection.zconnection;

      Progress.visible := True;
      Progress.MinValue := 1;
      Progress.MaxValue := iRecord;
      Progress.Progress := 0;
      dFechaInicial := Connection.qryBusca2.FieldValues['dFechaInicio'];
      while dFechaInicial <= Connection.qryBusca2.FieldValues['dFechaFinal'] do
      begin
        if dPonderadoGlobal < 100 then
        begin
          QryDistDiaria.Active := False;
          QryDistDiaria.SQL.Clear;
          QryDistDiaria.SQL.Add('Select (SUM((d.dCantidad/a.dCantidad)* a.dPonderado) * 10000) as dAvance from distribuciondeactividades d ' +
            'inner join actividadesxorden a on (d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sNumeroOrden = a.sNumeroOrden And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad) ' +
            'Where d.sContrato = :contrato And d.sIdConvenio = :Convenio And d.sNumeroOrden = :Orden And d.dIdFecha = :fecha  Group By d.dIdFecha');
          QryDistDiaria.Params.ParamByName('contrato').DataType := ftString;
          QryDistDiaria.Params.ParamByName('contrato').Value := global_contrato;
          QryDistDiaria.Params.ParamByName('convenio').DataType := ftString;
          QryDistDiaria.Params.ParamByName('convenio').Value := global_convenio;
          QryDistDiaria.Params.ParamByName('orden').DataType := ftString;
          QryDistDiaria.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
          QryDistDiaria.Params.ParamByName('fecha').DataType := ftDate;
          QryDistDiaria.Params.ParamByName('fecha').Value := dFechaInicial;
          QryDistDiaria.Open;
          dPonderadoDia := 0;
          if QryDistDiaria.RecordCount > 0 then
            dPonderadoDia := trunc(QryDistDiaria.FieldValues['dAvance']) / 10000;

          if (dPonderadoGlobal + dPonderadoDia) > 100 then
          begin
            dPonderadoDia := 100 - dPonderadoGlobal;
            dPonderadoGlobal := 100;
          end
          else
            dPonderadoGlobal := dPonderadoGlobal + dPonderadoDia;
        end
        else
        begin
          dPonderadoDia := 0;
          dPonderadoGlobal := 100;
        end;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('insert into avancesglobales values (:contrato, :convenio, :fecha, :orden, :ponderadodia, :ponderadoglobal, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := Global_Convenio;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').Value := dFechaInicial;
        connection.zCommand.Params.ParamByName('orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
        connection.zCommand.Params.ParamByName('ponderadodia').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('ponderadodia').Value := dPonderadoDia;
        connection.zCommand.Params.ParamByName('ponderadoglobal').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('ponderadoglobal').Value := dPonderadoglobal;
        connection.zCommand.ExecSQL;
        dFechaInicial := dFechaInicial + 1;
        Progress.progress := Progress.progress + 1;
      end;


      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select Sum(dAvancePonderadoDia) as dAvanceContrato from avancesglobales ' +
        'where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :orden ' +
        'Group By sContrato');
      connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
      connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
      connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        if connection.qryBusca.FieldValues['dAvanceContrato'] <> 100 then
        begin
          dPonderadoAjuste := connection.qryBusca.FieldValues['dAvanceContrato'];
          dPonderadoAjuste := 100 - dPonderadoAjuste;

          connection.qryBusca2.Active := False;
          connection.qryBusca2.SQL.Clear;
          connection.qryBusca2.SQL.Add('Select dIdFecha, dAvancePonderadoDia from avancesglobales ' +
            'where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :orden and dAvancePonderadoDia > 0 ' +
            'Order By dIdFecha DESC ');
          connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
          connection.qryBusca2.Params.ParamByName('contrato').Value := global_contrato;
          connection.qryBusca2.Params.ParamByName('convenio').DataType := ftString;
          connection.qryBusca2.Params.ParamByName('convenio').Value := global_convenio;
          connection.qryBusca2.Params.ParamByName('orden').DataType := ftString;
          connection.qryBusca2.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
          connection.qryBusca2.Open;
          if connection.qryBusca2.RecordCount > 0 then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('UPDATE avancesglobales SET dAvancePonderadoDia = :ponderadodia, dAvancePonderadoGlobal = :ponderadoglobal ' +
              'WHERE sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = :orden And dIdFecha = :fecha');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := connection.qryBusca2.FieldValues['dIdFecha'];
            connection.zCommand.Params.ParamByName('ponderadodia').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('ponderadodia').Value := connection.qryBusca2.FieldValues['dAvancePonderadoDia'] + dPonderadoAjuste;
            connection.zCommand.Params.ParamByName('ponderadoglobal').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('ponderadoglobal').Value := 100;
            connection.zCommand.ExecSQL
          end
        end;
      QryDistDiaria.Destroy;
      Progress.Progress := 0;
      Progress.visible := False;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al ejecutar linea base', 0);
    end;
  end;
end;

procedure TfrmAjustaOrden.SpeedItem2Click(Sender: TObject);
begin
  begin
    if MessageDlg('Desea ejecutar el proceso de distribución automatica de partidas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      lProcesoDistribucion := True;
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('DELETE FROM distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
      connection.zCommand.Params.ParamByName('orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.zCommand.ExecSQL();
      ActividadesxAnexo.First;
      while not ActividadesxAnexo.EOF do
      begin
        if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
          btnDistribuye.Click;
        ActividadesxAnexo.Next
      end;
      lProcesoDistribucion := False;
    end
  end
end;

procedure TfrmAjustaOrden.tsNumeroOrdenExit(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_salidaERP;
  ActividadesxAnexo.Active := False;
  ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString;
  ActividadesxAnexo.Params.ParamByName('Contrato').Value := Global_Contrato;
  ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString;
  ActividadesxAnexo.Params.ParamByName('Convenio').Value := Global_Convenio;
  ActividadesxAnexo.Params.ParamByName('orden').DataType := ftString;
  ActividadesxAnexo.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
  ActividadesxAnexo.Open;
end;

procedure TfrmAjustaOrden.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_entradaERP;
end;

procedure TfrmAjustaOrden.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Grid_Actividades.SetFocus
end;

procedure TfrmAjustaOrden.btnFilesClick(Sender: TObject);
begin
  OpenXLS.Title := 'Inserta Archivo de Consulta';
  if OpenXLS.Execute then
    tsArchivo.Text := OpenXLS.FileName
end;

procedure TfrmAjustaOrden.btnResumidoClick(Sender: TObject);
var
  flcid, Fila: Integer;
  sValue: string;
  sFecha: string;
  arrFechas: array[1..100] of string;
  iColumna: Integer;
  iRegistros: Integer;
  ImpsContrato: string;
  ImpsNumeroOrden: string;
  sBkNumeroOrden: string;
  ImpsWbsAnterior: string;
  ImpsNumeroActividad: string;
  ImpdCantidad: Double;
  dCantidad: Double;
  dVentaMN: Currency;
  dVentaDLL: Currency;
  ImpfValor: Currency;
  lExiste: Boolean;
begin
  if tsArchivo.Text <> '' then
  begin
    if sOpcion = 'Periodos' then
    begin
      flcid := GetUserDefaultLCID;
      ExcelApplication1.Connect;
      ExcelApplication1.Visible[flcid] := true;
      ExcelApplication1.UserControl := true;
      try
        ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(tsArchivo.Text,
          emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
          emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

        ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
        Fila := 1;

        iColumna := 4;
        sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
        while (DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]) <> '30/12/1899') and (iColumna <= 100) do
        begin
          sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
          ArrFechas[iColumna - 3] := sFecha;
          iColumna := iColumna + 1;
        end;

        iColumna := iColumna - 4;
        Fila := Fila + 1;
        sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];
        if sValue = global_contrato then
        begin
          if MessageDlg('Desea actualizar el anexo DT?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            sBkNumeroOrden := '';
            while (sValue <> '') do
            begin
              ImpsContrato := ExcelWorkSheet1.Cells.Item[Fila, 1];
              if ImpsContrato = global_contrato then
              begin
                ImpsNumeroOrden := ExcelWorkSheet1.Cells.Item[Fila, 2];
                if ImpsNumeroOrden <> sBkNumeroOrden then
                begin
                  sBkNumeroOrden := ExcelWorkSheet1.Cells.Item[Fila, 2];
                  connection.QryBusca.Active := False;
                  connection.QryBusca.SQL.Clear;
                  connection.QryBusca.SQL.Add('select sContrato from ordenesdetrabajo Where sContrato = :contrato and sNumeroOrden = :Orden');
                  connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
                  connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
                  connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
                  connection.QryBusca.Params.ParamByName('orden').Value := sBkNumeroOrden;
                  connection.QryBusca.Open;
                  if connection.QryBusca.RecordCount > 0 then
                  begin
                    lExiste := True;
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('delete from ordenes_programamensual Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden');
                    Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
                    Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
                    Connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Orden').Value := sBkNumeroOrden;
                    connection.zCommand.ExecSQL();
                  end
                  else
                    lExiste := False;
                end;

                if lExiste then
                begin
                  ImpsNumeroActividad := ExcelWorkSheet1.Cells.Item[Fila, 3];

                  ImpsWbsAnterior := '';
                  dVentaMN := 0;
                  dVentaDLL := 0;
                  Connection.qryBusca.Active := False;
                  Connection.qryBusca.SQL.Clear;
                  Connection.qryBusca.SQL.Add('Select sWbs, dCantidad, dVentaMN, dVentaDLL From actividadesxorden ' +
                    'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
                  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
                  Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
                  Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
                  Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
                  Connection.qryBusca.Params.ParamByName('Orden').Value := ImpsNumeroOrden;
                  Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                  Connection.qryBusca.Params.ParamByName('Actividad').Value := ImpsNumeroActividad;
                  Connection.qryBusca.Open;
                  if Connection.QryBusca.RecordCount > 0 then
                  begin
                    ImpsWbsAnterior := Connection.QryBusca.FieldValues['sWbs'];
                    dCantidad := Connection.QryBusca.FieldValues['dCantidad'];
                    dVentaMN := Connection.QryBusca.FieldValues['dVentaMN'];
                    dVentaDLL := Connection.QryBusca.FieldValues['dVentaDLL'];
                  end;

                  for iRegistros := 1 to iColumna do
                  begin
                    ImpfValor := ExcelWorkSheet1.Cells.Item[Fila, iRegistros + 3];
                    if ImpfValor <> 0 then
                    begin
                      Connection.qryBusca.Active := False;
                      Connection.qryBusca.SQL.Clear;
                      Connection.qryBusca.SQL.Add('Select dt From ordenes_programamensual ' +
                        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
                      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
                      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
                      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
                      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
                      Connection.qryBusca.Params.ParamByName('Orden').Value := ImpsNumeroOrden;
                      Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
                      Connection.qryBusca.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                      Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                      Connection.qryBusca.Params.ParamByName('Actividad').Value := ImpsNumeroActividad;
                      Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
                      Connection.qryBusca.Params.ParamByName('Fecha').Value := StrToDate(ArrFechas[iRegistros]);
                      Connection.qryBusca.Open;
                      if Connection.qryBusca.RecordCount = 0 then
                      begin
                        try
                          connection.zCommand.Active := False;
                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add('INSERT INTO ordenes_programamensual ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, DT, DEmn, DEdll) ' +
                            ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :actividad, :dt, :DEmn, :DEdll)');
                          Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                          Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                          Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('orden').value := ImpsNumeroOrden;
                          Connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                          Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('actividad').value := ImpsNumeroActividad;
                          Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                          Connection.zCommand.Params.ParamByName('fecha').value := StrToDate(ArrFechas[iRegistros]);
                          if rOpc1.Checked then
                          begin
                            Connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DT').value := ImpfValor;
                            Connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DEmn').value := ImpfValor * dVentaMN;
                            Connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DEdll').value := ImpfValor * dVentaDLL;
                          end
                          else
                          begin
                            Connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DT').value := (ImpfValor / (dCantidad * dVentaMN)) * dCantidad;
                            Connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DEmn').value := ImpfValor;
                            Connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DEdll').value := 0;
                          end;
                          connection.zCommand.ExecSQL;
                        except
                          MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                        end
                      end
                      else
                      begin
                        try
                          connection.zCommand.Active := False;
                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add('UPDATE ordenes_programamensual SET DT = :dt, DEmn = :DEmn, DEdll = :DEdll ' +
                            'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                            'sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
                          Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                          Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                          Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('orden').value := ImpsNumeroOrden;
                          Connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                          Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('actividad').value := ImpsNumeroActividad;
                          Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                          Connection.zCommand.Params.ParamByName('fecha').value := StrToDate(ArrFechas[iRegistros]);
                          if rOpc1.Checked then
                          begin
                            Connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DT').value := ImpfValor;
                            Connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DEmn').value := ImpfValor * dVentaMN;
                            Connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DEdll').value := ImpfValor * dVentaDLL;
                          end
                          else
                          begin
                            Connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DT').value := (ImpfValor / (dCantidad * dVentaMN)) * dCantidad;
                            Connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DEmn').value := ImpfValor;
                            Connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
                            Connection.zCommand.Params.ParamByName('DEdll').value := 0;
                          end;
                          connection.zCommand.ExecSQL;
                        except
                          MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                        end
                      end
                    end
                  end
                end
                else
                  MessageDlg('El archivo que desea importar pertenece a otro contrato', mtInformation, [mbOk], 0);
              end;
              Fila := Fila + 1;
              sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];
            end;
            MessageDlg('Proceso Terminado.', mtInformation, [mbOk], 0);
          end
        end
      except
        MessageDlg('No se pudo lograr la conexion con aplicación externa', mtInformation, [mbOk], 0);
      end;
      ExcelApplication1.Quit;
      ExcelApplication1.Disconnect;
    end;

    if sOpcion = 'Programa' then
    begin
      flcid := GetUserDefaultLCID;
      ExcelApplication1.Connect;
      ExcelApplication1.Visible[flcid] := true;
      ExcelApplication1.UserControl := true;
      try
        ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(tsArchivo.Text,
          emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
          emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

        ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
        Fila := 1;
        sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];
        if sValue = global_contrato then
        begin
          if MessageDlg('Desea actualizar todos los programas contenidos en el archivo seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
                        // Se elimina el catalogo de Anexo
            ImpsNumeroOrden := '';
            sBkNumeroOrden := '';
            while (sValue <> '') do
            begin
              ImpsContrato := ExcelWorkSheet1.Cells.Item[Fila, 1];
              ImpsNumeroOrden := ExcelWorkSheet1.Cells.Item[Fila, 2];
              if ImpsNumeroOrden <> sBkNumeroOrden then
              begin
                                // primero, ajusto las fechas de ejecucion de las partidas a la fecha de ejecucion de la orden ...
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select dFIProgramado, dFFProgramado From ordenesdetrabajo ' +
                  'Where sContrato = :Contrato And sNumeroOrden = :Orden');
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
                Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Orden').Value := sBkNumeroOrden;
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount > 0 then
                begin
                                    //Actualizo la orden
                  Connection.zCommand.Active := False;
                  Connection.zCommand.SQL.Clear;
                  Connection.zCommand.SQL.Add('Update actividadesxorden SET dFechaInicio = :Inicio, dFechaFinal = :Final ' +
                    'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :convenio');
                  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
                  connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Orden').Value := sBkNumeroOrden;
                  connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
                  connection.zCommand.Params.ParamByName('Inicio').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('Inicio').Value := Connection.qryBusca.FieldValues['dFIProgramado'];
                  connection.zCommand.Params.ParamByName('Final').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('Final').Value := Connection.qryBusca.FieldValues['dFFProgramado'];
                  connection.zCommand.ExecSQL;
                end;
                sBkNumeroOrden := ExcelWorkSheet1.Cells.Item[Fila, 2];
                connection.QryBusca.Active := False;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('select sContrato from ordenesdetrabajo Where sContrato = :contrato and sNumeroOrden = :Orden');
                connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
                connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
                connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
                connection.QryBusca.Params.ParamByName('orden').Value := sBkNumeroOrden;
                connection.QryBusca.Open;
                if connection.QryBusca.RecordCount > 0 then
                begin
                  lExiste := True;
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('delete from actividadesxorden Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden');
                  Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
                  Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
                  Connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Orden').Value := sBkNumeroOrden;
                  connection.zCommand.ExecSQL();
                end
                else
                  lExiste := False;
              end;
              if lExiste then
              begin
                ImpsNumeroActividad := ExcelWorkSheet1.Cells.Item[Fila, 3];
                ImpdCantidad := ExcelWorkSheet1.Cells.Item[Fila, 4];

                connection.QryBusca.Active := False;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('select sWbs from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio and sTipoActividad = "Actividad" and sNumeroActividad = :Actividad');
                connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
                connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
                connection.QryBusca.Params.ParamByName('convenio').DataType := ftString;
                connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio;
                connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
                connection.QryBusca.Params.ParamByName('actividad').Value := ImpsNumeroActividad;
                connection.QryBusca.Open;
                if connection.QryBusca.RecordCount > 0 then
                  lVerificaPaquetes(global_contrato, global_convenio, ImpsNumeroOrden, connection.QryBusca.FieldValues['sWbs'], ImpsNumeroActividad, ImpdCantidad, frmAjustaOrden)
                else
                begin
                  MessageDlg('La Partida No Existe los Montos de la Orden No cuadraran ' + ImpsNumeroActividad, mtInformation, [mbOk], 0);
                  MessageDlg('Proceso Cancelado ' + ImpsNumeroActividad, mtInformation, [mbOk], 0);
                  exit
                end;

              end;
              Fila := Fila + 1;
              sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];
            end;

                        // primero, ajusto las fechas de ejecucion de las partidas a la fecha de ejecucion de la orden ...
            Connection.qryBusca.Active := False;
            Connection.qryBusca.SQL.Clear;
            Connection.qryBusca.SQL.Add('Select dFIProgramado, dFFProgramado From ordenesdetrabajo ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Orden').Value := sBkNumeroOrden;
            Connection.qryBusca.Open;
            if Connection.qryBusca.RecordCount > 0 then
            begin
                            //Actualizo la orden
              Connection.zCommand.Active := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('Update actividadesxorden SET dFechaInicio = :Inicio, dFechaFinal = :Final ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :convenio');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := sBkNumeroOrden;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('Inicio').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Inicio').Value := Connection.qryBusca.FieldValues['dFIProgramado'];
              connection.zCommand.Params.ParamByName('Final').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Final').Value := Connection.qryBusca.FieldValues['dFFProgramado'];
              connection.zCommand.ExecSQL;
            end;

            MessageDlg('Proceso Terminado.', mtInformation, [mbOk], 0);
          end
        end
      except
        MessageDlg('No se pudo lograr la conexion con aplicación externa', mtInformation, [mbOk], 0);
      end;
      ExcelApplication1.Quit;
      ExcelApplication1.Disconnect;
    end
  end
end;

procedure TfrmAjustaOrden.grImportarExit(Sender: TObject);
begin
  grImportar.Visible := False
end;

procedure TfrmAjustaOrden.sRefreshClick(Sender: TObject);
begin
    // Antes de Ponderar conceptos, se deberan validar todos los reportes diarios del contrato ...
  connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('select sNumeroReporte from reportediario Where sContrato =:Contrato and sNumeroOrden = :Orden and lStatus <> "Autorizado"');
  connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
  connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
  connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
  connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
    MessageDlg('Existen Reportes Diario pendientes de autorizar. Autorize todos los reportes diario para poder realizar el calculo de ponderados de la orden.', mtInformation, [mbOk], 0)
  else
    if MessageDlg('Desea Ponderar los Conceptos de la Orden de Trabajo Seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if ActividadesxAnexo.RecordCount > 0 then
      begin
                // Actualizacion de ponderados ....
                //Calculo el monto del programa ...
        if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Financiero' then
        begin
          dMontoContrato := 0;
          Connection.qryBusca.Active := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaMN) as dMontoMN From actividadesxorden ' +
            'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" group by sContrato');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Open;
          if Connection.qryBusca.RecordCount > 0 then
            dMontoContrato := Connection.qryBusca.FieldValues['dMontoMN'];

          if dMontoContrato > 0 then
          begin
            Connection.zCommand.Active := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = (((dCantidad * dVentaMN) / :montocontrato) * 100) ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad"');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
            connection.zCommand.Params.ParamByName('montocontrato').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('montocontrato').Value := dMontoContrato;
            connection.zCommand.ExecSQL;
          end;
        end
        else
          if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Duracion' then
          begin
                         //Calculo el monto del programa ...
            Connection.qryBusca.Active := False;
            Connection.qryBusca.SQL.Clear;
            Connection.qryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From actividadesxorden ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" group by sContrato');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
            Connection.qryBusca.Open;
            if connection.qryBusca.RecordCount > 0 then
            begin
              Connection.zCommand.Active := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = ((dDuracion / :duracioncontrato) * 100) ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad"');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('duracioncontrato').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('duracioncontrato').Value := Connection.qryBusca.FieldValues['dDuracionTotal'];
              connection.zCommand.ExecSQL;
            end
          end
          else
          begin
                        // Primero el Financiero MN
            dMontoContrato := 0;
            Connection.qryBusca.Active := False;
            Connection.qryBusca.SQL.Clear;
            Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaMN) as dMontoMN From actividadesxorden ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" group by sContrato');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
            Connection.qryBusca.Open;
            if Connection.qryBusca.RecordCount > 0 then
              dMontoContrato := Connection.qryBusca.FieldValues['dMontoMN'];

            if dMontoContrato > 0 then
            begin
              Connection.zCommand.Active := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = (((dCantidad * dVentaMN) / :montocontrato) * 100) ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad"');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('montocontrato').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('montocontrato').Value := dMontoContrato;
              connection.zCommand.ExecSQL;
            end;

                        // Primero el Financiero DLL
            dMontoContrato := 0;
            Connection.qryBusca.Active := False;
            Connection.qryBusca.SQL.Clear;
            Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaDLL) as dMontoDLL From actividadesxorden ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" group by sContrato');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
            Connection.qryBusca.Open;
            if Connection.qryBusca.RecordCount > 0 then
              dMontoContrato := Connection.qryBusca.FieldValues['dMontoDLL'];

            if dMontoContrato > 0 then
            begin
              Connection.zCommand.Active := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = ((dPonderado + (((dCantidad * dVentaDLL) / :montocontrato) * 100)) / 2) ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad"');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('montocontrato').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('montocontrato').Value := dMontoContrato;
              connection.zCommand.ExecSQL;
            end;

                        // Fisico en Moneda Nacional
                        //Calculo el monto del programa ...
            Connection.qryBusca.Active := False;
            Connection.qryBusca.SQL.Clear;
            Connection.qryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From actividadesxorden ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" group by sContrato');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
            Connection.qryBusca.Open;
            if connection.qryBusca.RecordCount > 0 then
            begin
              Connection.zCommand.Active := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = (dPonderado + (((dDuracion / :duracioncontrato) * 100)) / 2) ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad"');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('duracioncontrato').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('duracioncontrato').Value := Connection.qryBusca.FieldValues['dDuracionTotal'];
              connection.zCommand.ExecSQL;
            end
          end;
        Connection.qryBusca2.Active := False;
        Connection.qryBusca2.SQL.Clear;
        Connection.qryBusca2.SQL.Add('Select Distinct sWBS From actividadesxorden ' +
          'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC');
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
        Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
        Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
        Connection.qryBusca2.Open;
        while not Connection.qryBusca2.Eof do
        begin
          Connection.qryBusca.Active := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
            'sum(dCantidad * dVentaMN) as dMontoMN, sum(dCantidad * dVentaDLL) as dMontoDLL, ' +
            'sum(dCantidad * dCostoMN) as dMontoCostoMN, sum(dCantidad * dCostoDLL) as dMontoCostoDLL From actividadesxorden ' +
            'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sWBSAnterior = :Paquete Group By sWBSAnterior');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Paquete').Value := Connection.qryBusca2.FieldValues['sWBS'];
          Connection.qryBusca.Open;
          if Connection.qryBusca.RecordCount > 0 then
            if (not Connection.qryBusca.FieldByName('dFechaInicio').IsNull) and (not Connection.qryBusca.FieldByName('dFechaFinal').IsNull) then
            begin
              Connection.zCommand.Active := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('Update actividadesxorden SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, ' +
                'dCostoMN = :MontoCostoMN, dCostoDLL = :MontoCostoDLL, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And ' +
                'sWBS = :Paquete And sTipoActividad = "Paquete"');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('Paquete').DataType := ftString;
              connection.zCommand.Params.ParamByName('Paquete').Value := Connection.qryBusca2.FieldValues['sWBS'];
              connection.zCommand.Params.ParamByName('Inicio').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Inicio').Value := Connection.qryBusca.FieldValues['dFechaInicio'];
              connection.zCommand.Params.ParamByName('Final').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Final').Value := Connection.qryBusca.FieldValues['dFechaFinal'];
              connection.zCommand.Params.ParamByName('Ponderado').DataType := ftFloat;
              if roundTo(Connection.qryBusca.FieldValues['dPonderado'], -2) >= 100 then
                connection.zCommand.Params.ParamByName('Ponderado').Value := 100
              else
                connection.zCommand.Params.ParamByName('Ponderado').Value := Connection.qryBusca.FieldValues['dPonderado'];
              connection.zCommand.Params.ParamByName('MontoMN').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('MontoMN').Value := Connection.qryBusca.FieldValues['dMontoMN'];
              connection.zCommand.Params.ParamByName('MontoDLL').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('MontoDLL').Value := Connection.qryBusca.FieldValues['dMontoDLL'];
              connection.zCommand.Params.ParamByName('MontoCostoMN').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('MontoCostoMN').Value := Connection.qryBusca.FieldValues['dMontoCostoMN'];
              connection.zCommand.Params.ParamByName('MontoCostoDLL').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('MontoCostoDLL').Value := Connection.qryBusca.FieldValues['dMontoCostoDLL'];
              connection.zCommand.ExecSQL;
            end;
          Connection.qryBusca2.Next
        end;
      end;
    end;
  ActividadesxAnexo.Active := False;
  ActividadesxAnexo.Open;
end;

procedure TfrmAjustaOrden.sProgramaClick(Sender: TObject);
begin
  grImportar.Visible := True;
  sOpcion := 'Programa';
  tsArchivo.SetFocus
end;

procedure TfrmAjustaOrden.sImportar2Click(Sender: TObject);
begin
  sOpcion := 'Periodos';
  grImportar.Visible := True;
  tsArchivo.SetFocus
end;

procedure TfrmAjustaOrden.grImportarEnter(Sender: TObject);
begin
  if sOpcion = 'Programa' then
    grImportar.Caption := 'Importar Programa de Trabajo'
  else
    grImportar.Caption := 'Importar Programa de Ejecucion'
end;

procedure TfrmAjustaOrden.btnEliminarClick(Sender: TObject);
begin
  if MessageDlg('Desea elimiar todo el contenido (Mensual/Diario) de la orden de trabajo seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('DELETE FROM distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
    connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
    connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
    Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
    Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
    connection.zCommand.ExecSQL();

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('DELETE FROM ordenes_programamensual Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
    connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
    connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
    Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
    Connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
    connection.zCommand.ExecSQL();
  end
end;


procedure TfrmAjustaOrden.btnAcumuladosClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_programasAcumulados.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_programasAcumulados.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;
  try
    AnexoDt.Active := False;
    AnexoDT.SQL.Clear;
    AnexoDT.SQL.Add('Select a.sNumeroOrden, a.mDescripcion, a.dFIProgramado, a.dFFProgramado, ' +
      'year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, sum(d.DEmn) as dMensualMN from ordenesdetrabajo a ' +
      'inner join ordenes_programamensual d on (a.sContrato = d.sContrato And d.sIdConvenio = :Convenio and a.sNumeroOrden = d.sNumeroOrden) ' +
      'Where a.sContrato = :contrato Group By sNumeroOrden, Year(d.dIdFecha), month(d.dIdFecha) Order By a.sIdFolio, Year(d.dIdFecha), month(d.dIdFecha)');
    AnexoDT.Params.ParamByName('Contrato').DataType := ftString;
    AnexoDT.Params.ParamByName('Contrato').Value := global_contrato;
    AnexoDT.Params.ParamByName('Convenio').DataType := ftString;
    AnexoDT.Params.ParamByName('Convenio').Value := global_convenio;
    dsAnexoDT.FieldAliases.Clear;
    dsAnexoDT.DataSet := AnexoDT;
    dsAnexoDT.Open;
    AnexoDT.Open;

    frxAnexo.LoadFromFile(global_files +global_MiReporte+ '_ProgramasAcumulados.fr3');
    frxAnexo.PreviewOptions.MDIChild := True;
    frxAnexo.PreviewOptions.Modal := False;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized();
    frxAnexo.PreviewOptions.ShowCaptions := False;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth;
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al hacer clic en el boton Montos Acumulados', 0);
    end;
  end;

end;

end.

