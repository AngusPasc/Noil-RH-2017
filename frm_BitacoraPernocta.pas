unit frm_BitacoraPernocta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, Grids, DBGrids, ZAbstractDataset, ZDataset, DB,
  ZAbstractRODataset, StdCtrls, ComCtrls, frm_barra, ExtCtrls, frm_connection, global,
  RxMemDS, frxClass, frxDBSet, udbgrid, unitexcepciones, UnitTbotonesPermisos,
  UnitValidaTexto, DBDateTimePicker, UnitValidacion;

type
  TfrmBitacoraPernocta = class( TForm )
    Label1: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    Label6: TLabel;
    frmBarra1: TfrmBarra;
    Grid_Reportes: TDBGrid;
    QryBitacoradePernocta: TZQuery;
    ds_BitacoradePernocta: TDataSource;
    QryBitacoradePernoctasContrato: TStringField;
    QryBitacoradePernoctadIdFecha: TDateField;
    QryBitacoradePernoctasNumeroOrden: TStringField;
    QryBitacoradePernoctasIdCuenta: TStringField;
    QryBitacoradePernoctadCantidad: TFloatField;
    ds_ordenesdetrabajo: TDataSource;
    ordenesdetrabajo: TZReadOnlyQuery;
    QryCuentas: TZReadOnlyQuery;
    ds_Cuentas: TDataSource;
    QryCuentassIdCuenta: TStringField;
    QryCuentassDescripcion: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    tdCantidad: TDBEdit;
    QryBitacoradePernoctasDescripcion: TStringField;
    tsIdCuenta: TDBLookupComboBox;
    tdIdFecha: TDBDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsIdCuentaEnter(Sender: TObject);
    procedure tsIdCuentaExit(Sender: TObject);
    procedure tsIdCuentaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure QryBitacoradePernoctaCalcFields(DataSet: TDataSet);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure Grid_ReportesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ReportesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ReportesTitleClick(Column: TColumn);
    procedure tdCantidadChange(Sender: TObject);
    procedure QryBitacoradePernoctadCantidadSetText(Sender: TField;
      const Text: string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBitacoraPernocta: TfrmBitacoraPernocta;
  utgrid:ticdbgrid;
  botonpermiso:tbotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmBitacoraPernocta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  botonpermiso.Free;
  action := cafree ;
  utgrid.Destroy;
end;

procedure TfrmBitacoraPernocta.FormShow(Sender: TObject);
begin
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'reporteBarco');
    UtGrid:=TicdbGrid.create(grid_reportes);
    tdIdFecha.Date := Date ;
    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.SQL.Clear ;
    OrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, iJornada from ordenesdetrabajo where sContrato = :Contrato ') ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
    OrdenesdeTrabajo.Open ;

    qryBitacoradePernocta.Active := False ;
    qryBitacoradePernocta.Params.ParamByName('Fecha').DataType := ftDate ;
    qryBitacoradePernocta.Params.ParamByName('Fecha').Value    := tdIdFecha.Date ;
    OrdenesdeTrabajo.Open ;


    Qrycuentas.Active := False ;
    QryCuentas.open ;

    tdIdFecha.SetFocus ;
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmBitacoraPernocta.frmBarra1btnAddClick(Sender: TObject);
begin
if tsnumeroorden.KeyValue<>null then
begin
    frmBarra1.btnAddClick(Sender);
    QryBitacoradePernocta.Append ;
    QryBitacoradePernocta.FieldValues['sContrato'] := global_contrato ;
    QryBitacoradePernocta.FieldValues['dIdFecha'] := tdIdFecha.Date ;
    QryBitacoradePernocta.FieldValues['sNumeroOrden'] := tsNumeroOrden.Text ;
    QryBitacoradePernocta.FieldValues['sIdCuenta'] := '' ;
    QryBitacoradePernocta.FieldValues['dCantidad'] := 1 ;
    tsIdCuenta.SetFocus ;
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
    Grid_Reportes.Enabled := False;
end;

end;

procedure TfrmBitacoraPernocta.frmBarra1btnCancelClick(Sender: TObject);
begin
  QryBitacoradePernocta.Cancel ;
  frmBarra1.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  Grid_Reportes.Enabled := True;
