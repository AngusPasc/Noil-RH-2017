unit frm_catalogosistematizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frm_barra, ExtCtrls;

type
  Tfrmcatalogosistematizacion = class(TForm)
    Panel1: TPanel;
    frmBarra3: TfrmBarra;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    I: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcatalogosistematizacion: Tfrmcatalogosistematizacion;

implementation

{$R *.dfm}

end.
