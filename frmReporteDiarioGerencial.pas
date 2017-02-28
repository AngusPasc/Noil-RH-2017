unit frmReporteDiarioGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, frm_barra, Grids, DBGrids, ComCtrls, ImgList, frm_connection,
  DB, RXDBCtrl, global, Newpanel, Buttons, RxMemDS, frxClass,
  frxDBSet, utilerias, DateUtils, DBCtrls, ZAbstractRODataset, ZDataset,
  sSkinProvider, UnitExcepciones, UFunctionsGHH;

type
  TfrmReporteGerencial = class(TForm)
    Panel: TImageList;
    gbGerencial: tNewGroupBox;
    Label7: TLabel;
    tdIdFecha: TDateTimePicker;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnPrinter: TBitBtn;
    dsPermisos: TfrxDBDataset;
    rxNotas: TRxMemoryData;
    StringField3: TStringField;
    StringField4: TStringField;
    rxNotassDescripcion: TStringField;
    MemoField1: TMemoField;
    dsNotas: TfrxDBDataset;
    dsEmbarque: TfrxDBDataset;
    rxEmbarque: TRxMemoryData;
    StringField5: TStringField;
    rxEmbarqueiFolio: TIntegerField;
    rxEmbarquesReferencia: TStringField;
    rxEmbarquedFechaAviso: TDateField;
    rxEmbarquesNumeroOrden: TStringField;
    MemoField2: TMemoField;
    dsGerencial: TfrxDBDataset;
    dsTiemposMuertos: TfrxDBDataset;
    dsPersonalPernocta: TfrxDBDataset;
    dsPersonalPlataforma: TfrxDBDataset;
    rFotografico: TfrxDBDataset;
    rxReporteFotografico: TRxMemoryData;
    rxReporteFotograficosContrato: TStringField;
    rxReporteFotograficosNumeroReporte: TStringField;
    rxReporteFotograficoiImagen: TIntegerField;
    rxReporteFotograficobImagen: TBlobField;
    rxReporteFotograficobImagen2: TBlobField;
    rxReporteFotograficosDescripcion: TMemoField;
    rxReporteFotograficosDescripcion2: TMemoField;
    rxReporteFotograficosDescripcionCorta: TStringField;
    rxReporteFotograficosNumeroOrden: TStringField;
    rxReporteFotograficodIdFecha: TDateField;
    rxPlataforma: TRxMemoryData;
    rxPlataformaiItem: TIntegerField;
    rxPlataformasTitulo: TStringField;
    rxPlataformasCantidad: TStringField;
    rxPernocta: TRxMemoryData;
    rxPernoctaiItem: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    rxPermisos: TRxMemoryData;
    rxPermisossContrato: TStringField;
    rxPermisosdIdFecha: TDateField;
    rxPermisossNumeroOrden: TStringField;
    rxPermisossDescripcion: TStringField;
    rxPermisossFolios: TMemoField;
    btnNew: TBitBtn;
    btnEdit: TBitBtn;
    rxGraficaProgramado: TRxMemoryData;
    StringField16: TStringField;
    rxGraficaProgramadodFecha: TDateField;
    FloatField4: TFloatField;
    rxGraficaProgramadodReal: TFloatField;
    dsProgramado: TfrxDBDataset;
    rxPlaticas: TRxMemoryData;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    dsPlaticas: TfrxDBDataset;
    rxGraficaProgramadodProgramadoDiario: TFloatField;
    rxGraficaProgramadodRealDiario: TFloatField;
    Label5: TLabel;
    tsNumeroOrden2: TDBLookupComboBox;
    ds_ordenesdetrabajo: TDataSource;
    frxGerencial: TfrxReport;
    rxAvancesFisicos: TRxMemoryData;
    StringField9: TStringField;
    rxAvancesFisicossNumeroOrden: TStringField;
    rxAvancesFisicosdAvanceAnterior: TFloatField;
    rxAvancesFisicosdAvance: TFloatField;
    rxAvancesFisicosdAvanceAcumulado: TFloatField;
    rxAvancesFisicosdAvanceProgramadoAnterior: TFloatField;
    rxAvancesFisicosdAvanceProgramado: TFloatField;
    rxAvancesFisicosdAvanceProgramadoAcumulado: TFloatField;
    dsAvancesFisicos: TfrxDBDataset;
    QryTiemposMuertos: TZReadOnlyQuery;
    QryReporteFotografico: TZReadOnlyQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    QryPersonalPlataforma: TZReadOnlyQuery;
    QryPersonalPernocta: TZReadOnlyQuery;
    qryGerencial: TZReadOnlyQuery;
    sSkinProvider1: TsSkinProvider;
    gpProblematica: TGroupBox;
    tmProblematica: TMemo;
    gpActividades: TGroupBox;
    tmActividades: TMemo;
    PanelPrincipal: TListView;
    procedure PanelPrincipalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxGerencialGetValue(const VarName: String;
      var Value: Variant);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrden2Enter(Sender: TObject);
    procedure tsNumeroOrden2Exit(Sender: TObject);
    procedure tsNumeroOrden2KeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure ordenesdetrabajoAfterScroll(DataSet: TDataSet);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReporteGerencial: TfrmReporteGerencial;
  lExiste            : Boolean ;
  sContrato, sPernocta, sPlataforma : String ;
  sFechaInicio : String ;
  sConvenioInicio, sConvenioFinal, sActa, sNuevoInicio, sNuevoFinal : String ;
  StringPuesto: TStrings;
  StringNombre: TStrings;
  sPoliza, sFianza : String ;

implementation

{$R *.dfm}


procedure TfrmReporteGerencial.PanelPrincipalClick(Sender: TObject);
begin
    If PanelPrincipal.ItemIndex = 0 Then
    Begin
        gpActividades.Visible := True ;
        gpProblematica.Visible := False ;
        tmActividades.SetFocus
    End ;

    If PanelPrincipal.ItemIndex = 1 Then
    Begin
        gpActividades.Visible := False ;
        gpProblematica.Visible := True ;
        tmProblematica.SetFocus
    End ;
end;

