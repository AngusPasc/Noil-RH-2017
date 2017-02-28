unit frmTarifaMensual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_Connection, NxDBColumns, NxColumns, StdCtrls, Mask,
  frm_barra, ComObj, UnitExcel, UDbGrid;

type
  Tfrm_TarifaMensual = class(TForm)
   dsTarifaMensual: TDataSource;
    qryTarifaMensual: TZQuery;
    grid_Comunidades: TDBGrid;
    frmBarra1: TfrmBarra;
    Label1: TLabel;
    txtLimiteInferior: TDBEdit;
    Label2: TLabel;
    txtLimiteSuperior: TDBEdit;
    Label3: TLabel;
    txtCuotaFija: TDBEdit;
    Label6: TLabel;
    txtPorcentaje: TDBEdit;
    qryTarifaMensualiIdTarifaMensual: TIntegerField;
    qryTarifaMensualfLimiteInferior: TFloatField;
    qryTarifaMensualfLimiteSuperior: TFloatField;
    qryTarifaMensualfCuotaFija: TFloatField;
    qryTarifaMensualfPorcentaje: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtLimiteInferiorKeyPress(Sender: TObject; var Key: Char);
    procedure txtLimiteSuperiorKeyPress(Sender: TObject; var Key: Char);
    procedure txtCuotaFijaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure txtPorcentajeKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure FormatoEncabezado;
    procedure FormatoDefault;
    function Obtener_Letra(y : integer) : String;
    procedure grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_ComunidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ComunidadesTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_TarifaMensual: Tfrm_TarifaMensual;
  Excel, Libro: Variant;
  utgrid:ticdbgrid;
implementation

uses
  frmTablaIMSS;
{$R *.dfm}

procedure Tfrm_TarifaMensual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_TarifaMensual.FormShow(Sender: TObject);
begin
  UtGrid:=TicdbGrid.create(grid_Comunidades);
  qryTarifaMensual.Active := False ;
  qryTarifaMensual.Open ;
end;

procedure Tfrm_TarifaMensual.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  qryTarifaMensual.Append;
  txtLimiteInferior.SetFocus
end;

procedure Tfrm_TarifaMensual.frmBarra1btnCancelClick(Sender: TObject);
begin
  qryTarifaMensual.Cancel ;
  frmBarra1.btnCancelClick(Sender);
end;

procedure Tfrm_TarifaMensual.frmBarra1btnDeleteClick(Sender: TObject);
begin

 If qryTarifaMensual.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
            qryTarifaMensual.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_TarifaMensual.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If qryTarifaMensual.RecordCount > 0 Then
  begin
      qryTarifaMensual.Edit ;
      txtLimiteInferior.SetFocus
  end ;
end;

procedure Tfrm_TarifaMensual.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_TarifaMensual.frmBarra1btnPostClick(Sender: TObject);
begin
  qryTarifaMensual.Post ;
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_TarifaMensual.frmBarra1btnPrinterClick(Sender: TObject);
var
  I, x, y, Cta : integer;
  verdadero: Boolean;
  letra, porciento, signo_pesos : string;
