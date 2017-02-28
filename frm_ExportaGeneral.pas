unit frm_ExportaGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, StdCtrls, Buttons, frm_connection, DB,
  ADODB, DBCtrls, global, StrUtils, utilerias, DBTables, AccessXP,
  OleServer, ComObj, ZAbstractRODataset, ZDataset, sListView, acShellCtrls,
  sTreeView, unitexcepciones;

type
  TfrmExportaGeneral = class(TForm)
    pgExportar: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
//    fDirectorio: TShellTreeView;
//    fContenido: TShellListView;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    gpOrigen: TGroupBox;
    gReportes: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    tdFechaInicio: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    gEstimaciones: TGroupBox;
    tmResultados: TMemo;
    btnProceso: TBitBtn;
    bProceso: TProgressBar;
    chkReportes: TRadioButton;
    chkEstimaciones: TRadioButton;
    Label5: TLabel;
    tsDestino: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    tdFechaInicioEmb: TDateTimePicker;
    tdFechaFinalEmb: TDateTimePicker;
    chkEmbarques: TRadioButton;
    ConnExport: TADOConnection;
    cmdExport: TADOCommand;
    Label3: TLabel;
    Label8: TLabel;
    tdFechaInicioEst: TDateTimePicker;
    tdFechaFinalEst: TDateTimePicker;
    Sql: TZReadOnlyQuery;
    SqlAux: TZReadOnlyQuery;
    fDirectorio: TsShellTreeView;
    fContenido: TsShellListView;
    procedure FormShow(Sender: TObject);
    procedure chkReportesClick(Sender: TObject);
    procedure chkEstimacionesClick(Sender: TObject);
    procedure btnProcesoClick(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet3Enter(Sender: TObject);
    procedure tdFechaInicioEmbEnter(Sender: TObject);
    procedure tdFechaInicioEmbExit(Sender: TObject);
    procedure tdFechaFinalEmbEnter(Sender: TObject);
    procedure tdFechaFinalEmbExit(Sender: TObject);
    procedure tdFechaInicioEmbKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEmbKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioEstEnter(Sender: TObject);
    procedure tdFechaInicioEstExit(Sender: TObject);
    procedure tdFechaInicioEstKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEstEnter(Sender: TObject);
    procedure tdFechaFinalEstExit(Sender: TObject);
    procedure tdFechaFinalEstKeyPress(Sender: TObject; var Key: Char);
    procedure tmResultadosEnter(Sender: TObject);
    procedure tmResultadosExit(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tdFechaFinalEstChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExportaGeneral: TfrmExportaGeneral;
  iNumeroPagina : Integer ;
implementation

{$R *.dfm}

procedure TfrmExportaGeneral.FormShow(Sender: TObject);
begin
    tdFechaInicio.Date := Date ;
    tdFechaFinal.Date := Date ;
    tdFechaInicioEmb.Date := Date ;
    tdFechaFinalEmb.Date := Date ;
    tdFechaInicioEst.Date := Date ;
    tdFechaFinalEst.Date := Date ;
    pgExportar.ActivePageIndex := 0 ;
    fDirectorio.SetFocus 
end;

procedure TfrmExportaGeneral.chkReportesClick(Sender: TObject);
begin
    gReportes.Enabled := chkReportes.Checked ;
    gEstimaciones.Enabled := chkEstimaciones.Checked ;
end;



procedure TfrmExportaGeneral.chkEstimacionesClick(Sender: TObject);
begin
    gEstimaciones.Enabled := chkEstimaciones.Checked ;
    gReportes.Enabled := chkReportes.Checked ;
end;



procedure TfrmExportaGeneral.btnProcesoClick(Sender: TObject);
Var
   Registro      : Integer ;
   DataSource : string;
   sHost,
   dbName     : string;
   dBase      : OleVariant ;
   cs         : String ;
   sParametro : String ;
   lConPrograma : boolean ;
begin
 TRY
    tmResultados.Lines.Clear ;
    sHost := fDirectorio.Path  ;

    If chkEmbarques.Checked = True Then
    Begin
        bProceso.Min := 0 ;
        bProceso.Position := 0 ;
        bProceso.Max := 4 ;

        dbName := sHost + global_contrato + ' Recepcion de Materiales del ' + DateToStr(tdFechaInicioEmb.Date) + ' al ' + DateToStr(tdFechaFinalEmb.Date) + '.mdb';
        dbName := AnsiReplaceText ( dbName , '/' , '-' ) ;
        If FileExists(dbName) Then
            DeleteFile(dbName);
        Try
            dBase := CreateOleObject('ADOX.Catalog') ;
            dBase.Create ('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + dbName + ';');
            dBase := Null ;

            connExport.Connected := False ;
            connExport.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + dbName + ';Persist Security Info=False' ;
            connExport.LoginPrompt := False;
            connExport.Connected := True ;
            cmdExport.Connection := ConnExport ;

            tmResultados.Lines.Add('Base de Datos ' + dbName + ' creada con exito !!') ;
        except
            MessageDlg('No se pudo crear la base de datos ' + dbName , mtWarning, [mbOk], 0);
        end ;
        bProceso.Position := bProceso.Position + 1 ;

        // Creacion de Estructuras
        //1. anexo suministro
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From anexo_suministro Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'anexo_suministro') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << anexo_suministro >> creada con exito !!') ;

        //2. anexo psuministro
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From anexo_psuministro Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'anexo_psuministro') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << anexo_psuministro >> creada con exito !!') ;
        bProceso.Position := bProceso.Position + 1 ;


        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From anexo_suministro Where sContrato = :Contrato And dIdFecha >= :FechaI And dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'anexo_suministro') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << anexo_suministro >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select a2.* From anexo_suministro a inner join anexo_psuministro a2 on (a.sContrato = a2.sContrato and a.iFolio = a2.iFolio) ' +
                    'Where a.sContrato = :Contrato And a.dIdFecha >= :FechaI And a.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'anexo_psuministro') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << anexo_psuministro >> adicionada con exito !!') ;
        tmResultados.Lines.Add('¡Proceso Terminado con Exito!') ;
        Sql.Active := False ;
        connExport.Connected := False ;
        MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
    End ;

    If chkReportes.Checked = True Then
    Begin
        bProceso.Min := 0 ;
        bProceso.Position := 0 ;
        bProceso.Max := 19 ;

        dbName := sHost + global_contrato + ' Reportes Diarios del ' + DateToStr(tdFechaInicio.Date) + ' al ' + DateToStr(tdFechaFinal.Date) + '.mdb';
        dbName := AnsiReplaceText ( dbName , '/' , '-' ) ;
        If FileExists(dbName) Then
            DeleteFile(dbName);
        Try
            dBase := CreateOleObject('ADOX.Catalog') ;
            dBase.Create ('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + dbName + ';');
            dBase := Null ;

            connExport.Connected := False ;
            connExport.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + dbName + ';Persist Security Info=False' ;
            connExport.LoginPrompt := False;
            connExport.Connected := True ;
            cmdExport.Connection := ConnExport ;

            tmResultados.Lines.Add('Base de Datos ' + dbName + ' creada con exito !!') ;
        except
            MessageDlg('No se pudo crear la base de datos ' + dbName , mtWarning, [mbOk], 0);
        end ;
        bProceso.Position := bProceso.Position + 1 ;

        lConPrograma := False ;
        If MessageDlg('Desea Incluir los Programas de Trabajo del convenio seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
            Sql.Active := False ;
            Sql.SQL.Clear ;
            Sql.SQL.Add('Select * From actividadesxorden Where sContrato = "XXXX"' ) ;
            Sql.Open ;
            cs := funcCreateStruct(Sql , 'actividadesxorden') ;  ;
            cmdExport.CommandText := cs;
            cmdExport.Execute;
            tmResultados.Lines.Add('tabla << programa de trabajo >> creada con exito !!') ;
            lConPrograma := True ;
        End ;

        //Creacion de Estructuras .....
        //1. Reporte Diario ...
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From reportediario Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'reportediario') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << reporte diario >> creada con exito !!') ;

        //2. Jornadas Diarias
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From jornadasdiarias Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'jornadasdiarias') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << jornadasdiarias >> creada con exito !!') ;

        //3. Firmantes ...
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From firmas Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'firmas') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << firmas >> creada con exito !!') ;

        //4. BitacoradeActividades
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From bitacoradeactividades Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'bitacoradeactividades') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << bitacoradeactividades >> creada con exito !!') ;

        //5. Jornadas Diarias
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From bitacoradealcances Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'bitacoradealcances') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << bitacoradealcances >> creada con exito !!') ;

        //6. Reporte Fotografico
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From reportefotografico Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'reportefotografico') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << reportefotografico >> creada con exito !!') ;

        //7. Bitacora de Personal
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From bitacoradepersonal Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'bitacoradepersonal') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << bitacoradepersonal >> creada con exito !!') ;

        //8. Bitacora de Equipos
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From bitacoradeequipos Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'bitacoradeequipos') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << bitacoradeequipos >> creada con exito !!') ;

        //9. Bitacora de Inventario
