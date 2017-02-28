unit frmGrafica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeePenDlg, StdCtrls, TeCanvas, TeEngine, TeeDBEdit, TeeDBCrossTab,
  DB, TeeData, DBChart, ExtCtrls, TeeProcs, Chart, ZAbstractRODataset, ZDataset,
  Series, global, frxClass, frxDBSet;

type
  Tfrm_grafica = class(TForm)
    grChart: TDBChart;
    zGrafica: TZReadOnlyQuery;
    dsGrafica: TDataSource;
    zGraficasIdEgreso: TStringField;
    zGraficasDescripcion: TStringField;
    zGraficadImporte: TFloatField;
    Series1: TPieSeries;
    frGrafica: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_grafica: Tfrm_grafica;

implementation

{$R *.dfm}

procedure Tfrm_grafica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_grafica.FormShow(Sender: TObject);
begin
    zGrafica.Active := False ;
    zGrafica.Sql.Clear ;
    zGrafica.SQL.Add(sParamQuery) ;
    if sParamTipo = 'Simple' then
    begin
        zGrafica.Params.ParamByName('fecha').DataType := ftDate ;
        zGrafica.Params.ParamByName('fecha').Value := dParamFecha ;
        zGrafica.Params.ParamByName('folio').DataType := ftInteger ;
        zGrafica.Params.ParamByName('folio').Value := iParamFolio ;
        zGrafica.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
    end
    else
        if sParamTipo = 'Periodo' then
        begin
            zGrafica.Params.ParamByName('fechaI').DataType := ftDate ;
            zGrafica.Params.ParamByName('fechaI').Value := dParamFechaI ;
            zGrafica.Params.ParamByName('fechaF').DataType := ftDate ;
            zGrafica.Params.ParamByName('fechaF').Value := dParamFechaF ;
            zGrafica.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
       end
       else
          if sParamTipo = 'Periodo1' then
          begin
              zGrafica.Params.ParamByName('fechaI').DataType := ftDate ;
              zGrafica.Params.ParamByName('fechaI').Value := dParamFechaI ;
              zGrafica.Params.ParamByName('fechaF').DataType := ftDate ;
              zGrafica.Params.ParamByName('fechaF').Value := dParamFechaF ;
              zGrafica.Params.ParamByName('Egreso').DataType := ftString ;
              zGrafica.Params.ParamByName('Egreso').Value := sParamEgreso ;
              zGrafica.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
          end;
    zGrafica.Open ;
    Caption := sParamTitle ;

end;

end.
