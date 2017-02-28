unit frm_empleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  RXDBCtrl, RxLookup, frxClass, frxDBSet, ImgList, Buttons,
  RxMemDS, ZAbstractRODataset, ZDataset, ZAbstractDataset, rxToolEdit,
  udbgrid, unitexcepciones, UnitTBotonesPermisos, UnitValidaTexto,
  unitactivapop, UFunctionsGHH;

type
  TfrmEmpleados = class(TForm)
    ds_empleados: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_Personal: TDataSource;
    ds_HistoricoEmpleados: TDataSource;
    dsEmpleados: TfrxDBDataset;
    Panel: TImageList;
    gpEmpleados: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    frmBarra1: TfrmBarra;
    grid_empleados: TRxDBGrid;
    tsIdEmpleado: TDBEdit;
    tsNombre: TDBEdit;
    tsDomicilio: TDBEdit;
    tsCiudad: TDBEdit;
    tsTelefono: TDBEdit;
    tsCurp: TDBEdit;
    tsRFC: TDBEdit;
    tsIMSS: TDBEdit;
    tsIdPersonal: TRxDBLookupCombo;
    gpBajada: TGroupBox;
    ds_nominaempleados: TDataSource;
    ds_Nomina: TDataSource;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    N5: TMenuItem;
    AdicionartodoelPersonalexistente1: TMenuItem;
    ValidarNomina1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    Grid_Nomina: TRxDBGrid;
    frmBarra3: TfrmBarra;
    btnValida: TBitBtn;
    btnAbre: TBitBtn;
    gpSubida: TGroupBox;
    Grid_Solicitud: TRxDBGrid;
    frmBarra4: TfrmBarra;
    btnValidaSolicitud: TBitBtn;
    btnAbreSolicitud: TBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    tiNomina: TDBEdit;
    tmComentarios: TDBMemo;
    tdFechaInicio: TDBDateEdit;
    tdFechaFinal: TDBDateEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    tiSolicitud: TDBEdit;
    tmComentariosSolicitud: TDBMemo;
    tdFechaSolicitud: TDBDateEdit;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Grid_NominaEmpleados: TRxDBGrid;
    tmComentario: TDBMemo;
    frmBarra2: TfrmBarra;
    tsIdEmpleadoBaja: TRxDBLookupCombo;
    tiHorasExtras: TDBEdit;
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    Label20: TLabel;
    RxDBGrid3: TRxDBGrid;
    frmBarra5: TfrmBarra;
    tsIdEmpleadoDescansando: TRxDBLookupCombo;
    ds_Solicitud: TDataSource;
    ds_Solicitud_Empleados: TDataSource;
    GroupBox2: TGroupBox;
    RxDBGrid2: TRxDBGrid;
    tlStatus: TDBComboBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    rxNomina: TRxMemoryData;
    rxNominasContrato: TStringField;
    rxNominasIdEmpleado: TStringField;
    rxNominasNombre: TStringField;
    dbNomina: TfrxDBDataset;
    rxNominadFecha: TDateField;
    rxNominasCategoria: TStringField;
    rxNominadFechaSubida: TDateField;
    rxNominadFechaBajada: TDateField;
    rxNominaiDiasLaborado: TIntegerField;
    rxNominadFechaHE: TDateField;
    rxNominaiHoraExtra: TFloatField;
    rxNominamObservacionesEmpleado: TMemoField;
    rxNominamObservaciones: TMemoField;
    tdFechaSubida: TDBDateEdit;
    Label24: TLabel;
    Label25: TLabel;
    gbHorasExtras: TGroupBox;
    rxHorasExtras: TRxDBGrid;
    ds_HorasExtras: TDataSource;
    Label26: TLabel;
    tiDias: TDBEdit;
    tdFechaBajada: TDBDateEdit;
    rxNominaiTotalHE: TFloatField;
    ds_QryEmpleadosDescanso: TDataSource;
    ds_QryEmpleadosLaborando: TDataSource;
    rptEmpleados: TfrxReport;
    frxNomina: TfrxReport;
    Historico_Empleados: TZReadOnlyQuery;
    QryEmpleadosDescanso: TZReadOnlyQuery;
    qryEmpleadosLaborando: TZReadOnlyQuery;
    Personal: TZReadOnlyQuery;
    qryEmpleados: TZReadOnlyQuery;
    Solicitud: TZReadOnlyQuery;
    nomina_Empleados: TZReadOnlyQuery;
    Solicitud_Empleados: TZReadOnlyQuery;
    HorasExtras: TZReadOnlyQuery;
    qryHE: TZReadOnlyQuery;
    nomina_EmpleadossContrato: TStringField;
    nomina_EmpleadosiNomina: TIntegerField;
    nomina_EmpleadossIdEmpleado: TStringField;
    nomina_EmpleadosdFechaSubida: TDateField;
    nomina_EmpleadosdFechaBajada: TDateField;
    nomina_EmpleadosiDias: TIntegerField;
    nomina_EmpleadosiHorasExtras: TFloatField;
    nomina_EmpleadosmComentarios: TMemoField;
    nomina_EmpleadossCategoria: TStringField;
    nomina_EmpleadossNombre: TStringField;
    Solicitud_EmpleadossContrato: TStringField;
    Solicitud_EmpleadosiSolicitud: TIntegerField;
    Solicitud_EmpleadossIdEmpleado: TStringField;
    Solicitud_EmpleadossNombre: TStringField;
    Solicitud_EmpleadossCategoria: TStringField;
    Nomina: TZQuery;
    empleados: TZQuery;
    SolicitudsContrato: TStringField;
    SolicitudiSolicitud: TIntegerField;
    SolicituddFecha: TDateField;
    SolicitudmComentarios: TMemoField;
    SolicitudlStatus: TStringField;
    Solicitud1: TZQuery;
    Solicitud1sContrato: TStringField;
    Solicitud1iSolicitud: TIntegerField;
    Solicitud1dFecha: TDateField;
    Solicitud1mComentarios: TMemoField;
    Solicitud1lStatus: TStringField;
    empleadossContrato: TStringField;
    empleadossIdEmpleado: TStringField;
    empleadossNombre: TStringField;
    empleadossDomicilio: TStringField;
    empleadossCiudad: TStringField;
    empleadossTelefono: TStringField;
    empleadossCurp: TStringField;
    empleadossRfc: TStringField;
    empleadossImss: TStringField;
    empleadossIdPersonal: TStringField;
    empleadoslStatus: TStringField;
    PanelPrincipal: TListView;
    procedure ActualizaFirmas(dFecha: TDateTime);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
    procedure grid_empleadosEnter(Sender: TObject);
    procedure tsIdEmpleadoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure tsDomicilioKeyPress(Sender: TObject; var Key: Char);
    procedure tsCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure tsCurpKeyPress(Sender: TObject; var Key: Char);
    procedure tsRFCKeyPress(Sender: TObject; var Key: Char);
    procedure tsImssKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdEmpleadoEnter(Sender: TObject);
    procedure tsIdEmpleadoExit(Sender: TObject);
    procedure tsNombreEnter(Sender: TObject);
    procedure tsNombreExit(Sender: TObject);
    procedure tsDomicilioEnter(Sender: TObject);
    procedure tsDomicilioExit(Sender: TObject);
    procedure tsCiudadEnter(Sender: TObject);
    procedure tsCiudadExit(Sender: TObject);
    procedure tsTelefonoEnter(Sender: TObject);
    procedure tsTelefonoExit(Sender: TObject);
    procedure tsCurpEnter(Sender: TObject);
    procedure tsCurpExit(Sender: TObject);
    procedure tsRFCEnter(Sender: TObject);
    procedure tsRFCExit(Sender: TObject);
    procedure tsImssEnter(Sender: TObject);
    procedure tsImssExit(Sender: TObject);
    procedure grid_empleadosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure grid_empleadosGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure tsIdPersonalEnter(Sender: TObject);
    procedure tsIdPersonalExit(Sender: TObject);
    procedure Grid_HistoricoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure Grid_HistoricoGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure PanelPrincipal1Click(Sender: TObject);
    procedure frmBarra3btnAddClick(Sender: TObject);
    procedure frmBarra3btnEditClick(Sender: TObject);
    procedure frmBarra3btnPostClick(Sender: TObject);
    procedure frmBarra3btnCancelClick(Sender: TObject);
    procedure frmBarra3btnDeleteClick(Sender: TObject);
    procedure NominaAfterScroll(DataSet: TDataSet);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure tsIdEmpleadoBajaEnter(Sender: TObject);
    procedure tsIdEmpleadoBajaExit(Sender: TObject);
    procedure tsIdEmpleadoBajaKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentarioEnter(Sender: TObject);
    procedure tmComentarioExit(Sender: TObject);
    procedure nomina_empleadosCalcFields(DataSet: TDataSet);
    procedure btnValidaClick(Sender: TObject);
    procedure btnAbreClick(Sender: TObject);
    procedure tiHorasExtrasEnter(Sender: TObject);
    procedure tiHorasExtrasExit(Sender: TObject);
    procedure tiHorasExtrasKeyPress(Sender: TObject; var Key: Char);
    procedure tiSolicitudEnter(Sender: TObject);
    procedure tiSolicitudExit(Sender: TObject);
    procedure tiSolicitudKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaSolicitudEnter(Sender: TObject);
    procedure tdFechaSolicitudExit(Sender: TObject);
    procedure tdFechaSolicitudKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosSolicitudEnter(Sender: TObject);
    procedure tmComentariosSolicitudExit(Sender: TObject);
    procedure frmBarra4btnAddClick(Sender: TObject);
    procedure frmBarra4btnEditClick(Sender: TObject);
    procedure frmBarra4btnPostClick(Sender: TObject);
    procedure frmBarra4btnCancelClick(Sender: TObject);
    procedure frmBarra4btnDeleteClick(Sender: TObject);
    procedure btnValidaSolicitudClick(Sender: TObject);
    procedure btnAbreSolicitudClick(Sender: TObject);
    procedure frmBarra5btnAddClick(Sender: TObject);
    procedure frmBarra5btnEditClick(Sender: TObject);
    procedure frmBarra5btnPostClick(Sender: TObject);
    procedure frmBarra5btnCancelClick(Sender: TObject);
    procedure frmBarra5btnDeleteClick(Sender: TObject);
    procedure tsIdEmpleadoDescansandoEnter(Sender: TObject);
    procedure tsIdEmpleadoDescansandoExit(Sender: TObject);
    procedure tsIdEmpleadoDescansandoKeyPress(Sender: TObject;
      var Key: Char);
    procedure tiNominaEnter(Sender: TObject);
    procedure tiNominaExit(Sender: TObject);
    procedure tiNominaKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure EmpleadosAfterScroll(DataSet: TDataSet);
    procedure Solicitud_EmpleadosCalcFields(DataSet: TDataSet);
    procedure SolicitudAfterScroll(DataSet: TDataSet);
    procedure Grid_NominaEnter(Sender: TObject);
    procedure Grid_SolicitudEnter(Sender: TObject);
    procedure tlStatusEnter(Sender: TObject);
    procedure tlStatusExit(Sender: TObject);
    procedure tlStatusKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdEmpleadoBajaChange(Sender: TObject);
    procedure Grid_Subida(Sender: TObject);
    procedure Grid_NominaEmpleadosEnter(Sender: TObject);
    procedure Grid_SolicitudGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_NominaGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure frmBarra3btnPrinterClick(Sender: TObject);
    procedure tdFechaSubidaEnter(Sender: TObject);
    procedure tdFechaSubidaExit(Sender: TObject);
    procedure tdFechaSubidaKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaBajadaKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaBajadaEnter(Sender: TObject);
    procedure tdFechaBajadaExit(Sender: TObject);
    procedure tiDiasEnter(Sender: TObject);
    procedure tiDiasExit(Sender: TObject);
    procedure tiDiasKeyPress(Sender: TObject; var Key: Char);
    procedure HorasExtrasAfterInsert(DataSet: TDataSet);
    procedure nomina_empleadosAfterScroll(DataSet: TDataSet);
    procedure frxNominaGetValue(const VarName: string; var Value: Variant);
    procedure grid_empleadosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_empleadosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_empleadosTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpleados: TfrmEmpleados;
  sSuperintendente,
    sPuestoSuperintendente: string;
  sControl_Obra,
    sPuestoControl_Obra: string;
    utgrid:ticdbgrid;
    //utgrid2:ticdbgrid;
    BotonPermiso: TBotonesPermisos;

