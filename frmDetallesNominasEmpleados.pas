unit frmDetallesNominasEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_Connection, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, DBLabelEdit, Buttons, NxColumnClasses, NxGrid, 
  NxEdit, JvBaseEdits;

type
  Tfrm_DetallesNominasEmpleados = class(TForm)
  ds_Query: TDataSource;
    zq_Query: TZQuery;
    Panel1: TPanel;
    btnEdit: TBitBtn;
    btnPost: TBitBtn;
    btnCancel: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Deducciones: TPanel;
    Percepciones: TPanel;
    Panel_Percepciones: TPanel;
    Panel_Deducciones: TPanel;
    Label_Percepciones: TLabel;
    Label_Deducciones: TLabel;
    Grid_Percepciones: TNextGrid;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    Button1: TButton;
    Button2: TButton;
    NxTextColumn9: TNxTextColumn;
    Panel_Percepciones_Botones: TPanel;
    frmBarra1: TfrmBarra;
    NxTextColumn4: TNxNumberColumn;
    Grid_Deducciones: TNextGrid;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn10: TNxTextColumn;
    Panel_Deducciones_Botones: TPanel;
    frmBarra2: TfrmBarra;
    Label_SueldoNeto: TLabel;
    Label_SalarioNeto: TLabel;
    Label1: TLabel;
    NxTextColumn8: TNxNumberColumn;
    Grid_DetallesdeEgresos: TDBGrid;
    Label2: TLabel;
    zq_DetallesEgresos: TZQuery;
    ds_DetallesEgresos: TDataSource;
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
    Label3: TLabel;
    Label4: TLabel;
    zq_DatosEmpleado: TZQuery;
    ds_DatosEmpleado: TDataSource;
    zq_DatosEmpleadosNombreCompleto: TStringField;
    zq_DatosCheque: TZQuery;
    ds_DatosCheque: TDataSource;
    zq_DatosChequedIdFecha: TDateField;
    zq_DatosChequeiIdFolio: TIntegerField;
    zq_DatosChequesTipoMovimiento: TStringField;
    zq_DatosChequesIdArea: TStringField;
    zq_DatosChequesIdNumeroCuenta: TStringField;
    zq_DatosChequesNumeroOrden: TStringField;
    zq_DatosChequesReferencia: TStringField;
    zq_DatosChequesIdProveedor: TStringField;
    zq_DatosChequesIdCompania: TStringField;
    zq_DatosChequesRFC: TStringField;
    zq_DatosChequesRazonSocial: TStringField;
    zq_DatosChequesDomicilio: TStringField;
    zq_DatosChequesCiudad: TStringField;
    zq_DatosChequesCP: TStringField;
    zq_DatosChequesEstado: TStringField;
    zq_DatosChequesTelefono: TStringField;
    zq_DatosChequedImporteTotal: TFloatField;
    zq_DatosChequelComprobado: TStringField;
    zq_DatosChequesStatus: TStringField;
    zq_DatosChequemDescripcion: TMemoField;
    zq_DatosChequedIva: TFloatField;
    zq_DatosChequelAplicaiva: TStringField;
    zq_DatosChequesPoliza: TStringField;
    zq_DatosChequedFechaFactura: TDateField;
    zq_DatosChequeiFolio: TIntegerField;
    zq_DatosChequeiIdStatus: TIntegerField;
    zq_DatosChequesTipoPago: TStringField;
    zq_DatosChequesFormaPago: TStringField;
    zq_DatosChequesNumeroDeCuenta: TStringField;
    zq_DatosChequesNumeroPedido: TStringField;
    zq_DatosChequeiImprimeProveedor: TIntegerField;
    Label5: TLabel;
    zq_DatosEmpleadodSalarioIntegrado: TFloatField;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    tdDiasdeNomina: TJvCalcEdit;
    tdFaltas: TJvCalcEdit;
    tdDiasLaborados: TJvCalcEdit;
    tdSalarioReal: TJvCalcEdit;
    nombre: TLabel;
    zq_QuerydImporteTotal: TFloatField;
    zq_QuerydCantidad: TFloatField;
    zq_QuerydImporte: TFloatField;
    zq_QueryiId: TIntegerField;
    zq_QueryiId_Nomina: TIntegerField;
    zq_QuerysIdEmpleado: TStringField;
    zq_QuerysDescripcion: TStringField;
    zq_QuerylImprime: TStringField;
    zq_QuerylTipo: TStringField;
    zq_QuerylForma: TStringField;
    zq_QuerydPorcentaje: TFloatField;
    zq_QuerylBloqueado: TStringField;
    zq_QueryiId_Catalogo: TIntegerField;
    zq_QuerylIncidenciaProxima: TStringField;
    zq_QueryiCodigoSAT: TIntegerField;
    zq_QuerybImpuestoRetenido: TIntegerField;
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure zq_QueryCalcFields(DataSet: TDataSet);
    procedure RegenerarDetallesDePercepcion;
    procedure RegenerarDetallesDeDeduccion;
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure tdFaltasKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tdDiasLaboradosChange(Sender: TObject);
    procedure tdSalarioRealChange(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DetallesNominasEmpleados: Tfrm_DetallesNominasEmpleados;
  Empleado, sIdEmpleado: String;
  iId_Nomina, FilaEmpleado, iIdEgreso: Integer;
  PercepcionesTotales, DeduccionesTotales, SalarioNeto: Real;

implementation


{$R *.dfm}

procedure Tfrm_DetallesNominasEmpleados.RegenerarDetallesDePercepcion;
Var
  Query: TZQuery;
  Suma: Real;
  Estado, InsertarSalario : Boolean;
  sTipoImporte: String;
begin
  Estado := Grid_Percepciones.Enabled;
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := connection.ZConnection;
    Query.Active := False;
    Query.SQL.Clear;
    Query.SQL.Text := 'SELECT *, (dImporte * dCantidad) AS dImporteTotal FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado);
    Query.Open;
    Grid_Percepciones.ClearRows;
    Suma := 0;
    InsertarSalario := True;
    while not Query.Eof do begin
      if Query.FieldByName('lForma').AsString = 'Porcentaje' then begin
        sTipoImporte := Query.FieldByName('sDescripcion').AsString + ' - '  + Query.FieldByName('dPorcentaje').AsString + '%';
      end else begin
        sTipoImporte := Query.FieldByName('sDescripcion').AsString;
      end;
      Grid_Percepciones.AddRow;
      Grid_Percepciones.Cells[0, Grid_Percepciones.LastAddedRow] := Query.FieldByName('iId').AsString;
      Grid_Percepciones.Cells[1, Grid_Percepciones.LastAddedRow] := Query.FieldByName('dCantidad').AsString;
      Grid_Percepciones.Cells[2, Grid_Percepciones.LastAddedRow] := sTipoImporte;//Query.FieldByName('sDescripcion').AsString;
      Grid_Percepciones.Cells[3, Grid_Percepciones.LastAddedRow] := Query.FieldByName('dImporte').AsString;
      if Query.FieldByName('dImporteTotal').AsString <> '' then begin
        Grid_Deducciones.Cells[4, Grid_Deducciones.LastAddedRow] := Query.FieldByName('dImporteTotal').AsString;
      end else begin
        Grid_Deducciones.Cells[4, Grid_Deducciones.LastAddedRow] := '0';
      end;
      Grid_Percepciones.Cells[5, Grid_Percepciones.LastAddedRow] := Query.FieldByName('lImprime').AsString;
      Grid_Percepciones.Cells[6, Grid_Percepciones.LastAddedRow] := Query.FieldByName('lBloqueado').AsString;
      if Not Query.FieldByName('lBloqueado').AsBoolean then begin
        InsertarSalario := False;
      end;
      Suma := Suma + Query.FieldByName('dImporteTotal').AsFloat;
      Query.Next;
    end;
    if InsertarSalario then begin
      Query.SQL.Clear;
      Query.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' AND lBloqueado = ''True''';
      Query.Open;
      if Query.RecordCount = 0 then begin
        Query.Append;
        Query.FieldByName('iId_Nomina').AsInteger := iId_Nomina;
        Query.FieldByName('sIdEmpleado').AsString := sIdEmpleado;
        Query.FieldByName('dCantidad').AsInteger := 1;
        Query.FieldByName('sDescripcion').AsString := 'SALARIO';
        Query.FieldByName('dImporte').AsFloat := tdSalarioReal.Value;
        Query.FieldByName('lImprime').AsString := 'Si';
        Query.FieldByName('lTipo').AsString := 'Percepcion';
        Query.FieldByName('lForma').AsString := 'Directo';
        Query.FieldByName('dPorcentaje').AsString := '0';
        Query.FieldByName('lBloqueado').AsString := 'True';
        Query.Post;
        Suma := Suma + tdSalarioReal.Value;
      end;

      Try
        if zq_DetallesEgresos.RecordCount > 0 then begin
          zq_DetallesEgresos.Edit;
        end else begin
          zq_DetallesEgresos.Append;
          zq_DetallesEgresos.FieldByName('dIdFecha').AsDateTime := zq_DatosCheque.FieldByName('dIdFecha').AsDateTime;
          zq_DetallesEgresos.FieldByName('iIdFolio').AsInteger := iIdEgreso;
          zq_DetallesEgresos.FieldByName('sIdEgreso').AsString := 'NOMINA';
          zq_DetallesEgresos.FieldByName('sTipoEgreso').AsString := 'Empleados';
          zq_DetallesEgresos.FieldByName('sIdProveedor').AsString := sIdEmpleado;
          zq_DetallesEgresos.FieldByName('sRazonSocial').AsString := zq_DatosEmpleado.FieldByName('sNombreCompleto').AsString;
          zq_DetallesEgresos.FieldByName('mDescripcion').AsString := 'PAGO DE NOMINA';
          zq_DetallesEgresos.FieldByName('dFechaComprobacion').AsDateTime := zq_DatosCheque.FieldByName('dIdFecha').AsDateTime;
          zq_DetallesEgresos.FieldByName('sCheque').AsString := zq_DatosCheque.FieldByName('sReferencia').AsString;
          zq_DetallesEgresos.FieldByName('sPoliza').AsString := '2';
          zq_DetallesEgresos.FieldByName('eReal').AsString := 'Si';
        end;
        zq_DetallesEgresos.FieldByName('dImporte').AsString := FloatToStr(tdSalarioReal.Value);
        zq_DetallesEgresos.FieldByName('dSubTotal').AsString := FloatToStr(tdSalarioReal.Value);
        zq_DetallesEgresos.Post;
      Except
        On E: Exception do begin
          //;
        end;
      End;

    end;
  Finally
    Query.Free;
  End;
//  Grid_Prestaciones.Cells[4, Grid_Prestaciones.LastAddedRow] := Query.FieldByName('dImporte').AsString;
  PercepcionesTotales := Suma;//(Suma + tdSalarioReal.Value);
  SalarioNeto := PercepcionesTotales - DeduccionesTotales;
  Grid_Percepciones.Columns[4].Footer.Caption := FloatToStr(Suma);
  Label_SalarioNeto.Caption := FloatToStr(SalarioNeto);

  Grid_Percepciones.Enabled := Estado;
end;

procedure Tfrm_DetallesNominasEmpleados.tdDiasLaboradosChange(Sender: TObject);
begin
  tdSalarioReal.Value := (zq_DatosEmpleado.FieldByName('dSalarioIntegrado').AsFloat * tdDiasLaborados.Value);
end;

procedure Tfrm_DetallesNominasEmpleados.tdFaltasKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  tdDiasLaborados.Value := (tdDiasDeNomina.Value - tdFaltas.Value);
end;

procedure Tfrm_DetallesNominasEmpleados.tdSalarioRealChange(Sender: TObject);
begin
  RegenerarDetallesDePercepcion;
end;

procedure Tfrm_DetallesNOminasEmpleados.RegenerarDetallesDeDeduccion;
Var
  Query: TZQuery;
  Suma: Real;
  Estado : Boolean;
  sTipoImporte: String;
begin
  Estado := Grid_Deducciones.Enabled;
  Query := TZQuery.Create(Self);
  Query.Connection := Connection.ZConnection;
  Query.Active := False;
  Query.SQL.Clear;
  Query.SQL.Text := 'SELECT *, (dImporte * dCantidad) AS dImporteTotal FROM nom_detallesporempleado WHERE lTipo = ''Deduccion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado);
  Query.Open;
  Grid_Deducciones.ClearRows;
  Suma := 0;
  while not Query.Eof do begin
    if Query.FieldByName('lForma').AsString = 'Porcentaje' then begin
      sTipoImporte := Query.FieldByName('sDescripcion').AsString + ' - '  + Query.FieldByName('dPorcentaje').AsString + '%';
    end else begin
      sTipoImporte := Query.FieldByName('sDescripcion').AsString;
    end;

    Grid_Deducciones.AddRow;
    Grid_Deducciones.Cells[0, Grid_Deducciones.LastAddedRow] := Query.FieldByName('iId').AsString;
    Grid_Deducciones.Cells[1, Grid_Deducciones.LastAddedRow] := Query.FieldByName('dCantidad').AsString;
    Grid_Deducciones.Cells[2, Grid_Deducciones.LastAddedRow] := sTipoImporte;//Query.FieldByName('sDescripcion').AsString;
    Grid_Deducciones.Cells[3, Grid_Deducciones.LastAddedRow] := Query.FieldByName('dImporte').AsString;
    if Query.FieldByName('dImporteTotal').AsString <> '' then begin
      Grid_Deducciones.Cells[4, Grid_Deducciones.LastAddedRow] := Query.FieldByName('dImporteTotal').AsString;
    end else begin
      Grid_Deducciones.Cells[4, Grid_Deducciones.LastAddedRow] := '0';
    end;
    Grid_Deducciones.Cells[5, Grid_Deducciones.LastAddedRow] := Query.FieldByName('lImprime').AsString;
    Suma := Suma + Query.FieldByName('dImporteTotal').AsFloat;
    Query.Next;
  end;
//  Grid_Prestaciones.Cells[4, Grid_Prestaciones.LastAddedRow] := Query.FieldByName('dImporte').AsString;
  DeduccionesTotales := Suma;
  SalarioNeto := PercepcionesTotales - DeduccionesTotales;
  Grid_Deducciones.Columns[4].Footer.Caption := FloatToStr(Suma);
  Label_SalarioNeto.Caption := FloatToStr(SalarioNeto);

  Grid_Deducciones.Enabled := Estado;
end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra1btnDeleteClick(
  Sender: TObject);
begin
  if Grid_Percepciones.SelectedRow > -1 then begin
    if Grid_Percepciones.Cell[6, Grid_Percepciones.SelectedRow].AsBoolean then begin
      ShowMessage('Esta percepcion no se puede eliminar.');
    end else begin
      if MessageDlg('Desea eliminar este registro: ' + Grid_Percepciones.Cells[1, Grid_Percepciones.SelectedRow] + ' ' + Grid_Percepciones.Cells[2, Grid_Percepciones.SelectedRow], mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        zq_Query.Active := False;
        zq_Query.SQL.Text := 'DELETE FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId = ' + Grid_Percepciones.Cells[0, Grid_Percepciones.SelectedRow] + ' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' LIMIT 1';
        zq_Query.ExecSQL;
        RegenerarDetallesDePercepcion;
      end;
    end;
  end;
end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra1btnEditClick(Sender: TObject);
begin
  if Grid_Percepciones.SelectedRow > -1 then begin
    zq_Query.Active := False;
    zq_Query.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId = ' + Grid_Percepciones.Cells[0, Grid_Percepciones.SelectedRow] + ' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' LIMIT 1';
    zq_Query.Open;
    zq_Query.Edit;
  end;
end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);

end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra1btnPostClick(Sender: TObject);
begin
  frmBarra1.btnPostClick(Sender);

end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra2btnAddClick(Sender: TObject);
begin
  zq_Query.Active := False;
  zq_Query.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE lTipo = ''Deduccion'' LIMIT 1';
  zq_Query.Open;
  zq_Query.Append;
  zq_Query.FieldByName('sIdEmpleado').AsString := sIdEmpleado;
  zq_Query.FieldByName('lTipo').AsString := 'Deduccion';
  zq_Query.FieldByName('iId_Nomina').AsInteger := iId_Nomina;

end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra2btnDeleteClick(
  Sender: TObject);
begin
  if Grid_Deducciones.SelectedRow > -1 then begin
    if MessageDlg('Desea eliminar este registro: ' + Grid_Deducciones.Cells[1, Grid_Deducciones.SelectedRow] + ' ' + Grid_Deducciones.Cells[2, Grid_Deducciones.SelectedRow], mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      zq_Query.Active := False;
      zq_Query.SQL.Text := 'DELETE FROM nom_detallesporempleado WHERE lTipo = ''Deduccion'' AND iId = ' + Grid_Deducciones.Cells[0, Grid_Deducciones.SelectedRow] + ' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' LIMIT 1';
      zq_Query.ExecSQL;
      RegenerarDetallesDeDeduccion;
    end;
  end;
end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra2btnEditClick(Sender: TObject);
begin
  zq_Query.Active := False;
  zq_Query.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE lTipo = ''Deduccion'' AND iId = ' + Grid_Deducciones.Cells[0, Grid_Deducciones.SelectedRow] + ' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' LIMIT 1';
  zq_Query.Open;
  zq_Query.Edit;

end;

procedure Tfrm_DetallesNominasEmpleados.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_DetallesNominasEmpleados.btnEditClick(Sender: TObject);
begin
  btnEdit.Enabled := False;
  btnPost.Enabled := True;
  btnCancel.Enabled := True;

  Percepciones.Enabled := True;
  Deducciones.Enabled := True;
  tdFaltas.Enabled := True;
  tdDiasLaborados.Enabled := True;

  frmBarra1.btnAdd.Enabled := True;
  frmBarra1.btnEdit.Enabled := True;
  frmBarra1.btnDelete.Enabled := True;
  frmBarra2.btnAdd.Enabled := True;
  frmBarra2.btnEdit.Enabled := True;
  frmBarra2.btnDelete.Enabled := True;
  Button1.Enabled := True;
  Button2.Enabled := True;
end;

procedure Tfrm_DetallesNominasEmpleados.btnPostClick(Sender: TObject);
begin
  btnEdit.Enabled := True;
  btnPost.Enabled := False;
//  Grid_Percepciones.Enabled := True;
//  Grid_Deducciones.Enabled := True;
  Percepciones.Enabled := False;
  Deducciones.Enabled := False;
  
  frmBarra1.btnAdd.Enabled := False;
  frmBarra1.btnEdit.Enabled := False;
  frmBarra1.btnDelete.Enabled := False;
  frmBarra2.btnAdd.Enabled := False;
  frmBarra2.btnEdit.Enabled := False;
  frmBarra2.btnDelete.Enabled := False;
  Button1.Enabled := False;
  Button2.Enabled := False;

  tdDiasLaborados.Enabled := False;

end;

procedure Tfrm_DetallesNominasEmpleados.Button1Click(Sender: TObject);
Var
  Query, QueryBusca: TZQuery;
  dImporteForma, dPorcentaje, DiasTrabajados, FaltasEmpleado, dSalarioTotalDiario, SumaPercepciones: Real;
begin
  if MessageDlg('Al importar las percepciones por defecto de este personal se eliminarán todos los registros actuales, ¿desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    Try
      QueryBusca := TZQuery.Create(Self);
      QueryBusca.Connection := Connection.zConnection;

      DiasTrabajados := tdDiasLaborados.Value;

      QueryBusca.SQL.Text := 'SELECT (dSalarioIntegrado * '+FloatToStr(DiasTrabajados)+') AS dSalarioTotalDiario FROM empleados WHERE sIdEmpleado = ' + QuotedStr(sIdEmpleado);
      QueryBusca.Open;

      if QueryBusca.RecordCount > 0 then begin
        dSalarioTotalDiario := QueryBusca.FieldByName('dSalarioTotalDiario').AsFloat;
      end else begin
        dSalarioTotalDiario := 0;
      end;
      //Elimina todas las percepciones del empleado en esta nómina (si es que existen).
      QueryBusca.Active := False;
      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Text := 'DELETE FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' AND lIncidenciaProxima = ''False''';
      QueryBusca.ExecSQL;

      QueryBusca.Active := False;
      QueryBusca.SQL.Text := 'SELECT * FROM nom_empleadospornomina WHERE sIdEmpleado = '+QuotedStr(sIdEmpleado)+' AND iId_Nomina = ' + IntToStr(iId_Nomina);
      QueryBusca.Open;
      if QueryBusca.RecordCount > 0 then begin
        QueryBusca.Edit;
        QueryBusca.FieldByName('dSalarioReal').AsFloat := dSalarioTotalDiario;
        QueryBusca.Post;
      end;

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
          Query.FieldByName('iCodigoSAT').AsInteger := 1;
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
      RegenerarDetallesDePercepcion;
    End;

    {Try
      QueryBusca := TZQuery.Create(Self);
      QueryBusca.Connection := Connection.zConnection;

      QueryBusca.Active := False;
      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Text := 'DELETE FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado) + '';
      QueryBusca.ExecSQL;

      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Add('' +
      'SELECT ' +
      '	* ' +
      'FROM nom_prestacionesporempleado AS ppe ' +
      '	INNER JOIN nom_catalogodeprestaciones AS cp ON (cp.iId = ppe.iId_Prestacion) ' +
      'WHERE ppe.sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' ' +
      '');
      QueryBusca.Open;

      Try
        Query := TZQuery.Create(Self);
        Query.Connection := Connection.ZConnection;
        While Not QueryBusca.Eof do begin
          if QueryBusca.FieldByName('lForma').AsString = 'Porcentaje' then begin
            dImporteForma := (tdSalarioReal.Value * (QueryBusca.FieldByName('dImporte').AsFloat / 100));
            dPorcentaje := QueryBusca.FieldByName('dImporte').AsFloat;
          end else begin
            dImporteForma := QueryBusca.FieldByName('dImporte').AsFloat;
            dPorcentaje := 0;
          end;
          Query.SQL.Clear;
          Query.SQL.Text := 'INSERT INTO nom_detallesporempleado (iId_Nomina, sIdEmpleado, dCantidad, sDescripcion, dImporte, lImprime, lTipo, dPorcentaje, iId_Catalogo) VALUES ('+QuotedStr(IntToStr(iId_Nomina))+', '+QuotedStr(sIdEmpleado)+', 1, '+QuotedStr(QueryBusca.FieldByName('sNombre').AsString)+', '+FloatToStr(dImporteForma)+', ''Si'', ''Percepcion'', '+FloatToStr(dPorcentaje)+', '+QuotedStr(QueryBusca.FieldByName('iId_Prestacion').AsString)+') ';
          Query.ExecSQL;


//          Try
//            if zq_DetallesEgresos.RecordCount > 0 then begin
//              zq_DetallesEgresos.Edit;
//            end else begin
//              zq_DetallesEgresos.Append;
//              zq_DetallesEgresos.FieldByName('dIdFecha').AsDateTime := zq_DatosCheque.FieldByName('dIdFecha').AsDateTime;
//              zq_DetallesEgresos.FieldByName('iIdFolio').AsInteger := iIdEgreso;
//              zq_DetallesEgresos.FieldByName('sIdEgreso').AsString := 'NOMINA';
//              zq_DetallesEgresos.FieldByName('sTipoEgreso').AsString := 'Empleados';
//              zq_DetallesEgresos.FieldByName('sIdProveedor').AsString := sIdEmpleado;
//              zq_DetallesEgresos.FieldByName('sRazonSocial').AsString := Grid_EmpleadosPorNomina.Cells[2, Grid_EmpleadosPorNomina.SelectedRow];
//              zq_DetallesEgresos.FieldByName('mDescripcion').AsString := 'PAGO DE NOMINA';
//              zq_DetallesEgresos.FieldByName('dFechaComprobacion').AsDateTime := zq_DatosCheque.FieldByName('dIdFecha').AsDateTime;
//              zq_DetallesEgresos.FieldByName('sCheque').AsString := zq_DatosCheque.FieldByName('sReferencia').AsString;
//              zq_DetallesEgresos.FieldByName('sPoliza').AsString := '2';
//              zq_DetallesEgresos.FieldByName('eReal').AsString := 'Si';
//            end;
//            zq_DetallesEgresos.FieldByName('dImporte').AsString := QueryBusca.FieldByName('dImporte').AsFloat;
//            zq_DetallesEgresos.FieldByName('dSubTotal').AsString := QueryBusca.FieldByName('dImporte').AsFloat;
//            zq_DetallesEgresos.Post;
//          Except
//            On E: Exception do begin
//              //;
//            end;
//          End;



          Try
            zq_DetallesEgresos.Append;
            zq_DetallesEgresos.FieldByName('dIdFecha').AsDateTime := zq_DatosCheque.FieldByName('dIdFecha').AsDateTime;
            zq_DetallesEgresos.FieldByName('iIdFolio').AsInteger := iIdEgreso;
            zq_DetallesEgresos.FieldByName('sIdEgreso').AsString := 'NOMINA';
            zq_DetallesEgresos.FieldByName('sTipoEgreso').AsString := 'Empleados';
            zq_DetallesEgresos.FieldByName('sIdProveedor').AsString := sIdEmpleado;
            zq_DetallesEgresos.FieldByName('sRazonSocial').AsString := zq_DatosEmpleado.FieldByName('sNombreCompleto').AsString;
            zq_DetallesEgresos.FieldByName('mDescripcion').AsString := QueryBusca.FieldByName('sNombre').AsString;
            zq_DetallesEgresos.FieldByName('dImporte').AsFloat := QueryBusca.FieldByName('dImporte').AsFloat;
            zq_DetallesEgresos.FieldByName('dFechaComprobacion').AsDateTime := zq_DatosCheque.FieldByName('dIdFecha').AsDateTime;
            zq_DetallesEgresos.FieldByName('dSubTotal').AsFloat := QueryBusca.FieldByName('dImporte').AsFloat;
            zq_DetallesEgresos.FieldByName('sCheque').AsString := zq_DatosCheque.FieldByName('sReferencia').AsString;
            zq_DetallesEgresos.FieldByName('sPoliza').AsString := '2';
            zq_DetallesEgresos.FieldByName('eReal').AsString := 'Si';
            zq_DetallesEgresos.Post;
          Except
            On E: Exception do begin
              //;
            end;

          End;


          QueryBusca.Next;
        end;
      Finally
        Query.Free;
      End;

    Finally
      QueryBusca.Free;
    End;
    RegenerarDetallesDePercepcion;}
  end;
end;

procedure Tfrm_DetallesNominasEmpleados.Button2Click(Sender: TObject);
Var
  Query, QueryBusca: TZQuery;
  dImporteForma, dPorcentaje,
  SumaDeducciones, dSalarioTotalDiario,
  DiasTotales, DiasTrabajados,
  FaltasEmpleado: Real;
begin
  if MessageDlg('Al importar las deducciones por defecto de este personal se eliminarán todos los registros actuales, ¿desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      Try
        QueryBusca := TZQuery.Create(Self);
        QueryBusca.Connection := Connection.zConnection;

        DiasTotales := tdDiasDeNomina.Value;
        DiasTrabajados := tdDiasLaborados.Value;
        FaltasEmpleado := DiasTotales - DiasTrabajados;
        QueryBusca.SQL.Text := 'SELECT (dSalarioIntegrado * '+FloatToStr(DiasTrabajados)+') AS dSalarioTotalDiario FROM empleados WHERE sIdEmpleado = ' + QuotedStr(sIdEmpleado);
        QueryBusca.Open;

        if QueryBusca.RecordCount > 0 then begin
          dSalarioTotalDiario := QueryBusca.FieldByName('dSalarioTotalDiario').AsFloat;
        end else begin
          dSalarioTotalDiario := 0;
        end;

        QueryBusca.Active := False;
        QueryBusca.SQL.Clear;
        QueryBusca.SQL.Text := 'DELETE FROM nom_detallesporempleado WHERE lTipo = ''Deduccion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado) + ' AND lIncidenciaProxima = ''False''';
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
        QueryBusca.Free;
        RegenerarDetallesDeDeduccion;
      End;

    (*Try
      QueryBusca := TZQuery.Create(Self);
      QueryBusca.Connection := Connection.zConnection;

      QueryBusca.Active := False;
      QueryBusca.SQL.Clear;
      QueryBusca.SQL.Text := 'DELETE FROM nom_detallesporempleado WHERE lTipo = ''Deduccion'' AND iId_Nomina = ' + IntToStr(iId_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado) + '';
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
        While Not QueryBusca.Eof do begin
          if QueryBusca.FieldByName('lForma').AsString = 'Porcentaje' then begin
            dImporteForma := (tdSalarioReal.Value * (QueryBusca.FieldByName('dImporte').AsFloat / 100));
            dPorcentaje := QueryBusca.FieldByName('dImporte').AsFloat;
          end else begin
            dImporteForma := QueryBusca.FieldByName('dImporte').AsFloat;
            dPorcentaje := 0;
          end;

          Query.SQL.Clear;
          Query.SQL.Text := 'INSERT INTO nom_detallesporempleado (iId_Nomina, sIdEmpleado, dCantidad, sDescripcion, dImporte, lImprime, lTipo, dPorcentaje, lForma, iId_Catalogo) VALUES ('+QuotedStr(IntToStr(iId_Nomina))+', '+QuotedStr(sIdEmpleado)+', 1, '+QuotedStr(QueryBusca.FieldByName('sNombre').AsString)+', '+FloatToStr(dImporteForma)+', ''Si'', ''Deduccion'', '+FloatToStr(dPorcentaje)+', '+QuotedStr(QueryBusca.FieldByName('lForma').AsString)+', '+QuotedStr(QueryBusca.FieldByName('iId_Prestacion').AsString)+') ';
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
      QueryBusca.Free;
    End;*)
  end;
end;

procedure Tfrm_DetallesNominasEmpleados.FormShow(Sender: TObject);
begin
  Deducciones.Enabled := False;
  Percepciones.Enabled := False;
  frmBarra1.btnAdd.Enabled := False;
  frmBarra1.btnEdit.Enabled := False;
  frmBarra1.btnDelete.Enabled := False;
  frmBarra2.btnAdd.Enabled := False;
  frmBarra2.btnEdit.Enabled := False;
  frmBarra2.btnDelete.Enabled := False;
  Button1.Enabled := False;
  Button2.Enabled := False;
  PercepcionesTotales := 0;
  DeduccionesTotales := 0;
  SalarioNeto := 0;

  

  zq_DatosEmpleado.Active := False;
  zq_DatosEmpleado.Params.ParamByName('Empleado').AsString := sIdEmpleado;
  zq_DatosEmpleado.Open;
  zq_DetallesEgresos.Active := False;
  zq_DetallesEgresos.Params.ParamByName('Folio').AsInteger := iIdEgreso;
  zq_DetallesEgresos.Params.ParamByName('IdEmpleado').AsString := sIdEmpleado;
  zq_DetallesEgresos.Open;
  if tdSalarioReal.Value = 0 then begin
    tdSalarioReal.Value := (tdDiasLaborados.Value * zq_DatosEmpleado.FieldByName('dSalarioIntegrado').AsFloat);
  end;
  
  RegenerarDetallesDePercepcion;
  RegenerarDetallesDeDeduccion;
end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra1btnAddClick(Sender: TObject);
begin
  zq_Query.Active := False;
  zq_Query.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' LIMIT 1';
  zq_Query.Open;
  zq_Query.Append;
  zq_Query.FieldByName('sIdEmpleado').AsString := sIdEmpleado;
  zq_Query.FieldByName('lTipo').AsString := 'Percepcion';
  zq_Query.FieldByName('iId_Nomina').AsInteger := iId_Nomina;
end;

procedure Tfrm_DetallesNominasEmpleados.frmBarra1btnCancelClick(
  Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);

end;

procedure Tfrm_DetallesNominasEmpleados.zq_QueryCalcFields(DataSet: TDataSet);
begin
  zq_Query.FieldByName('dImporteTotal').AsFloat := zq_Query.FieldByName('dCantidad').AsFloat + zq_Query.FieldByName('dImporte').AsFloat;
end;

end.