//        Sql.Active := False ;
//        Sql.SQL.Clear ;
//        Sql.SQL.Add('Select * From bitacoradeinventario Where sContrato = "XXXX"' ) ;
//        Sql.Open ;
//        cs := funcCreateStruct(Sql , 'bitacoradeinventario') ;  ;
//        cmdExport.CommandText := cs;
//        cmdExport.Execute;
//        tmResultados.Lines.Add('tabla << bitacoradeinventario >> creada con exito !!') ;

        //10. embarcaciones
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From embarcaciones Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'embarcaciones') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << embarcaciones >> creada con exito !!') ;

        //11. plataformas
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From plataformas Where sIdPlataforma = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'plataformas') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << plataformas >> creada con exito !!') ;

        //12. pernoctan
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From pernoctan Where sIdPernocta = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'pernoctan') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << pernoctan >> creada con exito !!') ;

        //13. tiposdemovimento
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From tiposdemovimiento Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'tiposdemovimiento') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << tiposdemovimiento >> creada con exito !!') ;

        //14. BitacoradePaquetes
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From bitacoradepaquetes Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'bitacoradepaquetes') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << bitacoradepaquetes >> creada con exito !!') ;

        //15. AvancesGlobalesxOrden
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From avancesglobalesxorden Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'avancesglobalesxorden') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << avancesglobalesxorden >> creada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From alcancesxactividad Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'alcancesxactividad') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << alcancesxactividad >> creada con exito !!') ;

        //16. anexo suministro
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From anexo_suministro Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'anexo_suministro') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << anexo_suministro >> creada con exito !!') ;

        //17. anexo psuministro
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From anexo_psuministro Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'anexo_psuministro') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << anexo_psuministro >> creada con exito !!') ;
        bProceso.Position := bProceso.Position + 1 ;

        If lConPrograma Then
        Begin
            SqlAux.Active := False ;
            SqlAux.SQL.Clear ;
            SqlAux.SQL.Add('Select distinct sContrato, sNumeroOrden, sIdConvenio From reportediario Where sContrato = :Contrato And dIdFecha >= :FechaI And dIdFecha <= :FechaF' ) ;
            SqlAux.Params.ParamByName('Contrato').DataType := ftString ;
            SqlAux.Params.ParamByName('Contrato').Value := global_contrato ;
            SqlAux.Params.ParamByName('FechaI').DataType := ftDate ;
            SqlAux.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
            SqlAux.Params.ParamByName('FechaF').DataType := ftDate ;
            SqlAux.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            SqlAux.Open ;
            While NOT SqlAux.Eof Do
            Begin
                Sql.Active := False ;
                Sql.SQL.Clear ;
                Sql.SQL.Add('Select * From actividadesxorden Where sContrato = :Contrato And sIdConvenio = :convenio and sNumeroOrden = :orden order by iItemOrden' ) ;
                Sql.Params.ParamByName('Contrato').DataType := ftString ;
                Sql.Params.ParamByName('Contrato').Value := SqlAux.FieldValues['sContrato'] ;
                Sql.Params.ParamByName('orden').DataType := ftString ;
                Sql.Params.ParamByName('orden').Value := SqlAux.FieldValues['sNumeroOrden'] ;
                Sql.Params.ParamByName('convenio').DataType := ftString ;
                Sql.Params.ParamByName('convenio').Value := SqlAux.FieldValues['sIdConvenio'] ;
                Sql.Open ;
                While NOT Sql.Eof Do
                Begin
                    cmdExport.commandtext := funcsql(Sql , 'actividadesxorden') ;
                    for registro := 0 to Sql.fieldcount - 1 do
                    begin
                       sparametro := 'param' + trim(inttostr(registro + 1)) ;
                       cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
                       cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
                    end ;
                    cmdExport.execute ;
                    Sql.Next
                End ;
                SqlAux.Next
            End
        End ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From reportediario Where sContrato = :Contrato And dIdFecha >= :FechaI And dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'reportediario') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << reporte diario >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select j.* From reportediario r ' +
                    'inner join jornadasdiarias j on (r.sContrato = j.sContrato and r.sNumeroOrden = j.sNumeroOrden and r.sIdTurno = j.sIdTurno And r.dIdFecha = j.dIdFecha) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'jornadasdiarias') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << jornadasdiarias >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select f.* From reportediario r ' +
                    'inner join firmas f on (r.sContrato = f.sContrato and r.sNumeroOrden = f.sNumeroOrden And r.dIdFecha = f.dIdFecha) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'firmas') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << firmas >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select b.* From reportediario r ' +
                    'inner join bitacoradeactividades b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'bitacoradeactividades') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << bitacoradeactividades >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select b.* From reportediario r ' +
                    'inner join bitacoradealcances b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'bitacoradealcances') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << bitacoradealcances >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select rf.* From reportediario r inner join reportefotografico rf on (r.sContrato = rf.sContrato and r.sNumeroReporte = rf.sNumeroReporte) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'reportefotografico') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << reportefotografico >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select bp.* From reportediario r ' +
                    'inner join bitacoradeactividades b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
                    'inner join bitacoradepersonal bp on (bp.sContrato = b.sContrato and bp.dIdFecha = b.dIdFecha and bp.iIdDiario = b.iIdDiario) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'bitacoradepersonal') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << bitacoradepersonal >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select be.* From reportediario r ' +
                    'inner join bitacoradeactividades b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
                    'inner join bitacoradeequipos be on (be.sContrato = b.sContrato and be.dIdFecha = b.dIdFecha and be.iIdDiario = b.iIdDiario) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'bitacoradeequipos') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << bitacoradeequipos >> adicionada con exito !!') ;