implementation

{$R *.dfm}

procedure TfrmEmpleados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  utgrid.Destroy;
  //utgrid2.Destroy;
  BotonPermiso.Free;
end;

procedure TfrmEmpleados.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'mnuPersonal2', PopupPrincipal);
   UtGrid:=TicdbGrid.create(grid_empleados);
  //UtGrid2:=TicdbGrid.create(rxdbgrid3);
  OpcButton := '';
  frmbarra1.btnCancel.Click;
  gpEmpleados.Visible := True;
  gpBajada.Visible := False;
  gpSubida.Visible := False;

  try
   PanelPrincipal.Items[0].Selected := True;
  except
  end;

  Empleados.Active := False;
  Empleados.Params.ParamByName('Contrato').DataType := ftString;
  Empleados.Params.ParamByName('Contrato').Value := global_contrato;
  Empleados.Params.ParamByName('Ordenado').DataType := ftString;
  Empleados.Params.ParamByName('Ordenado').Value := 'sIdEmpleado';
  Empleados.Open;

  QryEmpleadosDescanso.Active := False;
  QryEmpleadosDescanso.Params.ParamByName('Contrato').DataType := ftString;
  QryEmpleadosDescanso.Params.ParamByName('Contrato').Value := global_contrato;
  QryEmpleadosDescanso.Open;

  QryEmpleadosLaborando.Active := False;
  QryEmpleadosLaborando.Params.ParamByName('Contrato').DataType := ftString;
  QryEmpleadosLaborando.Params.ParamByName('Contrato').Value := global_contrato;
  QryEmpleadosLaborando.Open;

  Personal.Active := False;
  Personal.Params.ParamByName('Contrato').DataType := ftString;
  Personal.Params.ParamByName('Contrato').Value := global_contrato;
  Personal.Open;

  Nomina.Active := False;
  Nomina.Params.ParamByName('Contrato').DataType := ftString;
  Nomina.Params.ParamByName('Contrato').Value := global_contrato;
  Nomina.Open;

  Solicitud.Active := False;
  Solicitud.Params.ParamByName('Contrato').DataType := ftString;
  Solicitud.Params.ParamByName('Contrato').Value := global_contrato;
  Solicitud.Open;
  BotonPermiso.permisosBotones(frmBarra4);
  BotonPermiso.permisosBotones(frmBarra5);
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEmpleados.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsDomicilio.SetFocus
end;

procedure TfrmEmpleados.frmBarra1btnAddClick(Sender: TObject);
begin
  activapop(frmEmpleados, popupprincipal);
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;
  Empleados.Append;
  Empleados.FieldValues['sContrato'] := global_contrato;
  tsIdEmpleado.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEmpleados.frmBarra1btnEditClick(Sender: TObject);
