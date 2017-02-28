unit frm_ConfiguracionNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, DB, global,Grids, DBGrids,
  Buttons, ImgList, ExtCtrls, ExtDlgs, Jpeg, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  TfrmConfiguracionNomina = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Puestos: TTabSheet;
    tsNombreCorto: TDBEdit;
    tsNombre: TDBEdit;
    tsPiePagina: TDBEdit;
    tsEmail: TDBEdit;
    tsWeb: TDBEdit;
    tsFax: TDBEdit;
    tsTelefono: TDBEdit;
    tsSlogan: TDBEdit;
    tsDireccion2: TDBEdit;
    tsDireccion1: TDBEdit;
    tsRfc: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label86: TLabel;
    GroupBox4: TGroupBox;
    bImagen: TImage;
    Label10: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    OpenPicture: TOpenPictureDialog;
   
    dsConfiguracion: TDataSource;
    REpre: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    tsRepresentante: TDBEdit;
    tsTestigo1: TDBEdit;
    tsTestigo2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    btnCancel: TcxButton;
    BTNoK: TcxButton;
    bitbtn1: TcxButton;
    bitbtn2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bImagenClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure tsFaxKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracionNomina: TfrmConfiguracionNomina;

implementation

uses frm_connection;


{$R *.dfm}



procedure TfrmConfiguracionNomina.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
         if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
               else
                   selectedindex := 0;
end;

procedure TfrmConfiguracionNomina.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  fileSkin: TextFile;
  sSkin: string;
begin

    Connection.configuracionNomina.Open  ;



    if Connection.configuracionNomina.RecordCount > 0 then
    begin
      Connection.configuracionNomina.Edit;
      BlobField := Connection.configuracionNomina.FieldByName('bImagen');
      BS := Connection.configuracionNomina.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 1 then
      begin
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromStream(bS);
            bImagen.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      end
      else
        bImagen.Picture.LoadFromFile('');
    end
end;

procedure TfrmConfiguracionNomina.tsFaxKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;

end;

procedure TfrmConfiguracionNomina.tsTelefonoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

procedure TfrmConfiguracionNomina.btnOkClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if (Connection.configuracionNomina.State = dsEdit)Or (Connection.configuracionNomina.State = dsInsert) then
  begin
    if OpenPicture.FileName <> '' then
    begin
      try
        BlobField := Connection.configuracionNomina.FieldByName('bImagen');
        BS := Connection.configuracionNomina.CreateBlobStream(BlobField, bmWrite);
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromFile(OpenPicture.FileName);
            Pic.SaveToStream(Bs);
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      except

      end
    end;
    Connection.configuracionNomina.Post;
  end;

    close
end;

procedure TfrmConfiguracionNomina.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

procedure TfrmConfiguracionNomina.bImagenClick(Sender: TObject);
begin
   if (Connection.configuracionNomina.State = dsEdit) or (Connection.configuracionNomina.State = dsInsert) Then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
        bImagen.Picture.LoadFromFile('');
      end
    end
  end
end;

procedure TfrmConfiguracionNomina.BtnCancelClick(Sender: TObject);
begin
  if Connection.configuracionNomina.State = dsEdit then
    Connection.configuracionNomina.Cancel;
  close
end;


end.

