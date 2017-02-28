unit frm_SintesisGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, frm_barra, Grids, DBGrids, ComCtrls, ImgList, frm_connection,
  DB, RXDBCtrl, global, Newpanel, Buttons, RxMemDS, frxClass,
  frxDBSet, utilerias, DateUtils, DBCtrls, LabelButton, ExtCtrls, jpeg,
  Menus, ExtDlgs, ZAbstractRODataset, ZDataset, ZAbstractDataset, masUtilerias,
  sSkinProvider, UnitExcepciones, udbgrid;

type
  TfrmSintesisGerencial = class(TForm)
    Panel: TImageList;
    gbGerencial: tNewGroupBox;
    PanelPrincipal1: TListView;
    Label7: TLabel;
    tdIdFecha: TDateTimePicker;
    btnPrinter: TBitBtn;
    gpProgramados: TGroupBox;
    gbProgramados: TGroupBox;
    Grid_Programados: TRxDBGrid;
    SaveImage: TSaveDialog;
    gpAlbum: TGroupBox;
    GroupBox2: TGroupBox;
    bImagen: TImage;
    grVisor: tNewGroupBox;
    GroupBox3: TGroupBox;
    ImgSintesis: TImage;
    btnVNext: TBitBtn;
    btnVPrevious: TBitBtn;
    btnVeof: TBitBtn;
    btnVTop: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    tdFechaReporte: TDateTimePicker;
    tsNumeroReporte: TEdit;
    btnSelect: TBitBtn;
    btnExit: TBitBtn;
    btnCopiar: TBitBtn;
    btnDelete: TBitBtn;
    gHistorico: tNewGroupBox;
    Grid_Sintesis: TDBGrid;
    btnSeleccionar: TBitBtn;
    pSintesis: TPopupMenu;
    Historico1: TMenuItem;
    gpProblematicaAcciones: TGroupBox;
    gpAcciones: TGroupBox;
    tmAcciones: TMemo;
    gpProblematica: TGroupBox;
    tmProblematica: TMemo;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnNew: TBitBtn;
    btnEdit: TBitBtn;
    OpenPicture: TOpenPictureDialog;
    dsAvances: TDataSource;
    dsSintesis: TDataSource;
    tmDescripcion: TMemo;
    btnNext: TBitBtn;
    btnPrevious: TBitBtn;
    btnEof: TBitBtn;
    btnTop: TBitBtn;
    btnSaveImage: TBitBtn;
    btnEliminar: TBitBtn;
    btnGrabar: TBitBtn;
    btnExaminar: TBitBtn;
    btnCancelar: TBitBtn;
    btnEditar: TBitBtn;
    irecord: TLabel;
    initAvances: TPopupMenu;
    InitAvFIFI: TMenuItem;
    btnPrinter2: TBitBtn;
    frxSintesisGerencial: TfrxReport;
    QrySintesisFotografico: TZReadOnlyQuery;
    QryImgDia: TZReadOnlyQuery;
    qryGerencial: TZReadOnlyQuery;
    QrySintesis: TZReadOnlyQuery;
    QryFisicoProgramado: TZQuery;
    QryFisicoProgramadosContrato: TStringField;
    QryFisicoProgramadodIdFecha: TDateField;
    QryFisicoProgramadodFecha: TDateField;
    QryFisicoProgramadodProgramadoFisico: TFloatField;
    QryFisicoProgramadodProgramadoFinanciero: TFloatField;
    QryFisicoProgramadodRealFisico: TFloatField;
    QryFisicoProgramadodRealFinanciero: TFloatField;
    sSkinProvider1: TsSkinProvider;
    PanelPrincipal: TListView;
    procedure PanelPrincipal1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxSintesisGerencialGetValue(const VarName: String;
      var Value: Variant);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure Registra_Avances ;
    procedure btnSaveImageClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnTopClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnEofClick(Sender: TObject);
    procedure QryImgDiaAfterScroll(DataSet: TDataSet);
    procedure tdFechaReporteChange(Sender: TObject);
    procedure tdFechaReporteEnter(Sender: TObject);
    procedure tdFechaReporteExit(Sender: TObject);
    procedure btnExaminarClick(Sender: TObject);
    procedure btnVeofClick(Sender: TObject);
    procedure btnVNextClick(Sender: TObject);
    procedure btnVPreviousClick(Sender: TObject);
    procedure btnVTopClick(Sender: TObject);
    procedure QrySintesisFotograficoAfterScroll(DataSet: TDataSet);
    procedure btnExitClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure grVisorExit(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure qryGerencialAfterScroll(DataSet: TDataSet);
    procedure gHistoricoExit(Sender: TObject);
    procedure Historico1Click(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure procDeleteAll ;
    procedure bImagenClick(Sender: TObject);
    procedure QryFisicoProgramadoBeforePost(DataSet: TDataSet);
    procedure InitAvFIFIClick(Sender: TObject);
    procedure btnPrinter2Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure Grid_ProgramadosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ProgramadosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ProgramadosTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSintesisGerencial: TfrmSintesisGerencial;
  lExiste            : Boolean ;
  sConvenio        : String ;
  StringPuesto: TStrings;
  StringNombre: TStrings;
  UtGrid:TicDbGrid;
implementation

uses frmReporteDiarioGerencial;

{$R *.dfm}

procedure TfrmSintesisGerencial.Registra_Avances ;
var
    dMontoContrato : Currency ;
    sFecha : String ;
    dAvanceAnterior,
    dFisicoAnterior,
    dFinancieroAnterior  : Currency ;
    dPFisicoAnterior,
    dPFinancieroAnterior : Currency ;
begin
  try
    // Monto de Contrato
    Connection.qryBusca2.Active := False ;
    Connection.qryBusca2.SQL.Clear ;
    Connection.qryBusca2.SQL.Add('Select dMontoMN From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
    Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio ;
    Connection.qryBusca2.Open ;
    If Connection.qryBusca2.RecordCount > 0 then
        dMontoContrato := Connection.qryBusca2.FieldValues['dMontoMN']
    Else
        dMontoContrato := 0 ;

    // Actualiza Información ... QryProgramdo
    QryFisicoProgramado.Active := False ;
    QryFisicoProgramado.Open ;

    If QryFisicoProgramado.RecordCount = 0 Then
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes, Max(dAvancePonderadoGlobal) as dMensual From avancesglobales Where ' +
                                         'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
        Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.params.ParamByName('Convenio').Value := sConvenio ;
        Connection.qryBusca.params.ParamByName('Orden').DataType := ftString ;
        Connection.qryBusca.params.ParamByName('Orden').Value := '' ;
        Connection.qryBusca.Open ;
        While NOT Connection.qryBusca.Eof Do
        Begin
            sFecha := sfnFechaFinal(Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
            // Inicio registro de partidas ...
            QryFisicoProgramado.Append ;
            QryFisicoProgramado.FieldValues['sContrato'] := global_contrato ;
            QryFisicoProgramado.FieldValues['dIdFecha'] := tdIdFecha.Date ;
            QryFisicoProgramado.FieldValues['dFecha'] := sFecha ;
            QryFisicoProgramado.FieldValues['dProgramadoFisico'] := Connection.qryBusca.FieldValues['dMensual'] ;

            // Anexo Financiero Programado ...
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Sum(DEmn) as Programado From anexosmensuales ' +
                                         'Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha <= :Fecha Group By sContrato') ;
            Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca2.params.ParamByName('Convenio').Value := global_convenio ;
            Connection.qryBusca2.params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.params.ParamByName('Fecha').Value := sFecha ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
               dPFinancieroAnterior := Connection.qryBusca2.FieldValues['Programado']
            Else
               dPFinancieroAnterior := 0 ;

            // Anexo Financiero real  ...
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal from estimacionperiodo ' +
                                         'Where sContrato = :Contrato And lEstimado = "Si" and sIdTipoEstimacion = "N" and dFechaFinal <= :Fecha Group By sContrato' ) ;
            Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.params.ParamByName('Fecha').Value := sFecha ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
                dFinancieroAnterior := Connection.qryBusca2.FieldValues['dReal']
            Else
                dFinancieroAnterior := 0 ;
            QryFisicoProgramado.FieldValues['dRealFinanciero'] := dFinancieroAnterior ;
            QryFisicoProgramado.FieldValues['dProgramadoFinanciero'] := dPFinancieroAnterior ;
            QryFisicoProgramado.FieldValues['dRealFisico'] := 0 ;
            QryFisicoProgramado.Post ;
            Connection.qryBusca.Next
        End ;
    End ;

    // Actualiza Información ... QryFisico
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes, Sum(dAvance) as dMensual ' +
                                'From avancesglobalesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ' +
                                'Group By Year(dIdFecha), month(dIdFecha)' ) ;
    Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Convenio').Value := sConvenio ;
    Connection.qryBusca.params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Orden').Value := '' ;
    Connection.qryBusca.Open ;
    While NOT Connection.qryBusca.Eof Do
    Begin
        sFecha := sfnFechaFinal(Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
        // Inicio registro de partidas ...
        If QryFisicoProgramado.Locate('dFecha', StrToDate(sFecha), [loCaseInsensitive]) Then
              QryFisicoProgramado.Edit
        Else
        Begin
              QryFisicoProgramado.Append ;
              QryFisicoProgramado.FieldValues['sContrato'] := global_contrato ;
              QryFisicoProgramado.FieldValues['dIdFecha'] := tdIdFecha.Date ;
              QryFisicoProgramado.FieldValues['dFecha'] := sFecha ;
              QryFisicoProgramado.FieldValues['dProgramadoFisico'] := 0 ;
              QryFisicoProgramado.FieldValues['dProgramadoFinanciero'] := 0 ;
        End ;
        QryFisicoProgramado.FieldValues['dRealFisico'] := Connection.qryBusca.FieldValues['dMensual'] ;
        QryFisicoProgramado.Post ;
        Connection.qryBusca.Next
    End ;

    dPFisicoAnterior := 0 ;
    dPFinancieroAnterior := 0 ;
    dFisicoAnterior := 0 ;
    dFinancieroAnterior := 0 ;

    QryFisicoProgramado.First ;
    While NOT QryFisicoProgramado.Eof Do
    Begin
        dFisicoAnterior := dFisicoAnterior + QryFisicoProgramado.FieldValues['dRealFisico']  ;
        If QryFisicoProgramado.FieldValues['dRealFinanciero'] > dFinancieroAnterior Then
            dFinancieroAnterior := QryFisicoProgramado.FieldValues['dRealFinanciero'] ;
        If QryFisicoProgramado.FieldValues['dProgramadoFisico'] > dPFisicoAnterior Then
            dPFisicoAnterior := QryFisicoProgramado.FieldValues['dProgramadoFisico']  ;

        If QryFisicoProgramado.FieldValues['dProgramadoFinanciero'] > dPFinancieroAnterior Then
                dPFinancieroAnterior := QryFisicoProgramado.FieldValues['dProgramadoFinanciero'] ;

        QryFisicoProgramado.Edit ;
        QryFisicoProgramado.FieldValues['dProgramadoFisico'] := dPFisicoAnterior ;
        QryFisicoProgramado.FieldValues['dProgramadoFinanciero'] := dPFinancieroAnterior ;
        QryFisicoProgramado.FieldValues['dRealFisico'] := dFisicoAnterior ;
        QryFisicoProgramado.FieldValues['dRealFinanciero'] := dFinancieroAnterior ;
        QryFisicoProgramado.Post ;
        QryFisicoProgramado.Next
    End ;
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al registrar avances', 0);
    end;
  end;
end ;

procedure TfrmSintesisGerencial.PanelPrincipal1Click(Sender: TObject);
begin
    If PanelPrincipal.ItemIndex = 0 Then
    Begin
        gpProblematicaAcciones.Visible := True ;
        gpProgramados.Visible := False ;
        gpAlbum.Visible := False ;
        tmAcciones.SetFocus
    End ;

    If PanelPrincipal.ItemIndex = 1 Then
    Begin
        gpProblematicaAcciones.Visible := False ;
        gpProgramados.Visible := True ;
        gpAlbum.Visible := False ;
        Grid_Programados.SetFocus
    End ;

    If PanelPrincipal.ItemIndex = 2 Then
    Begin
        gpProblematicaAcciones.Visible := False ;
        gpProgramados.Visible := False ;
        gpAlbum.Visible := True ;
    End ;
end;

procedure TfrmSintesisGerencial.FormShow(Sender: TObject);
begin
    UtGrid:=TicdbGrid.create(grid_programados);
    tdIdFecha.Date := Date ;

    qryGerencial.Active := False ;
    qryGerencial.params.ParamByName('Contrato').DataType := ftString ;
    qryGerencial.params.ParamByName('Contrato').Value := global_contrato ;
    qryGerencial.params.ParamByName('Fecha').DataType := ftDate ;
    qryGerencial.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    qryGerencial.Open ;

    QrySintesis.Active := False ;
    QrySintesis.params.ParamByName('Contrato').DataType := ftString ;
    QrySintesis.params.ParamByName('Contrato').Value := global_contrato ;
    QrySintesis.Open ;

    gpProblematicaAcciones.Visible := True ;
    gpProgramados.Visible := False ;
    gpAlbum.Visible := False ;
    tdIdFecha.SetFocus
end;

procedure TfrmSintesisGerencial.tdIdFechaChange(Sender: TObject);
begin
    // Detecta el convenio vigente en la fecha seleccionada ...

    tmProblematica.Text := '' ;
    tmAcciones.Text := '' ;

    btnNew.Enabled := True ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    btnPrinter.Enabled := True ;
    btnPrinter2.Enabled := True ;
    btnCopiar.Enabled := True ;
    btnDelete.Enabled := True ;
    tmProblematica.Text := '' ;
    tmAcciones.Text := '' ;

    qryGerencial.Active := False ;
    qryGerencial.params.ParamByName('Contrato').DataType := ftString ;
    qryGerencial.params.ParamByName('Contrato').Value := global_contrato ;
    qryGerencial.params.ParamByName('Fecha').DataType := ftDate ;
    qryGerencial.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    qryGerencial.Open ;

    QryFisicoProgramado.Active := False ;
    QryFisicoProgramado.params.ParamByName('Contrato').DataType := ftString ;
    QryFisicoProgramado.params.ParamByName('Contrato').Value := global_contrato ;
    QryFisicoProgramado.params.ParamByName('Fecha').DataType := ftDate ;
    QryFisicoProgramado.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    QryFisicoProgramado.Open ;

    tmProblematica.ReadOnly := True ;
    tmAcciones.ReadOnly := True ;

    bImagen.Picture.Bitmap := Nil ;
    QrySintesisFotografico.Active := False ;
    QrySintesisFotografico.params.ParamByName('Contrato').DataType := ftString ;
    QrySintesisFotografico.params.ParamByName('Contrato').Value := global_contrato ;
    QrySintesisFotografico.params.ParamByName('Fecha').DataType := ftDate ;
    QrySintesisFotografico.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    QrySintesisFotografico.Open ;
    iRecord.Caption :=  '' ;
    If QrySintesisFotografico.RecordCount > 0 Then
        iRecord.Caption :=  IntToStr(QrySintesisFotografico.RecNo) + ' de ' + IntToStr(QrySintesisFotografico.RecordCount) + ' Imagenes';
end;

procedure TfrmSintesisGerencial.btnSaveClick(Sender: TObject);
begin
    If not lExiste Then
    Begin
        try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'INSERT INTO sintesis_comentarios (sContrato , dIdFecha, mProblematica, mAcciones)' +
                                          'VALUES (:Contrato, :Fecha, :Problematica, :Acciones)') ;
            connection.zCommand.params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.params.ParamByName('contrato').value := Global_Contrato ;
            connection.zCommand.params.ParamByName('fecha').DataType := ftDate ;
            connection.zCommand.params.ParamByName('fecha').value := tdIdFecha.Date  ;
            connection.zCommand.params.ParamByName('Problematica').DataType := ftMemo ;
            connection.zCommand.params.ParamByName('Problematica').value := tmProblematica.Text ;
            connection.zCommand.params.ParamByName('Acciones').DataType := ftMemo ;
            connection.zCommand.params.ParamByName('Acciones').value := tmAcciones.Text ;
            connection.zCommand.ExecSQL ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al salvar nuevo registro', 0);
            end;
        end;
    End
    Else
    Begin
        try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'UPDATE sintesis_comentarios SET mProblematica = :Problematica, mAcciones = :Acciones ' +
                                          'where sContrato = :contrato And dIdFecha = :fecha') ;
            connection.zCommand.params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.params.ParamByName('contrato').value := Global_Contrato ;
            connection.zCommand.params.ParamByName('fecha').DataType := ftDate ;
            connection.zCommand.params.ParamByName('fecha').value := tdIdFecha.Date  ;
            connection.zCommand.params.ParamByName('Problematica').DataType := ftMemo ;
            connection.zCommand.params.ParamByName('Problematica').value := tmProblematica.Text ;
            connection.zCommand.params.ParamByName('Acciones').DataType := ftMemo ;
            connection.zCommand.params.ParamByName('Acciones').value := tmAcciones.Text ;
            connection.zCommand.ExecSQL ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al salvar cambios en registro', 0);
            end;
        end;
    End ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := True ;
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    btnPrinter.Enabled := True ;
    btnPrinter2.Enabled := True ;
    btnCopiar.Enabled := False ;
    btnDelete.Enabled := True ;
    tmProblematica.ReadOnly := True ;
    tmAcciones.ReadOnly := True ;
    qryGerencial.Active := False ;
    qryGerencial.Open ;
