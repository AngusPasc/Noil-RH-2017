unit frm_Zinc_erroresDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, dblookup, StdCtrls, frm_Zinc_parametros, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, NxEdit,
  IniFiles, ExtCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, NxColumnClasses, NxColumns, ImgList, frm_Zinc_Mensaje;

type
  TfrmerroresDB = class(TForm)
    ds_databases: TDataSource;
    zq_global: TZQuery;
    NextGrid1: TNextGrid;
    Panel1: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Panel2: TPanel;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    NxIncrementColumn1: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NextGrid2: TNextGrid;
    NxIncrementColumn2: TNxIncrementColumn;
    NxTextColumn2: TNxTextColumn;
    NormalImageList: TImageList;
    NxImageColumn1: TNxImageColumn;
    zq_sub: TZQuery;
    procedure NxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NextGrid2CellClick(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmerroresDB: TfrmerroresDB;
  FaltantesPrimeraDB:TStringList;
  FaltantesSegundaDB:TStringList;

implementation

{$R *.dfm}

function Replace(Dest, SubStr, Str: string): string;
var
  Position: Integer;
begin
  Position:=Pos(SubStr, Dest);
  Delete(Dest, Position, Length(SubStr));
  Insert(Str, Dest, Position);
  Result:=Dest;
end;

procedure TfrmerroresDB.FormCreate(Sender: TObject);
Var
  Rows1,Rows2,i:Integer;
begin
  NxLabel1.Caption:='Tablas faltantes en '+DB1+':';
  NxLabel2.Caption:='Tablas faltantes en '+DB2+':';

  //Cargar Tablas en NextGrid1:
  Rows1:=FaltantesPrimeraDB.Count;
  NextGrid1.AddRow(Rows1);
  NextGrid1.BeginUpdate;
  for i := 0 to Rows1 - 1 do begin
    NextGrid1.Cells[1,i]:=FaltantesPrimeraDB[i];
  end;
  NextGrid1.EndUpdate;

  //Cargar Tablas en NextGrid1:
  Rows2:=FaltantesSegundaDB.Count;
  NextGrid2.AddRow(Rows2);
  NextGrid2.BeginUpdate;
  for i := 0 to Rows2 - 1 do begin
    NextGrid2.Cells[1,i]:=FaltantesSegundaDB[i];
    NextGrid2.Cells[2,i]:='0';
  end;
  NextGrid2.EndUpdate;

end;

procedure TfrmerroresDB.NextGrid2CellClick(Sender: TObject; ACol, ARow: Integer);
Var
  Tabla:String;
  Query:AnsiString;
  buttonSelected:Integer;
begin
  if ACol = 2 then begin
    //Query:='CREATE TABLE '+Tabla+' ('+#10+#13;
    Tabla:=NextGrid2.Cells[1,ARow];
    frmparametros.conectarDB(DB1);
    zq_global.SQL.Clear;
    zq_global.SQL.Text:='SHOW CREATE TABLE '+DB1+'.'+Tabla;
    zq_global.Open;
    zq_global.First;
    Query:=zq_global.FieldValues['Create Table'];
    zq_global.Close;
    frmparametros.conectarDB(DB2);
    Query:=Replace(Query, '`'+Tabla+'`', DB2+'.`'+Tabla+'`');
    zq_sub.SQL.Clear;
    zq_sub.SQL.Text:=Query;
    buttonSelected := MessageDlg('Se creará la tabla '+Tabla+' en '+DB2+':'+#10+#13+#10+#13+' '+Query,mtCustom, [mbYes,mbCancel], 0);
    if buttonSelected = mrYes then begin
      zq_sub.ExecSQL;
      NextGrid2.DeleteRow(ARow);
    end else begin
      zq_sub.SQL.Text:='';
    end;

  end;
end;

procedure TfrmerroresDB.NxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmerroresDB.NxButton2Click(Sender: TObject);
Var
  i:Integer;
begin
  frmparametros.conectarDB(DB1);
  //for i := 0 to NextGrid1.RowCount - 1 do

  zq_global.SQL.Clear;
  //zq_global.SQL.Text:='DESCRIBE '+;
end;

end.
