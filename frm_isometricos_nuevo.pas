unit frm_isometricos_nuevo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, udbgrid, unittbotonespermisos,UnitValidaTexto
  ,unitactivapop, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmIsometricosNuevo = class(TForm)
    frmBarra1: TfrmBarra;
    ds_GruposIsometrico: TDataSource;
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
    N3: TMenuItem;
    Salir1: TMenuItem;
    GruposIsometrico: TZQuery;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_GruposIsometrico: TcxGrid;
    cxgrdbclmno: TcxGridDBColumn;
    pnl1: TPanel;
    lb1: TLabel;
    tsdescripcion: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_GruposIsometricoCellClick(Column: TColumn);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
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
    procedure grid_GruposIsometricoEnter(Sender: TObject);
    procedure grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsdescripcionEnter(Sender: TObject);
    procedure tsdescripcionExit(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIsometricosNuevo : TfrmIsometricosNuevo;
  sOldId: string;
  botonpermiso: tbotonespermisos;
implementation

{$R *.dfm}

procedure TfrmIsometricosNuevo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmIsometricosNuevo.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cIsometricosNuevo', PopupPrincipal);
  OpcButton := '' ;
  sOldId := '';
  frmbarra1.btnCancel.Click ;

  GruposIsometrico.Active := False ;
  GruposIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
  GruposIsometrico.Params.ParamByName('Contrato').Value := Global_Contrato ;
  GruposIsometrico.Open ;
  Grid_GruposIsometrico.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;
procedure TfrmIsometricosNuevo.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricosNuevo.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmIsometricosNuevo.frmBarra1btnAddClick(Sender: TObject);
begin
 try
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  tsDescripcion.SetFocus;
  GruposIsometrico.Append ;
  GruposIsometrico.FieldValues['sIsometrico'] := '' ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, ' Isometricos', 'Al agregar registro', 0);
  end;
 end;
end;

procedure TfrmIsometricosNuevo.frmBarra1btnEditClick(Sender: TObject);
begin
  try
    If GruposIsometrico.RecordCount > 0 Then
    Begin
       frmBarra1.btnEditClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       sOldId := GruposIsometrico.FieldValues['sIsometrico'];
       GruposIsometrico.Edit ;

    End;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled:=false;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, ' Isometricos', 'Al editar registro', 0);
  end;
  end;
end;

procedure TfrmIsometricosNuevo.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion: boolean;
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion Isometrico');
  cadenas.Add(tsDescripcion.Text);

  if not validaTexto(nombres, cadenas, '', tsDescripcion.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos



  lEdicion := GruposIsometrico.state = dsEdit;//capturar la bandera para usarla luego del post
  Try
     GruposIsometrico.FieldValues['sContrato'] := global_contrato ;
     GruposIsometrico.Post ;
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
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, ' Isometricos', 'Al actualizar registro', 0);
     frmBarra1.btnCancel.Click ;
     lEdicion := false;
     end;
  end;

//desactivapop(popupprincipal);
BotonPermiso.permisosBotones(frmBarra1);
frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmIsometricosNuevo.frmBarra1btnCancelClick(Sender: TObject);
begin
  try
   frmBarra1.btnCancelClick(Sender);
   GruposIsometrico.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   BotonPermiso.permisosBotones(frmBarra1);
   //desactivapop(popupprincipal);
   frmbarra1.btnPrinter.Enabled:=false;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Isometricos', 'Al cancelar', 0);
  end;
  end;
end;

procedure TfrmIsometricosNuevo.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If GruposIsometrico.RecordCount > 0 then

    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        try
          GruposIsometrico.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Isometricos', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmIsometricosNuevo.frmBarra1btnRefreshClick(Sender: TObject);
begin
  GruposIsometrico.refresh ;
end;

procedure TfrmIsometricosNuevo.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;

procedure TfrmIsometricosNuevo.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmIsometricosNuevo.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmIsometricosNuevo.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmIsometricosNuevo.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmIsometricosNuevo.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmIsometricosNuevo.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmIsometricosNuevo.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmIsometricosNuevo.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricosNuevo.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricosNuevo.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricosNuevo.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmIsometricosNuevo.tsdescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmIsometricosNuevo.tsdescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmIsometricosNuevo.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

end.
