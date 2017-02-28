unit frm_DistribucionPrograma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, DB, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, ComCtrls, Math, Utilerias, masUtilerias, ZDataset,
  ZAbstractRODataset, Gauges, unitexcepciones;

type
  TfrmDistribucionPrograma = class(TForm)
    Label1: TLabel;
    PgDistribucion: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    OrdenesdeTrabajo: TZReadOnlyQuery;
    OrdenesdeTrabajosNumeroOrden: TStringField;
    btnAdd: TBitBtn;
    btnDel: TBitBtn;
    Label2: TLabel;
    GrOrdenes: TGroupBox;
    tsOrdenes: TListBox;
    grOrdenesCheck: TGroupBox;
    tsOrdenCheck: TListBox;
    Label3: TLabel;
    chkDistribucion: TCheckBox;
    chkAvances: TCheckBox;
    Progress: TGauge;
    btnIniciaProceso: TBitBtn;
    chkPonderados: TCheckBox;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    chkPaquetes: TCheckBox;
    procedure btnOkClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnIniciaProcesoClick(Sender: TObject);
    function lExisteMedida ( sMedida : string ) : Boolean ;
    procedure BitBtn1Click(Sender: TObject);
        
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDistribucionPrograma: TfrmDistribucionPrograma;

implementation

{$R *.dfm}

function TfrmDistribucionPrograma.lExisteMedida ( sMedida : string ) : Boolean ;
Begin
  lExisteMedida := False ;
  lExisteMedida := ( strPos( pchar( connection.configuracion.FieldByName('txtMaterialAutomatico').AsString ) , pchar(sMedida + '|') ) <> nil )
End ;

procedure TfrmDistribucionPrograma.btnOkClick(Sender: TObject);
Var
    dDistribuido : Real;
    dAjuste      : Real ;
    dFactorDiario : Real ;
    dCantidadEntera : Real ;
    dHorasTotales   : Real ;
    dHorasDiarias   : Real ;
    txtAux : String ;
    dCantidad : Double ;
    dFechaInicial    : tDate ;
    QryActividadesxOrden : TZReadOnlyQuery ;
    sWbs,
    sNumeroActividad     : String;
begin

end;


procedure TfrmDistribucionPrograma.btnExitClick(Sender: TObject);
begin
    Close
end;

procedure TfrmDistribucionPrograma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmDistribucionPrograma.FormShow(Sender: TObject);
begin
  try
    connection.configuracion.refresh ;
    pgDistribucion.ActivePageIndex := 0 ;
    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('contrato').Value := global_contrato ;
    ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
    ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
    OrdenesdeTrabajo.Open ;
    While NOT OrdenesdeTrabajo.Eof Do
    Begin
        tsOrdenes.Items.Add(OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ) ;
        OrdenesdeTrabajo.Next ;
    End
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al iniciar las consultas del inicio', 0);
   end;
  end;

end;

procedure TfrmDistribucionPrograma.btnAddClick(Sender: TObject);
Var
  Item  : Integer ;
begin
  try
    If tsOrdenes.Items.Count > 0 Then
    Begin
        Item := tsOrdenes.ItemIndex ;
        tsOrdenCheck.Items.Add( tsOrdenes.Items.Strings[tsOrdenes.ItemIndex]) ;
        tsOrdenes.Items.Delete(tsOrdenes.ItemIndex) ;
        If Item <= tsOrdenes.Count Then
            tsOrdenes.ItemIndex := Item ;
        tsOrdenes.SetFocus ;
    End
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'agregar un frente de trabajo', 0);
   end;
  end;

end;

procedure TfrmDistribucionPrograma.btnDelClick(Sender: TObject);
Var
  Item  : Integer ;
begin
  try
    If tsOrdenCheck.Items.Count > 0 Then
    Begin
        Item := tsOrdenCheck.ItemIndex ;
        tsOrdenes.Items.Add( tsOrdenCheck.Items.Strings[tsOrdenCheck.ItemIndex]) ;
        tsOrdenCheck.Items.Delete(tsOrdenCheck.ItemIndex) ;
        If Item <= tsOrdenCheck.Count Then
            tsOrdenCheck.ItemIndex := Item ;
        tsOrdenCheck.SetFocus
    End
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al quitar un frente de trabajo', 0);
   end;
  end;

end;

procedure TfrmDistribucionPrograma.btnIniciaProcesoClick(Sender: TObject);
Var
    iOrden : Byte ;
    dMontoContrato : Currency ;
    dFechaInicial   : tDate ;
    QryActividadesxOrden : TZReadOnlyQuery ;
    QryDistribucion       : TZReadOnlyQuery ;

    sWbs,
    sNumeroActividad     : String;
    dHorasTotales   : Real ;
    dHorasDiarias   : Real ;
    dDistribuido    : Currency ;
    dAjuste         : Currency ;
    dFactorDiario,
    dFactorReal     : Extended ;
    dCantidadEntera : Currency  ;
    txtAux          : String ;

    dPonderadoGlobal : Currency ;
    dPonderadoDia    : Currency ;
    dPonderadoAjuste,
    dPonderadoContrato : currency ;
    lCalculoNormal     : Boolean ;

    sPaquetes: array[1..20] of string;
    dPaquetes: array[1..20] of Currency ;
    iPosicion: Integer ;
    iPaquete : Integer ;
    sPaquete : String ;
    dPaquete : Extended ;
    dCantidad,
    dDiferencia : Extended ;
    sRaiz     : String ;
