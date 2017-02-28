unit frm_retecionesypenas;

interface

uses
  Windows, Messages, SysUtils,StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, DB, StdCtrls, Grids, DBGrids,
  frm_barra, ComCtrls, DBCtrls, Mask, Menus, ExtCtrls, frxClass, frxDBSet,
  ToolWin, ImgList, RXDBCtrl, RxMemDS, DateUtils,  jpeg,
  RXCtrls,  Buttons, Newpanel, utilerias, masUtilerias,UnitTBotonesPermisos,
  ZAbstractRODataset, ZDataset, UnitExcepciones, rxToolEdit, rxCurrEdit, udbgrid,
  UFunctionsGHH, UnitValidacion;

type
  TfrmRetencionesyPenas = class(TForm)
    ds_aConvenio: TDataSource;
    MemoryTotales: TRxMemoryData;
    MemoryTotalessContrato: TStringField;
    MemoryTotalessRenglon: TStringField;
    MemoryTotalesAnno: TIntegerField;
    MemoryTotalesMes: TIntegerField;
    MemoryTotalessIdConvenio: TStringField;
    dbMemoryConsolidado: TfrxDBDataset;
    gConfiguracion: TfrxDBDataset;
    dsQryPartidasPenalizar: TDataSource;
    PopMenu: TPopupMenu;
    Editar1: TMenuItem;
    Adicionar1: TMenuItem;
    Eliminar1: TMenuItem;
    Imprimir1: TMenuItem;
    MemoryPenas: TRxMemoryData;
    StringField1: TStringField;
    MemoryPenasdFecha: TDateField;
    MemoryPenasdCantidad: TFloatField;
    MemoryPenasdMonto: TCurrencyField;
    MemoryPenassNumeroActividad: TStringField;
    dbMemoryPenas: TfrxDBDataset;
    MemoryPenasTotales: TRxMemoryData;
    StringField2: TStringField;
    DateField1: TDateField;
    CurrencyField1: TCurrencyField;
    MemoryPenasTotalesdMontoAcumulado: TCurrencyField;
    MemoryPenasTotalesdPorcentaje: TFloatField;
    bdMemoryPenasTotales: TfrxDBDataset;
    MemoryMeses: TRxMemoryData;
    StringField3: TStringField;
    MemoryMesesdFechaInicial: TDateField;
    MemoryMesesdFechaFinal: TDateField;
    dbMemoryMeses: TfrxDBDataset;
    bdActividadesxPena: TfrxDBDataset;
    MemoryPenassMedida: TStringField;
    MemoryPenasdVentaMN: TCurrencyField;
    MemoryPenasTotalesdAcumuladoMensual: TCurrencyField;
    MemoryTotalesiColor: TIntegerField;
    dsAnexosConsolidados: TfrxDBDataset;
    TreeObras: TTreeView;
    ImageList1: TImageList;
    dsPartidasConvenio: TfrxDBDataset;
    rxAjusteCosto: TRxMemoryData;
    StringField4: TStringField;
    rxAjusteCostosNumeroActividad: TStringField;
    rxAjusteCostodIdFecha: TDateField;
    rxAjusteCostoDT: TFloatField;
    rxAjusteCostoGenerado: TFloatField;
    rxAjusteCostoAjuste: TFloatField;
    rxAjusteCostosMedida: TStringField;
    rxAjusteCostomDescripcion: TMemoField;
    rxAjusteCostodCantidadAnexo: TFloatField;
    rxAjusteCostodVentaMN: TCurrencyField;
    dsAjusteCosto: TfrxDBDataset;
    opRetencionesyPenas: TPageControl;
    TabConvenios: TTabSheet;
    TabPenalizacion: TTabSheet;
    Panel1: tNewGroupBox;
    Grid_Convenios: TRxDBGrid;
    Panel: tNewGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    tsMes: TComboBox;
    UpAnno: TUpDown;
    tiAnno: TEdit;
    btnImprimir: TBitBtn;
    btnSalir: TBitBtn;
    GridPenas: TRxDBGrid;
    btnRegenera: TBitBtn;
    btnEliminar: TBitBtn;
    btnImprime: TBitBtn;
    Panel2: tNewGroupBox;
    Label1: TLabel;
    btnOk: TButton;
    btnCancel: TButton;
    tdNewCantidad: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnGraba: TButton;
    btnCancela: TButton;
    tdAddCantidad: TCurrencyEdit;
    tsNumeroActividad: TEdit;
    Label21: TLabel;
    GroupBox5: TGroupBox;
    bImgConvenio: TImage;
    btnNext: TBitBtn;
    btnPrevious: TBitBtn;
    tiRegistro: TCurrencyEdit;
    rxAjusteCostoFactor: TFloatField;
    rxAjusteCostoMontoAjuste: TCurrencyField;
    PanelAjuste: tNewGroupBox;
    btnImprimirAjuste: TBitBtn;
    btnSalirAjuste: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    tsMesAjuste: TComboBox;
    UpAnnoAjuste: TUpDown;
    tiAnnoAjuste: TEdit;
    rxAjusteCostoiNumeroEstimacion: TStringField;
    rxTotalesAjuste: TRxMemoryData;
    rxTotalesAjustesContrato: TStringField;
    rxTotalesAjustesNumeroOrden: TStringField;
    rxTotalesAjustedMonto: TCurrencyField;
    dsTotalesAjuste: TfrxDBDataset;
    mnRetenciones: TMainMenu;
    Contrato1: TMenuItem;
    Penalizaciones1: TMenuItem;
    mnProgramaDT: TMenuItem;
    mnProgramaDE: TMenuItem;
    N1: TMenuItem;
    mnConsolDT: TMenuItem;
    mnConsolDE: TMenuItem;
    mnRetencion: TMenuItem;
    mnPenalizacion: TMenuItem;
    Otros1: TMenuItem;
    mnAjustedeCosto: TMenuItem;
    dsAnexoDT: TfrxDBDataset;
    AnexoDT: TZReadOnlyQuery;
    N2: TMenuItem;
    mnHistorial: TMenuItem;
    QryAnexosConsolidados: TZReadOnlyQuery;
    aConvenio: TZReadOnlyQuery;
    aConveniosIdConvenio: TStringField;
    aConveniodFecha: TDateField;
    aConveniosDescripcion: TStringField;
    aConveniodFechaInicio: TDateField;
    aConveniodFechaFinal: TDateField;
    aConveniodMontoMN: TFloatField;
    aConveniodMontoDLL: TFloatField;
    aConveniosIdTipoConvenio: TStringField;
    MemoryTotalesdValor: TStringField;
    QryPartidasPenalizar: TZReadOnlyQuery;
    QryPartidasPenalizarsContrato: TStringField;
    QryPartidasPenalizarsNumeroActividad: TStringField;
    QryPartidasPenalizardCantidadAnexo: TFloatField;
    QryPartidasPenalizardVentaMN: TFloatField;
    QryPartidasPenalizarsMedida: TStringField;
    QryPartidasPenalizarmDescripcion: TMemoField;
    QryPartidasPenalizardCantidad: TFloatField;
    QryPartidasPenalizardMontoMN: TCurrencyField;
    QryPartidasConvenio: TZReadOnlyQuery;
    QryPartidasConveniosNumeroActividad: TStringField;
    QryPartidasConveniomDescripcion: TStringField;
    QryPartidasConveniodCantidadAnexo: TFloatField;
    QryPartidasConveniosMedida: TStringField;
    QryPartidasConveniodVentaMN: TFloatField;
    QryPartidasConveniosDescripcion: TStringField;
    QryPartidasConveniodFechaInicio: TDateField;
    QryPartidasConveniodFechaFinal: TDateField;
    QryContratosGerencial: TZReadOnlyQuery;
    QryImgConvenios: TZReadOnlyQuery;
    QryResidencias: TZReadOnlyQuery;
    rxAvancesContrato: TRxMemoryData;
    StringField16: TStringField;
    rxAvancesContratodFecha: TDateField;
    rxAvancesContratodProgramado: TFloatField;
    rxAvancesContratodReal: TFloatField;
    dsAvancesContrato: TfrxDBDataset;
    aConveniosContrato: TStringField;
    mnDetalle: TMenuItem;
    rxAvancesContratodFinanciero: TFloatField;
    rxAvancesContratodProforma: TFloatField;
    mnConsolidadoAvProg: TMenuItem;
    rxAjusteCostoiItemOrden: TStringField;
    frxAnexo: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure Grid_ConveniosGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure PanelEnter(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure PanelExit(Sender: TObject);
    procedure tiAnnoEnter(Sender: TObject);
    procedure tiAnnoExit(Sender: TObject);
    procedure tiAnnoKeyPress(Sender: TObject; var Key: Char);
    procedure tsMesEnter(Sender: TObject);
    procedure tsMesExit(Sender: TObject);
    procedure tsMesKeyPress(Sender: TObject; var Key: Char);
    procedure btnRegeneraClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure tdNewCantidadEnter(Sender: TObject);
    procedure tdNewCantidadExit(Sender: TObject);
    procedure tdNewCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure Panel1Enter(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure GridPenasDblClick(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tdAddCantidadEnter(Sender: TObject);
    procedure tdAddCantidadExit(Sender: TObject);
    procedure tdAddCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure Adicionar1Click(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnGrabaClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure SpeedItem1Click(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure dbMemoryMesesFirst(Sender: TObject);
    procedure dbMemoryMesesNext(Sender: TObject);
    procedure frxAjusteGetValue(const VarName: String; var Value: Variant);
    procedure aConvenioAfterScroll(DataSet: TDataSet);
    procedure btnNextClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure QryImgConveniosAfterScroll(DataSet: TDataSet);
    procedure TreeObrasClick(Sender: TObject);
    procedure TreeObrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeObrasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure refresh ;
    procedure PanelAjusteExit(Sender: TObject);
    procedure btnSalirAjusteClick(Sender: TObject);
    procedure btnImprimirAjusteClick(Sender: TObject);
    procedure PanelAjusteEnter(Sender: TObject);
    procedure frxAjusteCostoGetValue(const VarName: String;
      var Value: Variant);
    procedure tiAnnoAjusteEnter(Sender: TObject);
    procedure tiAnnoAjusteExit(Sender: TObject);
    procedure tiAnnoAjusteKeyPress(Sender: TObject; var Key: Char);
    procedure tsMesAjusteEnter(Sender: TObject);
    procedure tsMesAjusteExit(Sender: TObject);
    procedure tsMesAjusteKeyPress(Sender: TObject; var Key: Char);
    procedure frxAnexoDEdllGetValue(const VarName: String;
      var Value: Variant);
    procedure frxAnexoDEGetValue(const VarName: String;
      var Value: Variant);
    procedure frxAnexoDTGetValue(const VarName: String;
      var Value: Variant);
    procedure mnProgramaDTClick(Sender: TObject);
    procedure mnProgramaDEClick(Sender: TObject);
    procedure mnConsolDEClick(Sender: TObject);
    procedure mnConsolDTClick(Sender: TObject);
    procedure mnRetencionClick(Sender: TObject);
    procedure mnHistorialClick(Sender: TObject);
    procedure mnPenalizacionClick(Sender: TObject);
    procedure mnAjustedeCostoClick(Sender: TObject);
    procedure frxAnexoGetValue(const VarName: String; var Value: Variant);
    procedure QryPartidasPenalizarCalcFields(DataSet: TDataSet);
    procedure mnDetalleClick(Sender: TObject);
    procedure CalculoRetenciones (sParamContrato, sParamConvenio : String) ;
    procedure CalculoProforma (sParamContrato, sParamConvenio : String) ;
    procedure mnConsolidadoAvProgClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_ConveniosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridPenasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ConveniosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridPenasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridPenasTitleClick(Column: TColumn);
    procedure Grid_ConveniosTitleClick(Column: TColumn);
    procedure tdNewCantidadChange(Sender: TObject);
    procedure tdAddCantidadChange(Sender: TObject);

  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetencionesyPenas: TfrmRetencionesyPenas;
  sConvenio : String ;
  dMontoAcumulado : Double ;
  sOpcion : String ;
  sFechas : String ;
  dFactor : Double ;
  MyTreeNode2,
  MyTreeNode3    : TTreeNode;
  dMontoContrato : Currency ;
  StringPuesto: TStrings;
  StringNombre: TStrings;
  CtaReg, CtaFechas : Byte ;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmRetencionesyPenas.refresh ;
begin
  If TreeObras.Selected.Text <> '' then
      If TreeObras.Selected.getFirstChild = Nil Then
      begin
          QryContratosGerencial.Active := False ;
          QryContratosGerencial.Params.ParamByName('Contrato').DataType := ftString ;
          QryContratosGerencial.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
          QryContratosGerencial.Open ;
          If QryContratosGerencial.RecordCount > 0 Then
          Begin
              Caption := 'Retenciones y Penas Convencionales del Contrato : ' + TreeObras.Selected.Text ; ;
              sConvenio := QryContratosGerencial.FieldValues['sIdConvenio'] ;
              aConvenio.Active := False ;
              aConvenio.Params.ParamByName('Contrato').DataType := ftString ;
              aConvenio.Params.ParamByName('Contrato').Value := QryContratosGerencial.FieldValues['sContrato'] ;
              aConvenio.Open ;

              QryPartidasPenalizar.Active := False ;
              QryPartidasPenalizar.Params.ParamByName('Contrato').DataType := ftString ;
              QryPartidasPenalizar.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
              QryPartidasPenalizar.Params.ParamByName('Convenio').DataType := ftString ;
              QryPartidasPenalizar.Params.ParamByName('Convenio').Value := QryContratosGerencial.FieldValues['sIdConvenio'] ;
              QryPartidasPenalizar.Open ;
          End
      End
End ;

procedure TfrmRetencionesyPenas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  botonpermiso.free;
  utgrid.Destroy;
  utgrid2.Destroy;
end;

procedure TfrmRetencionesyPenas.FormShow(Sender: TObject);
begin
BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'grPenasRet',popMenu);
BotonPermiso.permisosBotones(nil);
if not BotonPermiso.imprimir then
 Begin
   BtnImprime.Enabled:=False;
 End;
if not BotonPermiso.borrar then
 Begin
   BtnEliminar.Enabled:=False;
 End;
if not BotonPermiso.agregar then
 Begin
   BtnRegenera.Enabled:=False;
 End;
sMenuP:=stMenu;
UtGrid:=TicdbGrid.create(grid_convenios);
UtGrid2:=TicdbGrid.create(gridpenas);
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
            Begin
                Connection.QryBusca2.SQL.Add('select c.sContrato From contratos c INNER JOIN contratosxusuario u ON ' +
                                                  '(c.sContrato = u.sContrato And u.sIdUsuario = :Usuario) ' +
                                                  'Where c.sIdResidencia = :Residencia And c.lStatus = "Activo" Order By c.sContrato') ;
                Connection.QryBusca2.Params.ParamByName('Residencia').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Residencia').Value := qryResidencias.FieldValues['sIdResidencia'] ;
                Connection.QryBusca2.Params.ParamByName('Usuario').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Usuario').Value := global_usuario ;
            End ;
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
  treeObras.SetFocus
end;

procedure TfrmRetencionesyPenas.Grid_ConveniosGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdConvenio').AsString = sConvenio) then
        Background := clGradientInactiveCaption
end;

procedure TfrmRetencionesyPenas.Grid_ConveniosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (grid_convenios.DataSource.DataSet.IsEmpty=true) or (grid_convenios.DataSource.DataSet.RecordCount<=0) then
 exit;
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmRetencionesyPenas.Grid_ConveniosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if (grid_convenios.DataSource.DataSet.IsEmpty=true) or (grid_convenios.DataSource.DataSet.RecordCount<=0) then
 exit;
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmRetencionesyPenas.Grid_ConveniosTitleClick(Column: TColumn);
begin
 if (grid_convenios.DataSource.DataSet.IsEmpty=true) or (grid_convenios.DataSource.DataSet.RecordCount<=0) then
 exit;
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmRetencionesyPenas.PanelEnter(Sender: TObject);
begin
    UpAnno.Position := YearOf ( Date ) ;
    tsMes.ItemIndex := MonthOf( Date ) - 1;
    tiAnno.SetFocus
end;

procedure TfrmRetencionesyPenas.btnImprimirClick(Sender: TObject);
Var
    sFechaFinal : String ;
    lContinua : Boolean ;
    dFecha : tDate ;
Begin
    CtaFechas := 0 ;
try
    If aConvenio.Active = True then
      If aConvenio.RecordCount > 0 Then
      Begin
          If sOpcion = 'Retencion' Then
          Begin
              CalculoRetenciones (aConvenio.FieldValues['sContrato'] , aConvenio.FieldValues['sIdConvenio'] ) ;
              frxAnexo.LoadFromFile (global_files + 'HistoricoRetenciones.fr3') ;
              frxAnexo.PreviewOptions.MDIChild := False ;
              frxAnexo.PreviewOptions.Modal := True ;
              frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
              frxAnexo.PreviewOptions.ShowCaptions := False ;
              frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
              //<ROJAS>
              frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
              //
              TreeObras.SetFocus
          End
          Else
              If sOpcion = 'Proforma' Then
              Begin
                  CalculoProforma (aConvenio.FieldValues['sContrato'] , aConvenio.FieldValues['sIdConvenio'] ) ;
                  frxAnexo.LoadFromFile (global_files + 'HistoricoContrato.fr3') ;
                  frxAnexo.PreviewOptions.MDIChild := False ;
                  frxAnexo.PreviewOptions.Modal := True ;
                  frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
                  frxAnexo.PreviewOptions.ShowCaptions := False ;
                  frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
                  //<ROJAS>
                  frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
                  //
                  TreeObras.SetFocus
              End
              Else
              Begin
                   If MemoryMeses.RecordCount > 0 Then
                      MemoryMeses.EmptyTable ;

                //Apartir del siguiente dia de la fecha de termino de un contrato se empieza a penalizar.
                // Se crea la tabla memoryMeses, donde iran incluido por contrato, la fecha inicio y termino de cada mes, desde el termino del contrato
                // hasta la fecha donde se quiere penalizar.

                // Se detectan los valores de inicio y termino
                dFecha := QryContratosGerencial.FieldValues['dFechaFinal'] + 1 ;
                sFechaFinal := sfnFechaFinal (tsMes.ItemIndex + 1 , UpAnno.Position ) ;
                // Variabla dFecha = a la fecha siguiente de la fecha de termino del contrato ...
                While dFecha <= StrToDate(sFechaFinal) Do
                Begin
                    MemoryMeses.Append ;
                    MemoryMeses.FieldValues['sContrato'] := TreeObras.Selected.Text ;
                    MemoryMeses.FieldValues['dFechaInicial'] := dFecha ;
                    MemoryMeses.FieldValues['dFechaFinal'] := StrToDate(sfnFechaFinal(MonthOf(dFecha) , YearOf(dFecha) )) ;
                    MemoryMeses.Post ;
                    CtaFechas := CtaFechas + 1 ;
                    dFecha := StrToDate(sfnFechaFinal (MonthOf(dFecha) , YearOf(dFecha))) + 1 ;
                End ;
                MemoryMeses.First ;

                frxAnexo.LoadFromFile (global_files + 'PenasConvencionales.fr3') ;
                frxAnexo.PreviewOptions.MDIChild := False ;
                frxAnexo.PreviewOptions.Modal := True ;
                frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
                frxAnexo.PreviewOptions.ShowCaptions := False ;
                frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
                //<ROJAS>
                  frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
                //
                TreeObras.SetFocus
              End
      End
except
              on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al Imprimir ', 0);
              end;
end;
end;

procedure TfrmRetencionesyPenas.PanelExit(Sender: TObject);
begin
    Panel.Visible := False ;
end;

procedure TfrmRetencionesyPenas.tiAnnoEnter(Sender: TObject);
begin
    tiAnno.Color := global_color_Entrada
end;

procedure TfrmRetencionesyPenas.tiAnnoExit(Sender: TObject);
begin
    tiAnno.Color := global_color_salida
end;

procedure TfrmRetencionesyPenas.tiAnnoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsMes.SetFocus  
end;

procedure TfrmRetencionesyPenas.tsMesEnter(Sender: TObject);
begin
    tsMes.Color := global_color_entrada
end;

procedure TfrmRetencionesyPenas.tsMesExit(Sender: TObject);
begin
    tsMes.Color := global_color_salida
end;

procedure TfrmRetencionesyPenas.tsMesKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnImprimir.SetFocus 
end;

procedure TfrmRetencionesyPenas.btnRegeneraClick(Sender: TObject);
Var
    dCantidadMulta : Double ;
begin
     If TreeObras.Selected.Text <> '' Then
       If MessageDlg('Este proceso actualiza todas las partidas pendientes de generar a la fecha del termino de ultimo convenio, considerandolas como partidas a multar. Desea regenerar las partidas a penalizar?)',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       Begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from actividadesxpena where sContrato = :contrato') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text  ;
        connection.zCommand.ExecSQL ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sNumeroActividad, dCantidadAnexo From actividadesxanexo ' +
                                    'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" Order By iItemOrden') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
        Begin
            While NOT Connection.qryBusca.Eof Do
            Begin
                dCantidadMulta := 0 ;
                Connection.qryBusca2.Active := False ;
                Connection.qryBusca2.SQL.Clear ;
                Connection.qryBusca2.SQL.Add('Select Sum(e2.dCantidad) as dGenerado From estimaciones e ' +
                                             'INNER JOIN estimacionxpartida e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And ' +
                                             'e2.sNumeroActividad = :Actividad And e2.lEstima = "Si") ' +
                                             'Where e.sContrato = :contrato And e.dFechaFinal <= :Fecha Group By e.sContrato' ) ;
                Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
                Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
                Connection.qryBusca2.Params.ParamByName('Actividad').Value := Connection.qryBusca.FieldValues['sNumeroActividad'] ;
                Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
                Connection.qryBusca2.Params.ParamByName('Fecha').Value := QryContratosGerencial.FieldValues['dFechaFinal'] ;
                Connection.qryBusca2.Open ;
                If Connection.qryBusca2.RecordCount > 0 Then
                Begin
                    If Connection.qryBusca2.FieldValues['dGenerado'] < Connection.qryBusca.FieldValues['dCantidadAnexo'] Then
                        dCantidadMulta := Connection.qryBusca.FieldValues['dCantidadAnexo'] - Connection.qryBusca2.FieldValues['dGenerado']

                End
                Else
                     dCantidadMulta := Connection.qryBusca.FieldValues['dCantidadAnexo'] ;

                If dCantidadMulta > 0 then
                Begin
                    try
                         connection.zCommand.Active := False ;
                         connection.zCommand.SQL.Clear ;
                         connection.zCommand.SQL.Add ( 'INSERT INTO actividadesxpena ( sContrato, sNumeroActividad, dCantidad ) ' +
                                                       ' VALUES (:contrato, :actividad, :cantidad)') ;
                         connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                         connection.zCommand.Params.ParamByName('contrato').value := TreeObras.Selected.Text ;
                         connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                         connection.zCommand.Params.ParamByName('actividad').value := Connection.qryBusca.FieldValues['sNumeroActividad'] ;
                         connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                         connection.zCommand.Params.ParamByName('cantidad').value := dCantidadMulta ;
                         connection.zCommand.ExecSQL ;
                    except
                        MessageDlg('Ocurrio un error al actualizar la partida ' + Connection.qryBusca.FieldValues['sNumeroActividad'] , mtWarning, [mbOk], 0);
                    End
               End ;
                Connection.qryBusca.Next
            End ;
            QryPartidasPenalizar.Active := False ;
            QryPartidasPenalizar.Open ;
            MessageDlg('Proceso Terminado con Exito.' , mtInformation, [mbOk], 0);
        End
     End
end;

procedure TfrmRetencionesyPenas.btnEliminarClick(Sender: TObject);
begin
    If QryPartidasPenalizar.RecordCount > 0 Then
    Begin
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'Delete from actividadesxpena where sContrato = :contrato And sNumeroActividad = :Actividad') ;
         connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text  ;
         connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Actividad').Value := QryPartidasPenalizar.FieldValues['sNumeroActividad'] ;
         connection.zCommand.ExecSQL ;
         QryPartidasPenalizar.Active := False ;
         QryPartidasPenalizar.Open ;
    End
end;

procedure TfrmRetencionesyPenas.tdNewCantidadChange(Sender: TObject);
begin
tCurrenciEditChangef(tdNewCantidad,'Cantidad');
end;

procedure TfrmRetencionesyPenas.tdNewCantidadEnter(Sender: TObject);
begin
    tdNewCantidad.Color := global_color_entrada
end;

procedure TfrmRetencionesyPenas.tdNewCantidadExit(Sender: TObject);
begin
    tdNewCantidad.Color := global_color_salida
end;

procedure TfrmRetencionesyPenas.tdNewCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltrotCurrencyEdit(tdNewCantidad,key) then
   key:=#0;
    If Key = #13 Then
        btnOk.SetFocus;
end;

procedure TfrmRetencionesyPenas.Panel1Enter(Sender: TObject);
begin
    tdNewCantidad.Value := QryPartidasPenalizar.FieldValues['dCantidad'] ;
end;

procedure TfrmRetencionesyPenas.btnOkClick(Sender: TObject);
begin
    If tdNewCantidad.Value = 0 Then
    Begin
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'Delete from actividadesxpena where sContrato = :contrato And sNumeroActividad = :Actividad') ;
         connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
         connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Actividad').Value := QryPartidasPenalizar.FieldValues['sNumeroActividad'] ;
         connection.zCommand.ExecSQL ;
    End
    Else
    Begin
         try
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'UPDATE actividadesxpena SET dCantidad = :Cantidad ' +
                                           'where sContrato = :contrato And sNumeroActividad = :Actividad') ;
             connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
             connection.zCommand.Params.ParamByName('contrato').value := TreeObras.Selected.Text ;
             connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Actividad').value := QryPartidasPenalizar.FieldValues['sNumeroActividad'];
             connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
             connection.zCommand.Params.ParamByName('cantidad').value := tdNewCantidad.Value ;
             connection.zCommand.ExecSQL ;
         except
           //  MessageDlg('Ocurrio un error al actualizar la partida ' + Connection.qryBusca.FieldValues['sNumeroActividad'] , mtWarning, [mbOk], 0);
              on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al actualizar la partida '+ Connection.qryBusca.FieldValues['sNumeroActividad'], 0);
              end;
         End
    End ;
    QryPartidasPenalizar.Active := False ;
    QryPartidasPenalizar.Open ;
    GridPenas.SetFocus
end;

procedure TfrmRetencionesyPenas.btnCancelClick(Sender: TObject);
begin
    Panel1.Visible := False ;
end;

procedure TfrmRetencionesyPenas.Panel1Exit(Sender: TObject);
begin
    Panel1.Visible := False ;
end;

procedure TfrmRetencionesyPenas.GridPenasDblClick(Sender: TObject);
begin
  If QryPartidasPenalizar.RecordCount > 0 Then
  Begin
    Panel1.Visible := True ;
    tdNewCantidad.SetFocus
  End
end;

procedure TfrmRetencionesyPenas.GridPenasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmRetencionesyPenas.GridPenasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmRetencionesyPenas.GridPenasTitleClick(Column: TColumn);
begin
   UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmRetencionesyPenas.Editar1Click(Sender: TObject);
begin
    Panel1.Visible := True ;
    tdNewCantidad.SetFocus
end;

procedure TfrmRetencionesyPenas.Eliminar1Click(Sender: TObject);
begin
    btnEliminar.Click
end;

procedure TfrmRetencionesyPenas.Imprimir1Click(Sender: TObject);
begin
    btnImprime.Click 
end;

procedure TfrmRetencionesyPenas.Panel2Enter(Sender: TObject);
begin
    tdAddCantidad.Value := 0 ;
end;

procedure TfrmRetencionesyPenas.Panel2Exit(Sender: TObject);
begin
    Panel2.Visible := False ;
end;

procedure TfrmRetencionesyPenas.tsNumeroActividadEnter(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entrada
end;

procedure TfrmRetencionesyPenas.tsNumeroActividadExit(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_salida ;
    If tsNumeroActividad.Text <> '' Then
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sNumeroActividad From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount = 0 Then
            tsNumeroActividad.SetFocus
    End ;

end;

procedure TfrmRetencionesyPenas.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdAddCantidad.SetFocus 
end;

procedure TfrmRetencionesyPenas.tdAddCantidadChange(Sender: TObject);
begin
   tCurrenciEditChangef(tdAddCantidad,'Cantidad');
end;

procedure TfrmRetencionesyPenas.tdAddCantidadEnter(Sender: TObject);
begin
    tdAddCantidad.Color := global_Color_entrada
end;

procedure TfrmRetencionesyPenas.tdAddCantidadExit(Sender: TObject);
begin
    tdAddCantidad.Color := global_Color_salida
end;

procedure TfrmRetencionesyPenas.tdAddCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltrotCurrencyEdit(tdAddCantidad,key) then
   key:=#0;
    If Key = #13 then
        btnGraba.SetFocus
end;

procedure TfrmRetencionesyPenas.Adicionar1Click(Sender: TObject);
begin
    Panel2.Visible := True ;
    tsNumeroActividad.SetFocus
end;

procedure TfrmRetencionesyPenas.btnCancelaClick(Sender: TObject);
begin
    Panel2.Visible := False ;
end;

procedure TfrmRetencionesyPenas.btnGrabaClick(Sender: TObject);
Var
    dCantidadMulta : Double ;
begin

    If tsNumeroActividad.Text <> '' Then
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sNumeroActividad, dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
                                    'sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sTipoActividad = "Actividad"') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
        Begin
            dCantidadMulta := 0 ;
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Sum(e2.dCantidad) as dGenerado From estimaciones e ' +
                                         'INNER JOIN estimacionxpartida e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                         'e.sNumeroGenerador = e2.sNumeroGenerador And e2.sNumeroActividad = :Actividad And e2.lEstima = "Si" ) ' +
                                         'Where e.sContrato = :contrato And e.dFechaFinal <= :Fecha Group By e.sContrato' ) ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := QryContratosGerencial.FieldValues['dFechaFinal'] ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
            Begin
                 If Connection.qryBusca2.FieldValues['dGenerado'] < Connection.qryBusca.FieldValues['dCantidadAnexo'] Then
                     dCantidadMulta := Connection.qryBusca.FieldByName('dCantidadAnexo').AsFloat - Connection.qryBusca2.FieldByName('dGenerado').AsFloat
            End
            Else
                 dCantidadMulta := Connection.qryBusca.FieldValues['dCantidadAnexo'] ;

            If dCantidadMulta > 0 then
            Begin
                  try
                       connection.zCommand.Active := False ;
                       connection.zCommand.SQL.Clear ;
                       connection.zCommand.SQL.Add ( 'INSERT INTO actividadesxpena ( sContrato, sNumeroActividad, dCantidad ) ' +
                                                     ' VALUES (:contrato, :actividad, :cantidad)') ;
                       connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                       connection.zCommand.Params.ParamByName('contrato').value := TreeObras.Selected.Text ;
                       connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                       connection.zCommand.Params.ParamByName('actividad').value := tsNumeroActividad.Text ;
                       connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                       connection.zCommand.Params.ParamByName('cantidad').value := dCantidadMulta ;
                       connection.zCommand.ExecSQL ;

                  except
