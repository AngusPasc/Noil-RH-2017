unit frm_barra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Buttons, Global, ImgList, AdvGlowButton,
  AdvPanel, ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, dxBar, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfrmBarra = class(TFrame)
    StylePanel: TAdvPanelStyler;
    AdvPanel1: TAdvPanel;
    btnEdit: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    btnDelete: TcxButton;
    btnPrinter: TcxButton;
    btnRefresh: TcxButton;
    btnExit: TcxButton;
    IconosBarra: TcxImageList;
    btnAdd: TcxButton;
    dxbrmngrPrincipal: TdxBarManager;
    ImgBtns: TImageList;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    //procedure DesabilitaTodo;

    
  private
    { Private declarations }
  public
    { Public declarations }
    procedure cambiarEstadoBtn;
    procedure DesabilitaTodo;
  end;

implementation
{$R *.dfm}
uses frm_repositorio, frm_inteligent;

procedure TfrmBarra.btnAddClick(Sender: TObject);
begin
  OpcButton := 'New' ;
  btnAdd.Enabled := False ;
  btnEdit.Enabled := False ;
  btnPost.Enabled := True ;
  btnCancel.Enabled := True ;
  btnDelete.Enabled := False ;
  btnPrinter.Enabled := False ;
  btnRefresh.Enabled := False ;
  btnExit.Enabled := False ;

end;

procedure TfrmBarra.btnEditClick(Sender: TObject);
begin
  OpcButton := 'Edit' ;
  btnAdd.Enabled := False ;
  btnEdit.Enabled := False ;
  btnPost.Enabled := True ;
  btnCancel.Enabled := True ;
  btnDelete.Enabled := False ;
  btnPrinter.Enabled := False ;
  btnRefresh.Enabled := False ;
  btnExit.Enabled := False ;
end;

procedure TfrmBarra.btnExitClick(Sender: TObject);
begin
  OpcButton := '' ;
 // frminteligent.dxBarManager1.PopupMenuLinks[0].PopupMenu:=frminteligent.inteligentpop;
  btnAdd.Enabled := True ;
  btnEdit.Enabled := True ;
  btnDelete.Enabled := True ;
  btnPrinter.Enabled := True ;
  btnRefresh.Enabled := True ;
  btnExit.Enabled := True ;

end;

procedure TfrmBarra.btnPostClick(Sender: TObject);
begin
  btnAdd.Enabled := True ;
  btnEdit.Enabled := True ;
  btnPost.Enabled := False ;
  btnCancel.Enabled := False ;
  btnDelete.Enabled := True ;
  btnPrinter.Enabled := True ;
  btnRefresh.Enabled := True ;
  btnExit.Enabled := True ;

  // CAUSABA UN CICLO Y MARCABA ERROR DE COLUMNAS
  // If OpcButton = 'New' then
  //   btnAdd.Click 
end;



procedure TfrmBarra.cambiarEstadoBtn;
begin

end;

procedure TfrmBarra.FrameResize(Sender: TObject);
begin
    If global_Insertar = 'Si' Then
       btnAdd.Enabled := True
    else
       btnAdd.Enabled := False ;

    If global_Editar = 'Si' Then
       btnEdit.Enabled := True
    else
        btnEdit.Enabled := False ;

    If global_eliminar = 'Si' Then
       btnDelete.Enabled := True
    else
        btnDelete.Enabled := False  ;

    If global_Imprimir = 'Si' Then
       btnPrinter.Enabled := True
    else
       btnPrinter.Enabled := False ;


end;

procedure TfrmBarra.btnCancelClick(Sender: TObject);
begin
  OpcButton := '' ;
  btnAdd.Enabled := True ;
  btnEdit.Enabled := True ;
  btnPost.Enabled := False ;
  btnCancel.Enabled := False ;
  btnDelete.Enabled := True ;
  btnPrinter.Enabled := True ;
  btnRefresh.Enabled := True ;
  btnExit.Enabled := True ;

end;
procedure TfrmBarra.DesabilitaTodo;
begin
  btnAdd.Enabled := True ;
  btnEdit.Enabled := True ;
  btnPost.Enabled := False ;
  btnCancel.Enabled := False ;
  btnDelete.Enabled := True ;
  btnPrinter.Enabled := True ;
  btnRefresh.Enabled := True ;
  btnExit.Enabled := True ;
end;


end.
