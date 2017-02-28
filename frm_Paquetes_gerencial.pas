unit frm_Paquetes_gerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZDataset, RxLookup, Grids,
  DBGrids, ZAbstractDataset;

type
  TfrmPaquetes_gerencial = class(TForm)
    ds_paquetes: TDataSource;
    Grid_paquetes: TDBGrid;
    paquetes: TZQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaquetes_gerencial: TfrmPaquetes_gerencial;

implementation

{$R *.dfm}

procedure TfrmPaquetes_gerencial.FormShow(Sender: TObject);
begin
    paquetes.Active
end;

end.