//                       MessageDlg('Ocurrio un error al actualizar la partida ' + Connection.qryBusca.FieldValues['sNumeroActividad'] , mtWarning, [mbOk], 0);
                        on e : exception do begin
                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y Penas Convencionales', 'Al agregar penalizacion a partida '+ Connection.qryBusca.FieldValues['sNumeroActividad'], 0);
                        end;
                  End ;
                  QryPartidasPenalizar.Active := False ;
                  QryPartidasPenalizar.Open ;
            End
            Else
                  MessageDlg('La partida No. ' + Connection.qryBusca.FieldValues['sNumeroActividad'] + ' no aplica pena convencional.' , mtWarning, [mbOk], 0);
        End
    End

end;

procedure TfrmRetencionesyPenas.btnSalirClick(Sender: TObject);
begin
    Panel.Visible := False ;
end;

procedure TfrmRetencionesyPenas.SpeedItem1Click(Sender: TObject);
begin
  sOpcion := 'Penas' ;
  Panel.Visible := True ;
  Panel.SetFocus
end;

procedure TfrmRetencionesyPenas.btnImprimeClick(Sender: TObject);
begin
  try
    frxAnexo.LoadFromFile (global_files + 'PartidasPenalizar.fr3') ;
    frxAnexo.PreviewOptions.MDIChild := False ;
    frxAnexo.PreviewOptions.Modal := True ;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
    frxAnexo.PreviewOptions.ShowCaptions := False ;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
    //<ROJAS>
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al Imprimir', 0);
    end;
  end;
