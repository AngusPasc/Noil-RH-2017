unit Frm_DetalleOficioPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Global, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ZAbstractRODataset, frm_Connection, ZAbstractDataset,
  udbgrid, ZDataset, rxToolEdit, RXDBCtrl, Mask, frm_barra, Grids, DBGrids, Menus,
  UnitTBotonesPermisos, UnitExcepciones, ComCtrls, DBDateTimePicker, Buttons;

type
  TFrmDetalleOficioPersonal = class(TForm)
    Label3: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    ds_detalle: TDataSource;
    QryDetalle: TZQuery;
    dBPersonal: TDBGrid;
    lblPartida: TLabel;
    Label2: TLabel;
    lblDescripcion: TLabel;
    lblOficio: TLabel;
    lblFecha: TLabel;
    PopupMenu1: TPopupMenu;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure rbC14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rbcPernoctaClick(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);
    procedure dBPersonalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dBPersonalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dBPersonalTitleClick(Column: TColumn);
    procedure QryDetallePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryDetalleDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure QryDetalleBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDetalleOficioPersonal: TFrmDetalleOficioPersonal;
  Fecha, Bandera: string;
  oper: integer;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
  utGrid: ticDbgrid;
implementation

uses
  frmMovtoPersonalxOficio;

{$R *.dfm}


procedure TFrmDetalleOficioPersonal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  connection.QryBusca2.Active := False;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select sum(dCantidad) as dCantidad from detallerecursosxoficio ' +
    'where sContrato =:Contrato and iFolioOficio =:Oficio and sAnexo =:Anexo and sNumeroActividad =:Id ');
  connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
  connection.QryBusca2.Params.ParamByName('Oficio').DataType := ftInteger;
  connection.QryBusca2.Params.ParamByName('Oficio').Value := QryDetalle.FieldValues['iFolioOficio'];
  connection.QryBusca2.Params.ParamByName('Anexo').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('Anexo').Value := QryDetalle.FieldValues['sAnexo'];
  connection.QryBusca2.Params.ParamByName('Id').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('Id').Value := QryDetalle.FieldValues['sNumeroActividad'];
  connection.QryBusca2.Open;

  if connection.QryBusca2.RecordCount > 0 then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('update movtorecursosxoficio set dCantidad =:Cantidad ' +
      'where sContrato =:Contrato and iFolioOficio =:Oficio and sAnexo =:Anexo and sNumeroActividad =:Id ');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.QryBusca.Params.ParamByName('Oficio').DataType := ftInteger;
    connection.QryBusca.Params.ParamByName('Oficio').Value := QryDetalle.FieldValues['iFolioOficio'];
    connection.QryBusca.Params.ParamByName('Anexo').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Anexo').Value := QryDetalle.FieldValues['sAnexo'];
    connection.QryBusca.Params.ParamByName('Id').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Id').Value := QryDetalle.FieldValues['sNumeroActividad'];
    connection.QryBusca.Params.ParamByName('Cantidad').DataType := ftFloat;
    connection.QryBusca.Params.ParamByName('Cantidad').Value := connection.QryBusca2.FieldValues['dCantidad'];
    connection.QryBusca.ExecSQL;
  end;

  try
    if frmMovtosPersonalxoficio.rbC14.Checked then
      frmMovtosPersonalxoficio.rbC14Click(Sender);

    if frmMovtosPersonalxoficio.rbC15.Checked then
      frmMovtosPersonalxoficio.rbC15Click(Sender);
    frmMovtosPersonalxoficio.movtosPersEq.Refresh;
  except
  end;

  utGrid.Destroy;
  BotonPermiso.Free;
  BotonPermiso1.Free;
  action := cafree;
end;

procedure TFrmDetalleOficioPersonal.FormShow(Sender: TObject);
begin
  try
    UtGrid := TicdbGrid.create(dbpersonal);

    lblFecha.Caption := frmMovtosPersonalxOficio.qryOrdenesGral.FieldValues['dFechaVigencia'];
    lblPartida.Caption := frmMovtosPersonalxOficio.movtosPersEq.FieldValues['sNumeroActividad'];
    lblOficio.Caption := frmMovtosPersonalxOficio.qryOrdenesGral.FieldValues['sOficioAutorizacion'];
    lblDescripcion.Caption := frmMovtosPersonalxOficio.movtosPersEq.FieldValues['sDescripcion'];

    QryDetalle.Active := False;
    QryDetalle.ParamByName('Contrato').AsString := global_contrato;
    QryDetalle.ParamByName('Oficio').AsInteger := frmMovtosPersonalxOficio.iFolioOficio; //frmMovtosPersonalxOficio.fechaVigencia.FieldValues['iFolioOficio'];
    QryDetalle.ParamByName('Anexo').AsString := frmMovtosPersonalxOficio.movtosPersEq.FieldValues['sAnexo'];
    QryDetalle.ParamByName('Id').AsString := frmMovtosPersonalxOficio.movtosPersEq.FieldValues['sNumeroActividad'];
    QryDetalle.Open;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal x Oficio', 'Al abrir ventana', 0);
    end;
  end;
