unit frm_EstimacionDetalleAdicional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  Grids, DBGrids, rxToolEdit, RXDBCtrl, CheckLst, JvExControls, JvxCheckListBox,
  ZAbstractDataset, rxSpeedbar, rxCurrEdit;
type
  TfrmEstimacionDetalleAdicional = class(TForm)
    CmdCancel: TButton;
    Grid_Partidas: TRxDBGrid;
    ds_ActividadesxEstimacion: TDataSource;
    ActividadesxEstimacion: TZQuery;
    ActividadesxEstimacionsContrato: TStringField;
    ActividadesxEstimacioniNumeroEstimacion: TStringField;
    ActividadesxEstimacionsWbs: TStringField;
    ActividadesxEstimacionsWbsAnterior: TStringField;
    ActividadesxEstimacionsNumeroActividad: TStringField;
    ActividadesxEstimacionsTipoActividad: TStringField;
    ActividadesxEstimacionmDescripcion: TMemoField;
    ActividadesxEstimaciondCostoMN: TFloatField;
    ActividadesxEstimaciondCostoDll: TFloatField;
    ActividadesxEstimaciondVentaMN: TFloatField;
    ActividadesxEstimaciondVentaDLL: TFloatField;
    ActividadesxEstimacionsMedida: TStringField;
    ActividadesxEstimaciondCantidadAnexo: TFloatField;
    ActividadesxEstimaciondAcumuladoAnterior: TFloatField;
    ActividadesxEstimaciondCantidad: TFloatField;
    ActividadesxEstimaciondAcumuladoActual: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorDLL: TFloatField;
    ActividadesxEstimacionsWbsSpace: TStringField;
    ActividadesxEstimaciondMontoMN: TFloatField;
    ActividadesxEstimaciondMontoDLL: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoDLL: TFloatField;
    ActividadesxEstimacioniItemOrden: TStringField;
    ActividadesxEstimacionsAnexo: TStringField;
    ActividadesxEstimacionsIdTipoEstimacion: TStringField;
    ActividadesxEstimacioniNumeroEstimacionSub: TStringField;
    ActividadesxEstimaciondCantidadRestante: TFloatField;
    ActividadesxEstimaciondCantidadExcedente: TFloatField;
    ActividadesxEstimaciondCantidadPT: TFloatField;
    DBMemo1: TDBMemo;
    ActividadesxEstimacioniConsecutivo: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tdMontoMN: TRxDBCalcEdit;
    tdMontoDLL: TRxDBCalcEdit;
    tdMontoAcumMN: TRxDBCalcEdit;
    tdMontoAcumDLL: TRxDBCalcEdit;
    ds_montos: TDataSource;
    Montos: TZQuery;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    SpeedBar1: TSpeedBar;
    lblDatos: TLabel;
    SpeedbarSection1: TSpeedbarSection;
    procedure FormShow(Sender: TObject);   (*
    procedure mEditarClick(Sender: TObject);
    procedure sEliminaCerosClick(Sender: TObject);
    procedure sActualizaAcumClick(Sender: TObject);
    procedure sEliminaClick(Sender: TObject);
    procedure mImprimirClick(Sender: TObject);
    procedure CmdNextClick(Sender: TObject);      *)
    procedure ActividadesxEstimacionAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimacionDetalleAdicional: TfrmEstimacionDetalleAdicional;
  Bandera, Fecha  : string;
  oper            : integer ;

implementation

uses
    frm_EstimacionGeneral, frm_estimacionAdicional;

{$R *.dfm}

procedure TfrmEstimacionDetalleAdicional.ActividadesxEstimacionAfterScroll(
  DataSet: TDataSet);
begin
     Grid_Partidas.Hint := ActividadesxEstimacion.FieldValues['mDescripcion'];
end;

procedure TfrmEstimacionDetalleAdicional.FormShow(Sender: TObject);
begin
    if frmEstimacionAdicional.rxEstimaciones.RecordCount = 0 then
       exit;

    Grid_Partidas.ReadOnly := True;
    ActividadesxEstimacion.Active := False ;
    ActividadesxEstimacion.SQL.Clear;
    ActividadesxEstimacion.SQL.Add('Select * from estimacion_actividades Where sContrato = :contrato '+
                                   'and iNumeroEstimacion = :Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and dCantidadExcedente > 0 '+
                                   'order by sAnexo, iItemOrden, iOrden');
    ActividadesxEstimacion.Params.ParamByName('Contrato').DataType      := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').Value         := frmEstimacionAdicional.rxEstimaciones.FieldValues['sContrato'];
    ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType    := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').Value       := frmEstimacionAdicional.rxEstimaciones.FieldValues['iNumeroEstimacion'];
    ActividadesxEstimacion.Params.ParamByName('EstimacionSub').DataType := ftString ;
    ActividadesxEstimacion.Params.ParamByName('EstimacionSub').Value    := '';
    ActividadesxEstimacion.Params.ParamByName('Tipo').DataType          := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Tipo').Value             := frmEstimacionAdicional.rxEstimaciones.FieldValues['sIdTipoEstimacion'];
    ActividadesxEstimacion.Open ;

    if ActividadesxEstimacion.RecordCount > 0 then

    lblDatos.Caption := 'Estimación No. '+ frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion']+
                        ' '+ frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub']+
                        '    Periodo de Ejecución: '+ DateToStr(frmEstimacionGeneral.EstimacionOrden.FieldValues['dFechaInicio_Convenio'])+
                        ' AL '+ DateToStr(frmEstimacionGeneral.EstimacionOrden.FieldValues['dFechaFinal_Convenio']) +
                        '    Periodo de Estimación: '+ DateToStr(frmEstimacionGeneral.EstimacionOrden.FieldValues['dFechaInicio']) +
                        ' AL '+ DateToStr(frmEstimacionGeneral.EstimacionOrden.FieldValues['dFechaFinal']);

    Montos.Active := False ;
    Montos.Params.ParamByName('Estimacion').AsString    := frmEstimacionAdicional.rxEstimaciones.FieldValues['iNumeroEstimacion'] ;
    Montos.Params.ParamByName('EstimacionSub').AsString := '' ;
    Montos.Params.ParamByName('Tipo').AsString          := frmEstimacionAdicional.rxEstimaciones.FieldValues['sIdTipoEstimacion'] ;
    Montos.Params.ParamByName('Contrato').AsString      := frmEstimacionAdicional.rxEstimaciones.FieldValues['sContrato'] ;
    Montos.Open ;
end;

end.
