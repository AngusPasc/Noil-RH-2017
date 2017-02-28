unit frmNomina_CapturaEgresos;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_Connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, dblookup, CustomizeDlg, MasUtilerias, 
  UnitExcel, ComObj,
  JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvEdit,
  DBAdvEd, DBDateTimePicker, DBLabelEdit, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, NxColumnClasses, NxColumns, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  Tfrm_Nomina_CapturaEgresos = class(TForm)
    ds_Egresos: TDataSource;
    zq_Egresos: TZQuery;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    GridEgresos: TNextGrid;
    LabelImporteCaption: TLabel;
    LabelImporte: TLabel;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn1: TNxDateColumn;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RecargaEgresos;
    procedure GridEgresosAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_CapturaEgresos: Tfrm_Nomina_CapturaEgresos;
  iId_Nomina: Integer;
  ImporteTotal: Real;

implementation

{$R *.dfm}

procedure Tfrm_Nomina_CapturaEgresos.RecargaEgresos;
begin
  ImporteTotal := 0;
  zq_Egresos.Params.ParamByName('IdNomina').AsInteger := iId_Nomina;
  zq_Egresos.Open;
  while Not zq_Egresos.Eof do begin
    with GridEgresos do begin
      AddRow;
      Cells[0, LastAddedRow] := zq_Egresos.FieldByName('Existe').AsString;
      Cell[1, LastAddedRow].AsDateTime := zq_Egresos.FieldByName('dIdFecha').AsDateTime;
      Cells[2, LastAddedRow] := zq_Egresos.FieldByName('iIdFolio').AsString;
      Cells[3, LastAddedRow] := zq_Egresos.FieldByName('sReferencia').AsString;
      Cells[4, LastAddedRow] := zq_Egresos.FieldByName('sDesc').AsString;
      Cells[5, LastAddedRow] := zq_Egresos.FieldByName('Importe').AsString;
      Cells[6, LastAddedRow] := zq_Egresos.FieldByName('sTipoMovimiento').AsString;
      if zq_Egresos.FieldByName('Existe').AsInteger = 1 then begin
        ImporteTotal := ImporteTotal + zq_Egresos.FieldByName('Importe').AsFloat;
      end;
    end;
    zq_Egresos.Next;
  end;
  LabelImporte.Caption := FormatFloat('$ ###,##0.00', ImporteTotal);
end;

procedure Tfrm_Nomina_CapturaEgresos.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Nomina_CapturaEgresos.BtnGuardarClick(Sender: TObject);
Var
  Query: TZQuery;
  i, c, q: Integer;
begin
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;

    Query.SQL.Text := 'DELETE FROM nom_egresospornomina WHERE iId_Nomina = ' + IntToStr(iId_Nomina);
    Query.ExecSQL;

    Query.SQL.Clear;
    Query.SQL.Text := 'INSERT INTO nom_egresospornomina (iId_Nomina, iId_Egreso) VALUES ';
    c := 0;
    for i := 0 to GridEgresos.RowCount - 1 do begin
      if GridEgresos.Cell[0, i].AsBoolean then begin
        Inc(c);
      end;
    end;

    q := 0;
    for i := 0 to GridEgresos.RowCount - 1 do begin
      if GridEgresos.Cell[0, i].AsBoolean then begin
        Inc(q);
        Query.SQL.Add('('+IntToStr(iId_Nomina)+', '+GridEgresos.Cells[2,i]+')');
        if q < c then begin
          Query.SQL.Add(', ');
        end;
      end;
    end;
    if c > 0 then begin
      Query.ExecSQL;
    end else begin
      Query.SQL.Text := '';
    end;
    Query.SQL.Text := 'UPDATE nom_nominas SET dImporteDestinado = '+FloatToStr(ImporteTotal)+' WHERE iId = ' + IntToStr(iId_Nomina);
    Query.ExecSQL;
  Finally
    Query.Free;
    Close;
  End;
end;

procedure Tfrm_Nomina_CapturaEgresos.CheckBox1Click(Sender: TObject);
Var
  i: Integer;
begin
  GridEgresos.BeginUpdate;
  for I := 0 to GridEgresos.RowCount - 1 do begin
    if (CheckBox1.Checked) AND (CheckBox2.Checked) then begin
      GridEgresos.Row[I].Visible := True;
    end else
    if (CheckBox1.Checked) AND (Not CheckBox2.Checked) then begin
      if GridEgresos.Cells[6, I] = 'CHEQUE' then begin
        GridEgresos.Row[I].Visible := True;
      end else begin
        GridEgresos.Row[I].Visible := False;
      end;
    end else
    if (Not CheckBox1.Checked) AND (CheckBox2.Checked) then begin
      if GridEgresos.Cells[6, I] = 'GASTOS' then begin
        GridEgresos.Row[I].Visible := True;
      end else begin
        GridEgresos.Row[I].Visible := False;
      end;
    end else
    if (Not CheckBox1.Checked) AND (Not CheckBox2.Checked) then begin
      GridEgresos.Row[I].Visible := False;
    end;
  end;
  GridEgresos.EndUpdate;
  GridEgresos.Refresh;
  GridEgresos.Repaint;
end;

procedure Tfrm_Nomina_CapturaEgresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure Tfrm_Nomina_CapturaEgresos.FormShow(Sender: TObject);
Var
  Query: TZQuery;
  I: Integer;
begin
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;
    Query.SQL.Text := 'SELECT n.*, (SELECT COUNT(iId) FROM nom_empleadospornomina WHERE iId_Nomina = n.iId) AS dTotalEmpleados, MAX(n.iId) FROM nom_nominas AS n WHERE n.iProcesada = 1';
    Query.Open;
    if Query.RecordCount > 0 then begin
      iId_Nomina := Query.FieldByName('iId').AsInteger;
      for i := 0 to ComponentCount - 1 do begin
        if (Components[i] is TLabel) then begin
          TLabel(Components[i]).Caption := MultiStringReplace(TLabel(Components[i]).Caption, ['{NOMINA}', '{FECHA_INICIAL}', '{FECHA_FINAL}', '{IMPORTE}'], [Query.FieldByName('sNomina').AsString, Query.FieldByName('dFechaInicial').AsString, Query.FieldByName('dFechaFinal').AsString, FormatFloat('$ ###,##0.00', Query.FieldByName('dImporteDestinado').AsFloat)], [rfReplaceAll, rfIgnoreCase]);
        end;
      end;
    end;
  Finally
    Query.Free;
  End;
  RecargaEgresos;
//  ShowMessage(frm_Nomina_CapturaEgresos.LabelImporte.Caption);
end;

procedure Tfrm_Nomina_CapturaEgresos.GridEgresosAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
//  ShowMessage(GridEgresos.Cells[0, ARow]);
  if ACol = 0 then begin
    if GridEgresos.Cell[0, ARow].AsBoolean then begin
      ImporteTotal := ImporteTotal + GridEgresos.Cell[5, ARow].AsFloat;
    end else begin
      ImporteTotal := ImporteTotal - GridEgresos.Cell[5, ARow].AsFloat;
    end;
  end;
  LabelImporte.Caption := FormatFloat('$ ###,##0.00', ImporteTotal);
end;

end.
