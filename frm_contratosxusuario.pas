unit frm_contratosxusuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,
  DBGrids, ComCtrls, global, DB, Menus, frxClass, frxDBSet,
  RXDBCtrl, ImgList, Buttons, ZAbstractDataset, ZDataset,
  ZAbstractRODataset, ZConnection, unitexcepciones, udbgrid, cxGraphics,
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
  cxGrid ;

type
  TfrmContratosxUsuario = class(TForm)
    ds_Contratos: TDataSource;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    ds_ContratosxUsuario: TDataSource;
    grContratos: TGroupBox;
    grUsuarios: TGroupBox;
    TreeUsuarios: TTreeView;
    Contratos: TZReadOnlyQuery;
    ContratosxUsuario: TZQuery;
    chkTodos: TCheckBox;
    grid_contratosDBTableView1: TcxGridDBTableView;
    grid_contratosLevel1: TcxGridLevel;
    grid_contratos: TcxGrid;
    Grid__colcontrato: TcxGridDBColumn;
    Grid__colActivo: TcxGridDBColumn;
    grid_ContratosXUsuarioDBTableView1: TcxGridDBTableView;
    grid_ContratosXUsuarioLevel1: TcxGridLevel;
    grid_ContratosXUsuario: TcxGrid;
    Grid__ConlContrato: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure TreeUsuariosClick(Sender: TObject);
    procedure grid_contratosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_contratosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_contratosTitleClick(Column: TColumn);
    procedure Grid_ContratosxUsuarioMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ContratosxUsuarioMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Grid_ContratosxUsuarioTitleClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratosxUsuario: TfrmContratosxUsuario;
  MyTreeNode2: TTreeNode;
  //utgrid:ticdbgrid;
  //utgrid2:ticdbgrid;
 
implementation

{$R *.dfm}


procedure TfrmContratosxUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ContratosxUsuario.Cancel ;
  action := cafree ;
  //utgrid.Destroy;
  //utgrid2.Destroy;

end;

procedure TfrmContratosxUsuario.FormShow(Sender: TObject);
var
  QryUsuariosMysql : tzReadOnlyQuery ;
begin
  
  //UtGrid:=TicdbGrid.create(grid_contratos);
  //utgrid2:=Ticdbgrid.create(grid_contratosxusuario);
  QryUsuariosMysql := tzReadOnlyQuery.Create(Self) ;
  QryUsuariosMysql.Connection := Connection.zConnection ;

  Contratos.Active := False ;
  Contratos.Open ;

  ContratosxUsuario.Active := False ;
  ContratosxUsuario.Params.ParamByName('Usuario').DataType := ftString ;
  ContratosxUsuario.Params.ParamByName('Usuario').Value := '' ;
  ContratosxUsuario.Open ;

  QryUsuariosMysql.Active := False ;
  QryUSuariosMysql.SQL.Clear ;
  QryUsuariosMysql.SQL.Add('select distinct sIdUsuario from usuarios Order by sIdUsuario ') ;
  QryUsuariosMysql.Open ;
  with TreeUsuarios.Items do
  begin
    Clear;
    MyTreeNode2 := Add(nil, 'IP Server : ' + global_ipServer );
    While NOT QryUsuariosMysql.Eof Do
    Begin
         AddChild(MyTreeNode2,QryUsuariosMysql.FieldValues['sIdUsuario']);
         QryUsuariosMysql.Next
     End
  End ;
  QryUsuariosMysql.Destroy ;
  TreeUsuarios.SetFocus ;

end;

