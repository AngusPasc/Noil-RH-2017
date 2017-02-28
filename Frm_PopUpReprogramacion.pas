unit Frm_PopUpReprogramacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Buttons,
  Global;

type
  TFrmPopUpReprogramacion = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    comboConvenios: TComboBox;
    ZConvenios: TZQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPopUpReprogramacion: TFrmPopUpReprogramacion;

implementation

{$R *.dfm}

procedure TFrmPopUpReprogramacion.FormShow(Sender: TObject);
begin
  ZConvenios.Active := false;
  ZConvenios.ParamByName('contrato').Value := GLOBAL_CONTRATO;
  ZConvenios.ParamByName('convenio').Value := GLOBAL_CONVENIO;
  ZConvenios.Open;
  if ZConvenios.RecordCount > 0 then
  begin
    comboConvenios.Items.Add('Inicial');
    while not ZConvenios.Eof do
    begin
      comboConvenios.Items.Add(ZConvenios.FieldByName('sIdConvenio').AsString);
      ZConvenios.Next;
    end;
    comboConvenios.ItemIndex := 0;
  end
  else begin
    self.ModalResult := mrCancel;
    close;
  end;
end;

end.