end;

procedure TfrmRetencionesyPenas.dbMemoryMesesFirst(Sender: TObject);
Var
    dCantidadMulta : Double ;
    dMonto : Double ;
    dMontoMensual : Double ;
    dFecha : tDate ;
begin
  CtaReg := 0 ;
  sFechas := '' ;
  dMontoAcumulado := 0 ;

  If MemoryPenas.RecordCount > 0 Then
      MemoryPenas.EmptyTable ;

  If MemoryPenasTotales.RecordCount > 0 Then
      MemoryPenasTotales.EmptyTable ;

  If MemoryMeses.RecordCount > 0 then
  Begin
    dFecha := MemoryMeses.FieldValues['dFechaInicial'] ;
    dMontoMensual := 0 ;
    While dFecha <= MemoryMeses.FieldValues['dFechaFinal'] Do
    Begin
        QryPartidasPenalizar.First ;
        dMonto := 0 ;
        While NOT QryPartidasPenalizar.Eof Do
        Begin
            MemoryPenas.Append ;
            MemoryPenas.FieldValues['sContrato'] := TreeObras.Selected.Text ;
            MemoryPenas.FieldValues['sNumeroActividad'] := QryPartidasPenalizar.FieldValues['sNumeroActividad'] ;
            MemoryPenas.FieldValues['sMedida'] := QryPartidasPenalizar.FieldValues['sMedida'] ;
            MemoryPenas.FieldValues['dVentaMN'] := QryPartidasPenalizar.FieldValues['dVentaMN'] ;
            MemoryPenas.FieldValues['dFecha'] := dFecha ;

            dCantidadMulta := 0 ;

            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            If QryContratosGerencial.FieldValues['sTerminoPenalizacion'] = 'Generadores de Obra' Then
                Connection.qryBusca2.SQL.Add('Select Sum(e2.dCantidad) as dGenerado From estimaciones e ' +
                                                  'INNER JOIN estimacionxpartida e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                                  'e.sNumeroGenerador = e2.sNumeroGenerador And e2.sNumeroActividad = :Actividad And e2.lEstima = "Si") ' +
                                                  'Where e.sContrato = :contrato And e.dFechaFinal > :FechaInicio And e.dFechaFinal < :Fecha Group By e.sContrato' )
            Else
                Connection.qryBusca2.SQL.Add('Select Sum(e2.dCantidad) as dGenerado From reportediario e ' +
                                                  'INNER JOIN bitacoradeactividades e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                                  'e.dIdFecha = e2.dIdFecha And e.sIdTurno = e2.sIdTurno And e2.sNumeroActividad = :Actividad)' +
                                                  'Where e.sContrato = :contrato And e.dIdFecha > :FechaInicio And e.dIdFecha < :Fecha And e.lStatus = "Autorizado" Group By e.sContrato' ) ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Actividad').Value := QryPartidasPenalizar.FieldValues['sNumeroActividad'] ;
            Connection.qryBusca2.Params.ParamByName('FechaInicio').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('FechaInicio').Value := QryContratosGerencial.FieldValues['dFechaFinal'] ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := dFecha ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
                 If Connection.qryBusca2.FieldValues['dGenerado'] > QryPartidasPenalizar.FieldValues['dCantidad'] Then
                     dCantidadMulta := 0
                 Else
                     dCantidadMulta := QryPartidasPenalizar.FieldValues['dCantidad'] - Connection.qryBusca2.FieldValues['dGenerado']
            Else
                 dCantidadMulta := QryPartidasPenalizar.FieldValues['dCantidad'] ;
            MemoryPenas.FieldValues['dCantidad'] := dCantidadMulta ;
            MemoryPenas.FieldValues['dMonto'] := ( dCantidadMulta * QryPartidasPenalizar.FieldByName('dVentaMN').AsFloat ) * QryContratosGerencial.FieldByName('dPenaConvencional').AsFloat ;
            MemoryPenas.Post ;
            dMonto := dMonto + ( ( dCantidadMulta * QryPartidasPenalizar.FieldByName('dVentaMN').AsFloat ) * QryContratosGerencial.FieldByName('dPenaConvencional').AsFloat ) ;
            QryPartidasPenalizar.Next
        End ;
        dMontoAcumulado := dMontoAcumulado + dMonto ;
        dMontoMensual := dMontoMensual + dMonto ;

        // Totales Generales
        MemoryPenasTotales.Append ;
        MemoryPenasTotales.FieldValues['sContrato'] := TreeObras.Selected.Text ;
        MemoryPenasTotales.FieldValues['dFecha'] := dFecha ;
        MemoryPenasTotales.FieldValues['dMonto'] := dMonto ;
        MemoryPenasTotales.FieldValues['dMontoAcumulado'] := dMontoAcumulado ;
        MemoryPenasTotales.FieldValues['dAcumuladoMensual'] := dMontoMensual ;
        MemoryPenasTotales.FieldValues['dPorcentaje'] := ( dMontoAcumulado / QryContratosGerencial.FieldValues['dMontoMN'] ) * 100;
        MemoryPenasTotales.Post ;
        dFecha := dFecha + 1 ;
    End
  End  ;
  CtaReg := CtaReg + 1 ;
End;



procedure TfrmRetencionesyPenas.dbMemoryMesesNext(Sender: TObject);
Var
    dCantidadMulta : Double ;
    dMonto : Double ;
    dMontoMensual : Double ;
    dFecha : tDate ;
begin

If CtaReg <= (CtaFechas-1) Then
 Begin
    If MemoryPenas.RecordCount > 0 Then
        MemoryPenas.EmptyTable ;

    If MemoryPenasTotales.RecordCount > 0 Then
        MemoryPenasTotales.EmptyTable ;

    dFecha := MemoryMeses.FieldValues['dFechaInicial'] ;
    dMontoMensual := 0 ;
    While dFecha <= MemoryMeses.FieldValues['dFechaFinal'] Do
    Begin
        QryPartidasPenalizar.First ;
        dMonto := 0 ;
        While NOT QryPartidasPenalizar.Eof Do
        Begin
            MemoryPenas.Append ;
            MemoryPenas.FieldValues['sContrato'] := TreeObras.Selected.Text ;
            MemoryPenas.FieldValues['sNumeroActividad'] := QryPartidasPenalizar.FieldValues['sNumeroActividad'] ;
            MemoryPenas.FieldValues['sMedida'] := QryPartidasPenalizar.FieldValues['sMedida'] ;
            MemoryPenas.FieldValues['dVentaMN'] := QryPartidasPenalizar.FieldValues['dVentaMN'] ;
            MemoryPenas.FieldValues['dFecha'] := dFecha ;

            dCantidadMulta := 0 ;
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            If QryContratosGerencial.FieldValues['sTerminoPenalizacion'] = 'Generadores de Obra' Then
                Connection.qryBusca2.SQL.Add('Select Sum(e2.dCantidad) as dGenerado From estimaciones e ' +
                                                  'INNER JOIN estimacionxpartida e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                                  'e.sNumeroGenerador = e2.sNumeroGenerador And e2.sNumeroActividad = :Actividad And e2.lEstima = "Si") ' +
                                                  'Where e.sContrato = :contrato And e.dFechaFinal > :FechaInicio And e.dFechaFinal < :Fecha Group By e.sContrato' )
            Else
                Connection.qryBusca2.SQL.Add('Select Sum(e2.dCantidad) as dGenerado From reportediario e ' +
                                                  'INNER JOIN bitacoradeactividades e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                                  'e.dIdFecha = e2.dIdFecha And e.sIdTurno = e2.sIdTurno And e2.sNumeroActividad = :Actividad)' +
                                                  'Where e.sContrato = :contrato And e.dIdFecha > :FechaInicio And e.dIdFecha < :Fecha And e.lStatus = "Autorizado" Group By e.sContrato' ) ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Actividad').Value := QryPartidasPenalizar.FieldValues['sNumeroActividad'] ;
            Connection.qryBusca2.Params.ParamByName('FechaInicio').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('FechaInicio').Value := QryContratosGerencial.FieldValues['dFechaFinal'] ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := dFecha ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
                 If Connection.qryBusca2.FieldValues['dGenerado'] > QryPartidasPenalizar.FieldValues['dCantidad'] Then
                     dCantidadMulta := 0
                 Else
                     dCantidadMulta := QryPartidasPenalizar.FieldValues['dCantidad'] - Connection.qryBusca2.FieldValues['dGenerado']
            Else
                 dCantidadMulta := QryPartidasPenalizar.FieldValues['dCantidad'];

            MemoryPenas.FieldValues['dCantidad'] := dCantidadMulta ;
            MemoryPenas.FieldValues['dMonto'] := ( dCantidadMulta * QryPartidasPenalizar.FieldByName('dVentaMN').AsFloat ) * QryContratosGerencial.FieldByName('dPenaConvencional').AsFloat ;
            MemoryPenas.Post ;
            dMonto := dMonto + ( ( dCantidadMulta * QryPartidasPenalizar.FieldByName('dVentaMN').AsFloat ) * QryContratosGerencial.FieldByName('dPenaConvencional').AsFloat ) ;
            QryPartidasPenalizar.Next
        End ;
        dMontoAcumulado := dMontoAcumulado + dMonto ;
        dMontoMensual := dMontoMensual + dMonto ;

        // Totales Generales
        MemoryPenasTotales.Append ;
        MemoryPenasTotales.FieldValues['sContrato'] := TreeObras.Selected.Text ;
        MemoryPenasTotales.FieldValues['dFecha'] := dFecha ;
        MemoryPenasTotales.FieldValues['dMonto'] := dMonto ;
        MemoryPenasTotales.FieldValues['dMontoAcumulado'] := dMontoAcumulado ;
        MemoryPenasTotales.FieldValues['dAcumuladoMensual'] := dMontoMensual ;
        MemoryPenasTotales.FieldValues['dPorcentaje'] := ( dMontoAcumulado / QryContratosGerencial.FieldValues['dMontoMN'] ) * 100;
        MemoryPenasTotales.Post ;

        dFecha := dFecha + 1 ;
    End ;
   CtaReg := CtaReg + 1 ;
end ;   
end;


procedure TfrmRetencionesyPenas.frxAjusteGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'FECHA_AJUSTE') = 0 then
      Value := datetostr(Date) ;
end;

procedure TfrmRetencionesyPenas.aConvenioAfterScroll(DataSet: TDataSet);
begin
//

end;

procedure TfrmRetencionesyPenas.btnNextClick(Sender: TObject);
begin
    btnPrevious.Enabled := True ;
    If NOT QryImgConvenios.eof Then
        QryImgConvenios.Next ;
    If QryImgConvenios.Eof Then
        btnNext.Enabled := False ;
