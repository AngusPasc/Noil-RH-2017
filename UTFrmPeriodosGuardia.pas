unit UTFrmPeriodosGuardia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, JvExControls, JvLabel, StdCtrls, DBCtrls, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, AdvGlowButton, ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_connection, DateUtils,
  JvSpin, dxSkinsdxBarPainter, dxBar, dxRibbon, cxVGrid, cxInplaceContainer,
  cxDBVGrid, Menus, cxButtons, cxSplitter, frm_barra;

type
  TRectCoords = record
    fTop: SmallInt;
    fLeft: SmallInt;
    fBottom: SmallInt;
    fRight: SmallInt;
  end;
  TFrmPeriodosGuardia = class(TForm)
    cxGroupBox1: TcxGroupBox;
    zPeriodoGuardia: TZQuery;
    dsPeriodoGuardia: TDataSource;
    dsDetalleGuardia: TDataSource;
    zTraslape: TZQuery;
    Panel3: TPanel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    FechaInicio: TJvDatePickerEdit;
    FechaTermino: TJvDatePickerEdit;
    cbTermino: TCheckBox;
    AdvGlowButton1: TcxButton;
    AdvGlowButton2: TcxButton;
    dxBarManager1: TdxBarManager;
    DxBarBtnPeriodo: TdxBarLargeButton;
    DxPopMenuGuardias: TdxRibbonPopupMenu;
    DxBarBtnEditar: TdxBarLargeButton;
    DxBarBtnEliminar: TdxBarLargeButton;
    zFecha: TZQuery;
    Panel4: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxGroupBox3: TcxGroupBox;
    CxGridDatos: TcxGrid;
    CxGridGuardias: TcxGridDBTableView;
    CxColumnCxGridEquiposStatusPersonal: TcxGridDBColumn;
    CxColumnCxGridEquiposCuenta: TcxGridDBColumn;
    CxColumnCxGridEquiposCuentaInterbancaria: TcxGridDBColumn;
    CxColumnCxGridEquipoiId_Puesto: TcxGridDBColumn;
    CxColumnCodigo: TcxGridDBColumn;
    CxColumnTitulo: TcxGridDBColumn;
    CxLevelMain: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    Panel2: TPanel;
    YP: TImage;
    CxSplit1: TcxSplitter;
    cxGroupBox2: TcxGroupBox;
    CxVGridDatos: TcxDBVerticalGrid;
    CxCategoryCxVGridDatosCategoryRow1: TcxCategoryRow;
    CxEditorCxVGridDatosDBEditorRow1: TcxDBEditorRow;
    CxEditorCxVGridDatosDBEditorRow2: TcxDBEditorRow;
    CxEditorCxVGridDatosDBEditorRow3: TcxDBEditorRow;
    CxEditorCxVGridDatosDBEditorRow4: TcxDBEditorRow;
    CxCategoryCxVGridDatosCategoryRow2: TcxCategoryRow;
    CxEditorCxVGridDatosDBEditorRow5: TcxDBEditorRow;
    CxEditorCxVGridDatosDBEditorRow6: TcxDBEditorRow;
    cxSplitter1: TcxSplitter;
    frmBarra1: TfrmBarra;
    zPersonalImss: TZQuery;
    pnl1: TPanel;
    cxButton1: TcxButton;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxstyl2: TcxStyle;
    procedure FormShow(Sender: TObject);
    procedure zPeriodoGuardiaAfterScroll(DataSet: TDataSet);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FechaInicioChange(Sender: TObject);
    procedure DxBarBtnPeriodoClick(Sender: TObject);
    procedure cbTerminoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CxBtnCerrarClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure DxBarBtnEditarClick(Sender: TObject);
    procedure DxBarBtnEliminarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    ArrRectCoords: array[1..12, 1..37] of TRectCoords;
    ArrFirstDayColumn: array[1..12] of SmallInt;
    ArrNumMonthDays: array[1..12] of SmallInt;
    DisplayedYear: Word;
    ApuntaFecha: TDate;
    Borrando: Boolean;
    procedure CalendarioAnual(PYear: Word; MostrarHoy: Boolean);
    { Private declarations }
  public
    IdGuardia: Integer;
    { Public declarations }
  end;

