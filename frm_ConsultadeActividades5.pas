unit frm_ConsultadeActividades5;

interface

uses
  frm_connection,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  Mask, Grids, DBGrids, global, Buttons, frxClass, frxDBSet, ToolWin,
  Menus,  RXDBCtrl, RxLookup, utilerias, RxMemDS, ImgList, Math, Newpanel,
  Gauges, ZAbstractRODataset, ZDataset, udbgrid, unitexcepciones,
  UFunctionsGHH,UnitTBotonesPermisos, DBClient, ZAbstractDataset, cxCheckBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckComboBox,masUtilerias, FormAutoScaler;

type
  TfrmConsultaActividad5 = class(TForm)
    ds_bitacora: TDataSource;
    ds_Anexo: TDataSource;
    Grid_Resumen: TDBGrid;
    ds_rxAcumulados: TDataSource;
    ds_Historico: TDataSource;
    ds_generado: TDataSource;
    rxAcumulados: TRxMemoryData;
    rxAcumuladossFase: TStringField;
    rxAcumuladosdCantidad: TFloatField;
    ds_Requisiciones: TDataSource;
    ds_OrdendeCompra: TDataSource;
    Panel: TImageList;
    gbRequisiciones: TGroupBox;
    GridRequisiciones: TRxDBGrid;
    gbOrdenesdeCompra: TGroupBox;
    GridOrdenesdeCompra: TRxDBGrid;
    gbSuministrado: TGroupBox;
    GridSuministrado: TRxDBGrid;
    gbReportesDiarios: TGroupBox;
    GridReportesDiarios: TRxDBGrid;
    gbGeneradores: TGroupBox;
    frxRequisiciones: TfrxDBDataset;
    frxSuministros: TfrxDBDataset;
    frxBitacora: TfrxDBDataset;
    frxGenerado: TfrxDBDataset;
    GridGeneradores: TRxDBGrid;
    frxOrdendeCompra: TfrxDBDataset;
    frxAnexo: TfrxDBDataset;
    rxAcumuladosdAvance: TStringField;
    rDiario: TfrxReport;
    frGenerador: TfrxReport;
    grEstimaciones: tNewGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    tmDescripcion: TDBMemo;
    tsNumeroActividad: TRxDBLookupCombo;
    tdPonderadoAnexo: TDBEdit;
    tdCantidadAnexo: TDBEdit;
    tsMedidaAnexo: TDBEdit;
    tdPrecioMN: TDBEdit;
    imgNotas: TImage;
    frxReporte: TfrxReport;
    rxAcumuladosGral: TRxMemoryData;
    ds_rxAcumuladosGral: TDataSource;
    rxAcumuladosGralsNumeroActividad: TStringField;
    rxAcumuladosGralmDescripcion: TMemoField;
    rxAcumuladosGralsMedida: TStringField;
    rxAcumuladosGraldCantidadAnexo: TFloatField;
    rxAcumuladosGraldVentaMN: TCurrencyField;
    rxAcumuladosGraldVentaDLL: TCurrencyField;
    rxAcumuladosGraldCantidadRequisicion: TFloatField;
    rxAcumuladosGraldCantidadFincado: TFloatField;
    rxAcumuladosGraldCantidadSuministro: TFloatField;
    rxAcumuladosGraldCantidadReportado: TFloatField;
    rxAcumuladosGraldCantidadGenerado: TFloatField;
    rxAcumuladosGraldAvanceRequisicion: TStringField;
    rxAcumuladosGraldAvanceFincado: TStringField;
    rxAcumuladosGraldAvanceSuministro: TStringField;
    rxAcumuladosGraldAvanceReportado: TStringField;
    rxAcumuladosGraldAvanceGenerado: TStringField;
    bAvance: TGauge;
    dsAcumuladosGral: TfrxDBDataset;
    rxAcumuladosGralsContrato: TStringField;
    rxAcumuladosGralsIdFase: TStringField;
    frxReporteGral: TfrxReport;
    Anexo: TZReadOnlyQuery;
    OrdendeCompra: TZReadOnlyQuery;
    Generado: TZReadOnlyQuery;
    Bitacora: TZReadOnlyQuery;
    Historico: TZReadOnlyQuery;
    Requisiciones: TZReadOnlyQuery;
    cd_insumos: TClientDataSet;
    cd_insumossIdInsumo: TStringField;
    cd_insumosmDescripcion: TStringField;
    cd_insumossNumeroActividad: TStringField;
    cd_insumossContrato: TStringField;
    cd_insumosiFolioReq: TIntegerField;
    cd_insumossReferenciaReq: TStringField;
    cd_insumosdCantidadReq: TFloatField;
    cd_insumosiFolioOC: TIntegerField;
    cd_insumossReferenciaOC: TStringField;
    cd_insumosdCantidadOC: TFloatField;
    cd_insumossReferenciaRep: TStringField;
    cd_insumosdCantidadRep: TFloatField;
    frxDBInsumos: TfrxDBDataset;
    zq_InsxPar: TZQuery;
    cd_insumosdFechaReq: TDateField;
    cd_insumosdFechaOC: TDateField;
    cd_insumosdFechaRep: TDateField;
    cd_insumosdFechaSum: TDateField;
    cd_insumossReferenciaSum: TStringField;
    cd_insumosdCantidadSum: TFloatField;
    rxAcumuladosGraldCantidadEstimado: TFloatField;
    rxAcumuladosGraldAvanceEstimado: TStringField;
    partidas: TZReadOnlyQuery;
    PopupPrincipal: TPopupMenu;
    ImprimirKardexdelaPartida1: TMenuItem;
    ImprimirKardexGeneral1: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    ImprimirKardexdelasPartidasSeleccionads1: TMenuItem;
    PanelPrincipal: TListView;
    Panel1: TPanel;
    Label4: TLabel;
    chPartidas: TcxCheckComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure PanelPrincipalClick(Sender: TObject);
    procedure GridGeneradoresGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure frxAnexoNext(Sender: TObject);
    procedure AnexoAfterScroll(DataSet: TDataSet);
    procedure GridReportesDiariosDblClick(Sender: TObject);
    procedure rDiarioGetValue(const VarName: String; var Value: Variant);
    procedure GridGeneradoresDblClick(Sender: TObject);
    procedure frGeneradorGetValue(const VarName: String;
      var Value: Variant);
    procedure ImprimirKardexdelaPartida1Click(Sender: TObject);
    procedure ImprimirKardexGeneral1Click(Sender: TObject);
    procedure tdPonderadoAnexoEnter(Sender: TObject);
    procedure tdPonderadoAnexoExit(Sender: TObject);
    procedure tdCantidadAnexoEnter(Sender: TObject);
    procedure tdCantidadAnexoExit(Sender: TObject);
    procedure tsMedidaAnexoEnter(Sender: TObject);
    procedure tsMedidaAnexoExit(Sender: TObject);
    procedure tdPrecioMNEnter(Sender: TObject);
    procedure tdPrecioMNExit(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tdCantidadAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tsMedidaAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tdPrecioMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdPonderadoAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure GridGeneradoresMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ResumenMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridGeneradoresMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ResumenMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ResumenTitleClick(Column: TColumn);
    procedure GridGeneradoresTitleClick(Column: TColumn);
    procedure rxAcumuladosGralAfterScroll(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure Grid_ResumenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridRequisicionesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Salir1Click(Sender: TObject);
    procedure ImprimirKardexdelasPartidasSeleccionads1Click(Sender: TObject);
  private
  sMenuP: String;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaActividad5: TfrmConsultaActividad5;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  BotonPermiso: TBotonesPermisos;

implementation

uses frm_comentariosxanexo, Func_Genericas;

{$R *.dfm}

procedure TfrmConsultaActividad5.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  utgrid.Destroy;
  utgrid2.destroy;
  action := cafree ;
end;

procedure TfrmConsultaActividad5.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opComparativo5',PopupPrincipal);
  BotonPermiso.permisosBotones(nil);
  sMenuP:=stMenu;
  try
    UtGrid:=TicdbGrid.create(gridgeneradores);
    UtGrid2:=TicdbGrid.create(grid_resumen);
    Bitacora.Active := False ;
    Anexo.Active := False ;
    Anexo.Params.ParamByName('Contrato').DataType := ftString ;
    Anexo.Params.ParamByName('Contrato').Value := global_contrato ;
    Anexo.Params.ParamByName('Convenio').DataType := ftString ;
    Anexo.Params.ParamByName('Convenio').Value := global_convenio ;
    Anexo.Open ;
    If Anexo.RecordCount > 0 Then
        tsNumeroActividad.KeyValue := Anexo.FieldValues['sNumeroActividad'] ;

    gbRequisiciones.Visible := True ;
    gbOrdenesdeCompra.Visible := False ;
    gbSuministrado.Visible := False ;
    gbReportesDiarios.Visible := False ;
    gbGeneradores.Visible := False ;
    tsNumeroActividad.SetFocus
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultadeActividades5', 'Al iniciar el formulario', 0);
    end;
  end;
  PanelPrincipal.Enabled := True;

end;

procedure TfrmConsultaActividad5.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad5.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsNumeroActividad.SetFocus
end;

procedure TfrmConsultaActividad5.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tdponderadoanexo.SetFocus
end;

procedure TfrmConsultaActividad5.tsNumeroActividadEnter(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad5.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmConsultaActividad5.cxButton1Click(Sender: TObject);
var
  qryinsumos: TZQuery;
  i: Integer;
begin


  try
    If rxAcumuladosGral.RecordCount > 0 Then
        rxAcumuladosGral.EmptyTable ;

    if cd_insumos.active then
      cd_insumos.EmptyDataSet
    else
    begin
      cd_insumos.CreateDataSet;
      cd_insumos.Open;
    end;

    qryinsumos := TZQuery.Create(nil);
    qryinsumos.Connection := Connection.zConnection;
    for i := 0 to chPartidas.Properties.Items.Count - 1 do
    Begin
      if chPartidas.States[i]=cbsChecked then
      begin
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dVentaMN, dVentaDLL, sIdFase, sWbs From actividadesxanexo Where ' +
                                          'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad=:NumeroActividad Order By iItemOrden' ) ;
        connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('Convenio').Value := global_Convenio ;
        connection.qryBusca2.Params.ParamByName('NumeroActividad').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('NumeroActividad').Value := chPartidas.Properties.Items[i].Description;
        Connection.qryBusca2.Open ;

          // Encabezado de la Partida ...
          rxAcumuladosGral.Append ;
          rxAcumuladosGral.FieldValues['sContrato'] := global_contrato ;
          rxAcumuladosGral.FieldValues['sIdFase'] := Connection.qryBusca2.FieldValues['sIdFase'] ;
          rxAcumuladosGral.FieldValues['sNumeroActividad'] := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
          rxAcumuladosGral.FieldValues['sMedida'] := Connection.qryBusca2.FieldValues['sMedida'] ;
          rxAcumuladosGral.FieldValues['mDescripcion'] := Connection.qryBusca2.FieldValues['mDescripcion'] ;
          rxAcumuladosGral.FieldValues['dCantidadAnexo'] := Connection.qryBusca2.FieldValues['dCantidadAnexo'] ;
          rxAcumuladosGral.FieldValues['dVentaMN'] := Connection.qryBusca2.FieldValues['dVentaMN'] ;

          // Acumulado Requisitado ...
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_prequisicion p ' +
                                           'INNER JOIN anexo_requisicion a ON (a.sContrato = p.sContrato And a.sNumFolio = p.iFolioRequisicion) ' +
                                           'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
          connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString ;
          connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato ;
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Actividad').Value    := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca.Open ;

          If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
          Begin
              rxAcumuladosGral.FieldValues['dCantidadRequisicion'] := Connection.qryBusca.FieldValues['dCantidad']  ;
              If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                  rxAcumuladosGral.FieldValues['dAvanceRequisicion'] := '100.000 %'
              Else
                  rxAcumuladosGral.FieldValues['dAvanceRequisicion'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
          End
          Else
          Begin
              rxAcumuladosGral.FieldValues['dCantidadRequisicion'] := 0.000 ;
              rxAcumuladosGral.FieldValues['dAvanceRequisicion'] := '0.000 %'
          End ;

          // Acumulado Orden de Compra ...
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_ppedido p ' +
                                           'INNER JOIN anexo_pedidos a ON (a.sContrato = p.sContrato And a.iFolioPedido = p.iFolioPedido) ' +
                                           'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca.Open ;
          If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
          Begin
              rxAcumuladosGral.FieldValues['dCantidadFincado'] := Connection.qryBusca.FieldValues['dCantidad']  ;
              If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                  rxAcumuladosGral.FieldValues['dAvanceFincado'] := '100.000 %'
              Else
                  rxAcumuladosGral.FieldValues['dAvanceFincado'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
          End
          Else
          Begin
              rxAcumuladosGral.FieldValues['dCantidadFincado'] := 0.000 ;
              rxAcumuladosGral.FieldValues['dAvanceFincado'] := '0.000 %'
          End ;

          // Acumulado Suministrado ...
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_psuministro p ' +
                                           'INNER JOIN anexo_suministro a ON (a.sContrato = p.sContrato And a.iFolio = p.iFolio) ' +
                                           'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca.Open ;

          If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
          Begin
              rxAcumuladosGral.FieldValues['dCantidadSuministro'] := Connection.qryBusca.FieldValues['dCantidad']  ;
              If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                  rxAcumuladosGral.FieldValues['dAvanceSuministro'] := '100.000 %'
              Else
                  rxAcumuladosGral.FieldValues['dAvanceSuministro'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
          End
          Else
          Begin
              rxAcumuladosGral.FieldValues['dCantidadSuministro'] := 0.000 ;
              rxAcumuladosGral.FieldValues['dAvanceSuministro'] := '0.000 %'
          End ;

          // Acumulado Reportado ...
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From bitacoradeactividades p ' +
                                           'INNER JOIN reportediario a ON (a.sContrato = p.sContrato And a.sNumeroOrden = p.sNumeroOrden And a.dIdFecha = p.dIdFecha) ' +
                                           'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca.Open ;

          If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
          Begin
              rxAcumuladosGral.FieldValues['dCantidadReportado'] := Connection.qryBusca.FieldValues['dCantidad']  ;
              If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                  rxAcumuladosGral.FieldValues['dAvanceReportado'] := '100.000 %'
              Else
                  rxAcumuladosGral.FieldValues['dAvanceReportado'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
          End
          Else
          Begin
              rxAcumuladosGral.FieldValues['dCantidadReportado'] := 0.000 ;
              rxAcumuladosGral.FieldValues['dAvanceReportado'] := '0.000 %'
          End ;

          // Acumulado Generado ...
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From estimacionxpartida p ' +
                                           'INNER JOIN estimaciones a ON (a.sContrato = p.sContrato And a.sNumeroOrden = p.sNumeroOrden And a.sNumeroGenerador = p.sNumeroGenerador And a.lStatus = "Autorizado") ' +
                                           'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca.Open ;
          If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
          Begin
              rxAcumuladosGral.FieldValues['dCantidadGenerado'] := Connection.qryBusca.FieldValues['dCantidad']  ;
              If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                  rxAcumuladosGral.FieldValues['dAvanceGenerado'] := '100.000 %'
              Else
                  rxAcumuladosGral.FieldValues['dAvanceGenerado'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
          End
          Else
          Begin
              rxAcumuladosGral.FieldValues['dCantidadGenerado'] := 0.000 ;
              rxAcumuladosGral.FieldValues['dAvanceGenerado'] := '0.000 %'
          End ;

          // Acumulado Estimado ...
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From actividadesxestimacion p ' +
                                      'INNER JOIN estimaciones a ON (a.sContrato = p.sContrato And a.iNumeroEstimacion = p.iNumeroEstimacion) ' +
                                      'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca.Open ;
          If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
          Begin
              rxAcumuladosGral.FieldValues['dCantidadEstimado'] := Connection.qryBusca.FieldValues['dCantidad']  ;
              If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                  rxAcumuladosGral.FieldValues['dAvanceEstimado'] := '100.000 %'
              Else
                  rxAcumuladosGral.FieldValues['dAvanceEstimado'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
          End
          Else
          Begin
              rxAcumuladosGral.FieldValues['dCantidadEstimado'] := 0.000 ;
              rxAcumuladosGral.FieldValues['dAvanceEstimado'] := '0.000 %'
          End ;

          rxAcumuladosGral.Post ;
          //bAvance.Progress := Connection.qryBusca2.RecNo ;

          {$REGION 'Insumos'}
          zq_InsxPar.Active := False;
          zq_InsxPar.ParamByName('contrato').AsString := global_contrato;
          zq_InsxPar.ParamByName('wbs').AsString := Connection.qryBusca2.FieldByName('sWbs').AsString;
          zq_InsxPar.ParamByName('actividad').AsString := Connection.qryBusca2.FieldByName('sNumeroActividad').AsString;
          zq_InsxPar.Open;

          While not zq_InsxPar.Eof Do
          Begin
            cd_insumos.Append;
            cd_insumos.FieldValues['sContrato'] := global_contrato;
            cd_insumos.FieldValues['sNumeroActividad'] := zq_InsxPar.FieldValues['sNumeroActividad'];;
            //cd_insumos.FieldValues['sWbs'] := zq_InsxPar.FieldValues['sWbs'];;
            cd_insumos.FieldValues['sIdInsumo'] := zq_InsxPar.FieldValues['sIdInsumo'];

            qryinsumos.Active := False ;
            qryinsumos.SQL.Clear ;
            qryinsumos.SQL.Add('select mDescripcion from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato=:Contrato)) and sIdInsumo=:insumo');
            If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
              qryinsumos.ParamByName('Contrato').Value := global_contrato
            else
              qryinsumos.ParamByName('Contrato').Value :=-1;
            qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
            qryinsumos.Open;

            cd_insumos.FieldValues['mDescripcion'] := qryinsumos.FieldValues['mDescripcion'];

            //Requisicion
            qryinsumos.Active := False ;
            qryinsumos.SQL.Clear ;
            qryinsumos.SQL.Add('Select a.iFolioRequisicion, a.dIdFecha, a.sReferencia, p.dCantidad From anexo_prequisicion p ' +
                              'INNER JOIN anexo_requisicion a ON (a.sContrato = p.sContrato And a.sNumFolio = p.iFolioRequisicion) ' +
                              'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad And p.sIdInsumo=:insumo');
            qryinsumos.ParamByName('Contrato').AsString:=global_contrato;
            qryinsumos.ParamByName('Actividad').AsString:=zq_InsxPar.FieldByName('sNumeroActividad').AsString;
            qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
            qryinsumos.Open;

            cd_insumos.FieldValues['dFechaReq'] := qryinsumos.FieldValues['dIdFecha'];
            cd_insumos.FieldValues['iFolioReq'] := qryinsumos.FieldValues['iFolioRequisicion'];
            cd_insumos.FieldValues['sReferenciaReq'] := qryinsumos.FieldValues['sReferencia'];
            cd_insumos.FieldValues['dCantidadReq'] := qryinsumos.FieldValues['dCantidad'];

            //Orden de compra
            qryinsumos.Active := False ;
            qryinsumos.SQL.Clear ;
            qryinsumos.SQL.Add('Select a.dIdFecha, a.iFolioPedido, a.sReferencia, p.dCantidad From anexo_ppedido p ' +
                              'INNER JOIN anexo_pedidos a ON (a.sContrato = p.sContrato And a.iFolioPedido = p.iFolioPedido) ' +
                              'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad And p.sIdInsumo=:insumo');
            qryinsumos.ParamByName('Contrato').AsString:=global_contrato;
            qryinsumos.ParamByName('Actividad').AsString:=zq_InsxPar.FieldByName('sNumeroActividad').AsString;
            qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
            qryinsumos.Open;

            cd_insumos.FieldValues['dFechaOC'] := qryinsumos.FieldValues['dIdFecha'];
            cd_insumos.FieldValues['iFolioOC'] := qryinsumos.FieldValues['iFolioPedido'];
            cd_insumos.FieldValues['sReferenciaOC'] := qryinsumos.FieldValues['sReferencia'];
            cd_insumos.FieldValues['dCantidadOC'] := qryinsumos.FieldValues['dCantidad'];

            //Reporte diario
            qryinsumos.Active := False ;
            qryinsumos.SQL.Clear ;
            qryinsumos.SQL.Add('Select b.dIdFecha, p.sNumeroOrden, b.dCantidad From bitacorademateriales b '+
                              'INNER JOIN bitacoradeactividades p ON (p.sContrato=b.sContrato And p.dIdFecha = b.dIdFecha And p.sWbs=b.sWbs) '+
                              'Where b.sContrato = :Contrato And b.sWbs = :Wbs And b.sIdMaterial=:insumo');
            qryinsumos.ParamByName('Contrato').AsString:=global_contrato;
            qryinsumos.ParamByName('Wbs').AsString:=zq_InsxPar.FieldByName('sWbs').AsString;
            qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
            qryinsumos.Open;

            cd_insumos.FieldValues['dFechaRep'] := qryinsumos.FieldValues['dIdFecha'];
            cd_insumos.FieldValues['sReferenciaRep'] := qryinsumos.FieldValues['sNumeroOrden'];
            cd_insumos.FieldValues['dCantidadRep'] := qryinsumos.FieldValues['dCantidad'];

            //Suministro
            qryinsumos.Active := False ;
            qryinsumos.SQL.Clear ;
            qryinsumos.SQL.Add('Select p.iFolioSuministro, p.dFecha, p.sNumeroOrden, p.dCantidad From alm_suministroinsumos p ' +
                              'INNER JOIN anexo_suministro a ON (a.sContrato = p.sContrato And a.iFolio = p.iFolioSuministro) ' +
                              'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad And p.sIdInsumo=:insumo');
            qryinsumos.ParamByName('Contrato').AsString:=global_contrato;
            qryinsumos.ParamByName('Actividad').AsString:=zq_InsxPar.FieldByName('sNumeroActividad').AsString;
            qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
            qryinsumos.Open;

            cd_insumos.FieldValues['dFechaSum'] := qryinsumos.FieldValues['dFecha'];
            //cd_insumos.FieldValues['iFolioReq'] := qryinsumos.FieldValues['iFolioRequisicion'];
            cd_insumos.FieldValues['sReferenciaSum'] := qryinsumos.FieldValues['sNumeroOrden'];
            cd_insumos.FieldValues['dCantidadSum'] := qryinsumos.FieldValues['dCantidad'];

            cd_insumos.Post;
            zq_InsxPar.Next;
          End;
          {$ENDREGION}
      end;
    End ;
    frxReporteGral.LoadFromFile(global_files + global_miReporte + '_ALMKardexGral_PartidasInsumos.fr3');
    if not FileExists(global_files + global_miReporte + '_ALMKardexGral_PartidasInsumos.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMKardexGral_PartidasInsumos.fr3 no existe, notifique al administrador del sistema');
    frxReporteGral.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultadeActividades5', 'Al imprimir el kardex General', 0);
    end;
  end;
end;

procedure TfrmConsultaActividad5.tdCantidadAnexoEnter(Sender: TObject);
begin
  tdcantidadanexo.Color:= global_color_entradaPU;
end;

procedure TfrmConsultaActividad5.tdCantidadAnexoExit(Sender: TObject);
begin
  tdcantidadanexo.Color:= global_color_salidaPU;
end;

procedure TfrmConsultaActividad5.tdCantidadAnexoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsmedidaanexo.SetFocus
end;

procedure TfrmConsultaActividad5.tdPonderadoAnexoEnter(Sender: TObject);
begin
  tdponderadoanexo.Color:=global_color_entradaPU;
end;

procedure TfrmConsultaActividad5.tdPonderadoAnexoExit(Sender: TObject);
begin
tdponderadoanexo.Color:= global_color_salidaPU;
end;

procedure TfrmConsultaActividad5.tdPonderadoAnexoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tdcantidadanexo.SetFocus
end;

procedure TfrmConsultaActividad5.tdPrecioMNEnter(Sender: TObject);
begin
  tdpreciomn.Color:= global_color_entradaPU;
end;

procedure TfrmConsultaActividad5.tdPrecioMNExit(Sender: TObject);
begin
  tdpreciomn.Color:= global_color_salidaPU;
end;

procedure TfrmConsultaActividad5.tdPrecioMNKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tmDescripcion.SetFocus
end;

procedure TfrmConsultaActividad5.tmDescripcionEnter(Sender: TObject);
begin
tmdescripcion.Color:= global_color_entradaPU;
end;

procedure TfrmConsultaActividad5.tmDescripcionExit(Sender: TObject);
begin
  tmdescripcion.Color:= global_color_salidaPU;
end;

procedure TfrmConsultaActividad5.tsMedidaAnexoEnter(Sender: TObject);
begin
 tsmedidaanexo.Color:= global_color_entradaPU;
end;

procedure TfrmConsultaActividad5.tsMedidaAnexoExit(Sender: TObject);
begin
  tsmedidaanexo.Color:= global_color_salidaPU;
end;

procedure TfrmConsultaActividad5.tsMedidaAnexoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tdpreciomn.SetFocus
end;

procedure TfrmConsultaActividad5.tsNumeroActividadChange(Sender: TObject);
begin
 try
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text ;
  Connection.qryBusca.Open ;
  If Connection.qryBusca.RecordCount > 0 Then
      imgNotas.Visible := True ;

  Generado.Active := False ;
  Generado.Params.ParamByName('Contrato').DataType := ftString ;
  Generado.Params.ParamByName('Contrato').Value := global_contrato ;
  Generado.Params.ParamByName('Actividad').DataType := ftString ;
  Generado.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
  Generado.Open ;

  Requisiciones.Active := False ;
  Requisiciones.Params.ParamByName('Contrato').DataType := ftString ;
  Requisiciones.Params.ParamByName('Contrato').Value := global_contrato ;
  Requisiciones.Params.ParamByName('Actividad').DataType := ftString ;
  Requisiciones.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
  Requisiciones.Open ;

  OrdendeCompra.Active := False ;
  OrdendeCompra.Params.ParamByName('Contrato').DataType := ftString ;
  OrdendeCompra.Params.ParamByName('Contrato').Value := global_contrato ;
  OrdendeCompra.Params.ParamByName('Actividad').DataType := ftString ;
  OrdendeCompra.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
  OrdendeCompra.Open ;

  Bitacora.Active := False ;
  Bitacora.Params.ParamByName('Contrato').DataType := ftString ;
  Bitacora.Params.ParamByName('Contrato').Value := global_contrato ;
  Bitacora.Params.ParamByName('Actividad').DataType := ftString ;
  Bitacora.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
  Bitacora.Open ;

  Historico.Active := False ;
  Historico.Params.ParamByName('Contrato').DataType := ftString ;
  Historico.Params.ParamByName('Contrato').Value := global_contrato ;
  Historico.Params.ParamByName('Actividad').DataType := ftString ;
  Historico.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
  Historico.Open ;

 except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_consultadeActividades5', 'Al seleccionar el número de partida', 0);
end;
 end;
end;

procedure TfrmConsultaActividad5.PanelPrincipalClick(Sender: TObject);
begin
    If PanelPrincipal.ItemIndex = 0 Then
    Begin
        gbRequisiciones.Visible := True ;
        gbOrdenesdeCompra.Visible := False ;
        gbSuministrado.Visible := False ;
        gbReportesDiarios.Visible := False ;
        gbGeneradores.Visible := False ;
        GridRequisiciones.SetFocus
    End ;

    If PanelPrincipal.ItemIndex = 1 Then
    Begin
        gbRequisiciones.Visible := False ;
        gbOrdenesdeCompra.Visible := True ;
        gbSuministrado.Visible := False ;
        gbReportesDiarios.Visible := False ;
        gbGeneradores.Visible := False ;
        GridOrdenesdeCompra.SetFocus
    End ;

    If PanelPrincipal.ItemIndex = 2 Then
    Begin
        gbRequisiciones.Visible := False ;
        gbOrdenesdeCompra.Visible := False ;
        gbSuministrado.Visible := True ;
        gbReportesDiarios.Visible := False ;
        gbGeneradores.Visible := False ;
        GridSuministrado.SetFocus
    End ;

    If PanelPrincipal.ItemIndex = 3 Then
    Begin
        gbRequisiciones.Visible := False ;
        gbOrdenesdeCompra.Visible := False ;
        gbSuministrado.Visible := False ;
        gbReportesDiarios.Visible := True ;
        gbGeneradores.Visible := False ;
        GridReportesdiarios.SetFocus
    End ;

    If PanelPrincipal.ItemIndex = 4 Then
    Begin
        gbRequisiciones.Visible := False ;
        gbOrdenesdeCompra.Visible := False ;
        gbSuministrado.Visible := False ;
        gbReportesDiarios.Visible := False ;
        gbGeneradores.Visible := True ;
        GridGeneradores.SetFocus
    End ;

end;

procedure TfrmConsultaActividad5.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmConsultaActividad5.GridGeneradoresGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString <> 'Autorizado' then
        Background := clGradientInactiveCaption
end;

procedure TfrmConsultaActividad5.GridGeneradoresMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaActividad5.GridGeneradoresMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaActividad5.GridGeneradoresTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad5.btnImprimirClick(Sender: TObject);
begin
     frxReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
end;

procedure TfrmConsultaActividad5.frxAnexoNext(Sender: TObject);
begin
        Generado.Active := False ;
        Generado.Params.ParamByName('Contrato').DataType := ftString ;
        Generado.Params.ParamByName('Contrato').Value := global_contrato ;
        Generado.Params.ParamByName('Actividad').DataType := ftString ;
        Generado.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Generado.Open ;

        Requisiciones.Active := False ;
        Requisiciones.Params.ParamByName('Contrato').DataType := ftString ;
        Requisiciones.Params.ParamByName('Contrato').Value := global_contrato ;
        Requisiciones.Params.ParamByName('Actividad').DataType := ftString ;
        Requisiciones.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Requisiciones.Open ;

        OrdendeCompra.Active := False ;
        OrdendeCompra.Params.ParamByName('Contrato').DataType := ftString ;
        OrdendeCompra.Params.ParamByName('Contrato').Value := global_contrato ;
        OrdendeCompra.Params.ParamByName('Actividad').DataType := ftString ;
        OrdendeCompra.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        OrdendeCompra.Open ;

        Bitacora.Active := False ;
        Bitacora.Params.ParamByName('Contrato').DataType := ftString ;
        Bitacora.Params.ParamByName('Contrato').Value := global_contrato ;
        Bitacora.Params.ParamByName('Actividad').DataType := ftString ;
        Bitacora.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Bitacora.Open ;

        Historico.Active := False ;
        Historico.Params.ParamByName('Contrato').DataType := ftString ;
        Historico.Params.ParamByName('Contrato').Value := global_contrato ;
        Historico.Params.ParamByName('Actividad').DataType := ftString ;
        Historico.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Historico.Open ;
end;

procedure TfrmConsultaActividad5.AnexoAfterScroll(DataSet: TDataSet);
begin
    If Anexo.RecordCount > 0 Then
    Begin
        If rxAcumulados.RecordCount > 0 Then
            rxAcumulados.EmptyTable ;

        // Acumulado Requisitado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_prequisicion p ' +
                                         'INNER JOIN anexo_requisicion a ON (a.sContrato = p.sContrato And a.sNumFolio = p.iFolioRequisicion) ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;
        rxAcumulados.Append ;
        rxAcumulados.FieldValues['sFase'] := 'REQUISITADO' ;
        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumulados.FieldValues['dCantidad'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Anexo.FieldValues['dCantidadAnexo'] Then
                rxAcumulados.FieldValues['dAvance'] := '100.000 %'
            Else
                rxAcumulados.FieldValues['dAvance'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Anexo.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumulados.FieldValues['dCantidad'] := 0.000 ;
            rxAcumulados.FieldValues['dAvance'] := '0.000 %'
        End ;
        rxAcumulados.Post ;

        // Acumulado Orden de Compra ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_ppedido p ' +
                                         'INNER JOIN anexo_pedidos a ON (a.sContrato = p.sContrato And a.iFolioPedido = p.iFolioPedido) ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;
        rxAcumulados.Append ;
        rxAcumulados.FieldValues['sFase'] := 'FINCADO (ORDEN DE COMPRA)' ;
        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumulados.FieldValues['dCantidad'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Anexo.FieldValues['dCantidadAnexo'] Then
                rxAcumulados.FieldValues['dAvance'] := '100.000 %'
            Else
                rxAcumulados.FieldValues['dAvance'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Anexo.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumulados.FieldValues['dCantidad'] := 0.000 ;
            rxAcumulados.FieldValues['dAvance'] := '0.000 %'
        End ;
        rxAcumulados.Post ;

        // Acumulado Suministrado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_psuministro p ' +
                                         'INNER JOIN anexo_suministro a ON (a.sContrato = p.sContrato And a.iFolio = p.iFolio) ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;
        rxAcumulados.Append ;
        rxAcumulados.FieldValues['sFase'] := 'SUMINISTRADO' ;
        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumulados.FieldValues['dCantidad'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Anexo.FieldValues['dCantidadAnexo'] Then
                rxAcumulados.FieldValues['dAvance'] := '100.000 %'
            Else
                rxAcumulados.FieldValues['dAvance'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Anexo.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumulados.FieldValues['dCantidad'] := 0.000 ;
            rxAcumulados.FieldValues['dAvance'] := '0.000 %'
        End ;
        rxAcumulados.Post ;

        // Acumulado Reportado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From bitacoradeactividades p ' +
                                         'INNER JOIN reportediario a ON (a.sContrato = p.sContrato And a.sNumeroOrden = p.sNumeroOrden And a.dIdFecha = p.dIdFecha) ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;
        rxAcumulados.Append ;
        rxAcumulados.FieldValues['sFase'] := 'REPORTADO' ;
        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumulados.FieldValues['dCantidad'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Anexo.FieldValues['dCantidadAnexo'] Then
                rxAcumulados.FieldValues['dAvance'] := '100.000 %'
            Else
                rxAcumulados.FieldValues['dAvance'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Anexo.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumulados.FieldValues['dCantidad'] := 0.000 ;
            rxAcumulados.FieldValues['dAvance'] := '0.000 %'
        End ;
        rxAcumulados.Post ;

        // Acumulado Generado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From estimacionxpartida p ' +
                                         'INNER JOIN estimaciones a ON (a.sContrato = p.sContrato And a.sNumeroOrden = p.sNumeroOrden And a.sNumeroGenerador = p.sNumeroGenerador And a.lStatus = "Autorizado") ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;
        rxAcumulados.Append ;
        rxAcumulados.FieldValues['sFase'] := 'GENERADO' ;
        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumulados.FieldValues['dCantidad'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Anexo.FieldValues['dCantidadAnexo'] Then
                rxAcumulados.FieldValues['dAvance'] := '100.000 %'
            Else
                rxAcumulados.FieldValues['dAvance'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Anexo.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumulados.FieldValues['dCantidad'] := 0.000 ;
            rxAcumulados.FieldValues['dAvance'] := '0.000 %'
        End ;
        rxAcumulados.Post ;
    End ;
end;

procedure TfrmConsultaActividad5.GridReportesDiariosDblClick(
  Sender: TObject);
begin
 If Bitacora.RecordCount > 0 Then
   // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'], Bitacora.FieldValues['dIdFecha'], '' , frmConsultaActividad5, rDiario.OnGetValue )
end;

procedure TfrmConsultaActividad5.GridRequisicionesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Shift = [ssCtrl]) and (Key = VK_DELETE)then
 Key := 0;

end;

procedure TfrmConsultaActividad5.Grid_ResumenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
      Key := 0; {ignore}
end;

procedure TfrmConsultaActividad5.Grid_ResumenMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaActividad5.Grid_ResumenMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaActividad5.Grid_ResumenTitleClick(Column: TColumn);
begin
 UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad5.rDiarioGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSuperIntendente
      Else
          Value := sPuestoSuperIntendentePatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisor
      Else
          Value := sPuestoSupervisorPatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisorTierra
      Else
          Value := sPuestoResidente ;

  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;
  If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := sPlataformaOrden  ;
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
end;

procedure TfrmConsultaActividad5.rxAcumuladosGralAfterScroll(DataSet: TDataSet);
begin
  cd_insumos.Filtered:=False;
  cd_insumos.Filter:= 'sContrato='+QuotedStr(rxAcumuladosGral.FieldByName('sContrato').AsString)+' and sNumeroActividad='+QuotedStr(rxAcumuladosGral.FieldByName('sNumeroActividad').AsString);
  cd_insumos.Filtered:=True;
end;

procedure TfrmConsultaActividad5.Salir1Click(Sender: TObject);
begin
    close;
end;

procedure TfrmConsultaActividad5.GridGeneradoresDblClick(Sender: TObject);
begin
  try
      If lfnValidaGenerador (global_contrato, global_convenio, Generado.FieldValues['sNumeroOrden'], Generado.FieldValues['sNumeroGenerador'] , frmConsultaActividad5 ) Then
      Begin
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select * From ordenesdetrabajo where sContrato = :Contrato') ;
          connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
          Connection.qryBusca.Open ;
          If Connection.qryBusca.RecordCount > 1 Then
              procCaratulaGenerador (0, global_contrato, Generado.FieldValues['iNumeroEstimacion'] , Generado.FieldValues['sNumeroOrden'] , Generado.FieldValues['sNumeroGenerador'] , global_convenio, frmConsultaActividad5, frGenerador.OnGetValue, True)
          Else
              procCaratulaGenerador (0, global_contrato, Generado.FieldValues['iNumeroEstimacion'] , Generado.FieldValues['sNumeroOrden'] , Generado.FieldValues['sNumeroGenerador'] , global_convenio, frmConsultaActividad5, frGenerador.OnGetValue, False)
      End
      Else
            MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultadeActividades5', 'Al doble click en la cuadricula de generadores', 0);
      end;
  end;
end;

procedure TfrmConsultaActividad5.frGeneradorGetValue(const VarName: String;
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
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Orden').Value := QryGenerador.FieldValues['sNumeroOrden'] ;
      connection.qryBusca.Params.ParamByName('Generador').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Generador').Value := QryGenerador.FieldValues['sNumeroGenerador'] ;
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'] ;
      connection.qryBusca.Params.ParamByName('Referencia').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Referencia').Value := QryGenerador.FieldValues['sIsometricoReferencia'] ;
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
      Connection.qryBusca.SQL.Add('Select * From convenios Where sContrato = :Contrato And sIdConvenio = :convenio') ;
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio ;
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

procedure TfrmConsultaActividad5.ImprimirKardexdelaPartida1Click(
  Sender: TObject);
begin


  try
     frxReporte.LoadFromFile(Global_Files + global_miReporte + '_ALMkardex_partida.fr3') ;
     if not FileExists(global_files + global_miReporte + '_ALMkardex_partida.fr3') then
      showmessage('El archivo de reporte '+global_Mireporte+'_ALMkardex_partida.fr3 no existe, notifique al administrador del sistema');
     frxReporte.ShowReport(connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP));
  except
      on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_consultadeactividades5', 'Al imprimir kardex de partida', 0);
      end;
  end;
end;



procedure TfrmConsultaActividad5.ImprimirKardexdelasPartidasSeleccionads1Click(
  Sender: TObject);
begin
  partidas.Active := False ;
  partidas.Params.ParamByName('Contrato').DataType := ftString ;
  partidas.Params.ParamByName('Contrato').Value := global_contrato ;
  partidas.Params.ParamByName('Convenio').DataType := ftString ;
  partidas.Params.ParamByName('Convenio').Value := global_convenio ;
  partidas.Open;
  chPartidas.Properties.Items.Clear;
  while not partidas.Eof do
  begin
    chPartidas.Properties.Items.Add.Description:=partidas.FieldByName('sNumeroActividad').AsString;
    partidas.Next;
  end;
  Crear_Form(Panel1, 'Partidas', 75, 380, []);
end;

procedure TfrmConsultaActividad5.ImprimirKardexGeneral1Click(
  Sender: TObject);
var
  qryinsumos: TZQuery;
begin


  try
    If rxAcumuladosGral.RecordCount > 0 Then
        rxAcumuladosGral.EmptyTable ;

    if cd_insumos.active then
      cd_insumos.EmptyDataSet
    else
    begin
      cd_insumos.CreateDataSet;
      cd_insumos.Open;
    end;

    qryinsumos := TZQuery.Create(nil);
    qryinsumos.Connection := Connection.zConnection;

    Connection.qryBusca2.Active := False ;
    Connection.qryBusca2.SQL.Clear ;
    Connection.qryBusca2.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dVentaMN, dVentaDLL, sIdFase, sWbs From actividadesxanexo Where ' +
                                      'sContrato = :Contrato And sIdConvenio = :Convenio Order By iItemOrden' ) ;
    connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    connection.qryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
    connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
    connection.qryBusca2.Params.ParamByName('Convenio').Value := global_Convenio ;
    Connection.qryBusca2.Open ;

    bAvance.MinValue := 0 ;
    bAvance.MaxValue := Connection.qryBusca2.RecordCount ;
    bAvance.Progress := 0 ;
    bAvance.Visible := True ;
    While NOt Connection.qryBusca2.Eof Do
    Begin
        // Encabezado de la Partida ...
        rxAcumuladosGral.Append ;
        rxAcumuladosGral.FieldValues['sContrato'] := global_contrato ;
        rxAcumuladosGral.FieldValues['sIdFase'] := Connection.qryBusca2.FieldValues['sIdFase'] ;
        rxAcumuladosGral.FieldValues['sNumeroActividad'] := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
        rxAcumuladosGral.FieldValues['sMedida'] := Connection.qryBusca2.FieldValues['sMedida'] ;
        rxAcumuladosGral.FieldValues['mDescripcion'] := Connection.qryBusca2.FieldValues['mDescripcion'] ;
        rxAcumuladosGral.FieldValues['dCantidadAnexo'] := Connection.qryBusca2.FieldValues['dCantidadAnexo'] ;
        rxAcumuladosGral.FieldValues['dVentaMN'] := Connection.qryBusca2.FieldValues['dVentaMN'] ;

        // Acumulado Requisitado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_prequisicion p ' +
                                         'INNER JOIN anexo_requisicion a ON (a.sContrato = p.sContrato And a.sNumFolio = p.iFolioRequisicion) ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;

        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumuladosGral.FieldValues['dCantidadRequisicion'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                rxAcumuladosGral.FieldValues['dAvanceRequisicion'] := '100.000 %'
            Else
                rxAcumuladosGral.FieldValues['dAvanceRequisicion'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumuladosGral.FieldValues['dCantidadRequisicion'] := 0.000 ;
            rxAcumuladosGral.FieldValues['dAvanceRequisicion'] := '0.000 %'
        End ;

        // Acumulado Orden de Compra ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_ppedido p ' +
                                         'INNER JOIN anexo_pedidos a ON (a.sContrato = p.sContrato And a.iFolioPedido = p.iFolioPedido) ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;
        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumuladosGral.FieldValues['dCantidadFincado'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                rxAcumuladosGral.FieldValues['dAvanceFincado'] := '100.000 %'
            Else
                rxAcumuladosGral.FieldValues['dAvanceFincado'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumuladosGral.FieldValues['dCantidadFincado'] := 0.000 ;
            rxAcumuladosGral.FieldValues['dAvanceFincado'] := '0.000 %'
        End ;

        // Acumulado Suministrado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_psuministro p ' +
                                         'INNER JOIN anexo_suministro a ON (a.sContrato = p.sContrato And a.iFolio = p.iFolio) ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;

        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumuladosGral.FieldValues['dCantidadSuministro'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                rxAcumuladosGral.FieldValues['dAvanceSuministro'] := '100.000 %'
            Else
                rxAcumuladosGral.FieldValues['dAvanceSuministro'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumuladosGral.FieldValues['dCantidadSuministro'] := 0.000 ;
            rxAcumuladosGral.FieldValues['dAvanceSuministro'] := '0.000 %'
        End ;

        // Acumulado Reportado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From bitacoradeactividades p ' +
                                         'INNER JOIN reportediario a ON (a.sContrato = p.sContrato And a.sNumeroOrden = p.sNumeroOrden And a.dIdFecha = p.dIdFecha) ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;

        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumuladosGral.FieldValues['dCantidadReportado'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                rxAcumuladosGral.FieldValues['dAvanceReportado'] := '100.000 %'
            Else
                rxAcumuladosGral.FieldValues['dAvanceReportado'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumuladosGral.FieldValues['dCantidadReportado'] := 0.000 ;
            rxAcumuladosGral.FieldValues['dAvanceReportado'] := '0.000 %'
        End ;

        // Acumulado Generado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From estimacionxpartida p ' +
                                         'INNER JOIN estimaciones a ON (a.sContrato = p.sContrato And a.sNumeroOrden = p.sNumeroOrden And a.sNumeroGenerador = p.sNumeroGenerador And a.lStatus = "Autorizado") ' +
                                         'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;
        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumuladosGral.FieldValues['dCantidadGenerado'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                rxAcumuladosGral.FieldValues['dAvanceGenerado'] := '100.000 %'
            Else
                rxAcumuladosGral.FieldValues['dAvanceGenerado'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumuladosGral.FieldValues['dCantidadGenerado'] := 0.000 ;
            rxAcumuladosGral.FieldValues['dAvanceGenerado'] := '0.000 %'
        End ;

        // Acumulado Estimado ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From actividadesxestimacion p ' +
                                    'INNER JOIN estimaciones a ON (a.sContrato = p.sContrato And a.iNumeroEstimacion = p.iNumeroEstimacion) ' +
                                    'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sContrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca.Open ;
        If NOT Connection.qryBusca.FieldByName('dCantidad').IsNull Then
        Begin
            rxAcumuladosGral.FieldValues['dCantidadEstimado'] := Connection.qryBusca.FieldValues['dCantidad']  ;
            If Connection.qryBusca.FieldValues['dCantidad'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] Then
                rxAcumuladosGral.FieldValues['dAvanceEstimado'] := '100.000 %'
            Else
                rxAcumuladosGral.FieldValues['dAvanceEstimado'] := Trim(FloatToStr(RoundTo((Connection.qryBusca.FieldValues['dCantidad'] / Connection.qryBusca2.FieldValues['dCantidadAnexo']) * 100 , -3 )) + ' %') ;
        End
        Else
        Begin
            rxAcumuladosGral.FieldValues['dCantidadEstimado'] := 0.000 ;
            rxAcumuladosGral.FieldValues['dAvanceEstimado'] := '0.000 %'
        End ;
        rxAcumuladosGral.Post ;
        bAvance.Progress := Connection.qryBusca2.RecNo ;

        {$REGION 'Insumos'}
        zq_InsxPar.Active := False;
        zq_InsxPar.ParamByName('contrato').AsString := global_contrato;
        zq_InsxPar.ParamByName('wbs').AsString := Connection.qryBusca2.FieldByName('sWbs').AsString;
        zq_InsxPar.ParamByName('actividad').AsString := Connection.qryBusca2.FieldByName('sNumeroActividad').AsString;
        zq_InsxPar.Open;

        While not zq_InsxPar.Eof Do
        Begin
          cd_insumos.Append;
          cd_insumos.FieldValues['sContrato'] := global_contrato;
          cd_insumos.FieldValues['sNumeroActividad'] := zq_InsxPar.FieldValues['sNumeroActividad'];;
          //cd_insumos.FieldValues['sWbs'] := zq_InsxPar.FieldValues['sWbs'];;
          cd_insumos.FieldValues['sIdInsumo'] := zq_InsxPar.FieldValues['sIdInsumo'];

          qryinsumos.Active := False ;
          qryinsumos.SQL.Clear ;
          qryinsumos.SQL.Add('select mDescripcion from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato=:Contrato)) and sIdInsumo=:insumo');
          If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
            qryinsumos.ParamByName('Contrato').Value := global_contrato
          else
            qryinsumos.ParamByName('Contrato').Value :=-1;

          qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
          qryinsumos.Open;

          cd_insumos.FieldValues['mDescripcion'] := qryinsumos.FieldValues['mDescripcion'];

          //Requisicion
          qryinsumos.Active := False ;
          qryinsumos.SQL.Clear ;
          qryinsumos.SQL.Add('Select a.iFolioRequisicion, a.dIdFecha, a.sReferencia, p.dCantidad From anexo_prequisicion p ' +
                            'INNER JOIN anexo_requisicion a ON (a.sContrato = p.sContrato And a.sNumFolio = p.iFolioRequisicion) ' +
                            'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad And p.sIdInsumo=:insumo');
          qryinsumos.ParamByName('Contrato').AsString:=global_contrato;
          qryinsumos.ParamByName('Actividad').AsString:=zq_InsxPar.FieldByName('sNumeroActividad').AsString;
          qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
          qryinsumos.Open;

          cd_insumos.FieldValues['dFechaReq'] := qryinsumos.FieldValues['dIdFecha'];
          cd_insumos.FieldValues['iFolioReq'] := qryinsumos.FieldValues['iFolioRequisicion'];
          cd_insumos.FieldValues['sReferenciaReq'] := qryinsumos.FieldValues['sReferencia'];
          cd_insumos.FieldValues['dCantidadReq'] := qryinsumos.FieldValues['dCantidad'];

          //Orden de compra
          qryinsumos.Active := False ;
          qryinsumos.SQL.Clear ;
          qryinsumos.SQL.Add('Select a.dIdFecha, a.iFolioPedido, a.sReferencia, p.dCantidad From anexo_ppedido p ' +
                            'INNER JOIN anexo_pedidos a ON (a.sContrato = p.sContrato And a.iFolioPedido = p.iFolioPedido) ' +
                            'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad And p.sIdInsumo=:insumo');
          qryinsumos.ParamByName('Contrato').AsString:=global_contrato;
          qryinsumos.ParamByName('Actividad').AsString:=zq_InsxPar.FieldByName('sNumeroActividad').AsString;
          qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
          qryinsumos.Open;

          cd_insumos.FieldValues['dFechaOC'] := qryinsumos.FieldValues['dIdFecha'];
          cd_insumos.FieldValues['iFolioOC'] := qryinsumos.FieldValues['iFolioPedido'];
          cd_insumos.FieldValues['sReferenciaOC'] := qryinsumos.FieldValues['sReferencia'];
          cd_insumos.FieldValues['dCantidadOC'] := qryinsumos.FieldValues['dCantidad'];

          //Reporte diario
          qryinsumos.Active := False ;
          qryinsumos.SQL.Clear ;
          qryinsumos.SQL.Add('Select b.dIdFecha, p.sNumeroOrden, b.dCantidad From bitacorademateriales b '+
                            'INNER JOIN bitacoradeactividades p ON (p.sContrato=b.sContrato And p.dIdFecha = b.dIdFecha And p.sWbs=b.sWbs) '+
                            'Where b.sContrato = :Contrato And b.sWbs = :Wbs And b.sIdMaterial=:insumo');
          qryinsumos.ParamByName('Contrato').AsString:=global_contrato;
          qryinsumos.ParamByName('Wbs').AsString:=zq_InsxPar.FieldByName('sWbs').AsString;
          qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
          qryinsumos.Open;

          cd_insumos.FieldValues['dFechaRep'] := qryinsumos.FieldValues['dIdFecha'];
          cd_insumos.FieldValues['sReferenciaRep'] := qryinsumos.FieldValues['sNumeroOrden'];
          cd_insumos.FieldValues['dCantidadRep'] := qryinsumos.FieldValues['dCantidad'];

          //Suministro
          qryinsumos.Active := False ;
          qryinsumos.SQL.Clear ;
          qryinsumos.SQL.Add('Select p.iFolioSuministro, p.dFecha, p.sNumeroOrden, p.dCantidad From alm_suministroinsumos p ' +
                            'INNER JOIN anexo_suministro a ON (a.sContrato = p.sContrato And a.iFolio = p.iFolioSuministro) ' +
                            'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad And p.sIdInsumo=:insumo');
          qryinsumos.ParamByName('Contrato').AsString:=global_contrato;
          qryinsumos.ParamByName('Actividad').AsString:=zq_InsxPar.FieldByName('sNumeroActividad').AsString;
          qryinsumos.ParamByName('insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
          qryinsumos.Open;

          cd_insumos.FieldValues['dFechaSum'] := qryinsumos.FieldValues['dFecha'];
          //cd_insumos.FieldValues['iFolioReq'] := qryinsumos.FieldValues['iFolioRequisicion'];
          cd_insumos.FieldValues['sReferenciaSum'] := qryinsumos.FieldValues['sNumeroOrden'];
          cd_insumos.FieldValues['dCantidadSum'] := qryinsumos.FieldValues['dCantidad'];

          cd_insumos.Post;
          zq_InsxPar.Next;
        End;
        {$ENDREGION}
        Connection.qryBusca2.Next
    End ;
    bAvance.MinValue := 0 ;
    bAvance.Visible := False ;
    frxReporteGral.LoadFromFile(global_files + global_miReporte + '_ALMKardexGral_PartidasInsumos.fr3');
    if not FileExists(global_files + global_miReporte + '_ALMKardexGral_PartidasInsumos.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMKardexGral_PartidasInsumos.fr3 no existe, notifique al administrador del sistema');
    frxReporteGral.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultadeActividades5', 'Al imprimir el kardex General', 0);
    end;
  end;
end;

End.