end;

procedure TfrmRetencionesyPenas.btnPreviousClick(Sender: TObject);
begin
    btnNext.Enabled := True ;
    If NOT QryImgConvenios.Bof Then
        QryImgConvenios.Prior ;
    If QryImgConvenios.Bof Then
        btnPrevious.Enabled := False ;
end;

procedure TfrmRetencionesyPenas.QryImgConveniosAfterScroll(
  DataSet: TDataSet);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    tiRegistro.Value := QryImgConvenios.RecNo ;
    bImgConvenio.Picture.LoadFromFile('') ;
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

procedure TfrmRetencionesyPenas.TreeObrasClick(Sender: TObject);
begin
    refresh ;
end;

procedure TfrmRetencionesyPenas.TreeObrasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    refresh
end;

procedure TfrmRetencionesyPenas.TreeObrasKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    refresh
end;

procedure TfrmRetencionesyPenas.PanelAjusteExit(Sender: TObject);
begin
    PanelAjuste.Visible := False ;
end;


procedure TfrmRetencionesyPenas.btnSalirAjusteClick(Sender: TObject);
begin
    PanelAjuste.Visible := False ;
end;



procedure TfrmRetencionesyPenas.btnImprimirAjusteClick(Sender: TObject);
Var
    sFechaFinal : String ;
    sFechaTermino : String ;
    sActividad  : String ;
    dGenerado,
    dAcumuladoAjustado : Double ;
    dDT, dFactor : Double ;
    lPartidaElimina : boolean ;
    dAcumuladoGenerado,
    dAcumuladoDT : Double ;
    dMontoPlataforma  : array [1..30] of currency ;
    sNombrePlataforma : array [1..30] of string ;
    iItemPlataforma  : Byte ;
    dMontoAjustado   : Currency ;
    lExisteOrden     : Boolean ;
begin
  try
    for iItemPlataforma := 1 to 30 do
    begin
        dMontoPlataforma [iItemPlataforma] := 0 ;
        sNombrePlataforma [iItemPlataforma] := '' ;
    end ;

    PanelAjuste.Visible := True ;
    If rxAjusteCosto.RecordCount > 0 Then
        rxAjusteCosto.EmptyTable ;

    sFechaTermino := sfnFechaFinal (tsMesAjuste.ItemIndex + 1, UpAnnoAjuste.Position)  ;

    // Primero insertamos las partidas anexo de todo el periodo de ejecucion del programa DT ....
    Connection.qryBusca2.Active := False ;
    Connection.qryBusca2.SQL.Clear ;
    Connection.qryBusca2.SQL.Add('Select sContrato, iItemOrden, sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dVentaMN, dFechaInicio From actividadesxanexo ' +
                                 'Where sContrato = :contrato And stipoActividad="Actividad" And sIdConvenio = :convenio Order By iItemOrden' ) ;
    Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
    Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca2.Params.ParamByName('Convenio').Value := aConvenio.FieldValues['sIdConvenio'] ;
    Connection.qryBusca2.Open ;
    While NOT Connection.qryBusca2.Eof Do
    Begin
        sFechaFinal := DateToStr(aConvenio.FieldValues['dFechaInicio'] ) ;
        // Ahora recorro todo el mes .....
        While (StrToDate(sFechaFinal) <= StrToDate(sFechaTermino)) Do
        Begin
            dGenerado := 0 ;
            dDt := 0 ;
            dFactor := 0 ;

            sFechaFinal := sfnFechaFinal (MonthOf(StrToDate(sFechaFinal)), YearOf(StrToDate(sFechaFinal)))  ;

            // Se inserta en la tabla el valor de cada partida en cada uno de los meses existentes con su respectivo factor de ajuste
            AnexoDt.Active := False ;
            AnexoDT.SQL.clear ;
            AnexoDT.SQL.Add('Select DT as dMensual from anexosmensuales d ' +
                            'Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad And dIdFecha = :Fecha' )  ;
            AnexoDT.Params.ParamByName('Contrato').DataType := ftString ;
            AnexoDT.Params.ParamByName('Contrato').Value := QryContratosGerencial.FieldValues['sContrato'] ;
            AnexoDT.Params.ParamByName('Convenio').DataType := ftString ;
            AnexoDT.Params.ParamByName('Convenio').Value := aConvenio.FieldValues['sIdConvenio'] ;
            AnexoDT.Params.ParamByName('Actividad').DataType := ftString ;
            AnexoDT.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
            AnexoDT.Params.ParamByName('Fecha').DataType := ftDate ;
            AnexoDT.Params.ParamByName('Fecha').Value := StrToDate(sFechaFinal) ;
            AnexoDT.Open ;
            If AnexoDT.RecordCount > 0 Then
                dDt := AnexoDT.FieldValues['dMensual'] ;

            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select dFactor From factordecosto Where sContrato = :Contrato And iAnno = :Anno And iMes = :Mes') ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca.Params.ParamByName('Mes').DataType := ftInteger ;
            Connection.qryBusca.Params.ParamByName('Mes').Value := MonthOf(StrToDate(sFechaFinal)) ;
            Connection.qryBusca.Params.ParamByName('Anno').DataType := ftInteger ;
            Connection.qryBusca.Params.ParamByName('Anno').Value := YearOf(StrToDate(sFechaFinal)) ;
            Connection.qryBusca.Open ;
            If Connection.qryBusca.RecordCount > 0 Then
                dFactor := Connection.qryBusca.FieldValues['dFactor'] ;

            rxAjusteCosto.Append ;
            // Busco el valor generado en la partida
            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select e.iNumeroEstimacion, Sum(e2.dCantidad) as dGenerado From estimaciones e ' +
                                        'INNER JOIN estimacionxpartida e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                        'e.sNumeroGenerador = e2.sNumeroGenerador And e2.sNumeroActividad = :Actividad And e2.lEstima = "Si") ' +
                                        'Where e.sContrato = :contrato and e.lStatus = "Autorizado" And Month(e.dFechaFinal) = :Mes And Year(e.dFechaFinal) = :Anno ' +
                                       'Group By e2.sContrato ') ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca.Params.ParamByName('Mes').DataType := ftInteger ;
            Connection.qryBusca.Params.ParamByName('Mes').Value := MonthOf(StrToDate(sFechaFinal)) ;
            Connection.qryBusca.Params.ParamByName('Anno').DataType := ftInteger ;
            Connection.qryBusca.Params.ParamByName('Anno').Value := YearOf(StrToDate(sFechaFinal)) ;
            Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
            Connection.qryBusca.Open ;
            If Connection.qryBusca.RecordCount > 0 Then
            begin
                dGenerado := Connection.qryBusca.FieldValues['dGenerado'] ;
                rxAjusteCosto.FieldValues['iNumeroEstimacion'] := Connection.qryBusca.FieldValues['iNumeroEstimacion'] ;
            end ;

            rxAjusteCosto.FieldValues['sContrato'] := Connection.qryBusca2.FieldValues['sContrato'] ;
            rxAjusteCosto.FieldValues['iItemOrden'] := Connection.qryBusca2.FieldValues['iItemOrden'] ;
            rxAjusteCosto.FieldValues['sNumeroActividad'] := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
            rxAjusteCosto.FieldValues['mDescripcion'] := MidStr(Connection.qryBusca2.FieldValues['mDescripcion'] ,1 ,100) + ' ... ' ;
            rxAjusteCosto.FieldValues['sMedida'] := Connection.qryBusca2.FieldValues['sMedida' ] ;
            rxAjusteCosto.FieldValues['dCantidadAnexo'] := Connection.qryBusca2.FieldValues['dCantidadAnexo']  ;
            rxAjusteCosto.FieldValues['dVentaMN'] := Connection.qryBusca2.FieldValues['dVentaMN']  ;
            rxAjusteCosto.FieldValues['dIdFecha'] := StrToDate(sFechaFinal) ;

            rxAjusteCosto.FieldValues['DT'] := dDt ;
            rxAjusteCosto.FieldValues['Factor'] := dFactor ;
            rxAjusteCosto.FieldValues['Generado'] := dGenerado ;
            rxAjusteCosto.Post ;
            sFechaFinal := DateToStr(strToDate(sFechaFinal) + 1) ;
        End ;
        Connection.qryBusca2.Next
    End ;


    // Se busca e inserta el valor generado en cada uno de los meses .....
    sFechaTermino := DateToStr(aConvenio.FieldValues['dFechaFinal'])  ;
    rxAjusteCosto.First ;
    sActividad := '' ;
    dMontoAjustado := 0 ;
    dAcumuladoAjustado := 0 ;
    While NOT rxAjusteCosto.Eof DO
    Begin
        If sActividad <> rxAjusteCosto.FieldValues['sNumeroActividad'] Then
        Begin
            If (dMontoAjustado <> 0) OR (dAcumuladoAjustado <> 0) Then
            begin

                //Calcula parte proporcional de lo ajustado entre todas las plataformas afectadas ...
                // Busco el valor generado en la partida
                Connection.qryBusca.Active := False ;
                Connection.qryBusca.SQL.Clear ;
                Connection.qryBusca.SQL.Add('Select e.sNumeroOrden, Sum(e2.dCantidad) as dGenerado From estimaciones e ' +
                                            'INNER JOIN estimacionxpartida e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                            'e.sNumeroGenerador = e2.sNumeroGenerador And e2.sNumeroActividad = :Actividad And e2.lEstima = "Si") ' +
                                            'Where e.sContrato = :contrato and e.lStatus = "Autorizado" And e.dFechaFinal <= :dFechaFinal ' +
                                            'Group By e.sNumeroOrden') ;
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
                Connection.qryBusca.Params.ParamByName('dFechaFinal').DataType := ftDate ;
                Connection.qryBusca.Params.ParamByName('dFechaFinal').Value := StrToDate(sFechaTermino) ;
                Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Actividad').Value := sActividad ;
                Connection.qryBusca.Open ;
                While NOT connection.QryBusca.Eof Do
                begin
                    iItemPlataforma := 1 ;
                    lExisteOrden := False ;
                    While (iItemPlataforma <= 100) And (Not lExisteOrden) Do
                    Begin
                          If sNombrePlataforma [iItemPlataforma] = Connection.QryBusca.FieldValues['sNumeroOrden'] Then
                          begin
                               If (dMontoAjustado > 0) And (dAcumuladoAjustado > 0) Then
                                  dMontoPlataforma [iItemPlataforma] := dMontoPlataforma [iItemPlataforma] + ((Connection.QryBusca.FieldValues['dGenerado'] / dAcumuladoAjustado ) * dMontoAjustado) ;
                                  lExisteOrden := True
                          end
                          else
                              If sNombrePlataforma [iItemPlataforma] = '' Then
                              begin
                                    sNombrePlataforma [iItemPlataforma] := Connection.QryBusca.FieldValues['sNumeroOrden'] ;
                               If (dMontoAjustado > 0) And (dAcumuladoAjustado > 0) Then
                                    dMontoPlataforma [iItemPlataforma] := dMontoPlataforma [iItemPlataforma] + ((Connection.QryBusca.FieldValues['dGenerado'] / dAcumuladoAjustado ) * dMontoAjustado) ;
                                    lExisteOrden := True
                              end ;
                          iItemPlataforma := iItemPlataforma + 1 ;
                    End ;
                    connection.QryBusca.Next
                End ;
            end ;

            dAcumuladoAjustado := 0 ;
            dMontoAjustado := 0 ;
            dAcumuladoGenerado := 0 ;
            dAcumuladoDT := 0 ;
            sActividad := rxAjusteCosto.FieldValues['sNumeroActividad'] ;
            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select Sum(e2.dCantidad) as dGenerado From estimaciones e ' +
                                              'INNER JOIN estimacionxpartida e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                              'e.sNumeroGenerador = e2.sNumeroGenerador And e2.sNumeroActividad = :Partida And e2.lEstima = "Si" ) ' +
                                              'Where e.sContrato = :contrato and e.lStatus = "Autorizado" And e.dFechaFinal <= :dFechaFinal ' +
                                              'Group By e2.sContrato, e2.sNumeroActividad') ;
           Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
           Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
           Connection.qryBusca.Params.ParamByName('Partida').DataType := ftString ;
           Connection.qryBusca.Params.ParamByName('Partida').Value := sActividad ;
           Connection.qryBusca.Params.ParamByName('dFechaFinal').DataType := ftDate ;
           Connection.qryBusca.Params.ParamByName('dFechaFinal').Value := StrToDate(sFechaTermino) ;
           Connection.qryBusca.Open ;
           lPartidaElimina := False ;
           If Connection.qryBusca.RecordCount > 0 Then
                dGenerado := Connection.qryBusca.FieldValues['dGenerado']
           Else
           begin
                dGenerado := 0 ;
                lPartidaElimina := True ;
           end ;
        End ;

        //este calculo es para un factor positivo
        If lPartidaElimina Then
          rxAjusteCosto.Delete
        Else
        begin
            If dGenerado > 0 Then
            Begin
                dAcumuladoGenerado := dAcumuladoGenerado + rxAjusteCosto.FieldValues['Generado'] ;
                dAcumuladoDT := dAcumuladoDT + rxAjusteCosto.FieldValues['DT'] ;
                rxAjusteCosto.Edit ;
                rxAjusteCosto.FieldValues['MontoAjuste'] := 0 ;
                rxAjusteCosto.FieldValues['Ajuste'] := 0 ;
                If dAcumuladoGenerado > dAcumuladoDT Then
                Begin
                   If (dAcumuladoGenerado - dAcumuladoDT) > 0 Then
                   Begin
                       rxAjusteCosto.FieldValues['Ajuste'] := rxAjusteCosto.FieldValues['DT'] ;
                       rxAjusteCosto.FieldValues['MontoAjuste'] := ((rxAjusteCosto.FieldValues['Ajuste'] * rxAjusteCosto.FieldValues['dVentaMN']) * rxAjusteCosto.FieldValues['factor']) / 100 ;
                       dGenerado := dGenerado - rxAjusteCosto.FieldValues['DT']
                   End
                   Else
                   Begin
                       rxAjusteCosto.FieldValues['Ajuste'] := rxAjusteCosto.FieldValues['Generado'] ;
                       rxAjusteCosto.FieldValues['MontoAjuste'] := ((rxAjusteCosto.FieldValues['Ajuste'] * rxAjusteCosto.FieldValues['dVentaMN']) * rxAjusteCosto.FieldValues['factor']) / 100 ;
                       dGenerado := dGenerado - rxAjusteCosto.FieldValues['Generado']
                   End
                End
                Else
                    If (dGenerado > rxAjusteCosto.FieldValues['DT']) And (rxAjusteCosto.FieldValues['DT'] > 0) Then
                    Begin
                       rxAjusteCosto.FieldValues['Ajuste'] := rxAjusteCosto.FieldValues['DT'] ;
                       rxAjusteCosto.FieldValues['MontoAjuste'] := ((rxAjusteCosto.FieldValues['Ajuste'] * rxAjusteCosto.FieldValues['dVentaMN']) * rxAjusteCosto.FieldValues['factor']) / 100 ;
                       dGenerado := dGenerado - rxAjusteCosto.FieldValues['DT']
                    End
                    Else
                    If (rxAjusteCosto.FieldValues['DT'] > 0) Then
                    Begin
                       rxAjusteCosto.FieldValues['Ajuste'] := dGenerado ;
                       rxAjusteCosto.FieldValues['MontoAjuste'] := ((rxAjusteCosto.FieldValues['Ajuste'] * rxAjusteCosto.FieldValues['dVentaMN']) * rxAjusteCosto.FieldValues['factor'] ) / 100;
                       dGenerado := 0
                    End ;
                dAcumuladoAjustado := dAcumuladoAjustado + rxAjusteCosto.FieldValues['Generado'] ;

                dMontoAjustado := dMontoAjustado + rxAjusteCosto.FieldValues['MontoAjuste'] ;
                rxAjusteCosto.Post ;

            End ;
            rxAjusteCosto.Next ;
        End ;
    End ;

    // La ultima partida
    If (dMontoAjustado <> 0) OR (dAcumuladoAjustado <> 0) Then
    begin
        //Calcula parte proporcional de lo ajustado entre todas las plataformas afectadas ...
        // Busco el valor generado en la partida
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select e.sNumeroOrden, Sum(e2.dCantidad) as dGenerado From estimaciones e ' +
                                    'INNER JOIN estimacionxpartida e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                    'e.sNumeroGenerador = e2.sNumeroGenerador And e2.sNumeroActividad = :Actividad And e2.lEstima = "Si") ' +
                                    'Where e.sContrato = :contrato and e.lStatus = "Autorizado" And e.dFechaFinal <= :dFechaFinal ' +
                                    'Group By e.sNumeroOrden') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
        Connection.qryBusca.Params.ParamByName('dFechaFinal').DataType := ftDate ;
        Connection.qryBusca.Params.ParamByName('dFechaFinal').Value := StrToDate(sFechaTermino) ;
        Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Actividad').Value := sActividad ;
        Connection.qryBusca.Open ;
        While NOT connection.QryBusca.Eof Do
        begin
             iItemPlataforma := 1 ;
             lExisteOrden := False ;
             While (iItemPlataforma <= 100) And (Not lExisteOrden) Do
             Begin
                  If sNombrePlataforma [iItemPlataforma] = Connection.QryBusca.FieldValues['sNumeroOrden'] Then
                  begin
                       dMontoPlataforma [iItemPlataforma] := dMontoPlataforma [iItemPlataforma] + ((Connection.QryBusca.FieldValues['dGenerado'] / dAcumuladoAjustado ) * dMontoAjustado) ;
                       lExisteOrden := True
                  end
                  else
                       If sNombrePlataforma [iItemPlataforma] = '' Then
                       begin
                            sNombrePlataforma [iItemPlataforma] := Connection.QryBusca.FieldValues['sNumeroOrden'] ;
                            dMontoPlataforma [iItemPlataforma] := (dMontoPlataforma [iItemPlataforma] +  (Connection.QryBusca.FieldValues['dGenerado'] / dAcumuladoAjustado ) * dMontoAjustado) ;
                            lExisteOrden := True
                       end ;
                  iItemPlataforma := iItemPlataforma + 1 ;
             End ;
             connection.QryBusca.Next
        End ;
    end ;

    If rxTotalesAjuste.RecordCount > 0 Then
        rxTotalesAjuste.EmptyTable ;

    iItemPlataforma := 1 ;
    While sNombrePlataforma [iItemPlataforma] <> ''  Do
    Begin
        rxTotalesAjuste.Append ;
        rxTotalesAjuste.FieldValues['sContrato'] := TreeObras.Selected.Text ;
        rxTotalesAjuste.FieldValues['sNumeroOrden'] := sNombrePlataforma [iItemPlataforma] ;
        rxTotalesAjuste.FieldValues['dMonto'] := dMontoPlataforma [iItemPlataforma] ;
        rxTotalesAjuste.Post ;
        iItemPlataforma := iItemPlataforma + 1 ;
    End ;

    rDiarioFirmas (TreeObras.Selected.Text, '', 'A',StrToDate(sFechaTermino), frmRetencionesyPenas ) ;
    frxAnexo.LoadFromFile (global_files + 'AjustedeCosto.fr3') ;
    frxAnexo.PreviewOptions.MDIChild := False ;
    frxAnexo.PreviewOptions.Modal := True ;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
    frxAnexo.PreviewOptions.ShowCaptions := False ;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
    //<ROJAS>
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
    //
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al Imprimir Ajuste', 0);
    end;
  end;
