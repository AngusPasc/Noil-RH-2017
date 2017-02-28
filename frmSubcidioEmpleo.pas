unit frmSubcidioEmpleo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_Connection, NxDBColumns, NxColumns, StdCtrls, Mask,
  frm_barra, ComObj, UnitExcel,UDbGrid ;

type
  Tfrm_SubcidioEmpleo = class(TForm)
   dsSubcidio: TDataSource;
    qrySubcidio: TZQuery;
    grid_Comunidades: TDBGrid;
    frmBarra1: TfrmBarra;
    Label1: TLabel;
    txtParaIngresos: TDBEdit;
    Label2: TLabel;
    txtHastaIngresos: TDBEdit;
    Label3: TLabel;
    txtCantSubsidio: TDBEdit;
    qrySubcidioiIdSubcidio: TIntegerField;
    qrySubcidiofParaIngresos: TFloatField;
    qrySubcidiofHastaIngresos: TFloatField;
    qrySubcidiofCantidadSubcidio: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtParaIngresosKeyPress(Sender: TObject; var Key: Char);
    procedure txtHastaIngresosKeyPress(Sender: TObject; var Key: Char);
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
  frm_SubcidioEmpleo: Tfrm_SubcidioEmpleo;
  Excel, Libro: Variant;
  utgrid:ticdbgrid;
implementation

uses
  frmTablaIMSS;
{$R *.dfm}

procedure Tfrm_SubcidioEmpleo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_SubcidioEmpleo.FormShow(Sender: TObject);
begin
  UtGrid:=TicdbGrid.create(grid_Comunidades);
  qrySubcidio.Active := False ;
  qrySubcidio.Open ;
end;

procedure Tfrm_SubcidioEmpleo.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  qrySubcidio.Append;
  txtParaIngresos.SetFocus
end;

procedure Tfrm_SubcidioEmpleo.frmBarra1btnCancelClick(Sender: TObject);
begin
  qrySubcidio.Cancel ;
  frmBarra1.btnCancelClick(Sender);
end;

procedure Tfrm_SubcidioEmpleo.frmBarra1btnDeleteClick(Sender: TObject);
begin

 If qrySubcidio.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
            qrySubcidio.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_SubcidioEmpleo.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If qrySubcidio.RecordCount > 0 Then
  begin
      qrySubcidio.Edit ;
      txtParaIngresos.SetFocus
  end ;
end;

procedure Tfrm_SubcidioEmpleo.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_SubcidioEmpleo.frmBarra1btnPostClick(Sender: TObject);
begin
  qrySubcidio.Post ;
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_SubcidioEmpleo.frmBarra1btnPrinterClick(Sender: TObject);
var
  I, x, y, Cta : integer;
  verdadero: Boolean;
  letra, porciento, signo_pesos : string;
begin
    if qrySubcidio.RecordCount > 0 then
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

    for I := 1 to 4 do
    begin
      Excel.Columns[I].ColumnWidth := 15;
    end;
  Try
      Libro.Range['B1:D1'].Select;
      Excel.Selection.Value := 'Subsidio al Empleo Mensual';
      FormatoEncabezado;
      Libro.Range['B2:B3'].Select;
      Excel.Selection.Value := 'Para Ingresos De';
      FormatoEncabezado;
      Libro.Range['C2:C3'].Select;
      Excel.Selection.Value := 'Hasta Ingresos De';
      FormatoEncabezado;
      Libro.Range['D2:D3'].Select;
      Excel.Selection.Value := 'Cantidad se Sub. Al Empleado';
      FormatoEncabezado;

      x := 4;
      qrySubcidio.First;
      while not qrySubcidio.Eof do
      begin
        y := 2;
        for Cta := 0 to qrySubcidio.FieldDefs.Count - 1 do
        begin
            //showMessage(qryTablaImss.FieldDefs.Items[Cta].Name);
            if qrySubcidio.FieldDefs.Items[Cta].Name <> 'iIdSubcidio' then
            begin
                signo_pesos := '$ ';
                letra := Obtener_Letra(y);
                Inc(y);
                Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
                if trim(qrySubcidio.FieldByName(qrySubcidio.FieldDefs.Items[Cta].Name).AsString) <> ''  then
                begin
                    Excel.Selection.Value := signo_pesos + qrySubcidio.FieldByName(qrySubcidio.FieldDefs.Items[Cta].Name).AsString;
                end else
                    Excel.Selection.Value :=  signo_pesos + '0';
                begin

                end;
                FormatoDefault;
            end;
        end;
        Inc(x);
        qrySubcidio.Next;
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

procedure Tfrm_SubcidioEmpleo.frmBarra1btnRefreshClick(Sender: TObject);
begin
  qrySubcidio.Refresh
end;

procedure Tfrm_SubcidioEmpleo.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_SubcidioEmpleo.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_SubcidioEmpleo.grid_ComunidadesTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_SubcidioEmpleo.txtParaIngresosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        txtHastaIngresos.SetFocus
end;

procedure Tfrm_SubcidioEmpleo.txtHastaIngresosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        txtCantSubsidio.SetFocus
end;

procedure Tfrm_SubcidioEmpleo.txtPorcentajeKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        txtParaIngresos.SetFocus
end;

procedure Tfrm_SubcidioEmpleo.FormatoEncabezado;
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

procedure Tfrm_SubcidioEmpleo.FormatoDefault;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlRight;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

function Tfrm_SubcidioEmpleo.Obtener_Letra(y : integer) : String;
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
