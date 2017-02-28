unit UFrmHE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, NxColumns, NxColumnClasses, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, DB, DBClient, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StrUtils, DateUtils,
  ExtCtrls, Menus, StdCtrls, cxButtons, cxContainer, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxGroupBox, dxSkinsdxBarPainter, dxBar, cxLabel, cxDBLabel, cxGridExportLink,
  ShellApi, dxSkinsForm;

type
  TFrmHE = class(TForm)
    zHorasGral: TZQuery;
    cdTabla: TClientDataSet;
    cxGridHe: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    CxGrdHe: TcxGrid;
    dsTabla: TDataSource;
    dsEmpleados: TDataSource;
    cxColEmpleado: TcxGridDBColumn;
    pnl1: TPanel;
    cxSpinEdit1: TcxSpinEdit;
    zMax: TZQuery;
    cxgrpbx1: TcxGroupBox;
    btnCancelar: TcxButton;
    btnGuardar: TcxButton;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxButtonGuardar: TdxBarLargeButton;
    dxButtonCancelar: TdxBarLargeButton;
    dxButtonExportar: TdxBarLargeButton;
    DbLbl1: TcxDBLabel;
    DbLbl2: TcxDBLabel;
    DbLbl3: TcxDBLabel;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    dxButtonBuscar: TdxBarLargeButton;
    dlgSave1: TSaveDialog;
    dxskncntrlr1: TdxSkinController;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure dxButtonCancelarClick(Sender: TObject);
    procedure dxButtonBuscarClick(Sender: TObject);
    procedure dxButtonExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    Inicio, Termino: TDate;
    deEmpleado: Boolean;
    { Public declarations }
  end;

var
  FrmHE: TFrmHE;

implementation

{$R *.dfm}


