unit frm_comentariosxanexo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  frxClass, frxDBSet, Buttons, RxLookup, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, rxToolEdit, RXDBCtrl, RxRichEd, udbgrid, unitexcepciones,
  UnitValidaTexto, unittbotonespermisos, UFunctionsGHH;

type
  TfrmComentariosxAnexo = class(TForm)
    dbComentarios: TfrxDBDataset;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    N2: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    Panel: TPanel;
    ds_ComentariosxAnexo: TDataSource;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Eliminar1: TMenuItem;
    Label1: TLabel;
    Grid_Comentarios: TRxDBGrid;
    Editar1: TMenuItem;
    Label2: TLabel;
    tmComentarios: TDBMemo;
    tmComentarios2: TDBMemo;
    Label3: TLabel;
    tsDescripcionCorta: TDBEdit;
    rptComentarios: TfrxReport;
    ComentariosxAnexo: TZQuery;
    GroupBox1: TGroupBox;
    cmdCopiar: TButton;
    dIdFecha: TDateTimePicker;
    Label4: TLabel;
    dsActividadDiaAnterior: TDataSource;
    qryActividadDiaAnterior: TZReadOnlyQuery;
    mDescripcion: TMemo;
    DBGrid1: TDBGrid;
    cmdCerrar: TBitBtn;
    Label5: TLabel;
    tdIdFecha: TDateTimePicker;
    DBDateEdit1: TDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure tsDescripcionCortaKeyPress(Sender: TObject; var Key: Char);
    procedure Imprimir1Click(Sender: TObject);
    procedure rptComentariosGetValue(const VarName: string;
      var Value: Variant);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmdCerrarClick(Sender: TObject);
    procedure dIdFechaChange(Sender: TObject);
    procedure sNumeroActividadChange(Sender: TObject);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure cmdCopiarClick(Sender: TObject);
    procedure Grid_ComentariosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ComentariosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ComentariosTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure DBDateEdit1Change(Sender: TObject);
  private
  sMenuP: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComentariosxAnexo: TfrmComentariosxAnexo;
  utgrid:ticdbgrid;
  BotonPermiso:tbotonespermisos;
implementation

{$R *.dfm}

procedure TfrmComentariosxAnexo.FormShow(Sender: TObject);
begin
sMenuP:=stMenu;

BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', PopupPrincipal);
didfecha.DateTime:=Now;
  try
    UtGrid:=TicdbGrid.create(grid_comentarios);
    qryActividadDiaAnterior.Active := False;
    qryActividadDiaAnterior.Params.ParamByName('Contrato').DataType := ftString;
    qryActividadDiaAnterior.Params.ParamByName('Contrato').Value := global_contrato;
    qryActividadDiaAnterior.Params.ParamByName('Convenio').DataType := ftString;
    qryActividadDiaAnterior.Params.ParamByName('Contrato').Value := convenio_reporte;
    qryActividadDiaAnterior.Params.ParamByName('Orden').DataType := ftString;
    qryActividadDiaAnterior.Params.ParamByName('Orden').Value := global_orden;
    qryActividadDiaAnterior.Params.ParamByName('Fecha').DataType := ftDate;
    qryActividadDiaAnterior.Params.ParamByName('Fecha').Value := dIdFecha.Date;
    qryActividadDiaAnterior.Open;
    Grid_Comentarios.SetFocus;

  except

  end;
  BotonPermiso.permisosBotones(nil);
end;

procedure TfrmComentariosxAnexo.Grid_ComentariosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmComentariosxAnexo.Grid_ComentariosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmComentariosxAnexo.Grid_ComentariosTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmComentariosxAnexo.Insertar1Click(Sender: TObject);
begin
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Eliminar1.Enabled := False;
  Panel.Visible := True;
  ComentariosxAnexo.Append;
  ComentariosxAnexo.FieldValues['sContrato'] := global_contrato;
  ComentariosxAnexo.FieldValues['dIdFecha'] := DBDateEdit1.text;
  ComentariosxAnexo.FieldValues['sNumeroActividad'] := global_partida;
  ComentariosxAnexo.FieldValues['sNumeroOrden'] := global_orden;
  ComentariosxAnexo.FieldValues['sIdTurno'] := global_turno_reporte;
  ComentariosxAnexo.FieldValues['sIdConvenio'] := convenio_reporte;
  ComentariosxAnexo.FieldValues['sIdUsuario'] := global_usuario;
  ComentariosxAnexo.FieldValues['iIdDiario'] := global_iIdDiario;
  tsDescripcionCorta.SetFocus;
  BotonPermiso.permisosBotones(nil);
