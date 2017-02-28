unit frmCatalogoEgresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Global, 
  Dialogs, DB, DateUtils, StrUtils, unittbotonespermisos, UFunctionsGHH, 
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxBar, dxRibbonRadialMenu, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, frxClass, frxDBSet,
  cxContainer, cxTextEdit, cxDBEdit, Menus, cxButtons, cxGroupBox;
type
  Tfrm_CatalogoEgresos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbmDescripcion: TDBMemo;
    tdbsIdEgreso: TDBEdit;
    tsIdGrupo: TDBLookupComboBox;
    dbchklEgresoReal: TDBCheckBox;
    frmBarra1: TfrmBarra;
    pnlEgresos: TPanel;
    grid_CatEgresos: TcxGrid;
    dbgBView_grid_CatEgresos: TcxGridDBTableView;
    Col_Grid1DBTableView1sIdEgreso1: TcxGridDBColumn;
    Col_Grid1DBTableView1sDescripcion1: TcxGridDBColumn;
    Col_Grid1DBTableView1sIdGrupo1: TcxGridDBColumn;
    dbg_CatEgresosLevel1: TcxGridLevel;
    btnCatalogoGrupos: TButton;
    dszQCatalogodeEgresos: TDataSource;
    zqCatalogodeEgresos: TZQuery;
    cQCatalogodeEgresossIdEgreso: TStringField;
    mfldQCatalogodeEgresosmDescripcion: TMemoField;
    zqCatalogodeEgresossDescripcion: TStringField;
    cQCatalogodeEgresossIdGrupo: TStringField;
    cQCatalogodeEgresoslEgresoReal: TStringField;
    cQCatalogodeEgresossContrato: TStringField;
    zqGrupodeEgresos: TZReadOnlyQuery;
    dszQGrupodeEgresos: TDataSource;
    dxbrmngr1: TdxBarManager;
    Editar1: TdxBarButton;
    Registrar1: TdxBarButton;
    Can1: TdxBarButton;
    Eliminar1: TdxBarButton;
    Salir1: TdxBarButton;
    Refresh1: TdxBarButton;
    Imprimir1: TdxBarButton;
    Insertar1: TdxBarButton;
    PopupPrincipal: TdxRibbonRadialMenu;
    frxEgresos: TfrxReport;
    frxDsEgresos: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zqCatalogodeEgresosAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure zqCatalogodeEgresosCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnCatalogoGruposClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CatalogoEgresos: Tfrm_CatalogoEgresos;
  //utgrid:ticdbgrid;
implementation

uses frm_connection, frmGrupodeEgresos;

{$R *.dfm}

procedure Tfrm_CatalogoEgresos.btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  grid_CatEgresos.Enabled:=False;
  zQCatalogodeEgresos.Append ;
  zQCatalogodeEgresos.FieldValues['lEgresoReal'] := 'Si';
  tdbsIdEgreso.SetFocus;
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Imprimir1.Enabled := False ;
  Salir1.Enabled := False ;
end;

procedure Tfrm_CatalogoEgresos.btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  grid_CatEgresos.Enabled:=True;
  zQCatalogodeEgresos.Cancel;
  Insertar1.Enabled := true ;
  Editar1.Enabled := true ;
  Registrar1.Enabled := false ;
  Can1.Enabled := false ;
  Eliminar1.Enabled := true ;
  Refresh1.Enabled := true ;
  Imprimir1.Enabled := true ;
  Salir1.Enabled := true ;
end;

procedure Tfrm_CatalogoEgresos.btnCatalogoGruposClick(Sender: TObject);
begin
    Application.CreateForm(Tfrm_GrupodeEgresos, frm_GrupodeEgresos);
    frm_GrupodeEgresos.Show;
end;

procedure Tfrm_CatalogoEgresos.btnDeleteClick(Sender: TObject);
begin
If zQCatalogodeEgresos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
      
         Connection.zCommand.SQL.Clear ;
         Connection.zCommand.SQL.Add('Update con_catalogodeegresos Set lActivo="No" Where sIdEgreso =:Egreso And sContrato =:Contrato');
         Connection.zCommand.Params.ParamByName('Egreso').DataType   := ftString ;
         Connection.zCommand.Params.ParamByName('Egreso').Value      := zQCatalogodeEgresos.FieldValues['sIdEgreso'] ;
         Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
         Connection.zCommand.ExecSQL ;
         zQCatalogodeEgresos.Refresh ;

      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end
end;

procedure Tfrm_CatalogoEgresos.btnEditClick(Sender: TObject);
begin
if zQCatalogodeEgresos.RecordCount > 0 then
  begin
    frmBarra1.btnEditClick(Sender);
    grid_CatEgresos.Enabled:=False;
    zQCatalogodeEgresos.Edit ;
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Imprimir1.Enabled := False ;
    Salir1.Enabled := False ;
    tdbsIdEgreso.SetFocus
  end ;
end;

procedure Tfrm_CatalogoEgresos.btnExitClick(Sender: TObject);
begin
  close ;
end;