begin
  activapop(frmEmpleados, popupprincipal);
  if Empleados.RecordCount > 0 then
  begin
    frmBarra1.btnEditClick(Sender);
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    Salir1.Enabled := False;
    Empleados.Edit;
    tsIdEmpleado.SetFocus
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEmpleados.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Status');nombres.Add('Nombre Completo');nombres.Add('Categoria');
  cadenas.Add(tlStatus.Text);cadenas.Add(tsNombre.Text);cadenas.Add(tsIdPersonal.Text);
  if not validaTexto(nombres, cadenas, 'No. Ficha', tsIdEmpleado.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  try
    If tsDomicilio.Text = '' then
       tsDomicilio.Text := '*' ;
    If tsCiudad.Text = '' then
       tsCiudad.Text := '*' ;
    If tsTelefono.Text = '' then
       tsTelefono.Text := '*' ;
    If tsCurp.Text = '' then
       tsCurp.Text := '*' ;
    If tsRfc.Text = '' then
       tsRfc.Text := '*' ;
    If tsImss.Text = '' then
       tsImss.Text := '*' ;
    desactivapop(popupprincipal);
    Empleados.Post;


    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    Salir1.Enabled := True;
    frmBarra1.btnPostClick(Sender);
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al actualizar registro', 0);
        frmbarra1.btnCancel.Click;
    end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEmpleados.frmBarra1btnCancelClick(Sender: TObject);
begin
  desactivapop(popupprincipal);
  Empleados.Cancel;
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEmpleados.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if Empleados.RecordCount > 0 then
  begin
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select * From historico_empleados Where sContrato = :Contrato And sIdEmpleado = :Empleado');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Empleado').Value := Empleados.FieldValues['sIdEmpleado'];
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount = 0 then
      if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try
          Empleados.Delete;
        except
          on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al eliminar registro', 0);
          end;
        end
      end
  end
end;

procedure TfrmEmpleados.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Empleados.Refresh;
end;

procedure TfrmEmpleados.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  Close
end;

procedure TfrmEmpleados.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmEmpleados.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmEmpleados.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmEmpleados.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmEmpleados.Copy1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmEmpleados.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmEmpleados.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmEmpleados.grid_empleadosEnter(Sender: TObject);
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmbarra1.btnCancel.Click
end;

procedure TfrmEmpleados.tsIdEmpleadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsNombre.SetFocus
end;

procedure TfrmEmpleados.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIdPersonal.SetFocus
end;

procedure TfrmEmpleados.tsDomicilioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsCiudad.SetFocus
end;

procedure TfrmEmpleados.tsCiudadKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsTelefono.SetFocus
end;

procedure TfrmEmpleados.tsTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsCurp.SetFocus
end;

procedure TfrmEmpleados.tsCurpKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsRfc.SetFocus
end;

procedure TfrmEmpleados.tsRFCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsImss.SetFocus
end;

procedure TfrmEmpleados.tsImssKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIdEmpleado.SetFocus
end;

procedure TfrmEmpleados.tsIdEmpleadoEnter(Sender: TObject);
begin
  tsIdEmpleado.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsIdEmpleadoExit(Sender: TObject);
begin
  tsIdEmpleado.Color := global_color_salida
end;

procedure TfrmEmpleados.tsNombreEnter(Sender: TObject);
begin
  tsNombre.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsNombreExit(Sender: TObject);
begin
  tsNombre.Color := global_color_salida
end;

procedure TfrmEmpleados.tsDomicilioEnter(Sender: TObject);
begin
  tsDomicilio.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsDomicilioExit(Sender: TObject);
begin
  tsDomicilio.Color := global_color_salida
end;

procedure TfrmEmpleados.tsCiudadEnter(Sender: TObject);
begin
  tsCiudad.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsCiudadExit(Sender: TObject);
begin
  tsCiudad.Color := global_color_salida
end;

procedure TfrmEmpleados.tsTelefonoEnter(Sender: TObject);
begin
  tsTelefono.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsTelefonoExit(Sender: TObject);
begin
  tsTelefono.Color := global_color_salida
end;

procedure TfrmEmpleados.tsCurpEnter(Sender: TObject);
begin
  tsCurp.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsCurpExit(Sender: TObject);
begin
  tsCurp.Color := global_color_salida
end;

procedure TfrmEmpleados.tsRFCEnter(Sender: TObject);
begin
  tsRFC.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsRFCExit(Sender: TObject);
begin
  tsRFC.Color := global_color_salida
end;

procedure TfrmEmpleados.tsImssEnter(Sender: TObject);
begin
  tsImss.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsImssExit(Sender: TObject);
begin
  tsImss.Color := global_color_salida
end;

procedure TfrmEmpleados.grid_empleadosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var
  sCampo: string;
begin
  sCampo := Field.FieldName;
  Empleados.Active := False;
  Empleados.Params.ParamByName('Contrato').DataType := ftString;
  Empleados.Params.ParamByName('Contrato').Value := global_contrato;
  Empleados.Params.ParamByName('Ordenado').DataType := ftString;
  Empleados.Params.ParamByName('Ordenado').Value := sCampo;
  Empleados.Open;
end;

procedure TfrmEmpleados.grid_empleadosTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEmpleados.grid_empleadosGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'BAJA' then
    AFont.Color := clRed
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'LABORANDO' then
      AFont.Color := clBlue
end;

procedure TfrmEmpleados.grid_empleadosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEmpleados.grid_empleadosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEmpleados.tsIdPersonalEnter(Sender: TObject);
begin
  tsIdPersonal.Color := global_color_Entrada
end;

procedure TfrmEmpleados.tsIdPersonalExit(Sender: TObject);
begin
  tsIdPersonal.Color := global_color_salida
end;

procedure TfrmEmpleados.Grid_HistoricoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var
  sCampo: string;
begin
  sCampo := Field.FieldName;
  Historico_Empleados.Active := False;
  Historico_Empleados.Params.ParamByName('Contrato').DataType := ftString;
  Historico_Empleados.Params.ParamByName('Contrato').Value := global_contrato;
  Historico_Empleados.Params.ParamByName('Empleado').DataType := ftString;
  Historico_Empleados.Params.ParamByName('Empleado').Value := Empleados.FieldValues['sIdEmpleado'];
  Historico_Empleados.Params.ParamByName('Ordenado').DataType := ftString;
  Historico_Empleados.Params.ParamByName('Ordenado').Value := sCampo;
  Historico_Empleados.Open;
end;

procedure TfrmEmpleados.Grid_HistoricoGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdTipo').AsString = 'BAJA DEFINITIVA' then
    AFont.Color := clRed
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdTipo').AsString = 'INICIO DE GUARDIA' then
      AFont.Color := clBlue
    else
      if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdTipo').AsString = 'TERMINO DE GUARDIA' then
        AFont.Color := clBlack
end;

procedure TfrmEmpleados.frmBarra1btnPrinterClick(Sender: TObject);
begin
  QryEmpleados.Active := False;
  QryEmpleados.Params.ParamByName('Contrato').DataType := ftString;
  QryEmpleados.Params.ParamByName('Contrato').Value := global_contrato;
  QryEmpleados.Open;
  if QryEmpleados.RecordCount > 0 then  
    rptEmpleados.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
  else
    ShowMessage('No existen registros para imprimir');
end;

