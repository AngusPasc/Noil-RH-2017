unit frm_ActividadesAnexo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, global, frm_barra, db, Grids, DBGrids, frm_Connection, StdCtrls,
  DBCtrls, ComCtrls, Mask, Utilerias, StrUtils, Menus, ADODB, Buttons,
  ExtCtrls, frxClass, frxDBSet, jpeg,  RXDBCtrl, DateUtils,
   math, Newpanel, ExtDlgs, Sockets, RxLookup, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, rxCurrEdit, rxToolEdit, udbgrid, UnitValidacion;
  function IsDate(ADate: string): Boolean;
type
  TfrmActividadesAnexo = class(TForm)
    dbActividadesxAnexo: TfrxDBDataset;
    ds_actividadesxanexo: TDataSource;
    DBMedida: TfrxDBDataset;
    dsAlcances: TDataSource;
    ds_AnexoConvenio: TDataSource;
    Grid_Actividades: TRxDBGrid;
    dbPartidasxAlcance: TfrxDBDataset;
    frxUnidades: TfrxReport;
    PopupPrincipal: TPopupMenu;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Deshacer1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Detalledelapartida1: TMenuItem;
    Medidasdelanexo1: TMenuItem;
    ComentariosAdicionalesalaPartida1: TMenuItem;
    ImprimirAlcancesxPartida1: TMenuItem;
    BuscarPartida1: TMenuItem;
    mnFichaTecnica: TMenuItem;
    frxDetalleAlcance: TfrxReport;
    ds_Paquetes: TDataSource;
    PartidasxAlcance: TZReadOnlyQuery;
    SumAvance: TZReadOnlyQuery;
    Paquetes: TZReadOnlyQuery;
    PaquetesiNivel: TIntegerField;
    PaquetessWBS: TStringField;
    PaquetessWBSAnterior: TStringField;
    PaquetessNumeroActividad: TStringField;
    PaquetesmDescripcion: TMemoField;
    PaquetesdFechaInicio: TDateField;
    PaquetesdFechaFinal: TDateField;
    PaquetesdDuracion: TFloatField;
    PaquetessDescripcion: TStringField;
    Unidades: TZReadOnlyQuery;
    AnexoConvenio: TZReadOnlyQuery;
    Panel: tNewGroupBox;
    Grid_PartidasConvenios: TRxDBGrid;
    PanelAlcances: tNewGroupBox;
    Label13: TLabel;
    grid_Alcances: TDBGrid;
    tdAvance: TCurrencyEdit;
    DatalleAlcances: TMenuItem;
    Label2: TLabel;
    Label12: TLabel;
    EtiquetaPU1: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label27: TLabel;
    Label1: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    tsNumeroActividad: TDBEdit;
    tmDescripcion: TDBMemo;
    tdCantidadAnexo: TDBEdit;
    tsMedida: TDBEdit;
    tlExtraordinario: TDBComboBox;
    tdVentaMN: TDBEdit;
    tdVentaDLL: TDBEdit;
    tdCostoMN: TDBEdit;
    tdCostoDLL: TDBEdit;
    tsPartidaAnterior: TDBEdit;
    tdDuracion: TDBEdit;
    tdPonderado: TDBEdit;
    tlCalcula: TDBComboBox;
    tdFechaInicio: TDBDateEdit;
    tdFechaFinal: TDBDateEdit;
    tsIdFase: TDBLookupComboBox;
    tsEspecificacion: TDBEdit;
    tiColores: TColorBox;
    tdMontoMN: TDBEdit;
    tdMontoDLL: TDBEdit;
    tsPaquete: TRxDBLookupCombo;
    AlcancesxActividad: TZReadOnlyQuery;
    ActividadesxAnexo: TZReadOnlyQuery;
    ActividadesxAnexosContrato: TStringField;
    ActividadesxAnexosIdConvenio: TStringField;
    ActividadesxAnexoiNivel: TIntegerField;
    ActividadesxAnexosSimbolo: TStringField;
    ActividadesxAnexosWbs: TStringField;
    ActividadesxAnexosWbsAnterior: TStringField;
    ActividadesxAnexosNumeroActividad: TStringField;
    ActividadesxAnexosTipoActividad: TStringField;
    ActividadesxAnexosEspecificacion: TStringField;
    ActividadesxAnexosActividadAnterior: TStringField;
    ActividadesxAnexomDescripcion: TMemoField;
    ActividadesxAnexodFechaInicio: TDateField;
    ActividadesxAnexodDuracion: TFloatField;
    ActividadesxAnexodFechaFinal: TDateField;
    ActividadesxAnexodPonderado: TFloatField;
    ActividadesxAnexodVentaMN: TFloatField;
    ActividadesxAnexodVentaDLL: TFloatField;
    ActividadesxAnexolCalculo: TStringField;
    ActividadesxAnexosMedida: TStringField;
    ActividadesxAnexodCantidadAnexo: TFloatField;
    ActividadesxAnexodCargado: TFloatField;
    ActividadesxAnexodInstalado: TFloatField;
    ActividadesxAnexodExcedente: TFloatField;
    ActividadesxAnexoiColor: TIntegerField;
    ActividadesxAnexolExtraordinario: TStringField;
    ActividadesxAnexosIdFase: TStringField;
    ActividadesxAnexosWbsSpace: TStringField;
    ActividadesxAnexodMontoMN: TCurrencyField;
    ActividadesxAnexodMontoDLL: TCurrencyField;
    tiColor: TDBComboBox;
    ActividadesxAnexodCostoMN: TFloatField;
    ActividadesxAnexodCostoDll: TFloatField;
    AnexoC: TfrxReport;
    ActividadesxAnexoiItemOrden: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdDuracionKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tdPonderadoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdDuracionExit(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure ActividadesxAnexoAfterScroll(DataSet: TDataSet);
    procedure UnidadesdeMedida1Click(Sender: TObject);
    procedure Grid_PartidasConveniosGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure ImprimirAlcancesporActividad1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure DetalledelaPartida1Click(Sender: TObject);
    procedure ComentariosAdicionalesalaPartida1Click(Sender: TObject);
    procedure Grid_ActividadesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure mnFichaTecnicaClick(Sender: TObject);
    procedure tiColoresChange(Sender: TObject);
    procedure PaquetesCalcFields(DataSet: TDataSet);
    procedure Grid_ActividadesDblClick(Sender: TObject);
    procedure DatalleAlcancesClick(Sender: TObject);
    procedure BuscarPartida1Click(Sender: TObject);
    procedure ActividadesxAnexoCalcFields(DataSet: TDataSet);
    procedure Grid_ActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ActividadesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tdFechaInicioChange(Sender: TObject);
    procedure ActividadesxAnexodCostoMNSetText(Sender: TField;
      const Text: string);
    procedure ActividadesxAnexodMontoMNSetText(Sender: TField;
      const Text: string);
    procedure ActividadesxAnexodCostoDllSetText(Sender: TField;
      const Text: string);
    procedure ActividadesxAnexodVentaMNSetText(Sender: TField;
      const Text: string);
    procedure ActividadesxAnexodVentaDLLSetText(Sender: TField;
      const Text: string);
    procedure tdCantidadAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadAnexoChange(Sender: TObject);
    procedure tdCantidadAnexoEnter(Sender: TObject);
    procedure tdCantidadAnexoExit(Sender: TObject);
    procedure tdCostoMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdCostoMNChange(Sender: TObject);
    procedure tdCostoMNEnter(Sender: TObject);
    procedure tdCostoMNExit(Sender: TObject);
    procedure ActividadesxAnexodCantidadAnexoSetText(Sender: TField;
      const Text: string);
    procedure tdVentaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaMNChange(Sender: TObject);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tsMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure tlExtraordinarioKeyPress(Sender: TObject; var Key: Char);
    procedure tdCostoDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdCostoDLLChange(Sender: TObject);
    procedure tdCostoDLLEnter(Sender: TObject);
    procedure tdCostoDLLExit(Sender: TObject);
    procedure tdVentaDLLChange(Sender: TObject);
    procedure tdVentaDLLEnter(Sender: TObject);
    procedure tdVentaDLLExit(Sender: TObject);
    procedure tdMontoDLLChange(Sender: TObject);
    procedure tdMontoDLLEnter(Sender: TObject);
    procedure tdMontoDLLExit(Sender: TObject);
    procedure tdDuracionEnter(Sender: TObject);
    procedure ActividadesxAnexodDuracionSetText(Sender: TField;
      const Text: string);
    procedure tdPonderadoChange(Sender: TObject);
    procedure tdPonderadoEnter(Sender: TObject);
    procedure tdPonderadoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmActividadesAnexo: TfrmActividadesAnexo;
  sIdPlataforma : String ;
  sPaquete     : String ;
  sFecha   : String ;
  FindeMes : Integer ;
  sAlcancesArray : Array [1..100] of String;
  dAlcancesArray : Array [1..100] of Integer ;
  iItemAlcancesArray : Integer ;
  sTipoAnterior : String ;
  iNivel        : Integer ;
  sFiltro       : String ;
  iActividad    : Integer ;
  utgrid:ticdbgrid;  
implementation

uses frm_comentariosxanexo;

{$R *.dfm}

procedure TfrmActividadesAnexo.FormShow(Sender: TObject);
begin
  UtGrid:=TicdbGrid.create(grid_actividades);
  connection.configuracion.Refresh ;

  OpcButton := '' ;
  sPaquete := '' ;

  connection.zCommand.Active := False ;
  connection.zCommand.SQL.Clear ;
  connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sTipoActividad = "Paquete"') ;
  connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
  connection.zcommand.params.ParamByName('Contrato').Value := global_contrato ;
  connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
  connection.zcommand.params.ParamByName('Convenio').Value := global_convenio ;
  connection.zCommand.ExecSQL;

  ActividadesxAnexo.Active := False ;
  ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
  ActividadesxAnexo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
  ActividadesxAnexo.Params.ParamByName('Convenio').Value := Global_Convenio ;
  ActividadesxAnexo.Open ;

  PartidasxAlcance.Active := False ;
  PartidasxAlcance.Params.ParamByName('Contrato').DataType := ftString ;
  PartidasxAlcance.Params.ParamByName('Contrato').Value := Global_Contrato ;
  PartidasxAlcance.Params.ParamByName('Convenio').DataType := ftString ;
  PartidasxAlcance.Params.ParamByName('Convenio').Value := Global_Convenio ;
  PartidasxAlcance.Open ;

  Paquetes.Active := False ;
  Paquetes.Params.ParamByName('contrato').DataType := ftString ;
  Paquetes.Params.ParamByName('contrato').Value := global_contrato ;
  Paquetes.Params.ParamByName('convenio').DataType := ftString ;
  Paquetes.Params.ParamByName('convenio').Value := global_convenio ;
  Paquetes.Open ;

  Grid_Actividades.SetFocus
end;

procedure TfrmActividadesAnexo.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
     tsEspecificacion.SetFocus 
end;

procedure TfrmActividadesAnexo.tdFechaInicioChange(Sender: TObject);
begin
  if tdFechaFinal.Date<tdFechaInicio.Date then
  tdFechaFinal.MinDate:=tdFechainicio.Date;
end;
function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;
procedure TfrmActividadesAnexo.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not IsDate(vartostr(tdFechainicio.Date)) Then
    tdfechainicio.Date:=now;
  if key = #13 then
    tdDuracion.SetFocus
end;

procedure TfrmActividadesAnexo.tdMontoDLLChange(Sender: TObject);
begin
tdbeditchangef(tdMontoDLL, 'Total DLL');
end;

procedure TfrmActividadesAnexo.tdMontoDLLEnter(Sender: TObject);
begin
 tdMontoDLL.Color:=global_color_entrada
end;

procedure TfrmActividadesAnexo.tdMontoDLLExit(Sender: TObject);
begin
 tdMontoDLL.Color:=global_color_salida
end;

procedure TfrmActividadesAnexo.tdMontoDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdMontoDLL,key) then
   key:=#0;
