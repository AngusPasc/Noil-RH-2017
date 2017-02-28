unit frmGraficabarrasIngresosBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeePenDlg, StdCtrls, TeCanvas, TeEngine, TeeDBEdit, TeeDBCrossTab,
  DB, TeeData, DBChart, ExtCtrls, TeeProcs, Chart, ZAbstractRODataset, ZDataset,
  Series, global, frxClass, frxDBSet, ZAbstractDataset, RxMemDS;

type
  Tfrm_graficabarrasIngresosBancos = class(TForm)
    grChart: TDBChart;
    dsGrafica: TDataSource;
    frGrafica: TfrxDBDataset;
    frxReport1: TfrxReport;
    Series2: TPieSeries;
    rxBancos: TRxMemoryData;
    rxBancosNombreCuenta: TStringField;
    rxBancosImporte: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_graficabarrasIngresosBancos: Tfrm_graficabarrasIngresosBancos;

implementation

uses frm_connection;

{$R *.dfm}


procedure Tfrm_graficabarrasIngresosBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_graficabarrasIngresosBancos.FormShow(Sender: TObject);
  Var
    sQueryI, SqueryG, squerytotal, valorc, sacumulados   : String ;
    Ingresos, Gastos, Restax, Acumulado              : Double ;
    qrySumaTotal, qryIngresos, qryGastos, qryTotalCuentas  : TZReadOnlyQuery;
    i, ii   : Byte ;
 Begin

       qrySumaTotal                := TZReadOnlyQuery.Create(Self);
       qrySumaTotal.Connection     := Connection.ZConnection;

       qryTotalCuentas             := TZReadOnlyQuery.Create(Self);
       qryTotalCuentas.Connection  := Connection.ZConnection;

       qryIngresos                 := TZReadOnlyQuery.Create(Self);
       qryIngresos.Connection      := Connection.ZConnection;

       qryGastos                   := TZReadOnlyQuery.Create(Self);
       qryGastos.Connection        := Connection.ZConnection;

       
       label2.Caption  :=  connection.configuracionCont.FieldByName('sNombre').AsString ;

       squerytotal := 'select sidnumerocuenta, sNombreCuenta from con_cuentasbancarias';
       qrytotalcuentas.Active := false ;
       qrytotalcuentas.SQL.Clear ;
       qrytotalcuentas.sql.Add(squerytotal);
       qryTotalCuentas.Open ;
       qryTotalCuentas.First ;
         while not qryTotalCuentas.Eof  do
          begin
                   sQueryI := 'select sum(te.dImporteTotal+te.dIva) as dImporteTotal from con_tesoreriaegresos te ' +
                              'Where te.dIdFecha >= :FechaI And te.dIdFecha <= :FechaF and te.sTipoMovimiento="DEPOSITO" ' +
                              'and (iIdStatus=4 or iIdStatus=5) And te.sIdNumeroCuenta =:Cuenta Group By te.sIdNumeroCuenta' ;

                   qryIngresos.Active := False ;
                   qryIngresos.Sql.Clear ;
                   qryIngresos.SQL.Add(sQueryI) ;
                   qryIngresos.Params.ParamByName('fechaI').DataType := ftDate ;
                   qryIngresos.Params.ParamByName('fechaI').Value    := dParamFechaI ;
                   qryIngresos.Params.ParamByName('fechaF').DataType := ftDate ;
                   qryIngresos.Params.ParamByName('fechaF').Value    := dParamFechaF ;
                   qryIngresos.Params.ParamByName('Cuenta').DataType := ftString ;
                   qryIngresos.Params.ParamByName('Cuenta').Value    := qryTotalCuentas.FieldValues['sIdNumeroCuenta'] ;
                   qryIngresos.Open ;
                   if qryIngresos.RecordCount > 0  Then
                       Ingresos := qryIngresos.FieldValues['dImporteTotal']
                   else
                       Ingresos := 0 ;


                    sQueryG := 'select sum(te.dImporteTotal) as dImporteTotal from con_tesoreriaegresos te ' +
                               'Where te.dIdFecha >= :FechaI And te.dIdFecha <= :FechaF And te.sTipoMovimiento="GASTOS" ' +
                               'And lComprobado ="Si" And te.sIdNumeroCuenta =:Cuenta Group By te.sIdNumeroCuenta ';
                   qryGastos.Active := False ;
                   qryGastos.Sql.Clear ;
                   qryGastos.SQL.Add(sQueryG) ;
                   qryGastos.Params.ParamByName('fechaI').DataType  := ftDate ;
                   qryGastos.Params.ParamByName('fechaI').Value     := dParamFechaI ;
                   qryGastos.Params.ParamByName('fechaF').DataType  := ftDate ;
                   qryGastos.Params.ParamByName('fechaF').Value     := dParamFechaF ;
                   qryGastos.Params.ParamByName('Cuenta').DataType  := ftString ;
                   qryGastos.Params.ParamByName('Cuenta').Value    := qryTotalCuentas.FieldValues['sIdNumeroCuenta'] ;
                   qryGastos.Open ;
                   if qryGastos.RecordCount > 0 Then
                       Gastos := qryGastos.FieldValues['dImporteTotal']
                   else
                       Gastos := 0 ;

                   if gastos < 0 Then
                     Restax := Ingresos + Gastos
                   else
                     Restax := Ingresos - Gastos ;

                   Acumulado  := Restax + Acumulado  ;

                   RxBancos.Active := True ;
                   RxBancos.Append ;
                   rxBancos.FieldValues['NombreCuenta']  :=  qryTotalCuentas.FieldValues['sNombreCuenta'] ;
                   rxBancos.FieldValues['Importe']       :=  Restax ;
                   RxBancos.Post ;
                   qryTotalCuentas.Next ;
          end;

       sacumulados := FloatToStr(acumulado);
       Caption := sParamTitle + '   Total Saldos en Bancos  $' + sacumulados  + ' ' ;
       label1.caption :=  '   Total Saldos en Bancos  $' + sacumulados  + ' ' ;
       qrySumaTotal.destroy ;
       qryTotalCuentas.Destroy;
       qryIngresos.Destroy ;
       qryGastos.Destroy ;

end;

end.
