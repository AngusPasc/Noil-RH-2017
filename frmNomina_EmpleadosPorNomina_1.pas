unit frmNomina_EmpleadosPorNomina_1;

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
  DBAdvEd, DBDateTimePicker, DBLabelEdit, HTMLabel, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid;

type
  Tfrm_Nomina_EmpleadosPorNomina_1 = class(TForm)
    ds_Nominas: TDataSource;
    zq_Nominas: TZQuery;
    Label1: TLabel;
    tsNombre: TDBEdit;
    zq_NominasiId: TIntegerField;
    zq_NominassNomina: TStringField;
    zq_NominasdFechaInicial: TDateField;
    zq_NominasdFechaFinal: TDateField;
    Button1: TButton;
    zq_NominasdTotal: TFloatField;
    zq_NominasDIAS: TIntegerField;
    zq_NominasiIdEgreso: TIntegerField;
    zq_NominasdTotalRestante: TFloatField;
    Button2: TButton;
    zq_NominasdDias: TFloatField;
    ZQuery1: TZQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    FloatField1: TFloatField;
    IntegerField2: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DataSource2: TDataSource;
    zq_NominassNombreEmpresa: TStringField;
    zq_NominassRFC: TStringField;
    zq_NominasiId_RegistroPatronal: TIntegerField;
    zq_NominasiId_ZonaGeografica: TIntegerField;
    zq_NominasdSalarioMinimo: TFloatField;
    zq_NominasdSalarioMinimoDF: TFloatField;
    NextGrid1: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxTextColumn2: TNxTextColumn;
    NextGrid2: TNextGrid;
    NxTextColumn3: TNxTextColumn;
    NxCheckBoxColumn2: TNxCheckBoxColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    NextGrid3: TNextGrid;
    NxTextColumn5: TNxTextColumn;
    NxCheckBoxColumn3: TNxCheckBoxColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SiguienteCajon(Sender: TObject; var Key: Char);
    procedure zq_NominasiIdEgresoChange(Sender: TField);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure HTMLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_EmpleadosPorNomina_1: Tfrm_Nomina_EmpleadosPorNomina_1;
  Excel, Libro, Hoja: Variant;

implementation
Uses frmNomina_ParametrosNomina;

{$R *.dfm}

procedure Tfrm_Nomina_EmpleadosPorNomina_1.btnCancelarClick(Sender: TObject);
begin
  zq_Nominas.Cancel;
  Close;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina_1.btnGuardarClick(Sender: TObject);
begin

  If MessageDlg('El Periodo fue creado, ¿desea continuar con la selección del personal y las incidencias?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    //
  end else begin
  
  end;

  Close;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina_1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina_1.FormShow(Sender: TObject);
Var
  Query: TZQuery;
begin
  zq_Nominas.Active := False ;
  zq_Nominas.Open;
  zq_Nominas.Append;
  Query := TZQuery.Create(Self);
  Query.Connection := Connection.zConnection;
  Query.SQL.Text := 'SELECT * FROM configuracion WHERE sContrato = :Contrato';
  Query.Params.ParamByName('Contrato').AsString := Global_Contrato;
  Query.Open;
  zq_Nominas.FieldByName('sNombreEmpresa').AsString := Query.FieldByName('sNombre').AsString;
  zq_Nominas.FieldByName('sRFC').AsString := Query.FieldByName('sRfc').AsString;
  zq_Nominas.FieldByName('iId_RegistroPatronal').AsString := Query.FieldByName('iId_RegistroPatronal').AsString;
  zq_Nominas.FieldByName('iId_ZonaGeografica').AsString := Query.FieldByName('iId_ZonaGeografica').AsString;
//  zq_Nominas.FieldByName('dSalarioMinimo').AsString := Query.FieldByName('sNombre').AsString;
//  zq_Nominas.FieldByName('iId_RegistroPatronal').AsString := Query.FieldByName('iId_RegistroPatronal').AsString;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina_1.HTMLabel1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Nomina_ParametrosNomina, frm_Nomina_ParametrosNomina);
  frm_Nomina_ParametrosNomina.Show;
end;

procedure Tfrm_Nomina_EmpleadosPorNomina_1.zq_NominasiIdEgresoChange(Sender: TField);
begin
//  LabelRestante.Caption := FormatFloat('$ ###,##0.00', (zq_Egresos.FieldByName('dTotalCheque').AsFloat - zq_Nominas.FieldByName('dTotal').AsFloat));
end;

procedure Tfrm_Nomina_EmpleadosPorNomina_1.SiguienteCajon(Sender: TObject; var Key: Char);
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

end.
