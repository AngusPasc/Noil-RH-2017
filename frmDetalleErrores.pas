unit frmDetalleErrores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, frm_connection,
  Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxNavigator, DB, cxDBData, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, cxCalendar,
  cxDropDownEdit, Global;

type
  Tfrm_DetalleError = class(TForm)
    dbgGrid1DBTableView1: TcxGridDBTableView;
    dbgGrid1Level1: TcxGridLevel;
    grid_1: TcxGrid;
    dsDetError: TDataSource;
    zqrDetalleError: TZQuery;
    Col_Id: TcxGridDBColumn;
    Col_Fecha: TcxGridDBColumn;
    Col_TipoSolucion: TcxGridDBColumn;
    Col_Descripcion: TcxGridDBColumn;
    Col_comentario: TcxGridDBColumn;
    Col_Usuario: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure zqrDetalleErrorBeforePost(DataSet: TDataSet);
    procedure zqrDetalleErrorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DetalleError: Tfrm_DetalleError;



implementation

  Uses
   frm_reporteErrores ;

{$R *.dfm}

procedure Tfrm_DetalleError.FormShow(Sender: TObject);
begin

  zqrDetalleError.Active := False ;
  zqrDetalleError.Params.ParamByName('Error').DataType :=  ftInteger ;
  zqrDetalleError.Params.ParamByName('Error').Value    :=  frmRepErrores.qryReporteErrores.FieldByName('iOrden').asInteger ;
  zqrDetalleError.Open ;
end;

procedure Tfrm_DetalleError.zqrDetalleErrorBeforePost(DataSet: TDataSet);
begin
   zqrDetalleError.FieldValues['idError']  := frmRepErrores.qryReporteErrores.FieldByName('iOrden').asInteger ;
   zqrDetalleError.FieldValues['sUsuario'] := Global_Usuario ;
end;

procedure Tfrm_DetalleError.zqrDetalleErrorNewRecord(DataSet: TDataSet);
begin
  zqrDetalleError.FieldValues['sComentario'] := 'Espera de Cerrar el Ticket' ;
end;

end.
