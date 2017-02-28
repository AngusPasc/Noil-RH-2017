unit frm_cancelacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, RXCtrls, DB, ADODB, DBCtrls, StdCtrls, frm_connection,
  Grids, DBGrids, RXDBCtrl, Newpanel, global, ComCtrls, Buttons, Mask,
  {ToolEdit, CurrEdit,} Menus, frxClass, frxDBSet, utilerias,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UnitExcepciones, UdbGrid,
  UFunctionsGHH, UnitTBotonesPermisos, DBDateTimePicker;

type
  TfrmCancelacion = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    ds_Paquetes: TDataSource;
    ds_Partidas: TDataSource;
    Label3: TLabel;
    popCanceladas: TPopupMenu;
    mnImprimir: TMenuItem;
    dsCanceladas: TfrxDBDataset;
    frxCanceladas: TfrxReport;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnPrinter: TBitBtn;
    btnNew: TBitBtn;
    btnEdit: TBitBtn;
    gbInformacion: tNewGroupBox;
    ds_Canceladas: TDataSource;
    tmComentarios: TMemo;
    tlAfectaContrato: TCheckBox;
    Label4: TLabel;
    gbPartidas: tNewGroupBox;
    Label1: TLabel;
    tsPaquete: TRxDBLookupCombo;
    GridPartidas: TRxDBGrid;
    tmDescripcion: TDBMemo;
    btnCancelacion: TBitBtn;
    btnDeshacer: TBitBtn;
    Label2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    gbCanceladas: TGroupBox;
    GridCanceladas: TRxDBGrid;
    QryPaquetes: TZQuery;
    ReporteDiario: TZQuery;
    QryPartidas: TZQuery;
    ordenesdetrabajo: TZQuery;
    Acumulado: TZQuery;
    QryCanceladas: TZQuery;
    QryCanceladassContrato: TStringField;
    QryCanceladassIdConvenio: TStringField;
    QryCanceladasdIdFecha: TDateField;
    QryCanceladassNumeroOrden: TStringField;
    QryCanceladassWbs: TStringField;
    QryCanceladassPaquete: TStringField;
    QryCanceladassNumeroActividad: TStringField;
    QryCanceladasdCantidad: TFloatField;
    QryCanceladasdAvance: TFloatField;
    QryCanceladasmDescripcion: TMemoField;
    QryCanceladasdCantidadAnexo: TFloatField;
    QryCanceladassMedida: TStringField;
    QryPartidassIdConvenio: TStringField;
    QryPartidassPaquete: TStringField;
    QryPartidassNumeroActividad: TStringField;
    QryPartidasmDescripcion: TMemoField;
    QryPartidasdCantidad: TFloatField;
    QryPartidasdInstalado: TFloatField;
    QryPartidasdPonderado: TFloatField;
    QryPartidasdCantidadAnexo: TFloatField;
    QryPartidassMedida: TStringField;
    QryPartidasdRestante: TFloatField;
    QryPartidasdAvanceAcumulado: TFloatField;
    QryPartidassWbs: TStringField;
    tdIdFecha: TDBDateTimePicker;
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsPaqueteEnter(Sender: TObject);
    procedure tsPaqueteExit(Sender: TObject);
    procedure tsPaqueteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdIdFechaChange(Sender: TObject);
    procedure btnCancelacionClick(Sender: TObject);
    procedure btnDeshacerClick(Sender: TObject);
    procedure mnImprimirClick(Sender: TObject);
    procedure frxCanceladasGetValue(const VarName: String;
      var Value: Variant);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure ordenesdetrabajoXAfterScroll(DataSet: TDataSet);
    procedure QryPaquetesAfterScroll(DataSet: TDataSet);
    procedure ordenesdetrabajoAfterScroll(DataSet: TDataSet);
//<<<<<<< .mine
    procedure QryPartidasAfterScroll(DataSet: TDataSet);
    procedure btnPrinterClick(Sender: TObject);
//=======
    procedure GridPartidasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridPartidasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridPartidasTitleClick(Column: TColumn);
    procedure GridCanceladasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridCanceladasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridCanceladasTitleClick(Column: TColumn);
