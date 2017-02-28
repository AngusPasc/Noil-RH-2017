unit frm_ControlDirecto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, frm_connection, db, StdCtrls, ImgList, Mask,
  DBCtrls, rxToolEdit, rxCurrEdit, Grids, DBGrids, RXDBCtrl, RxMemDS, RxRichEd,
  rxDBRichEd, ExtCtrls, Menus, global, Math, DateUtils, StrUtils, frxClass,
  frxDBSet, Utilerias, RxCombos, jpeg, Series, Chart,
  DbChart, Newpanel, frxPreview, Buttons, TeEngine, TeeProcs,
  ZAbstractRODataset, ZDataset, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, sSkinManager,
  sSkinProvider, NxCellSource, NxGridPrint, masUtilerias, NxFieldChooser,
  NxPageControl, udbgrid ;

type
  TfrmControlDirecto = class(TForm)
    TreeObras: TTreeView;
    Panel: TImageList;
    gpInformacion: TGroupBox;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    ds_Convenios: TDataSource;
    MemoryAvances: TRxMemoryData;
    ds_MemoryAvances: TDataSource;
    MemoryAvancessRenglon: TStringField;
    MemoryAvancesdAvanceDiario: TFloatField;
    MemoryAvancesdAvanceAcumulado: TFloatField;
    MemoryAvancesiTipo: TIntegerField;
    MemoryAvancesdAvanceProgramadoDiario: TFloatField;
    MemoryAvancesdAvanceProgramadoAcumulado: TFloatField;
    Label15: TLabel;
    tdIdFecha: TDateTimePicker;
    gpEstimaciones: TGroupBox;
    ds_Estimaciones: TDataSource;
    Grid_Estimaciones: TRxDBGrid;
    ds_Generadores: TDataSource;
    dsGerencial: TfrxDBDataset;
    gbReportesDiarios: TGroupBox;
    ds_reportediario: TDataSource;
    rDiario: TfrxReport;
    Grid_Reportes: TDBGrid;
    GroupBox4: TGroupBox;
    GridConvenios: TRxDBGrid;
    gbAvances: TGroupBox;
    rxGraficaProgramado: TRxMemoryData;
    StringField16: TStringField;
    rxGraficaProgramadodFecha: TDateField;
    FloatField4: TFloatField;
    rxGraficaFisico: TRxMemoryData;
    StringField14: TStringField;
    rxGraficaFisicodFecha: TDateField;
    FloatField7: TFloatField;
    rxGraficaFinanciero: TRxMemoryData;
    StringField2: TStringField;
    DateField2: TDateField;
    FloatField3: TFloatField;
    SaveSql: TSaveDialog;
    chkSeries: TGroupBox;
    chkProgramado: TCheckBox;
    chkFisico: TCheckBox;
    chkFinanciero: TCheckBox;
    chkParametros: TGroupBox;
    Label18: TLabel;
    chk3D: TCheckBox;
    chkLeyendas: TCheckBox;
    up3D: TUpDown;
    ti3D: TMaskEdit;
    chkEjes: TCheckBox;
    chkAdicionales: TCheckBox;
    grGeneral: tNewGroupBox;
    dbGraphics: TDBChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    PopGenerador: TPopupMenu;
    MenuItem9: TMenuItem;
    NumerosGeneradores1: TMenuItem;
    NumerosGeneradoresCIA1: TMenuItem;
    SemanalSImportes1: TMenuItem;
    SemanalCImportes1: TMenuItem;
    ListadeVerificacin1: TMenuItem;
    gbOrdenCambio: TGroupBox;
    ds_OrdendeCambio: TDataSource;
    ImageList1: TImageList;
    ds_CnfGrafica: TDataSource;
    GroupBox5: TGroupBox;
    bImgConvenio: TImage;
    btnNext: TBitBtn;
    btnPrevious: TBitBtn;
    Label21: TLabel;
    tiRegistro: TCurrencyEdit;
    Grid_OrdenesdeCambio: TRxDBGrid;
    ds_actividadesxorden: TDataSource;
    gpGerencial: TGroupBox;
    cmbColor: TColorBox;
    OrdenesdeTrabajo: TZReadOnlyQuery;
    ds_ordenesdetrabajo: TDataSource;
    ActividadesxOrden: TZReadOnlyQuery;
    ActividadesxOrdeniNivel: TIntegerField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdendFechaInicio: TDateField;
    ActividadesxOrdendFechaFinal: TDateField;
    ActividadesxOrdendPonderado: TFloatField;
    ActividadesxOrdendVentaMN: TFloatField;
    lblOrden: TLabel;
    tsNumeroOrden: TComboBox;
    QryConvenios: TZReadOnlyQuery;
    QryConveniossContrato: TStringField;
    QryConveniossIdConvenio: TStringField;
    QryConveniossDescripcion: TStringField;
    QryConveniossAnexo: TStringField;
    QryConveniossIdTipoConvenio: TStringField;
    QryConvenioslAvanceFisico: TStringField;
    QryConveniosdFecha: TDateField;
    QryConveniosdFechaInicio: TDateField;
    QryConveniosdFechaFinal: TDateField;
    QryConveniosdMontoMN: TFloatField;
    QryConveniosdMontoDLL: TFloatField;
    QryConveniosmComentarios: TMemoField;
    QryConveniossTipoConvenio: TStringField;
    QryImgConvenios: TZReadOnlyQuery;
    QryOrdendeCambio: TZReadOnlyQuery;
    Estimaciones: TZReadOnlyQuery;
    EstimacionesiNumeroEstimacion: TStringField;
    EstimacionessDescripcion: TStringField;
    EstimacioneslEstimado: TStringField;
    EstimacionesdFechaInicio: TDateField;
    EstimacionesdFechaFinal: TDateField;
    EstimacionesdMontoMN: TCurrencyField;
    EstimacionesdMontoDLL: TCurrencyField;
    Generadores: TZReadOnlyQuery;
    GeneradoressNumeroOrden: TStringField;
    GeneradoressNumeroGenerador: TStringField;
    GeneradoresdFechaInicio: TDateField;
    GeneradoresdFechaFinal: TDateField;
    GeneradoreslStatus: TStringField;
    GeneradoresdMontoMN: TFloatField;
    GeneradoresdMontoDLL: TFloatField;
    ReporteDiario: TZReadOnlyQuery;
    ActividadesxOrdensWbsSpace: TStringField;
    GeneradoresiNumeroEstimacion: TStringField;
    QryResidencias: TZReadOnlyQuery;
    EstimacionesdRetencionMN: TFloatField;
    cnfGrafica: TZReadOnlyQuery;
    nxGridPrograma: TNextGrid;
    nxsWbs: TNxTextColumn;
    nxdFechaInicio: TNxDateColumn;
    nxdFechaFinal: TNxDateColumn;
    nxdAvanceProgramado: TNxProgressColumn;
    nxsNumeroActividad: TNxTextColumn;
    nxdAvanceFisico: TNxProgressColumn;
    nxdVentaMN: TNxNumberColumn;
    nxdPonderado: TNxProgressColumn;
    nxmDescripcion: TNxTextColumn;
    nxdMontoProgramado: TNxNumberColumn;
    nxdMontoGenerado: TNxNumberColumn;
    sSkinProvider1: TsSkinProvider;
    gpGeneradores: tNewGroupBox;
    Grid_Generadores: TRxDBGrid;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    ActividadesxOrdendMontoProgramado: TCurrencyField;
    ActividadesxOrdendMontoGenerado: TCurrencyField;
    ActividadesxOrdendAvanceFisico: TFloatField;
    ActividadesxOrdendAvanceProgramado: TFloatField;
    mnImprimir: TPopupMenu;
    Imprimir1: TMenuItem;
    dsEntregables: TfrxDBDataset;
    dsFinanciero: TfrxDBDataset;
    dsFisico: TfrxDBDataset;
    dsProgramado: TfrxDBDataset;
    frGenerador: TfrxReport;
    qryComentarios: TZReadOnlyQuery;
    ConsultaComentarios: TfrxDBDataset;
    Label4: TLabel;
    tdIdFecha1: TDateTimePicker;
    Label6: TLabel;
    cmbNivel: TComboBox;
    ActividadesxOrdensTipoActividad: TStringField;
    ActividadesxOrdensNumeroOrden: TStringField;
    PgOpciones: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    GroupBox1: TGroupBox;
    OptMes: TCheckBox;
    OptSemana: TCheckBox;
    OptDia: TCheckBox;
    GroupBox2: TGroupBox;
    chkReal: TCheckBox;
    ChkProg: TCheckBox;
    chkMoneda: TCheckBox;
    GroupBox3: TGroupBox;
    chkAplicaFechas: TCheckBox;
    chkComentarios: TCheckBox;
    chkAvStatus: TCheckBox;
    Label5: TLabel;
    chkUpReal: TCheckBox;
    Label7: TLabel;
    chkUpProg: TCheckBox;
    ChkMontos: TCheckBox;
    Timer1: TTimer;
    PanelPrincipal: TListView;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PanelPrincipalClick(Sender: TObject);
    procedure tdIdFechaChange(Sender: TObject);
    procedure Grid_AvancesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure EstimacionesAfterScroll(DataSet: TDataSet);
    procedure Grid_GeneradoresGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure EstimacionesCalcFields(DataSet: TDataSet);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure frxGerencialGetValue(const VarName: String;
      var Value: Variant);
    procedure Calculo ;
    procedure rDiarioGetValue(const VarName: String; var Value: Variant);
    procedure Grid_ReportesDblClick(Sender: TObject);
    procedure chkProgramadoClick(Sender: TObject);
    procedure chkFisicoClick(Sender: TObject);
    procedure chkFinancieroClick(Sender: TObject);
    procedure chk3DClick(Sender: TObject);
    procedure chkLeyendasClick(Sender: TObject);
    procedure chkEjesClick(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure NumerosGeneradores1Click(Sender: TObject);
    procedure NumerosGeneradoresCIA1Click(Sender: TObject);
    procedure SemanalSImportes1Click(Sender: TObject);
    procedure frGeneradorGetValue(const VarName: String;
      var Value: Variant);
    procedure SemanalCImportes1Click(Sender: TObject);
    procedure ListadeVerificacin1Click(Sender: TObject);
    procedure frOrdendeCambioGetValue(const VarName: String;
      var Value: Variant);
    procedure Grid_OrdenesdeCambioDblClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure QryImgConveniosAfterScroll(DataSet: TDataSet);
    procedure QryConveniosAfterScroll(DataSet: TDataSet);
    procedure Grid_GeneradoresDblClick(Sender: TObject);
    procedure refresh ;
    procedure TreeObrasClick(Sender: TObject);
    procedure TreeObrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeObrasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenChange(Sender: TObject);
    procedure Grid_EstimacionesDblClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure tdIdFecha1Exit(Sender: TObject);
    procedure tdIdFecha1Enter(Sender: TObject);
    procedure OptMesClick(Sender: TObject);
    procedure OptSemanaClick(Sender: TObject);
    procedure OptDiaClick(Sender: TObject);
    procedure PgOpcionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PgOpcionesExit(Sender: TObject);
    procedure chkRealClick(Sender: TObject);
    procedure ChkProgClick(Sender: TObject);
    procedure nxGridProgramaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure OnClick(Sender: TObject);
    procedure OnChange(Sender: TObject);
    procedure nxGridProgramaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure nxGridProgramaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EstimacionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EstimacionesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EstimacionesTitleClick(Column: TColumn);
    procedure Grid_ReportesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ReportesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ReportesTitleClick(Column: TColumn);
    procedure Grid_OrdenesdeCambioMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Grid_OrdenesdeCambioMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_OrdenesdeCambioTitleClick(Column: TColumn);
    procedure GridConveniosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridConveniosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridConveniosTitleClick(Column: TColumn);
  private
    { Private declarations }
     sMenuP: String;
  public
    { Public declarations }
  end;

var
  frmControlDirecto: TfrmControlDirecto;
  MyTreeNode2,
  MyTreeNode3 : TTreeNode;
  sTitulo     : String ;
  dAMontoMN, dAMontoDLL : Double ;
  iDiasMes : Integer ;
  dMontoContrato : Currency ;
  dMontoProgramado,
  dMontoGenerado : Currency ;
  sFiltro        : String ;
  FECHA_CALCULO, FECHA_CALCULO2 : tDate ;
  Frente : String;
  Cadena : String;
  utgrid2:ticdbgrid;
  utgrid3:ticdbgrid;
  utgrid4:ticdbgrid;
  utgrid5:ticdbgrid;


implementation

uses UnitExcepciones, UnitTBotonesPermisos, UFunctionsGHH;


{$R *.dfm}

var
  Check: TCheckBox;
  BtnMenos,
  BtnMas: TButton;
  pPanel,
  pPanel2: TPanel;
  Valor: Boolean = False;
  ValorCombo: Byte;

procedure TfrmControlDirecto.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
UtGrid2:=TicdbGrid.create(grid_estimaciones);
UtGrid3:=TicdbGrid.create(grid_reportes);
UtGrid4:=TicdbGrid.create(grid_ordenesdecambio);
UtGrid5:=TicdbGrid.create(gridconvenios);






  tdIdFecha1.Date := Date ;
  tdIdFecha.Date := Date ;

  pgOpciones.Height := 37;
  pgOpciones.Width  := 337;

  with TreeObras.Items do
  begin
    Clear;
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select * From activos Order By sIdActivo') ;
    Connection.QryBusca.Open ;
    While NOT Connection.QryBusca.Eof Do
    Begin
        MyTreeNode2 := Add(nil,Connection.QryBusca.FieldValues['sDescripcion'] );
        // Selecciono las distintas residencias o municipios
        QryResidencias.Active := False ;
        qryResidencias.Params.ParamByName('activo').DataType := ftString ;
        qryResidencias.Params.ParamByName('activo').Value := Connection.QryBusca.FieldValues['sIdActivo'] ;
        qryResidencias.Open ;
        While NOT qryResidencias.Eof Do
        Begin
            MyTreeNode3 := AddChild(MyTreeNode2,qryResidencias.FieldValues['sDescripcion']);

            // Seleciono los contratos del municipio
            Connection.QryBusca2.Active := False ;
            Connection.QryBusca2.SQL.Clear ;
            If global_usuario = 'INTEL-CODE' Then
            Begin
                Connection.QryBusca2.SQL.Add('select c.sContrato From contratos c Where c.sIdResidencia = :Residencia And c.lStatus = "Activo" Order By c.sContrato') ;
                Connection.QryBusca2.Params.ParamByName('Reesidencia').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Residencia').Value := qryResidencias.FieldValues['sIdResidencia'] ;
            End
            Else
             begin
                Connection.QryBusca2.SQL.Add('select c.sContrato From contratos c INNER JOIN contratosxusuario u ON ' +
                                                  '(c.sContrato = u.sContrato And u.sIdUsuario = :Usuario) ' +
                                                  'Where c.sIdResidencia = :Residencia And c.lStatus = "Activo" Order By c.sContrato') ;
                Connection.QryBusca2.Params.ParamByName('Residencia').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Residencia').Value := qryResidencias.FieldValues['sIdResidencia'] ;
                Connection.QryBusca2.Params.ParamByName('Usuario').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Usuario').Value := global_usuario ;
             end ;
            Connection.QryBusca2.Open ;
            While NOT Connection.QryBusca2.Eof Do
            Begin
                AddChild(MyTreeNode3,Connection.QryBusca2.FieldValues['sContrato']);
                Connection.QryBusca2.Next
            End ;
            QryResidencias.Next
        End ;
        Connection.QryBusca.Next
    End
  End ;

  gpInformacion.Visible := False ;
  gbReportesDiarios.Visible := False ;
  gpEstimaciones.Visible := False ;
  gpGerencial.Visible := True ;
  gbReportesDiarios.Visible := False ;
  gbAvances.Visible := False ;
  gbOrdenCambio.Visible := False ;
  TreeObras.SetFocus
end ;


procedure TfrmControlDirecto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid2.destroy;
  utgrid3.destroy;
  utgrid4.destroy;
  utgrid5.destroy;
  action := cafree ;
end;


procedure TfrmControlDirecto.Calculo ;
Var
  sOrden           : String ;
  lConPaquetes     : Boolean ;
  sSelect          : String ;
Begin
  tsNumeroOrden.Items.Clear ;
  tsNumeroOrden.Items.Add('CONTRATO No. ' + TreeObras.Selected.Text ) ;
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
  OrdenesdeTrabajo.Params.ParamByName('status').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('status').Value := cnfGrafica.FieldValues [ 'sOrdenExtraordinaria' ] ;
  OrdenesdeTrabajo.Open ;
  While NOt OrdenesdeTrabajo.Eof Do
   begin
     tsNumeroOrden.Items.Add(OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ) ;
     OrdenesdeTrabajo.Next
   end ;
End ;



procedure TfrmControlDirecto.PanelPrincipalClick(Sender: TObject);
begin
    pgOpciones.Height := 37;
    pgOpciones.Width  := 337;

    If PanelPrincipal.ItemIndex = 0 Then
    Begin
        gpInformacion.Visible     := True ;
        gbReportesDiarios.Visible := False ;
        gpEstimaciones.Visible    := False ;
        gpGerencial.Visible       := False ;
        gbAvances.Visible         := False ;
        gbOrdenCambio.Visible     := False ;
        ChkAplicaFechas.Visible   := False;
        ChkComentarios.Visible    := False;
    End ;
    If PanelPrincipal.ItemIndex = 1 Then
    Begin
        gpInformacion.Visible     := False ;
        gbReportesDiarios.Visible := False ;
        gpEstimaciones.Visible    := False ;
        gpGerencial.Visible       := True ;
        gbAvances.Visible         := False ;
        gbOrdenCambio.Visible     := False ;
        ChkAplicaFechas.Visible   := True;
        ChkComentarios.Visible    := True;
    End ;

    If PanelPrincipal.ItemIndex = 2 Then
    Begin
        gpInformacion.Visible     := False ;
        gbReportesDiarios.Visible := False ;
        gpEstimaciones.Visible    := True ;
        gpGerencial.Visible       := False ;
        gbAvances.Visible         := False ;
        gbOrdenCambio.Visible     := False ;
        ChkAplicaFechas.Visible   := False;
        ChkComentarios.Visible    := False;
    End ;
    If PanelPrincipal.ItemIndex = 3 Then
    Begin
        gpInformacion.Visible     := False ;
        gbReportesDiarios.Visible := True ;
        gpEstimaciones.Visible    := False ;
        gpGerencial.Visible       := False ;
        gbAvances.Visible         := False ;
        gbOrdenCambio.Visible     := False ;
        ChkAplicaFechas.Visible   := False;
        ChkComentarios.Visible    := False;
    End ;
    If PanelPrincipal.ItemIndex = 4 Then
    Begin
        gpInformacion.Visible     := False ;
        gbReportesDiarios.Visible := False ;
        gpEstimaciones.Visible    := False ;
        gpGerencial.Visible       := False ;
        gbAvances.Visible         := True ;
        gbOrdenCambio.Visible     := False ;
        ChkAplicaFechas.Visible   := False;
        ChkComentarios.Visible    := False;
    End ;
    If PanelPrincipal.ItemIndex = 5 Then
    Begin
        gpInformacion.Visible     := False ;
        gbReportesDiarios.Visible := False ;
        gpEstimaciones.Visible    := False ;
        gpGerencial.Visible       := False ;
        gbAvances.Visible         := False ;
        gbOrdenCambio.Visible     := True ;
        ChkAplicaFechas.Visible   := False;
        ChkComentarios.Visible    := False;
    End ;

end;

procedure TfrmControlDirecto.tdIdFecha1Enter(Sender: TObject);
begin
     tdIdFecha1.Color := global_color_entrada
end;

procedure TfrmControlDirecto.tdIdFecha1Exit(Sender: TObject);
begin
    if tdIdFecha1.Date > tdIdFecha.Date then
    begin
         messageDLG('La Fecha de inicio No debe ser mayor!', mtInformation, [mbOk], 0);
         tdIdFecha1.SetFocus;
         exit;
    end;
    tdIdFecha1.Color := global_color_salida
end;

procedure TfrmControlDirecto.tdIdFechaChange(Sender: TObject);
begin
  // Aqui modifico el query de la grafica
  // Busco el reporte diario de la fecha seleccionada ...
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select sIdConvenio from reportediario where sContrato = :contrato And dIdFecha = :Fecha') ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
  Connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate ;
  Connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
  Connection.qryBusca.Open ;
  If Connection.qryBusca.RecordCount > 0 Then
  Begin
      cnfGrafica.Active := False ;
      cnfGrafica.SQL.Clear ;
      cnfGrafica.SQL.Add('select c.sContrato, cn.sNombre, c.mDescripcion, c.mCliente, c.bImagen, c2.dFechaInicio, c2.dFechaFinal, ' +
                         'c2.dMontoMN, c2.dMontoDLL, c2.sDescripcion, c2.sIdConvenio, cn.bImagen as bImagenCIA, cn.sOrdenExtraordinaria From contratos c ' +
                         'INNER JOIN configuracion cn ON (c.sContrato = cn.sContrato) ' +
                         'INNER JOIN convenios c2 ON (cn.sContrato = c2.sContrato And c2.sIdConvenio = :convenio) ' +
                         'Where c.sContrato = :Contrato') ;
      cnfGrafica.Params.ParamByName('Contrato').DataType := ftString ;
      cnfGrafica.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
      cnfGrafica.Params.ParamByName('convenio').DataType := ftString ;
      cnfGrafica.Params.ParamByName('convenio').Value := Connection.qryBusca.FieldValues['sIdConvenio'] ;
      cnfGrafica.Open ;
  End
  Else
  Begin
      cnfGrafica.Active := False ;
      cnfGrafica.SQL.Clear ;
      cnfGrafica.SQL.Add('select c.sContrato, cn.sNombre, c.mDescripcion, c.mCliente, c.bImagen, c2.dFechaInicio, c2.dFechaFinal, ' +
                         'c2.dMontoMN, c2.dMontoDLL, c2.sDescripcion, c2.sIdConvenio, cn.bImagen as bImagenCIA, cn.sOrdenExtraordinaria From contratos c ' +
                         'INNER JOIN configuracion cn ON (c.sContrato = cn.sContrato) ' +
                         'INNER JOIN convenios c2 ON (cn.sContrato = c2.sContrato And cn.sIdConvenio = c2.sIdConvenio) ' +
                         'Where c.sContrato = :Contrato') ;
      cnfGrafica.Params.ParamByName('Contrato').DataType := ftString ;
      cnfGrafica.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
      cnfGrafica.Open ;
  End ;
  Calculo
end;

procedure TfrmControlDirecto.GridConveniosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   UtGrid5.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmControlDirecto.GridConveniosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid5.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmControlDirecto.GridConveniosTitleClick(Column: TColumn);
begin
   UtGrid5.DbGridTitleClick(Column);
end;

procedure TfrmControlDirecto.Grid_AvancesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iTipo').AsInteger = 0 then
        Background := clGradientInactiveCaption
end;


procedure TfrmControlDirecto.EstimacionesAfterScroll(DataSet: TDataSet);
begin
    Generadores.Active := False ;
    Generadores.Params.ParamByName('Contrato').DataType := ftString ;
    Generadores.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
    Generadores.Params.ParamByName('Estimacion').Value := Estimaciones.FieldValues['iNumeroEstimacion'] ;
    Generadores.Open ;
end;


procedure TfrmControlDirecto.Grid_GeneradoresGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString <> 'Autorizado' then
        Background := clGradientActiveCaption
end;

procedure TfrmControlDirecto.EstimacionesCalcFields(DataSet: TDataSet);
begin
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From estimaciones ' +
                                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion and lStatus = "Autorizado" Group By sContrato') ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
      Connection.qryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Estimacion').Value := Estimaciones.FieldValues['iNumeroEstimacion'] ;
      Connection.qryBusca.Open ;
      If Connection.qryBusca.RecordCount > 0 then
      Begin
          EstimacionesdMontoMN.Value := Connection.qryBusca.FieldValues['dMontoMN'] ;
          EstimacionesdMontoDLL.Value := Connection.qryBusca.FieldValues['dMontoDLL'] ;
      End
      Else
      Begin
          EstimacionesdMontoMN.Value := 0 ;
          EstimacionesdMontoDLL.Value := 0 ;
      End ;
end;

procedure TfrmControlDirecto.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmControlDirecto.tdIdFechaExit(Sender: TObject);
begin
    if tdIdFecha1.Date > tdIdFecha.Date then
    begin
         messageDLG('La Fecha de inicio No debe ser mayor!', mtInformation, [mbOk], 0);
         tdIdFecha1.SetFocus;
         exit;
    end;
    tdIdFecha.Color := global_color_salida
end;


procedure TfrmControlDirecto.frxGerencialGetValue(const VarName: String; var Value: Variant);

begin
  If CompareText(VarName, 'MONTO_PROGRAMADO') = 0 then
      Value := dMontoProgramado ;

  If CompareText(VarName, 'MONTO_REAL') = 0 then
      Value := dMontoGenerado ;



  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;

end;


procedure TfrmControlDirecto.rDiarioGetValue(const VarName: String; var Value: Variant);
var
  sFinanciero: string;
begin
  {enviamos las configuraciones de la grafica}
  If CompareText(VarName, 'UP_REAL') = 0 then
  begin
     if chkUpReal.Checked then
         value := 'Si'
     else
         value := 'No';
  end;

  If CompareText(VarName, 'UP_PROG') = 0 then
  begin
     if chkUpprog.Checked then
         value := 'Si'
     else
         value := 'No';
  end;



  If CompareText(VarName, 'VISIBLE_REAL') = 0 then
  begin
     if chkReal.Checked then
         value := 'Si'
     else
         value := 'No';
  end;

  If CompareText(VarName, 'VISIBLE_PROG') = 0 then
  begin
     if chkProg.Checked then
         value := 'Si'
     else
         value := 'No';
  end;

   If CompareText(VarName, 'VISIBLE_FINAN') = 0 then
  begin
     if chkMoneda.Checked then
         value := 'Si'
     else
         value := 'No';
  end;

  {terminan configuraciones..}

  If CompareText(VarName, 'FRENTE_TRABAJO') = 0 then
  begin
        if MidStr(Frente,1,8) = 'CONTRATO' then
           Value := 'TODOS LOS FRENTES'
        ELSE
           Value := Frente;
  end;

  If CompareText(VarName, 'PERIODO_REPORTE') = 0 then
  begin
       if (tdIdFecha.Date - tdIdFecha1.Date) + 1 >= 28 then
           Value := 'REPORTE MENSUAL'
       ELSE
           Value := 'REPORTE SEMANAL';
  end;

  If CompareText(VarName, 'FECHA_CALCULO') = 0 then
      Value := DateToStr(tdIdFecha.Date) ;

  If CompareText(VarName, 'FECHA_CALCULO2') = 0 then
      Value := DateToStr(tdIdFecha1.Date) ;

  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


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

  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;
  If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := OrdenesdeTrabajo.FieldByName('sDescripcion').AsString;
  If CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
      Value := sJornadasSuspendidas  ;
  If CompareText(VarName, 'TURNO') = 0 then
      Value := sDescripcionTurno ;

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


  If CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
      Value := dRealOrdenAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
      Value := dRealOrdenActual ;
  If CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
      Value := dRealOrdenAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
      Value := dProgramadoOrdenActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAcumulado ;

  //si avance financiero no esta seleccionado, ocultar monto en MN y monto generado
  If chkMontos.Checked = False then
      sFinanciero := 'Si'
  else
      sFinanciero := 'No';

  if CompareText(VarName, 'AVANCE_FINANCIERO') = 0 then
      Value := sFinanciero;

  if CompareText(VarName, 'VALORCHECK') = 0 then
    Value := Valor;

  if CompareText(VarName, 'VALORCOMBO') = 0 then
    Value := ValorCombo;
end;

procedure TfrmControlDirecto.Grid_ReportesDblClick(Sender: TObject);
begin
 If ReporteDiario.RecordCount > 0 Then
//    procReporteDiario (ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmControlDirecto, rDiario.OnGetValue )
end;

procedure TfrmControlDirecto.Grid_ReportesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid3.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmControlDirecto.Grid_ReportesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid3.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmControlDirecto.Grid_ReportesTitleClick(Column: TColumn);
begin
   UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmControlDirecto.Imprimir1Click(Sender: TObject);
var
   tOrigen : TComponent;
   sLinea  : string;
begin
 try
   TreeObras.OnClick(sender);
   if nxGridPrograma.RowCount > 0 then
   begin
       if tsNumeroOrden.Text <> '' then
          messageDLG('Antes de Imprimir, Haga click sobre la Obra',mtInformation,[mbOK],0)
       else
       begin
           If MidStr(Frente, 1 , 8 ) <> 'CONTRATO' Then
              sLinea  := 'and r.sNumeroOrden =:Orden'
           else
              sLinea := '';

          if not(chkAplicaFechas.Checked) then
          begin
            if MessageDlg('Debe seleccionar "Periodo Actual" para que se Imprime el rango de fecha Elegida.' +
                              #13 + #10 + #13 + #10 + '¿Desea Continuar?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
              Exit;
          end;

           //Validamos primero que no haya reportes en el Frente en estatus de pendiente y que contengan partidas reportadas...
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('select r.lStatus, r.dIdFecha, r.sNumeroOrden from reportediario r '+
                                       'inner join bitacoradeactividades b on (b.sContrato = r.sContrato and b.dIdFecha = r.dIdFecha and b.sNumeroOrden = r.sNumeroOrden and b.sWbs <> "") '+
                                       'where r.sContrato =:Contrato '+sLinea+' and r.lStatus = "Pendiente" '+
                                       'group by b.dIdFecha order by b.sNumeroOrden, b.dIdFecha' );
           connection.zCommand.ParamByName('Contrato').AsString := cnfGrafica.FieldValues['sContrato'];
           if sLinea <> '' then
              connection.zCommand.ParamByName('Orden').AsString := Frente;
           connection.zCommand.Open;

           sLinea := '';
           if connection.zCommand.RecordCount > 0 then
           begin
                while not connection.zCommand.Eof do
                begin
                    sLinea := sLinea +'  '+ connection.zCommand.FieldValues['sNumeroOrden'] + ' '+ DateToStr(connection.zCommand.FieldValues['dIdFecha']) + #13;
                    connection.zCommand.Next;
                end;
                messageDLG('Existen Reportes Diarios sin Validar! '+ #13 + sLinea, mtInformation, [mbOk],0);
           End;

           if chkComentarios.Checked = True then
           begin
              qryComentarios.Active := False ;
              qryComentarios.SQL.Clear ;
              qryComentarios.SQL.Add('select sContrato, dIdFecha, mDescripcion, sNumeroOrden from bitacoradeactividades ' +
                                     'where sContrato =:Contrato And dIdFecha >=:Fecha1 And dIdFecha <=:Fecha2 ' +
                                     'And sIdTipoMovimiento ="N" Order by dIdFecha') ;
              qryComentarios.Params.ParamByName('Contrato').DataType := ftString ;
              qryComentarios.Params.ParamByName('Contrato').Value    := cnfGrafica.FieldValues['sContrato'] ;
              qryComentarios.Params.ParamByName('Fecha1').DataType   := ftDate ;
              qryComentarios.Params.ParamByName('Fecha1').Value      := tdIdFecha1.DateTime ;
              qryComentarios.Params.ParamByName('Fecha2').DataType   := ftDate ;
              qryComentarios.Params.ParamByName('Fecha2').Value      := tdIdFecha.DateTime ;
              qryComentarios.Open ;
              if qryComentarios.RecordCount = 0 Then
                 MessageDlg('No existen Comentario',mtConfirmation, [mbOk],0) ;
           end
           else
           begin
              qryComentarios.Active := False ;
              qryComentarios.SQL.Clear ;
              qryComentarios.SQL.Add('select sContrato, dIdFecha, mDescripcion, sNumeroOrden from bitacoradeactividades ' +
                                     'where sContrato = "*.*"') ;
              qryComentarios.Open ;
           end;

           //Buscamos las firmas para el contrato general..
           If MidStr(Frente, 1 , 8 ) = 'CONTRATO' Then
           begin
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('select MAX(dIdFecha), sNumeroOrden from firmas where sContrato =:Contrato and :Fecha >= dIdFecha ');
              connection.zCommand.ParamByName('Contrato').AsString := cnfGrafica.FieldValues['sContrato'];
              connection.zCommand.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
              connection.zCommand.Open;

              if connection.zCommand.RecordCount > 0 then
                 rDiarioFirmas(cnfGrafica.FieldValues['sContrato'], connection.zCommand.FieldValues['sNumeroOrden'],'A', tdIdFecha.Date, tOrigen);
           end
           else
              rDiarioFirmas(cnfGrafica.FieldValues['sContrato'], Frente,'A', tdIdFecha.Date, tOrigen);


           rDiario.PreviewOptions.MDIChild      := False ;
           rDiario.PreviewOptions.Modal         := True ;
           rDiario.PreviewOptions.Maximized     := lCheckMaximized () ;
           rDiario.PreviewOptions.ShowCaptions  := False ;
           rDiario.Previewoptions.ZoomMode      := zmPageWidth ;

           rDiario.LoadFromFile(Global_Files+'Entregables.fr3') ;
           dbGraphics.Title.Text.Clear;
           //Timer1.Enabled := True;
           //rDiario.ShowReport;
           rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
 
        end;
   end
   else
       messageDLG('Seleccione un Frente de Trabajo', mtInformation, [mbOK],0);
 except
   on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al Imprimir', 0);
   end;
 end;
End;

procedure TfrmControlDirecto.chkProgramadoClick(Sender: TObject);
begin
   dbGraphics.SeriesList.Items[0].Active  := chkProgramado.Checked ;
end;

procedure TfrmControlDirecto.chkRealClick(Sender: TObject);
begin
     if chkProg.Checked = False then
        chkProg.Checked := True;
end;

procedure TfrmControlDirecto.OnChange(Sender: TObject);
var
  NewValor: Byte;
begin
  NewValor := ValorCombo;
  if (CompareText(TButton(Sender).Caption, '-') = 0) and (ValorCombo > 5) then
    NewValor := ValorCombo - 5;

  if (CompareText(TButton(Sender).Caption, '+') = 0) and (ValorCombo < 100) then
    NewValor := ValorCombo + 5;

  if NewValor <> ValorCombo then
  begin
    ValorCombo := NewValor;
    pPanel2.Caption := IntToStr(ValorCombo);
    rDiario.ShowReport(False);
  end;
end;

procedure TfrmControlDirecto.chkFisicoClick(Sender: TObject);
begin
    dbGraphics.SeriesList.Items[1].Active := chkFisico.Checked ;
end;

procedure TfrmControlDirecto.chkFinancieroClick(Sender: TObject);
begin
    dbGraphics.SeriesList.Items[2].Active := chkFinanciero.Checked ;
end;

procedure TfrmControlDirecto.chk3DClick(Sender: TObject);
begin
    dbGraphics.View3D := chk3d.Checked ;
end;

procedure TfrmControlDirecto.chkLeyendasClick(Sender: TObject);
begin
    dbGraphics.SeriesList.Items[0].Marks.Visible := chkLeyendas.Checked ;
    dbGraphics.SeriesList.Items[1].Marks.Visible := chkLeyendas.Checked ;
    dbGraphics.SeriesList.Items[2].Marks.Visible := chkLeyendas.Checked ;
end;

procedure TfrmControlDirecto.ChkProgClick(Sender: TObject);
begin
     if chkReal.Checked = False then
        chkReal.Checked := True;
end;

procedure TfrmControlDirecto.chkEjesClick(Sender: TObject);
begin
    dbGraphics.LeftAxis.Visible := chkEjes.Checked
end;

procedure TfrmControlDirecto.MenuItem9Click(Sender: TObject);
begin
  try
      If Generadores.RecordCount > 0 Then
          If lfnValidaGenerador (TreeObras.Selected.Text, cnfGrafica.FieldValues['sIdConvenio'], Generadores.FieldValues['sNumeroOrden'], Generadores.FieldValues['sNumeroGenerador'] , frmControlDirecto ) Then
              If OrdenesdeTrabajo.RecordCount > 1 Then
                    procCaratulaGenerador (0, TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], frmControlDirecto, frGenerador.OnGetValue, True, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,'AccesoObra'))
              Else
                    procCaratulaGenerador (0, TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], frmControlDirecto, frGenerador.OnGetValue, False,connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,'AccesoObra'))
          Else
              MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.' , mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al ejecutar Caratula del Generador en el menu', 0);
      end;
  end;
