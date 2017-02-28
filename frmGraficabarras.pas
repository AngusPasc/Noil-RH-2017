unit frmGraficabarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeePenDlg, StdCtrls, TeCanvas, TeEngine, TeeDBEdit, TeeDBCrossTab,
  DB, TeeData, DBChart, ExtCtrls, TeeProcs, Chart, ZAbstractRODataset, ZDataset,
  Series, global, frxClass, frxDBSet;

type
  Tfrm_graficabarras = class(TForm)
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
  frm_graficabarras: Tfrm_graficabarras;

implementation

uses frm_connection;

{$R *.dfm}

procedure Tfrm_graficabarras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_graficabarras.FormShow(Sender: TObject);
  Var
    valorc         : String ;
    x              : Double ;
    qryConsultam   : TZReadOnlyQuery;

 Begin

    qryConsultam            := TZReadOnlyQuery.Create(Self);
    qryConsultam.Connection := connection.ZConnection;

    zGraficab.Active := False ;
    zGraficab.Sql.Clear ;
    zGraficab.SQL.Add(sParamQuery) ;
    if sParamTipo = 'Simple' then
    begin
        zGraficab.Params.ParamByName('fecha').DataType := ftDate ;
        zGraficab.Params.ParamByName('fecha').Value := dParamFecha ;
        zGraficab.Params.ParamByName('folio').DataType := ftInteger ;
        zGraficab.Params.ParamByName('folio').Value := iParamFolio ;
        zGraficab.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
    end
    else
        if sParamTipo = 'Periodo' then
        begin
            zGraficab.Params.ParamByName('fechaI').DataType := ftDate ;
            zGraficab.Params.ParamByName('fechaI').Value := dParamFechaI ;
            zGraficab.Params.ParamByName('fechaF').DataType := ftDate ;
            zGraficab.Params.ParamByName('fechaF').Value := dParamFechaF ;
            zGraficab.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
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
              zGraficab.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
          end;
    zGraficab.Open ;
     qryConsultam.Active := False ;
     qryConsultam.SQL.Clear ;
     qryConsultam.SQL.Add('select  sum(te.dImporte) as dImporte from con_tesoreriapegresos te ' +
                          'INNER JOIN con_catalogodeegresos c On (te.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" ) ' +
                          'Where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF and te.idorganizacion =:organizacion ') ;
     qryConsultam.Params.ParamByName('fechaI').DataType := ftDate ;
     qryConsultam.Params.ParamByName('fechaI').Value    := dParamFechaI ;
     qryConsultam.Params.ParamByName('fechaF').DataType := ftDate ;
     qryConsultam.Params.ParamByName('fechaF').Value    := dParamFechaF ;
     qryConsultam.params.ParamByName('organizacion').Value := iParamOrganizacion ;
     qryConsultam.Open ;
     If qryConsultam.RecordCount > 0 Then
       valorc := qryConsultam.FieldValues['dImporte']  ;

     //sParamTitle := strToDouble(valor) ;
     Caption := sParamTitle + '   Total Gastos  $' + valorc  + ' ' ;
     qryConsultam.Close ;
     qryConsultam.destroy ;
end;

end.
