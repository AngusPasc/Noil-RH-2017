unit frmGraficabarrasIngresosvsEgresosxcuenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeePenDlg, StdCtrls, TeCanvas, TeEngine, TeeDBEdit, TeeDBCrossTab,
  DB, TeeData, DBChart, ExtCtrls, TeeProcs, Chart, ZAbstractRODataset, ZDataset,
  Series, global, frxClass, frxDBSet, ZAbstractDataset, RxMemDS;

type
  Tfrm_graficasIngresosvsEgresosxcuent = class(TForm)
    grChart: TDBChart;
    dsGrafica: TDataSource;
    frGrafica: TfrxDBDataset;
    frxReport1: TfrxReport;
    Series2: TPieSeries;
    rxIngresosegresos: TRxMemoryData;
    rxIngresosegresosNombreCuenta: TStringField;
    rxIngresosegresosImporte: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_graficasIngresosvsEgresosxcuent: Tfrm_graficasIngresosvsEgresosxcuent;

implementation

uses frm_connection;

{$R *.dfm}

procedure Tfrm_graficasIngresosvsEgresosxcuent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;


procedure Tfrm_graficasIngresosvsEgresosxcuent.FormShow(Sender: TObject);
  Var
      sQueryI, SqueryG, squerytotal, valorc, sacumulados : String ;
      Ingresos, Gastos, Restax, Acumulado                : Double ;
      qryIngresos, qryGastos                             : TZReadOnlyQuery;
      i, ii   : Byte ;
    begin
        qryIngresos                 := TZReadOnlyQuery.Create(Self);
        qryIngresos.Connection      := Connection.ZConnection;

        qryGastos                   := TZReadOnlyQuery.Create(Self);
        qryGastos.Connection        := Connection.ZConnection;


       label4.Caption  :=  connection.configuracionCont.FieldByName('sNombre').AsString ;

            sQueryI := 'select sum(te.dImporteTotal+te.dIva) as dImporteTotal from con_tesoreriaegresos te ' +
                              'Where te.dIdFecha >= :FechaI And te.dIdFecha <= :FechaF and te.sTipoMovimiento="DEPOSITO" ' +
                              'and (iIdStatus=4 or iIdStatus=5) and sIdNumeroCuenta =:Cuenta Group By te.sTipoMovimiento ' ;

                   qryIngresos.Active := False ;
                   qryIngresos.Sql.Clear ;
                   qryIngresos.SQL.Add(sQueryI) ;
                   qryIngresos.Params.ParamByName('fechaI').DataType := ftDate ;
                   qryIngresos.Params.ParamByName('fechaI').Value    := dParamFechaI ;
                   qryIngresos.Params.ParamByName('fechaF').DataType := ftDate ;
                   qryIngresos.Params.ParamByName('fechaF').Value    := dParamFechaF ;
                   qryIngresos.Params.ParamByName('Cuenta').DataType := ftString ;
                   qryIngresos.Params.ParamByName('Cuenta').Value    := Global_Cuenta ;
                   qryIngresos.Open ;
                   if qryIngresos.RecordCount > 0  Then
                       Ingresos := qryIngresos.FieldValues['dImporteTotal']
                   else
                       Ingresos := 0 ;


                    sQueryG := 'select sum(te.dImporteTotal) as dImporteTotal from con_tesoreriaegresos te ' +
                               'Where te.dIdFecha >= :FechaI And te.dIdFecha <= :FechaF And te.sTipoMovimiento="GASTOS" ' +
                               'And lComprobado ="Si" and sIdNumeroCuenta =:Cuenta Group By te.sTipoMovimiento ';
                   qryGastos.Active := False ;
                   qryGastos.Sql.Clear ;
                   qryGastos.SQL.Add(sQueryG) ;
                   qryGastos.Params.ParamByName('fechaI').DataType  := ftDate ;
                   qryGastos.Params.ParamByName('fechaI').Value     := dParamFechaI ;
                   qryGastos.Params.ParamByName('fechaF').DataType  := ftDate ;
                   qryGastos.Params.ParamByName('fechaF').Value     := dParamFechaF ;
                   qryGastos.Params.ParamByName('Cuenta').DataType := ftString ;
                   qryGastos.Params.ParamByName('Cuenta').Value    := Global_Cuenta ;
                   qryGastos.Open ;
                   if qryGastos.RecordCount > 0 Then
                       Gastos := qryGastos.FieldValues['dImporteTotal']
                   else
                       Gastos := 0 ;


                   RxIngresosEgresos.Active := True ;
                for i := 1 to 2 do
                   begin
                      RxIngresosEgresos.Append ;
                      if i = 1 then
                           begin
                              RxIngresosEgresos.FieldValues['Nombre']    := 'DEPOSITO' ;
                              RxIngresosEgresos.FieldValues['Importe']   :=  Ingresos ;
                           end;
                      if i = 2 then
                           begin
                              RxIngresosEgresos.FieldValues['Nombre']    := 'GASTOS' ;
                              RxIngresosEgresos.FieldValues['Importe']   :=  Gastos * -1 ;
                           end;

                               RxIngresosEgresos.Post ;
                   end;
       Acumulado  := Ingresos + Gastos  ;
       sacumulados := FloatToStr(acumulado);
       Caption := sParamTitle + '   Total Saldos en Bancos  $' + sacumulados  + ' ' ;
       label1.caption :=  '   Total Saldos en Utilidad  $' + sacumulados  + ' ' ;
       Label3.Caption := sParamTitle  ;
       qryIngresos.Destroy ;
       qryGastos.Destroy ;
end;

end.
