unit frm_DetalleCaptura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, RxMemDS;

type
  TDetalleCaptura = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    mdDetalle: TRxMemoryData;
    mdRespaldo: TRxMemoryData;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetalleCaptura: TDetalleCaptura;

implementation

{$R *.dfm}

procedure TDetalleCaptura.BitBtn2Click(Sender: TObject);
begin
  // Si se cancela se debe regresar la información original
  DataSource1.DataSet.First;
  while Not DataSource1.DataSet.Eof do
  begin
    mdRespaldo.RecNo := DataSource1.DataSet.RecNo;

    DataSource1.DataSet.Edit;
    DataSource1.DataSet.FieldByName('iFolio').AsString      := mdRespaldo.FieldByName('iFolio').AsString;
    DataSource1.DataSet.FieldByName('sReferencia').AsString := mdRespaldo.FieldByName('sReferencia').AsString;
    DataSource1.DataSet.FieldByName('dCantidad').AsString   := mdRespaldo.FieldByName('dCantidad').AsString;
    DataSource1.DataSet.FieldByName('dAcumulado').AsString  := mdRespaldo.FieldByName('dAcumulado').AsString;
    DataSource1.DataSet.FieldByName('dCaptura').AsString    := mdRespaldo.FieldByName('dCaptura').AsString;
    DataSource1.DataSet.Post;

    DataSource1.DataSet.Next;
  end;
  DataSource1.DataSet.First;
end;

procedure TDetalleCaptura.FormShow(Sender: TObject);
begin
  // Mover los registros originales hacia el vector de respaldo
  mdRespaldo.Open;
  mdRespaldo.EmptyTable;
  
  DataSource1.DataSet.First;
  while Not DataSource1.DataSet.Eof do
  begin
    mdRespaldo.Append;
    mdRespaldo.FieldByName('iFolio').AsString := DataSource1.DataSet.FieldByName('iFolio').AsString;
    mdRespaldo.FieldByName('sReferencia').AsString := DataSource1.DataSet.FieldByName('sReferencia').AsString;
    mdRespaldo.FieldByName('dCantidad').AsString := DataSource1.DataSet.FieldByName('dCantidad').AsString;
    mdRespaldo.FieldByName('dAcumulado').AsString := DataSource1.DataSet.FieldByName('dAcumulado').AsString;
    mdRespaldo.FieldByName('dCaptura').AsString := DataSource1.DataSet.FieldByName('dCaptura').AsString;
    mdRespaldo.Post;

    DataSource1.DataSet.Next;
  end;
  DataSource1.DataSet.First;
end;

end.
