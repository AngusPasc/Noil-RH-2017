unit UTFrmHistorialSalarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Menus, StdCtrls, cxButtons, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxLabel;

type
  TFrmHistorialSalarios = class(TForm)
    cxGBDatos: TcxGroupBox;
    cxGBBotonera: TcxGroupBox;
    CxGridPersonalImss: TcxGridDBTableView;
    CxGridMainLevel1: TcxGridLevel;
    CxGridMain: TcxGrid;
    ultima: TcxGridDBColumn;
    SalarioDiario: TcxGridDBColumn;
    TotalPercepciones: TcxGridDBColumn;
    CxBtnCerrar: TcxButton;
    zPersonalImss: TZQuery;
    dsPersonalImss: TDataSource;
    CxLbl1: TcxLabel;
    TotalDeducciones: TcxGridDBColumn;
    Neto: TcxGridDBColumn;
    procedure CxBtnCerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    IdPersonal: Integer;
    { Public declarations }
  end;

var
  FrmHistorialSalarios: TFrmHistorialSalarios;


implementation

{$R *.dfm}
Uses
  frm_connection, frmEmpleados;

procedure TFrmHistorialSalarios.CxBtnCerrarClick(Sender: TObject);
begin
  if zpersonalimss.RecordCount > 0 then
  begin
       //frmEmpleados.frm_Empleados.tdSueldo.Text := zpersonalimss.FieldValues['Neto'];
  end;
  Close;
end;

procedure TFrmHistorialSalarios.FormCreate(Sender: TObject);
begin
  IdPersonal := -1;
end;

procedure TFrmHistorialSalarios.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    Try
      zPersonalImss.Active := False;
      zPersonalImss.Connection := connection.zConnection;
      zPersonalImss.Params.ParamByName('personal').AsInteger   := IdPersonal;
      zPersonalImss.Params.ParamByName('CorteOrg').AsInteger   := -1;
      zPersonalImss.Params.ParamByName('Referencia').AsInteger := -1;
      zPersonalImss.Params.ParamByName('Nomina').AsInteger     := -1;
      zPersonalImss.Params.ParamByName('Agrupa').AsInteger     := -1;
      zPersonalImss.Open;

      if (zPersonalImss.RecordCount = 0) then
      begin
          messageDLG('No se ha calculado la nómina del empleado!', mtInformation, [mbOk], 0);
      end;

    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e: Exception Do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  End;
end;

end.
