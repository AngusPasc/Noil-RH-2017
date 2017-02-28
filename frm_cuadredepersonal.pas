
unit frm_cuadredepersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids, global, frm_connection, utilerias,
  DB, ADODB, Buttons, ExtCtrls, frxClass, frxDBSet, ZAbstractRODataset,
  ZDataset, ZAbstractDataset, Controls, Menus, dblookup, UnitExcepciones, udbgrid, UFunctionsGHH,
  DBDateTimePicker, UnitValidacion, rxToolEdit, rxCurrEdit, RXDBCtrl, NxColumns,
  NxDBColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvDropDown, AdvCustomGridDropDown, AdvGridDropDown, AdvLookupBar,
  AdvGridLookupBar, AdvObj, BaseGrid, AdvGrid, AdvCGrid, RxMemDS, Newpanel,
  NxCollection, sMaskEdit, sCustomComboEdit, sCurrEdit;

type
  TfrmCuadredePersonal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tsIdCategoria: TDBLookupComboBox;
    ds_personal: TDataSource;
    btnUpdate: TBitBtn;
    DBTripulacion: TfrxDBDataset;
    btnPrinter: TBitBtn;
    DBTotalesxCategoria: TfrxDBDataset;
    frxTripulacion: TfrxReport;
    ds_categorias: TDataSource;
    categorias: TZReadOnlyQuery;
    tripulaciondiaria: TZQuery;
    btnNuevo: TBitBtn;
    btnDelete: TBitBtn;
    qry_personal: TZQuery;
    catalogo_maestro: TZReadOnlyQuery;
    PopupMenu1: TPopupMenu;
    ripulacinDiariaDiaAnterior1: TMenuItem;
    tdIdFecha: TDBDateTimePicker;
    ActualizaPersonal: TMenuItem;
    grid_categorias: TRxDBGrid;
    grid_titulo_laboran: TRxDBGrid;
    grid_titulo_pernocta: TRxDBGrid;
    grid_titulo_ordenes: TRxDBGrid;
    grid_ordenes: TRxDBGrid;
    grid_pernocta: TRxDBGrid;
    grid_laboran: TRxDBGrid;
    grid_personal: TRxDBGrid;
    grid_real_categoria: TRxDBGrid;
    Label6: TLabel;
    tsOrdenes: TDBLookupComboBox;
    Label3: TLabel;
    Label7: TLabel;
    tsPernoctas: TDBLookupComboBox;
    Label8: TLabel;
    tsPlataformas: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    tsHoraInicio: TMaskEdit;
    tsHoraFinal: TMaskEdit;
    ds_ordenes: TDataSource;
    Ordenes: TZReadOnlyQuery;
    ds_pernoctas: TDataSource;
    pernoctas: TZReadOnlyQuery;
    ds_plataformas: TDataSource;
    plataformas: TZReadOnlyQuery;
    zColumnas: TZQuery;
    ds_columnas: TDataSource;
    ds_catalogo: TDataSource;
    qry_catalogo: TZQuery;
    rxPersonal: TRxMemoryData;
    PopupOrdenes: TPopupMenu;
    DelHoras: TMenuItem;
    DelPlataforma: TMenuItem;
    DelPernocta: TMenuItem;
    DelOrden: TMenuItem;
    PopupPersonal: TPopupMenu;
    DelCategoria: TMenuItem;
    personalAnterior: TMenuItem;
    cargarCategoria: TMenuItem;
    N1: TMenuItem;
    Panel: tNewGroupBox;
    grid_catalogo_maestro: TRxDBGrid;
    cmdAceptar: TButton;
    cmdCancelar: TButton;
    ds_catalogo_maestro: TDataSource;
    btnCargar: TBitBtn;
    dTotal: TMaskEdit;
    grid_total_ordenes: TRxDBGrid;
    dsTotales: TDataSource;
    rxTotales: TRxMemoryData;
    Label4: TLabel;
    btnEdit: TBitBtn;
    CargarReportedeCampo1: TMenuItem;
    btnNuevoPersonal: TBitBtn;
    PanelDatos: TNxFlipPanel;
    Label5: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    tsIdTipodePersonal: TDBLookupComboBox;
    tsAgrupacion: TDBLookupComboBox;
    cmdGuardar: TButton;
    cmdCancelaG: TButton;
    TiposdePersonal: TZReadOnlyQuery;
    ds_tiposdepersonal: TDataSource;
    ds_gruposPersonal: TDataSource;
    GruposPersonal: TZQuery;
    tsIdPersonal: TEdit;
    tsDescripcion: TEdit;
    qLocBuscar: TZQuery;
    PanelTipo: TNxFlipPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    cmdTipoObra: TButton;
    tPersonal1: TsCalcEdit;
    tPersonal2: TsCalcEdit;
    rxPersonal_PU: TRxMemoryData;
    ds_tiposPersonal: TDataSource;
    zTiposPersonal: TZQuery;
    lbl4: TLabel;
    lbl3: TLabel;
    tPersonal3: TsCalcEdit;
    tPersonal4: TsCalcEdit;
    lbl6: TLabel;
    lbl5: TLabel;
    tPersonal5: TsCalcEdit;
    tPersonal6: TsCalcEdit;
    lbl7: TLabel;
    tPersonal7: TsCalcEdit;
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure ttripulacion_extranjerosKeyPress(Sender: TObject;
      var Key: Char);
    procedure tdIdFechaExit(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_personalAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure tsIdCategoriaExit(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxTripulacionGetValue(const VarName: string; var Value: Variant);
    procedure tsIdCategoriaEnter(Sender: TObject);
    procedure qry_personalBeforePost(DataSet: TDataSet);
    procedure ActualizaPersonalClick(Sender: TObject);
    procedure grid_personalTopLeftChanged(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure tsOrdenesKeyPress(Sender: TObject; var Key: Char);
    procedure tsPernoctasKeyPress(Sender: TObject; var Key: Char);
    procedure tsPlataformasKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure btnUpdateClick(Sender: TObject);
    procedure zColumnasCalcFields(DataSet: TDataSet);
    //Funciones y procedimientos..
    procedure CreaColumnas;
    procedure CargaDatos;
    procedure EliminaColumnas(sParamContrato, sParamPernocta, sParamPlataforma, sParamInicio, sParamFinal, sParamOpcion : string);
    procedure InsertaTripulacion;
    procedure ActualizaAnexoPersonal;

    procedure grid_laboranEnter(Sender: TObject);
    procedure grid_personalEnter(Sender: TObject);
    procedure grid_pernoctaEnter(Sender: TObject);
    procedure grid_ordenesEnter(Sender: TObject);
    procedure grid_personalTitleClick(Column: TColumn);
    procedure grid_laboranTitleClick(Column: TColumn);
    procedure grid_pernoctaTitleClick(Column: TColumn);
    procedure grid_ordenesTitleClick(Column: TColumn);
    procedure DelOrdenClick(Sender: TObject);
    procedure DelPernoctaClick(Sender: TObject);
    procedure DelPlataformaClick(Sender: TObject);
    procedure DelHorasClick(Sender: TObject);
    procedure DelCategoriaClick(Sender: TObject);
    procedure personalAnteriorClick(Sender: TObject);
    procedure cmdAceptarClick(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
    procedure cargarCategoriaClick(Sender: TObject);
    procedure btnCargarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure CargarReportedeCampo1Click(Sender: TObject);
    procedure btnNuevoPersonalClick(Sender: TObject);
    procedure cmdGuardarClick(Sender: TObject);
    procedure cmdCancelaGClick(Sender: TObject);
    procedure tsIdTipodePersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tsAgrupacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPersonalEnter(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsIdPersonalExit(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_total_ordenesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure grid_real_categoriaGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnPrinter2Click(Sender: TObject);
    procedure grid_personalDblClick(Sender: TObject);
    procedure grid_personalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmdTipoObraClick(Sender: TObject);
    procedure tPersonal1KeyPress(Sender: TObject; var Key: Char);
    procedure tPersonal2KeyPress(Sender: TObject; var Key: Char);
    procedure tPersonal1Enter(Sender: TObject);
    procedure tPersonal1Exit(Sender: TObject);
    procedure tPersonal2Enter(Sender: TObject);
    procedure tPersonal2Exit(Sender: TObject);
    procedure rxPersonalBeforeEdit(DataSet: TDataSet);
    procedure rxPersonalBeforePost(DataSet: TDataSet);
    procedure grid_personalColEnter(Sender: TObject);
    procedure cmdTipoObraExit(Sender: TObject);
    procedure grid_personalGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure tPersonal3KeyPress(Sender: TObject; var Key: Char);
    procedure tPersonal4KeyPress(Sender: TObject; var Key: Char);
    procedure tPersonal5KeyPress(Sender: TObject; var Key: Char);
    procedure tPersonal6KeyPress(Sender: TObject; var Key: Char);
    procedure tPersonal7KeyPress(Sender: TObject; var Key: Char);
    procedure tPersonal3Enter(Sender: TObject);
    procedure tPersonal3Exit(Sender: TObject);
    procedure tPersonal4Enter(Sender: TObject);
    procedure tPersonal4Exit(Sender: TObject);
    procedure tPersonal5Enter(Sender: TObject);
    procedure tPersonal5Exit(Sender: TObject);
    procedure tPersonal6Enter(Sender: TObject);
    procedure tPersonal6Exit(Sender: TObject);
    procedure tPersonal7Enter(Sender: TObject);
    procedure tPersonal7Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCuadredePersonal: TfrmCuadredePersonal;
  sFirma_PEP, sPuesto_PEP, sFirma_Contratista, sPuesto_Contratista: string;
  fechaAntes: tDate;
  utgrid: ticdbgrid;
  total_columnas, total_columnas_pu,
  indice_columna   : integer;
  coordenadaX, coordenadaY, columna_Personal : integer;
  lP1, lP2, lP3, lP4, lP5, lP6, lP7 : boolean;

implementation

uses frm_tripulacion_diaria, frm_personal;

{$R *.dfm}

procedure TfrmCuadredePersonal.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  {if key = #13 then
    tsIdCategoria.SetFocus  }
end;

procedure TfrmCuadredePersonal.tPersonal1Enter(Sender: TObject);
begin
    tPersonal1.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tPersonal1Exit(Sender: TObject);
begin
    tPersonal1.Color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tPersonal1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 then
    begin
       PanelTipo.Visible := False;
       rxPersonal.Cancel;
       grid_personal.SetFocus;
    end;

   try
      if key = #13 then
        tPersonal2.SetFocus
    except
        cmdTipoObra.SetFocus
    end;
end;

procedure TfrmCuadredePersonal.tsIdCategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
 { if key = #13 then
    grid_tripulacion.SetFocus   }
end;

procedure TfrmCuadredePersonal.tsIdPersonalEnter(Sender: TObject);
begin
    tsIdPersonal.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tsIdPersonalExit(Sender: TObject);
begin
    tsIdPersonal.Color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tsDescripcion.SetFocus;
end;

procedure TfrmCuadredePersonal.tsIdTipodePersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsAgrupacion.SetFocus;
end;

procedure TfrmCuadredePersonal.tsOrdenesKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsPernoctas.SetFocus;
end;

procedure TfrmCuadredePersonal.tsPernoctasKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsPlataformas.SetFocus;
end;

procedure TfrmCuadredePersonal.tsPlataformasKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsHoraInicio.SetFocus;
end;

procedure TfrmCuadredePersonal.ttripulacion_extranjerosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tdidFecha.SetFocus
end;

procedure TfrmCuadredePersonal.zColumnasCalcFields(DataSet: TDataSet);
begin

end;

//Inicio LA forma
procedure TfrmCuadredePersonal.FormShow(Sender: TObject);
var
   i : integer;
begin
    UtGrid := TicdbGrid.create(grid_personal);
    tdIdFecha.Date := Date();
    tdIdFecha.SetFocus;

    grid_personal.Columns.Clear;
    grid_laboran.Columns.Clear;
    grid_pernocta.Columns.Clear;
    grid_ordenes.Columns.Clear;

    zTiposPersonal.Active := False;
    ztiposPersonal.Open;

    i := 1;
    lbl1.Visible := False;
    lbl2.Visible := False;
    lbl3.Visible := False;
    lbl4.Visible := False;
    lbl5.Visible := False;
    lbl6.Visible := False;
    lbl7.Visible := False;
    tPersonal1.Visible := False;
    tPersonal2.Visible := False;
    tPersonal3.Visible := False;
    tPersonal4.Visible := False;
    tPersonal5.Visible := False;
    tPersonal6.Visible := False;
    tPersonal7.Visible := False;

    while not zTiposPersonal.Eof do
    begin
        if i = 1 then
        begin
           lbl1.Caption := zTiposPersonal.FieldValues['sIdTipoPersonal'];
           lbl1.Visible := True;
           tPersonal1.Visible := True;
           PanelTipo.Height   := 50;
        end;

        if i = 2 then
        begin
           lbl2.Caption := zTiposPersonal.FieldValues['sIdTipoPersonal'];
           lbl2.Visible := True;
           tPersonal2.Visible := True;
           PanelTipo.Height   := PanelTipo.Height + 22;
        end;

        if i = 3 then
        begin
           lbl3.Caption := zTiposPersonal.FieldValues['sIdTipoPersonal'];
           lbl3.Visible := True;
           tPersonal3.Visible := True;
           PanelTipo.Height   := PanelTipo.Height + 22;
        end;

        if i = 4 then
        begin
           lbl4.Caption := zTiposPersonal.FieldValues['sIdTipoPersonal'];
           lbl4.Visible := True;
           tPersonal4.Visible := True;
           PanelTipo.Height   := PanelTipo.Height + 22;
        end;

        if i = 5 then
        begin
           lbl5.Caption := zTiposPersonal.FieldValues['sIdTipoPersonal'];
           lbl5.Visible := True;
           tPersonal5.Visible := True;
           PanelTipo.Height   := PanelTipo.Height + 22;
        end;

        if i = 6 then
        begin
           lbl6.Caption := zTiposPersonal.FieldValues['sIdTipoPersonal'];
           lbl6.Visible := True;
           tPersonal6.Visible := True;
           PanelTipo.Height   := PanelTipo.Height + 22;
        end;

        if i = 7 then
        begin
           lbl7.Caption := zTiposPersonal.FieldValues['sIdTipoPersonal'];
           lbl7.Visible := True;
           tPersonal7.Visible := True;
           PanelTipo.Height   := PanelTipo.Height + 22;
        end;

        inc(i);
        zTiposPersonal.Next;
    end;

    zColumnas.Active := False;
    zColumnas.ParamByName('fecha').AsDate := tdIdFecha.Date;
    zColumnas.Open;

    qry_Catalogo.Active := False;
    qry_Catalogo.ParamByName('fecha').AsDate := tdIdFecha.Date;
    qry_Catalogo.Open;

    CreaColumnas;

    qry_personal.Active := False;
    qry_personal.ParamByName('fecha').AsDate := tdIdFecha.Date;
    qry_personal.Open;

    Categorias.Active := False;
    Categorias.ParamByName('fecha').AsDate := fechaAntes;
    Categorias.Open;

    ordenes.Active := False;
    ordenes.SQL.Clear;
    ordenes.SQL.Add('select sContrato, sNumeroPOT, sProrrateoBarco from contratos where sContrato <> :Barco ');
    ordenes.ParamByName('Barco').AsString := global_contrato_barco;
    ordenes.Open;

    pernoctas.Active := False;
    pernoctas.SQL.Clear;
    pernoctas.SQL.Add('select * from pernoctan ');
    pernoctas.Open;

    plataformas.Active := False;
    plataformas.SQL.Clear;
    plataformas.SQL.Add('select sIdPlataforma, sDescripcion from plataformas ');
    plataformas.Open;
end;

procedure TfrmCuadredePersonal.frxTripulacionGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'FECHA_REPORTE') = 0 then
    Value := global_fecha_barco;

  if CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
    Value := global_dias_por_transcurrir;

  if CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
    Value := global_dias_transcurridos;

  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    Value := sSuperIntendente;

  if CompareText(VarName, 'SUPERVISOR') = 0 then
    Value := sSupervisor;

  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    Value := sSupervisorTierra;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;

  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    Value := sPuestoSupervisor;

  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    Value := sPuestoSupervisorTierra;

  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
    'where sContrato =:Contrato and dFechaInicio <= :Fecha and dFechaFinal >=:Fecha order by dFechaInicio');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate := tdIdFecha.date;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select sDescripcion from pernoctan where sIdPernocta =:Embarcacion ');
    connection.QryBusca2.ParamByName('Embarcacion').AsString := connection.QryBusca.FieldValues['sIdEmbarcacion'];
    connection.QryBusca2.Open;
    if CompareText(VarName, 'EMBARCACION') = 0 then
      Value := connection.QryBusca2.FieldValues['sDescripcion'];
  end;

  //Aqui consultamos que las ordenes esten autorizadas
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from reportediario where dIdFecha =:fecha and lStatus  <> "Autorizado" '+
                              'and sContrato <> :Contrato');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate      := tdIdFecha.date;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
      if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
         Value := 'No';
  end
  else
  begin
      if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
         Value := 'Si';
  end;
end;

procedure TfrmCuadredePersonal.grid_laboranEnter(Sender: TObject);
begin
    delOrden.Enabled      := False;
    delPernocta.Enabled   := False;
    delPlataforma.Enabled := True;
    delHoras.Enabled      := False;
    personalAnterior.Enabled := False;
end;

procedure TfrmCuadredePersonal.grid_laboranTitleClick(Column: TColumn);
begin
    indice_columna := Column.Index;
end;

procedure TfrmCuadredePersonal.grid_ordenesEnter(Sender: TObject);
begin
    delOrden.Enabled      := True;
    delPernocta.Enabled   := False;
    delPlataforma.Enabled := False;
    delHoras.Enabled      := False;
    personalAnterior.Enabled := False;
end;

procedure TfrmCuadredePersonal.grid_ordenesTitleClick(Column: TColumn);
begin
    indice_columna := Column.Index;
end;

procedure TfrmCuadredePersonal.grid_pernoctaEnter(Sender: TObject);
begin
    delOrden.Enabled      := False;
    delPernocta.Enabled   := True;
    delPlataforma.Enabled := False;
    delHoras.Enabled      := False;
    personalAnterior.Enabled := False;
end;

procedure TfrmCuadredePersonal.grid_pernoctaTitleClick(Column: TColumn);
begin
    indice_columna := Column.Index;
end;

procedure TfrmCuadredePersonal.grid_personalColEnter(Sender: TObject);
begin
    if columna_personal <> grid_personal.Col then
       PanelTipo.Visible        := False;
    columna_personal       := grid_personal.Col;

    tsOrdenes.KeyValue     := rxPersonal.FieldValues['sContrato'+IntToStr(grid_personal.Col)];
    tsPernoctas.KeyValue   := rxPersonal.FieldValues['sIdPernocta'+IntToStr(grid_personal.Col)];
    tsPlataformas.KeyValue := rxPersonal.FieldValues['sIdPlataforma'+IntToStr(grid_personal.Col)];
    tsHoraInicio.Text      := rxPersonal.FieldValues['sHoraInicio'+IntToStr(grid_personal.Col)];
    tsHoraFinal.Text       := rxPersonal.FieldValues['sHoraFinal'+IntToStr(grid_personal.Col)];

    delOrden.Enabled         := False;
    delPernocta.Enabled      := False;
    delPlataforma.Enabled    := False;
    delHoras.Enabled         := False;
    personalAnterior.Enabled := True;   
end;

procedure TfrmCuadredePersonal.grid_personalDblClick(Sender: TObject);
var
   indice, i  : integer;
   tPersonal : tsCalcEdit;
begin
    PanelTipo.Top     := coordenadaY + 135;
    PanelTipo.Left    := coordenadaX + 240;

    //El primer paso es preguntar cuantos son Admon y cuantos son de Precios Unitarios...
    frmcuadredepersonal.tPersonal1.GetEnumerator;

    tPersonal1.Value := 0;
    tPersonal2.Value := 0;
    tPersonal3.Value := 0;
    tPersonal4.Value := 0;
    tPersonal5.Value := 0;
    tPersonal6.Value := 0;
    tPersonal7.Value := 0;

    lP1 := False;
    lP2 := False;
    lP3 := False;
    lP4 := False;
    lP5 := False;
    lP6 := False;
    lP7 := False;

    rxPersonal_PU.First;
    while not rxPersonal_PU.Eof do
    begin
        if (rxPersonal.FieldValues['sIdPersonal'] = rxPersonal_PU.FieldValues['sIdPersonal']) then
        begin
            indice := 1;
            while indice <= total_columnas_pu do
            begin
                if (rxPersonal_PU.FieldValues['sContrato'+IntToStr(indice)]     = rxPersonal.FieldValues['sContrato'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sIdPersonal']                    = rxPersonal.FieldValues['sIdPersonal']) and
                   (rxPersonal_PU.FieldValues['sIdPernocta'+IntToStr(indice)]   = rxPersonal.FieldValues['sIdPernocta'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sIdPlataforma'+IntToStr(indice)] = rxPersonal.FieldValues['sIdPlataforma'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sNumeroOrden'+IntToStr(indice)]  = rxPersonal.FieldValues['sNumeroOrden'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sHoraInicio'+IntToStr(indice)]   = rxPersonal.FieldValues['sHoraInicio'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sHoraFinal'+IntToStr(indice)]    = rxPersonal.FieldValues['sHoraFinal'+IntToStr(Columna_personal)])
                then
                begin
                    zTiposPersonal.First;
                    while not zTiposPersonal.Eof do
                    begin
                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl1.Caption then
                           tPersonal1.Value    := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl2.Caption then
                           tPersonal2.Value := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl3.Caption then
                           tPersonal3.Value := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl4.Caption then
                           tPersonal4.Value := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl5.Caption then
                           tPersonal5.Value := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl6.Caption then
                           tPersonal6.Value := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl7.Caption then
                           tPersonal7.Value := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                       zTiposPersonal.Next;
                    end;
                end;
                inc(indice);
            end;
        end;
        rxPersonal_PU.Next;
    end;

    PanelTipo.Visible := True ;
    tPersonal1.SetFocus;
end;

procedure TfrmCuadredePersonal.grid_personalEnter(Sender: TObject);
begin
    delOrden.Enabled      := False;
    delPernocta.Enabled   := False;
    delPlataforma.Enabled := False;
    delHoras.Enabled      := True;
    personalAnterior.Enabled := True;
end;

procedure TfrmCuadredePersonal.grid_personalGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if rxPersonal.RecordCount > 0 then
      begin
          AFont.Color := esColor(0);
          if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sAgrupaPersonal').AsString = 'S/C' then
          begin
              AFont.Color := clRed;
          end;
      end;
end;

procedure TfrmCuadredePersonal.grid_personalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     coordenadaX := x;
     coordenadaY := Y;
end;

procedure TfrmCuadredePersonal.grid_personalTitleClick(Column: TColumn);
begin
    indice_columna := Column.Index;
end;

procedure TfrmCuadredePersonal.grid_personalTopLeftChanged(Sender: TObject);
begin
    grid_laboran.LeftCol  := grid_personal.LeftCol;
    grid_pernocta.LeftCol := grid_personal.LeftCol;
    grid_ordenes.LeftCol  := grid_personal.LeftCol;
    grid_total_ordenes.LeftCol := grid_personal.LeftCol;
end;

procedure TfrmCuadredePersonal.grid_real_categoriaGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    Background  := $00BBFDF4;
    AFont.Color := clNavy;
end;

procedure TfrmCuadredePersonal.grid_total_ordenesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    Background  := $00BBFDF4;
    AFont.Color := clNavy;
end;

procedure TfrmCuadredePersonal.personalAnteriorClick(Sender: TObject);
var
   dFechaAnterior : tDate;
   lNuevaVigencia : boolean;

begin
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select * from bitacoradepersonal_cuadre Where dIdFecha =:Fecha');
    Connection.qryBusca.Params.ParamByName('Fecha').Datatype    := ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date;
    Connection.qryBusca.Open;

    if Connection.qryBusca.RecordCount > 0 then
       if MessageDlg('Desea Eliminar el Cuadre de Personal Actual?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('Delete From bitacoradepersonal_cuadre where dIdFecha = :fecha ');
           connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
           connection.zCommand.Params.ParamByName('Fecha').Value    := tdIdFecha.Date;
           connection.zCommand.ExecSQL;
       end;

    if MessageDlg('Desea cargar el Cuadre de Personal del dia anterior?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        dFechaAnterior := tdIdFecha.Date - 1;
        Connection.Auxiliar.Active := False;
        Connection.Auxiliar.SQL.Clear;
        Connection.Auxiliar.SQL.Add('Select * from bitacoradepersonal_cuadre Where dIdFecha =:Fecha');
        Connection.Auxiliar.Params.ParamByName('Fecha').Datatype    := ftDate;
        Connection.Auxiliar.Params.ParamByName('Fecha').Value       := dFechaAnterior;
        Connection.Auxiliar.Open;

        if Connection.Auxiliar.RecordCount > 0 then
        begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            Connection.zcommand.SQL.Add('insert into bitacoradepersonal_cuadre (sContrato, dIdFecha, sIdPersonal, iItemOrden, sTipoObra, sDescripcion, sIdPernocta, sIdPlataforma, sNumeroOrden, sHoraInicio, sHoraFinal, dCantidad, sAgrupaPersonal, lAplicaPernocta) '+
                                        'values (:Contrato, :fecha, :personal, :item, :TipoObra, :descripcion, :pernocta, :plataforma, :orden, :inicio, :final, :Cantidad, :agrupa, :cobro)');
            while not Connection.Auxiliar.Eof do
            begin
                try
                    Connection.zcommand.ParamByName('Contrato').AsString    := Connection.Auxiliar.FieldValues['sContrato'];
                    Connection.zcommand.ParamByName('fecha').AsDate         := tdIdFecha.Date;
                    Connection.zcommand.ParamByName('personal').AsString    := Connection.Auxiliar.FieldValues['sIdPersonal'];
                    Connection.zcommand.ParamByName('item').AsInteger       := Connection.Auxiliar.FieldValues['iItemOrden'];
                    Connection.zcommand.ParamByName('tipoObra').AsString    := Connection.Auxiliar.FieldValues['sTipoObra'];
                    Connection.zcommand.ParamByName('descripcion').AsString := Connection.Auxiliar.FieldValues['sDescripcion'];
                    Connection.zcommand.ParamByName('pernocta').AsString    := Connection.Auxiliar.FieldValues['sIdPernocta'];
                    Connection.zcommand.ParamByName('plataforma').AsString  := Connection.Auxiliar.FieldValues['sIdPlataforma'];
                    Connection.zcommand.ParamByName('orden').AsString       := Connection.Auxiliar.FieldValues['sNumeroOrden'];
                    Connection.zcommand.ParamByName('inicio').AsString      := Connection.Auxiliar.FieldValues['sHoraInicio'];
                    Connection.zcommand.ParamByName('final').AsString       := Connection.Auxiliar.FieldValues['sHoraFinal'];
                    Connection.zcommand.ParamByName('cantidad').AsFloat     := Connection.Auxiliar.FieldValues['dCantidad'];
                    Connection.zcommand.ParamByName('agrupa').AsString      := Connection.Auxiliar.FieldValues['sAgrupaPersonal'];
                    Connection.zcommand.ParamByName('cobro').AsString       := Connection.Auxiliar.FieldValues['lAplicaPernocta'];
                    Connection.zcommand.ExecSQL;
                    Connection.Auxiliar.Next;
                except
                end;
            end;
            tdIdFecha.OnExit(sender);
        end
        else
           messageDLG('No se encontró personal el día anterior', mtInformation, [mbOk], 0);
    end;
end;

//Consultar la Fecha

procedure TfrmCuadredePersonal.tdIdFechaExit(Sender: TObject);
begin
    tdidfecha.Color := global_color_salida;
    CargaDatos;

    //Esto es para las vigencias de personal de tripulacion.
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ASC');
    connection.zCommand.Open;

    fechaAntes := date;
    if connection.zCommand.RecordCount > 0 then
    begin
        fechaAntes := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
        while not connection.zCommand.Eof do
        begin
            if tdIdFecha.Date >= connection.zCommand.FieldByName('dFechaVigencia').AsDateTime then
              fechaAntes := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
            connection.zCommand.Next;
        end;
    end;
end;                   

//Consultar la Categoria
procedure TfrmCuadredePersonal.ActualizaPersonalClick(Sender: TObject);
var
    zPersonal, zInserta, zBusca, zTripulacion  : tzReadOnlyQuery;
    lEncuentra : boolean;
    Categoria  : string;
begin

end;

procedure TfrmCuadredePersonal.btnNuevoPersonalClick(Sender: TObject);
begin
    gruposPersonal.Active;
    gruposPersonal.SQL.Clear;
    gruposPersonal.SQL.Add('select *, concat(sIdGrupo, "  ", sDescripcion) as lista from grupospersonal order by iOrden');
    gruposPersonal.Open;

    tiposdepersonal.Active;
    tiposdepersonal.SQL.Clear;
    tiposdepersonal.SQL.Add('select * from tiposdepersonal');
    tiposdepersonal.Open;

    PanelDatos.Visible := True;
    grid_Catalogo_maestro.Enabled := False;
    btnNuevoPersonal.Enabled := False;
    cmdAceptar.Enabled := False;
    cmdCancelar.Enabled := False;
    tsIdTipodePersonal.SetFocus;
end;

procedure TfrmCuadredePersonal.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCuadredePersonal.btnCargarClick(Sender: TObject);
var
   indice : integer;
begin
    //Aqui vamos a insertar los datos los reportes diarios y el la tabla de cuadre..
    //Primero eliminamos el cuadre del dia..
    Connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('Delete from bitacoradepersonal_cuadre where dIdFecha =:fecha');
    Connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
    Connection.zCommand.Params.ParamByName('Fecha').Value    := tdIdFecha.date;
    Connection.zCommand.ExecSQL();

    //Ahora insertamos todos los registros nuevos..
    rxPersonal_PU.First;
    if rxPersonal_PU.RecordCount > 0 then
    begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        Connection.zcommand.SQL.Add('insert into bitacoradepersonal_cuadre (sContrato, dIdFecha, sIdPersonal, iItemOrden, sTipoObra, sDescripcion, sIdPernocta, sIdPlataforma, sNumeroOrden, sHoraInicio, sHoraFinal, dCantidad, sAgrupaPersonal, lAplicaPernocta) '+
                                     'values (:Contrato, :fecha, :personal, :item, :Tipo, :descripcion, :pernocta, :plataforma, :orden, :inicio, :final, :Cantidad, :agrupa, :cobro)');
    end;
    while not rxPersonal_PU.Eof do
    begin
        indice := 1;
        while indice <= total_columnas_pu do
        begin
            if (rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] <> Null) and (rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] > 0) then
            begin
                Connection.zcommand.ParamByName('Contrato').AsString    := rxPersonal_PU.FieldValues['sContrato'+IntToStr(indice)];
                Connection.zcommand.ParamByName('fecha').AsDate         := tdIdFecha.Date;
                Connection.zcommand.ParamByName('personal').AsString    := rxPersonal_PU.FieldValues['sIdPersonal'];
                Connection.zcommand.ParamByName('item').AsInteger       := rxPersonal_PU.FieldValues['iItemOrden'];
                Connection.zcommand.ParamByName('Tipo').AsString        := rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)];
                Connection.zcommand.ParamByName('descripcion').AsString := rxPersonal_PU.FieldValues['sDescripcion'];
                Connection.zcommand.ParamByName('pernocta').AsString    := rxPersonal_PU.FieldValues['sIdPernocta'+IntToStr(indice)];
                Connection.zcommand.ParamByName('plataforma').AsString  := rxPersonal_PU.FieldValues['sIdPlataforma'+IntToStr(indice)];
                Connection.zcommand.ParamByName('Orden').AsString       := rxPersonal_PU.FieldValues['sNumeroOrden'+IntToStr(indice)];
                Connection.zcommand.ParamByName('inicio').AsString      := rxPersonal_PU.FieldValues['sHoraInicio'+IntToStr(indice)];
                Connection.zcommand.ParamByName('final').AsString       := rxPersonal_PU.FieldValues['sHoraFinal'+IntToStr(indice)];
                Connection.zcommand.ParamByName('cantidad').AsFloat     := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                Connection.zcommand.ParamByName('agrupa').AsString      := rxPersonal_PU.FieldValues['sAgrupaPersonal'];
                Connection.zcommand.ParamByName('cobro').AsString       := rxPersonal_PU.FieldValues['lCobro'+IntToStr(indice)];
                Connection.zcommand.ExecSQL;
             end;
            inc(indice);
        end;
        rxPersonal_PU.Next;
    end;
    if rxPersonal_PU.RecordCount > 0 then
       tdIdFecha.OnExit(sender);
end;

procedure TfrmCuadredePersonal.qry_personalAfterInsert(
  DataSet: TDataSet);
begin
  qry_personal.Cancel
end;

procedure TfrmCuadredePersonal.qry_personalBeforePost(DataSet: TDataSet);
begin
  if qry_personal.FieldValues['dCantidad'] < 0 then
    qry_personal.cancel;
end;

procedure TfrmCuadredePersonal.rxPersonalBeforeEdit(DataSet: TDataSet);
var
   indice, totaldatos : integer;
begin
    //Colocamos las banderas en False.

    if (Columna_personal > 0) and (PanelTipo.Visible = False) then
    begin
        //Aqui verficamos si antes de cambiar el valor solo tiene cantidad en PU o ADM si existe en los dos.. se activa en automatico el recuadro..
        rxPersonal_PU.First;
        while not rxPersonal_PU.Eof do
        begin
            if (rxPersonal.FieldValues['sIdPersonal'] = rxPersonal_PU.FieldValues['sIdPersonal']) then
            begin
                indice     := 1;
                totaldatos := 0;
                while indice <= total_columnas_pu do
                begin
                    if (rxPersonal_PU.FieldValues['sContrato'+IntToStr(indice)]     = rxPersonal.FieldValues['sContrato'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sIdPersonal']                    = rxPersonal.FieldValues['sIdPersonal']) and
                       (rxPersonal_PU.FieldValues['sIdPernocta'+IntToStr(indice)]   = rxPersonal.FieldValues['sIdPernocta'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sIdPlataforma'+IntToStr(indice)] = rxPersonal.FieldValues['sIdPlataforma'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sNumeroOrden'+IntToStr(indice)]  = rxPersonal.FieldValues['sNumeroOrden'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sHoraInicio'+IntToStr(indice)]   = rxPersonal.FieldValues['sHoraInicio'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sHoraFinal'+IntToStr(indice)]    = rxPersonal.FieldValues['sHoraFinal'+IntToStr(Columna_personal)])
                    then
                    begin
                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl1.Caption then
                           if rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] > 0 then
                           begin
                               inc(totaldatos);
                               tPersonal1.Value    := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                           end;

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl2.Caption then
                           if rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] > 0 then
                           begin
                               inc(totaldatos);
                               tPersonal2.Value  := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                           end;

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl3.Caption then
                           if rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] > 0 then
                           begin
                               inc(totaldatos);
                               tPersonal3.Value  := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                           end;

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl4.Caption then
                           if rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] > 0 then
                           begin
                               inc(totaldatos);
                               tPersonal4.Value  := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                           end;

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl5.Caption then
                           if rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] > 0 then
                           begin
                               inc(totaldatos);
                               tPersonal5.Value  := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                           end;

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl6.Caption then
                           if rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] > 0 then
                           begin
                               inc(totaldatos);
                               tPersonal6.Value  := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                           end;

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl7.Caption then
                           if rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] > 0 then
                           begin
                               inc(totaldatos);
                               tPersonal7.Value  := rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)];
                           end;
                    end;
                    inc(indice);
                end;
            end;
            rxPersonal_PU.Next;
        end;
        if  totaldatos > 1 then
        begin
            PanelTipo.Top     := coordenadaY + 135;
            PanelTipo.Left    := coordenadaX + 240;
            PanelTipo.Visible := True;
            tPersonal1.SetFocus;
        end;
    end;