end;

procedure TfrmSintesisGerencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    UtGrid.Destroy;
    action := caFree ;
end;

procedure TfrmSintesisGerencial.btnPrinterClick(Sender: TObject);
begin
  try
    StringNombre := TStringList.Create;
    StringNombre.Clear ;
    StringPuesto := TStringList.Create;
    StringPuesto.Clear ;

    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sNumeroOrden From reportediario Where sContrato = :contrato And dIdFecha = :Fecha') ;
    Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Open ;

    While NOT Connection.qryBusca.Eof Do
    Begin
        rDiarioFirmas (global_contrato , Connection.qryBusca.FieldValues['sNumeroOrden'] , 'A',tdIdFecha.Date , frmSintesisGerencial ) ;
        If (StringPuesto.Text = '') then
        Begin
            StringPuesto.Add('RESIDENTE DE OBRA') ;
            StringNombre.Add(sResidente) ;
            StringPuesto.Add('SUPERVISOR DE OBRA EN TIERRA') ;
            StringNombre.Add(sSupervisorTierra) ;
        End ;
        StringPuesto.Add('SUPERVISOR DE OBRA DE LA ORDEN ' + Connection.qryBusca.FieldValues['sNumeroOrden']) ;
        StringNombre.Add(sSupervisor) ;
        Connection.qryBusca.Next ;
    End ;
    StringPuesto.Add('SUPERINTENDENTE DE LA COMPAÑIA') ;
    StringNombre.Add(sSuperintendente) ;

    ProcSintesisGerencial (global_contrato, tdIdFecha.Date, frmSintesisGerencial, frxSintesisGerencial.OnGetValue, 'Semanal' ) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al imprimir formato semanal', 0);
    end;
  end;