if key=#13 then
tsIdFase.SetFocus;
end;

procedure TfrmActividadesAnexo.tdMontoMNKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdMontoMN,key) then
   key:=#0;
if key=#13 then
tdVentaDll.SetFocus;
end;

procedure TfrmActividadesAnexo.tdDuracionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     tdFechaFinal.SetFocus 
end;

procedure TfrmActividadesAnexo.tdFechaFinalChange(Sender: TObject);
begin
  tdFechaFinal.MinDate:=tdFechainicio.Date;
end;

procedure TfrmActividadesAnexo.tdFechaFinalExit(Sender: TObject);
begin
  if tdFechaFinal.Date<tdFechaInicio.Date then
  tdFechaFinal.date:=tdFechainicio.Date;
end;

procedure TfrmActividadesAnexo.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tlCalcula.SetFocus
end;

procedure TfrmActividadesAnexo.tdPonderadoChange(Sender: TObject);
begin
 tdbeditchangef(tdPonderado,'Ponderado');
end;

procedure TfrmActividadesAnexo.tdPonderadoEnter(Sender: TObject);
begin
tdPonderado.Color:=global_color_entrada
end;

procedure TfrmActividadesAnexo.tdPonderadoExit(Sender: TObject);
begin
tdPonderado.Color:=global_color_salida
end;

