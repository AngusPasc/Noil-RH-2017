unit frmguardias_proximas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxClass, frxDBSet, Menus, FormAutoScaler, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter;

type
  Tfrm_guardias_proximas = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    BView_Guardias: TcxGridDBTableView;
    Grid_GuardiasLevel1: TcxGridLevel;
    Grid_Guardias: TcxGrid;
    dsZQGuardias_Proximas: TDataSource;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    BView_GuardiassIdFolio1: TcxGridDBColumn;
    BView_GuardiassObservaciones1: TcxGridDBColumn;
    BView_GuardiasIDias1: TcxGridDBColumn;
    BView_GuardiasdFecha1: TcxGridDBColumn;
    dxbrlrgbtnReporte1: TdxBarLargeButton;
    frxdbds1: TfrxDBDataset;
    Reporte: TfrxReport;
    fsc_guardiasprox: TFormAutoScaler;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxbrlrgbtnReporte1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_guardias_proximas: Tfrm_guardias_proximas;

implementation

uses Utilerias, frm_connection, frm_barra, frm_inteligent, global;

{$R *.dfm}

{ TForm1 }

procedure Tfrm_guardias_proximas.dxBarLargeButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_guardias_proximas.dxbrlrgbtnReporte1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + 'Guardias_Abajo.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'Guardias_Abajo.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;
  Reporte.LoadFromFile(global_files + 'Guardias_Abajo.fr3');
  Reporte.ShowReport();
end;

procedure Tfrm_guardias_proximas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tfrm_guardias_proximas.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

end.
