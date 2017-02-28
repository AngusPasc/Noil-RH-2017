unit frm_Zinc_editarConexiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, dblookup, StdCtrls, frm_Zinc_parametros, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, NxEdit,
  IniFiles, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxGrid, NxColumns, NxColumnClasses, ImgList;

type
  TfrmeditarConexiones = class(TForm)
    NxButton2: TNxButton;
    NxButton1: TNxButton;
    ds_databases: TDataSource;
    zq_global: TZQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    NextGrid1: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxImageColumn1: TNxImageColumn;
    NormalImageList: TImageList;
    sComboBox1: TComboBox;
    procedure BotonBuscaDBClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NextGrid1CellClick(Sender: TObject; ACol, ARow: Integer);
    procedure sComboBox1Enter(Sender: TObject);
    procedure actualizarConexionesGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeditarConexiones: TfrmeditarConexiones;

implementation

{$R *.dfm}
procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
begin
   Assert(Assigned(Strings));
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;
end;

procedure TfrmeditarConexiones.actualizarConexionesGrid;
Var
  Lista,xt:TStringList;
  Ini:TIniFile;
  Seccion:Boolean;
  i,n:Integer;
begin
  Lista:=TStringList.Create;
  Ini := TIniFile.Create(RutaINI);
  Try
    Seccion:=Ini.SectionExists('ConexionesDB');
    if Seccion then begin
      Ini.ReadSectionValues('ConexionesDB',Lista);
    end;
  Finally
    Ini.Free;
  End;
  if Lista.Count > 0 then begin
    n:=Lista.Count;
    NextGrid1.ClearRows;
    NextGrid1.AddRow(n);
    NextGrid1.BeginUpdate;
    for i := 0 to Lista.Count - 1 do begin
      xt:=TStringList.Create;
      split('=',Lista[i],xt);
      NextGrid1.Cell[0,i].AsString:=xt[0];
      NextGrid1.Cell[1,i].AsInteger:=0;
      xt.Free;
    end;
    Lista.Free;
    NextGrid1.EndUpdate;
  end else begin
    ShowMessage('No existen conexiones asociadas.');
    Close;
  end;
end;

procedure TfrmeditarConexiones.BotonBuscaDBClick(Sender: TObject);
begin
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

procedure TfrmeditarConexiones.FormCreate(Sender: TObject);
Var
  Lista,xt:TStringList;
  Ini:TIniFile;
  Seccion:Boolean;
  i,n:Integer;
begin
  Lista:=TStringList.Create;
  Ini := TIniFile.Create(RutaINI);
  Try
    Seccion:=Ini.SectionExists('ConexionesDB');
    if Seccion then begin
      Ini.ReadSectionValues('ConexionesDB',Lista);
    end;
  Finally
    Ini.Free;
  End;
  if Lista.Count > 0 then begin
    n:=Lista.Count;
    NextGrid1.AddRow(n);
    NextGrid1.BeginUpdate;
    for i := 0 to Lista.Count - 1 do begin
      xt:=TStringList.Create;
      split('=',Lista[i],xt);
      NextGrid1.Cell[0,i].AsString:=xt[0];
      NextGrid1.Cell[1,i].AsInteger:=0;
      xt.Free;
    end;
    Lista.Free;
    NextGrid1.EndUpdate;
  end else begin
    ShowMessage('No existen conexiones asociadas.');
    Close;
  end;
end;

procedure TfrmeditarConexiones.NextGrid1CellClick(Sender: TObject; ACol, ARow: Integer);
Var
  Ini:TIniFile;
  Seccion:Boolean;
  aEliminar:String;
begin
  if ACol = 1 then begin
    aEliminar:=NextGrid1.Cells[0,ARow];
    Ini := TIniFile.Create(RutaINI);
    Try
      Seccion:=Ini.SectionExists('ConexionesDB');
      if Seccion then begin
        Ini.DeleteKey('ConexionesDB',aEliminar);
        Ini.EraseSection(aEliminar);
      end;
    Finally
      NextGrid1.DeleteRow(ARow);
      Ini.Free;
    End;
  end;
end;

procedure TfrmeditarConexiones.NxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmeditarConexiones.NxButton2Click(Sender: TObject);
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
    actualizarConexionesGrid;
  end else
    ShowMessage('Se necesita seleccionar una base de datos.');
end;

procedure TfrmeditarConexiones.sComboBox1Enter(Sender: TObject);
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

end.
