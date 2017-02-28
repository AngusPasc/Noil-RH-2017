unit UManagerDbUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, Grids, DBGrids, AdvSmoothPanel, Menus, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, StdCtrls, cxButtons, AdvGlowButton,
  NxColumns, NxColumnClasses, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid,StrUtils;

type
  TFrmManagerDbUser = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GridUsuarios: TDBGrid;
    PopPrincipal: TPopupMenu;
    AgregarBDexistente1: TMenuItem;
    PnlBases: TAdvSmoothPanel;
    BtnSaveBd: TAdvGlowButton;
    BtnCancel: TAdvGlowButton;
    BtnDelBd: TAdvGlowButton;
    BtnRefreshBdl: TAdvGlowButton;
    BtnRefreshBDSave: TAdvGlowButton;
    BtnRefreshBdxU: TAdvGlowButton;
    Panel4: TPanel;
    BtnAsigBd: TAdvGlowButton;
    BtnDesBd: TAdvGlowButton;
    BtnAddBd: TAdvGlowButton;
    GrdDbLocal: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    GrdBdxU: TNextGrid;
    NxTextColumn3: TNxTextColumn;
    GrdBDS: TNextGrid;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UsuariosAfterScroll(DataSet: TDataSet);
    procedure AgregarBDexistente1Click(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnSaveBdClick(Sender: TObject);
    procedure BtnDelBdClick(Sender: TObject);
    procedure BtnAsigBdClick(Sender: TObject);
    procedure BtnDesBdClick(Sender: TObject);
    procedure BtnRefreshBdlClick(Sender: TObject);
    procedure BtnRefreshBDSaveClick(Sender: TObject);
    procedure BtnRefreshBdxUClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAddBdClick(Sender: TObject);
    procedure GrdDbLocalSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure GrdDbLocalCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure GrdBDSCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure GrdBDSSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure GrdBdxUSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure GrdBdxUCellClick(Sender: TObject; ACol, ARow: Integer);
  private
    ZUsuarios:tzreadonlyquery;
    ZBdLocal:TZReadOnlyQuery;
    ZBdSave:tzquery;
    ZBdxUsuario:TZQuery;
    ZBdxUsuarioRO:TZReadOnlyQuery;
    ZConexion: tzconnection;

    DsUsuarios:TDataSource;

    procedure CargarBdLocales(Refrescar: Boolean; Datos: tzreadonlyquery;
      Grid: tnextgrid);
    procedure CargarBdGuardadas(Refrescar: Boolean; Datos: tzquery;
      Grid: tnextgrid);
    procedure CargarBdXUsuarios(Refrescar: Boolean; Datos: tzreadonlyquery;
      Grid: tnextgrid);


    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManagerDbUser: TFrmManagerDbUser;

implementation
uses frm_connection;
{$R *.dfm}


procedure TFrmManagerDbUser.BtnSaveBdClick(Sender: TObject);
var idm:Integer;
begin
  if ZBdLocal.RecordCount = 0 then
    raise Exception.Create('No existen bases de datos locales.');

  if GrdDbLocal.SelectedRow < 0 then
    raise Exception.Create('Es necesario que seleccione una base de datos.');

  if ZBdSave.Locate('bd_user',ZBdLocal.FieldByName('database').AsString,[]) then
    raise Exception.Create('La base de datos ya está registrada');
   
  if ZBdLocal.recno >= 0 then
  begin
    ZBdSave.Last;
    if ZBdSave.RecordCount > 0 then
      idm := ZBdSave.FieldByName('id_bd').AsInteger+1
    else
      idm := 1;
    ZBdSave.Append;
    ZBdSave.FieldByName('id_bd').AsInteger := idm;
    ZBdSave.FieldByName('bd_user').AsString := ZBdLocal.FieldByName('database').AsString;
    ZBdSave.FieldByName('estado').AsString := 'si';
    ZBdSave.Post;
    BtnRefreshBDSave.Click;
  end;
  PnlBases.Visible := False;
end;

procedure TFrmManagerDbUser.BtnAddBdClick(Sender: TObject);
begin
  AgregarBDexistente1Click(AgregarBDexistente1);
end;

procedure TFrmManagerDbUser.BtnAsigBdClick(Sender: TObject);
var id:integer;
begin
  if ZUsuarios.RecordCount = 0 then
    raise Exception.Create('No hay usuarios cargados.');

  if ZBdSave.RecordCount = 0 then
    raise Exception.Create('No hay bases de datos para asignar');

  if GrdBDS.SelectedRow < 0 then
    raise Exception.Create('Debe seleccionar una base de datos disponible');
  {
  if GridBdxUsuario.SelectedRows.Count <> 1 then
    raise Exception.Create('Debe seleccionar una base de datos asignable.');
    }
  if ZBdxUsuarioRO.Locate('bd_user',ZBdSave.FieldByName('bd_user').AsString,[]) then
    raise Exception.Create('La base de datos ya está asignada');

  ZBdxUsuario.Active := False;
  ZBdxUsuario.SQL.Text := 'Select ifnull(max(id_useer)+1,1) as maximo from user_bd';
  ZBdxUsuario.Open;

  id := ZBdxUsuario.FieldByName('maximo').AsInteger;

  ZBdxUsuario.Active := False;
  ZBdxUsuario.SQL.text := 'select * from user_bd limit 1';
  ZBdxUsuario.Open;

  ZBdxUsuario.Append;
  ZBdxUsuario.FieldByName('id_useer').AsInteger := id;
  ZBdxUsuario.FieldByName('useer').AsString := ZUsuarios.FieldByName('sidusuario').AsString;
  ZBdxUsuario.FieldByName('nombrees').AsString := ZUsuarios.FieldByName('snombre').AsString;
  ZBdxUsuario.FieldByName('id_bds').AsInteger := ZBdSave.FieldByName('id_bd').AsInteger;
  ZBdxUsuario.FieldByName('estatus').AsString := 'si';
  ZBdxUsuario.Post; 
  ZBdxUsuarioRO.Refresh;
  ZBdxUsuarioRO.Locate('bd_user',ZBdSave.FieldByName('bd_user').AsString,[]);

  ZBdxUsuarioRO.Refresh;
  ZBdSave.Refresh;
  BtnRefreshBDSave.Click;
  BtnRefreshBdxU.Click;
end;

procedure TFrmManagerDbUser.BtnCancelClick(Sender: TObject);
begin
  PnlBases.Visible := False;
end;

procedure TFrmManagerDbUser.BtnDelBdClick(Sender: TObject);
begin
  if ZBdSave.RecordCount > 0 then
  begin
    ZBdSave.Locate('id_bd',GrdBDS.Cells[0,GrdBDS.SelectedRow],[]);

    ZBdxUsuario.Active := False;
    ZBdxUsuario.SQL.Text := 'select * from user_bd where id_bds = :id limit 1 ';
    ZBdxUsuario.ParamByName('id').AsInteger := GrdBDS.Cell[0,GrdBDS.SelectedRow].AsInteger;
    ZBdxUsuario.Open;

    if ZBdxUsuario.RecordCount > 0 then
      raise Exception.Create('La base de datos esta asignado a usuarios, por lo tanto no puede eliminarse.');

    ZBdSave.Delete;
    BtnRefreshBDSave.Click;
  end;
end;

procedure TFrmManagerDbUser.BtnDesBdClick(Sender: TObject);
begin
  if ZBdxUsuarioRO.RecordCount = 0 then
    raise Exception.Create('No hay bases de datos asignadas a este usuario.');

  if GrdBdxU.SelectedRow < 0 then
    raise Exception.Create('Seleccione una base de datos.');

  ZBdxUsuario.Active := False;
  ZBdxUsuario.SQL.Text := 'delete from user_bd where id_useer = :id';
  ZBdxUsuario.ParamByName('id').AsInteger := GrdBdxU.Cell[0,GrdBdxU.SelectedRow].AsInteger;//ZBdxUsuarioRO.FieldByName('id_useer').AsInteger;
  ZBdxUsuario.ExecSQL;
  ZBdxUsuarioRO.Refresh;
  BtnRefreshBdxU.Click;
  BtnRefreshBDSave.Click;
end;

procedure TFrmManagerDbUser.BtnRefreshBdlClick(Sender: TObject);
begin
  CargarBdLocales(True,ZBdLocal,GrdDbLocal);
end;

procedure TFrmManagerDbUser.BtnRefreshBDSaveClick(Sender: TObject);
begin
  CargarBdGuardadas(True,zbdsave,GrdBDS);
end;

procedure TFrmManagerDbUser.BtnRefreshBdxUClick(Sender: TObject);
begin
  CargarBdXUsuarios(True,ZBdxUsuarioRO,grdbdxu);
end;

procedure TFrmManagerDbUser.AgregarBDexistente1Click(Sender: TObject);
begin
  BtnRefreshBdl.Click;
  PnlBases.Caption.Text := 'Bases de datos en: '+connection.zConnection.HostName;
  PnlBases.Visible := True;
end;

procedure TFrmManagerDbUser.btnPostClick(Sender: TObject);
begin
  PnlBases.Visible := True;
end;

procedure TFrmManagerDbUser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ZConexion.Disconnect;
  Action := caFree;
end;

procedure TFrmManagerDbUser.FormCreate(Sender: TObject);
begin
  ZBdLocal:=TZReadOnlyQuery.Create(Self);
  ZBdLocal.Active := False;
  ZBdLocal.Connection := connection.zConnection;

  ZConexion := TZConnection.Create(Self);

  ZBdSave:=tzquery.Create(Self);
  ZBdSave.Active := False;
  ZBdSave.Connection := ZConexion;

  ZBdxUsuario:=TZQuery.Create(Self);
  ZBdxUsuario.Active := False;
  ZBdxUsuario.Connection := zConexion;

  ZBdxUsuarioRO:=tzreadonlyquery.Create(Self);
  ZBdxUsuarioRO.Active := False;
  ZBdxUsuarioRO.Connection := zConexion;

  DsUsuarios:=TDataSource.Create(self);

  ZUsuarios:=tzreadonlyquery.Create(Self);
  ZUsuarios.Active := False;
  ZUsuarios.Connection := connection.zConnection;
  ZUsuarios.AfterScroll := UsuariosAfterScroll;

end;

procedure TFrmManagerDbUser.FormShow(Sender: TObject);
begin
  ZBdLocal.SQL.Text := 'Show databases';
  ZBdLocal.Open;



  try
    ZConexion.Protocol := 'mysql-5';
    ZConexion.Port     := connection.zConnection.Port;
    ZConexion.User     := connection.zConnection.User;
    ZConexion.Password := connection.zConnection.Password;
    ZConexion.Database := 'db_gral';
    ZConexion.HostName := connection.zConnection.HostName;
    ZConexion.Connect;
  except
    on e:Exception do
    begin
      ShowMessage('No se pudo establecer comunicacion con la base de datos db_gral,'+#10+
                  ' por lo tanto no se puede acceder a éste módulo.');
      Self.Close;
    end;

  end;

  ZBdSave.SQL.Text := 'Select * from bd order by id_bd';
  ZBdSave.Open;

  ZBdxUsuario.SQL.Text :='Select * from user_bd where useer = :usuario';
  ZBdxUsuario.parambyname('usuario').asstring := '99999999-1';//para iniciar la consulta nomas
  ZBdxUsuario.open;

  ZBdxUsuarioRO.SQL.Text := 'select u.id_useer,b.bd_user from user_bd u '+
                            'inner join bd b on (b.id_bd = u.id_bds) '+
                            'where u.useer = :usuario ';
  ZBdxUsuarioRO.parambyname('usuario').asstring := '99999999-1';//para iniciar la consulta nomas
  ZBdxUsuarioRO.open;


  GridUsuarios.DataSource := DsUsuarios;


  ZUsuarios.SQL.Text := 'Select * from usuarios';
  ZUsuarios.Open;
  DsUsuarios.DataSet := ZUsuarios;

  BtnRefreshBDSave.Click;
  BtnRefreshBdxU.Click;
end;

procedure TFrmManagerDbUser.GrdBDSCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  ZBdSave.Locate('id_bd',GrdBDS.Cells[0,GrdBDS.SelectedRow],[]);
end;

procedure TFrmManagerDbUser.GrdBDSSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
  ZBdSave.Locate('id_bd',GrdBDS.Cells[0,GrdBDS.SelectedRow],[]);
end;

procedure TFrmManagerDbUser.GrdBdxUCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  ZBdxUsuarioRO.Locate('id_useer',GrdBdxU.Cells[0,GrdBdxU.SelectedRow],[]);
end;

procedure TFrmManagerDbUser.GrdBdxUSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
  ZBdxUsuarioRO.Locate('id_useer',GrdBdxU.Cells[0,GrdBdxU.SelectedRow],[]);
end;

procedure TFrmManagerDbUser.GrdDbLocalCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  ZBdLocal.Locate('database',GrdDbLocal.Cells[0,grddblocal.SelectedRow],[]);
end;

procedure TFrmManagerDbUser.GrdDbLocalSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
  ZBdLocal.Locate('database',GrdDbLocal.Cells[0,grddblocal.SelectedRow],[]);
end;

procedure TFrmManagerDbUser.UsuariosAfterScroll(DataSet: TDataSet);
begin
  ZBdxUsuarioRO.close;
  ZBdxUsuarioRO.parambyname('usuario').asstring := ZUsuarios.FieldByName('sidusuario').AsString;//para iniciar la consulta nomas
  ZBdxUsuarioRO.open;
  BtnRefreshBdxU.Click;
  BtnRefreshBDSave.Click;
end;

procedure TFrmManagerDbUser.CargarBdLocales(Refrescar:Boolean;Datos:tzreadonlyquery;Grid:tnextgrid);
begin
  Grid.ClearRows;
  if Datos.State <> dsBrowse then
    raise Exception.Create('No se puede llenar los datos, pulse refrescar e intente de nuevo.');

  if Refrescar then
     datos.Refresh;
  Datos.first;
  while not Datos.Eof do
  begin
    if AnsiIndexText(Datos.FieldByName('database').AsString,['information_schema','adminintel','db_gral','mysql','test']) = -1 then
      Grid.AddCells([Datos.FieldByName('database').AsString]);
    Datos.Next;
  end;
end;

procedure TFrmManagerDbUser.CargarBdGuardadas(Refrescar:Boolean;Datos:tzquery;Grid:tnextgrid);
begin
  Grid.ClearRows;
  if Datos.State <> dsBrowse then
    raise Exception.Create('No se puede llenar los datos, pulse refrescar e intente de nuevo.');

  if Refrescar then
     datos.Refresh;
  Datos.first;
  while not Datos.Eof do
  begin
    if not ZBdxUsuarioRO.Locate('bd_user',Datos.FieldByName('bd_user').AsString,[]) then
      Grid.AddCells([Datos.FieldByName('id_bd').AsString,Datos.FieldByName('bd_user').AsString]);
    Datos.Next;
  end;
end;

procedure TFrmManagerDbUser.CargarBdXUsuarios(Refrescar:Boolean;Datos:tzreadonlyquery;Grid:tnextgrid);
begin
  Grid.ClearRows;
  if Datos.State <> dsBrowse then
    raise Exception.Create('No se puede llenar los datos, pulse refrescar e intente de nuevo.');

  if Refrescar then
     datos.Refresh;
  Datos.first;
  while not Datos.Eof do
  begin
    Grid.AddCells([Datos.FieldByName('id_useer').AsString,Datos.FieldByName('bd_user').AsString]);
    Datos.Next;
  end;
end;
end.