//        Sql.Active := False ;
//        Sql.SQL.Clear ;
//        Sql.SQL.Add('Select bi.* From reportediario r ' +
//                    'inner join bitacoradeactividades b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
//                    'inner join bitacoradeinventario bi on (bi.sContrato = b.sContrato and bi.dIdFecha = b.dIdFecha and bi.iIdDiario = b.iIdDiario) ' +
//                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
//        Sql.Params.ParamByName('Contrato').DataType := ftString ;
//        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
//        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
//        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
//        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
//        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
//        Sql.Open ;
//        While NOT Sql.Eof Do
//        Begin
//            cmdExport.commandtext := funcsql(Sql , 'bitacoradeinventario') ;
//            for registro := 0 to Sql.fieldcount - 1 do
//            begin
//               sparametro := 'param' + trim(inttostr(registro + 1)) ;
//               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
//               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
//            end ;
//            cmdExport.execute ;
//            Sql.Next
//        End ;
//        bProceso.Position := bProceso.Position + 1 ;
//        tmResultados.Lines.Add('registros de la tabla << bitacoradeinventario >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select distinct e.* From reportediario r ' +
                    'inner join jornadasdiarias j on (r.sContrato = j.sContrato and r.sNumeroOrden = j.sNumeroOrden and r.sIdTurno = j.sIdTurno And r.dIdFecha = j.dIdFecha) ' +
                    'inner join embarcaciones e on (j.sContrato = e.sContrato and j.sIdEmbarcacion = e.sIdEmbarcacion) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'embarcaciones') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << embarcaciones >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select distinct p.* From reportediario r ' +
                    'inner join bitacoradeactividades b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
                    'inner join bitacoradepersonal bp on (bp.sContrato = b.sContrato and bp.iIdDiario = b.iIdDiario) ' +
                    'inner join plataformas p on (bp.sIdPlataforma = p.sIdPlataforma) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'plataformas') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << plataformas >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select distinct p.* From reportediario r ' +
                    'inner join bitacoradeactividades b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
                    'inner join bitacoradepersonal bp on (bp.sContrato = b.sContrato and bp.iIdDiario = b.iIdDiario) ' +
                    'inner join pernoctan p on (bp.sIdPernocta = p.sIdPernocta) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'pernoctan') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << pernoctan >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select distinct t.* From reportediario r ' +
                    'inner join bitacoradeactividades b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
                    'inner join tiposdemovimiento t on (b.sContrato = t.sContrato and b.sIdTipoMovimiento = t.sIdTipoMovimiento) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'tiposdemovimiento') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << tiposdemovimiento >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
