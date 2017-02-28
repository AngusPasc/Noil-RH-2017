unit frmNomina_Pruebas;

interface

uses
//  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//  Dialogs, DB, DateUtils,
//  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
//  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
//  NxDBGrid, frmPrincipal, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
//  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
//  JvDBDatePickerEdit, DBLabelEdit, frxClass, frxDBSet, global, OleCtrls,
//  OleServer, ExcelXP, ComObj, Excel2000;
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_Connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, dblookup, CustomizeDlg,
  UnitExcel, ComObj,
  JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvEdit,
  DBAdvEd, DBDateTimePicker, DBLabelEdit, HTMLabel, frmNomina_EmpleadosPorNomina,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, NxColumnClasses,
  NxColumns;

type
  Tfrm_Nomina_Pruebas = class(TForm)
    NextGrid1: TNextGrid;
    NxTreeColumn1: TNxTreeColumn;
    NxTextColumn1: TNxTextColumn;
    Button1: TButton;
    procedure FormatoEncabezado;
    procedure FormatoGrupo;
    procedure FormatoTipoImporte;
    procedure FormatoImporte;
    procedure FormatoDefault;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure LlenarGrid;
    procedure NextGrid1CellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles; CellState: TCellState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_Pruebas: Tfrm_Nomina_Pruebas;
  Excel, Libro, Hoja: Variant;
  FechaDeNomina: String;

implementation

{$R *.dfm}

procedure Tfrm_Nomina_Pruebas.FormatoEncabezado;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clWhite;
  Excel.Selection.Interior.Color := $00EBEBEB;
end;

procedure Tfrm_Nomina_Pruebas.FormatoGrupo;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Color := clWhite;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clBlack;
  Excel.Selection.Interior.Color := $00FF9933;
end;

procedure Tfrm_Nomina_Pruebas.FormatoTipoImporte;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clBlack;
  Excel.Selection.Interior.Color := $00FFD9B3;
end;

procedure Tfrm_Nomina_Pruebas.LlenarGrid;
Var
  i, x, Padre, Hijo: Integer;
begin
  NextGrid1.BeginUpdate;
  for i := 0 to 20 - 1 do begin
    NextGrid1.AddRow;
    NextGrid1.Cell[0, NextGrid1.LastAddedRow].Color := $FF000;
    NextGrid1.Cells[1, NextGrid1.LastAddedRow] := 'Texto Padre ' + IntToStr(i);
    NextGrid1.Cell[1, NextGrid1.LastAddedRow].Color := $FF000;
    Padre := NextGrid1.LastAddedRow;
    NextGrid1.Row[Padre].Expanded := False;
    for x := 0 to 4 do begin
      NextGrid1.AddChildRow(Padre);
      NextGrid1.Cells[1, NextGrid1.LastAddedRow] := 'Texto Hijo: ' + IntToStr(x);
      NextGrid1.Row[NextGrid1.LastAddedRow].Expanded := False;
      NextGrid1.AddChildRow(NextGrid1.LastAddedRow);
      NextGrid1.Cells[1, NextGrid1.LastAddedRow] := 'Texto Nieto';
    end;
  end;
  NextGrid1.EndUpdate;
end;

procedure Tfrm_Nomina_Pruebas.NextGrid1CellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  if ACol = 1 then begin
    TextColor := clRed;
  end;  
end;

procedure Tfrm_Nomina_Pruebas.Button1Click(Sender: TObject);
begin
  LlenarGrid;
end;

procedure Tfrm_Nomina_Pruebas.FormatoDefault;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlLeft;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

procedure Tfrm_Nomina_Pruebas.FormatoImporte;
begin
//  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlLeft;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.NumberFormat:='$ #,##0.00';
end;

procedure Tfrm_Nomina_Pruebas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

end.