Const
  ArrMonthNames: array[1..12] of string[9] = ('Enero', 'Febrero', 'Marzo',
                                               'Abril', 'Mayo', 'Junio', 'Julio',
                                               'Agosto', 'Septimbre', 'Octubre',
                                               'Noviembre', 'Deciembre');

  ArrTierCoord: array[1..6] of SmallInt = (0, 3, 6, 9, 12, 15);

var
  FrmPeriodosGuardia: TFrmPeriodosGuardia;

implementation

{$R *.dfm}

procedure TFrmPeriodosGuardia.AdvGlowButton1Click(Sender: TObject);
var
  Anio, Mes, Dia: Word;
  Cursor: TCursor;
  row: Integer;
  zMaxGuardias: TZQuery;
  ultId: Integer;
begin
  if zTraslape.State = dsEdit then
  begin
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if MessageDlg('Está a punto de editar el periodo de guardia del ' + zTraslape.FieldByName('FechaInicio').AsString + ' al ' + zTraslape.FieldByName('FechaTermino').AsString + #10 + #10 +
                    '¿Está seguro que desea editar este periodo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          zPersonalImss.active := False;
          zPersonalImss.Connection := connection.zConnection;
          zPersonalImss.ParamByName('IdPeriodosGuardia').AsInteger := zTraslape.FieldByName('IdPeriodosGuardia').AsInteger;
          zPersonalImss.Open;
          zPersonalImss.First;
          while not zPersonalImss.eof do
          begin

            zPersonalImss.Edit;
            if zPersonalImss.FieldByName('TipoMovimiento').AsString='Reingreso' then
               zPersonalImss.FieldByName('FechaMovimiento').AsDateTime := FechaInicio.Date;
            if zPersonalImss.FieldByName('TipoMovimiento').AsString='Baja' then
               zPersonalImss.FieldByName('FechaMovimiento').AsDateTime := FechaTermino.Date;
            zPersonalImss.Post;            
            zPersonalImss.Next;
          end;         

          zTraslape.FieldByName('FechaInicio').AsDateTime := FechaInicio.Date;
          zTraslape.FieldByName('FechaTermino').AsDateTime := FechaTermino.Date;

          zTraslape.Post;
          dsDetalleGuardia.DataSet.Refresh;
          zPeriodoGuardia.Refresh;
          DecodeDate(zPeriodoGuardia.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
          CalendarioAnual(Anio, True);
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  end
  else
  begin
    zMaxGuardias := TZQuery.create(self);
    zMaxGuardias.Active := False;
    zMaxGuardias.Connection := connection.zConnection;
    zMaxGuardias.SQL.Clear;
    zMaxGuardias.SQL.Text := 'select max(IdPeriodosGuardia) as ultID from nom_periodosguardia';
    zMaxGuardias.Open;
    if zMaxGuardias.RecordCount > 0 then
      ultId := zMaxGuardias.FieldByName('ultId').AsInteger + 1
    else
      ultId := 1;

    try
      zTraslape.Close;
      zTraslape.Active := False;
      zTraslape.Connection := Connection.zConnection;
      zTraslape.SQL.Text := 'select ' +
                            'a.IdPeriodosGuardia, ' +
                            'a.IdGuardia, ' +
                            'a.FechaInicio, ' +
                            'a.FechaTermino, ' +
                            'a.Reprogramacion ' +
                            'from ' +
                            'nom_periodosguardia a ' +
                            'where ' +
                            '(:IdPeriodosGuardia = -1 or (:IdPeriodosGuardia <> -1 and a.IdPeriodosGuardia = :IdPeriodosGuardia)) and ' +
                            '((:FechaInicio = -1 or (:FechaInicio <> -1 and Date(:FechaInicio) <= a.FechaTermino and Date(:FechaInicio) >= a.FechaInicio)) or ' +
                            '(:FechaTermino = -1 or (:FechaTermino <> -1 and Date(:FechaTermino) <= a.FechaTermino and Date(:FechaTermino) >= a.FechaInicio))) ' +
                            'limit 1';
                            
      zTraslape.Params.ParamByName('FechaInicio').DataType := ftDate;
      zTraslape.Params.ParamByName('FechaInicio').AsDate := FechaInicio.Date;
      zTraslape.Params.ParamByName('FechaTermino').DataType := ftDate;
      zTraslape.Params.ParamByName('FechaTermino').AsDate := FechaTermino.Date;
      zTraslape.Open;

      Try
        Cursor := Screen.Cursor;
        Try
          Screen.Cursor := crAppStart;

          zTraslape.Open;
          if zTraslape.RecordCount > 0 then
            raise Exception.Create('El periodo de guardia indicado es incorrecto ya que sus fechas traslapan con ' + zTraslape.FieldByName('Cuenta').AsString + ' registros de guardia dentro del catálogo.' + #10 + #10 +
                                                        'Debido a esto no es posible grabar el registro de guardia.');
          // Grabar el registro
          zTraslape.Append;
          zTraslape.FieldByName('IdPeriodosGuardia').AsInteger := ultId;
          zTraslape.FieldByName('IdGuardia').AsInteger := dsDetalleGuardia.DataSet.FieldByName('IdGuardia').AsInteger;
          zTraslape.FieldByName('FechaInicio').AsDateTime := FechaInicio.Date;
          zTraslape.FieldByName('FechaTermino').AsDateTime := FechaTermino.Date;
          zTraslape.Post;
          dsDetalleGuardia.DataSet.Refresh;
          zPeriodoGuardia.Refresh;

          DecodeDate(zPeriodoGuardia.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
          CalendarioAnual(Anio, True);
        Finally
          if Assigned(zMaxGuardias) then
            zMaxGuardias.Destroy; 
          zTraslape.Close;
          Screen.Cursor := Cursor;
        End;
      Except
        on e:Exception do
          MessageDlg('Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      End;
    Except
      on e: Exception do
        MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmPeriodosGuardia.CalendarioAnual(PYear: Word; MostrarHoy: Boolean);
var
  GX, GY, TX, TY: SmallInt;
  x, y, c, nd, ld, nm, ny: SmallInt;
  MonthRect, DayRect, WeekendRect, HToday: TRect;
  FechaProceso: TDate;
  OrPos: Integer;
  Anio, Mes, Dia: Word;
  OldAnio: Word;
  OldFecha: TDate;

  function DibujarGuardia(PDateFrom, PDateTo: TDate; PColor, PTier: Integer; Activo: Boolean = False): Boolean;
  var
    i, ld, NumMeses, StartCol, EndCol: SmallInt;
    YYFrom, MMFrom, DDFrom: Word;
    YYTo, MMTo, DDTo,
    NewRed, NewGreen, NewBlue: Word;
    BitMap: TBitMap;
    LocWidth, LocLeft: Integer;
    OrigColor: TColor;
  begin
    Result := True;
    DecodeDate(PDateFrom, YYFrom, MMFrom, DDFrom);
    if YYFrom = PYear then
    begin
      DecodeDate(PDateTo, YYTo, MMTo, DDTo);
      if PDateFrom > PDateTo then
      begin
        Result := False;
        MessageDlg('La fecha final debe ser posterior a la fecha inicial', mtError, [mbOK], 0);
        Exit;
      end;

      if YYFrom <> YYTo then
      begin
        YYTo := YYFrom;
        MMTo := 12;
        DDTo := 31;
      end;

      YP.Canvas.Pen.Color := PColor;
      YP.Canvas.Pen.Width := 1;
      NumMeses := MMTo - MMFrom + 1;
      OrigColor := pColor;
      for i := 1 to NumMeses do
      begin
        pColor := OrigColor;

        StartCol := ArrFirstDayColumn[MMFrom] + (DDFrom - 1);
        if MMFrom < MMTo then
        begin
          ld := ArrNumMonthDays[MMFrom];
        end
        else
        begin
          ld := DDTo;
        end;

        EndCol := ArrFirstDayColumn[MMFrom] + (ld - 1);

        BitMap := TBitMap.Create;
        Try
          if Activo then
          begin
            NewRed := Trunc(GetRValue(pColor) / 1.7);
            NewGreen := Trunc(GetGValue(pColor) / 1.7);
            NewBlue := Trunc(GetBValue(pColor) / 1.7);

            if NewRed < 0 then NewRed := 0;
            if NewGreen < 0 then NewGreen := 0;
            if NewBlue < 0 then NewBlue := 0;

            pColor := RGB(NewRed, NewGreen, NewBlue);
            BitMap.Canvas.Font.Color := clWhite;
          end
          else
            BitMap.Canvas.Font.Color := clBlack;

          BitMap.Width := ArrRectCoords[MMFrom, EndCol].fRight - 4;
          BitMap.Height := 19;
          BitMap.Canvas.Brush.Color := pColor;
          locWidth := 1 + ArrRectCoords[MMFrom, EndCol].fRight - ArrRectCoords[MMFrom, StartCol].fLeft;
          locLeft := ArrRectCoords[MMFrom, StartCol].fLeft;
          BitMap.Canvas.RoundRect(0, 0, LocWidth, 19, 10, 10);

          YP.Canvas.Pen.Color := clWhite;
          YP.Canvas.MoveTo(locLeft, ArrRectCoords[MMFrom, StartCol].fBottom - ArrTierCoord[PTier]);
          YP.Canvas.LineTo(ArrRectCoords[MMFrom, EndCol].fRight, ArrRectCoords[MMFrom, EndCol].fBottom - ArrTierCoord[PTier]);

          BitBlt(YP.Canvas.Handle, locLeft, (ArrRectCoords[MMFrom, StartCol].fBottom - ArrTierCoord[PTier]) - 18, ArrRectCoords[MMFrom, EndCol].fRight, 100, BitMap.Canvas.Handle, 0, 0, SRCAND);
        Finally
          BitMap.Free;
        End;
        Inc(MMFrom);
        DDFrom := 1;
      end;
    end;
  end;

begin
  DisplayedYear := PYear;
  YP.Picture := nil;
  YP.Canvas.FloodFill(0, 0, clWhite, fsSurface);
  YP.Canvas.Pen.Width := 1;
  YP.Canvas.Pen.Color := clBlack;
  TY := Round(YP.Height / 13);
  YP.Canvas.MoveTo(0, TY);
  YP.Canvas.LineTo(YP.Width, TY);
  GY := TY * 2;
  YP.Canvas.MoveTo(60, 0);
  YP.Canvas.LineTo(60, YP.Height);
  TX := Round((YP.Width - 60) / 37);
  GX := TX + 60;
  for x := 1 to 36 do
  begin
    for y := 1 to 12 do
      begin
        ArrRectCoords[y, x].fLeft := (GX - TX) + 2;
        ArrRectCoords[y, x].fRight := GX - 2;
      end;
    //*****
    GX := GX + TX;
  end;

  for y := 1 to 12 do
  begin
    ArrRectCoords[y, 37].fLeft := (GX - TX) + 2;
    ArrRectCoords[y, 37].fRight := GX - 2;
  end;

  for y := 1 to 11 do
  begin
    for x := 1 to 37 do
      begin
        ArrRectCoords[y, x].fTop := (GY - TY) + 2;
        ArrRectCoords[y, x].fBottom := GY - 2;
      end;
    GY := GY + TY;
  end;

  for x := 1 to 37 do
  begin
    ArrRectCoords[12, x].ftop := (GY - TY) + 2;
    ArrRectCoords[12, x].fBottom := GY - 2;
  end;

  MonthRect.TopLeft := Point(0, ArrRectCoords[1, 1].fTop - 1);
  MonthRect.BottomRight := Point(ArrRectCoords[12, 1].fLeft - 2, ArrRectCoords[12, 1].fBottom + 1);
  YP.Canvas.Brush.Color := clLtGray;
  YP.Canvas.FillRect(MonthRect);

  DayRect.TopLeft := Point(ArrRectCoords[1, 1].fLeft - 1, 0);
  DayRect.BottomRight := Point(ArrRectCoords[1, 37].fRight, ArrRectCoords[1, 37].fTop - 2);
  YP.Canvas.FillRect(DayRect);
  YP.Canvas.Brush.Color := clLtGray;

  for x := 1 to 12 do
  begin
    YP.Canvas.TextOut(3, ArrRectCoords[x, 1].fTop + 2, ArrMonthNames[x]);
  end;

  y := 1;
  for x := 1 to 5 do
  begin
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'L');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'M');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'M');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'J');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'V');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'S');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'D');
    Inc(y);
  end;
  YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'L');
  Inc(y);
  YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'M');
  YP.Canvas.Brush.Color := clMoneyGreen;

  for x := 1 to 5 do
  begin
    WeekendRect.TopLeft := Point(ArrRectCoords[1, (x * 6) + (x - 1)].fLeft - 1, ArrRectCoords[1, (x * 6) + (x - 1)].fTop - 1);
    WeekendRect.BottomRight := Point(ArrRectCoords[12, (x * 6) + (x - 1)].fRight + 2, ArrRectCoords[12, (x * 6) + (x - 1)].fBottom + 1);
    YP.Canvas.FillRect(WeekendRect);
  end;

  for x := 1 to 5 do
  begin
    WeekendRect.TopLeft := Point(ArrRectCoords[1, (x * 7)].fLeft - 1, ArrRectCoords[1, (x * 7)].fTop - 1);
    WeekendRect.BottomRight := Point(ArrRectCoords[12, (x * 7)].fRight + 1, ArrRectCoords[12, (x * 7)].fBottom + 1);
    YP.Canvas.FillRect(WeekendRect);
  end;

  GX := TX + 60;
  for x := 1 to 36 do
  begin
    YP.Canvas.MoveTo(GX, 0);
    YP.Canvas.LineTo(GX, YP.Height);
    GX := GX + TX;
  end;

  GY := TY * 2;
  for y := 1 to 11 do
  begin
    YP.Canvas.MoveTo(0, GY);
    YP.Canvas.LineTo(YP.Width, GY);
    GY := GY + TY;
  end;

  YP.Canvas.Brush.Color := clWhite;
  YP.Canvas.Font.Color := clRed;
  YP.Canvas.Font.Style := [fsBold];
  YP.Canvas.TextOut(3, 4, IntToStr(PYear));
  YP.Canvas.Font.Color := clBlack;
  YP.Canvas.Font.Style := [];
  for x := 1 to 12 do
  begin
    FechaProceso := EncodeDate(PYear, x, 1);
    ArrFirstDayColumn[x] := DayOfTheWeek(FechaProceso);
    ArrNumMonthDays[x] := DaysInMonth(FechaProceso);
  end;

  nd := DayOfTheMonth(Now);
  nm := MonthOfTheYear(Now);
  ny := YearOf(Now);
  for y := 1 to 12 do
  begin
    c := ArrFirstDayColumn[y];
    for x := 1 to ArrNumMonthDays[y] do
    begin
      YP.Canvas.Brush.Color := clWhite;
      YP.Canvas.Font.Color := clBlack;
      case
        c of 6, 7, 13, 14, 20, 21, 27, 28, 34, 35:  YP.Canvas.Brush.Color := clMoneyGreen;
      end;
      if (ny = PYear) and (nm = y) and (nd = x) then
      begin
        if MostrarHoy then
          begin
            HToday.TopLeft := Point(ArrRectCoords[y, c].fLeft, ArrRectCoords[y, c].fTop);
            HToday.BottomRight := Point(ArrRectCoords[y, c].fRight, ArrRectCoords[y, c].fBottom);
            YP.Canvas.Brush.Color := clRed;
            YP.Canvas.Font.Color := clWhite;
            YP.Canvas.FillRect(HToday);
          end;
      end;
      YP.Canvas.TextOut(ArrRectCoords[y, c].fLeft + 1, ArrRectCoords[y, c].fTop + 2, IntToStr(x));
      Inc(c);
    end;
  end;

  zperiodoGuardia.DisableControls;
  OldAnio := 0;
  Try
    OrPos := zperiodoGuardia.RecNo;

    // Localizar el primer registro que no corresponde al año actual