procedure TfrmReporteGerencial.FormShow(Sender: TObject);
begin
    sMenuP:=stMenu;
    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
    Ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
    Ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
    OrdenesdeTrabajo.Open ;
    If OrdenesdeTrabajo.RecordCount > 0 Then
        tsNumeroOrden2.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;

    tdIdFecha.Date := Date ;
    tmActividades.ReadOnly := True ;
    tmProblematica.ReadOnly := True ;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select mActividades, mProblematica From reportegerencial Where sContrato = :contrato And dIdFecha = :Fecha') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
    Begin
        tmActividades.Text := Connection.qryBusca.FieldValues['mActividades'] ;
        tmProblematica.Text := Connection.qryBusca.FieldValues['mProblematica'] ;
        btnNew.Enabled := False ;
        btnEdit.Enabled := True ;
        btnSave.Enabled := False ;
        btnCancel.Enabled := False ;
        btnPrinter.Enabled := True ;
    End
    Else
    Begin
        btnNew.Enabled := True ;
        btnEdit.Enabled := False ;
        btnSave.Enabled := False ;
        btnCancel.Enabled := False ;
        btnPrinter.Enabled := False ;
        tmActividades.Text := '' ;
        tmProblematica.Text := '' ;
    End ;
    tsNumeroOrden2.SetFocus 
end;

procedure TfrmReporteGerencial.tdIdFechaChange(Sender: TObject);
begin
  try
    tmActividades.ReadOnly := True ;
    tmProblematica.ReadOnly := True ;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select mActividades, mProblematica From reportegerencial Where sContrato = :contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden2.Text ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
    Begin
        tmActividades.Text := Connection.qryBusca.FieldValues['mActividades'] ;
        tmProblematica.Text := Connection.qryBusca.FieldValues['mProblematica'] ;
        btnNew.Enabled := False ;
        btnEdit.Enabled := True ;
        btnSave.Enabled := False ;
        btnCancel.Enabled := False ;
        btnPrinter.Enabled := True ;
    End
    Else
    Begin
        btnNew.Enabled := True ;
        btnEdit.Enabled := False ;
        btnSave.Enabled := False ;
        btnCancel.Enabled := False ;
        btnPrinter.Enabled := False ;
        tmActividades.Text := '' ;
        tmProblematica.Text := '' ;
    End ;
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte Diario Gerencial', 'Al seleccionar fecha', 0);
        end;
    end;
end;

procedure TfrmReporteGerencial.btnSaveClick(Sender: TObject);
begin
    If not lExiste Then
    Begin
        try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'INSERT INTO reportegerencial (sContrato , dIdFecha, sNumeroOrden, mActividades, mProblematica)' +
                                          'VALUES (:Contrato, :Fecha, :Orden, :Actividades, :Problematica)') ;
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date  ;
            connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
            connection.zCommand.Params.ParamByName('orden').value := tsNumeroOrden2.Text ;
            connection.zCommand.Params.ParamByName('Actividades').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Actividades').value := tmActividades.Text ;
            connection.zCommand.Params.ParamByName('Problematica').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Problematica').value := tmProblematica.Text ;
            connection.zCommand.ExecSQL ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte Diario Gerencial', 'Al salvar nuevo registro', 0);
            end;
        end;
    End
    Else
    Begin
        try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'UPDATE reportegerencial SET mActividades = :Actividades, mProblematica = :Problematica ' +
                                          'where sContrato = :contrato And dIdFecha = :fecha And sNumeroOrden = :Orden') ;
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date  ;
            connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
            connection.zCommand.Params.ParamByName('orden').value := tsNumeroOrden2.Text ;
            connection.zCommand.Params.ParamByName('Actividades').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Actividades').value := tmActividades.Text ;
            connection.zCommand.Params.ParamByName('Problematica').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Problematica').value := tmProblematica.Text ;
            connection.zCommand.ExecSQL ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte Diario Gerencial', 'Al salvar cambios en registro', 0);
            end;
        end;
    End ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := True ;
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    btnPrinter.Enabled := True ;
    tmProblematica.ReadOnly := True ;
    tmActividades.ReadOnly := True
end;

procedure TfrmReporteGerencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := caFree ;
end;

procedure TfrmReporteGerencial.btnPrinterClick(Sender: TObject);
Var
  iImagenNew : Byte ;
  item,
  Elemento   : Byte ;
  lContinua  : Boolean ;

  sOrden     : String ;
  dTotal     : Integer ;
  sTitulo    : String ;
  sTexto     : String ;
  sConvenio  : String ;
  sFecha     : String ;

  sPernocta   : Array [1..10] Of String ;
  sPlataforma : Array [1..10] Of String ;
  iPernocta   : Array [1..10] Of Byte ;
  iPlataforma : Array [1..10] Of Byte ;

  dAvanceAnterior,
  dProgramadoAnterior : Real ;
