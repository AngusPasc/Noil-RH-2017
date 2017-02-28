unit frm_estimacionAvances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  Grids, DBGrids, rxToolEdit, RXDBCtrl, CheckLst, JvExControls, JvxCheckListBox,
  ZAbstractDataset;
type
  TfrmEstimacionAvances = class(TForm)
    CmdCancel: TButton;
    OrdenesAnexos: TZReadOnlyQuery;
    ds_OrdenesAnexos: TDataSource;
    Label2: TLabel;
    tsOrdenes: TDBLookupComboBox;
    GrupoEstimacion: TGroupBox;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    tFecha_I: TDBDateEdit;
    tFecha_F: TDBDateEdit;
    tNumeroEstimacion: TEdit;
    lblTipo: TLabel;
    DBGridAvances: TDBGrid;
    cmdOk: TBitBtn;
    ds_avances: TDataSource;
    QryAvances: TZQuery;
    QryAvancessContrato: TStringField;
    QryAvancesdIdFecha: TDateField;
    QryAvancesdAvanceProgramadoFisico: TFloatField;
    QryAvancesdAvanceRealFisico: TFloatField;
    QryAvancesdAvanceProgramadoFinanciero: TFloatField;
    QryAvancesdAvanceFisicoFinanciero: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure tsOrdenesExit(Sender: TObject);
    procedure QryAvancesBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimacionAvances: TfrmEstimacionAvances;
  Bandera, Fecha  : string;
  oper            : integer ;
  Consecutivo     : integer;

implementation

uses
    frm_EstimacionGeneral, frm_EstimacionDetalleAdicional;

{$R *.dfm}

procedure TfrmEstimacionAvances.FormShow(Sender: TObject);
var
    Orden : string;
begin
    OrdenesAnexos.Active;
    OrdenesAnexos.ParamByName('Contrato').AsString := global_contrato_barco;
    OrdenesAnexos.Open;

    if OrdenesAnexos.RecordCount > 0 then
       Orden :=  OrdenesAnexos.FieldValues['sContrato'];

    if OrdenesAnexos.RecordCount = 0 then
       messageDLG('No existe un códogo principal para las Ordenes / Anexos registradas!', mtInformation, [mbOk], 0);

    tFecha_I.Date          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['dFechaInicio'];
    tFecha_F.Date          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['dFechaFinal'];
    tNumeroEstimacion.Text := frmEstimacionGeneral.EstimacionGeneral.FieldValues['iNumeroEstimacion'];
    lblTipo.Caption        := frmEstimacionGeneral.EstimacionGeneralsDescripcion.Text;
    tsOrdenes.KeyValue     := Orden;
    tsOrdenes.SetFocus;
    DBGridAvances.SetFocus;
end;

procedure TfrmEstimacionAvances.QryAvancesBeforePost(DataSet: TDataSet);
begin
    QryAvances.FieldValues['sContrato'] := tsOrdenes.Text;
end;

procedure TfrmEstimacionAvances.tsOrdenesExit(Sender: TObject);
begin
    QryAvances.Active := False;
    QryAvances.ParamByName('Contrato').AsString := tsOrdenes.Text;
    QryAvances.Open;
end;

end.
