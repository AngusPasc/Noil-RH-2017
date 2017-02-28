unit frmNomina_EmpleadosPorNomina;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_Connection, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, DBLabelEdit, NxGrid, NxColumnClasses, Buttons, Menus,
  frmNomina_ProcesarNomina, ComCtrls, masUtilerias, frmNomina_CapturaEgresos;

type
  Tfrm_Nomina_EmpleadosPorNomina = class(TForm)
    ds_Nominas: TDataSource;
    zq_Nominas: TZQuery;
    zq_NominasiId: TIntegerField;
    zq_NominassNomina: TStringField;
    zq_NominasdFechaInicial: TDateField;
    zq_NominasdFechaFinal: TDateField;
    zq_NominasDIAS: TLargeintField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Grid_EmpleadosPorNomina: TNextGrid;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    btnEdit: TBitBtn;
    PopUp_DetallesDeEmpleado: TPopupMenu;
    Detallesdepersonal1: TMenuItem;
    Activarygenerarvalorespordefecto1: TMenuItem;
    NxTextColumn5: TNxNumberColumn;
    zq_NominasiIdEgreso: TIntegerField;
    Label1: TLabel;
    Label_Nomina: TLabel;
    NxTextColumn6: TNxTextColumn;
    FiltroEmpleado: TEdit;
    zq_DetallesEgresos: TZQuery;
    zq_DetallesEgresosdIdFecha: TDateField;
    zq_DetallesEgresosiIdFolio: TIntegerField;
    zq_DetallesEgresossIdEgreso: TStringField;
    zq_DetallesEgresossTipoEgreso: TStringField;
    zq_DetallesEgresossIdProveedor: TStringField;
    zq_DetallesEgresossRazonSocial: TStringField;
    zq_DetallesEgresossIdFactura: TStringField;
    zq_DetallesEgresosmDescripcion: TMemoField;
    zq_DetallesEgresosdImporte: TFloatField;
    zq_DetallesEgresosdFechaComprobacion: TDateField;
    zq_DetallesEgresosdIva: TFloatField;
    zq_DetallesEgresosdRetencion: TFloatField;
    zq_DetallesEgresosdIspt: TFloatField;
    zq_DetallesEgresosdIsr: TFloatField;
    zq_DetallesEgresosdsubtotal: TFloatField;
    zq_DetallesEgresossCheque: TStringField;
    zq_DetallesEgresossPoliza: TStringField;
    zq_DetallesEgresoseReal: TStringField;
    zq_Egresos: TZQuery;
    zq_EgresosdIdFecha: TDateField;
    zq_EgresosiIdFolio: TIntegerField;
    zq_EgresossTipoMovimiento: TStringField;
    zq_EgresossIdArea: TStringField;
    zq_EgresossIdNumeroCuenta: TStringField;
    zq_EgresossNumeroOrden: TStringField;
    zq_EgresossReferencia: TStringField;
    zq_EgresossIdProveedor: TStringField;
    zq_EgresossIdCompania: TStringField;
    zq_EgresossRFC: TStringField;
    zq_EgresossRazonSocial: TStringField;
    zq_EgresossDomicilio: TStringField;
    zq_EgresossCiudad: TStringField;
    zq_EgresossCP: TStringField;
    zq_EgresossEstado: TStringField;
    zq_EgresossTelefono: TStringField;
    zq_EgresosdImporteTotal: TFloatField;
    zq_EgresoslComprobado: TStringField;
    zq_EgresossStatus: TStringField;
    zq_EgresosmDescripcion: TMemoField;
    zq_EgresosdIva: TFloatField;
    zq_EgresoslAplicaiva: TStringField;
    zq_EgresossPoliza: TStringField;
    zq_EgresosdFechaFactura: TDateField;
    zq_EgresosiFolio: TIntegerField;
    zq_EgresosiIdStatus: TIntegerField;
    zq_EgresossTipoPago: TStringField;
    zq_EgresossFormaPago: TStringField;
    zq_EgresossNumeroDeCuenta: TStringField;
    zq_EgresossNumeroPedido: TStringField;
    zq_EgresosiImprimeProveedor: TIntegerField;
    btnPost: TBitBtn;
    btnProcesarNomina: TBitBtn;
    Progreso: TProgressBar;
    Label2: TLabel;
    Label3: TLabel;
    Query: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure SiguienteCajon(Sender: TObject; var Key: Char);
    procedure CargarTablaDeEmpleados;
    procedure btnEditClick(Sender: TObject);
    procedure Detallesdepersonal1Click(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure Grid_EmpleadosPorNominaAfterEdit(Sender: TObject; ACol,
      ARow: Integer; Value: WideString);
    procedure RegenerarFooter;
    procedure Activarygenerarvalorespordefecto1Click(Sender: TObject);
    procedure FiltroEmpleadoEnter(Sender: TObject);
    procedure FiltroEmpleadoExit(Sender: TObject);
    procedure FiltroEmpleadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnProcesarNominaClick(Sender: TObject);
    procedure Grid_EmpleadosPorNominaHeaderClick(Sender: TObject;
      ACol: Integer);
    procedure Grid_EmpleadosPorNominaChange(Sender: TObject; ACol,
      ARow: Integer);
    procedure RecalcularEgresos;
    procedure Grid_EmpleadosPorNominaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_EmpleadosPorNomina: Tfrm_Nomina_EmpleadosPorNomina;
  iId_Nomina, iIdEgreso, iStatusNomina: Integer;
  DiasTotales, dImporteNomina: Real;
  FlagToEdit, FlagEdited, aDef: Boolean;

implementation
Uses
  frmDetallesNominasEmpleados;

{$R *.dfm}

procedure Tfrm_Nomina_EmpleadosPorNomina.RecalcularEgresos;
Var
  Query: TZQuery;
  I: Integer;
begin
  aDef := False;
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;
    Query.SQL.Text := 'SELECT n.*, (SELECT COUNT(iId) FROM nom_empleadospornomina WHERE iId_Nomina = n.iId) AS dTotalEmpleados, MAX(n.iId) FROM nom_nominas AS n WHERE n.iProcesada = 1';
    Query.Open;
    if Query.RecordCount > 0 then begin
      iId_Nomina := Query.FieldByName('iId').AsInteger;
      DiasTotales := Query.FieldByName('dDias').AsFloat;
      iIdEgreso := Query.FieldByName('iIdEgreso').AsInteger;
      iStatusNomina := Query.FieldByName('iStatus').AsInteger;
      dImporteNomina := Query.FieldByName('dImporteDestinado').AsFloat;
      for i := 0 to ComponentCount - 1 do begin
        if (Components[i] is TLabel) then begin
          TLabel(Components[i]).Caption := MultiStringReplace(TLabel(Components[i]).Caption, ['{NOMINA}', '{FECHA_INICIAL}', '{FECHA_FINAL}', '{Importe}'], [Query.FieldByName('sNomina').AsString, Query.FieldByName('dFechaInicial').AsString, Query.FieldByName('dFechaFinal').AsString, FormatFloat('$ ###,##0.00', Query.FieldByName('dImporteDestinado').AsFloat)], [rfReplaceAll, rfIgnoreCase]);
        end;
      end;
    end;
  Finally
    Label3.Caption := FormatFloat('$ ###,##0.00', Query.FieldByName('dImporteDestinado').AsFloat);
    Query.Free;
  End;

//  CargarTablaDeEmpleados;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.Activarygenerarvalorespordefecto1Click(
  Sender: TObject);