//        Sql.SQL.Add('Select b.* From reportediario r ' +
//                    'inner join bitacoradepaquetes b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdConvenio = b.sIdConvenio And r.dIdFecha = b.dIdFecha) ' +
//                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.SQL.Add('Select b.* From reportediario r ' +
                    'inner join bitacoradepaquetes b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;

        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'bitacoradepaquetes') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << bitacoradepaquetes >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select distinct a.* From reportediario r ' +
                    'inner join avancesglobalesxorden a on (a.sContrato = r.sContrato and a.sIdConvenio = r.sIdConvenio and a.dIdFecha = r.dIdfecha) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;


        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'avancesglobalesxorden') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << avancesglobalesxorden >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select distinct a.* From reportediario r ' +
                    'inner join bitacoradealcances b on (r.sContrato = b.sContrato and r.sNumeroOrden = b.sNumeroOrden and r.sIdTurno = b.sIdTurno And r.dIdFecha = b.dIdFecha) ' +
                    'inner join alcancesxactividad a on (b.sContrato = a.sContrato and b.sNumeroActividad = a.sNumeroActividad and b.iFase = a.iFase) ' +
                    'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'alcancesxactividad') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << alcancesxactividad >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From anexo_suministro Where sContrato = :Contrato And dIdFecha >= :FechaI And dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'anexo_suministro') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << anexo_suministro >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select a2.* From anexo_suministro a inner join anexo_psuministro a2 on (a.sContrato = a2.sContrato and a.iFolio = a2.iFolio) ' +
                    'Where a.sContrato = :Contrato And a.dIdFecha >= :FechaI And a.dIdFecha <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'anexo_psuministro') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << anexo_psuministro >> adicionada con exito !!') ;
        tmResultados.Lines.Add('¡Proceso Terminado con Exito!') ;
        Sql.Active := False ;
        connExport.Connected := False ;
        MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
    End ;

    If ChkEstimaciones.Checked = True Then
    Begin
        bProceso.Min := 0 ;
        bProceso.Position := 0 ;
        bProceso.Max := 5 ;

        dbName := sHost + global_contrato + ' Generadores del ' + DateToStr(tdFechaInicioEst.Date) + ' al ' + DateToStr(tdFechaFinalEst.Date) + '.mdb';
        dbName := AnsiReplaceText ( dbName , '/' , '-' ) ;
        If FileExists(dbName) Then
            DeleteFile(dbName);
        Try
            dBase := CreateOleObject('ADOX.Catalog') ;
            dBase.Create ('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + dbName + ';');
            dBase := Null ;

            connExport.Connected := False ;
            connExport.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + dbName + ';Persist Security Info=False' ;
            connExport.LoginPrompt := False;
            connExport.Connected := True ;
            cmdExport.Connection := ConnExport ;

            tmResultados.Lines.Add('Base de Datos ' + dbName + ' creada con exito !!') ;
        except
            MessageDlg('No se pudo crear la base de datos ' + dbName , mtWarning, [mbOk], 0);
        end ;
        bProceso.Position := bProceso.Position + 1 ;

        //3. estimacionperiodo
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From estimacionperiodo Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'estimacionperiodo') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << estimacionperiodo >> creada con exito !!') ;

        //2. actividadesxnexo
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From estimaciones Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'estimaciones') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << estimaciones >> creada con exito !!') ;

        //2. estimacionxperiodo
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From estimacionxpartida Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'estimacionxpartida') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << estimacionxpartida >> creada con exito !!') ;

        //2. estimacionxperiodo
        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From estimacionxisometrico Where sContrato = "XXXX"' ) ;
        Sql.Open ;
        cs := funcCreateStruct(Sql , 'estimacionxisometrico') ;  ;
        cmdExport.CommandText := cs;
        cmdExport.Execute;
        tmResultados.Lines.Add('tabla << estimacionxisometrico >> creada con exito !!') ;
        bProceso.Position := bProceso.Position + 1 ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From estimacionperiodo Where sContrato = :Contrato And dFechaFinal >= :FechaI And dFechaFinal <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicioEst.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinalEst.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'estimacionperiodo') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << estimacionperiodo >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select * From estimaciones Where sContrato = :Contrato And dFechaFinal >= :FechaI And dFechaFinal <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicioEst.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinalEst.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'estimaciones') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << estimaciones >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select e1.* From estimaciones e ' +
                    'inner join estimacionxpartida e1 on (e1.sContrato = e.sContrato and e1.sNumeroOrden = e.sNumeroOrden And e1.sNumeroGenerador = e.sNumeroGenerador) ' +
                    'Where e.sContrato = :Contrato And e.dFechaFinal >= :FechaI And e.dFechaFinal <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicioEst.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinalEst.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'estimacionxpartida') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << estimacionxpartida >> adicionada con exito !!') ;

        Sql.Active := False ;
        Sql.SQL.Clear ;
        Sql.SQL.Add('Select e1.* From estimaciones e ' +
                    'inner join estimacionxisometrico e1 on (e1.sContrato = e.sContrato and e1.sNumeroOrden = e.sNumeroOrden And e1.sNumeroGenerador = e.sNumeroGenerador) ' +
                    'Where e.sContrato = :Contrato And e.dFechaFinal >= :FechaI And e.dFechaFinal <= :FechaF' ) ;
        Sql.Params.ParamByName('Contrato').DataType := ftString ;
        Sql.Params.ParamByName('Contrato').Value := global_contrato ;
        Sql.Params.ParamByName('FechaI').DataType := ftDate ;
        Sql.Params.ParamByName('FechaI').Value := tdFechaInicioEst.Date ;
        Sql.Params.ParamByName('FechaF').DataType := ftDate ;
        Sql.Params.ParamByName('FechaF').Value := tdFechaFinalEst.Date ;
        Sql.Open ;
        While NOT Sql.Eof Do
        Begin
            cmdExport.commandtext := funcsql(Sql , 'estimacionxisometrico') ;
            for registro := 0 to Sql.fieldcount - 1 do
            begin
               sparametro := 'param' + trim(inttostr(registro + 1)) ;
               cmdExport.parameters.parambyname(sparametro).datatype := Sql.fields[registro].datatype ;
               cmdExport.parameters.parambyname(sparametro).value := Sql.fields[registro].value ;
            end ;
            cmdExport.execute ;
            Sql.Next
        End ;
        bProceso.Position := bProceso.Position + 1 ;
        tmResultados.Lines.Add('registros de la tabla << estimacionxisometrico >> adicionada con exito !!') ;
        Sql.Active := False ;
        connExport.Connected := False ;
        MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
    End ;
 EXCEPT
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'EXPORTACION DE REPORTES DIARIOS/GENERADORES', 'Al iniciar proceso', 0);
end;
 END;
