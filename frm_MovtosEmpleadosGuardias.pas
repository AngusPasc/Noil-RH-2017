unit frm_MovtosEmpleadosGuardias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_barra, StdCtrls, DBCtrls, Grids, DBGrids, NxCollection, Mask,
  rxToolEdit, RXDBCtrl, NxPageControl, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frm_connection,udbgrid, unittbotonespermisos,global,
  unitexcepciones, Menus,frm_EmpleadosGuardias;

type
  Tfrm_MovtosGuardias = class(TForm)
    qryOrdenesdeTrabajo: TZQuery;
    dsOrdenesdeTrabajo: TDataSource;
    qryMovtosGuardias: TZQuery;
    qryMovtosGuardiasiIdGuardia: TIntegerField;
    qryMovtosGuardiasdFechaSubida: TDateField;
    qryMovtosGuardiasdFechaBajada: TDateField;
    qryMovtosGuardiassIdEmpleado: TStringField;
    ds_MovtosGuardias: TDataSource;
    qryEmpleados: TZQuery;
    ds_Empleados: TDataSource;
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
    qryMovtosGuardiasiIdGuardiaMovtos: TIntegerField;
    qryMovtosGuardiassObservaciones: TStringField;
    qryEmpleadossNombreCompleto: TStringField;
    qryEmpleadossIdEmpleado: TStringField;
    qryEmpleadossRfc: TStringField;
    qryEmpleadossPuesto: TStringField;
    qryEmpleadosdSueldo: TFloatField;
    qryEmpleadossCurp: TStringField;
    qryEmpleadossImss: TStringField;
    qryEmpleadosiId_Puesto: TIntegerField;
    qryEmpleadosdSalarioIntegrado: TFloatField;
    qryEmpleadosiIdhorario: TIntegerField;
    qryEmpleadossStatus: TStringField;
    qryEmpleadosidorganizacion: TIntegerField;
    qryEmpleadosiIdEstatusDiario: TIntegerField;
    qryOrdenesdeTrabajosContrato: TStringField;
    qryOrdenesdeTrabajosIdFolio: TStringField;
    qryOrdenesdeTrabajosNumeroOrden: TStringField;
    qryOrdenesdeTrabajosDescripcionCorta: TStringField;
    qryOrdenesdeTrabajomDescripcion: TMemoField;
    qryOrdenesdeTrabajosIdPlataforma: TStringField;
    qryOrdenesdeTrabajocIdStatus: TStringField;
    qryMovtosGuardiassContrato: TStringField;
    qryMovtosGuardiassNumeroOrden: TStringField;
    qryMovtosGuardiassNombre: TStringField;
    qryEmpleadosNomb: TStringField;
    Panel1: TPanel;
    frmBarra4: TfrmBarra;
    grid_movtosGuardias: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    dsNombreEmpleado: TDBLookupComboBox;
    lbFrente: TLabel;
    dsFrente: TDBLookupComboBox;
    guardiaInicio: TLabel;
    dFechaSubida: TDBDateEdit;
    guardiaFn: TLabel;
    dFechaBajada: TDBDateEdit;
    lbComentarios: TLabel;
    sObservaciones: TDBMemo;
    Splitter1: TSplitter;
    lblInfo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure frmBarra4btnAddClick(Sender: TObject);
    procedure frmBarra4btnCancelClick(Sender: TObject);
    procedure frmBarra4btnEditClick(Sender: TObject);
    procedure frmBarra4btnPostClick(Sender: TObject);
    procedure dsNombreEmpleadoKeyPress(Sender: TObject; var Key: Char);
    procedure dsNombreEmpleadoEnter(Sender: TObject);
    procedure dsNombreEmpleadoExit(Sender: TObject);
    procedure dsFrenteKeyPress(Sender: TObject; var Key: Char);
    procedure dsFrenteEnter(Sender: TObject);
    procedure dsFrenteExit(Sender: TObject);
    procedure dFechaSubidaKeyPress(Sender: TObject; var Key: Char);
    procedure dFechaSubidaEnter(Sender: TObject);
    procedure dFechaSubidaExit(Sender: TObject);
    procedure dFechaBajadaKeyPress(Sender: TObject; var Key: Char);
    procedure dFechaBajadaEnter(Sender: TObject);
    procedure dFechaBajadaExit(Sender: TObject);
    procedure sObservacionesEnter(Sender: TObject);
    procedure sObservacionesExit(Sender: TObject);
    procedure dFechaSubidaChange(Sender: TObject);
    procedure frmBarra4btnDeleteClick(Sender: TObject);
    procedure frmBarra4btnRefreshClick(Sender: TObject);
    procedure frmBarra4btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dFechaBajadaChange(Sender: TObject);
    procedure grid_movtosGuardiasDblClick(Sender: TObject);
    procedure qryMovtosGuardiasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_MovtosGuardias: Tfrm_MovtosGuardias;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;
  dFechaIni, dFechaFin : TDateTime;
  iIdGuardia : Integer;