procedure TfrmActividadesAnexo.tdPonderadoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdPonderado,key) then
   key:=#0;
  if key = #13 then
    tsNumeroActividad.SetFocus
end;

procedure TfrmActividadesAnexo.tdVentaDLLChange(Sender: TObject);
begin
tdbeditchangef(tdVentaDLL,'Precio Dll');
end;

procedure TfrmActividadesAnexo.tdVentaDLLEnter(Sender: TObject);
begin
  tdVentaDLL.Color:=global_color_entrada
end;

procedure TfrmActividadesAnexo.tdVentaDLLExit(Sender: TObject);
begin
 tdVentaDLL.Color:=global_color_salida
end;

procedure TfrmActividadesAnexo.tdVentaDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdVentaDLL,key) then
   key:=#0;
   if key=#13 then   
   tdMontoDll.SetFocus;
end;

procedure TfrmActividadesAnexo.tdVentaMNChange(Sender: TObject);
begin
tdbeditchangef(tdVentaMN,'Precio MN');  
end;

procedure TfrmActividadesAnexo.tdVentaMNEnter(Sender: TObject);
begin
  tdVentaMN.Color:=global_color_entrada
end;

procedure TfrmActividadesAnexo.tdVentaMNExit(Sender: TObject);
begin
tdVentaMN.Color:=global_color_salida
end;