end;

procedure TfrmRetencionesyPenas.PanelAjusteEnter(Sender: TObject);
begin
    PanelAjuste.Caption := aConvenio.FieldValues['sDescripcion'] ;
    UpAnnoAjuste.Position := YearOf ( Date ) ;
    tsMesAjuste.ItemIndex := MonthOf( Date ) - 1;
    tiAnnoAjuste.SetFocus

end;

procedure TfrmRetencionesyPenas.frxAjusteCostoGetValue(
  const VarName: String; var Value: Variant);
begin
  If CompareText(VarName, 'ANEXO_DT') = 0 then
      Value := aConvenio.FieldValues['sDescripcion'] ;

  If CompareText(VarName, 'REPRESENTANTE_TECNICO') = 0 then
      Value := sRepresentanteTecnico ;

  If CompareText(VarName, 'PUESTO_REPRESENTANTE_TECNICO') = 0 then
      Value := sPuestoRepresentanteTecnico ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;

  If CompareText(VarName, 'RESIDENTE') = 0 then
      Value := sResidente ;

  If CompareText(VarName, 'PUESTO_RESIDENTE') = 0 then
      Value := sPuestoResidente ;
end;

procedure TfrmRetencionesyPenas.tiAnnoAjusteEnter(Sender: TObject);
begin
    tiAnnoAjuste.Color := global_color_entrada
end;

procedure TfrmRetencionesyPenas.tiAnnoAjusteExit(Sender: TObject);
begin
    tiAnnoAjuste.Color := global_color_salida
end;

procedure TfrmRetencionesyPenas.tiAnnoAjusteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsMesAjuste.SetFocus 
end;

procedure TfrmRetencionesyPenas.tsMesAjusteEnter(Sender: TObject);
begin
    tsMesAjuste.Color := global_color_entrada
end;

procedure TfrmRetencionesyPenas.tsMesAjusteExit(Sender: TObject);
begin
    tsMesAjuste.Color := global_color_salida
end;

procedure TfrmRetencionesyPenas.tsMesAjusteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnImprimirAjuste.SetFocus
end;

procedure TfrmRetencionesyPenas.frxAnexoDEdllGetValue(
  const VarName: String; var Value: Variant);
begin
  If CompareText(VarName, 'CONVENIO') = 0 then
      Value := aConvenio.FieldValues['sDescripcion']
end;

procedure TfrmRetencionesyPenas.frxAnexoDEGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'CONVENIO') = 0 then
      Value := aConvenio.FieldValues['sDescripcion']
end;

procedure TfrmRetencionesyPenas.frxAnexoDTGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'CONVENIO') = 0 then
      Value := aConvenio.FieldValues['sDescripcion']
end;

procedure TfrmRetencionesyPenas.mnProgramaDTClick(Sender: TObject);
begin
  try
    AnexoDT.Active := False ;
    AnexoDT.SQL.clear ;
    AnexoDT.SQL.Add('Select a.sContrato, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidadAnexo, a.dVentaMN, a.dVentaDLL, ' +
                    'year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, d.DT as dMensual ' +
                    'from actividadesxanexo a inner join anexosmensuales d on (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio ' +
                    'And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad) Where a.sContrato = :contrato ' +
                    'And a.sIdConvenio = :Convenio Order By a.iItemOrden, Year(d.dIdFecha), month(d.dIdFecha)') ;
    AnexoDT.Params.ParamByName('Contrato').DataType := ftString ;
    AnexoDT.Params.ParamByName('Contrato').Value := QryContratosGerencial.FieldValues['sContrato'] ;
    AnexoDT.Params.ParamByName('Convenio').DataType := ftString ;
    AnexoDT.Params.ParamByName('Convenio').Value := aConvenio.FieldValues['sIdConvenio'] ;
    AnexoDT.Open ;

    frxAnexo.LoadFromFile (global_files + 'Anexo DT.fr3') ;
    frxAnexo.PreviewOptions.MDIChild := False ;
    frxAnexo.PreviewOptions.Modal := True ;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
    frxAnexo.PreviewOptions.ShowCaptions := False ;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
    //<ROJAS>
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al harce click en Programa de Ejecucion', 0);
    end;
  end;

end;

procedure TfrmRetencionesyPenas.mnProgramaDEClick(Sender: TObject);
begin
  try
    AnexoDt.Active := False ;
    AnexoDT.SQL.clear ;
    AnexoDT.SQL.Add('Select a.sContrato, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidadAnexo, a.dVentaMN, a.dVentaDLL, ' +
                    'year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, d.DEmn as dMensualMN, d.DEdll as dMensualDLL from actividadesxanexo a ' +
                    'inner join anexosmensuales d on (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad) ' +
                    'Where a.sContrato = :contrato And a.sIdConvenio = :Convenio Order By a.iItemOrden, Year(d.dIdFecha), month(d.dIdFecha)') ;
    AnexoDT.Params.ParamByName('Contrato').DataType := ftString ;
    AnexoDT.Params.ParamByName('Contrato').Value := QryContratosGerencial.FieldValues['sContrato'] ;
    AnexoDT.Params.ParamByName('Convenio').DataType := ftString ;
    AnexoDT.Params.ParamByName('Convenio').Value := aConvenio.FieldValues['sIdConvenio'] ;
    AnexoDT.Open ;
    If MessageDlg('Desea Imprimir el Anexo DE en Moneda Nacional?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        frxAnexo.LoadFromFile (global_files + 'Anexo DE.fr3')
    Else
        frxAnexo.LoadFromFile (global_files + 'Anexo DE dll.fr3') ;
    frxAnexo.PreviewOptions.MDIChild := False ;
    frxAnexo.PreviewOptions.Modal := True ;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
    frxAnexo.PreviewOptions.ShowCaptions := False ;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
    //<ROJAS>
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al harce click en Programa de Erogaciones', 0);
    end;
  end;
end;

procedure TfrmRetencionesyPenas.mnConsolDEClick(Sender: TObject);
begin
  try
    QryAnexosConsolidados.Active := False ;
    QryAnexosConsolidados.SQL.Clear ;
    QryAnexosConsolidados.SQL.Add('Select c2.sContrato, c2.mDescripcion, c.dFechaInicio, c.dFechaFinal, c.dFecha, c.sIdConvenio, ' +
                                  'c.sDescripcion as sConvenio, a.dIdFecha, sum(a.DEMN) as dMontoMN, sum(a.DEDLL) as dMontoDLL From anexosmensuales a ' +
                                  'INNER JOIN convenios c ON (a.sContrato = c.sContrato And a.sIdConvenio = c.sIdConvenio) ' +
                                  'INNER JOIN contratos c2 ON (a.sContrato = c2.sContrato And c2.lStatus = "Activo") ' +
                                  'Group By a.sContrato, a.sIdConvenio, a.dIdFecha Order By a.dIdFecha, a.sContrato, c.dFechaFinal, a.sIdConvenio') ;
    dsAnexosConsolidados.FieldAliases.Clear ;
    dsAnexosConsolidados.DataSet := QryAnexosConsolidados ;
    QryAnexosConsolidados.Open ;

    frxAnexo.LoadFromFile (global_files + 'Anexo DE Consolidado.fr3') ;
    frxAnexo.PreviewOptions.MDIChild := False ;
    frxAnexo.PreviewOptions.Modal := True ;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
    frxAnexo.PreviewOptions.ShowCaptions := False ;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
    //<ROJAS>
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al harce click en Consolidado de Programas de Erogacion en los Distintos Convenios', 0);
    end;
  end;
end;

procedure TfrmRetencionesyPenas.mnConsolDTClick(Sender: TObject);
begin
  try
    QryAnexosConsolidados.Active := False ;
    QryAnexosConsolidados.SQL.Clear ;
    QryAnexosConsolidados.SQL.Add('Select a2.sContrato, a2.sNumeroActividad, substr(a2.mDescripcion, 1 , 100) as mDescripcion, a2.dCantidadAnexo, a2.sMedida, ' +
                                  'a2.dFechaInicio, a2.dFechaFinal, c.sIdConvenio, c.sDescripcion as sConvenio, a.dIdFecha, a.DT From anexosmensuales a ' +
                                  'inner join actividadesxanexo a2 on (a.sContrato = a2.sContrato and a.sIdConvenio = a2.sIdConvenio And a.sWbs = a2.sWbs And a.sNumeroActividad = a2.sNumeroActividad) ' +
                                  'INNER JOIN convenios c ON (a.sContrato = c.sContrato And a.sIdConvenio = c.sIdConvenio) ' +
                                  'where a.sContrato = :contrato ' +
                                  'Group By a.sContrato, a.sWbs, a.sNumeroActividad, a.sIdConvenio, a.dIdFecha Order By a.sContrato, a2.iItemOrden, c.dFechaFinal, a.dIdFecha') ;
    QryAnexosConsolidados.Params.ParamByName('contrato').DataType := ftString ;
    QryAnexosConsolidados.Params.ParamByName('contrato').Value := TreeObras.Selected.Text ;
    dsAnexosConsolidados.FieldAliases.Clear ;
    dsAnexosConsolidados.DataSet := QryAnexosConsolidados ;
    QryAnexosConsolidados.Open ;

    frxAnexo.LoadFromFile (global_files + 'Anexo DT Consolidado.fr3') ;
    frxAnexo.PreviewOptions.MDIChild := False ;
    frxAnexo.PreviewOptions.Modal := True ;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
    frxAnexo.PreviewOptions.ShowCaptions := False ;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
    //<ROJAS>
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al hacer click en Consolidado de Programas en los Distintos Convenios', 0);
    end;
  end;
end;

procedure TfrmRetencionesyPenas.mnRetencionClick(Sender: TObject);
begin
  sOpcion := 'Retencion' ;
  Panel.Visible := True ;
  Panel.SetFocus
end;

procedure TfrmRetencionesyPenas.mnHistorialClick(Sender: TObject);
begin
  try
    QryPartidasConvenio.Active := False ;
    QryPartidasConvenio.ParamS.ParamByName('Contrato').DataType := ftString ;
    QryPartidasConvenio.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
    QryPartidasConvenio.Open ;
    frxAnexo.LoadFromFile (global_files + 'PeriodosConceptos.fr3') ;
    frxAnexo.PreviewOptions.MDIChild := False ;
    frxAnexo.PreviewOptions.Modal := True ;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
    frxAnexo.PreviewOptions.ShowCaptions := False ;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
    //<ROJAS>
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al hacer click en Historial de Periodos de Ejecucion de Partidas', 0);
    end;
  end;
end;

procedure TfrmRetencionesyPenas.mnPenalizacionClick(Sender: TObject);
begin
  sOpcion := 'Penas' ;
  Panel.Visible := True ;
  Panel.SetFocus
end;

procedure TfrmRetencionesyPenas.mnAjustedeCostoClick(Sender: TObject);
begin

    PanelAjuste.Caption := aConvenio.FieldValues['sDescripcion'] ;
    PanelAjuste.Visible := True ;
    tiAnnoAjuste.SetFocus;


end;

procedure TfrmRetencionesyPenas.frxAnexoGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'CONVENIO') = 0 then
      If aConvenio.FieldValues['sIdTipoConvenio'] = '' Then
          Value := 'PROGRAMA DE EROGACIONES ORIGINAL CONTRATADO '
      Else
          Value := 'PROGRAMA DE EROGACIONES DE LA PRORROGA ' + aConvenio.FieldValues['sDescripcion']  ;

  If CompareText(VarName, 'FECHA') = 0 then
      Value := DateToStr(aConvenio.FieldValues['dFechaFinal']) ;

  If CompareText(VarName, 'ANEXO_DT') = 0 then
      Value := aConvenio.FieldValues['sDescripcion'] ;

  If CompareText(VarName, 'REPRESENTANTE_TECNICO') = 0 then
      Value := sRepresentanteTecnico ;

  If CompareText(VarName, 'PUESTO_REPRESENTANTE_TECNICO') = 0 then
      Value := sPuestoRepresentanteTecnico ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;

  If CompareText(VarName, 'RESIDENTE') = 0 then
      Value := sResidente ;

  If CompareText(VarName, 'PUESTO_RESIDENTE') = 0 then
      Value := sPuestoResidente ;

  If CompareText(VarName, 'ACTA') = 0 then
      If aConvenio.RecordCount > 0 Then
          Value := aConvenio.FieldValues['sDescripcion']
      Else
          Value := ''

