unit frm_HallazgosdeInspeccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGlowButton, ExtCtrls, NxPageControl, HTMLabel, frm_barra,
  frm_TablaAstm;

type
  TfrmHallazgosdeInspeccion = class(TForm)
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    nerx: TNxTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label18: TLabel;
    AdvGlowButton8: TAdvGlowButton;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    AdvGlowButton9: TAdvGlowButton;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    AdvGlowButton10: TAdvGlowButton;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    Label57: TLabel;
    Label58: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    frmBarra1: TfrmBarra;
    HTMLabel1: THTMLabel;
    HTMLabel2: THTMLabel;
    HTMLabel3: THTMLabel;
    HTMLabel4: THTMLabel;
    HTMLabel5: THTMLabel;
    HTMLabel6: THTMLabel;
    HTMLabel7: THTMLabel;
    HTMLabel8: THTMLabel;
    HTMLabel9: THTMLabel;
    Panel2: TPanel;
    Label31: TLabel;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure AdvGlowButton19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHallazgosdeInspeccion: TfrmHallazgosdeInspeccion;

implementation

{$R *.dfm}

procedure TfrmHallazgosdeInspeccion.AdvGlowButton19Click(Sender: TObject);
begin
Application.CreateForm(TfrmTablaAstm, frmTablaAstm);
frmTablaAstm.Show;
end;

procedure TfrmHallazgosdeInspeccion.FormShow(Sender: TObject);
begin
frmBarra1.btnAdd.Visible:=false;
frmBarra1.btnExit.Visible:=false;
frmBarra1.btnEdit.Visible:=false;
frmBarra1.btnRefresh.Visible:=false;
AdvGlowButton1.Enabled:=false;
AdvGlowButton5.Enabled:=false;
AdvGlowButton6.Enabled:=false;
AdvGlowButton7.Enabled:=false;
AdvGlowButton8.Enabled:=false;
AdvGlowButton9.Enabled:=false;
AdvGlowButton10.Enabled:=false;
AdvGlowButton11.Enabled:=false;
AdvGlowButton12.Enabled:=false;
end;

procedure TfrmHallazgosdeInspeccion.frmBarra1btnPostClick(Sender: TObject);
begin
  frmBarra1.btnPostClick(Sender);

end;

end.