procedure TfrmEmpleados.PanelPrincipal1Click(Sender: TObject);
begin
  if PanelPrincipal.ItemIndex = 0 then
  begin
    gpEmpleados.Visible := True;
    gpBajada.Visible := False;
    gpSubida.Visible := False;
  end;

  if PanelPrincipal.ItemIndex = 1 then
  begin
    gpEmpleados.Visible := False;
    gpBajada.Visible := False;
    gpSubida.Visible := True;
  end;

  if PanelPrincipal.ItemIndex = 2 then
  begin
    gpEmpleados.Visible := False;
    gpBajada.Visible := True;
    gpSubida.Visible := False;
  end;

end;

procedure TfrmEmpleados.Paste1Click(Sender: TObject);
begin
 try
  UtGrid.AddRowsFromClip;
 except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Control de personal', 'Al agregar registro', 0);
end;
 end;
end;

procedure TfrmEmpleados.frmBarra3btnAddClick(Sender: TObject);
begin
  frmBarra3.btnAddClick(Sender);
  Nomina.Append;
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select Max(iNomina) as iNomina, Max(dFechaFinal) as dFechaFinal From nomina Where sContrato = :Contrato Group By sContrato');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
  begin
    Nomina.FieldValues['iNomina'] := Connection.QryBusca.FieldValues['iNomina'] + 1;
    Nomina.FieldValues['dFechaInicio'] := Connection.QryBusca.FieldValues['dFechaFinal'];
    Nomina.FieldValues['dFechaFinal'] := Connection.QryBusca.FieldValues['dFechaFinal'] + 14
  end
  else
  begin
    Nomina.FieldValues['iNomina'] := 1;
    Nomina.FieldValues['dFechaInicio'] := Date;
    Nomina.FieldValues['dFechaFinal'] := Date;
  end;
  Nomina.FieldValues['sContrato'] := global_contrato;
  tiNomina.SetFocus;
end;

procedure TfrmEmpleados.frmBarra3btnEditClick(Sender: TObject);
begin
  if Nomina.RecordCount > 0 then
    if Nomina.FieldValues['lStatus'] <> 'Aplicado' then
    begin
      frmBarra3.btnEditClick(Sender);
      Nomina.Edit;
      tiNomina.SetFocus;
    end
end;

procedure TfrmEmpleados.frmBarra3btnPostClick(Sender: TObject);
begin
  try
    Nomina.FieldValues['lStatus'] := 'Pendiente';
    Nomina.Post;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al actualizar registro', 0);
    end;
  end;
  frmBarra3.btnCancelClick(Sender);
end;

procedure TfrmEmpleados.frmBarra3btnCancelClick(Sender: TObject);
begin
  Nomina_Empleados.Cancel;
  Nomina.Cancel;
  frmBarra3.btnCancelClick(Sender);
end;

procedure TfrmEmpleados.frmBarra3btnDeleteClick(Sender: TObject);
begin
  if Nomina.RecordCount > 0 then
    if Nomina.FieldValues['lStatus'] <> 'Aplicado' then
    begin
      try
        connection.Zcommand.SQL.Add('Delete From nomina_empleados Where sContrato = :Contrato And iNomina = :Nomina');
        connection.Zcommand.Params.ParamByName('contrato').DataType := ftString;
        connection.Zcommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.Zcommand.Params.ParamByName('Nomina').DataType := ftInteger;
        connection.Zcommand.Params.ParamByName('Nomina').value := Nomina.FieldValues['iNomina'];
        connection.Zcommand.Open;
        Nomina.Delete;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmEmpleados.NominaAfterScroll(DataSet: TDataSet);
begin
  if Nomina.RecordCount > 0 then
  begin
    Nomina_Empleados.Active := False;
    Nomina_Empleados.Params.ParamByName('Contrato').DataType := ftString;
    Nomina_Empleados.Params.ParamByName('Contrato').Value := global_contrato;
    Nomina_Empleados.Params.ParamByName('Nomina').DataType := ftInteger;
    Nomina_Empleados.Params.ParamByName('Nomina').Value := Nomina.FieldValues['iNomina'];
    Nomina_Empleados.Open;
  end
  else
  begin
    Nomina_Empleados.Active := False;
    Nomina_Empleados.Params.ParamByName('Contrato').DataType := ftString;
    Nomina_Empleados.Params.ParamByName('Contrato').Value := global_contrato;
    Nomina_Empleados.Params.ParamByName('Nomina').DataType := ftInteger;
    Nomina_Empleados.Params.ParamByName('Nomina').Value := 0;
    Nomina_Empleados.Open;
  end
end;

procedure TfrmEmpleados.frmBarra2btnAddClick(Sender: TObject);
begin
  if Nomina.RecordCount > 0 then
    if Nomina.FieldValues['lStatus'] <> 'Aplicado' then
    begin
      frmBarra2.btnAddClick(Sender);
      QryEmpleadosLaborando.Refresh;
      Nomina.Cancel;
      Nomina_Empleados.Append;
      tsIdEmpleadoBaja.SetFocus
    end
end;

procedure TfrmEmpleados.frmBarra2btnEditClick(Sender: TObject);
begin
  if Nomina.RecordCount > 0 then
    if Nomina.FieldValues['lStatus'] <> 'Aplicado' then
    begin
      frmBarra2.btnEditClick(Sender);
      QryEmpleadosLaborando.Refresh;
      Nomina_Empleados.Edit
    end
end;

procedure TfrmEmpleados.frmBarra2btnPostClick(Sender: TObject);
var
  iPosicion: Integer;
begin
  if Empleados.FieldValues['lStatus'] = 'LABORANDO' then
  begin
    Nomina_Empleados.FieldValues['sContrato'] := global_contrato;
    Nomina_Empleados.FieldValues['iNomina'] := Nomina.FieldValues['iNomina'];
    Nomina_Empleados.Post;
    iPosicion := Empleados.RecNo;
    Empleados.Refresh;
    Empleados.RecNo := iPosicion;
    frmBarra2.btnPostClick(Sender);
  end;
end;

procedure TfrmEmpleados.frmBarra2btnCancelClick(Sender: TObject);
begin
  Nomina_Empleados.Cancel;
  frmBarra2.btnCancelClick(Sender);
end;

procedure TfrmEmpleados.frmBarra2btnDeleteClick(Sender: TObject);
begin
  if Nomina.FieldValues['lStatus'] = 'Pendiente' then
    if Nomina_Empleados.RecordCount > 0 then
    begin
      QryEmpleadosLaborando.Refresh;
      Nomina_Empleados.Delete
    end
end;

procedure TfrmEmpleados.frmBarra2btnRefreshClick(Sender: TObject);
begin
  Nomina_Empleados.Refresh
end;

procedure TfrmEmpleados.tsIdEmpleadoBajaEnter(Sender: TObject);
begin
  tsIdEmpleadoBaja.Color := global_color_entrada
end;

procedure TfrmEmpleados.tsIdEmpleadoBajaExit(Sender: TObject);
begin
  tsIdEmpleadoBaja.Color := global_color_salida
end;

procedure TfrmEmpleados.tsIdEmpleadoBajaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdFechasubida.SetFocus
end;

procedure TfrmEmpleados.tmComentarioEnter(Sender: TObject);
begin
  tmComentario.Color := global_color_entrada
end;

procedure TfrmEmpleados.tmComentarioExit(Sender: TObject);
begin
  tmComentario.Color := global_color_salida
end;

procedure TfrmEmpleados.nomina_empleadosCalcFields(DataSet: TDataSet);
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select p.sDescripcion, e.sNombre from personal p INNER JOIN empleados e ON (p.sContrato = e.sContrato And p.sIdPersonal = e.sIdPersonal And e.sIdEmpleado = :Empleado) ' +
    'where p.sContrato = :Contrato');
  connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Empleado').Value := nomina_empleadossIdEmpleado.Text;
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then
  begin
    nomina_empleadossNombre.Text := connection.QryBusca.FieldValues['sNombre'];
    nomina_empleadossCategoria.Text := connection.QryBusca.FieldValues['sDescripcion'];
  end
