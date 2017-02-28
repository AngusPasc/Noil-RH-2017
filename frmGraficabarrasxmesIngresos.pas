unit frmGraficabarrasxmesIngresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeePenDlg, StdCtrls, TeCanvas, TeEngine, TeeDBEdit, TeeDBCrossTab,
  DB, TeeData, DBChart, ExtCtrls, TeeProcs, Chart, ZAbstractRODataset, ZDataset,
  Series, global, frxClass, frxDBSet;

type
  Tfrm_graficabarrasxmesIngresos = class(TForm)
    grChart: TDBChart;
    zGraficab: TZReadOnlyQuery;
    dsGrafica: TDataSource;
    zGraficabsDescripcion: TStringField;
    zGraficabdImporte: TFloatField;
    frGrafica: TfrxDBDataset;
    frxReport1: TfrxReport;
    Series1: TBarSeries;
    zGraficabdIdFecha: TDateField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_graficabarrasxmesIngresos: Tfrm_graficabarrasxmesIngresos;

implementation

uses frm_connection;

{$R *.dfm}

procedure Tfrm_graficabarrasxmesIngresos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_graficabarrasxmesIngresos.FormShow(Sender: TObject);
  Var
    valorc         : String ;
    qryConsultam   : TZReadOnlyQuery;
    fori, Imes1, Imes2, myDay, myMonth1, myMonth2, myYear : word;
    cadcompuesta, formada, mes1, mes2 : String ;

 Begin

     qryConsultam            := TZReadOnlyQuery.Create(Self);
     qryConsultam.Connection := connection.ZConnection;


     DecodeDate(dParamFechaI, myYear, myMonth1, myDay);
     iMes1 := (myMonth1) ;
     mes1  := UpperCase(LongMonthNames[iMes1]);

     DecodeDate(dParamFechaF, myYear, myMonth2, myDay);
     iMes2 := (myMonth2) ;
     mes2  := UpperCase(LongMonthNames[iMes2]);

     for fori := 1 to myMonth2 do
        begin
           iMes1 := (fori) ;
           mes1  := UpperCase(LongMonthNames[iMes1]);
           formada := ' i.sMes = "' + mes1 + '" OR '  ;
           cadcompuesta := cadcompuesta + formada  ;
        end;


     sParamQuery := ('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                             'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and (' + cadcompuesta + ' Order by i.sIdCompania, i.iFolio ') ;
     zGraficab.Active := False ;
     zGraficab.Sql.Clear ;
     zGraficab.SQL.Add(sParamQuery) ;
    if sParamTipo = 'Simple' then
    begin
        zGraficab.Params.ParamByName('fecha').DataType := ftDate ;
        zGraficab.Params.ParamByName('fecha').Value := dParamFecha ;
        zGraficab.Params.ParamByName('folio').DataType := ftInteger ;
        zGraficab.Params.ParamByName('folio').Value := iParamFolio ;
    end
    else
        if sParamTipo = 'Periodo' then
        begin
            zGraficab.Params.ParamByName('fechaI').DataType := ftDate ;
            zGraficab.Params.ParamByName('fechaI').Value := dParamFechaI ;
            zGraficab.Params.ParamByName('fechaF').DataType := ftDate ;
            zGraficab.Params.ParamByName('fechaF').Value := dParamFechaF ;
       end
       else
          if sParamTipo = 'Periodo1' then
          begin
              zGraficab.Params.ParamByName('fechaI').DataType := ftDate ;
              zGraficab.Params.ParamByName('fechaI').Value := dParamFechaI ;
              zGraficab.Params.ParamByName('fechaF').DataType := ftDate ;
              zGraficab.Params.ParamByName('fechaF').Value := dParamFechaF ;
              zGraficab.Params.ParamByName('Egreso').DataType := ftString ;
              zGraficab.Params.ParamByName('Egreso').Value := sParamEgreso ;
          end;
    zGraficab.Open ;
     qryConsultam.Active := False ;
     qryConsultam.SQL.Clear ;
     qryConsultam.SQL.Add('select  sum(te.dImporte) as dImporte from con_tesoreriapegresos te ' +
                          'INNER JOIN con_catalogodeegresos c On (te.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" ) ' +
                          'Where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF ') ;
     qryConsultam.Params.ParamByName('fechaI').DataType := ftDate ;
     qryConsultam.Params.ParamByName('fechaI').Value    := dParamFechaI ;
     qryConsultam.Params.ParamByName('fechaF').DataType := ftDate ;
     qryConsultam.Params.ParamByName('fechaF').Value    := dParamFechaF ;
     qryConsultam.Open ;
     If qryConsultam.RecordCount > 0 Then
       valorc := qryConsultam.FieldValues['dImporte']  ;

     //sParamTitle := strToDouble(valor) ;
     Caption := sParamTitle + '   Total Gastos  $' + valorc  + ' ' ;
     qryConsultam.Close ;
     qryConsultam.destroy ;
end;

end.
