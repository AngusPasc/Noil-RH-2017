unit frmHistorialSueldos;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, global,
  JvExMask, JvToolEdit, JvDBControls, UDbGrid, JvBaseEdits, rxToolEdit, RXDBCtrl, frm_Connection;

type
  Tfrm_HistorialSueldos = class(TForm)
  qrySueldos: TZQuery;
  ds_Sueldos: TDataSource;
  Panel1: TPanel;
  Label9: TLabel;
  Label6: TLabel;
  tsAutoriza: TDBEdit;
  tsDescripcion: TDBMemo;
  Panel2: TPanel;
  grid_Sueldos: TDBGrid;
  frmBarra1: TfrmBarra;
  dsFecha: TDBDateEdit;
  Label1: TLabel;
  tsImporte: TJvDBCalcEdit;
  Label2: TLabel;
  qrySueldosiId_historialsueldos: TIntegerField;
  qrySueldossIdEmpleado: TStringField;
  qrySueldosdFecha: TDateField;
  qrySueldossDescripcion: TStringField;
  qrySueldosdImporte: TFloatField;
  qrySueldossAutoriza: TStringField;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);

  procedure FormShow(Sender: TObject);
  procedure grid_SueldosTitleClick(Column: TColumn);
  procedure tsAutorizaKeyPress(Sender: TObject; var Key: Char);
  procedure tsAutorizaEnter(Sender: TObject);
  procedure tsAutorizaExit(Sender: TObject);
  procedure tsDescripcionEnter(Sender: TObject);
  procedure tsDescripcionExit(Sender: TObject);
  procedure dsFechaEnter(Sender: TObject);
  procedure dsFechaExit(Sender: TObject);
  procedure dsFechaKeyPress(Sender: TObject; var Key: Char);
  procedure tsImporteKeyPress(Sender: TObject; var Key: Char);
  procedure tsImporteEnter(Sender: TObject);
  procedure tsImporteExit(Sender: TObject);
  procedure grid_SueldosEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_HistorialSueldos: Tfrm_HistorialSueldos;
  utgrid:ticdbgrid;
implementation

uses frmEmpleados;

{$R *.dfm}

procedure Tfrm_HistorialSueldos.dsFechaEnter(Sender: TObject);
begin
  dsFecha.Color := global_color_entradaERP;
end;

procedure Tfrm_HistorialSueldos.dsFechaExit(Sender: TObject);
begin
  dsFecha.Color := global_color_salidaERP;
end;

procedure Tfrm_HistorialSueldos.dsFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsAutoriza.SetFocus;
end;

procedure Tfrm_HistorialSueldos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  if frmEmpleados.frm_Empleados.zqEmpleados.state in [dsInsert,dsEdit] then
    frmEmpleados.frm_Empleados.zqEmpleados.FieldValues['dSueldo']:=qrySueldos.FieldValues['dImporte'];
  action:=cafree ;
end;

procedure Tfrm_HistorialSueldos.FormShow(Sender: TObject);
begin
  try
    UtGrid:=TicdbGrid.create(grid_Sueldos);
    qrySueldos.Active := False ;
    qrySueldos.Open;

    if qrySueldos.RecordCount = 0 then
    begin
        //Primero consultamos el maximo JJFS by ivan
        qrySueldos.Append;
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('SELECT MAX(iId_historialsueldos) AS id FROM rh_historialsueldos;');
        connection.QryBusca.Open;
        if connection.QryBusca.FieldValues['id'] = 0 then
           qrySueldos.FieldValues['iId_historialsueldos'] := 1
        else
          qrySueldos.FieldValues['iId_historialsueldos'] := connection.QryBusca.FieldValues['id'] + 1;
        qrySueldos.FieldValues['sIdEmpleado']  := frmEmpleados.frm_Empleados.zqEmpleados.FieldValues['sIdEmpleado'];
        qrySueldos.FieldValues['dFecha']       := date;
        qrySueldos.FieldValues['sDescripcion'] := 'SUELDO INICIAL';
        qrySueldos.FieldValues['dImporte']     := frmEmpleados.frm_Empleados.zqEmpleados.FieldValues['dSueldo'];
        qrySueldos.FieldValues['sAutoriza']    := '';
        qrySueldos.Post;
    end;

    if qrySueldos.RecordCount = 1 then
    begin
        if qrySueldos.FieldValues['dImporte'] = 0 then
        begin
            qrySueldos.Edit;
            qrySueldos.FieldValues['dImporte'] := frmEmpleados.frm_Empleados.zqEmpleados.FieldValues['dSueldo'];
            qrySueldos.Post;
        end;
    end;

    dsFecha.Date := Date;
    grid_sueldos.SetFocus;
  except
    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;