end;

procedure TfrmEmpleados.btnValidaClick(Sender: TObject);
begin
  if Nomina.FieldValues['lStatus'] <> 'Aplicado' then
  begin
    Nomina_Empleados.First;
    try
      while not Nomina_Empleados.Eof do
      begin
        connection.Zcommand.SQL.Add('INSERT INTO historico_empleados (sContrato, sIdEmpleado, dIdFecha, sIdTipo, iJornada) ' +
          'VALUES (:Contrato, :Empleado, :Fecha, :Tipo, :Jornada)');
        connection.Zcommand.Params.ParamByName('contrato').DataType := ftString;
        connection.Zcommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.Zcommand.Params.ParamByName('Empleado').DataType := ftString;
        connection.Zcommand.Params.ParamByName('Empleado').value := Nomina_Empleados.FieldValues['sIdEmpleado'];
        connection.Zcommand.Params.ParamByName('Tipo').DataType := ftString;
        connection.Zcommand.Params.ParamByName('Tipo').value := 'TERMINO DE GUARDIA';
        connection.Zcommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.Zcommand.Params.ParamByName('fecha').value := Nomina.FieldValues['dFechaFinal'];
        connection.Zcommand.Params.ParamByName('Jornada').DataType := ftInteger;
        connection.Zcommand.Params.ParamByName('Jornada').value := Nomina_Empleados.FieldValues['iHorasExtras'];
        connection.Zcommand.Open;

        connection.Zcommand.Sql.Add('UPDATE empleados SET lStatus = "DESCANSO" ' +
          'where sContrato = :contrato And sIdEmpleado = :Empleado');
        connection.Zcommand.Params.ParamByName('contrato').DataType := ftString;
        connection.Zcommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.Zcommand.Params.ParamByName('Empleado').DataType := ftString;
        connection.Zcommand.Params.ParamByName('Empleado').value := Nomina_Empleados.FieldValues['sIdEmpleado'];
        connection.Zcommand.Open;
        Nomina_Empleados.Next
      end;

      Nomina.Edit;
      Nomina.FieldValues['lStatus'] := 'Aplicado';
      Nomina.Post;
      Empleados.Refresh;
    except
      MessageDlg('Ocurrio un error al actualizar el empleado [' + Nomina_Empleados.FieldValues['sIdEmpleado'] + ']', mtInformation, [mbOk], 0);
    end;
  end
end;

procedure TfrmEmpleados.btnAbreClick(Sender: TObject);
begin
  if Nomina.FieldValues['lStatus'] <> 'Pendiente' then
  begin
    try
      Nomina_Empleados.First;
      while not Nomina_Empleados.Eof do
      begin
        connection.zcommand.SQL.Add('DELETE FROM historico_empleados Where sContrato = :Contrato And dIdFecha = :Fecha And sIdEmpleado = :Empleado And sIdTipo = "TERMINO DE GUARDIA"');
        connection.zcommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zcommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zcommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zcommand.Params.ParamByName('fecha').value := Nomina.FieldValues['dFechaFinal'];
        connection.zcommand.Params.ParamByName('Empleado').DataType := ftString;
        connection.zcommand.Params.ParamByName('Empleado').value := Nomina_Empleados.FieldValues['sIdEmpleado'];
        connection.zcommand.Open;

        connection.zcommand.SQL.Add('UPDATE empleados SET lStatus = "LABORANDO" ' +
          'where sContrato = :contrato And sIdEmpleado = :Empleado');
        connection.zcommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zcommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zcommand.Params.ParamByName('Empleado').DataType := ftString;
        connection.zcommand.Params.ParamByName('Empleado').value := Nomina_Empleados.FieldValues['sIdEmpleado'];
        connection.zcommand.Open;
        Nomina_Empleados.Next
      end;

      Nomina.Edit;
      Nomina.FieldValues['lStatus'] := 'Pendiente';
      Nomina.Post;
      Empleados.Refresh;
    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al abrir', 0);
      end;
    end;

  end

end;

procedure TfrmEmpleados.tiHorasExtrasEnter(Sender: TObject);
begin
  tiHorasExtras.Color := global_Color_entrada
end;

procedure TfrmEmpleados.tiHorasExtrasExit(Sender: TObject);
begin
  tiHorasExtras.Color := global_Color_salida
end;

procedure TfrmEmpleados.tiHorasExtrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmComentario.SetFocus
end;

procedure TfrmEmpleados.tiSolicitudEnter(Sender: TObject);
begin
  tiSolicitud.Color := global_Color_entrada
end;

procedure TfrmEmpleados.tiSolicitudExit(Sender: TObject);
begin
  tiSolicitud.Color := global_Color_salida
end;

procedure TfrmEmpleados.tiSolicitudKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdFechaSolicitud.SetFocus
end;

procedure TfrmEmpleados.tdFechaSolicitudEnter(Sender: TObject);
begin
  tdFechaSolicitud.Color := global_color_entrada
end;

procedure TfrmEmpleados.tdFechaSolicitudExit(Sender: TObject);
begin
  tdFechaSolicitud.Color := global_color_salida
end;

procedure TfrmEmpleados.tdFechaSolicitudKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmComentariosSolicitud.SetFocus
end;

procedure TfrmEmpleados.tmComentariosSolicitudEnter(Sender: TObject);
begin
  tmComentariosSolicitud.Color := global_color_entrada
end;

procedure TfrmEmpleados.tmComentariosSolicitudExit(Sender: TObject);
begin
  tmComentariosSolicitud.Color := global_color_salida
end;

procedure TfrmEmpleados.frmBarra4btnAddClick(Sender: TObject);
begin
  frmBarra4.btnAddClick(Sender);
  Solicitud1.Append;
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select Max(iSolicitud) as iSolicitud From contratacion_solicitud Where sContrato = :Contrato Group By sContrato');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
    Solicitud.FieldValues['iSolicitud'] := Connection.QryBusca.FieldValues['iSolicitud'] + 1
  else
    Solicitud1.FieldValues['iSolicitud'] := 1;
  Solicitud1.FieldValues['dFecha'] := Date;
  Solicitud1.FieldValues['sContrato'] := global_contrato;
  tiSolicitud.SetFocus;
  BotonPermiso.permisosBotones(frmBarra4);
end;

procedure TfrmEmpleados.frmBarra4btnEditClick(Sender: TObject);
begin
  if Solicitud.RecordCount > 0 then
    if Solicitud.FieldValues['lStatus'] <> 'Aplicado' then
    begin
      try
        frmBarra4.btnEditClick(Sender);
        Solicitud.Edit;
        tiSolicitud.SetFocus;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al editar registro', 0);
        end;
      end;
    end;
    BotonPermiso.permisosBotones(frmBarra4);
end;

procedure TfrmEmpleados.frmBarra4btnPostClick(Sender: TObject);
begin
  try
    Solicitud.FieldValues['lStatus'] := 'Pendiente';
    Solicitud.Post;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al salvar registro', 0);
    end;
  end;
  frmBarra4.btnCancelClick(Sender);
end;

procedure TfrmEmpleados.frmBarra4btnCancelClick(Sender: TObject);
begin
  Solicitud.Cancel;
  Solicitud_Empleados.Cancel;
  frmBarra4.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra4);
end;

