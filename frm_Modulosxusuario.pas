unit frm_Modulosxusuario;

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
  TfrmModulosxUsuario = class(TForm)
    ds_Modulos: TDataSource;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    ds_ModulosxUsuario: TDataSource;
    grContratos: TGroupBox;
    grUsuarios: TGroupBox;
    TreeUsuarios: TTreeView;
    qrymodulos: TZReadOnlyQuery;
    qryModulosxUsuario: TZQuery;
    chkTodos: TCheckBox;
    dbg_modulosDBTableView1: TcxGridDBTableView;
    dbg_modulosLevel1: TcxGridLevel;
    grid_modulos: TcxGrid;
    Grid__colcontrato: TcxGridDBColumn;
    dbg_ModulosXUsuarioDBTableView1: TcxGridDBTableView;
    dbg_ModulosXUsuarioLevel1: TcxGridLevel;
    grid_ModulosXUsuario: TcxGrid;
    Grid__ColModulo: TcxGridDBColumn;
    qryUnion: TZQuery;
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
  frmModulosxUsuario: TfrmModulosxUsuario;
  MyTreeNode2: TTreeNode;
  //utgrid:ticdbgrid;
  //utgrid2:ticdbgrid;

implementation

{$R *.dfm}


procedure TfrmModulosxUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   qrymodulosxUsuario.Close ;
   qrymodulos.Close ;
   qryUnion.Close ;
   action := cafree ;
end;

procedure TfrmModulosxUsuario.FormShow(Sender: TObject);
var
  QryUsuariosMysql : tzReadOnlyQuery ;
begin

   QryUsuariosMysql := tzReadOnlyQuery.Create(Self) ;
   QryUsuariosMysql.Connection := Connection.zConnection ;

   qrymodulos.Active := False ;
   qrymodulos.Open ;

   qryUnion.Active := False ;
   qryUnion.Params.ParamByName('Usuario').DataType := ftString ;
   qryUnion.Params.ParamByName('Usuario').Value    := '' ;
   qryUnion.Params.ParamByName('Contrato').Value   := global_contrato ;
   qryUnion.Open ;

   qrymodulosxUsuario.Active := False ;
   qryModulosxUsuario.Open ;

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

//soad -> Moficacion para asignar todos los contratos a la vez, asi como validaciones para ver que ya existe el contrato...
//*******************************************************************************************************************
procedure TfrmModulosxUsuario.btnAsignaClick(Sender: TObject);
begin
    If TreeUsuarios.Selected.Text <> '' Then
        If qrymodulos.RecordCount > 0 Then
        Begin
            if chkTodos.Checked = True then
            begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'Delete from modulosxusuario where sIdUsuario = :Usuario ' +
                                              'and sContrato = :Contrato') ;
                connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Usuario').Value    := TreeUsuarios.Selected.Text ;
                connection.zCommand.Params.ParamByName('Contrato').Value   := Global_Contrato  ;
                connection.zCommand.ExecSQL ;
                qrymodulosxUsuario.Active := False ;
                qrymodulosxUsuario.Open ;
                while not qrymodulos.Eof do
                begin
                    Try
                      qrymodulosxUsuario.Append ;
                      qrymodulosxUsuario.FieldValues ['sIdUsuario'] := TreeUsuarios.Selected.Text ;
                      qrymodulosxUsuario.FieldValues ['iIdModulo']  := qrymodulos.FieldByName('idModulo').AsInteger ;
                      qrymodulosxUsuario.FieldValues ['sContrato']  := global_contrato ;
                      qrymodulosxUsuario.Post ;
                      qrymodulos.Next ;
                    Except
                       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Contratos a Usuarios', 'Al editar registro', 0);
                        qryModulosxUsuario.Cancel ;
                       end;
                       // MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
                    End
                end;
           end
           else
           begin
               connection.zCommand.Active := False ;
               connection.zCommand.SQL.Clear ;
               connection.zCommand.SQL.Add ( 'select * from modulosxusuario where sIdUsuario = :Usuario And iIdModulo  =:Modulo And ' +
                                             'sContrato = :Contrato') ;
               connection.zCommand.Params.ParamByName('Usuario').Value   := TreeUsuarios.Selected.Text  ;
               connection.zCommand.Params.ParamByName('Modulo').Value    := qrymodulos.FieldByName('idModulo').AsInteger ;
               connection.zCommand.Params.ParamByName('Contrato').Value  := Global_Contrato  ;
               connection.zCommand.Open ;
               if connection.zCommand.RecordCount > 0 then
                  messageDLG('¡ Ya se asigno el Modulo '+ qryModulos.FieldValues['sDescripcion']+ ' al Usuario '+ qryModulosxUsuario.FieldValues['sIdUsuario'] +' !', mtInformation, [mbOk], 0)
               else
               begin
                   Try
                     qryModulosxUsuario.Append ;
                     qryModulosxUsuario.FieldValues ['sIdUsuario'] := TreeUsuarios.Selected.Text ;
                     qrymodulosxUsuario.FieldValues ['iIdModulo']  := qrymodulos.FieldValues ['idModulo'];
                     qryModulosxUsuario.FieldValues ['sContrato']  := Global_Contrato      ;
                     qryModulosxUsuario.Post ;
                     qrymodulos.Next ;

                   Except
                     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Modulos a Usuarios', 'Al editar registro', 0);
                     qryModulosxUsuario.Cancel ;
                     end;
                     //MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
                   End
               end;
           end;
        End  ;

          qryUnion.Active := False ;
          qryUnion.Params.ParamByName('Usuario').DataType := ftString ;
          qryUnion.Params.ParamByName('Usuario').Value    := TreeUsuarios.Selected.Text  ;
          qryUnion.Params.ParamByName('Contrato').Value   := global_contrato ;
          qryUnion.Open ;

