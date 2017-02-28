unit frm_Zinc_mensaje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, dblookup, StdCtrls, frm_Zinc_parametros, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, NxEdit,
  IniFiles, ExtCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, NxColumnClasses, NxColumns;

type
  TfrmMensaje = class(TForm)
    Panel1: TPanel;
    NxButton1: TNxButton;
    Panel2: TPanel;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxMemo: TNxMemo;
    procedure NxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensaje: TfrmMensaje;
  MensajeCompleto: AnsiString;

implementation

{$R *.dfm}

procedure TfrmMensaje.FormShow(Sender: TObject);
begin
  NxMemo.Text:=MensajeCompleto;
end;

procedure TfrmMensaje.NxButton1Click(Sender: TObject);
begin
  close;
end;

end.
