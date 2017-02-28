unit frm_ImportarDiarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  ADODB, Mask, Grids, DBGrids, global, Buttons, RXCtrls, StrUtils, 
  Gauges, Menus, utilerias, ZAbstractRODataset, ZDataset, ShellCtrls,
  sListView, acShellCtrls, sTreeView, UnitExcepciones;

type
  TfrmImportarDiarios = class(TForm)
    btnExit: TBitBtn;
    btnExecute: TBitBtn;
    bAvance: TGauge;
    Label1: TLabel;
    PopHelp: TPopupMenu;
    Refresh1: TMenuItem;
    Label7: TLabel;
    ConnImport: TADOConnection;
    SqlOriginal: TZReadOnlyQuery;
    Sql: TADOQuery;
    SqlSecundario: TADOQuery;
    fDirectorio: TsShellTreeView;
    fContenido: TsShellListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure procDelInsert (sParamTable : String; ParamSql :tAdoQuery) ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportarDiarios: TfrmImportarDiarios;
  sRestore : String ;
  lStatus  : String ;
implementation

{$R *.dfm}

procedure TfrmImportarDiarios.procDelInsert (sParamTable : String; ParamSql :tAdoQuery) ;
var
    registro   : byte ;
    sParametro : String ;
begin
  try
    ParamSql.First ;
    While NOT ParamSql.Eof do
    begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.Sql.Add(funcsql2(ParamSql , sParamTable)) ;
        for registro := 0 to ParamSql.fieldcount - 1 do
        begin
             sparametro := 'param' + trim(inttostr(registro + 1)) ;
             If ParamSql.fields[registro].DataType = ftBCD Then
                 connection.zCommand.params.parambyname(sparametro).datatype := ftFloat
             Else
                 If ParamSql.fields[registro].DataType = ftDateTime Then
                     connection.zCommand.params.parambyname(sparametro).datatype := ftDate
                 Else
                     If ParamSql.fields[registro].DisplayWidth <= 255 Then
                         connection.zCommand.params.parambyname(sparametro).datatype := ftString
                     Else
                         connection.zCommand.params.parambyname(sparametro).value := ParamSql.fields[registro].dataType ;
            connection.zCommand.params.parambyname(sparametro).value := ParamSql.fields[registro].value ;

        end ;
        try
            connection.zCommand.ExecSQL ;

        except
           If (sParamTable <> 'personal') AND (sParamTable <> 'equipos') AND (sParamTable <> 'tiposdemovimiento') AND
              (sParamTable <> 'alcancesxactividad') AND (sParamTable <> 'bitacoradepersonal') AND (sParamTable <> 'bitacoradepaquetes') AND 
              (sParamTable <> 'bitacoradeactividades') AND (sParamTable <> 'bitacoradealcances')AND (sParamTable <> 'bitacoradeequipos') AND
              (sParamTable <> 'jornadasdiarias') AND (sParamTable <> 'reportediario') AND (sParamTable <> 'reportefotografico') AND
              (sParamTable <> 'avancesglobalesxorden') AND 
              (sParamTable <> 'plataformas') AND (sParamTable <> 'pernoctan') AND (sParamTable <> 'estimacionperiodo') Then
                 MessageDlg('ocurrio un error al importar uno de los registros de la tabla ' + sParamTable , mtInformation, [mbOk], 0);
           ParamSql.Next ;
        end ;

    end ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importar Reportes Diarios', 'Al procDelInsert', 0);
    end;
  end;
end ;



procedure TfrmImportarDiarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmImportarDiarios.FormShow(Sender: TObject);
Var
  F: TextFile;
  S: wideString;
  iPos : Integer ;
begin
  AssignFile(F, global_ruta + 'Inteligent.ini'); { File selected in dialog }
  Reset(F);
  lStatus := '' ;
  while not Eof(F) do
  begin
       Readln(F, S);                        { Read first line of file }
       iPos := Pos ( '=' , S) ;
       If MidStr ( S , 1 , iPos - 1 ) = 'Restore' Then
           sRestore := MidStr ( S , iPos + 1 , Length (S)) ;
       If MidStr ( S , 1 , iPos - 1 ) = 'Status' Then
           lStatus := MidStr ( S , iPos + 1 , Length (S))

  End ;
  CloseFile (F) ;

  If sRestore <> '' Then
      fDirectorio.Root := sRestore
  Else
      fDirectorio.Root := 'rfDesktop'  ;