end;

//soad -> Moficacion para denegar todos los contratos a la vez... o uno por uno..
//*******************************************************************************************************************
procedure TfrmModulosxUsuario.btnDenegarClick(Sender: TObject);
begin
    If qryUnion.RecordCount > 0 Then
    Begin
        if chkTodos.Checked = True then
        begin
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'Delete from modulosxusuario where sIdUsuario = :Usuario And ' +
                                          'sContrato = :Contrato') ;
             connection.zCommand.Params.ParamByName('Usuario').DataType  := ftString ;
             connection.zCommand.Params.ParamByName('Usuario').Value     := TreeUsuarios.Selected.Text  ;
             connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.zCommand.ExecSQL ;
             qryModulosxUsuario.Active := False ;
             qryModulosxUsuario.Open ;
        end
        else
        begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Delete from modulosxusuario where sIdUsuario = :Usuario And ' +
                                          'iIdModulo =:IdModulo and sContrato = :Contrato') ;
            connection.zCommand.Params.ParamByName('Usuario').DataType   := ftString ;
            connection.zCommand.Params.ParamByName('Usuario').Value      := TreeUsuarios.Selected.Text  ;
            connection.zCommand.Params.ParamByName('IdModulo').DataType  := ftInteger ;
            connection.zCommand.Params.ParamByName('IdModulo').Value     := qryUnion.FieldValues['iIdModulo']  ;
            connection.zCommand.Params.ParamByName('Contrato').DataType  := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value     := global_contrato ;
            connection.zCommand.ExecSQL ;

            grid_ModulosXUsuario.SetFocus
        end;

           //Actualizo el Grid
           qryUnion.Active := False ;
           qryUnion.Params.ParamByName('Usuario').DataType := ftString ;
           qryUnion.Params.ParamByName('Usuario').Value    := TreeUsuarios.Selected.Text  ;
           qryUnion.Params.ParamByName('Contrato').Value   := global_contrato ;
           qryUnion.Open ;
    End
end;

procedure TfrmModulosxUsuario.TreeUsuariosClick(Sender: TObject);

begin
   If TreeUsuarios.Selected.Text <> '' Then
   Begin
      grUsuarios.Caption := 'Usuario : ' + TreeUsuarios.Selected.Text  ;
      qryUnion.Active := False ;
      qryUnion.Params.ParamByName('Usuario').DataType := ftString ;
      qryUnion.Params.ParamByName('Usuario').Value    := TreeUsuarios.Selected.Text  ;
      qryUnion.Params.ParamByName('Contrato').Value   := global_contrato ;
      qryUnion.Open ;
   End
end;

End.