procedure Tfrm_CatalogoEgresos.btnPostClick(Sender: TObject);
begin
  zqCatalogodeEgresos.FieldByName('sIdGrupo').AsString  := tsIdGrupo.KeyValue;
  zqCatalogodeEgresos.FieldByName('sContrato').AsString := Global_Contrato;
  zQCatalogodeEgresos.Post ;
  grid_CatEgresos.Enabled:=True;
  frmBarra1.btnPostClick(Sender);
  Insertar1.Enabled := true ;
  Editar1.Enabled := true ;
  Registrar1.Enabled := false ;
  Can1.Enabled := false ;
  Eliminar1.Enabled := true ;
  Refresh1.Enabled := true ;
  Imprimir1.Enabled := true ;
  Salir1.Enabled := true ;
end;

procedure Tfrm_CatalogoEgresos.btnPrinterClick(Sender: TObject);
begin
     if not FileExists(global_files + global_miReporte + '_CADfrCatalogoEgresos.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrCatalogoEgresos.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  If zQCatalogodeEgresos.RecordCount > 0 Then
    frxEgresos.PreviewOptions.Modal := False ;
    frxEgresos.PreviewOptions.ShowCaptions := False ;
    frxEgresos.Previewoptions.ZoomMode := zmPageWidth ;
    frxEgresos.LoadFromFile (global_files + global_miReporte + '_CADfrCatalogoEgresos.fr3') ;
      frxEgresos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))

end;

procedure Tfrm_CatalogoEgresos.btnRefreshClick(Sender: TObject);
begin
  zQCatalogodeEgresos.Active:=false ;
  zQCatalogodeEgresos.Open;
  zQGrupodeEgresos.Active:=false ;
  zQGrupodeEgresos.Open;
end;

procedure Tfrm_CatalogoEgresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_CatalogoEgresos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
         if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
               else
                   selectedindex := 0;
end;

procedure Tfrm_CatalogoEgresos.FormShow(Sender: TObject);
begin
  //UtGrid:=TicdbGrid.create(grid_CatEgresos);
    zQGrupodeEgresos.Open ;
    zQCatalogodeEgresos.Active := False ;
    zQCatalogodeEgresos.ParamByName('Contrato').asString := Global_Contrato ;
    zQCatalogodeEgresos.Open ;

    frmBarra1.btnAdd.SetFocus
end;

procedure Tfrm_CatalogoEgresos.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   grid_CatEgresos.Enabled:=False;
   zQCatalogodeEgresos.Append ;
   zQCatalogodeEgresos.FieldValues['lEgresoReal'] := 'Si';
   zQCatalogodeEgresos.FieldByName('sContrato').AsString := Global_Contrato ;
   tdbsIdEgreso.SetFocus;

end;

procedure Tfrm_CatalogoEgresos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  grid_CatEgresos.Enabled:=True;
  zQCatalogodeEgresos.Cancel;

end;

procedure Tfrm_CatalogoEgresos.frmBarra1btnDeleteClick(Sender: TObject);
begin

 If zQCatalogodeEgresos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //try
         Connection.QryBusca.Active := False ;
         Connection.qryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sIdEgreso from con_tesoreriapegresos t Inner Join contratos c On (t.idOrganizacion=c.idOrganizacion) ' +
                                     'Where t.sIdEgreso =:Egreso and c.sContrato =:Contrato');
         Connection.QryBusca.ParamByName('Egreso').asString   := zQCatalogodeEgresos.FieldValues['sIdEgreso'] ;
         Connection.QryBusca.ParamByName('Contrato').asString := Global_Contrato ;
         Connection.QryBusca.Open ;
         If Connection.QryBusca.RecordCount > 0 Then
             MessageDlg('NO SE PUEDE BORRAR, EXISTE CON MOVIMIENTOS EN EGRESOS.', mtInformation, [mbOk], 0)
         Else
         begin
            zQCatalogodeEgresos.Delete ;
            grid_CatEgresos.Enabled:=True;
         end;
     // except
     //   MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
     // end
    end


end;

procedure Tfrm_CatalogoEgresos.frmBarra1btnEditClick(Sender: TObject);
begin
  if zQCatalogodeEgresos.RecordCount > 0 then
  begin
    frmBarra1.btnEditClick(Sender);
    grid_CatEgresos.Enabled:=False;
    zQCatalogodeEgresos.Edit ;

    tdbsIdEgreso.SetFocus
  end ;
end;

procedure Tfrm_CatalogoEgresos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure Tfrm_CatalogoEgresos.frmBarra1btnPostClick(Sender: TObject);
begin
  zqCatalogodeEgresos.FieldByName('sIdGrupo').AsString  := tsIdGrupo.KeyValue;
  zQCatalogodeEgresos.FieldByName('sContrato').AsString := Global_Contrato ;
  zQCatalogodeEgresos.Post ;
  grid_CatEgresos.Enabled:=True;
  frmBarra1.btnPostClick(Sender);

end;

procedure Tfrm_CatalogoEgresos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zQCatalogodeEgresos.Active:=false ;
  zQCatalogodeEgresos.Open;
  zQGrupodeEgresos.Active:=false ;
  zQGrupodeEgresos.Open;
end;

procedure Tfrm_CatalogoEgresos.zqCatalogodeEgresosAfterInsert(
  DataSet: TDataSet);
begin
    zqCatalogodeEgresos.FieldValues['mDescripcion'] := '*' ;
end;

procedure Tfrm_CatalogoEgresos.zqCatalogodeEgresosCalcFields(DataSet: TDataSet);
begin
    zQCatalogodeEgresossDescripcion.Text := MidStr ( zQCatalogodeEgresos.FieldValues['mDescripcion'], 1 , 254 )
end;

end.
