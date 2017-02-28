unit frm_almacenesporusuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,
  DBGrids, ComCtrls, global, DB, Menus, frxClass, frxDBSet,
  RXDBCtrl, ImgList, Buttons, ZAbstractDataset, ZDataset,
  ZAbstractRODataset, ZConnection, udbgrid, unitexcepciones, cxGraphics,
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
  cxGrid;

type
  TfrmAlmacenesPorUsuario = class(TForm)
    ds_Almacenes: TDataSource;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    ds_AlmacenesPorUsuario: TDataSource;
    grContratos: TGroupBox;
    grUsuarios: TGroupBox;
    TreeUsuarios: TTreeView;
    Almacenes: TZReadOnlyQuery;
    AlmacenesPorUsuario: TZQuery;
    grDerechos: TGroupBox;
    chEscritura: TCheckBox;
    chkTodos: TCheckBox;
    AlmacenessIdAlmacen: TStringField;
    AlmacenessCiudad: TStringField;
    AlmacenessCp: TStringField;
    AlmacenessTelefono: TStringField;
    AlmacenessDescripcion: TStringField;
    AlmacenessDireccion: TStringField;
    AlmacenessFax: TStringField;
    AlmacenessComentarios: TStringField;
    AlmacenessContrato: TStringField;
    AlmacenesPorUsuarioiId: TIntegerField;
    AlmacenesPorUsuariosIdUsuario: TStringField;
    AlmacenesPorUsuariosIdAlmacen: TStringField;
    AlmacenesPorUsuariosNombreAlmacen: TStringField;
    grid_almacenesDBTableView1: TcxGridDBTableView;
    grid_almacenesLevel1: TcxGridLevel;
    grid_almacenes: TcxGrid;
    Grid__colalmacen: TcxGridDBColumn;
    grid_UsuariosXOrdenesDBTableView1: TcxGridDBTableView;
    grid_UsuariosXOrdenesLevel1: TcxGridLevel;
    grid_UsuariosXOrdenes: TcxGrid;
    grid_UsuariosXOrdenesDBTableView1Column1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure TreeUsuariosClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlmacenesPorUsuario: TfrmAlmacenesPorUsuario;
  MyTreeNode2: TTreeNode;
  utgrid:ticdbgrid;
implementation

{$R *.dfm}


procedure TfrmAlmacenesPorUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AlmacenesPorUsuario.Cancel ;
  action := cafree ;
//  utgrid.Destroy;
end;

procedure TfrmAlmacenesPorUsuario.FormShow(Sender: TObject);
var
  QryUsuariosMysql : tzReadOnlyQuery ;
begin
 try
 // UtGrid:=TicdbGrid.create(grid_almacenes);
  QryUsuariosMysql := tzReadOnlyQuery.Create(Self) ;
  QryUsuariosMysql.Connection := Connection.zConnection ;

  Almacenes.Active := False;
  Almacenes.Open;

  AlmacenesPorUsuario.Active := False;
  AlmacenesPorUsuario.Params.ParamByName('Usuario').AsString := '';
  AlmacenesPorUsuario.Open;

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
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de frentes de trabajo a usuarios', 'Al iniciar el formulario', 0);
  end;
 end;

end;

