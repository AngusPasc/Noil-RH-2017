unit frm_detalledeinstalacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, frm_connection , global, StdCtrls,
  DBCtrls, Mask, DB, Menus, ADODB, frxClass, frxDBSet, ComCtrls, OleServer, ExcelXP,
  Buttons, ExtCtrls, jpeg, RxMemDS, utilerias, StrUtils, ZAbstractRODataset, ZDataset,
  unitexcepciones, UFunctionsGHH, UnitTBotonesPermisos, DBDateTimePicker;
type
  TfrmDetalledeInstalacion = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    dbResumen: TfrxDBDataset;
    btnReport2: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    rbNormal: TRadioButton;
    rbAdicional: TRadioButton;
    rbConsolidado: TRadioButton;
    rxAnexoGenerado: TRxMemoryData;
    StringField6: TStringField;
    StringField7: TStringField;
    MemoField1: TMemoField;
    StringField10: TStringField;
    FloatField1: TFloatField;
    rxAnexoGeneradodGenerado: TFloatField;
    rxAnexoGeneradodAnterior: TFloatField;
    rxAnexoGeneradodInstalado: TFloatField;
    rxAnexoGeneradodAcumulado: TFloatField;
    rxAnexoGeneradodVentaMN: TCurrencyField;
    rxAnexoGeneradodVentaDLL: TCurrencyField;
    rxAnexoGeneradodGeneradoAcumulado: TFloatField;
    OrdenesdeTrabajo: TZReadOnlyQuery;
    Detalle: TZReadOnlyQuery;
    frxDetalle: TfrxReport;
    ActividadesxOrden: TZReadOnlyQuery;
    ActividadesxOrdensContrato: TStringField;
    ActividadesxOrdensNumeroOrden: TStringField;
    ActividadesxOrdeniNivel: TIntegerField;
    ActividadesxOrdensSimbolo: TStringField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdensWbsAnterior: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    ActividadesxOrdensTipoActividad: TStringField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdendFechaInicio: TDateField;
    ActividadesxOrdendFechaFinal: TDateField;
    ActividadesxOrdendPonderado: TFloatField;
    ActividadesxOrdendVentaMN: TFloatField;
    ActividadesxOrdendVentaDLL: TFloatField;
    ActividadesxOrdeniColor: TIntegerField;
    ActividadesxOrdensIdConvenio: TStringField;
    ActividadesxOrdensWbsSpace: TStringField;
    ActividadesxOrdendAcumuladoAnterior: TFloatField;
    ActividadesxOrdendCantidadPeriodo: TFloatField;
    ActividadesxOrdendAcumulado: TFloatField;
    ActividadesxOrdensMedida: TStringField;
    ActividadesxOrdendCantidad: TFloatField;
    ActividadesxOrdendTotal: TFloatField;
    ActividadesxOrdendTotalAcumulado: TCurrencyField;
    ActividadesxOrdeniItemOrden: TStringField;
    dsActividadesxOrden: TfrxDBDataset;
    tdFechaInicial: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    procedure ActualizaFirmas (dFecha : TDateTime ) ;
    procedure btnReport2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdFechaInicialEnter(Sender: TObject);
    procedure tdFechaInicialExit(Sender: TObject);
    procedure tdFechaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);

    procedure frxDetalleGetValue(const VarName: String;
      var Value: Variant);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tdFechaInicialChange(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalledeInstalacion: TfrmDetalledeInstalacion;
  sSuperintendente, sSupervisor : String ;
  sPuestoSuperintendente, sPuestoSupervisor : String ;
  sTipoReporte : String ;
  dMontoMN, dMontoDLL : Currency ;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmDetalledeInstalacion.btnReport2Click(Sender: TObject);
Var
    dGenerado          : Real ;
    dGeneradoAcumulado : Real ;
    dReporteAnterior   : Real ;
    dInstalado         : Real ;
begin
   if not FileExists(global_files + global_miReporte + '_ResumenInstalacion.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_ResumenInstalacion.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;
   //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicial.Date then
   begin
       showmessage('la fecha final es menor a la fecha inicial' );
       tdFechaFinal.SetFocus;
       exit;
   end;
  try
     ActividadesxOrden.Active := False ;
        ActividadesxOrden.SQL.Clear ;
        ActividadesxOrden.SQL.Add('Select sContrato, sNumeroOrden, sIdConvenio, iNivel, iColor, sSimbolo, sWbs, sWbsAnterior, ' +
                                  'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, dCantidad,  ' +
                                  'dFechaInicio, dFechaFinal, dPonderado, dVentaMN, dVentaDLL ' +
                                  'from actividadesxorden Where sContrato = :contrato  ' +
                                  'and sIdConvenio = :Convenio And sNumeroOrden = :orden order by iItemOrden ') ;
        ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Contrato').Value    := global_contrato ;
        ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Convenio').Value    := global_convenio ;
        ActividadesxOrden.Params.ParamByName('Orden').DataType    := ftString ;
        ActividadesxOrden.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
        ActividadesxOrden.Open ;

        rDiarioFirmas (global_contrato, tsNumeroOrden.Text, 'A',tdFechaFinal.Date , frmDetalledeInstalacion ) ;
        frxDetalle.PreviewOptions.MDIChild := True ;
        frxDetalle.PreviewOptions.Modal := False ;
        frxDetalle.PreviewOptions.Maximized := lCheckMaximized () ;
        frxDetalle.PreviewOptions.ShowCaptions := False ;
        frxDetalle.Previewoptions.ZoomMode := zmPageWidth ;
        frxDetalle.LoadFromFile (global_files + global_MiReporte+'_ResumenInstalacion.fr3') ;
        frxDetalle.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo,sMenuP)); //rInstalad
  except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_detalledeinstalacion', 'Al generar el resumen del movimiento', 0);
        end;
  end;