end;

procedure TfrmSintesisGerencial.frxSintesisGerencialGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'MONTO_MODIFICADO') = 0 then
      Value := dMontoModificado ;

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

end;

procedure TfrmSintesisGerencial.btnEditClick(Sender: TObject);
begin
    lExiste := True ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := True ;
    btnCancel.Enabled := True ;
    btnPrinter.Enabled := False ;
    btnPrinter2.Enabled := False ;
    btnCopiar.Enabled := False ;
    btnDelete.Enabled := False ;
    tmProblematica.ReadOnly := False ;
    tmAcciones.ReadOnly := False ;
    tmProblematica.SetFocus
end;

procedure TfrmSintesisGerencial.btnNewClick(Sender: TObject);
begin
    lExiste := False ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := True ;
    btnCancel.Enabled := True ;
    btnPrinter.Enabled := False ;
    btnPrinter2.Enabled := False ;
    btnCopiar.Enabled := False ;
    btnDelete.Enabled := False ;
    tmProblematica.ReadOnly := False ;
    tmAcciones.ReadOnly := False ;
    tmProblematica.SetFocus
end;

procedure TfrmSintesisGerencial.btnCancelClick(Sender: TObject);
begin
    tmProblematica.ReadOnly := True ;
    tmAcciones.ReadOnly := True ;
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    btnPrinter.Enabled := True ;
    btnPrinter2.Enabled := True ;
    btnDelete.Enabled := True ;
    btnCopiar.Enabled := True ;
    If lExiste Then
    begin
        btnNew.Enabled := False ;
        btnEdit.Enabled := True ;
    End
    Else
    begin
        btnNew.Enabled := True ;
        btnEdit.Enabled := False ;
    end
