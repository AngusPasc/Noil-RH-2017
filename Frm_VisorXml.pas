unit Frm_VisorXml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  StdCtrls, cxButtons, ExtCtrls, AdvGroupBox, AdvMemo, Advmxml,UFunctionsGHH;

type
  TFrmVisorXml = class(TForm)
    AdvGroupBox1: TAdvGroupBox;
    PreviewScrollBox: TScrollBox;
    Panel2: TPanel;
    CxBtnCargar: TcxButton;
    CxBtnGuardar: TcxButton;
    CxBtnLimpiar: TcxButton;
    Panel1: TPanel;
    CxBtnAceptar: TcxButton;
    CxBtnCancelar: TcxButton;
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    MmXML: TAdvMemo;
    FGuardarArchivo: TFileSaveDialog;
    Archivo: TFileOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure CxBtnCargarClick(Sender: TObject);
    procedure CxBtnGuardarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure LoadFileXml(SFile:Tfilename;Memo:TAdvMemo);
  public
    { Public declarations }
    Mode:vsMode;
    TipoFile:smFile;
    FileName:TFileName;
    sNameFile:String;
  end;

var
  FrmVisorXml: TFrmVisorXml;

implementation


{$R *.dfm}

Procedure TfrmVisorXml.LoadFileXml(SFile: TFileName; Memo: TAdvMemo);
begin
  if FileExists(sFile) then
  begin
    try
      Memo.Lines.LoadFromFile(sFile);
    except
       MessageDlg('El Archivo XML no puede leerse.', mtError, [mbOK], 0);
    end;
  end
  else
  begin
    MessageDlg('El Archivo XML no puede leerse.', mtError, [mbOK], 0);
    Memo.Lines.clear;
  end;
end;

procedure TFrmVisorXml.CxBtnCargarClick(Sender: TObject);
begin
  if Archivo.Execute then
  begin
    LoadFileXml(Archivo.filename,MmXml);
    FileName:=Archivo.filename;
  end
end;

procedure TFrmVisorXml.CxBtnGuardarClick(Sender: TObject);
begin
  if sNameFile<>'' then
    FGuardarArchivo.FileName:=sNameFile;

  if FGuardarArchivo.Execute then
  begin
    if TipoFile=smXml then
      MmXml.Lines.SaveToFile(FGuardarArchivo.FileName);


  end;
end;

procedure TFrmVisorXml.FormShow(Sender: TObject);
begin
  if (Mode=vsLectura) or (Mode=vsEdicion) then
  begin
    if (Mode=vsLectura) then
    begin
      Panel1.Visible:=false;
      CxBtnCargar.Enabled:=false;
      CxBtnLimpiar.Enabled:=false;
    end;

    if TipoFile=smXml then
      LoadFileXml(FileName,MmXml);

  end;

  if Mode=vsInsercion then
  begin
    CxBtnGuardar.Enabled:=false;
    CxBtnLimpiar.Enabled:=false;
  end;

end;

end.