end;

procedure TfrmControlDirecto.NumerosGeneradores1Click(Sender: TObject);
begin
  try
      If Generadores.RecordCount > 0 Then
          If lfnValidaGenerador (TreeObras.Selected.Text, cnfGrafica.FieldValues['sIdConvenio'], Generadores.FieldValues['sNumeroOrden'], Generadores.FieldValues['sNumeroGenerador'] , frmControlDirecto ) Then
              procNumeroGenerador (TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], 'Cliente', frmControlDirecto, frGenerador.OnGetValue, True)
          Else
              MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.' , mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Historial de Generadores', 'Al click en Numeros Generadores del menu', 0);
      end;
  end;
end;

procedure TfrmControlDirecto.NumerosGeneradoresCIA1Click(Sender: TObject);
begin
  try
      If Generadores.RecordCount > 0 Then
          If lfnValidaGenerador (TreeObras.Selected.Text, cnfGrafica.FieldValues['sIdConvenio'], Generadores.FieldValues['sNumeroOrden'], Generadores.FieldValues['sNumeroGenerador'] , frmControlDirecto ) Then
              procNumeroGenerador (TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], 'Contratista', frmControlDirecto, frGenerador.OnGetValue, True)
          Else
              MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.' , mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Historial de Generadores', 'Al click en Numeros Generadores (CIA) del menu', 0);
      end;
  end;