end;

procedure TfrmSintesisGerencial.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        gbGerencial.SetFocus
end;

procedure TfrmSintesisGerencial.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_Entrada
end;

procedure TfrmSintesisGerencial.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salida ;
    qryGerencial.Active := False ;
    qryGerencial.params.ParamByName('Contrato').DataType := ftString ;
    qryGerencial.params.ParamByName('Contrato').Value := global_contrato ;
    qryGerencial.params.ParamByName('Fecha').DataType := ftDate ;
    qryGerencial.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    qryGerencial.Open ;

    QryFisicoProgramado.Active := False ;
    QryFisicoProgramado.params.ParamByName('Contrato').DataType := ftString ;
    QryFisicoProgramado.params.ParamByName('Contrato').Value := global_contrato ;
    QryFisicoProgramado.params.ParamByName('Fecha').DataType := ftDate ;
    QryFisicoProgramado.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    QryFisicoProgramado.Open ;

    // Detecta el convenio vigente en la fecha seleccionada ...
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sIdConvenio From reportediario Where sContrato = :Contrato And dIdFecha = :Fecha') ;
    Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
         sConvenio := Connection.qryBusca.FieldValues['sIdConvenio']
    Else
         sConvenio := global_convenio ;
    tmProblematica.ReadOnly := True ;
    tmAcciones.ReadOnly := True ;
    bImagen.Picture.Bitmap := Nil ;
    QrySintesisFotografico.Active := False ;
    QrySintesisFotografico.params.ParamByName('Contrato').DataType := ftString ;
    QrySintesisFotografico.params.ParamByName('Contrato').Value := global_contrato ;
    QrySintesisFotografico.params.ParamByName('Fecha').DataType := ftDate ;
    QrySintesisFotografico.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    QrySintesisFotografico.Open ;
    iRecord.Caption :=  '' ;
    If QrySintesisFotografico.RecordCount > 0 Then
        iRecord.Caption :=  IntToStr(QrySintesisFotografico.RecNo) + ' de ' + IntToStr(QrySintesisFotografico.RecordCount) + ' Imagenes';
end;

procedure TfrmSintesisGerencial.btnSaveImageClick(Sender: TObject);
begin
      If QrySintesisFotografico.RecordCount > 0 Then
      Begin
          SaveImage.Title := 'Respaldar Imagen';
          SaveImage.FileName := 'Sintesis_Gerencial' ;
          If SaveImage.Execute Then
              bImagen.Picture.SaveToFile(SaveImage.FileName)
      End
end;