end;

procedure TfrmExportaGeneral.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entrada
end;

procedure TfrmExportaGeneral.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salida
end;

procedure TfrmExportaGeneral.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entrada
end;

procedure TfrmExportaGeneral.tdFechaFinalExit(Sender: TObject);
begin
  if tdFechaFinal.Date<tdFechaInicio.Date then
    begin
      showmessage('La fecha final es menor a la fecha inicial');
      tdFechaFinal.SetFocus;
      exit;
    end;
  tdFechaFinal.Color := global_color_salida;
end;

procedure TfrmExportaGeneral.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinal.SetFocus 
end;

procedure TfrmExportaGeneral.tmResultadosEnter(Sender: TObject);
begin
  tmresultados.Color:= global_color_entrada;
end;

procedure TfrmExportaGeneral.tmResultadosExit(Sender: TObject);
begin
  tmresultados.Color:=global_color_salida;
end;

procedure TfrmExportaGeneral.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaInicio.SetFocus
end;

procedure TfrmExportaGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree ;
end;

procedure TfrmExportaGeneral.TabSheet3Enter(Sender: TObject);
begin
    tsDestino.Caption := fDirectorio.Path ;
end;

procedure TfrmExportaGeneral.tdFechaInicioEmbEnter(Sender: TObject);
begin
    tdFechaInicioEmb.Color := global_color_Entrada