procedure TfrmActividadesAnexo.tdVentaMNKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not keyFiltroTdbedit(tdVentaMN,key) then
   key:=#0;
 if key=#13 then
  tdMontoMN.SetFocus;
end;

procedure TfrmActividadesAnexo.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdCantidadAnexo.SetFocus
end;

procedure TfrmActividadesAnexo.tsMedidaKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
tlExtraOrdinario.SetFocus;
end;

procedure TfrmActividadesAnexo.frmBarra1btnAddClick(Sender: TObject);
begin
   Salir1.Enabled := False ;

   ActividadesxAnexo.Append ;
   ActividadesxAnexo.FieldValues [ 'sContrato' ] := global_contrato ;
   ActividadesxAnexo.FieldValues [ 'sMedida' ] := 'PZA' ;
   ActividadesxAnexo.FieldValues [ 'lCalculo' ] := 'Si' ;
   ActividadesxAnexo.FieldValues [ 'lExtraordinario' ] := 'No' ;
   ActividadesxAnexo.FieldValues [ 'dDuracion' ] := 0 ;
   ActividadesxAnexo.FieldValues [ 'sWBSAnterior' ] := sPaquete ;
   tsPaquete.KeyValue := sPaquete ;
   ActividadesxAnexo.FieldValues [ 'dFechaInicio' ] := Date ;
   ActividadesxAnexo.FieldValues [ 'dFechaFinal' ] := Date ;
   ActividadesxAnexo.FieldValues ['dCantidadAnexo'] := 0 ;
   ActividadesxAnexo.FieldValues ['dCostoMN'] := 0 ;
   ActividadesxAnexo.FieldValues ['dCostoDLL'] := 0 ;
   ActividadesxAnexo.FieldValues ['dVentaMN'] := 0 ;
   ActividadesxAnexo.FieldValues ['dVentaDLL'] := 0 ;
   Case tiColores.ItemIndex Of
        0 : tiColor.ItemIndex := 0 ;
        1 : tiColor.ItemIndex := 8 ;
        2 : tiColor.ItemIndex := 9 ;
        3 : tiColor.ItemIndex := 11 ;
        4 : tiColor.ItemIndex := 10 ;
        5 : tiColor.ItemIndex := 11 ;
        6 : tiColor.ItemIndex := 13 ;
        7 : tiColor.ItemIndex := 15 ;
        8 : tiColor.ItemIndex := 14 ;
        9 : tiColor.ItemIndex := 2 ;
        10 : tiColor.ItemIndex := 3 ;
        11 : tiColor.ItemIndex := 5 ;
        12 : tiColor.ItemIndex := 4 ;
        13 : tiColor.ItemIndex := 6 ;
        14 : tiColor.ItemIndex := 7 ;
        15 : tiColor.ItemIndex := 1 ;
   End ;

   tsPaquete.SetFocus
