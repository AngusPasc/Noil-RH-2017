unit frm_warningdia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, frm_connection, DB, ADODB, global,
  ZAbstractRODataset, ZDataset;

type
  TfrmWarningDia = class(TForm)
    GroupBox1: TGroupBox;
    btnNext: TButton;
    btnClose: TButton;
    Shape1: TShape;
    imgWarning: TImage;
    Label1: TLabel;
    tmDescripcion: TDBMemo;
    ds_QryMessage: TDataSource;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    tiWarning: TEdit;
    QryMessage: TZReadOnlyQuery;
    procedure btnCloseClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tiWarningEnter(Sender: TObject);
    procedure tiWarningExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWarningDia: TfrmWarningDia;

implementation

{$R *.dfm}

procedure TfrmWarningDia.btnCloseClick(Sender: TObject);
begin
    close
end;

procedure TfrmWarningDia.btnNextClick(Sender: TObject);
begin
   QryMessage.Next ;
   If QryMessage.Eof Then
      QryMessage.First

end;

procedure TfrmWarningDia.FormShow(Sender: TObject);
begin
    QryMessage.Active := False ;
    QryMessage.Open ;
end;

procedure TfrmWarningDia.tiWarningEnter(Sender: TObject);
begin
  tiwarning.Color:= global_color_entrada;
end;

procedure TfrmWarningDia.tiWarningExit(Sender: TObject);
begin
  tiwarning.Color:= global_color_salida;
end;

procedure TfrmWarningDia.FormActivate(Sender: TObject);
var
    iRecord : Integer ;
begin
    QryMessage.Active := False ;
    QryMessage.Open ;
    If QryMessage.RecordCount = 0 Then
       close
    Else
    Begin
        tiWarning.Text := '0' ;
        tiWarning.Text := IntToStr(QryMessage.RecordCount) ;
        Randomize;
        iRecord := Random (QryMessage.RecordCount) ;
        If iRecord > 0 Then
            QryMessage.RecNo := iRecord
    End

end;


procedure TfrmWarningDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree ;
end;

end.
