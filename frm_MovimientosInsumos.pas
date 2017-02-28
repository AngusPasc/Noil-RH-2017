unit frm_MovimientosInsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  Mask, Grids, DBGrids, global, Buttons, frxClass, frxDBSet, ToolWin,
  Menus, RXDBCtrl, RxLookup, utilerias, RxMemDS, ImgList, Math, Newpanel,
  Gauges, ZAbstractRODataset, ZDataset, udbgrid, unitexcepciones,
  UFunctionsGHH, UnitTBotonesPermisos, NxPageControl,masUtilerias, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu, FormAutoScaler;

type
  TfrmMovimientosInsumos = class(TForm)
    ds_Requisiciones: TDataSource;
    ds_OrdendeCompra: TDataSource;
    Panel: TImageList;
    PanelPrincipal: TListView;
    frxRequisiciones: TfrxDBDataset;
    frxOrdendeCompra: TfrxDBDataset;
    OrdendeCompra: TZReadOnlyQuery;
    Requisiciones: TZReadOnlyQuery;
    Paginas: TNxPageControl;
    pRequisiciones: TNxTabSheet;
    pOrdenesdeCompra: TNxTabSheet;
    pEntradasAlmacen: TNxTabSheet;
    pSalidasAlmacen: TNxTabSheet;
    dsInsumos: TDataSource;
    qryInsumos: TZReadOnlyQuery;
    qryEntrdasAlmacen: TZReadOnlyQuery;
    dsEntradasAlmacen: TDataSource;
    frxEntradasAlmacen: TfrxDBDataset;
    qrySalidasAlmacen: TZReadOnlyQuery;
    dsSalidasAlmacen: TDataSource;
    frxSalidasAlmacen: TfrxDBDataset;
    Reporte: TfrxReport;
    frxInsumo: TfrxDBDataset;
    qryReporteInsumos: TZReadOnlyQuery;
    GroupBox1: TGroupBox;
    imgNotas: TImage;
    qryMResumen: TRxMemoryData;
    dsMresumen: TDataSource;
    GroupBox2: TGroupBox;
    sBitBtn1: TButton;
    sBitBtn2: TButton;
    pRecepcionDeMateriales: TNxTabSheet;
    qryRecepcionDeMateriales: TZReadOnlyQuery;
    dsRecepcionDeMateriales: TDataSource;
    frxRecepcionDeMateriales: TfrxDBDataset;
    qryRecepcionDeMaterialesdFechaRecepcion: TDateField;
    qryRecepcionDeMaterialessFolio: TStringField;
    qryRecepcionDeMaterialesdCantidad: TFloatField;
    qryRecepcionDeMaterialessIdInsumo: TStringField;
    qryRecepcionDeMaterialessIdAlmacen: TStringField;
    qryRecepcionDeMaterialesShortDesc: TStringField;
    chkRequisicion: TCheckBox;
    chkOrdenCompra: TCheckBox;
    chkEntradas: TCheckBox;
    chkSalidas: TCheckBox;
    chkRecepciones: TCheckBox;
    Label3: TLabel;
    qryMResumendFechaReq: TDateField;
    qryMResumensReferenciaReq: TStringField;
    qryMResumendCantidadReq: TFloatField;
    qryMResumendFechaOC: TDateField;
    qryMResumensReferenciaOC: TStringField;
    qryMResumendCantidadOC: TFloatField;
    qryMResumeniFolioReq: TIntegerField;
    qryMResumeniFolioOC: TIntegerField;
    qryMResumendFechaEnt: TDateField;
    qryMResumeniFolioEnt: TIntegerField;
    qryMResumensReferenciaEnt: TStringField;
    qryMResumendCantidadEnt: TFloatField;
    qryMResumendFechaSal: TDateField;
    qryMResumeniFolioSal: TIntegerField;
    qryMResumensReferenciaSal: TStringField;
    qryMResumendCantidadSal: TFloatField;
    qryMResumendFechaRecep: TDateField;
    qryMResumeniFolioRecep: TIntegerField;
    qryMResumensReferenciaRecep: TStringField;
    qryMResumendCantidadRecep: TFloatField;
    qryMResumensIdInsumo: TStringField;
    qryMResumenmDescripcion: TMemoField;
    qryMResumensMedida: TStringField;
    qryMResumendCantidadInicial: TFloatField;
    qryMResumendExistencia: TFloatField;
    rxMovimientos: TRxMemoryData;
    ds_movimientos: TDataSource;
    rxMovimientosDescripcion: TStringField;
    rxMovimientosFecha: TDateField;
    rxMovimientosCantidad: TFloatField;
    PanelProgress: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    BarraEstado: TProgressBar;
    qryMResumensNumFolio: TStringField;
    qryMResumensOrdenCompra: TStringField;
    gridRequisiciones: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    gridOrdenesdeCompra: TcxGrid;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column6: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView3: TcxGridDBTableView;
    cxgrdlvlGrid1Level3: TcxGridLevel;
    gridGridEntradasAlmacen: TcxGrid;
    cxgrdbclmnGrid1DBTableView3Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column6: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView4: TcxGridDBTableView;
    cxgrdlvlGrid1Level4: TcxGridLevel;
    gridSalidasAlmacen: TcxGrid;
    cxgrdbclmnGrid1DBTableView4Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column5: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView5: TcxGridDBTableView;
    cxgrdlvlGrid1Level5: TcxGridLevel;
    rxDBGrid1: TcxGrid;
    cxgrdbclmnGrid1DBTableView5Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column6: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView6: TcxGridDBTableView;
    cxgrdlvlGrid1Level6: TcxGridLevel;
    grid_Movimientos: TcxGrid;
    cxgrdbclmnGrid1DBTableView6Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView6Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView6Column3: TcxGridDBColumn;
    dbGrid2: TcxGrid;
    cxgrdbtblvwGrid1DBTableView7: TcxGridDBTableView;
    cxgrdlvlGrid1Level7: TcxGridLevel;
    cxgrdbclmnGrid1DBTableView7Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView7Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView7Column3: TcxGridDBColumn;
    Colfamilia: TcxGridDBColumn;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PanelPrincipalClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);

    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);

    procedure llenarGrid ;
    procedure PaginasKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure FormContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure gridOrdenesdeCompraExit(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView3KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView4KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure rxDBGrid1Enter(Sender: TObject);
    procedure rxDBGrid1Exit(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView5KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView6KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView7EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView7KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView7KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView7CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    sMenuP: string;

    { Private declarations }
  public
    { Public declarations }
    procedure CargarResumen;
    procedure CargarMovimientos;
  end;

var
  frmMovimientosInsumos: TfrmMovimientosInsumos;
  utgrid: ticdbgrid;
  utgrid2: ticdbgrid;
  BotonPermiso: TBotonesPermisos;

  IdInsumo : string;
implementation

uses frm_comentariosxanexo;

{$R *.dfm}

procedure TfrmMovimientosInsumos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  action := cafree;
end;

procedure TfrmMovimientosInsumos.FormContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
    Handled := True;
end;

procedure TfrmMovimientosInsumos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 llenarGrid() ;
end;

procedure TfrmMovimientosInsumos.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  llenarGrid() ;
end;

procedure TfrmMovimientosInsumos.FormShow(Sender: TObject);
begin
  try

    chkRequisicion.Checked := True;
    chkOrdenCompra.Checked := True;
    chkSalidas.Checked     := True;
    chkEntradas.Checked    := True;
    chkRecepciones.Checked := True;

    QryInsumos.Active := false;
    QryInsumos.ParamByName('contrato').AsString := global_contrato;
   {QryInsumos.ParamByName('descripcion').AsString := '%';
    QryInsumos.ParamByName('insumo').AsString := '%';
    if grupos.FieldValues['sIdFamilia'] = 'S/F' then
       QryInsumos.ParamByName('familia').AsString := '%'
    else
       QryInsumos.ParamByName('familia').AsString := grupos.FieldValues['sIdFamilia'] +'%';  }
    QryInsumos.Open;

    pEntradasAlmacen.TabVisible := false;
    pRequisiciones.TabVisible := True;
    pOrdenesdeCompra.TabVisible := false;
    pSalidasAlmacen.TabVisible := false;
    pRecepciondeMateriales.TabVisible := false;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultadeActividades5', 'Al iniciar el formulario', 0);
    end;
  end;
end;

procedure TfrmMovimientosInsumos.gridOrdenesdeCompraExit(Sender: TObject);
begin
  GridOrdenesdeCompra.Color := global_color_salidaERP;
end;



procedure TfrmMovimientosInsumos.CargarResumen;
var
  qry: TZReadOnlyQuery;
  x, conteo, maximo, maximoMin : integer;
  dSuma : double;
begin
  qry := TZReadOnlyQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  QryMResumen.Append;
  QryMResumen.FieldValues['sIdInsumo']    := qryReporteInsumos.FieldValues['sIdInsumo'];
  QryMResumen.FieldValues['mDescripcion'] := qryReporteInsumos.FieldValues['mDescripcion'];
  QryMResumen.FieldValues['sMedida']      := qryReporteInsumos.FieldValues['sMedida'];
  QryMResumen.FieldValues['dCantidadInicial'] := qryReporteInsumos.FieldValues['dCantidad'];
  QryMResumen.FieldValues['dExistencia']  := qryReporteInsumos.FieldValues['dExistencia'];
  QryMResumen.Post;

  {Requisiciones}
  if chkRequisicion.Checked then
  begin
      Qry.Active := false;
      Qry.SQL.Clear;
      Qry.SQL.Add('Select f.sContrato, f.dIdFecha, f.iFolioRequisicion, f.sReferencia, f.sNumeroOrden, '+
                  'e.sNumeroActividad, e.iItem, e.dCantidad, e.sMedida, e.dfechaRequerimiento, f.sNumfolio '+
                  'From anexo_prequisicion e '+
                  'inner join anexo_requisicion f on (e.sContrato = f.sContrato And e.iFolioRequisicion = f.sNumFolio) '+
                  'where e.sContrato = :contrato And e.sIdInsumo= :insumo  Order By f.dIdFecha, e.iItem');
      Qry.ParamByName('contrato').AsString := global_Contrato;
      Qry.ParamByName('insumo').AsString   := qryReporteInsumos.FieldByName('sIdInsumo').AsString;
      Qry.Open;

      if Qry.RecordCount > 0 then
      begin
          for x := 1 to maximo - 1 do
              qryMResumen.Prior;
          conteo := 1;

          if maximo = 0 then
             maximo := 1;
      end;

      dSuma  := 0;
      //Llenamos el rx con los datos de las requisicones.
      while not Qry.Eof do
      begin
          if conteo <= maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;
          QryMResumen.FieldByName('dFechaReq').AsDateTime    := Qry.FieldValues['dIdFecha'];
          QryMResumen.FieldByName('iFolioReq').AsInteger     := Qry.FieldValues['iFolioRequisicion'];
          QryMResumen.FieldByName('sNumfolio').AsString      := Qry.FieldValues['sNumFolio'];
          QryMResumen.FieldByName('sReferenciaReq').AsString := Qry.FieldValues['sNumeroOrden'];
          QryMResumen.FieldByName('dCantidadReq').AsFloat    := Qry.FieldValues['dCantidad'];
          QryMResumen.Post;

          dSuma := dSuma + Qry.FieldValues['dCantidad'];
          if conteo <= maximo then
             QryMResumen.Next;
          inc(conteo);
          Qry.Next;
      end;

      if Qry.RecordCount > 0 then
      begin
          if conteo <= maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;

          QryMResumen.FieldByName('sReferenciaReq').AsString := 'TOTAL';
          QryMResumen.FieldByName('dCantidadReq').AsFloat := dSuma;
          QryMResumen.Post;

          if conteo > maximo then
             maximo := conteo;

          MaximoMin := conteo;
      end;
  end;

  {Ordenes de compra}
  if chkOrdencompra.Checked then
  begin
      Qry.Active := false;
      Qry.SQL.Clear;
      Qry.SQL.Add('Select f.sContrato, f.dIdFecha, f.dfechaEntrega, f.iFolioPedido, f.sReferencia, f.sNumeroOrden, '+
                  'e.sNumeroActividad, e.iItem, e.dCantidad, f.sOrdenCompra From anexo_ppedido e '+
                  'inner join anexo_pedidos f on (e.sContrato = f.sContrato And e.iFolioPedido = f.iFolioPedido) '+
                  'where e.sContrato = :contrato And e.sIdInsumo= :insumo Order By f.dIdFecha,  e.iItem ');
      Qry.ParamByName('contrato').AsString := global_Contrato;
      Qry.ParamByName('insumo').AsString   := qryReporteInsumos.FieldByName('sIdInsumo').AsString;
      Qry.Open;

      if Qry.RecordCount > 0 then
      begin
          MaximoMin := maximo;
          if maximo > conteo then
             MaximoMin := conteo;

          for x := 1 to maximoMin - 1 do
              qryMResumen.Prior;
          conteo := 1;

          if maximo = 0 then
             maximo := 1;
      end;

      dSuma  := 0;
      //Llenamos el rx con los datos de las ordenes de compra.
      while not Qry.Eof do
      begin
          if conteo <= maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;
          QryMResumen.FieldByName('dFechaOC').AsDateTime    := Qry.FieldValues['dIdFecha'];
          QryMResumen.FieldByName('iFolioOC').AsInteger     := Qry.FieldValues['iFolioPedido'];
          QryMResumen.FieldByName('sOrdenCompra').AsString  := Qry.FieldValues['sOrdenCompra'];
          QryMResumen.FieldByName('sReferenciaOC').AsString := Qry.FieldValues['sNumeroOrden'];
          QryMResumen.FieldByName('dCantidadOC').AsFloat    := Qry.FieldValues['dCantidad'];
          QryMResumen.Post;

          dSuma := dSuma + Qry.FieldValues['dCantidad'];
          if conteo <= maximo then
             QryMResumen.Next;
          inc(conteo);
          Qry.Next;
      end;

      if Qry.RecordCount > 0 then
      begin
          if conteo <= maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;

          QryMResumen.FieldByName('sReferenciaOC').AsString := 'TOTAL';
          QryMResumen.FieldByName('dCantidadOC').AsFloat    := dSuma;
          QryMResumen.Post;

          if conteo > maximo then
             maximo := conteo;

          MaximoMin := conteo;
      end;
  end;

  {Entradas al almacen}
  if chkEntradas.Checked then
  begin
      Qry.Active := false;
      Qry.SQL.Clear;
      Qry.SQL.Add('select e.*, b.dCantidad from almacen_entrada e inner join bitacoradeentrada b '+
                  'on b.sContrato=e.sContrato and b.iFolioEntrada=e.iFolioEntrada and b.sIdAlmacen=e.sIdAlmacen '+
                  'where e.sContrato=:contrato and b.sIdInsumo=:insumo order by e.dFecha ');
      Qry.ParamByName('contrato').AsString := global_Contrato;
      Qry.ParamByName('insumo').AsString   := qryReporteInsumos.FieldByName('sIdInsumo').AsString;
      Qry.Open;

      if Qry.RecordCount > 0 then
      begin
          MaximoMin := maximo;
          if maximo > conteo then
             MaximoMin := conteo;

          for x := 1 to maximoMin - 1 do
              qryMResumen.Prior;
          conteo := 1;

          if maximo = 0 then
             maximo := 1;
      end;

      dSuma  := 0;
      //Llenamos el rx con los datos de las entradas.
      while not Qry.Eof do
      begin
          if conteo <= maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;
          QryMResumen.FieldByName('dFechaEnt').AsDateTime    := Qry.FieldValues['dFecha'];
          QryMResumen.FieldByName('iFolioEnt').AsInteger     := Qry.FieldValues['iFolioEntrada'];
          QryMResumen.FieldByName('sReferenciaEnt').AsString := Qry.FieldValues['sNumeroOrden'];
          QryMResumen.FieldByName('dCantidadEnt').AsFloat    := Qry.FieldValues['dCantidad'];
          QryMResumen.Post;

          dSuma := dSuma + Qry.FieldValues['dCantidad'];
          if conteo <= maximo then
             QryMResumen.Next;
          inc(conteo);
          Qry.Next;
      end;

      if Qry.RecordCount > 0 then
      begin
          if conteo <= maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;

          QryMResumen.FieldByName('sReferenciaEnt').AsString := 'TOTAL';
          QryMResumen.FieldByName('dCantidadEnt').AsFloat    := dSuma;
          QryMResumen.Post;

          if conteo > maximo then
             maximo := conteo;

          MaximoMin := conteo;
      end;
  end;

  {Salidas al almacen}
  if chkSalidas.Checked then
  begin
      Qry.Active := false;
      Qry.SQL.Clear;
      Qry.SQL.Add('select e.*, b.dCantidad from almacen_salida e inner join bitacoradesalida b '+
                  'on b.sContrato=e.sContrato and b.iFolioSalida=e.iFolioSalida '+
                  'where e.sContrato=:contrato and b.sIdInsumo=:insumo order by b.dFechaSalida ');
      Qry.ParamByName('contrato').AsString := global_Contrato;
      Qry.ParamByName('insumo').AsString   := qryReporteInsumos.FieldByName('sIdInsumo').AsString;
      Qry.Open;

      if Qry.RecordCount > 0 then
      begin
          MaximoMin := maximo;
          if maximo > conteo then
             MaximoMin := conteo;

          for x := 1 to maximoMin - 1 do
              qryMResumen.Prior;
          conteo := 1;

          if maximo = 0 then
             maximo := 1;
      end;

      dSuma  := 0;
      //Llenamos el rx con los datos de las salidas
      while not Qry.Eof do
      begin
          if conteo <= maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;
          QryMResumen.FieldByName('dFechaSal').AsDateTime    := Qry.FieldValues['dFechaSalida'];
          QryMResumen.FieldByName('iFolioSal').AsInteger     := Qry.FieldValues['iFolioSalida'];
          QryMResumen.FieldByName('sReferenciaSal').AsString := Qry.FieldValues['sNumeroOrden'];
          QryMResumen.FieldByName('dCantidadSal').AsFloat    := Qry.FieldValues['dCantidad'];
          QryMResumen.Post;

          dSuma := dSuma + Qry.FieldValues['dCantidad'];
          if conteo <= maximo then
             QryMResumen.Next;
          inc(conteo);
          Qry.Next;
      end;

      if Qry.RecordCount > 0 then
      begin
          if conteo < maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;

          QryMResumen.FieldByName('sReferenciaSal').AsString := 'TOTAL';
          QryMResumen.FieldByName('dCantidadSal').AsFloat    := dSuma;
          QryMResumen.Post;

          if conteo > maximo then
             maximo := conteo;

          MaximoMin := conteo;
      end;
  end;

  {Recepcion de materiales}
  if chkRecepciones.Checked then
  begin
      Qry.Active := false;
      Qry.SQL.Clear;
      Qry.SQL.Add('SELECT	a.iId_recepcion, b.dFechaRecepcion, b.sFolio, a.dCantidad, a.sIdInsumo, b.sIdAlmacen, SUBSTR(b.mNotas, 1, 255) AS ShortDesc '+
                  'FROM alm_recepciondemateriales_detalle AS a '+
                  'INNER JOIN alm_recepciondemateriales AS b '+
                  'ON (b.iId = a.iId_recepcion) '+
                  'WHERE a.sIdInsumo = :Insumo AND b.sContrato = :Contrato ORDER BY b.dFechaRecepcion DESC');
      Qry.ParamByName('contrato').AsString := global_Contrato;
      Qry.ParamByName('insumo').AsString   := qryReporteInsumos.FieldByName('sIdInsumo').AsString;
      Qry.Open;

      if Qry.RecordCount > 0 then
      begin
          MaximoMin := maximo;
          if maximo > conteo then
             MaximoMin := conteo;

          for x := 1 to maximoMin - 1 do
              qryMResumen.Prior;
          conteo := 1;

          if maximo = 0 then
             maximo := 1;
      end;

      dSuma  := 0;
      //Llenamos el rx con los datos de las recepciones de materiales..
      while not Qry.Eof do
      begin
          if conteo <= maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;
          QryMResumen.FieldByName('dFechaRecep').AsDateTime    := Qry.FieldValues['dFechaRecepcion'];
          QryMResumen.FieldByName('iFolioRecep').AsInteger     := Qry.FieldValues['iId_recepcion'];
          QryMResumen.FieldByName('sReferenciaRecep').AsString := IntToStr(Qry.FieldValues['iId_recepcion']);
          QryMResumen.FieldByName('dCantidadRecep').AsFloat    := Qry.FieldValues['dCantidad'];
          QryMResumen.Post;

          dSuma := dSuma + Qry.FieldValues['dCantidad'];
          if conteo <= maximo then
             QryMResumen.Next;
          inc(conteo);
          Qry.Next;
      end;

      if Qry.RecordCount > 0 then
      begin
          if conteo < maximo then
             QryMResumen.Edit
          else
             QryMResumen.Append;

          QryMResumen.FieldByName('sReferenciaRecep').AsString := 'TOTAL';
          QryMResumen.FieldByName('dCantidadRecep').AsFloat    := dSuma;
          QryMResumen.Post;

          if conteo > maximo then
             maximo := conteo;
      end;
  end;
end;


procedure TfrmMovimientosInsumos.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and ( Key = VK_DELETE) then
  Key := 0;
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView3KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ( Shift = [ssctrl]) and (Key = VK_DELETE) then
 Key :=0;
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView4KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and ( Key = VK_DELETE) then
 Key := 0;
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView5KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  Key := 0; 
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView6KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if  (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  Key :=0; //ykn
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView7CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 llenarGrid() ;
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView7EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (key = VK_DELETE ) then
 Key := 0; 
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView7KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 llenarGrid() ;
end;

procedure TfrmMovimientosInsumos.cxgrdbtblvwGrid1DBTableView7KeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 llenarGrid() ;
end;

procedure TfrmMovimientosInsumos.CargarMovimientos;
var
  qry: TZReadOnlyQuery;
begin
  qry := TZReadOnlyQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  rxMovimientos.Active:=false;
  rxMovimientos.Close;
  rxMovimientos.Open;

  {Requisiciones}
  Qry.Active := false;
  Qry.SQL.Clear;
  Qry.SQL.Add(' Select "Requisicion" as Descripcion, dCantidad, dFechaRequerimiento  as dFecha ');
  Qry.SQL.Add(' From anexo_prequisicion  ');
  Qry.SQL.Add(' where sContrato = :contrato And sIdInsumo= :insumo #and dFechaRequerimiento=:fecha ');
  Qry.SQL.Add(' order by dFechaRequerimiento desc, iFolioRequisicion desc ');
  Qry.SQL.Add(' limit 1 ') ;
  Qry.ParamByName('contrato').AsString := global_Contrato;
  Qry.ParamByName('insumo').AsString := qryInsumos.FieldByName('sIdInsumo').AsString;
  Qry.Open;
  if Qry.RecordCount >  0 then
  begin
      rxMovimientos.Append;
      rxMovimientos.FieldByName('Descripcion').AsString := Qry.FieldByName('Descripcion').AsString;
      rxMovimientos.FieldByName('Fecha').AsDateTime := Qry.FieldByName('dFecha').AsDateTime;
      rxMovimientos.FieldByName('Cantidad').AsFloat := Qry.FieldByName('dCantidad').AsFloat;
      rxMovimientos.Post;
  end;

  {Ordenes de Compra}
  Qry.Active := false;
  Qry.SQL.Clear;
  Qry.SQL.Add(' Select "Orden de Compra" as Descripcion, e.dCantidad , f.dIdFecha  as dFecha ');
  Qry.SQL.Add(' From anexo_ppedido e   ');
  Qry.SQL.Add(' inner join anexo_pedidos f  on (e.sContrato = f.sContrato And e.iFolioPedido = f.iFolioPedido) ');
  Qry.SQL.Add(' where e.sContrato = :contrato And e.sIdInsumo= :insumo   ');
  Qry.SQL.Add(' order by f.dIdFecha desc ');
  Qry.SQL.Add(' limit 1 ') ;
  Qry.ParamByName('contrato').AsString := global_Contrato;
  Qry.ParamByName('insumo').AsString := qryInsumos.FieldByName('sIdInsumo').AsString;
  Qry.Open;

   if Qry.RecordCount >  0 then
   begin
       rxMovimientos.Append;
       rxMovimientos.FieldByName('Descripcion').AsString := Qry.FieldByName('Descripcion').AsString;
       rxMovimientos.FieldByName('Fecha').AsDateTime := Qry.FieldByName('dFecha').AsDateTime;
       rxMovimientos.FieldByName('Cantidad').AsFloat := Qry.FieldByName('dCantidad').AsFloat;
       rxMovimientos.Post;
   end;

  {Entradas al Almacen}
  Qry.Active := false;
  Qry.SQL.Clear;
  Qry.SQL.Add(' Select concat("Entradas al Almacen ",b.sIdAlmacen) as Descripcion, dCantidad , max(dFecha) as dFecha ');
  Qry.SQL.Add(' From almacen_entrada e   ');
  Qry.SQL.Add(' inner join bitacoradeentrada b  on b.sContrato=e.sContrato and b.iFolioEntrada=e.iFolioEntrada and b.sIdAlmacen=e.sIdAlmacen ');
  Qry.SQL.Add(' where e.sContrato = :contrato And sIdInsumo= :insumo   ');
  Qry.SQL.Add(' group by b.sIdAlmacen,dFecha ');
  Qry.SQL.Add(' order by dFecha desc ');
  Qry.ParamByName('contrato').AsString := global_Contrato;
  Qry.ParamByName('insumo').AsString := qryInsumos.FieldByName('sIdInsumo').AsString;
  Qry.Open;

   if Qry.RecordCount >  0 then
   begin
      rxMovimientos.Append;
      rxMovimientos.FieldByName('Descripcion').AsString := Qry.FieldByName('Descripcion').AsString;
      rxMovimientos.FieldByName('Fecha').AsDateTime := Qry.FieldByName('dFecha').AsDateTime;
      rxMovimientos.FieldByName('Cantidad').AsFloat := Qry.FieldByName('dCantidad').AsFloat;
      rxMovimientos.Post;
   end;

  {Salidas al Almacen}
  Qry.Active := false;
  Qry.SQL.Clear;
  Qry.SQL.Add(' Select concat("Salidas del Almacen ",b.sIdAlmacen) as Descripcion, dCantidad , max(b.dFechaSalida) as dFecha ');
  Qry.SQL.Add(' From almacen_salida e   ');
  Qry.SQL.Add(' inner join bitacoradesalida b  on b.sContrato=e.sContrato and b.iFolioSalida=e.iFolioSalida ');
  Qry.SQL.Add(' where e.sContrato = :contrato And sIdInsumo= :insumo   ');
  Qry.SQL.Add(' group by b.sIdAlmacen,b.dFechaSalida ');
  Qry.SQL.Add(' order by b.dFechaSalida desc ');
  Qry.ParamByName('contrato').AsString := global_Contrato;
  Qry.ParamByName('insumo').AsString := qryInsumos.FieldByName('sIdInsumo').AsString;
  Qry.Open;

   if Qry.RecordCount >  0 then
   begin
       rxMovimientos.Append;
       rxMovimientos.FieldByName('Descripcion').AsString := Qry.FieldByName('Descripcion').AsString;
       rxMovimientos.FieldByName('Fecha').AsDateTime := Qry.FieldByName('dFecha').AsDateTime;
       rxMovimientos.FieldByName('Cantidad').AsFloat := Qry.FieldByName('dCantidad').AsFloat;
       rxMovimientos.Post;
   end;
  {Recepcion de Materiales}
  Qry.Active := false;
  Qry.SQL.Clear;
  Qry.SQL.Add(' Select concat("Recepción de materiales ",e.sIdAlmacen) as Descripcion, dCantidad , e.dFechaRecepcion as dFecha ');
  Qry.SQL.Add(' From alm_recepciondemateriales e ');
  Qry.SQL.Add(' inner join alm_recepciondemateriales_detalle b on b.iId_Recepcion=e.iId ');
  Qry.SQL.Add(' where e.sContrato = :contrato And b.sIdInsumo= :insumo  ');
  Qry.SQL.Add(' order by e.dFechaRecepcion desc, b.iId_recepcion DESC limit 1');
  Qry.ParamByName('contrato').AsString := global_Contrato;
  Qry.ParamByName('insumo').AsString := qryInsumos.FieldByName('sIdInsumo').AsString;
  Qry.Open;

   if Qry.RecordCount >  0 then
   begin
       rxMovimientos.Append;
       rxMovimientos.FieldByName('Descripcion').AsString := Qry.FieldByName('Descripcion').AsString;
       rxMovimientos.FieldByName('Fecha').AsDateTime := Qry.FieldByName('dFecha').AsDateTime;
       rxMovimientos.FieldByName('Cantidad').AsFloat := Qry.FieldByName('dCantidad').AsFloat;
       rxMovimientos.Post;
   end;
end;

procedure TfrmMovimientosInsumos.PaginasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  Key :=0;
end;

procedure TfrmMovimientosInsumos.PanelPrincipalClick(Sender: TObject);
begin
  if PanelPrincipal.ItemIndex = 0 then
  begin
    pEntradasAlmacen.TabVisible := false;
    pOrdenesdeCompra.TabVisible := false;
    pSalidasAlmacen.TabVisible := false;
    pRecepcionDeMateriales.TabVisible := false;

    pRequisiciones.TabVisible := True;
    Paginas.ActivePage := pRequisiciones;
  end;
  if PanelPrincipal.ItemIndex = 1 then
  begin
    pEntradasAlmacen.TabVisible := false;
    pRequisiciones.TabVisible := false;
    pSalidasAlmacen.TabVisible := false;
    pRecepcionDeMateriales.TabVisible := false;

    pOrdenesdeCompra.TabVisible := True;
    Paginas.ActivePage := pOrdenesdeCompra;
  end;

  if PanelPrincipal.ItemIndex = 2 then
  begin
    pRequisiciones.TabVisible := false;
    pOrdenesdeCompra.TabVisible := false;
    pSalidasAlmacen.TabVisible := false;
    pRecepcionDeMateriales.TabVisible := false;

    pEntradasAlmacen.TabVisible := true;
    Paginas.ActivePage := pEntradasAlmacen;
  end;

  if PanelPrincipal.ItemIndex = 3 then
  begin
    pEntradasAlmacen.TabVisible := false;
    pRequisiciones.TabVisible := false;
    pOrdenesdeCompra.TabVisible := false;
    pRecepcionDeMateriales.TabVisible := false;

    pSalidasAlmacen.TabVisible := True;
    Paginas.ActivePage := pSalidasAlmacen;
  end;
  if PanelPrincipal.ItemIndex = 4 then
  begin
    pEntradasAlmacen.TabVisible := false;
    pRequisiciones.TabVisible := false;
    pOrdenesdeCompra.TabVisible := false;
    pSalidasAlmacen.TabVisible := false;

    pRecepcionDeMateriales.TabVisible := True;
    Paginas.ActivePage := pRecepcionDeMateriales;
  end;

end;

procedure TfrmMovimientosInsumos.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmMovimientosInsumos.rxDBGrid1Enter(Sender: TObject);
begin
 RxDBGrid1.color := global_color_entradaERP;
end;

procedure TfrmMovimientosInsumos.rxDBGrid1Exit(Sender: TObject);
begin
 RxDBGrid1.color := global_color_salidaERP;
end;

procedure TfrmMovimientosInsumos.Salir1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMovimientosInsumos.sBitBtn1Click(Sender: TObject);
begin

  if (chkRequisicion.Checked = False) and (chkOrdenCompra.Checked = False) and (chkEntradas.Checked = False) and (chkSalidas.Checked = False) and (chkRecepciones.Checked = False) then
      messageDLG('Debe selccionar una opcion de Impresion', mtInformation, [mbOk], 0)
  else
  begin
      qryMResumen.Active := True;
      qryMResumen.EmptyTable;

      qryReporteInsumos.Active := false;
      If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
        qryReporteInsumos.ParamByName('contrato').AsString  := global_contrato
      else
        qryReporteInsumos.ParamByName('Contrato').AsInteger :=-1;

      qryReporteInsumos.ParamByName('insumo').AsString    := qryinsumos.FieldByName('sIdInsumo').AsString;
      qryReporteInsumos.ParamByName('familia').AsString   := qryInsumos.FieldByName('sIdGrupo').AsString ;
      qryReporteInsumos.Open;

      while not qryReporteInsumos.Eof do
      begin
          CargarResumen;
          qryReporteInsumos.Next;
      end;

      Reporte.LoadFromFile(global_files + global_MiReporte + '_ALMtrazabilidadinsumo.fr3');

       if not FileExists(global_files + global_miReporte + '_ALMtrazabilidadinsumo.fr3') then
   begin
     showmessage('El archivo de reporte '+global_Mireporte+'_ALMtrazabilidadinsumo.fr3 no existe, notifique al administrador del sistema');

    end;
      Reporte.ShowReport();
  end;
end;

procedure TfrmMovimientosInsumos.sBitBtn2Click(Sender: TObject);
var
   Progreso, TotalProgreso: real;
begin
    if (chkRequisicion.Checked = False) and (chkOrdenCompra.Checked = False) and (chkEntradas.Checked = False) and (chkSalidas.Checked = False) and (chkRecepciones.Checked = False) then
      messageDLG('Debe selccionar una opcion de Impresion', mtInformation, [mbOk], 0)
    else
    begin
        qryMResumen.Active := True;
        qryMResumen.EmptyTable;

        qryReporteInsumos.Active := false;
        If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
          qryReporteInsumos.ParamByName('contrato').AsString  := global_contrato
        else
          qryReporteInsumos.ParamByName('Contrato').AsInteger :=-1;
        qryReporteInsumos.ParamByName('insumo').AsString   := '%';
        qryReporteInsumos.ParamByName('familia').AsString  := qryInsumos.FieldValues['sIdGrupo'] +'%';
        qryReporteInsumos.Open;

        barraestado.Position := 0;
        PanelProgress.Visible := True;
        while not qryReporteInsumos.Eof do
        begin
            CargarResumen;
            qryReporteInsumos.Next;

            Progreso := (1 / (qryReporteInsumos.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
            TotalProgreso := TotalProgreso + Progreso;
            BarraEstado.Position := Trunc(TotalProgreso);
            PanelProgress.Refresh;

            qryMResumen.Append;
            qryMResumen.Post;
        end;
        PanelProgress.Visible := False;



      Reporte.LoadFromFile(global_files + global_MiReporte + '_ALMtrazabilidadinsumo.fr3');

       if not FileExists(global_files + global_miReporte + '_ALMtrazabilidadinsumo.fr3') then
      begin
          showmessage('El archivo de reporte '+global_Mireporte+'_ALMtrazabilidadinsumo.fr3 no existe, notifique al administrador del sistema');

      end;
      Reporte.ShowReport();
    end;
end;


procedure TfrmMovimientosInsumos.llenarGrid;
begin
  
  try
    Requisiciones.Active := false;
    Requisiciones.ParamByName('contrato').AsString := global_contrato;
    Requisiciones.ParamByName('insumo').AsString := qryinsumos.FieldByName('sIdInsumo').AsString;
    Requisiciones.Open;

    OrdendeCompra.Active := false;
    OrdendeCompra.ParamByName('contrato').AsString := global_contrato;
    OrdendeCompra.ParamByName('insumo').AsString := qryinsumos.FieldByName('sIdInsumo').AsString;
    OrdendeCompra.Open;

    qryEntrdasAlmacen.Active := false;
    qryEntrdasAlmacen.ParamByName('contrato').AsString := global_contrato;
    qryEntrdasAlmacen.ParamByName('insumo').AsString := qryinsumos.FieldByName('sIdInsumo').AsString;
    qryEntrdasAlmacen.Open;

    qrySalidasAlmacen.Active := false;
    qrySalidasAlmacen.ParamByName('contrato').AsString := global_contrato;
    qrySalidasAlmacen.ParamByName('insumo').AsString := qryinsumos.FieldByName('sIdInsumo').AsString;
    qrySalidasAlmacen.Open;

    qryRecepcionDeMateriales.Active := false;
    qryRecepcionDeMateriales.ParamByName('Contrato').AsString := global_contrato;
    qryRecepcionDeMateriales.ParamByName('Insumo').AsString := qryinsumos.FieldByName('sIdInsumo').AsString;
    qryRecepcionDeMateriales.Open;

    qryReporteInsumos.Active := false;
    If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
      qryReporteInsumos.ParamByName('contrato').AsString  := global_contrato
    else
      qryReporteInsumos.ParamByName('Contrato').AsInteger :=-1;
    qryReporteInsumos.ParamByName('insumo').AsString := qryinsumos.FieldByName('sIdInsumo').AsString;
    qryReporteInsumos.Open;

    CargarMovimientos;
  except
    on e: exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultadeActividades5', 'Al doble click en la cuadricula de generadores', 0);
    end;
  end;
end;


end.