procedure TfrmAlmacenesPorUsuario.btnAsignaClick(Sender: TObject);
begin
    chescritura.Checked:=true;
    If TreeUsuarios.Selected.Text <> '' Then
       If Almacenes.RecordCount > 0 Then
       Begin
           Try
             if chkTodos.Checked = True then begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zCommand.SQL.Add ( 'Delete from almacenesporusuario where sIdUsuario = :Usuario') ;
                 connection.zCommand.Params.ParamByName('Usuario').DataType   := ftString ;
                 connection.zCommand.Params.ParamByName('Usuario').Value      := AlmacenesPorUsuario.FieldValues['sIdUsuario']  ;
                 connection.zCommand.ExecSQL ;
                 AlmacenesPorUsuario.Active := False ;
                 AlmacenesPorUsuario.Open ;
                 Almacenes.First ;
                 while not Almacenes.Eof do
                 begin
                      AlmacenesPorUsuario.Append ;
                      AlmacenesPorUsuario.FieldValues ['iId']   := 0;
                      AlmacenesPorUsuario.FieldValues ['sIdAlmacen']   := Almacenes.FieldByName('sIdAlmacen').AsString;
                      AlmacenesPorUsuario.FieldValues ['sIdUsuario']   := TreeUsuarios.Selected.Text ;
                      AlmacenesPorUsuario.Post ;
                      Almacenes.Next;
                 end;
             end
             else
             begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zCommand.SQL.Add ( 'select * from almacenesporusuario where sIdUsuario = :Usuario AND sIdAlmacen = :Almacen') ;
                 connection.zCommand.Params.ParamByName('Usuario').DataType  := ftString ;
                 connection.zCommand.Params.ParamByName('Usuario').Value     := TreeUsuarios.Selected.Text  ;
                 connection.zCommand.Params.ParamByName('Almacen').DataType   := ftString ;
                 connection.zCommand.Params.ParamByName('Almacen').Value      := Almacenes.FieldValues['sIdAlmacen']  ;
                 connection.zCommand.Open ;
                 if connection.zCommand.RecordCount > 0 then
                 begin
                      MessageDlg('¡ Ya se asigno el Almacen '+ connection.zCommand.FieldByName('sIdAlmacen').AsString + ' al Usuario '+ connection.zCommand.FieldByName('sIdUsuario').AsString +' !' , mtInformation, [mbOk], 0);
                      exit;
                 end
                 else
                 begin
                      AlmacenesPorUsuario.Append ;
                      AlmacenesPorUsuario.FieldValues ['iId']   := 0;
                      AlmacenesPorUsuario.FieldValues ['sIdUsuario']   := TreeUsuarios.Selected.Text ;
                      AlmacenesPorUsuario.FieldValues ['sIdAlmacen'] := Almacenes.FieldValues ['sIdAlmacen'] ;
                      AlmacenesPorUsuario.Post ;
                      Almacenes.Next ;
                 end;
             end;
          Except
              AlmacenesPorUsuario.Cancel ;
              MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
          End
       End;
end;

procedure TfrmAlmacenesPorUsuario.btnDenegarClick(Sender: TObject);
begin
    If AlmacenesPorUsuario.RecordCount > 0 Then
    Begin
        if chkTodos.Checked = True then
        begin
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'Delete from almacenesporusuario where sIdUsuario = :Usuario') ;
             connection.zCommand.Params.ParamByName('Usuario').DataType   := ftString ;
             connection.zCommand.Params.ParamByName('Usuario').Value      := AlmacenesPorUsuario.FieldValues['sIdUsuario']  ;
             connection.zCommand.ExecSQL ;
             AlmacenesPorUsuario.Active := False ;
             AlmacenesPorUsuario.Open ;
        end
        else
        begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'Delete from almacenesporusuario where sIdAlmacen = :Almacen And sIdUsuario = :Usuario ') ;
          connection.zCommand.Params.ParamByName('Usuario').DataType   := ftString ;
          connection.zCommand.Params.ParamByName('Usuario').Value      := AlmacenesPorUsuario.FieldValues['sIdUsuario']  ;
          connection.zCommand.Params.ParamByName('Almacen').DataType     := ftString ;
          connection.zCommand.Params.ParamByName('Almacen').Value        := AlmacenesPorUsuario.FieldValues['sIdAlmacen']  ;
          connection.zCommand.ExecSQL ;
          AlmacenesPorUsuario.Active := False ;
          AlmacenesPorUsuario.Open ;
          Grid_UsuariosxOrdenes.SetFocus
        end;
    End
end;

procedure TfrmAlmacenesPorUsuario.TreeUsuariosClick(Sender: TObject);

begin
   If TreeUsuarios.Selected.Text <> '' Then
   Begin
            grUsuarios.Caption := 'Usuario : ' + TreeUsuarios.Selected.Text  ;
            AlmacenesPorUsuario.Active := False ;
            AlmacenesPorUsuario.Params.ParamByName('usuario').DataType  := ftString ;
            AlmacenesPorUsuario.Params.ParamByName('usuario').Value     := TreeUsuarios.Selected.Text ;
            AlmacenesPorUsuario.Open ;
            if AlmacenesPorUsuario.RecordCount > 0 Then
                AlmacenesPorUsuario.Refresh
            else
              if Pos('IP Server :',TreeUsuarios.Selected.Text)=0 then
                messagedlg('¡ No Tiene  Almacenes Asignados ' + ' el Usuario ' + TreeUsuarios.Selected.Text  +' !', mtInformation, [mbOk], 0);

   End
end;


End.
