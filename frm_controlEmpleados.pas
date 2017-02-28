unit frm_controlEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxPageControl, NxColumns, NxDBColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, NxCollection, DB, frxClass,
  frxExportPDF, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, DBCtrls, StdCtrls, JvDBDotNetControls, JvExControls,
  JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox, Mask, frm_barra, Grids,
  DBGrids , global,  AdvGlowButton, frm_Connection, unitTBotonesPermisos, UnitExcepciones;
  function keyFiltroTdbedit (tdb:TJvDotNetDBEdit;tecla:char):boolean;
type
  TfrmControlEmpleados = class(TForm)
    Panel1: TPanel;
    NxPageControl1: TNxPageControl;
    NxTabSheet2: TNxTabSheet;
    NxTabSheet3: TNxTabSheet;
    NxTabSheet1: TNxTabSheet;
    NextDBGrid2: TNextDBGrid;
    NxDBTextColumn12: TNxDBTextColumn;
    NxDBTextColumn13: TNxDBTextColumn;
    NxDBTextColumn14: TNxDBTextColumn;
    NxDBTextColumn15: TNxDBTextColumn;
    NxDBTextColumn16: TNxDBTextColumn;
    NxDBTextColumn17: TNxDBTextColumn;
    NxDBTextColumn18: TNxDBTextColumn;
    NxDBTextColumn19: TNxDBTextColumn;
    NxDBTextColumn20: TNxDBTextColumn;
    NxDBTextColumn21: TNxDBTextColumn;
    NxDBTextColumn22: TNxDBTextColumn;
    NxHeaderPanel1: TNxHeaderPanel;
    Panel2: TPanel;
    zq_1: TZQuery;
    ds_1: TDataSource;
    zq_1sContrato: TStringField;
    zq_1sIdEmpleado: TStringField;
    zq_1sNombre: TStringField;
    zq_1sDomicilio: TStringField;
    zq_1sCiudad: TStringField;
    zq_1sTelefono: TStringField;
    zq_1sCurp: TStringField;
    zq_1sRfc: TStringField;
    zq_1sImss: TStringField;
    zq_1sIdPersonal: TStringField;
    zq_1lStatus: TStringField;
    frmBarra4: TfrmBarra;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    jvSolicitud: TJvDotNetDBEdit;
    jvFechai: TJvDotNetDBEdit;
    jvComentario: TJvDotNetDBMemo;
    zq_2: TZQuery;
    ds_2: TDataSource;
    zq_2sContrato: TStringField;
    zq_2iSolicitud: TIntegerField;
    zq_2dFecha: TDateField;
    zq_2mComentarios: TStringField;
    zq_2lStatus: TStringField;
    frmBarra1: TfrmBarra;
    dbEmpleados: TDBLookupComboBox;
    zq_3: TZQuery;
    ds_3: TDataSource;
    zq_4: TZQuery;
    ds_4: TDataSource;
    ZQuery1: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    NextDBGrid4: TNextDBGrid;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn10: TNxDBTextColumn;
    NxDBTextColumn11: TNxDBTextColumn;
    NxDBTextColumn23: TNxDBTextColumn;
    jvComentarioT: TJvDotNetDBMemo;
    JvFechaT: TJvDotNetDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    Panel5: TPanel;
    frmBarra2: TfrmBarra;
    frmBarra3: TfrmBarra;
    JvDotNetDBEdit5: TJvDotNetDBEdit;
    Label7: TLabel;
    zq_x1: TZQuery;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    DataSource1: TDataSource;
    NxDBTextColumn24: TNxDBTextColumn;
    DBLookupComboBox2: TDBLookupComboBox;
    NextDBGrid5: TNextDBGrid;
    NxDBTextColumn25: TNxDBTextColumn;
    NxDBTextColumn26: TNxDBTextColumn;
    NxDBTextColumn27: TNxDBTextColumn;
    NxDBTextColumn28: TNxDBTextColumn;
    NxDBTextColumn29: TNxDBTextColumn;
    JvDotNetDBEdit3: TJvDotNetDBEdit;
    Label5: TLabel;
    Label8: TLabel;
    NxDBTextColumn30: TNxDBTextColumn;
    NxDBTextColumn31: TNxDBTextColumn;
    NxDBTextColumn32: TNxDBTextColumn;
    NxDBTextColumn33: TNxDBTextColumn;
    Label9: TLabel;
    Label10: TLabel;
    JvDotNetDBEdit7: TJvDotNetDBEdit;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    Label11: TLabel;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    Label12: TLabel;
    Label13: TLabel;
    JvDotNetDBEdit6: TJvDotNetDBEdit;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    zq_3sContrato: TStringField;
    zq_3iSolicitud: TIntegerField;
    zq_3sIdEmpleado: TStringField;
    zq_4sContrato: TStringField;
    zq_4sIdEmpleado: TStringField;
    zq_4sNombre: TStringField;
    zq_4sDomicilio: TStringField;
    zq_4sCiudad: TStringField;
    zq_4sTelefono: TStringField;
    zq_4sCurp: TStringField;
    zq_4sRfc: TStringField;
    zq_4sImss: TStringField;
    zq_4sIdPersonal: TStringField;
    zq_4lStatus: TStringField;
    zq_5: TZQuery;
    ds_5: TDataSource;
    zq_5sContrato: TStringField;
    zq_5iNomina: TIntegerField;
    zq_5dFechaInicio: TDateField;
    zq_5dFechaFinal: TDateField;
    zq_5mComentarios: TMemoField;
    zq_5lStatus: TStringField;
    zq_6: TZQuery;
    ds_6: TDataSource;
    ds_7: TDataSource;
    zq_7: TZQuery;
    zq_6sContrato: TStringField;
    zq_6iNomina: TIntegerField;
    zq_6sIdEmpleado: TStringField;
    zq_6dFechaSubida: TDateField;
    zq_6dFechaBajada: TDateField;
    zq_6iDias: TIntegerField;
    zq_6iHorasExtras: TFloatField;
    zq_6mComentarios: TMemoField;
    zq_7sContrato: TStringField;
    zq_7sIdEmpleado: TStringField;
    zq_7sNombre: TStringField;
    zq_7sDomicilio: TStringField;
    zq_7sCiudad: TStringField;
    zq_7sTelefono: TStringField;
    zq_7sCurp: TStringField;
    zq_7sRfc: TStringField;
    zq_7sImss: TStringField;
    zq_7sIdPersonal: TStringField;
    zq_7lStatus: TStringField;
    ds_x1: TDataSource;
    zq_3sNombre: TStringField;
    zq_3sCategoria: TStringField;
    zq_6sNombre: TStringField;
    zq_6sCategoria: TStringField;
    NextDBGrid6: TNextDBGrid;
    zq_8: TZQuery;
    ds_8: TDataSource;
    zq_8sContrato: TStringField;
    zq_8iNomina: TIntegerField;
    zq_8sIdEmpleado: TStringField;
    zq_8dFechaSubida: TDateField;
    zq_8dFechaBajada: TDateField;
    zq_8iDias: TIntegerField;
    zq_8iHorasExtras: TFloatField;
    zq_8mComentarios: TMemoField;
    NxDBTextColumn34: TNxDBTextColumn;
    NxDBTextColumn35: TNxDBTextColumn;
    dbgEmpleados: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Panel6: TPanel;
    frmBarra5: TfrmBarra;
    Label15: TLabel;
    jvCiudad: TJvDotNetDBEdit;
    jvFicha: TJvDotNetDBEdit;
    Label16: TLabel;
    jvStatus: TJvDBComboBox;
    jvNombre: TJvDotNetDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    JvCategoria: TJvDBLookupCombo;
    jvDomicilio: TJvDotNetDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    JvTelefono: TJvDotNetDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    JvCurp: TJvDotNetDBEdit;
    jvRfc: TJvDotNetDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    jvImss: TJvDotNetDBEdit;
    zq_categoria: TZQuery;
    zq_categoriasContrato: TStringField;
    zq_categoriasIdPersonal: TStringField;
    zq_categoriaiItemOrden: TIntegerField;
    zq_categoriasDescripcion: TStringField;
    zq_categoriasIdTipoPersonal: TStringField;
    zq_categoriasMedida: TStringField;
    zq_categoriadCantidad: TFloatField;
    zq_categoriadCostoMN: TFloatField;
    zq_categoriadCostoDLL: TFloatField;
    zq_categoriadVentaMN: TFloatField;
    zq_categoriadVentaDLL: TFloatField;
    zq_categoriadFechaInicio: TDateField;
    zq_categoriadFechaFinal: TDateField;
    zq_categorialProrrateo: TStringField;
    zq_categorialCobro: TStringField;
    zq_categorialImprime: TStringField;
    zq_categorialAplicaTM: TStringField;
    zq_categoriaiJornada: TIntegerField;
    zq_categorialDistribuye: TStringField;
    zq_categorialPernocta: TStringField;
    zq_categoriasAgrupaPersonal: TStringField;
    ds_categoria: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset3: TfrxDBDataset;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure frmBarra4btnAddClick(Sender: TObject);
    procedure frmBarra4btnPostClick(Sender: TObject);
    procedure frmBarra4btnEditClick(Sender: TObject);
    procedure frmBarra4btnCancelClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure zq_2AfterScroll(DataSet: TDataSet);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure zq_5AfterScroll(DataSet: TDataSet);
    procedure frmBarra3btnAddClick(Sender: TObject);
    procedure frmBarra3btnPostClick(Sender: TObject);
    procedure frmBarra3btnEditClick(Sender: TObject);
    procedure frmBarra3btnCancelClick(Sender: TObject);
    procedure frmBarra4btnDeleteClick(Sender: TObject);
    procedure zq_1AfterScroll(DataSet: TDataSet);
    procedure frmBarra5btnAddClick(Sender: TObject);
    procedure frmBarra5btnEditClick(Sender: TObject);
    procedure frmBarra5btnPostClick(Sender: TObject);
    procedure frmBarra5btnCancelClick(Sender: TObject);
    procedure frmBarra5btnDeleteClick(Sender: TObject);
    procedure frmBarra4btnPrinterClick(Sender: TObject);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure frmBarra3btnDeleteClick(Sender: TObject);
    procedure JvTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure jvSolicitudKeyPress(Sender: TObject; var Key: Char);
    procedure JvFechaTKeyPress(Sender: TObject; var Key: Char);
    procedure JvTelefonoChange(Sender: TObject);
    procedure jvSolicitudChange(Sender: TObject);
    procedure JvFechaTChange(Sender: TObject);
    procedure JvDotNetDBEdit7Change(Sender: TObject);
    procedure JvDotNetDBEdit6Change(Sender: TObject);
    procedure jvFichaKeyPress(Sender: TObject; var Key: Char);
    procedure JvDotNetDBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure JvDotNetDBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure jvFichaChange(Sender: TObject);
    procedure jvNombreKeyPress(Sender: TObject; var Key: Char);
    procedure jvDomicilioKeyPress(Sender: TObject; var Key: Char);
    procedure jvCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure JvCurpKeyPress(Sender: TObject; var Key: Char);
    procedure jvRfcKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra5btnPrinterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlEmpleados: TfrmControlEmpleados;

