unit frm_almacenesporcontrato;

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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfrmAlmacenesPorContrato = class(TForm)
    ds_Almacenes: TDataSource;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    ds_AlmacenesPorContrato: TDataSource;
    grAlmacenes: TGroupBox;
    grContratos: TGroupBox;
    TreeContratos: TTreeView;
    Almacenes: TZReadOnlyQuery;
    AlmacenesPorContrato: TZQuery;
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
    AlmacenesPorContratosContrato: TStringField;
    AlmacenesPorContratoalmacen: TStringField;
    AlmacenesPorContratosIdAlmacen: TStringField;
    grid_almacenesDBTableView1: TcxGridDBTableView;
    grid_almacenesLevel1: TcxGridLevel;
    grid_almacenes: TcxGrid;
    Grid_ColAlmacen: TcxGridDBColumn;
    grid_almacenesxcontratoDBTableView1: TcxGridDBTableView;
    grid_almacenesxcontratoLevel1: TcxGridLevel;
    grid_almacenesxcontrato: TcxGrid;
    Grid_ColAlmacen1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure TreeContratosClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlmacenesPorContrato: TfrmAlmacenesPorContrato;
  MyTreeNode2: TTreeNode;
  utgrid:ticdbgrid;
  Contrato : string;
implementation

{$R *.dfm}


procedure TfrmAlmacenesPorContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AlmacenesPorContrato.Cancel ;
  action := cafree ;
 // utgrid.Destroy;
end;

procedure TfrmAlmacenesPorContrato.FormShow(Sender: TObject);
var
  QryUsuariosMysql : tzReadOnlyQuery ;
begin
 try
  //UtGrid:=TicdbGrid.create(grid_almacenes);
  QryUsuariosMysql := tzReadOnlyQuery.Create(Self) ;
  QryUsuariosMysql.Connection := Connection.zConnection ;

  Almacenes.Active := False;
  Almacenes.Open;

  AlmacenesPorContrato.Active := False;
  AlmacenesPorContrato.Params.ParamByName('Contrato').AsString := global_contrato;
  AlmacenesPorContrato.Open;

  QryUsuariosMysql.Active := False ;
  QryUSuariosMysql.SQL.Clear ;
  QryUsuariosMysql.SQL.Add('select distinct sContrato from contratos Order by sContrato ') ;
  QryUsuariosMysql.Open ;
  with TreeContratos.Items do
  begin
    Clear;
    MyTreeNode2 := Add(nil, 'IP Server : ' + global_ipServer );
    While NOT QryUsuariosMysql.Eof Do
    Begin
         AddChild(MyTreeNode2,QryUsuariosMysql.FieldValues['sContrato']);
         QryUsuariosMysql.Next
     End
  End ;
  grContratos.Caption := 'Contrato : ' + global_contrato;
  QryUsuariosMysql.Destroy ;
  TreeContratos.SetFocus ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Almacenes a Contratos', 'Al iniciar el formulario', 0);
  end;
 end;

end;

