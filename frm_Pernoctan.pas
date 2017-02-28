unit frm_Pernoctan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, udbgrid,UnitExcepciones,
  dblookup, unittbotonespermisos, UnitValidaTexto, unitactivapop, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutContainer, dxLayoutControl, cxContainer,
  dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit;

type
  TfrmPernoctan = class(TForm)
    frmBarra1: TfrmBarra;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_pernoctan: TDataSource;
    pernoctan: TZQuery;
    ZClasificacionAux: TZQuery;
    ds_clasificacionaux: TDataSource;
    pernoctanClasificacionAux: TStringField;
    pernoctansIdPernocta: TStringField;
    pernoctansDescripcion: TStringField;
    pernoctansClasificacion: TStringField;
    ZClasificacionAuxsContrato: TStringField;
    ZClasificacionAuxsIdTipoMovimiento: TStringField;
    ZClasificacionAuxsDescripcion: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_pernoctan: TcxGrid;
    pnl1: TPanel;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    tsIdPernocta: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    tsDescripcion: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    tsClasificacion: TcxDBComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_pernoctanCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_pernoctanMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_pernoctanMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_pernoctanTitleClick(Column: TColumn);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tsClasificacionKeyPress(Sender: TObject; var Key: Char);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPernoctan: TfrmPernoctan;
 // UtGrid:TicDbGrid;
  botonpermiso:tbotonespermisos;
  sOpcion : string;
implementation

uses
 frm_ordenes, frm_EmpleadosGuardias, frm_OrdenesCtrlObra;
{$R *.dfm}

procedure TfrmPernoctan.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;


procedure TfrmPernoctan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Pernoctan.Cancel ;
  action := cafree ;
 // utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmPernoctan.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPernoctan', PopupPrincipal);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  ZClasificacionAux.Active := False ;
  ZClasificacionAux.Params.ParamByName('contrato').Value := global_contrato_barco;
  ZClasificacionAux.Open ;
  Pernoctan.Active := False ;
  Pernoctan.Open ;
  //UtGrid:=TicdbGrid.create(grid_pernoctan);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;

end;

procedure TfrmPernoctan.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmPernoctan.grid_pernoctanMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPernoctan.grid_pernoctanMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPernoctan.grid_pernoctanTitleClick(Column: TColumn);
begin
 // UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmPernoctan.frmBarra1btnAddClick(Sender: TObject);
begin
    //activapop(frmPernoctan, popupprincipal);
    frmBarra1.btnAddClick(Sender);
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;
    tsIdPernocta.SetFocus ;
    Pernoctan.Append ;
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
    grid_pernoctan.Enabled := False;
end;

procedure TfrmPernoctan.frmBarra1btnEditClick(Sender: TObject);
begin
   //activapop(frmPernoctan, popupprincipal);
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
      Pernoctan.Edit ;
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Municipios/Localidades/Floteles/Complejos de Pernocta', 'Al agregar registro', 0);
      frmBarra1.btnCancel.Click ;
      end;
   end ;
   tsIdPernocta.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_pernoctan.Enabled := False;
end;

procedure TfrmPernoctan.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lBanderaEdit: boolean;
  sId  : string;
begin
    lBanderaEdit := Pernoctan.State = dsEdit;
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Pernocta');        nombres.Add('Descripcion');      nombres.Add('Clasificacion');
    cadenas.Add(tsIdPernocta.Text); cadenas.Add(tsDescripcion.Text); cadenas.Add(tsClasificacion.Text);
    if not validaTexto(nombres, cadenas, 'Pernocta',(tsIdPernocta.Text)) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
   try
       sId := Pernoctan.FieldValues['sIdPernocta'];
       Pernoctan.FieldValues['sClasificacion'] := tsClasificacion.Text;
       Pernoctan.Post ;
       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;

       if global_frmActivo = 'frm_OrdenesCtrlObra' then
       begin
         try
             frmOrdenesCtrlObra.pernoctan.Refresh;
             frmOrdenesCtrlObra.tsIdPernocta.KeyValue := sId;
             frmOrdenesCtrlObra.tsIdPernocta.SetFocus;
             close;
         Except
         end;
       end;

       if global_frmActivo = 'frm_EmpleadosGuardias' then
       begin
           frmEmpleadosGuardias.zqryPernocta.Refresh;
           //frmEmpleadosGuardias.sEmbarcacion.KeyValue := sId;
           //frmEmpleadosGuardias.sEmbarcacion.SetFocus;
           close;
       end;

       frmBarra1.btnPostClick(Sender);
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Municipios/Localidades/Floteles/Complejos de Pernocta', 'Al salvar registro', 0);
           frmBarra1.btnCancel.Click ;
       end;
   end;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   if lBanderaEdit then
   begin
      Grid_pernoctan.Enabled := True;
      sOpcion := '';
   end;
end;

procedure TfrmPernoctan.frmBarra1btnCancelClick(Sender: TObject);
begin
   //desactivapop(popupprincipal);
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Pernoctan.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_pernoctan.Enabled := True;
end;

procedure TfrmPernoctan.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Pernoctan.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        Pernoctan.Delete ;

       if global_frmActivo = 'frm_ordenes' then
           frmOrdenes.pernoctan.Refresh;

       if global_frmActivo = 'frm_EmpleadosGuardias' then
           frmEmpleadosGuardias.zqryPernocta.Refresh;

      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Municipios/Localidades/Floteles/Complejos de Pernocta', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmPernoctan.frmBarra1btnRefreshClick(Sender: TObject);
begin
   Pernoctan.refresh
end;

procedure TfrmPernoctan.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmPernoctan.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Close;
end;

procedure TfrmPernoctan.tsClasificacionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    tsIdPernocta.SetFocus
end;

procedure TfrmPernoctan.tsDescripcionKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      tsClasificacion.SetFocus
end;

procedure TfrmPernoctan.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmPernoctan.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmPernoctan.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmPernoctan.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmPernoctan.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmPernoctan.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmPernoctan.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmPernoctan.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBComboBox) then
        tcxDBComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmPernoctan.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

end.