end;


procedure TfrmDetalledeInstalacion.FormShow(Sender: TObject);
begin
  TRY
    sMenuP:=stMenu;
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rInstalado');
  	BotonPermiso.permisosBotones2(nil,nil,nil,btnReport2);
    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := global_contrato ;
    OrdenesdeTrabajo.Open ;

    If OrdenesdeTrabajo.RecordCount > 0 Then
        tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;

    tdFechaInicial.Date := Date ;
    tdFechaFinal.Date := Date ;
    tsNumeroOrden.SetFocus
  EXCEPT
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_detalledeinstalacion', 'Al iniciar el formulario', 0);
    end;
  END;
end;

procedure TfrmDetalledeInstalacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BotonPermiso.Free;
  action := cafree ;
end;

procedure TfrmDetalledeInstalacion.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaInicial.SetFocus  
end;

procedure TfrmDetalledeInstalacion.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmDetalledeInstalacion.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmDetalledeInstalacion.tdFechaInicialChange(Sender: TObject);
begin
  tdFechaFinal.Date:=tdFechainicial.Date;
end;

procedure TfrmDetalledeInstalacion.tdFechaInicialEnter(Sender: TObject);
begin
    tdFechaInicial.Color := global_color_entrada
end;

procedure TfrmDetalledeInstalacion.tdFechaInicialExit(Sender: TObject);
begin
    tdFechaInicial.Color := global_color_salida
end;

procedure TfrmDetalledeInstalacion.tdFechaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinal.SetFocus 
end;

procedure TfrmDetalledeInstalacion.tdFechaFinalChange(Sender: TObject);
begin
//  tdFechaFinal.MinDate:=tdFechainicial.Date;
end;

procedure TfrmDetalledeInstalacion.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entrada
end;

