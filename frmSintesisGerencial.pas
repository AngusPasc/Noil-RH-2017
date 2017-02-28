unit frmSintesisGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, frm_barra, Grids, DBGrids, ComCtrls, ImgList, frm_connection,
  DB, ADODB, RXDBCtrl, global, Newpanel, Buttons, RxMemDS, frxClass,
  frxDBSet, utilerias, DateUtils, DBCtrls;

type
  TfrmSistesisGerencial = class(TForm)
    Panel: TImageList;
    gbGerencial: tNewGroupBox;
    gpActividades: TGroupBox;
    tmActividades: TMemo;
    gpProblematica: TGroupBox;
    tmProblematica: TMemo;
    PanelPrincipal: TListView;
    Label7: TLabel;
    tdIdFecha: TDateTimePicker;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnPrinter: TBitBtn;
    dsEmbarque: TfrxDBDataset;
    rxEmbarque: TRxMemoryData;
    StringField5: TStringField;
    rxEmbarqueiFolio: TIntegerField;
    rxEmbarquesReferencia: TStringField;
    rxEmbarquedFechaAviso: TDateField;
    rxEmbarquesNumeroOrden: TStringField;
    MemoField2: TMemoField;
    dsGerencial: TfrxDBDataset;
    QryReporteFotografico: TADOQuery;
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
    btnNew: TBitBtn;
    btnEdit: TBitBtn;
    rxGraficaProgramado: TRxMemoryData;
    StringField16: TStringField;
    rxGraficaProgramadodFecha: TDateField;
    FloatField4: TFloatField;
    rxGraficaProgramadodReal: TFloatField;
    dsProgramado: TfrxDBDataset;
    rxGraficaProgramadodProgramadoDiario: TFloatField;
    rxGraficaProgramadodRealDiario: TFloatField;
    rGerencial: TADOQuery;
    frxGerencial: TfrxReport;
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
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSistesisGerencial: TfrmSistesisGerencial;
  lExiste            : Boolean ;
  sContrato, sPernocta, sPlataforma : String ;
  sFechaInicio : String ;
  sConvenioInicio, sConvenioFinal, sActa, sNuevoInicio, sNuevoFinal : String ;
  StringPuesto: TStrings;
  StringNombre: TStrings;
  sPoliza, sFianza : String ;

implementation

uses frmReporteDiarioGerencial;

{$R *.dfm}


procedure TfrmSistesisGerencial.PanelPrincipalClick(Sender: TObject);
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

procedure TfrmSistesisGerencial.FormShow(Sender: TObject);
begin

    tdIdFecha.Date := Date ;
    tmActividades.ReadOnly := True ;
    tmProblematica.ReadOnly := True ;
    Connection.BuscaReadOnly.Active := False ;
    Connection.BuscaReadOnly.SQL.Clear ;
    Connection.BuscaReadOnly.SQL.Add('Select * From ReporteGerencial Where sContrato = :contrato And dIdFecha = :Fecha') ;
    Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
    Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_Contrato ;
    Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
    Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.BuscaReadOnly.Open ;
    If Connection.BuscaReadOnly.RecordCount > 0 Then
    Begin
        tmActividades.Text := Connection.BuscaReadOnly.FieldValues['mActividades'] ;
        tmProblematica.Text := Connection.BuscaReadOnly.FieldValues['mProblematica'] ;
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
    tdIdFecha.SetFocus  
end;

procedure TfrmSistesisGerencial.tdIdFechaChange(Sender: TObject);
begin
    tmActividades.ReadOnly := True ;
    tmProblematica.ReadOnly := True ;
    Connection.BuscaReadOnly.Active := False ;
    Connection.BuscaReadOnly.SQL.Clear ;
    Connection.BuscaReadOnly.SQL.Add('Select * From ReporteGerencial Where sContrato = :contrato And dIdFecha = :Fecha') ;
    Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
    Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_Contrato ;
    Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
    Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.BuscaReadOnly.Open ;
    If Connection.BuscaReadOnly.RecordCount > 0 Then
    Begin
        tmActividades.Text := Connection.BuscaReadOnly.FieldValues['mActividades'] ;
        tmProblematica.Text := Connection.BuscaReadOnly.FieldValues['mProblematica'] ;
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
end;