//>>>>>>> .r396
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelacion: TfrmCancelacion;
  lExiste       : Boolean ;
  Suma1, Suma2: Double ;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmCancelacion.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmCancelacion.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmCancelacion.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        If btnNew.Enabled = True Then
            btnNew.SetFocus
        Else
            If btnEdit.Enabled = True Then
                btnEdit.SetFocus 
end;

procedure TfrmCancelacion.tsPaqueteEnter(Sender: TObject);
begin
    tsPaquete.Color := global_color_entrada
end;

procedure TfrmCancelacion.tsPaqueteExit(Sender: TObject);
begin
    tsPaquete.Color := global_color_salida
end;

procedure TfrmCancelacion.tsPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        GridPartidas.SetFocus  
end;

procedure TfrmCancelacion.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adCancelacion');
  BotonPermiso.permisosBotones2(btnSave,btnEdit,nil,btnPrinter);
  gbPartidas.Enabled := False ;
  gbInformacion.Enabled := False ;
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
  ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
  ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;
  If OrdenesdeTrabajo.RecordCount > 0 Then
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
  tdIdFecha.Date := Date ;
  tdIdFecha.SetFocus
end;

procedure TfrmCancelacion.QryPartidasAfterScroll(DataSet: TDataSet);
begin
    GridPartidas.Hint := '' ;
    If QryPartidas.RecordCount > 0 Then
        GridPartidas.Hint := QryPartidas.FieldValues['mDescripcion']
end;

procedure TfrmCancelacion.QryPaquetesAfterScroll(DataSet: TDataSet);
begin

    If QryPaquetes.RecordCount > 0 Then
    Begin
        QryPartidas.Active := False ;
        QryPartidas.Params.ParamByName('Contrato').DataType := ftString ;
        QryPartidas.Params.ParamByName('Contrato').Value    := global_contrato ;
        QryPartidas.Params.ParamByName('Orden').DataType    := ftString ;
        QryPartidas.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
        QryPartidas.Params.ParamByName('Convenio').DataType := ftString ;
        QryPartidas.Params.ParamByName('Convenio').Value    := global_convenio ;
        QryPartidas.Params.ParamByName('Paquete').DataType  := ftString ;
        QryPartidas.Params.ParamByName('Paquete').Value     := qryPaquetes.FieldValues['sWbs'];

        QryPartidas.Open ;
        if True then

    End
end;



procedure TfrmCancelacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  action := cafree ;
end;

procedure TfrmCancelacion.tdIdFechaChange(Sender: TObject);
begin
    QryCanceladas.Active := False ;
    gbPartidas.Enabled := False ;
    gbInformacion.Enabled := False ;
    ReporteDiario.Active := False ;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
    ReporteDiario.Params.ParamByName('contrato').Value    := global_contrato ;
    ReporteDiario.Params.ParamByName('Fecha').DataType    := ftDate ;
    ReporteDiario.Params.ParamByName('Fecha').Value       := tdIdFecha.Date  ;
    ReporteDiario.Params.ParamByName('Orden').DataType    := ftString ;
    ReporteDiario.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
    ReporteDiario.Open ;
    If ReporteDiario.RecordCount > 0 then
    Begin
        QryCanceladas.Params.ParamByName('Contrato').DataType := ftString ;
        QryCanceladas.Params.ParamByName('Contrato').Value := global_contrato ;
        QryCanceladas.Params.ParamByName('Convenio').DataType := ftString ;
        QryCanceladas.Params.ParamByName('Convenio').Value := ReporteDiario.FieldValues['sIdConvenio'] ;
        QryCanceladas.Params.ParamByName('Orden').DataType := ftString ;
        QryCanceladas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        QryCanceladas.Params.ParamByName('Fecha').DataType := ftDate ;
        QryCanceladas.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        QryCanceladas.Open ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select mComentarios, lAfectaContrato From actividadesfcanceladas Where sContrato = :contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
        connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
        Begin
            tmComentarios.Text := Connection.qryBusca.FieldValues['mComentarios'] ;
            If Connection.qryBusca.FieldValues['lAfectaContrato'] = 'Si' Then
                tlAfectaContrato.Checked := True
            Else
                tlAfectaContrato.Checked := False ;

            If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
            Begin
                gbPartidas.Enabled := True ;
                btnNew.Enabled := False ;
                btnEdit.Enabled := True ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := True ;
               // gbPartidas.Color := $00A6C1CA ;
               // tmDescripcion.Color := $00A6C1CA ;
            End
            Else
            Begin
                btnNew.Enabled := False ;
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := True ;
//                gbPartidas.Color := $0077BDCA ;
//                tmDescripcion.Color := $0077BDCA ;
            End
        End
        Else
            If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
            Begin
                btnNew.Enabled := True ;
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := False ;
//                gbPartidas.Color := $0077BDCA ;
//                tmDescripcion.Color := $0077BDCA ;
                tmComentarios.Text := '' ;
                tlAfectaContrato.Checked := False ;
            End
            Else
            Begin
                btnNew.Enabled := True ;   //Aqui hay que cambiar
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := False ;
//                gbPartidas.Color := $00A6C1CA ;
//                tmDescripcion.Color := $00A6C1CA ;
                tmComentarios.Text := '' ;
                tlAfectaContrato.Checked := False ;
            End
    End
