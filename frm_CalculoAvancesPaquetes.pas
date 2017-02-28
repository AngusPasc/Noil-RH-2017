unit frm_CalculoAvancesPaquetes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, utilerias, frm_connection, DBCtrls, StdCtrls, Buttons, DB, Global,
  ComCtrls, math, ZAbstractRODataset, ZDataset, Gauges, masUtilerias,
  UnitValidaTexto,unitexcepciones, DBDateTimePicker;
type
  TfrmCalculoAvancesPaquetes = class(TForm)
    Label1: TLabel;
    btnOk: TBitBtn;
    btnExit: TBitBtn;
    tsNumeroOrden: TDBLookupComboBox;
    ds_ordenesdetrabajo: TDataSource;
    grPeriodo: TGroupBox;
    Inicio: TLabel;
    Final: TLabel;
    ordenesdetrabajo: TZReadOnlyQuery;
    Progress: TGauge;
    dFechaInicial: TDBDateTimePicker;
    dFechaFinal: TDBDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure btnExitClick(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure dFechaInicialEnter(Sender: TObject);
    procedure dFechaInicialExit(Sender: TObject);
    procedure dFechaFinalEnter(Sender: TObject);
    procedure dFechaFinalExit(Sender: TObject);
    procedure procAjustaBitacoraActividades (sParamContrato, sParamOrden, sParamConvenio : String ; dParamFecha : tDate) ;
    procedure dFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure dFechaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure dFechaFinalChange(Sender: TObject);
    procedure dFechaInicialChange(Sender: TObject);
//    procedure procAjustacontrato (sParamContrato, sParamConvenio : String ; dParamFecha : tDate) ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmCalculoAvancesPaquetes: TfrmCalculoAvancesPaquetes;
   lBorraPaquetes   : Boolean;
   TotalPaquetes    : integer;

implementation

{$R *.dfm}

procedure TfrmCalculoAvancesPaquetes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmCalculoAvancesPaquetes.procAjustaBitacoraActividades (sParamContrato, sParamOrden, sParamConvenio : String ; dParamFecha : tDate) ;
Var
    qryBitacora : tzReadOnlyQuery ;
    iRecord     : Word ;
begin
    qryBitacora := tzReadOnlyQuery.Create(self) ;
    qryBitacora.Connection := connection.zConnection ;

    // Primero los avances de la orden de trabajo ...
    // Inicializo la Bitacora Principal
    qryBitacora.Active := False ;
    qryBitacora.SQL.Clear ;
    qryBitacora.SQL.Add('select b.sWbs, sum(b.dAvance * a.dPonderado) as dAvanceReal from bitacoradeactividades b ' +
                        'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroOrden = a.sNumeroOrden And ' +
                        'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
                        'where b.sContrato = :contrato and b.dIdFecha = :fecha And b.sNumeroOrden = :Orden ' +
                        'Group by b.sWbs order by a.iItemOrden ') ;
    qryBitacora.Params.ParamByName('contrato').DataType := ftString ;
    qryBitacora.Params.ParamByName('contrato').Value := sPAramContrato ;
    qryBitacora.Params.ParamByName('convenio').DataType := ftString ;
    qryBitacora.Params.ParamByName('convenio').Value := sParamConvenio ;
    qryBitacora.Params.ParamByName('Orden').DataType := ftString ;
    qryBitacora.Params.ParamByName('Orden').Value := sParamOrden ;
    qryBitacora.Params.ParamByName('fecha').DataType := ftDate ;
    qryBitacora.Params.ParamByName('fecha').Value := dParamFecha ;
    qryBitacora.Open ;
    If QryBitacora.RecordCount > 0 then
    Begin
        Progress.Visible := True ;
        Progress.Progress := 1 ;
        Progress.MinValue := 1 ;
        Progress.MaxValue := QryBitacora.RecordCount ;
        QryBitacora.First ;
        For iRecord := 1 to Progress.MaxValue Do
        Begin
            try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zCommand.SQL.Add ( 'UPDATE bitacoradepaquetes SET dAvance = dAvance + :Avance  ' +
                                               'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdConvenio = :convenio And InStr(:wbs, concat(sWbs,".")) > 0') ;
                 connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('contrato').value := sParamContrato ;
                 connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Orden').value := sParamOrden ;
                 connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('convenio').value := sParamConvenio ;
                 connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                 connection.zCommand.Params.ParamByName('fecha').value := dParamFecha ;
                 connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('wbs').value := QryBitacora.FieldValues['sWbs'] ;
                 connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat ;
                 connection.zCommand.Params.ParamByName('Avance').value := QryBitacora.FieldValues['dAvanceReal'] ;
                 connection.zCommand.ExecSQL ;
            Except
                 MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de actividades', mtWarning, [mbOk], 0);
            End ;
            Progress.Progress := iRecord ;
            QryBitacora.Next ;
        End ;
        Progress.Visible := False ;
    End ;
    QryBitacora.Destroy ;
end ;


procedure TfrmCalculoAvancesPaquetes.btnOkClick(Sender: TObject);
Var
    lRegenera : Boolean ;
    strAux    : String ;
    sPaqueteBusqueda,
    sPartidaOriginal : String ;
    lProcesoValido   : Boolean ;
    dFactorAjuste    : Currency ;
    dIdFecha         : tDate ;
    //****************************BRITO 09/02/11********************************
    sRangoKardex     : String ;
    myYear, myMonth, myDay : Word;
    //****************************BRITO 09/02/11********************************
      nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Frente');
  cadenas.Add(tsNumeroOrden.Text);
  if not validaTexto(nombres, cadenas, '','') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos
 if tsNumeroOrden.text='' then
 begin
  ShowMessage('Selecciones un frente de trabajo');
  tsNumeroOrden.SetFocus;
  abort
 end;
//Verifica que la fecha final no sea menor que la fecha inicio
   if dFechaFinal.Date<dFechaInicial.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   dFechaFinal.SetFocus;
   exit;
   end;
 try
    if lBorraPaquetes then
    begin
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'Delete from bitacoradepaquetes where sContrato = :contrato And sIdConvenio = :convenio ') ;
         connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
         connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
         connection.zCommand.Params.ParamByName('convenio').Value := global_convenio ;
         connection.zCommand.ExecSQL ;
         lBorraPaquetes := False;
    end;

    Inc(totalPaquetes);

    dIdFecha := dFechaInicial.Date ;
    While dIdFecha <= dFechaFinal.Date Do
    Begin

        // Inserccion de todos los paquetes para los frentes de trabajo..
        try
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'insert into bitacoradepaquetes (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dAvance) ' +
                                      'select sContrato, sIdConvenio, :fecha, sNumeroOrden, sWbs, sNumeroActividad, 0 from actividadesxorden ' +
                                      'Where sContrato = :contrato And sIdConvenio =:convenio And sNumeroOrden =:orden And sTipoActividad = "Paquete" ') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
          connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
          connection.zCommand.Params.ParamByName('convenio').Value    := global_convenio ;
          connection.zCommand.Params.ParamByName('Orden').DataType    := ftString ;
          connection.zCommand.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
          connection.zCommand.Params.ParamByName('Fecha').DataType    := ftDate ;
          connection.zCommand.Params.ParamByName('Fecha').Value       := dIdFecha ;
          connection.zCommand.ExecSQL () ;
        Except

        end;

        procAjustaBitacoraActividades (global_contrato, tsNumeroOrden.Text, global_convenio, dIdFecha) ;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'UPDATE bitacoradepaquetes SET dAvance = dAvance / 100  ' +
                                      'Where sContrato = :Contrato And dIdFecha = :Fecha And sIdConvenio = :convenio And sNumeroOrden = :Orden') ;
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('contrato').value := global_contrato ;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
        connection.zCommand.Params.ParamByName('convenio').value := global_convenio ;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
        connection.zCommand.Params.ParamByName('fecha').value := dIdFecha ;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
        connection.zCommand.ExecSQL ;

        // Avances del Contrato ....
       try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'insert into bitacoradepaquetes (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dAvance) ' +
                                      'select sContrato, sIdConvenio, :fecha, "", sWbs, sNumeroActividad, 0 from actividadesxanexo ' +
                                      'Where sContrato = :contrato And sIdConvenio = :convenio And sTipoActividad = "Paquete" ') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('convenio').Value := global_convenio ;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('Fecha').Value := dIdFecha ;
            connection.zCommand.ExecSQL () ;
        except

        end;

        procAjustaContrato (global_contrato, global_convenio, dIdFecha, frmCalculoAvancesPaquetes) ;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'UPDATE bitacoradepaquetes SET dAvance = dAvance / 100  ' +
                                      'Where sContrato = :Contrato And dIdFecha = :Fecha And sIdConvenio = :convenio And sNumeroOrden = :Orden') ;
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('contrato').value := global_contrato ;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
        connection.zCommand.Params.ParamByName('convenio').value := global_convenio ;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
        connection.zCommand.Params.ParamByName('fecha').value := dIdFecha ;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Orden').value := '' ;
        connection.zCommand.ExecSQL ;
        dIdFecha := dIdFecha + 1
    End ;

    //****************************BRITO 09/02/11********************************
    //registrar la operacion en el kardex
    DecodeDate(dFechaInicial.Date, myYear, myMonth, myDay);
    sRangoKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);
    DecodeDate(dFechaFinal.Date, myYear, myMonth, myDay);
    sRangoKardex := sRangoKardex + ' - ' + inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);

    Kardex('Regeneraciones', 'Regenera entregables', sRangoKardex, 'Rango de Fechas', tsNumeroOrden.Text, '', '' );
    //****************************BRITO 09/02/11********************************

   MessageDlg('Proceso Terminado con Exito.', mtInformation, [mbOk], 0);
 except
 on e : exception do begin
 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_CalculoAvancesPaquetes', 'Al regenerar el avance entregable', 0);
 end;
 end;

