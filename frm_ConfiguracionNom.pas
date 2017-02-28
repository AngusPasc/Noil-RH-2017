unit frm_ConfiguracionNom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, AdvGlowButton;

type
  TfrmConfiguracionNom = class(TForm)
    qryConfiguracionNom: TZQuery;
    dsConfiguracionNom: TDataSource;
    lblZonaGeo: TLabel;
    qryConfiguracionNomiIdZonaGeografica: TIntegerField;
    qryZonasGeo: TZQuery;
    dsZonasGeo: TDataSource;
    cbxZonasGeo: TDBLookupComboBox;
    qryZonasGeoiId: TIntegerField;
    qryZonasGeosZona: TStringField;
    BtnAceptar: TAdvGlowButton;
    BtnCancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnAceptarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracionNom : TfrmConfiguracionNom;

implementation

{$R *.dfm}

procedure TfrmConfiguracionNom.BtnAceptarClick(Sender: TObject);
begin
    qryConfiguracionNom.Post;
    close;
end;

procedure TfrmConfiguracionNom.BtnCancelarClick(Sender: TObject);
begin
  qryConfiguracionNom.Cancel;
  close;
end;

procedure TfrmConfiguracionNom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmConfiguracionNom.FormShow(Sender: TObject);
begin
  qryConfiguracionNom.Active := False;
  qryConfiguracionNom.Open;
  qryConfiguracionNom.Edit;

  qryZonasGeo.Active := False;
  qryZonasGeo.Open;
end;

end.
