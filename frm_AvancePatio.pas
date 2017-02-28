unit frm_AvancePatio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, rxToolEdit, rxCurrEdit, RXDBCtrl,
  DB, ZDataset, ZAbstractRODataset, ZAbstractDataset, Grids, DBGrids, ExtCtrls,
  frm_Connection;

type
  TfrmAvancePatio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    DBGrid1: TDBGrid;
    qAvance: TZQuery;
    roqAvances: TZReadOnlyQuery;
    dsAvance: TDataSource;
    dsAvances: TDataSource;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAvancePatio: TfrmAvancePatio;

implementation

{$R *.dfm}

procedure TfrmAvancePatio.BitBtn1Click(Sender: TObject);
begin
  if (qAvance.State = dsInsert) or (qAvance.State = dsEdit) then
  begin
    qAvance.Post;
    Connection.ConnTrx.Commit;
  end;
end;

procedure TfrmAvancePatio.BitBtn2Click(Sender: TObject);
begin
  if (qAvance.State = dsInsert) or (qAvance.State = dsEdit) then
  begin
    qAvance.Cancel;
    Connection.ConnTrx.Rollback;
  end;
end;

end.
