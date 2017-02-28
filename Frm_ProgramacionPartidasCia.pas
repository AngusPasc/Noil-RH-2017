unit frm_ProgramacionPartidasCia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Global, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ZAbstractRODataset, frm_Connection, ZAbstractDataset,
  udbgrid, ZDataset, rxToolEdit, RXDBCtrl, Mask, frm_barra, Grids, DBGrids, Menus,
  UnitTBotonesPermisos, UnitExcepciones, ComCtrls, DBDateTimePicker, Buttons;

type
  TfrmProgramacionPartidasCia = class(TForm)
    Label3: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    ds_detalle: TDataSource;
    QryDetalle: TZQuery;
    dBPersonal: TDBGrid;
    lblPartida: TLabel;
    lblDescripcion: TLabel;
    PopupMenu1: TPopupMenu;
    BitBtn1: TBitBtn;
    FechaFinal: TLabel;
    FechaInicial: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgramacionPartidasCia: TfrmProgramacionPartidasCia;
  Fecha, Bandera: string;
  oper: integer;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
  utGrid: ticDbgrid;
implementation

uses
  frmMovtoPersonalxOficio;

{$R *.dfm}


procedure TfrmProgramacionPartidasCia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmProgramacionPartidasCia.BitBtn1Click(Sender: TObject);
begin
  close
end;

end.