procedure TfrmSintesisGerencial.btnEliminarClick(Sender: TObject);
begin
    If QrySintesisFotografico.RecordCount > 0 Then
    Begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete From sintesis_fotografico Where sContrato = :Contrato And dIdFecha = :Fecha And iImagen = :Item') ;
        connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
        connection.zCommand.params.ParamByName('Fecha').Value := QrySintesisFotografico.FieldValues['dIdFecha'] ;
        connection.zCommand.params.ParamByName('Item').DataType := ftInteger ;
        connection.zCommand.params.ParamByName('Item').Value := QrySintesisFotografico.FieldValues['iImagen'] ;
        connection.zCommand.ExecSQL ;
        bImagen.Picture.Bitmap := Nil ;
        QrySintesisFotografico.Active := False ;
        QrySintesisFotografico.Open ;
        If QrySintesisFotografico.RecordCount > 0 Then
           btnEliminar.Enabled := True
        Else
           btnEliminar.Enabled := False ;
    End
end;

procedure TfrmSintesisGerencial.btnTopClick(Sender: TObject);
begin
  btnPrevious.Enabled := False ;
  btnTop.Enabled := False ;
  btnNext.Enabled := True ;
  btneof.Enabled := True ;
  If QrySintesisFotografico.RecordCount > 0 Then
      QrySintesisFotografico.First ;
end;

procedure TfrmSintesisGerencial.btnPreviousClick(Sender: TObject);
begin
  btnNext.Enabled := True ;
  btneof.Enabled := True ;
  If NOT QrySintesisFotografico.Bof Then
      QrySintesisFotografico.Prior
  Else
  Begin
      btnPrevious.Enabled := False ;
      btnTop.Enabled := False ;
  End

end;

procedure TfrmSintesisGerencial.btnNextClick(Sender: TObject);
begin
  btnPrevious.Enabled := True ;
  btnTop.Enabled := True ;
  If NOT QrySintesisFotografico.eof Then
      QrySintesisFotografico.Next
  Else
  begin
      btnNext.Enabled := False ;
      btneof.Enabled := False
  End ;

end;

procedure TfrmSintesisGerencial.btnEofClick(Sender: TObject);
begin


  btnPrevious.Enabled := True ;
  btnTop.Enabled := True ;
  btnNext.Enabled := False ;
  btneof.Enabled := False ;
  If QrySintesisFotografico.RecordCount > 0 Then
      QrySintesisFotografico.Last

end;

procedure TfrmSintesisGerencial.QryImgDiaAfterScroll(DataSet: TDataSet);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    ImgSintesis.Picture.LoadFromFile('') ;
    If QryImgDia.RecordCount > 0 then
    Begin
        tsNumeroReporte.Text := QryImgDia.FieldValues['sNumeroReporte'] ;
        BlobField := QryImgDia.FieldByName('bImagen') ;
        BS := QryImgDia.CreateBlobStream ( BlobField , bmRead ) ;
        If bs.Size > 1 Then
        Begin
            try
                Pic:=TJpegImage.Create;
                try
                    Pic.LoadFromStream(bS);
                    ImgSintesis.Picture.Graphic := Pic;
                finally
                    Pic.Free;
                end;
            finally
                bS.Free
            End
        End 
    End
end;

procedure TfrmSintesisGerencial.tdFechaReporteChange(Sender: TObject);
begin
    tsNumeroReporte.Text := '' ;
    ImgSintesis.Picture.Bitmap := Nil ;
    QryImgDia.Active := False ;
    QryImgDia.params.ParamByName('Contrato').DataType := ftString ;
    QryImgDia.params.ParamByName('Contrato').Value := global_contrato ;
    QryImgDia.params.ParamByName('Fecha').DataType := ftDate ;
    QryImgDia.params.ParamByName('Fecha').Value := tdFechaReporte.Date ;
    QryImgDia.Open ;

    If QryImgDia.RecordCount > 0 Then
    Begin
        btnVNext.Enabled := True ;
        btnVeof.Enabled := True ;
        btnVPrevious.Enabled := False ;
        btnVTop.Enabled := False ;
    End
    Else
    Begin
        btnVNext.Enabled := False ;
        btnVeof.Enabled := False ;
        btnVPrevious.Enabled := False ;
        btnVTop.Enabled := False ;
    End
end;

procedure TfrmSintesisGerencial.tdFechaReporteEnter(Sender: TObject);
begin
    tdFechaReporte.Color := global_color_entrada
end;

procedure TfrmSintesisGerencial.tdFechaReporteExit(Sender: TObject);
begin
    tdFechaReporte.Color := global_color_salida
end;

procedure TfrmSintesisGerencial.btnExaminarClick(Sender: TObject);
begin
    tdFechaReporte.Date := tdIdFecha.Date ;
    QryImgDia.Active := False ;
    QryImgDia.params.ParamByName('Contrato').DataType := ftString ;
    QryImgDia.params.ParamByName('Contrato').Value := global_contrato ;
    QryImgDia.params.ParamByName('Fecha').DataType := ftDate ;
    QryImgDia.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    QryImgDia.Open ;

    btnGrabar.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnSaveImage.Enabled := False ;
    btnExaminar.Enabled := False ;
    btnEditar.Enabled := False ;
    btnEliminar.Enabled := False ;
    grVisor.Visible := True ;
    tdFechaReporte.SetFocus
end;


procedure TfrmSintesisGerencial.btnVeofClick(Sender: TObject);
begin
  btnVPrevious.Enabled := True ;
  btnVTop.Enabled := True ;
  btnVNext.Enabled := False ;
  btnVeof.Enabled := False ;

  If QryImgDia.RecordCount > 0 Then
      QryImgDia.Last

end;

procedure TfrmSintesisGerencial.btnVNextClick(Sender: TObject);
begin
  btnVPrevious.Enabled := True ;
  btnVTop.Enabled := True ;
  If NOT QryImgDia.eof Then
      QryImgDia.Next
  Else
  begin
      btnVNext.Enabled := False ;
      btnVeof.Enabled := False
  End ;
end;

