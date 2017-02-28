unit frmNomina_NuevoPeriodo;

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
  DBAdvEd, DBDateTimePicker, DBLabelEdit, HTMLabel, frmNomina_EmpleadosPorNomina,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  Tfrm_Nomina_NuevoPeriodo = class(TForm)
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
    Button1: TButton;
    zq_NominasdTotal: TFloatField;
    zq_NominasDIAS: TIntegerField;
    zq_NominasiIdEgreso: TIntegerField;
    zq_NominasdTotalRestante: TFloatField;
    Button2: TButton;
    Label9: TLabel;
    cmbPeriodo: TComboBox;
    zq_NominasdDias: TFloatField;
    HTMLabel1: THTMLabel;
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
    zq_NominasiProcesada: TIntegerField;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
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
  frm_Nomina_NuevoPeriodo: Tfrm_Nomina_NuevoPeriodo;
  Excel, Libro, Hoja: Variant;

implementation
Uses frmNomina_ParametrosNomina, frm_inteligent;

{$R *.dfm}

procedure Tfrm_Nomina_NuevoPeriodo.btnCancelarClick(Sender: TObject);
begin
  zq_Nominas.Cancel;
  Close;
end;

procedure Tfrm_Nomina_NuevoPeriodo.btnGuardarClick(Sender: TObject);
begin
  //consultamos el maxio Id...
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select max(iId) as iId from nom_nominas');
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
     zq_Nominas.FieldByName('iId').AsInteger := connection.zCommand.FieldByName('iId').AsInteger  + 1
  else
     zq_Nominas.FieldByName('iId').AsInteger := 0;

  case cmbPeriodo.ItemIndex of
    0: begin
      zq_Nominas.FieldByName('dDias').AsInteger := 7;
    end;
    1: begin
      zq_Nominas.FieldByName('dDias').AsInteger := 10;
    end;
    2: begin
      zq_Nominas.FieldByName('dDias').AsInteger := 14;
    end;
    3: begin
      zq_Nominas.FieldByName('dDias').AsInteger := 15;
    end;
    4: begin
      zq_Nominas.FieldByName('dDias').AsInteger := 30;
    end;
  end;
  zq_Nominas.FieldByName('iProcesada').AsInteger := 1;
  zq_Nominas.Post;
  frmInteligent.Status.Panels.Items[15].Text := zq_Nominas.FieldByName('sNomina').AsString;
  If MessageDlg('El Periodo fue creado, ¿desea continuar con la selección del personal y las incidencias?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    Application.CreateForm(Tfrm_Nomina_EmpleadosPorNomina, frm_Nomina_EmpleadosPorNomina);
    frm_Nomina_EmpleadosPorNomina.Show;
  end;
  Close;
end;

procedure Tfrm_Nomina_NuevoPeriodo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Nomina_NuevoPeriodo.FormShow(Sender: TObject);
Var
  Query: TZQuery;
begin
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;
    Query.SQL.Text := 'SELECT * FROM nom_nominas WHERE iProcesada = 1;';
    Query.Open;
    if Query.RecordCount > 0 then begin
      ShowMessage('Ya existe una nómina en estado de proceso, para crear una nueva, por favor guarde y cierre la anterior.');
      Close;
    end;
  Finally
    Query.Free;
  End;
  zq_Nominas.Active := False ;
  zq_Nominas.Open;
  zq_Nominas.Append;
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;
    Query.SQL.Text := 'SELECT * FROM configuracion WHERE sContrato = :Contrato';
    Query.Params.ParamByName('Contrato').AsString := Global_Contrato;
    Query.Open;
    zq_Nominas.FieldByName('sNombreEmpresa').AsString := Query.FieldByName('sNombre').AsString;
    zq_Nominas.FieldByName('sRFC').AsString := Query.FieldByName('sRfc').AsString;
    zq_Nominas.FieldByName('iId_RegistroPatronal').AsString := Query.FieldByName('iId_RegistroPatronal').AsString;
    zq_Nominas.FieldByName('iId_ZonaGeografica').AsString := Query.FieldByName('iId_ZonaGeografica').AsString;
  Finally
    Query.Free;
  End;
end;

procedure Tfrm_Nomina_NuevoPeriodo.HTMLabel1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Nomina_ParametrosNomina, frm_Nomina_ParametrosNomina);
  frm_Nomina_ParametrosNomina.Show;
end;

procedure Tfrm_Nomina_NuevoPeriodo.zq_NominasiIdEgresoChange(Sender: TField);
begin
//  LabelRestante.Caption := FormatFloat('$ ###,##0.00', (zq_Egresos.FieldByName('dTotalCheque').AsFloat - zq_Nominas.FieldByName('dTotal').AsFloat));
end;

procedure Tfrm_Nomina_NuevoPeriodo.SiguienteCajon(Sender: TObject; var Key: Char);
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
