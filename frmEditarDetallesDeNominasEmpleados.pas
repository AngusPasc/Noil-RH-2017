unit frmEditarDetallesDeNominasEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_Connection, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, DBLabelEdit, Buttons, frmDetallesNominasEmpleados;

type
  Tfrm_EditarDetallesDeNominasEmpleados = class(TForm)
    tsNombre: TDBEdit;
    btnPost: TBitBtn;
    btnCancel: TBitBtn;
    tdCantidad: TDBEdit;
    Label4: TLabel;
    tdImporte: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    LabelTotal: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    zq_CatalogoDeTipos: TZQuery;
    ds_CatalogoDeTipos: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure SiguienteCajon(Sender: TObject; var Key: Char);
    procedure tdCantidadChange(Sender: TObject);
    procedure tdImporteChange(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure tdImporteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_EditarDetallesDeNominasEmpleados: Tfrm_EditarDetallesDeNominasEmpleados;
  Tipo, Nombre: String;
  iId_Nomina: Integer;


function MultiStringReplace(const S : string; OldPattern, NewPattern : array of string; Flags: TReplaceFlags): string;

implementation


{$R *.dfm}

function MultiStringReplace(const S : string; OldPattern, NewPattern : array of string;
  Flags : TReplaceFlags): string;
var
  i : Integer;
begin
  Assert(Length(OldPattern) = Length(NewPattern), 'Pattern array lengths differ');
  Result := S;
  for i := Low(OldPattern) to High(OldPattern) do
    Result := StringReplace(Result, OldPattern[i], NewPattern[i], Flags);
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.DBLookupComboBox1KeyPress(
  Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tdCantidad.SetFocus

end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.FormShow(Sender: TObject);
Var
  i: Integer;
begin
//  ShowMessage(Tipo);
  DBCheckBox1.Checked := True; 
  zq_CatalogoDeTipos.Active := False;
  if Tipo = 'Percepcion' then begin
    zq_CatalogoDeTipos.SQL.Text := 'SELECT * FROM nom_catalogodeprestaciones WHERE iCodigoSAT > 0';
  end else begin
    zq_CatalogoDeTipos.SQL.Text := 'SELECT * FROM nom_catalogodededucciones WHERE iCodigoSAT > 0';
  end;
  zq_CatalogoDeTipos.Open;
  for i := 0 to ComponentCount - 1 do begin
    if (Components[i] is TLabel) then begin
      TLabel(Components[i]).Caption := MultiStringReplace(TLabel(Components[i]).Caption, ['%NOMBRE%', '%tipo%', '%Total%'], [Nombre, Tipo, frm_DetallesNominasEmpleados.zq_Query.FieldByName('dImporteTotal').AsString], [rfReplaceAll, rfIgnoreCase]);
    end;
  end;
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.frmBarra1btnCancelClick(Sender: TObject);
begin
  frm_DetallesNominasEmpleados.zq_Query.Cancel;
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.frmBarra1btnPostClick(Sender: TObject);
begin
  frm_DetallesNominasEmpleados.zq_Query.FieldByName('sDescripcion').AsString := zq_CatalogoDeTipos.FieldByName('sNombre').AsString;
  frm_DetallesNominasEmpleados.zq_Query.FieldByName('lIncidenciaProxima').AsString := 'True';
  frm_DetallesNominasEmpleados.zq_Query.FieldByName('lForma').AsString := 'Directo';
  frm_DetallesNominasEmpleados.zq_Query.FieldByName('iCodigoSAT').AsInteger := zq_CatalogoDeTipos.FieldByName('iCodigoSAT').AsInteger;

  if Tipo = 'Deduccion' then begin
    frm_DetallesNominasEmpleados.zq_Query.FieldByName('bImpuestoRetenido').AsInteger := zq_CatalogoDeTipos.FieldByName('bImpuestoRetenido').AsInteger;
  end;
  //  frm_DetallesNominasEmpleados.zq_Query.FieldByName('dPorcentaje').AsString := '0';

  //como no tenermos valores autoincrmentalbles
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select max(iId) as iId from nom_detallesporempleado ');
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
     frm_DetallesNominasEmpleados.zq_Query.FieldByName('iId').AsInteger := connection.zCommand.FieldValues['iId'] + 1
  else
     frm_DetallesNominasEmpleados.zq_Query.FieldByName('iId').AsInteger := 0;
  frm_DetallesNominasEmpleados.zq_Query.Post;
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.tdCantidadChange(
  Sender: TObject);
begin
  Try
    LabelTotal.Caption := FloatToStr(StrToFloat(tdCantidad.Text) * StrToFloat(tdImporte.Text));
  Except
    On E: Exception do begin
      //;
    end;
  End;
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.tdImporteChange(
  Sender: TObject);
begin
  Try
    LabelTotal.Caption := FloatToStr(StrToFloat(tdCantidad.Text) * StrToFloat(tdImporte.Text));
  Except
    On E: Exception do begin
      //;
    end;
  End;
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.tdImporteKeyPress(
  Sender: TObject; var Key: Char);
begin
    if key =#13 then
       btnPost.SetFocus;
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.tsCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.tsNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_EditarDetallesDeNominasEmpleados.SiguienteCajon(Sender: TObject; var Key: Char);
Var
  Control: TWinControl;
begin
  Control := FindNextControl(Sender as TWinControl, True, True, True);
  if Key = #13 then begin
    if (FindNextControl(Sender as TWinControl, True, True, True) is TDBEdit) then begin
      SelectNext(Sender as TWinControl, True, True);
    end else begin
//      Control := FindNextControl(Sender as TWinControl, True, True, True);
//      SelectNext(Sender as TWinControl, True, True);
//      SiguienteCajon(Control, Key);
//      SelectNext(Control, True, True);
    end;
//    if not (SelectNext(Sender as TWinControl, True, True) is TDBEdit) then begin
//      SiguienteCajon(Sender, Key);
//    end;
  end;
end;

end.