procedure TfrmDetalledeInstalacion.tdFechaFinalExit(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_salida
end;

procedure TfrmDetalledeInstalacion.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsNumeroOrden.SetFocus
end;        


procedure TfrmDetalledeInstalacion.ActividadesxOrdenCalcFields(
  DataSet: TDataSet);
begin
 try
   If ActividadesxOrden.FieldValues['sWbs'] <> Null Then
         ActividadesxOrdensWbsSpace.Text := espaces (ActividadesxOrden.FieldValues['iNivel']) + ActividadesxOrden.FieldValues['sWbs'] ;

     If ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' Then
     Begin
          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum(b.dCantidad) as Instalado From bitacoradeactividades b ' +
                                        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha < :Fecha And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad ' +
                                        'Group By b.sWbs, b.sNumeroActividad') ;
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value     := global_Contrato ;
          Connection.QryBusca2.Params.ParamByName('Orden').DataType     := ftString ;
          Connection.QryBusca2.Params.ParamByName('Orden').Value        := tsNumeroOrden.Text ;
          Connection.QryBusca2.Params.ParamByName('Fecha').DataType     := ftDate ;
          Connection.QryBusca2.Params.ParamByName('Fecha').Value        := tdFechaInicial.Date ;
          Connection.QryBusca2.Params.ParamByName('Wbs').DataType       := ftString ;
          Connection.QryBusca2.Params.ParamByName('Wbs').Value          := ActividadesxOrden.FieldValues['sWbs'] ;
          Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Actividad').Value    := ActividadesxOrden.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca2.RecordCount > 0 then
               ActividadesxOrdendAcumuladoAnterior.Value := Connection.qryBusca2.FieldValues['Instalado']
          Else
               ActividadesxOrdendAcumuladoAnterior.Value := 0 ;

          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum(b.dCantidad) as Instalado From bitacoradeactividades b ' +
                                        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad ' +
                                        'Group By b.sWbs, b.sNumeroActividad') ;
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value     := global_Contrato ;
          Connection.QryBusca2.Params.ParamByName('Orden').DataType     := ftString ;
          Connection.QryBusca2.Params.ParamByName('Orden').Value        := tsNumeroOrden.Text ;
          Connection.QryBusca2.Params.ParamByName('FechaI').DataType    := ftDate ;
          Connection.QryBusca2.Params.ParamByName('FechaI').Value       := tdFechaInicial.Date ;
          Connection.QryBusca2.Params.ParamByName('FechaF').DataType    := ftDate ;
          Connection.QryBusca2.Params.ParamByName('FechaF').Value       := tdFechaFinal.Date ;
          Connection.QryBusca2.Params.ParamByName('Wbs').DataType       := ftString ;
          Connection.QryBusca2.Params.ParamByName('Wbs').Value          := ActividadesxOrden.FieldValues['sWbs'] ;
          Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Actividad').Value    := ActividadesxOrden.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca2.RecordCount > 0 then
               ActividadesxOrdendCantidadPeriodo.Value := Connection.qryBusca2.FieldValues['Instalado']
          Else
               ActividadesxOrdendCantidadPeriodo.Value := 0 ;


         ActividadesxOrdendAcumulado.Value := ActividadesxOrdendCantidadPeriodo.Value + ActividadesxOrdendAcumuladoAnterior.Value ;
         ActividadesxOrdendTotal.Value := ActividadesxOrdendCantidadPeriodo.Value * ActividadesxOrdendVentaMN.Value ;
         ActividadesxOrdendTotalAcumulado.Value := ActividadesxOrdendAcumulado.Value * ActividadesxOrdendVentaMN.Value ;
     End
     Else
     Begin
         // Es Paquete ...

          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum(b.dCantidad * a.dVentaMN) as dTotal From bitacoradeactividades b ' +
                                       'inner join actividadesxorden a on (a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden and a.sWbs = b.sWbs And a.sNumeroActividad = b.sNumeroActividad and a.sIdConvenio = :Convenio) ' +
                                       'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha >= :FechaI and b.dIdFecha <= :FechaF And b.sWbs Like :Wbs ' +
                                       'Group By b.sContrato') ;
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value    := global_Contrato ;
          Connection.QryBusca2.Params.ParamByName('Orden').DataType    := ftString ;
          Connection.QryBusca2.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
          Connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('convenio').Value    := global_convenio ;
          Connection.QryBusca2.Params.ParamByName('FechaI').DataType   := ftDate ;
          Connection.QryBusca2.Params.ParamByName('FechaI').Value      := tdFechaInicial.Date ;
          Connection.QryBusca2.Params.ParamByName('FechaF').DataType   := ftDate ;
          Connection.QryBusca2.Params.ParamByName('FechaF').Value      := tdFechaFinal.Date ;
          Connection.QryBusca2.Params.ParamByName('Wbs').DataType      := ftString ;
          Connection.QryBusca2.Params.ParamByName('Wbs').Value         := Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%' ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca2.RecordCount > 0 then
               ActividadesxOrdendTotal.Value := connection.QryBusca2.FieldValues['dTotal']
          Else
               ActividadesxOrdendTotal.Value := 0 ;

          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum(b.dCantidad * a.dVentaMN) as dTotal From bitacoradeactividades b ' +
                                       'inner join actividadesxorden a on (a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden and a.sWbs = b.sWbs And a.sNumeroActividad = b.sNumeroActividad and a.sIdConvenio = :Convenio) ' +
                                       'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha <= :Fecha And b.sWbs Like :Wbs ' +
                                       'Group By b.sContrato') ;
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value    := global_Contrato ;
          Connection.QryBusca2.Params.ParamByName('Orden').DataType    := ftString ;
          Connection.QryBusca2.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
          Connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('convenio').Value    := global_convenio ;
          Connection.QryBusca2.Params.ParamByName('Fecha').DataType    := ftDate ;
          Connection.QryBusca2.Params.ParamByName('Fecha').Value       := tdFechaFinal.Date ;
          Connection.QryBusca2.Params.ParamByName('Wbs').DataType      := ftString ;
          Connection.QryBusca2.Params.ParamByName('Wbs').Value         := Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%' ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca2.RecordCount > 0 then
               ActividadesxOrdendTotalAcumulado.Value := connection.QryBusca2.FieldValues['dTotal']
          Else
               ActividadesxOrdendTotalAcumulado.Value := 0 ;

     End ;

 except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_detalledeinstalacion', 'En el proceso actividadesxordencalcfields', 0);
        end;
 end;
end;

