unit frm_PendientesNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  RxGrdCpt, ComCtrls, StdCtrls, Buttons, frm_connection, global, DB,
  ADODB, frxClass, frxDBSet, RxMemDS, Mask,  masUtilerias, Utilerias,
  ZAbstractRODataset, ZDataset, rxToolEdit, rxCurrEdit, UnitExcepciones,
  UFunctionsGHH ;

type
  TfrmPendientesNew = class(TForm)
    tmDescripcion: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tdLaborado: TCurrencyEdit;
    tdTranscurrido: TCurrencyEdit;
    tdFechaInicio: TMaskEdit;
    tdFechaFinal: TMaskEdit;
    AvProyecto: TCurrencyEdit;
    Label5: TLabel;
    AvPendiente: TCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    avProgramado: TCurrencyEdit;
    AvReal: TCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    grConsulta: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    tdIdFecha: TDateTimePicker;
    tsTiempoEfectivo: TMaskEdit;
    tsTiempoInactivo: TMaskEdit;
    sReportes: TLabel;
    btnPrinter: TBitBtn;
    rptReportesDiarios: TfrxReport;
    dsReportesDiarios: TfrxDBDataset;
    QryReportesDiarios: TZReadOnlyQuery;
    QryTiempos: TZReadOnlyQuery;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaChange(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure rptReportesDiariosGetValue(const VarName: String;
      var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmdOcultarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPendientesNew: TfrmPendientesNew;
implementation

{$R *.dfm}

procedure TfrmPendientesNew.FormShow(Sender: TObject);
begin
    sMenuP:=stMenu;
    global_PendientesOculto:=False;
    If global_contrato <> '' Then
    Begin
        tdIdFecha.Date := Date ;
        tmDescripcion.Text := Connection.contrato.FieldValues['mDescripcion'] ;
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
        Connection.qryBusca.Open ;
        avProyecto.Value := 0 ;
        If Connection.qryBusca.RecordCount > 0 Then
        Begin
            tdFechaInicio.Text := Connection.qryBusca.FieldValues['dFechaInicio'] ;
            If VarIsNull (Connection.qryBusca.FieldValues['dFechaFinal']) then
                MessageDlg('No Hay Fecha Final del Convenio !!', mtError, [mbOk], 0)
            Else
                tdFechaFinal.Text := Connection.qryBusca.FieldValues['dFechaFinal'] ;
            tdLaborado.Value := (Date - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
            tdTranscurrido.Value := Connection.qryBusca.FieldValues['dFechaFinal']  - Date ;
            If Date <= Connection.qryBusca.FieldValues['dFechaFinal'] Then
            Begin
                avProyecto.Value := (Connection.qryBusca.FieldValues['dFechaFinal'] - Connection.qryBusca.FieldValues['dFechaInicio']) + 1  ;
                avProyecto.Value := (tdLaborado.Value / avProyecto.Value ) * 100 ;
                avPendiente.Value := 100 - avProyecto.Value
            End
            Else
            Begin
                avProyecto.Value := 100 ;
                avPendiente.Value := 0 ;
          End
        End
        Else
        Begin
            tdFechaInicio.Text := DateToStr(Date) ;
            tdFechaFinal.Text := DateToStr(Date) ;
            tdLaborado.Value := 0 ;
            tdTranscurrido.Value := 0 ;
            avProyecto.Value := 0 ;
            avPendiente.Value := 0 ;
        End ;

        If tdTranscurrido.Value <= 10 Then
        Begin
            tdTranscurrido.Font.Style := [fsBold] ;
            tdTranscurrido.Font.Color := clRed;
            tdTranscurrido.Font.Size  := 9 ;
        End
        Else
        Begin
            tdTranscurrido.Font.Style := [] ;
            tdTranscurrido.Font.Color := clWindowText ;
            tdTranscurrido.Font.Size  := 8 ;
        End ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select dAvancePonderadoGlobal From avancesglobales Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha = :Fecha And sNumeroOrden = ""') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
        Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca.Params.ParamByName('Fecha').Value := Date ;
        Connection.qryBusca.Open ;
        avProgramado.Value := 0 ;
        If Connection.qryBusca.RecordCount > 0 Then
            avProgramado.Value := Connection.qryBusca.FieldValues['dAvancePonderadoGlobal'] ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(dAvance)  as dAvance From avancesglobalesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha <= :Fecha And sNumeroOrden = "" Group By sContrato') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
        Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca.Params.ParamByName('Fecha').Value := Date ;
        Connection.qryBusca.Open ;
        avReal.Value := 0 ;
        If Connection.qryBusca.RecordCount > 0 Then
            avReal.Value := Connection.qryBusca.FieldValues['dAvance'] ;
    End
end;

procedure TfrmPendientesNew.tdIdFechaChange(Sender: TObject);
Var
    iReportes : Byte ;
    iJornada  : Byte ;
begin
  try
      QryTiempos.Active := False ;
      QryTiempos.Params.ParamByName('Contrato').DataType := ftString ;
      QryTiempos.Params.ParamByName('Contrato').Value := global_contrato ;
      QryTiempos.Params.ParamByName('Fecha').DataType := ftDate ;
      QryTiempos.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
      QryTiempos.Open ;
      tsTiempoEfectivo.Text := '00:00' ;
      tsTiempoInactivo.Text := '00:00' ;
      iReportes := 0 ;
      While NOT QryTiempos.Eof Do
      Begin
          tsTiempoInactivo.Text := sfnSumaHoras (tsTiempoInactivo.Text , QryTiempos.FieldValues['sTiempoMuertoReal'] ) ;
          iReportes := iReportes + 1 ;
          QryTiempos.Next ;
      End ;

      iJornada := ifnJornadaDia (global_contrato, tdIdFecha.Date, frmPendientesNew) ;
      If iJornada < 10 Then
           tsTiempoEfectivo.Text := '0' + Trim(IntToStr(iJornada)) + ':00'
      Else
           tsTiempoEfectivo.Text := Trim(IntToStr(iJornada)) + ':00' ;
      tsTiempoEfectivo.Text := sfnRestaHoras (tsTiempoEfectivo.Text , tsTiempoInactivo.Text) ;
      sReportes.Caption := 'Numero de Reportes Autorizados : ' + IntToStr(iReportes) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pendientes', 'Al seleccionar fecha', 0);
      end
  end;
end;

procedure TfrmPendientesNew.BitBtn1Click(Sender: TObject);
begin
global_PendientesOculto:=True;
close
end;

procedure TfrmPendientesNew.btnPrinterClick(Sender: TObject);
begin
    QryReportesDiarios.Active := False ;
    QryReportesDiarios.Params.ParamByName('Contrato').DataType := ftString ;
    QryReportesDiarios.Params.ParamByName('Contrato').Value := global_contrato ;
    QryReportesDiarios.Params.ParamByName('Fecha').DataType := ftDate ;
    QryReportesDiarios.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    QryReportesDiarios.Open ;
    //<ROJAS>
    rptReportesDiarios.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
end;

procedure TfrmPendientesNew.rptReportesDiariosGetValue(
  const VarName: String; var Value: Variant);
begin
  If CompareText(VarName, 'TIEMPO_MUERTO') = 0 then
      Value := tsTiempoEfectivo.Text ;
  If CompareText(VarName, 'TIEMPO_EFECTIVO') = 0 then
      Value := tsTiempoInactivo.Text ;

end;

procedure TfrmPendientesNew.cmdOcultarClick(Sender: TObject);
begin
Visible:=False;
end;

procedure TfrmPendientesNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

end.
