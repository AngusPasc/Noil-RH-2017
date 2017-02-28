unit frm_ReporteSalidasAlmacen;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,
  DBTables, Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer, Newpanel,
  Excel2000, ZAbstractRODataset, ZDataset, ZAbstractDataset, rxCurrEdit,
  rxToolEdit, JvExMask, JvToolEdit, JvCombobox, NxCollection,
  AdvGlowButton, udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  UFunctionsGHH, UnitValidacion, Editb, EditCalc, NxPageControl, FormAutoScaler;

type
  TfrmReporteSalidasAlmacen = class(TForm)
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    FiltroDos: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    FechaInicio: TDateTimePicker;
    FechaFinal: TDateTimePicker;
    GroupBox1: TGroupBox;
    cbxFrentes: TDBLookupComboBox;
    qryFrentes: TZReadOnlyQuery;
    dsFrentes: TDataSource;
    btnImprimir: TButton;
    ChkTodosFrentes: TCheckBox;
    frxReporteSalidasAlamacen: TfrxReport;
    GroupBox3: TGroupBox;
    qryAlmacenesxContrato: TZReadOnlyQuery;
    dsAlmacenesxContrato: TDataSource;
    cbxAlmacenes: TDBLookupComboBox;
    frxDBReporte: TfrxDBDataset;
    Reporte: TZQuery;
    chkTodosLosAlmacenes: TCheckBox;
    qryFrentessNumeroOrden: TStringField;
    qryAlmacenesxContratosIdAlmacen: TStringField;
    qryAlmacenesxContratosDescripcion: TStringField;
    ReportesNumeroOrden: TStringField;
    ReportesFolioSalida: TStringField;
    ReportedFechaSalida: TDateField;
    ReportemComentarios: TStringField;
    ReportesNombre: TStringField;
    ReportesDescripcion: TStringField;
    Reportematerial: TMemoField;
    ReportesMedida: TStringField;
    ReportedCantidad: TFloatField;
    Reportealmacen: TStringField;
    Reporteproveedor: TStringField;
    frmtsclr1: TFormAutoScaler;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ChkTodosFrentesClick(Sender: TObject);
    procedure chkTodosLosAlmacenesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReporteSalidasAlamacenClosePreview(Sender: TObject);
    procedure FechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure FechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure cbxFrentesKeyPress(Sender: TObject; var Key: Char);
    procedure cbxAlmacenesKeyPress(Sender: TObject; var Key: Char);
    procedure frxReporteSalidasAlamacenGetValue(const VarName: string;
      var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReporteSalidasAlmacen: TfrmReporteSalidasAlmacen;
  sEncAgrupa: string;

implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmReporteSalidasAlmacen.chkTodosLosAlmacenesClick(Sender: TObject);
begin
  if chkTodosLosAlmacenes.Checked then
  begin
    cbxAlmacenes.Enabled := false;
  end
  else
  begin
    cbxAlmacenes.Enabled := True;
  end;
end;

procedure TfrmReporteSalidasAlmacen.cbxAlmacenesKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       btnImprimir.SetFocus
end;

procedure TfrmReporteSalidasAlmacen.cbxFrentesKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       cbxAlmacenes.SetFocus
end;

procedure TfrmReporteSalidasAlmacen.ChkTodosFrentesClick(Sender: TObject);
begin
  if ChkTodosFrentes.Checked then
  begin
    cbxFrentes.Enabled := false;
  end
  else
  begin
    cbxFrentes.Enabled := True;
  end;
end;

procedure TfrmReporteSalidasAlmacen.btnImprimirClick(Sender: TObject);
var
  frente : string;
  almacen : string;
  query : string;
   

begin
  frente := '';
  almacen := '';
  if ChkTodosFrentes.Checked = False then
  begin
     if cbxFrentes.Text <> '' then
     begin
        frente := ' AND a.sNumeroOrden = '+QuotedStr(qryFrentes.FieldByName('sNumeroOrden').AsString)+' ';
     end;
  end;

  if chkTodosLosAlmacenes.Checked = False then
  begin
     if cbxAlmacenes.Text <> '' then
     begin
        almacen := ' AND c.sIdAlmacen = '+QuotedStr(qryAlmacenesxContrato.FieldByName('sIdAlmacen').AsString)+' ';
     end;
  end;
  ShortDateFormat := 'yyyy-mm-dd';
  query := 'SELECT ' +
            'a.sNumeroOrden, a.sFolioSalida, a.dFechaSalida, a.sNombre, a.mComentarios, b.sDescripcion, d.mDescripcion AS material, d.sMedida, ' +
            'c.dCantidad, e.sDescripcion AS almacen, f.sRazon AS proveedor '+
          'FROM ' +
            'almacen_salida AS a ' +
          'INNER JOIN movimientosdealmacen AS b ON (a.sIdTipo = b.sIdTipo) ' +
          'INNER JOIN bitacoradesalida AS c ON (a.iFolioSalida = c.iFolioSalida) ' +
          'INNER JOIN almacenesxcontratos AS g ON (a.sContrato = g.sContrato AND c.sIdAlmacen = g.sIdAlmacen) ' +
          'INNER JOIN almacenes AS e ON (g.sIdAlmacen = e.sIdAlmacen) ' +
          'INNER JOIN insumos AS d ON ((:Principal=-1 or (:Principal<>-1 and a.sContrato = d.sContrato)) AND c.sIdInsumo = d.sIdInsumo AND c.sIdAlmacen = d.sIdAlmacen)' +
          'LEFT JOIN proveedores AS f ON (d.sIdProveedor = f.sIdProveedor) ' +
          'WHERE a.dFechaSalida BETWEEN '+QuotedStr(datetostr(FechaInicio.Date))+' AND '+QuotedStr(datetostr(FechaFinal.Date))+' ' +
          'AND a.sContrato = '+QuotedStr(global_contrato)+' ' +
          frente +
          almacen +
          'ORDER BY a.sNumeroOrden, c.sIdAlmacen, a.dFechaSalida;';
  Reporte.Active := False;
  Reporte.SQL.Clear;
  Reporte.SQL.Text := query;
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Reporte.ParamByName('Principal').AsString  := 'No'
  else
    Reporte.ParamByName('Principal').AsInteger :=-1;
  Reporte.Open;
  if Reporte.RecordCount > 0 then
  begin
      ShortDateFormat := 'dd / mm / yyyy';
      frxReporteSalidasAlamacen.Variables.Variables['fecha_inicio'] := QuotedStr(''+datetostr(FechaInicio.Date)+'');
      frxReporteSalidasAlamacen.Variables.Variables['fecha_fin'] := QuotedStr(''+datetostr(FechaFinal.Date)+'');


      frmReporteSalidasAlmacen.Visible := False;
      frxReporteSalidasAlamacen.LoadFromFile(global_files + global_miReporte + '_ALMReporteSalidaAlmacen.fr3');
       if not FileExists(global_files + global_miReporte + '_ALMReporteSalidaAlmacen.fr3') then
          showmessage('El archivo de reporte '+global_Mireporte+'_ALMReporteSalidaAlmacen.fr3 no existe, notifique al administrador del sistema');
      frxReporteSalidasAlamacen.ShowReport();
  end else
  begin
      showMessage('No hay Registros para este Contrato y Frente(es).');
      exit;
  end;

  

end;

procedure TfrmReporteSalidasAlmacen.FechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       cbxFrentes.SetFocus
end;

procedure TfrmReporteSalidasAlmacen.FechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       FechaFinal.SetFocus;
end;

procedure TfrmReporteSalidasAlmacen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;
  
end;

procedure TfrmReporteSalidasAlmacen.FormShow(Sender: TObject);
begin
  try
    qryFrentes.Active := false;
    qryFrentes.ParamByName('Contrato').AsString := global_contrato;
    qryFrentes.Open;

    qryAlmacenesxContrato.Active := false;
    qryAlmacenesxContrato.ParamByName('Contrato').AsString := global_contrato;
    qryAlmacenesxContrato.ParamByName('Usuario').AsString := global_usuario;
    qryAlmacenesxContrato.Open;
  except
    on E: Exception do
    begin
      MessageDlg('Error al cargar listas:' + E.Message, mtError, [mbOk], 0);
    end;
  end;
  
end;

procedure TfrmReporteSalidasAlmacen.frxReporteSalidasAlamacenClosePreview(
  Sender: TObject);
begin
   frmReporteSalidasAlmacen.Visible := True;
end;

procedure TfrmReporteSalidasAlmacen.frxReporteSalidasAlamacenGetValue(
  const VarName: string; var Value: Variant);
begin
  If CompareText(VarName, 'fecha_inicio') = 0 then
      Value := fechaInicio.Date ;

  If CompareText(VarName, 'fecha_fin') = 0 then
      Value := fechaFinal.Date;
end;

end.