end;

procedure TfrmActividadesAnexo.frmBarra1btnExitClick(Sender: TObject);
begin
   Salir1.Enabled := True ;
   Close
end;


procedure TfrmActividadesAnexo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ActividadesxAnexo.Cancel ;
  action := cafree ;
  utgrid.Destroy;
end;

procedure TfrmActividadesAnexo.tdCantidadAnexoChange(Sender: TObject);
begin
  tdbeditchangef(tdCantidadAnexo,'Cant. Anexo');
end;

procedure TfrmActividadesAnexo.tdCantidadAnexoEnter(Sender: TObject);
begin
  tdCantidadAnexo.Color:=global_color_entrada
end;

procedure TfrmActividadesAnexo.tdCantidadAnexoExit(Sender: TObject);
begin
  tdCantidadAnexo.Color:=global_color_salida
end;

procedure TfrmActividadesAnexo.tdCantidadAnexoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdCantidadAnexo,key) then
   key:=#0;
    if key=#13 then
    tsMedida.SetFocus

end;

procedure TfrmActividadesAnexo.tdCostoDLLChange(Sender: TObject);
begin
 tdbeditchangef(tdCostoDLL,'Costo DLL');
end;

procedure TfrmActividadesAnexo.tdCostoDLLEnter(Sender: TObject);
begin
tdCostoDLL.Color:=global_color_entrada
end;

procedure TfrmActividadesAnexo.tdCostoDLLExit(Sender: TObject);
begin
tdCostoDLL.Color:=global_color_salida
end;

procedure TfrmActividadesAnexo.tdCostoDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not keyFiltroTdbedit(tdCostoDLL,key) then
   key:=#0;
 if key=#13 then
 tdVentaMN.SetFocus;
end;

procedure TfrmActividadesAnexo.tdCostoMNChange(Sender: TObject);
begin
  tdbeditchangef(tdCostoMN,'Costo MN');
end;

procedure TfrmActividadesAnexo.tdCostoMNEnter(Sender: TObject);
begin
  tdCostoMN.Color:=global_color_entrada
end;

procedure TfrmActividadesAnexo.tdCostoMNExit(Sender: TObject);
begin
  tdCostoMN.Color:=global_color_salida
end;

procedure TfrmActividadesAnexo.tdCostoMNKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdCostoMN,key) then
   key:=#0;
   
if key=#13 then
   tdCostoDLL.SetFocus;
end;

procedure TfrmActividadesAnexo.tdDuracionEnter(Sender: TObject);
begin
 tdDuracion.Color := global_color_entrada
end;

procedure TfrmActividadesAnexo.tdDuracionExit(Sender: TObject);
begin
  If ( ActividadesxAnexo.State = dsInsert ) or ( ActividadesxAnexo.State = dsEdit ) then
      ActividadesxAnexo.FieldValues['dFechaFinal'] := ActividadesxAnexo.FieldValues['dFechaInicio']+ ( ActividadesxAnexo.FieldValues['dDuracion'] - 1 ) ;
  tdDuracion.Color := global_color_salida
end;

procedure TfrmActividadesAnexo.Salir1Click(Sender: TObject);
begin
    close
end;

procedure TfrmActividadesAnexo.ActividadesxAnexoAfterScroll(
  DataSet: TDataSet);