implementation


{$R *.dfm}

procedure Tfrm_MovtosGuardias.dFechaBajadaChange(Sender: TObject);
begin
   dFechaFin := frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaFinal').AsDatetime;

  if dFechaBajada.Date < dFechaIni then
  begin
      dFechaBajada.Date := dFechaFin;
      MessageDlg('La Fecha Bajada No puede Ser Menor a la Fecha Subida !', mtInformation, [mbOk], 0);
      exit;
  end;

end;

procedure Tfrm_MovtosGuardias.dFechaBajadaEnter(Sender: TObject);
begin
      dFechaBajada.Color := global_color_entradaERP;
end;

procedure Tfrm_MovtosGuardias.dFechaBajadaExit(Sender: TObject);
begin
     dFechaBajada.Color := global_color_salidaERP
end;

procedure Tfrm_MovtosGuardias.dFechaBajadaKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
        sObservaciones.SetFocus
end;

procedure Tfrm_MovtosGuardias.dFechaSubidaChange(Sender: TObject);
begin
   dFechaIni := frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaInicial').AsDatetime;
  //dFechaInicial.Date < date(dFechaIni)
  if dFechaSubida.Date < dFechaIni then
  begin
      dFechaSubida.Date := dFechaIni;
      MessageDlg('La Fecha Subida No puede Ser Menor a la Fecha de Inicio de Guardia !', mtInformation, [mbOk], 0);
      exit;
  end;

end;

procedure Tfrm_MovtosGuardias.dFechaSubidaEnter(Sender: TObject);
begin
      dFechaSubida.Color := global_color_entradaERP;
end;

procedure Tfrm_MovtosGuardias.dFechaSubidaExit(Sender: TObject);
begin
     dFechaSubida.Color := global_color_salidaERP
end;

procedure Tfrm_MovtosGuardias.dFechaSubidaKeyPress(Sender: TObject;
  var Key: Char);
begin
      if key = #13 then
        dFechaBajada.SetFocus
end;

procedure Tfrm_MovtosGuardias.dsFrenteEnter(Sender: TObject);
begin
     dsFrente.Color := global_color_entradaERP;
end;

procedure Tfrm_MovtosGuardias.dsFrenteExit(Sender: TObject);
begin
     dsFrente.Color := global_color_salidaERP
end;

procedure Tfrm_MovtosGuardias.dsFrenteKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        dFechaSubida.SetFocus
end;

procedure Tfrm_MovtosGuardias.dsNombreEmpleadoEnter(Sender: TObject);
begin
  dsNombreEmpleado.Color := global_color_entradaERP;
end;

procedure Tfrm_MovtosGuardias.dsNombreEmpleadoExit(Sender: TObject);
begin
    dsNombreEmpleado.Color := global_color_salidaERP
end;

procedure Tfrm_MovtosGuardias.dsNombreEmpleadoKeyPress(Sender: TObject;
  var Key: Char);
begin
      if key = #13 then
        dsFrente.SetFocus
end;

procedure Tfrm_MovtosGuardias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;

end;

procedure Tfrm_MovtosGuardias.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);

   frmbarra4.btnCancel.Click ;
   UtGrid:=TicdbGrid.create(grid_movtosGuardias);

   BotonPermiso.permisosBotones(frmBarra4);
   frmbarra4.btnPrinter.Enabled := False;

   iIdGuardia := frmEmpleadosGuardias.qryGuardias.FieldByName('iIdGuardia').AsInteger;

   dFechaSubida.Date := frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaInicial').AsDateTime;
   dFechaBajada.Date := frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaFinal').AsDateTime;

   qryordenesdeTrabajo.Active := False;
   qryordenesdeTrabajo.Open;

   qryEmpleados.Active := False;
   qryEmpleados.Open;

   frm_MovtosGuardias.Caption := 'GUARDIA FOLIO NO. [ ' + frmEmpleadosGuardias.qryGuardias.FieldByName('sIdFolio').AsString + ' ] DEL ' + FormatDateTime('dd', frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaInicial').AsDatetime) + '-' + FormatDateTime('MM', frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaInicial').AsDatetime) + '-' + FormatDateTime('yyyy', frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaInicial').AsDatetime) + '  AL  ' + FormatDateTime('dd', frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaFinal').AsDatetime) + '-' + FormatDateTime('MM', frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaFinal').AsDatetime) + '-' + FormatDateTime('yyyy', frmEmpleadosGuardias.qryGuardias.FieldByName('dFechaFinal').AsDatetime) ;
   qrymovtosGuardias.Active := False;
   qrymovtosGuardias.Params.ParamByName('Guardia').AsInteger := iIdGuardia;//Filtro_FechaInicial.DateTime;
   qrymovtosGuardias.Open;
   if qrymovtosGuardias.RecordCount > 0 then lblInfo.Caption := 'Movimientos: ' + intToStr(qrymovtosGuardias.RecordCount);
   grid_movtosGuardias.SetFocus;

end;

procedure Tfrm_MovtosGuardias.frmBarra4btnAddClick(Sender: TObject);
var
    NumeroConsecutivo : integer;
begin
   frmBarra4.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sOpcion := 'insert';

   qrymovtosGuardias.Append ;
   //qrymovtosGuardias.FieldValues['sIdFolio'] := frmEmpleadosGuardias.qryGuardias.FieldByName('sIdFolio').AsString;
   qrymovtosGuardias.FieldValues['iIdGuardia'] := iIdGuardia;

   BotonPermiso.permisosBotones(frmBarra4);
   frmbarra4.btnPrinter.Enabled := False;
   grid_movtosGuardias.Enabled := False;

   dsNombreEmpleado.Enabled := True;
   dsFrente.Enabled := True;
   dFechaSubida.Enabled := True;
   dFechaBajada.Enabled := True;
   sObservaciones.enabled := True;

   dsNombreEmpleado.SetFocus;
end;

procedure Tfrm_MovtosGuardias.frmBarra4btnCancelClick(Sender: TObject);
begin
   frmBarra4.btnCancelClick(Sender);
   qrymovtosGuardias.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra4);
   frmbarra4.btnPrinter.Enabled := False;
   grid_movtosGuardias.Enabled := True;
   sOpcion := '';