procedure TFrmHE.btnGuardarClick(Sender: TObject);
var
  i: Integer;
  FieldName: String;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    try
      Screen.Cursor := CrAppStart;
      cdTabla.First;
      while Not cdTabla.Eof do
      begin
        try
          zHorasGral.Filtered := False;
          zHorasGral.Filter := 'IdPersonal = ' + cdTabla.FieldByName('IdEmpleado').AsString;
          zHorasGral.Filtered := True;
          if {zHorasGral.RecordCount > 0} true then
          begin
            for i := 3 to cdTabla.FieldCount - 1 do
            begin
              FieldName := StringReplace((cdTabla.Fields.Fields[i].FieldName), '_','/', [rfReplaceAll, rfIgnoreCase]);
              if zHorasGral.Locate('Fecha', StrToDate(FieldName), []) then
              begin
                if  zHorasGral.FieldByName('Horas').asFloat <> cdTabla.FieldByName(cdTabla.Fields.Fields[i].FieldName).AsFloat then
                begin
                  zHorasGral.edit;
                  zHorasGral.FieldByName('Horas').asFloat := cdTabla.FieldByName(cdTabla.Fields.Fields[i].FieldName).AsFloat;
                  zHorasGral.Post;
                end;
              end else If cdTabla.FieldByName(cdTabla.Fields.Fields[i].FieldName).AsFloat > 0 then
              begin
                zHorasGral.Append;

                If zMax.Active then
                  zMax.Refresh
                else
                  zMax.Open;

                zHorasGral.FieldByName('IdPersonal_TE').AsInteger := zMax.FieldByName('inc').AsInteger + 1;
                zHorasGral.FieldByName('IdPersonal').AsInteger := cdTabla.FieldByName('IdEmpleado').AsInteger;
                zHorasGral.FieldByName('Horas').asFloat := cdTabla.FieldByName(cdTabla.Fields.Fields[i].FieldName).AsFloat;
                zHorasGral.FieldByName('Fecha').AsDateTime := StrToDate(FieldName);
                zHorasGral.Post;
              end;
            end;
          end;
          cdTabla.Next;
        finally
          zHorasGral.Filtered := False;
        end;
      end;
      MessageDlg('Se ha guardado los cambios efectuados', mtInformation, [mbOK], 0);
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception Do
      MessageDlg('Informe a su administrador de sistema del siguiente error: ' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmHE.dxButtonBuscarClick(Sender: TObject);
begin
  cxGridHe.FilterRow.Visible := Not cxGridHe.FilterRow.Visible;
end;

procedure TFrmHE.dxButtonCancelarClick(Sender: TObject);
begin
  btnCancelar.Click;
end;

procedure TFrmHE.dxButtonExportarClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGrdHE);

     if MessageDlg('¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmHE.dxButtonGuardarClick(Sender: TObject);
begin
  btnGuardar.Click;
end;

procedure TFrmHE.FormCreate(Sender: TObject);
var
  Desde: TDate;
begin
//  Inicio := Now;
//  Termino := IncDay(Now,15);
  deEmpleado := False;

  cdTabla.FieldDefs.Add('IdEmpleado', ftInteger);
  cdTabla.FieldDefs.Add('CodigoPersonal', ftString, 100, False);
  cdTabla.FieldDefs.Add('Empleado', ftString, 150, False);

end;

procedure TFrmHE.FormShow(Sender: TObject);
var
  i: Integer;
  cxCol: TcxGridDBColumn;
  Desde: Tdate;
begin
  Desde := Inicio;
  While desde <= Termino do
  begin
    cdTabla.FieldDefs.Add(StringReplace(DateToStr(Desde), '/','_', [rfReplaceAll, rfIgnoreCase]), ftDate);
    Desde := IncDay(Desde, 1);
  end;
  cdTabla.CreateDataSet;

  cdTabla.Open;
  i := 3;
  while i < cdTabla.FieldCount do
  begin
    cxCol := cxGridHe.CreateColumn;
    cxCol.Caption := StringReplace((cdTabla.Fields.Fields[i].FieldName), '_','/', [rfReplaceAll, rfIgnoreCase]);
    cxCol.DataBinding.FieldName := cdTabla.Fields.Fields[i].FieldName;
    cxCol.DataBinding.ValueType := 'Float';
    cxCol.PropertiesClassName := 'TcxSpinEditProperties';

    inc(i);
  end;

  cxGridHe.DataController.DataSource := dsTabla;

  i := 0;
  dsEmpleados.DataSet.First;
  while Not dsEmpleados.DataSet.Eof do
  begin
    cdTabla.Append;
    cdTabla.FieldByName('IdEmpleado').AsInteger := dsEmpleados.DataSet.FieldByName('IdPersonal').AsInteger;
    cdTabla.FieldByName('CodigoPersonal').AsString := dsEmpleados.DataSet.FieldByName('sIdEmpleado').AsString;
    cdTabla.FieldByName('Empleado').AsString := dsEmpleados.DataSet.FieldByName('NombreCompleto').AsString;
    cdTabla.Post;
    dsEmpleados.DataSet.Next;
  end;

  zHorasGral.Active := False;
  zHorasGral.ParamByName('Inicio').AsString := IntToStr(YearOf(Inicio)) + '-' + IntToStr(MonthOf(Inicio)) + '-' +IntToStr(DayOf(Inicio));
  zHorasGral.ParamByName('Termino').AsString := IntToStr(YearOf(Termino)) + '-' + IntToStr(MonthOf(Termino)) + '-' +IntToStr(DayOf(Termino));
  zHorasGral.Open;

  cdTabla.First;
  while Not cdTabla.Eof do
  begin
    try
      zHorasGral.Filtered := False;
      zHorasGral.Filter := 'IdPersonal = ' + cdTabla.FieldByName('IdEmpleado').AsString;
      zHorasGral.Filtered := True;
      if zHorasGral.RecordCount > 0 then
      begin
        zHorasGral.First;
        while Not zHorasGral.Eof do
        begin
          cdTabla.Edit;
          cdTabla.FieldByName(StringReplace(zHorasGral.FieldByName('Fecha').AsString, '/','_', [rfReplaceAll, rfIgnoreCase])).AsFloat := zHorasGral.FieldByName('Horas').AsFloat;
          cdTabla.Post;
          zHorasGral.Next;
        end;
      end;
      cdTabla.Next;
    finally
      zHorasGral.Filtered := False;
    end;
  end;
end;

end.
