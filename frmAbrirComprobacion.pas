unit frmAbrirComprobacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  Buttons, RXDBCtrl, Newpanel, ZAbstractDataset, StrUtils, DBCtrls, Mask,
  ComCtrls, frxClass, frxDBSet, DateUtils, RxMemDS, UDbGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  Tfrm_AbrirComprobacion = class(TForm)
    btnValidaFecha: TSpeedButton;
    dsFechasPendientes: TDataSource;
    zQCierreDiario: TZReadOnlyQuery;
    zCommand: TZReadOnlyQuery;
    zQCierreDiariodIdFecha: TDateField;
    zQCierreDiarioiIdFolio: TIntegerField;
    zQCierreDiariosTipoMovimiento: TStringField;
    zQCierreDiariosIdArea: TStringField;
    zQCierreDiariosIdNumeroCuenta: TStringField;
    zQCierreDiariosNumeroOrden: TStringField;
    zQCierreDiariosReferencia: TStringField;
    zQCierreDiariosIdProveedor: TStringField;
    zQCierreDiariosIdCompania: TStringField;
    zQCierreDiariosRFC: TStringField;
    zQCierreDiariosRazonSocial: TStringField;
    zQCierreDiariosDomicilio: TStringField;
    zQCierreDiariosCiudad: TStringField;
    zQCierreDiariosCP: TStringField;
    zQCierreDiariosEstado: TStringField;
    zQCierreDiariosTelefono: TStringField;
    zQCierreDiariodImporteTotal: TFloatField;
    zQCierreDiariolComprobado: TStringField;
    zQCierreDiariosStatus: TStringField;
    zQCierreDiariomDescripcion: TMemoField;
    zQCierreDiariodIva: TFloatField;
    zQCierreDiariolAplicaiva: TStringField;
    zQCierreDiariosPoliza: TStringField;
    zQCierreDiariodFechaFactura: TDateField;
    zQCierreDiarioiFolio: TIntegerField;
    zQCierreDiarioiIdStatus: TIntegerField;
    zQCierreDiariosTipoPago: TStringField;
    zQCierreDiariosNumeroDeCuenta: TStringField;
    zQCierreDiariosNumeroPedido: TStringField;
    zQCierreDiarioiImprimeProveedor: TIntegerField;
    gridConceptos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridConceptosdIdFecha1: TcxGridDBColumn;
    gridConceptossNumeroOrden1: TcxGridDBColumn;
    gridConceptossReferencia1: TcxGridDBColumn;
    gridConceptossIdProveedor1: TcxGridDBColumn;
    gridConceptosdImporteTotal1: TcxGridDBColumn;
    grdColumiComprobado: TcxGridDBColumn;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    cxstylGreen: TcxStyle;
    cxstylMaroon: TcxStyle;
    cxstylBlackStrong: TcxStyle;
    cxstylPurple: TcxStyle;
    intgrfldQCierreDiariosFormaPago: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnValidaFechaClick(Sender: TObject);
    procedure GridConceptosTitleClick(Column: TColumn);
    procedure gridConceptosStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_AbrirComprobacion: Tfrm_AbrirComprobacion;
   //utgrid:ticdbgrid;
implementation

uses frmNuevoUsuario , frm_connection;

{$R *.dfm}



procedure Tfrm_AbrirComprobacion.btnValidaFechaClick(Sender: TObject);
var
    iRecord : Integer ;
    SavePlace     : TBookmark;
    iGrid: Integer;
begin
    if zQCierreDiario.RecordCount > 0 then
    begin
      //#############################################################

      if MessageDlg('Desea Abrir esta(s) Comprobacion(es)?',        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
            if (zQCierreDiario.FieldByName('lComprobado').AsString = 'No') then
            begin
              ShowMessage('Este registro no esta comprobado');
              Exit;
            end
            else
            begin
              SavePlace := gridConceptos.DataController.DataSource.DataSet.GetBookmark;
              with GridConceptos.DataController.DataSource.DataSet do
              begin

                for iGrid := 0 to GridConceptos.ViewData.RecordCount - 1 do
                begin
                    try
                      GotoBookmark(SavePlace);
                    Except
                      on e : Exception do
                      begin

                        ShowMessage(e.Message);
                      end;
                        //No se ejecuta ninguna sentencia con el bookmark
                    end;

                    if GridConceptos.ViewData.Rows[iGrid].Selected then
                    begin
                        zCommand.Active := False;
                        zCommand.SQL.Clear;
                        zCommand.SQL.Add('UPDATE con_tesoreriaegresos SET lComprobado="No" Where dIdFecha = :Fecha and iIdFolio = :Folio ');
                        zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
                        zCommand.Params.ParamByName('Fecha').Value    := zQCierreDiario.FieldValues['dIdFecha'] ;
                        zCommand.Params.ParamByName('Folio').Value    := zQCierreDiario.FieldValues['iIdFolio'] ;
                        zCommand.ExecSQL;
                        sParamComprobado := 'No';
                    end;
                end;
              end;
            end;
      end;
      iRecord := zQCierreDiario.RecNo ;
      zqCierreDiario.Refresh ;
      zqCierreDiario.RecNo := iRecord ;
    end ;
end;

procedure Tfrm_AbrirComprobacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_AbrirComprobacion.FormShow(Sender: TObject);
Var
    dMontoTotal : Currency ;
    dMontoGeneral : Currency ;
begin
    //UtGrid:=TicdbGrid.create(GridConceptos);
    Connection.configuracion.Refresh ;
    zqCierreDiario.Open ;
    //GridConceptos.SetFocus
end;

procedure Tfrm_AbrirComprobacion.gridConceptosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := Sender.PatternGridView.FindItemByName('grdColumiComprobado');
  if VarToStr(ARecord.values[AColumn.Index]) = 'Si' then
    AStyle := cxstylBlue;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'No'then
    AStyle := cxstylRed;

end;

procedure Tfrm_AbrirComprobacion.GridConceptosTitleClick(Column: TColumn);
begin

  //UtGrid.DbGridTitleClick(Column);
end;

end.