end;

procedure TfrmCancelacion.btnCancelacionClick(Sender: TObject);
Var
  iGrid : Integer ;
begin
    ReporteDiario.Active := False ;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
    ReporteDiario.Open ;
    If ReporteDiario.RecordCount > 0 then
         If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
         Begin
              If GridPartidas.SelectedRows.Count > 0 then
                  with GridPartidas.DataSource.DataSet do
                      for iGrid := 0 To GridPartidas.SelectedRows.Count-1 do
                      Begin
                        try
                          GotoBookmark(pointer(GridPartidas.SelectedRows.Items[iGrid]));
                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add('Insert Into actividadescanceladas (sContrato, dIdFecha, sNumeroOrden, sWbs, sPaquete, sNumeroActividad, dCantidad, dAvance)' +
                                                      'Values (:Contrato, :Fecha, :Orden, :Wbs, :Paquete, :Partida, :Cantidad, :Avance)' );
                          connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString ;
                          connection.zCommand.Params.ParamByName('Contrato').Value      := Global_Contrato ;
                          connection.zCommand.Params.ParamByName('Fecha').DataType      := ftDate ;
                          connection.zCommand.Params.ParamByName('Fecha').Value         := tdIdFecha.Date ;
                          connection.zCommand.Params.ParamByName('Orden').DataType      := ftString ;
                          connection.zCommand.Params.ParamByName('Orden').Value         := tsNumeroOrden.Text ;
                          connection.zCommand.Params.ParamByName('Wbs').DataType        := ftString ;
                          connection.zCommand.Params.ParamByName('Wbs').Value           := FieldValues['sWbs'] ;

                          connection.zCommand.Params.ParamByName('Paquete').DataType    := ftString ;
                          connection.zCommand.Params.ParamByName('Paquete').Value       := FieldValues['sPaquete'] ;
                          connection.zCommand.Params.ParamByName('Partida').DataType    := ftString ;
                          connection.zCommand.Params.ParamByName('Partida').Value       := FieldValues['sNumeroActividad'] ;
                          connection.zCommand.Params.ParamByName('Cantidad').DataType   := ftFloat ;
                          connection.zCommand.Params.ParamByName('Cantidad').Value      := FieldValues['dCantidad'] - FieldValues['dInstalado'] ;
                          connection.zCommand.Params.ParamByName('Avance').DataType     := ftFloat ;
                          If not FieldByName('dAvanceAcumulado').IsNull Then
                              connection.zCommand.Params.ParamByName('Avance').Value := 100 - FieldValues['dAvanceAcumulado']
                          Else
                              connection.zCommand.Params.ParamByName('Avance').Value := 100 ;
                          connection.zCommand.ExecSQL ()  ;

                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add ('UPDATE ActividadesxOrden SET lCancelada = "Si" ' +
                                                       'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sPaquete = :Paquete And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"') ;
                          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                          connection.zCommand.Params.ParamByName('Convenio').Value := ReporteDiario.FieldValues['sIdConvenio'] ;
                          connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                          connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
                          connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
                          connection.zCommand.Params.ParamByName('Paquete').Value := FieldValues['sPaquete'] ;
                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                          connection.zCommand.Params.ParamByName('Actividad').Value := FieldValues['sNumeroActividad'] ;
                          connection.zCommand.ExecSQL ()  ;
                        except
                          on e : exception do begin
                            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cancelación de Partidas x Orden de Trabajo', 'Al hacer una cancelacion', 0);
                          end;
                        end;
                      End ;
             QryPartidas.Refresh ;
             QryCanceladas.Refresh ;
         End