begin
try
  sPoliza := '' ;
  sFianza := '' ;

  For Elemento := 1 To 10 Do
  Begin
      sPernocta   [Elemento] := '' ;
      sPlataforma [Elemento] := '' ;
      iPernocta   [Elemento] := 0 ;
      iPlataforma [Elemento] := 0 ;
  End ;
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select sIdConvenio From reportediario Where sContrato = :Contrato And dIdFecha = :Fecha') ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
  Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
  Connection.qryBusca.Open ;
  If Connection.qryBusca.RecordCount > 0 Then
     sConvenio := Connection.qryBusca.FieldValues['sIdConvenio'] 
  Else
     If MessageDlg('No se encontro reporte diario en la fecha seleccionada, desea que los datos impresos sean referenciados al convenio/acta circunstanciada seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         sConvenio := global_convenio
     Else
         sConvenio := '' ;


  StringNombre := TStringList.Create;
  StringNombre.Clear ;
  StringPuesto := TStringList.Create;
  StringPuesto.Clear ;

  sConvenioInicio := '' ;
  sConvenioFinal := '' ;
  sActa :=  '' ;
  sNuevoInicio := '' ;
  sNuevoFinal := '' ;
  dMontoContrato := 0 ;
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal, dMontoMN From convenios Where sContrato = :contrato And sIdConvenio = ""') ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca.Open ;
  If Connection.qryBusca.RecordCount > 0 Then
  Begin
      sConvenioInicio := Connection.qryBusca.fieldbyName('dFechaInicio').AsString ;
      sConvenioFinal := Connection.qryBusca.fieldbyName('dFechaFinal').AsString ;
      dMontoContrato := Connection.qryBusca.FieldValues['dMontoMN']
  End ;

  dMontoModificado := 0 ;
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select c.sIdConvenio, c.dFechaInicio, c.dFechaFinal, c.sDescripcion, c.dMontoMN From convenios c ' +
                                   'INNER JOIN reportediario r ON (c.sContrato = r.sContrato And c.sIdConvenio = r.sIdConvenio And r.dIdFecha = :Fecha) ' +
                                   'Where c.sContrato = :contrato') ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
  Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
  Connection.qryBusca.Open ;
  If Connection.qryBusca.RecordCount > 0 Then
      If Connection.qryBusca.FieldValues['sIdConvenio'] <> '' Then
      Begin
          sNuevoInicio := Connection.qryBusca.fieldbyName('dFechaInicio').AsString ;
          sNuevoFinal := Connection.qryBusca.fieldbyName('dFechaFinal').AsString ;
          sActa := Connection.qryBusca.FieldValues['sDescripcion'] ;
          If dMontoContrato <> Connection.qryBusca.FieldValues['dMontoMN'] Then
              dMontoModificado := Connection.qryBusca.FieldValues['dMontoMN']
      End ;

  If rxReporteFotografico.RecordCount > 0 Then
      rxReporteFotografico.EmptyTable ;

  If rxPermisos.RecordCount > 0 Then
      rxPermisos.EmptyTable ;

  If rxNotas.RecordCount > 0 Then
      rxNotas.EmptyTable ;

  If rxEmbarque.RecordCount > 0 Then
      rxEmbarque.EmptyTable ;

  If rxPlaticas.RecordCount > 0 Then
      rxPlaticas.EmptyTable ;

  If rxAvancesFisicos.RecordCount > 0 Then
      rxAvancesFisicos.EmptyTable ;

  QryPersonalPernocta.Active := False ;
  QryPersonalPernocta.SQL.Clear ;
  QryPersonalPernocta.SQL.Add('select p2.sDescripcion as sPernocta, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
                              'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
                              'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.sIdTipoPersonal <> :Filtro) ' +
                              'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
                              'where a.sContrato = :contrato and a.dIdFecha = :fecha And a.sNumeroOrden = :Orden Group By p2.sIdPernocta order by p2.sIdPernocta asc') ;


  QryPersonalPlataforma.Active := False ;
  QryPersonalPlataforma.SQL.Clear ;
  QryPersonalPlataforma.SQL.Add('select b.sContrato, p2.sDescripcion as sPlataforma, p.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
                                'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
                                'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.sIdTipoPersonal <> :Filtro) ' +
                                'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
                                'where a.sContrato = :contrato and a.dIdFecha = :fecha And a.sNumeroOrden = :Orden Group By p2.sIdPlataforma order by p2.sIdPlataforma asc' ) ;

  qryGerencial.Active := False ;
  qryGerencial.Params.ParamByName('Contrato').DataType := ftString ;
  qryGerencial.Params.ParamByName('Contrato').Value := global_contrato ;
  qryGerencial.Params.ParamByName('Fecha').DataType := ftDate ;
  qryGerencial.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
  qryGerencial.Open ;

  QryTiemposMuertos.Active := False ;
  QryTiemposMuertos.Params.ParamByName('Contrato').DataType := ftString ;
  QryTiemposMuertos.Params.ParamByName('Contrato').Value := global_contrato ;
  QryTiemposMuertos.Params.ParamByName('Fecha').DataType := ftDate ;
  QryTiemposMuertos.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
  QryTiemposMuertos.Open ;

  Connection.qryBusca2.Active := False ;
  Connection.qryBusca2.SQL.Clear ;
  Connection.qryBusca2.SQL.Add('Select sNumeroOrden From reportediario Where sContrato = :contrato And dIdFecha = :Fecha') ;
  Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
  Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
  Connection.qryBusca2.Open ;

  While NOT Connection.qryBusca2.Eof Do
  Begin

          If Connection.configuracion.FieldValues['lIncluyeAvanceOrdenes'] = 'Si' then
          Begin
                // Obtengo los avances fisico/programados individuales
                try
                    procAvances (global_contrato, connection.qryBusca2.FieldValues['sNumeroOrden'], sConvenio, 'A', tdIdFecha.Date, True, frmReporteGerencial ) ;
                except
                    on e : exception do begin
                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte Diario Gerencial', 'Al procesar avances, al imprimir', 0);
                    end;
                end;
                rxAvancesFisicos.Append ;
                rxAvancesFisicos.FieldValues['sContrato'] := global_contrato ;
                rxAvancesFisicos.FieldValues['sNumeroOrden'] := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
                rxAvancesFisicos.FieldValues['dAvanceFisicoAnterior'] := dRealOrdenAnterior ;
                rxAvancesFisicos.FieldValues['dAvance'] :=  dRealOrdenActual ;
                rxAvancesFisicos.FieldValues['dAvanceFisicoAcumulado'] := dRealOrdenAcumulado ;
                rxAvancesFisicos.FieldValues['dAvanceProgramadoAnterior'] :=  dProgramadoOrdenAnterior ;
                rxAvancesFisicos.FieldValues['dAvanceProgramado'] := dProgramadoOrdenActual ;
                rxAvancesFisicos.FieldValues['dAvanceProgramadoAcumulado'] := dProgramadoOrdenAcumulado ;
                rxAvancesFisicos.Post ;
          End ;

          try
              rDiarioFirmas (global_contrato, connection.qryBusca2.FieldValues['sNumeroOrden'] , 'A',tdIdFecha.Date , frmReporteGerencial ) ;
          except
              on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte Diario Gerencial', 'Al generar firmas, al imprimir', 0);
              end;
          end;

          If (StringPuesto.Text = '') then
          Begin
              StringPuesto.Add('RESIDENTE DE OBRA') ;
              StringNombre.Add(sResidente) ;
              StringPuesto.Add('SUPERVISOR DE OBRA EN TIERRA') ;
              StringNombre.Add(sSupervisorTierra) ;
          End ;
          StringPuesto.Add('SUPERVISOR DE OBRA DE LA ORDEN ' + connection.qryBusca2.FieldValues['sNumeroOrden']) ;
          StringNombre.Add(sSupervisor) ;

          // Platicas de Seguridad
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select sTema From reportediario Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha') ;
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('Orden').Value := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
          Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
          Connection.qryBusca.Open ;
          While NOT Connection.qryBusca.Eof Do
          Begin
              rxPlaticas.Append ;
              rxPlaticas.FieldValues['sContrato'] := global_contrato ;
              rxPlaticas.FieldValues['sNumeroOrden'] :=  connection.qryBusca2.FieldValues['sNumeroOrden'] ;
              rxPlaticas.FieldValues['sPlatica'] := Connection.qryBusca.FieldValues['sTema'] ;
              rxPlaticas.Post ;
              Connection.qryBusca.Next
          End ;

          // Permisos de Seguridad ....
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select p.sNumeroOrden, t.sDescripcion, p.sFolios From tramitedepermisos p ' +
                                           'INNER JOIN tiposdepermiso t ON (t.sIdTipoPermiso = p.sIdTipoPermiso) ' +
                                           'WHERE p.sContrato = :Contrato And p.sNumeroOrden = :Orden And p.dIdFecha = :Fecha Order By p.sIdTipoPermiso' ) ;
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('Orden').Value := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
          Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
          Connection.qryBusca.Open ;
          While NOT Connection.qryBusca.Eof Do
          Begin
              rxPermisos.Append ;
              rxPermisos.FieldValues['sContrato'] := global_contrato ;
              rxPermisos.FieldValues['dIdFecha'] := tdIdFecha.Date ;
              rxPermisos.FieldValues['sNumeroOrden'] := Connection.qryBusca.FieldValues['sNumeroOrden'] ;
              rxPermisos.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcion'] ;
              rxPermisos.FieldValues['sFolios'] := Connection.qryBusca.FieldValues['sFolios'] ;
              rxPermisos.Post ;
              Connection.qryBusca.Next
          End ;
          If Connection.configuracion.FieldValues['lComentariosReporte'] = 'Si' then
          Begin
              // Comentarios del Dia ....
              Connection.qryBusca.Active := False ;
              Connection.qryBusca.SQL.Clear ;
              Connection.qryBusca.SQL.Add('Select b.sContrato, b.sNumeroOrden, o.sDescripcionCorta, b.mDescripcion From bitacoradeactividades b ' +
                                               'INNER JOIN tiposdemovimiento t ON (t.sContrato = b.sContrato And t.sIdTipoMovimiento = b.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
                                               'INNER JOIN ordenesdetrabajo o ON (b.sContrato = o.sContrato And b.sNumeroOrden = o.sNumeroOrden) ' +
                                               'WHERE b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTipoMovimiento <> "AE"' ) ;
              Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
              Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
              Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
              Connection.qryBusca.Params.ParamByName('Orden').Value := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
              Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
              Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
              Connection.qryBusca.Open ;
              While NOT Connection.qryBusca.Eof Do
              Begin
                  rxNotas.Append ;
                  rxNotas.FieldValues['sContrato'] := global_contrato ;
                  rxNotas.FieldValues['sNumeroOrden'] := Connection.qryBusca.FieldValues['sNumeroOrden'] ;
                  rxNotas.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcionCorta'] ;
                  rxNotas.FieldValues['mComentarios'] := Connection.qryBusca.FieldValues['mDescripcion'] ;
                  rxNotas.Post ;
                  Connection.qryBusca.Next
              End
          End ;

          // Pernoctas de las ordenes de trabajo ....
          QryPersonalPernocta.Active := False ;
          QryPersonalPernocta.Params.ParamByName('contrato').DataType := ftString ;
          QryPersonalPernocta.Params.ParamByName('contrato').Value := global_contrato ;
          QryPersonalPernocta.Params.ParamByName('Orden').DataType := ftString ;
          QryPersonalPernocta.Params.ParamByName('Orden').Value := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
          QryPersonalPernocta.Params.ParamByName('fecha').DataType := ftDate ;
          QryPersonalPernocta.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
          If connection.configuracion.FieldValues['sImprimePEP'] = 'Si' Then
          Begin
              QryPersonalPernocta.Params.ParamByName('Filtro').DataType := ftString ;
              QryPersonalPernocta.Params.ParamByName('Filtro').Value := '' ;
          End
          Else
          Begin
              QryPersonalPernocta.Params.ParamByName('Filtro').DataType := ftString ;
              QryPersonalPernocta.Params.ParamByName('Filtro').Value := 'PEP' ;
          End ;
          QryPersonalPernocta.Open ;

          While NOT QryPersonalPernocta.Eof Do
          Begin
              Elemento := 1 ;
              lContinua := True ;
              While lContinua And (Elemento <= 10) Do
              Begin
                  If sPernocta [Elemento] = '' Then
                      lContinua := False
                  Else
                      If sPernocta [Elemento] = QryPersonalPernocta.FieldValues['sPernocta'] Then
                          lContinua := False
                      Else
                          Elemento := Elemento + 1
              End ;

              sPernocta[Elemento] := QryPersonalPernocta.FieldValues['sPernocta'] ;
              iPernocta[Elemento] := iPernocta[Elemento] + QryPersonalPernocta.FieldValues['dCantidad'] ;

              QryPersonalPernocta.Next
          End ;

          QryPersonalPlataforma.Active := False ;
          QryPersonalPlataforma.Params.ParamByName('contrato').DataType := ftString ;
          QryPersonalPlataforma.Params.ParamByName('contrato').Value := global_contrato ;
          QryPersonalPlataforma.Params.ParamByName('Orden').DataType := ftString ;
          QryPersonalPlataforma.Params.ParamByName('Orden').Value := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
          QryPersonalPlataforma.Params.ParamByName('fecha').DataType := ftDate ;
          QryPersonalPlataforma.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
          If connection.configuracion.FieldValues['sImprimePEP'] = 'Si' Then
          Begin
              QryPersonalPlataforma.Params.ParamByName('Filtro').DataType := ftString ;
              QryPersonalPlataforma.Params.ParamByName('Filtro').Value := '' ;
          End
          Else
          Begin
              QryPersonalPlataforma.Params.ParamByName('Filtro').DataType := ftString ;
              QryPersonalPlataforma.Params.ParamByName('Filtro').Value := 'PEP' ;
          End ;
          QryPersonalPlataforma.Open ;
          While NOT QryPersonalPlataforma.Eof Do
          Begin
              Elemento := 1 ;
              lContinua := True ;
              While lContinua And (Elemento <= 10) Do
              Begin
                  If sPlataforma [Elemento] = '' Then
                      lContinua := False
                  Else
                      If sPlataforma [Elemento] = QryPersonalPlataforma.FieldValues['sPlataforma'] Then
                          lContinua := False
                      Else
                          Elemento := Elemento + 1
              End ;

              sPlataforma[Elemento] := QryPersonalPlataforma.FieldValues['sPlataforma'] ;
              iPlataforma[Elemento] := iPlataforma[Elemento] + QryPersonalPlataforma.FieldValues['dCantidad'] ;
              QryPersonalPlataforma.Next
          End ;


          If connection.configuracion.FieldValues['sFotografias'] = '4'  Then
          Begin
              QryReporteFotografico.Active := False ;
              QryReporteFotografico.SQL.Clear ;
              QryReporteFotografico.SQL.Add('Select f.*, o.sDescripcionCorta, r.sNumeroOrden, r.dIdFecha From reportefotografico f ' +
                                            'inner join reportediario r ON (r.sContrato = f.sContrato And r.sNumeroReporte = f.sNumeroReporte And r.dIdFecha = :Fecha And r.sNumeroOrden = :Orden) ' +
                                            'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
                                            'Where f.sContrato = :Contrato And f.sDescripcion <> "" Order By r.sNumeroOrden, f.sNumeroReporte, f.iImagen') ;
              QryReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
              QryReporteFotografico.Params.ParamByName('contrato').Value := global_contrato ;
              QryReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate ;
              QryReporteFotografico.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
              QryReporteFotografico.Params.ParamByName('orden').DataType := ftString ;
              QryReporteFotografico.Params.ParamByName('orden').Value := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
              QryReporteFotografico.Open ;
              While NOT QryReporteFotografico.Eof Do
              Begin
                  rxReporteFotografico.Append ;
                  rxReporteFotografico.FieldValues['sContrato'] := QryReporteFotografico.FieldValues['sContrato'] ;
                  rxReporteFotografico.FieldValues['sNumeroReporte'] := QryReporteFotografico.FieldValues['sNumeroReporte'] ;
                  rxReporteFotografico.FieldValues['iImagen'] := QryReporteFotografico.FieldValues['iImagen'] ;
                  rxReporteFotografico.FieldValues['bImagen'] := QryReporteFotografico.FieldValues['bImagen'] ;
                  rxReporteFotografico.FieldValues['sDescripcion'] := QryReporteFotografico.FieldValues['sDescripcion'] ;
                  rxReporteFotografico.FieldValues['sDescripcionCorta'] := QryReporteFotografico.FieldValues['sDescripcionCorta'] ;
                  rxReporteFotografico.FieldValues['sNumeroOrden'] := QryReporteFotografico.FieldValues['sNumeroOrden'] ;
                  rxReporteFotografico.FieldValues['dIdFecha'] := QryReporteFotografico.FieldValues['dIdFecha'] ;
                  rxReporteFotografico.Post ;
                  QryReporteFotografico.Next
              End ;
          End
          Else
          Begin
              QryReporteFotografico.Active := False ;
              QryReporteFotografico.SQL.Clear ;
              QryReporteFotografico.SQL.Add('Select f.*, o.sDescripcionCorta, r.sNumeroOrden, r.dIdFecha From reportefotografico f ' +
                                            'inner join reportediario r ON (r.sContrato = f.sContrato And r.sNumeroReporte = f.sNumeroReporte And r.dIdFecha = :Fecha And r.sNumeroOrden = :Orden) ' +
                                            'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
                                            'Where f.sContrato = :Contrato And f.sDescripcion <> "" Order By r.sNumeroOrden, f.sNumeroReporte, f.iImagen') ;
              QryReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
              QryReporteFotografico.Params.ParamByName('contrato').Value := global_contrato ;
              QryReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate ;
              QryReporteFotografico.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
              QryReporteFotografico.Params.ParamByName('orden').DataType := ftString ;
              QryReporteFotografico.Params.ParamByName('orden').Value := connection.qryBusca2.FieldValues['sNumeroOrden'] ;
              QryReporteFotografico.Open ;
              iImagenNew := 0 ;
              While NOT QryReporteFotografico.Eof Do
              Begin
                  Case iImagenNew Of
                        0 : Begin
                                iImagenNew := 1 ;
                                rxReporteFotografico.Append ;
                                rxReporteFotografico.FieldValues['sContrato'] := QryReporteFotografico.FieldValues['sContrato'] ;
                                rxReporteFotografico.FieldValues['sNumeroReporte'] := QryReporteFotografico.FieldValues['sNumeroReporte'] ;
                                rxReporteFotografico.FieldValues['iImagen'] := QryReporteFotografico.FieldValues['iImagen'] ;
                                rxReporteFotografico.FieldValues['bImagen'] := QryReporteFotografico.FieldValues['bImagen'] ;
                                rxReporteFotografico.FieldValues['sDescripcion'] := QryReporteFotografico.FieldValues['sDescripcion'] ;
                                rxReporteFotografico.FieldValues['sDescripcionCorta'] := QryReporteFotografico.FieldValues['sDescripcionCorta'] ;
                                rxReporteFotografico.FieldValues['sNumeroOrden'] := QryReporteFotografico.FieldValues['sNumeroOrden'] ;
                                rxReporteFotografico.FieldValues['dIdFecha'] := QryReporteFotografico.FieldValues['dIdFecha'] ;
                            End ;
                        1 : Begin
                              iImagenNew := 2 ;
                                rxReporteFotografico.FieldValues['bImagen2'] := QryReporteFotografico.FieldValues['bImagen'] ;
                                rxReporteFotografico.FieldValues['sDescripcion2'] := QryReporteFotografico.FieldValues['sDescripcion'] ;
                                rxReporteFotografico.Post ;
                            End
                  End ;
                  QryReporteFotografico.Next
              End ;

              If rxReporteFotografico.State = dsInsert Then
                  rxReporteFotografico.Post ;
          End ;
      Connection.qryBusca2.Next ;
  End ;

  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select sPoliza, sFianza From polizas  ' +
                                   'WHERE sContrato = :Contrato And dFechaInicio <= :FechaInicio And dFechaFinal >= :FechaFinal' ) ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca.Params.ParamByName('FechaInicio').DataType := ftDate ;
  Connection.qryBusca.Params.ParamByName('FechaInicio').Value := tdIdFecha.Date ;
  Connection.qryBusca.Params.ParamByName('FechaFinal').DataType := ftDate ;
  Connection.qryBusca.Params.ParamByName('FechaFinal').Value := tdIdFecha.Date ;
  Connection.qryBusca.Open ;
  If Connection.qryBusca.RecordCount > 0 Then
  Begin
      sPoliza := Connection.qryBusca.FieldValues['sPoliza'] ;
      sFianza := Connection.qryBusca.FieldValues['sFianza'] ;
  End 
  Else
  Begin
      sPoliza := 'SIN POLIZA DE SEGURO POR RESPONSABILIDAD CIVIL' ;
      sFianza := 'SIN FIANZA DE CUMPLIMIENTO'
  End ;
  
  // Avisos de embarque ....
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select b.* From anexo_suministro b ' +
                                   'WHERE b.sContrato = :Contrato And b.dIdFecha = :Fecha Order By b.sNumeroOrden' ) ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
  Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
  Connection.qryBusca.Open ;
  While NOT Connection.qryBusca.Eof Do
  Begin
      rxEmbarque.Append ;
      rxEmbarque.FieldValues['sContrato'] := global_contrato ;
      rxEmbarque.FieldValues['iFolio'] := Connection.qryBusca.FieldValues['iFolio'] ;
      rxEmbarque.FieldValues['dFechaAviso'] := Connection.qryBusca.FieldValues['dFechaAviso'] ;
      rxEmbarque.FieldValues['sReferencia'] := Connection.qryBusca.FieldValues['sReferencia'] ;
      rxEmbarque.FieldValues['sNumeroOrden'] := Connection.qryBusca.FieldValues['sNumeroOrden'] ;
      rxEmbarque.FieldValues['mComentarios'] :=  Connection.qryBusca.FieldValues['mComentarios'] ;
      rxEmbarque.Post ;
      Connection.qryBusca.Next
  End ;

  StringPuesto.Add('SUPERINTENDENTE DE LA COMPAÑIA') ;
  StringNombre.Add(sSuperintendente) ;

  dsPersonalPernocta.OnFirst := nil ;
  dsPersonalPlataforma.OnFirst := nil ;
  dsPersonalPernocta.OnNext := nil ;
  dsPersonalPlataforma.OnNext := nil ;

  If rxPlataforma.RecordCount > 0 Then
      rxPlataforma.EmptyTable ;

  dTotal := 0 ;
  Elemento := 1 ;
  While sPlataforma [Elemento] <> '' Do
  Begin
      rxPlataforma.Append ;
      rxPlataforma.FieldValues['iItem'] := 1 ;
      rxPlataforma.FieldValues['sTitulo'] := sPlataforma[Elemento] ;
      rxPlataforma.FieldValues['sCantidad'] := iPlataforma[Elemento] ;
      rxPlataforma.Post ;
      dTotal := dTotal + iPlataforma[Elemento] ;
      Elemento := Elemento + 1 ;
  End ;

  If dTotal > 0 Then
  Begin
      rxPlataforma.Append ;
      rxPlataforma.FieldValues['iItem'] := 1 ;
      rxPlataforma.FieldValues['sTitulo'] := 'Total de Personal' ;
      rxPlataforma.FieldValues['sCantidad'] := IntToStr (dTotal) ;
      rxPlataforma.Post ;
  End ;

  dsPersonalPlataforma.FieldAliases.Clear ;
  dsPersonalPlataforma.DataSet := rxPlataforma ;

  // Pernoctas ...
  If rxPernocta.RecordCount > 0 Then
      rxPernocta.EmptyTable ;
  dTotal := 0 ;
  Elemento := 1 ;
  While sPernocta [Elemento] <> '' Do
  Begin
      rxPernocta.Append ;
      rxPernocta.FieldValues['iItem'] := 1 ;
      rxPernocta.FieldValues['sTitulo'] := sPernocta[Elemento] ;
      rxPernocta.FieldValues['sCantidad'] := iPernocta[Elemento] ;
      rxPernocta.Post ;
      dTotal := dTotal + iPernocta[Elemento] ;
      Elemento := Elemento + 1 ;
  End ;

  If dTotal > 0 Then
  Begin
      rxPernocta.Append ;
      rxPernocta.FieldValues['iItem'] := 1 ;
      rxPernocta.FieldValues['sTitulo'] := 'Total de Personal' ;
      rxPernocta.FieldValues['sCantidad'] := IntToStr (dTotal) ;
      rxPernocta.Post ;
  End ;

  dsPersonalPernocta.FieldAliases.Clear ;
  dsPersonalPernocta.DataSet := rxPernocta ;

  If rxGraficaProgramado.RecordCount > 0 then
      rxGraficaProgramado.EmptyTable   ;

  // Graficas fisico financiero ....
  If Connection.configuracion.FieldValues['lIncluyeGrafica'] = 'Si' Then
  Begin
      dAvanceAnterior := 0 ;
      dProgramadoAnterior := 0 ;

      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes, Max(dAvancePonderadoGlobal) as dMensual From avancesglobales Where ' +
                                       'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Orden').Value := '' ;
      Connection.qryBusca.Open ;
      While NOT Connection.qryBusca.Eof Do
      Begin
         If Connection.qryBusca.FieldValues['dMes'] <= 8 Then
             sFecha := '01/0' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1))  + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
         Else
             If Connection.qryBusca.FieldValues['dMes'] <= 11 Then
                 sFecha := '01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1)) + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
             Else
                 sFecha := '01/01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dAnno'] + 1)) ;

         sFecha := DateToStr(StrToDate(sFecha) - 1) ;

         If (MonthOf(tdIdFecha.Date) = Connection.qryBusca.FieldValues['dMes']) And (YearOf(tdIdFecha.Date) = Connection.qryBusca.FieldValues['dAnno']) Then
         Begin
            // Avance Diario ...
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Max(dAvancePonderadoGlobal) as dMensual From avancesglobales Where ' +
                                             'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                                             'dIdFecha <= :Fecha' ) ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Convenio').Value := sConvenio ;
            Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Orden').Value := '' ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
            Begin
               If rxGraficaProgramado.Locate('dFecha', tdIdFecha.Date , [loPartialKey]) Then
                   rxGraficaProgramado.Edit
               Else
                   rxGraficaProgramado.Append ;
                   rxGraficaProgramado.FieldValues['sDescripcion'] := global_contrato ;
                   rxGraficaProgramado.FieldValues['dFecha'] := tdIdFecha.Date ;
                   rxGraficaProgramado.FieldValues['dProgramadoDiario'] := Connection.qryBusca2.FieldValues['dMensual'] ;
                   rxGraficaProgramado.FieldValues['dProgramado'] := Connection.qryBusca2.FieldValues['dMensual'] ;

                   Connection.qryBusca2.Active := False ;
                   Connection.qryBusca2.SQL.Clear ;
                   Connection.qryBusca2.SQL.Add('Select Sum(dAvance) as dMensual From avancesglobalesxorden Where ' +
                                                     'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By sContrato' ) ;
                   Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                   Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
                   Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
                   Connection.qryBusca2.Params.ParamByName('Convenio').Value := sConvenio ;
                   Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
                   Connection.qryBusca2.Params.ParamByName('Orden').Value := '' ;
                   Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
                   Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
                   Connection.qryBusca2.Open ;
                   If Connection.qryBusca.RecordCount > 0 Then
                       rxGraficaProgramado.FieldValues['dReal'] := Connection.qryBusca2.FieldValues['dMensual'] ;
                   rxGraficaProgramado.Post ;
            End ;
         End ;
         If rxGraficaProgramado.Locate('dFecha', sFecha , [loPartialKey]) Then
             rxGraficaProgramado.Edit
         Else
             rxGraficaProgramado.Append ;
         rxGraficaProgramado.FieldValues['sDescripcion'] := global_contrato ;
         rxGraficaProgramado.FieldValues['dFecha'] := sFecha ;
         rxGraficaProgramado.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
         rxGraficaProgramado.Post ;
         Connection.qryBusca.Next
      End ;

      // Avance Fisico ...
      sFecha := '01/' + Trim(IntToStr(MonthOf(tdIdFecha.Date))) + '/' + Trim(IntToStr(YearOf(tdIdFecha.Date))) ;
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes From avancesglobalesxorden Where ' +
                                       'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By Year(dIdFecha), month(dIdFecha)' ) ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Orden').Value := '' ;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
      Connection.qryBusca.Params.ParamByName('Fecha').Value := StrToDate(sFecha) - 1 ;
      Connection.qryBusca.Open ;
      While NOT Connection.qryBusca.Eof Do
      Begin
          If Connection.qryBusca.FieldValues['dMes'] <= 8 Then
             sFecha := '01/0' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1))  + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
          Else
             If Connection.qryBusca.FieldValues['dMes'] <= 11 Then
                 sFecha := '01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dMes'] + 1)) + '/' + Connection.qryBusca.fieldByName('dAnno').AsString
             Else
                 sFecha := '01/01/' + Trim(IntToStr(Connection.qryBusca.FieldValues['dAnno'] + 1)) ;
          sFecha := DateToStr(StrToDate(sFecha) - 1) ;
          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum(dAvance) as dMensual From avancesglobalesxorden Where ' +
                                            'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By sContrato' ) ;
          Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
          Connection.qryBusca2.Params.ParamByName('Convenio').Value := sConvenio ;
          Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
          Connection.qryBusca2.Params.ParamByName('Orden').Value := '' ;
          Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.qryBusca2.Params.ParamByName('Fecha').Value := StrToDate(sFecha) ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca.RecordCount > 0 Then
          Begin
              If rxGraficaProgramado.Locate('dFecha', sFecha, [loPartialKey]) Then
                  rxGraficaProgramado.Edit
              Else
                  rxGraficaProgramado.Append ;
              rxGraficaProgramado.FieldValues['sDescripcion'] := global_contrato ;
              rxGraficaProgramado.FieldValues['dFecha'] := sFecha ;
              rxGraficaProgramado.FieldValues['dReal'] := Connection.qryBusca2.FieldValues['dMensual'] ;
              rxGraficaProgramado.Post ;
         End ;
         Connection.qryBusca.Next
     End ;

     rxGraficaProgramado.First ;
     While NOT rxGraficaProgramado.Eof Do
     Begin
        If rxGraficaProgramado.FieldValues['dProgramado'] > dProgramadoAnterior Then
            dProgramadoAnterior := rxGraficaProgramado.FieldValues['dProgramado']  ;

        If rxGraficaProgramado.FieldValues['dReal'] > dAvanceAnterior Then
            dAvanceAnterior := rxGraficaProgramado.FieldValues['dReal'] ;

        rxGraficaProgramado.Edit ;
        rxGraficaProgramado.FieldValues['dProgramado'] := dProgramadoAnterior ;
        rxGraficaProgramado.FieldValues['dReal'] := dAvanceAnterior ;
        rxGraficaProgramado.Post ;
        rxGraficaProgramado.Next
     End ;
  End ;

  If (Connection.configuracion.FieldValues['lIncluyeAvanceOrdenes'] = 'Si') And (Connection.configuracion.FieldValues['lIncluyeAvanceContrato'] = 'Si') then
  Begin
      If Connection.configuracion.FieldValues['lIncluyeGrafica'] = 'Si' Then
          If connection.configuracion.FieldValues['sFotografias'] = '2'  Then
              frxGerencial.LoadFromFile(global_files + global_miReporte + '_rGerencialMultipleConOrdenes.fr3')
          Else
             frxGerencial.LoadFromFile(global_files + global_miReporte + '_rGerencialConOrdenes.fr3')
      Else
          If connection.configuracion.FieldValues['sFotografias'] = '2'  Then
              frxGerencial.LoadFromFile(global_files + global_miReporte + '_rGerencialMultipleSinGraficasConOrdenes.fr3')
          Else
             frxGerencial.LoadFromFile(global_files + global_miReporte + '_rGerencialSinGraficasConOrdenes.fr3') ;
  End
  Else
      If (Connection.configuracion.FieldValues['lIncluyeAvanceOrdenes'] = 'Si') And (Connection.configuracion.FieldValues['lIncluyeAvanceContrato'] = 'No') then
      Begin
          If Connection.configuracion.FieldValues['lIncluyeGrafica'] = 'Si' Then
              If connection.configuracion.FieldValues['sFotografias'] = '2'  Then
                  frxGerencial.LoadFromFile(global_files + global_miReporte +  '_rGerencialMultipleConOrdenesSinAvance.fr3')
              Else
                 frxGerencial.LoadFromFile(global_files + global_miReporte +  '_rGerencialConOrdenesSinAvance.fr3')
          Else
              If connection.configuracion.FieldValues['sFotografias'] = '2'  Then
                  frxGerencial.LoadFromFile(global_files + global_miReporte +  '_rGerencialMultipleSinGraficasConOrdenesSinAvance.fr3')
              Else
                  frxGerencial.LoadFromFile(global_files + global_miReporte +'_rGerencialSinGraficasConOrdenesSinAvance.fr3') ;
      End
      Else
      Begin
          If Connection.configuracion.FieldValues['lIncluyeGrafica'] = 'Si' Then
              If connection.configuracion.FieldValues['sFotografias'] = '2'  Then
                  frxGerencial.LoadFromFile(global_files + '_rGerencialMultiple.fr3')
              Else
                 frxGerencial.LoadFromFile(global_files + global_miReporte + '_rGerencial.fr3')
          Else
              If connection.configuracion.FieldValues['sFotografias'] = '2'  Then
                  frxGerencial.LoadFromFile(global_files + global_miReporte + '_rGerencialMultipleSinGraficas.fr3')
              Else
                 frxGerencial.LoadFromFile(global_files + global_miReporte + '_rGerencialSinGraficas.fr3') ;
      End ;

  // Aqui se debera incluir el calculo de avances globales generales

  If OrdenesdeTrabajo.RecordCount > 1 Then
      cfnCalculaAvances (global_contrato, tsNumeroOrden2.Text, global_convenio , 'XXX', True, tdIdFecha.Date, 'Avanzada' , frmReporteGerencial)
  Else
      cfnCalculaAvances (global_contrato, tsNumeroOrden2.Text, global_convenio , 'XXX', False , tdIdFecha.Date, 'Avanzada', frmReporteGerencial) ;

  procAvances (global_contrato, '', sConvenio, 'A' , tdIdFecha.Date, True, frmReporteGerencial ) ;

  frxGerencial.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte Diario Gerencial', 'Al imprimir', 0);
  end;