end;

procedure TfrmBitacoraPernocta.frmBarra1btnDeleteClick(Sender: TObject);
begin
if grid_reportes.DataSource.DataSet.IsEmpty=false then
if grid_reportes.DataSource.DataSet.RecordCount>0 then
 begin
    if QryBitacoradePernocta.RecordCount > 0 then
        Try
            QryBitacoradePernocta.Delete
        Except
          on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_bitacorapernocta', 'Al eliminar registro', 0);
          end;
        End;
 end;
end;

procedure TfrmBitacoraPernocta.frmBarra1btnEditClick(Sender: TObject);
begin
  if (QryBitacoradePernocta.Active) and (QryBitacoradePernocta.RecordCount > 0) then begin
      frmBarra1.btnEditClick(Sender);
      Try
          QryBitacoradePernocta.Edit
      Except
       on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_bitacorapernocta', 'Al editar registro', 0);
       frmBarra1.btnCancelClick(Sender);
       end;
      End;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  Grid_Reportes.Enabled := False;
end;

procedure TfrmBitacoraPernocta.frmBarra1btnExitClick(Sender: TObject);
begin
    close
end;

procedure TfrmBitacoraPernocta.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Cuenta');nombres.Add('Cantidad');
  cadenas.Add(tsIdCuenta.Text);cadenas.Add(tdCantidad.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  try
    QryBitacoradePernocta.Post ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_bitacorapernocta', 'Al salvar registro', 0);
      frmBarra1.btnCancelClick(Sender);
    end;
  end;
  Grid_Reportes.Enabled := True;
  frmBarra1.btnPostClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmBitacoraPernocta.frmBarra1btnRefreshClick(Sender: TObject);
begin
      qrybitacoradepernocta.Open;
      QryBitacoradePernocta.Refresh;
      grid_reportes.SetFocus;
end;

procedure TfrmBitacoraPernocta.Grid_ReportesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmBitacoraPernocta.Grid_ReportesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmBitacoraPernocta.Grid_ReportesTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraPernocta.QryBitacoradePernoctaCalcFields(
  DataSet: TDataSet);
begin
    if QryCuentas.FieldByName('sDescripcion').AsString <> '' then
        QryBitacoradePernoctasDescripcion.Text := QryCuentas.FieldValues ['sDescripcion'] ;
end;

procedure TfrmBitacoraPernocta.QryBitacoradePernoctadCantidadSetText(
  Sender: TField; const Text: string);
begin
Sender.Value:=abs(StrToFloatDef(text, 0));
end;

procedure TfrmBitacoraPernocta.tdCantidadChange(Sender: TObject);
begin
tdbeditchangef(tdCantidad,'Cantidad');
end;

procedure TfrmBitacoraPernocta.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.color := global_color_entrada
end;

procedure TfrmBitacoraPernocta.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.color := global_color_salida
end;

procedure TfrmBitacoraPernocta.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdCantidad,key) then
   key:=#0;

    if Key = #13 then
        tsIdCuenta.SetFocus
end;

procedure TfrmBitacoraPernocta.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmBitacoraPernocta.tdIdFechaExit(Sender: TObject);
begin
    QryBitacoradePernocta.Active := False ;
    QryBitacoradePernocta.Params.ParamByName('fecha').DataType := ftDate ;
    QryBitacoradePernocta.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
    QryBitacoradePernocta.Open ;

    tdIdFecha.Color := global_color_salida ;
end;

procedure TfrmBitacoraPernocta.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        tsNumeroOrden.SetFocus
end;

procedure TfrmBitacoraPernocta.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.color := global_color_salida
end;

procedure TfrmBitacoraPernocta.tsIdCuentaEnter(Sender: TObject);
begin
    tsIdCuenta.Color := global_color_entrada
end;

procedure TfrmBitacoraPernocta.tsIdCuentaExit(Sender: TObject);
begin
    tsIdCuenta.Color := global_color_salida
end;

procedure TfrmBitacoraPernocta.tsIdCuentaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmBitacoraPernocta.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.color := global_color_entrada
end;
procedure TfrmBitacoraPernocta.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        frmBarra1.btnAdd.SetFocus 
end;

end.