end;

procedure TfrmCancelacion.btnDeshacerClick(Sender: TObject);
Var
  iGrid : Integer ;
begin
    ReporteDiario.Active := False ;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
    ReporteDiario.Open ;
    If ReporteDiario.RecordCount > 0 then
         If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
         Begin
              If GridCanceladas.SelectedRows.Count > 0 then
                  with GridCanceladas.DataSource.DataSet do
                      for iGrid := 0 To GridCanceladas.SelectedRows.Count-1 do
                      Begin
                        try
                          GotoBookmark(pointer(GridCanceladas.SelectedRows.Items[iGrid]));
                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add ('Delete From actividadescanceladas Where ' +
                                                       '(sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden ' +
                                                       ' And sPaquete = :Paquete And sNumeroActividad = :Partida And sWbs = :Wbs)') ;
                          connection.zCommand.Params.ParamByName('Contrato').DataType  := ftString ;
                          connection.zCommand.Params.ParamByName('Contrato').Value     := Global_Contrato ;
                          connection.zCommand.Params.ParamByName('Fecha').DataType     := ftDate ;
                          connection.zCommand.Params.ParamByName('Fecha').Value        := tdIdFecha.Date ;
                          connection.zCommand.Params.ParamByName('Orden').DataType     := ftString ;
                          connection.zCommand.Params.ParamByName('Orden').Value        := tsNumeroOrden.Text ;
                          connection.zCommand.Params.ParamByName('Paquete').DataType   := ftString ;
                          connection.zCommand.Params.ParamByName('Paquete').Value      := FieldValues['sPaquete'] ;
                          connection.zCommand.Params.ParamByName('Partida').DataType   := ftString ;
                          connection.zCommand.Params.ParamByName('Partida').Value      := FieldValues['sNumeroActividad'] ;
                          connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString ;
                          connection.zCommand.Params.ParamByName('Wbs').Value          := FieldValues['sWbs'] ;

                          connection.zCommand.ExecSQL ()  ;

                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add ('UPDATE ActividadesxOrden SET lCancelada = "No" ' +
                                                       'Where sContrato = :Contrato And sWbs = :Wbs And sIdConvenio = :Convenio And sNumeroOrden = :Orden ' +
                                                       'And sPaquete = :Paquete And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"') ;
                          connection.zCommand.Params.ParamByName('Contrato').DataType  := ftString ;
                          connection.zCommand.Params.ParamByName('Contrato').Value     := Global_Contrato ;
                          connection.zCommand.Params.ParamByName('Convenio').DataType  := ftString ;
                          connection.zCommand.Params.ParamByName('Convenio').Value     := ReporteDiario.FieldValues['sIdConvenio'] ;
                          connection.zCommand.Params.ParamByName('Orden').DataType     := ftString ;
                          connection.zCommand.Params.ParamByName('Orden').Value        := tsNumeroOrden.Text ;
                          connection.zCommand.Params.ParamByName('Paquete').DataType   := ftString ;
                          connection.zCommand.Params.ParamByName('Paquete').Value      := FieldValues['sPaquete'] ;
                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                          connection.zCommand.Params.ParamByName('Actividad').Value    := FieldValues['sNumeroActividad'] ;
                          connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString ;
                          connection.zCommand.Params.ParamByName('Wbs').Value          := FieldValues['sWbs'] ;

                          connection.zCommand.ExecSQL ()  ;
                        except
                            on e : exception do begin
                                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cancelación de Partidas x Orden de Trabajo', 'Al eliminar registro', 0);
                            end;
                        end;
                      End ;
              QryPartidas.Refresh ;
              QryCanceladas.Refresh ;
         End ;
end;