end;

procedure Tfrm_MovtosGuardias.frmBarra4btnDeleteClick(Sender: TObject);
begin
    If qrymovtosGuardias.RecordCount > 0 then
        if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          try
              qrymovtosGuardias.Delete;
          except
          on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Guardias', 'Al eliminar registro', 0);
          end;
        end
    end

end;

procedure Tfrm_MovtosGuardias.frmBarra4btnEditClick(Sender: TObject);
begin
    If qrymovtosGuardias.RecordCount > 0 Then
    Begin
        try
           frmBarra4.btnEditClick(Sender);
           Insertar1.Enabled := False ;
           Editar1.Enabled := False ;
           Registrar1.Enabled := True ;
           Can1.Enabled := True ;
           Eliminar1.Enabled := False ;
           Refresh1.Enabled := False ;
           Salir1.Enabled := False ;
           sOpcion := 'Edit';
           dsNombreEmpleado.SetFocus;
           qrymovtosGuardias.Edit;
           grid_movtosGuardias.Enabled := False;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Sucursales', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra4);
   frmbarra4.btnPrinter.Enabled := False;

end;

procedure Tfrm_MovtosGuardias.frmBarra4btnExitClick(Sender: TObject);
begin
   frmBarra4.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close;

end;

procedure Tfrm_MovtosGuardias.frmBarra4btnPostClick(Sender: TObject);
var
  Consecutivo : Integer;
begin

    if(trim(dsNombreEmpleado.Text) = '') or
      (trim(dsFrente.Text) = '') or
      (trim(dFechaSubida.Text) = '') or
      (trim(dFechaBajada.Text) = '')
    then
    begin
       MessageDlg('Revise los Datos Nombre, Orden de Servicio, Fecha Bajada y Subida !', mtInformation, [mbOk], 0);
       exit;
    end;

    //buscamos el id maximo..}
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select max(iIdGuardiaMovtos) as id from guardiasmovtos ');
    connection.QryBusca.Open;

    if connection.QryBusca.FieldValues['id'] = null then
    begin
       qrymovtosGuardias.FieldValues['iIdGuardiaMovtos'] := 1;
    end
    else
    begin
         qrymovtosGuardias.FieldValues['iIdGuardiaMovtos'] := connection.QryBusca.FieldValues['id'] + 1;
    end;
    qrymovtosGuardias.FieldValues['sContrato'] := Global_Contrato;

  {Continua insercion de datos..}

   try
       qrymovtosGuardias.Post ;
       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;

       frmBarra4.btnPostClick(Sender);

   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Guardias', 'Al salvar registro', 0);
       frmBarra4.btnCancel.Click ;
       end;
   end;
  BotonPermiso.permisosBotones(frmBarra4);
  frmBarra4.btnCancel.Click ;

   if sOpcion = 'Edit' then
   begin
       grid_movtosGuardias.Enabled := True;
       sOpcion := '';
   end;

end;

procedure Tfrm_MovtosGuardias.frmBarra4btnRefreshClick(Sender: TObject);
begin
      qrymovtosGuardias.refresh ;
end;

procedure Tfrm_MovtosGuardias.grid_movtosGuardiasDblClick(Sender: TObject);
begin
  frmBarra4.btnEdit.Click ;
end;

procedure Tfrm_MovtosGuardias.qryMovtosGuardiasCalcFields(DataSet: TDataSet);
begin
    if True then

end;

procedure Tfrm_MovtosGuardias.sObservacionesEnter(Sender: TObject);
begin
    sObservaciones.Color := global_color_entradaERP;
end;

procedure Tfrm_MovtosGuardias.sObservacionesExit(Sender: TObject);
begin
     sObservaciones.Color := global_color_salidaERP
end;

end.