begin
    If ActividadesxAnexo.RecordCount > 0 Then
    begin
        If (ActividadesxAnexo.State <> dsInsert) And (ActividadesxAnexo.State <> dsEdit) Then
        begin
            tdAvance.Value := 0 ;
            Case tiColor.ItemIndex Of
                0 : tiColores.ItemIndex := 0 ;
                1 : tiColores.ItemIndex := 1 ;
                2 : tiColores.ItemIndex := 2 ;
                3 : tiColores.ItemIndex := 3 ;
                4 : tiColores.ItemIndex := 4 ;
                5 : tiColores.ItemIndex := 5 ;
                6 : tiColores.ItemIndex := 6 ;
                7 : tiColores.ItemIndex := 7 ;
                8 : tiColores.ItemIndex := 8 ;
                9 : tiColores.ItemIndex := 9 ;
                10 : tiColores.ItemIndex := 10 ;
                11 : tiColores.ItemIndex := 11 ;
                12 : tiColores.ItemIndex := 12 ;
                13 : tiColores.ItemIndex := 13 ;
                14 : tiColores.ItemIndex := 14 ;
                15 : tiColores.ItemIndex := 15 ;
            End ;

            If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
            begin
                SumAvance.Active := False ;
                SumAvance.Params.ParamByName('Contrato').DataType := ftString ;
                SumAvance.Params.ParamByName('Contrato').Value := global_contrato ;
                SumAvance.Params.ParamByName('Actividad').DataType := ftString ;
                SumAvance.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
          			SumAvance.Open ;
                If SumAvance.RecordCount > 0 Then
                    tdAvance.Value := SumAvance.FieldValues['dAvance']
                Else
                    tdAvance.Value := 0 ;

                AnexoConvenio.Active := False ;
                AnexoConvenio.Params.ParamByName('Contrato').DataType := ftString ;
                AnexoConvenio.Params.ParamByName('Contrato').Value := global_contrato ;
                AnexoConvenio.Params.ParamByName('Actividad').DataType := ftString ;
                AnexoConvenio.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
                AnexoConvenio.Open ;

                AlcancesxActividad.Active := False ;
                AlcancesxActividad.Params.ParamByName('Contrato').DataType := ftString ;
                AlcancesxActividad.Params.ParamByName('Contrato').Value := global_contrato ;
                AlcancesxActividad.Params.ParamByName('Actividad').DataType := ftString ;
                AlcancesxActividad.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
          			AlcancesxActividad.Open ;
            End
            Else
            Begin
                AnexoConvenio.Active := False ;
                AnexoConvenio.Params.ParamByName('Contrato').DataType := ftString ;
                AnexoConvenio.Params.ParamByName('Contrato').Value := global_contrato ;
                AnexoConvenio.Params.ParamByName('Actividad').DataType := ftString ;
                AnexoConvenio.Params.ParamByName('Actividad').Value := '' ;
                AnexoConvenio.Open ;

                AlcancesxActividad.Active := False ;
                AlcancesxActividad.Params.ParamByName('Contrato').DataType := ftString ;
                AlcancesxActividad.Params.ParamByName('Contrato').Value := global_contrato ;
                AlcancesxActividad.Params.ParamByName('Actividad').DataType := ftString ;
                AlcancesxActividad.Params.ParamByName('Actividad').Value := '' ;
          			AlcancesxActividad.Open ;
            End
        End
        Else
        Begin
            AnexoConvenio.Active := False ;
            AnexoConvenio.Params.ParamByName('Contrato').DataType := ftString ;
            AnexoConvenio.Params.ParamByName('Contrato').Value := global_contrato ;
            AnexoConvenio.Params.ParamByName('Actividad').DataType := ftString ;
            AnexoConvenio.Params.ParamByName('Actividad').Value := '' ;
            AnexoConvenio.Open ;

            AlcancesxActividad.Active := False ;
            AlcancesxActividad.Params.ParamByName('Contrato').DataType := ftString ;
            AlcancesxActividad.Params.ParamByName('Contrato').Value := global_contrato ;
            AlcancesxActividad.Params.ParamByName('Actividad').DataType := ftString ;
            AlcancesxActividad.Params.ParamByName('Actividad').Value := '' ;
       			AlcancesxActividad.Open ;
        End
    end