procedure TfrmCancelacion.mnImprimirClick(Sender: TObject);
begin
  try
    rDiarioFirmas (global_contrato, tsNumeroOrden.Text, 'A',tdIdFecha.Date, frmCancelacion ) ;
    frxCanceladas.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cancelación de Partidas x Orden de Trabajo', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmCancelacion.frxCanceladasGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;

  If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := dRealGlobalAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := dRealGlobalActual ;
  If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := dRealGlobalAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := dProgramadoGlobalAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := dProgramadoGlobalActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := dProgramadoGlobalAcumulado;


   Connection.QryBusca2.Active := False ;
   Connection.QryBusca2.SQL.Clear ;
   Connection.QryBusca2.SQL.Add('SELECT a.dPonderado, l.dAvance FROM actividadesxorden a ' +
                               'INNER JOIN actividadescanceladas l on (a.sContrato = l.sContrato and a.sIdConvenio = l.sIdConvenio ' +
                               'and a.sNumeroActividad = l.sNumeroActividad And a.sWbs=l.sWbs And a.sNumeroOrden=l.sNumeroOrden )' +
                               'WHERE a.sContrato =:Contrato And a.sNumeroOrden =:Orden And l.dIdFecha =:Fecha ' +
                               'And a.sTipoActividad = "Actividad" And l.sIdConvenio=:Convenio');
    connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('contrato').Value    := Global_Contrato;
    connection.QryBusca2.Params.ParamByName('fecha').DataType    := ftDate;
    connection.QryBusca2.Params.ParamByName('fecha').Value       := tdIdFecha.Date;
    connection.QryBusca2.Params.ParamByName('Orden').DataType    := ftString;
    connection.QryBusca2.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text;
    connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Convenio').Value    := Global_Convenio;
    connection.QryBusca2.Open;

 if Connection.QryBusca2.RecordCount > 0 Then
    begin
     Connection.QryBusca2.First ;
      Suma1 := 0 ;
      While Not Connection.QryBusca2.Eof  do
        begin
           Suma2 := (Connection.QryBusca2.FieldValues['dPonderado']*Connection.QryBusca2.FieldValues['dAvance'])/100 ;
           Suma1 := suma1 + Suma2 ;
           Connection.QryBusca2.Next ;
       end;
  end;

 If CompareText(VarName, 'AVANCE') = 0 then
      Value := suma1 ;


end;

procedure TfrmCancelacion.GridCanceladasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if gridcanceladas.datasource.DataSet.IsEmpty=false  then
if gridcanceladas.DataSource.DataSet.RecordCount>0 then
end;

procedure TfrmCancelacion.GridCanceladasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if gridcanceladas.datasource.DataSet.IsEmpty=false  then
if gridcanceladas.DataSource.DataSet.RecordCount>0 then
end;

procedure TfrmCancelacion.GridCanceladasTitleClick(Column: TColumn);
begin
if gridcanceladas.datasource.DataSet.IsEmpty=false  then
if gridcanceladas.DataSource.DataSet.RecordCount>0 then
end;

procedure TfrmCancelacion.GridPartidasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if gridpartidas.datasource.DataSet.IsEmpty=false  then
if gridpartidas.DataSource.DataSet.RecordCount>0 then
end;

procedure TfrmCancelacion.GridPartidasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if gridpartidas.datasource.DataSet.IsEmpty=false  then
if gridpartidas.DataSource.DataSet.RecordCount>0 then
end;

procedure TfrmCancelacion.GridPartidasTitleClick(Column: TColumn);
begin
 if gridpartidas.datasource.DataSet.IsEmpty=false  then
 if gridpartidas.DataSource.DataSet.RecordCount>0 then
end;

procedure TfrmCancelacion.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmCancelacion.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salida
end;

procedure TfrmCancelacion.btnNewClick(Sender: TObject);
begin

    lExiste := False ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := True ;
    btnCancel.Enabled := True ;
    btnPrinter.Enabled := False ;
    gbPartidas.Enabled := False ;
    gbInformacion.Enabled := True ;
    tsNumeroOrden.SetFocus;
    BotonPermiso.permisosBotones2(btnSave,btnEdit,nil,btnPrinter);
end;

procedure TfrmCancelacion.btnPrinterClick(Sender: TObject);
begin
   BotonPermiso.permisosBotones2(btnSave,btnEdit,nil,btnPrinter);
   qryCanceladas.Active := False ;
   qryCanceladas.Open ;
   qryCanceladas.Refresh  ;

   frxCanceladas.PreviewOptions.MDIChild := False ;
   frxCanceladas.PreviewOptions.Modal := True ;
   frxCanceladas.PreviewOptions.Maximized := lCheckMaximized () ;
   frxCanceladas.PreviewOptions.ShowCaptions := False ;
   frxCanceladas.Previewoptions.ZoomMode := zmPageWidth ;
   frxCanceladas.LoadFromFile(Global_Files+ global_miReporte +'_frActividadesCanceladas.fr3') ;
   frxCanceladas.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

