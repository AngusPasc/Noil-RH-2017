unit frm_Zinc_agregarConexion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, dblookup, StdCtrls, frm_Zinc_parametros, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, NxEdit,
  IniFiles;

type
  TfrmagregarConexion = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BotonBuscaDB: TNxButton;
    NxButton2: TNxButton;
    NxButton1: TNxButton;
    ds_databases: TDataSource;
    zq_global: TZQuery;
    sComboBox1: TComboBox;
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure BotonBuscaDBClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmagregarConexion: TfrmagregarConexion;

implementation

{$R *.dfm}

procedure TfrmagregarConexion.BotonBuscaDBClick(Sender: TObject);
begin
  frmparametros.zConnection.Disconnect;
  frmparametros.zConnection.HostName:=Edit1.Text;
  frmparametros.zConnection.Port:=StrToInt(Edit2.Text);
  frmparametros.zConnection.User:=Edit3.Text;
  frmparametros.zConnection.Password:=Edit4.Text;
  frmparametros.ZConnection.Connect;
  sComboBox1.Clear;
  zq_global.SQL.Clear;
  zq_global.SQL.Text:='SHOW DATABASES';
  zq_global.Open;
  zq_global.First;
  while Not zq_global.EoF do begin
    if (zq_global.FieldValues['Database'] <> 'information_schema') AND (zq_global.FieldValues['Database'] <> 'mysql')then
      sComboBox1.AddItem(zq_global.FieldValues['Database'],Nil);
    zq_global.Next;
  end;
end;

procedure TfrmagregarConexion.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BotonBuscaDB.Click;
end;

procedure TfrmagregarConexion.NxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmagregarConexion.NxButton2Click(Sender: TObject);
var Ini: TIniFile;
begin
  if sComboBox1.Text <> '' then begin
    Ini := TIniFile.Create(RutaINI);
    try
      Ini.WriteString('ConexionesDB', sComboBox1.Text, Edit1.Text);
      Ini.WriteInteger(sComboBox1.Text, 'Puerto', StrToInt(Edit2.Text));
      Ini.WriteString(sComboBox1.Text, 'Usuario', Edit3.Text);
      Ini.WriteString(sComboBox1.Text, 'Pass', Edit4.Text);
    finally
      Ini.Free;
    end;
    close;
  end else
    ShowMessage('Se necesita seleccionar una base de datos.');
end;

end.