end;

procedure TfrmControlDirecto.nxGridProgramaClick(Sender: TObject);
begin
     pgOpciones.Height := 37;
     pgOpciones.Width  := 337;
end;

procedure TfrmControlDirecto.nxGridProgramaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmControlDirecto.nxGridProgramaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmControlDirecto.PgOpcionesExit(Sender: TObject);
begin
    pgOpciones.Height := 37;
    pgOpciones.Width  := 337;
end;

procedure TfrmControlDirecto.PgOpcionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    pgOpciones.Height := 175;
    pgOpciones.Width  := 337;
end;

procedure TfrmControlDirecto.OptDiaClick(Sender: TObject);
begin
       if OptDia.Checked then
       begin
            OptSemana.Checked := False;
            OptMes.Checked    := False;
       end;
end;

procedure TfrmControlDirecto.OptMesClick(Sender: TObject);
begin
       if OptMes.Checked then
       begin
            OptSemana.Checked := False;
            OptDia.Checked    := False;
       end;
end;

procedure TfrmControlDirecto.OptSemanaClick(Sender: TObject);
begin
      if OptSemana.Checked then
      begin
            OptMes.Checked := False;
            OptDia.Checked := False;
      end;
end;

procedure TfrmControlDirecto.SemanalSImportes1Click(Sender: TObject);
begin
  try
      If Generadores.RecordCount > 0 Then
          If lfnValidaGenerador (TreeObras.Selected.Text, cnfGrafica.FieldValues['sIdConvenio'], Generadores.FieldValues['sNumeroOrden'], Generadores.FieldValues['sNumeroGenerador'] , frmControlDirecto ) Then
               procSemanalSinConImportes(TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], 'Sin Importes', frmControlDirecto, frGenerador.OnGetValue, True)
          Else
              MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.' , mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al en click en Semanal S/Importes', 0);
      end;
  end;
end;

procedure TfrmControlDirecto.frGeneradorGetValue(const VarName: String;
  var Value: Variant);
Var
  sIsometricos : String ;
begin
  If CompareText(VarName, 'ISOMETRICOS') = 0 then
  Begin
      sIsometricos := '' ;
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select distinct sIsometrico, sPrefijo From estimacionxpartida Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
                                  'sNumeroGenerador = :Generador And sNumeroActividad = :Actividad And sIsometricoReferencia = :Referencia') ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Orden').Value := QryGenerador.FieldValues['sNumeroOrden'] ;
      Connection.qryBusca.Params.ParamByName('Generador').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Generador').Value := QryGenerador.FieldValues['sNumeroGenerador'] ;
      Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'] ;
      Connection.qryBusca.Params.ParamByName('Referencia').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Referencia').Value := QryGenerador.FieldValues['sIsometricoReferencia'] ;
      Connection.qryBusca.Open ;
      While NOT Connection.qryBusca.Eof Do
      Begin
          If sIsometricos <> '' Then
              sIsometricos := sIsometricos + ', ' ;
          sIsometricos := sIsometricos + Connection.qryBusca.FieldValues['sIsometrico'] + ' ' + Connection.qryBusca.FieldValues['sPrefijo'] ;
          Connection.qryBusca.Next
      End ;
      Value := sIsometricos ;
  End ;

  If CompareText(VarName, 'ANEXO') = 0 then
  Begin
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select sAnexo From convenios Where sContrato = :Contrato And sIdConvenio = :convenio') ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
      Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('convenio').Value := cnfGrafica.FieldValues['sIdConvenio'] ;
      Connection.qryBusca.Open ;
      If Connection.qryBusca.RecordCount > 0 Then
          Value := Connection.qryBusca.FieldValues ['sAnexo']
      Else
          Value := '' ;
  End ;
  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisorGenerador ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;
  If CompareText(VarName, 'SUPERVISOR_RESIDENTE') = 0 then
      Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisorGenerador ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_RESIDENTE') = 0 then
      Value := sPuestoResidente ;
end;

procedure TfrmControlDirecto.SemanalCImportes1Click(Sender: TObject);
begin
  try
      If Generadores.RecordCount > 0 Then
          If lfnValidaGenerador (TreeObras.Selected.Text, cnfGrafica.FieldValues['sIdConvenio'], Generadores.FieldValues['sNumeroOrden'], Generadores.FieldValues['sNumeroGenerador'] , frmControlDirecto ) Then
               procSemanalSinConImportes(TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], 'Con Importes', frmControlDirecto, frGenerador.OnGetValue, True)
          Else
              MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.' , mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al en click en Semanal C/Importes', 0);
      end;
  end;
end;

procedure TfrmControlDirecto.ListadeVerificacin1Click(Sender: TObject);
begin
    try
        If Generadores.RecordCount > 0 Then
            If lfnValidaGenerador (TreeObras.Selected.Text, cnfGrafica.FieldValues['sIdConvenio'], Generadores.FieldValues['sNumeroOrden'], Generadores.FieldValues['sNumeroGenerador'] , frmControlDirecto ) Then
                procListadeVerificacion (TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], frmControlDirecto, frGenerador.OnGetValue, False)
            Else
                MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.' , mtWarning, [mbOk], 0) ;
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al ejecutar Lista de Verificación', 0);
        end;
    end;
end;

procedure TfrmControlDirecto.frOrdendeCambioGetValue(const VarName: String;
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
end;

procedure TfrmControlDirecto.Grid_OrdenesdeCambioDblClick(Sender: TObject);
begin
  try
    rOrdenCambio ( TreeObras.Selected.Text, QryOrdendeCambio.FieldValues['iCedulaProcedencia'] , frmControlDirecto )
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al doble click en la cuadricula Ordenes de Cambio', 0);
    end;
  end;
end;

procedure TfrmControlDirecto.Grid_OrdenesdeCambioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid4.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmControlDirecto.Grid_OrdenesdeCambioMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid4.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmControlDirecto.Grid_OrdenesdeCambioTitleClick(Column: TColumn);
begin
   UtGrid4.DbGridTitleClick(Column);
end;

procedure TfrmControlDirecto.btnPreviousClick(Sender: TObject);
begin
    btnNext.Enabled := True ;
    If NOT QryImgConvenios.Bof Then
        QryImgConvenios.Prior ;
    If QryImgConvenios.Bof Then
        btnPrevious.Enabled := False ;
end;

procedure TfrmControlDirecto.btnNextClick(Sender: TObject);
begin
    btnPrevious.Enabled := True ;
    If NOT QryImgConvenios.eof Then
        QryImgConvenios.Next ;
    If QryImgConvenios.Eof Then
        btnNext.Enabled := False ;
end;

procedure TfrmControlDirecto.QryImgConveniosAfterScroll(DataSet: TDataSet);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    tiRegistro.Value := QryImgConvenios.RecNo ;
    try
      bImgConvenio.Picture.LoadFromFile('') ;
    Except
    end;
    If QryImgConvenios.RecordCount > 0 then
    Begin
        BlobField := QryImgConvenios.FieldByName('bImagen') ;
        BS := QryImgConvenios.CreateBlobStream ( BlobField , bmRead ) ;
        If bs.Size > 1 Then
        Begin
            try
                Pic:=TJpegImage.Create;
                try
                    Pic.LoadFromStream(bS);
                    bImgConvenio.Picture.Graphic := Pic;
                finally
                    Pic.Free;
                end;
            finally
                bS.Free
            End
        End
    End
end;

procedure TfrmControlDirecto.QryConveniosAfterScroll(DataSet: TDataSet);
begin
    tiRegistro.Value := 0 ;
    btnNext.Enabled := False ;
    btnPrevious.Enabled := False ;
    If QryConvenios.RecordCount > 0 Then
    Begin
        QryImgConvenios.Active := False ;
        QryImgConvenios.SQL.Clear ;
        QryImgConvenios.SQL.Add('Select bImagen From convenios_adjuntos ' +
                                'Where sContrato = :Contrato And sIdConvenio = :Convenio Order By iImagen') ;
        QryImgConvenios.Params.ParamByName('Contrato').DataType := ftString ;
        QryImgConvenios.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
        QryImgConvenios.Params.ParamByName('Convenio').DataType := ftString ;
        QryImgConvenios.Params.ParamByName('Convenio').Value := QryConvenios.FieldValues['sIdConvenio'] ;
        QryImgConvenios.Open ;
        If QryImgConvenios.RecordCount > 1 Then
            btnNext.Enabled := True
        Else
        Begin
          tiRegistro.Value := 0 ;
          bImgConvenio.Picture := Nil ;
        End ;
        tiRegistro.Value := 1 ;
    End ;
end;

procedure TfrmControlDirecto.Grid_GeneradoresDblClick(Sender: TObject);
begin
  try
      If Generadores.RecordCount > 0 Then
          If lfnValidaGenerador (TreeObras.Selected.Text, cnfGrafica.FieldValues['sIdConvenio'], Generadores.FieldValues['sNumeroOrden'], Generadores.FieldValues['sNumeroGenerador'] , frmControlDirecto ) Then
              If OrdenesdeTrabajo.RecordCount > 1 Then
                    procCaratulaGenerador (0, TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], frmControlDirecto, frGenerador.OnGetValue, True)
              Else
                    procCaratulaGenerador (0, TreeObras.Selected.Text, Generadores.FieldValues['iNumeroEstimacion'] , Generadores.FieldValues['sNumeroOrden'] , Generadores.FieldValues['sNumeroGenerador'] , cnfGrafica.FieldValues['sIdConvenio'], frmControlDirecto, frGenerador.OnGetValue, False)
          Else
              MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.' , mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al doble click en la cuadricula generadores', 0);
      end;
  end;
