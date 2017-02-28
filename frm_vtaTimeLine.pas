unit frm_vtaTimeLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothPageSlider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, global, frm_connection, AdvSmoothTimeLine, NxCollection, Menus,
  ImgList, StdCtrls, cxButtons, DateUtils, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  AdvSmoothPopup;

type
  TfrmvtaTimeLine = class(TForm)
    qrCompanias: TZQuery;
    qrCompaniassIdCompania: TStringField;
    dsCompanias: TDataSource;
    qrBitacora: TZQuery;
    qrBitacoraiid: TIntegerField;
    qrBitacorasIdCompania: TStringField;
    qrBitacoradidFecha: TDateField;
    qrBitacoramResumen: TMemoField;
    qrBitacoramAsunto: TMemoField;
    qrBitacorasResponsable: TStringField;
    qrBitacorasIdCompania_1: TStringField;
    qrBitacorasRFC: TStringField;
    qrBitacorasRazonSocial: TStringField;
    qrBitacorasDomicilio: TStringField;
    qrBitacorasNumeroInterior: TStringField;
    qrBitacorasNumeroExterior: TStringField;
    qrBitacorasCiudad: TStringField;
    qrBitacorasLocalidad: TStringField;
    qrBitacorasMunicipio: TStringField;
    qrBitacorasColonia: TStringField;
    qrBitacorasMail: TStringField;
    qrBitacorasCP: TStringField;
    qrBitacorasEstado: TStringField;
    qrBitacorasTelefono: TStringField;
    qrBitacoradMontoCredito: TFloatField;
    qrBitacoralStatus: TStringField;
    qrBitacorasNumeroProveedor: TStringField;
    qrBitacorasTelefono2: TStringField;
    qrBitacorasContacto: TStringField;
    qrBitacoralTipo: TStringField;
    qrBitacorasIdCompaniaConf: TStringField;
    qrBitacorasRegistroPatronal: TStringField;
    qrBitacorasPuesto: TStringField;
    dsBitacora: TDataSource;
    iconos: TcxImageList;
    pnlTimeLine: TNxHeaderPanel;
    timeline: TAdvSmoothTimeLine;
    pnlGrid: TNxHeaderPanel;
    cxGridCompanias: TcxGrid;
    gridCompanias: TcxGridDBTableView;
    gridCompaniassIdCompania1: TcxGridDBColumn;
    GrdCompLvl: TcxGridLevel;
    btnMostrarTimeline: TcxButton;
    ToolTip: TAdvSmoothPopup;
    pnlTips: TNxHeaderPanel;
    lblTips: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnMostrarTimelineClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    function adaptText(texto: string):string;
    procedure actualizaTimeline;
    procedure FormResize(Sender: TObject);
    procedure gridCompaniasMouseEnter(Sender: TObject);


  private
    { Private declarations }
    colores : array[1..7] of TColor;
  public
    { Public declarations }
  end;

var
  frmvtaTimeLine: TfrmvtaTimeLine;

implementation

{$R *.dfm}

procedure TfrmvtaTimeLine.btnMostrarTimelineClick(Sender: TObject);
begin
  qrBitacora.Active := False;
  qrBitacora.ParamByName('contrato').AsString := global_contrato;
  qrBitacora.ParamByName('compania').AsString := qrCompanias.FieldByName('sIdCompania').AsString;
  qrBitacora.Open;

  actualizaTimeline;
end;

procedure TfrmvtaTimeLine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmvtaTimeLine.FormResize(Sender: TObject);
begin
  timeline.VerticalMargin := Round(frmvtaTimeLine.Height / 2) - 1;
end;

procedure TfrmvtaTimeLine.FormShow(Sender: TObject);
begin
  pnlTips.Width := 290;
  pnlTips.Height := 120; 

  connection.configuracionVta.Active := False;
  connection.configuracionVta.SQL.Clear;
  connection.configuracionVta.SQL.Add('select * from vta_configuracion where sNombreCorto = :contrato');
  connection.configuracionVta.ParamByName('contrato').AsString := global_contrato;
  connection.configuracionVta.Open;

  if connection.configuracionVta.FieldByName('eCotMuestraTip').AsString = 'Si' then
    global_mostrartips := True
  else
    global_mostrartips := False;
  

  timeline.VerticalMargin := Round(frmvtaTimeLine.Height / 2) - 1;
  frmvtaTimeLine.Caption := 'Historia de clientes de ' + connection.configuracionVta.FieldByName('sNombre').AsString;
  qrCompanias.Active := False;
  qrCompanias.ParamByName('contrato').AsString := global_contrato;
  qrCompanias.Open;

  colores[1] := $007DF0FF;
  colores[2] := $0080FF80;
  colores[3] := $00FFFF80;
  colores[4] := $00C080FF;
  colores[5] := $008080FF;
  colores[6] := $000080FF;
  colores[7] := $00F7C96A;

  timeline.TimeLineIndicators.Clear;
