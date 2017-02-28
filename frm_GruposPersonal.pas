unit frm_GruposPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, UnitExcepciones, UdbGrid,
  unittbotonespermisos, UnitValidaTexto, unitactivapop, FormAutoScaler,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TfrmGruposPersonal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tsIdGrupo: TDBEdit;
    tsDescripcion: TDBEdit;
    frmBarra1: TfrmBarra;
    ds_grupos: TDataSource;
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
    Copiar1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Grupos: TZQuery;
    frmtsclr1: TFormAutoScaler;
    dbgcxGrid1DBTableView1: TcxGridDBTableView;
    dbgcxGrid1Level1: TcxGridLevel;
    Grid_Fases: TcxGrid;
    Col_dbgcxGrid1DBTablaGrupo: TcxGridDBColumn;
    Col_dbgcxGrid1DBTableDescripcion: TcxGridDBColumn;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_fasesCellClick(Column: TColumn);
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
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_fasesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_fasesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_fasesTitleClick(Column: TColumn);
    procedure Paste1Click(Sender: TObject);
    function existeEnPersonal(sIdGrupo: string): boolean;
    procedure dbgcxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGruposPersonal: TfrmGruposPersonal;
  UtGrid:TicDbGrid;
  botonpermiso: tbotonespermisos;
  banderaagregar:boolean;
implementation

{$R *.dfm}

procedure TfrmGruposPersonal.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmGruposPersonal.tsIdGrupoEnter(Sender: TObject);
begin
  tsIdGrupo.color := global_color_entradaPU;
end;

procedure TfrmGruposPersonal.tsIdGrupoExit(Sender: TObject);
begin
  tsIdGrupo.color := global_color_salidaPU;
end;

procedure TfrmGruposPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Grupos.Cancel ;
  action := cafree ;

  botonpermiso.Free;
end;

procedure TfrmGruposPersonal.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'mnuAgrupacionP', PopupPrincipal);
  BotonPermiso.permisosBotones(frmBarra1);

  OpcButton := '' ;
  frmbarra1.btnCancel.Click ;
  Grupos.Active := False ;
  Grupos.Open ;

  frmbarra1.btnPrinter.Enabled:=false;

end;

procedure TfrmGruposPersonal.grid_fasesCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmGruposPersonal.grid_fasesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmGruposPersonal.grid_fasesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmGruposPersonal.grid_fasesTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

//************************BRITO 16/05/2011**************************************
function TfrmGruposPersonal.existeEnPersonal(sIdGrupo: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT sIdPersonal FROM personal WHERE sAgrupaPersonal = :sIdGrupo LIMIT 1');
    ParamByName('sIdGrupo').Value := sIdGrupo;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;
//************************BRITO 16/05/2011**************************************

procedure TfrmGruposPersonal.frmBarra1btnAddClick(Sender: TObject);
begin
 try
  //activapop(frmGruposPersonal, popupprincipal);
  banderaagregar:=true;
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  Grupos.Append ;
  Grupos.FieldValues['sIdGrupo'] := '' ;
  Grupos.FieldValues['sDescripcion'] := '' ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Categorias de Personal', 'Al agregar registro',0) end;
 end;
  tsIdGrupo.SetFocus ;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled:=false;
    grid_fases.Enabled:=false;
end;

procedure TfrmGruposPersonal.frmBarra1btnEditClick(Sender: TObject);
begin
   //*********************BRITO 16/05/2011**************************************
   if existeEnPersonal(Grupos.FieldByName('sIdGrupo').AsString) then
   begin
     if MessageDlg('La categoria ya ha sido utilizada en el catalogo de' + #10 +
                   'especialidades de personal, seguro que desea editarla?',
                   mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      begin
        exit;
      end;
   end;
   //*********************BRITO 16/05/2011**************************************
   banderaAgregar:=false;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
      //activapop(frmGruposPersonal, popupprincipal);
      Grupos.Edit ;
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Categorias de Personal', 'Al editar registro', 0);
           frmbarra1.btnCancel.Click ;
       end;
   end ;
   tsIdGrupo.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_fases.Enabled:=false;
end;

procedure TfrmGruposPersonal.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
//valida texto
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');cadenas.Add(tsDescripcion.Text);
  if not validaTexto(nombres, cadenas, 'id Grupo', tsIdGrupo.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;


//continua el post

   try
     //desactivapop(popupprincipal);
      Grupos.Post ;
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
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Categorias de Personal', 'Al salvar registro', 0);
            frmbarra1.btnCancel.Click ;
       end;
   end ;
     BotonPermiso.permisosBotones(frmBarra1);
     frmbarra1.btnPrinter.Enabled:=false;
     grid_fases.Enabled:=true;
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmGruposPersonal.frmBarra1btnCancelClick(Sender: TObject);
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
   Grupos.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_fases.Enabled:=true;
end;

procedure TfrmGruposPersonal.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Grupos.RecordCount  > 0 then
   if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    try
     Grupos.Delete ;
    except
      on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Categorias de Personal', 'Al eliminar registro', 0);
      end;
    end
    end
end;

procedure TfrmGruposPersonal.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Grupos.Active := False ;
  Grupos.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Categorias de Personal', 'Al actualizar Grid',0);  end;
 end;
end;

procedure TfrmGruposPersonal.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmGruposPersonal.tsDescripcionEnter(Sender: TObject);
begin
   tsDescripcion.color := global_color_entradaPU;
end;

procedure TfrmGruposPersonal.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.color := global_color_salidaPU;
end;

procedure TfrmGruposPersonal.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdGrupo.SetFocus
end;

procedure TfrmGruposPersonal.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmGruposPersonal.Paste1Click(Sender: TObject);
begin
  try
   UtGrid.AddRowsFromClip;
  except
   on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Categorias de Personal', 'Al pegar registro', 0);
   end;
  end;

end;

procedure TfrmGruposPersonal.dbgcxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmGruposPersonal.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmGruposPersonal.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmGruposPersonal.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmGruposPersonal.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmGruposPersonal.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmGruposPersonal.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

end.