end;

procedure TFrmDetalleOficioPersonal.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TFrmDetalleOficioPersonal.dBPersonalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if dbpersonal.DataSource.DataSet.IsEmpty = false then
    UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TFrmDetalleOficioPersonal.dBPersonalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if dbpersonal.DataSource.DataSet.IsEmpty = false then
    UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TFrmDetalleOficioPersonal.dBPersonalTitleClick(Column: TColumn);
begin
  try
    if dbpersonal.DataSource.DataSet.IsEmpty = false then
      UtGrid.DbGridTitleClick(Column);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal por Oficio', 'Al ordenar la tabla', 0);
    end;
  end;
end;

procedure TFrmDetalleOficioPersonal.QryDetalleBeforePost(DataSet: TDataSet);
var
  qry: TZReadOnlyQuery;
begin
  try
    qry := TZReadOnlyQuery.Create(nil);
    qry.Connection := connection.zConnection;
    qry.SQL.Clear;
    if QryDetalle.FieldValues['sAnexo'] = global_labelPersonal then
      qry.SQL.Add('select sNumeroActividad from detallerecursosxoficio d ' +
        ' inner join bitacoradepersonal bp ' +
        ' on d.sNumeroActividad=bp.sIdPersonal and d.sContrato=bp.sContrato and bp.dIdFecha=d.dFechaDia ' +
        ' where d.sContrato=:contrato and d.iFolioOficio=:folio and d.sAnexo=:anexo ' +
        ' and d.dFechaDia=:fecha and d.sNumeroActividad=:actividad ');
    if QryDetalle.FieldValues['sAnexo'] = global_labelEquipo then
      qry.SQL.Add(' select sNumeroActividad from detallerecursosxoficio d ' +
        ' inner join bitacoradeequipos bp ' +
        ' on d.sNumeroActividad=bp.sIdEquipo and d.sContrato=bp.sContrato and bp.dIdFecha=d.dFechaDia ' +
        ' where d.sContrato=:contrato and d.iFolioOficio=:folio and d.sAnexo=:anexo ' +
        ' and d.dFechaDia=:fecha and d.sNumeroActividad=:actividad  ');
    qry.Params.ParamByName('contrato').DataType := ftString;
    qry.Params.ParamByName('contrato').Value := global_contrato;
    qry.Params.ParamByName('folio').DataType := ftInteger;
    qry.Params.ParamByName('folio').Value := QryDetalle.FieldByName('iFolioOficio').AsInteger;
    qry.Params.ParamByName('fecha').DataType := ftDate;
    qry.Params.ParamByName('fecha').Value := QryDetalle.FieldByName('dFechaDia').AsDateTime;
    qry.Params.ParamByName('actividad').DataType := ftString;
    qry.Params.ParamByName('actividad').Value := QryDetalle.FieldByName('sNumeroActividad').AsString;
    qry.Params.ParamByName('anexo').DataType := ftString;
    qry.Params.ParamByName('anexo').Value := QryDetalle.FieldByName('sAnexo').AsString;
    qry.Open;
    if qry.RecordCount > 0 then
      QryDetalle.Cancel;

  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0)  ;
  end;

end;

procedure TFrmDetalleOficioPersonal.QryDetalleDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal X Oficio', 'Al Eliminar registro de Personal', 0);
  abort;
end;

procedure TFrmDetalleOficioPersonal.QryDetallePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal X Oficio', 'Al salvar registro de Personal', 0);
  abort;
end;

procedure TFrmDetalleOficioPersonal.PopupPrincipalPopup(Sender: TObject);
begin


end;

//Al presionar solo Personal y lo sumo...

procedure TFrmDetalleOficioPersonal.rbC14Click(Sender: TObject);
begin

end;

//Al presionar solo equipo y lo sumo...

procedure TFrmDetalleOficioPersonal.rbcPernoctaClick(Sender: TObject);
begin

end;

//Salga del Combo de Fechas
end.