end;
end;

procedure TfrmReporteGerencial.frxGerencialGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'MONTO_MODIFICADO') = 0 then
      Value := dMontoModificado ;

  If CompareText(VarName, 'MONTO_CONTRATO') = 0 then
      Value := dMontoContrato ;

  If CompareText(VarName, 'FECHA') = 0 then
      Value := DateToStr(tdIdFecha.Date) ;

  If CompareText(VarName, 'POLIZA') = 0 then
      Value := sPoliza ;
  If CompareText(VarName, 'FIANZA') = 0 then
      Value := sFianza ;

  If CompareText(VarName, 'PUESTO') = 0 then
      Value := StringPuesto.Text ;

  If CompareText(VarName, 'DIRECTORIO') = 0 then
      Value := StringNombre.Text ;

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

  If CompareText(VarName, 'INICIO_ORIGINAL') = 0 then
      Value := sConvenioInicio ;

  If CompareText(VarName, 'TERMINO_ORIGINAL') = 0 then
      Value := sConvenioFinal ;

  If CompareText(VarName, 'ACTA') = 0 then
      Value := sActa ;

  If CompareText(VarName, 'NUEVO_INICIO') = 0 then
      Value := sNuevoInicio ;
  If CompareText(VarName, 'NUEVO_TERMINO') = 0 then
      Value := sNuevoFinal ;

  If CompareText(VarName, 'DURACION') = 0 then
  Begin
      If sNuevoFinal <> '' Then
          Value := StrToDate(sNuevoFinal) - StrToDate(sConvenioInicio) + 1
      Else
          Value := StrToDate(sConvenioFinal) - StrToDate(sConvenioInicio) + 1 
  End
