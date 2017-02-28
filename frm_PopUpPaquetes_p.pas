unit frm_PopUpPaquetes_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZDataset, RxLookup;

type
  TfrmPopUpPaquetes_p = class(TForm)
    cmdCancel: TBitBtn;
    cmdOk: TBitBtn;
    Label1: TLabel;
    tsNumeroPaquete: TEdit;
    Label2: TLabel;
    tsIdPernocta: TRxDBLookupCombo;
    Label9: TLabel;
    tsIdPlataforma: TRxDBLookupCombo;
    Label10: TLabel;
    Label11: TLabel;
    edDescripcion: TMemo;
    ds_pernoctan: TDataSource;
    Pernoctan: TZReadOnlyQuery;
    Plataformas: TZReadOnlyQuery;
    ds_Plataformas: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPopUpPaquetes_p: TfrmPopUpPaquetes_p;

implementation

{$R *.dfm}

procedure TfrmPopUpPaquetes_p.FormCreate(Sender: TObject);
begin
  Pernoctan.Active := False ;
  Pernoctan.Open ;
  Plataformas.Active := False ;
  Plataformas.Open ;
end;

end.
