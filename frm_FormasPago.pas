unit frm_FormasPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, UFunctionsGHH,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, ExtCtrls, dxBar, dxRibbonRadialMenu, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxContainer, cxLabel, cxTextEdit, cxDBEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, frxClass, frxDBSet, dxRibbon;

type
  TfrmFormasPago = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    SalirInsertar: TdxBarLargeButton;
    SalirEditar: TdxBarLargeButton;
    SalirGuardar: TdxBarLargeButton;
    SalirCancelar: TdxBarLargeButton;
    SalirEliminar: TdxBarLargeButton;
    SalirRefrescar: TdxBarLargeButton;
    SalirSalir: TdxBarLargeButton;
    SalirImprimir: TdxBarLargeButton;
    pnl_Principal: TPanel;
    pnl_Grid: TPanel;
    pnl_Datos: TPanel;
    cxgrdbtblvwBView_FormasPago: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Grid_FormasPago: TcxGrid;
    sId: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    sConcepto: TcxDBTextEdit;
    ds_FormaPago: TDataSource;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    FormaPago: TZQuery;
    frxFormasPagos: TfrxReport;
    dbFormasPagos: TfrxDBDataset;
    pm1: TdxRibbonPopupMenu;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirInsertarClick(Sender: TObject);
    procedure cambio_estado;
    procedure SalirEditarClick(Sender: TObject);
    procedure SalirGuardarClick(Sender: TObject);
    procedure SalirCancelarClick(Sender: TObject);
    procedure SalirEliminarClick(Sender: TObject);
    procedure SalirRefrescarClick(Sender: TObject);
    procedure SalirSalirClick(Sender: TObject);
    procedure SalirImprimirClick(Sender: TObject);
  private
     sMenuP : String ;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormasPago: TfrmFormasPago;

implementation

uses Func_Genericas, global, frm_connection, frmDepositoscias, frm_pedidos;
{$R *.dfm}

procedure TfrmFormasPago.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if bandera_formulario= 'frm_Depositoscias' then
  begin
    bandera_formulario := '';
    frm_Depositoscias.FormaPago.refresh;
    frm_Depositoscias.zQEgresos.FieldByName('sFormaPago').asInteger    :=  FormaPago.fieldbyname('sIdFormaPago').asInteger;
  end;
end;

procedure TfrmFormasPago.FormShow(Sender: TObject);
begin
  FormaPago.Active := False;
  FormaPago.Open;
end;

procedure TfrmFormasPago.SalirCancelarClick(Sender: TObject);
begin
  FormaPago.Cancel;
  ActivarDesactivar_Botones(dxBarManager1,FormaPago,Grid_FormasPago);
  cambio_estado;
end;

procedure TfrmFormasPago.SalirEditarClick(Sender: TObject);
begin
  FormaPago.Edit;
  ActivarDesactivar_Botones(dxBarManager1,FormaPago, Grid_FormasPago);
  cambio_estado;
end;

procedure TfrmFormasPago.SalirEliminarClick(Sender: TObject);
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from con_tesoreriaegresos where sFormaPago = :sFormaPago');
  connection.QryBusca.ParamByName('sFormaPago').AsInteger :=  FormaPago.FieldByName('sIdFormaPago').AsInteger;
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount = 0 then
    FormaPago.Delete
  else MSG_W('No se puede eliminar el registro por que este tipo de pago es utilizado en depositos por compañia');

end;

procedure TfrmFormasPago.SalirGuardarClick(Sender: TObject);
begin
  FormaPago.FieldByName('sIdFormaPago').AsInteger := NextId('sIdFormaPago','formas_pago');
  FormaPago.Post;

  try
    { frmpedidos.zqryFormaPago.Refresh;
     frmpedidos.tsFormaPago1.KeyValue := FormaPago.FieldByName('sIdFormaPago').AsString;
     frmpedidos.tsFormaPago1.SetFocus; }
  Except
  end;

  ActivarDesactivar_Botones(dxBarManager1,FormaPago,Grid_FormasPago);
  cambio_estado;
end;

procedure TfrmFormasPago.SalirImprimirClick(Sender: TObject);
begin
     if not FileExists(global_files + global_miReporte + '_CADfrxFormas.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrxFormas.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

 If FormaPago.RecordCount > 0 Then
    frxFormasPagos.PreviewOptions.Modal := False ;
    frxFormasPagos.PreviewOptions.ShowCaptions := False ;
    frxFormasPagos.Previewoptions.ZoomMode := zmPageWidth ;
    frxFormasPagos.LoadFromFile(global_files + global_miReporte + '_CADfrxFormas.fr3') ;
     frxFormasPagos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))

end;

procedure TfrmFormasPago.SalirInsertarClick(Sender: TObject);
begin
  FormaPago.Append;
  ActivarDesactivar_Botones(dxBarManager1,FormaPago, Grid_FormasPago);
  cambio_estado;
end;

procedure TfrmFormasPago.SalirRefrescarClick(Sender: TObject);
begin
  FormaPago.Refresh;
end;

procedure TfrmFormasPago.SalirSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFormasPago.cambio_estado;
begin
  if FormaPago.State in [dsInsert,dsEdit] then
  begin
    sConcepto.Enabled       := True;
  end
  else if FormaPago.State in [dsBrowse] then
  begin
    sConcepto.Enabled       := False;
  end;
end;

end.