end;

procedure TfrmControlDirecto.OnClick(Sender: TObject);
begin
  Valor := Check.Checked;
  rDiario.ShowReport(False);
end;

procedure TfrmControlDirecto.Timer1Timer(Sender: TObject);
var
  i: Integer;
  Barra: TToolBar;
  x: Byte;
begin
  Timer1.Enabled := False;

  for i := 0 to rDiario.PreviewForm.ControlCount - 1 do
    if rDiario.PreviewForm.Controls[i].ClassName = 'TToolBar' then
    begin
      Barra := TToolBar(rDiario.PreviewForm.Controls[i]);

      // Agregar el CheckBox para 3D
      Check := TCheckBox.Create(rDiario.PreviewForm.Controls[i]);
      Check.Align := alRight;
      Check.Caption := 'Ver en 3D';
      Check.OnClick := OnClick;
      Barra.InsertControl(Check);

      pPanel := TPanel.Create(rDiario.PreviewForm.Controls[i]);
      pPanel.Align := AlRight;
      pPanel.Width := 20;
      pPanel.BevelOuter := bvNone;
      ValorCombo := 45;
      Barra.InsertControl(pPanel);

      // Agregar Los botones de la orientación
      BtnMas := TButton.Create(rDiario.PreviewForm.Controls[i]);
      BtnMas.Align := AlRight;
      BtnMas.Caption := '+';
      BtnMas.Width := 20;
      BtnMas.OnClick := OnChange;
      Barra.InsertControl(BtnMas);

      pPanel2 := TPanel.Create(rDiario.PreviewForm.Controls[i]);
      pPanel2.Align := AlRight;
      pPanel2.Width := 30;
      pPanel2.BevelOuter := bvNone;
      pPanel2.Caption := '45';
      Barra.InsertControl(pPanel2);

      BtnMenos := TButton.Create(rDiario.PreviewForm.Controls[i]);
      BtnMenos.Align := AlRight;
      BtnMenos.Caption := '-';
      BtnMenos.Width := 20;
      BtnMenos.OnClick := OnChange;
      Barra.InsertControl(BtnMenos);
    end;
end;

procedure TfrmControlDirecto.TreeObrasClick(Sender: TObject);
begin
    refresh
end;

procedure TfrmControlDirecto.TreeObrasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    refresh;
end;

procedure TfrmControlDirecto.TreeObrasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    refresh
end;

procedure TfrmControlDirecto.ActividadesxOrdenCalcFields(
  DataSet: TDataSet);
var
    dMontoProgramado,
    dMontoGenerado        : Double ;
    QryAvanceProgramado   : TZReadOnlyQuery;
    tOrigen               : TComponent;
begin
    QryAvanceProgramado := TZReadOnlyQuery.Create(tOrigen);
    QryAvanceProgramado.Connection := connection.zConnection;

    If ActividadesxOrden.FieldValues['sWbs'] <> Null Then
         ActividadesxOrdensWbsSpace.Text := espaces (ActividadesxOrden.FieldValues['iNivel']) + ActividadesxOrden.FieldValues['sWbs'] ;

    If MidStr(Frente, 1 , 8 ) <> 'CONTRATO' Then
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sum(a.dVentaMN * e.dCantidad) as dMontoMN From distribuciondeactividades e ' +
                                    'INNER JOIN actividadesxorden a ON (e.sContrato = a.sContrato And a.sIdConvenio = e.sIdConvenio And a.sNumeroOrden = e.sNumeroOrden And e.sWbs = a.sWbs and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'Where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sIdConvenio = :convenio And e.dIdFecha <= :Fecha And e.sWbs Like :Wbs Group By e.sContrato') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value    :=  cnfGrafica.FieldValues['sContrato'] ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
        Connection.qryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
        Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
        Connection.qryBusca.Params.ParamByName('Orden').DataType    := ftString ;
        Connection.qryBusca.Params.ParamByName('Orden').Value       := Frente ;
        Connection.qryBusca.Params.ParamByName('Wbs').DataType      := ftString ;
        Connection.qryBusca.Params.ParamByName('Wbs').Value         := Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%' ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
            ActividadesxOrdendMontoProgramado.Value := Connection.qryBusca.FieldValues['dMontoMN']
        Else
            ActividadesxOrdendMontoProgramado.Value := 0 ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sum(a.dVentaMN * e.dCantidad) as dMontoMN From estimacionxpartida e ' +
                                    'INNER JOIN actividadesxorden a ON (e.sContrato = a.sContrato And a.sIdConvenio = :convenio And a.sNumeroOrden = e.sNumeroOrden And e.sWbs = a.sWbs and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And e2.dFechaFinal <= :Fecha And e2.lStatus = "Autorizado" ) ' +
                                    'Where e.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e.sWbs Like :Wbs Group By e.sContrato') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value    := cnfGrafica.FieldValues['sContrato'] ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
        Connection.qryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
        Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
        Connection.qryBusca.Params.ParamByName('Orden').DataType    := ftString ;
        Connection.qryBusca.Params.ParamByName('Orden').Value       := Frente ;
        Connection.qryBusca.Params.ParamByName('Wbs').DataType      := ftString ;
        Connection.qryBusca.Params.ParamByName('Wbs').Value         := Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%' ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
            ActividadesxOrdendMontoGenerado.Value := Connection.qryBusca.FieldValues['dMontoMN']
        Else
            ActividadesxOrdendMontoGenerado.Value := 0 ;

        {Obtenemos el avance programado del Frente de Trabajo..}
        try
          QryAvanceprogramado.Active := False;
          QryAvanceprogramado.SQL.Clear;
          QryAvanceProgramado.SQL.Add('select o.sNumeroActividad, o.dCantidad,((o.dPonderado / o.dCantidad) * sum(d.dCantidad)) as Paquete, '+
                                    'o.dPonderado from actividadesxorden o  '+
                                    'inner join distribuciondeactividades d '+
                                    'on (o.sContrato = d.sContrato and o.sIdConvenio = d.sIdConvenio and o.sNumeroOrden = d.sNumeroOrden '+
                                    'and o.sWbs = d.sWbs and dIdFecha <=:Fecha) '+
                                    'where o.sContrato =:Contrato and o.sIdConvenio =:Convenio and o.sNumeroOrden =:Orden '+
                                    'and o.sWbs like :Wbs and sTipoActividad = "Actividad" Group by o.sContrato, o.sWbs order by o.sNumeroActividad, d.dIdFecha');
          QryAvanceProgramado.ParamByName('Contrato').AsString := cnfGrafica.FieldValues['sContrato'];
          QryAvanceProgramado.ParamByName('Convenio').AsString := cnfGrafica.FieldValues['sIdConvenio'];
          QryAvanceProgramado.ParamByName('Fecha').AsDate      := tdIdFecha.Date ;
          QryAvanceProgramado.ParamByName('Orden').AsString    := Frente;
          QryAvanceProgramado.ParamByName('Wbs').AsString      := Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%'   ;
          QryAvanceProgramado.Open;

          if QryAvanceProgramado.RecordCount > 0 then
          begin
              ActividadesxOrdendAvanceProgramado.Value := 0;
              while not QryAvanceProgramado.Eof do
              begin
                  ActividadesxOrdendAvanceProgramado.Value := ActividadesxOrdendAvanceProgramado.Value + QryAvanceProgramado.FieldValues['Paquete'];
                  QryAvanceProgramado.Next;
              end;
              //comparamos la diferencia entre los decimales..
              if ActividadesxOrdendPonderado.Value = 100 then
              begin
                  Connection.qryBusca.Active := False ;
                  Connection.qryBusca.SQL.Clear ;
                  Connection.qryBusca.SQL.Add('Select Sum(dAvancePonderadoDia) as dPonderadoGlobal From avancesglobales Where ' +
                                    'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                                    'dIdFecha <= :Fecha Group By sContrato') ;
                  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                  Connection.qryBusca.Params.ParamByName('Contrato').Value    := cnfGrafica.FieldValues['sContrato'] ;
                  Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                  Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
                  Connection.qryBusca.Params.ParamByName('Orden').DataType    := ftString ;
                  Connection.qryBusca.Params.ParamByName('Orden').Value       := Frente ;
                  Connection.qryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
                  Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
                  Connection.qryBusca.Open ;

                  if Connection.QryBusca.RecordCount > 0 then
                     ActividadesxOrdendAvanceProgramado.Value := Connection.QryBusca.FieldValues['dPonderadoGlobal'];

              end;
          end
          else
          begin
            if ActividadesxOrden.FieldByName('inivel').AsInteger=0 then
            begin
              Connection.qryBusca.Active := False ;
              Connection.qryBusca.SQL.Clear ;
              Connection.qryBusca.SQL.Add('Select Sum(dAvancePonderadoDia) as dPonderadoGlobal From avancesglobales Where ' +
                                'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And ' +
                                'dIdFecha <= :Fecha Group By sContrato') ;
              Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
              Connection.qryBusca.Params.ParamByName('Contrato').Value    := cnfGrafica.FieldValues['sContrato'] ;
              Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
              Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
              Connection.qryBusca.Params.ParamByName('Orden').DataType    := ftString ;
              Connection.qryBusca.Params.ParamByName('Orden').Value       := Frente ;
              Connection.qryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
              Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
              Connection.qryBusca.Open ;

              if Connection.QryBusca.RecordCount > 0 then
                 ActividadesxOrdendAvanceProgramado.Value := Connection.QryBusca.FieldValues['dPonderadoGlobal'];
            end
            else
              ActividadesxOrdendAvanceProgramado.Value := 0;
          end;
        Except
             //La partida no tiene ponderado, lo que origina.. problemas con operaciones...
        end;

        ////TOMAREMOS EL CALCULO DEL ESTATUS DE CONCEPTOS PARA EL CALCULO DE LOS FISICOS DEL PAQUETE Y ACTIVIDADES..>>>
        if chkAvStatus.Checked then
        begin
            If ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' Then
            Begin
                connection.QryBusca.Active := False ;
                connection.QryBusca.SQL.Clear ;
                connection.QryBusca.SQL.Add('Select sum(b.dAvance) as dAvance From bitacoradeactividades b ' +
                                      'Where b.sContrato = :contrato And sNumeroOrden = :Orden And b.sWbs = :Wbs And b.dIdFecha <= :Fecha Group By b.sWbs' ) ;
                connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                connection.QryBusca.Params.ParamByName('Contrato').Value    := cnfGrafica.FieldValues['sContrato'] ;
                connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
                connection.QryBusca.Params.ParamByName('Orden').Value       := ActividadesxOrden.FieldValues['sNumeroOrden'] ;
                Connection.QryBusca.Params.ParamByName('wbs').AsString      := ActividadesxOrden.FieldByName('swbs').AsString;
                connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
                connection.QryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
                connection.QryBusca.Open ;
                If connection.QryBusca.RecordCount > 0 Then
                   ActividadesxOrdendAvanceFisico.Value := connection.QryBusca.FieldValues['dAvance']
                Else
                    ActividadesxOrdendAvanceFisico.Value := 0;
            End
            Else
            begin
                // Totalizar los avances por paquetes
                Connection.QryBusca.Active := False;
                Connection.QryBusca.Sql.Clear;
                Connection.QryBusca.Sql.Add('Select a.dPonderado, sum(b.dAvance) as dAvance, if(sum(b.dAvance) > 100, a.dPonderado, sum(b.dAvance * (a.dPonderado / 100))) as dAvancePonderado ' +
                                    'From actividadesxorden a inner join bitacoradeactividades b on (b.scontrato = a.scontrato and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs and b.didfecha <= :fecha) ' +
                                    'Where a.sContrato = :contrato and a.sIdConvenio =:Convenio And a.sNumeroOrden = :orden And b.sWbs like concat(:wbs, ".%") group by a.swbs');
                Connection.QryBusca.ParamByName('contrato').AsString := cnfGrafica.FieldValues['sContrato'];
                Connection.QryBusca.ParamByName('Convenio').AsString := cnfGrafica.FieldValues['sIdConvenio'];
                Connection.QryBusca.ParamByName('orden').AsString    := ActividadesxOrden.FieldValues['sNumeroOrden'];
                Connection.QryBusca.ParamByName('wbs').AsString      := ActividadesxOrden.FieldValues['swbs'];
                Connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
                Connection.QryBusca.Open;

                ActividadesxOrdendAvanceFisico.Value := 0;
                while Not Connection.QryBusca.Eof do
                begin
                    ActividadesxOrdendAvanceFisico.Value := ActividadesxOrdendAvanceFisico.Value + Connection.QryBusca.FieldByName('dAvancePonderado').AsFloat;
                    Connection.QryBusca.Next;
                end;
                Connection.QryBusca.Close;
            end;
        end;

        //CALCULO ANTERIOR CON BITACORA DE PAQUETES..
        if chkAvStatus.Checked = False then
        begin
            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select Sum(dAvance) as dAvanceGlobal From bitacoradepaquetes Where ' +
                                    'sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio =:Convenio and ' +
                                    'sWbs = :wbs And dIdFecha <= :Fecha Group By sContrato') ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := cnfGrafica.FieldValues['sContrato'] ;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := cnfGrafica.FieldValues['sIdConvenio'] ;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Orden').Value := Frente ;
            Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Wbs').Value := Trim(ActividadesxOrden.FieldValues['sWbs']) ;
            Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
            Connection.qryBusca.Open ;
            If Connection.qryBusca.RecordCount > 0 Then
                ActividadesxOrdendAvanceFisico.Value := Connection.qryBusca.FieldValues['dAvanceGlobal']
            else
               ActividadesxOrdendAvanceFisico.Value := 0 ;
        end;
       //tERMINA CALCULO DE LOS FISICOS DE PAQUETES Y PARTIDAS..
    End
    Else
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sum(a.dVentaMN * e.dCantidad) as dMontoMN From distribuciondeanexo e ' +
                                    'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And e.sIdConvenio = a.sIdConvenio And e.sWbs = a.sWbs and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'Where e.sContrato = :Contrato And e.sIdConvenio = :convenio And e.dIdFecha <= :Fecha And e.sWbs Like :wbs Group By e.sContrato') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value    := cnfGrafica.FieldValues['sContrato'] ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
        Connection.qryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
        Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
        Connection.qryBusca.Params.ParamByName('Wbs').DataType      := ftString ;
        Connection.qryBusca.Params.ParamByName('Wbs').Value         := concat(Trim(ActividadesxOrden.FieldValues['sWbs']) , '.%') ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
            dMontoProgramado := Connection.qryBusca.FieldValues['dMontoMN']
        Else
            dMontoProgramado := 0 ;

        ActividadesxOrdendMontoProgramado.Value  := dMontoProgramado ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sum(a.dVentaMN * e.dCantidad) as dMontoMN From estimacionxpartida e ' +
                                    'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And a.sIdConvenio = :convenio and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad" And a.sWbs Like :Wbs) ' +
                                    'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And e2.dFechaFinal <= :Fecha And e2.lStatus = "Autorizado" ) ' +
                                    'Where e.sContrato = :Contrato Group By e.sContrato') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value    :=  cnfGrafica.FieldValues['sContrato'] ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
        Connection.qryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
        Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
        Connection.qryBusca.Params.ParamByName('Wbs').DataType      := ftString ;
        Connection.qryBusca.Params.ParamByName('Wbs').Value         :=  concat(Trim(ActividadesxOrden.FieldValues['sWbs']) , '.%') ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
            dMontoGenerado := Connection.qryBusca.FieldValues['dMontoMN']
        else
            dMontoGenerado := 0 ;

        ActividadesxOrdendMontoGenerado.Value := dMontoGenerado ;

        ////TOMAREMOS EL CALCULO DEL ESTATUS DE CONCEPTOS PARA EL CALCULO DE LOS FISICOS DEL PAQUETE Y ACTIVIDADES..>>>
        if ChkAvStatus.Checked then
        begin
            If ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' Then
            Begin
                Connection.QryBusca.Active := False;
                Connection.QryBusca.Sql.Text := 'select a.swbs, b.dCantidad as dCantidadOrden, sum(c.dCantidad) as dCantidad, sum(c.dAvance * (b.dCantidad / a.dCantidadAnexo)) as dAvance ' +
                               'from actividadesxanexo a left join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.sWbsContrato = a.sWbs) ' +
                               'left join bitacoradeactividades c on (c.scontrato = b.scontrato and c.snumeroorden = b.snumeroorden and c.swbs = b.sWbs and c.didfecha <= :fecha) ' +
                               'where a.scontrato = :contrato and a.sidconvenio = :convenio and a.sTipoActividad = "Actividad" and a.swbs = :wbs ' +
                               'group by a.swbs order by a.iItemOrden';
                Connection.QryBusca.ParamByName('contrato').AsString := cnfGrafica.FieldValues['sContrato'] ;
                Connection.QryBusca.ParamByName('convenio').AsString := cnfGrafica.FieldValues['sIdConvenio'] ;
                Connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
                Connection.QryBusca.ParamByName('wbs').AsString      := ActividadesxOrden.FieldByName('sWbs').AsString;
                Connection.QryBusca.Open;

                ActividadesxOrdendAvanceFisico.Value := 0;
                while not Connection.QryBusca.Eof do
                begin
                    ActividadesxOrdendAvanceFisico.Value := ActividadesxOrdendAvanceFisico.Value + Connection.QryBusca.FieldByName('dAvance').AsFloat;
                    Connection.QryBusca.Next;
                end;
            End
            Else
            begin
                // TOTALIZAR LOS AVANCES POR PAQUETES..
                Connection.QryBusca.Active := False;
                Connection.QryBusca.Sql.Text := 'select o.swbs, (select sum((c.dAvance * (b.dPonderado / 100)) * (b.dCantidad / a.dCantidadAnexo)) ' +
                                        'from actividadesxanexo a left join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.sWbsContrato = a.sWbs) ' +
                                        'left join bitacoradeactividades c on (c.scontrato = b.scontrato and c.snumeroorden = b.snumeroorden and c.swbs = b.sWbs and c.didfecha <= :fecha) ' +
                                        'where a.scontrato = :contrato and a.sidconvenio = :convenio and a.sTipoActividad = "Actividad" and a.swbs like concat(o.swbs, ".%")) as dAvance ' +
                                        'from actividadesxanexo o where o.scontrato = :contrato and o.sIdConvenio = :convenio and o.sTipoActividad = "Paquete" and o.swbs = :wbs ' +
                                        'order by o.iItemOrden';
                Connection.QryBusca.ParamByName('contrato').AsString := cnfGrafica.FieldValues['sContrato'];
                Connection.QryBusca.ParamByName('convenio').AsString := cnfGrafica.FieldValues['sIdConvenio'];
                Connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
                Connection.QryBusca.ParamByName('wbs').AsString      := ActividadesxOrden.FieldByName('sWbs').AsString;
                Connection.QryBusca.Open;

                ActividadesxOrdendAvanceFisico.Value := 0;
                while not Connection.QryBusca.Eof do
                begin
                    ActividadesxOrdendAvanceFisico.Value := ActividadesxOrdendAvanceFisico.Value + Connection.QryBusca.FieldByName('dAvance').AsFloat;
                    Connection.QryBusca.Next;
                end;
            end;
        end
        else
        begin
            //CALCULO ANTERIOR DE LOS FISICOS DE PAQUETES Y ACTIIVSADES ...
            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select Sum(dAvance) as dAvanceGlobal From bitacoradepaquetes Where ' +
                                    'sContrato = :Contrato And sNumeroOrden= "" And sIdConvenio =:Convenio and ' +
                                    'sWbs = :wbs And dIdFecha <= :Fecha Group By sContrato') ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value    := cnfGrafica.FieldValues['sContrato'] ;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
            Connection.qryBusca.Params.ParamByName('Wbs').DataType      := ftString ;
            Connection.qryBusca.Params.ParamByName('Wbs').Value         := Trim(ActividadesxOrden.FieldValues['sWbs']) ;
            Connection.qryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
            Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
            Connection.qryBusca.Open ;
            If Connection.qryBusca.RecordCount > 0 Then
                ActividadesxOrdendAvanceFisico.Value := Connection.qryBusca.FieldValues['dAvanceGlobal']
            else
                ActividadesxOrdendAvanceFisico.Value := 0 ;
        end;

        {Obtenemos el avance programado del Contrato General..}
        try
           QryAvanceprogramado.Active := False;
           QryAvanceprogramado.SQL.Clear;
           QryAvanceProgramado.SQL.Add('select o.sNumeroActividad, o.dCantidadAnexo,((o.dPonderado / o.dCantidadAnexo) * sum(d.dCantidad)) as Paquete, '+
                                       'o.dPonderado from actividadesxanexo o  '+
                                       'inner join distribuciondeanexo d '+
                                       'on (o.sContrato = d.sContrato and o.sIdConvenio = d.sIdConvenio and o.sWbs = d.sWbs and dIdFecha <=:Fecha) '+
                                       'where o.sContrato =:Contrato and o.sIdConvenio =:Convenio '+
                                       'and o.sWbs like :Wbs and sTipoActividad = "Actividad" Group by o.sContrato, o.sWbs order by o.sNumeroActividad, d.dIdFecha');
           QryAvanceProgramado.ParamByName('Contrato').AsString := cnfGrafica.FieldValues['sContrato']  ;
           QryAvanceProgramado.ParamByName('Convenio').AsString := cnfGrafica.FieldValues['sIdConvenio'];
           QryAvanceProgramado.ParamByName('Fecha').AsDate      := tdIdFecha.Date ;
           QryAvanceProgramado.ParamByName('Wbs').AsString      := Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%'   ;
           QryAvanceProgramado.Open;

           if QryAvanceProgramado.RecordCount > 0 then
           begin
               ActividadesxOrdendAvanceProgramado.Value := 0;
               while not QryAvanceProgramado.Eof do
               begin
                   ActividadesxOrdendAvanceProgramado.Value := ActividadesxOrdendAvanceProgramado.Value + QryAvanceProgramado.FieldValues['Paquete'];
                   QryAvanceProgramado.Next;
               end;
               //comparamos la diferencia entre los decimales..
               if ActividadesxOrdendPonderado.Value = 100 then
               begin
                   Connection.qryBusca.Active := False ;
                   Connection.qryBusca.SQL.Clear ;
                   Connection.qryBusca.SQL.Add('Select Sum(dAvancePonderadoDia) as dPonderadoGlobal From avancesglobales Where ' +
                                    'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = "" And ' +
                                    'dIdFecha <= :Fecha Group By sContrato') ;
                   Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                   Connection.qryBusca.Params.ParamByName('Contrato').Value    := cnfGrafica.FieldValues['sContrato'] ;
                   Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                   Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
                   Connection.qryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
                   Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
                   Connection.qryBusca.Open ;

                   if Connection.QryBusca.RecordCount > 0 then
                     ActividadesxOrdendAvanceProgramado.Value := Connection.QryBusca.FieldValues['dPonderadoGlobal'];
               end;
           end
           else
              ActividadesxOrdendAvanceProgramado.Value := 0;
        Except
             //La partida no tiene ponderado, lo que origina.. problemas con operaciones...
        end;

    End;