implementation

uses frm_controlEmpleados2;
{$R *.dfm}

procedure TfrmControlEmpleados.AdvGlowButton1Click(Sender: TObject);
begin
  frm_ControlEmpleados2.AccionRegistro := 2;
  frm_ControlEmpleados2.idEditar := zq_1.FieldValues['id'];
  Application.CreateForm(TfrmControlEmpleados2, frmControlEmpleados2);
  frmControlEmpleados2.Show;
end;

procedure TfrmControlEmpleados.AdvGlowButton2Click(Sender: TObject);
Var
  buttonSelected:Integer;
begin
  if zq_1.RecordCount > 0 then begin
    if zq_1.FieldValues['lStatus'] <> 'LABORANDO' then begin
      buttonSelected := MessageDlg('¿Desea eliminar este registro?', mtCustom, [mbYes,mbCancel], 0);
      if buttonSelected = mrYes then begin
        zq_1.Delete;
      end;
    end else begin
      ShowMessage('No se puede eliminar el registro por que el personal se encuentra laborando');
    end;
  end;
end;

procedure TfrmControlEmpleados.btnAddClick(Sender: TObject);
begin
  frm_ControlEmpleados2.AccionRegistro := 1;
  Application.CreateForm(TfrmControlEmpleados2, frmControlEmpleados2);
  frmControlEmpleados2.Show;