end;

procedure TfrmActividadesAnexo.UnidadesdeMedida1Click(Sender: TObject);
begin
    Unidades.Active := False ;
    Unidades.Params.ParamByName('Contrato').DataType := ftString ;
    Unidades.Params.ParamByName('Contrato').Value := global_contrato ;
    Unidades.Params.ParamByName('Convenio').DataType := ftString ;
    Unidades.Params.ParamByName('Convenio').Value := global_convenio ;
    Unidades.Open ;
    frxUnidades.ShowReport
end;

procedure TfrmActividadesAnexo.Grid_PartidasConveniosGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdConvenio').AsString = global_convenio ) then
        Background := clGradientInactiveCaption
end;

procedure TfrmActividadesAnexo.ImprimirAlcancesporActividad1Click(
  Sender: TObject);
begin
    PartidasxAlcance.Refresh ;
    frxDetalleAlcance.ShowReport
end;

procedure TfrmActividadesAnexo.Imprimir1Click(Sender: TObject);
begin
  AnexoC.LoadFromFile (global_files + global_miReporte + '_AnexoC.fr3') ;
  AnexoC.ShowReport ;
end;

procedure TfrmActividadesAnexo.DetalledelaPartida1Click(Sender: TObject);
begin
    Panel.Visible := not Panel.Visible ;
end;

procedure TfrmActividadesAnexo.ComentariosAdicionalesalaPartida1Click(
  Sender: TObject);
begin
    Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
    frmComentariosxAnexo.show ;
end;

procedure TfrmActividadesAnexo.Copy1Click(Sender: TObject);
begin
UtGrid.CopyRowsToClip;
end;

procedure TfrmActividadesAnexo.Grid_ActividadesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    AFont.Color := esColor (ActividadesxAnexo.FieldValues['iColor']) ;
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
        Afont.Style := [fsBold]
    Else
        If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
        Begin
            Afont.Style := [fsBold,fsItalic] ;
            AFont.Color := clRed ;
        End
end;

procedure TfrmActividadesAnexo.Grid_ActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmActividadesAnexo.Grid_ActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmActividadesAnexo.Grid_ActividadesTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmActividadesAnexo.mnFichaTecnicaClick(Sender: TObject);
begin
    If ActividadesxAnexo.RecordCount > 0 Then
        procFichaTecnica (global_contrato, global_convenio , ActividadesxAnexo.FieldValues['sNumeroActividad'], frmActividadesAnexo) ;
end;

procedure TfrmActividadesAnexo.ActividadesxAnexoCalcFields(
  DataSet: TDataSet);
begin
    If (ActividadesxAnexo.State <> dsInsert) And (ActividadesxAnexo.State <> dsEdit) Then
    begin
        ActividadesxAnexodMontoMN.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaMN.Value ;
        ActividadesxAnexodMontoDLL.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaDLL.Value ;
        ActividadesxAnexosWbsSpace.Text := espaces (ActividadesxAnexo.FieldValues['iNivel']) + ActividadesxAnexo.FieldValues['sWbs'] ;
    End
end;

