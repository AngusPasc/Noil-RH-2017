unit frm_SqlExportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  Mask, Grids, DBGrids, global, Buttons, RXCtrls, StrUtils,DBTables,
  ZAbstractRODataset, ZDataset, UnitExcepciones;

type
  TfrmSqlExportar = class(TForm)
    ds_Sql: TDataSource;
    btnExit: TBitBtn;
    btnExport: TBitBtn;
    SaveSql: TSaveDialog;
    Group_Exportacion: TGroupBox;
    rbtUno: TRadioButton;
    rbnDos: TRadioButton;
    rbtTres: TRadioButton;
    Group_Periodo: TGroupBox;
    Label1: TLabel;
    tdFechaInicio: TDateTimePicker;
    Label2: TLabel;
    tdFechaFinal: TDateTimePicker;
    rbtCuatro: TRadioButton;
    tsTabla: TComboBox;
    tsNumeroOrden: TDBLookupComboBox;
    ds_ordenesdetrabajo: TDataSource;
    rbtOrden: TRadioButton;
    ordenesdetrabajo: TZReadOnlyQuery;
    Sql: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsTablaEnter(Sender: TObject);
    procedure tsTablaExit(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsTablaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSqlExportar: TfrmSqlExportar;

implementation

{$R *.dfm}

procedure TfrmSqlExportar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmSqlExportar.FormShow(Sender: TObject);
begin
  try
    tdFechaInicio.Date := Date ;
    tdFechaFinal.Date := Date ;

    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
    ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
    ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
    OrdenesdeTrabajo.Open ;
    Sql.Active := False ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Exportacion de datos', 'Al abrir formulario', 0);
    end;
  end;
end;

procedure TfrmSqlExportar.btnExitClick(Sender: TObject);
begin
    Close
end;


procedure TfrmSqlExportar.btnExportClick(Sender: TObject);
const  backupcompleto : array [1..22] of string = ('actividadesxanexo', 'anexosmensuales', 'alcancesxactividad', 'avancesglobales', 'avancesxactividad', 'ordenesdetrabajo', 'actividadesxorden',
                                                   'contratos','configuracion','convenios','distribuciondeanexo', 'distribuciondeactividades','equipos', 'personal',
                                                   'gruposisometrico','isometricos', 'turnos', 'tiposdemovimiento', 'anexo_requision', 'anexo_prequision','anexo_pedidos','anexo_ppedidos' ) ;
const  backupsencillo : array [1..8] of string = ('actividadesxanexo', 'actividadesxorden', 'avancesglobales','convenios','anexosmensuales','distribuciondeanexo','distribuciondeactividades', 'avancesxactividad') ;
const  backupfechas : array [1..9] of string = ('avancesglobalesxorden', 'bitacoradeactividades', 'bitacoradepaquetes', 'bitacoradeequipos','bitacoradepersonal', 'firmas','reportediario','bitacoradealcances','jornadasdiarias' ) ;
const  backupfechas2 : array [1..10] of string = ('actividadesxorden','actividadesxanexo','alcancesxactividad','bitacoradealcances','personal','equipos','anexo_requision', 'anexo_prequision','anexo_pedidos','anexo_ppedidos' ) ;
const  backuporden : array [1..9] of string = ('ordenesdetrabajo', 'actividadesxorden', 'avancesglobales','distribuciondeactividades', 'avancesxactividad','anexo_requision', 'anexo_prequision','anexo_pedidos','anexo_ppedidos') ;

Var
   F1            : TextFile;
   Registro      : Integer ;
   Cadena        : WideString ;
   ValorNumerico, Borrar :String ;
   ValorFecha    : String ;
   valorCampo    : Variant ;
   NoTabla       : Byte ;
   BlobStream    : TStream;
   BlobField     : tField ;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicio.Date then
   begin
   showmessage('la fecha final es menor a la fecha de inicio' );
   tdFechaFinal.SetFocus;
   exit;
   end;
  try
    SaveSql.Title := 'Guardar Consulta';
    If SaveSql.Execute Then
    Begin
        AssignFile(F1, SaveSql.FileName);
        rewrite(F1) ;
        WriteLn(F1, '#Inteligent ... Administración de Contratos' ) ;
        WriteLn(F1, '#Exportando Información del Sistema' ) ;
        WriteLn(F1, '' ) ;
        If rbtUno.Checked = True Then
        Begin
            For NoTabla := 1 To 22 Do
            Begin
                WriteLn(F1, '' ) ;
                WriteLn(F1, '' ) ;
                WriteLn(F1, '## Tabla ..: ' + BackupCompleto [NoTabla] ) ;

                If BackupCompleto[NoTabla] = 'avancesglobales' Then
                Begin
                    Sql.Active := False ;
                    Sql.SQL.Clear ;
                    Sql.SQL.Add('Select * From ' + BackupCompleto [NoTabla] + ' Where sContrato = :Contrato And sNumeroOrden = ""'  ) ;
                    Sql.Params.ParamByName('Contrato').DataType := ftString ;
                    Sql.Params.ParamByName('Contrato').Value := global_contrato ;
                    Sql.Open ;
                End
                Else
                Begin
                    Sql.Active := False ;
                    Sql.SQL.Clear ;
                    Sql.SQL.Add('Select * From ' + BackupCompleto [NoTabla] + ' Where sContrato = :Contrato'  ) ;
                    Sql.Params.ParamByName('Contrato').DataType := ftString ;
                    Sql.Params.ParamByName('Contrato').Value := global_contrato ;
                    Sql.Open ;
                End ;
                Sql.First ;
                While Sql.Eof <> True Do
                Begin
                    Cadena := 'INSERT INTO ' + BackupCompleto [NoTabla] + ' VALUES ( ' ;
                    ValorCampo := '' ;
                    for Registro := 0 to Sql.FieldCount - 1 do
                    Begin
                          ValorCampo :=  Sql.Fields[Registro].Value ;
                          If VarIsnull(ValorCampo)  Then
                          Begin
                              ValorCampo := '' ;
                              Cadena := Cadena + chr(39) + ValorCampo + chr(39) ;
                          end
                          Else
                          Begin
                              If (Sql.Fields[Registro].DataType = ftString)	OR (Sql.Fields[Registro].DataType = ftMemo) Then
                              Begin
                                  ValorCampo :=  AnsiReplaceText ( ValorCampo , chr(39) , '') ;
                                  If Length(ValorCampo) > 0 Then
                                       ValorCampo := chr(39) + ValorCampo + chr(39)
                                  Else
                                       ValorCampo := chr(39) + chr(39) ;

                                  Cadena := Cadena + ValorCampo  ;
                              End
                              Else
                                  If Sql.Fields[Registro].DataType = ftDate	Then
                                  Begin
                                      ValorFecha := chr(39) + FormatDateTime('yyyy-mm-dd', ValorCampo) + chr(39)  ;
                                      Cadena := Trim(Cadena + ValorFecha ) ;
                                  End
                                  Else
                                      If Sql.Fields[Registro].DataType <> ftBlob	Then
                                      Begin
                                          ValorNumerico := chr(39) + Trim(ValorCampo) +chr(39) ;
                                          Cadena := Trim(Cadena + ValorNumerico) ;
                                      End
                                      Else
                                          If Sql.Fields[Registro].DataType = ftBlob	Then
                                          Begin
                                              ValorNumerico := chr(39) + chr(39) ;
                                              Cadena := Trim(Cadena + ValorNumerico) ;
                                          End ;

                          End ;
                          If Registro < ( Sql.FieldCount - 1 ) Then
                              Cadena := Cadena + ', '
                    end ;
                    Cadena := Cadena + ') ; ' ;
                    WriteLn(F1, Cadena ) ;
                    Sql.Next ;
                End ;
            End ;
        End
        Else
            If rbnDos.Checked = True Then
            Begin
                For NoTabla := 1 To 8 Do
                Begin
                    WriteLn(F1, '' ) ;
                    WriteLn(F1, '' ) ;
                    WriteLn(F1, '## Tabla ..: ' + BackupSencillo [NoTabla] ) ;

                    Sql.Active := False ;
                    Sql.SQL.Clear ;
                    Sql.SQL.Add('Select * From ' + BackupSencillo [NoTabla] + ' Where sContrato = :Contrato And sIdConvenio = :Convenio'  ) ;
                    Sql.Params.ParamByName('Contrato').DataType := ftString ;
                    Sql.Params.ParamByName('Contrato').Value := global_contrato ;
                    Sql.Params.ParamByName('Convenio').DataType := ftString ;
                    Sql.Params.ParamByName('Convenio').Value := global_convenio ;
                    Sql.Open ;
                    Sql.First ;
                    While Sql.Eof <> True Do
                    Begin
                        Cadena := 'INSERT INTO ' + BackupSencillo [NoTabla] + ' VALUES ( ' ;
                        ValorCampo := '' ;
                        for Registro := 0 to Sql.FieldCount - 1 do
                        Begin
                              ValorCampo :=  Sql.Fields[Registro].Value ;
                              If VarIsnull(ValorCampo)  Then
                              Begin
                                  ValorCampo :='' ;
                                  Cadena := Cadena + chr(39) + ValorCampo + chr(39) ;
                              end
                              Else
                              Begin
                                  If (Sql.Fields[Registro].DataType = ftString)	OR (Sql.Fields[Registro].DataType = ftMemo) Then
                                  Begin
                                      ValorCampo :=  AnsiReplaceText ( ValorCampo , chr(39) , '') ;
                                      If Length(ValorCampo) > 0 Then
                                           ValorCampo := chr(39) + ValorCampo + chr(39)
                                      Else
                                           ValorCampo := chr(39) + chr(39) ;
                                      Cadena := Cadena + ValorCampo  ;
                                  End
                                  Else
                                      If Sql.Fields[Registro].DataType = ftDate	Then
                                      Begin
                                          ValorFecha := chr(39) + FormatDateTime('yyyy-mm-dd', ValorCampo) + chr(39) ;
                                          Cadena := Trim(Cadena + ValorFecha ) ;
                                      End
                                      Else
                                          If Sql.Fields[Registro].DataType <> ftBlob	Then
                                          Begin
                                              ValorNumerico := chr(39) + Trim(ValorCampo) + chr(39) ;
                                              Cadena := Trim(Cadena + ValorNumerico) ;
                                          End
                                          Else
                                              If Sql.Fields[Registro].DataType = ftBlob	Then
                                              Begin
                                                  ValorNumerico := chr(39) + chr(39) ;
                                                  Cadena := Trim(Cadena + ValorNumerico) ;
                                              End ;
                              End ;
                              If Registro < ( Sql.FieldCount - 1 ) Then
                                  Cadena := Cadena + ', '
                        end ;
                        Cadena := Cadena + ') ; ' ;
                        WriteLn(F1, Cadena ) ;
                        Sql.Next ;
                    End ;
                End ;
            End
            Else
                If rbtTres.Checked = True Then
                Begin
                    // Importación x Periodo del Primer bloque
                    For NoTabla := 1 To 9 Do
                    Begin
                        WriteLn(F1, '' ) ;
                        WriteLn(F1, '' ) ;
                        WriteLn(F1, '## Tabla ..: ' + BackupFechas[NoTabla] ) ;
                        Borrar := 'Delete from ' + BackupFechas[NoTabla] + ' Where sContrato= ' + chr(39) + global_contrato + chr(39)   ;
                        Borrar  := Borrar + ' And dIdFecha >= ' +  chr(39) + FormatDateTime('yyyy-mm-dd', tdFechaInicio.Date) + chr(39) + ' And dIdFecha <= ' +   chr(39) + FormatDateTime('yyyy-mm-dd', tdFechaFinal.Date ) + chr(39) +  ' ;'  ;
                        WriteLn(F1, Borrar) ;

                        Sql.Active := False ;
                        Sql.SQL.Clear ;
                        Sql.SQL.Add('Select * From ' + BackupFechas[NoTabla] + ' Where sContrato = :Contrato And dIdFecha >= :FechaInicio And dIdFecha <= :FechaFinal'  ) ;
                        Sql.Params.ParamByName('Contrato').DataType := ftString ;
                        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
                        Sql.Params.ParamByName('FechaInicio').DataType := ftDate;
                        Sql.Params.ParamByName('FechaInicio').Value := tdFechaInicio.Date ;
                        Sql.Params.ParamByName('FechaFinal').DataType := ftDate ;
                        Sql.Params.ParamByName('FechaFinal').Value := tdFechaFinal.Date ;
                        Sql.Open ;
                        Sql.First ;
                        While Sql.Eof <> True Do
                        Begin
                            Cadena := 'INSERT INTO ' + BackupFechas[NoTabla] + ' VALUES ( ' ;
                            ValorCampo := '' ;
                            for Registro := 0 to Sql.FieldCount - 1 do
                            Begin
                                ValorCampo :=  Sql.Fields[Registro].Value ;
                                  If VarIsnull(ValorCampo)  Then
                                  Begin
                                      ValorCampo :='' ;
                                      Cadena := Cadena + chr(39) + ValorCampo + chr(39) ;
                                  end
                                  Else
                                  Begin
                                      If (Sql.Fields[Registro].DataType = ftString)	OR (Sql.Fields[Registro].DataType = ftMemo) Then
                                      Begin
                                          ValorCampo :=  AnsiReplaceText ( ValorCampo , chr(39) , '' ) ;
                                          If Length(ValorCampo) > 0 Then
                                               ValorCampo := chr(39) + ValorCampo + chr(39)
                                          Else
                                               ValorCampo := chr(39) + chr(39) ;
                                          Cadena := Cadena + ValorCampo  ;
                                      End
                                      Else
                                          If Sql.Fields[Registro].DataType = ftDate	Then
                                          Begin
                                              ValorFecha := chr(39) + FormatDateTime('yyyy-mm-dd', ValorCampo) + chr(39) ;
                                              Cadena := Trim(Cadena + ValorFecha ) ;
                                          End
                                          Else
                                              If Sql.Fields[Registro].DataType <> ftBlob	Then
                                              Begin
                                                  ValorNumerico := chr(39) + Trim(ValorCampo) + chr(39) ;
                                                  Cadena := Trim(Cadena + ValorNumerico) ;
                                              End
                                              Else
                                                  If Sql.Fields[Registro].DataType = ftBlob	Then
                                                  Begin
                                                      ValorNumerico := chr(39) + chr(39) ;
                                                      Cadena := Trim(Cadena + ValorNumerico) ;
                                                  End ;
                                  End ;
                                  If Registro < ( Sql.FieldCount - 1 ) Then
                                      Cadena := Cadena + ', '
                            end ;
                            Cadena := Cadena + ') ; ' ;
                            WriteLn(F1, Cadena ) ;
                            Sql.Next ;
                        End ;
                    End ;
                End
                Else
                    If rbtCuatro.Checked = True Then
                    Begin
                        WriteLn(F1, '' ) ;
                        WriteLn(F1, '' ) ;
                        WriteLn(F1, '## Tabla ..: ' + tsTabla.Text ) ;

                        Sql.Active := False ;
                        Sql.SQL.Clear ;
                        Sql.SQL.Add('Select * From ' + tsTabla.Text ) ;
                        Sql.Open ;
                        Sql.First ;
                        While Sql.Eof <> True Do
                        Begin
                            Cadena := 'INSERT INTO ' + tsTabla.Text + ' VALUES ( ' ;
                            ValorCampo := '' ;
                            for Registro := 0 to Sql.FieldCount - 1 do
                            Begin
                                  ValorCampo :=  Sql.Fields[Registro].Value ;
                                  If VarIsnull(ValorCampo)  Then
                                  Begin
                                      ValorCampo :='' ;
                                      Cadena := Cadena + chr(39) + ValorCampo + chr(39) ;
                                  end
                                  Else
                                  Begin
                                      If (Sql.Fields[Registro].DataType = ftString)	OR (Sql.Fields[Registro].DataType = ftMemo) Then
                                      Begin
                                          ValorCampo :=  AnsiReplaceText ( ValorCampo , chr(39) , '') ;
                                          If Length(ValorCampo) > 0 Then
                                               ValorCampo := chr(39) + ValorCampo + chr(39)
                                          Else
                                               ValorCampo := chr(39) + chr(39) ;

                                          Cadena := Cadena + ValorCampo  ;
                                      End
                                      Else
                                          If Sql.Fields[Registro].DataType = ftDate	Then
                                          Begin
                                              ValorFecha := chr(39) + FormatDateTime('yyyy-mm-dd', ValorCampo) + chr(39) ;
                                              Cadena := Trim(Cadena + ValorFecha ) ;
                                          End
                                          Else
                                              If Sql.Fields[Registro].DataType <> ftBlob	Then
                                              Begin
                                                  ValorNumerico := chr(39) + Trim(ValorCampo) + chr(39) ;
                                                  Cadena := Trim(Cadena + ValorNumerico) ;
                                              End
                                              Else
                                                  If Sql.Fields[Registro].DataType = ftBlob	Then
                                                  Begin
                                                      ValorNumerico := chr(39) + chr(39) ;
                                                      Cadena := Trim(Cadena + ValorNumerico) ;
                                                  End ;

                                  End ;
                                  If Registro < ( Sql.FieldCount - 1 ) Then
                                      Cadena := Cadena + ', '
                            end ;
                            Cadena := Cadena + ') ; ' ;
                            WriteLn(F1, Cadena ) ;
                            Sql.Next ;
                        End ;
                    End
                    Else
                        If rbtOrden.Checked Then
                        Begin
                            // Importación x Orden de Trabajo
                            For NoTabla := 1 To 9 Do
                            Begin
                                WriteLn(F1, '' ) ;
                                WriteLn(F1, '' ) ;
                                WriteLn(F1, '## Tabla ..: ' + BackupOrden[NoTabla] ) ;

                                If BackupOrden[NoTabla] = 'OrdenesdeTrabajo' Then
                                Begin
                                    Sql.Active := False ;
                                    Sql.SQL.Clear ;
                                    Sql.SQL.Add('Select * From ' + BackupOrden[NoTabla] + ' Where sContrato = :Contrato And sNumeroOrden = :Orden'  ) ;
                                    Sql.Params.ParamByName('Contrato').DataType := ftString ;
                                    Sql.Params.ParamByName('Contrato').Value := global_contrato ;
                                    Sql.Params.ParamByName('Orden').DataType := ftString ;
                                    Sql.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
                                    Sql.Open ;
                                End
                                Else
                                Begin
                                    Sql.Active := False ;
                                    Sql.SQL.Clear ;
                                    Sql.SQL.Add('Select * From ' + BackupOrden[NoTabla] + ' Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio'  ) ;
                                    Sql.Params.ParamByName('Contrato').DataType := ftString ;
                                    Sql.Params.ParamByName('Contrato').Value := global_contrato ;
                                    Sql.Params.ParamByName('Convenio').DataType := ftString ;
                                    Sql.Params.ParamByName('Convenio').Value := global_convenio ;
                                    Sql.Params.ParamByName('Orden').DataType := ftString ;
                                    Sql.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
                                    Sql.Open ;
                                End ;

                                Sql.First ;
                                While Sql.Eof <> True Do
                                Begin
                                    Cadena := 'INSERT INTO ' + BackupOrden[NoTabla] + ' VALUES ( ' ;
                                    ValorCampo := '' ;
                                    for Registro := 0 to Sql.FieldCount - 1 do
                                    Begin
                                        ValorCampo :=  Sql.Fields[Registro].Value ;
                                        If VarIsnull(ValorCampo)  Then
                                        Begin
                                            ValorCampo :='' ;
                                            Cadena := Cadena + chr(39) + ValorCampo + chr(39) ;
                                        end
                                        Else
                                        Begin
                                            If (Sql.Fields[Registro].DataType = ftString)	OR (Sql.Fields[Registro].DataType = ftMemo) Then
                                            Begin
                                                ValorCampo :=  AnsiReplaceText ( ValorCampo , chr(39) , '' ) ;
                                                If Length(ValorCampo) > 0 Then
                                                     ValorCampo := chr(39) + ValorCampo + chr(39)
                                                Else
                                                     ValorCampo := chr(39) + chr(39) ;
                                                Cadena := Cadena + ValorCampo  ;
                                            End
                                            Else
                                                If Sql.Fields[Registro].DataType = ftDate	Then
                                                Begin
                                                    ValorFecha := chr(39) + FormatDateTime('yyyy-mm-dd', ValorCampo) + chr(39) ;
                                                    Cadena := Trim(Cadena + ValorFecha ) ;
                                                End
                                                Else
                                                    If Sql.Fields[Registro].DataType <> ftBlob	Then
                                                    Begin
                                                        ValorNumerico := chr(39) + Trim(ValorCampo) + chr(39) ;
                                                        Cadena := Trim(Cadena + ValorNumerico) ;
                                                    End
                                                    Else
                                                        If Sql.Fields[Registro].DataType = ftBlob	Then
                                                        Begin
                                                            ValorNumerico := chr(39) + chr(39) ;
                                                            Cadena := Trim(Cadena + ValorNumerico) ;
                                                        End ;
                                        End ;
                                        If Registro < ( Sql.FieldCount - 1 ) Then
                                            Cadena := Cadena + ', '
                                  end ;
                                  Cadena := Cadena + ') ; ' ;
                                  WriteLn(F1, Cadena ) ;
                                  Sql.Next ;
                              End ;
                        End ;
                  End ;
        closefile(F1) ;
        MessageDlg('Proceso Terminado.', mtInformation, [mbOk], 0);
    End;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Exportacion de datos', 'Al exportar', 0);
    end;
  end;
end;

procedure TfrmSqlExportar.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entradaERP
end;

procedure TfrmSqlExportar.tdFechaInicioExit(Sender: TObject);
begin
  tdFechaInicio.Color := global_color_salidaPU
end;

procedure TfrmSqlExportar.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinal.SetFocus 
end;

procedure TfrmSqlExportar.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entradaERP
end;

procedure TfrmSqlExportar.tdFechaFinalExit(Sender: TObject);
begin
  tdFechaFinal.Color := global_color_salidaPU
end;

procedure TfrmSqlExportar.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tstabla.SetFocus 
end;

procedure TfrmSqlExportar.tsNumeroOrdenEnter(Sender: TObject);
begin
    rbtOrden.Checked := True ;
    tsNumeroOrden.Color := global_color_entradaERP
end;

procedure TfrmSqlExportar.tsTablaEnter(Sender: TObject);
begin
    rbtCuatro.Checked := True ;
    tsTabla.Color := global_color_entradaERP
end;

procedure TfrmSqlExportar.tsTablaExit(Sender: TObject);
begin
    tsTabla.Color := global_color_salidaPU
end;

procedure TfrmSqlExportar.tsTablaKeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 Then
        tsnumeroorden.SetFocus;
end;

procedure TfrmSqlExportar.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salidaPU
end;


procedure TfrmSqlExportar.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 Then
      tdfechainicio.SetFocus;
end;

end.