end;

procedure TfrmImportarDiarios.btnExitClick(Sender: TObject);
begin
    Close
end;



procedure TfrmImportarDiarios.btnExecuteClick(Sender: TObject);
Var
    dbName      : String ;
    iArchivos   : Integer ;
    sTipo       : String ;
    ListTables  : TStrings;
    IndexTables : Integer;
begin
  try
    cursor := crHourGlass ;
    bAvance.MinValue := 0 ;
    bAvance.MaxValue := fContenido.Items.Count ;
    bAvance.Progress := 0 ;
    For iArchivos := 0 To fContenido.Items.Count - 1 Do
    Begin
        dbName := fContenido.Folders[iArchivos].PathName ;
        sTipo := Trim(MidStr ( dbName , Pos ('.' , dbName) + 1 , 3 )) ;
        IF sTipo = 'mdb' Then
        Begin
            connImport.Connected := False ;
            connImport.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + dbName + ';Persist Security Info=False' ;
            connImport.LoginPrompt := False;
            connImport.Connected := True ;
            Sql.Connection := ConnImport ;
            SqlSecundario.Connection := ConnImport ;
            ListTables := TStringList.Create;
            ConnImport.GetTableNames(ListTables, False);
            for IndexTables := 0 to (ListTables.Count - 1) do
            Begin
                If ListTables.Strings[IndexTables] = 'actividadesxorden' Then
                begin
                    // Inicia proceso de eliminacion ....
                    Sql.Active := False ;
                    Sql.SQL.Clear ;
                    Sql.SQL.Add('Select distinct sContrato, sNumeroOrden, sIdConvenio from actividadesxorden') ;
                    Sql.Open ;
                    While NOT Sql.Eof Do
                    begin
                        // actividadesxorden...
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from actividadesxorden where sContrato = :contrato and sNumeroOrden = :orden and sIdConvenio = :convenio') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('convenio').Value := Sql.FieldValues['sIdConvenio'] ;
                        connection.zCommand.ExecSQL ;
                        Sql.Next
                    end
                end ;
                If ListTables.Strings[IndexTables] = 'actividadesxanexo' Then
                begin
                    // Inicia proceso de eliminacion ....
                    Sql.Active := False ;
                    Sql.SQL.Clear ;
                    Sql.SQL.Add('Select distinct sContrato, sIdConvenio from actividadesxanexo') ;
                    Sql.Open ;
                    While NOT Sql.Eof Do
                    begin
                        // actividadesxorden...
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from actividadesxanexo where sContrato = :contrato and sIdConvenio = :convenio') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('convenio').Value := Sql.FieldValues['sIdConvenio'] ;
                        connection.zCommand.ExecSQL ;
                        Sql.Next
                    end
                end ;


                If ListTables.Strings[IndexTables] = 'reportediario' Then
                begin
                    // Inicia proceso de eliminacion ....
                    Sql.Active := False ;
                    Sql.SQL.Clear ;
                    Sql.SQL.Add('Select sContrato, sNumeroOrden, dIdFecha, sIdTurno, sNumeroReporte, sIdConvenio from reportediario') ;
                    Sql.Open ;
                    While NOT Sql.Eof Do
                    begin
                        // reportefotografico ...
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from reportefotografico where sContrato = :contrato and sNumeroReporte = :reporte') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('reporte').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('reporte').Value := Sql.FieldValues['sNumeroReporte'] ;
                        connection.zCommand.ExecSQL ;

                        // jornadasdiarias ...
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from jornadasdiarias where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sIdTurno = :turno') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        connection.zCommand.Params.ParamByName('turno').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        connection.zCommand.ExecSQL ;

                        // jornadasdiarias ...
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from tramitedepermisos where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sIdTurno = :turno') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        connection.zCommand.Params.ParamByName('turno').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        connection.zCommand.ExecSQL ;

                        // firmas ...
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from firmas where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        connection.zCommand.ExecSQL ;

                        // bitacoradepersonal ...
                        // Primero borro los enlaces a los registros actuales
                        SqlOriginal.Active := False ;
                        SqlOriginal.SQL.Clear ;
                        SqlOriginal.SQL.Add('select sContrato, dIdFecha, iIdDiario from bitacoradeactividades ' +
                                        'where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sIdTurno = :turno') ;
                        SqlOriginal.Params.ParamByName('contrato').DataType := ftString ;
                        SqlOriginal.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        SqlOriginal.Params.ParamByName('orden').DataType := ftString ;
                        SqlOriginal.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        SqlOriginal.Params.ParamByName('fecha').DataType := ftDate ;
                        SqlOriginal.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        SqlOriginal.Params.ParamByName('turno').DataType := ftString ;
                        SqlOriginal.Params.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        SqlOriginal.Open ;
                        While NOT SqlOriginal.Eof Do
                        begin
                            connection.zCommand.Active := False ;
                            connection.zCommand.SQL.Clear ;
                            connection.zCommand.SQL.Add ( 'delete from bitacoradepersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario') ;
                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                            connection.zCommand.Params.ParamByName('contrato').Value := SqlOriginal.FieldValues['sContrato'] ;
                            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                            connection.zCommand.Params.ParamByName('fecha').Value := SqlOriginal.FieldValues['dIdFecha'] ;
                            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger ;
                            connection.zCommand.Params.ParamByName('diario').Value := SqlOriginal.FieldValues['iIdDiario'] ;
                            connection.zCommand.ExecSQL ;

                            connection.zCommand.Active := False ;
                            connection.zCommand.SQL.Clear ;
                            connection.zCommand.SQL.Add ( 'delete from bitacoradeequipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario') ;
                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                            connection.zCommand.Params.ParamByName('contrato').Value := SqlOriginal.FieldValues['sContrato'] ;
                            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                            connection.zCommand.Params.ParamByName('fecha').Value := SqlOriginal.FieldValues['dIdFecha'] ;
                            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger ;
                            connection.zCommand.Params.ParamByName('diario').Value := SqlOriginal.FieldValues['iIdDiario'] ;
                            connection.zCommand.ExecSQL ;

                           // connection.zCommand.Active := False ;
                           // connection.zCommand.SQL.Clear ;
                           // connection.zCommand.SQL.Add ( 'delete from bitacoradeinventario where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario') ;
                           // connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                           // connection.zCommand.Params.ParamByName('contrato').Value := SqlOriginal.FieldValues['sContrato'] ;
                           // connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                           // connection.zCommand.Params.ParamByName('fecha').Value := SqlOriginal.FieldValues['dIdFecha'] ;
                          //  connection.zCommand.Params.ParamByName('diario').DataType := ftInteger ;
                          //  connection.zCommand.Params.ParamByName('diario').Value := SqlOriginal.FieldValues['iIdDiario'] ;
                          //  connection.zCommand.ExecSQL ;
                           SqlOriginal.Next
                        End ;

                        // bitacoradepersonal ...
                        // Ahora borro los enlaces a los registros que se insertan
                        SqlSecundario.Active := False ;
                        SqlSecundario.SQL.Clear ;
                        SqlSecundario.SQL.Add('select sContrato, dIdFecha, iIdDiario from bitacoradeactividades ' +
                                        'where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sIdTurno = :turno') ;
                        SqlSecundario.Parameters.ParamByName('contrato').DataType := ftString ;
                        SqlSecundario.Parameters.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        SqlSecundario.Parameters.ParamByName('orden').DataType := ftString ;
                        SqlSecundario.Parameters.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        SqlSecundario.Parameters.ParamByName('fecha').DataType := ftDate ;
                        SqlSecundario.Parameters.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        SqlSecundario.Parameters.ParamByName('turno').DataType := ftString ;
                        SqlSecundario.Parameters.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        SqlSecundario.Open ;
                        While NOT SqlSecundario.Eof Do
                        begin
                            connection.zCommand.Active := False ;
                            connection.zCommand.SQL.Clear ;
                            connection.zCommand.SQL.Add ( 'delete from bitacoradepersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario') ;
                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                            connection.zCommand.Params.ParamByName('contrato').Value := SqlSecundario.FieldValues['sContrato'] ;
                            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                            connection.zCommand.Params.ParamByName('fecha').Value := SqlSecundario.FieldValues['dIdFecha'] ;
                            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger ;
                            connection.zCommand.Params.ParamByName('diario').Value := SqlSecundario.FieldValues['iIdDiario'] ;
                            connection.zCommand.ExecSQL ;

                            connection.zCommand.Active := False ;
                            connection.zCommand.SQL.Clear ;
                            connection.zCommand.SQL.Add ( 'delete from bitacoradeequipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario') ;
                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                            connection.zCommand.Params.ParamByName('contrato').Value := SqlSecundario.FieldValues['sContrato'] ;
                            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                            connection.zCommand.Params.ParamByName('fecha').Value := SqlSecundario.FieldValues['dIdFecha'] ;
                            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger ;
                            connection.zCommand.Params.ParamByName('diario').Value := SqlSecundario.FieldValues['iIdDiario'] ;
                            connection.zCommand.ExecSQL ;

                          //  connection.zCommand.Active := False ;
                          //  connection.zCommand.SQL.Clear ;
                          //  connection.zCommand.SQL.Add ( 'delete from bitacoradeinventario where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario') ;
                          //  connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                          //  connection.zCommand.Params.ParamByName('contrato').Value := SqlSecundario.FieldValues['sContrato'] ;
                          //  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                          //  connection.zCommand.Params.ParamByName('fecha').Value := SqlSecundario.FieldValues['dIdFecha'] ;
                          //  connection.zCommand.Params.ParamByName('diario').DataType := ftInteger ;
                          //  connection.zCommand.Params.ParamByName('diario').Value := SqlSecundario.FieldValues['iIdDiario'] ;
                          //  connection.zCommand.ExecSQL ;
                            SqlSecundario.Next
                        End ;


                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from bitacoradeactividades where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sIdTurno = :turno') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        connection.zCommand.Params.ParamByName('turno').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        connection.zCommand.ExecSQL ;

                        // Primero de las referencias existentes
                        SqlOriginal.Active := False ;
                        SqlOriginal.SQL.Clear ;
                        SqlOriginal.SQL.Add('select sNumeroActividad, iFase from bitacoradealcances ' +
                                        'where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sIdTurno = :turno') ;
                        SqlOriginal.Params.ParamByName('contrato').DataType := ftString ;
                        SqlOriginal.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        SqlOriginal.Params.ParamByName('orden').DataType := ftString ;
                        SqlOriginal.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        SqlOriginal.Params.ParamByName('fecha').DataType := ftDate ;
                        SqlOriginal.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        SqlOriginal.Params.ParamByName('turno').DataType := ftString ;
                        SqlOriginal.Params.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        SqlOriginal.Open ;
                        While NOT SqlOriginal.Eof Do
                        begin
                            connection.zCommand.Active := False ;
                            connection.zCommand.SQL.Clear ;
                            connection.zCommand.SQL.Add ( 'delete from alcancesxactividad where sContrato = :contrato and sNumeroActividad = :Actividad and iFase = :Fase') ;
                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                            connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                            connection.zCommand.Params.ParamByName('Actividad').Value := SqlOriginal.FieldValues['sNumeroActividad'] ;
                            connection.zCommand.Params.ParamByName('Fase').DataType := ftInteger ;
                            connection.zCommand.Params.ParamByName('Fase').Value := SqlOriginal.FieldValues['iFase'] ;
                            connection.zCommand.ExecSQL ;
                            SqlOriginal.Next ;
                        End ;
                        // Ahora se insertan las referencias existentes ...

                        SqlSecundario.Active := False ;
                        SqlSecundario.SQL.Clear ;
                        SqlSecundario.SQL.Add('select sNumeroActividad, iFase from bitacoradealcances ' +
                                        'where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sIdTurno = :turno') ;
                        SqlSecundario.Parameters.ParamByName('contrato').DataType := ftString ;
                        SqlSecundario.Parameters.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        SqlSecundario.Parameters.ParamByName('orden').DataType := ftString ;
                        SqlSecundario.Parameters.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        SqlSecundario.Parameters.ParamByName('fecha').DataType := ftDate ;
                        SqlSecundario.Parameters.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        SqlSecundario.Parameters.ParamByName('turno').DataType := ftString ;
                        SqlSecundario.Parameters.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        SqlSecundario.Open ;
                        While NOT SqlSecundario.Eof Do
                        begin
                            connection.zCommand.Active := False ;
                            connection.zCommand.SQL.Clear ;
                            connection.zCommand.SQL.Add ( 'delete from alcancesxactividad where sContrato = :contrato and sNumeroActividad = :Actividad and iFase = :Fase') ;
                            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                            connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                            connection.zCommand.Params.ParamByName('Actividad').Value := SqlSecundario.FieldValues['sNumeroActividad'] ;
                            connection.zCommand.Params.ParamByName('Fase').DataType := ftInteger ;
                            connection.zCommand.Params.ParamByName('Fase').Value := SqlSecundario.FieldValues['iFase'] ;
                            connection.zCommand.ExecSQL ;
                            SqlSecundario.Next ;
                        End ;

                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from bitacoradealcances where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sIdTurno = :turno') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        connection.zCommand.Params.ParamByName('turno').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        connection.zCommand.ExecSQL ;

                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from bitacoradepaquetes where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        connection.zCommand.ExecSQL ;

                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from avancesglobalesxorden where sContrato = :contrato and dIdFecha = :fecha') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        connection.zCommand.ExecSQL ;

                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from reportediario where sContrato = :contrato and sNumeroOrden = :orden And dIdFecha = :Fecha And sIdTurno = :turno') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                        connection.zCommand.Params.ParamByName('fecha').Value := Sql.FieldValues['dIdFecha'] ;
                        connection.zCommand.Params.ParamByName('turno').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('turno').Value := Sql.FieldValues['sIdturno'] ;
                        connection.zCommand.ExecSQL ;

                        Sql.Next
                    end
                end ;

                If ListTables.Strings[IndexTables] = 'anexo_suministro' Then
                begin
                    // Inicia proceso de eliminacion ....
                    Sql.Active := False ;
                    Sql.SQL.Clear ;
                    Sql.SQL.Add('Select sContrato, iFolio from anexo_suministro') ;
                    Sql.Open ;
                    While NOT Sql.Eof Do
                    begin
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from anexo_psuministro where sContrato = :contrato and iFolio = :folio') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('folio').DataType := ftInteger ;
                        connection.zCommand.Params.ParamByName('folio').Value := Sql.FieldValues['iFolio'] ;
                        connection.zCommand.ExecSQL ;

                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from anexo_suministro where sContrato = :contrato and iFolio = :folio') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('folio').DataType := ftInteger ;
                        connection.zCommand.Params.ParamByName('folio').Value := Sql.FieldValues['iFolio'] ;
                        connection.zCommand.ExecSQL ;
                        Sql.Next
                    end
                end ;

                If ListTables.Strings[IndexTables] = 'estimaciones' Then
                begin
                    // Inicia proceso de eliminacion ....
                    Sql.Active := False ;
                    Sql.SQL.Clear ;
                    Sql.SQL.Add('Select sContrato, sNumeroOrden, sNumeroGenerador from estimaciones') ;
                    Sql.Open ;
                    While NOT Sql.Eof Do
                    begin
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from estimacionxpartida where sContrato = :contrato and sNumeroOrden = :orden and sNumeroGenerador = :generador') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('generador').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('generador').Value := Sql.FieldValues['sNumeroGenerador'] ;
                        connection.zCommand.ExecSQL ;

                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from estimacionxisometrico where sContrato = :contrato and sNumeroOrden = :orden and sNumeroGenerador = :generador') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('generador').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('generador').Value := Sql.FieldValues['sNumeroGenerador'] ;
                        connection.zCommand.ExecSQL ;

                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'delete from estimaciones where sContrato = :contrato and sNumeroOrden = :orden and sNumeroGenerador = :generador') ;
                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('contrato').Value := Sql.FieldValues['sContrato'] ;
                        connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('orden').Value := Sql.FieldValues['sNumeroOrden'] ;
                        connection.zCommand.Params.ParamByName('generador').DataType := ftString ;
                        connection.zCommand.Params.ParamByName('generador').Value := Sql.FieldValues['sNumeroGenerador'] ;
                        connection.zCommand.ExecSQL ;
                        Sql.Next
                    end ;
                end
            End ;

            for IndexTables := 0 to (ListTables.Count - 1) do
            Begin
                Sql.Active := False ;
                Sql.SQL.Clear ;
                Sql.SQL.Add('Select * from ' + ListTables.Strings[IndexTables]) ;
                Sql.Open ;
                procDelInsert (ListTables.Strings[IndexTables], Sql )
            End ;

            Sql.Active := False ;
            ListTables.Free;
            connImport.Connected := False ;
        End ;
        bAvance.Progress := iArchivos + 1;
    End ;
    fContenido.Refresh ;
    cursor := crDefault ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importar Reportes Diarios', 'Al ejecutar', 0);
    end;
  end;
end;

procedure TfrmImportarDiarios.Refresh1Click(Sender: TObject);
begin
    fDirectorio.Root := 'rfDesktop'  ;
end;

end.
