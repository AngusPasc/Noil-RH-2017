unit frm_residencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, unitexcepciones,
  udbgrid, unittbotonespermisos, UnitValidaTexto, unitactivapop, cxGraphics,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfrmResidencias = class(TForm)
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
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Undo1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    ds_residencias: TDataSource;
    Residencias: TZQuery;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    tsIdResidencia: TDBEdit;
    tsDescripcion: TDBEdit;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_residencias: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_residenciasCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsIdResidenciaEnter(Sender: TObject);
    procedure tsIdResidenciaExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsIdResidenciaKeyPress(Sender: TObject; var Key: Char);
    procedure grid_residenciasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_residenciasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_residenciasTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResidencias: TfrmResidencias;
  //utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
implementation

{$R *.dfm}

procedure TfrmResidencias.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmResidencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Residencias.Cancel ;
  action := cafree ;
  //utgrid.destroy;
  botonpermiso.Free;
end;

procedure TfrmResidencias.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adResidencias', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_residencias);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  Residencias.Active := False ;
  Residencias.Open ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmResidencias.grid_residenciasCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmResidencias.grid_residenciasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //utgrid.DbGridMouseMoveCoord(x,y);
end;

procedure TfrmResidencias.grid_residenciasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmResidencias.grid_residenciasTitleClick(Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmResidencias.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmResidencias, popupprincipal);
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Residencias.Append ;
   Residencias.FieldValues['sResponsable'] := '' ;
   Residencias.FieldValues['sAdministradordeContrato'] := '' ;

   tsIdResidencia.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_residencias.Enabled := False;
end;

procedure TfrmResidencias.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
       //activapop(frmResidencias, popupprincipal);
       Residencias.Edit ;
   except
       on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Residencia de Obras', 'Al editar registro', 0);
       frmBarra1.btnCancel.Click ;
       end;
   end ;
   tsIdResidencia.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_residencias.Enabled := False;
end;

procedure TfrmResidencias.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Descripcion');cadenas.Add(tsDescripcion.Text);
   if not validaTexto(nombres, cadenas, 'Residencia', tsIdResidencia.Text) then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;
   {Continua insercion de datos}
   try
      //desactivapop(popupprincipal);
      Residencias.Post ;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      frmBarra1.btnPostClick(Sender);
   except
     on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Residencia de Obras', 'Al salvar registro', 0);
       frmBarra1.btnCancel.Click ;
     end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_residencias.Enabled := True;
end;

procedure TfrmResidencias.frmBarra1btnCancelClick(Sender: TObject);
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
   Residencias.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_residencias.Enabled := True;   
end;

procedure TfrmResidencias.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Residencias.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        Residencias.Delete ;
      except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Residencia de Obras', 'Al eliminar registro', 0);
       end;
      end
    end
end;

procedure TfrmResidencias.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Residencias.Refresh ;
end;

procedure TfrmResidencias.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  close
end;

procedure TfrmResidencias.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdResidencia.SetFocus
end;

procedure TfrmResidencias.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmResidencias.Copy1Click(Sender: TObject);
begin
  //UtGrid.AddRowsFromClip;
end;

procedure TfrmResidencias.Cut1Click(Sender: TObject);
begin
  //UtGrid.CopyRowsToClip;
end;

procedure TfrmResidencias.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmResidencias.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmResidencias.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmResidencias.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmResidencias.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmResidencias.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmResidencias.tsIdResidenciaEnter(Sender: TObject);
begin
    tsIdResidencia.Color := global_color_entradaERP
end;

procedure TfrmResidencias.tsIdResidenciaExit(Sender: TObject);
begin
    tsIdResidencia.Color := global_color_salidaERP;
end;

procedure TfrmResidencias.tsIdResidenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsdescripcion.SetFocus
end;

procedure TfrmResidencias.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmResidencias.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

end.
