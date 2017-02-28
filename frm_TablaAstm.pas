unit frm_TablaAstm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  AdvGlowButton, StdCtrls, ExtCtrls;

type
  TfrmTablaAstm = class(TForm)
    DBGrid1: TDBGrid;
    ZQAstm1: TZQuery;
    ds_Astm1: TDataSource;
    ZQAstm1iIdAtsm1: TIntegerField;
    ZQAstm1sEspecifMat: TStringField;
    ZQAstm1sEspesorpnom: TStringField;
    ZQAstm1sEspesorestruct: TStringField;
    ZQAstm1sNominal: TStringField;
    ZQAstm1sEspecificmat2: TStringField;
    ZQAstm1sEspesorpnom2: TStringField;
    ZQAstm1sEspesorestruct2: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label2: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTablaAstm: TfrmTablaAstm;

implementation

{$R *.dfm}

procedure TfrmTablaAstm.FormShow(Sender: TObject);
begin
ZQAstm1.Open;

end;

end.