end;

function keyFiltroTdbedit (tdb:TJvDotNetDBEdit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyfiltrotdbedit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyfiltrotdbedit:=false;
end;

procedure TfrmControlEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrmControlEmpleados.FormShow(Sender: TObject);
  Var
    Valores : TStringList;
begin
  zq_1.Active := False;
  zq_1.Params.ParamByName('Contrato').DataType := ftString;
  zq_1.Params.ParamByName('Contrato').Value := global_contrato;
  zq_1.Open;

  zq_2.Active := False;
  zq_2.Params.ParamByName('Contrato').DataType := ftString;
  zq_2.Params.ParamByName('Contrato').Value := global_contrato;
  zq_2.Open;
  zq_5.Active := False;
  zq_5.Params.ParamByName('Contrato').DataType := ftString;
  zq_5.Params.ParamByName('Contrato').Value := global_contrato;
  zq_5.Open;
  JvStatus.enabled := False;

  zq_categoria.Active := False;
  zq_categoria.Params.ParamByName('Contrato').DataType := ftString;
  zq_categoria.Params.ParamByName('Contrato').Value := global_contrato;
  zq_Categoria.Open;

  Valores := TStringList.Create;
  JvStatus.AddItem('LABORANDO', nil);
  Valores.Add('LABORANDO');
  JvStatus.AddItem('DESCANSO', nil);
  Valores.Add('DESCANSO');
  JvStatus.AddItem('INACTIVO', nil);
  Valores.Add('INACTIVO');
  JvStatus.Values := Valores;
end;

procedure TfrmControlEmpleados.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zq_4.Active := False;
  zq_4.Params.ParamByName('Contrato').DataType := ftString;
  zq_4.Params.ParamByName('Contrato').Value := global_contrato;
  zq_4.Open;

  zq_3.Append;
  zq_3.FieldValues['sContrato'] := global_contrato;
  zq_3.FieldValues['iSolicitud'] := zq_2.FieldValues['iSolicitud'];
  DbEmpleados.Enabled := True;
  DbEmpleados.SetFocus;
  //BotonPermiso.permisosBotones(frmBarra4);
end;

procedure TfrmControlEmpleados.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zq_3.Cancel;
  DbEmpleados.Enabled := False;
end;

procedure TfrmControlEmpleados.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if zq_3.RecordCount > 0 then begin
    zq_3.Delete;
  end;
end;

procedure TfrmControlEmpleados.frmBarra1btnEditClick(Sender: TObject);
begin
  //activapop(frmEmpleados, popupprincipal);
  if zq_3.RecordCount > 0 then
  begin
    frmBarra1.btnEditClick(Sender);
    zq_3.Edit;
    DbEmpleados.Enabled := True;
    JvSolicitud.SetFocus;
  end;
  //BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmControlEmpleados.frmBarra1btnPostClick(Sender: TObject);
begin
  zq_3.Post;
  if zq_2.FieldByName('dFecha').AsDateTime <= Now then begin
    zq_4.Edit;
    zq_4.FieldValues['lStatus'] := 'LABORANDO';
    zq_4.Post;
  end;
  jvStatus.Enabled := False;
  frmBarra1.btnPostClick(Sender);
end;

procedure TfrmControlEmpleados.frmBarra2btnAddClick(Sender: TObject);
begin
  frmBarra2.btnAddClick(Sender);
  zq_5.Append;
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select Max(iNomina) as iNomina, Max(dFechaFinal) as dFechaFinal From nomina Where sContrato = :Contrato Group By sContrato');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then begin
    zq_5.FieldValues['iNomina'] := Connection.QryBusca.FieldValues['iNomina'] + 1;
    zq_5.FieldValues['dFechaInicio'] := Connection.QryBusca.FieldValues['dFechaFinal'];
    zq_5.FieldValues['dFechaFinal'] := Connection.QryBusca.FieldValues['dFechaFinal'] + 14
  end else begin
    zq_5.FieldValues['iNomina'] := 1;
    zq_5.FieldValues['dFechaInicio'] := Date;
    zq_5.FieldValues['dFechaFinal'] := Date;
  end;
  zq_5.FieldValues['sContrato'] := global_contrato;
  JvFechaT.SetFocus;
end;

procedure TfrmControlEmpleados.frmBarra2btnCancelClick(Sender: TObject);
begin
  frmBarra2.btnCancelClick(Sender);
  zq_5.Cancel;
end;

procedure TfrmControlEmpleados.frmBarra2btnDeleteClick(Sender: TObject);
begin
  if zq_5.RecordCount > 0 then begin
    frmBarra2.btnEditClick(Sender);
    zq_5.Delete;
  end;
end;

procedure TfrmControlEmpleados.frmBarra2btnEditClick(Sender: TObject);
begin
  if zq_5.RecordCount > 0 then begin
    if zq_5.FieldValues['lStatus'] <> 'Aplicado' then begin
      frmBarra2.btnEditClick(Sender);
      zq_5.Edit;
      JvFechaT.SetFocus;
    end;
  end;
end;

procedure TfrmControlEmpleados.frmBarra2btnPostClick(Sender: TObject);
begin
  try
    zq_5.FieldValues['lStatus'] := 'Pendiente';
    zq_5.Post;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al actualizar registro', 0);
    end;
  end;
  frmBarra2.btnPostClick(Sender);
end;

procedure TfrmControlEmpleados.frmBarra2btnPrinterClick(Sender: TObject);
begin
  if zq_6.RecordCount > 0 then begin
    frxReport1.LoadFromFile(Global_Files+ global_miReporte +'_listadodepersonalsubidas.fr3') ;
    frxReport1.ShowReport;
  end;
end;

procedure TfrmControlEmpleados.frmBarra3btnAddClick(Sender: TObject);
begin
  frmBarra3.btnAddClick(Sender);
  zq_7.Active := False;
  zq_7.Params.ParamByName('Contrato').DataType := ftString;
  zq_7.Params.ParamByName('Contrato').Value := global_contrato;
  zq_7.Open;
  zq_6.Append;
  zq_6.FieldValues['sContrato'] := global_contrato;
  DBLookUpComboBox2.SetFocus;
end;

procedure TfrmControlEmpleados.frmBarra3btnCancelClick(Sender: TObject);
begin
  frmBarra3.btnCancelClick(Sender);
  zq_6.Cancel;
end;

procedure TfrmControlEmpleados.frmBarra3btnDeleteClick(Sender: TObject);
begin
  if zq_6.RecordCount > 0 then begin
    zq_6.Delete;
  end;
end;

procedure TfrmControlEmpleados.frmBarra3btnEditClick(Sender: TObject);
begin
  frmBarra3.btnEditClick(Sender);
  if zq_6.RecordCount > 0 then begin
    zq_6.Edit;
  end;
end;

procedure TfrmControlEmpleados.frmBarra3btnPostClick(Sender: TObject);
begin
  zq_6.FieldValues['sContrato'] := global_contrato;
  zq_6.FieldValues['iNomina'] := zq_5.FieldValues['iNomina'];
  zq_6.Post;
  if (zq_6.FieldByName('dFechaSubida').AsDateTime <= Now) AND (zq_6.FieldByName('dFechaBajada').AsDateTime >= Now) then begin
    zq_4.Edit;
    zq_4.FieldValues['lStatus'] := 'LABORANDO';
    zq_4.Post;
  end;
  if (zq_6.FieldByName('dFechaSubida').AsDateTime >= Now) OR (zq_6.FieldByName('dFechaBajada').AsDateTime <= Now) then begin
    zq_4.Edit;
    zq_4.FieldValues['lStatus'] := 'DESCANSO';
    zq_4.Post;
  end;
  zq_5.Refresh;
  frmBarra3.btnPostClick(Sender);
end;

procedure TfrmControlEmpleados.frmBarra4btnAddClick(Sender: TObject);
begin
  frmBarra4.btnAddClick(Sender);
  dbEmpleados.Enabled := True ;  
  zq_2.Append;
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select Max(iSolicitud) as iSolicitud From contratacion_solicitud Where sContrato = :Contrato Group By sContrato');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
    zq_2.FieldValues['iSolicitud'] := Connection.QryBusca.FieldValues['iSolicitud'] + 1
  else
    zq_2.FieldValues['iSolicitud'] := 1;
  zq_2.FieldValues['dFecha'] := Date;
  zq_2.FieldValues['sContrato'] := global_contrato;
  jvSolicitud.Enabled := True ;
  JvSolicitud.SetFocus;
  //BotonPermiso.permisosBotones(frmBarra4);
end;

procedure TfrmControlEmpleados.frmBarra4btnCancelClick(Sender: TObject);
begin
  frmBarra4.btnCancelClick(Sender);
  zq_2.Cancel;
end;

procedure TfrmControlEmpleados.frmBarra4btnDeleteClick(Sender: TObject);
begin
  if zq_2.RecordCount > 0 then
  begin
    zq_2.Delete;
  end;
end;

procedure TfrmControlEmpleados.frmBarra4btnEditClick(Sender: TObject);
begin
  //activapop(frmEmpleados, popupprincipal);
  if zq_2.RecordCount > 0 then begin
    frmBarra4.btnEditClick(Sender);
    zq_2.Edit;
    JvSolicitud.SetFocus;
  end;
  //BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmControlEmpleados.frmBarra4btnPostClick(Sender: TObject);
begin
  try
    zq_2.FieldValues['lStatus'] := 'Pendiente';
    zq_2.Post;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al salvar registro', 0);
    end;
  end;
  frmBarra4.btnPostClick(Sender);
end;

procedure TfrmControlEmpleados.frmBarra4btnPrinterClick(Sender: TObject);
begin
  if zq_3.RecordCount > 0 then begin
    frxReport1.LoadFromFile(Global_Files+'listadodepersonalsolicitudes.fr3') ;
    frxReport1.ShowReport;
  end;
end;

procedure TfrmControlEmpleados.frmBarra5btnAddClick(Sender: TObject);
begin
  zq_categoria.Active := False;
  zq_categoria.Params.ParamByName('Contrato').DataType := ftString;
  zq_categoria.Params.ParamByName('Contrato').Value := global_contrato;
  zq_Categoria.Open;
  Jvstatus.Enabled := True ;
  zq_1.Append;
  zq_1.FieldValues['sContrato'] := global_contrato;
  jvFicha.SetFocus ;
  frmBarra5.btnAddClick(Sender);
end;

procedure TfrmControlEmpleados.frmBarra5btnCancelClick(Sender: TObject);
begin
  frmBarra5.btnCancelClick(Sender);
  zq_1.Cancel;
end;

procedure TfrmControlEmpleados.frmBarra5btnDeleteClick(Sender: TObject);
begin
  zq_1.Delete;
end;

procedure TfrmControlEmpleados.frmBarra5btnEditClick(Sender: TObject);
begin
  frmBarra5.btnEditClick(Sender);
  if zq_1.RecordCount > 0 then begin
    zq_1.Edit;
  end;
end;

procedure TfrmControlEmpleados.frmBarra5btnPostClick(Sender: TObject);
begin
  if zq_1.FieldByName('sDomicilio').IsNull Then zq_1.FieldValues['sDomicilio'] := 'SIN DOMICILIO' ;
  if zq_1.FieldByName('sCiudad').IsNull Then zq_1.FieldValues['sCiudad'] := '*' ;
  if zq_1.FieldByName('sTelefono').IsNull Then zq_1.FieldValues['sTelefono'] := '*' ;
  if zq_1.FieldByName('sCurp').IsNull Then zq_1.FieldValues['sCurp'] := '*' ;
  if zq_1.FieldByName('sRfc').IsNull Then zq_1.FieldValues['sRfc'] := '*' ;
  if zq_1.FieldByName('sImss').IsNull Then zq_1.FieldValues['sImss'] := '*' ;
  zq_1.Post;
  frmBarra5.btnPostClick(Sender);
end;

procedure TfrmControlEmpleados.frmBarra5btnPrinterClick(Sender: TObject);
begin
    frxReport1.LoadFromFile(Global_Files+global_miReporte+'_Empleados.fr3') ;
    frxReport1.ShowReport;
end;

procedure TfrmControlEmpleados.jvCiudadKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      jvTelefono.SetFocus
end;

procedure TfrmControlEmpleados.JvCurpKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      jvRfc.SetFocus
end;

procedure TfrmControlEmpleados.jvDomicilioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
      jvCiudad.SetFocus
end;

procedure TfrmControlEmpleados.JvTelefonoChange(Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(JvTelefono.Text) ))>0  then
        JvTelefono.Text:=intToStr((strToInt(JvTelefono.text))*-1);
