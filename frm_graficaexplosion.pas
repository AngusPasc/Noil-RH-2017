unit frm_graficaexplosion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, DBChart, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,
  global, frm_barra, db, Grids, frm_Connection, StdCtrls,
  DBCtrls, ComCtrls, Mask, Utilerias, StrUtils, Menus, Buttons, rxCurrEdit, rxToolEdit, sSkinProvider, MasUtilerias,
  acProgressBar, Tabs, BarrasGantt, AdvToolBar, ToolPanels, AdvNavBar, AdvPanel,
  AdvToolBtn, DBGrids, Series, frxClass, frxDBSet, frxChart ;

 type
  TfrmGraficaExplosion = class(TForm)
    ds_explosion: TDataSource;
    Explosion: TZQuery;
    ExplosiontotalMN: TFloatField;
    ExplosiontotalDLL: TFloatField;
    GraficaMN: TDBChart;
    PieSeries1: TPieSeries;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Basicos: TLabel;
    GraficaDLL: TDBChart;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PieSeries2: TPieSeries;
    Button1: TButton;
    Button2: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgraficaexplosion: TfrmGraficaExplosion;
  dll : string;
  band : boolean;

implementation

{$R *.dfm}




procedure TfrmGraficaExplosion.Button1Click(Sender: TObject);
begin
    GraficaDLL.Visible:=False;
    GraficaMN.Visible:=True;
end;

procedure TfrmGraficaExplosion.Button2Click(Sender: TObject);
begin
    GraficaMN.Visible:=False;
    GraficaDLL.Visible:=True;
end;


procedure TfrmGraficaExplosion.Button3Click(Sender: TObject);
begin
GraficaDLL.Print;
end;

procedure TfrmGraficaExplosion.Button4Click(Sender: TObject);
//dll
begin
 band:=True;
 frxReport1.LoadFromFile(global_files + 'GraficaExplosion.fr3');
 frxReport1.ShowReport;
end;


procedure TfrmGraficaExplosion.Button5Click(Sender: TObject);
begin
GraficaMN.Print;
end;

procedure TfrmGraficaExplosion.Button6Click(Sender: TObject);
// mn
begin
  band:=False;
  frxReport1.LoadFromFile(global_files + 'GraficaExplosion.fr3');
  frxReport1.ShowReport;
end;

procedure TfrmGraficaExplosion.FormShow(Sender: TObject);
begin
  Explosion.Active := False ;
  Explosion.SQL.Clear ;
  Explosion.Sql.Add ('select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCostoDLL) as totalDLL from recursosanexosnuevos ran ' +
                     'where sContrato =:Contrato  ' +
' union                                                                                                   ' +
' select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCostoDLL) as totalDLL from recursospersonalnuevos rpn  ' +
' where sContrato =:Contrato ' +
' union          ' +
' select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCostoDLL) as totalDLL from recursosequiposnuevos ren ' +
' where sContrato =:Contrato  ' +
' union                 ' +
' select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCostoDLL) as totalDLL from recursosherramientasnuevos rhn    ' +
' where sContrato =:Contrato ' +
' union               ' +
' select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCostoDLL) as totalDLL from recursosbasicosnuevos rbn  ' +
' where sContrato =:Contrato           ');
  Explosion.Params.ParamByName('Contrato').DataType := ftString ;
  Explosion.Params.ParamByName('Contrato').Value    := Global_Contrato ;
  Explosion.Open ;
  GraficaDLL.Visible:=False;
  GraficaMN.Visible:=True;

end;

procedure TfrmGraficaExplosion.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
if band then
  begin
    if CompareText(VarName, 'dll') = 0 then
        Value := '1' ;
  end
else
  begin
    if CompareText(VarName, 'dll') = 0 then
        Value := '0'   ;
  end  ;
end;

end.
