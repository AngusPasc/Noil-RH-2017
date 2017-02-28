unit frm_formatogenerador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Newpanel, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, DBCtrls, Grids, DBGrids, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, NxColumns, NxVirtualColumn, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, RxMemDS, frm_connection, AdvGlowButton;

type
  Tfrmformatogenerador = class(TForm)
    GroupBox1: TGroupBox;
    cmbFormatosGenerador: TDBLookupComboBox;
    Label1: TLabel;
    dsgenerador: TDataSource;
    zgrupo: TZQuery;
    zgrupoiIdGrupo: TIntegerField;
    zgruposDescripcion: TStringField;
    zgruposSimbolo: TStringField;
    JvDBUltimGrid1: TJvDBUltimGrid;
    mdperimetros: TRxMemoryData;
    dsperimetros: TDataSource;
    BtnNuevo: TAdvGlowButton;
    BtnModificar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CrearDatos;
    procedure BtnModificarClick(Sender: TObject);
    procedure zgrupoAfterScroll(DataSet: TDataSet);
    procedure BtnNuevoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmformatogenerador: Tfrmformatogenerador;
  abierto:boolean;

implementation
uses frm_edicionperimetros;

{$R *.dfm}

procedure Tfrmformatogenerador.BtnModificarClick(Sender: TObject);
begin
  Application.CreateForm(Tfrmedicionperimetros, frmedicionperimetros);
  try
    frmedicionperimetros.zcampos.Connection:=Connection.Zconnection;
    frmedicionperimetros.zcampos.ParamByName('grupo').AsInteger:=zgrupo.FieldByName('iidgrupo').AsInteger;
    frmedicionperimetros.zcampos.ParamByName('perimetro').AsInteger:=mdperimetros.FieldByName('iidperimetro').AsInteger;
    frmedicionperimetros.Grupo:=zgrupo.FieldByName('iidgrupo').AsInteger;
    frmedicionperimetros.perimetrop:=mdperimetros.FieldByName('iidperimetro').AsInteger;
    frmedicionperimetros.ShowModal;
  finally
    freeandnil(frmedicionperimetros);
    CrearDatos;
  end;
end;

procedure Tfrmformatogenerador.BtnNuevoClick(Sender: TObject);
begin
  Application.CreateForm(Tfrmedicionperimetros, frmedicionperimetros);
  try
    frmedicionperimetros.zcampos.Connection:=Connection.Zconnection;
    frmedicionperimetros.zcampos.ParamByName('grupo').AsInteger:=zgrupo.FieldByName('iidgrupo').AsInteger;
    frmedicionperimetros.zcampos.ParamByName('perimetro').AsInteger:=0;
    frmedicionperimetros.Grupo:=zgrupo.FieldByName('iidgrupo').AsInteger;
    frmedicionperimetros.perimetrop:=0;
    frmedicionperimetros.ShowModal;
  finally
    freeandnil(frmedicionperimetros);
    CrearDatos;
  end;
end;

procedure Tfrmformatogenerador.CrearDatos;
var
zprincipal, zsecundario, zcampos: TZReadOnlyQuery;
nombre: String;
  i: Integer;
