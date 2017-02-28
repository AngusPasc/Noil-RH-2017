unit frm_tipsdia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, frm_connection, DB, global,
  ZAbstractRODataset, ZDataset;

type
  TfrmTipsDia = class(TForm)
    ChkIniciaSesion: TCheckBox;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    btnNext: TButton;
    btnClose: TButton;
    Shape1: TShape;
    imgTip: TImage;
    Label1: TLabel;
    tmDescripcion: TDBMemo;
    ds_QryMessage: TDataSource;
    DBText1: TDBText;
    Label2: TLabel;
    QryMessage: TZReadOnlyQuery;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNextClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipsDia: TfrmTipsDia;

implementation

{$R *.dfm}

procedure TfrmTipsDia.btnCloseClick(Sender: TObject);
begin
    close
end;

procedure TfrmTipsDia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'UPDATE configuracion SET sTipsInicial = :Respuesta ' +
                                  'where sContrato = :contrato') ;
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
    connection.zCommand.Params.ParamByName('contrato').value := global_contrato ;
    connection.zCommand.Params.ParamByName('Respuesta').DataType := ftString ;
    If chkIniciaSesion.Checked Then
        connection.zCommand.Params.ParamByName('Respuesta').value := 'Si'
    Else
        connection.zCommand.Params.ParamByName('Respuesta').value := 'No' ;
    connection.zCommand.ExecSQL ;
    action := cafree ;
end;

procedure TfrmTipsDia.btnNextClick(Sender: TObject);
begin
   QryMessage.Next ;
   If QryMessage.Eof Then
      QryMessage.First
end;

procedure TfrmTipsDia.FormShow(Sender: TObject);
var
    iRecord : Integer ;
begin
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sTipsInicial From configuracion Where sContrato = :Contrato') ;
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.FieldValues['sTipsInicial'] = 'Si' Then
        chkIniciaSesion.Checked := True
    Else
        chkIniciaSesion.Checked := False ;

    QryMessage.Active := False ;
    QryMessage.Open ;
    If QryMessage.RecordCount = 0 Then
       btnClose.Click
    Else
    Begin
        Randomize;
        iRecord := Random (QryMessage.RecordCount) ;
        If iRecord > 0 Then
            QryMessage.RecNo := iRecord ;
    End

end;

end.
