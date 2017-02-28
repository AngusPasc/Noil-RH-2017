unit frmTablaIMSS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, StrUtils, UnitExcel,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_Connection, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
  global, Menus, frxClass, frxDBSet, Utilerias, RXDBCtrl, rxToolEdit,ComObj,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxScrollBox;

type
  Tfrm_TablaIMSS = class(TForm)
    frmBarra1: TfrmBarra;
    Grid_catCuentas: TRxDBGrid;
    cxscrlbxMain: TcxScrollBox;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    txtPatronCF: TDBEdit;
    txtAseguradoCF: TDBEdit;
    txtTotalCF: TDBEdit;
    txtTotalEX: TDBEdit;
    txtAseguradoEX: TDBEdit;
    txtPatronEX: TDBEdit;
    txtTotalUN: TDBEdit;
    txtAseguradoUN: TDBEdit;
    txtPatronUN: TDBEdit;
    txtTotalGM: TDBEdit;
    txtAseguradoGM: TDBEdit;
    txtPatronGM: TDBEdit;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    txtTotalIV: TDBEdit;
    txtAseguradoIV: TDBEdit;
    txtPatronIV: TDBEdit;
    GroupBox3: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    txtTotalGG: TDBEdit;
    txtAseguradoGG: TDBEdit;
    txtPatronGG: TDBEdit;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    txtPatronRT: TDBEdit;
    txtAseguradoRT: TDBEdit;
    txtTotalRT: TDBEdit;
    txtTotalCV: TDBEdit;
    txtAseguradoCV: TDBEdit;
    txtPatronCV: TDBEdit;
    txtTotalRTCV: TDBEdit;
    dsTablaImss: TDataSource;
    qryTablaImss: TZQuery;
    qryTablaImssiIdTablaImss: TIntegerField;
    qryTablaImssdVigencia: TDateField;
    qryTablaImssfPatronCF: TFloatField;
    qryTablaImssfAseguradoCF: TFloatField;
    qryTablaImssfTotalCF: TFloatField;
    qryTablaImssfPatronEX: TFloatField;
    qryTablaImssfAseguradoEX: TFloatField;
    qryTablaImssfTotalEX: TFloatField;
    qryTablaImssfPatronUN: TFloatField;
    qryTablaImssfAseguradoUN: TFloatField;
    qryTablaImssfTotalUN: TFloatField;
    qryTablaImssfPatronGM: TFloatField;
    qryTablaImssfAseguradoGM: TFloatField;
    qryTablaImssfTotalGM: TFloatField;
    qryTablaImssfPatronIV: TFloatField;
    qryTablaImssfAseguradoIV: TFloatField;
    qryTablaImssfTotalIV: TFloatField;
    qryTablaImssfPatronGG: TFloatField;
    qryTablaImssfAseguradoGG: TFloatField;
    qryTablaImssfTotalGG: TFloatField;
    qryTablaImssfPatronRT: TFloatField;
    qryTablaImssfAseguradoRT: TFloatField;
    qryTablaImssfTotalRT: TFloatField;
    qryTablaImssfPatronCV: TFloatField;
    qryTablaImssfAseguradoCV: TFloatField;
    qryTablaImssfTotalCV: TFloatField;
    qryTablaImssfTotal: TFloatField;
    reporte: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    dtpVigencia: TDBDateEdit;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryTablaImssAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tiEjercicioExit(Sender: TObject);

    procedure FormKeyPress(Sender: TObject; var Key: Char);


    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure Grid_catCuentasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure dtpVigenciaKeyPress(Sender: TObject; var Key: Char);
    procedure txtPatronCFKeyPress(Sender: TObject; var Key: Char);
    procedure txtAseguradoCFKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalCFKeyPress(Sender: TObject; var Key: Char);
    procedure txtPatronEXKeyPress(Sender: TObject; var Key: Char);
    procedure txtAseguradoEXKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalEXKeyPress(Sender: TObject; var Key: Char);
    procedure txtPatronUNKeyPress(Sender: TObject; var Key: Char);
    procedure txtAseguradoUNKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalUNKeyPress(Sender: TObject; var Key: Char);
    procedure txtPatronGMKeyPress(Sender: TObject; var Key: Char);
    procedure txtAseguradoGMKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalGMKeyPress(Sender: TObject; var Key: Char);
    procedure txtPatronIVKeyPress(Sender: TObject; var Key: Char);
    procedure txtAseguradoIVKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalIVKeyPress(Sender: TObject; var Key: Char);
    procedure txtPatronGGKeyPress(Sender: TObject; var Key: Char);
    procedure txtAseguradoGGKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalGGKeyPress(Sender: TObject; var Key: Char);
    procedure txtPatronRTKeyPress(Sender: TObject; var Key: Char);
    procedure txtAseguradoRTKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalRTKeyPress(Sender: TObject; var Key: Char);
    procedure txtPatronCVKeyPress(Sender: TObject; var Key: Char);
    procedure txtAseguradoCVKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalCVKeyPress(Sender: TObject; var Key: Char);
    procedure txtTotalRTCVKeyPress(Sender: TObject; var Key: Char);
    procedure FormatoEncabezado;
    procedure FormatoDefault;
    function Obtener_Letra(y : integer) : String;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_TablaIMSS: Tfrm_TablaIMSS;
  Excel, Libro: Variant;

