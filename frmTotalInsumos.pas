unit frmTotalInsumos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    lblDescribe: TLabel;
    lblFechaI: TLabel;
    lblFechaF: TLabel;
    lblTipoAct: TLabel;
    lblCosto: TLabel;
    lblTotal: TLabel;
    txtPartida: TEdit;
    txtFechaI: TEdit;
    memDescribe: TMemo;
    txtFechaF: TEdit;
    PagInsumos: TPageControl;
    TabSheet1: TTabSheet;
    GridInsumos: TDBGrid;
    cmdImprime: TButton;
    txtCosto: TEdit;
    txtTotal: TEdit;
    ImgLista: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