end;

procedure TfrmControlEmpleados.JvTelefonoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not keyFiltroTdbedit(JvTelefono,key) then
      key:=#0;
    if key = #13 then
      jvCurp.SetFocus
end;

procedure TfrmControlEmpleados.jvSolicitudChange(Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(JvSolicitud.Text) ))>0  then
        JvSolicitud.Text:=intToStr((strToInt(JvSolicitud.text))*-1);
end;

procedure TfrmControlEmpleados.jvSolicitudKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not keyFiltroTdbedit(JvSolicitud,key) then
      key:=#0;
end;

procedure TfrmControlEmpleados.JvFechaTChange(Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(JvFechat.Text) ))>0  then
        JvFechat.Text:=intToStr((strToInt(JvFechat.text))*-1);
end;

procedure TfrmControlEmpleados.JvFechaTKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not keyFiltroTdbedit(JvFechat,key) then
      key:=#0;
end;

procedure TfrmControlEmpleados.JvDotNetDBEdit6Change(Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(JvDotNetDBEdit6.Text) ))>0  then
        JvDotNetDBEdit6.Text:=intToStr((strToInt(JvDotNetDBEdit6.text))*-1);
end;

procedure TfrmControlEmpleados.JvDotNetDBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
      if not keyFiltroTdbedit(JvDotNetDBEdit6,key) then
      key:=#0;
