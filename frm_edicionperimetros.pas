unit frm_edicionperimetros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, StdCtrls, JvExStdCtrls, JvDBCombobox,
  JvCombobox;

type
  Tfrmedicionperimetros = class(TForm)
    JvDBUltimGrid1: TJvDBUltimGrid;
    dscampos: TDataSource;
    zcampos: TZQuery;
    DbCmbDescripciones: TJvDBComboBox;
    dbCmbValor: TJvDBComboBox;
    zcamposiIdPerimetro: TIntegerField;
    zcamposiIdGrupo: TIntegerField;
    zcamposiIdPerimetroPrincipal: TIntegerField;
    zcampossValorNominal: TStringField;
    zcamposdValorPerimetro: TFloatField;
    zcampossSistemaMedida: TStringField;
    zcampossDescripcion: TStringField;
    zcamposEAplicaValor: TStringField;
    zcamposiOrden: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zcamposEAplicaValorGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure zcamposAfterInsert(DataSet: TDataSet);
    procedure zcamposBeforePost(DataSet: TDataSet);
    procedure zcamposAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Grupo,PerimetroP:Integer;
  end;

var
  frmedicionperimetros: Tfrmedicionperimetros;

implementation

uses frm_connection;

{$R *.dfm}

procedure Tfrmedicionperimetros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure Tfrmedicionperimetros.FormShow(Sender: TObject);
var
  QrDesc:TzReadOnlyQuery;
begin
  zcampos.Open;
  QrDesc:=TzReadOnlyQuery.Create(nil);
  QrDesc.Connection:= zcampos.connection;
  QrDesc.SQL.Text:='Select sDescripcion from perimetros where iidgrupo=:grupo group by sDescripcion order by iorden ';
  QrDesc.ParamByName('grupo').AsInteger:= grupo;
  QrDesc.open;

  while not QrDesc.Eof do
  begin
    DbCmbDescripciones.Items.Add(QrDesc.FieldByName('sdescripcion').AsString);
    QrDesc.Next;
  end;

end;

procedure Tfrmedicionperimetros.zcamposAfterInsert(DataSet: TDataSet);
begin
  zcamposIIdperimetro.asinteger:=0;
  if Zcampos.RecordCount>0 then
  begin
    zcamposIIdperimetroPrincipal.asinteger:=Perimetrop;
  end;
  zcamposIIdgrupo.asinteger:=grupo;
end;

procedure Tfrmedicionperimetros.zcamposAfterPost(DataSet: TDataSet);
begin
  if zcampos.RecordCount=1 then
  begin
    PerimetroP:=zcamposIIdperimetro.asinteger;
  end;
end;

procedure Tfrmedicionperimetros.zcamposBeforePost(DataSet: TDataSet);
var
  Qrmax:TzReadOnlyQuery;
begin

  if (Zcampos.Fieldbyname('sdescripcion').AsString='') then
  begin
    Zcampos.Cancel;
    abort;
  end;


  if Zcampos.RecordCount=0 then
  begin
    zcamposIorden.asinteger:=0;
  end
  else
  begin
    QrMax:=TzReadOnlyQuery.Create(nil);
    try
      QrMax.Connection:=connection.zConnection;

      QrMax.SQL.Text:='select ifnull(max(iorden),0) as sgte from perimetros where iidgrupo=:grupo';
      QrMax.parambyname('grupo').asinteger:=grupo;
      QrMax.Open;
      zcamposIorden.asinteger:=QrMax.FieldByName('sgte').AsInteger + 1;
    finally
      freeandnil(QrMax);
    end;
  end;




end;

procedure Tfrmedicionperimetros.zcamposEAplicaValorGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
    text:='Valor Numerico';
    if uppercase(zcamposEAplicaValor.asstring)='SVALOR' then
      text:='Valor Cadena';

end;

end.