end;

procedure TfrmRetencionesyPenas.QryPartidasPenalizarCalcFields(
  DataSet: TDataSet);
var
    x:Currency ;
  begin

    QryPartidasPenalizardMontoMN.Value :=  QryPartidasPenalizardCantidad.Value * QryPartidasPenalizardVentaMN.Value
end;

procedure TfrmRetencionesyPenas.mnDetalleClick(Sender: TObject);
begin
  sOpcion := 'Proforma' ;
  Panel.Visible := True ;
  Panel.SetFocus
end;

procedure TfrmRetencionesyPenas.CalculoRetenciones (sParamContrato, sParamConvenio : String) ;
Var
    sFechaFinal : String ;
    dFecha : tDate ;
    QryConvenios : tzReadOnlyQuery ;

    dMensualProgramado : Double ;
    dMensualProgramadoDLL : Double ;
    dAcumuladoProgramado : Double ;
    dAcumuladoProgramadoDLL : Double ;

    dMensualReal : Double ;
    dMensualRealDLL : Double ;
    dAcumuladoReal : Double ;
    dAcumuladoRealDLL : Double ;

    dEstimadoMensualReal : Double ;
    dEstimadoMensualRealDLL : Double ;
    dEstimadoAcumuladoReal : Double ;
    dEstimadoAcumuladoRealDLL : Double ;

    dSancionMensual : Double ;
    dSancionMensualDLL : Double ;
    dSancionAcumulada : Double ;
    dSancionAcumuladaDLL : Double ;

    dMensualSancionAplicada : Double ;
    dMensualSancionAplicadaDLL : Double ;
    dAcumuladoSancionAplicada : Double ;
    dAcumuladoSancionAplicadaDLL : Double ;

    dAcumuladoDiferenciaAplicada,
    dAcumuladoDiferenciaAplicadaDLL : Double ;

    dMontoContrato : Double ;
    dMontoContratoDLL : Double ;
begin
  try
    QryConvenios:= tzReadOnlyquery.Create(Self) ;
    QryConvenios.Connection := connection.zConnection ;
    QryConvenios.Active := False;
    QryConvenios.SQL.Clear ;
    QryConvenios.SQL.Add('select sIdConvenio, dMontoMN, dMontoDLL, dFechaInicio, dFechaFinal from convenios Where sContrato = :Contrato and sIdConvenio = :convenio') ;
    QryConvenios.Params.ParamByName('contrato').DataType := ftString ;
    QryConvenios.Params.ParamByName('contrato').Value := sParamContrato ;
    QryConvenios.Params.ParamByName('convenio').DataType := ftString ;
    QryConvenios.Params.ParamByName('convenio').Value := sParamConvenio ;
    QryConvenios.Open ;

    If MemoryTotales.RecordCount > 0 Then
        MemoryTotales.EmptyTable ;

    If rxAvancesContrato.RecordCount > 0 then
        rxAvancesContrato.EmptyTable  ;

    sFechaFinal := sfnFechaFinal (tsMes.ItemIndex + 1 , UpAnno.Position ) ;

    dAcumuladoProgramado := 0 ;
    dAcumuladoProgramadoDLL := 0 ;
    dAcumuladoReal := 0 ;
    dAcumuladoRealDLL := 0 ;
    dSancionAcumulada := 0 ;
    dSancionAcumuladaDLL := 0 ;
    dAcumuladoSancionAplicada := 0 ;
    dAcumuladoSancionAplicadaDLL := 0 ;
    dAcumuladoDiferenciaAplicada := 0 ;
    dAcumuladoDiferenciaAplicadaDLL := 0 ;

    dMontoContrato := QryConvenios.FieldValues['dMontoMN'] ;
    dMontoContratoDLL := QryConvenios.FieldValues['dMontoDLL'] ;

    dFecha := QryConvenios.FieldValues['dFechaInicio'] ;
    If dMontoContrato > 0 Then
      While dFecha <= StrToDate (sFechaFinal) Do
      Begin
        dFecha := StrToDate(sfnFechaFinal (MonthOf(dFecha),YearOf(dFecha))) ;

        dMensualProgramadoDLL := 0 ;
        dMensualProgramado := 0 ;

        // Primero valores programados
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select dIdFecha, Sum(DEmn) as Programado, Sum(DEdll) as ProgramadoDLL From anexosmensuales ' +
                                    'Where sContrato = :Contrato And sIdConvenio = :Convenio and Month(dIdFecha) = :Mes And Year(dIdFecha) = :Anno ' +
                                    'Group By sContrato') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := sParamContrato ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := sParamConvenio ;
        Connection.qryBusca.Params.ParamByName('Mes').DataType := ftInteger ;
        Connection.qryBusca.Params.ParamByName('Mes').Value := MonthOf(dFecha) ;
        Connection.qryBusca.Params.ParamByName('Anno').DataType := ftInteger ;
        Connection.qryBusca.Params.ParamByName('Anno').Value := YearOf(dFecha) ;
        Connection.qryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
        Begin
            If Connection.QryBusca.FieldValues['Programado'] <> Null Then
                dMensualProgramado := Connection.qryBusca.FieldValues['Programado'] ;
            If Connection.QryBusca.FieldValues['ProgramadoDLL'] <> Null Then
                dMensualProgramadoDLL := Connection.qryBusca.FieldValues['ProgramadoDLL'] ;
        End ;

        // Valor Programado en el DE
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'PROGRAMADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dMensualProgramado ) ;
        MemoryTotales.Post ;

        dAcumuladoProgramado := dAcumuladoProgramado + dMensualProgramado ;

        // Valor Programado en el DE ACUMULADO
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'PROGRAMADO ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dAcumuladoProgramado ) ;
        MemoryTotales.Post ;

        // Valor Programado en el DE ACUMULADO
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '% PROG. ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ( ( dAcumuladoProgramado * 100 ) / dMontoContrato ) ) ;
        MemoryTotales.Post ;

        If dMontoContratoDLL > 0 Then
        Begin
            // Valor Programado en el DE
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 2 ;
            MemoryTotales.FieldValues['sRenglon'] := 'PROGRAMADO (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dMensualProgramadoDLL ) ;
            MemoryTotales.Post ;

            dAcumuladoProgramadoDLL := dAcumuladoProgramadoDLL + dMensualProgramadoDLL  ;

            // Valor Programado en el DE ACUMULADO
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 2 ;
            MemoryTotales.FieldValues['sRenglon'] := 'PROGRAMADO ACUMULADO (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dAcumuladoProgramadoDLL ) ;
            MemoryTotales.Post ;

            // Valor Programado en el DE ACUMULADO
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 2 ;
            MemoryTotales.FieldValues['sRenglon'] := '% PROG. ACUMULADO (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dAcumuladoProgramadoDLL * 100 ) / dMontoContratoDLL)) ;
            MemoryTotales.Post ;
        End ;

        // Valores Estimados
        dMensualReal := 0 ;
        dMensualRealDLL := 0 ;
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        If QryContratosGerencial.FieldValues['sImporteRetencion'] = 'Todos los Generadores' Then
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dRealMN, Sum(dMontoDLL) as dRealDLL From estimacionperiodo ' +
                                           'Where sContrato = :Contrato And Year(dFechaFinal) = :Anno And Month(dFechaFinal) = :Mes ' +
                                           'Group By sContrato' )
        Else
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dRealMN, Sum(dMontoDLL) as dRealDLL From estimacionperiodo  ' +
                                         'Where sContrato = :Contrato And Year(dFechaFinal) = :Anno And Month(dFechaFinal) = :Mes And sIdTipoEstimacion = "N" ' +
                                         'Group By sContrato' ) ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato ;
        Connection.qryBusca2.Params.ParamByName('Anno').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Anno').Value := YearOf (dFecha) ;
        Connection.qryBusca2.Params.ParamByName('Mes').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Mes').Value := MonthOf (dFecha) ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
        Begin
            If Connection.qryBusca2.FieldValues['dRealMN'] <> Null Then
                dMensualReal := Connection.qryBusca2.FieldValues['dRealMN'] ;
            If Connection.qryBusca2.FieldValues['dRealDLL'] <> Null Then
                dMensualRealDLL := Connection.qryBusca2.FieldValues['dRealDLL']
        End ;

        // Valor Estimado Real
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'REAL (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dMensualReal ) ;
        MemoryTotales.Post ;

        dAcumuladoReal := dAcumuladoReal + dMensualReal ;
        // Valor Acumulado Real
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'REAL ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dAcumuladoReal ) ;
        MemoryTotales.Post ;

        // Valor % Estimado
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '% REAL ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', (( dAcumuladoReal * 100 ) / dMontoContrato)) ;
        MemoryTotales.Post ;

        rxAvancesContrato.Append ;
        rxAvancesContrato.FieldValues['sDescripcion'] := sParamContrato ;
        rxAvancesContrato.FieldValues['dFecha'] := dFecha ;
        rxAvancesContrato.FieldValues['dProgramado'] := ( dAcumuladoProgramado * 100 ) / dMontoContrato  ;
        rxAvancesContrato.FieldValues['dReal'] := ( dAcumuladoReal * 100 ) / dMontoContrato ;
        rxAvancesContrato.Post ;

        If dMontoContratoDLL > 0 Then
        Begin
             // Valor Estimado Real
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := 'REAL (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dMensualRealDLL ) ;
             MemoryTotales.Post ;

             dAcumuladoRealDLL := dAcumuladoRealDLL + dMensualRealDLL ;

             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := 'REAL ACUMULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dAcumuladoRealDLL ) ;
             MemoryTotales.Post ;

             // Valor % Estimado Acumulado
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '% REAL ACUMULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dAcumuladoRealDLL * 100 ) / dMontoContratoDLL)) ;
             MemoryTotales.Post ;
        End ;

        // Valor Retención
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'RETENCION MENSUAL CALCULADA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        If QryContratosGerencial.FieldValues['sBaseCalculo'] = 'Mensual' Then
             dSancionMensual := ( dMensualProgramado - dMensualReal ) * QryContratosGerencial.FieldValues ['dRetencion']
        Else
             dSancionMensual := ( dAcumuladoProgramado - dAcumuladoReal ) * QryContratosGerencial.FieldValues ['dRetencion'] ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dSancionMensual ) ;
        MemoryTotales.Post ;

        dSancionAcumulada := dSancionAcumulada + dSancionMensual ;

        // Acumulado de la Retencion
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'RETENCION ACUMULADA CALCULADA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dSancionAcumulada ) ;
        MemoryTotales.Post ;

        // Valor % Acumulado Retencion
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 2 ;
        MemoryTotales.FieldValues['sRenglon'] := '% RETENCION ACUMULADA CALCULADA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', (( dSancionAcumulada * 100 ) / dMontoContrato)) ;
        MemoryTotales.Post ;

        If dMontoContratoDLL > 0 Then
        Begin
             // Valor Retención
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := 'RETENCION MENSUAL CALCULADA (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             If QryContratosGerencial.FieldValues['sBaseCalculo'] = 'Mensual' Then
                  dSancionMensualDLL := ( dMensualProgramadoDLL - dMensualRealDLL ) * QryContratosGerencial.FieldValues ['dRetencion']
             Else
                  dSancionMensualDLL := ( dAcumuladoProgramadoDLL - dAcumuladoRealDLL ) * QryContratosGerencial.FieldValues ['dRetencion'] ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dSancionMensualDLL ) ;
             MemoryTotales.Post ;

             dSancionAcumuladaDLL := dSancionAcumuladaDLL + dSancionMensualDLL ;

             // Acumulado de la Retencion
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := 'RETENCION ACUMULADA CALCULADA (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dSancionAcumuladaDLL ) ;
             MemoryTotales.Post ;

             // Valor % Acumulado Retencion
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '% RETENCION ACUMULADO CALCULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dSancionAcumuladaDLL * 100 ) / dMontoContratoDLL)) ;
             MemoryTotales.Post ;

        End ;

        // Sancion Aplicada
        dMensualSancionAplicada := 0 ;
        dMensualSancionAplicadaDLL := 0 ;
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(dRetencionMN) as RetencionMN, Sum(dRetencionDLL) as RetencionDLL From estimacionperiodo Where ' +
                                     'sContrato = :Contrato And Year(dFechaFinal) = :Anno And Month(dFechaFinal) = :Mes Group By sContrato' ) ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato ;
        Connection.qryBusca2.Params.ParamByName('Anno').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Anno').Value := YearOf (dFecha) ;
        Connection.qryBusca2.Params.ParamByName('Mes').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Mes').Value := MonthOf (dFecha) ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
        Begin
             If Connection.qryBusca2.FieldValues['RetencionMN'] <> Null Then
                 dMensualSancionAplicada := Connection.qryBusca2.FieldValues['RetencionMN'] ;
             If Connection.qryBusca2.FieldValues['RetencionDLL'] <> Null Then
                 dMensualSancionAplicadaDLL := Connection.qryBusca2.FieldValues['RetencionDLL']
        End ;

        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'RETENCION APLICADA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha ) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dMensualSancionAplicada ) ;
        MemoryTotales.Post ;

        dAcumuladoSancionAplicada := dAcumuladoSancionAplicada + dMensualSancionAplicada ;

        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'RETENCION APLICADA ACUMULADA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dAcumuladoSancionAplicada ) ;
        MemoryTotales.Post ;

        // Valor % Acumulado Retencion
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 2 ;
        MemoryTotales.FieldValues['sRenglon'] := '% RETENCION ACUMULADA APLICADA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dAcumuladoSancionAplicada * 100 ) / dMontoContrato )) ;
        MemoryTotales.Post ;

        // Diferencia ...
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'DIFERENCIA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dSancionMensual - dMensualSancionAplicada ) ;
        MemoryTotales.Post ;

        dAcumuladoDiferenciaAplicada := dAcumuladoDiferenciaAplicada + (dSancionMensual - dMensualSancionAplicada) ;

        // Diferencia ...
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := 'DIFERENCIA ACUMULADA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dAcumuladoDiferenciaAplicada ) ;
        MemoryTotales.Post ;

        If dMontoContratoDLL > 0 Then
        Begin
            // Sancion Aplicada  DLL
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 1 ;
            MemoryTotales.FieldValues['sRenglon'] := 'SANCION APLICADA (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf (Connection.qryBusca.FieldValues['dIdFecha'] ) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf (Connection.qryBusca.FieldValues['dIdFecha'] ) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dMensualSancionAplicadaDLL ) ;
            MemoryTotales.Post ;

            dAcumuladoSancionAplicadaDLL := dAcumuladoSancionAplicadaDLL + dMensualSancionAplicadaDLL ;

            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 1 ;
            MemoryTotales.FieldValues['sRenglon'] := 'RETENCION APLICADA ACUMULADA (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dAcumuladoSancionAplicadaDLL ) ;
            MemoryTotales.Post ;

            // Valor % Acumulado Retencion
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 2 ;
            MemoryTotales.FieldValues['sRenglon'] := '% RETENCION ACUMULADA APLICADA (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', (( dAcumuladoSancionAplicadaDLL * 100 ) / dMontoContratoDLL ))  ;
            MemoryTotales.Post ;

            // Diferencia ...
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 1 ;
            MemoryTotales.FieldValues['sRenglon'] := 'DIFERENCIA (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf (Connection.qryBusca.FieldValues['dIdFecha'] ) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf (Connection.qryBusca.FieldValues['dIdFecha'] ) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dSancionMensualDLL - dMensualSancionAplicadaDLL ) ;
            MemoryTotales.Post ;

            dAcumuladoDiferenciaAplicadaDLL := dAcumuladoDiferenciaAplicadaDLL + (dSancionMensualDLL - dMensualSancionAplicadaDLL) ;

            // Diferencia ...
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 1 ;
            MemoryTotales.FieldValues['sRenglon'] := 'DIFERENCIA ACUMULADA (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf (Connection.qryBusca.FieldValues['dIdFecha'] ) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf (Connection.qryBusca.FieldValues['dIdFecha'] ) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dAcumuladoDiferenciaAplicada ) ;
            MemoryTotales.Post ;
        End ;
        dFecha := dFecha + 1 ;
    End ;
    QryConvenios.Destroy
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al calcular retenciones', 0);
    end;
  end;