end;

procedure TfrmCancelacion.btnEditClick(Sender: TObject);
begin
    BotonPermiso.permisosBotones2(btnSave,btnEdit,nil,btnPrinter);
    lExiste := True ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := True ;
    btnCancel.Enabled := True ;
    btnPrinter.Enabled := False ;
    gbPartidas.Enabled := False ;
    gbInformacion.Enabled := True ;
end;

procedure TfrmCancelacion.btnSaveClick(Sender: TObject);
begin

    ReporteDiario.Active := False ;
    ReporteDiario.Params.ParamByName('contrato').DataType  := ftString ;
    ReporteDiario.Params.ParamByName('contrato').Value     := global_contrato ;
    ReporteDiario.Params.ParamByName('Fecha').DataType     := ftDate ;
    ReporteDiario.Params.ParamByName('Fecha').Value        := tdIdFecha.Date  ;
    ReporteDiario.Params.ParamByName('Orden').DataType     := ftString ;
    ReporteDiario.Params.ParamByName('Orden').Value        := tsNumeroOrden.Text ;
    ReporteDiario.Open ;
    If ReporteDiario.RecordCount > 0 then
        If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
        Begin
            If not lExiste Then
            Begin
              try
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add ('INSERT INTO ActividadesfCanceladas (sContrato , dIdFecha, sNumeroOrden, mComentarios, lAfectaContrato) ' +
                                             'VALUES (:Contrato, :Fecha, :Orden, :Comentarios, :Afecta)') ;
                connection.zCommand.Params.ParamByName('contrato').DataType    := ftString ;
                connection.zCommand.Params.ParamByName('contrato').value       := Global_Contrato ;
                connection.zCommand.Params.ParamByName('fecha').DataType       := ftDate ;
                connection.zCommand.Params.ParamByName('fecha').value          := tdIdFecha.Date  ;
                connection.zCommand.Params.ParamByName('Orden').DataType       := ftString ;
                connection.zCommand.Params.ParamByName('Orden').value          := tsNumeroOrden.Text ;
                connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
                connection.zCommand.Params.ParamByName('Comentarios').value    := tmComentarios.Text ;
                connection.zCommand.Params.ParamByName('Afecta').DataType      := ftString ;
                If tlAfectaContrato.Checked Then
                    connection.zCommand.Params.ParamByName('Afecta').value := 'Si'
                Else
                    connection.zCommand.Params.ParamByName('Afecta').value := 'No' ;
                connection.zCommand.ExecSQL ;
              except
                  on e : exception do begin
                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cancelación de Partidas x Orden de Trabajo', 'Al salvar nuevo registro', 0);
                  end;
              end;
            End
            Else
            Begin
              try
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add ('UPDATE ActividadesfCanceladas SET mComentarios = :Comentarios, lAfectaContrato = :Afecta ' +
                                             'where sContrato = :contrato And dIdFecha = :fecha And sNumeroOrden = :Orden') ;
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date ;
                connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
                connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
                connection.zCommand.Params.ParamByName('Afecta').DataType := ftString ;
                If tlAfectaContrato.Checked Then
                    connection.zCommand.Params.ParamByName('Afecta').value := 'Si'
                Else
                    connection.zCommand.Params.ParamByName('Afecta').value := 'No' ;
                connection.zCommand.ExecSQL ;
              except
                  on e : exception do begin
                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cancelación de Partidas x Orden de Trabajo', 'Al salvar cambios en registro', 0);
                  end;
              end;
            End ;
        End
        Else
            MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);

    btnNew.Enabled := False ;
    btnEdit.Enabled := True ;
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    btnPrinter.Enabled := True ;
    gbPartidas.Enabled := True ;
    gbInformacion.Enabled := False ;
    //gbPartidas.Color := $0077BDCA ;
   // tmDescripcion.Color := $0077BDCA ;
   BotonPermiso.permisosBotones2(btnSave,btnEdit,nil,btnPrinter);