procedure TfrmEmpleados.frmBarra4btnDeleteClick(Sender: TObject);
begin
  if Solicitud.RecordCount > 0 then
    if Solicitud.FieldValues['lStatus'] <> 'Aplicado' then
    begin
      try
        connection.zcommand.SQL.Add('Delete From contratacion_empleados Where sContrato = :Contrato And iSolicitud = :Solicitud');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Solicitud').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Solicitud').value := Solicitud.FieldValues['iSolicitud'];
        connection.zCommand.Open;
        Solicitud.Delete;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmEmpleados.btnValidaSolicitudClick(Sender: TObject);
begin
  if Solicitud.FieldValues['lStatus'] <> 'Aplicado' then
  begin
    Solicitud_Empleados.First;
    try
      while not Solicitud_Empleados.Eof do
      begin
        connection.zCommand.SQL.Add('INSERT INTO historico_empleados (sContrato, sIdEmpleado, dIdFecha, sIdTipo) ' +
          'VALUES (:Contrato, :Empleado, :Fecha, :Tipo)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Empleado').DataType := ftString;
        connection.zCommand.Params.ParamByName('Empleado').value := Solicitud_Empleados.FieldValues['sIdEmpleado'];
        connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('Tipo').value := 'INICIO DE GUARDIA';
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := Solicitud.FieldValues['dFecha'];
        connection.zCommand.Open;

        connection.zCommand.SQL.Add('UPDATE empleados SET lStatus = "LABORANDO" ' +
          'where sContrato = :contrato And sIdEmpleado = :Empleado');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Empleado').DataType := ftString;
        connection.zCommand.Params.ParamByName('Empleado').value := Solicitud_Empleados.FieldValues['sIdEmpleado'];
        connection.zCommand.Open;
        Solicitud_Empleados.Next
      end;
      Solicitud.Edit;
      Solicitud.FieldValues['lStatus'] := 'Aplicado';
      Solicitud.Post;
      Empleados.Refresh
    except
      MessageDlg('Ocurrio un error al actualizar el empleado [' + Solicitud_Empleados.FieldValues['sIdEmpleado'] + ']', mtInformation, [mbOk], 0);
    end;
  end
end;

procedure TfrmEmpleados.btnAbreSolicitudClick(Sender: TObject);
begin
  if Solicitud.FieldValues['lStatus'] <> 'Pendiente' then
  begin
    try
      Solicitud_Empleados.First;
      while not Solicitud_Empleados.Eof do
      begin
        connection.zCommand.SQL.Add('DELETE FROM historico_empleados Where sContrato = :Contrato And dIdFecha = :Fecha And sIdEmpleado = :Empleado And sIdTipo = "INICIO DE GUARDIA"');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := Solicitud.FieldValues['dFecha'];
        connection.zCommand.Params.ParamByName('Empleado').DataType := ftString;
        connection.zCommand.Params.ParamByName('Empleado').value := Solicitud_Empleados.FieldValues['sIdEmpleado'];
        connection.zCommand.Open;

        connection.zCommand.SQL.Add('UPDATE empleados SET lStatus = "DESCANSO" ' +
          'where sContrato = :contrato And sIdEmpleado = :Empleado');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Empleado').DataType := ftString;
        connection.zCommand.Params.ParamByName('Empleado').value := Solicitud_Empleados.FieldValues['sIdEmpleado'];
        connection.zCommand.Open;
        Solicitud_Empleados.Next
      end;
      Solicitud.Edit;
      Solicitud.FieldValues['lStatus'] := 'Pendiente';
      Solicitud.Post;
      Empleados.Refresh;

    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al abrir solicitud', 0);
      end;
    end;

  end
end;

procedure TfrmEmpleados.frmBarra5btnAddClick(Sender: TObject);
begin
  if Solicitud.RecordCount > 0 then
    if Solicitud.FieldValues['lStatus'] <> 'Aplicado' then
    begin
      frmBarra5.btnAddClick(Sender);
      QryEmpleadosDescanso.Refresh;
      Solicitud.Cancel;
      Solicitud_Empleados.Append;
      tsIdEmpleadoDescansando.SetFocus
    end ;
   BotonPermiso.permisosBotones(frmBarra5);
end;

procedure TfrmEmpleados.frmBarra5btnEditClick(Sender: TObject);
begin
  if Solicitud_Empleados.RecordCount > 0 then
    if Solicitud.FieldValues['lStatus'] <> 'Aplicado' then
    begin
      frmBarra5.btnEditClick(Sender);
      QryEmpleadosDescanso.Refresh;
      Solicitud.Cancel;
      try
        Solicitud_Empleados.Edit
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al editar relacion de personal', 0);
        end;
      end;
    end;
    BotonPermiso.permisosBotones(frmBarra5);
end;

procedure TfrmEmpleados.frmBarra5btnPostClick(Sender: TObject);
var
  iPosicion: Integer;
begin
  if tsIdEmpleadoDescansando.Text <> '' then
  begin
    try
      Solicitud_Empleados.FieldValues['sContrato'] := global_contrato;
      Solicitud_Empleados.FieldValues['iSolicitud'] := Solicitud.FieldValues['iSolicitud'];
      Solicitud_Empleados.Post;
    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al salvar relacion de personal', 0);
      end;
    end;
    iPosicion := Empleados.RecNo;
    Empleados.Refresh;
    Empleados.RecNo := iPosicion;
    frmBarra5.btnPostClick(Sender);
  end;
  BotonPermiso.permisosBotones(frmBarra5);
end;

procedure TfrmEmpleados.frmBarra5btnCancelClick(Sender: TObject);
begin
  Solicitud_Empleados.Cancel;
  frmBarra5.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra5);
end;

procedure TfrmEmpleados.frmBarra5btnDeleteClick(Sender: TObject);
begin
  if Solicitud.FieldValues['lStatus'] = 'Pendiente' then
    if Solicitud_Empleados.RecordCount > 0 then
    begin
      QryEmpleadosDescanso.Refresh;
      try
        Solicitud_Empleados.Delete
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal', 'Al eliminar relacion de personal', 0);
        end;
      end;
    end
end;

procedure TfrmEmpleados.tsIdEmpleadoDescansandoEnter(Sender: TObject);
begin
  tsIdEmpleadoDescansando.Color := global_color_Entrada
end;

procedure TfrmEmpleados.tsIdEmpleadoDescansandoExit(Sender: TObject);
begin
  tsIdEmpleadoDescansando.Color := global_color_salida
end;

procedure TfrmEmpleados.tsIdEmpleadoDescansandoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    frmBarra5.btnPost.SetFocus
end;

procedure TfrmEmpleados.tiNominaEnter(Sender: TObject);
begin
  tiNomina.Color := global_Color_entrada
end;

procedure TfrmEmpleados.tiNominaExit(Sender: TObject);
begin
  tiNomina.Color := global_Color_salida
end;

procedure TfrmEmpleados.tiNominaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdFechaInicio.SetFocus
end;

procedure TfrmEmpleados.tdFechaInicioEnter(Sender: TObject);
begin
  tdFechaInicio.Color := global_color_entrada
end;

procedure TfrmEmpleados.tdFechaInicioExit(Sender: TObject);
begin
  tdFechaInicio.Color := global_color_salida
end;

procedure TfrmEmpleados.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdFechaFinal.SetFocus
end;

procedure TfrmEmpleados.tdFechaFinalEnter(Sender: TObject);
begin
  tdFechaFinal.Color := global_color_entrada
end;

procedure TfrmEmpleados.tdFechaFinalExit(Sender: TObject);
begin
  tdFechaFinal.Color := global_color_salida
end;

procedure TfrmEmpleados.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmComentarios.SetFocus
end;

procedure TfrmEmpleados.tmComentariosEnter(Sender: TObject);
begin
  tmComentarios.Color := global_Color_entrada