procedure TfrmDetalledeInstalacion.ActualizaFirmas( dFecha: TDateTime );
Begin
  try
    sSuperIntendente := '' ;
    sSupervisor := '' ;
    sPuestoSuperintendente := '' ;
    sPuestoSupervisor := '' ;
    connection.qryBusca2.Active := False ;
    connection.qryBusca2.SQL.Clear ;
    connection.qryBusca2.SQL.Add('Select * from firmas where sContrato = :contrato and dIdFecha = :fecha') ;
    Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate ;
    Connection.QryBusca2.Params.ParamByName('fecha').Value := dFecha ;
    connection.qryBusca2.Open ;
    If connection.qryBusca2.RecordCount > 0 then
    Begin
        sSuperintendente := connection.qryBusca2.FieldValues['sFirmante1'] ;
        sSupervisor := connection.qryBusca2.FieldValues['sFirmante3'] ;
        sPuestoSuperintendente := connection.qryBusca2.FieldValues['sPuesto1'] ;
        sPuestoSupervisor := connection.qryBusca2.FieldValues['sPuesto3'] ;
    End
    Else
    Begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('Select * from firmas where sContrato = :contrato and dIdFecha <= :fecha Order By dIdFecha DESC') ;
        Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate ;
        Connection.QryBusca2.Params.ParamByName('fecha').Value := dFecha ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 then
        Begin
            sSuperintendente := connection.qryBusca2.FieldValues['sFirmante1'] ;
            sSupervisor := connection.qryBusca2.FieldValues['sFirmante3'] ;
            sPuestoSuperintendente := connection.qryBusca2.FieldValues['sPuesto1'] ;
            sPuestoSupervisor := connection.qryBusca2.FieldValues['sPuesto3'] ;
        End
    End ;
  except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_detalledeinstalacion', 'En el proceso Actualizar firmas', 0);
        end;
  end;
End ;

{
procedure TfrmDetalledeInstalacion.btnReport1Click(Sender: TObject);
begin
    messageDLg('No se puede Imprimir!, Existe una version mejorada del Reporde de Detalle de Movimientos en el Modulo de Reporte Periodo (Icono de la Camra), Checalo!', mtInformation, [mbOk], 0);
    exit;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal, dMontoMN, dMontoDLL From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
    Connection.qryBusca.Open ;

    Detalle.Active := False ;
    Detalle.Params.ParamByName('Contrato').DataType := ftString ;
    Detalle.Params.ParamByName('Contrato').Value := global_contrato ;
    Detalle.Params.ParamByName('Convenio').DataType := ftString ;
    Detalle.Params.ParamByName('Convenio').Value := global_convenio ;
    Detalle.Params.ParamByName('Orden').DataType := ftString ;
    Detalle.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
    Detalle.Params.ParamByName('Inicio').DataType := ftDate ;
    Detalle.Params.ParamByName('Inicio').Value := tdFechaInicial.Date ;
    Detalle.Params.ParamByName('Final').DataType := ftDate ;
    Detalle.Params.ParamByName('Final').Value := tdFechaFinal.Date ;
    Detalle.Open ;

    rDiarioFirmas (global_contrato, tsNumeroOrden.Text, tdFechaFinal.Date , frmDetalledeInstalacion ) ;
    frxDetalle.PreviewOptions.MDIChild := True ;
    frxDetalle.PreviewOptions.Modal := False ;
    frxDetalle.PreviewOptions.Maximized := lCheckMaximized () ;
    frxDetalle.PreviewOptions.ShowCaptions := False ;
    frxDetalle.Previewoptions.ZoomMode := zmPageWidth ;
    frxDetalle.LoadFromFile (global_files + 'DetalleInstalacion.fr3') ;
    frxDetalle.ShowReport ;

end;  }

procedure TfrmDetalledeInstalacion.frxDetalleGetValue(
  const VarName: String; var Value: Variant);
begin
  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PERIODO_CONTRATO') = 0 then
      Value := 'DEL ' + DateToStr ( Connection.qryBusca.FieldValues ['dFechaInicio']) + ' AL ' + DateToStr ( Connection.qryBusca.FieldValues ['dFechaFinal']) ;
  If CompareText(VarName, 'PERIODO') = 0 then
      Value := 'Del ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaInicial.Date) + ' al ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaFinal.Date);
  If CompareText(VarName, 'MONTOMN') = 0 then
      Value := Connection.qryBusca.FieldValues ['dMontoMN'] ;
  If CompareText(VarName, 'MONTODLL') = 0 then
      Value := Connection.qryBusca.FieldValues ['dMontoDLL'] ;
  If CompareText(VarName, 'INICIO') = 0 then
      Value := DateToStr (tdFechaInicial.Date) ;
  If CompareText(VarName, 'FINAL') = 0 then
      Value := DateToStr (tdFechaFinal.Date) ;
  If CompareText(VarName, 'ORDEN') = 0 then
      Value := tsNumeroOrden.Text  ;
  If CompareText(VarName, 'DESCRIPCION') = 0 then
      Value := Connection.contrato.FieldValues['mDescripcion'] ;
end;


end.
