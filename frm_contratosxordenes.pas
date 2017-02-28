unit frm_contratosxordenes;

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
  TfrmOrdenesxUsuario = class(TForm)
    ds_Contratos: TDataSource;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    ds_OrdenesxUsuario: TDataSource;
    grContratos: TGroupBox;
    grUsuarios: TGroupBox;
    TreeUsuarios: TTreeView;
    Ordenes: TZReadOnlyQuery;
    OrdenesxUsuario: TZQuery;
    grDerechos: TGroupBox;
    chEscritura: TCheckBox;
    chkTodos: TCheckBox;
    grid_contratosDBTableView1: TcxGridDBTableView;
    grid_contratosLevel1: TcxGridLevel;
    grid_contratos: TcxGrid;
    Grid__colcontratos: TcxGridDBColumn;
    Grid__colFrente: TcxGridDBColumn;
    grid_usuariosxOrdenesDBTableView1: TcxGridDBTableView;
    grid_usuariosxOrdenesLevel1: TcxGridLevel;
    grid_usuariosxOrdenes: TcxGrid;
    Grid__ColContrato: TcxGridDBColumn;
    Grid__colfrente1: TcxGridDBColumn;
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
  frmOrdenesxUsuario: TfrmOrdenesxUsuario;
  MyTreeNode2: TTreeNode;
  //utgrid:ticdbgrid;
implementation

{$R *.dfm}


procedure TfrmOrdenesxUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  OrdenesxUsuario.Cancel ;
  action := cafree ;
  //utgrid.Destroy;
end;

procedure TfrmOrdenesxUsuario.FormShow(Sender: TObject);
var
  QryUsuariosMysql : tzReadOnlyQuery ;
begin
 try
  //UtGrid:=TicdbGrid.create(grid_contratos);
  QryUsuariosMysql := tzReadOnlyQuery.Create(Self) ;
  QryUsuariosMysql.Connection := Connection.zConnection ;

  Ordenes.Active := False ;
  Ordenes.Open ;

  ordenesxUsuario.Active := False ;
  OrdenesxUsuario.Params.ParamByName('Usuario').DataType := ftString ;
  OrdenesxUsuario.Params.ParamByName('Usuario').Value := '' ;
  OrdenesxUsuario.Open ;

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

procedure TfrmOrdenesxUsuario.btnAsignaClick(Sender: TObject);
begin
    chescritura.Checked:=true;
    if pos('IP Server :', TreeUsuarios.Selected.Text)  > 0 then
    begin
        messageDlg('Seleccione un usuario.', mtInformation, [mbOk], 0);
        exit;
    end;

    If TreeUsuarios.Selected.Text <> '' Then
       If Ordenes.RecordCount > 0 Then
       Begin
           Try
             If (chEscritura.Checked = True) Then
             Begin
                 if chkTodos.Checked = True then
                 begin
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zCommand.SQL.Add ( 'Delete from ordenesxusuario where sIdUsuario = :Usuario') ;
                     connection.zCommand.Params.ParamByName('Usuario').DataType   := ftString ;
                     connection.zCommand.Params.ParamByName('Usuario').Value      := OrdenesxUsuario.FieldValues['sIdUsuario']  ;
                     connection.zCommand.ExecSQL ;
                     OrdenesxUsuario.Active := False ;
                     OrdenesxUsuario.Open ;
                     Ordenes.First ;
                     while not ordenes.Eof do
                     begin
                          OrdenesxUsuario.Append ;
                          OrdenesxUsuario.FieldValues ['sIdUsuario']   := TreeUsuarios.Selected.Text ;
                          OrdenesxUsuario.FieldValues ['sContrato']    := Ordenes.FieldValues ['sContrato'] ;
                          OrdenesxUsuario.FieldValues ['sNumeroOrden'] := Ordenes.FieldValues ['sNumeroOrden'] ;
                          If chEscritura.Checked = True Then
                             OrdenesxUsuario.FieldValues ['sDerechos'] := 'ESCRITURA' ;
                          OrdenesxUsuario.Post ;
                          ordenes.Next;
                     end;
                 end
                 else
                 begin
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zCommand.SQL.Add ( 'select * from ordenesxusuario where sIdUsuario = :Usuario and sContrato = :Contrato And sNumeroOrden = :Frente') ;
                     connection.zCommand.Params.ParamByName('Usuario').DataType  := ftString ;
                     connection.zCommand.Params.ParamByName('Usuario').Value     := TreeUsuarios.Selected.Text  ;
                     connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('Contrato').Value    := Ordenes.FieldValues ['sContrato'] ;
                     connection.zCommand.Params.ParamByName('Frente').DataType   := ftString ;
                     connection.zCommand.Params.ParamByName('Frente').Value      := ordenes.FieldValues['sNumeroOrden']  ;
                     connection.zCommand.Open ;
                     if connection.zCommand.RecordCount > 0 then
                     begin
                          messageDLG('¡ Ya se asigno el Frente de Trabajo '+ordenesxUsuario.FieldValues['sNumeroOrden']+ ' al Usuario '+ordenesxUsuario.FieldValues['sIdUsuario'] +' !', mtInformation, [mbOk], 0);
                          exit;
                     end
                     else
                     begin
                          OrdenesxUsuario.Append ;
                          OrdenesxUsuario.FieldValues ['sIdUsuario']   := TreeUsuarios.Selected.Text ;
                          OrdenesxUsuario.FieldValues ['sContrato']    := Ordenes.FieldValues ['sContrato'] ;
                          OrdenesxUsuario.FieldValues ['sNumeroOrden'] := Ordenes.FieldValues ['sNumeroOrden'] ;
                          If chEscritura.Checked = True Then
                             OrdenesxUsuario.FieldValues ['sDerechos'] := 'ESCRITURA' ;
                          OrdenesxUsuario.Post ;
                          Ordenes.Next ;
                     end;
                 end;
             end
          Else
              MessageDlg('Falta Elegir algun Permiso', mtInformation, [mbOk], 0);
          Except
              OrdenesxUsuario.Cancel ;
              MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
          End
       End;

   chEscritura.Checked  := False ;
   chEscritura.Enabled  := True ;