begin
  zprincipal:=TzReadOnlyQuery.Create(nil);
  zprincipal.SQL.Text:='Select * from perimetros where iidgrupo=:grupo and iidperimetroprincipal is null';
  zprincipal.Connection:=connection.zConnection;

  zsecundario:=TzReadOnlyQuery.Create(nil);
  zsecundario.Connection:=connection.zConnection;
  zsecundario.SQL.Text:='Select * from perimetros where iidgrupo=:grupo and iidperimetroprincipal=:perimetro';

  zcampos:=TzReadOnlyQuery.Create(nil);
  zcampos.Connection:=connection.zConnection;
  zcampos.SQL.Text:='Select sDescripcion,eaplicavalor from perimetros where iidgrupo=:grupo group by sDescripcion order by iorden ';
  zcampos.ParamByName('grupo').AsInteger:= zgrupo.FieldByName('iidgrupo').AsInteger;
  zcampos.open;

  mdperimetros.Active:=false;
  mdperimetros.Fields.Clear;   //limpia las columnas
  try
    while not zcampos.Eof do
    begin
      nombre:='Campo'+inttostr(zcampos.RecNo);
      with mdperimetros do
      begin
        if uppercase(zcampos.FieldByName('eaplicavalor').AsString)='SVALOR' then
        begin
          with TStringField.Create(self) do
          begin
              Name:=nombre+nombre;
              FieldKind:=fkData;
              FieldName:=nombre;
              Size:=25;
              DataSet:=mdperimetros;
              DisplayLabel:=zcampos.FieldByName('sdescripcion').AsString;
            end;
        end
        else
        begin
        with TFloatField.Create(self) do
         begin
          Name:=nombre+nombre;
          FieldKind:=fkData;
          FieldName:=nombre;
          Size:=0;
          DataSet:=mdperimetros;
          DisplayLabel:=zcampos.FieldByName('sdescripcion').AsString;
        end;
      end;
    end;
    zcampos.Next;
  end;
    with TIntegerField.Create(self) do
    begin
      Name:='LlaveiidPerimetro';
      FieldKind:=fkData;
      FieldName:='iidPerimetro';
      Size:=0;
      DataSet:=mdperimetros;
      DisplayLabel:='iidPerimetro';
      Visible:=False;
    end;

    mdperimetros.Active:=True;

    zprincipal.ParamByName('grupo').AsInteger:=zgrupo.FieldByName('iidgrupo').AsInteger;
    zprincipal.Open;

    zprincipal.Open;

    while not zprincipal.Eof do
    begin
      zsecundario.Active:=False;
      zsecundario.ParamByName('grupo').AsInteger:=zgrupo.FieldByName('iidgrupo').AsInteger;
      zsecundario.ParamByName('perimetro').AsInteger:=zprincipal.FieldByName('iidperimetro').AsInteger;
      zsecundario.Open;

      mdperimetros.Append;

      if mdperimetros.FieldByName('campo1').DataType=ftString then
        mdperimetros.FieldValues['campo1']:=zprincipal.FieldByName('svalornominal').Asstring
      else
        mdperimetros.FieldValues['campo1']:=zprincipal.FieldByName('dvalorperimetro').AsFloat;


      for I := 1 to mdperimetros.Fields.Count- 1 do
      begin
        nombre:=mdperimetros.FieldDefList.FieldDefs[i].Name;
        if zsecundario.Locate('sdescripcion',mdperimetros.FieldByName(nombre).DisplayLabel,[]) then
        begin
          if mdperimetros.FieldDefs.Find(nombre).DataType=ftString then
            mdperimetros.Fieldvalues[nombre]:=zsecundario.FieldByName('svalornominal').AsString
          else
            mdperimetros.Fieldvalues[nombre]:=zsecundario.FieldByName('dvalorperimetro').Asfloat;
        end;
      end;



            (*
        i:=1;
              Nombre:='campo'+inttostr(i);
              mdperimetros.Append;
              if mdperimetros.FieldByName(nombre).DataType=ftString then
                mdperimetros.FieldValues[nombre]:=zprincipal.FieldByName('svalornominal').Asstring
              else
                mdperimetros.FieldValues[nombre]:=zprincipal.FieldByName('dvalorperimetro').AsFloat;
              while not zsecundario.Eof do
              begin
                inc(i);
                Nombre:='campo'+inttostr(i);
                if mdperimetros.FieldByName(nombre).DisplayLabel=zsecundario.FieldByName('sdescripcion').AsString then
                begin
                  if mdperimetros.FieldDefs.Find(nombre).DataType=ftString then
                    mdperimetros.Fieldvalues[nombre]:=zsecundario.FieldByName('svalornominal').AsString
                  else
                    mdperimetros.Fieldvalues[nombre]:=zsecundario.FieldByName('dvalorperimetro').Asfloat;
                end;
                zsecundario.Next;
              end;

      *)
      mdperimetros.FieldByName('iidperimetro').AsInteger:=zprincipal.FieldByName('iidperimetro').AsInteger;

      mdperimetros.Post;
      zprincipal.Next;
    end;
  finally
  freeandnil(zprincipal);
  freeandnil(zsecundario);
  freeandnil(zcampos);
  end;

end;

procedure Tfrmformatogenerador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure Tfrmformatogenerador.FormShow(Sender: TObject);
begin
  abierto:=false;
  zgrupo.Close;
  zgrupo.Open;
  Abierto:=true;
end;

procedure Tfrmformatogenerador.zgrupoAfterScroll(DataSet: TDataSet);
begin
  if abierto then
    CrearDatos;
end;

end.