end;

procedure TfrmControlEmpleados.JvDotNetDBEdit7Change(Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(JvDotNetDBEdit7.Text) ))>0  then
        JvDotNetDBEdit7.Text:=intToStr((strToInt(JvDotNetDBEdit7.text))*-1);
end;

procedure TfrmControlEmpleados.JvDotNetDBEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
    if not keyFiltroTdbedit(JvDotNetDBEdit7,key) then
      key:=#0;
end;

procedure TfrmControlEmpleados.jvFichaChange(Sender: TObject);
begin
        if (AnsiPos( '-',vartostr(JvFicha.Text) ))>0  then
          JvFicha.Text:=intToStr((strToInt(JvFicha.text))*-1);
end;

procedure TfrmControlEmpleados.jvFichaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not keyFiltroTdbedit(JvFicha,key) then
      key:=#0;
    if key = #13 then
      jvStatus.SetFocus

end;


procedure TfrmControlEmpleados.jvNombreKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      jvDomicilio.SetFocus
end;

procedure TfrmControlEmpleados.jvRfcKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
      jvImss.SetFocus
end;

procedure TfrmControlEmpleados.zq_1AfterScroll(DataSet: TDataSet);
begin
  zq_8.Active := False;
  zq_8.Params.ParamByName('Contrato').DataType := ftString;
  zq_8.Params.ParamByName('Contrato').Value := global_contrato;
  zq_8.Params.ParamByName('idEmpleado').DataType := ftString;
  zq_8.Params.ParamByName('idEmpleado').Value := zq_1.FieldValues['sIdEmpleado'];
  zq_8.Open;