procedure TfrmSintesisGerencial.btnVPreviousClick(Sender: TObject);
begin
  btnVNext.Enabled := True ;
  btnVeof.Enabled := True ;
  If NOT QryImgDia.Bof Then
      QryImgDia.Prior
  Else
  Begin
      btnVPrevious.Enabled := False ;
      btnVTop.Enabled := False ;
  End
end;

procedure TfrmSintesisGerencial.btnVTopClick(Sender: TObject);
begin
  btnVPrevious.Enabled := False ;
  btnVTop.Enabled := False ;
  btnVNext.Enabled := True ;
  btnVeof.Enabled := True ;
  If QryImgDia.RecordCount > 0 Then
      QryImgDia.First ;
end;

procedure TfrmSintesisGerencial.QrySintesisFotograficoAfterScroll(
  DataSet: TDataSet);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
   bImagen.Picture.LoadFromFile('') ;
   tmDescripcion.Text := '' ;
   iRecord.Caption := '' ;
   If QrySintesisFotografico.RecordCount > 0 then
   Begin
        iRecord.Caption :=  IntToStr(QrySintesisFotografico.RecNo) + ' de ' + IntToStr(QrySintesisFotografico.RecordCount) + ' Imagenes';
        tmDescripcion.Text := QrySintesisFotografico.FieldValues['sDescripcion'] ;
        BlobField := QrySintesisFotografico.FieldByName('bImagen') ;
        BS := QrySintesisFotografico.CreateBlobStream ( BlobField , bmRead ) ;
        If bs.Size > 1 Then
        Begin
            try
                Pic:=TJpegImage.Create;
                try
                    Pic.LoadFromStream(bS);
                    bImagen.Picture.Graphic := Pic;
                finally
                    Pic.Free;
                end;
            finally
                bS.Free
            End
        End 
   End
end;

procedure TfrmSintesisGerencial.btnExitClick(Sender: TObject);
begin
    btnGrabar.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    If QrySintesisFotografico.RecordCount > 0 Then
    Begin
        btnEditar.Enabled := True ;
        btnEliminar.Enabled := True ;
        btnSaveImage.Enabled := True ;
    End ;
    grVisor.Visible := False ;
end;

procedure TfrmSintesisGerencial.btnSelectClick(Sender: TObject);
var
    iItem : Integer ;
begin
    If QryImgDia.RecordCount > 0 Then
    Begin
        iItem := 1 ;
        If QrySintesisFotografico.RecordCount > 0 Then
        Begin
            QrySintesisFotografico.Last ;
            iItem := QrySintesisFotografico.FieldValues['iImagen'] + 1;
        End ;
        try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Insert Into sintesis_fotografico (sContrato, dIdFecha, iImagen, bImagen, sDescripcion)' +
                                          'Values (:Contrato, :Fecha, :Item, :Imagen, :Descripcion)')  ;
            connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
            connection.zCommand.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
            connection.zCommand.params.ParamByName('Item').DataType := ftInteger ;
            connection.zCommand.params.ParamByName('Item').Value := iItem ;
            Connection.zcommand.params.ParamByName('Imagen').Value := QryImgDia.FieldValues['bImagen'] ;
            connection.zCommand.params.ParamByName('Descripcion').DataType := ftMemo ;
            connection.zCommand.params.ParamByName('Descripcion').Value :=  QryImgDia.FieldValues['sDescripcion'] ;
            connection.zCommand.ExecSQL ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al seleccionar sintesis_fotografico', 0);
            end;
        end;

        QrySintesisFotografico.Active := False ;
        QrySintesisFotografico.Open

    End
end;


procedure TfrmSintesisGerencial.tmDescripcionEnter(Sender: TObject);
begin
    tmDescripcion.Color := global_color_entrada
end;

procedure TfrmSintesisGerencial.tmDescripcionExit(Sender: TObject);
begin
    tmDescripcion.Color := global_color_salida
end;

procedure TfrmSintesisGerencial.btnGrabarClick(Sender: TObject);
begin
  If QrySintesisFotografico.RecordCount > 0 Then
  begin
      btnEditar.Enabled := True ;
      btnEliminar.Enabled := True ;
      btnSaveImage.Enabled := True ;
      connection.zCommand.Active := False ;
      try
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'Update sintesis_fotografico SET sDescripcion = :Descripcion ' +
                                        'Where sContrato = :contrato And dIdFecha = :Fecha And iImagen = :Item') ;
          connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
          connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
          connection.zCommand.params.ParamByName('Fecha').Value := QrySintesisFotografico.FieldValues['dIdFecha'] ;
          connection.zCommand.params.ParamByName('Item').DataType := ftInteger ;
          connection.zCommand.params.ParamByName('Item').Value := QrySintesisFotografico.FieldValues['iImagen'] ;
          connection.zCommand.params.ParamByName('Descripcion').DataType := ftMemo ;
          connection.zCommand.params.ParamByName('Descripcion').Value := tmDescripcion.Text ;
          connection.zCommand.ExecSQL ;
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al actualizar sintesis_fotografico', 0);
          end;
      end;
      QrySintesisFotografico.Active := False ;
      QrySintesisFotografico.Open
  End ;
  btnGrabar.Enabled := False ;
  btnCancelar.Enabled := False ;
  btnExaminar.Enabled := True ;
end;

procedure TfrmSintesisGerencial.btnCancelarClick(Sender: TObject);
begin
  btnGrabar.Enabled := False ;
  btnCancelar.Enabled := False ;
  btnExaminar.Enabled := True ;
  btnEditar.Enabled := True ;
  btnEliminar.Enabled := True ;
  btnSaveImage.Enabled := True ;
end;

procedure TfrmSintesisGerencial.grVisorExit(Sender: TObject);
begin
  btnExit.Click 
end;

procedure TfrmSintesisGerencial.btnCopiarClick(Sender: TObject);
Var
    Registro   : Integer ;
    sParametro,
    sFecha, Cadena     : String ;
    dAcumuladoProgramado : Currency ;
    dAvanceAnterior,
    dProgramadoAnterior  : Currency ;
    dFisicoAnterior,
    dFinancieroAnterior,
    dMontoContrato       : Currency ;
