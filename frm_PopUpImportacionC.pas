unit frm_PopUpImportacionC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmPopUpImportacionC = class(TForm)
    cmdCancel: TBitBtn;
    cmdOk: TBitBtn;
    Label1: TLabel;
    chkExcel: TCheckBox;
    Label2: TLabel;
    chkInteligent: TCheckBox;
    procedure chkExcelClick(Sender: TObject);
    procedure chkInteligentClick(Sender: TObject);
    procedure cmdOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPopUpImportacionC: TFrmPopUpImportacionC;

implementation

{$R *.dfm}

procedure TFrmPopUpImportacionC.chkExcelClick(Sender: TObject);
begin
    if chkExcel.Checked then
       chkInteligent.Checked := False;
end;

procedure TFrmPopUpImportacionC.chkInteligentClick(Sender: TObject);
begin
    if chkInteligent.Checked then
       chkExcel.Checked      := False;
end;

procedure TFrmPopUpImportacionC.cmdOkClick(Sender: TObject);
begin                   

     if (chkInteligent.Checked =False) and (chkExcel.Checked = False) then
     begin
         messageDLG('Debes seleccionar una Opcion de Ordenamiento', mtInformation, [mbOk],0);
         exit;
     end;
end;

end.
