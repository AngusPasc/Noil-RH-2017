unit UTFrmLibretasVencidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, global, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_connection;

type
  TfrmLibretasVencidas = class(TForm)
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Grid_LibretasVencidas: TcxGrid;
    zqryLibretasVencidas1: TZQuery;
    ds1: TDataSource;
    zqryLibretasVencidas1dFechaAplicacion: TDateField;
    zqryLibretasVencidas1dFechaVigencia: TDateField;
    cxgrdbtblvwGrid1DBTableView1sFolioLibreta: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1dFechaAplicacion: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1dFechaVigencia: TcxGridDBColumn;
    nombre: TStringField;
    folioGrid1DBTableView1dEmpleado: TcxGridDBColumn;
    folioGrid1DBTableView1Nombre: TcxGridDBColumn;
    zqryLibretasVencidas1sIdEmpleado: TStringField;
    zqryLibretasVencidas1idorganizacion: TIntegerField;
    zqryLibretasVencidas1iIdEmpleado: TIntegerField;
    zqryLibretasVencidas1sFolioDocumento: TStringField;
    eTipoDocumento: TcxGridDBColumn;
    zqryLibretasVencidas1eTipoDocumento: TStringField;
    procedure FormShow(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLibretasVencidas: TfrmLibretasVencidas;

implementation

{$R *.dfm}
 uses
  frmEmpleados;
procedure TfrmLibretasVencidas.cxgrdbtblvwGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
     SavePlace: TBookmark;
     indice : integer;
begin
    {Aqui lozalizamos al empleado dependiendo de la empresa}

    isOpen := False;
    frmEmpleados.frm_Empleados.zqEmpleados.Filtered := false;
    frmEmpleados.frm_Empleados.zqEmpleados.Filter :=' idorganizacion= '+QuotedStr(IntToStr(zqryLibretasVencidas1.FieldByName('idorganizacion').AsInteger));
    frmEmpleados.frm_Empleados.zqEmpleados.Filtered := True;
    isOpen := True;

    frmEmpleados.frm_Empleados.BView_Empleados.DataController.ClearBookmark;
    frmEmpleados.frm_Empleados.BView_Empleados.DataController.ClearSelection;
    frmEmpleados.frm_Empleados.BView_Empleados.DataController.DataSource.DataSet.Locate('sIdEmpleado', zqryLibretasVencidas1.FieldByName('sIdEmpleado').AsString, [loCaseInsensitive]);
    indice := frmEmpleados.frm_Empleados.BView_Empleados.DataController.GetRootDataController.GetSelectionAnchorRowIndex;
    frmEmpleados.frm_Empleados.BView_Empleados.DataController.SelectRows(indice, indice);
    //frmEmpleados.frm_Empleados.cmbOrganizacion.KeyValue := zqryLibretasVencidas1.FieldByName('idorganizacion').AsInteger;
    close;
end;

procedure TfrmLibretasVencidas.FormShow(Sender: TObject);
begin
  zqryLibretasVencidas1.Active := False;
  zqryLibretasVencidas1.Open;
end;

end.
