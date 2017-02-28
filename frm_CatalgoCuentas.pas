unit frm_CatalgoCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExComCtrls, JvDBTreeView, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmCatalgoCuentas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    jDbTvCuentas: TJvDBTreeView;
    QCatalogoCuentas: TZQuery;
    dsCatalogoCuentas: TDataSource;
    cxDbGridTabla: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QMaestroCuentas: TZQuery;
    dsMaestroCuentas: TDataSource;
    cxDbGridTablaColumn1: TcxGridDBColumn;
    cxDbGridTablaColumn2: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    QuienLLamo:string;
  public
    { Public declarations }
  end;

var
  frmCatalgoCuentas: TfrmCatalgoCuentas;

implementation

uses frm_connection, frmEmpleados, Utilerias, global;

{$R *.dfm}

procedure TfrmCatalgoCuentas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrmCatalgoCuentas.FormShow(Sender: TObject);
begin
  QCatalogoCuentas.close;
  QCatalogoCuentas.open;
  QMaestroCuentas.Close;
  QMaestroCuentas.open;
  jDbTvCuentas.FullExpand;
end;

end.