begin
try
 If tsOrdenCheck.Items.Count > 0 Then
 For iOrden := 0 To  tsOrdenCheck.Items.Count - 1 Do
 Begin
    // Antes de Ponderar conceptos, se deberan validar todos los reportes diarios del contrato ...
    connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('select sNumeroReporte from reportediario Where sContrato =:Contrato and sNumeroOrden = :Orden and lStatus <> "Autorizado"') ;
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
    connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
    connection.QryBusca.Open ;
    If Connection.QryBusca.RecordCount > 0 Then
        MessageDlg('Existen Reportes Diario pendientes de autorizar en la orden ' + tsOrdenCheck.Items.Strings[iOrden] + '. Autorize todos los reportes diario para poder realizar el calculo de ponderados de la orden.', mtInformation, [mbOk], 0)
    Else
    Begin
        If chkPonderados.Checked Then
        Begin
            // Actualizacion de ponderados ....
            //Calculo el monto del programa ...
            Connection.zCommand.Active := False ;
            Connection.zCommand.SQL.Clear ;
            Connection.zCommand.SQL.Add( 'update actividadesxorden SET dPonderado = 0 ' +
                                         'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
            connection.zCommand.ExecSQL ;

            If connection.configuracion.FieldValues['lCalculoPonderado'] = 'Financiero' Then
            begin
                dMontoContrato := 0 ;

                Connection.qryBusca.Active := False ;
                Connection.qryBusca.SQL.Clear ;
                Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaMN) as dMontoMN From actividadesxorden ' +
                                            'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and lCalculo = "Si" group by sContrato') ;
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
                Connection.qryBusca.Open ;
                If Connection.qryBusca.RecordCount > 0 Then
                    dMontoContrato := Connection.qryBusca.FieldValues['dMontoMN'] ;

                If dMontoContrato > 0 Then
                Begin
                    Connection.zCommand.Active := False ;
                    Connection.zCommand.SQL.Clear ;
                    Connection.zCommand.SQL.Add( 'update actividadesxorden SET dPonderado = (((dCantidad * dVentaMN) / :montocontrato) * 100) ' +
                                                 'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dCantidad <> 0 and lCalculo = "Si"') ;
                    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
                    connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                    connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
                    connection.zCommand.Params.ParamByName('montocontrato').DataType := ftFloat ;
                    connection.zCommand.Params.ParamByName('montocontrato').Value := dMontoContrato ;
                    connection.zCommand.ExecSQL ;
                end ;
            end
            Else
                If connection.configuracion.FieldValues['lCalculoPonderado'] = 'Duracion' Then
                begin
                    //Calculo el monto del programa ...
                    Connection.qryBusca.Active := False ;
                    Connection.qryBusca.SQL.Clear ;
                    Connection.qryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From actividadesxorden ' +
                                                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and lCalculo = "Si" group by sContrato') ;
                    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
                    Connection.qryBusca.Open ;
                    If connection.qryBusca.RecordCount > 0 Then
                    Begin
                        Connection.zCommand.Active := False ;
                        Connection.zCommand.SQL.Clear ;
                        Connection.zCommand.SQL.Add( 'update actividadesxorden SET dPonderado = ((dDuracion / :duracioncontrato) * 100) ' +
                                                     'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dDuracion <> 0 And lCalculo = "Si"') ;
                        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
                        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
                        connection.zCommand.Params.ParamByName('duracioncontrato').DataType := ftFloat ;
                        connection.zCommand.Params.ParamByName('duracioncontrato').Value := Connection.qryBusca.FieldValues['dDuracionTotal'] ;
                        connection.zCommand.ExecSQL ;
                    end
                End
                Else
                Begin
                    // Primero el Financiero MN
                    dMontoContrato := 0 ;
                    Connection.qryBusca.Active := False ;
                    Connection.qryBusca.SQL.Clear ;
                    Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaMN) as dMontoMN From actividadesxorden ' +
                                                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And lCalculo = "Si" group by sContrato') ;
                    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
                    Connection.qryBusca.Open ;
                    If Connection.qryBusca.RecordCount > 0 Then
                        dMontoContrato := Connection.qryBusca.FieldValues['dMontoMN'] ;

                    If dMontoContrato > 0 Then
                    Begin
                        Connection.zCommand.Active := False ;
                        Connection.zCommand.SQL.Clear ;
                        Connection.zCommand.SQL.Add( 'update actividadesxorden SET dPonderado = (((dCantidad * dVentaMN) / :montocontrato) * 100) ' +
                                                     'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dCantidad <> 0 And lCalculo = "Si"') ;
                        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
                        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
                        connection.zCommand.Params.ParamByName('montocontrato').DataType := ftFloat ;
                        connection.zCommand.Params.ParamByName('montocontrato').Value := dMontoContrato ;
                        connection.zCommand.ExecSQL ;
                    end ;

                    // Primero el Financiero DLL
                    dMontoContrato := 0 ;
                    Connection.qryBusca.Active := False ;
                    Connection.qryBusca.SQL.Clear ;
                    Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaDLL) as dMontoDLL From actividadesxorden ' +
                                                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And lCalculo = "Si" group by sContrato') ;
                    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
                    Connection.qryBusca.Open ;
                    If Connection.qryBusca.RecordCount > 0 Then
                        dMontoContrato := Connection.qryBusca.FieldValues['dMontoDLL'] ;

                    If dMontoContrato > 0 Then
                    Begin
                        Connection.zCommand.Active := False ;
                        Connection.zCommand.SQL.Clear ;
                        Connection.zCommand.SQL.Add( 'update actividadesxorden SET dPonderado = ((dPonderado + (((dCantidad * dVentaDLL) / :montocontrato) * 100)) / 2) ' +
                                                     'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dCantidad <> 0 And lCalculo = "Si"') ;
                        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
                        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
                        connection.zCommand.Params.ParamByName('montocontrato').DataType := ftFloat ;
                        connection.zCommand.Params.ParamByName('montocontrato').Value := dMontoContrato ;
                        connection.zCommand.ExecSQL ;
                    end ;

                    // Fisico en Moneda Nacional
                    //Calculo el monto del programa ...
                    Connection.qryBusca.Active := False ;
                    Connection.qryBusca.SQL.Clear ;
                    Connection.qryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From actividadesxorden ' +
                                                'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And lCalculo = "Si" group by sContrato') ;
                    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
                    Connection.qryBusca.Open ;
                    If connection.qryBusca.RecordCount > 0 Then
                    Begin
                        Connection.zCommand.Active := False ;
                        Connection.zCommand.SQL.Clear ;
                        Connection.zCommand.SQL.Add( 'update actividadesxorden SET dPonderado = (dPonderado + (((dDuracion / :duracioncontrato) * 100)) / 2) ' +
                                                     'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dDuracion <> 0 And lCalculo = "Si"') ;
                        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
                        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
                        connection.zCommand.Params.ParamByName('duracioncontrato').DataType := ftFloat ;
                        connection.zCommand.Params.ParamByName('duracioncontrato').Value := Connection.qryBusca.FieldValues['dDuracionTotal'] ;
                        connection.zCommand.ExecSQL ;
                    end
                end ;


            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Distinct sWBS From actividadesxorden ' +
                                         'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC') ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
            Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio ;
            Connection.qryBusca2.Open ;
            While NOT Connection.qryBusca2.Eof Do
            Begin
                Connection.qryBusca.Active := False ;
                Connection.qryBusca.SQL.Clear ;
                Connection.qryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
                                            'sum(dCantidad * dVentaMN) as dMontoMN, sum(dCantidad * dVentaDLL) as dMontoDLL From actividadesxorden ' +
                                            'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sWBSAnterior = :Paquete Group By sWBSAnterior') ;
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
                Connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Paquete').Value := Connection.qryBusca2.FieldValues['sWBS'] ;
                Connection.qryBusca.Open ;
                If Connection.qryBusca.RecordCount > 0 Then
                    If (NOT Connection.qryBusca.FieldByName('dFechaInicio').IsNull) And (NOT Connection.qryBusca.FieldByName('dFechaFinal').IsNull) Then
                    Begin
                        Connection.zCommand.Active := False ;
                        Connection.zCommand.SQL.Clear ;
                        Connection.zCommand.SQL.Add( 'Update actividadesxorden SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
                                                     'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And ' +
                                                     'sWBS = :Paquete And sTipoActividad = "Paquete"') ;
                        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
                        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
                        connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('Paquete').Value := Connection.qryBusca2.FieldValues['sWBS'] ;
                        connection.zCommand.Params.ParamByName('Inicio').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('Inicio').Value := Connection.qryBusca.FieldValues['dFechaInicio'] ;
                        connection.zCommand.Params.ParamByName('Final').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('Final').Value := Connection.qryBusca.FieldValues['dFechaFinal'] ;
                        connection.zCommand.Params.ParamByName('Ponderado').DataType := ftFloat ;
                        If roundTo(Connection.qryBusca.FieldValues['dPonderado'], -2) >= 100 Then
                            connection.zCommand.Params.ParamByName('Ponderado').Value := 100
                        Else
                            connection.zCommand.Params.ParamByName('Ponderado').Value := Connection.qryBusca.FieldValues['dPonderado'] ;
                        connection.zCommand.Params.ParamByName('MontoMN').DataType := ftFloat ;
                        connection.zCommand.Params.ParamByName('MontoMN').Value := Connection.qryBusca.FieldValues['dMontoMN'] ;
                        connection.zCommand.Params.ParamByName('MontoDLL').DataType := ftFloat ;
                        connection.zCommand.Params.ParamByName('MontoDLL').Value := Connection.qryBusca.FieldValues['dMontoDLL'] ;
                        connection.zCommand.ExecSQL ;
                    End ;
                Connection.qryBusca2.Next
            End ;

            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From actividadesxorden ' +
                                        'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And iNivel = 0') ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
            Connection.qryBusca.Open ;
            If Connection.qryBusca.RecordCount > 0 Then
            Begin
                //Actualizo la orden
                Connection.zCommand.Active := False ;
                Connection.zCommand.SQL.Clear ;
                Connection.zCommand.SQL.Add( 'Update ordenesdetrabajo SET dFIProgramado = :Inicio, dFFProgramado = :Final ' +
                                             'Where sContrato = :Contrato And sNumeroOrden = :Orden') ;
                connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
                connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                connection.zCommand.Params.ParamByName('Inicio').DataType := ftDate ;
                connection.zCommand.Params.ParamByName('Inicio').Value := Connection.qryBusca.FieldValues['dFechaInicio'] ;
                connection.zCommand.Params.ParamByName('Final').DataType := ftDate ;
                connection.zCommand.Params.ParamByName('Final').Value := Connection.qryBusca.FieldValues['dFechaFinal'] ;
                connection.zCommand.ExecSQL ;
            End
        End ;

        If chkDistribucion.Checked Then
        Begin
            // Distribucion del Programa de Trabajo
            // Inicializo Borrando toda la distribucion anterior
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'DELETE FROM distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio ;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
            connection.zCommand.ExecSQL ;

            connection.QryBusca.Active := False ;
            connection.QryBusca.SQL.Clear ;
            connection.QryBusca.SQL.Add('select count(sNumeroOrden) as iOrdenes from ordenesdetrabajo Where sContrato = :contrato and sNumeroOrden NOT LIKE "%TIERRA%" group by sContrato') ;
            connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
            connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
            connection.QryBusca.Open ;
            lCalculoNormal := True ;
            If connection.QryBusca.RecordCount > 0 Then
                If connection.QryBusca.FieldValues['iOrdenes'] = 1 Then
                    If MessageDlg('Desea distribuir el programa de trabajo de acuerdo al programa calendarizado de ejecucion de los trabajos del contrato?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                        lCalculoNormal := False ;


            QryActividadesxOrden := tzReadOnlyQuery.Create(self);
            QryActividadesxOrden.Connection := connection.zconnection ;
            If lCalculoNormal Then
            Begin
                // Distribucion de Actividades (Paquete, Partida)
                QryActividadesxOrden.Active := False ;
                QryActividadesxOrden.SQL.Clear ;
                QryActividadesxOrden.SQL.Add('Select sWbs, sNumeroActividad, mDescripcion, dCantidad, sMedida, dFechaInicio, dFechaFinal from actividadesxorden ' +
                                             'where sContrato = :Contrato and sIdConvenio = :Convenio and sNumeroOrden = :Orden And ' +
                                             'sTipoActividad = "Actividad" and dCantidad > 0 order by iItemOrden') ;
                QryActividadesxOrden.Params.ParamByName('contrato').DataType := ftString ;
                QryActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato ;
                QryActividadesxOrden.Params.ParamByName('convenio').DataType := ftString ;
                QryActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio ;
                QryActividadesxOrden.Params.ParamByName('Orden').DataType := ftString ;
                QryActividadesxOrden.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                QryActividadesxOrden.Open ;
                If QryActividadesxOrden.RecordCount > 0 then
                Begin
                    Progress.visible := True ;
                    Progress.MinValue := 1;
                    Progress.MaxValue := QryActividadesxOrden.RecordCount;
                    Progress.Progress := 0;
                    QryActividadesxOrden.First ;
                    While Not QryActividadesxOrden.Eof Do
                    Begin
                        sWbs := QryActividadesxOrden.FieldValues['sWbs'] ;
                        sNumeroActividad := QryActividadesxOrden.FieldValues['sNumeroActividad'] ;
                        dHorasTotales := 0 ;
                        dHorasTotales := ifnJornadaTotal ( global_contrato, QryActividadesxOrden.FieldValues ['dFechaInicio'], QryActividadesxOrden.FieldValues ['dFechaFinal'], frmDistribucionPrograma ) ;
                        dFechaInicial := QryActividadesxOrden.FieldValues ['dFechaInicio'] ;
                        If NOT lExisteMedida ( QryActividadesxOrden.FieldValues ['sMedida'] ) then
                        Begin
                            dDistribuido := 0 ;
                            dDiferencia := 0;
                            While dFechaInicial <= QryActividadesxOrden.FieldValues['dFechaFinal'] Do
                            Begin
                                dHorasDiarias := ifnJornadaDia ( global_contrato, dFechaInicial, frmDistribucionPrograma ) ;
                                If dHorasDiarias > 0 Then
                                Begin
                                    { Eduardo Rangel Vallejo
                                      Modificación para ajuste automático }
                                    dFactorReal   := ((dHorasDiarias / dHorasTotales) * QryActividadesxOrden.FieldByName('dCantidad').AsFloat) + dDiferencia;
                                    dFactorDiario := dFactorReal;
                                    dFactorDiario := Trunc(dFactorDiario * 10000) / 10000;
                                    dDiferencia   := dFactorReal - dFactorDiario;
                                    {Str(dFactorDiario:8:8, txtAux ) ;
                                    txtAux := Copy ( txtAux , 1 , Pos ( '.', txtAux ) + 5 ) ;
                                    dFactorDiario := rfnDecimal(txtAux) ;}
                                    Try
                                        connection.zCommand.Active := False ;
                                        connection.zCommand.SQL.Clear ;
                                        connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                                                                      ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad)') ;
                                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio ;
                                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('orden').value := tsOrdenCheck.Items.Strings[iOrden] ;
                                        connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                        connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                        connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                        connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                        connection.zCommand.Params.ParamByName('cantidad').value := dFactorDiario ;
                                        connection.zCommand.ExecSQL ;
                                        dDistribuido := dDistribuido + dFactorDiario ;
                                    Except
                                      on e : exception do begin
                                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al actualizar la destribución', 0);
                                      end;
                                    End ;
                                End ;
                                dFechaInicial := dFechaInicial + 1 ;
                            End ;

                            dAjuste := 0 ;
                            If dDistribuido > QryActividadesxOrden.FieldValues ['dCantidad'] then
                                dAjuste := ( dDistribuido - QryActividadesxOrden.FieldValues ['dCantidad'] ) * -1
                            Else
                                If dDistribuido < QryActividadesxOrden.FieldValues ['dCantidad'] then
                                    dAjuste := QryActividadesxOrden.FieldValues ['dCantidad'] -  dDistribuido ;

                            If dAjuste <> 0 then
                            Begin
                                 connection.qryBusca.Active := False ;
                                 connection.qryBusca.SQL.Clear ;
                                 connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio and ' +
                                                             'sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :actividad Order By dIdFecha DESC') ;
                                 connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
                                 connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                                 connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
                                 connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio ;
                                 connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                                 connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                                 connection.qryBusca.Params.ParamByName('wbs').DataType := ftString ;
                                 connection.qryBusca.Params.ParamByName('wbs').Value := sWbs ;
                                 connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
                                 connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad ;
                                 connection.qryBusca.Open ;
                                 If connection.qryBusca.RecordCount > 0 Then
                                 Begin
                                      Try
                                          connection.zCommand.Active := False ;
                                          connection.zCommand.SQL.Clear ;
                                          connection.zCommand.SQL.Add ( 'UPDATE distribuciondeactividades SET dCantidad = :Cantidad where sContrato = :contrato And ' +
                                                                        'dIdFecha = :fecha And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad') ;
                                          connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
                                          connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('convenio').Value := global_convenio ;
                                          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                          connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues ['dIdFecha'] ;
                                          connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                                          connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('wbs').Value := sWbs ;
                                          connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('actividad').Value := sNumeroActividad ;
                                          connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                                          connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues ['dCantidad'] + dAjuste ;
                                          connection.zCommand.ExecSQL ;
                                      Except
                                          MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + QryActividadesxOrden.FieldValues ['sNumeroActividad'] , mtInformation, [mbOk], 0)
                                      End
                                 End
                            End
                        End
                        Else
                        Begin
                            dDistribuido := 0 ;
                            dCantidadEntera := 0 ;
                            While dFechaInicial <= QryActividadesxOrden.FieldValues ['dFechaFinal'] Do
                            Begin
                                dHorasDiarias := ifnJornadaDia ( global_contrato, dFechaInicial, frmDistribucionPrograma ) ;
                                If dHorasDiarias > 0 Then
                                Begin
                                    dFactorDiario := ( dHorasDiarias / dHorasTotales ) * QryActividadesxOrden.FieldValues ['dCantidad'] ;
                                    Str(dFactorDiario:8:8, txtAux ) ;
                                    txtAux := Copy ( txtAux , 1 , Pos ( '.', txtAux ) + 5 ) ;
                                    try
                                        dFactorDiario := rfnDecimal(txtAux) ;
                                    except
                                        on e : exception do begin
                                            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al iniciar proceso, al calcular el factor diario', 0);
                                        end;
                                    end;
                                    dCantidadEntera := dCantidadEntera + dFactorDiario ;
                                    If dFechaInicial = QryActividadesxOrden.FieldValues ['dFechaFinal'] then
                                    Begin
                                        Try
                                            connection.zCommand.Active := False ;
                                            connection.zCommand.SQL.Clear ;
                                            connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                                                                          ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad)') ;
                                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                            connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio ;
                                            connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('orden').value := tsOrdenCheck.Items.Strings[iOrden] ;
                                            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                            connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                            connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                            connection.zCommand.Params.ParamByName('cantidad').value := dCantidadEntera ;
                                            connection.zCommand.ExecSQL ;
                                            dDistribuido := dDistribuido + dCantidadEntera ;
                                        Except
                                          on e : exception do begin
                                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al actualizar registro', 0);
                                          end;
                                        End ;
                                    end
                                    Else
                                        If Trunc(dCantidadEntera) > 0 then
                                        Begin
                                            Try
                                                connection.zCommand.Active := False ;
                                                connection.zCommand.SQL.Clear ;
                                                connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                                                                              ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad)') ;
                                                connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                                connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                                connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio ;
                                                connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                                connection.zCommand.Params.ParamByName('orden').value := tsOrdenCheck.Items.Strings[iOrden] ;
                                                connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                                connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                                connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                                connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                                connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                                connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                                connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                                connection.zCommand.Params.ParamByName('cantidad').value := Trunc(dCantidadEntera) ;
                                                connection.zCommand.ExecSQL ;
                                                dDistribuido := dDistribuido + Trunc(dCantidadEntera) ;
                                                dCantidadEntera := dCantidadEntera - Trunc(dCantidadEntera) ;
                                            Except
                                                MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                                            End ;
                                        End
                                End ;
                                dFechaInicial := dFechaInicial + + 1 ;
                            End ;

                            dAjuste := 0 ;
                            If dDistribuido > QryActividadesxOrden.FieldValues ['dCantidad'] then
                                dAjuste := ( dDistribuido - QryActividadesxOrden.FieldValues ['dCantidad'] ) * -1
                            Else
                                If dDistribuido < QryActividadesxOrden.FieldValues ['dCantidad'] then
                                    dAjuste := QryActividadesxOrden.FieldValues ['dCantidad'] - dDistribuido ;

                            If dAjuste <> 0 then
                            Begin
                                dFechaInicial := QryActividadesxOrden.FieldValues ['dFechaFinal'] ;
                                connection.qryBusca.Active := False ;
                                connection.qryBusca.SQL.Clear ;
                                connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And ' +
                                                             'sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :actividad Order By dIdFecha Desc') ;
                                connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
                                connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                                connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
                                connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio ;
                                connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                                connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                                connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString ;
                                connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs ;
                                connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
                                connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad ;
                                connection.qryBusca.Open ;
                                If connection.qryBusca.RecordCount > 0 Then
                                Begin
                                    Try
                                         connection.zCommand.Active := False ;
                                         connection.zCommand.SQL.Clear ;
                                         connection.zCommand.SQL.Add ( 'UPDATE distribuciondeactividades SET dCantidad = :Cantidad where sContrato = :contrato And ' +
                                                                       'dIdFecha = :fecha And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad') ;
                                         connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                         connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
                                         connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                         connection.zCommand.Params.ParamByName('convenio').Value := global_convenio ;
                                         connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                         connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues ['dIdFecha'] ;
                                         connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                                         connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                                         connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                                         connection.zCommand.Params.ParamByName('wbs').Value := sWbs ;
                                         connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                                         connection.zCommand.Params.ParamByName('actividad').Value := sNumeroActividad ;
                                         connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                                         connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues ['dCantidad'] + dAjuste ;
                                         connection.zCommand.ExecSQL ;
                                     Except
                                          MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + QryActividadesxOrden.FieldValues ['sNumeroActividad'] , mtInformation, [mbOk], 0)
                                     End
                                 End
                            End
                        End ;
                        Progress.Progress := Progress.Progress + 1 ;
                        QryActividadesxOrden.Next
                    End
                End
            End
            Else
            Begin
                QryActividadesxOrden.Active := False ;
                QryActividadesxOrden.SQL.Clear ;
                QryActividadesxOrden.SQL.Add('Select sNumeroActividad from actividadesxanexo ' +
                                             'where sContrato = :Contrato and sIdConvenio = :Convenio And sTipoActividad = "Actividad" and dCantidadAnexo > 0 order by iItemOrden') ;
                QryActividadesxOrden.Params.ParamByName('contrato').DataType := ftString ;
                QryActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato ;
                QryActividadesxOrden.Params.ParamByName('convenio').DataType := ftString ;
                QryActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio ;
                QryActividadesxOrden.Open ;
                If QryActividadesxOrden.RecordCount > 0 then
                Begin
                    Progress.visible := True ;
                    Progress.MinValue := 1;
                    Progress.MaxValue := QryActividadesxOrden.RecordCount;
                    Progress.Progress := 0;
                    QryActividadesxOrden.First ;
                    While Not QryActividadesxOrden.Eof Do
                    Begin
                        Connection.qryBusca.Active := False ;
                        Connection.qryBusca.SQL.Clear ;
                        Connection.qryBusca.SQL.Add('Select sWbs, dCantidad From actividadesxorden where sContrato = :Contrato And ' +
                                                    'sNumeroOrden = :Orden And sIdConvenio = :Convenio And sNumeroActividad = :Actividad And ' +
                                                    'sTipoActividad = "Actividad" Order By iItemOrden') ;
                        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                        Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                        Connection.qryBusca.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
                        Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
                        Connection.qryBusca.Params.ParamByName('Actividad').Value := QryActividadesxOrden.FieldValues['sNumeroActividad'] ;
                        Connection.qryBusca.Open ;
                        If Connection.qryBusca.RecordCount > 0 Then
                        Begin
                            iPosicion := 0 ;
                            While NOT Connection.qryBusca.Eof Do
                            Begin
                                iPosicion := iPosicion + 1 ;
                                sPaquetes[iPosicion] := Connection.qryBusca.FieldValues['sWbs'] ;
                                dPaquetes[iPosicion] := Connection.qryBusca.FieldValues['dCantidad'] ;
                                Connection.qryBusca.Next
                            End ;

                            Connection.qryBusca.Active := False ;
                            Connection.qryBusca.SQL.Clear ;
                            Connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad From distribuciondeanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad') ;
                            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
                            Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
                            Connection.qryBusca.Params.ParamByName('Actividad').Value := QryActividadesxOrden.FieldValues['sNumeroActividad'] ;
                            Connection.qryBusca.Open ;
                            iPaquete := 1 ;
                            sWbs := sPaquetes[iPaquete] ;
                            dPaquete := dPaquetes[iPaquete] ;
                            While NOT Connection.qryBusca.Eof Do
                            Begin
                                dCantidad := Connection.qryBusca.FieldValues['dCantidad'] ;
                                While dCantidad > 0 Do
                                Begin
                                    If dCantidad >= dPaquete Then
                                    Begin
                                        Try
                                            connection.zCommand.Active := False ;
                                            connection.zCommand.SQL.Clear ;
                                            connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dCantidad) ' +
                                                                          'VALUES (:Contrato, :Convenio, :Fecha, :Orden, :Wbs, :Actividad, :Cantidad) ') ;
                                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('contrato').value := global_contrato ;
                                            connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('convenio').value := global_convenio ;
                                            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                            connection.zCommand.Params.ParamByName('fecha').value := Connection.qryBusca.FieldValues['dIdFecha'] ;
                                            connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('Orden').value := tsOrdenCheck.Items.Strings[iOrden] ;
                                            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('Actividad').value := QryActividadesxOrden.FieldValues['sNumeroActividad'] ;
                                            connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                                            connection.zCommand.Params.ParamByName('Cantidad').value := dPaquete ;
                                            connection.zCommand.ExecSQL ;
                                            dCantidad := dCantidad - dPaquete ;
                                            If iPaquete < (iPosicion) Then
                                            Begin
                                                iPaquete := iPaquete + 1 ;
                                                sWbs := sPaquetes [iPaquete] ;
                                                dPaquete := dPaquetes [iPaquete] ;
                                            End
                                            Else
                                                dCantidad := 0 ;
                                        Except
                                             MessageDlg('Ocurrio un error al Actualizar el registro. Paquete: [' + sWbs + '] Actividad [' + QryActividadesxOrden.FieldValues['sNumeroActividad'] + ']' , mtInformation, [mbOk], 0);
                                        End
                                    End
                                    Else
                                    Begin
                                        Try
                                            connection.zCommand.Active := False ;
                                            connection.zCommand.SQL.Clear ;
                                            connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dCantidad) ' +
                                                                          'VALUES (:Contrato, :Convenio, :Fecha, :Orden, :Wbs, :Actividad, :Cantidad) ') ;
                                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('contrato').value := global_contrato ;
                                            connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('convenio').value := global_convenio ;
                                            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                            connection.zCommand.Params.ParamByName('fecha').value := Connection.qryBusca.FieldValues['dIdFecha'] ;
                                            connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('Orden').value := tsOrdenCheck.Items.Strings[iOrden] ;
                                            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                            connection.zCommand.Params.ParamByName('Actividad').value := QryActividadesxOrden.FieldValues['sNumeroActividad'] ;
                                            connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                                            connection.zCommand.Params.ParamByName('Cantidad').value := dCantidad ;
                                            connection.zCommand.ExecSQL ;
                                            dPaquete := dPaquete - dCantidad ;
                                            dCantidad := 0 ;
                                        Except
                                            MessageDlg('Ocurrio un error al Actualizar el registro. Paquete: [' + sWbs + '] Actividad [' + QryActividadesxOrden.FieldValues['sNumeroActividad'] + ']' , mtInformation, [mbOk], 0);
                                        End
                                    End
                                End ;
                                Connection.qryBusca.Next
                            End
                        End ;
                        Progress.Progress := Progress.Progress + 1 ;
                        QryActividadesxOrden.Next
                    End
                End
            End ;

            QryActividadesxOrden.Destroy ;
            Progress.Visible := False ;
        End ;

        // Rangelito
        If chkAvances.Checked Then
        Begin
             QryDistribucion := tzReadOnlyQuery.Create(self);
             QryDistribucion.Connection := connection.zconnection ;

             Connection.qryBusca2.Active := False ;
             Connection.qryBusca2.SQL.Clear ;
             Connection.qryBusca2.SQL.Add('Select min(dFechaInicio) as dFIProgramado, max(dFechaFinal) as dFFProgramado from actividadesxorden ' +
                                          'Where sContrato = :Contrato And sNumeroOrden = :orden and sIdConvenio = :convenio and sTipoActividad = "Actividad"') ;
             Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
             Connection.qryBusca2.Params.ParamByName('orden').DataType := ftString ;
             Connection.qryBusca2.Params.ParamByName('orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
             Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
             Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio ;
             Connection.qryBusca2.Open ;


             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'delete from avancesglobales WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ');
             connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
             connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio ;
             connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
             connection.zCommand.ExecSQL ;

             Progress.visible := True ;
             Progress.MinValue := 1;
             Progress.MaxValue := ( Connection.qryBusca2.FieldValues['dffProgramado'] - Connection.qryBusca2.FieldValues['dfiProgramado'] ) + 1 ;
             Progress.Progress := 0;

             dFechaInicial := Connection.qryBusca2.FieldValues['dfiProgramado'] ;
             dPonderadoglobal := 0 ;
             While dFechaInicial <= Connection.qryBusca2.FieldValues['dffProgramado']  Do
             Begin
                 QryDistribucion.Active := False ;
                 QryDistribucion.SQL.Clear ;
                 QryDistribucion.SQL.Add('Select SUM((d.dCantidad/a.dCantidad)* a.dPonderado) as dAvance from distribuciondeactividades d inner join actividadesxorden a on ' +
                                         '(d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sNumeroOrden = a.sNumeroOrden And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") Where ' +
                                         'd.sContrato = :contrato And d.sNumeroOrden = :Orden And d.sIdConvenio = :Convenio And d.dIdFecha = :fecha Group By d.dIdFecha') ;
                 QryDistribucion.Params.ParamByName('contrato').DataType := ftString ;
                 QryDistribucion.Params.ParamByName('contrato').Value := global_contrato ;
                 QryDistribucion.Params.ParamByName('convenio').DataType := ftString ;
                 QryDistribucion.Params.ParamByName('convenio').Value := global_convenio ;
                 QryDistribucion.Params.ParamByName('orden').DataType := ftString ;
                 QryDistribucion.Params.ParamByName('orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                 QryDistribucion.Params.ParamByName('fecha').DataType := ftDate ;
                 QryDistribucion.Params.ParamByName('fecha').Value := dFechaInicial ;
                 QryDistribucion.Open ;
                 dPonderadoDia := 0 ;

                 If QryDistribucion.RecordCount > 0 Then
                     dPonderadoDia := QryDistribucion.FieldValues['dAvance'] ;

                 If dFechaInicial = Connection.qryBusca2.FieldValues['dffProgramado'] then
                    dPonderadoDia := (100 - dPonderadoGlobal);

                 dPonderadoGlobal := dPonderadoGlobal + dPonderadoDia ;

                 //Ajustes...
                 connection.QryBusca.Active := False ;
                 connection.QryBusca.SQL.Clear ;
                 connection.QryBusca.SQL.Add('Select SUM((d.dCantidad/a.dCantidad)* a.dPonderado) as dAvance from distribuciondeactividades d inner join actividadesxorden a on ' +
                                             '(d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sNumeroOrden = a.sNumeroOrden And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") Where ' +
                                             'd.sContrato = :contrato And d.sNumeroOrden = :Orden And d.sIdConvenio = :Convenio And d.dIdFecha >:fecha Group By a.sContrato ') ;
                 connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                 connection.QryBusca.Params.ParamByName('contrato').Value    := global_contrato ;
                 connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
                 connection.QryBusca.Params.ParamByName('convenio').Value    := global_convenio ;
                 connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
                 connection.QryBusca.Params.ParamByName('orden').Value       := tsOrdenCheck.Items.Strings[iOrden] ;
                 connection.QryBusca.Params.ParamByName('fecha').DataType    := ftDate ;
                 connection.QryBusca.Params.ParamByName('fecha').Value       := dFechaInicial ;
                 connection.QryBusca.Open ;

                 if connection.QryBusca.RecordCount > 0 then
                    if (dPonderadoGlobal + connection.QryBusca.FieldByName('dAvance').AsFloat) > 100 then
                        dPonderadoGlobal := dPonderadoGlobal - ((dPonderadoGlobal + connection.QryBusca.FieldByName('dAvance').AsFloat) - 100);



                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zCommand.SQL.Add ( 'insert into avancesglobales values (:contrato, :convenio, :fecha, :orden, :ponderadodia, :ponderadoglobal, 0)') ;
                 connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('contrato').Value := Global_Contrato ;
                 connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('convenio').Value := Global_Convenio ;
                 connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                 connection.zCommand.Params.ParamByName('fecha').Value := dFechaInicial ;
                 connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                 connection.zCommand.Params.ParamByName('ponderadodia').DataType := ftFloat ;
                 connection.zCommand.Params.ParamByName('ponderadodia').Value := dPonderadoDia ;
                 connection.zCommand.Params.ParamByName('ponderadoglobal').DataType := ftFloat ;
                 connection.zCommand.Params.ParamByName('ponderadoglobal').Value := dPonderadoglobal ;
                 connection.zCommand.ExecSQL ;
                 dFechaInicial := dFechaInicial + 1 ;
                 Progress.Progress := Progress.Progress + 1 ;
             End ;

            Progress.Visible := False ;
            QryDistribucion.Destroy ;

        End ;

        If chkPaquetes.Checked Then
        Begin
            QryDistribucion := tzReadOnlyQuery.Create(self);
            QryDistribucion.Connection := connection.zconnection ;
            QryActividadesxOrden := tzReadOnlyQuery.Create(self);
            QryActividadesxOrden.Connection := connection.zconnection ;

            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select min(dFechaInicio) as dFIProgramado, max(dFechaFinal) as dFFProgramado from actividadesxorden ' +
                                         'Where sContrato = :Contrato And sNumeroOrden = :orden and sIdConvenio = :convenio and sTipoActividad = "Actividad"') ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.Params.ParamByName('orden').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
            Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio ;
            Connection.qryBusca2.Open ;

            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Delete from avancesxactividad where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio ;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
            connection.zCommand.ExecSQL ;

            QryDistribucion.Active := False ;
            QryDistribucion.SQL.Clear ;
            QryDistribucion.SQL.Add('Select (sum(((a.dPonderado / a.dCantidad) * d.dCantidad )) * 10000) as dAvanceDiario from distribuciondeactividades d ' +
                                    'INNER JOIN actividadesxorden a ON (d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sNumeroOrden = a.sNumeroOrden And ' +
                                    'd.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad" ) ' +
                                    'Where d.sContrato = :contrato And d.sIdConvenio = :Convenio And d.sNumeroOrden = :orden And d.dIdFecha = :fecha And d.sWbs LIKE :wbs Group By d.sContrato') ;


            connection.QryBusca.Active := False ;
            connection.QryBusca.SQL.Clear ;
            connection.QryBusca.SQL.Add('select count(sNumeroOrden) as iOrdenes from ordenesdetrabajo Where sContrato = :contrato and sNumeroOrden NOT LIKE "%TIERRA%" group by sContrato') ;
            connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
            connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
            connection.QryBusca.Open ;
            lCalculoNormal := True ;
            If connection.QryBusca.RecordCount > 0 Then
                If connection.QryBusca.FieldValues['iOrdenes'] = 1 Then
                    lCalculoNormal := True
                 Else
                    lCalculoNormal := False
            Else
                 lCalculoNormal := False ;



            QryActividadesxOrden.Active := False ;
            QryActividadesxOrden.SQL.Clear ;
            If lCalculoNormal Then
                QryActividadesxOrden.SQL.Add('Select sWbs, sNumeroActividad from actividadesxorden ' +
                                             'where sContrato = :Contrato and sIdConvenio = :Convenio and sNumeroOrden = :Orden And ' +
                                             'sTipoActividad = "Paquete" And iNivel > 0 order by iItemOrden') //
            Else
                QryActividadesxOrden.SQL.Add('Select sWbs, sNumeroActividad from actividadesxorden ' +
                                             'where sContrato = :Contrato and sIdConvenio = :Convenio and sNumeroOrden = :Orden And ' +
                                             'sTipoActividad = "Paquete" order by iItemOrden') ;
            QryActividadesxOrden.Params.ParamByName('contrato').DataType := ftString ;
            QryActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato ;
            QryActividadesxOrden.Params.ParamByName('convenio').DataType := ftString ;
            QryActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio ;
            QryActividadesxOrden.Params.ParamByName('Orden').DataType := ftString ;
            QryActividadesxOrden.Params.ParamByName('Orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
            QryActividadesxOrden.Open ;
            If QryActividadesxOrden.RecordCount > 0 then
            Begin
                Progress.visible := True ;
                Progress.MinValue := 1;
                Progress.MaxValue := ( Connection.qryBusca2.FieldValues['dffProgramado'] - Connection.qryBusca2.FieldValues['dfiProgramado'] ) + 1 ;
                Progress.Progress := 0;

                dFechaInicial := Connection.qryBusca2.FieldValues['dfiProgramado'] ;
                While dFechaInicial <= Connection.qryBusca2.FieldValues['dffProgramado']  Do
                Begin
                    QryActividadesxOrden.First ;
                    While NOT QryActividadesxOrden.Eof Do
                    Begin
                         QryDistribucion.Active := False ;
                         QryDistribucion.Params.ParamByName('contrato').DataType := ftString ;
                         QryDistribucion.Params.ParamByName('contrato').Value := global_contrato ;
                         QryDistribucion.Params.ParamByName('convenio').DataType := ftString ;
                         QryDistribucion.Params.ParamByName('convenio').Value := global_convenio;
                         QryDistribucion.Params.ParamByName('fecha').DataType := ftDate ;
                         QryDistribucion.Params.ParamByName('fecha').Value := dFechaInicial ;
                         QryDistribucion.Params.ParamByName('orden').DataType := ftString ;
                         QryDistribucion.Params.ParamByName('orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                         QryDistribucion.Params.ParamByName('wbs').DataType := ftString ;
                         QryDistribucion.Params.ParamByName('wbs').Value := QryActividadesxOrden.FieldValues['sWbs'] + '.%' ;
                         QryDistribucion.Open ;
                         dPonderadoDia := 0 ;
                         If (QryDistribucion.RecordCount > 0) then
                             dPonderadoDia := trunc(QryDistribucion.FieldValues['dAvanceDiario']) / 10000 ;

                         If dPonderadoDia > 0 Then
                         Begin
                             connection.zCommand.Active := False ;
                             connection.zCommand.SQL.Clear ;
                             connection.zCommand.SQL.Add ( 'insert into avancesxactividad (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dPonderadoDiario) ' +
                                                           'values (:contrato, :convenio, :fecha, :orden, :wbs, :actividad, :ponderadodia)') ;
                             connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                             connection.zCommand.Params.ParamByName('contrato').Value := Global_Contrato ;
                             connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                             connection.zCommand.Params.ParamByName('convenio').Value := Global_Convenio ;
                             connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                             connection.zCommand.Params.ParamByName('fecha').Value := dFechaInicial ;
                             connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                             connection.zCommand.Params.ParamByName('orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                             connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                             connection.zCommand.Params.ParamByName('wbs').Value := QryActividadesxOrden.FieldValues['sWbs'] ;
                             connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                             connection.zCommand.Params.ParamByName('actividad').Value := QryActividadesxOrden.FieldValues['sNumeroActividad'] ;
                             connection.zCommand.Params.ParamByName('ponderadodia').DataType := ftFloat ;
                             connection.zCommand.Params.ParamByName('ponderadodia').Value := dPonderadoDia ;
                             connection.zCommand.ExecSQL ;
                         End ;
                         QryActividadesxOrden.Next
                    End;
                    dFechaInicial := dFechaInicial + 1 ;
                    Progress.Progress := Progress.Progress + 1 ;
                End ;

                If lCalculoNormal Then
                Begin
                    // Detectar cual es el paquete principal .....
                    connection.QryBusca.Active := False ;
                    connection.QryBusca.SQL.Clear ;
                    connection.QryBusca.SQL.Add('select sNumeroActividad from actividadesxorden ' +
                                                'Where sContrato = :contrato and sNumeroOrden = :Orden and sIdConvenio = :convenio and sTipoActividad = "Paquete" and iNivel = 0') ;
                    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                    connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
                    connection.QryBusca.Params.ParamByName('orden').Value := tsOrdenCheck.Items.Strings[iOrden] ;
                    connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
                    connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio ;
                    connection.QryBusca.Open ;
                    If connection.QryBusca.RecordCount > 0 Then
                        sRaiz := connection.QryBusca.FieldValues['sNumeroActividad'] ;

                    connection.zCommand.Active := False ;
                    connection.zCommand.SQL.Clear ;
                    connection.zCommand.SQL.Add ( 'insert into avancesxactividad (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dPonderadoDiario) ' +
                                                  'select sContrato, sIdConvenio, dIdFecha, :orden, :Wbs, :Actividad, dAvancePonderadoDia from avancesglobales ' +
                                                  'Where sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = ""') ;
                    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                    connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('convenio').Value := global_convenio ;
                    connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Orden').Value :=  tsOrdenCheck.Items.Strings[iOrden] ;
                    connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Wbs').Value :=  sRaiz ;
                    connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Actividad').Value := sRaiz ;

                    connection.zCommand.ExecSQL () ;
                end ;

            End ;

            Progress.Visible := False ;
            QryDistribucion.Destroy ;
            QryActividadesxOrden.Destroy ;
        End
    End
 End
 Else
    MessageDlg('Debera seleccionar por lo menos una Orden de Trabajo para poder realizar los procesos seleccionados.', mtInformation, [mbOk], 0);
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al iniciar  el proceso', 0);
end;
end;
end;

procedure TfrmDistribucionPrograma.BitBtn1Click(Sender: TObject);
begin
    close
end;

end.procedure TfrmDistribucionPrograma.TabSheet2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;