Var
  Query, QueryBusca: TZQuery;
  sIdEmpleado, QryTxt: String;
  SumaPercepciones, SumaDeducciones, dImporteForma, dPorcentaje, dSalarioTotalDiario: Real;
begin
  FlagToEdit := False;
  sIdEmpleado := Grid_EmpleadosPorNomina.Cells[5, Grid_EmpleadosPorNomina.SelectedRow];
  Grid_EmpleadosPorNomina.Cell[3, Grid_EmpleadosPorNomina.SelectedRow].AsFloat := DiasTotales;
  Grid_EmpleadosPorNomina.Cells[1, Grid_EmpleadosPorNomina.SelectedRow] := 'True';
    Try
      QueryBusca := TZQuery.Create(Self);
      QueryBusca.Connection := Connection.zConnection;

      QueryBusca.SQL.Text := 'SELECT (dSalarioIntegrado * '+FloatToStr(DiasTotales)+') AS dSalarioTotalDiario FROM empleados WHERE sIdEmpleado = ' + QuotedStr(sIdEmpleado);
      QueryBusca.Open;
      if QueryBusca.RecordCount > 0 then begin
        dSalarioTotalDiario := QueryBusca.FieldByName('dSalarioTotalDiario').AsFloat;
      end else begin
        dSalarioTotalDiario := 0;
      end;

      QueryBusca.Active := False;
      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Text := 'DELETE FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' AND lIncidenciaProxima = "False"';
      QueryBusca.ExecSQL;

      //Busca las percepciones por defecto del empleado:
      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Add('' +
      'SELECT ' +
      '	* ' +
      'FROM nom_prestacionesporempleado AS ppe ' +
      '	INNER JOIN nom_catalogodeprestaciones AS cp ON (cp.iId = ppe.iId_Prestacion) ' +
      'WHERE ppe.sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' ' +
      '');
      QueryBusca.Open;

      //Las inserta en esta nómina.
      Try
        Query := TZQuery.Create(Self);
        Query.Connection := Connection.ZConnection;
        SumaPercepciones := 0;

        Query.SQL.Clear;
        Query.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' AND lBloqueado = ''True''';
        Query.Open;
        if Query.RecordCount = 0 then begin
          Query.Append;
          Query.FieldByName('iId_Nomina').AsInteger := iId_Nomina;
          Query.FieldByName('sIdEmpleado').AsString := sIdEmpleado;
          Query.FieldByName('dCantidad').AsInteger := 1;
          Query.FieldByName('sDescripcion').AsString := 'SALARIO';
          Query.FieldByName('dImporte').AsFloat := dSalarioTotalDiario;
          Query.FieldByName('lImprime').AsString := 'Si';
          Query.FieldByName('lTipo').AsString := 'Percepcion';
          Query.FieldByName('lForma').AsString := 'Directo';
          Query.FieldByName('dPorcentaje').AsString := '0';
          Query.FieldByName('lBloqueado').AsString := 'True';
          Query.Post;
        end;
        SumaPercepciones := dSalarioTotalDiario;

        While Not QueryBusca.Eof do begin
          if QueryBusca.FieldByName('lForma').AsString = 'Porcentaje' then begin
            dImporteForma := (dSalarioTotalDiario * (QueryBusca.FieldByName('dImporte').AsFloat / 100));
            dPorcentaje := QueryBusca.FieldByName('dImporte').AsFloat;
          end else begin
            dImporteForma := QueryBusca.FieldByName('dImporte').AsFloat;
            dPorcentaje := 0;
          end;
          Query.SQL.Clear;
          Query.SQL.Text := 'INSERT INTO nom_detallesporempleado (iId_Nomina, sIdEmpleado, dCantidad, sDescripcion, dImporte, lImprime, lTipo, dPorcentaje, iId_Catalogo) VALUES ('+QuotedStr(IntToStr(iId_Nomina))+', '+QuotedStr(sIdEmpleado)+', 1, '+QuotedStr(QueryBusca.FieldByName('sNombre').AsString)+', '+FloatToStr(dImporteForma)+', ''Si'', ''Percepcion'', '+FloatToStr(dPorcentaje)+', '+QuotedStr(QueryBusca.FieldByName('iId_Prestacion').AsString)+') ';
          Query.ExecSQL;
          SumaPercepciones := (SumaPercepciones + dImporteForma);
          QueryBusca.Next;
        end;
      Finally
        Query.Free;
      End;

    Finally
      QueryBusca.Free;
    End;

    //Deducciones:

    Try
      QueryBusca := TZQuery.Create(Self);
      QueryBusca.Connection := Connection.zConnection;

      QueryBusca.Active := False;
      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Text := 'DELETE FROM nom_detallesporempleado WHERE lTipo = ''Deduccion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' AND lIncidenciaProxima = "False"';
      QueryBusca.ExecSQL;

      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Add('' +
      'SELECT ' +
      '	* ' +
      'FROM nom_deduccionesporempleado AS ppe ' +
      '	INNER JOIN nom_catalogodededucciones AS cp ON (cp.iId = ppe.iId_Deduccion) ' +
      'WHERE ppe.sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' ' +
      '');
      QueryBusca.Open;

      Try
        Query := TZQuery.Create(Self);
        Query.Connection := Connection.ZConnection;
        SumaDeducciones := 0;
        While Not QueryBusca.Eof do begin
          if QueryBusca.FieldByName('lForma').AsString = 'Porcentaje' then begin
            dImporteForma := (dSalarioTotalDiario * (QueryBusca.FieldByName('dImporte').AsFloat / 100));
            dPorcentaje := QueryBusca.FieldByName('dImporte').AsFloat;
          end else begin
            dImporteForma := QueryBusca.FieldByName('dImporte').AsFloat;
            dPorcentaje := 0;
          end;
          Query.SQL.Clear;
          Query.SQL.Text := 'INSERT INTO nom_detallesporempleado (iId_Nomina, sIdEmpleado, dCantidad, sDescripcion, dImporte, lImprime, lTipo, dPorcentaje, lForma, iId_Catalogo) VALUES ('+QuotedStr(IntToStr(iId_Nomina))+', '+QuotedStr(sIdEmpleado)+', 1, '+QuotedStr(QueryBusca.FieldByName('sNombre').AsString)+', '+FloatToStr(dImporteForma)+', ''Si'', ''Deduccion'', '+FloatToStr(dPorcentaje)+', '+QuotedStr(QueryBusca.FieldByName('lForma').AsString)+', '+QuotedStr(QueryBusca.FieldByName('iId_Deduccion').AsString)+') ';
          SumaDeducciones := (SumaDeducciones + dImporteForma);
          Try
            Query.ExecSQL;
          Except
            On E: Exception do begin
              ShowMessage(E.Message);
            end;
          End;
          QueryBusca.Next;
        end;
      Finally
        Query.Free;
      End;

    Finally
      Grid_EmpleadosPorNomina.Cell[4, Grid_EmpleadosPorNomina.SelectedRow].AsFloat := (SumaPercepciones - SumaDeducciones);
      //Busca y registra el empleado en la nómina seleccionada.
      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Text := 'SELECT * FROM nom_empleadospornomina WHERE sIdEmpleado = '+QuotedStr(Grid_EmpleadosPorNomina.Cells[5, Grid_EmpleadosPorNomina.SelectedRow])+' AND iId_Nomina = ' + IntToStr(iId_Nomina);
      QueryBusca.Open;
      if QueryBusca.RecordCount > 0 then begin
        QryTxt := 'UPDATE nom_empleadospornomina SET dImporte = '+Grid_EmpleadosPorNomina.Cells[4, Grid_EmpleadosPorNomina.SelectedRow]+', lIncluir = True, dDiasLaborados = '+Grid_EmpleadosPorNomina.Cells[3, Grid_EmpleadosPorNomina.SelectedRow]+' WHERE sIdEmpleado = '+QuotedStr(Grid_EmpleadosPorNomina.Cells[5, Grid_EmpleadosPorNomina.SelectedRow])+' AND iId_Nomina = ' + IntToStr(iId_Nomina);
      end else begin
        QryTxt := 'INSERT INTO nom_empleadospornomina (iId_Nomina, sIdEmpleado, dImporte, dDiasLaborados, lIncluir) VALUES ('+IntToStr(iId_Nomina)+', '+QuotedStr(Grid_EmpleadosPorNomina.Cells[5, Grid_EmpleadosPorNomina.SelectedRow])+', '+Grid_EmpleadosPorNomina.Cells[4, Grid_EmpleadosPorNomina.SelectedRow]+', '+Grid_EmpleadosPorNomina.Cells[3, Grid_EmpleadosPorNomina.SelectedRow]+', ''True'')';
      end;
      QueryBusca.Active := False;
      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Text := QryTxt;
      QueryBusca.ExecSQL;



      zq_DetallesEgresos.Active := False;
      zq_DetallesEgresos.Params.ParamByName('Folio').AsInteger := iIdEgreso;
      zq_DetallesEgresos.Params.ParamByName('IdEmpleado').AsString := sIdEmpleado;
      zq_DetallesEgresos.Open;
      Try
        if zq_DetallesEgresos.RecordCount > 0 then begin
          zq_DetallesEgresos.Edit;
        end else begin
          zq_Egresos.Active := False;
          zq_Egresos.Params.ParamByName('iIdEgreso').AsInteger := iIdEgreso;
          zq_Egresos.Open;
          
          zq_DetallesEgresos.Append;
          zq_DetallesEgresos.FieldByName('dIdFecha').AsDateTime := zq_Egresos.FieldByName('dIdFecha').AsDateTime;
          zq_DetallesEgresos.FieldByName('iIdFolio').AsInteger := iIdEgreso;
          zq_DetallesEgresos.FieldByName('sIdEgreso').AsString := 'NOMINA';
          zq_DetallesEgresos.FieldByName('sTipoEgreso').AsString := 'Empleados';
          zq_DetallesEgresos.FieldByName('sIdProveedor').AsString := sIdEmpleado;
          zq_DetallesEgresos.FieldByName('sRazonSocial').AsString := Grid_EmpleadosPorNomina.Cells[2, Grid_EmpleadosPorNomina.SelectedRow];
          zq_DetallesEgresos.FieldByName('mDescripcion').AsString := 'PAGO DE NOMINA';
          zq_DetallesEgresos.FieldByName('dFechaComprobacion').AsDateTime := zq_Egresos.FieldByName('dIdFecha').AsDateTime;
          zq_DetallesEgresos.FieldByName('sCheque').AsString := zq_Egresos.FieldByName('sReferencia').AsString;
          zq_DetallesEgresos.FieldByName('sPoliza').AsString := '2';
          zq_DetallesEgresos.FieldByName('eReal').AsString := 'Si';
        end;
        zq_DetallesEgresos.FieldByName('dImporte').AsString := Grid_EmpleadosPorNomina.Cells[4, Grid_EmpleadosPorNomina.SelectedRow];
        zq_DetallesEgresos.FieldByName('dSubTotal').AsString := Grid_EmpleadosPorNomina.Cells[4, Grid_EmpleadosPorNomina.SelectedRow];
        zq_DetallesEgresos.Post;
      Except
        On E: Exception do begin
          //;
        end;
      End;

      QueryBusca.Free;
    End;
  FlagToEdit := True;
  CargarTablaDeEmpleados;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.btnProcesarNominaClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Nomina_ProcesarNomina, frm_Nomina_ProcesarNomina);
  frm_Nomina_ProcesarNomina.Show;
  Close;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.btnEditClick(Sender: TObject);