begin
  try
    If MessageDlg('Desea insertar en la fecha seleccionada toda el contenido de la ultima sintesis gerencial existente? (se borrara todo el contenido de la sintesis en la fecha seleccionada)', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
        ProcDeleteAll ;
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Distinct dIdFecha From sintesis_av_fisico_programado ' +
                                    'Where sContrato = :Contrato And dIdFecha < :Fecha Order By dIdFecha DESC') ;
        Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
        Begin
            // Ahora se insertan los comentarios
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select * From sintesis_comentarios Where sContrato = :contrato And dIdFecha = :Fecha') ;
            Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.params.ParamByName('Fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'] ;
            Connection.qryBusca2.Open ;
            If Connection.QryBusca2.RecordCount > 0 Then
            Begin
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zCommand.SQL.Add (  FuncSql(Connection.qryBusca2, 'sintesis_comentarios')) ;
                  cadena :=( FuncSql(Connection.qryBusca2, 'sintesis_comentarios')) ;
              for Registro := 0 to Connection.qryBusca2.FieldCount - 1 do
                 Begin
                   sParametro := 'Param' + Trim(IntToStr(Registro + 1)) ;
                   Connection.zCommand.params.ParamByName(sParametro).DataType := Connection.qryBusca2.Fields[Registro].DataType ;
                 If Registro = 1 Then
                    Connection.zCommand.params.ParamByName(sParametro).Value := tdIdFecha.Date
                 Else
                    Connection.zCommand.params.ParamByName(sParametro).Value := Connection.qryBusca2.Fields[Registro].Value
                 End ;
                 connection.zCommand.ExecSQL ;
             end
             Else
               MessageDlg('No Existen Comentarios de ese dia',mtInformation, [mbOk],0) ;

            // Ahora se insertan las fotografias
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select * From sintesis_fotografico Where sContrato = :contrato And dIdFecha = :Fecha') ;
            Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.params.ParamByName('Fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'] ;
            Connection.qryBusca2.Open ;
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( FuncSql(Connection.qryBusca2, 'sintesis_fotografico')) ;
            While NOT Connection.qryBusca2.Eof Do
            Begin
                for Registro := 0 to Connection.qryBusca2.FieldCount - 1 do
                Begin
                    sParametro := 'Param' + Trim(IntToStr(Registro + 1)) ;
                    Connection.zCommand.params.ParamByName(sParametro).DataType := Connection.qryBusca2.Fields[Registro].DataType ;
                    If Registro = 1 Then
                        Connection.zCommand.params.ParamByName(sParametro).Value := tdIdFecha.Date
                    Else
                        Connection.zCommand.params.ParamByName(sParametro).Value := Connection.qryBusca2.Fields[Registro].Value
                End ;
                connection.zCommand.ExecSQL ;
                Connection.qryBusca2.Next
            End ;

            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select dMontoMN From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
            Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca2.params.ParamByName('Convenio').Value := global_convenio ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 then
                dMontoContrato := Connection.qryBusca2.FieldValues['dMontoMN']
            Else
                dMontoContrato := 0 ;

            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select * From sintesis_av_fisico_programado Where sContrato = :contrato And dIdFecha = :Fecha') ;
            Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.params.ParamByName('Fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'] ;
            Connection.qryBusca2.Open ;
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( FuncSql(Connection.qryBusca2, 'sintesis_av_fisico_programado')) ;
            While NOT Connection.qryBusca2.Eof Do
            Begin
                for Registro := 0 to Connection.qryBusca2.FieldCount - 1 do
                Begin
                    sParametro := 'Param' + Trim(IntToStr(Registro + 1)) ;
                    Connection.zCommand.params.ParamByName(sParametro).DataType := Connection.qryBusca2.Fields[Registro].DataType ;
                    If Registro = 1 Then
                        Connection.zCommand.params.ParamByName(sParametro).Value := tdIdFecha.Date
                    Else
                        Connection.zCommand.params.ParamByName(sParametro).Value := Connection.qryBusca2.Fields[Registro].Value
                End ;
                connection.zCommand.ExecSQL ;
                Connection.qryBusca2.Next
            End ;
        End
        Else
             If MessageDlg('No se encontro registro alguno de una sintesis anterior, desea agregar los avances fisicos actuales del contrato?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                Registra_Avances ;

        qryGerencial.Active := False ;
        qryGerencial.Open ;
        QrySintesisFotografico.Active := False ;
        QrySintesisFotografico.Open ;
        QryFisicoProgramado.Active := False ;
        QryFisicoProgramado.Open ;
    End ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al Copiar de la Sintesis Anterior', 0);
    end;
  end;
end;

procedure TfrmSintesisGerencial.btnDeleteClick(Sender: TObject);
begin
  try
    If MessageDlg('Desea eliminar todos los registros de la sintesis gerencial en la fecha seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        ProcDeleteAll ;
    end;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al Eliminar Sintesis Gerencial', 0);
    end;
  end;
end ;

procedure TfrmSintesisGerencial.procDeleteAll ;
begin
    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'Delete From sintesis_comentarios Where sContrato = :Contrato And dIdFecha = :Fecha') ;
    connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
    connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
    connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
    connection.zCommand.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    connection.zCommand.ExecSQL ;

    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'Delete From sintesis_fotografico Where sContrato = :Contrato And dIdFecha = :Fecha') ;
    connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
    connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
    connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
    connection.zCommand.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    connection.zCommand.ExecSQL ;

    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add (  'Delete From sintesis_av_fisico_programado Where sContrato = :Contrato And dIdFecha = :Fecha') ;
    connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
    connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
    connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
    connection.zCommand.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    connection.zCommand.ExecSQL ;
    qryGerencial.Active := False ;
    qryGerencial.Open ;
    QrySintesisFotografico.Active := False ;
    QrySintesisFotografico.Open ;
    QryFisicoProgramado.Active := False ;
    QryFisicoProgramado.Open ;
end ;