end;

procedure TfrmReporteGerencial.btnEditClick(Sender: TObject);
begin
    lExiste := True ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := True ;
    btnCancel.Enabled := True ;
    btnPrinter.Enabled := False ;
    tmActividades.ReadOnly := False ;
    tmProblematica.ReadOnly := False ;
    gpActividades.Visible := True ;
    gpProblematica.Visible := False ;
    tmActividades.SetFocus
end;

procedure TfrmReporteGerencial.btnNewClick(Sender: TObject);
begin
    lExiste := False ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := True ;
    btnCancel.Enabled := True ;
    btnPrinter.Enabled := False ;
    tmActividades.ReadOnly := False ;
    tmProblematica.ReadOnly := False ;
    gpActividades.Visible := True ;
    gpProblematica.Visible := False ;
    tmActividades.SetFocus
end;

procedure TfrmReporteGerencial.btnCancelClick(Sender: TObject);
begin
    tmProblematica.ReadOnly := True ;
    tmActividades.ReadOnly := True ;
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
    end
end;

procedure TfrmReporteGerencial.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsNumeroOrden2.SetFocus 
end;


procedure TfrmReporteGerencial.tsNumeroOrden2Enter(Sender: TObject);
begin
    tsNumeroOrden2.Color := global_color_entrada