begin
//  btnEdit.Enabled := False;
//  btnPost.Enabled := True;
//  btnCancel.Enabled := False;
//  FlagEdited := True;
//  Grid_EmpleadosPorNomina.Enabled := True;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.btnPostClick(Sender: TObject);
Var
  Query: TZQuery;
  i: Integer;
  QryTxt: String;
begin
  Try
    Progreso.Min := 0;
    Progreso.Max := Grid_EmpleadosPorNomina.RowCount;
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.ZConnection;
    Query.Active := False;
    Query.SQL.Clear;
    for i := 0 to Grid_EmpleadosPorNomina.RowCount - 1 do begin
      Progreso.Position := Progreso.Position + 1;
      if Grid_EmpleadosPorNomina.Cell[1, i].AsBoolean then begin
        Query.SQL.Clear;
        Query.SQL.Text := 'SELECT * FROM nom_empleadospornomina WHERE sIdEmpleado = '+QuotedStr(Grid_EmpleadosPorNomina.Cells[5, i])+' AND iId_Nomina = ' + IntToStr(iId_Nomina);
        Query.Open;
        if Query.RecordCount > 0 then begin
          QryTxt := 'UPDATE nom_empleadospornomina SET dImporte = '+Grid_EmpleadosPorNomina.Cells[4, i]+', lIncluir = True, dDiasLaborados = '+Grid_EmpleadosPorNomina.Cells[3, i]+', dSalarioReal = '+Grid_EmpleadosPorNomina.Cells[7, i]+' WHERE sIdEmpleado = '+QuotedStr(Grid_EmpleadosPorNomina.Cells[5, i])+' AND iId_Nomina = ' + IntToStr(iId_Nomina);
        end else begin
          QryTxt := 'INSERT INTO nom_empleadospornomina (iId_Nomina, sIdEmpleado, dImporte, dDiasLaborados, lIncluir, dSalarioReal) VALUES ('+IntToStr(iId_Nomina)+', '+QuotedStr(Grid_EmpleadosPorNomina.Cells[5, i])+', '+Grid_EmpleadosPorNomina.Cells[4, i]+', '+Grid_EmpleadosPorNomina.Cells[3, i]+', ''True'', '+Grid_EmpleadosPorNomina.Cells[7, i]+')';
        end;