procedure TfrmSintesisGerencial.qryGerencialAfterScroll(DataSet: TDataSet);
begin
    If qryGerencial.RecordCount > 0 Then
    Begin
        tmProblematica.Text := qryGerencial.FieldValues['mProblematica'] ;
        tmAcciones.Text := qryGerencial.FieldValues['mAcciones'] ;
        btnNew.Enabled := False ;
        btnEdit.Enabled := True ;
        btnSave.Enabled := False ;
        btnCancel.Enabled := False ;
        btnPrinter.Enabled := True ;
        btnPrinter2.Enabled := True ;
        btnCopiar.Enabled := True ;
        btnDelete.Enabled := True ;
    End
end;

procedure TfrmSintesisGerencial.gHistoricoExit(Sender: TObject);
begin
    gHistorico.Visible := False
end;

procedure TfrmSintesisGerencial.Grid_ProgramadosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmSintesisGerencial.Grid_ProgramadosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmSintesisGerencial.Grid_ProgramadosTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmSintesisGerencial.Historico1Click(Sender: TObject);
begin
    QrySintesis.Active := False ;
    Qrysintesis.Open ;
    gHistorico.Visible := True
end;

procedure TfrmSintesisGerencial.btnSeleccionarClick(Sender: TObject);
begin
    If QrySintesis.RecordCount > 0 Then
        tdIdFecha.Date := QrySintesis.FieldValues['dIdFecha'] ;
    gHistorico.Visible := False ;
    tdIdFecha.SetFocus
end;

procedure TfrmSintesisGerencial.bImagenClick(Sender: TObject);
var
    SavePlace   : TBookmark;
begin
    If QrySintesisFotografico.RecordCount > 0 Then
    Begin
        OpenPicture.Title := 'Inserta Imagen';
        If OpenPicture.Execute then
            try
                bImagen.Picture.LoadFromFile(OpenPicture.FileName) ;
                If bImagen.Picture <> nil Then
                begin
                    SavePlace := QrySintesisFotografico.GetBookmark ;
                    connection.zCommand.Active := False ;
                    connection.zCommand.SQL.Clear ;
                    connection.zCommand.SQL.Add ( 'Update sintesis_fotografico SET bImagen = :Imagen Where (sContrato = :Contrato And dIdFecha = :Fecha And iImagen = :Item)') ;
                    connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
                    connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
                    connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
                    connection.zCommand.params.ParamByName('Fecha').Value := QrySintesisFotografico.FieldValues['dIdFecha'] ;
                    connection.zCommand.params.ParamByName('Item').DataType := ftInteger ;
                    connection.zCommand.params.ParamByName('Item').Value := QrySintesisFotografico.FieldValues['iImagen'] ;
                    Connection.zCommand.params.ParamByName('Imagen').LoadFromFile(OpenPicture.FileName, ftBlob) ;
                    connection.zCommand.ExecSQL ;
                    QrySintesisFotografico.Active := False ;
                    QrysintesisFotografico.Open ;
                    QrySintesisFotografico.GotoBookmark(SavePlace);
                end ;
            except
                on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al actualizar imagen', 0);
                end;
            end
    end
end;

procedure TfrmSintesisGerencial.QryFisicoProgramadoBeforePost(
  DataSet: TDataSet);
begin
    QryFisicoProgramado.FieldValues['sContrato'] := global_contrato ;
    QryFisicoProgramado.FieldValues['dIdFecha'] := tdIdFecha.Date   
end;

procedure TfrmSintesisGerencial.InitAvFIFIClick(Sender: TObject);
begin
    try
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete From sintesis_av_fisico_programado Where sContrato = :Contrato And dIdFecha = :Fecha') ;
        connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
        connection.zCommand.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        connection.zCommand.ExecSQL ;
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al borrar imagen', 0);
        end;
    end;
    Registra_Avances ;
    QryFisicoProgramado.Active := False ;
    QryFisicoProgramado.Open
end;

procedure TfrmSintesisGerencial.btnPrinter2Click(Sender: TObject);
begin
  try
    StringNombre := TStringList.Create;
    StringNombre.Clear ;
    StringPuesto := TStringList.Create;
    StringPuesto.Clear ;

    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sNumeroOrden From reportediario Where sContrato = :contrato And dIdFecha = :Fecha') ;
    Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Open ;

    While NOT Connection.qryBusca.Eof Do
    Begin
        rDiarioFirmas (global_contrato , Connection.qryBusca.FieldValues['sNumeroOrden'] , 'A', tdIdFecha.Date , frmSintesisGerencial ) ;
        If (StringPuesto.Text = '') then
        Begin
            StringPuesto.Add('RESIDENTE DE OBRA') ;
            StringNombre.Add(sResidente) ;
            StringPuesto.Add('SUPERVISOR DE OBRA EN TIERRA') ;
            StringNombre.Add(sSupervisorTierra) ;
        End ;
        StringPuesto.Add('SUPERVISOR DE OBRA DE LA ORDEN ' + Connection.qryBusca.FieldValues['sNumeroOrden']) ;
        StringNombre.Add(sSupervisor) ;
        Connection.qryBusca.Next ;
    End ;
    StringPuesto.Add('SUPERINTENDENTE DE LA COMPAÑIA') ;
    StringNombre.Add(sSuperintendente) ;

    ProcSintesisGerencial (global_contrato, tdIdFecha.Date, frmSintesisGerencial, frxSintesisGerencial.OnGetValue, 'Mensual' ) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sintesis Gerencial', 'Al imprimir Formato Mensual', 0);
    end;
  end;
end;

procedure TfrmSintesisGerencial.btnEditarClick(Sender: TObject);
begin
    btnGrabar.Enabled := True ;
    btnCancelar.Enabled := True ;
    btnExaminar.Enabled := False ;
    btnEditar.Enabled := False ;
    btnEliminar.Enabled := False ;
    btnSaveImage.Enabled := False ;

    grVisor.Visible := False ;
    tmDescripcion.ReadOnly := False ;
    tmDescripcion.SetFocus 
end;



end.