end;

procedure TfrmExportaGeneral.tdFechaInicioEmbExit(Sender: TObject);
begin
    tdFechaInicioEmb.Color := global_color_salida
end;

procedure TfrmExportaGeneral.tdFechaFinalChange(Sender: TObject);
begin
//  tdFechaFinal.Date:=tdFechainicio.Date;
end;

procedure TfrmExportaGeneral.tdFechaFinalEmbEnter(Sender: TObject);
begin
    tdFechaFinalEmb.Color := global_color_Entrada
end;

procedure TfrmExportaGeneral.tdFechaFinalEmbExit(Sender: TObject);
begin
if tdFechaFinalEmb.Date<tdFechaInicioEmb.Date then
    begin
      showmessage('La fecha final es menor a la fecha inicial');
      tdFechaFinalEmb.SetFocus;
      exit;
    end;
  tdFechaFinalEmb.Color := global_color_salida
end;

procedure TfrmExportaGeneral.tdFechaInicioEmbKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinalEmb.SetFocus
end;

procedure TfrmExportaGeneral.tdFechaFinalEmbKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaInicioEmb.SetFocus

end;

procedure TfrmExportaGeneral.tdFechaInicioEstEnter(Sender: TObject);
begin
    tdFechaInicioEst.Color := global_color_entrada
end;

procedure TfrmExportaGeneral.tdFechaInicioEstExit(Sender: TObject);
begin
    tdFechaInicioEst.Color := global_color_salida
end;

procedure TfrmExportaGeneral.tdFechaInicioEstKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechafinalEst.SetFocus
end;

procedure TfrmExportaGeneral.tdFechaFinalEstChange(Sender: TObject);
begin
//  tdFechaFinalest.MinDate:=tdFechainicioest.Date;
end;

procedure TfrmExportaGeneral.tdFechaFinalEstEnter(Sender: TObject);
begin
    tdFechaFinalEst.Color := global_color_entrada
end;

procedure TfrmExportaGeneral.tdFechaFinalEstExit(Sender: TObject);
begin
  if tdFechaFinalEst.Date<tdFechaInicioEst.Date then
    begin
      showmessage('La fecha final es menor a la fecha inicial');
      tdFechaFinalEst.SetFocus;
      exit;
    end;
  tdFechaFinalEst.Color := global_color_salida
end;

procedure TfrmExportaGeneral.tdFechaFinalEstKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaInicioEst.SetFocus 
end;

end.