end;

procedure TfrmCancelacion.btnCancelClick(Sender: TObject);
begin
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    If lExiste Then
    begin
        btnNew.Enabled := False ;
        btnPrinter.Enabled := True ;
        btnEdit.Enabled := True ;
    End
    Else
    begin
        btnNew.Enabled := True ;
        btnPrinter.Enabled := False ;
        btnEdit.Enabled := False ;
        gbPartidas.Enabled := False ;
        gbInformacion.Enabled := False ;
//        gbPartidas.Color := $00A6C1CA ;
//        tmDescripcion.Color := $00A6C1CA ;
    end
end;

procedure TfrmCancelacion.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsNumeroOrden.SetFocus 
end;

procedure TfrmCancelacion.tmComentariosEnter(Sender: TObject);
begin
    tmComentarios.Color := global_color_entrada
end;

procedure TfrmCancelacion.tmComentariosExit(Sender: TObject);
begin
    tmComentarios.Color := global_color_salida
end;

procedure TfrmCancelacion.ordenesdetrabajoAfterScroll(DataSet: TDataSet);
begin
    QryCanceladas.Active  := False ;
    gbPartidas.Enabled    := False ;
    gbInformacion.Enabled := False ;
    ReporteDiario.Active  := False ;
    ReporteDiario.Params.ParamByName('contrato').DataType    := ftString ;
    ReporteDiario.Params.ParamByName('contrato').Value       := global_contrato ;
    ReporteDiario.Params.ParamByName('Fecha').DataType       := ftDate ;
    ReporteDiario.Params.ParamByName('Fecha').Value          := tdIdFecha.Date  ;
    ReporteDiario.Params.ParamByName('Orden').DataType       := ftString ;
    ReporteDiario.Params.ParamByName('Orden').Value          := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
    ReporteDiario.Open ;
    If ReporteDiario.RecordCount > 0 then
    Begin
        QryPaquetes.Active := False ;
        QryPaquetes.Params.ParamByName('Contrato').DataType  := ftString ;
        QryPaquetes.Params.ParamByName('Contrato').Value     := global_contrato ;
        QryPaquetes.Params.ParamByName('Convenio').DataType  := ftString ;
        QryPaquetes.Params.ParamByName('Convenio').Value     := ReporteDiario.FieldValues['sIdConvenio'] ;
        QryPaquetes.Params.ParamByName('Orden').DataType     := ftString ;
        QryPaquetes.Params.ParamByName('Orden').Value        := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        QryPaquetes.Open ;
        If QryPaquetes.RecordCount > 0 Then
            tsPaquete.KeyValue := QryPaquetes.FieldValues['Descripcion'] ;

        QryCanceladas.Params.ParamByName('Contrato').DataType := ftString ;
        QryCanceladas.Params.ParamByName('Contrato').Value    := global_contrato ;
        QryCanceladas.Params.ParamByName('Convenio').DataType := ftString ;
        QryCanceladas.Params.ParamByName('Convenio').Value    := ReporteDiario.FieldValues['sIdConvenio'] ;
        QryCanceladas.Params.ParamByName('Orden').DataType    := ftString ;
        QryCanceladas.Params.ParamByName('Orden').Value       := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        QryCanceladas.Params.ParamByName('Fecha').DataType    := ftDate ;
        QryCanceladas.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
        QryCanceladas.Open ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select mComentarios, lAfectaContrato From actividadesfcanceladas Where sContrato = :contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
        connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Orden').Value := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
        Begin
            tmComentarios.Text := Connection.qryBusca.FieldValues['mComentarios'] ;
            If Connection.qryBusca.FieldValues['lAfectaContrato'] = 'Si' Then
                tlAfectaContrato.Checked := True
            Else
                tlAfectaContrato.Checked := False ;

            If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
            Begin
                gbPartidas.Enabled := True ;
                btnNew.Enabled := False ;
                btnEdit.Enabled := True ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := True ;
