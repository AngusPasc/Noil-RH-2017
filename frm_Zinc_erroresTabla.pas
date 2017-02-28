unit frm_Zinc_erroresTabla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, dblookup, StdCtrls, frm_Zinc_parametros, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, NxEdit,
  IniFiles, ExtCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, NxColumnClasses, NxColumns, ImgList, frm_Zinc_Mensaje;

type
  TfrmerroresTabla = class(TForm)
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
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    NxImageColumn1: TNxImageColumn;
    NormalImageList: TImageList;
    zq_sub: TZQuery;
    NxImageColumn2: TNxImageColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    procedure NxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NextGrid2CellClick(Sender: TObject; ACol, ARow: Integer);
    procedure NextGrid2HeaderClick(Sender: TObject; ACol: Integer);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmerroresTabla: TfrmerroresTabla;
  erroresdetabla:AnsiString;
  tabla1,tabla2,sExt,Campo:String;
  FaltantesPrimera,FaltantesSegunda:TStringList;
  Seleccionar_CamposTablas:Integer;

implementation
Uses frm_Zincroligent;
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

procedure TfrmerroresTabla.FormCreate(Sender: TObject);
Var
  Rows1,Rows2,i:Integer;
begin
  seleccionar_CamposTablas:=1;
  FaltantesPrimera:=TStringList.Create;
  FaltantesSegunda:=TStringList.Create;
  NxLabel1.Caption:='Campos faltantes en '+tabla1+' en '+DB1+':';
  NxLabel2.Caption:='Campos faltantes en '+tabla2+' en '+DB2+':';

  Campo:='';
  for i := 0 to Length(erroresdetabla) do begin
    if erroresdetabla[i] = ',' then begin
      if Pos('*1',Campo) > 0 then
        FaltantesPrimera.Add(Campo)
      else
        FaltantesSegunda.Add(Campo);
      Campo:='';
    end else begin
      Campo:=Campo+erroresdetabla[i];
    end;
  end;
  //showmessage('Faltantes en primera tabla: '+IntToStr(FaltantesPrimera.Count));
  //showmessage('Faltantes en segunda tabla: '+IntToStr(FaltantesSegunda.Count));

  //Cargar Tablas en NextGrid1:
  Rows1:=FaltantesPrimera.Count;
  if Rows1 > 0 then begin
    NextGrid1.AddRow(Rows1);
    NextGrid1.BeginUpdate;
    //NextGrid1.Cells[1,0]:='xnucualquiera';
    for i := 0 to Rows1 - 1 do begin
      NextGrid1.Cells[1,i]:=Trim(Replace(FaltantesPrimera[i], '*1', ''));
      NextGrid1.Cells[2,i]:='0';
    end;
    NextGrid1.EndUpdate;
  end;

  Rows2:=FaltantesSegunda.Count;
  if Rows2 > 0 then begin
    NextGrid2.AddRow(Rows2);
    NextGrid2.BeginUpdate;
    for i := 0 to Rows2 - 1 do begin
      NextGrid2.Cells[1,i]:=Trim(Replace(FaltantesSegunda[i], '*2', ''));
      NextGrid2.Cells[2,i]:='0';
      NextGrid2.Cells[3,i]:='1';
    end;
    NextGrid2.EndUpdate;
  end;
end;

procedure TfrmerroresTabla.NextGrid2CellClick(Sender: TObject; ACol, ARow: Integer);
Var
  Campo,Query:String;
  buttonSelected:Integer;
