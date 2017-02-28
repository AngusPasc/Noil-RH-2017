unit frmNomina_GuardarNomina;

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
  Tfrm_Nomina_GuardarNomina = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_GuardarNomina: Tfrm_Nomina_GuardarNomina;

implementation

{$R *.dfm}

procedure Tfrm_Nomina_GuardarNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Nomina_GuardarNomina.FormShow(Sender: TObject);
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
      If MessageDlg('Se guardará esta nómina, ¿desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        Query.Edit;
        Query.FieldByName('iProcesada').AsInteger := 2;
        Query.Post;
      end;
    end;
  Finally
    Close;
  End;

end;

end.
