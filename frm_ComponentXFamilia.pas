unit frm_ComponentXFamilia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop;

type
  TfrmComponentXFamilia = class(TForm)
   grid_Subfamilia: TDBGrid;
    Label2: TLabel;
    Label9: TLabel;
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
    N3: TMenuItem;
    Salir1: TMenuItem;
    qryComponentesXFamilia: TZQuery;
    ds_ComponentesXFamilia: TDataSource;
    cbFamilia: TDBLookupComboBox;
    qryFamilia: TZQuery;
    ds_Familia: TDataSource;
    qryFamiliaiIdFamilia: TIntegerField;
    qryFamiliasFamilia: TStringField;
    qryComponentesXFamiliaiIdFamxcomp: TIntegerField;
    qryComponentesXFamiliaiIdComponente: TIntegerField;
    qryComponentesXFamiliaiIdFamilia: TIntegerField;
    cb_componente: TDBLookupComboBox;
    zqComponente: TZQuery;
    dsComponente: TDataSource;
    zqComponenteiIdComponente: TIntegerField;
    zqComponentesComponente: TStringField;
    qryComponentesXFamiliasFamilia: TStringField;
    qryComponentesXFamiliasComponente: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_SubfamiliaCellClick(Column: TColumn);
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
    procedure grid_SubfamiliaEnter(Sender: TObject);
    procedure grid_SubfamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_SubfamiliaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_SubfamiliaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_SubfamiliaMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_SubfamiliaTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure cbFamiliaEnter(Sender: TObject);
    procedure cbFamiliaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComponentXFamilia : TfrmComponentXFamilia;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles;
{$R *.dfm}

procedure TfrmComponentXFamilia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
  end;

procedure TfrmComponentXFamilia.FormShow(Sender: TObject);
begin
  cbFamilia.Enabled:=false;
  cb_componente.Enabled:=false;
  qryFamilia.active := False;
  qryFamilia.open;
  zqComponente.Open;
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qryComponentesXFamilia.Active := False ;
   qryComponentesXFamilia.Open ;

   grid_Subfamilia.SetFocus;
   UtGrid:=TicdbGrid.create(grid_Subfamilia);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

//   try
//      if frmConsumibles.Active then
//         frmBarra1.btnAdd.Click;
//   Except
//   end;
end;
procedure TfrmComponentXFamilia.grid_SubfamiliaCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmComponentXFamilia.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    cb_componente.SetFocus ;
end;

procedure TfrmComponentXFamilia.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   cbFamilia.Enabled:=true;
   cb_componente.Enabled:=true;
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   qryComponentesXFamilia.Last;
   qryComponentesXFamilia.Append ;
   qryComponentesXFamilia.FieldValues['iIdComponente']    := '' ;
//   qryComponentesXFamilia.FieldValues['iIdFamilia']    := '' ;
   //tsIdGrupo.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_Subfamilia.Enabled := False;

end;

procedure TfrmComponentXFamilia.frmBarra1btnEditClick(Sender: TObject);
begin
    If qryComponentesXFamilia.RecordCount > 0 Then
    Begin
        try
       frmBarra1.btnEditClick(Sender);
       cbFamilia.Enabled:=true;
       cb_componente.Enabled:=true;
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       sOpcion := 'Edit';
       sOldId := qryComponentesXFamilia.FieldValues['iIdFamilia'];
       qryComponentesXFamilia.Edit ;
       grid_Subfamilia.Enabled := False;
      // tsIdGrupo.SetFocus;
               except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Especificacion de Componentes', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmComponentXFamilia.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  IdGrupo  : string;
begin




    {Validaciones de campos}
//    nombres:=TStringList.Create;
//    cadenas:=TStringList.Create;
//    nombres.Add('Descripcion');
//    cadenas.Add(tsDescripcion.Text);
//
//    if not validaTexto(nombres, cadenas, '',tsDescripcion.Text) then
//    begin
//       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
//       exit;
//    end;
     qryComponentesXFamilia.FieldValues['iIdFamilia']:=qryFamilia.Fieldbyname('iIdFamilia').AsInteger;
     qryComponentesXFamilia.FieldValues['iIdComponente']:=zqComponente.Fieldbyname('iIdComponente').AsInteger;

       qryComponentesXFamilia.Post ;

       Insertar1.Enabled  := True ;
       Editar1.Enabled    := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled       := False ;
       Eliminar1.Enabled  := True ;
       Refresh1.Enabled   := True ;
       Salir1.Enabled     := True ;
       grid_Subfamilia.Enabled := True;


       frmBarra1.btnPostClick(Sender);
       desactivapop(popupprincipal);
       if qryComponentesXFamilia.state=dsEdit then
       begin
        cbFamilia.Enabled:=false;
        cb_componente.Enabled:=false;
       end;
end;

procedure TfrmComponentXFamilia.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   cbFamilia.Enabled:=false;
   cb_componente.Enabled:=false;
   qryComponentesXFamilia.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_Subfamilia.Enabled := True;
   sOpcion := '';
end;

procedure TfrmComponentXFamilia.frmBarra1btnDeleteClick(Sender: TObject);
begin

    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     try

            qryComponentesXFamilia.Delete;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Especificacion de Componentes', 'Al eliminar registro', 0);
         end;
      end


    end
end;

procedure TfrmComponentXFamilia.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryComponentesXFamilia.refresh ;
end;

procedure TfrmComponentXFamilia.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmComponentXFamilia.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmComponentXFamilia.cbFamiliaEnter(Sender: TObject);
begin
cbFamilia.Color := global_color_entrada
end;

procedure TfrmComponentXFamilia.cbFamiliaExit(Sender: TObject);
begin
  cbFamilia.Color := global_color_salida
end;

procedure TfrmComponentXFamilia.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmComponentXFamilia.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmComponentXFamilia.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmComponentXFamilia.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmComponentXFamilia.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmComponentXFamilia.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmComponentXFamilia.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmComponentXFamilia.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmComponentXFamilia.grid_SubfamiliaEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmComponentXFamilia.grid_SubfamiliaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmComponentXFamilia.grid_SubfamiliaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmComponentXFamilia.grid_SubfamiliaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmComponentXFamilia.grid_SubfamiliaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmComponentXFamilia.grid_SubfamiliaTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmComponentXFamilia.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        cb_componente.SetFocus
end;

procedure TfrmComponentXFamilia.tsDescripcionEnter(Sender: TObject);
begin
    cb_componente.Color := global_color_entrada
end;

procedure TfrmComponentXFamilia.tsDescripcionExit(Sender: TObject);
begin
    cb_componente.Color := global_color_salida
end;

end.