end;

procedure TfrmControlEmpleados.zq_2AfterScroll(DataSet: TDataSet);
begin
  zq_x1.Active := False;
  zq_x1.Params.ParamByName('Contrato').DataType := ftString;
  zq_x1.Params.ParamByName('Contrato').Value := global_contrato;
  zq_x1.Open;
  if zq_2.RecordCount > 0 then
  begin
    zq_3.Active := False;
    zq_3.Params.ParamByName('Contrato').DataType := ftString;
    zq_3.Params.ParamByName('Contrato').Value := global_contrato;
    zq_3.Params.ParamByName('Solicitud').DataType := ftInteger;
    zq_3.Params.ParamByName('Solicitud').Value := zq_2.FieldValues['iSolicitud'];
    zq_3.Open;
  end
  else
  begin
    zq_3.Active := False;
    zq_3.Params.ParamByName('Contrato').DataType := ftString;
    zq_3.Params.ParamByName('Contrato').Value := global_contrato;
    zq_3.Params.ParamByName('Solicitud').DataType := ftInteger;
    zq_3.Params.ParamByName('Solicitud').Value := 0;
    zq_3.Open;
  end
end;

procedure TfrmControlEmpleados.zq_5AfterScroll(DataSet: TDataSet);
begin
  zq_x1.Active := False;
  zq_x1.Params.ParamByName('Contrato').DataType := ftString;
  zq_x1.Params.ParamByName('Contrato').Value := global_contrato;
  zq_x1.Open;
  if zq_5.RecordCount > 0 then
  begin
    zq_6.Active := False;
    zq_6.Params.ParamByName('Contrato').DataType := ftString;
    zq_6.Params.ParamByName('Contrato').Value := global_contrato;
    zq_6.Params.ParamByName('Nomina').DataType := ftInteger;
    zq_6.Params.ParamByName('Nomina').Value := zq_5.FieldValues['iNomina'];
    zq_6.Open;
  end
  else
  begin
    zq_6.Active := False;
    zq_6.Params.ParamByName('Contrato').DataType := ftString;
    zq_6.Params.ParamByName('Contrato').Value := global_contrato;
    zq_6.Params.ParamByName('Nomina').DataType := ftInteger;
    zq_6.Params.ParamByName('Nomina').Value := 0;
    zq_6.Open;
  end
end;

end.