implementation

{$R *.dfm}


procedure Tfrm_TablaIMSS.dtpVigenciaKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
        txtPatronCF.Setfocus
end;

procedure Tfrm_TablaIMSS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_TablaIMSS.FormKeyPress(Sender: TObject; var Key: Char);
begin
(*
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
         if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
               else
                   selectedindex := 0;
*)
end;

procedure Tfrm_TablaIMSS.FormShow(Sender: TObject);
begin
    dtpVigencia.SetFocus;
    qryTablaImss.Active := False;
    qryTablaImss.Open;
end;

procedure Tfrm_TablaIMSS.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   qryTablaImss.Append;
   dtpVigencia.SetFocus;
end;

procedure Tfrm_TablaIMSS.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  qryTablaImss.Cancel;
end;

procedure Tfrm_TablaIMSS.frmBarra1btnDeleteClick(Sender: TObject);
begin
    if qryTablaImss.RecordCount > 0 then
      if MessageDlg('Desea eliminar el Registro?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            qryTablaImss.Delete;
end;

procedure Tfrm_TablaIMSS.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  qryTablaImss.Edit;
  dtpVigencia.SetFocus;
end;

procedure Tfrm_TablaIMSS.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_TablaIMSS.frmBarra1btnPostClick(Sender: TObject);
begin
  frmBarra1.btnPostClick(Sender);
  qryTablaImss.Open;
end;

procedure Tfrm_TablaIMSS.frmBarra1btnPrinterClick(Sender: TObject);
var
  I, x, y, Cta : integer;
  verdadero: Boolean;
  letra, porciento : string;
begin
   //Reporte.LoadFromFile(global_files+ 'CatIngresos.fr3') ;
   //Reporte.ShowReport();
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

    for I := 1 to 26 do
      Excel.Columns[I].ColumnWidth := 12;

    Try
      Libro.Range[' A1:A4'].Select;
      Excel.Selection.Value := 'Vigencia';
      FormatoEncabezado;
      Libro.Range['B1:M1'].Select;
      Excel.Selection.Value := 'Enfermedades y Maternidad';
      FormatoEncabezado;
      Libro.Range['B2:G2'].Select;
      Excel.Selection.Value := 'Prestaciones en Espcie';
      FormatoEncabezado;
      Libro.Range['H2:J2'].Select;
      Excel.Selection.Value := 'Prestaciones en Dinero';
      FormatoEncabezado;
      Libro.Range['K2:M3'].Select;
      Excel.Selection.Value := 'Gastos Médicos Pencionados';
      FormatoEncabezado;
      Libro.Range['B3:D3'].Select;
      Excel.Selection.Value := 'Cuota Fija';
      FormatoEncabezado;
      Libro.Range['E3:G3'].Select;
      Excel.Selection.Value := 'Excedente';
      FormatoEncabezado;
      Libro.Range['H3:J3'].Select;
      Excel.Selection.Value := 'Unica';
      FormatoEncabezado;
      Libro.Range['N1:P3'].Select;
      Excel.Selection.Value := 'Invalidez y Vida';
      FormatoEncabezado;
      Libro.Range['Q1:S3'].Select;
      Excel.Selection.Value := 'Guarderias y Gastos de Previsión Social';
      FormatoEncabezado;
      Libro.Range['T1:Z2'].Select;
      Excel.Selection.Value := 'Retiro';
      FormatoEncabezado;
      Libro.Range['T3:V3'].Select;
      Excel.Selection.Value := 'Retiro';
      FormatoEncabezado;
      Libro.Range['W3:Y3'].Select;
      Excel.Selection.Value := 'Cesantia y Vejez';
      FormatoEncabezado;
      Libro.Range['Z3:Z3'].Select;
      Excel.Selection.Value := '';
      FormatoEncabezado;

      I := 2;
      verdadero := True;
      while verdadero do
      begin
        letra := Obtener_Letra(I);
        if I = 23 then
            verdadero := False;
        I := I + 3;

        Libro.Range[letra+'4:'+letra+'4'].Select;
        Excel.Selection.Value := 'Del Patron';
        FormatoEncabezado;
      end;

      I := 3;
      verdadero := True;
      while verdadero do
      begin
        letra := Obtener_Letra(I);
        if I = 24 then
            verdadero := False;
        I := I + 3;

        Libro.Range[letra+'4:'+letra+'4'].Select;
        Excel.Selection.Value := 'Del Asegurado';
        FormatoEncabezado;
      end;

      I := 4;
      verdadero := True;
      while verdadero do
      begin
        letra := Obtener_Letra(I);
        if I = 25 then
            verdadero := False;
        I := I + 3;

        Libro.Range[letra+'4:'+letra+'4'].Select;
        Excel.Selection.Value := 'Total';
        FormatoEncabezado;
      end;

      Libro.Range['Z4:Z4'].Select;
      Excel.Selection.Value := 'Total';
      FormatoEncabezado;
      x := 5;
      qryTablaImss.First;
      while not qryTablaImss.Eof do
      begin
        y := 1;
        for Cta := 0 to qryTablaImss.FieldDefs.Count - 1 do
        begin
            //showMessage(qryTablaImss.FieldDefs.Items[Cta].Name);
            if qryTablaImss.FieldDefs.Items[Cta].Name <> 'iIdTablaImss' then
            begin
                porciento := '%';
                if qryTablaImss.FieldDefs.Items[Cta].Name = 'dVigencia' then
                  porciento := '';
                letra := Obtener_Letra(y);
                Inc(y);
                Libro.Range[letra + IntToStr(x) +':'+ letra + IntToStr(x)].Select;
                Excel.Selection.Value := qryTablaImss.FieldByName(qryTablaImss.FieldDefs.Items[Cta].Name).AsString + porciento;
                FormatoDefault;
            end;
        end;
        Inc(x);
        qryTablaImss.Next;
      end;


    Finally
//      qryTablaImss.Free;
    End;

    Excel.Visible:=True;
  Finally
    Excel := Unassigned;
  End;

end;

procedure Tfrm_TablaIMSS.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryTablaImss.Refresh;
end;


procedure Tfrm_TablaIMSS.Grid_catCuentasGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
(*
 If (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse Then
        If ZQCatalogodeCuentas.RecordCount > 0 Then
          begin

             If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipodeCuenta').AsString = 'Mayor' then
                begin
                  Afont.Style   := [fsBold] ;
                  AFont.Color   := esColor(12);
               end;

             If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipodeCuenta').AsString = 'Enlace' then
                begin
                  Afont.Style := [fsBold] ;
                  AFont.Color   := esColor(13);
               end;
        end;
*)
end;

procedure Tfrm_TablaIMSS.tiEjercicioExit(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;
end;

procedure Tfrm_TablaIMSS.txtAseguradoCFKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalCF.Setfocus
end;

procedure Tfrm_TablaIMSS.txtAseguradoCVKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalCV.Setfocus
end;

procedure Tfrm_TablaIMSS.txtAseguradoEXKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalEX.Setfocus
end;

procedure Tfrm_TablaIMSS.txtAseguradoGGKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalGG.Setfocus
end;

procedure Tfrm_TablaIMSS.txtAseguradoGMKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalGM.Setfocus
end;

procedure Tfrm_TablaIMSS.txtAseguradoIVKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalIV.Setfocus
end;

procedure Tfrm_TablaIMSS.txtAseguradoRTKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalRT.Setfocus
end;

procedure Tfrm_TablaIMSS.txtAseguradoUNKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalUN.Setfocus
end;

procedure Tfrm_TablaIMSS.txtPatronCFKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtAseguradoCF.Setfocus
end;

procedure Tfrm_TablaIMSS.txtPatronCVKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtAseguradoCV.Setfocus
end;

procedure Tfrm_TablaIMSS.txtPatronEXKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtAseguradoEX.Setfocus
end;

procedure Tfrm_TablaIMSS.txtPatronGGKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtAseguradoGG.Setfocus
end;

procedure Tfrm_TablaIMSS.txtPatronGMKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtAseguradoGM.Setfocus
end;

procedure Tfrm_TablaIMSS.txtPatronIVKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtAseguradoIV.Setfocus
end;

procedure Tfrm_TablaIMSS.txtPatronRTKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtAseguradoRT.Setfocus
end;

procedure Tfrm_TablaIMSS.txtPatronUNKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtAseguradoUN.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalCFKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtPatronEX.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalCVKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtTotalRTCV.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalEXKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtPatronUN.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalGGKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtPatronRT.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalGMKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtPatronIV.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalIVKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtPatronGG.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalRTCVKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        dtpVigencia.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalRTKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtPatronCV.Setfocus
end;

procedure Tfrm_TablaIMSS.txtTotalUNKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        txtPatronGM.Setfocus
end;

procedure Tfrm_TablaIMSS.qryTablaImssAfterInsert(
  DataSet: TDataSet);
begin
/////
end;

procedure Tfrm_TablaIMSS.FormatoEncabezado;
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

procedure Tfrm_TablaIMSS.FormatoDefault;
begin
  Excel.Selection.MergeCells := True;
  Excel.Selection.HorizontalAlignment := xlRight;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

function Tfrm_TablaIMSS.Obtener_Letra(y : integer) : String;
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
