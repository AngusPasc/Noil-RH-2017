unit frm_PrecioDivisas;

interface                                                

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, UFunctionsGHH,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxMemo,
  cxContainer, dxSkinsdxBarPainter, dxStatusBar, dxRibbonStatusBar,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar, dxRibbonRadialMenu,
  cxClasses, cxCheckBox, cxDBEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, ExtCtrls, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalc, cxCalendar, ZSqlUpdate,
  cxImageComboBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, frxClass, frxDBSet,
  dxRibbon;

type
  TfrmPrecioDivisas = class(TForm)
    PnlPrincipal: TPanel;
    PnlGrid: TPanel;
    Grid_Precio: TcxGrid;
    BView_Precio: TcxGridDBTableView;
    Grid_PrecioLevel1: TcxGridLevel;
    PnlDatos: TPanel;
    cxLabel1: TcxLabel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxInsertar: TdxBarLargeButton;
    dxEditar: TdxBarLargeButton;
    dxGuardar: TdxBarLargeButton;
    dxCancelar: TdxBarLargeButton;
    dxEliminar: TdxBarLargeButton;
    dxRefrescar: TdxBarLargeButton;
    dxSalir: TdxBarLargeButton;
    dxImprimir: TdxBarLargeButton;
    StatusBar: TdxRibbonStatusBar;
    cxLabel2: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel3: TcxLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    BView_PrecioColumn1: TcxGridDBColumn;
    BView_PrecioColumn2: TcxGridDBColumn;
    BView_PrecioColumn3: TcxGridDBColumn;
    dsZQPrecioDivisas: TDataSource;
    ZQPrecioDivisas: TZQuery;
    dbdivisas: TfrxDBDataset;
    frxDivisas: TfrxReport;
    dDivisa: TcxDBLookupComboBox;
    ds_moneda: TDataSource;
    Moneda: TZReadOnlyQuery;
    pm1: TdxRibbonPopupMenu;
    procedure dxInsertarClick(Sender: TObject);
    procedure dxEditarClick(Sender: TObject);
    procedure dxGuardarClick(Sender: TObject);
    procedure dxCancelarClick(Sender: TObject);
    procedure dxEliminarClick(Sender: TObject);
    procedure dxRefrescarClick(Sender: TObject);
    procedure dxSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cambio_estado;
    procedure dxImprimirClick(Sender: TObject);
  private
    sMenuP : String     ;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrecioDivisas: TfrmPrecioDivisas;

implementation

uses Func_Genericas, frm_connection, global, frmDepositoscias;
{$R *.dfm}

procedure TfrmPrecioDivisas.dxCancelarClick(Sender: TObject);
begin
  StatusBar.Panels.Items[1].Text  := 'Cancelando petición';
  ZQPrecioDivisas.Cancel;
  ActivarDesactivar_Botones(dxBarManager1,ZQPrecioDivisas, Grid_Precio);
  cambio_estado;
  StatusBar.Panels.Items[1].Text  := 'Peticion Cancelada';
end;

procedure TfrmPrecioDivisas.dxEditarClick(Sender: TObject);
begin
  if ZQPrecioDivisas.RecordCount > 0 then
  begin
    ZQPrecioDivisas.Edit;
    ActivarDesactivar_Botones(dxBarManager1,ZQPrecioDivisas, Grid_Precio);
    cambio_estado;
    StatusBar.Panels.Items[1].Text  := 'Editando';
  end else MSG_W('No hay registros que editar');
end;

procedure TfrmPrecioDivisas.dxEliminarClick(Sender: TObject);
begin
  if ZQPrecioDivisas.RecordCount > 0 then
  begin
    if MSG_YN('Desea eliminar el registro?') then
    begin
      StatusBar.Panels.Items[1].Text  := 'Eliminando Registro';
      ZQPrecioDivisas.Delete;
      StatusBar.Panels.Items[1].Text  := 'Registro Eliminado con éxito';
    end;
  end else MSG_W('No hay registros para eliminar');
end;

procedure TfrmPrecioDivisas.dxGuardarClick(Sender: TObject);
begin
  StatusBar.Panels.Items[1].Text  := 'Guardando';
  if ZQPrecioDivisas.State in [dsInsert] then
  begin
    ZQPrecioDivisas.fieldbyname('iIdPrecio').asInteger := NextId('iIdPrecio','con_preciodivisas');
  end;
  ZQPrecioDivisas.Post;
  ActivarDesactivar_Botones(dxBarManager1,ZQPrecioDivisas, Grid_Precio);
  cambio_estado;
  StatusBar.Panels.Items[1].Text  := 'Registro Guardado con éxito';
end;

procedure TfrmPrecioDivisas.dxImprimirClick(Sender: TObject);
begin

     if not FileExists(global_files + global_miReporte + '_CADfrxDivisas.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrxDivisas.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

If zQPrecioDivisas.RecordCount > 0 Then
    frxDivisas.PreviewOptions.Modal := False ;
    frxDivisas.PreviewOptions.ShowCaptions := False ;
    frxDivisas.Previewoptions.ZoomMode := zmPageWidth ;
    frxDivisas.LoadFromFile (global_files + global_miReporte + '_CADfrxDivisas.fr3') ;
      frxDivisas.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))

end;

procedure TfrmPrecioDivisas.dxInsertarClick(Sender: TObject);
begin
  ZQPrecioDivisas.Append;
  ActivarDesactivar_Botones(dxBarManager1,ZQPrecioDivisas, Grid_Precio);
  cambio_estado;
  StatusBar.Panels.Items[1].Text  := 'Insertando';
end;

procedure TfrmPrecioDivisas.dxRefrescarClick(Sender: TObject);
begin
  StatusBar.Panels.Items[1].Text  := 'Actualizando';
  ZQPrecioDivisas.Refresh;
  StatusBar.Panels.Items[1].Text  := 'Registro Actualizado con Éxito';
end;

procedure TfrmPrecioDivisas.dxSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrecioDivisas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  if bandera_formulario= 'frm_Depositoscias' then
  begin
    bandera_formulario := '';
    //frm_Depositoscias.zqPrecioDivisa.refresh;
    frm_Depositoscias.zQEgresos.FieldByName('iIdPrecioMoneda').asInteger    :=  ZQPrecioDivisas.fieldbyname('iIdPrecio').asInteger;
  end;
end;

procedure TfrmPrecioDivisas.FormShow(Sender: TObject);
begin
  ZQPrecioDivisas.active := False;
  ZQPrecioDivisas.Open;

  Moneda.Active := False;
  Moneda.Open;
end;
procedure TfrmPrecioDivisas.cambio_estado;
begin
  if ZQPrecioDivisas.State in [dsInsert, dsEdit] then
  begin
    dDivisa.Enabled       := True;
    cxDBDateEdit1.Enabled := True;
    cxDBCalcEdit1.Enabled := True;
    //Grid_Precio.Enabled   := False;
  end
  else if ZQPrecioDivisas.State in [dsBrowse] then
  begin
    dDivisa.Enabled       := False;
    cxDBDateEdit1.Enabled := False;
    cxDBCalcEdit1.Enabled := False;
    //Grid_Precio.Enabled   := True;
  end;
end;
end.