procedure TfrmSistesisGerencial.btnSaveClick(Sender: TObject);
begin
    If not lExiste Then
    Begin
        connection.command.CommandText := 'INSERT INTO ReporteGerencial (sContrato , dIdFecha, mActividades, mProblematica)' +
                                          'VALUES (:Contrato, :Fecha, :Actividades, :Problematica)' ;
        connection.command.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.command.Parameters.ParamByName('contrato').value := Global_Contrato ;
        connection.command.Parameters.ParamByName('fecha').DataType := ftDate ;
        connection.command.Parameters.ParamByName('fecha').value := tdIdFecha.Date  ;
        connection.command.Parameters.ParamByName('Actividades').DataType := ftMemo ;
        connection.command.Parameters.ParamByName('Actividades').value := tmActividades.Text ;
        connection.command.Parameters.ParamByName('Problematica').DataType := ftMemo ;
        connection.command.Parameters.ParamByName('Problematica').value := tmProblematica.Text ;
        connection.command.Execute ;
    End
    Else
    Begin
        connection.command.CommandText := 'UPDATE ReporteGerencial SET mActividades = :Actividades, mProblematica = :Problematica ' +
                                          'where sContrato = :contrato And dIdFecha = :fecha' ;
        connection.command.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.command.Parameters.ParamByName('contrato').value := Global_Contrato ;
        connection.command.Parameters.ParamByName('fecha').DataType := ftDate ;
        connection.command.Parameters.ParamByName('fecha').value := tdIdFecha.Date  ;
        connection.command.Parameters.ParamByName('Actividades').DataType := ftMemo ;
        connection.command.Parameters.ParamByName('Actividades').value := tmActividades.Text ;
        connection.command.Parameters.ParamByName('Problematica').DataType := ftMemo ;
        connection.command.Parameters.ParamByName('Problematica').value := tmProblematica.Text ;
        connection.command.Execute ;
    End ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := True ;
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    btnPrinter.Enabled := True ;
    tmProblematica.ReadOnly := True ;
    tmActividades.ReadOnly := True
end;

procedure TfrmSistesisGerencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := caFree ;
end;