//    repeat
//      DecodeDate(cdPeriodo.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
//      if PYear = Anio then
//        cdPeriodo.Prior;
//    Until (PYear <> Anio) or (cdPeriodo.Bof);

    while not zperiodoGuardia.Eof do
    begin
      // Marcar el descanso
      {if OldAnio <> 0 then
        DibujarGuardia(OldFecha, cdPeriodo.FieldByName('FechaInicio').AsDateTime -1, clYellow, 1);}

      DecodeDate(zperiodoGuardia.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);

      OldAnio := Anio;
      OldFecha := zperiodoGuardia.FieldByName('FechaTermino').AsDateTime + 1;

      if (PYear = Anio) and (((OrPos = zperiodoGuardia.RecNo) and (Not Borrando)) or ((OrPos <> zperiodoGuardia.RecNo))) and ((zTraslape.State <> dsEdit) Or ((OrPos <> zperiodoGuardia.RecNo) And (zTraslape.State = dsEdit))) then
        DibujarGuardia(zperiodoGuardia.FieldByName('FechaInicio').AsDateTime, zperiodoGuardia.FieldByName('FechaTermino').AsDateTime, clLime, 1, (OrPos = zperiodoGuardia.RecNo));

      if PYear > Anio then
        zperiodoGuardia.Last;

      zperiodoGuardia.Next;
    end;

    if (ApuntaFecha > 0) or (Borrando) then
      if Borrando then
        DibujarGuardia(zTraslape.FieldByName('FechaInicio').AsDateTime, zTraslape.FieldByName('FechaTermino').AsDateTime, clRed, 1)
      else
        DibujarGuardia(ApuntaFecha, FechaTermino.Date, clYellow, 1);
    ApuntaFecha := 0;
  Finally
    zperiodoGuardia.RecNo := OrPos;
    zperiodoGuardia.EnableControls;
  end;