begin
    if qryTarifaMensual.RecordCount > 0 then
    begin
  Try
    Try
      Excel := CreateOleObject('Excel.Application');
    Except
      On E: Exception do begin
        FreeAndNil(Excel);
        ShowMessage(E.Message);
        Exit;
      end;
    End;

    Excel.Visible := True;
    Excel.DisplayAlerts:= False;
    Excel.WorkBooks.Add;
    Excel.WorkBooks[1].WorkSheets[1].Name := 'Reporte';
    Libro := Excel.WorkBooks[1].WorkSheets['Reporte'];

    for I := 1 to 5 do
    begin
      Excel.Columns[I].ColumnWidth := 12;
    end;
  Try
      Libro.Range['B1:E1'].Select;
      Excel.Selection.Value := 'Tarifa Mensual';
      FormatoEncabezado;
      Libro.Range['B2:B2'].Select;
      Excel.Selection.Value := 'Límite Inferior';
      FormatoEncabezado;
      Libro.Range['C2:C2'].Select;
      Excel.Selection.Value := 'Límite Superior';
      FormatoEncabezado;
      Libro.Range['D2:D2'].Select;
      Excel.Selection.Value := 'Cuota Fija';
      FormatoEncabezado;
      Libro.Range['E2:E2'].Select;
      Excel.Selection.Value := 'Porcentaje';
      FormatoEncabezado;

      x := 3;
      qryTarifaMensual.First;
      while not qryTarifaMensual.Eof do
      begin
        y := 2;
        for Cta := 0 to qryTarifaMensual.FieldDefs.Count - 1 do
        begin
            //showMessage(qryTablaImss.FieldDefs.Items[Cta].Name);
            if qryTarifaMensual.FieldDefs.Items[Cta].Name <> 'iIdTarifaMensual' then
            begin
                porciento := '';
                signo_pesos := '$ ';
                if qryTarifaMensual.FieldDefs.Items[Cta].Name = 'fPorcentaje' then
                begin
                  porciento := '%';
                  signo_pesos := '';
                end;
                letra := Obtener_Letra(y);
                Inc(y);
                Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
                if trim(qryTarifaMensual.FieldByName(qryTarifaMensual.FieldDefs.Items[Cta].Name).AsString) <> '' then
                begin
                    Excel.Selection.Value := signo_pesos + qryTarifaMensual.FieldByName(qryTarifaMensual.FieldDefs.Items[Cta].Name).AsString  + porciento;
                end else
                    Excel.Selection.Value :=  signo_pesos + '0' + porciento;
                begin

                end;
                FormatoDefault;
            end;
        end;
        Inc(x);
        qryTarifaMensual.Next;
      end;

    Finally
      //qryTarifaMensual.Free;
    End;

    Excel.Visible:=True;
  Finally
    Excel := Unassigned;
  End;
end;
end;

procedure Tfrm_TarifaMensual.frmBarra1btnRefreshClick(Sender: TObject);
begin
  qryTarifaMensual.Refresh
end;

procedure Tfrm_TarifaMensual.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_TarifaMensual.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_TarifaMensual.grid_ComunidadesTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_TarifaMensual.txtCuotaFijaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
      txtPorcentaje.SetFocus
end;

procedure Tfrm_TarifaMensual.txtLimiteInferiorKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        txtLimiteSuperior.SetFocus
end;

procedure Tfrm_TarifaMensual.txtLimiteSuperiorKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        txtCuotaFija.SetFocus
end;

procedure Tfrm_TarifaMensual.txtPorcentajeKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        txtLimiteInferior.SetFocus
end;

procedure Tfrm_TarifaMensual.FormatoEncabezado;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Borders.Color := clBlack;
  Excel.Selection.Interior.Color := $00EBEBEB;
end;

procedure Tfrm_TarifaMensual.FormatoDefault;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlRight;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

function Tfrm_TarifaMensual.Obtener_Letra(y : integer) : String;
var
  letra : String;
begin

        if y = 1 then
            letra := 'A';
        if y = 2 then
            letra := 'B';
        if y = 5 then
            letra := 'E';
        if y = 8 then
            letra := 'H';
        if y = 11 then
            letra := 'K';
        if y = 14 then
            letra := 'N';
        if y = 17 then
            letra := 'Q';
        if y = 20 then
            letra := 'T';
        if y = 23 then
            letra := 'W';

        if y = 3 then
            letra := 'C';
        if y = 6 then
            letra := 'F';
        if y = 9 then
            letra := 'I';
        if y = 12 then
            letra := 'L';
        if y = 15 then
            letra := 'O';
        if y = 18 then
            letra := 'R';
        if y = 21 then
            letra := 'U';
        if y = 24 then
            letra := 'X';

        if y = 4 then
            letra := 'D';
        if y = 7 then
            letra := 'G';
        if y = 10 then
            letra := 'J';
        if y = 13 then
            letra := 'M';
        if y = 16 then
            letra := 'P';
        if y = 19 then
            letra := 'S';
        if y = 22 then
            letra := 'V';
        if y = 25 then
            letra := 'Y';
        if y = 26 then
            letra := 'Z';

        Result := letra;
end;
end.