procedure TfrmSistesisGerencial.btnPrinterClick(Sender: TObject);
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
  sPoliza := '' ;
  sFianza := '' ;

  For Elemento := 1 To 10 Do
  Begin
      sPernocta   [Elemento] := '' ;
      sPlataforma [Elemento] := '' ;
      iPernocta   [Elemento] := 0 ;
      iPlataforma [Elemento] := 0 ;
  End ;

  Connection.BuscaReadOnly.Active := False ;
  Connection.BuscaReadOnly.SQL.Clear ;
  Connection.BuscaReadOnly.SQL.Add('Select sIdConvenio From ReporteDiario Where sContrato = :Contrato And dIdFecha = :Fecha') ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
  Connection.BuscaReadOnly.Open ;
  If Connection.BuscaReadOnly.RecordCount > 0 Then
     sConvenio := Connection.BuscaReadOnly.FieldValues['sIdConvenio']
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
  Connection.BuscaReadOnly.Active := False ;
  Connection.BuscaReadOnly.SQL.Clear ;
  Connection.BuscaReadOnly.SQL.Add('Select dFechaInicio, dFechaFinal From Convenios Where sContrato = :contrato And sIdConvenio = ""') ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
  Connection.BuscaReadOnly.Open ;
  If Connection.BuscaReadOnly.RecordCount > 0 Then
  Begin
      sConvenioInicio := Connection.BuscaReadOnly.fieldbyName('dFechaInicio').AsString ;
      sConvenioFinal := Connection.BuscaReadOnly.fieldbyName('dFechaFinal').AsString ;
  End ;

  Connection.BuscaReadOnly.Active := False ;
  Connection.BuscaReadOnly.SQL.Clear ;
  Connection.BuscaReadOnly.SQL.Add('Select c.sIdConvenio, c.dFechaInicio, c.dFechaFinal, c.sDescripcion From Convenios c ' +
                                   'INNER JOIN ReporteDiario r ON (c.sContrato = r.sContrato And c.sIdConvenio = r.sIdConvenio And r.dIdFecha = :Fecha) ' +
                                   'Where c.sContrato = :contrato') ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
  Connection.BuscaReadOnly.Open ;
  If Connection.BuscaReadOnly.RecordCount > 0 Then
      If Connection.BuscaReadOnly.FieldValues['sIdConvenio'] <> '' Then
      Begin
          sNuevoInicio := Connection.BuscaReadOnly.fieldbyName('dFechaInicio').AsString ;
          sNuevoFinal := Connection.BuscaReadOnly.fieldbyName('dFechaFinal').AsString ;
          sActa := Connection.BuscaReadOnly.FieldValues['sDescripcion']
      End ;

  If rxReporteFotografico.RecordCount > 0 Then
      rxReporteFotografico.EmptyTable ;

  rGerencial.Active := False ;
  rGerencial.Parameters.ParamByName('Contrato').DataType := ftString ;
  rGerencial.Parameters.ParamByName('Contrato').Value := global_contrato ;
  rGerencial.Parameters.ParamByName('Fecha').DataType := ftDate ;
  rGerencial.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
  rGerencial.Open ;

  Connection.BuscaReadOnly2.Active := False ;
  Connection.BuscaReadOnly2.SQL.Clear ;
  Connection.BuscaReadOnly2.SQL.Add('Select sNumeroOrden From ReporteDiario Where sContrato = :contrato And dIdFecha = :Fecha') ;
  Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').DataType := ftString ;
  Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').Value := global_contrato ;
  Connection.BuscaReadOnly2.Parameters.ParamByName('Fecha').DataType := ftDate ;
  Connection.BuscaReadOnly2.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
  Connection.BuscaReadOnly2.Open ;

  While NOT Connection.BuscaReadOnly2.Eof Do
  Begin
          rDiarioFirmas (global_contrato, connection.BuscaReadOnly2.FieldValues['sNumeroOrden'] , tdIdFecha.Date , frmReporteGerencial ) ;
          If (StringPuesto.Text = '') then
          Begin
              StringPuesto.Add('RESIDENTE DE OBRA') ;
              StringNombre.Add(sResidente) ;
              StringPuesto.Add('SUPERVISOR DE OBRA EN TIERRA') ;
              StringNombre.Add(sSupervisorTierra) ;
          End ;
          StringPuesto.Add('SUPERVISOR DE OBRA DE LA ORDEN ' + connection.BuscaReadOnly2.FieldValues['sNumeroOrden']) ;
          StringNombre.Add(sSupervisor) ;

          QryReporteFotografico.Active := False ;
          QryReporteFotografico.SQL.Clear ;
          QryReporteFotografico.SQL.Add('Select f.*, o.sDescripcionCorta, r.sNumeroOrden, r.dIdFecha From ReporteFotografico f ' +
                                        'inner join ReporteDiario r ON (r.sContrato = f.sContrato And r.sNumeroReporte = f.sNumeroReporte And r.dIdFecha = :Fecha And r.sNumeroOrden = :Orden) ' +
                                        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
                                        'Where f.sContrato = :Contrato And f.sDescripcion <> "" Order By r.sNumeroOrden, f.sNumeroReporte, f.iImagen') ;
          QryReporteFotografico.Parameters.ParamByName('contrato').DataType := ftString ;
          QryReporteFotografico.Parameters.ParamByName('contrato').Value := global_contrato ;
          QryReporteFotografico.Parameters.ParamByName('Fecha').DataType := ftDate ;
          QryReporteFotografico.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
          QryReporteFotografico.Parameters.ParamByName('orden').DataType := ftString ;
          QryReporteFotografico.Parameters.ParamByName('orden').Value := connection.BuscaReadOnly2.FieldValues['sNumeroOrden'] ;
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
      Connection.BuscaReadOnly2.Next ;
  End ;

  Connection.BuscaReadOnly.Active := False ;
  Connection.BuscaReadOnly.SQL.Clear ;
  Connection.BuscaReadOnly.SQL.Add('Select sPoliza, sFianza From polizas  ' +
                                   'WHERE sContrato = :Contrato And dFechaInicio <= :FechaInicio And dFechaFinal >= :FechaFinal' ) ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
  Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
  Connection.BuscaReadOnly.Parameters.ParamByName('FechaInicio').DataType := ftDate ;
  Connection.BuscaReadOnly.Parameters.ParamByName('FechaInicio').Value := tdIdFecha.Date ;
  Connection.BuscaReadOnly.Parameters.ParamByName('FechaFinal').DataType := ftDate ;
  Connection.BuscaReadOnly.Parameters.ParamByName('FechaFinal').Value := tdIdFecha.Date ;
  Connection.BuscaReadOnly.Open ;
  If Connection.BuscaReadOnly.RecordCount > 0 Then
  Begin
      sPoliza := Connection.BuscaReadOnly.FieldValues['sPoliza'] ;
      sFianza := Connection.BuscaReadOnly.FieldValues['sFianza'] ;
  End 
  Else
  Begin
      sPoliza := 'SIN POLIZA DE SEGURO POR RESPONSABILIDAD CIVIL' ;
      sFianza := 'SIN FIANZA DE CUMPLIMIENTO'
  End ;
  
  StringPuesto.Add('SUPERINTENDENTE DE LA COMPAÑIA') ;
  StringNombre.Add(sSuperintendente) ;

  If rxGraficaProgramado.RecordCount > 0 then
      rxGraficaProgramado.EmptyTable   ;

  // Graficas fisico financiero ....
  If Connection.configuracion.FieldValues['lIncluyeGrafica'] = 'Si' Then
  Begin
      dAvanceAnterior := 0 ;
      dProgramadoAnterior := 0 ;

      Connection.BuscaReadOnly.Active := False ;
      Connection.BuscaReadOnly.SQL.Clear ;
      Connection.BuscaReadOnly.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes, Max(dAvancePonderadoGlobal) as dMensual From AvancesGlobales Where ' +
                                       'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Convenio').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Convenio').Value := sConvenio ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := '' ;
      Connection.BuscaReadOnly.Open ;
      While NOT Connection.BuscaReadOnly.Eof Do
      Begin
         If Connection.BuscaReadOnly.FieldValues['dMes'] <= 8 Then
             sFecha := '01/0' + Trim(IntToStr(Connection.BuscaReadOnly.FieldValues['dMes'] + 1))  + '/' + Connection.BuscaReadOnly.fieldByName('dAnno').AsString
         Else
             If Connection.BuscaReadOnly.FieldValues['dMes'] <= 11 Then
                 sFecha := '01/' + Trim(IntToStr(Connection.BuscaReadOnly.FieldValues['dMes'] + 1)) + '/' + Connection.BuscaReadOnly.fieldByName('dAnno').AsString
             Else
                 sFecha := '01/01/' + Trim(IntToStr(Connection.BuscaReadOnly.FieldValues['dAnno'] + 1)) ;

         sFecha := DateToStr(StrToDate(sFecha) - 1) ;

         If (MonthOf(tdIdFecha.Date) = Connection.BuscaReadOnly.FieldValues['dMes']) And (YearOf(tdIdFecha.Date) = Connection.BuscaReadOnly.FieldValues['dAnno']) Then
         Begin
            // Avance Diario ...
            Connection.BuscaReadOnly2.Active := False ;
            Connection.BuscaReadOnly2.SQL.Clear ;
            Connection.BuscaReadOnly2.SQL.Add('Select Max(dAvancePonderadoGlobal) as dMensual From AvancesGlobales Where ' +
                                             'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                                             'dIdFecha <= :Fecha' ) ;
            Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').DataType := ftString ;
            Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').Value := global_contrato ;
            Connection.BuscaReadOnly2.Parameters.ParamByName('Convenio').DataType := ftString ;
            Connection.BuscaReadOnly2.Parameters.ParamByName('Convenio').Value := sConvenio ;
            Connection.BuscaReadOnly2.Parameters.ParamByName('Orden').DataType := ftString ;
            Connection.BuscaReadOnly2.Parameters.ParamByName('Orden').Value := '' ;
            Connection.BuscaReadOnly2.Parameters.ParamByName('Fecha').DataType := ftDate ;
            Connection.BuscaReadOnly2.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
            Connection.BuscaReadOnly2.Open ;
            If Connection.BuscaReadOnly2.RecordCount > 0 Then
            Begin
               If rxGraficaProgramado.Locate('dFecha', tdIdFecha.Date , [loPartialKey]) Then
                   rxGraficaProgramado.Edit
               Else
                   rxGraficaProgramado.Append ;
                   rxGraficaProgramado.FieldValues['sDescripcion'] := global_contrato ;
                   rxGraficaProgramado.FieldValues['dFecha'] := tdIdFecha.Date ;
                   rxGraficaProgramado.FieldValues['dProgramadoDiario'] := Connection.BuscaReadOnly2.FieldValues['dMensual'] ;
                   rxGraficaProgramado.FieldValues['dProgramado'] := Connection.BuscaReadOnly2.FieldValues['dMensual'] ;

                   Connection.BuscaReadOnly2.Active := False ;
                   Connection.BuscaReadOnly2.SQL.Clear ;
                   Connection.BuscaReadOnly2.SQL.Add('Select Sum(dAvance) as dMensual From AvancesGlobalesxOrden Where ' +
                                                     'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By sContrato' ) ;
                   Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').DataType := ftString ;
                   Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').Value := global_contrato ;
                   Connection.BuscaReadOnly2.Parameters.ParamByName('Convenio').DataType := ftString ;
                   Connection.BuscaReadOnly2.Parameters.ParamByName('Convenio').Value := sConvenio ;
                   Connection.BuscaReadOnly2.Parameters.ParamByName('Orden').DataType := ftString ;
                   Connection.BuscaReadOnly2.Parameters.ParamByName('Orden').Value := '' ;
                   Connection.BuscaReadOnly2.Parameters.ParamByName('Fecha').DataType := ftDate ;
                   Connection.BuscaReadOnly2.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
                   Connection.BuscaReadOnly2.Open ;
                   If Connection.BuscaReadOnly.RecordCount > 0 Then
                       rxGraficaProgramado.FieldValues['dReal'] := Connection.BuscaReadOnly2.FieldValues['dMensual'] ;
                   rxGraficaProgramado.Post ;
            End ;
         End ;
         If rxGraficaProgramado.Locate('dFecha', sFecha , [loPartialKey]) Then
             rxGraficaProgramado.Edit
         Else
             rxGraficaProgramado.Append ;
         rxGraficaProgramado.FieldValues['sDescripcion'] := global_contrato ;
         rxGraficaProgramado.FieldValues['dFecha'] := sFecha ;
         rxGraficaProgramado.FieldValues['dProgramado'] := Connection.BuscaReadOnly.FieldValues['dMensual'] ;
         rxGraficaProgramado.Post ;
         Connection.BuscaReadOnly.Next
      End ;

      // Avance Fisico ...
      sFecha := '01/' + Trim(IntToStr(MonthOf(tdIdFecha.Date))) + '/' + Trim(IntToStr(YearOf(tdIdFecha.Date))) ;
      Connection.BuscaReadOnly.Active := False ;
      Connection.BuscaReadOnly.SQL.Clear ;
      Connection.BuscaReadOnly.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes From AvancesGlobalesxOrden Where ' +
                                       'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By Year(dIdFecha), month(dIdFecha)' ) ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Convenio').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Convenio').Value := sConvenio ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := '' ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := StrToDate(sFecha) - 1 ;
      Connection.BuscaReadOnly.Open ;
      While NOT Connection.BuscaReadOnly.Eof Do
      Begin
          If Connection.BuscaReadOnly.FieldValues['dMes'] <= 8 Then
             sFecha := '01/0' + Trim(IntToStr(Connection.BuscaReadOnly.FieldValues['dMes'] + 1))  + '/' + Connection.BuscaReadOnly.fieldByName('dAnno').AsString
          Else
             If Connection.BuscaReadOnly.FieldValues['dMes'] <= 11 Then
                 sFecha := '01/' + Trim(IntToStr(Connection.BuscaReadOnly.FieldValues['dMes'] + 1)) + '/' + Connection.BuscaReadOnly.fieldByName('dAnno').AsString
             Else
                 sFecha := '01/01/' + Trim(IntToStr(Connection.BuscaReadOnly.FieldValues['dAnno'] + 1)) ;
          sFecha := DateToStr(StrToDate(sFecha) - 1) ;
          Connection.BuscaReadOnly2.Active := False ;
          Connection.BuscaReadOnly2.SQL.Clear ;
          Connection.BuscaReadOnly2.SQL.Add('Select Sum(dAvance) as dMensual From AvancesGlobalesxOrden Where ' +
                                            'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By sContrato' ) ;
          Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').DataType := ftString ;
          Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').Value := global_contrato ;
          Connection.BuscaReadOnly2.Parameters.ParamByName('Convenio').DataType := ftString ;
          Connection.BuscaReadOnly2.Parameters.ParamByName('Convenio').Value := sConvenio ;
          Connection.BuscaReadOnly2.Parameters.ParamByName('Orden').DataType := ftString ;
          Connection.BuscaReadOnly2.Parameters.ParamByName('Orden').Value := '' ;
          Connection.BuscaReadOnly2.Parameters.ParamByName('Fecha').DataType := ftDate ;
          Connection.BuscaReadOnly2.Parameters.ParamByName('Fecha').Value := StrToDate(sFecha) ;
          Connection.BuscaReadOnly2.Open ;
          If Connection.BuscaReadOnly.RecordCount > 0 Then
          Begin
              If rxGraficaProgramado.Locate('dFecha', sFecha, [loPartialKey]) Then
                  rxGraficaProgramado.Edit
              Else
                  rxGraficaProgramado.Append ;
              rxGraficaProgramado.FieldValues['sDescripcion'] := global_contrato ;
              rxGraficaProgramado.FieldValues['dFecha'] := sFecha ;
              rxGraficaProgramado.FieldValues['dReal'] := Connection.BuscaReadOnly2.FieldValues['dMensual'] ;
              rxGraficaProgramado.Post ;
         End ;
         Connection.BuscaReadOnly.Next
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

  frxGerencial.LoadFromFile(global_files + 'SistesisGerencial.fr3') ;
  frxGerencial.ShowReport
end;

procedure TfrmSistesisGerencial.frxGerencialGetValue(const VarName: String;
  var Value: Variant);
begin
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

procedure TfrmSistesisGerencial.btnEditClick(Sender: TObject);
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

procedure TfrmSistesisGerencial.btnNewClick(Sender: TObject);
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

procedure TfrmSistesisGerencial.btnCancelClick(Sender: TObject);
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

procedure TfrmSistesisGerencial.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        gbGerencial.SetFocus 
end;

procedure TfrmSistesisGerencial.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_Entrada
end;

procedure TfrmSistesisGerencial.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salida
end;

end.
