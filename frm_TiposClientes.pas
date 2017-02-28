unit frm_tiposclientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Mask,
  DBCtrls, Grids, DBGrids, frm_barra, unitexcepciones,
  udbgrid, unittbotonespermisos,UnitValidaTexto, UnitTablasImpactadas,
  unitactivapop, Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxDBEdit,
  cxLabel, frxClass, frxDBSet, global, dxSkinsdxBarPainter, dxBar,
  dxRibbonRadialMenu, ExtCtrls, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxRibbon, utilerias, UFunctionsGHH;
type
    Evalidaciones = class(Exception)
end;
type
  Tfrmtiposclientes = class(TForm)
    frmbr1: TfrmBarra;
    dsTiposClientes: TDataSource;
    ZQTiposClientes: TZQuery;
    cxID: TcxDBTextEdit;
    cxTipo: TcxDBTextEdit;
    intgrfldZQTiposClientesiid: TIntegerField;
    strngfldZQTiposClientesstipo: TStringField;
    frxTiposC: TfrxReport;
    DSTiposc1: TfrxDBDataset;
    dxbrmngr1: TdxBarManager;
    dxEditar: TdxBarButton;
    dxGuardar: TdxBarButton;
    dxCancelar: TdxBarButton;
    dxEliminar: TdxBarButton;
    dxSalir: TdxBarButton;
    dxRefrescar: TdxBarButton;
    dxImprimir: TdxBarButton;
    dxInsertar: TdxBarButton;
    pnl1: TPanel;
    dbgrdGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    IDGrid1DBTableView1iid1: TcxGridDBColumn;
    IDGrid1DBTableView1stipo1: TcxGridDBColumn;
    lbID: TcxLabel;
    lbTipo: TcxLabel;
    dxrbnpmn_catalago: TdxRibbonPopupMenu;
    procedure FormShow(Sender: TObject);
    procedure frmbr1btnAddClick(Sender: TObject);
    procedure frmbr1btnPostClick(Sender: TObject);
    procedure frmbr1btnCancelClick(Sender: TObject);
    procedure frmbr1btnExitClick(Sender: TObject);
    procedure frmbr1btnRefreshClick(Sender: TObject);
    procedure frmbr1btnDeleteClick(Sender: TObject);
    procedure frmbr1btnEditClick(Sender: TObject);
    procedure frmbr1btnPrinterClick(Sender: TObject);
    procedure dxInsertarClick(Sender: TObject);
    procedure dxEditarClick(Sender: TObject);
    procedure dxGuardarClick(Sender: TObject);
    procedure dxCancelarClick(Sender: TObject);
    procedure dxEliminarClick(Sender: TObject);
    procedure dxSalirClick(Sender: TObject);
    procedure dxRefrescarClick(Sender: TObject);
    procedure dxImprimirClick(Sender: TObject);
    procedure cambio_stado;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxTipoEnter(Sender: TObject);
    procedure cxTipoExit(Sender: TObject);
    procedure cxTipoKeyPress(Sender: TObject; var Key: Char);
  private
    sMenuP : String ;
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmtiposclientes: Tfrmtiposclientes;
   botonpermiso: tbotonespermisos;
   stipoPersonal : string ;


implementation
uses frm_inteligent, frm_connection, Func_Genericas;
{$R *.dfm}

procedure Tfrmtiposclientes.cxTipoEnter(Sender: TObject);
begin
  cxTipo.Style.Color := global_color_entradaERP;
end;

procedure Tfrmtiposclientes.cxTipoExit(Sender: TObject);
begin
  cxTipo.Style.Color := $00F0F0F0;
end;