end;

procedure TFrmPeriodosGuardia.cbTerminoClick(Sender: TObject);
begin
  FechaTermino.Enabled := cbTermino.Checked;
  if Not cbTermino.Checked then
    FechaInicio.OnChange(Self);
end;

procedure TFrmPeriodosGuardia.CxBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPeriodosGuardia.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPeriodosGuardia.DxBarBtnEditarClick(Sender: TObject);
begin
  frmBarra1btnEditClick(nil);
end;

procedure TFrmPeriodosGuardia.DxBarBtnEliminarClick(Sender: TObject);
begin
  frmBarra1btnDeleteClick(nil);
end;

procedure TFrmPeriodosGuardia.DxBarBtnPeriodoClick(Sender: TObject);
var
  Forma: TForm;
  Anio, Mes, Dia: Word;
begin
  Try
    // Localizar la última fecha registrada
    zFecha.Close;
    Zfecha.Active := False;
    zFecha.Connection := Connection.zConnection;
    zFecha.params.ParamByName('IdGuardia').Datatype := ftInteger;
    zFecha.Params.ParamByName('IdGuardia').AsInteger := dsDetalleGuardia.DataSet.FieldByName('IdGuardia').AsInteger;
    zFecha.open;
    
    Forma := TForm.Create(Self);
    forma.BorderStyle := bsDialog;
    Forma.Caption := 'Periodo de Guardia';
    Forma.Width := 345;
    Forma.Height :=160;
    Panel3.Parent := Forma;
    Panel3.Align := alClient;
    Panel3.Visible := True;

    if zFecha.FieldByName('FechaInicio').AsDateTime = 0 then
      FechaInicio.Date := Now
    else
      FechaInicio.Date := zFecha.FieldByName('FechaInicio').AsDateTime;
    FechaInicio.OnChange(Nil);

    Forma.ShowModal;
  Finally
    Panel3.Visible := False;
    Panel3.Align := alNone;
    Panel3.Parent := Self;
    Forma.Destroy;
    DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
    CalendarioAnual(Anio, True);
  End;
