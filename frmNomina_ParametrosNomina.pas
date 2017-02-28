unit frmNomina_ParametrosNomina;

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
  DBAdvEd, DBDateTimePicker, DBLabelEdit, HTMLabel, frmNomina_NuevoPeriodo,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  Tfrm_Nomina_ParametrosNomina = class(TForm)
    Label1: TLabel;
    tsEmpresa: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    zq_RegistrosPatronales: TZQuery;
    ds_RegistrosPatronales: TDataSource;
    zq_RegistrosPatronalesiId: TIntegerField;
    zq_RegistrosPatronalessRazonSocial: TStringField;
    zq_RegistrosPatronalessRegistroPatronal: TStringField;
    tsRFC: TDBEdit;
    tdSalarioMinimo: TDBEdit;
    dbRegistroPatronal: TDBLookupComboBox;
    dbZonaGeografica: TDBLookupComboBox;
    zq_ZonasGeograficas: TZQuery;
    ds_ZonasGeograficas: TDataSource;
    zq_ZonasGeograficasiId: TIntegerField;
    zq_ZonasGeograficassZona: TStringField;
    zq_ZonasGeograficasdSalarioMinimo: TFloatField;
    btnGuardar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SiguienteCajon(Sender: TObject; var Key: Char);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_ParametrosNomina: Tfrm_Nomina_ParametrosNomina;
  Excel, Libro, Hoja: Variant;

implementation

{$R *.dfm}

procedure Tfrm_Nomina_ParametrosNomina.btnGuardarClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Nomina_ParametrosNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Nomina_ParametrosNomina.FormShow(Sender: TObject);
begin
  zq_RegistrosPatronales.Open;
  zq_ZonasGeograficas.Open;
end;

procedure Tfrm_Nomina_ParametrosNomina.SiguienteCajon(Sender: TObject; var Key: Char);
Var
  Control: TWinControl;
begin
  Control := FindNextControl(Sender as TWinControl, True, True, True);
  if Key = #13 then begin
    if (FindNextControl(Sender as TWinControl, True, True, True) is TDBEdit) then begin
      SelectNext(Sender as TWinControl, True, True);
    end else begin
      {}
    end;
  end;
end;

end.