//                gbPartidas.Color := $00A6C1CA ;
//                tmDescripcion.Color := $00A6C1CA ;
            End
            Else
            Begin
                btnNew.Enabled := False ;
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := True ;
//                gbPartidas.Color := $0077BDCA ;
//                tmDescripcion.Color := $0077BDCA ;
            End
        End
        Else
            If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
             begin
                btnNew.Enabled := True ;
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := False ;
//                gbPartidas.Color := $0077BDCA ;
//                tmDescripcion.Color := $0077BDCA ;
                tmComentarios.Text := '' ;
                tlAfectaContrato.Checked := False ;
             end
            Else
             begin
                btnNew.Enabled := True ;  // A false
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := False ;
//                gbPartidas.Color := $00A6C1CA ;
//                tmDescripcion.Color := $00A6C1CA ;
                tmComentarios.Text := '' ;
                tlAfectaContrato.Checked := False ;
             end
    End ;

end;

procedure TfrmCancelacion.ordenesdetrabajoXAfterScroll(DataSet: TDataSet);
begin
    QryCanceladas.Active := False ;
    gbPartidas.Enabled := False ;
    gbInformacion.Enabled := False ;
    ReporteDiario.Active := False ;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
    ReporteDiario.Params.ParamByName('Orden').Value := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
    ReporteDiario.Open ;
    If ReporteDiario.RecordCount > 0 then
    Begin
        QryPaquetes.Active := False ;
        QryPaquetes.Params.ParamByName('Contrato').DataType := ftString ;
        QryPaquetes.Params.ParamByName('Contrato').Value    := global_contrato ;
        QryPaquetes.Params.ParamByName('Convenio').DataType := ftString ;
        QryPaquetes.Params.ParamByName('Convenio').Value    := ReporteDiario.FieldValues['sIdConvenio'] ;
        QryPaquetes.Params.ParamByName('Orden').DataType    := ftString ;
        QryPaquetes.Params.ParamByName('Orden').Value       := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        QryPaquetes.Open ;
        If QryPaquetes.RecordCount > 0 Then
            tsPaquete.KeyValue := QryPaquetes.FieldValues['Descripcion'] ;

        QryCanceladas.Params.ParamByName('Contrato').DataType := ftString ;
        QryCanceladas.Params.ParamByName('Contrato').Value := global_contrato ;
        QryCanceladas.Params.ParamByName('Convenio').DataType := ftString ;
        QryCanceladas.Params.ParamByName('Convenio').Value := ReporteDiario.FieldValues['sIdConvenio'] ;
        QryCanceladas.Params.ParamByName('Orden').DataType := ftString ;
        QryCanceladas.Params.ParamByName('Orden').Value := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        QryCanceladas.Params.ParamByName('Fecha').DataType := ftDate ;
        QryCanceladas.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        QryCanceladas.Open ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select mComentarios, lAfectaContrato From actividadesfcanceladas Where sContrato = :contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
        connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Orden').Value := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
        Begin
            tmComentarios.Text := Connection.qryBusca.FieldValues['mComentarios'] ;
            If Connection.qryBusca.FieldValues['lAfectaContrato'] = 'Si' Then
                tlAfectaContrato.Checked := True
            Else
                tlAfectaContrato.Checked := False ;

            If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
            Begin
                gbPartidas.Enabled := True ;
                btnNew.Enabled := False ;
                btnEdit.Enabled := True ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := True ;
 //               gbPartidas.Color := $00A6C1CA ;
 //               tmDescripcion.Color := $00A6C1CA ;
            End
            Else
            Begin
                btnNew.Enabled := False ;
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := True ;
//                gbPartidas.Color := $0077BDCA ;
//                tmDescripcion.Color := $0077BDCA ;
            End
        End
        Else
            If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
            Begin
                btnNew.Enabled := True ;
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := False ;
//                gbPartidas.Color := $0077BDCA ;
//                tmDescripcion.Color := $0077BDCA ;
                tmComentarios.Text := '' ;
                tlAfectaContrato.Checked := False ;
            End
            Else
            Begin
                btnNew.Enabled := True ;  // A false
                btnEdit.Enabled := False ;
                btnSave.Enabled := False ;
                btnCancel.Enabled := False ;
                btnPrinter.Enabled := False ;
//                gbPartidas.Color := $00A6C1CA ;
//                tmDescripcion.Color := $00A6C1CA ;
                tmComentarios.Text := '' ;
                tlAfectaContrato.Checked := False ;
            End
    End ;

end;

end.