end;

procedure TfrmComentariosxAnexo.btnOkClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Titulo');nombres.Add('Comentario');nombres.Add('Fecha');
  cadenas.Add(tsDescripcioncorta.Text);cadenas.Add(tmComentarios.Text);cadenas.Add(dbdateEdit1.Text);
  if not validaTexto(nombres, cadenas, '','') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos




  try
    if tsDescripcionCorta.Text = '' then
    tsDescripcionCorta.Text := '  ';
    ComentariosxAnexo.Post;
    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Eliminar1.Enabled := True;
    Panel.Visible := False;
//  except
//    on e: EDatabaseError do
//    begin
//      ShowMessage(e.Message);
//    end;
   except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comentariosxanexo', 'Al agregar comentario', 0);
   end;
  end;
  BotonPermiso.permisosBotones(nil);
end;

procedure TfrmComentariosxAnexo.cmdCerrarClick(Sender: TObject);
begin
  close
end;

procedure TfrmComentariosxAnexo.cmdCopiarClick(Sender: TObject);
begin
if length(mdescripcion.Text)>0 then
 begin
  try

    ComentariosxAnexo.Append;
    ComentariosxAnexo.FieldValues['sContrato'] := global_contrato;
    ComentariosxAnexo.FieldValues['dIdFecha'] := global_fecha;
    ComentariosxAnexo.FieldValues['sNumeroActividad'] := global_partida;
    ComentariosxAnexo.FieldValues['sNumeroOrden'] := global_orden;
    ComentariosxAnexo.FieldValues['sIdTurno'] := global_turno_reporte;
    ComentariosxAnexo.FieldValues['sIdConvenio'] := convenio_reporte;
    ComentariosxAnexo.FieldValues['sIdUsuario'] := global_usuario;
    ComentariosxAnexo.FieldValues['iIdDiario'] := global_iIdDiario;
    ComentariosxAnexo.FieldValues['sDescripcionCorta'] := global_iIdDiario;
    ComentariosxAnexo.FieldValues['mComentarios'] := mDescripcion.Text;
    ComentariosxAnexo.Post;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comentariosxanexo', 'Al copiar formulario a la actividad actual.', 0);
  end;
  end;
 end;
end;

procedure TfrmComentariosxAnexo.Cut1Click(Sender: TObject);
begin
utgrid.CopyRowsToClip;
end;

procedure TfrmComentariosxAnexo.DBDateEdit1Change(Sender: TObject);
begin
grid_comentarios.Refresh;
end;

procedure TfrmComentariosxAnexo.DBGrid1CellClick(Column: TColumn);
begin
  try
    mDescripcion.Text := qryActividadDiaAnterior.FieldValues['mComentarios'];
  except
    mDescripcion.Text := '';
  end;
end;

procedure TfrmComentariosxAnexo.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  try
    mDescripcion.Text := qryActividadDiaAnterior.FieldValues['mComentarios'];
  except
    mDescripcion.Text := '';
  end;
end;

procedure TfrmComentariosxAnexo.DBGrid1MouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  try
    mDescripcion.Text := qryActividadDiaAnterior.FieldValues['mComentarios'];
  except
    mDescripcion.Text := '';
  end;
end;

procedure TfrmComentariosxAnexo.dIdFechaChange(Sender: TObject);
begin
  try
    qryActividadDiaAnterior.Active := False;
    qryActividadDiaAnterior.Params.ParamByName('Contrato').DataType := ftString;
    qryActividadDiaAnterior.Params.ParamByName('Contrato').Value := global_contrato;
    qryActividadDiaAnterior.Params.ParamByName('Convenio').DataType := ftString;
    qryActividadDiaAnterior.Params.ParamByName('Convenio').Value := convenio_reporte;
    qryActividadDiaAnterior.Params.ParamByName('Orden').DataType := ftString;
    qryActividadDiaAnterior.Params.ParamByName('Orden').Value := global_orden;
    qryActividadDiaAnterior.Params.ParamByName('Fecha').DataType := ftDate;
    qryActividadDiaAnterior.Params.ParamByName('Fecha').Value := dIdFecha.Date;
    qryActividadDiaAnterior.Open;

  except

  end;
end;

procedure TfrmComentariosxAnexo.btnCancelClick(Sender: TObject);
begin
try
  ComentariosxAnexo.Cancel;
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Eliminar1.Enabled := True;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comentariosxanexo', 'Al cancelar.', 0);
    end;
  end;
  Panel.Visible := False;
  BotonPermiso.permisosBotones(nil);
end;