end;

procedure TFrmPeriodosGuardia.FechaInicioChange(Sender: TObject);
var
  Anio, Mes, Dia: Word;
begin
  if cbTermino.Checked then
  begin
    if FechaInicio.Date > FechaTermino.Date then
      FechaTermino.Date := FechaInicio.Date + zFecha.FieldByName('Trabajados').AsInteger - 1;
  end
  else
  begin
    if zfecha.Active then
      FechaTermino.Date := FechaInicio.Date + zFecha.FieldByName('Trabajados').AsInteger -1;
  end;

  DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
  ApuntaFecha := FechaInicio.Date;
  CalendarioAnual(Anio, True);
end;

procedure TFrmPeriodosGuardia.FormResize(Sender: TObject);
var
  Anio, Mes, Dia: Word;
begin
  if zPeriodoGuardia.RecordCount > 0 then
    DecodeDate(zPeriodoGuardia.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia)
  else
    DecodeDate(Now, Anio, Mes, Dia);

  CalendarioAnual(Anio, True);
end;

procedure TFrmPeriodosGuardia.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  di: TDate;
  i: Integer;
  f: Integer;
  Anio, Mes, Dia: Word;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      zPeriodoGuardia.Active := False;
      zPeriodoGuardia.Connection := connection.zConnection;
      zPeriodoGuardia.Params.ParamByName('idGuardia').DataType := ftInteger;
      zPeriodoGuardia.Params.ParamByName('idGuardia').AsInteger := IdGuardia;
      zPeriodoGuardia.Open;

      if zPeriodoGuardia.RecordCount > 0 then
        DecodeDate(zPeriodoGuardia.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia)
      else
        DecodeDate(Now, Anio, Mes, Dia);

      CalendarioAnual(Anio, True);
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmPeriodosGuardia.frmBarra1btnAddClick(Sender: TObject);
begin
  DxBarBtnPeriodoClick(nil);
