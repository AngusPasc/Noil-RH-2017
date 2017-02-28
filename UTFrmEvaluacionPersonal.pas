unit UTFrmEvaluacionPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_connection;

type
  TFrmEvaluacionPersonal = class(TForm)
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    zqryEmpleados: TZQuery;
    sNombreCompleto: TStringField;
    sApellidoPaterno: TStringField;
    sApellidoMaterno: TStringField;
    codigodepartamento: TStringField;
    dsEmpleados: TDataSource;
    folioGrid1DBTableView1IdPersonal: TcxGridDBColumn;
    folioGrid1DBTableView1sNombreCompleto: TcxGridDBColumn;
    folioGrid1DBTableView1sApellidoPaterno: TcxGridDBColumn;
    folioGrid1DBTableView1sApellidoMaterno: TcxGridDBColumn;
    folioGrid1DBTableView1codigodepartamento: TcxGridDBColumn;
    iEdad: TIntegerField;
    dFechaNacimiento: TDateField;
    strngfldFolioEmpleadoslSexo: TStringField;
    sIdEmpleado: TStringField;
    folioGrid1DBTableViewIdPersonal: TcxGridDBColumn;
    atncfldEmpleadosIdPersonal: TAutoIncField;
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
  FrmEvaluacionPersonal: TFrmEvaluacionPersonal;

implementation

{$R *.dfm}

  uses
    UTFrmEvaluarEmpleados;

procedure TFrmEvaluacionPersonal.cxgrdbtblvwGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Cuando se de doble click en una fila del zQuery, entonces se abrira la ventana con los datos del empleado
  //y un formulario que se creara dinamicamente con los puntos a evaluar del catalogo Conceptos de evaluacion
  Application.CreateForm(TFrmEvaluarEmpleados, FrmEvaluarEmpleados);
  FrmEvaluarEmpleados.ShowModal;
end;

end.
