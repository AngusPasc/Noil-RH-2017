unit frm_PopUpManodeObra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmPopUpManodeObra = class(TForm)
    cmdCancel: TBitBtn;
    cmdOk: TBitBtn;
    Label1: TLabel;
    chkExcel: TCheckBox;
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
  FrmPopUpManodeObra: TFrmPopUpManodeObra;

implementation

{$R *.dfm}

procedure TFrmPopUpManodeObra.chkExcelClick(Sender: TObject);
begin
    if chkExcel.Checked then
       chkInteligent.Checked := False;
end;

procedure TFrmPopUpManodeObra.chkInteligentClick(Sender: TObject);
begin
    if chkInteligent.Checked then
       chkExcel.Checked      := False;
end;

procedure TFrmPopUpManodeObra.cmdOkClick(Sender: TObject);
begin                   

     if (chkInteligent.Checked =False) and (chkExcel.Checked = False) then
     begin
         messageDLG('Debes seleccionar una Opcion', mtInformation, [mbOk],0);
         exit;
     end;
end;

end.