end;

procedure TFrmPeriodosGuardia.frmBarra1btnDeleteClick(Sender: TObject);
var
  Anio, Mes, Dia: Word;
begin
  Try
    zTraslape.Close;
    zTraslape.Active := False;
    zTraslape.Connection := connection.zConnection;
    zTraslape.SQL.Text := 'select ' +
                        'a.IdPeriodosGuardia, ' +
                        'a.IdGuardia, ' +
                        'a.FechaInicio, ' +
                        'a.FechaTermino, ' +
                        'a.Reprogramacion ' +
                        'from nom_periodosguardia as a ' +
                      'where ' +
                        '(:IdPeriodosGuardia = -1 or (:IdPeriodosGuardia <> -1 and a.IdPeriodosGuardia = :IdPeriodosGuardia))' +
                        ' limit 1 ';
    zTraslape.Params.ParamByName('IdPeriodosGuardia').DataType := ftInteger;
    zTraslape.Params.ParamByName('IdPeriodosGuardia').AsInteger := zPeriodoGuardia.FieldByName('IdPeriodosGuardia').AsInteger;
    zTraslape.Open;

    if zTraslape.RecordCount = 1 then
    begin
      if zTraslape.FieldByName('FechaInicio').AsDateTime > FechaTermino.Date then
        FechaTermino.Date := zTraslape.FieldByName('FechaInicio').AsDateTime;

      FechaInicio.Date := zTraslape.FieldByName('FechaInicio').AsDateTime;
      FechaTermino.Date := zTraslape.FieldByName('FechaTermino').AsDateTime;

      Try
        Borrando := True;
        DecodeDate(zTraslape.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
        CalendarioAnual(Anio, True);

        if MessageDlg('Está a punto de eliminar el periodo de guardia del ' + zTraslape.FieldByName('FechaInicio').AsString + ' al ' + zTraslape.FieldByName('FechaTermino').AsString + #10 + #10 +
                      '¿Está seguro que desea eliminar este periodo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Cursor := Screen.Cursor;
          Try
            Screen.Cursor := crAppStart;
            zTraslape.Delete;
            dsDetalleGuardia.DataSet.Refresh;
            zPeriodoGuardia.Refresh;

            if zPeriodoGuardia.RecordCount > 0 then
              DecodeDate(zPeriodoGuardia.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia)
            else
              DecodeDate(Today, Anio, Mes, Dia);
            CalendarioAnual(Anio, True);
          Finally
            Screen.Cursor := Cursor;
          End;
        end;
      Finally
        Borrando := False;
      End;
    end;
  Finally
    Panel3.Visible := False;
    Panel3.Align := alNone;
    Panel3.Parent := Self;
    zTraslape.Cancel;
    zTraslape.Close;
    DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
    CalendarioAnual(Anio, True);
  End;
end;

procedure TFrmPeriodosGuardia.frmBarra1btnEditClick(Sender: TObject);
var
  Forma: TForm;
  Anio, Mes, Dia: Word;
begin
  Try
    Forma := TForm.Create(Self);
    Forma.Width := 345;
    Forma.Height := 150;
    Forma.BorderStyle := bsDialog;
    Forma.Caption := 'Periodo de Guardia';
    Panel3.Parent := Forma;
    Panel3.Align := alClient;
    Panel3.Visible := True;

    zTraslape.Connection := connection.zConnection;
    zTraslape.Active := False;
    zTraslape.SQL.Clear;
    zTraslape.SQL.Text := 'select ' +
                            'a.IdPeriodosGuardia, ' +
                            'a.IdGuardia, ' +
                            'a.FechaInicio, ' +
                            'a.FechaTermino, ' +
                            'a.Reprogramacion ' +
                            'from nom_periodosguardia as a ' +
                          'where ' +
                            '(:IdPeriodosGuardia = -1 or (:IdPeriodosGuardia <> -1 and a.IdPeriodosGuardia = :IdPeriodosGuardia))' +
                            ' limit 1 ';
    zTraslape.Params.ParamByName('IdPeriodosGuardia').DataType := ftInteger;
    zTraslape.ParamByName('IdPeriodosGuardia').AsInteger := zPeriodoGuardia.FieldByName('IdPeriodosGuardia').AsInteger;
//    zTraslape.Params.ParamByName('FechaInicio').DataType := ftDate;
//    zTraslape.ParamByName('FechaInicio').AsDate := -1;
//    zTraslape.Params.ParamByName('FechaTermino').DataType := ftDate;
//    zTraslape.ParamByName('FechaTermino').AsDate := -1;
    zTraslape.Open;

    if zTraslape.RecordCount = 1 then
    begin
      if zTraslape.FieldByName('FechaInicio').AsDateTime > FechaTermino.Date then
        FechaTermino.Date := zTraslape.FieldByName('FechaInicio').AsDateTime;

      FechaInicio.Date := zTraslape.FieldByName('FechaInicio').AsDateTime;
      FechaTermino.Date := zTraslape.FieldByName('FechaTermino').AsDateTime;
      zTraslape.Edit;
      ApuntaFecha := FechaInicio.Date;
      DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
      CalendarioAnual(Anio, True);
      Forma.ShowModal;
    end;
  Finally
    Panel3.Visible := False;
    Panel3.Align := alNone;
    Panel3.Parent := Self;
    Forma.Destroy;
    zTraslape.Cancel;
    zTraslape.Close;
    DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
    CalendarioAnual(Anio, True);
  End;
end;

procedure TFrmPeriodosGuardia.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPeriodosGuardia.frmBarra1btnRefreshClick(Sender: TObject);
begin
  if zPeriodoGuardia.Active then
    zPeriodoGuardia.Refresh;
end;

procedure TFrmPeriodosGuardia.zPeriodoGuardiaAfterScroll(DataSet: TDataSet);
var
  Anio, Mes, Dia: Word;
begin
  if Not zPeriodoGuardia.ControlsDisabled then
  begin
    DecodeDate(zPeriodoGuardia.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
    CalendarioAnual(Anio, True);
  end;
end;

end.
