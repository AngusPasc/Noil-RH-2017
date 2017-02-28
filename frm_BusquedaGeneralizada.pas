unit frm_BusquedaGeneralizada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZDataset;

type
  TfrmBusquedaGeneralizada = class(TForm)
    GridRegistros: TDBGrid;
    cmdCancelar: TButton;
    cmdAceptar: TButton;
    Titulo: TLabel;
    Ds: TDataSource;
    Qry: TZReadOnlyQuery;
    procedure cmdCancelarClick(Sender: TObject);
    procedure cmdAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BotonPulsado : String;
  end;

var
  frmBusquedaGeneralizada: TfrmBusquedaGeneralizada;

implementation

{$R *.dfm}

procedure TfrmBusquedaGeneralizada.cmdAceptarClick(Sender: TObject);
begin
BotonPulsado := 'ACEPTAR';
Close
end;

procedure TfrmBusquedaGeneralizada.cmdCancelarClick(Sender: TObject);
begin
BotonPulsado := 'CANCELAR';
Close
end;

procedure TfrmBusquedaGeneralizada.FormShow(Sender: TObject);
begin
BotonPulsado := 'CANCELAR';
end;

end.