end;

procedure Tfrm_HistorialSueldos.frmBarra1btnAddClick(Sender: TObject);
begin
  try
    frmBarra1.btnAddClick(Sender);
    qrySueldos.Append;
    qrySueldos.FieldValues['dFecha']    := date;
    qrySueldos.FieldValues['sAutoriza'] := '';
    dsFecha.SetFocus;
  except
    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;

end;

procedure Tfrm_HistorialSueldos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  qrySueldos.Cancel;
end;

procedure Tfrm_HistorialSueldos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If qrySueldos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        qrySueldos.Delete;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end
end;

procedure Tfrm_HistorialSueldos.frmBarra1btnEditClick(Sender: TObject);
begin
  try
    frmBarra1.btnEditClick(Sender);
    If qrySueldos.RecordCount > 0 Then
    begin
        qrySueldos.Edit;
        dsFecha.SetFocus;
    end ;
  except
    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;
end;

procedure Tfrm_HistorialSueldos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure Tfrm_HistorialSueldos.frmBarra1btnPostClick(Sender: TObject);
begin
  try
    TRY
      if qrySueldos.State in [dsEdit, dsInsert] then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('SELECT MAX(iId_historialsueldos) AS id FROM rh_historialsueldos;');
        connection.QryBusca.Open;
        if connection.QryBusca.FieldValues['id'] = 0 then
          qrySueldos.FieldValues['iId_historialsueldos'] := 1
        else
          qrySueldos.FieldValues['iId_historialsueldos'] := connection.QryBusca.FieldValues['id'] + 1;
        qrySueldos.FieldValues['sIdEmpleado'] := frmEmpleados.frm_Empleados.zqEmpleados.FieldValues['sIdEmpleado'];
        qrySueldos.Post;
      end;
      frmBarra1.btnCancelClick(Sender);
    FINALLY
      begin
        frmBarra1.btnCancelClick(Sender);
      end;
    END;
  except
    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;
end;

procedure Tfrm_HistorialSueldos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  qrySueldos.Refresh
end;

procedure Tfrm_HistorialSueldos.grid_SueldosEnter(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  qrySueldos.Cancel;
end;

procedure Tfrm_HistorialSueldos.grid_SueldosTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_HistorialSueldos.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.color := global_color_entradaERP;
end;

procedure Tfrm_HistorialSueldos.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP;
end;

procedure Tfrm_HistorialSueldos.tsImporteEnter(Sender: TObject);
begin
  tsImporte.color := global_color_entradaERP;
end;

procedure Tfrm_HistorialSueldos.tsImporteExit(Sender: TObject);
begin
  tsImporte.Color := global_color_salidaERP;
end;

procedure Tfrm_HistorialSueldos.tsImporteKeyPress(Sender: TObject;var Key: Char);
begin
  try
    if Key = #13 then tsDescripcion.SetFocus;
  except
    on e:Exception do
    begin
      MessageDlg('Edite los datos, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;
end;

procedure Tfrm_HistorialSueldos.tsAutorizaEnter(Sender: TObject);
begin
  tsAutoriza.Color := global_color_entradaERP;
end;

procedure Tfrm_HistorialSueldos.tsAutorizaExit(Sender: TObject);
begin
  tsAutoriza.Color := global_color_salidaERP;
end;

procedure Tfrm_HistorialSueldos.tsAutorizaKeyPress(Sender: TObject;var Key: Char);
begin
  if key =#13 then tsImporte.SetFocus;
end;
end.