end;

procedure TfrmControlDirecto.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada;
end;

procedure TfrmControlDirecto.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmControlDirecto.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        nxGridPrograma.SetFocus
end;

procedure TfrmControlDirecto.tsNumeroOrdenChange(Sender: TObject);
Var
  sSelect : String ;
begin
  Frente := tsNumeroOrden.Text;
  if OrdenesdeTrabajo.Locate('sNumeroOrden', Frente, []) then
  begin
    If MidStr(tsNumeroOrden.Text, 1 , 8 ) <> 'CONTRATO' Then
    Begin
      sSelect := 'Select a.iNivel, a.sWbs, a.sNumeroActividad, a.sNumeroOrden, If(a.iNivel = 0, b.mDescripcion, a.mDescripcion) as mDescripcion, ' +
                 'a.dFechaInicio, a.dFechaFinal, a.dPonderado, a.dVentaMN, a.sTipoActividad ' +
                 'from actividadesxorden a INNER JOIN ordenesdetrabajo b on (b.sContrato = a.sContrato and b.sNumeroOrden = a.sNumeroOrden) '+
                 'Where a.sContrato = :contrato and a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden And a.sTipoActividad = "Paquete" And a.iNivel < :Nivel order by a.iItemOrden' ;
      ActividadesxOrden.Active := False ;
      ActividadesxOrden.SQL.Clear ;
      ActividadesxOrden.SQL.Add(sSelect) ;
      ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
      ActividadesxOrden.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
      ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
      ActividadesxOrden.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
      ActividadesxOrden.Params.ParamByName('orden').DataType    := ftString ;
      ActividadesxOrden.Params.ParamByName('orden').Value       := tsNumeroOrden.Text ;
      ActividadesxOrden.Params.ParamByName('Nivel').DataType    := ftString ;
      ActividadesxOrden.Params.ParamByName('Nivel').Value       := cmbNivel.Text ;
      ActividadesxOrden.Open ;
    End
    Else
    Begin
      sSelect := 'Select iNivel, sWbs, sNumeroActividad, "" as sNumeroOrden, mDescripcion, dFechaInicio, dFechaFinal, dPonderado, dVentaMN, sTipoActividad from actividadesxanexo Where sContrato = :contrato and ' +
                 'sIdConvenio = :Convenio And sTipoActividad = "Paquete" And iNivel <= :Nivel order by iItemOrden' ;
      ActividadesxOrden.Active := False ;
      ActividadesxOrden.SQL.Clear ;
      ActividadesxOrden.SQL.Add(sSelect) ;
      ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
      ActividadesxOrden.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
      ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
      ActividadesxOrden.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
      ActividadesxOrden.Params.ParamByName('Nivel').DataType    := ftString ;
      ActividadesxOrden.Params.ParamByName('Nivel').Value       := cmbNivel.Text ;
      ActividadesxOrden.Open ;
    End ;

    nxGridPrograma.ClearRows ;
    ActividadesxOrden.First ;
    While NOT ActividadesxOrden.Eof Do
    Begin
      with nxGridPrograma do
      begin
        AddRow;
        Cell[0, RowCount - 1].AsString   := espaces (ActividadesxOrden.FieldValues['iNivel']) + ActividadesxOrden.FieldValues['sWbs'] ;
        Cell[1, RowCount - 1].AsString   := ActividadesxOrden.FieldValues['sNumeroActividad'] ;
        Cell[2, RowCount - 1].AsString   := ActividadesxOrden.FieldValues['mDescripcion'] ;
        Cell[3, RowCount - 1].AsDateTime := ActividadesxOrden.FieldValues['dFechaInicio'] ;
        Cell[4, RowCount - 1].AsDateTime := ActividadesxOrden.FieldValues['dFechaFinal'] ;
        Cell[5, RowCount - 1].AsFloat    := ActividadesxOrden.FieldByName('dPonderado').AsFloat ;
        Cell[6, RowCount - 1].AsFloat    := ActividadesxOrden.FieldByName('dPonderado').AsFloat ;
        Cell[7, RowCount - 1].AsFloat    := ActividadesxOrden.FieldByName('dAvanceProgramado').AsFloat ;
        if ActividadesxOrden.FieldByName('dPonderado').AsFloat > 0 Then
           Cell[8, RowCount - 1].AsFloat := ActividadesxOrden.FieldByName('dAvanceProgramado').AsFloat;

        Cell[9, RowCount - 1].AsFloat  := ActividadesxOrden.FieldByName('dAvanceFisico').AsFloat ;
        Cell[10, RowCount - 1].AsFloat := ActividadesxOrden.FieldByName('dAvanceFisico').AsFloat ;

        Cell[11, RowCount - 1].AsFloat := ActividadesxOrden.FieldByName('dVentaMN').AsFloat ;
        Cell[12, RowCount - 1].AsFloat := ActividadesxOrden.FieldValues['dMontoProgramado'] ;
        Cell[13, RowCount - 1].AsFloat := ActividadesxOrden.FieldValues['dMontoGenerado'] ;
      end;
      ActividadesxOrden.Next
    End;
  end;
end;

procedure TfrmControlDirecto.Grid_EstimacionesDblClick(Sender: TObject);
begin
    gpGeneradores.Visible := NOT gpGeneradores.Visible ;
end;


procedure TfrmControlDirecto.Grid_EstimacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmControlDirecto.Grid_EstimacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmControlDirecto.Grid_EstimacionesTitleClick(Column: TColumn);
begin
   UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmControlDirecto.refresh ;
Var
    sFecha, LineAgrupa, Frente_T, sCorte : String ;
    num, totalGlobal, i   : Integer;
    QryAvanceReal, Q_Inicio,QrAuxSalto  : TZReadOnlyQuery;
    WbsPrincipal   : string;
    dSumaAvance    : double;
    FechaInicial,
    FechaSemana    : TDate;
  dAvanceFisico: Double;
  Salto,ControlSalto:Integer;
   RecFinal:Integer;
   FechaPaso:TDate;
   FinSemana:Integer;
   SeGraba:Boolean;