end;

procedure TfrmCuadredePersonal.rxPersonalBeforePost(DataSet: TDataSet);
var
  indice : integer;
begin
    if (lP1 = True) or (lP2 = True) or (lP3 = True) or (lP4 = True) or (lP5 = True) or (lP6 = True) or (lP7 = True) then
    begin
        rxPersonal_PU.First;
        while not rxPersonal_PU.Eof do
        begin
            if (rxPersonal_PU.FieldValues['sIdPersonal'] = rxPersonal.FieldValues['sIdPersonal']) then
            begin
                indice := 1;
                while indice <= total_columnas_Pu do
                begin
                    if (rxPersonal_PU.FieldValues['sContrato'+IntToStr(indice)]     = rxPersonal.FieldValues['sContrato'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sIdPernocta'+IntToStr(indice)]   = rxPersonal.FieldValues['sIdPernocta'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sIdPlataforma'+IntToStr(indice)] = rxPersonal.FieldValues['sIdPlataforma'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sNumeroOrden'+IntToStr(indice)]  = rxPersonal.FieldValues['sNumeroOrden'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sHoraInicio'+IntToStr(indice)]   = rxPersonal.FieldValues['sHoraInicio'+IntToStr(Columna_personal)]) and
                       (rxPersonal_PU.FieldValues['sHoraFinal'+IntToStr(indice)]    = rxPersonal.FieldValues['sHoraFinal'+IntToStr(Columna_personal)])
                    then
                    begin
                        rxPersonal_PU.Edit;

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = 'ADM' then
                           rxPersonal_PU.FieldValues['lCobro'+IntToStr(indice)]    := 'Si'
                        else
                           rxPersonal_PU.FieldValues['lCobro'+IntToStr(indice)]    := 'No';

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl1.Caption then
                           if lP1 then
                              rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := rxPersonal.FieldValues['dCantidad'+IntToStr(Columna_personal)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl2.Caption then
                           if lP2 then
                                rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := rxPersonal.FieldValues['dCantidad'+IntToStr(Columna_personal)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl3.Caption then
                           if lP3 then
                              rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := rxPersonal.FieldValues['dCantidad'+IntToStr(Columna_personal)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl4.Caption then
                           if lP4 then
                              rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := rxPersonal.FieldValues['dCantidad'+IntToStr(Columna_personal)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl5.Caption then
                           if lP5 then
                              rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := rxPersonal.FieldValues['dCantidad'+IntToStr(Columna_personal)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl6.Caption then
                           if lP6 then
                              rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := rxPersonal.FieldValues['dCantidad'+IntToStr(Columna_personal)];

                        if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl7.Caption then
                            if lP7 then
                               rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := rxPersonal.FieldValues['dCantidad'+IntToStr(Columna_personal)];

                        rxPersonal_PU.Post;
                    end;
                    inc(indice);
                end;
            end;
            rxPersonal_PU.Next;
        end;
    end;
end;

procedure TfrmCuadredePersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  action := cafree;
end;

procedure TfrmCuadredePersonal.tPersonal2Enter(Sender: TObject);
begin
    tPersonal2.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tPersonal2Exit(Sender: TObject);
begin
    tPersonal2.Color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tPersonal2KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 then
    begin
       PanelTipo.Visible := False;
       rxPersonal.Cancel;
       grid_personal.SetFocus;
    end;

    try
      if key = #13 then
        tPersonal3.SetFocus
    except
        cmdTipoObra.SetFocus
    end;
end;

procedure TfrmCuadredePersonal.tPersonal3Enter(Sender: TObject);
begin
    tPersonal3.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tPersonal3Exit(Sender: TObject);
begin
    tPersonal3.Color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tPersonal3KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #27 then
    begin
       PanelTipo.Visible := False;
       rxPersonal.Cancel;
       grid_personal.SetFocus;
    end;

    try
      if key = #13 then
        tPersonal4.SetFocus
    except
        cmdTipoObra.SetFocus
    end;
end;

procedure TfrmCuadredePersonal.tPersonal4Enter(Sender: TObject);
begin
    tPersonal4.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tPersonal4Exit(Sender: TObject);
begin
    tPersonal4.Color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tPersonal4KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #27 then
    begin
       PanelTipo.Visible := False;
       rxPersonal.Cancel;
       grid_personal.SetFocus;
    end;

    try
      if key = #13 then
        tPersonal5.SetFocus
    except
        cmdTipoObra.SetFocus
    end;
end;

procedure TfrmCuadredePersonal.tPersonal5Enter(Sender: TObject);
begin
    tPersonal5.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tPersonal5Exit(Sender: TObject);
begin
    tPersonal5.Color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tPersonal5KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #27 then
    begin
       PanelTipo.Visible := False;
       rxPersonal.Cancel;
       grid_personal.SetFocus;
    end;

    try
      if key = #13 then
        tPersonal6.SetFocus
    except
        cmdTipoObra.SetFocus
    end;
end;

procedure TfrmCuadredePersonal.tPersonal6Enter(Sender: TObject);
begin
    tPersonal6.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tPersonal6Exit(Sender: TObject);
begin
    tPersonal6.Color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tPersonal6KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #27 then
    begin
       PanelTipo.Visible := False;
       rxPersonal.Cancel;
       grid_personal.SetFocus;
    end;

    try
      if key = #13 then
        tPersonal7.SetFocus
    except
        cmdTipoObra.SetFocus
    end;
end;

procedure TfrmCuadredePersonal.tPersonal7Enter(Sender: TObject);
begin
    tPersonal7.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tPersonal7Exit(Sender: TObject);
begin
    tPersonal7.Color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tPersonal7KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #27 then
    begin
       PanelTipo.Visible := False;
       rxPersonal.Cancel;
       grid_personal.SetFocus;
    end;

    if key = #13 then
       cmdTipoObra.SetFocus;
end;

procedure TfrmCuadredePersonal.tdIdFechaEnter(Sender: TObject);
begin
  tdIdFecha.Color := global_Color_entrada
end;


procedure TfrmCuadredePersonal.btnDeleteClick(Sender: TObject);
begin
    if MessageDlg('Desea eliminar el Cuadre de Personal del Dia '+DateToStr(tdIdFecha.Date)+' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('Delete from bitacoradepersonal_cuadre where dIdFecha =:fecha ');
        Connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        Connection.zCommand.Params.ParamByName('Fecha').Value    := tdIdFecha.date;
        Connection.zCommand.ExecSQL();
        tdIdFecha.OnExit(sender);
    end;
end;

procedure TfrmCuadredePersonal.btnEditClick(Sender: TObject);
begin
    btnNuevo.Enabled  := False;
    btnEdit.Enabled   := False;
    btnDelete.Enabled := False;
    btnPrinter.Enabled:= False;
    btnCargar.Enabled := False;
end;

procedure TfrmCuadredePersonal.btnNuevoClick(Sender: TObject);
begin
    tsOrdenes.SetFocus;
    tsOrdenes.KeyValue     := null;
    tsPernoctas.KeyValue   := null;
    tsPlataformas.KeyValue := null;
    tsHoraInicio.Text      := '00:00';
    tsHoraFinal.Text       := '00:00';

    btnNuevo.Enabled  := False;
    btnEdit.Enabled   := False;
    btnDelete.Enabled := False;
    btnPrinter.Enabled:= False;
    btnCargar.Enabled := False;
end;

procedure TfrmCuadredePersonal.btnPrinter2Click(Sender: TObject);
begin
    try
        if (qry_personal.Active) and (qry_personal.RecordCount > 0) then
          procreporteTripulacion(Global_Contrato_barco,'A', tdIdFecha.DateTime, frmCuadredePersonal, frxTripulacion.OnGetValue, connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'), 'Admin')
        else
          showmessage('No hay datos para imprimir');
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulacion Diaria', 'Al imprimir', 0);
      end;
    end;
end;

procedure TfrmCuadredePersonal.btnPrinterClick(Sender: TObject);
begin
  try
      if (qry_personal.Active) and (qry_personal.RecordCount > 0) then
        procreporteTripulacion(Global_Contrato_barco,'A', tdIdFecha.DateTime, frmCuadredePersonal, frxTripulacion.OnGetValue, connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'), 'Barco')
      else
        showmessage('No hay datos para imprimir');
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulacion Diaria', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmCuadredePersonal.btnUpdateClick(Sender: TObject);
var
   cadenamensajes : string;
   zCreaColumnas  : tzReadOnlyQuery;
   zPersonal      : tzReadOnlyQuery;
   cadenamensaje  : string;
   Q_Insertar     : tzQuery;
   cta            : integer;
   NumeroStr      : String;
begin
    Q_Insertar := tzQuery.Create(self);
    Q_Insertar.Connection := connection.zConnection;

    zCreaColumnas := tzReadOnlyQuery.Create(self);
    zCreaColumnas.Connection := connection.zConnection;

    zPersonal := tzReadOnlyQuery.Create(self);
    zPersonal.Connection := connection.zConnection;

    //Validacion de datos.
    if btnNuevo.Enabled = False then
    begin
        cadenamensajes := '';
        if tsOrdenes.Text = '' then
           cadenamensajes := #13 + ' * O.T.';

        if tsPernoctas.Text = '' then
           cadenamensajes := #13 + ' * PERNOCTA';

        if tsPlataformas.Text = '' then
           cadenamensajes := #13 + ' * PLATAFORMAS';

        if tsHoraInicio.Text = '__:__' then
           cadenamensajes := #13 + ' * HORA INICIO';

        if tsHoraFinal.Text = '__:__' then
           cadenamensajes := #13 + ' * HORA FINAL';

        if cadenamensajes <> '' then
        begin
            messageDLG('Existen Datos Vacíos: '+ cadenamensajes, mtInformation, [mbOK], 0);
            exit;
        end;

        zCreaColumnas.Active := False;
        zCreaColumnas.SQL.Clear;
        zCreaColumnas.SQL.Add('select * from bitacoradepersonal_cuadre where sContrato =:Contrato and dIdFecha =:fecha and sIdPernocta =:pernocta '+
                              'and sIdPlataforma =:plataforma and sHoraInicio =:inicio group by sContrato, sIdPernocta, sIdPlataforma, sHoraInicio');
        zCreaColumnas.ParamByName('Contrato').AsString   := tsOrdenes.Text;
        zCreaColumnas.ParamByName('fecha').AsDate        := tdIdFecha.Date;
        zCreaColumnas.ParamByName('pernocta').AsString   := tsPernoctas.KeyValue;
        zCreaColumnas.ParamByName('plataforma').AsString := tsPlataformas.KeyValue;
        zCreaColumnas.ParamByName('inicio').AsString     := tsHoraInicio.Text;
        zCreaColumnas.Open;

        if zCreaColumnas.RecordCount = 0 then
        begin
            //Primero insertamos las categorias de personal de la orden,
            zPersonal.Active := False;
            zPersonal.SQL.Clear;
            zPersonal.SQL.Add('select sIdPersonal, iItemOrden, sDescripcion, sAgrupaPersonal from personal where sContrato =:Contrato and sIdTipoPersonal <> "TE"');
            zPersonal.ParamByName('Contrato').AsString := tsOrdenes.Text;
            zPersonal.Open;

            while not zPersonal.Eof do
            begin
                zCreaColumnas.Active := False;
                zCreaColumnas.SQL.Clear;
                zCreaColumnas.SQL.Add('insert into bitacoradepersonal_cuadre (sContrato, dIdFecha, sIdPersonal, iItemOrden, :sTipoOrden, sDescripcion, sIdPernocta, sIdPlataforma, sNumeroOrden, sHoraInicio, sHoraFinal, dCantidad, sAgrupaPersonal, lAplicaPernocta) '+
                                      'values (:Contrato, :fecha, :personal, :item, :Tipo, :descripcion, :pernocta, :plataforma, :orden, :inicio, :final, :Cantidad, :agrupa, :cobro)');
                zCreaColumnas.ParamByName('Contrato').AsString    := tsOrdenes.Text;
                zCreaColumnas.ParamByName('fecha').AsDate         := tdIdFecha.Date;
                zCreaColumnas.ParamByName('personal').AsString    := zPersonal.FieldValues['sIdPersonal'];
                zCreaColumnas.ParamByName('item').AsInteger       := zPersonal.FieldValues['iItemOrden'];
                zCreaColumnas.ParamByName('Tipo').AsString        := 'PU';
                zCreaColumnas.ParamByName('descripcion').AsString := zPersonal.FieldValues['sDescripcion'];
                zCreaColumnas.ParamByName('pernocta').AsString    := pernoctas.FieldValues['sIdPernocta'];
                zCreaColumnas.ParamByName('plataforma').AsString  := plataformas.FieldValues['sIdPlataforma'];
                zCreaColumnas.ParamByName('orden').AsString       := plataformas.FieldValues['sIdPlataforma'];  //pendiente frente de trabajo
                zCreaColumnas.ParamByName('inicio').AsString      := tsHoraInicio.Text;
                zCreaColumnas.ParamByName('final').AsString       := tsHoraFinal.Text;
                zCreaColumnas.ParamByName('cantidad').AsFloat     := 0;
                zCreaColumnas.ParamByName('agrupa').AsString      := zPersonal.FieldValues['sAgrupaPersonal'];
                zCreaColumnas.ParamByName('cobro').AsString       := 'No';
                zCreaColumnas.ExecSQL;
                zPersonal.Next;
            end;
            tdIdFecha.OnExit(sender);
        end
        else
        begin
            messageDLG('La Orden de Trabajo, Pernocta, Plataforma y Turnos Ya existen!', mtInformation, [mbOk], 0);
            btnNuevo.Enabled  := True;
            btnEdit.Enabled   := True;
            btnDelete.Enabled := True;
            btnPrinter.Enabled:= True;
            btnCargar.Enabled := True;
            exit;
        end;
        btnNuevo.Enabled  := True;
        btnEdit.Enabled   := True;
        btnDelete.Enabled := True;
        btnPrinter.Enabled:= True;
        btnCargar.Enabled := True;
    end
    else
    begin
         if MessageDlg('Desea Cargar el Cuadre de Personal del Dia '+DateToStr(tdIdFecha.Date)+' a  los Reportes Diarios?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
             //Verificamos si el reporte de barco está validado...
             connection.zCommand.Active := False;
             connection.zCommand.SQL.Clear;
             connection.zCommand.SQL.Add('select * from reportediario where sContrato =:Contrato and dIdFecha =:fecha and lStatus ="Autorizado"');
             connection.zCommand.ParamByName('Contrato').AsString := global_contrato_barco;
             connection.zCommand.ParamByName('fecha').AsDate      := tdIdFecha.Date;
             connection.zCommand.Open;

             if connection.zCommand.RecordCount = 0 then
             begin
                //Primero eliminamos el personal y equipo de la tabla de bitacoradepersonal..
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('Delete from bitacoradepersonal where dIdFecha =:fecha ');
                connection.zCommand.ParamByName('fecha').AsDate := tdIdFecha.Date;
                connection.zCommand.ExecSQL;

                //Ahora verificamos que las categorias esten en los catalogos de personal de cada orden..
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('select sContrato, sIdPersonal, sAgrupaPersonal from bitacoradepersonal_cuadre where dIdFecha=:fecha group by sContrato, sIdPersonal');
                connection.zCommand.ParamByName('fecha').AsDate := tdIdFecha.Date;
                connection.zCommand.Open;

                while not connection.zCommand.Eof do
                begin       
                    //Buscamos si existe la categoria de personal...
                    connection.QryBusca.Active := False;
                    connection.QryBusca.SQL.Clear;
                    connection.QryBusca.SQL.Add('select sIdPersonal from personal where sContrato =:Contrato and sIdPersonal =:Personal ');
                    connection.QryBusca.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
                    connection.QryBusca.ParamByName('Personal').AsString := connection.zCommand.FieldValues['sIdPersonal'];
                    connection.QryBusca.Open;

                    if connection.QryBusca.RecordCount = 0 then
                    begin
                        //Consultamos el catalogo de personal
                        catalogo_maestro.Active := False;
                        catalogo_maestro.SQL.Clear;
                        catalogo_maestro.SQL.Add('select * from personal where sContrato =:Contrato and sIdPersonal =:Personal');
                        catalogo_maestro.ParamByName('Contrato').AsString := global_contrato_barco;
                        catalogo_maestro.ParamByName('Personal').AsString := connection.zCommand.FieldValues['sIdPersonal'];
                        catalogo_maestro.Open;

                        {insetamos los campos de la tabla personal..}
                        Q_Insertar.FieldDefs.Clear;
                        for Cta := 1 to catalogo_maestro.FieldDefs.Count - 1 do
                            Q_Insertar.FieldDefs.Add(catalogo_maestro.FieldDefs.Items[Cta].Name, catalogo_maestro.FieldDefs.Items[Cta].DataType, catalogo_maestro.FieldDefs.Items[Cta].Size, catalogo_maestro.FieldDefs.Items[Cta].Required);

                        Q_Insertar.Active := False;
                        Q_Insertar.SQL.Clear;
                        Q_Insertar.SQL.Add('select * from personal where sContrato =:Contrato limit 1');
                        Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
                        Q_Insertar.Open;

                        try
                            Q_Insertar.Append;
                            for Cta := 1 to catalogo_maestro.FieldDefs.Count  do
                            begin
                              if Cta = 1 then
                                Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := connection.zCommand.FieldValues['sContrato']
                              else
                                Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := catalogo_maestro.Fields.FieldByNumber(Cta).AsVariant;
                            end;
                            Q_Insertar.Post;
                        Except
                        end;
                    end;
                    connection.zCommand.Next;
                end;

                cadenamensaje := '';

                qry_personal.First;
                while not qry_personal.Eof do
                begin
                    //Consultamos el iIdDiario de las actividades para insertar los datos de acuerdo al horario..
                    connection.QryBusca.Active := False;
                    connection.QryBusca.SQL.Clear;
                    connection.QryBusca.SQL.Add('select iIdDiario from bitacoradeactividades where sContrato =:Contrato and dIdFecha =:Fecha '+
                                                'and sNumeroOrden =:Orden and sIdTipoMovimiento = "N" and sHoraInicio =:inicio and sHoraFinal =:final ');
                    connection.QryBusca.ParamByName('Contrato').AsString := qry_personal.FieldValues['sContrato'];
                    connection.QryBusca.ParamByName('orden').AsString    := qry_personal.FieldValues['sNumeroOrden'];
                    connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
                    connection.QryBusca.ParamByName('inicio').AsString   := qry_personal.FieldValues['sHoraInicio'];
                    connection.QryBusca.ParamByName('final').AsString    := qry_personal.FieldValues['sHoraFinal'];
                    connection.QryBusca.Open;

                    if connection.QryBusca.RecordCount > 0 then
                    begin
                          zPersonal.Active := False;
                          zPersonal.SQL.Clear;
                          zPersonal.SQL.Add('insert into bitacoradepersonal (sContrato, dIdFecha, iIdDiario, sIdPersonal, iItemOrden, sTipoObra, sDescripcion, sIdPernocta, sIdPlataforma, sHoraInicio, sHoraFinal, dCantidad, sAgrupaPersonal, lAplicaPernocta) '+
                                            'values (:Contrato, :fecha, :diario, :personal, :item, :Tipo, :descripcion, :pernocta, :plataforma, :inicio, :final, :Cantidad, :agrupa, :cobro)');
                          zPersonal.ParamByName('Contrato').AsString    := qry_personal.FieldValues['sContrato'];
                          zPersonal.ParamByName('fecha').AsDate         := tdIdFecha.Date;
                          zPersonal.ParamByName('diario').AsInteger     := connection.QryBusca.FieldValues['iIdDiario'];
                          zPersonal.ParamByName('personal').AsString    := qry_personal.FieldValues['sIdPersonal'];
                          zPersonal.ParamByName('item').AsInteger       := qry_personal.FieldValues['iItemOrden'];
                          zPersonal.ParamByName('Tipo').AsString        := qry_personal.FieldValues['sTipoObra'];
                          zPersonal.ParamByName('descripcion').AsString := qry_personal.FieldValues['sDescripcion'];
                          zPersonal.ParamByName('pernocta').AsString    := qry_personal.FieldValues['sIdPernocta'];
                          zPersonal.ParamByName('plataforma').AsString  := qry_personal.FieldValues['sIdPlataforma'];
                          zPersonal.ParamByName('inicio').AsString      := qry_personal.FieldValues['sHoraInicio'];
                          zPersonal.ParamByName('final').AsString       := qry_personal.FieldValues['sHoraFinal'];
                          zPersonal.ParamByName('cantidad').AsFloat     := qry_personal.FieldValues['dCantidad'];
                          zPersonal.ParamByName('agrupa').AsString      := qry_personal.FieldValues['sAgrupaPersonal'];
                          zPersonal.ParamByName('cobro').AsString       := qry_personal.FieldValues['lAplicaPernocta'];
                          zPersonal.ExecSQL;
                    end
                    else
                    begin
                        If pos('NO SE ENCONTRARON NOTAS/COMENTARIOS CON LOS HORARIOS DE CUADRE DE PERSONAL EN LAS ORDENES:', cadenamensaje) = 0 then
                              cadenamensaje := cadenamensaje + 'NO SE ENCONTRARON NOTAS/COMENTARIOS CON LOS HORARIOS DE CUADRE DE PERSONAL EN LAS ORDENES:';

                        if pos(qry_personal.FieldValues['sContrato'], cadenamensaje) = 0 then
                           cadenamensaje := cadenamensaje + #13 + qry_personal.FieldValues['sContrato'] ;
                    end;
                    qry_personal.Next;
                end;
             end
             else
             begin
                 messageDLG('El Reporte de Barco está Autorizado!', mtInformation, [mbOk], 0);
                 cadenamensaje := 'Autorizado';
             end;

             if cadenamensaje <> 'Autorizado'  then
             begin
                //Insertamos la tripulacion diaria..
                InsertaTripulacion;

                //Ahora Actualizamos las partidas del Anexo 2.3 de personal..
                ActualizaAnexoPersonal;

                if cadenamensaje = '' then
                   messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0)
                else
                   messageDLG(cadenamensaje, mtInformation, [mbOk], 0);
             end;
         end;
    end;
    zCreaColumnas.Destroy;
    zPersonal.Destroy;
    Q_Insertar.Destroy;
end;

procedure TfrmCuadredePersonal.cmdTipoObraClick(Sender: TObject);
var
  indice : integer;
  sTipo  : string;
begin
    rxPersonal.Edit;
    rxPersonal.FieldValues['dCantidad'+IntToStr(Columna_personal)] := tPersonal1.Value + tPersonal2.Value + tPersonal3.Value + tPersonal4.Value
                                                                    + tPersonal5.Value + tPersonal6.Value + tPersonal7.Value;
    rxPersonal.Post;

    rxPersonal_PU.First;
    while not rxPersonal_PU.Eof do
    begin
        if (rxPersonal_PU.FieldValues['sIdPersonal'] = rxPersonal.FieldValues['sIdPersonal']) then
        begin
            indice := 1;
            while indice <= total_columnas_Pu do
            begin
                if (rxPersonal_PU.FieldValues['sContrato'+IntToStr(indice)]     = rxPersonal.FieldValues['sContrato'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sIdPernocta'+IntToStr(indice)]   = rxPersonal.FieldValues['sIdPernocta'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sIdPlataforma'+IntToStr(indice)] = rxPersonal.FieldValues['sIdPlataforma'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sNumeroOrden'+IntToStr(indice)]  = rxPersonal.FieldValues['sNumeroOrden'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sHoraInicio'+IntToStr(indice)]   = rxPersonal.FieldValues['sHoraInicio'+IntToStr(Columna_personal)]) and
                   (rxPersonal_PU.FieldValues['sHoraFinal'+IntToStr(indice)]    = rxPersonal.FieldValues['sHoraFinal'+IntToStr(Columna_personal)])
                then
                begin
                    rxPersonal_PU.Edit;
                    if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl1.Caption then
                       rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := tPersonal1.Value;

                    if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl2.Caption then
                       rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := tPersonal2.Value;

                    if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl3.Caption then
                       rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := tPersonal3.Value;

                    if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl4.Caption then
                       rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := tPersonal4.Value;

                    if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl5.Caption then
                       rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := tPersonal5.Value;

                    if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl6.Caption then
                       rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := tPersonal6.Value;

                    if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = lbl7.Caption then
                       rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice)] := tPersonal7.Value;

                    if rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice)] = 'ADM' then
                       rxPersonal_PU.FieldValues['lCobro'+IntToStr(indice)]    := 'Si'
                    else
                       rxPersonal_PU.FieldValues['lCobro'+IntToStr(indice)]    := 'No';

                    rxPersonal_PU.Post;
                end;
                inc(indice);
            end;
        end;
        rxPersonal_PU.Next;
    end;
    PanelTipo.Visible := False;
end;

procedure TfrmCuadredePersonal.cmdTipoObraExit(Sender: TObject);
begin
    grid_personal.SetFocus; 
end;

procedure TfrmCuadredePersonal.tsAgrupacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsIdPersonal.SetFocus;
end;

procedure TfrmCuadredePersonal.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.color := global_color_salida;
end;

procedure TfrmCuadredePersonal.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       cmdGuardar.SetFocus;
end;

procedure TfrmCuadredePersonal.tsHoraInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsHoraFinal.SetFocus;
end;

procedure TfrmCuadredePersonal.tsIdCategoriaEnter(Sender: TObject);
begin
  tsidcategoria.Color := global_color_entrada;
end;

procedure TfrmCuadredePersonal.tsIdCategoriaExit(Sender: TObject);
begin
  tsIdcategoria.Color := global_Color_salida;
  with qry_personal do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT * FROM tripulaciondiaria where sContrato = :contrato and dIdfecha = :fecha ' +
      'And sIdCategoria= :Categoria ');
    params.ParamByName('contrato').DataType := ftString;
    params.ParamByName('contrato').Value := global_contrato_barco;
    params.ParamByName('fecha').DataType := ftDate;
    params.ParamByName('fecha').Value := tdIdFecha.Date;
    params.ParamByName('categoria').DataType := ftString;
    params.ParamByName('categoria').Value := tsIdCategoria.KeyValue;
    Open;
    if qry_personal.RecordCount = 0 then
    begin

    end;
  end;
end;

procedure TfrmCuadredepersonal.CreaColumnas;
var
    indice, indice_pu, i : integer;
begin
    //Antes de crear las columnas eliminarlas si existen..
    rxPersonal.FieldDefs.Clear;
    rxPersonal.Active := False;

    rxPersonal_PU.FieldDefs.Clear;
    rxPersonal_PU.Active := False;

    rxTotales.FieldDefs.Clear;
    rxtotales.Active  := False;

    if zColumnas.RecordCount > 0 then
    begin
        //Este es el personal normal donde el usurio visualiza los datos..
        rxPersonal.FieldDefs.Add('dIdFecha', ftString, 15, True);
        rxPersonal.FieldDefs.Add('sIdPersonal', ftString, 25, True);
        rxPersonal.FieldDefs.Add('iItemOrden', ftInteger, 0, True);
        rxPersonal.FieldDefs.Add('sDescripcion', ftString, 250, True);
        rxPersonal.FieldDefs.Add('sAgrupaPersonal', ftString, 25, True);
        rxPersonal.FieldDefs.Add('dTotalCategoria', ftFloat, 0, True);
        rxPersonal.FieldDefs.Add('dTotalOrden', ftFloat, 0, True);
        rxPersonal.FieldDefs.Add('dTotalDia', ftFloat, 0, True);
        rxPersonal.FieldDefs.Add('sIdTipoPersonal', ftString, 4, True);

        //Ahora el personal del PU o Admon el detalle..
        rxPersonal_PU.FieldDefs.Add('dIdFecha', ftString, 15, True);
        rxPersonal_PU.FieldDefs.Add('sIdPersonal', ftString, 25, True);
        rxPersonal_PU.FieldDefs.Add('iItemOrden', ftInteger, 0, True);
        rxPersonal_PU.FieldDefs.Add('sDescripcion', ftString, 250, True);
        rxPersonal_PU.FieldDefs.Add('sAgrupaPersonal', ftString, 25, True);
        rxPersonal_PU.FieldDefs.Add('dTotalCategoria', ftFloat, 0, True);
        rxPersonal_PU.FieldDefs.Add('dTotalOrden', ftFloat, 0, True);
        rxPersonal_PU.FieldDefs.Add('dTotalDia', ftFloat, 0, True);
        rxPersonal_PU.FieldDefs.Add('sIdTipoPersonal', ftString, 4, True);

        grid_real_categoria.Columns[0].FieldName := 'dTotalCategoria';
    end;

    indice    := 0;
    indice_pu := 0;
    while not zColumnas.Eof do
    begin
        grid_ordenes.Columns.Add.Title.Caption  := zColumnas.FieldValues['sContrato'];
        grid_pernocta.Columns.Add.Title.Caption := zColumnas.FieldValues['sIdPernocta'];
        grid_laboran.Columns.Add.Title.Caption  := zColumnas.FieldValues['sIdPlataforma'];
        grid_personal.Columns.Add.Title.Caption := zColumnas.FieldValues['sHoraInicio'];

        grid_total_ordenes.Columns.Add.Title.Caption := zColumnas.FieldValues['sContrato'];

        grid_ordenes.Columns[indice].Title.Alignment  := taCenter;
        grid_pernocta.Columns[indice].Title.Alignment := taCenter;
        grid_laboran.Columns[indice].Title.Alignment  := taCenter;
        grid_personal.Columns[indice].Title.Alignment := taCenter;

        grid_ordenes.Columns[indice].Width  := 80;
        grid_pernocta.Columns[indice].Width := 80;
        grid_laboran.Columns[indice].Width  := 80;
        grid_personal.Columns[indice].Width := 80;

        grid_total_ordenes.Columns[indice].Width := 80;

        //Personal para visualizar datos..
        rxPersonal.FieldDefs.Add('dCantidad'+IntToStr(indice+1), ftFloat,0, True);
        rxPersonal.FieldDefs.Add('sContrato'+IntToStr(indice+1), ftString, 15, True);
        rxPersonal.FieldDefs.Add('sIdPernocta'+IntToStr(indice+1), ftString, 10, True);
        rxPersonal.FieldDefs.Add('sIdPlataforma'+IntToStr(indice+1), ftString, 10, True);
        rxPersonal.FieldDefs.Add('sNumeroOrden'+IntToStr(indice+1), ftString, 35, True);
        rxPersonal.FieldDefs.Add('sHoraInicio'+IntToStr(indice+1), ftString, 5, True);
        rxPersonal.FieldDefs.Add('sHoraFinal'+IntToStr(indice+1), ftString, 55, True);

        //Pessonal donde guarda el detalle si es PU o ADM
        zTiposPersonal.First;
        while not zTiposPersonal.Eof do
        begin
            rxPersonal_PU.FieldDefs.Add('dCantidad'+IntToStr(indice_pu+1), ftFloat,0, True);
            rxPersonal_PU.FieldDefs.Add('sContrato'+IntToStr(indice_pu+1), ftString, 15, True);
            rxPersonal_PU.FieldDefs.Add('sIdPernocta'+IntToStr(indice_pu+1), ftString, 10, True);
            rxPersonal_PU.FieldDefs.Add('sIdPlataforma'+IntToStr(indice_pu+1), ftString, 10, True);
            rxPersonal_PU.FieldDefs.Add('sNumeroOrden'+IntToStr(indice_pu+1), ftString, 35, True);
            rxPersonal_PU.FieldDefs.Add('sHoraInicio'+IntToStr(indice_pu+1), ftString, 5, True);
            rxPersonal_PU.FieldDefs.Add('sHoraFinal'+IntToStr(indice_pu+1), ftString, 55, True);
            rxPersonal_PU.FieldDefs.Add('sTipoObra'+IntToStr(indice_pu+1), ftString, 5, True);
            rxPersonal_PU.FieldDefs.Add('lCobro'+IntToStr(indice_pu+1), ftString, 55, True);
            inc(indice_pu);
            zTiposPersonal.Next;
        end;

        rxTotales.FieldDefs.Add('dTotal'+IntToStr(indice+1), ftFloat, 0, True);

        grid_ordenes.Columns[indice].FieldName  := 'dCantidad'+IntToStr(indice+1);
        grid_pernocta.Columns[indice].FieldName := 'dCantidad'+IntToStr(indice+1);
        grid_laboran.Columns[indice].FieldName  := 'dCantidad'+IntToStr(indice+1);
        grid_personal.Columns[indice].FieldName := 'dCantidad'+IntToStr(indice+1);

        grid_total_ordenes.Columns[indice].FieldName := 'dTotal'+IntToStr(indice+1);

        inc(indice);
        zColumnas.Next;
    end;
    total_columnas := indice;
    total_columnas_pu := indice_pu;
end;

procedure TfrmCuadredePersonal.DelCategoriaClick(Sender: TObject);
var
   SavePlace : TBookmark;
   iGrid : integer;
begin
    //Eliminamos las categoriad de personal..
    SavePlace := grid_categorias.DataSource.DataSet.GetBookmark;
    with grid_categorias.DataSource.DataSet do
    for iGrid := 0 to grid_categorias.SelectedRows.Count - 1 do
    begin
        GotoBookmark(pointer(grid_categorias.SelectedRows.Items[iGrid]));
        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('Delete from bitacoradepersonal_cuadre where dIdFecha =:fecha and sIdPersonal =:Personal');
        Connection.zCommand.Params.ParamByName('Fecha').DataType       := ftDate;
        Connection.zCommand.Params.ParamByName('Fecha').Value          := tdIdFecha.date;
        Connection.zCommand.Params.ParamByName('Personal').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('Personal').Value       := rxPersonal.FieldValues['sIdPersonal'];
        Connection.zCommand.ExecSQL();

        //Primero Eliminamos la categoria de la Tripulacion si Existe..
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('delete from tripulaciondiaria where sContrato =:Contrato and dIdFecha =:fecha and sIdTripulacion =:Personal');
        connection.QryBusca.ParamByName('contrato').AsString := global_contrato_barco;
        connection.QryBusca.ParamByName('Personal').AsString := rxPersonal.FieldValues['sAgrupaPersonal'];
        connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
        connection.QryBusca.ExecSQL;
    end;
    try
        grid_categorias.DataSource.DataSet.GotoBookmark(SavePlace);
    except
    else
       grid_categorias.DataSource.DataSet.FreeBookmark(SavePlace);
    end;
    tdIdfecha.OnExit(sender);
end;

procedure TfrmCuadredePersonal.DelHorasClick(Sender: TObject);
begin
    Eliminacolumnas(rxPersonal.FieldValues['sContrato'+IntToStr(indice_columna+1)],rxPersonal.FieldValues['sIdPernocta'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sIdPlataforma'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sHoraInicio'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sHoraFinal'+IntToStr(indice_columna+1)], 'Horas');
    tdIdfecha.OnExit(sender);
end;

procedure TfrmCuadredePersonal.DelOrdenClick(Sender: TObject);
begin
    Eliminacolumnas(rxPersonal.FieldValues['sContrato'+IntToStr(indice_columna+1)],rxPersonal.FieldValues['sIdPernocta'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sIdPlataforma'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sHoraInicio'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sHoraFinal'+IntToStr(indice_columna+1)], 'Ordenes');
    tdIdfecha.OnExit(sender);
end;

procedure TfrmCuadredePersonal.DelPernoctaClick(Sender: TObject);
begin
    Eliminacolumnas(rxPersonal.FieldValues['sContrato'+IntToStr(indice_columna+1)],rxPersonal.FieldValues['sIdPernocta'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sIdPlataforma'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sHoraInicio'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sHoraFinal'+IntToStr(indice_columna+1)], 'Pernocta');
    tdIdfecha.OnExit(sender);
end;

procedure TfrmCuadredePersonal.DelPlataformaClick(Sender: TObject);
begin
    Eliminacolumnas(rxPersonal.FieldValues['sContrato'+IntToStr(indice_columna+1)],rxPersonal.FieldValues['sIdPernocta'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sIdPlataforma'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sHoraInicio'+IntToStr(indice_columna+1)], rxPersonal.FieldValues['sHoraFinal'+IntToStr(indice_columna+1)], 'Plataforma');
    tdIdfecha.OnExit(sender);
end;

procedure TfrmCuadredepersonal.CargaDatos;
var
    indice, indice_pu, i : integer;
    dCategoria, dTotalDia, dTotalOrden : double;
begin
    grid_personal.Columns.Clear;
    grid_laboran.Columns.Clear;
    grid_pernocta.Columns.Clear;
    grid_ordenes.Columns.Clear;
    grid_total_ordenes.Columns.Clear;

    zColumnas.Active := False;
    zColumnas.ParamByName('fecha').AsDate := tdIdFecha.Date;
    zColumnas.Open;

    qry_Catalogo.Active := False;
    qry_Catalogo.ParamByName('fecha').AsDate := tdIdFecha.Date;
    qry_Catalogo.Open;

    CreaColumnas;

    qry_personal.Active := False;
    qry_personal.ParamByName('fecha').AsDate := tdIdFecha.Date;
    qry_personal.Open;

    If qry_personal.RecordCount = 0 then
       showmessage('No existen datos para Cuadre de Personal');

    rxPersonal.Active := True;
    rxPersonal_PU.Active := True;
    while not qry_catalogo.Eof do
    begin
        //Personal Agrupado para Visualizar
        rxPersonal.Append;
        rxPersonal.FieldValues['dIdFecha']     := tdIdFecha.Date;
        rxPersonal.FieldValues['sIdPersonal']  := qry_catalogo.FieldValues['sIdPersonal'];
        rxPersonal.FieldValues['iItemOrden']   := qry_catalogo.FieldValues['iItemOrden'];
        rxPersonal.FieldValues['sDescripcion'] := qry_catalogo.FieldValues['sDescripcion'];
        rxPersonal.FieldValues['sAgrupaPersonal'] := qry_catalogo.FieldValues['sAgrupaPersonal'];
        zColumnas.First;
        indice := 1;
        while not zColumnas.Eof do
        begin
            rxPersonal.FieldValues['sContrato'+IntToStr(indice)]    := zColumnas.FieldValues['sContrato'];
            rxPersonal.FieldValues['sIdPernocta'+IntToStr(indice)]  := zColumnas.FieldValues['sIdPernocta'];
            rxPersonal.FieldValues['sIdPlataforma'+IntToStr(indice)]:= zColumnas.FieldValues['sIdPlataforma'];
            rxPersonal.FieldValues['sNumeroOrden'+IntToStr(indice)] := zColumnas.FieldValues['sNumeroOrden'];
            rxPersonal.FieldValues['sHoraInicio'+IntToStr(indice)]  := zColumnas.FieldValues['sHoraInicio'];
            rxPersonal.FieldValues['sHoraFinal'+IntToStr(indice)]   := zColumnas.FieldValues['sHoraFinal'];
            zColumnas.Next;
            inc(indice);
        end;

        //Personal de PU y ADM
        rxPersonal_PU.Append;
        rxPersonal_PU.FieldValues['dIdFecha']     := tdIdFecha.Date;
        rxPersonal_PU.FieldValues['sIdPersonal']  := qry_catalogo.FieldValues['sIdPersonal'];
        rxPersonal_PU.FieldValues['iItemOrden']   := qry_catalogo.FieldValues['iItemOrden'];
        rxPersonal_PU.FieldValues['sDescripcion'] := qry_catalogo.FieldValues['sDescripcion'];
        rxPersonal_PU.FieldValues['sAgrupaPersonal'] := qry_catalogo.FieldValues['sAgrupaPersonal'];
        zColumnas.First;
        indice_pu := 1;
        while not zColumnas.Eof do
        begin
            zTiposPersonal.First;
            while not zTiposPersonal.Eof do
            begin
                rxPersonal_PU.FieldValues['sContrato'+IntToStr(indice_pu)]    := zColumnas.FieldValues['sContrato'];
                rxPersonal_PU.FieldValues['sIdPernocta'+IntToStr(indice_pu)]  := zColumnas.FieldValues['sIdPernocta'];
                rxPersonal_PU.FieldValues['sIdPlataforma'+IntToStr(indice_pu)]:= zColumnas.FieldValues['sIdPlataforma'];
                rxPersonal_PU.FieldValues['sNumeroOrden'+IntToStr(indice_pu)] := zColumnas.FieldValues['sNumeroOrden'];
                rxPersonal_PU.FieldValues['sHoraInicio'+IntToStr(indice_pu)]  := zColumnas.FieldValues['sHoraInicio'];
                rxPersonal_PU.FieldValues['sHoraFinal'+IntToStr(indice_pu)]   := zColumnas.FieldValues['sHoraFinal'];
                rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice_pu)]    := 0;
                rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice_pu)]    := zTiposPersonal.FieldValues['sIdTipoPersonal'];
                inc(indice_pu);
                zTiposPersonal.Next;
            end;
            zColumnas.Next;
        end;
        rxPersonal.Post;
        qry_catalogo.Next;
    end;

    //Aqui llenamos el rx del personal..
    rxPersonal.First;
    dTotalDia := 0;
    while not rxPersonal.Eof do
    begin
        dCategoria := 0;
        Qry_personal.First;
        while not Qry_personal.Eof do
        begin
            if rxPersonal.FieldValues['sIdPersonal'] = Qry_personal.FieldValues['sIdPersonal'] then
            begin
                indice := 1;
                while indice <= total_columnas do
                begin
                    if (rxPersonal.FieldValues['sContrato'+IntToStr(indice)] = Qry_personal.FieldValues['sContrato']) and
                       (rxPersonal.FieldValues['sIdPernocta'+IntToStr(indice)] = Qry_personal.FieldValues['sIdPernocta']) and
                       (rxPersonal.FieldValues['sIdPlataforma'+IntToStr(indice)] = Qry_personal.FieldValues['sIdPlataforma']) and
                       (rxPersonal.FieldValues['sHoraInicio'+IntToStr(indice)] = Qry_personal.FieldValues['sHoraInicio']) and
                       (rxPersonal.FieldValues['sHoraFinal'+IntToStr(indice)] = Qry_personal.FieldValues['sHoraFinal'])
                    then
                    begin
                        rxPersonal.Edit;
                        if rxPersonal.FieldValues['dCantidad'+IntToStr(indice)] = Null then
                           rxPersonal.FieldValues['dCantidad'+IntToStr(indice)] := 0;
                        rxPersonal.FieldValues['dCantidad'+IntToStr(indice)] := rxPersonal.FieldValues['dCantidad'+IntToStr(indice)] + Qry_personal.FieldValues['dCantidad'];
                        rxPersonal.Post;

                        if rxPersonal.FieldValues['sAgrupaPersonal'] <> 'S/C' then
                        begin
                            dCategoria := dCategoria + Qry_personal.FieldValues['dCantidad'];
                            dTotalDia  := dTotalDia + Qry_personal.FieldValues['dCantidad'];
                        end;
                    end;
                    inc(indice);
                end;
            end;
            Qry_personal.Next;
        end;
        rxPersonal.Edit;
        rxPersonal.FieldValues['dTotalCategoria'] := dCategoria;
        rxPersonal.Post;

        rxPersonal.Next;
    end;

    //Aqui llenamos el rx del personal PU ADM..
    rxPersonal_PU.First;
    while not rxPersonal_PU.Eof do
    begin
        //Personal de PU y ADM
        Qry_personal.First;
        while not Qry_personal.Eof do
        begin
            if rxPersonal_PU.FieldValues['sIdPersonal'] = Qry_personal.FieldValues['sIdPersonal'] then
            begin
                indice_pu := 1;
                while indice_pu <= total_columnas_pu do
                begin
                    if (rxPersonal_PU.FieldValues['sContrato'+IntToStr(indice_pu)] = Qry_personal.FieldValues['sContrato']) and
                       (rxPersonal_PU.FieldValues['sIdPernocta'+IntToStr(indice_pu)] = Qry_personal.FieldValues['sIdPernocta']) and
                       (rxPersonal_PU.FieldValues['sIdPlataforma'+IntToStr(indice_pu)] = Qry_personal.FieldValues['sIdPlataforma']) and
                       (rxPersonal_PU.FieldValues['sHoraInicio'+IntToStr(indice_pu)] = Qry_personal.FieldValues['sHoraInicio']) and
                       (rxPersonal_PU.FieldValues['sHoraFinal'+IntToStr(indice_pu)] = Qry_personal.FieldValues['sHoraFinal']) and
                       (rxPersonal_PU.FieldValues['sTipoObra'+IntToStr(indice_pu)] = Qry_personal.FieldValues['sTipoObra'])
                    then
                    begin
                        rxPersonal_PU.Edit;
                        rxPersonal_PU.FieldValues['dCantidad'+IntToStr(indice_pu)] := Qry_personal.FieldValues['dCantidad'];
                        rxPersonal_PU.FieldValues['lCobro'+IntToStr(indice_pu)]    := Qry_personal.FieldValues['lAplicaPernocta'];
                        rxPersonal_PU.Post;
                    end;
                    inc(indice_pu);
                end;
            end;
            Qry_personal.Next;
        end;
        rxPersonal_PU.Next;
    end;

    dTotal.Text := FloatToStr(dTotalDia);

    //Aqui llenamos el rx de Total de Ordenes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sum(dCantidad) as dCantidad from bitacoradepersonal_cuadre where dIdFecha =:fecha and sAgrupaPersonal <> "S/C" '+
                                'group by sContrato, sIdPernocta, sIdPlataforma, sHoraInicio '+
                                'order by sContrato, sIdPernocta, sIdPlataforma, sHoraInicio');
    connection.zCommand.ParamByName('fecha').AsDate        := tdIdFecha.Date;
    connection.zCommand.Open;

    indice := 1;
    if connection.zCommand.RecordCount > 0 then
    begin
        rxTotales.EmptyTable;
        rxTotales.Active := True;
        rxTotales.Append;
        rxtotales.Post;
    end;

    while not connection.zCommand.Eof do
    begin
        rxTotales.Edit;
        rxTotales.FieldValues['dTotal'+IntToStr(indice)] := connection.zCommand.FieldValues['dCantidad'];
        rxTotales.Post;
        connection.zCommand.Next;
        inc(indice);
    end;

end;

procedure TfrmCuadredePersonal.cargarCategoriaClick(Sender: TObject);
begin
    Panel.Height  := 316;
    Panel.Left    := 329;
    Panel.Top     := 166;
    Panel.Width   := 526;
    Panel.Visible := True;
    catalogo_maestro.Active := False;
    catalogo_maestro.SQL.Clear;
    catalogo_maestro.SQL.Add('select * from personal where sContrato =:Contrato order by iItemOrden');
    catalogo_maestro.ParamByName('Contrato').AsString := global_contrato_barco;
    catalogo_maestro.Open;
end;

procedure TfrmCuadredePersonal.CargarReportedeCampo1Click(Sender: TObject);
begin
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select * from bitacoradepersonal_cuadre Where dIdFecha =:Fecha');
    Connection.qryBusca.Params.ParamByName('Fecha').Datatype    := ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date;
    Connection.qryBusca.Open;

    if Connection.qryBusca.RecordCount > 0 then
       if MessageDlg('Desea Eliminar el Cuadre de Personal Actual?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('Delete From bitacoradepersonal_cuadre where dIdFecha = :fecha ');
           connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
           connection.zCommand.Params.ParamByName('Fecha').Value    := tdIdFecha.Date;
           connection.zCommand.ExecSQL;
       end;

    if MessageDlg('Desea cargar el Cuadre de Personal de los Reportes de Campo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        Connection.Auxiliar.Active := False;
        Connection.Auxiliar.SQL.Clear;
        Connection.Auxiliar.SQL.Add('select a.sNumeroOrden, a.sHoraInicio, a.sHoraFinal, p.iItemOrden, b.* from bitacoradepersonal b '+
                                    'inner join bitacoradeactividades a on (a.sContrato = b.sContrato and a.dIdFecha = b.dIdFecha and a.iIdDiario = b.iIdDiario) '+
                                    'inner join personal p on (p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal) '+
                                    'where b.dIdFecha = :fecha order by b.sContrato, a.sNumeroOrden, a.iIdDiario, b.iItemOrden, b.sIdPersonal');
        Connection.Auxiliar.Params.ParamByName('Fecha').Datatype    := ftDate;
        Connection.Auxiliar.Params.ParamByName('Fecha').Value       := tdIdFecha.Date;
        Connection.Auxiliar.Open;

        if Connection.Auxiliar.RecordCount > 0 then
        begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            Connection.zcommand.SQL.Add('insert into bitacoradepersonal_cuadre (sContrato, dIdFecha, sIdPersonal, iItemOrden, sTipoObra, sDescripcion, sIdPernocta, sIdPlataforma, sNumeroOrden, sHoraInicio, sHoraFinal, dCantidad, sAgrupaPersonal, lAplicaPernocta) '+
                                        'values (:Contrato, :fecha, :personal, :item, :tipoObra, :descripcion, :pernocta, :plataforma, :orden, :inicio, :final, :Cantidad, :agrupa, :cobro)');
            while not Connection.Auxiliar.Eof do
            begin
                try
                    Connection.zcommand.ParamByName('Contrato').AsString    := Connection.Auxiliar.FieldValues['sContrato'];
                    Connection.zcommand.ParamByName('fecha').AsDate         := tdIdFecha.Date;
                    Connection.zcommand.ParamByName('personal').AsString    := Connection.Auxiliar.FieldValues['sIdPersonal'];
                    Connection.zcommand.ParamByName('item').AsInteger       := Connection.Auxiliar.FieldValues['iItemOrden'];
                    Connection.zcommand.ParamByName('tipoObra').AsString    := Connection.Auxiliar.FieldValues['sTipoObra'];
                    Connection.zcommand.ParamByName('descripcion').AsString := Connection.Auxiliar.FieldValues['sDescripcion'];
                    Connection.zcommand.ParamByName('pernocta').AsString    := Connection.Auxiliar.FieldValues['sIdPernocta'];
                    Connection.zcommand.ParamByName('plataforma').AsString  := Connection.Auxiliar.FieldValues['sIdPlataforma'];
                    Connection.zcommand.ParamByName('orden').AsString       := Connection.Auxiliar.FieldValues['sNumeroOrden'];
                    Connection.zcommand.ParamByName('inicio').AsString      := Connection.Auxiliar.FieldValues['sHoraInicio'];
                    Connection.zcommand.ParamByName('final').AsString       := Connection.Auxiliar.FieldValues['sHoraFinal'];
                    Connection.zcommand.ParamByName('cantidad').AsFloat     := Connection.Auxiliar.FieldValues['dCantidad'];
                    Connection.zcommand.ParamByName('agrupa').AsString      := Connection.Auxiliar.FieldValues['sAgrupaPersonal'];
                    Connection.zcommand.ParamByName('cobro').AsString       := Connection.Auxiliar.FieldValues['lAplicaPernocta'];
                    Connection.zcommand.ExecSQL;
                    Connection.Auxiliar.Next;
                except
                end;
            end;
            tdIdFecha.OnExit(sender);
        end
        else
           messageDLG('No se encontró personal en los reportes de Campo!', mtInformation, [mbOk], 0);
    end;
end;

procedure TfrmCuadredePersonal.cmdAceptarClick(Sender: TObject);
var
   SavePlace  : TBookmark;
   iGrid, Cta : integer;
   Q_Insertar : tzQuery;
   Q_Cuadre   : tzREadOnlyQuery;
   indice     : integer;
begin
    Q_Insertar := tzQuery.Create(self);
    Q_Insertar.Connection := connection.zConnection;

    Q_Cuadre := tzReadOnlyQuery.Create(self);
    Q_Cuadre.Connection := connection.zConnection;

    //Primero Obtenemos las ordenes existentes en el cuadre...
    Connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('select * from bitacoradepersonal_cuadre where dIdFecha =:fecha group by sContrato');
    Connection.zCommand.Params.ParamByName('Fecha').DataType    := ftDate;
    Connection.zCommand.Params.ParamByName('Fecha').Value       := tdIdFecha.date;
    Connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
        {insetamos los campos de la tabla personal..}
        Q_Insertar.FieldDefs.Clear;
        for Cta := 1 to catalogo_maestro.FieldDefs.Count - 1 do
            Q_Insertar.FieldDefs.Add(catalogo_maestro.FieldDefs.Items[Cta].Name, catalogo_maestro.FieldDefs.Items[Cta].DataType, catalogo_maestro.FieldDefs.Items[Cta].Size, catalogo_maestro.FieldDefs.Items[Cta].Required);

        Q_Insertar.Active := False;
        Q_Insertar.SQL.Clear;
        Q_Insertar.SQL.Add('select * from personal where sContrato =:Contrato limit 1');
        Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
        Q_Insertar.Open;

        //Agregamos todas las categorias de personal seleccionadas a cada una de las ordenes de trabajo..
        SavePlace := grid_categorias.DataSource.DataSet.GetBookmark;

        with grid_catalogo_maestro.DataSource.DataSet do
        for iGrid := 0 to grid_catalogo_maestro.SelectedRows.Count - 1 do
        begin
            GotoBookmark(pointer(grid_catalogo_maestro.SelectedRows.Items[iGrid]));
            connection.zCommand.First;
            while not connection.zCommand.Eof do
            begin
                //Insertamos la categoria de personal en el catalogo de personal de la orden
                {Copiamos las Especialidades de personal }
                try
                    Q_Insertar.Append;
                    for Cta := 1 to catalogo_maestro.FieldDefs.Count  do
                    begin
                      if Cta = 1 then
                        Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := connection.zCommand.FieldValues['sContrato']
                      else
                        Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := catalogo_maestro.Fields.FieldByNumber(Cta).AsVariant;
                    end;
                    Q_Insertar.Post;
                Except
                end;
                connection.zCommand.Next;
            end;
       end;

       rxPersonal.First;
       while not rxPersonal.Eof do
       begin
          indice := 1;
          while indice <= total_columnas do
          begin
              if (rxPersonal.FieldValues['dCantidad'+IntToStr(indice)] <> Null) or (rxPersonal.FieldValues['dCantidad'+IntToStr(indice)] > 0) then
              begin
                  try
                    Q_Cuadre.Active := False;
                    Q_Cuadre.SQL.Clear;
                    Q_Cuadre.SQL.Add('insert into bitacoradepersonal_cuadre (sContrato, dIdFecha, sIdPersonal, iItemOrden, sDescripcion, sIdPernocta, sIdPlataforma, sNumeroOrden, sHoraInicio, sHoraFinal, dCantidad, sAgrupaPersonal) '+
                                     'values (:Contrato, :fecha, :personal, :item, :descripcion, :pernocta, :plataforma, :orden, :inicio, :final, :Cantidad, :agrupa)');
                    Q_Cuadre.ParamByName('Contrato').AsString    := Connection.zCommand.FieldValues['sContrato'];
                    Q_Cuadre.ParamByName('fecha').AsDate         := tdIdFecha.Date;
                    Q_Cuadre.ParamByName('personal').AsString    := catalogo_maestro.FieldValues['sIdPersonal'];
                    Q_Cuadre.ParamByName('item').AsInteger       := catalogo_maestro.FieldValues['iItemOrden'];
                    Q_Cuadre.ParamByName('descripcion').AsString := catalogo_maestro.FieldValues['sDescripcion'];
                    Q_Cuadre.ParamByName('pernocta').AsString    := Connection.zCommand.FieldValues['sIdPernocta'];
                    Q_Cuadre.ParamByName('plataforma').AsString  := Connection.zCommand.FieldValues['sIdPlataforma'];
                    Q_Cuadre.ParamByName('orden').AsString       := Connection.zCommand.FieldValues['sNumeroOrden'];
                    Q_Cuadre.ParamByName('inicio').AsString      := Connection.zCommand.FieldValues['sHoraInicio'];
                    Q_Cuadre.ParamByName('final').AsString       := Connection.zCommand.FieldValues['sHoraFinal'];
                    Q_Cuadre.ParamByName('cantidad').AsFloat     := 0;
                    Q_Cuadre.ParamByName('agrupa').AsString      := catalogo_maestro.FieldValues['sAgrupaPersonal'];
                    Q_Cuadre.ExecSQL;
                  Except
                  end;
              end;
              inc(indice);
          end;
          rxPersonal.Next;
      end;
    end;

    Panel.Visible := False;
    Q_insertar.Destroy;
    Q_Cuadre.Destroy;
    connection.zCommand.Active := False;
    tdIdfecha.OnExit(sender);
end;

procedure TfrmCuadredePersonal.cmdCancelaGClick(Sender: TObject);
begin
    PanelDatos.Visible := false;
    grid_Catalogo_maestro.Enabled := True;
    btnNuevoPersonal.Enabled := True;
    cmdAceptar.Enabled := True;
    cmdCancelar.Enabled := True;
    gruposPersonal.Active  := False;
    tiposdepersonal.Active := False;
end;

procedure TfrmCuadredePersonal.cmdCancelarClick(Sender: TObject);
begin
    Panel.Visible := False;
    catalogo_maestro.Active := False;
end;

procedure TfrmCuadredePersonal.cmdGuardarClick(Sender: TObject);
var
   cadenamensaje : string;
   item : integer;
begin
    if tsIdTipodepersonal.Text = '' then
       cadenamensaje := cadenamensaje + #13 + ' Tipo de Personal ';

    if tsAgrupacion.Text = '' then
       cadenamensaje := cadenamensaje + #13 + ' Grupo de Personal ';

    if tsIdpersonal.Text = '' then
       cadenamensaje := cadenamensaje + #13 + ' ID Personal ';

    if tsDescripcion.Text = '' then
       cadenamensaje := cadenamensaje + #13 + ' Descripcion de Personal ';

    if cadenamensaje <> '' then
    begin
        messageDLG('Se encontraron datos vacíos: '+ cadenamensaje, mtInformation,[mbOk], 0);
        exit;
    end;

    //Primero obtenemos el maximo de los items.
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select MAX(iItemOrden) as iItemOrden from personal where sContrato =:Contrato ');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato_barco;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
       item := connection.zCommand.FieldValues['iItemOrden'] + 1;

    //Insertamos los datos en catalogo de personal del contrato de barco..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('insert into personal (sContrato, sIdPersonal, iItemOrden, sDescripcion, sIdTipoPersonal, sMedida, dCantidad, '+
                                'lProrrateo, lCobro, lAplicaTM, lAplicaGerencial, sAgrupaPersonal) '+
                                'values (:Contrato, :personal, :item, :descripcion, :tipo, :medida, :cantidad, :prorrateo, :cobro, :tm, :gerencial, :agrupa)');
    connection.zCommand.ParamByName('Contrato').AsString    := global_contrato_barco;
    connection.zCommand.ParamByName('personal').AsString    := tsIdPersonal.Text;
    connection.zCommand.ParamByName('item').AsInteger       := item;
    connection.zCommand.ParamByName('descripcion').AsString := tsDescripcion.Text;
    connection.zCommand.ParamByName('tipo').AsString        := tsIdTipodePersonal.KeyValue;
    connection.zCommand.ParamByName('medida').AsString      := 'JOR';
    connection.zCommand.ParamByName('cantidad').AsFloat     := 1;
    connection.zCommand.ParamByName('prorrateo').AsString   := 'No';
    connection.zCommand.ParamByName('cobro').AsString       := 'No';
    connection.zCommand.ParamByName('tm').AsString          := 'No';
    connection.zCommand.ParamByName('gerencial').AsString   := 'No';
    connection.zCommand.ParamByName('agrupa').AsString      := tsAgrupacion.KeyValue;
    connection.zCommand.ExecSQL;

    catalogo_maestro.Refresh;
    catalogo_maestro.Last;
    PanelDatos.Visible := False;
    grid_Catalogo_maestro.Enabled := True;
    btnNuevoPersonal.Enabled := True;
    cmdAceptar.Enabled := True;
    cmdCancelar.Enabled := True;
end;

procedure TfrmCuadredepersonal.EliminaColumnas(sParamContrato: string; sParamPernocta: string; sParamPlataforma: string; sParamInicio: string; sParamFinal: string; sParamOpcion: string);
var
   sentencia : string;
begin
    //Eliminamos las columnas de ordenes de trabajo, pernoctas, plataformas y horarios..
    Connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('Delete from bitacoradepersonal_cuadre where dIdFecha =:fecha ');
    if sParamOpcion = 'Ordenes' then
       sentencia := 'and sContrato =:Contrato ';

    if sParamOpcion = 'Pernocta' then
       sentencia := 'and sContrato =:Contrato and sIdPernocta =:Pernocta ';

    if sParamOpcion = 'Plataforma' then
       sentencia := 'and sContrato =:Contrato and sIdPernocta =:Pernocta and sIdPlataforma =:plataforma ';

    if sParamOpcion = 'Horas' then
       sentencia := 'and sContrato =:Contrato and sIdPernocta =:Pernocta and sIdPlataforma =:plataforma and sHoraInicio =:inicio and sHoraFinal =:final ';

    Connection.zCommand.SQL.Add(sentencia);
    Connection.zCommand.Params.ParamByName('Fecha').DataType          := ftDate;
    Connection.zCommand.Params.ParamByName('Fecha').Value             := tdIdFecha.date;
    if pos('sContrato', sentencia) > 0 then
    begin
        Connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString;
        Connection.zCommand.Params.ParamByName('Contrato').Value      := sParamContrato;
    end;
    if pos('sIdPernocta', sentencia) > 0 then
    begin
        Connection.zCommand.Params.ParamByName('Pernocta').DataType   := ftString;
        Connection.zCommand.Params.ParamByName('Pernocta').Value      := sParamPernocta;
    end;
    if pos('sIdPlataforma', sentencia) > 0 then
    begin
        Connection.zCommand.Params.ParamByName('Plataforma').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Plataforma').Value    := sParamPlataforma;
    end;
    if pos('sHoraInicio', sentencia) > 0 then
    begin
        Connection.zCommand.Params.ParamByName('Inicio').DataType     := ftString;
        Connection.zCommand.Params.ParamByName('Inicio').Value        := sParamInicio;
        Connection.zCommand.Params.ParamByName('Final').DataType      := ftString;
        Connection.zCommand.Params.ParamByName('Final').Value         := sParamFinal;
    end;
    Connection.zCommand.ExecSQL();
end;

procedure TfrmCuadredePersonal.InsertaTripulacion;
var
  dFechaAnterior : tDate;
  lNuevaVigencia : boolean;
begin
    //Varificamos si existe la tripulacion actual..
    connection.QryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select * from tripulaciondiaria Where sContrato =:Contrato And dIdFecha =:Fecha');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := Global_Contrato_barco;
    Connection.qryBusca.Params.ParamByName('Fecha').Datatype    := ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date;
    Connection.qryBusca.Open;

    if Connection.qryBusca.RecordCount = 0 then
    begin
        if MessageDlg('No existe Tripulacion Diaria!, ¿Desea Insertar la Tripulacion del Dia Anterior y Actualizar Datos con el Cuadre del Personal del Dia?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
            //Ahora verificamos si las vigencias son diferentes,
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ASC');
            connection.zCommand.Open;

            if connection.zCommand.RecordCount > 0 then
            begin
                dFechaAnterior := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
                while not connection.zCommand.Eof do
                begin
                    if tdIdFecha.Date  - 1 >= connection.zCommand.FieldByName('dFechaVigencia').AsDateTime then
                       dFechaAnterior := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
                    connection.zCommand.Next;
                end;

                if dFechaAnterior <> fechaAntes then
                begin
                    messageDLG('Existe una Nueva Vigencia de personal con fecha del '+DateToStr(fechaAntes)+' diefrente al Dia Anterior. Los Datos se insertaran en 0', mtInformation, [mbOk], 0);

                    Connection.Auxiliar.SQL.Clear;
                    Connection.Auxiliar.SQL.Add('Select * from tripulacion Where dFechaVigencia =:Fecha');
                    Connection.Auxiliar.Params.ParamByName('Fecha').Datatype    := ftDate;
                    Connection.Auxiliar.Params.ParamByName('Fecha').Value       := FechaAntes;
                    Connection.Auxiliar.Open;
                end
                else
                begin
                    dFechaAnterior := tdIdFecha.Date - 1;
                    Connection.Auxiliar.SQL.Clear;
                    Connection.Auxiliar.SQL.Add('Select * from tripulaciondiaria Where sContrato =:Contrato And dIdFecha =:Fecha');
                    Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
                    Connection.Auxiliar.Params.ParamByName('Contrato').Value    := Global_Contrato_barco;
                    Connection.Auxiliar.Params.ParamByName('Fecha').Datatype    := ftDate;
                    Connection.Auxiliar.Params.ParamByName('Fecha').Value       := dFechaAnterior;
                    Connection.Auxiliar.Open;
                end;
            end;

            if Connection.Auxiliar.RecordCount > 0 then
            begin
                Connection.zcommand.SQL.Clear;
                Connection.zcommand.SQL.Add('INSERT INTO tripulaciondiaria ( sContrato , sIdTurno, didFecha , sIdCategoria, sIdTripulacion, iNacionales, iExtranjeros, sOrden ) ' +
                  ' VALUES (:contrato , :Turno, :fecha  , :categoria , :tripulacion , :Nacionales , :Extranjeros, :orden )');
                while not Connection.Auxiliar.Eof do
                begin
                  with connection do
                  begin
                      try
                        zcommand.params.ParamByName('contrato').DataType    := ftString;
                        zcommand.params.ParamByName('contrato').value       := Global_Contrato_barco;
                        zcommand.params.ParamByName('Turno').DataType       := ftString;
                        zcommand.params.ParamByName('Turno').value          := 'A';
                        zcommand.params.ParamByName('fecha').DataType       := ftDate;
                        zcommand.params.ParamByName('fecha').value          := tdIdFecha.Date;
                        zcommand.params.ParamByName('categoria').DataType   := ftString;
                        zcommand.params.ParamByName('categoria').value      := Auxiliar.FieldValues['sIdCategoria'];
                        zcommand.params.ParamByName('tripulacion').DataType := ftString;
                        zcommand.params.ParamByName('tripulacion').value    := Auxiliar.FieldValues['sIdTripulacion'];
                        zcommand.params.ParamByName('Nacionales').DataType  := ftInteger;
                        zcommand.params.ParamByName('Nacionales').value     := Auxiliar.FieldValues['iNacionales'];
                        zcommand.params.ParamByName('Extranjeros').DataType := ftInteger;
                        zcommand.params.ParamByName('Extranjeros').value    := Auxiliar.FieldValues['iExtranjeros'];
                        zcommand.params.ParamByName('Orden').DataType       := ftString;
                        zcommand.params.ParamByName('Orden').value          := Auxiliar.FieldValues['sOrden'];
                        zcommand.ExecSQL;
                        Auxiliar.Next;
                      except
                      end;
                  end;
                end;
            end
            else
               messageDLG('No se encontró personal el día anterior', mtInformation, [mbOk], 0);

            //Ahora insertamos los datos de la Tabla de Soriano donde guardaba su total del barco..
            //Traemos datos del dia Anterior
            Connection.Auxiliar.Active := False;
            Connection.Auxiliar.SQL.Clear;
            Connection.Auxiliar.SQL.Add('Select * from tripulacionpernocta Where sContrato =:Contrato and sIdTurno =:Turno And dIdFecha =:Fecha');
            Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
            Connection.Auxiliar.Params.ParamByName('Contrato').Value    := Global_Contrato_barco;
            Connection.Auxiliar.Params.ParamByName('Turno').DataType    := ftString;
            Connection.Auxiliar.Params.ParamByName('Turno').Value       := 'A';
            Connection.Auxiliar.Params.ParamByName('Fecha').Datatype    := ftDate;
            Connection.Auxiliar.Params.ParamByName('Fecha').Value       := dFechaAnterior;
            Connection.Auxiliar.Open;

            if Connection.Auxiliar.RecordCount > 0 then
            begin
                Connection.zcommand.SQL.Clear;
                Connection.zcommand.SQL.Add('INSERT INTO tripulacionpernocta ( sContrato , sIdTurno, didFecha , dCantidad, dCantidadBordo, mNotas, iEspacios, mEspacios ) ' +
                                            ' VALUES (:contrato , :Turno, :fecha  , :cantidad , :total , :notas , :espacios, :notasespacios )');
                while not Connection.Auxiliar.Eof do
                begin
                  with connection do
                  begin
                      try
                        zcommand.params.ParamByName('contrato').DataType    := ftString;
                        zcommand.params.ParamByName('contrato').value       := Global_Contrato_barco;
                        zcommand.params.ParamByName('Turno').DataType       := ftString;
                        zcommand.params.ParamByName('Turno').value          := 'A';
                        zcommand.params.ParamByName('fecha').DataType       := ftDate;
                        zcommand.params.ParamByName('fecha').value          := tdIdFecha.Date;
                        zcommand.params.ParamByName('cantidad').DataType    := ftFloat;
                        zcommand.params.ParamByName('cantidad').value       := Auxiliar.FieldValues['dCantidad'];
                        zcommand.params.ParamByName('total').DataType       := ftFloat;
                        zcommand.params.ParamByName('total').value          := Auxiliar.FieldValues['dCantidadBordo'];
                        zcommand.params.ParamByName('notas').DataType         := ftMemo;
                        zcommand.params.ParamByName('notas').value            := Auxiliar.FieldValues['mNotas'];
                        zcommand.params.ParamByName('espacios').DataType      := ftInteger;
                        zcommand.params.ParamByName('espacios').value         := Auxiliar.FieldValues['iEspacios'];
                        zcommand.params.ParamByName('notasespacios').DataType := ftMemo;
                        zcommand.params.ParamByName('notasespacios').value    := Auxiliar.FieldValues['mEspacios'];
                        zcommand.ExecSQL;
                        Auxiliar.Next;
                      except
                      end;
                  end;
                end;
            end;
            //Finaliza insercion de Datos de la tabla tripulacionpernocta...
        end;
    end;
end;

procedure TfrmCuadredePersonal.ActualizaAnexoPersonal;
var
    zPersonal, zInserta, zBusca, zTripulacion  : tzReadOnlyQuery;
    lEncuentra : boolean;
    Categoria  : string;
begin
    zPersonal := tzReadOnlyQuery.Create(self);
    zPersonal.Connection := connection.zConnection;

    zInserta := tzReadOnlyQuery.Create(self);
    zInserta.Connection := connection.zConnection;

    zBusca := tzReadOnlyQuery.Create(self);
    zBusca.Connection := connection.zConnection;

    zTripulacion := tzReadOnlyQuery.Create(self);
    zTripulacion.Connection := connection.zConnection;

    zTripulacion.Active := False;
    zTripulacion.SQL.Clear;
    zTripulacion.SQL.Add('select * from tripulaciondiaria where sContrato =:Contrato and sIdTurno =:Turno and dIdFecha =:fecha ');
    zTripulacion.ParamByName('contrato').AsString := global_contrato_barco;
    zTripulacion.ParamByName('turno').AsString    := 'A';
    zTripulacion.ParamByName('fecha').AsDate      := tdIdFecha.Date;
    zTripulacion.Open;

    if zTripulacion.RecordCount > 0 then
    begin
        zPersonal.Active := False;
        zPersonal.SQL.Clear;
        zPersonal.SQL.Add('select b.sContrato, p.iItemOrden, p.sAgrupaPersonal, sum(b.dCantidad) as dCantidad, p.sDescripcion from bitacoradepersonal b '+
                          'inner join personal p on(b.sContrato = p.sContrato  and p.sIdPersonal = b.sIdPersonal) '+
                          'where b.dIdFecha  = :fecha and sIdTipoPersonal = "PE-C" group by b.sContrato, b.sAgrupaPersonal order by p.iItemOrden');
        zPersonal.ParamByName('fecha').AsDate := tdIdFecha.Date;
        zPersonal.Open;

        //Personal de reportes diarios..
        while not zPersonal.Eof do
        begin
            //Personal de tripulacion..
            lEncuentra :=  False;
            zTripulacion.First;
            while not zTripulacion.Eof do
            begin
                if (zTripulacion.FieldValues['sIdTripulacion'] = zPersonal.FieldValues['sAgrupaPersonal']) and
                   (zTripulacion.FieldValues['sOrden'] = zPersonal.FieldValues['sContrato']) then
                begin
                    lEncuentra := True;
                    Categoria  := zTripulacion.FieldValues['sIdCategoria'];
                    zTripulacion.Last;
                end;
                zTripulacion.Next;
            end;

            //Verificamos si se encontro la categoria de personal en la zTripulacion diaria,
            if lEncuentra  then
            begin
                zInserta.Active := False;
                zInserta.SQL.Clear;
                zInserta.SQL.Add('Update tripulaciondiaria set iNacionales =:cantidad where sContrato =:Contrato and sIdTurno =:Turno '+
                                  'and dIdFecha =:Fecha and sIdCategoria =:Categoria and sIdTripulacion =:Tripulacion and sOrden =:Orden ');
                zInserta.ParamByName('contrato').AsString    := global_contrato_barco;
                zInserta.ParamByName('turno').AsString       := 'A';
                zInserta.ParamByName('fecha').AsDate         := tdIdFecha.Date;
                zInserta.ParamByName('categoria').AsString   := Categoria;
                zInserta.ParamByName('cantidad').AsFloat     := zPersonal.FieldValues['dCantidad'];
                zInserta.ParamByName('tripulacion').AsString := zPersonal.FieldValues['sAgrupaPersonal'];
                zInserta.ParamByName('Orden').AsString       := zPersonal.FieldValues['sContrato'];
                zInserta.ExecSQL;
            end
            else
            begin
                //Buscamos la categoria de la tripulacion que sea del Anexo de Personal,,
                zBusca.Active := False;
                zBusca.SQL.Clear;
                zBusca.SQL.Add('select sIdCategoria from categorias where dFechaVigencia =:fecha and lPersonalAnexo = "Si" ');
                zBusca.ParamByName('fecha').AsDate   := fechaAntes;
                zBusca.Open;

                if zBusca.RecordCount > 0 then
                   categoria := zBusca.FieldValues['sIdCategoria']
                else
                begin
                    messageDLG('No existe una Categoría que Considere Personal de Anexo "Si", Ver Administración de Catálogos [Categorías]', mtInformation, [mbOk], 0);
                    exit;
                end;

                //Ahora buscamos la categoria en el catalogo de tripulacion..
                zBusca.Active := False;
                zBusca.SQL.Clear;
                zBusca.SQL.Add('select sIdTripulacion from tripulacion where sContrato =:Contrato and dFechaVigencia =:fecha and sIdTripulacion =:Tripulacion ');
                zBusca.ParamByName('contrato').AsString    := global_contrato_barco;
                zBusca.ParamByName('fecha').AsDate         := fechaAntes;
                //zBusca.ParamByName('categoria').AsString   := categoria;
                zBusca.ParamByName('tripulacion').AsString := zPersonal.FieldValues['sAgrupaPersonal'];
                zBusca.Open;

                //Si no se encuentra la damos de alta en el catalogo..
                if zBusca.RecordCount = 0 then
                begin
                    zInserta.Active := False;
                    zInserta.SQL.Clear;
                    zInserta.SQL.Add('Insert into tripulacion (sContrato, dFechaVigencia, sIdCategoria, sIdTripulacion, sDescripcion, iNacionales, iExtranjeros, iOrden ) '+
                                      'values (:Contrato, :fecha, :categoria, :tripulacion, :descripcion, 0, 0, :orden)');
                    zInserta.ParamByName('contrato').DataType    := ftString;
                    zInserta.ParamByName('contrato').value       := Global_Contrato_barco;
                    zInserta.ParamByName('fecha').DataType       := ftDate;
                    zInserta.ParamByName('fecha').value          := fechaAntes;
                    zInserta.ParamByName('categoria').DataType   := ftString;
                    zInserta.ParamByName('categoria').value      := categoria;
                    zInserta.ParamByName('tripulacion').DataType := ftString;
                    zInserta.ParamByName('tripulacion').value    := zPersonal.FieldValues['sAgrupaPersonal'];
                    zInserta.ParamByName('Descripcion').DataType := ftString;
                    zInserta.ParamByName('Descripcion').value    := zPersonal.FieldValues['sAgrupaPersonal'] +' '+zPersonal.FieldValues['sDescripcion'];
                    zInserta.ParamByName('Orden').DataType       := ftInteger;
                    zInserta.ParamByName('Orden').value          := zPersonal.FieldValues['iItemOrden'];
                    zInserta.ExecSQL;
                end;

                //Insertamos la tripulaicon diaria..
                try
                  zInserta.Active := False;
                  zInserta.SQL.Clear;
                  zInserta.SQL.Add('Insert into tripulaciondiaria (sContrato, sIdTurno, dIdFecha, sIdCategoria, sIdTripulacion, iNacionales, iExtranjeros, sOrden ) '+
                                    'values (:Contrato, :turno, :fecha, :categoria, :tripulacion, :nacionales, :extranjeros, :orden)');
                  zInserta.ParamByName('contrato').DataType    := ftString;
                  zInserta.ParamByName('contrato').value       := Global_Contrato_barco;
                  zInserta.ParamByName('Turno').DataType       := ftString;
                  zInserta.ParamByName('Turno').value          := 'A';
                  zInserta.ParamByName('fecha').DataType       := ftDate;
                  zInserta.ParamByName('fecha').value          := tdIdFecha.Date;
                  zInserta.ParamByName('categoria').DataType   := ftString;
                  zInserta.ParamByName('categoria').value      := categoria;
                  zInserta.ParamByName('tripulacion').DataType := ftString;
                  zInserta.ParamByName('tripulacion').value    := zPersonal.FieldValues['sAgrupaPersonal'];
                  zInserta.ParamByName('Nacionales').DataType  := ftInteger;
                  zInserta.ParamByName('Nacionales').value     := zPersonal.FieldValues['dCantidad'];
                  zInserta.ParamByName('Extranjeros').DataType := ftInteger;
                  zInserta.ParamByName('Extranjeros').value    := 0;
                  zInserta.ParamByName('Orden').DataType       := ftString;
                  zInserta.ParamByName('Orden').value          := zPersonal.FieldValues['sContrato'];
                  zInserta.ExecSQL;
                Except
                end;
            end;
            zPersonal.Next;
        end;

        //Sino se encontro personal reportado y se hizo el recalculo..
        if zPersonal.RecordCount = 0 then
        begin
            zPersonal.Active := False;
            zPersonal.SQL.Clear;
            zPersonal.SQL.Add('select sAgrupaPersonal from personal where sContrato =:Contrato ');
            zPersonal.ParamByName('Contrato').AsString := global_contrato_barco;
            zPersonal.Open;

            zBusca.Active := False;
            zBusca.SQL.Clear;
            zBusca.SQL.Add('select * from tripulaciondiaria where sContrato =:Contrato and sIdTurno =:Turno and dIdFecha =:fecha ');
            zBusca.ParamByName('contrato').AsString := global_contrato_barco;
            zBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
            zBusca.ParamByName('Turno').AsString    := 'A' ;
            zBusca.Open;

            while not zBusca.Eof do
            begin
                zPersonal.First;
                while not zPersonal.Eof do
                begin
                    if zPersonal.FieldValues['sAgrupaPersonal'] = zBusca.FieldValues['sIdTripulacion'] then
                    begin
                        zInserta.Active := False;
                        zInserta.SQL.Clear;
                        zInserta.SQL.Add('Update tripulaciondiaria set iNacionales =:cantidad where sContrato =:Contrato and sIdTurno =:Turno '+
                                         'and dIdFecha =:Fecha and sIdCategoria =:Categoria and sIdTripulacion =:Tripulacion');
                        zInserta.ParamByName('contrato').AsString    := global_contrato_barco;
                        zInserta.ParamByName('turno').AsString       := zBusca.FieldValues['sIdTurno'];
                        zInserta.ParamByName('fecha').AsDate         := zBusca.FieldValues['dIdFecha'];
                        zInserta.ParamByName('categoria').AsString   := zBusca.FieldValues['sIdCategoria'];
                        zInserta.ParamByName('cantidad').AsFloat     := 0;
                        zInserta.ParamByName('tripulacion').AsString := zBusca.FieldValues['sIdTripulacion'];
                        zInserta.ExecSQL;
                    end;
                    zPersonal.Next;
                end;
                zBusca.Next;
            end;
        end;
    end
    else
       messageDLG('Primero debe Agregar Personal de Tripulacion!', mtInformation, [mbOk], 0);

    zPersonal.Destroy;
    zInserta.Destroy;
    zBusca.Destroy;
    zTripulacion.Destroy;
end;

end.

