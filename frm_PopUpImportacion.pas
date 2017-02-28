unit frm_PopUpImportacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmPopUpImportacion = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    chkDescripcion: TCheckBox;
    chkPreciosMN: TCheckBox;
    chkMedida: TCheckBox;
    chkCantidad: TCheckBox;
    Label2: TLabel;
    chkPreciosDLL: TCheckBox;
    chkFechaIni: TCheckBox;
    chkFechaFin: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPopUpImportacion: TFrmPopUpImportacion;

implementation

{$R *.dfm}

end.