procedure TfrmComentariosxAnexo.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsDescripcionCorta.SetFocus
end;

procedure TfrmComentariosxAnexo.Editar1Click(Sender: TObject);
begin
  if ComentariosxAnexo.RecordCount > 0 then
  begin
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Eliminar1.Enabled := False;
    ComentariosxAnexo.Edit;
    Panel.Visible := True;
    tsDescripcionCorta.SetFocus
  end;
  BotonPermiso.permisosBotones(nil);
end;

procedure TfrmComentariosxAnexo.Eliminar1Click(Sender: TObject);
begin
try
  if ComentariosxAnexo.RecordCount > 0 then
    if MessageDlg('Desea Eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      if ComentariosxAnexo.FieldValues['sIdUsuario'] = global_usuario then
        ComentariosxAnexo.Delete
      else
        MessageDlg('El Comentario que desea seleccionar fue adicionado por un usuario distinto, no puede eliminarse.', mtWarning, [mbOk], 0);
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comentariosxanexo', 'Al eliminar registro', 0);
end;
end;
end;

procedure TfrmComentariosxAnexo.Salir1Click(Sender: TObject);
begin
  close
end;

procedure TfrmComentariosxAnexo.sNumeroActividadChange(Sender: TObject);
begin
  with connection do
  begin
 { QryBusca.Active:=False;
  QryBusca.SQL.Clear;
  QryBusca.SQL.Add('select * from comentariosxanexo where sContrato=:Contrato  and sNumeroOrden=:Orden '+
    ' and dIdFecha=:Fecha and iIdDiario=:Diario and sNumeroActividad=:Actividad');
  QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  QryBusca.Params.ParamByName('Orden').DataType := ftString;
  QryBusca.Params.ParamByName('Orden').Value := global_orden;
  QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  QryBusca.Params.ParamByName('Fecha').Value := global_fecha ;
  QryBusca.Params.ParamByName('Diario').DataType := ftInteger;
  QryBusca.Params.ParamByName('Diario').Value := txtiIdDiario.Text;}
  end;
end;

procedure TfrmComentariosxAnexo.Refresh1Click(Sender: TObject);
begin
 try
  comentariosxanexo.Active := False;
  comentariosxanexo.Open;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comentariosxanexo', 'Al actualizar', 0);
  end;
 end;
end;

procedure TfrmComentariosxAnexo.tsDescripcionCortaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmComentarios.SetFocus
end;

procedure TfrmComentariosxAnexo.Imprimir1Click(Sender: TObject);
begin
try
 if grid_comentarios.DataSource.DataSet.IsEmpty=false then
 begin
 if grid_comentarios.DataSource.DataSet.RecordCount>0 then
 //<ROJAS>
  rptComentarios.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  //
 end
 else
 showmessage('No hay información para generar el reporte');
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comentariosxanexo', 'Al imprimir', 0);
end;

end;
end;

procedure TfrmComentariosxAnexo.rptComentariosGetValue(
  const VarName: string; var Value: Variant);
begin
  if CompareText(VarName, 'DESCRIPCION') = 0 then
  begin
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select mDescripcion From actividadesxanexo Where sContrato = :Contrato And ' +
      'sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sTipoActividad = "Actividad"');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Actividad').Value := global_partida;
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount > 0 then
      Value := Connection.QryBusca.FieldValues['mDescripcion']
    else
      Value := '';
  end

end;

procedure TfrmComentariosxAnexo.FormActivate(Sender: TObject);
begin
  Caption := 'Comentarios Adicionales a la Partida Anexo ' + global_partida;
  ComentariosxAnexo.Active := False;
  ComentariosxAnexo.Params.ParamByName('Contrato').DataType := ftString;
  ComentariosxAnexo.Params.ParamByName('Contrato').Value := global_contrato;
  ComentariosxAnexo.Params.ParamByName('Actividad').DataType := ftString;
  ComentariosxAnexo.Params.ParamByName('Actividad').Value := global_partida;
    {ComentariosxAnexo.Params.ParamByName('Fecha').DataType:=ftDate;
    ComentariosxAnexo.Params.ParamByName('Fecha').Value := global_fecha ;  }
  ComentariosxAnexo.Params.ParamByName('Orden').DataType := ftString;
  ComentariosxAnexo.Params.ParamByName('Orden').Value := global_orden;
  ComentariosxAnexo.Params.ParamByName('Convenio').DataType := ftString;
  ComentariosxAnexo.Params.ParamByName('Convenio').Value := convenio_reporte;
  ComentariosxAnexo.Open;
end;

procedure TfrmComentariosxAnexo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  action := cafree;
end;

end.

