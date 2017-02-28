unit frm_sincinformes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_Connection, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset,
  NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, DBCtrls, ExtCtrls, Mask, rxToolEdit, rxCurrEdit;

type
  TfrmInformeSincronizacion = class(TForm)
    dsSMensajes: TDataSource;
    qrySMensajes: TZReadOnlyQuery;
    cmdSalir: TButton;
    cmdActualizar: TButton;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    qrySMensajesiid: TIntegerField;
    qrySMensajesdFecha: TDateTimeField;
    qrySMensajessbasedatos: TStringField;
    qrySMensajessservidor: TStringField;
    qrySMensajesmMensajes: TMemoField;
    DBMemo1: TDBMemo;
    tRefresco: TTimer;
    CheckBox1: TCheckBox;
    txtMaximos: TRxCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cmdActualizarClick(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure cmdSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tRefrescoTimer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Actualizar();
    procedure qrySMensajesAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInformeSincronizacion: TfrmInformeSincronizacion;

implementation

{$R *.dfm}

procedure TfrmInformeSincronizacion.cmdSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInformeSincronizacion.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    tRefresco.Enabled := true
  else
    tRefresco.Enabled := false;
end;

procedure TfrmInformeSincronizacion.cmdActualizarClick(Sender: TObject);
begin
  Actualizar;
end;

procedure TfrmInformeSincronizacion.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
var
  Grid: TStringGrid;
  Texto: string;
  Rectangulo: TRect;
begin
  Rectangulo := Rect;
  Grid := TStringGrid(Sender);
  if Field.IsBlob then
  begin
    Grid.Canvas.FillRect(Rect);
    Texto := Field.AsString;
    DrawText(Grid.Canvas.Handle,
      PChar(Texto),
      StrLen(PChar(Texto)),
      Rectangulo,
      DT_WORDBREAK);
  end;

end;

procedure TfrmInformeSincronizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmInformeSincronizacion.FormShow(Sender: TObject);
begin
  Actualizar;
end;

procedure TfrmInformeSincronizacion.qrySMensajesAfterScroll(DataSet: TDataSet);
begin
  if (Pos('ERRO', DBMemo1.Text) > 0) or (Pos('Erro', DBMemo1.Text) > 0) then
    DBMemo1.Color := clMaroon
  else
    DBMemo1.Color := clSkyBlue;
end;

procedure TfrmInformeSincronizacion.tRefrescoTimer(Sender: TObject);
begin
  cmdActualizar.Click;
end;

procedure TfrmInformeSincronizacion.Actualizar();
begin
  qrySMensajes.Active := false;
  qrySMensajes.ParamByName('limite').AsInteger := StrToInt(txtMaximos.Text);
  qrySMensajes.Open;
end;
end.

