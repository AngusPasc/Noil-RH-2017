unit frm_acerca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, utilerias, PSAPI, GradienteM,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  cxTextEdit, cxMemo, dxGDIPlusClasses, Menus, cxButtons, NxCollection, frm_connection,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfrmAcerca = class(TForm)
    Version: TLabel;
    bheaderpa: TImage;
    Memo: TcxMemo;
    btnOk: TcxButton;
    NxHeaderPanel1: TNxHeaderPanel;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcerca: TfrmAcerca;

implementation

{$R *.dfm}

procedure TfrmAcerca.btnOkClick(Sender: TObject);
begin
  frmAcerca.Close ;
end;


procedure TfrmAcerca.FormShow(Sender: TObject);
var
   InfoSize, H, RsltLen: Cardinal;
   VersionBlock: Pointer;
   Rslt: PVSFixedFileInfo;
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from cat_actualizaciones order by dIdFecha desc');
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
    Memo.Lines.Clear;
    connection.QryBusca.First;
    while not connection.QryBusca.Eof do
    begin
      Memo.Lines.Add('');
      Memo.Lines.Add('------------------------------------------------------------------------------------------------------------------------------');
      Memo.Lines.Add('Actualización al: ' + connection.QryBusca.FieldByName('eTipoActualizacion').AsString + ' - ' + 'Se actualizo el modulo: ' + connection.QryBusca.FieldByName('sModulo').AsString);
      Memo.Lines.Add('Comprobado por: ' + connection.QryBusca.FieldByName('sTester').AsString);
      Memo.Lines.Add('Desarrollado por: ' + connection.QryBusca.FieldByName('sDesarrollador').AsString);
      Memo.Lines.Add('Versión: ' + connection.QryBusca.FieldByName('sVersion').AsString + ' - ' + connection.QryBusca.FieldByName('dFechaActualizacion').AsString);
      Memo.Lines.Add('Descripción: ' + connection.QryBusca.FieldByName('sDescripcion').AsString);
      Memo.Lines.Add('------------------------------------------------------------------------------------------------------------------------------');
      Memo.Lines.Add('');
      connection.QryBusca.Next;
    end;
  end;

  Memo.Lines.Add('Versión 1.0.0.1 '+ #13 +
                 'Sistema de administración empresarial ERP Inteligent: '+ #13 +
                 'Administración de nóminas '+ #13 +
                 'Administración contable. '+ #13 +
                 'Administración de contratos. '+ #13 +
                 'Administración de empleados. '+ #13 +
                 'Administración de Almacenes.');

   InfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), H);
   VersionBlock := AllocMem(InfoSize);
   try
      GetFileVersionInfo(PChar(Application.ExeName), H, InfoSize, VersionBlock);
      VerQueryValue(VersionBlock, '\', Pointer(Rslt), RsltLen);
      Version.Caption := '2011 VC 1.1';
         //+ Format('%d.%d.%d.%d', [
         //Rslt.dwProductVersionMS div 65536,
         //Rslt.dwProductVersionMS mod 65536,
         //Rslt.dwProductVersionLS div 65536,
         //Rslt.dwProductVersionLS mod 65536]);
   finally
      FreeMem(VersionBlock);
   end;
end;

end.
