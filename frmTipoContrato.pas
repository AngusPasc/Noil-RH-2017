unit frmTipoContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
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
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxBar, dxRibbonRadialMenu, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  Tfrm_TipoContrato = class(TForm)
   dszQTipoContrato: TDataSource;
    zQTipoContrato: TZQuery;
    frmBarra1: TfrmBarra;
    Label1: TLabel;
    Label2: TLabel;
    zQTipoContratosIdTipo: TStringField;
    zQTipoContratosDescripcion: TStringField;
    tsIdTipo: TDBEdit;
    tsDescripcion: TDBEdit;
    zQTipoContratosIdArticulo: TStringField;
    Label3: TLabel;
    zQCatalogodeIngresos: TZReadOnlyQuery;
    zQCatalogodeIngresossIdArticulo: TStringField;
    dsQCatalogodeIngresos: TDataSource;
    tsIdArticulo: TDBLookupComboBox;
    zQCatalogodeIngresosmDescripcion: TStringField;
    zQTipoContratosAutomatico: TStringField;
    tsAutomatico: TDBComboBox;
    Label4: TLabel;
    pnlContratos: TPanel;
    grid_Comunidades: TcxGrid;
    BView_grid_Comunidades: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1sIdTipo1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sDescripcion1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sIdArticulo1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sAutomatico1: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zQTipoContratoAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_ComunidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ComunidadesTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_TipoContrato: Tfrm_TipoContrato;
  //utgrid:ticdbgrid;
implementation

uses frm_connection;

{$R *.dfm}

procedure Tfrm_TipoContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_Tipocontrato.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_TipoContrato.FormShow(Sender: TObject);
begin
  //UtGrid:=TicdbGrid.create(grid_Comunidades);
  Connection.configuracion.Refresh ;

  zQCatalogodeIngresos.Active := False ;
  zQCatalogodeIngresos.Params.ParamByName('Anno').DataType := ftInteger ;
  zQCatalogodeIngresos.Params.ParamByName('Anno').Value := Connection.configuracionCont.fieldvalues['iEjercicio'] ;
  zQCatalogodeIngresos.Open ;

  zQTipoContrato.Active := False ;
  zQTipoContrato.Open ;
end;

procedure Tfrm_TipoContrato.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  grid_Comunidades.enabled:=False;
  zQTipoContrato.Append ;
  tsIdTipo.SetFocus;
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Imprimir1.Enabled := False ;
  Salir1.Enabled := False ;
end;

procedure Tfrm_TipoContrato.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  grid_Comunidades.enabled:=true;
  zQTipoContrato.Cancel;
  Insertar1.Enabled   := true ;
  Editar1.Enabled     := true ;
  Registrar1.Enabled  := false ;
  Can1.Enabled        := false ;
  Eliminar1.Enabled   := true ;
  Refresh1.Enabled    := true ;
  Imprimir1.Enabled   := true ;
  Salir1.Enabled      := true ;
end;

procedure Tfrm_TipoContrato.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zQTipoContrato.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zQTipoContrato.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_TipoContrato.frmBarra1btnEditClick(Sender: TObject);
begin
  If zQTipoContrato.RecordCount > 0 Then
  begin
    frmBarra1.btnEditClick(Sender);
    grid_Comunidades.enabled:=False;
    zQTipoContrato.Edit ;
    tsIdTipo.SetFocus;
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Imprimir1.Enabled := False ;
    Salir1.Enabled := False ;
  end ;
end;

procedure Tfrm_TipoContrato.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_TipoContrato.frmBarra1btnPostClick(Sender: TObject);
begin
  zQTipoContrato.Post ;
  grid_Comunidades.enabled:=true;
  frmBarra1.btnPostClick(Sender);
  Insertar1.Enabled   := true ;
  Editar1.Enabled     := true ;
  Registrar1.Enabled  := false ;
  Can1.Enabled        := false ;
  Eliminar1.Enabled   := true ;
  Refresh1.Enabled    := true ;
  Imprimir1.Enabled   := true ;
  Salir1.Enabled      := true ;
end;

procedure Tfrm_TipoContrato.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zQTipoContrato.Active:=False;
  zQTipoContrato.Open;
end;

procedure Tfrm_TipoContrato.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_TipoContrato.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_TipoContrato.grid_ComunidadesTitleClick(Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_TipoContrato.zQTipoContratoAfterInsert(
  DataSet: TDataSet);
begin
    zQTipoContrato.FieldValues['sIdTipo'] := '*' ;
    zQTipoContrato.FieldValues['sDescripcion'] := '*' ;
    zQTipoContrato.FieldValues['sIdArticulo'] := '*' ;
    zQTipoContrato.FieldValues['sAutomatico'] := 'No' ;
end;

end.