procedure Tfrmtiposclientes.cxTipoKeyPress(Sender: TObject; var Key: Char);
begin
 if not((Key in ['A'..'Z','A',#8]) or (Key in ['a'..'z', 'a', #8])) then
  begin
    Key:=#0;
  end;
end;

procedure Tfrmtiposclientes.dxCancelarClick(Sender: TObject);
begin
  frmbr1.btnCancel.Click;
end;

procedure Tfrmtiposclientes.dxEditarClick(Sender: TObject);
begin
  frmbr1.btnEdit.Click;
end;

procedure Tfrmtiposclientes.dxEliminarClick(Sender: TObject);
begin
  frmbr1.btnDelete.Click;
end;

procedure Tfrmtiposclientes.dxGuardarClick(Sender: TObject);
begin
  frmbr1.btnPost.Click;
end;

procedure Tfrmtiposclientes.dxImprimirClick(Sender: TObject);
begin
  frmbr1.btnPrinter.Click;
end;

procedure Tfrmtiposclientes.dxInsertarClick(Sender: TObject);
begin
  frmbr1.btnAdd.Click;
end;

procedure Tfrmtiposclientes.dxRefrescarClick(Sender: TObject);
begin
  frmbr1.btnRefresh.Click;
end;

procedure Tfrmtiposclientes.dxSalirClick(Sender: TObject);
begin
  frmbr1.btnExit.Click;
end;

procedure Tfrmtiposclientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrmtiposclientes.FormShow(Sender: TObject);
begin
   //cargando datos a mi combo Tipos de Cliente
   ZQTiposClientes.Active:=false;
   ZQTiposClientes.Open;
   //dsTiposClientes.OnStateChange:= dsTiposClientesStateChange;
   cambio_stado;
end;

procedure Tfrmtiposclientes.frmbr1btnAddClick(Sender: TObject);
begin
  ZQTiposClientes.Last;
  ZQTiposClientes.Append;
  frmbr1.btnAddClick(Sender);
  ZQTiposClientes.FieldValues['stipo']   := '' ;
  cxTipo.SetFocus;
  cambio_stado;
  //F_ActiveCtrl('I',frmtiposclientes);
end;

procedure Tfrmtiposclientes.frmbr1btnCancelClick(Sender: TObject);
begin
  try
     frmbr1.btnCancelClick(Sender);
     ZQTiposClientes.Cancel;
     cambio_stado;
     //F_ActiveCtrl('I',frmtiposclientes);
  except
  end;
end;

procedure Tfrmtiposclientes.frmbr1btnDeleteClick(Sender: TObject);
begin
  try
    If ZQTiposClientes.RecordCount  > 0 then
    begin
      if MessageDlg('Desea eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        Connection.QryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select sIdCompania from con_companias Where lStatus =:tipo');
        Connection.QryBusca.Params.ParamByName('tipo').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('tipo').Value    := ZQTiposClientes.FieldValues['stipo'] ;
        Connection.QryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
           MessageDlg('NO SE PUEDE BORRAR, EXISTE RELACIÓN CON COMPAÑIAS.', mtInformation, [mbOk], 0)
        Else
        begin
           ZQTiposClientes.Delete ;
           //BotonPermiso.permisosBotones(frmbr1);
        end;
      end;
    end;
  except
  end;
end;

procedure Tfrmtiposclientes.frmbr1btnEditClick(Sender: TObject);
begin
   If ZQTiposClientes.RecordCount > 0 Then
   begin
      begin
      frmbr1.btnEditClick(Sender);
      ZQTiposClientes.Edit;
      cxTipo.SetFocus;
      cambio_stado;
      //F_ActiveCtrl('M',frmtiposclientes);
      end;
   end else MessageDlg('No hay registro que modificar!!', mtError, [mbOk], 0);
end;

procedure Tfrmtiposclientes.frmbr1btnExitClick(Sender: TObject);
begin
  frmbr1.btnExitClick(Sender);
  close
end;

procedure Tfrmtiposclientes.frmbr1btnPostClick(Sender: TObject);
begin
  if cxtipo.Text='' then
  begin
     MessageDlg('El tipo es un dato requerido!!', mtError, [mbOk], 0);
     cxtipo.SetFocus;
     Exit;
  end;
  if ZQTiposClientes.State in [dsInsert] then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT MAX(iid) as id FROM tiposclientes;');
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then begin
      ZQTiposClientes.FieldByName('iid').AsInteger := (connection.QryBusca.FieldByName('id').AsInteger + 1);
    end else begin
      ZQTiposClientes.FieldByName('iid').AsInteger := 1;
    end;
  end;
   ZQTiposClientes.Post;
   frmbr1.btnPostClick(Sender);
   cambio_stado;
   //F_ActiveCtrl('C',frmtiposclientes);
  end;

procedure Tfrmtiposclientes.frmbr1btnPrinterClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_VTAReporteTiposClientes.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_VTAReporteTiposClientes.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;
  If ZQTiposClientes.RecordCount > 0 Then
  begin
    frxTiposC.PreviewOptions.MDIChild := False ;
    frxTiposC.PreviewOptions.Modal := True ;
    frxTiposC.PreviewOptions.Maximized := lCheckMaximized () ;
    frxTiposC.PreviewOptions.ShowCaptions := False ;
    frxTiposC.Previewoptions.ZoomMode := zmPageWidth ;
    frxTiposC.LoadFromFile(global_files + global_miReporte + '_VTAReporteTiposClientes.fr3') ;
    frxTiposC.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
  end;

  //MessageDlg('El tipo es un dato requerido!!', mtinformation, [mbOk], 0);
end;

procedure Tfrmtiposclientes.frmbr1btnRefreshClick(Sender: TObject);
begin
   {ZQTiposClientes.IsEmpty;
   ZQTiposClientes.SQL.Clear;
   ZQTiposClientes.SQL.Add('select * from tiposclientes order by iid');
   ZQTiposClientes.ExecSQL;
   ZQTiposClientes.Open;
   ZQTiposClientes.first; }
   ZQTiposClientes.Active:=false;
   ZQTiposClientes.Open;
end;
procedure Tfrmtiposclientes.cambio_stado;
begin
   if ZQTiposClientes.state in [dsBrowse] then
   begin
      dxInsertar.Enabled   :=True;
      dxEditar.Enabled     :=True;
      dxGuardar.Enabled    :=False;
      dxCancelar.Enabled   :=False;
      dxEliminar.Enabled   :=True;
      dxImprimir.Enabled   :=True;
      dxRefrescar.Enabled  :=True;
      dxSalir.Enabled      :=True;
      cxgrd1.Enabled        :=true;
   end else if ZQTiposClientes.state in [dsInsert,dsEdit] then
   begin
      dxInsertar.Enabled   :=False;
      dxEditar.Enabled     :=False;
      dxGuardar.Enabled    :=True;
      dxCancelar.Enabled   :=True;
      dxEliminar.Enabled   :=False;
      dxImprimir.Enabled   :=False;
      dxRefrescar.Enabled  :=False;
      dxSalir.Enabled      :=False;
      cxgrd1.Enabled        :=false;
   end;
end;
end.