end;

procedure TfrmEmpleados.tmComentariosExit(Sender: TObject);
begin
  tmComentarios.Color := global_Color_salida
end;

procedure TfrmEmpleados.EmpleadosAfterScroll(DataSet: TDataSet);
begin
  if Empleados.RecordCount > 0 then
  begin
    Historico_Empleados.Active := False;
    Historico_Empleados.Params.ParamByName('Contrato').DataType := ftString;
    Historico_Empleados.Params.ParamByName('Contrato').Value := global_Contrato;
    Historico_Empleados.Params.ParamByName('Empleado').DataType := ftString;
    Historico_Empleados.Params.ParamByName('Empleado').Value := Empleados.FieldValues['sIdEmpleado'];
    Historico_Empleados.Params.ParamByName('Ordenado').DataType := ftString;
    Historico_Empleados.Params.ParamByName('Ordenado').Value := 'dIdFecha';
    Historico_Empleados.Open;
  end
  else
  begin
    Historico_Empleados.Active := False;
    Historico_Empleados.Params.ParamByName('Contrato').DataType := ftString;
    Historico_Empleados.Params.ParamByName('Contrato').Value := global_Contrato;
    Historico_Empleados.Params.ParamByName('Empleado').DataType := ftString;
    Historico_Empleados.Params.ParamByName('Empleado').Value := '';
    Historico_Empleados.Open;
  end

end;

procedure TfrmEmpleados.Solicitud_EmpleadosCalcFields(DataSet: TDataSet);
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select p.sDescripcion, e.sNombre from personal p INNER JOIN empleados e ON (p.sContrato = e.sContrato And p.sIdPersonal = e.sIdPersonal And e.sIdEmpleado = :Empleado) ' +
    'where p.sContrato = :Contrato');
  connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Empleado').Value := Solicitud_EmpleadossIdEmpleado.Text;
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then
  begin
    Solicitud_EmpleadossNombre.Text := connection.QryBusca.FieldValues['sNombre'];
    Solicitud_EmpleadossCategoria.Text := connection.QryBusca.FieldValues['sDescripcion'];
  end

end;

procedure TfrmEmpleados.SolicitudAfterScroll(DataSet: TDataSet);
begin
  if Solicitud.RecordCount > 0 then
  begin
    Solicitud_Empleados.Active := False;
    Solicitud_Empleados.Params.ParamByName('Contrato').DataType := ftString;
    Solicitud_Empleados.Params.ParamByName('Contrato').Value := global_contrato;
    Solicitud_Empleados.Params.ParamByName('Solicitud').DataType := ftInteger;
    Solicitud_Empleados.Params.ParamByName('Solicitud').Value := Solicitud.FieldValues['iSolicitud'];
    Solicitud_Empleados.Open;
  end
  else
  begin
    Solicitud_Empleados.Active := False;
    Solicitud_Empleados.Params.ParamByName('Contrato').DataType := ftString;
    Solicitud_Empleados.Params.ParamByName('Contrato').Value := global_contrato;
    Solicitud_Empleados.Params.ParamByName('Solicitud').DataType := ftInteger;
    Solicitud_Empleados.Params.ParamByName('Solicitud').Value := 0;
    Solicitud_Empleados.Open;
  end
end;

procedure TfrmEmpleados.Grid_NominaEnter(Sender: TObject);
begin
  if frmBarra3.btnCancel.Enabled = True then
    frmBarra3.btnCancel.Click
end;

procedure TfrmEmpleados.Grid_SolicitudEnter(Sender: TObject);
begin
  if frmBarra4.btnCancel.Enabled = True then
    frmBarra4.btnCancel.Click
end;

procedure TfrmEmpleados.tlStatusEnter(Sender: TObject);
begin
  tlStatus.Color := global_color_entrada
end;

procedure TfrmEmpleados.tlStatusExit(Sender: TObject);
begin
  tlStatus.Color := global_color_salida
end;

procedure TfrmEmpleados.tlStatusKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNombre.SetFocus
end;

procedure TfrmEmpleados.tsIdEmpleadoBajaChange(Sender: TObject);
begin
  if frmBarra2.btnCancel.Enabled = True then
  begin
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select * From historico_empleados Where sContrato = :Contrato And sIdEmpleado = :Empleado and sIdTipo = "INICIO DE GUARDIA" And dIdFecha <= :Fecha Order By dIdFecha DESC');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Empleado').Value := Nomina_Empleados.FieldValues['sIdEmpleado'];
    Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
    Connection.QryBusca.Params.ParamByName('Fecha').Value := Nomina.FieldValues['dFechaFinal'];
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount > 0 then
    begin
      Nomina_Empleados.FieldValues['dFechaSubida'] := Connection.QryBusca.FieldValues['dIdFecha'];
      Nomina_Empleados.FieldValues['dFechaBajada'] := Nomina.FieldValues['dFechaFinal'];
    end
    else
    begin
      Nomina_Empleados.FieldValues['dFechaSubida'] := Date;
      Nomina_Empleados.FieldValues['dFechaBajada'] := Nomina.FieldValues['dFechaFinal'];
    end
  end;
end;

procedure TfrmEmpleados.Grid_Subida(Sender: TObject);
begin
  if frmBarra5.btnCancel.Enabled = True then
    frmBarra5.btnCancel.Click
end;

procedure TfrmEmpleados.Grid_NominaEmpleadosEnter(Sender: TObject);
begin
  if frmBarra2.btnCancel.Enabled = True then
    frmBarra2.btnCancel.Click

end;

procedure TfrmEmpleados.Grid_SolicitudGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Pendiente' then
    AFont.Color := clBlue
end;

procedure TfrmEmpleados.Grid_NominaGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Pendiente' then
    AFont.Color := clBlue
end;

procedure TfrmEmpleados.frmBarra3btnPrinterClick(Sender: TObject);
var
  iHoras: Real;
