unit frmGraficabarrasIngresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeePenDlg, StdCtrls, TeCanvas, TeEngine, TeeDBEdit, TeeDBCrossTab,
  DB, TeeData, DBChart, ExtCtrls, TeeProcs, Chart, ZAbstractRODataset, ZDataset,
  Series, global, frxClass, frxDBSet, ZAbstractDataset, JvExControls, JvLabel;

type
  Tfrm_graficabarrasIngresos = class(TForm)
    grChart: TDBChart;
    dsGrafica: TDataSource;
    frGrafica: TfrxDBDataset;
    frxReport1: TfrxReport;
    zGraficab: TZQuery;
    Series2: TPieSeries;
    titulo: TJvLabel;
    fltfldGraficabdIva: TFloatField;
    strngfldGraficabsTipoMovimiento: TStringField;
    dtfldGraficabdFechaFactura: TDateField;
    strngfldGraficabsRazonSocial: TStringField;
    intgrfldGraficabiFolio: TIntegerField;
    fltfldGraficabImporte: TFloatField;
    dtfldGraficabdIdFecha: TDateField;
    strngfldGraficabsNombre: TStringField;
    strngfldGraficabsNombreCuenta: TStringField;
    strngfldGraficabsIdCompania: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_graficabarrasIngresos: Tfrm_graficabarrasIngresos;

implementation

uses frm_connection, frmDepositoscias;

{$R *.dfm}

procedure Tfrm_graficabarrasIngresos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_graficabarrasIngresos.FormShow(Sender: TObject);
  Var
    valorc         : String ;
    x              : Double ;
    qryConsultam   : TZReadOnlyQuery;

 Begin
  qryConsultam            := TZReadOnlyQuery.Create(Self);
  qryConsultam.Connection := Connection.ZConnection;

  zGraficab.Active := False ;
  zGraficab.Sql.Clear ;
  zGraficab.SQL.Add(sParamQuery) ;

  titulo.Caption  :=  connection.configuracionCont.FieldByName('sNombre').AsString ;
  if sParamTipo = 'Simple' then
  begin
    zGraficab.Params.ParamByName('fecha').AsDate    := dParamFecha ;
    zGraficab.Params.ParamByName('folio').AsInteger := iParamFolio ;
  end
  else
  if sParamTipo = 'Periodogral' then
  begin
    zGraficab.Params.ParamByName('fechaI').AsDate            := dParamFechaI ;
    zGraficab.Params.ParamByName('fechaF').AsDate            := dParamFechaF ;
  end
  else
  if sParamTipo = 'Periodo1' then
  begin
    zGraficab.Params.ParamByName('fechaI').AsDate   := dParamFechaI ;
    zGraficab.Params.ParamByName('fechaF').AsDate   := dParamFechaF ;
    zGraficab.Params.ParamByName('Egreso').AsString := sParamEgreso ;
  end
  else
  if sParamTipo = 'Periodocomp' then
  begin
    zGraficab.Params.ParamByName('fechaI').asDate         := dParamFechaI ;
    zGraficab.Params.ParamByName('fechaF').asDate         := dParamFechaF ;
    zGraficab.Params.ParamByName('CompaniaConf').AsString := global_contrato ;
  end  ;
  zGraficab.Open ;
  qryConsultam.Active := False ;
  qryConsultam.SQL.Clear ;
  qryConsultam.SQL.Add('select  c.sIdCompaniaConf, sum(i.dImporteTotal+i.dIva) as importe  From con_tesoreriaegresos i '+
                       'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania And c.sIdCompaniaConf =:Companiaconf )  ' +
                       'Inner Join `con_cuentasbancarias` b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta  ' +
                       'And b.sIdCompaniaConf= :CompaniaConf)  ' +
                       'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and i.`iIdFolio` >0 And  i.iIdstatus=4 ' +
                       'And i.dFechafactura >= :FechaI and i.dFechafactura <= :FechaF  ' +
                       'and c.sIdCompaniaconf =:CompaniaConf group by c.sIdCompaniaConf ') ;
  qryConsultam.Params.ParamByName('fechaI').AsDate         := dParamFechaI ;
  qryConsultam.Params.ParamByName('fechaF').AsDate         := dParamFechaF ;
  qryConsultam.Params.ParamByName('CompaniaConf').AsString := global_contrato;
  qryConsultam.Open ;
  If qryConsultam.RecordCount > 0 Then
    valorc := qryConsultam.FieldValues['Importe']  ;
  Caption := sParamTitle + '   Total Gastos  $' + valorc  + ' ' ;
  qryConsultam.Close ;
  qryConsultam.destroy ;
end;

end.