procedure TfrmAlmacenesPorContrato.btnAsignaClick(Sender: TObject);
begin
 
    If POS('IP Server',TreeContratos.Selected.Text) = 0 Then
    begin //si no encuentra la palabra IP Server quiere decir que le dio click en el Tree
        Contrato := TreeContratos.Selected.Text;
    end else
    begin //si encuentra la palabra IP Server quiere decir que no le dio click en el Tree
        Contrato := global_contrato;
    end;
       If Almacenes.RecordCount > 0 Then
       Begin
           Try
             if chkTodos.Checked = True then begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zCommand.SQL.Add ('Delete from almacenesxcontratos where sContrato = :Contrato') ;
                 connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString ;
                 connection.zCommand.Params.ParamByName('Contrato').Value      := AlmacenesPorContrato.FieldValues['sContrato']  ;
                 connection.zCommand.ExecSQL ;
                 AlmacenesPorContrato.Active := False ;
                 AlmacenesPorContrato.Open ;
                 Almacenes.First ;
                 while not Almacenes.Eof do
                 begin
                  Try
                      AlmacenesPorContrato.Append ;
                      AlmacenesPorContrato.FieldValues ['sIdAlmacen']   := Almacenes.FieldByName('sIdAlmacen').AsString;
                      AlmacenesPorContrato.FieldValues ['sContrato']   := Contrato ;
                      AlmacenesPorContrato.Post ;
                      Almacenes.Next;
                  Except
                    On E: Exception do begin
                      ShowMessage(E.Message);
                    end;
                  End;
                 end;
             end
             else
             begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zCommand.SQL.Add ( 'select * from almacenesxcontratos where sContrato = :Contrato AND sIdAlmacen = :Almacen') ;
                 connection.zCommand.Params.ParamByName('Contrato').DataType  := ftString ;
                 connection.zCommand.Params.ParamByName('Contrato').Value     := Contrato  ;
                 connection.zCommand.Params.ParamByName('Almacen').DataType   := ftString ;
                 connection.zCommand.Params.ParamByName('Almacen').Value      := Almacenes.FieldValues['sIdAlmacen']  ;
                 connection.zCommand.Open ;
                 if connection.zCommand.RecordCount > 0 then
                 begin
                      messageDLG('¡ Ya se asigno el Almacen '+AlmacenesPorContrato.FieldValues['sIdAlmacen']+ ' al Contrato '+AlmacenesPorContrato.FieldValues['sContrato'] +' !', mtInformation, [mbOk], 0);
                      exit;
                 end
                 else
                 begin
                      AlmacenesPorContrato.Append ;
                      AlmacenesPorContrato.FieldValues ['sContrato']   := Contrato ;
                      AlmacenesPorContrato.FieldValues ['sIdAlmacen'] := Almacenes.FieldValues ['sIdAlmacen'] ;
                      AlmacenesPorContrato.Post ;
                 end;
             end;
          Except
              AlmacenesPorContrato.Cancel ;
              MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
          End
       End;
end;

procedure TfrmAlmacenesPorContrato.btnDenegarClick(Sender: TObject);
begin
    If AlmacenesPorContrato.RecordCount > 0 Then
    Begin
        if chkTodos.Checked = True then
        begin
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'Delete from almacenesxcontratos where sContrato = :Contrato') ;
             connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString ;
             connection.zCommand.Params.ParamByName('Contrato').Value      := AlmacenesPorContrato.FieldValues['sContrato']  ;
             connection.zCommand.ExecSQL ;
             AlmacenesPorContrato.Active := False ;
             AlmacenesPorContrato.Open ;
        end
        else
        begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'Delete from almacenesxcontratos where sIdAlmacen = :Almacen And sContrato = :Contrato ') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value      := AlmacenesPorContrato.FieldValues['sContrato']  ;
          connection.zCommand.Params.ParamByName('Almacen').DataType     := ftString ;
          connection.zCommand.Params.ParamByName('Almacen').Value        := AlmacenesPorContrato.FieldValues['sIdAlmacen']  ;
          connection.zCommand.ExecSQL ;
          AlmacenesPorContrato.Active := False ;
          AlmacenesPorContrato.Open ;
          Grid_AlmacenesxContrato.SetFocus
        end;
    End
end;

procedure TfrmAlmacenesPorContrato.TreeContratosClick(Sender: TObject);

begin
   If TreeContratos.Selected.Text <> '' Then
   Begin
            grContratos.Caption := 'Contrato : ' + TreeContratos.Selected.Text  ;
            AlmacenesPorContrato.Active := False ;
            AlmacenesPorContrato.Params.ParamByName('Contrato').DataType  := ftString ;
            AlmacenesPorContrato.Params.ParamByName('Contrato').Value     := TreeContratos.Selected.Text ;
            AlmacenesPorContrato.Open ;
            if AlmacenesPorContrato.RecordCount > 0 Then
                AlmacenesPorContrato.Refresh
            else
              if Pos('IP Server :',TreeContratos.Selected.Text)=0 then
                messagedlg('¡ No Tiene  Almacenes Asignados ' + ' el Contrato ' + TreeContratos.Selected.Text  +' !', mtInformation, [mbOk], 0);

   End
end;


End.