end;

procedure TfrmRetencionesyPenas.CalculoProforma (sParamContrato, sParamConvenio : String) ;
Var
    sFechaFinal : String ;
    dFecha : tDate ;
    QryConvenios : tzReadOnlyQuery ;

    iRecord : Byte ;

    dMensualProgramado : Double ;
    dMensualProgramadoDLL : Double ;
    dAcumuladoProgramado : Double ;
    dAcumuladoProgramadoDLL : Double ;

    dMensualReal : Double ;
    dMensualRealDLL : Double ;
    dAcumuladoReal : Double ;
    dAcumuladoRealDLL : Double ;

    dEstimadoMensualReal : Double ;
    dEstimadoMensualRealDLL : Double ;
    dEstimadoAcumuladoReal : Double ;
    dEstimadoAcumuladoRealDLL : Double ;

    dSancionMensual : Double ;
    dSancionMensualDLL : Double ;
    dSancionAcumulada : Double ;
    dSancionAcumuladaDLL : Double ;

    dMensualSancionAplicada : Double ;
    dMensualSancionAplicadaDLL : Double ;
    dAcumuladoSancionAplicada : Double ;
    dAcumuladoSancionAplicadaDLL : Double ;

    dAcumuladoDiferenciaAplicada,
    dAcumuladoDiferenciaAplicadaDLL : Double ;

    dMontoContrato : Double ;
    dMontoContratoDLL : Double ;
    dMontoProformaMN  : Double ;
    dMontoProformaDLL : Double ;
    dMensualProformaMN : Double ;
    dAcumuladoProformaMN : Double ;
    dMensualProformaDLL : Double ;
    dAcumuladoProformaDLL : Double ;