end;

procedure TfrmvtaTimeLine.gridCompaniasMouseEnter(Sender: TObject);
begin
  if global_mostrartips then
  begin
    pnlTips.Width := 290;
    pnlTips.Height := 120;
    lblTips.Caption := 'Seleccione una compañia' + #13 + 'y de clic en "Mostrar Linea de Tiempo" ' + #13 + 'para mostrar su trayectoria' + #13 + 'con ese cliente';
    ToolTip.PopupAtControl(cxGridCompanias, pdRightCenter);
  end;
end;

function TfrmvtaTimeLine.adaptText(texto: string):string;
var
  x, cont : integer;
  resultado : string;
begin
  cont := 0;
  for x := 0 to Length(texto) - 1 do
  begin
    resultado := resultado + texto[x];
    if cont >= 40 then
    begin
      if texto[x] = ' ' then
      begin
        resultado := resultado + #13 + #10;
        cont := 0;
      end;
    end;
    Inc(cont);
  end;
  Result := resultado;
end;

procedure TfrmvtaTimeLine.actualizaTimeline;
var
  inicio, fin : TDateTime;

  indicador : TAdvSmoothTimeLineBarIndicator;
  indicadorpos : TAdvSmoothTimeLineBarAnnotationPosition;

  pos : Integer;
  anotacion : string;
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select min(bta.didFecha) as inicio, max(bta.didFecha) as final from vta_bitacoradeactividades bta '+
                              'inner join con_companias com '+
                              'on (bta.sIdCompania = com.sIdCompania) '+
                              'WHERE bta.sIdCompania = :compania '+
                              'and com.sIdCompaniaConf = :contrato '+
                              'order by didFecha');
  connection.QryBusca.ParamByName('compania').AsString := qrCompaniassIdCompania.Value;
  connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
    timeline.BeginUpdate;

    timeline.Range.MaximumRange := connection.QryBusca.FieldByName('final').AsDateTime;
    timeline.Range.MinimumRange := connection.QryBusca.FieldByName('inicio').AsDateTime;
    timeline.Range.RangeFrom    := connection.QryBusca.FieldByName('inicio').AsDateTime;
    timeline.Range.RangeTo      := connection.QryBusca.FieldByName('final').AsDateTime;
    timeline.Refresh;
    timeline.TimeLineIndicators.Clear;
    timeline.EndUpdate;

    if qrBitacora.RecordCount > 0 then
    begin
      qrBitacora.First;
      pos := 1;
      while not qrBitacora.Eof do
      begin
        if pos >= 7 then
          pos := 1;

        indicador := timeline.TimeLineIndicators.Add;
        anotacion := DateToStr(qrBitacoradidFecha.Value) + #13 + #10 + adaptText(qrBitacoramResumen.Value);
        indicador.Annotation := anotacion;
        indicador.Position := qrBitacoradidFecha.Value;
        indicador.AnnotationRounded := True;
        indicador.AnnotationPosition := indicadorpos;
        indicador.AnnotationColor := colores[pos];
        indicador.AnnotationLineColor := colores[pos];
        indicador.TickMarkColor := colores[pos];
        indicador.Color := colores[pos];
        indicador.ColorTo := colores[pos];

        if indicadorpos = apOnTop then
          indicadorpos := apAtBottom
        else
          indicadorpos := apOnTop;

        Inc(pos);
        qrBitacora.Next;
      end;
    end;
    timeline.Range.MaximumRange := connection.QryBusca.FieldByName('final').AsDateTime;
    timeline.Range.MinimumRange := connection.QryBusca.FieldByName('inicio').AsDateTime;
    timeline.Range.RangeFrom    := connection.QryBusca.FieldByName('inicio').AsDateTime;
    timeline.Range.RangeTo      := connection.QryBusca.FieldByName('final').AsDateTime;
    timeline.Refresh;
  end
  else
  begin
    timeline.Range.MaximumRange := EncodeDate(YearOf(Date),1,1);
    timeline.Range.MinimumRange := EncodeDate(YearOf(Date),1,1);
    timeline.Range.RangeFrom    := EncodeDate(YearOf(Date),1,1);
    timeline.Range.RangeTo      := EncodeDate(YearOf(Date),1,1);
  end;
end;

end.
