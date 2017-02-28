unit frmNomina_AbrirNomina;

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
  DBAdvEd, DBDateTimePicker, DBLabelEdit, UDbGrid, cxGraphics, cxLookAndFeels,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons ;

type
  Tfrm_Nomina_AbrirNomina = class(TForm)
    ds_Nominas: TDataSource;
    zq_Nominas: TZQuery;
    tsNombre: TDBEdit;
    zq_NominasiId: TIntegerField;
    zq_NominassNomina: TStringField;
    zq_NominasdFechaInicial: TDateField;
    zq_NominasdFechaFinal: TDateField;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    grid_Comunidades: TDBGrid;
    frmBarra1: TfrmBarra;
    zq_NominasdTotal: TFloatField;
    DBLookupComboBox1: TDBLookupComboBox;
    zq_NominasiIdEgreso: TIntegerField;
    zq_NominasdTotalRestante: TFloatField;
    zq_NominasdDias: TFloatField;
    zq_NominasiProcesada: TIntegerField;
    zq_NominasDIAS: TIntegerField;
    btnAbrirNomina: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnAbrirNominaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_ComunidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ComunidadesTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_AbrirNomina: Tfrm_Nomina_AbrirNomina;
  utgrid:ticdbgrid;
implementation

{$R *.dfm}

procedure Tfrm_Nomina_AbrirNomina.btnAbrirNominaClick(Sender: TObject);
Var
  Query: TZQuery;
begin
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;

    Query.SQL.Text := 'SELECT iId, sNomina FROM nom_nominas WHERE iProcesada = 1';
    Query.Open;
    if Query.RecordCount > 0 then begin
      ShowMessage('Actualmente la nómina ' + Query.FieldByName('sNomina').AsString + ' se encuentra abierta, no se puede abrir otra mientras una se encuentra en proceso.');
      exit;
    end else begin
      zq_Nominas.Edit;
      zq_Nominas.FieldByName('iProcesada').AsInteger := 1;
      zq_Nominas.Post;
      zq_Nominas.Refresh;
      ShowMessage('La nómina ' + zq_Nominas.FieldByName('sNomina').AsString + ' acaba de ser abierta.');
      btnAbrirNomina.Enabled := False;
    end;
  Finally
    Query.Free;
  End;
end;

procedure Tfrm_Nomina_AbrirNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  Action := CaFree;
end;

procedure Tfrm_Nomina_AbrirNomina.FormShow(Sender: TObject);
Var
  Query: TZQuery;
begin
  
  UtGrid:=TicdbGrid.create(grid_Comunidades);
  zq_Nominas.Open;
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;

    Query.SQL.Text := 'SELECT iId, sNomina FROM nom_nominas WHERE iProcesada = 1';
    Query.Open;
    if Query.RecordCount > 0 then begin
      ShowMessage('Actualmente la nómina ' + Query.FieldByName('sNomina').AsString + ' se encuentra abierta, no se puede abrir otra mientras una se encuentra en proceso.');
      btnAbrirNomina.Enabled := False;
    end else begin
      btnAbrirNomina.Enabled := True;
    end;
  Finally
    Query.Free;
  End;
end;

procedure Tfrm_Nomina_AbrirNomina.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_Nomina_AbrirNomina.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_Nomina_AbrirNomina.grid_ComunidadesTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

end.