begin
  if ACol = 2 then begin
    Campo:=Trim(NextGrid2.Cells[1,ARow]);
    frmparametros.conectarDB(DB1);
    zq_global.SQL.Clear;
    zq_global.SQL.Text:='DESCRIBE '+DB1+'.'+tabla1;
    zq_global.Open;
    Query:='ALTER TABLE '+DB2+'.'+tabla1+' ';
    zq_global.First;
    while Not zq_global.EoF do begin
      if zq_global.FieldValues['Field'] = Campo then begin
        Query:= Query+'ADD COLUMN '+Campo+' '+zq_global.FieldValues['Type']+#10+#13;
        //Query:= Query+'ADD KEY '+Campo+' ('+zq_global.FieldValues['Type']+')';
      end;
      zq_global.Next;
    end;
    Query:=Query+';';
    zq_Global.SQL.Text:=Query;
    buttonSelected := MessageDlg('¿Deseas ejecutar la siguiente query en '+tabla1+'?: '+#10+#13+Query, mtCustom, [mbYes,mbCancel], 0);
    if buttonSelected = mrYes then begin
      zq_Global.ExecSQL;
      frmZincroligent.cargarTablas(DB1,'1');
      frmZincroligent.compararBD(DB1,DB2);
      NextGrid2.DeleteRow(ARow);
    end else begin
      zq_Global.SQL.Text:='';
    end;
  end;

end;

procedure TfrmerroresTabla.NextGrid2HeaderClick(Sender: TObject; ACol: Integer);
Var
  o,i:Integer;
begin
  if seleccionar_CamposTablas=0 then begin
    o:=NextGrid2.RowCount;
    if ACol=3 then begin
      for I := 0 to o - 1 do begin
        NextGrid1.Cells[3,i]:='1';
      end;
    end;
    seleccionar_CamposTablas:=1;
  end else begin
    o:=NextGrid2.RowCount;
    if ACol=3 then begin
      for I := 0 to o - 1 do begin
        NextGrid1.Cells[3,i]:='0';
      end;
    end;
    seleccionar_CamposTablas:=0;
  end;
end;

procedure TfrmerroresTabla.NxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmerroresTabla.NxButton2Click(Sender: TObject);
Var
  i,buttonSelected:Integer;
  CamposFaltantesEnTablas:TStringList;
  Query:String;
begin
  CamposFaltantesEnTablas:=TStringList.Create;
  for i := 0 to NextGrid2.RowCount- 1 do
    if NextGrid2.Cell[3,i].AsInteger = 1 then
      CamposFaltantesEnTablas.Add(NextGrid2.Cells[1,i]);

  frmparametros.conectarDB(DB1);
  zq_global.Close;
  zq_global.SQL.Clear;
  zq_global.SQL.Text:='DESCRIBE '+DB1+'.'+tabla1;
  zq_global.Open;
  Query:='ALTER TABLE '+DB2+'.'+tabla1+' ADD ('+#13+#10;
  for i := 0 to CamposFaltantesEnTablas.Count - 1 do begin
    Campo:=Trim(CamposFaltantesEnTablas[i]);
    zq_global.First;
    while Not zq_global.EoF do begin
      if zq_global.FieldValues['Field'] = Campo then begin
        Query:=Query+'  '+Campo+' '+zq_global.FieldValues['Type'];
        if zq_global.FieldValues['NULL'] = 'YES' then
          Query:=Query+' NOT NULL';
        if zq_global.FieldValues['Default'] <> '' then
          Query:=Query+' DEFAULT "'+zq_global.FieldValues['Default']+'"';
        if zq_global.FieldValues['extra'] <> '' then
          Query:=Query+' AUTO_INCREMENT';
        Query:=Query+','+#13+#10;
      end;
      zq_global.Next;
    end;
  end;
  SetLength(Query, Length(Query) - 3);
  Query:=Query+#13+#10+');';
  zq_Global.SQL.Text:=Query;
  buttonSelected := MessageDlg('¿Deseas ejecutar la siguiente query en '+tabla1+'?: '+#10+#13+Query, mtCustom, [mbYes,mbCancel], 0);
  if buttonSelected = mrYes then begin
    frmparametros.conectarDB(DB2);
    zq_Global.ExecSQL;
    frmZincroligent.cargarTablas(DB1,'1');
    frmZincroligent.compararBD(DB1,DB2);
    close;
  end else begin
    zq_Global.SQL.Text:='';
  end;


end;

end.