end;

procedure TfrmOrdenesxUsuario.btnDenegarClick(Sender: TObject);
begin
    If OrdenesxUsuario.RecordCount > 0 Then
    Begin
        if chkTodos.Checked = True then
        begin
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'Delete from ordenesxusuario where sIdUsuario = :Usuario') ;
             connection.zCommand.Params.ParamByName('Usuario').DataType   := ftString ;
             connection.zCommand.Params.ParamByName('Usuario').Value      := ordenesxUsuario.FieldValues['sIdUsuario']  ;
             connection.zCommand.ExecSQL ;
             ordenesxUsuario.Active := False ;
             ordenesxUsuario.Open ;
        end
        else
        begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'Delete from ordenesxusuario where sContrato = :Contrato And sIdUsuario = :Usuario And ' +
                                        'sNumeroOrden = :Orden') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType  := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value     := OrdenesxUsuario.FieldValues ['sContrato']  ;
          connection.zCommand.Params.ParamByName('Usuario').DataType   := ftString ;
          connection.zCommand.Params.ParamByName('Usuario').Value      := OrdenesxUsuario.FieldValues['sIdUsuario']  ;
          connection.zCommand.Params.ParamByName('Orden').DataType     := ftString ;
          connection.zCommand.Params.ParamByName('Orden').Value        := OrdenesxUsuario.FieldValues['sNumeroOrden']  ;
          connection.zCommand.ExecSQL ;
          OrdenesxUsuario.Active := False ;
          OrdenesxUsuario.Open ;
          Grid_UsuariosxOrdenes.SetFocus
        end;
    End
end;

procedure TfrmOrdenesxUsuario.TreeUsuariosClick(Sender: TObject);

begin
   If TreeUsuarios.Selected.Text <> '' Then
   Begin
            grUsuarios.Caption := 'Usuario : ' + TreeUsuarios.Selected.Text  ;
            OrdenesxUsuario.Active := False ;
            OrdenesxUsuario.Params.ParamByName('usuario').DataType  := ftString ;
            OrdenesxUsuario.Params.ParamByName('usuario').Value     := TreeUsuarios.Selected.Text ;
            OrdenesxUsuario.Open ;
            if OrdenesxUsuario.RecordCount > 0 Then
                OrdenesxUsuario.Refresh
            else
              if Pos('IP Server :',TreeUsuarios.Selected.Text)=0 then
                messagedlg('¡ No Tiene  Frente de Trabajo Asignados ' + ' el Usuario ' + TreeUsuarios.Selected.Text  +' !', mtInformation, [mbOk], 0);

   End
end;


End.