procedure TfrmContratosxUsuario.grid_contratosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmContratosxUsuario.grid_contratosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmContratosxUsuario.grid_contratosTitleClick(Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmContratosxUsuario.Grid_ContratosxUsuarioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmContratosxUsuario.Grid_ContratosxUsuarioMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmContratosxUsuario.Grid_ContratosxUsuarioTitleClick(
  Column: TColumn);
begin
 //UtGrid2.DbGridTitleClick(Column);
end;

//soad -> Moficacion para asignar todos los contratos a la vez, asi como validaciones para ver que ya existe el contrato...
//*******************************************************************************************************************
procedure TfrmContratosxUsuario.btnAsignaClick(Sender: TObject);
begin
    If TreeUsuarios.Selected.Text <> '' Then
        If Contratos.RecordCount > 0 Then
        Begin
            if chkTodos.Checked = True then
            begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'Delete from contratosxusuario where sIdUsuario = :Usuario') ;
                connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Usuario').Value := ContratosxUsuario.FieldValues['sIdUsuario']  ;
                connection.zCommand.ExecSQL ;
                ContratosxUsuario.Active := False ;
                ContratosxUsuario.Open ;
                while not contratos.Eof do
                begin
                    Try
                      ContratosxUsuario.Append ;
                      ContratosxUsuario.FieldValues ['sIdUsuario'] := TreeUsuarios.Selected.Text ;
                      ContratosxUsuario.FieldValues ['sContrato'] := Contratos.FieldValues ['sContrato'] ;
                      ContratosxUsuario.Post ;
                      Contratos.Next ;
                    Except
                       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Contratos a Usuarios', 'Al editar registro', 0);
                        ContratosxUsuario.Cancel ;
                       end;
                       // MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
                    End
                end;
           end
           else
           begin
               connection.zCommand.Active := False ;
               connection.zCommand.SQL.Clear ;
               connection.zCommand.SQL.Add ( 'select * from contratosxusuario where sIdUsuario = :Usuario And ' +
                                             'sContrato = :Contrato') ;
               connection.zCommand.Params.ParamByName('Usuario').DataType  := ftString ;
               connection.zCommand.Params.ParamByName('Usuario').Value     := TreeUsuarios.Selected.Text  ;
               connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
               connection.zCommand.Params.ParamByName('Contrato').Value    := Contratos.FieldValues['sContrato']  ;
               connection.zCommand.Open ;
               if connection.zCommand.RecordCount > 0 then
                  messageDLG('¡ Ya se asigno el contrato '+ContratosxUsuario.FieldValues['sContrato']+ ' al Usuario '+ContratosxUsuario.FieldValues['sIdUsuario'] +' !', mtInformation, [mbOk], 0)
               else
               begin
                   Try
                     ContratosxUsuario.Append ;
                     ContratosxUsuario.FieldValues ['sIdUsuario'] := TreeUsuarios.Selected.Text ;
                     ContratosxUsuario.FieldValues ['sContrato']  := Contratos.FieldValues ['sContrato'] ;
                     ContratosxUsuario.Post ;
                     Contratos.Next ;
                   Except
                     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Contratos a Usuarios', 'Al editar registro', 0);
                     ContratosxUsuario.Cancel ;
                     end;
                     //MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
                   End
               end;
           end;
        End
end;

//soad -> Moficacion para denegar todos los contratos a la vez... o uno por uno..
//*******************************************************************************************************************
procedure TfrmContratosxUsuario.btnDenegarClick(Sender: TObject);
begin
    If ContratosxUsuario.RecordCount > 0 Then
    Begin
        if chkTodos.Checked = True then
        begin
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'Delete from contratosxusuario where sIdUsuario = :Usuario') ;
             connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Usuario').Value := ContratosxUsuario.FieldValues['sIdUsuario']  ;
             connection.zCommand.ExecSQL ;
             ContratosxUsuario.Active := False ;
             ContratosxUsuario.Open ;
        end
        else
        begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Delete from contratosxusuario where sIdUsuario = :Usuario And ' +
                                          'sContrato = :Contrato') ;
            connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Usuario').Value := ContratosxUsuario.FieldValues['sIdUsuario']  ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := ContratosxUsuario.FieldValues['sContrato']  ;
            connection.zCommand.ExecSQL ;
            ContratosxUsuario.Active := False ;
            ContratosxUsuario.Open ;
            Grid_ContratosxUsuario.SetFocus
        end;
    End
end;

procedure TfrmContratosxUsuario.TreeUsuariosClick(Sender: TObject);

begin
   If TreeUsuarios.Selected.Text <> '' Then
   Begin
//      QryUsuariosMysql := tzReadOnlyQuery.Create(Self) ;
//      QryUsuariosMysql.Connection := Connection.zConnection ;

//      QryUsuariosMysql.Active := False ;
//      QryUSuariosMysql.SQL.Clear ;
//      QryUsuariosMysql.SQL.Add('select sIdUsuario from usuarios where sIdUsuario = :user') ;
//      QryUsuariosMysql.Params.ParamByName('user').DataType := ftString ;
//      QryUsuariosMysql.Params.ParamByName('user').Value := TreeUsuarios.Selected.Text ;
//      QryUsuariosMysql.Open ;
//      If QryUsuariosMysql.RecordCount > 0 Then
//      Begin
            grUsuarios.Caption := 'Usuario : ' + TreeUsuarios.Selected.Text  ;
            ContratosxUsuario.Params.ParamByName('usuario').DataType := ftString ;
            ContratosxUsuario.Params.ParamByName('usuario').Value := TreeUsuarios.Selected.Text ;
            ContratosxUsuario.Open ;
            ContratosxUsuario.Refresh ;
//    End  ;

   End
end;

End.
