unit UFrmVisorPdf;

interface

uses
  Windows,Messages, SysUtils, Variants, Classes,Graphics,
  Controls, Forms, Dialogs, ExtCtrls,StdCtrls, AdvGroupBox,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, cxButtons,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  DebenuPDFLibrary, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit,UFunctionsGHH, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrmVisorPdf = class(TForm)
    AdvGroupBox1: TAdvGroupBox;
    Panel1: TPanel;
    PreviewScrollBox: TScrollBox;
    imgPreview: TImage;
    Panel2: TPanel;
    CxBtnCargar: TcxButton;
    CxBtnGuardar: TcxButton;
    CxBtnLimpiar: TcxButton;
    CxBtnAceptar: TcxButton;
    CxBtnCancelar: TcxButton;
    Archivo: TFileOpenDialog;
    Panel3: TPanel;
    cmbZoom: TcxComboBox;
    btnViewPrintPrevPage: TcxButton;
    btnViewPrintNextPage: TcxButton;
    FGuardarArchivo: TFileSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure CxBtnCargarClick(Sender: TObject);
    procedure btnViewPrintPrevPageClick(Sender: TObject);
    procedure btnViewPrintNextPageClick(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure CxBtnLimpiarClick(Sender: TObject);
    procedure CxBtnAceptarClick(Sender: TObject);
    procedure CxBtnGuardarClick(Sender: TObject);
    procedure FGuardarArchivoTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ViewPrintQP: TDebenuPDFLibrary;
    ViewPrintPageNum: Integer;
    procedure RenderPage;
    Procedure LoadFilePdf(sFile:TFilename;var ViewPrintParam:TDebenuPDFLibrary);
    Procedure LoadFileJPEG(sFile:TFilename);
    Procedure LoadFileJPEGPdf(sFile:TFilename;var ViewPrintParam:TDebenuPDFLibrary);
  public
    { Public declarations }
    Mode:vsMode;
    TipoFile:smFile;
    PDFStream:Tstream;
    FileName:TFileName;
    sNameFile:String;
  end;

var
  FrmVisorPdf: TFrmVisorPdf;

implementation

{$R *.dfm}

Procedure TFrmVisorPdf.LoadFileJPEGPdf(sFile:TFilename;var ViewPrintParam:TDebenuPDFLibrary);
var
  Password: string;
  R: Integer;
  CanProceed: Boolean;
  BlankBM: TBitmap;
  lWidth :Integer;
  lHeight:Integer;
begin

 // ViewPrintParam.addi
  CanProceed:=false;
  if FileExists(sFile) then
  begin
    ViewPrintParam := TDebenuPDFLibrary.Create;
    if ViewPrintParam.UnlockKey('jt3m77ty7ph97a6bp8t54f35y') = 1 then
    begin
      try
        ViewPrintParam.AddImageFromFile(CompressImage(sFile,80),0);
        lWidth := ViewPrintParam.ImageWidth();
        lHeight := ViewPrintParam.ImageHeight();
        ViewPrintParam.SetPageDimensions(lWidth, lHeight);
        ViewPrintParam.DrawImage(0, lHeight, lWidth, lHeight);

        CanProceed := True;
      except
        MessageDlg('El Archivo PDF no puede leerse.', mtError, [mbOK], 0);
      end;
    end
    else
      MessageDlg('La licencia es Incorrecta o a Expirado.', mtError, [mbOK], 0);
  end;

  if CanProceed then
  begin
    ViewPrintPageNum := 1;
    RenderPage;
  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
    ViewPrintQP.Free;
    ViewPrintQP := nil;
  end;

end;


Procedure TFrmVisorPdf.LoadFilePdf(sFile:TFilename;var ViewPrintParam:TDebenuPDFLibrary);
var
  Password: string;
  R: Integer;
  CanProceed: Boolean;
  BlankBM: TBitmap;
begin


  CanProceed:=false;
  if FileExists(sFile) then
  begin
    ViewPrintParam := TDebenuPDFLibrary.Create;
    if ViewPrintParam.UnlockKey('jt3m77ty7ph97a6bp8t54f35y') = 1 then
    begin
      if ViewPrintParam.LoadFromFile(sFile, '') = 1 then
      begin
        CanProceed := True;
      end
      else
        MessageDlg('El Archivo PDF no puede leerse.', mtError, [mbOK], 0);
    end
    else
      MessageDlg('La licencia es Incorrecta o a Expirado.', mtError, [mbOK], 0);
  end;

  if CanProceed then
  begin
    ViewPrintPageNum := 1;
    RenderPage;
  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
    ViewPrintQP.Free;
    ViewPrintQP := nil;
  end;

end;

Procedure TFrmVisorPdf.LoadFileJPEG(sFile:TFilename);
var
  Password: string;
  R: Integer;
  BlankBM: TBitmap;
begin

  if FileExists(sFile) then
  begin
    try
      imgPreview.Picture.LoadFromFile(CompressImage(sFile,80));
      imgPreview.AutoSize:=true;
    Except
      MessageDlg('El Archivo JPEG no puede leerse.', mtError, [mbOK], 0);
    end;
    //ViewPrintQP.Free;
      //ViewPrintQP := nil;

  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
  end;



end;



procedure TFrmVisorPdf.RenderPage;
var
  BM: TBitmap;
  MS: TMemoryStream;
  DPI: Integer;
begin
  BM := TBitmap.Create;
  try
    imgPreview.Picture.Assign(BM);
    PreviewScrollBox.HorzScrollBar.Position := 0;
    PreviewScrollBox.VertScrollBar.Position := 0;
    imgPreview.Left := 0;
    imgPreview.Top := 0;
  finally
    BM.Free;
  end;

  if Assigned(ViewPrintQP) then
  begin
    MS := TMemoryStream.Create;
    try
      DPI := ((cmbZoom.ItemIndex + 1) * 25 * 96) div 100;
      ViewPrintQP.RenderPageToStream(DPI, ViewPrintPageNum, 0, MS);
      MS.Seek(0, soFromBeginning);
      BM := TBitmap.Create;
      try
        BM.LoadFromStream(MS);
        imgPreview.AutoSize := True;
        imgPreview.Picture.Assign(BM);
      finally
        BM.Free;
      end;
    finally
      MS.Free;
    end;
  end;

end;



procedure TFrmVisorPdf.btnViewPrintNextPageClick(Sender: TObject);
begin
  if Assigned(ViewPrintQP) then
  begin
    if ViewPrintPageNum < ViewPrintQP.PageCount then
    begin
      Inc(ViewPrintPageNum);
      RenderPage;
    end;
  end;
end;

procedure TFrmVisorPdf.btnViewPrintPrevPageClick(Sender: TObject);
begin
  if ViewPrintPageNum > 1 then
  begin
    Dec(ViewPrintPageNum);
    RenderPage;
  end;
end;

procedure TFrmVisorPdf.cmbZoomPropertiesChange(Sender: TObject);
begin
  RenderPage;
end;

procedure TFrmVisorPdf.CxBtnAceptarClick(Sender: TObject);
begin
  if ViewPrintQP<>nil then
  begin
    
    ViewPrintQP.SaveToStream(PDFStream);
  end;
end;

procedure TFrmVisorPdf.CxBtnCargarClick(Sender: TObject);
var
  BlankBM: TBitmap;
begin
  if TipoFile=smPDF then
  begin

    if Assigned(ViewPrintQP) then
    begin
      ViewPrintQP.Free;
      ViewPrintQP := nil;
    end;

    if Archivo.Execute then
    begin
      LoadFilePdf(Archivo.filename,ViewPrintQP);
      FileName:=Archivo.filename;
    end
    else
    begin
      BlankBM := TBitmap.Create;
      try
        imgPreview.Picture.Assign(BlankBM);
      finally
        BlankBM.Free;
      end;
      ViewPrintQP.Free;
      ViewPrintQP := nil;
    end;
  end;

  if TipoFile=smJPEG then
  begin
    if Archivo.Execute then
    begin
      //LoadFileJPEG(Archivo.filename);
      LoadFileJPEGPdf(Archivo.filename,ViewPrintQP);
      FileName:=Archivo.filename;
    end
    else
    begin
      BlankBM := TBitmap.Create;
      try
        imgPreview.Picture.Assign(BlankBM);
      finally
        BlankBM.Free;
      end;
    //  ViewPrintQP.Free;
    //  ViewPrintQP := nil;
    end;

  end;


end;

procedure TFrmVisorPdf.CxBtnGuardarClick(Sender: TObject);
begin
  if sNameFile<>'' then
    FGuardarArchivo.FileName:=sNameFile;

  if FGuardarArchivo.Execute then
  begin
    if TipoFile=smPdf then
      ViewPrintQP.SaveToFile(FGuardarArchivo.FileName);

    if TipoFile=smJPeg then
      ViewPrintQP.RenderDocumentToFile(72, 1, 1, 0,FGuardarArchivo.FileName);
     // ViewPrintQP.SaveImageToFile(FGuardarArchivo.FileName);
  end;


end;

procedure TFrmVisorPdf.CxBtnLimpiarClick(Sender: TObject);
var
  BlankBM: TBitmap;
begin
  BlankBM := TBitmap.Create;
  try
    imgPreview.Picture.Assign(BlankBM);
  finally
    BlankBM.Free;
  end;
  ViewPrintQP.Free;
  ViewPrintQP := nil;
end;

procedure TFrmVisorPdf.FGuardarArchivoTypeChange(Sender: TObject);
begin
  if TipoFile=smPdf then
  begin
    case FGuardarArchivo.FileTypeIndex of
      1 : FGuardarArchivo.DefaultExtension   := 'pdf';
    else
      FGuardarArchivo.DefaultExtension := '';
    end;
  end;

  if TipoFile=smJPeg then
  begin
    case FGuardarArchivo.FileTypeIndex of
      1 : FGuardarArchivo.DefaultExtension   := 'jpg';
    else
      FGuardarArchivo.DefaultExtension := '';
    end;
  
  end;

end;

procedure TFrmVisorPdf.FormCreate(Sender: TObject);
begin
  PDFStream:=TMemoryStream .Create;
end;

procedure TFrmVisorPdf.FormShow(Sender: TObject);
begin
  cmbZoom.ItemIndex := 1;
  Archivo.FileTypes.Clear;
  FGuardarArchivo.FileTypes.clear;

  if TipoFile=smPdf then
  begin
    with Archivo.FileTypes.Add do
    begin
      DisPlayName:='Archivo PDF';
      FileMask:='*.PDF';
    end;

    with FGuardarArchivo.FileTypes.add do
    begin
      DisPlayName:='Archivo PDF';
      FileMask:='*.PDF';
    end;
  end;


  if TipoFile=smJPeg then
  begin
    with Archivo.FileTypes.Add do
    begin
      DisPlayName:='Archivo JPEG';
      FileMask:='*.jpg';
    end;

    with FGuardarArchivo.FileTypes.add do
    begin
      DisPlayName:='Archivo JPEG';
      FileMask:='*.jpg';
    end;


  end;

  FGuardarArchivoTypeChange(Sender);

  if (Mode=vsLectura) or (Mode=vsEdicion) then
  begin
     if (Mode=vsLectura) then
     begin
      Panel1.Visible:=false;
      CxBtnCargar.Enabled:=false;
      CxBtnLimpiar.Enabled:=false;
     end;

    if TipoFile=smPdf then
      LoadFilePdf(FileName,ViewPrintQP);
    if TipoFile=smJPeg then
    begin
      LoadFileJpegPdf(FileName,ViewPrintQP);
      //ViewPrintQP

    end;
  end;

  if Mode=vsInsercion then
  begin
    CxBtnGuardar.Enabled:=false;
    CxBtnLimpiar.Enabled:=false;
  end;

end;

end.