end;

procedure TfrmReporteGerencial.tsNumeroOrden2Exit(Sender: TObject);
begin
    tsNumeroOrden2.Color := global_color_salida
end;

procedure TfrmReporteGerencial.tsNumeroOrden2KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdIdFecha.SetFocus 
end;

procedure TfrmReporteGerencial.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_Entrada
end;

procedure TfrmReporteGerencial.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salida
end;

procedure TfrmReporteGerencial.ordenesdetrabajoAfterScroll(
  DataSet: TDataSet);
begin
  try
    tmActividades.ReadOnly := True ;
    tmProblematica.ReadOnly := True ;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select mActividades, mProblematica From reportegerencial Where sContrato = :contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Orden').Value := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
    Begin
        tmActividades.Text := Connection.qryBusca.FieldValues['mActividades'] ;
        tmProblematica.Text := Connection.qryBusca.FieldValues['mProblematica'] ;
        btnNew.Enabled := False ;
        btnEdit.Enabled := True ;
        btnSave.Enabled := False ;
        btnCancel.Enabled := False ;
        btnPrinter.Enabled := True ;
    End
    Else
    Begin
        btnNew.Enabled := True ;
        btnEdit.Enabled := False ;
        btnSave.Enabled := False ;
        btnCancel.Enabled := False ;
        btnPrinter.Enabled := False ;
        tmActividades.Text := '' ;
        tmProblematica.Text := '' ;
    End ;
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reporte Diario Gerencial', 'Al seleccionar frente de trabajo', 0);
        end;
    end;
end;

end.