begin
    QryAvanceReal := TZReadOnlyQuery.Create(self);
    QryAvanceReal.Connection := connection.zConnection;

    Q_Inicio := TZReadOnlyQuery.Create(self);
    Q_Inicio.Connection := connection.zConnection;

    QrAuxSalto:=TZReadOnlyQuery.Create(nil);
    QrAuxSalto.Connection := connection.zConnection;

    if OptMes.Checked  then
       LineAgrupa := ' ,month(a.dIdFecha)';

    if OptSemana.Checked  then
       LineAgrupa := ' ,week(a.dIdFecha)';

    if OptDia.Checked  then
       LineAgrupa := ' ,a.dIdFecha';

    If TreeObras.Selected.Text <> '' then
       If TreeObras.Selected.getFirstChild = Nil Then
       Begin
            // Aqui modifico el query de la grafica
            // Busco el reporte diario de la fecha seleccionada ...
            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select sIdConvenio from reportediario where sContrato = :contrato And dIdFecha = :Fecha') ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate ;
            Connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
            Connection.qryBusca.Open ;
            If Connection.qryBusca.RecordCount > 0 Then
            begin
                cnfGrafica.Active := False ;
                cnfGrafica.SQL.Clear ;
                cnfGrafica.SQL.Add('select c.sContrato, cn.sNombre, c.mDescripcion, c.mCliente, c.bImagen, c2.dFechaInicio, c2.dFechaFinal, ' +
                                   'c2.dMontoMN, c2.dMontoDLL, c2.sDescripcion, c2.sIdConvenio, cn.bImagen as bImagenCIA, cn.sOrdenExtraordinaria From contratos c ' +
                                   'INNER JOIN configuracion cn ON (c.sContrato = cn.sContrato) ' +
                                   'INNER JOIN convenios c2 ON (cn.sContrato = c2.sContrato And c2.sIdConvenio = :convenio) ' +
                                   'Where c.sContrato = :Contrato') ;
                cnfGrafica.Params.ParamByName('Contrato').DataType := ftString ;
                cnfGrafica.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
                cnfGrafica.Params.ParamByName('convenio').DataType := ftString ;
                cnfGrafica.Params.ParamByName('convenio').Value := Connection.qryBusca.Fieldbyname('sIdConvenio').AsString ;
                cnfGrafica.Open ;
            end
            Else
            Begin
                cnfGrafica.Active := False ;
                cnfGrafica.SQL.Clear ;
                cnfGrafica.SQL.Add('select c.sContrato, cn.sNombre, c.mDescripcion, c.mCliente, c.bImagen, c2.dFechaInicio, c2.dFechaFinal, ' +
                                   'c2.dMontoMN, c2.dMontoDLL, c2.sDescripcion, c2.sIdConvenio, cn.bImagen as bImagenCIA, cn.sOrdenExtraordinaria From contratos c ' +
                                   'INNER JOIN configuracion cn ON (c.sContrato = cn.sContrato) ' +
                                   'INNER JOIN convenios c2 ON (cn.sContrato = c2.sContrato And cn.sIdConvenio = c2.sIdConvenio) ' +
                                   'Where c.sContrato = :Contrato') ;
                cnfGrafica.Params.ParamByName('Contrato').DataType := ftString ;
                cnfGrafica.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
                cnfGrafica.Open ;
            End ;

            QryConvenios.Active := False ;
            QryConvenios.Params.ParamByName('Contrato').DataType := ftString ;
            QryConvenios.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
            QryConvenios.Open ;

            If cnfGrafica.RecordCount > 0 Then
            Begin
               ReporteDiario.Active := False ;
               ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
               ReporteDiario.Params.ParamByName('contrato').Value := TreeObras.Selected.Text ;
               ReporteDiario.Open ;
               ReporteDiario.Last ;

               Estimaciones.Active := False ;
               Estimaciones.Params.ParamByName('Contrato').DataType := ftString ;
               Estimaciones.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
               Estimaciones.Open ;

               Generadores.Active := False ;
               Generadores.Params.ParamByName('Contrato').DataType := ftString ;
               Generadores.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
               Generadores.Params.ParamByName('Estimacion').DataType := ftString ;
               If Estimaciones.RecordCount > 0 Then
                   Generadores.Params.ParamByName('Estimacion').Value := Estimaciones.Fieldbyname('iNumeroEstimacion').AsString
               Else
                   Generadores.Params.ParamByName('Estimacion').Value := '' ;
               Generadores.Open ;

               QryOrdendeCambio.Active := False ;
               QryOrdendeCambio.Params.ParamByName('Contrato').DataType := ftString ;
               QryOrdendeCambio.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
               QryOrdendeCambio.Open ;

               Calculo ;

               // Grafica Principal ...
               Caption := cnfGrafica.Fieldbyname('sContrato').AsString  + '-' + cnfGrafica.Fieldbyname('sNombre').AsString + '. Monto del Contrato [' + cnfGrafica.fieldByName('dMontoMN').AsString + ']' ;
               dMontoContrato := cnfGRafica.FieldValues['dMontoMN'] ;
               //  Creo la Grafica
               SaveSql.FileName := TreeObras.Selected.Text ;
               If rxGraficaProgramado.RecordCount > 0 then
                   rxGraficaProgramado.EmptyTable   ;

               If rxGraficaFisico.RecordCount > 0 then
                   rxGraficaFisico.EmptyTable  ;

               If rxGraficaFinanciero.RecordCount > 0 then
                   rxGraficaFinanciero.EmptyTable  ;

               dbGraphics.RefreshData ;

               Cadena   := copy(Frente,0,8);
               Frente_T := Frente;
               if Cadena = 'CONTRATO' then
                  Frente_T := '';

               Salto:=0;
               if OptDia.Checked  then
               begin
                QrAuxSalto.Active := False ;
                QrAuxSalto.SQL.text:= 'Select count(*) From avancesglobales a Where a.sContrato = :Contrato And a.sIdConvenio = '  +
                                      'ifnull((select p1.sidconvenio from reportediario p1 where p1.scontrato =:Contrato and p1.snumeroorden =:Orden and p1.didfecha = a.dIdFecha),' +
                                      '(select cc.sidconvenio from convenios cc where cc.scontrato=:Contrato and cc.dfecha=(select max(ccc.dfecha) from convenios ccc where ccc.scontrato=:Contrato))) '+
                                      'And a.sNumeroOrden = :Orden and (:Periodo=0 or (:Periodo<>0 and didfecha between :FechaI and :FechaF)) Group By Year(a.dIdFecha) ' +
                                        LineAgrupa ;
                QrAuxSalto.ParamByName('Contrato').AsString:=TreeObras.Selected.Text ;
                QrAuxSalto.ParamByName('Orden').AsString:= Frente_T ;
                QrAuxSalto.ParamByName('FechaI').AsDate:=tdIdFecha1.Date;
                QrAuxSalto.ParamByName('FechaF').AsDate:=tdIdFecha.Date;
                if chkAplicaFechas.Checked then
                  QrAuxSalto.ParamByName('Periodo').AsInteger:=1
                else
                  QrAuxSalto.ParamByName('Periodo').AsInteger:=0;

                QrAuxSalto.Open ;
                if QrAuxSalto.RecordCount>15 then
                  Salto:=1;

                if QrAuxSalto.RecordCount>32 then
                  Salto:=2;

                if QrAuxSalto.RecordCount>45 then
                  Salto:=3;

                if QrAuxSalto.RecordCount>60 then
                  Salto:=5;

                QrAuxSalto.Close;

                if salto=0 then
                begin
                  //case DaysBetween(tdIdFecha.Date,tdIdFecha1.Date) of
                  if DaysBetween(tdIdFecha.Date,tdIdFecha1.Date)>15 then
                    Salto:=1;

                  if DaysBetween(tdIdFecha.Date,tdIdFecha1.Date)>32 then
                    Salto:=2;

                  if DaysBetween(tdIdFecha.Date,tdIdFecha1.Date)>45 then
                    Salto:=3;

                  if DaysBetween(tdIdFecha.Date,tdIdFecha1.Date)>60 then
                    Salto:=5;
                end;

               end;


                if chkAplicaFechas.Checked then
                  FechaPaso:=tdIdFecha1.Date;



                 {Verificamos si la fecha de inicio seleccionada es la misma conforme al programa..Esto es para iniciar la grafica desde 0}
                 if Frente_T <> '' then
                 begin
                      Q_Inicio.Active := False ;
                      Q_Inicio.SQL.Clear ;
                      Q_Inicio.SQL.Add('Select MIN(dFechaInicio) as inicio From actividadesxorden Where ' +
                                  'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden group by dFechaInicio ') ;
                      Q_Inicio.Params.ParamByName('Contrato').DataType := ftString ;
                      Q_Inicio.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
                      Q_Inicio.Params.ParamByName('Convenio').DataType := ftString ;
                      Q_Inicio.Params.ParamByName('Convenio').Value    := cnfGrafica.Fieldbyname('sIdConvenio').AsString ;
                      Q_Inicio.Params.ParamByName('Orden').DataType    := ftString ;
                      Q_Inicio.Params.ParamByName('Orden').Value       := Frente_T ;
                      Q_Inicio.Open ;


                 end
                 else
                 begin
                      Q_Inicio.Active := False ;
                      Q_Inicio.SQL.Clear ;
                      Q_Inicio.SQL.Add('Select MIN(dFechaInicio) as inicio From actividadesxanexo Where ' +
                                  'sContrato = :Contrato And sIdConvenio = :Convenio group by dFechaInicio ') ;
                      Q_Inicio.Params.ParamByName('Contrato').DataType := ftString ;
                      Q_Inicio.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
                      Q_Inicio.Params.ParamByName('Convenio').DataType := ftString ;
                      Q_Inicio.Params.ParamByName('Convenio').Value    := cnfGrafica.Fieldbyname('sIdConvenio').AsString ;
                      Q_Inicio.Open ;
                 end;

                 if not chkAplicaFechas.Checked then
                  if Q_Inicio.recordcount>0 then
                    FechaPaso:= Q_Inicio.fieldByname('inicio').asDateTime
                  else
                    FechaPaso:=tdIdFecha1.Date;


                 {SE REALIZA CALCULO DE AVANCES PROGRAMADOS.. ivan_2010} {Iniciamos con la consulta.. de programados..}
                 Connection.qryBusca.Active := False ;
                 Connection.qryBusca.SQL.Clear ;
                 //Connection.qryBusca.SQL.Add('Select Month(a.dIdFecha) as dMes, year(a.dIdFecha) as dAnno, Max(a.dIdFecha) as dIdFecha, Max(a.dAvancePonderadoGlobal) as dMensual From avancesglobales a Where ' +

                 if OptSemana.Checked then
                 begin
                  Connection.qryBusca.SQL.Add('Select Month(a.dIdFecha) as dMes, year(a.dIdFecha) as dAnno,'+
                                              'if(week(:Inicio)=week(Max(a.dIdFecha)),Date(:Inicio),Max(a.dIdFecha)) as dIdFecha,'+
                                              'if(week(:Inicio)=week(Max(a.dIdFecha)),a.dAvancePonderadoGlobal,Max(a.dAvancePonderadoGlobal)) as dMensual, '+
                                              'week(a.dIdFecha) as Semana From avancesglobales a Where ');

                 end
                 else
                  Connection.qryBusca.SQL.Add('Select Month(a.dIdFecha) as dMes, year(a.dIdFecha) as dAnno, Max(a.dIdFecha) as dIdFecha, Max(a.dAvancePonderadoGlobal) as dMensual From avancesglobales a Where ');




                  Connection.qryBusca.SQL.Add('a.sContrato = :Contrato And a.sIdConvenio = '  +

                                            'ifnull((select p1.sidconvenio from reportediario p1 where p1.scontrato =:Contrato and p1.snumeroorden =:Orden and p1.didfecha = a.dIdFecha),' +
                                            '(select cc.sidconvenio from convenios cc where cc.scontrato=:Contrato and cc.dfecha=(select max(ccc.dfecha) from convenios ccc where ccc.scontrato=:Contrato)))'+

                                              {:Convenio}' And a.sNumeroOrden = :Orden Group By Year(a.dIdFecha) ' + LineAgrupa ) ;
                 Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                 Connection.qryBusca.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
               //  Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
               //  Connection.qryBusca.Params.ParamByName('Convenio').Value    := cnfGrafica.Fieldbyname('sIdConvenio').AsString ;
                 Connection.qryBusca.Params.ParamByName('Orden').DataType    := ftString ;
                 Connection.qryBusca.Params.ParamByName('Orden').Value       := Frente_T ;
                if OptSemana.Checked then
                begin
                   Connection.qryBusca.ParamByName('Inicio').asdate:=FechaPaso;

                end;
                 Connection.qryBusca.Open ;



                try
                  if chkAplicaFechas.Checked then
                    FechaInicial := tdIdFecha1.Date
                  else
                  if Connection.qryBusca.FieldByname('dIdFecha').IsNull=true then
                    FechaInicial := tdIdFecha1.Date
                  else
                    FechaInicial := Connection.qryBusca.FieldValues['dIdFecha'];
                except
                  on e : exception do
                  begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al seleccionar una obra sin avances globales', 0);
                    EXIT;
                  end;
                end;

                if Connection.qryBusca.recordcount=0 then
                  exit;

               {Si la consulta es mensual, semanal o diaria o inicia igual que el programa, se inicia desde cero ..}
             {  if chkAplicaFechas.Checked  = False Then
               begin
                   rxGraficaProgramado.Append ;
                   rxGraficaProgramado.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                   rxGraficaProgramado.FieldValues['dFecha']      := Q_Inicio.FieldValues['inicio'];
                   rxGraficaProgramado.FieldValues['dProgramado'] := 0 ;
                   rxGraficaProgramado.Post ;
               end;   }

               sCorte := 'No';
               FechaSemana :=FechaInicial; //Connection.qryBusca.FieldValues['dIdFecha'];
               
               Connection.QryBusca.Last;
               RecFinal:=Connection.QryBusca.RecNo;

               Connection.QryBusca.First;
               ControlSalto:=-1;
               While NOT Connection.qryBusca.Eof Do
               Begin
                    rxGraficaProgramado.Append ;
                    rxGraficaProgramado.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                    try
                        sFecha      := sfnFechaFinal ( Connection.qryBusca.FieldValues['dMes'] , Connection.qryBusca.FieldValues['dAnno'] ) ;
                    except
                        on e : exception do begin
                            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al calcular fecha final al refrescar', 0);
                        end;
                    end;
                   { If StrToDate(sFecha) >= cnfGrafica.FieldValues['dFechaFinal'] Then
                    begin
                         rxGraficaProgramado.FieldValues['dFecha']      := cnfGrafica.FieldValues['dFechaFinal'];
                         rxGraficaProgramado.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
                    end
                    Else  }
                    begin
                         if (tdIdFecha.Date <= Connection.qryBusca.FieldByname('dIdFecha').asDateTime) and (sCorte = 'No') and (OptMes.Checked = False) and (OptDia.Checked = False) then
                         begin
                             if tdIdFecha.Date <> FechaSemana then
                             begin
                                 Connection.qryBusca2.Active := False ;
                                 Connection.qryBusca2.SQL.Clear ;
                                 Connection.qryBusca2.SQL.Add('Select dAvancePonderadoGlobal as dMensual From avancesglobales Where ' +
                                                              'sContrato = :Contrato And sIdConvenio = '     +
                                                              'ifnull((select p1.sidconvenio from reportediario p1 where p1.scontrato =:Contrato and p1.snumeroorden =:Orden and p1.didfecha = :Fecha),' +
                                                                '(select sidconvenio from convenios where scontrato=:Contrato and dfecha=(select max(dfecha) from convenios where scontrato=:Contrato)))'+

                                                             {  :Convenio}' And sNumeroOrden = :Orden and dIdFecha =:Fecha ') ;
                                 Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                                 Connection.qryBusca2.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
                               //  Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
                               //  Connection.qryBusca2.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
                                 Connection.qryBusca2.Params.ParamByName('Orden').DataType    := ftString ;
                                 Connection.qryBusca2.Params.ParamByName('Orden').Value       := Frente_T ;
                                 Connection.qryBusca2.Params.ParamByName('Fecha').DataType    := ftDate ;
                                 Connection.qryBusca2.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
                                 Connection.qryBusca2.Open ;

                                 if connection.QryBusca2.RecordCount > 0 then
                                 begin
                                     rxGraficaProgramado.FieldValues['dFecha']      := tdIdFecha.Date ;
                                     rxGraficaProgramado.FieldValues['dProgramado'] := Connection.qryBusca2.FieldValues['dMensual'] ;
                                 end;
                                 sCorte    := 'Si';
                             end
                             else
                             begin
                                 rxGraficaProgramado.FieldValues['dFecha']      := Connection.qryBusca.FieldValues['dIdFecha'] ;
                                 rxGraficaProgramado.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
                                 sCorte  := 'Si';
                             end;
                         end
                         else
                         begin
                              rxGraficaProgramado.FieldValues['dFecha']      := Connection.qryBusca.FieldValues['dIdFecha'] ;
                              rxGraficaProgramado.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
                         end;
                    end;

                    if ChkAplicaFechas.Checked = False then
                    begin
                      if ControlSalto=-1 then
                      begin
                        rxGraficaProgramado.Post;
                        Inc(ControlSalto);
                        if OptSemana.Checked then
                          FinSemana:=Connection.qryBusca.FieldByName('semana').asinteger;
                      end
                      else
                        if ControlSalto=Salto then
                        begin
                          rxGraficaProgramado.Post;
                          ControlSalto:=0;
                          if OptSemana.Checked then
                            FinSemana:=Connection.qryBusca.FieldByName('semana').asinteger;
                        end
                        else
                        begin
                          if (RecFinal=Connection.qryBusca.RecNo) then
                          begin
                            rxGraficaProgramado.Post;
                            ControlSalto:=0;
                            if OptSemana.Checked then
                              FinSemana:=Connection.qryBusca.FieldByName('semana').asinteger;
                          end
                          else
                          begin
                            Inc(ControlSalto);
                            rxGraficaProgramado.Cancel;
                          end;
                        end;
                    end;
                    {**Respetando el rango de fechas}
                    if (chkAplicaFechas.Checked) and ((Connection.qryBusca.FieldValues['dIdFecha'] >= tdIdFecha1.Date) and (Connection.qryBusca.FieldValues['dIdFecha'] <= tdIdFecha.Date) ) then
                    begin
                      if ControlSalto=-1 then
                      begin
                        rxGraficaProgramado.Post;
                        Inc(ControlSalto);
                        if OptSemana.Checked then
                          FinSemana:=Connection.qryBusca.FieldByName('semana').asinteger;

                      end
                      else
                        if ControlSalto=Salto then
                        begin
                          rxGraficaProgramado.Post;
                          ControlSalto:=0;
                          if OptSemana.Checked then
                            FinSemana:=Connection.qryBusca.FieldByName('semana').asinteger;
                        end
                        else
                        begin
                          if (Connection.qryBusca.FieldByName('dIdFecha').AsDateTime = tdIdFecha.Date)
                          or (RecFinal=Connection.qryBusca.RecNo) then
                          begin
                            rxGraficaProgramado.Post;
                            ControlSalto:=0;
                            if OptSemana.Checked then
                              FinSemana:=Connection.qryBusca.FieldByName('semana').asinteger;
                          end
                          else
                          begin
                            Inc(ControlSalto);
                            rxGraficaProgramado.Cancel;
                          end;
                        end;

                    end
                    else
                        rxGraficaProgramado.Cancel;

                    FechaSemana := Connection.qryBusca.FieldValues['dIdFecha'];

                    Connection.qryBusca.Next
               End ;



              ///////////////////////////////////////////////////      week(a.dIdFecha) as Semana
              //FinSemana:Integer;
              SeGraba:=True;
              Connection.qryBusca2.Active := False ;
              Connection.qryBusca2.SQL.Clear ;
               if OptSemana.Checked then
               begin
                Connection.qryBusca2.SQL.Add('Select Month(a.dIdFecha) as dMes, year(a.dIdFecha) as dAnno,Max(a.dIdFecha) as dIdFecha, a.dAvance as dmensual ' +
                ',week(a.dIdFecha) as semana From avancesglobalesxorden a ');

               end
               else
                Connection.qryBusca2.SQL.Add('Select Month(a.dIdFecha) as dMes, year(a.dIdFecha) as dAnno,a.dIdFecha, a.dAvance as dmensual ' +
                                              'From avancesglobalesxorden a ');
               Connection.qryBusca2.SQL.Add('Where a.sContrato = :Contrato And a.sIdConvenio = ' +
                                          'ifnull((select p1.sidconvenio from reportediario p1 where p1.scontrato =:Contrato and p1.snumeroorden =:Orden and p1.didfecha = a.didfecha), ' +
                                            '(select sidconvenio from convenios where scontrato=:Contrato and dfecha=(select max(dfecha) from convenios where scontrato=:Contrato)))'+
                                          { :Convenio}' And a.sNumeroOrden = :Orden and a.dIdFecha between :fecha and :Final Group By Year(a.dIdFecha) '+ LineAgrupa ) ;
              Connection.qryBusca2.params.ParamByName('Contrato').DataType := ftString ;
              Connection.qryBusca2.params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;   //Pq Global_contrato???
              //Connection.qryBusca2.params.ParamByName('Convenio').DataType := ftString ;
              //Connection.qryBusca2.params.ParamByName('Convenio').Value := global_convenio ;
              Connection.qryBusca2.params.ParamByName('Orden').DataType := ftString ;
              Connection.qryBusca2.params.ParamByName('Orden').Value :=Frente_T ; // tsNumeroOrden.Text ;  // Aqui ya perdio el valor
              Connection.qryBusca2.params.ParamByName('fecha').DataType := ftDate ;
              Connection.qryBusca2.params.ParamByName('fecha').Value := IncDay(connection.QryBusca.FieldValues['dIdFecha']) ;
              Connection.qryBusca2.params.ParamByName('final').DataType := ftDate ;
              Connection.qryBusca2.params.ParamByName('final').Value := tdIdFecha.Date;  //connection.QryBusca.FieldValues['dIdFecha'] ;
              Connection.qryBusca2.Open ;
              dAvanceFisico := Connection.QryBusca.FieldValues['dmensual'] ;
              While NOT Connection.qryBusca2.Eof Do
              Begin
                if OptSemana.Checked then
                  if FinSemana=Connection.qryBusca2.FieldByName('semana').asinteger then
                    SeGraba:=false;




                rxGraficaProgramado.Append ;
                rxGraficaProgramado.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                try
                    sFecha      := sfnFechaFinal ( Connection.qryBusca2.FieldValues['dMes'] , Connection.qryBusca2.FieldValues['dAnno'] ) ;
                except
                    on e : exception do begin
                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al calcular fecha final al refrescar', 0);
                    end;
                end;
               // If StrToDate(sFecha) >= cnfGrafica.FieldValues['dFechaFinal'] Then
               // begin
               //      rxGraficaProgramado.FieldValues['dFecha']      := cnfGrafica.FieldValues['dFechaFinal'];
               //      rxGraficaProgramado.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
               // end
               // Else
                begin
                     if (tdIdFecha.Date < Connection.QryBusca2.FieldValues['dIdFecha']) and (sCorte = 'No') and (OptMes.Checked = False) and (OptDia.Checked = False) then
                     begin
                         if tdIdFecha.Date <> FechaSemana then
                         begin
                          rxGraficaProgramado.FieldValues['dFecha']      := tdIdFecha.Date ;
                          rxGraficaProgramado.FieldValues['dProgramado'] := dAvanceFisico;
                          sCorte    := 'Si';
                         end
                         else
                         begin
                             rxGraficaProgramado.FieldValues['dFecha']      := Connection.qryBusca2.FieldValues['dIdFecha'] ;
                             rxGraficaProgramado.FieldValues['dProgramado'] :=dAvanceFisico ;
                             sCorte  := 'Si';
                         end;
                     end
                     else
                     begin
                          rxGraficaProgramado.FieldValues['dFecha']      := Connection.qryBusca2.FieldValues['dIdFecha'] ;
                          rxGraficaProgramado.FieldValues['dProgramado'] := dAvanceFisico ;
                     end;
                end;

                if (ChkAplicaFechas.Checked = False) and (SeGraba) then
                begin
                   //rxGraficaProgramado.Post;
                  if ControlSalto=-1 then
                  begin
                    rxGraficaProgramado.Post;
                    Inc(ControlSalto);
                  end
                  else
                    if ControlSalto=Salto then
                    begin
                      rxGraficaProgramado.Post;
                      ControlSalto:=0;
                    end
                    else
                    begin
                      if (RecFinal=Connection.QryBusca2.RecNo) then
                      begin
                        rxGraficaProgramado.Post;
                        ControlSalto:=0;
                      end
                      else
                      begin
                        Inc(ControlSalto);
                        rxGraficaProgramado.Cancel;
                      end;
                    end;
                end;

                {**Respetando el rango de fechas}
                if (chkAplicaFechas.Checked) and ((Connection.qryBusca2.FieldValues['dIdFecha'] >= tdIdFecha1.Date) and (Connection.qryBusca2.FieldValues['dIdFecha'] <= tdIdFecha.Date) ) and (SeGraba) then

                begin
                  if ControlSalto=-1 then
                  begin
                    rxGraficaProgramado.Post;
                    Inc(ControlSalto);
                  end
                  else
                    if ControlSalto=Salto then
                    begin
                      rxGraficaProgramado.Post;
                      ControlSalto:=0;
                    end
                    else
                    begin
                      if (Connection.QryBusca2.FieldByName('dIdFecha').AsDateTime = tdIdFecha.Date) or (RecFinal=Connection.qryBusca2.RecNo) then
                      begin
                        rxGraficaProgramado.Post;
                        ControlSalto:=0;
                      end
                      else
                      begin
                        Inc(ControlSalto);
                        rxGraficaProgramado.Cancel;
                      end;
                    end;
                end
                else
                    rxGraficaProgramado.Cancel;

                FechaSemana := Connection.qryBusca2.FieldValues['dIdFecha'];





                SeGraba:=true;
                connection.QryBusca2.Next;
              End ;


             {           dAvanceFisico := 0 ;
                  If Connection.QryBusca2.FieldValues['dAvance'] <> Null Then
                  begin
                      dAcumuladoFisico := dAcumuladoFisico + Connection.QryBusca2.FieldValues['dAvance'] ;
                      dAvanceFisico := Connection.QryBusca2.FieldValues['dAvance']
                  End ;
                  rxAvancesContrato.Append ;
                  rxAvancesContrato.FieldValues['dIdFecha'] := Connection.QryBusca2.FieldValues['dIdFecha'] ;
                  rxAvancesContrato.FieldValues['dProgramadoDia'] := 0 ;
                  rxAvancesContrato.FieldValues['dProgramadoAcum'] := Connection.QryBusca.FieldValues['dAvancePonderadoGlobal'] ;
                  rxAvancesContrato.FieldValues['dFisicoDia'] := dAvanceFisico ;
                  rxAvancesContrato.FieldValues['dFisicoAcumulado'] := dAcumuladoFisico ;
                  rxAvancesContrato.Post ;
                  Connection.qryBusca2.Next}













              //////////////////////////////////////////////////////////




               {Calculo del avance Real...}
               // Real ...
               if chkAvStatus.Checked then
               begin
                   {ESTE CALCULO DE LOS AVANCES FISICOS SE REALIZA SI LA OPCION AV. STATUS ESTA ACTIVADA, SE TOMA EL ALGORITMO DE
                   ESTATUS DE CONCEPTOS PARA CALCULO DE AVANCES FISICOS DE PAQUETES Y PARTIDAS EN FRENTE DE TRABAJO...ivan_2010}

                   {Iniciamos desde cero el avance fisico..}
                   if(FechaInicial = Q_Inicio.FieldValues['inicio']) then
                   begin
                       rxGraficaFisico.Append ;
                       rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                       rxGraficaFisico.FieldValues['dFisico']      := 0 ;
                       rxGraficaFisico.Post;
                   end;

                   {Comenzamos el proceso...}
                   If MidStr(Frente, 1 , 8 ) <> 'CONTRATO' Then
                   begin
                      //Buscamos cual es la Wbs principal...
                      Connection.QryBusca2.Active := False;
                      Connection.QryBusca2.SQL.Clear;
                      Connection.QryBusca2.SQL.Add('select sWbs from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbsAnterior = "" ');
                      Connection.QryBusca2.ParamByName('Contrato').AsString := cnfGrafica.FieldValues['sContrato'];
                      Connection.QryBusca2.ParamByName('Convenio').AsString := cnfGrafica.FieldValues['sIdConvenio'];
                      Connection.QryBusca2.ParamByName('Orden').AsString    := Frente_T;
                      Connection.QryBusca2.Open;

                      if Connection.QryBusca2.RecordCount > 0 then
                         WbsPrincipal := Connection.QryBusca2.FieldValues['sWbs']
                      else
                          WbsPrincipal := '';

                      rxGraficaProgramado.First;
                      while not rxGraficaProgramado.Eof do
                      begin
                          if rxGraficaProgramado.FieldValues['dFecha'] = null then
                             rxGraficaProgramado.Next;

                          QryAvanceReal.Active := False;
                          QryAvanceReal.SQL.Clear;
                          QryAvanceReal.SQL.Add('Select a.sWbs, a.dPonderado, sum(b.dAvance) as dAvance, if(sum(b.dAvance) > 100, a.dPonderado, sum(b.dAvance * (a.dPonderado / 100))) as dAvancePonderado '+
                                            'From actividadesxorden a inner join bitacoradeactividades b on (b.scontrato = a.scontrato and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs and b.didfecha <= :Fecha) '+
                                            'Where a.sContrato =:Contrato and a.sIdConvenio = ' +
                                            'ifnull((select p1.sidconvenio from reportediario p1 where p1.scontrato =:Contrato and p1.snumeroorden =:Orden and p1.didfecha = b.dIdFecha), ' +
                                              '(select sidconvenio from convenios where scontrato=:Contrato and dfecha=(select max(dfecha) from convenios where scontrato=:Contrato)))'+


                                            'And a.sNumeroOrden =:Orden And b.sWbs like concat(:Principal, ".%") group by a.sWbs');
                          QryAvanceReal.ParamByName('Contrato').AsString  := cnfGrafica.FieldValues['sContrato'];
                          //QryAvanceReal.ParamByName('Convenio').AsString  := cnfGrafica.FieldValues['sIdConvenio'];
                          QryAvanceReal.ParamByName('Orden').AsString     := Frente_T;
                          QryAvanceReal.ParamByName('Fecha').AsDate       := rxGraficaProgramado.FieldValues['dFecha'] ;
                          QryAvanceReal.ParamByName('Principal').AsString := WbsPrincipal;
                          QryAvanceReal.Open;

                          dSumaAvance := 0;
                          if QryAvanceReal.RecordCount > 0 then
                          begin
                              while not QryAvanceReal.Eof do
                              begin
                                  dSumaAvance := dSumaAvance + QryAvanceReal.FieldValues['dAvance'];
                                  QryAvanceReal.Next;
                              end;

                              if rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date then
                              begin
                                  rxGraficaFisico.Append ;
                                  rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                                  rxGraficaFisico.FieldValues['dFecha']       := rxGraficaProgramado.FieldValues['dFecha']  ;
                                  rxGraficaFisico.FieldValues['dFisico']      := dSumaAvance;

                                  if ChkAplicaFechas.Checked = False then
                                     rxGraficaFisico.Post;

                                  if (chkAplicaFechas.Checked) and ((rxGraficaProgramado.FieldValues['dFecha'] >= tdIdFecha1.Date) and (rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date) ) then
                                      rxGraficaFisico.Post
                                  else
                                      rxGraficaFisico.Cancel;
                              end;
                          end
                          else
                          begin
                            if rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date then
                            begin
                                rxGraficaFisico.Append ;
                                rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                                rxGraficaFisico.FieldValues['dFecha']       := rxGraficaProgramado.FieldValues['dFecha'];
                                rxGraficaFisico.FieldValues['dFisico']      := 0 ;

                                if ChkAplicaFechas.Checked = False then
                                   rxGraficaFisico.Post;

                                if (chkAplicaFechas.Checked) and ((rxGraficaProgramado.FieldValues['dFecha'] >= tdIdFecha1.Date) and (rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date) ) then
                                   rxGraficaFisico.Post
                                else
                                   rxGraficaFisico.Cancel;
                            end;
                          end;
                          rxGraficaProgramado.Next;
                      end;
                   end
                   else
                   begin
                      {ESTE CALCULO DE LOS AVANCES FISICOS SE REALIZA SI LA OPCION AV. STATUS ESTA ACTIVADA, SE TOMA EL ALGORITMO DE
                      ESTATUS DE CONCEPTOS PARA CALCULO DE AVANCES FISICOS DE PAQUETES Y PARTIDAS PARA TODO EL CONTRATO...ivan_2010}

                      Connection.QryBusca2.Active := False;
                      Connection.QryBusca2.SQL.Clear;
                      Connection.QryBusca2.SQL.Add('select sWbs from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sWbsAnterior = "" ');
                      Connection.QryBusca2.ParamByName('Contrato').AsString := cnfGrafica.FieldValues['sContrato'];
                      Connection.QryBusca2.ParamByName('Convenio').AsString := cnfGrafica.FieldValues['sIdConvenio'];
                      Connection.QryBusca2.Open;

                      if Connection.QryBusca2.RecordCount > 0 then
                         WbsPrincipal := Connection.QryBusca2.FieldValues['sWbs']
                      else
                          WbsPrincipal := '';

                      rxGraficaProgramado.First;
                      while not rxGraficaProgramado.Eof do
                      begin
                              if rxGraficaProgramado.FieldValues['dFecha'] = null then
                                 rxGraficaProgramado.Next;

                              QryAvanceReal.Active := False;
                              QryAvanceReal.SQL.Clear;
                              QryAvanceReal.SQL.Add('select o.swbs, (select sum((c.dAvance * (b.dPonderado / 100)) * (b.dCantidad / a.dCantidadAnexo)) '+
                                                'from actividadesxanexo a '+
                                                'left join actividadesxorden b on (b.scontrato = a.sContrato and b.sIdConvenio =:Convenio and b.sWbsContrato = a.sWbs ) '+
                                                'left join bitacoradeactividades c on (c.sContrato = b.sContrato and c.sNumeroOrden = b.sNumeroOrden and c.swbs = b.sWbs and c.didfecha <= :Fecha) '+
                                                'where a.scontrato = :Contrato and a.sIdConvenio = ' +
                                                'ifnull((select p1.sidconvenio from reportediario p1 where p1.scontrato =:Contrato and p1.snumeroorden =:Orden and p1.didfecha = c.didfecha), ' +
                                                  '(select sidconvenio from convenios where scontrato=:Contrato and dfecha=(select max(dfecha) from convenios where scontrato=:Contrato)))'+
                                                {:Convenio}' and a.sTipoActividad = "Actividad" and a.swbs like concat(o.swbs, ".%")) as dAvance '+
                                                'from actividadesxanexo o where o.sContrato =:Contrato and o.sIdConvenio =:Convenio and o.sTipoActividad = "Paquete" and o.swbs =:Principal  '+
                                                'order by o.iItemOrden ');
                              QryAvanceReal.ParamByName('Contrato').AsString  := cnfGrafica.FieldValues['sContrato'];
                            //  QryAvanceReal.ParamByName('Convenio').AsString  := cnfGrafica.FieldValues['sIdConvenio'];
                              QryAvanceReal.ParamByName('Fecha').AsDate       := rxGraficaProgramado.FieldValues['dFecha'] ;
                              QryAvanceReal.ParamByName('Principal').AsString := WbsPrincipal;
                              QryAvanceReal.Open;

                              if QryAvanceReal.RecordCount > 0 then
                              begin
                                  if rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date then
                                  begin
                                      rxGraficaFisico.Append ;
                                      rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                                      rxGraficaFisico.FieldValues['dFecha']       := rxGraficaProgramado.FieldValues['dFecha'];
                                      rxGraficaFisico.FieldValues['dFisico']      := QryAvanceReal.FieldValues['dAvance'] ;

                                      if ChkAplicaFechas.Checked = False then
                                         rxGraficaFisico.Post;

                                      if (chkAplicaFechas.Checked) and ((rxGraficaProgramado.FieldValues['dFecha'] >= tdIdFecha1.Date) and (rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date) ) then
                                         rxGraficaFisico.Post
                                      else
                                         rxGraficaFisico.Cancel;
                                  end;
                              end;
                          rxGraficaProgramado.Next;
                      end;
                   end;
               end
               else
               begin
                  {ESTE CALCULO DE LOS AVANCES FISICOS SE REALIZA DE LA BITACORA DE AVANCES GLOBALES...ivan_2010}

                  {Inciamos desde cero el avance fisico..}
                {  if(FechaInicial = Q_Inicio.FieldValues['inicio']) and (chkAplicaFechas.Checked) then
                  begin
                      rxGraficaFisico.Append ;
                      rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                      rxGraficaFisico.FieldValues['dFisico']      := 0 ;
                      rxGraficaFisico.Post;
                  end;  }

                  rxGraficaProgramado.First;
                  While NOT rxGraficaProgramado.Eof Do
                  Begin
                      if rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date then
                      begin
                          Connection.qryBusca2.Active := False ;
                          Connection.qryBusca2.SQL.Clear ;
                          Connection.qryBusca2.SQL.Add('Select Sum(a.dAvance) as dMensual From avancesglobalesxorden a Where ' +
                                                       'a.sContrato = :Contrato And a.sIdConvenio = ' +
                                                       'ifnull((select p1.sidconvenio from reportediario p1 where p1.scontrato =:Contrato and p1.snumeroorden =:Orden and p1.didfecha = :Fecha), ' +
                                                         '(select sidconvenio from convenios where scontrato=:Contrato and dfecha=(select max(dfecha) from convenios where scontrato=:Contrato)))'+
                                                       { :Convenio}' And a.sNumeroOrden = :Orden And a.dIdFecha <= :Fecha Group By a.sContrato' ) ;
                          Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                          Connection.qryBusca2.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
                         // Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
                         // Connection.qryBusca2.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
                          Connection.qryBusca2.Params.ParamByName('Orden').DataType    := ftString ;
                          Connection.qryBusca2.Params.ParamByName('Orden').Value       := Frente_T ;
                          Connection.qryBusca2.Params.ParamByName('Fecha').DataType    := ftDate ;
                          Connection.qryBusca2.Params.ParamByName('Fecha').Value       := rxGraficaProgramado.FieldValues['dFecha'] ;
                          Connection.qryBusca2.Open ;

                          If Connection.qryBusca2.RecordCount > 0 Then
                          Begin
                               rxGraficaFisico.Append ;
                               rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                               rxGraficaFisico.FieldValues['dFecha']       := rxGraficaProgramado.FieldValues['dFecha']  ;
                               rxGraficaFisico.FieldValues['dFisico']      := Connection.qryBusca2.FieldValues['dMensual'] ;

                               if ChkAplicaFechas.Checked = False then
                                  rxGraficaFisico.Post;

                               if (chkAplicaFechas.Checked) and ((rxGraficaFisico.FieldValues['dFecha'] >= tdIdFecha1.Date) and (rxGraficaFisico.FieldValues['dFecha'] <= tdIdFecha.Date) ) then
                                  rxGraficaFisico.Post
                               else
                                  rxGraficaFisico.Cancel;
                          End
                          else
                          begin
                                 if rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date then
                                  begin
                                      rxGraficaFisico.Append ;
                                      rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                                      rxGraficaFisico.FieldValues['dFecha']       := rxGraficaProgramado.FieldValues['dFecha'];
                                      rxGraficaFisico.FieldValues['dFisico']      := 0 ;

                                      if ChkAplicaFechas.Checked = False then
                                         rxGraficaFisico.Post;

                                      if (chkAplicaFechas.Checked) and ((rxGraficaProgramado.FieldValues['dFecha'] >= tdIdFecha1.Date) and (rxGraficaProgramado.FieldValues['dFecha'] <= tdIdFecha.Date) ) then
                                         rxGraficaFisico.Post
                                      else
                                         rxGraficaFisico.Cancel;
                                  end;
                          end;
                      End
                      else
                      begin
                          {En esta parte tomamos en cuenta si el rango es mensual y la fecha es menor al fin de mes...}
                          if OptMes.Checked then
                          begin
                              {Con esto comparamos si pertenece al mismo mes y año....}
                              if copy(DateToStr(tdIdFecha.Date),3,8) = copy(DateToStr(rxGraficaProgramado.FieldValues['dFecha']),3,8)  then
                              begin
                                  Connection.qryBusca2.Active := False ;
                                  Connection.qryBusca2.SQL.Clear ;
                                  Connection.qryBusca2.SQL.Add('Select Sum(a.dAvance) as dMensual From avancesglobalesxorden a Where ' +
                                                              'a.sContrato = :Contrato And a.sIdConvenio = '+
                                                                'ifnull((select p1.sidconvenio from reportediario p1 where p1.scontrato =:Contrato and p1.snumeroorden =:Orden and p1.didfecha = a.didfecha), ' +
                                                                  '(select sidconvenio from convenios where scontrato=:Contrato and dfecha=(select max(dfecha) from convenios where scontrato=:Contrato)))'+
                                                              {:Convenio}' And a.sNumeroOrden = :Orden And a.dIdFecha <= :Fecha Group By a.sContrato' ) ;
                                  Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                                  Connection.qryBusca2.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
                                 // Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
                                //  Connection.qryBusca2.Params.ParamByName('Convenio').Value    := cnfGrafica.FieldValues['sIdConvenio'] ;
                                  Connection.qryBusca2.Params.ParamByName('Orden').DataType    := ftString ;
                                  Connection.qryBusca2.Params.ParamByName('Orden').Value       := Frente_T ;
                                  Connection.qryBusca2.Params.ParamByName('Fecha').DataType    := ftDate ;
                                  Connection.qryBusca2.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
                                  Connection.qryBusca2.Open ;

                                  If Connection.qryBusca2.RecordCount > 0 Then
                                  Begin
                                      rxGraficaFisico.Append ;
                                      rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                                      rxGraficaFisico.FieldValues['dFecha']       := rxGraficaProgramado.FieldValues['dFecha']  ;
                                      rxGraficaFisico.FieldValues['dFisico']      := Connection.qryBusca2.FieldValues['dMensual'] ;
                                      rxGraficaFisico.Post;
                                  end;
                              end;
                          end;
                      end;
                      rxGraficaProgramado.Next;
                  End;
               end;

               if OptMes.Checked  then
                  LineAgrupa := ' ,month(dFechaFinal)';

               if OptSemana.Checked  then
                  LineAgrupa := ' ,week(dFechaFinal)';

               if OptDia.Checked  then
                  LineAgrupa := ' ,dFechaFinal';

               {SE RELIZA CALCULO DE LOS AVANCES FINANCIEROS..ivan_2010}
               if chkMoneda.Checked  then
               begin
                  Connection.qryBusca.Active := False ;
                  Connection.qryBusca.SQL.Clear ;
                  Connection.qryBusca.SQL.Add('Select year(dFechaFinal) as dAnno , month(dFechaFinal) as dMes From estimaciones Where ' +
                                              'sContrato = :Contrato Group By Year(dFechaFinal)'+LineAgrupa ) ;
                  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                  Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
                  Connection.qryBusca.Open ;
                  While NOT Connection.qryBusca.Eof Do
                  Begin
                      try
                          sFecha := sfnFechaFinal ( Connection.qryBusca.FieldValues['dMes'] , Connection.qryBusca.FieldValues['dAnno'] ) ;
                      except
                          on e : exception do begin
                              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Contratos', 'Al calcular fecha final al refrescar', 0);
                          end;
                      end;
                      Connection.qryBusca2.Active := False ;
                      Connection.qryBusca2.SQL.Clear ;
                      If chkAdicionales.Checked Then
                          Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimaciones ' +
                                                       'Where sContrato = :Contrato And dFechaFinal <= :Fecha Group By sContrato' )
                      Else
                          Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimaciones ' +
                                                       'Where sContrato = :Contrato And dFechaFinal <= :Fecha And sNumeroGenerador NOT Like "%A%" Group By sContrato' ) ;
                      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                      Connection.qryBusca2.Params.ParamByName('Contrato').Value    := TreeObras.Selected.Text ;
                      Connection.qryBusca2.Params.ParamByName('Fecha').DataType    := ftDate ;
                      Connection.qryBusca2.Params.ParamByName('Fecha').Value       := sFecha;
                      Connection.qryBusca2.Open ;
                      If Connection.qryBusca2.RecordCount > 0 Then
                      Begin
                         rxGraficaFinanciero.Append ;
                         rxGraficaFinanciero.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                         rxGraficaFinanciero.FieldValues['dFecha']       := sFecha ;
                         try
                           rxGraficaFinanciero.FieldValues['dFinanciero']  := (Connection.qryBusca2.FieldValues['dReal'] / dMontoContrato) * 100 ;
                         Except
                         end;
                         rxGraficaFinanciero.Post ;
                      End ;
                      Connection.qryBusca.Next
                  End ;
               end;

               dbGraphics.Title.Text.Clear ;
              // dbGraphics.Title.Text.Add ('Avances Programado/Fisico/Financiero') ;
              // dbGraphics.Title.Text.Add (Caption) ;
              // dbGraphics.Series[2].Active:=false;
            //   dbGraphics.Title.Text.Add (cnfGrafica.FieldValues['mDescripcion']) ;
               dbGraphics.Refresh;
            End
        End;
    freeandnil(QrAuxSalto);
    freeandnil(QryAvanceReal);
    FreeandNil(Q_Inicio);
end;


End.