begin
  if rxNomina.RecordCount > 0 then
    rxNomina.EmptyTable;

  if Nomina_Empleados.RecordCount > 0 then
  begin
    ActualizaFirmas(Nomina_Empleados.FieldValues['dFechaBajada']);
    Nomina_Empleados.First;
    while not Nomina_Empleados.Eof do
    begin
      QryHE.Active := False;
      QryHE.Params.ParamByName('Contrato').DataType := ftString;
      QryHE.Params.ParamByName('Contrato').Value := global_Contrato;
      QryHE.Params.ParamByName('Empleado').DataType := ftString;
      QryHE.Params.ParamByName('Empleado').Value := Nomina_Empleados.FieldValues['sIdEmpleado'];
      QryHE.Params.ParamByName('FechaInicio').DataType := ftDate;
      QryHE.Params.ParamByName('FechaInicio').Value := Nomina_Empleados.FieldValues['dFechaSubida'];
      QryHE.Params.ParamByName('FechaFinal').DataType := ftDate;
      QryHE.Params.ParamByName('FechaFinal').Value := Nomina_Empleados.FieldValues['dFechaBajada'];
      QryHE.Open;

      if QryHE.RecordCount = 0 then
      begin
        rxNomina.Append;
        rxNomina.FieldValues['sContrato'] := global_contrato;
        rxNomina.FieldValues['dFecha'] := Nomina.FieldValues['dFechaFinal'];
        rxNomina.FieldValues['sIdEmpleado'] := Nomina_Empleados.FieldValues['sIdEmpleado'];
        rxNomina.FieldValues['sNombre'] := Nomina_Empleados.FieldValues['sNombre'];
        rxNomina.FieldValues['sCategoria'] := Nomina_Empleados.FieldValues['sCategoria'];
        rxNomina.FieldValues['dFechaSubida'] := Nomina_Empleados.FieldValues['dFechaSubida'];
        rxNomina.FieldValues['dFechaBajada'] := Nomina_Empleados.FieldValues['dFechaBajada'];
        rxNomina.FieldValues['iDiasLaborado'] := Nomina_Empleados.FieldValues['iDias'];
        rxNomina.FieldValues['mObservacionesEmpleado'] := Nomina_Empleados.FieldValues['mComentarios'];
        rxNomina.FieldValues['mObservaciones'] := Nomina.FieldValues['mComentarios'];
        rxNomina.Post;
      end
      else
      begin
        iHoras := 0;
        while not QryHE.Eof do
        begin
          iHoras := iHoras + QryHE.FieldValues['iJornada'];
          QryHE.Next
        end;
        QryHE.First;
        while not QryHE.Eof do
        begin
          rxNomina.Append;
          rxNomina.FieldValues['sContrato'] := global_contrato;
          rxNomina.FieldValues['dFecha'] := Nomina.FieldValues['dFechaFinal'];
          rxNomina.FieldValues['sIdEmpleado'] := Nomina_Empleados.FieldValues['sIdEmpleado'];
          rxNomina.FieldValues['sNombre'] := Nomina_Empleados.FieldValues['sNombre'];
          rxNomina.FieldValues['sCategoria'] := Nomina_Empleados.FieldValues['sCategoria'];
          rxNomina.FieldValues['dFechaSubida'] := Nomina_Empleados.FieldValues['dFechaSubida'];
          rxNomina.FieldValues['dFechaBajada'] := Nomina_Empleados.FieldValues['dFechaBajada'];
          rxNomina.FieldValues['iDiasLaborado'] := Nomina_Empleados.FieldValues['iDias'];
          rxNomina.FieldValues['dFechaHE'] := QryHE.FieldValues['dIdFecha'];
          rxNomina.FieldValues['iHoraExtra'] := QryHE.FieldValues['iJornada'];
          rxNomina.FieldValues['iTotalHE'] := iHoras;
          rxNomina.FieldValues['mObservacionesEmpleado'] := Nomina_Empleados.FieldValues['mComentarios'];
          rxNomina.FieldValues['mObservaciones'] := Nomina.FieldValues['mComentarios'];
          rxNomina.Post;
          QryHE.Next
        end
      end;
      Nomina_Empleados.Next
    end;
    frxNomina.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
  end
end;

procedure TfrmEmpleados.tdFechaSubidaEnter(Sender: TObject);
begin
  tdFechaSubida.Color := global_Color_entrada
end;

procedure TfrmEmpleados.tdFechaSubidaExit(Sender: TObject);
begin
  tdFechaSubida.Color := global_Color_salida;
  if frmBarra2.btnCancel.Enabled = True then
    Nomina_Empleados.FieldValues['iDias'] := (Nomina_Empleados.FieldValues['dFechaBajada'] - Nomina_Empleados.FieldValues['dFechaSubida']) + 1;
end;

procedure TfrmEmpleados.tdFechaSubidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdFechaBajada.SetFocus
end;

procedure TfrmEmpleados.tdFechaBajadaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiDias.SetFocus
end;

procedure TfrmEmpleados.tdFechaBajadaEnter(Sender: TObject);
begin
  tdFechaBajada.Color := global_color_entrada
end;

procedure TfrmEmpleados.tdFechaBajadaExit(Sender: TObject);
begin
  tdFechaBajada.Color := global_color_salida;
  if frmBarra2.btnCancel.Enabled = True then
    Nomina_Empleados.FieldValues['iDias'] := (Nomina_Empleados.FieldValues['dFechaBajada'] - Nomina_Empleados.FieldValues['dFechaSubida']) + 1;
end;

procedure TfrmEmpleados.tiDiasEnter(Sender: TObject);
begin
  tiDias.Color := global_color_entrada
end;

procedure TfrmEmpleados.tiDiasExit(Sender: TObject);
begin
  tiDias.Color := global_color_salida
end;

procedure TfrmEmpleados.tiDiasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tiHorasExtras.SetFocus
end;

procedure TfrmEmpleados.HorasExtrasAfterInsert(DataSet: TDataSet);
begin
  HorasExtras.FieldValues['sContrato'] := global_Contrato;
  HorasExtras.FieldValues['sIdEmpleado'] := nomina_empleados.FieldValues['sIdEmpleado'];
  HorasExtras.FieldValues['dIdFecha'] := nomina_empleados.FieldValues['dFechaBajada'];
  HorasExtras.FieldValues['sIdTipo'] := 'HORAS EXTRAS';
end;

procedure TfrmEmpleados.nomina_empleadosAfterScroll(DataSet: TDataSet);
begin
  if Nomina_Empleados.RecordCount > 0 then
  begin
    HorasExtras.Active := False;
    HorasExtras.Params.ParamByName('Contrato').DataType := ftString;
    HorasExtras.Params.ParamByName('Contrato').Value := global_Contrato;
    HorasExtras.Params.ParamByName('Empleado').DataType := ftString;
    HorasExtras.Params.ParamByName('Empleado').Value := Nomina_Empleados.FieldValues['sIdEmpleado'];
    HorasExtras.Params.ParamByName('Inicio').DataType := ftDate;
    HorasExtras.Params.ParamByName('Inicio').Value := Nomina.FieldValues['dFechaInicio'];
    HorasExtras.Params.ParamByName('Final').DataType := ftDate;
    HorasExtras.Params.ParamByName('Final').Value := Nomina.FieldValues['dFechaFinal'];
    HorasExtras.Open;
  end
end;

procedure TfrmEmpleados.ActualizaFirmas(dFecha: TDateTime);
begin
  sSuperIntendente := '';
  sPuestoSuperintendente := '';
  sControl_Obra := '';
  sPuestoControl_Obra := '';
  connection.QryBusca2.Active := False;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('Select * from firmas where sContrato = :contrato And dIdFecha = :fecha');
  connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
  connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate;
  connection.QryBusca2.Params.ParamByName('fecha').Value := dFecha;
  connection.QryBusca2.Open;
  if connection.QryBusca2.RecordCount > 0 then
  begin
    sSuperintendente := connection.QryBusca2.FieldValues['sFirmante1'];
    sPuestoSuperintendente := connection.QryBusca2.FieldValues['sPuesto1'];
    sControl_Obra := connection.QryBusca2.FieldValues['sFirmante6'];
    sPuestoControl_Obra := connection.QryBusca2.FieldValues['sPuesto6'];
  end
  else
  begin
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('Select * from firmas where sContrato = :contrato And dIdFecha <= :fecha Order By dIdFecha DESC');
    connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
    connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate;
    connection.QryBusca2.Params.ParamByName('fecha').Value := dFecha;
    connection.QryBusca2.Open;
    if connection.QryBusca2.RecordCount > 0 then
    begin
      sSuperintendente := connection.QryBusca2.FieldValues['sFirmante1'];
      sPuestoSuperintendente := connection.QryBusca2.FieldValues['sPuesto1'];
      sControl_Obra := connection.QryBusca2.FieldValues['sFirmante6'];
      sPuestoControl_Obra := connection.QryBusca2.FieldValues['sPuesto6'];
    end
  end
end;

procedure TfrmEmpleados.frxNominaGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    Value := sSuperIntendente;
  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;

  if CompareText(VarName, 'CONTROL_OBRA') = 0 then
    Value := sControl_Obra;
  if CompareText(VarName, 'PUESTOCONTROL_OBRA') = 0 then
    Value := sPuestoControl_Obra;

end;

end.