begin
  try
    QryConvenios:= tzReadOnlyquery.Create(Self) ;
    QryConvenios.Connection := connection.zConnection ;
    QryConvenios.Active := False;
    QryConvenios.SQL.Clear ;
    QryConvenios.SQL.Add('select dMontoMN, dMontoDLL, dFechaInicio, dFechaFinal from convenios Where sContrato = :Contrato and sIdConvenio = :convenio') ;
    QryConvenios.Params.ParamByName('contrato').DataType := ftString ;
    QryConvenios.Params.ParamByName('contrato').Value := sParamContrato ;
    QryConvenios.Params.ParamByName('convenio').DataType := ftString ;
    QryConvenios.Params.ParamByName('convenio').Value := sParamConvenio ;
    QryConvenios.Open ;

    If MemoryTotales.RecordCount > 0 Then
        MemoryTotales.EmptyTable ;

    If rxAvancesContrato.RecordCount > 0 then
        rxAvancesContrato.EmptyTable  ;

    sFechaFinal := sfnFechaFinal (tsMes.ItemIndex + 1 , UpAnno.Position ) ;

    dAcumuladoProgramado := 0 ;
    dAcumuladoProgramadoDLL := 0 ;
    dAcumuladoReal := 0 ;
    dAcumuladoRealDLL := 0 ;
    dSancionAcumulada := 0 ;
    dSancionAcumuladaDLL := 0 ;
    dAcumuladoSancionAplicada := 0 ;
    dAcumuladoSancionAplicadaDLL := 0 ;
    dAcumuladoDiferenciaAplicada := 0 ;
    dAcumuladoDiferenciaAplicadaDLL := 0 ;
    dAcumuladoProformaMN := 0 ;
    dAcumuladoProformaDLL := 0 ;

    dMontoContrato := QryConvenios.FieldValues['dMontoMN'] ;
    dMontoContratoDLL := QryConvenios.FieldValues['dMontoDLL'] ;

    dMontoProformaMN := 0 ;
    dMontoProformaDLL := 0 ;

    Connection.qryBusca2.Active := False ;
    Connection.qryBusca2.SQL.Clear ;
    Connection.qryBusca2.SQL.Add('Select sum(dMontoMN) as dMontoMN, sum(dMontoDLL) as dMontoDLL from erogacionesmensuales ' +
                                 'Where sContrato = :Contrato and sIdConvenio = :Convenio group by sContrato') ;
    connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca2.Params.ParamByName('contrato').Value := sParamContrato ;
    connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString ;
    connection.QryBusca2.Params.ParamByName('convenio').Value := sParamConvenio ;
    connection.QryBusca2.Open ;
    If connection.qryBusca2.RecordCount > 0 Then
    Begin
        dMontoProformaMN := connection.QryBusca2.FieldValues['dMontoMN'] ;
        dMontoProformaDLL := connection.QryBusca2.FieldValues['dMontoDLL']
    end ;

    dFecha := QryConvenios.FieldValues['dFechaInicio'] ;
    iRecord := 0 ;
    If dMontoContrato > 0 Then
      While dFecha <= StrToDate (sFechaFinal) Do
      Begin
        dFecha := StrToDate(sfnFechaFinal (MonthOf(dFecha),YearOf(dFecha))) ;
        iRecord := iRecord + 1 ;

        If iRecord = 1 Then
        Begin
          MemoryTotales.Append ;
          MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
          MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
          MemoryTotales.FieldValues['iColor'] := 1 ;
          MemoryTotales.FieldValues['sRenglon'] := 'a) AVANCE PROGRAMADO' ;
          MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
          MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
          MemoryTotales.FieldValues['dValor'] := '' ;
          MemoryTotales.Post ;

        End ;
        dMensualProgramadoDLL := 0 ;
        dMensualProgramado := 0 ;

        // Primero valores programados
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select dIdFecha, Sum(DEmn) as Programado, Sum(DEdll) as ProgramadoDLL From anexosmensuales ' +
                                    'Where sContrato = :Contrato And sIdConvenio = :Convenio and Month(dIdFecha) = :Mes And Year(dIdFecha) = :Anno ' +
                                    'Group By sContrato') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := sParamContrato ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := sParamConvenio ;
        Connection.qryBusca.Params.ParamByName('Mes').DataType := ftInteger ;
        Connection.qryBusca.Params.ParamByName('Mes').Value := MonthOf(dFecha) ;
        Connection.qryBusca.Params.ParamByName('Anno').DataType := ftInteger ;
        Connection.qryBusca.Params.ParamByName('Anno').Value := YearOf(dFecha) ;
        Connection.qryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
        Begin
            If Connection.QryBusca.FieldValues['Programado'] <> Null Then
                dMensualProgramado := Connection.qryBusca.FieldValues['Programado'] ;
            If Connection.QryBusca.FieldValues['ProgramadoDLL'] <> Null Then
                dMensualProgramadoDLL := Connection.qryBusca.FieldValues['ProgramadoDLL'] ;
        End ;

        // Valor Programado en el DE
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   a.1.- IMPORTE MN (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dMensualProgramado ) ;
        MemoryTotales.Post ;

        dAcumuladoProgramado := dAcumuladoProgramado + dMensualProgramado ;

        // Valor Programado en el DE ACUMULADO
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   a.2.- IMPORTE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dAcumuladoProgramado ) ;
        MemoryTotales.Post ;

        // Valor Programado en el DE ACUMULADO
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   a.3.- PORCENTAJE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ( ( dAcumuladoProgramado * 100 ) / dMontoContrato ) ) ;
        MemoryTotales.Post ;

        If dMontoContratoDLL > 0 Then
        Begin
            // Valor Programado en el DE
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 2 ;
            MemoryTotales.FieldValues['sRenglon'] := '   a.4.- IMPORTE MENSUAL (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dMensualProgramadoDLL ) ;
            MemoryTotales.Post ;

            dAcumuladoProgramadoDLL := dAcumuladoProgramadoDLL + dMensualProgramadoDLL  ;

            // Valor Programado en el DE ACUMULADO
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 2 ;
            MemoryTotales.FieldValues['sRenglon'] := '   a.5.- IMPORTE ACUMULADO (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dAcumuladoProgramadoDLL ) ;
            MemoryTotales.Post ;

            // Valor Programado en el DE ACUMULADO
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 2 ;
            MemoryTotales.FieldValues['sRenglon'] := '   a.6.- PORCENTAJE ACUMULADO (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dAcumuladoProgramadoDLL * 100 ) / dMontoContratoDLL)) ;
            MemoryTotales.Post ;
        End ;

        If iRecord = 1 Then
        Begin
          MemoryTotales.Append ;
          MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
          MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
          MemoryTotales.FieldValues['iColor'] := 1 ;
          MemoryTotales.FieldValues['sRenglon'] := 'b) PROFORMA' ;
          MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
          MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
          MemoryTotales.FieldValues['dValor'] := '' ;
          MemoryTotales.Post ;
        End ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select dMontoMN, dMontoDLL from erogacionesmensuales Where sContrato = :Contrato and sIdConvenio = :Convenio And dIdFecha = :Fecha') ;
        connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString ;
        connection.QryBusca2.Params.ParamByName('contrato').Value := sParamContrato ;
        connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString ;
        connection.QryBusca2.Params.ParamByName('convenio').Value := sParamConvenio ;
        connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate ;
        connection.QryBusca2.Params.ParamByName('fecha').Value := dFecha ;
        connection.QryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 Then
        Begin
            dMensualProformaMN := connection.QryBusca2.FieldValues['dMontoMN'] ;
            dMensualProformaDLL := connection.QryBusca2.FieldValues['dMontoDLL']
        end
        else
        Begin
            dMensualProformaMN := 0 ;
            dMensualProformaDLL := 0
        end ;

        // Valor Estimado Real
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   b.1.- IMPORTE MENSUAL (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dMensualProformaMN ) ;
        MemoryTotales.Post ;

        dAcumuladoProformaMN := dAcumuladoProformaMN + dMensualProformaMN ;
        // Valor Acumulado Real
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   b.2.- IMPORTE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dAcumuladoProformaMN ) ;
        MemoryTotales.Post ;

        // Valor % Estimado
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   b.3.- PROCENTAJE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        If dMontoProformaMN > 0 Then
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', (( dAcumuladoProformaMN * 100 ) / dMontoProformaMN))
        Else
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', 0) ;

        MemoryTotales.Post ;

        If dMontoProformaDLL > 0 Then
        Begin
             // Valor Estimado Real
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   c.4.- IMPORTE MENSUAL (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dMensualProformaDLL ) ;
             MemoryTotales.Post ;

             dAcumuladoProformaDLL := dAcumuladoProformaDLL + dMensualProformaDLL ;

             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   c.5.- IMPORTE ACUMULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dAcumuladoProformaDLL ) ;
             MemoryTotales.Post ;

             // Valor % Estimado Acumulado
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   c.6.- PORCENTAJE ACUMULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dAcumuladoProformaDLL * 100 ) / dMontoProformaDLL  )) ;
             MemoryTotales.Post ;
        End ;



        If iRecord = 1 Then
        Begin
          MemoryTotales.Append ;
          MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
          MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
          MemoryTotales.FieldValues['iColor'] := 1 ;
          MemoryTotales.FieldValues['sRenglon'] := 'c) AVANCE DE OBRA' ;
          MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
          MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
          MemoryTotales.FieldValues['dValor'] := '' ;
          MemoryTotales.Post ;
        End ;

        // Valores Estimados
        dMensualReal := 0 ;
        dMensualRealDLL := 0 ;
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        If QryContratosGerencial.FieldValues['sImporteRetencion'] = 'Todos los Generadores' Then
             Connection.qryBusca2.SQL.Add('Select Sum(e.dMontoMN) as dRealMN, Sum(e.dMontoDLL) as dRealDLL From estimacionperiodo e2 ' +
                                          'INNER JOIN estimaciones e ON (e.sContrato = e2.sContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion) ' +
                                          'Where e2.sContrato = :Contrato And Year(e2.dFechaFinal) = :Anno And Month(e2.dFechaFinal) = :Mes ' +
                                          'Group By e2.sContrato' )
         Else
             Connection.qryBusca2.SQL.Add('Select Sum(e.dMontoMN) as dRealMN, Sum(e.dMontoDLL) as dRealDLL From estimacionperiodo e2 ' +
                                          'INNER JOIN estimaciones e ON (e.sContrato = e2.sContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion) ' +
                                          'Where e2.sContrato = :Contrato And Year(e2.dFechaFinal) = :Anno And Month(e2.dFechaFinal) = :Mes And e2.sIdTipoEstimacion = "N" ' +
                                          'Group By e2.sContrato' ) ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato ;
        Connection.qryBusca2.Params.ParamByName('Anno').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Anno').Value := YearOf (dFecha) ;
        Connection.qryBusca2.Params.ParamByName('Mes').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Mes').Value := MonthOf (dFecha) ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
        Begin
            If Connection.qryBusca2.FieldValues['dRealMN'] <> Null Then
                dMensualReal := Connection.qryBusca2.FieldValues['dRealMN'] ;
            If Connection.qryBusca2.FieldValues['dRealDLL'] <> Null Then
                dMensualRealDLL := Connection.qryBusca2.FieldValues['dRealDLL']
        End ;

        // Valor Estimado Real
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   c.1.- IMPORTE MENSUAL (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dMensualReal ) ;
        MemoryTotales.Post ;

        dAcumuladoReal := dAcumuladoReal + dMensualReal ;
        // Valor Acumulado Real
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   c.2.- IMPORTE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dAcumuladoReal ) ;
        MemoryTotales.Post ;

        // Valor % Estimado
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   c.3.- PROCENTAJE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', (( dAcumuladoReal * 100 ) / dMontoContrato)) ;
        MemoryTotales.Post ;

        If dMontoContratoDLL > 0 Then
        Begin
             // Valor Estimado Real
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   c.4.- IMPORTE MENSUAL (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dMensualRealDLL ) ;
             MemoryTotales.Post ;

             dAcumuladoRealDLL := dAcumuladoRealDLL + dMensualRealDLL ;

             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   c.5.- IMPORTE ACUMULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dAcumuladoRealDLL ) ;
             MemoryTotales.Post ;

             // Valor % Estimado Acumulado
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   c.6.- PORCENTAJE ACUMULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dAcumuladoRealDLL * 100 ) / dMontoContratoDLL)) ;
             MemoryTotales.Post ;
        End ;

        If iRecord = 1 Then
        Begin
          MemoryTotales.Append ;
          MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
          MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
          MemoryTotales.FieldValues['iColor'] := 1 ;
          MemoryTotales.FieldValues['sRenglon'] := 'd) AVANCE FINANCIERO' ;
          MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
          MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
          MemoryTotales.FieldValues['dValor'] := '' ;
          MemoryTotales.Post ;
        End ;

        // Valores Estimados
        dEstimadoMensualReal := 0 ;
        dEstimadoMensualRealDLL := 0 ;
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        If QryContratosGerencial.FieldValues['sImporteRetencion'] = 'Todos los Generadores' Then
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dRealMN, Sum(dMontoDLL) as dRealDLL From estimacionperiodo ' +
                                           'Where sContrato = :Contrato And Year(dFechaFinal) = :Anno And Month(dFechaFinal) = :Mes ' +
                                           'Group By sContrato' )
        Else
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dRealMN, Sum(dMontoDLL) as dRealDLL From estimacionperiodo  ' +
                                         'Where sContrato = :Contrato And Year(dFechaFinal) = :Anno And Month(dFechaFinal) = :Mes And sIdTipoEstimacion = "N" ' +
                                         'Group By sContrato' ) ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato ;
        Connection.qryBusca2.Params.ParamByName('Anno').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Anno').Value := YearOf (dFecha) ;
        Connection.qryBusca2.Params.ParamByName('Mes').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Mes').Value := MonthOf (dFecha) ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
        Begin
            If Connection.qryBusca2.FieldValues['dRealMN'] <> Null Then
                dEstimadoMensualReal := Connection.qryBusca2.FieldValues['dRealMN'] ;
            If Connection.qryBusca2.FieldValues['dRealDLL'] <> Null Then
                dEstimadoMensualRealDLL := Connection.qryBusca2.FieldValues['dRealDLL']
        End ;
        // Valor Estimado Real
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   d.1.- IMPORTE MENSUAL (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dEstimadoMensualReal ) ;
        MemoryTotales.Post ;

        dEstimadoAcumuladoReal := dEstimadoAcumuladoReal + dEstimadoMensualReal ;
        // Valor Acumulado Real
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   d.2.- IMPORTE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dEstimadoAcumuladoReal ) ;
        MemoryTotales.Post ;

        // Valor % Estimado
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   d.3.- PORCENTAJE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', (( dEstimadoAcumuladoReal * 100 ) / dMontoContrato)) ;
        MemoryTotales.Post ;

        If dMontoContratoDLL > 0 Then
        Begin
             // Valor Estimado Real
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   d.4.- IMPORTE MENSUAL (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dEstimadoMensualRealDLL ) ;
             MemoryTotales.Post ;

             dEstimadoAcumuladoRealDLL := dEstimadoAcumuladoRealDLL + dEstimadoMensualRealDLL ;

             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   d.5.- IMPORTE ACUMULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dEstimadoAcumuladoRealDLL ) ;
             MemoryTotales.Post ;

             // Valor % Estimado Acumulado
             MemoryTotales.Append ;
             MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
             MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
             MemoryTotales.FieldValues['iColor'] := 2 ;
             MemoryTotales.FieldValues['sRenglon'] := '   d.6.- PORCENTAJE ACUMULADO (USD)' ;
             MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
             MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
             MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dEstimadoAcumuladoRealDLL * 100 ) / dMontoContratoDLL)) ;
             MemoryTotales.Post ;
        End ;

        // Retenciones Aplicadas ...
        If iRecord = 1 Then
        Begin
          MemoryTotales.Append ;
          MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
          MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
          MemoryTotales.FieldValues['iColor'] := 1 ;
          MemoryTotales.FieldValues['sRenglon'] := 'e) PENALIZACIONES' ;
          MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
          MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
          MemoryTotales.FieldValues['dValor'] := '' ;
          MemoryTotales.Post ;
        End ;

        dMensualSancionAplicada := 0 ;
        dMensualSancionAplicadaDLL := 0 ;
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(dRetencionMN) as RetencionMN, Sum(dRetencionDLL) as RetencionDLL From estimacionperiodo Where ' +
                                     'sContrato = :Contrato And Year(dFechaFinal) = :Anno And Month(dFechaFinal) = :Mes Group By sContrato' ) ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato ;
        Connection.qryBusca2.Params.ParamByName('Anno').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Anno').Value := YearOf (dFecha) ;
        Connection.qryBusca2.Params.ParamByName('Mes').DataType := ftInteger ;
        Connection.qryBusca2.Params.ParamByName('Mes').Value := MonthOf (dFecha) ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
        Begin
             If Connection.qryBusca2.FieldValues['RetencionMN'] <> Null Then
                 dMensualSancionAplicada := Connection.qryBusca2.FieldValues['RetencionMN'] ;
             If Connection.qryBusca2.FieldValues['RetencionDLL'] <> Null Then
                 dMensualSancionAplicadaDLL := Connection.qryBusca2.FieldValues['RetencionDLL']
        End ;

        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   e.1.- IMPORTE MENSUAL (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha ) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dMensualSancionAplicada ) ;
        MemoryTotales.Post ;

        dAcumuladoSancionAplicada := dAcumuladoSancionAplicada + dMensualSancionAplicada ;

        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 1 ;
        MemoryTotales.FieldValues['sRenglon'] := '   e.2.- IMPORTE ACUMULADA (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('$ ###,###,###,##0.00;$ -###,###,###,##0.00;0', dAcumuladoSancionAplicada ) ;
        MemoryTotales.Post ;

        // Valor % Acumulado Retencion
        MemoryTotales.Append ;
        MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
        MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
        MemoryTotales.FieldValues['iColor'] := 2 ;
        MemoryTotales.FieldValues['sRenglon'] := '   e.3.- PORCENTAJE ACUMULADO (M.N.)' ;
        MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
        MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
        MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', ((dAcumuladoSancionAplicada * 100 ) / dMontoContrato )) ;
        MemoryTotales.Post ;

        If dMontoContratoDLL > 0 Then
        Begin
            // Sancion Aplicada  DLL
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 1 ;
            MemoryTotales.FieldValues['sRenglon'] := '   e.4.- IMPORTE MENSUAL (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf (Connection.qryBusca.FieldValues['dIdFecha'] ) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf (Connection.qryBusca.FieldValues['dIdFecha'] ) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dMensualSancionAplicadaDLL ) ;
            MemoryTotales.Post ;

            dAcumuladoSancionAplicadaDLL := dAcumuladoSancionAplicadaDLL + dMensualSancionAplicadaDLL ;

            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 1 ;
            MemoryTotales.FieldValues['sRenglon'] := '   e.5.- IMPORTE ACUMULADO (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf (dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf (dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('$$ ###,###,###,##0.00;$$ -###,###,###,##0.00;0', dAcumuladoSancionAplicadaDLL ) ;
            MemoryTotales.Post ;

            // Valor % Acumulado Retencion
            MemoryTotales.Append ;
            MemoryTotales.FieldValues['sContrato'] := sParamContrato ;
            MemoryTotales.FieldValues['sIdConvenio'] := sParamConvenio ;
            MemoryTotales.FieldValues['iColor'] := 2 ;
            MemoryTotales.FieldValues['sRenglon'] := '   e.6.- PORCENTAJE ACUMULADO (USD)' ;
            MemoryTotales.FieldValues['Anno'] := YearOf(dFecha) ;
            MemoryTotales.FieldValues['Mes'] := MonthOf(dFecha) ;
            MemoryTotales.FieldValues['dValor'] := FormatFloat ('##0.0### %;0', (( dAcumuladoSancionAplicadaDLL * 100 ) / dMontoContratoDLL ))  ;
            MemoryTotales.Post ;

        End ;


        rxAvancesContrato.Append ;
        rxAvancesContrato.FieldValues['sDescripcion'] := sParamContrato ;
        rxAvancesContrato.FieldValues['dFecha'] := dFecha ;
        If dMontoContrato > 0 Then
        Begin
            rxAvancesContrato.FieldValues['dProgramado'] := ( dAcumuladoProgramado * 100 ) / dMontoContrato  ;
            rxAvancesContrato.FieldValues['dReal'] := ( dAcumuladoReal * 100 ) / dMontoContrato ;
            rxAvancesContrato.FieldValues['dFinanciero'] := ( dEstimadoAcumuladoReal * 100 ) / dMontoContrato ;
        End ;
        If dMontoProformaMN > 0 Then
            rxAvancesContrato.FieldValues['dProforma'] := ( dAcumuladoProformaMN * 100 ) / dMontoProformaMN ;
        rxAvancesContrato.Post ;

        dFecha := dFecha + 1 ;
    End ;
    QryConvenios.Destroy
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al Calcular Proforma', 0);
    end;
  end;
end;

procedure TfrmRetencionesyPenas.mnConsolidadoAvProgClick(Sender: TObject);
begin
  try
    QryAnexosConsolidados.Active := False ;
    QryAnexosConsolidados.SQL.Clear ;
    QryAnexosConsolidados.SQL.Add('Select c2.sContrato, c.dFecha, c2.mDescripcion, c.dFechaInicio, c.dFechaFinal, c.sIdConvenio, ' +
                                  'c.sDescripcion as sConvenio, Year(a.dIdFecha) as dAnno, Month(a.dIdFecha) as sMes, Max(dAvancePonderadoGlobal) as dAvanceProgramado From convenios c ' +
                                  'INNER JOIN avancesglobales a ON (a.sContrato = c.sContrato And a.sIdConvenio = c.sIdConvenio) ' +
                                  'INNER JOIN contratos c2 ON (a.sContrato = c2.sContrato And c2.lStatus = "Activo") ' +
                                  'Group By c.sContrato, c.sIdConvenio, Year(a.dIdFecha), Month(a.dIdFecha) Order By c.sContrato, c.dFecha, Year(a.dIdFecha), Month(a.dIdFecha)') ;
    dsAnexosConsolidados.FieldAliases.Clear ;
    dsAnexosConsolidados.DataSet := QryAnexosConsolidados ;
    QryAnexosConsolidados.Open ;

    frxAnexo.LoadFromFile (global_files + 'AvancesProgramadosxContrato.fr3') ;
    frxAnexo.PreviewOptions.MDIChild := False ;
    frxAnexo.PreviewOptions.Modal := True ;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized () ;
    frxAnexo.PreviewOptions.ShowCaptions := False ;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth ;
    //<ROJAS>
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Retenciones y penas convencionales', 'Al hacer click en Consolidado de Avances Programados', 0);
    end;
  end;
end;

end.
