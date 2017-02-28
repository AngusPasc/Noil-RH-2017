unit frm_PopUpPaquetes_e;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZDataset, RxLookup;

type
  TfrmPopUpPaquetes_e = class(TForm)
    cmdCancel: TBitBtn;
    cmdOk: TBitBtn;
    tsNumeroPaquete: TEdit;
    Label2: TLabel;
    tsIdPernocta: TRxDBLookupCombo;
    ds_pernoctan: TDataSource;
    Pernoctan: TZReadOnlyQuery;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPopUpPaquetes_e: TfrmPopUpPaquetes_e;

implementation

{$R *.dfm}

procedure TfrmPopUpPaquetes_e.FormCreate(Sender: TObject);
begin
  Pernoctan.Active := False ;
  Pernoctan.Open ;
end;

end.