end;

procedure TfrmCalculoAvancesPaquetes.FormShow(Sender: TObject);
begin
  try
    lBorraPaquetes   := True;
    TotalPaquetes    := 0;
    dFechaFinal.Date := Date ;
    connection.configuracion.refresh ;
    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
    ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
    ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
    OrdenesdeTrabajo.Open ;
    Progress.Visible := False ;
    tsNumeroOrden.SetFocus
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_CalculoAvancesPaquetes', 'Al hacer las consultas de inicio', 0);
  end;
  end;
end;

procedure TfrmCalculoAvancesPaquetes.tsNumeroOrdenExit(Sender: TObject);
begin
  if tsNumeroOrden.Text='' then
  begin
    ShowMessage('Seleccione un frente de trabajo');
    tsNumeroOrden.SetFocus;
    abort;
  end;
  dFechaInicial.Date := OrdenesdeTrabajo.FieldValues ['dFiProgramado'] ;
  tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmCalculoAvancesPaquetes.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
      dfechainicial.SetFocus
end;

procedure TfrmCalculoAvancesPaquetes.btnExitClick(Sender: TObject);
begin
    if totalPaquetes = 0 then
       close
    else
    begin
        if TotalPaquetes < ordenesdeTrabajo.RecordCount then
           If MessageDlg('No se regeneraron Todos los Frentes de Trabajo, por lo tanto los avances fisicos del Contrato puede que no esten Correctos. '+#13+
                         '   Realmente desea salir ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               close
           else
                exit
        else
             close
    end;
end;

procedure TfrmCalculoAvancesPaquetes.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmCalculoAvancesPaquetes.dFechaInicialChange(Sender: TObject);
begin

  dFechaFinal.Date:=dFechainicial.Date;
end;

procedure TfrmCalculoAvancesPaquetes.dFechaInicialEnter(Sender: TObject);
begin
    dFechaInicial.Color := global_color_entrada
end;

procedure TfrmCalculoAvancesPaquetes.dFechaInicialExit(Sender: TObject);
begin
    dFechaInicial.Color := global_color_salida

end;
procedure TfrmCalculoAvancesPaquetes.dFechaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
      dfechafinal.SetFocus
end;

procedure TfrmCalculoAvancesPaquetes.dFechaFinalChange(Sender: TObject);
begin
//  dFechaFinal.MinDate:=dFechainicial.Date;
end;

procedure TfrmCalculoAvancesPaquetes.dFechaFinalEnter(Sender: TObject);
begin
    dFechaFinal.Color := global_color_entrada
end;

procedure TfrmCalculoAvancesPaquetes.dFechaFinalExit(Sender: TObject);
begin
    dFechaFInal.Color := global_color_salida
end;

procedure TfrmCalculoAvancesPaquetes.dFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  btnOk.SetFocus
end;

end.