//        ShowMessage(QryTxt);
        Query.SQL.Text := QryTxt;
        Query.ExecSQL;
      end else begin
        Query.SQL.Clear;
        if Grid_EmpleadosPorNomina.Cells[0, i] <> '' then begin
          Query.SQL.Text := 'DELETE FROM nom_empleadospornomina WHERE iId = ' + Grid_EmpleadosPorNomina.Cells[0, i];
          Query.ExecSQL;
        end;
      end;
    end;
  Finally
    Progreso.Position := 0;
    Query.Free;
  End;
//  Grid_EmpleadosPorNomina.Enabled := False;
  btnEdit.Enabled := True;
  btnPost.Enabled := False;
  CargarTablaDeEmpleados;
  FlagEdited := False;

  if iStatusNomina = 1 then begin
    if StrToFloat(Grid_EmpleadosPorNomina.Columns[4].Footer.Caption) > dImporteNomina then begin
      if MessageDlg('La suma de los pagos supera la suma de egresos seleccionada, ¿Desea cambiar la selección de egresos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
//        Application.CreateForm(Tfrm_Nomina_CapturaEgresos, frm_Nomina_CapturaEgresos);
//        Try
//          frm_Nomina_CapturaEgresos.ShowModal;
//        Finally
          RecalcularEgresos;
//        End;
      end;
    end
    else
    if StrToFloat(Grid_EmpleadosPorNomina.Columns[4].Footer.Caption) < dImporteNomina then begin
      ShowMessage('La suma de los pagos todavía no alcanza a cubrir la cantidad destinada para la nómina.');
    end;
  end else begin
    if MessageDlg('Se guardaron los cambios de la nómina, ¿desea procesarla ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      btnProcesarNomina.Click;
    end;
  end;
//
//  //RecalcularEgresos;


end;

procedure Tfrm_Nomina_EmpleadosPorNomina.CargarTablaDeEmpleados;
Var
  Suma: Real;
  Salario_p, Salario_D : double;
  a : string;
begin
  Query.Active := False;
  Query.SQL.Clear;
  Query.SQL.Add(' ' +
  '  SELECT ' +
  '   b.iId, ' +
  '   IFNULL(b.dDiasLaborados, 0) AS dDiasLaborados, ' +
  '   a.sNombreCompleto, ' +
  '   a.sIdEmpleado, ' +
  '   IFNULL(b.lIncluir, "False") AS lExiste, ' +
  '   b.dImporte, ' +
  '   b.dFaltas, ' +
  '   b.dSalarioReal ' +
  ' FROM empleados AS a ' +
  '   LEFT JOIN nom_empleadospornomina AS b ' +
  '     ON (a.sIdEmpleado = b.sIdEmpleado AND b.iId_Nomina = ' + QuotedStr(IntToStr(iId_Nomina)) + ') ' +
  ' ORDER BY lExiste DESC, a.sNombreCompleto ASC');
  Query.Open;
  Grid_EmpleadosPorNomina.ClearRows;
  Suma := 0;
  while not Query.Eof do
  begin
      Grid_EmpleadosPorNomina.AddRow;
      Grid_EmpleadosPorNomina.Cells[0, Grid_EmpleadosPorNomina.LastAddedRow] := Query.FieldByName('iId').AsString;
      Grid_EmpleadosPorNomina.Cells[1, Grid_EmpleadosPorNomina.LastAddedRow] := Query.FieldByName('lExiste').AsString;
      Grid_EmpleadosPorNomina.Cells[2, Grid_EmpleadosPorNomina.LastAddedRow] := Query.FieldByName('sNombreCompleto').AsString;
      Grid_EmpleadosPorNomina.Cells[3, Grid_EmpleadosPorNomina.LastAddedRow] := Query.FieldByName('dDiasLaborados').AsString;
      //Grid_EmpleadosPorNomina.Cells[4, Grid_EmpleadosPorNomina.LastAddedRow] := FloatToStr(Query.FieldByName('dImporte').AsFloat);
      Grid_EmpleadosPorNomina.Cells[5, Grid_EmpleadosPorNomina.LastAddedRow] := Query.FieldByName('sIdEmpleado').AsString;
      Grid_EmpleadosPorNomina.Cells[6, Grid_EmpleadosPorNomina.LastAddedRow] := FloatToStr(Query.FieldByName('dFaltas').AsFloat);

      //Ahora calculamos el sueldo del empleado..
            connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('SELECT nom.iId, '+
                                  '((select sum(dImporte) from nom_detallesporempleado where iId_nomina =:Id and sIdEmpleado =:IdEmpleado and lTipo = "percepcion")) '+
                                  ' AS dSalarioReal_P '+
                                  ' FROM nom_nominas AS nom where iId = :Id ');
      connection.zCommand.ParamByName('Id').AsInteger :=  iId_Nomina;
      connection.zCommand.ParamByName('IdEmpleado').AsString :=  Query.FieldValues['sIdEmpleado'];
      connection.zCommand.Open;

      Salario_P := 0;
      if connection.zCommand.RecordCount > 0 then
         Salario_P := connection.zCommand.FieldByName('dSalarioReal_P').AsFloat;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('SELECT nom.iId, '+
                                  '((select sum(dImporte) from nom_detallesporempleado where iId_nomina =:Id and sIdEmpleado =:IdEmpleado and lTipo = "deduccion")) '+
                                  ' AS dSalarioReal_D '+
                                  ' FROM nom_nominas AS nom where iId = :Id ');
      connection.zCommand.ParamByName('Id').AsInteger :=  iId_Nomina;
      connection.zCommand.ParamByName('IdEmpleado').AsString :=  Query.FieldValues['sIdEmpleado'];
      connection.zCommand.Open;

      Salario_D := 0;
      if connection.zCommand.RecordCount > 0 then
         Salario_D := connection.zCommand.FieldByName('dSalarioReal_D').AsFloat;

      Grid_EmpleadosPorNomina.Cells[4, Grid_EmpleadosPorNomina.LastAddedRow] := FloatToStr(Salario_P - Salario_D);

      Grid_EmpleadosPorNomina.Cells[7, Grid_EmpleadosPorNomina.LastAddedRow] := FloatToStr(Query.FieldByName('dSalarioReal').AsFloat);
      if Query.FieldByName('lExiste').AsBoolean then begin
        Suma := Suma + Query.FieldByName('dImporte').AsFloat;
      end;
    Query.Next;
  end;
//  Grid_Prestaciones.Cells[4, Grid_Prestaciones.LastAddedRow] := Query.FieldByName('dImporte').AsString;
  Grid_EmpleadosPorNomina.Columns[4].Footer.Caption := FloatToStr(Suma);
//  Grid_EmpleadosPorNomina.Enabled := False;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.Detallesdepersonal1Click(Sender: TObject);
begin
  FlagToEdit := True;
  if Grid_EmpleadosPorNomina.Cell[1, Grid_EmpleadosPorNomina.SelectedRow].AsBoolean then begin
    if FlagToEdit then begin
      frmDetallesNominasEmpleados.iId_Nomina := iId_Nomina;
      frmDetallesNominasEmpleados.FilaEmpleado := Grid_EmpleadosPorNomina.SelectedRow;
      frmDetallesNominasEmpleados.Empleado := Grid_EmpleadosPorNomina.Cells[2, Grid_EmpleadosPorNomina.SelectedRow];
      frmDetallesNominasEmpleados.sIdEmpleado := Grid_EmpleadosPorNomina.Cells[5, Grid_EmpleadosPorNomina.SelectedRow];
      frmDetallesNominasEmpleados.iIdEgreso := iIdEgreso;

      Application.CreateForm(Tfrm_DetallesNominasEmpleados,frm_DetallesNominasEmpleados);
      frmDetallesNominasEmpleados.iId_Nomina := iId_Nomina;
      frmDetallesNominasEmpleados.FilaEmpleado := Grid_EmpleadosPorNomina.SelectedRow;
      frmDetallesNominasEmpleados.Empleado := Grid_EmpleadosPorNomina.Cells[2, Grid_EmpleadosPorNomina.SelectedRow];
      frmDetallesNominasEmpleados.sIdEmpleado := Grid_EmpleadosPorNomina.Cells[5, Grid_EmpleadosPorNomina.SelectedRow];
      frmDetallesNominasEmpleados.iIdEgreso := iIdEgreso;

//      frm_DetallesNominasEmpleados.tdDiasdeNomina.Value := DiasTotales;//Grid_EmpleadosPorNomina.Cells[3, Grid_EmpleadosPorNomina.SelectedRow];
//      frm_DetallesNominasEmpleados.tdFaltas.Value := Grid_EmpleadosPorNomina.Cell[6, Grid_EmpleadosPorNomina.SelectedRow].AsFloat;
//      frm_DetallesNominasEmpleados.tdSalarioReal.Value := Grid_EmpleadosPorNomina.Cell[7, Grid_EmpleadosPorNomina.SelectedRow].AsFloat;

      if Grid_EmpleadosPorNomina.Cell[3, Grid_EmpleadosPorNomina.SelectedRow].AsFloat = 0 then begin
        frm_DetallesNominasEmpleados.tdDiasLaborados.Text := FloatToStr(DiasTotales);
      end else begin
        frm_DetallesNominasEmpleados.tdDiasLaborados.Text := Grid_EmpleadosPorNomina.Cells[3, Grid_EmpleadosPorNomina.SelectedRow];
      end;
      frm_DetallesNominasEmpleados.nombre.Caption := 'Empleado: ' + Grid_EmpleadosPorNomina.Cells[2, Grid_EmpleadosPorNomina.SelectedRow];
      frm_DetallesNominasEmpleados.ShowModal;
    end;
  end else begin
    ShowMessage('Primero activa al empleado en esta nómina en la casilla que está a la izquierda de su nombre');
  end;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.RegenerarFooter;
Var
  Suma: Real;
  i: Integer;
begin
  Suma := 0;
  for i := 0 to Grid_EmpleadosPorNomina.RowCount - 1 do begin
    Suma := Suma + Grid_EmpleadosPorNomina.Cell[4, i].AsFloat;
  end;
  Grid_EmpleadosPorNomina.Columns[4].Footer.Caption := FloatToStr(Suma);
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.FiltroEmpleadoEnter(Sender: TObject);
begin
  if TEdit(Sender).Text = 'Buscar Empleado...' then begin
    TEdit(Sender).Text := '';
  end;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.FiltroEmpleadoExit(Sender: TObject);
begin
  if TEdit(Sender).Text = '' then begin
    TEdit(Sender).Text := 'Buscar Empleado...';
  end;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.FiltroEmpleadoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
  i: Integer;
begin
  if TEdit(Sender).Text <> '' then begin
    for i := 0 to Grid_EmpleadosPorNomina.RowCount - 1 do begin
      if AnsiPos(UpperCase(TEdit(Sender).Text), Grid_EmpleadosPorNomina.Cells[2, i]) > 0 then begin
//        Grid_EmpleadosPorNomina.Row[i].Visible := True;
        Grid_EmpleadosPorNomina.RowVisible[i] := True;
      end else begin
//        Grid_EmpleadosPorNomina.Row[i].Visible := False;
        Grid_EmpleadosPorNomina.RowVisible[i] := False;
      end;
    end;
  end else begin
    for i := 0 to Grid_EmpleadosPorNomina.RowCount - 1 do begin
      Grid_EmpleadosPorNomina.Row[i].Visible := True;
    end;
  end;
  Grid_EmpleadosPorNomina.Repaint;
//  Grid_EmpleadosPorNomina.DoubleBuffered := True;
//  Grid_EmpleadosPorNomina.HideScrollBar := False;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FlagEdited then begin
    if MessageDlg('¿Desea guardar los cambios antes de salir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      btnPost.Click;
      Action := CaFree;
    end else begin
      Action := CaFree;
    end;
  end else begin
    Action := CaFree;
  end;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.FormShow(Sender: TObject);
Var
  Query: TZQuery;
  I: Integer;
begin
  aDef := False;
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;
    Query.SQL.Text := 'SELECT n.*, (SELECT COUNT(iId) FROM nom_empleadospornomina WHERE iId_Nomina = n.iId) AS dTotalEmpleados, MAX(n.iId) FROM nom_nominas AS n WHERE n.iProcesada = 1';
    Query.Open;
    if Query.RecordCount > 0 then
    begin
      iId_Nomina := Query.FieldByName('iId').AsInteger;
      DiasTotales := Query.FieldByName('dDias').AsFloat;
      iIdEgreso := Query.FieldByName('iIdEgreso').AsInteger;
      iStatusNomina := Query.FieldByName('iStatus').AsInteger;
      dImporteNomina := Query.FieldByName('dImporteDestinado').AsFloat;
      for i := 0 to ComponentCount - 1 do begin
        if (Components[i] is TLabel) then begin
          TLabel(Components[i]).Caption := MultiStringReplace(TLabel(Components[i]).Caption, ['{NOMINA}', '{FECHA_INICIAL}', '{FECHA_FINAL}', '{Importe}'], [Query.FieldByName('sNomina').AsString, Query.FieldByName('dFechaInicial').AsString, Query.FieldByName('dFechaFinal').AsString, FormatFloat('$ ###,##0.00', Query.FieldByName('dImporteDestinado').AsFloat)], [rfReplaceAll, rfIgnoreCase]);
        end;
      end;
    end;
  Finally
    Query.Free;
  End;
  CargarTablaDeEmpleados;
  RegenerarFooter;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.Grid_EmpleadosPorNominaAfterEdit(
  Sender: TObject; ACol, ARow: Integer; Value: WideString);
Var
  Faltas: Real;
begin
  if ACol = 3 then begin
    Faltas := DiasTotales - StrToFloat(Value);
    Grid_EmpleadosPorNomina.Cell[6, ARow].AsFloat := Faltas;
  end;
  btnPost.Enabled := True;
//  if Value = 'True' then begin
//    Detallesdepersonal1.Click;
//  end;

end;

procedure Tfrm_Nomina_EmpleadosPorNomina.Grid_EmpleadosPorNominaChange(
  Sender: TObject; ACol, ARow: Integer);
begin
//  btnPost.Enabled := True;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.Grid_EmpleadosPorNominaDblClick(
  Sender: TObject);
begin
    Detallesdepersonal1.Click;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.Grid_EmpleadosPorNominaHeaderClick(
  Sender: TObject; ACol: Integer);
Var
  i, o: Integer;
begin
  o:=TNextGrid(Sender).RowCount;
  if ACol=1 then begin
    if aDef then begin
      for I := 0 to o - 1 do begin
        TNextGrid(Sender).Cells[1,i]:='0';
      end;
      aDef := False;
    end else begin
      for I := 0 to o - 1 do begin
        TNextGrid(Sender).Cells[1,i]:='1';
      end;
      aDef := True;
    end;
  end;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.tsNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_Nomina_EmpleadosPorNomina.SiguienteCajon(Sender: TObject; var Key: Char);
Var
  Control: TWinControl;
begin
  Control := FindNextControl(Sender as TWinControl, True, True, True);
  if Key = #13 then begin
    if (FindNextControl(Sender as TWinControl, True, True, True) is TDBEdit) then begin
      SelectNext(Sender as TWinControl, True, True);
    end;
  end;
end;

end.
