unit frm_vtaTCotizaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, frm_barra, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls,
  sPanel, global, StdCtrls, sButton, sSkinManager, Menus, ImgList,
  acAlphaImageList, cxButtons, NxCollection, frxClass, frxPreview,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdIMAP4, sSplitter, cxSplitter,
  frxDBSet, frxExportPDF, AdvSmoothPopup, Jpeg, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  DateUtils;

type
  TfrmvtaTCotizaciones = class(TForm)
    dsCotizaciones: TDataSource;
    qrCotizaciones: TZQuery;
    dsCompanias: TDataSource;
    qrCompanias: TZQuery;
    qrCotizacionessIdCotizacion: TStringField;
    qrCotizacionessAsunto: TStringField;
    qrCotizacionessIdCompania: TStringField;
    qrCotizacionessDirigido: TStringField;
    qrCotizacionessCiudad: TStringField;
    qrCotizacionessConceptos: TMemoField;
    qrCompaniassIdCompania: TStringField;
    qrCompaniassAlias: TStringField;
    imgIconos: TsAlphaImageList;
    qrCompaniasiCotizaciones: TLargeintField;
    dsCotizacion: TDataSource;
    qrCotizacion: TZQuery;
    dsConceptos: TDataSource;
    qrConceptos: TZQuery;
    qrCotizacionsIdCotizacion: TStringField;
    qrCotizacionsIdCompaniaConf: TStringField;
    qrCotizacionsIdCompania: TStringField;
    qrCotizacionsNombre: TStringField;
    qrCotizacionsPuesto: TStringField;
    qrCotizacionsCiudad: TStringField;
    qrCotizacionsAsunto: TStringField;
    qrCotizacionmParte1: TMemoField;
    qrCotizacionmParte2: TMemoField;
    qrCotizacionsFirmante: TStringField;
    qrConceptossIdCotizacion: TStringField;
    qrConceptossIdCompaniaConf: TStringField;
    qrConceptossIdCompania: TStringField;
    qrConceptossIdConcepto: TStringField;
    qrConceptossDescripcion: TMemoField;
    qrConceptosdCantidad: TFloatField;
    qrConceptossUnidad: TStringField;
    qrConceptosdImporte: TFloatField;
    qrConceptosdPU: TFloatField;
    dsConfiguracionVta: TDataSource;
    frxdbConfiguracionVta: TfrxDBDataset;
    frxdbCotizacion: TfrxDBDataset;
    frxdbConceptos: TfrxDBDataset;
    frxdbFirmante: TfrxDBDataset;
    qrFirmante: TZQuery;
    qrCotizacionessFirmante: TStringField;
    frxrCotizacion: TfrxReport;
    qrCotizacionessRazonSocial: TStringField;
    qrCotizacionsRazonSocial: TStringField;
    dlgGuardar: TFileSaveDialog;
    frxexPDF: TfrxPDFExport;
    popToolTip: TAdvSmoothPopup;
    imgReresh: TsAlphaImageList;
    qrFirmantesIdNombre: TStringField;
    qrFirmantebFirma: TBlobField;
    qrFirmantesPuesto: TStringField;
    pnlFirma: TPanel;
    imgFirma: TImage;
    popFirma: TAdvSmoothPopup;
    pnlTips: TPanel;
    lblTips: TLabel;
    pnlContenedor1: TPanel;
    pnlGrid: TPanel;
    cxgrd_Cotizaciones: TcxGrid;
    grdCotizaciones: TcxGridDBTableView;
    grdCotizacionessIdCotizacion1: TcxGridDBColumn;
    grdCotizacionessAsunto1: TcxGridDBColumn;
    grdCotizacionessIdCompania1: TcxGridDBColumn;
    grdCotizacionessDirigido1: TcxGridDBColumn;
    grdCotizacionessCiudad1: TcxGridDBColumn;
    grdCotizacionesFirma: TcxGridDBColumn;
    grdCotizacionessConceptos1: TcxGridDBColumn;
    grdlvl1: TcxGridLevel;
    pnlButtons: TPanel;
    btnGuardar: TcxButton;
    btnPreview: TcxButton;
    pnlLookup: TPanel;
    cbbCompanias: TcxLookupComboBox;
    btnRefresh: TcxButton;
    pnlPreview: TPanel;
    frxpPrevio: TfrxPreview;
    splSplitter: TcxSplitter;
    qrCotizacionessUsuario: TStringField;
    qrCotizacionesdFecha: TDateField;
    qrCotizaciondFecha: TDateField;
    qrCotizacionsUsuario: TStringField;
    qrCotizacionsFecha: TStringField;

    procedure PrepararCotizacion;

    procedure FormShow(Sender: TObject);
    procedure cbbCompaniasPropertiesCloseUp(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuardarClick(Sender: TObject);
    procedure popToolTipShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure qrCotizacionCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvtaTCotizaciones: TfrmvtaTCotizaciones;

implementation
{Martin Samuel Esteban Diaz}
{02/06/2014}
{$R *.dfm}

procedure TfrmvtaTCotizaciones.PrepararCotizacion;
begin
  qrCotizacion.Active := False;
  qrCotizacion.ParamByName('contrato').AsString   := global_contrato;
  qrCotizacion.ParamByName('compania').AsString   := qrCotizaciones.FieldByName('sIdCompania').AsString;
  qrCotizacion.ParamByName('cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
  qrCotizacion.Open;

  qrConceptos.Active := False;
  qrConceptos.ParamByName('contrato').AsString   := global_contrato;
  qrConceptos.ParamByName('compania').AsString   := qrCotizaciones.FieldByName('sIdCompania').AsString;
  qrConceptos.ParamByName('cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
  qrConceptos.Open;

  qrFirmante.Active := False;
  qrFirmante.ParamByName('firmante').AsString := qrCotizaciones.FieldByName('sFirmante').AsString;
  qrFirmante.Open;

  frxrCotizacion.DataSets.Clear;
  frxrCotizacion.DataSets.Add(frxdbConfiguracionVta);
  frxrCotizacion.DataSets.Add(frxdbCotizacion);
  frxrCotizacion.DataSets.Add(frxdbConceptos);
  frxrCotizacion.DataSets.Add(frxdbFirmante);
end;

procedure TfrmvtaTCotizaciones.qrCotizacionCalcFields(DataSet: TDataSet);
var
  meses: array[1..12] of string;
begin
  meses[1] := 'Enero';
  meses[2] := 'Febrero';
  meses[3] := 'Marzo';
  meses[4] := 'Abril';
  meses[5] := 'Mayo';
  meses[6] := 'Junio';
  meses[7] := 'Julio';
  meses[8] := 'Agosto';
  meses[9] := 'Septiembre';
  meses[10] := 'Octubre';
  meses[11] := 'Noviembre';
  meses[12] := 'Diciembre';
  qrCotizacionsFecha.Value := qrCotizacionsCiudad.Value + ', ' +
                                     inttostr( DayOf( qrCotizacionesdFecha.Value ) ) +
                                     ' de ' +
                                      meses[ monthof( qrCotizacionesdFecha.Value ) ] +
                                     ' del ' + inttostr( yearof( qrCotizacionesdFecha.Value ) );
end;

procedure TfrmvtaTCotizaciones.btnPreviewClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_VTAcotizacionPrev.fr3') then
  begin
     showmessage('El archivo de reporte ' + global_files + global_Mireporte + '_VTAcotizacionPrev.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;

  pnlPreview.Visible := True;
  PrepararCotizacion;
  frxrCotizacion.LoadFromFile(global_files + global_MiReporte + '_VTAcotizacionPrev.fr3');
  frxrCotizacion.ShowReport;


  pnlPreview.Width := Round(frmvtaTCotizaciones.Width / 2);
  if global_mostrartips then
  begin
    pnlTips.Visible := True;
    pnlTips.Width := 250;
    lblTips.Caption := 'Delise hacia la izquerda o derecha' + #13 + #10 + 'para visualizar mejor';
    popToolTip.PopupAtControl(splSplitter, pdTopCenter);
  end;
end;

procedure TfrmvtaTCotizaciones.btnRefreshClick(Sender: TObject);
begin
  qrCompanias.Active := False;
  qrCompanias.ParamByName('contrato').AsString := global_contrato;
  qrCompanias.Open;
end;

procedure TfrmvtaTCotizaciones.cbbCompaniasPropertiesCloseUp(Sender: TObject);
begin
  if Length(Trim(cbbCompanias.EditText)) > 0 then
  begin
    qrCotizaciones.Active                           := False;
    qrCotizaciones.ParamByName('contrato').AsString := global_contrato;
    qrCotizaciones.ParamByName('alias').AsString    := cbbCompanias.EditValue;
    qrCotizaciones.ParamByName('compania').AsString := cbbCompanias.EditText;
    qrCotizaciones.Open;
  end;
end;

procedure TfrmvtaTCotizaciones.btnGuardarClick(Sender: TObject);
begin
  frxrCotizacion.PrepareReport;
  frxexPDF.FileName := dlgGuardar.FileName;
  frxrCotizacion.Export(frxexPDF);
end;

procedure TfrmvtaTCotizaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmvtaTCotizaciones.FormShow(Sender: TObject);
begin
  with connection.configuracionVta do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select * from vta_configuracion where sNombreCorto = :contrato');
    ParamByName('contrato').AsString := global_contrato;
    Open;
  end;

  if connection.configuracionVta.FieldByName('eCotMuestraTip').AsString = 'Si' then
    global_mostrartips := True
  else
    global_mostrartips := False;

  qrCompanias.Active := False;
  qrCompanias.ParamByName('contrato').AsString := global_contrato;
  qrCompanias.Open;

  pnlGrid.Width := frmvtaTCotizaciones.Width;
end;


procedure TfrmvtaTCotizaciones.popToolTipShow(Sender: TObject);
begin
  popToolTip.Control.Width := 370;
end;

end.