procedure TfrmActividadesAnexo.ActividadesxAnexodCantidadAnexoSetText(
  Sender: TField; const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmActividadesAnexo.ActividadesxAnexodCostoDllSetText(Sender: TField;
  const Text: string);
begin
    sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmActividadesAnexo.ActividadesxAnexodCostoMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmActividadesAnexo.ActividadesxAnexodDuracionSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(strtofloatdef(text, 0));
end;

procedure TfrmActividadesAnexo.ActividadesxAnexodMontoMNSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmActividadesAnexo.ActividadesxAnexodVentaDLLSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmActividadesAnexo.ActividadesxAnexodVentaMNSetText(Sender: TField;
  const Text: string);
begin
    sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmActividadesAnexo.tiColoresChange(Sender: TObject);
begin
    Case tiColores.ItemIndex Of
        0 : tiColor.ItemIndex := 0 ;
        1 : tiColor.ItemIndex := 1 ;
        2 : tiColor.ItemIndex := 2 ;
        3 : tiColor.ItemIndex := 3 ;
        4 : tiColor.ItemIndex := 4 ;
        5 : tiColor.ItemIndex := 5 ;
        6 : tiColor.ItemIndex := 6 ;
        7 : tiColor.ItemIndex := 7 ;
        8 : tiColor.ItemIndex := 8 ;
        9 : tiColor.ItemIndex := 9 ;
        10 : tiColor.ItemIndex := 10 ;
        11 : tiColor.ItemIndex := 11 ;
        12 : tiColor.ItemIndex := 12 ;
        13 : tiColor.ItemIndex := 13 ;
        14 : tiColor.ItemIndex := 14 ;
        15 : tiColor.ItemIndex := 15 ;
    End

end;

procedure TfrmActividadesAnexo.tlExtraordinarioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
tdCostoMN.SetFocus;
end;

procedure TfrmActividadesAnexo.PaquetesCalcFields(DataSet: TDataSet);
begin
    PaquetessDescripcion.Text := MidStr ( Paquetes.FieldValues['mDescripcion'] , 1 , 150 )
end;

procedure TfrmActividadesAnexo.Paste1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmActividadesAnexo.Grid_ActividadesDblClick(Sender: TObject);
var
   sCondicion : String ;
   sSelect    : String ;
   SavePlace  : TBookmark;
begin
   sCondicion := ' And sWbs NOT Like "' + Trim(ActividadesxAnexo.FieldValues['sWbs']) + '.%"' ;
   SavePlace := grid_actividades.DataSource.DataSet.GetBookmark ;
   If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' Then
      If ActividadesxAnexo.FieldValues['sSimbolo'] = '-' Then
      begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "+" Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :wbs') ;
          connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zcommand.params.ParamByName('Contrato').Value := ActividadesxAnexo.FieldValues['sContrato'] ;
          connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
          connection.zcommand.params.ParamByName('Convenio').Value := ActividadesxAnexo.FieldValues['sIdConvenio'] ;
          connection.zcommand.params.ParamByName('wbs').DataType := ftString ;
          connection.zcommand.params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL;
          If Pos(sCondicion , sFiltro) = 0 Then
              If sFiltro <> '' Then
                  sFiltro := sFiltro + sCondicion
              Else
                  sFiltro := sCondicion ;
      End
      Else
      begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :wbs') ;
          connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zcommand.params.ParamByName('Contrato').Value := ActividadesxAnexo.FieldValues['sContrato'] ;
          connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
          connection.zcommand.params.ParamByName('Convenio').Value := ActividadesxAnexo.FieldValues['sIdConvenio'] ;
          connection.zcommand.params.ParamByName('wbs').DataType := ftString ;
          connection.zcommand.params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL;
          If Pos(sCondicion , sFiltro) > 0 Then
              sFiltro  := MidStr( sFiltro , 1 , Pos(sCondicion , sFiltro) - 1 ) + MidStr ( sFiltro , Pos(sCondicion , sFiltro) + Length(sCondicion) , Length(sFiltro)) ;
      end ;
   sSelect := 'Select * from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio ' + sFiltro + ' order by iItemOrden, round(sNumeroActividad)' ;
   ActividadesxAnexo.Active := False ;
   ActividadesxAnexo.SQL.Clear ;
   ActividadesxAnexo.SQL.Add(sSelect) ;
   ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
   ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Convenio').Value := global_convenio ;
   ActividadesxAnexo.Open ;
   Try
        grid_actividades.DataSource.DataSet.GotoBookmark(SavePlace);
   Except
   End ;
end;

procedure TfrmActividadesAnexo.DatalleAlcancesClick(Sender: TObject);
begin
    PanelAlcances.Visible := Not PanelAlcances.Visible 
end;

procedure TfrmActividadesAnexo.BuscarPartida1Click(Sender: TObject);
Var
    sNumeroPartida : String ;
begin
    If ActividadesxAnexo.RecordCount > 0 Then
    Begin
        sNumeroPartida := UPPERCASE(InputBox('Inteligent','Numero de Partida a Buscar?', ActividadesxAnexo.FieldValues['sNumeroActividad'])) ;
        ActividadesxAnexo.Locate('sNumeroActividad', sNumeroPartida, [loCaseInsensitive])
    End
end;

End.
