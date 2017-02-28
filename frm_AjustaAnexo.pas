unit frm_AjustaAnexo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, global, frm_barra, db, Grids, DBGrids, frm_Connection, StdCtrls,
  DBCtrls, ComCtrls, Mask, Utilerias, masUtilerias, StrUtils, Menus, Buttons,
  ExtCtrls, frxClass, frxDBSet, jpeg, RXDBCtrl, DateUtils,
  math, ImgList, RxMemDS, ZAbstractRODataset, ZDataset, unitExcel, ComObj,
  Gauges, rxToolEdit, rxCurrEdit, rxSpeedbar, udbgrid, unitexcepciones,
  UFunctionsGHH, UnitValidacion, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmAjustaAnexo = class(TForm)
    dsAnexoDT: TfrxDBDataset;
    SpeedBar1: TSpeedBar;
    SpeedbarSection2: TSpeedbarSection;
    btnValida: TSpeedItem;
    btnAdiciona: TSpeedItem;
    MemoryAnexo: TRxMemoryData;
    MemoryAnexoAnno: TIntegerField;
    MemoryAnexoMes: TStringField;
    MemoryAnexoCantidad: TFloatField;
    MemoryAnexoiMes: TIntegerField;
    ds_Memory: TDataSource;
    btnDistribuye: TSpeedItem;
    MemoryAnexoMonto: TCurrencyField;
    Panel: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tsMes: TComboBox;
    UpAnno: TUpDown;
    tdCantidad: TCurrencyEdit;
    tdMonto: TCurrencyEdit;
    tiAnno: TEdit;
    btnAdicionar: TBitBtn;
    btnSalir: TBitBtn;
    btnAnexoDT: TSpeedItem;
    btnAnexoDE: TSpeedItem;
    MemoryAnexoMontoDLL: TCurrencyField;
    Label8: TLabel;
    tdMontoDLL: TCurrencyEdit;
    ds_actividadesxanexo: TDataSource;
    ActividadesxAnexo: TZReadOnlyQuery;
    ActividadesxAnexoiNivel: TIntegerField;
    ActividadesxAnexosWbs: TStringField;
    ActividadesxAnexosNumeroActividad: TStringField;
    ActividadesxAnexodFechaInicio: TDateField;
    ActividadesxAnexodFechaFinal: TDateField;
    ActividadesxAnexodCantidadAnexo: TFloatField;
    ActividadesxAnexosMedida: TStringField;
    ActividadesxAnexodVentaMN: TFloatField;
    ActividadesxAnexodPonderado: TFloatField;
    ActividadesxAnexodVentaDLL: TFloatField;
    ActividadesxAnexomDescripcion: TMemoField;
    ActividadesxAnexosTipoActividad: TStringField;
    ActividadesxAnexoiColor: TIntegerField;
    ActividadesxAnexosWbsSpace: TStringField;
    AnexoDT: TZReadOnlyQuery;
    SpeedItem1: TSpeedItem;
    btAnexoDEDLS: TSpeedItem;
    frxAnexo: TfrxReport;
    frxDBValida: TfrxDBDataset;
    RxMDValida: TRxMemoryData;
    RxMDValidanumero: TStringField;
    RxMDValidamensaje: TStringField;
    RxMDValidaactividad: TStringField;
    RxMDValidawbs: TStringField;
    RxMDValidadescripcion: TStringField;
    RxMDValidacantidadAnexo: TStringField;
    RxMDValidaventaMN: TStringField;
    RxMDValidaventaDLL: TStringField;
    RxMDValidaDT: TStringField;
    RxMDValidaDEMN: TStringField;
    RxMDValidaDEDLL: TStringField;
    popOpciones: TPopupMenu;
    PDF1: TMenuItem;
    Excel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    SpeedItem3: TSpeedItem;
    ActividadesxAnexosDescripcion: TStringField;
    popDistribuye: TPopupMenu;
    CreaDTpartidaSelccionada1: TMenuItem;
    CreaDTparaTodaslaspartidas1: TMenuItem;
    ActividadesxAnexosAnexo: TStringField;
    pnl1: TPanel;
    ts1: TLabel;
    ts2: TLabel;
    ts3: TLabel;
    ts4: TLabel;
    ts5: TLabel;
    Progress: TGauge;
    bNotas: TImage;
    tdTotal: TCurrencyEdit;
    tdImporte: TCurrencyEdit;
    tdImportePartida: TCurrencyEdit;
    chkDT: TCheckBox;
    chkDE: TCheckBox;
    tdImportePartidaDLL: TCurrencyEdit;
    tdImporteDLL: TCurrencyEdit;
    pnl2: TPanel;
    RXMensual: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    grid_actividades: TcxGrid;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column10: TcxGridDBColumn;
    pnl3: TPanel;
    function lExisteMedida(sMedida: string): Boolean;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MemoryAnexoAfterInsert(DataSet: TDataSet);
    procedure ActividadesxAnexoAfterScroll(DataSet: TDataSet);
    procedure btnValidaClick(Sender: TObject);
    procedure btnDistribuyeClick(Sender: TObject);
    procedure PanelExit(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure PanelEnter(Sender: TObject);
    procedure rxMensuaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalirClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure tiAnnoEnter(Sender: TObject);
    procedure tiAnnoExit(Sender: TObject);
    procedure tiAnnoKeyPress(Sender: TObject; var Key: Char);
    procedure tsMesEnter(Sender: TObject);
    procedure tsMesExit(Sender: TObject);
    procedure tsMesKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoEnter(Sender: TObject);
    procedure tdMontoExit(Sender: TObject);
    procedure tdMontoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_actividadeKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoDLLEnter(Sender: TObject);
    procedure tdMontoDLLExit(Sender: TObject);
    procedure grid_actividadeGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ActividadesxAnexoCalcFields(DataSet: TDataSet);
    procedure SpeedItem1Click(Sender: TObject);
    procedure procActualizaPonderado(sContrato, sConvenio, sWbs, sActividad: string; dPonderado: currency);
    procedure bNotasClick(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure formatoEncabezado();
    procedure grid_actividadeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_actividadeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_actividadeTitleClick(Column: TColumn);
    procedure rxMensualMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rxMensualMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rxMensualTitleClick(Column: TColumn);
    procedure tdImportePartidaKeyPress(Sender: TObject; var Key: Char);
    procedure tdImportePartidaDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdTotalKeyPress(Sender: TObject; var Key: Char);
    procedure tdImporteKeyPress(Sender: TObject; var Key: Char);
    procedure tdImporteDLLKeyPress(Sender: TObject; var Key: Char);
    procedure MemoryAnexoBeforeDelete(DataSet: TDataSet);
    procedure MemoryAnexoAfterDelete(DataSet: TDataSet);
    procedure btAnexoDEDLSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnAnexoDEMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnAnexoDTMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedItem3Click(Sender: TObject);
    procedure tdCantidadChange(Sender: TObject);
    procedure tdMontoChange(Sender: TObject);
    procedure tdMontoDLLChange(Sender: TObject);
    procedure CreaDTpartidaSelccionada1Click(Sender: TObject);
    procedure CreaDTparaTodaslaspartidas1Click(Sender: TObject);
    procedure EliminaDistribucion(sParamPartida: string);
    procedure cxgrdbtblvwGrid1DBTableView2KeyPress(Sender: TObject;
      var Key: Char);

  private
    sMenuP: string;
    { Private declarations }
    procedure llenarMenData(mensaje: string);
  public
    { Public declarations }

  end;

var
  frmAjustaAnexo: TfrmAjustaAnexo;
  Months: array[1..12] of string;
  lInvalido: Boolean;
  lProcesoDistribucion: Boolean;
  utgrid: ticdbgrid;
  utgrid2: ticdbgrid;

  dFechaDistribuye: tDate;
  sOpcion: string;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;

implementation

{$R *.dfm}

procedure TfrmAjustaAnexo.FormShow(Sender: TObject);
begin
  try
    sMenuP := stMenu;
   // UtGrid := TicdbGrid.create(grid_actividades);
   // UtGrid2 := TicdbGrid.create(rxmensual);
    Months[1] := 'ENERO';
    Months[2] := 'FEBRERO';
    Months[3] := 'MARZO';
    Months[4] := 'ABRIL';
    Months[5] := 'MAYO';
    Months[6] := 'JUNIO';
    Months[7] := 'JULIO';
    Months[8] := 'AGOSTO';
    Months[9] := 'SEPTIEMBRE';
    Months[10] := 'OCTUBRE';
    Months[11] := 'NOVIEMBRE';
    Months[12] := 'DICIEMBRE';

    lProcesoDistribucion := False;
    ActividadesxAnexo.Active := False;
    ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString;
    ActividadesxAnexo.Params.ParamByName('Contrato').Value := Global_Contrato;
    ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString;
    ActividadesxAnexo.Params.ParamByName('Convenio').Value := Global_Convenio;
    if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
    begin
      ActividadesxAnexo.ParamByName('tam').AsInteger := Global_TamOrden;
      ActividadesxAnexo.ParamByName('separador').AsString := Global_SepOrden;
    end;
    ActividadesxAnexo.Open;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_AjustaAnexo', 'Al iniciar el formulario', 0);
    end;
  end;

end;

procedure TfrmAjustaAnexo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  
end;

procedure TfrmAjustaAnexo.MemoryAnexoAfterDelete(DataSet: TDataSet);
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Delete From anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad ' +
    'and dIdFecha =:Fecha ');
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
  Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
  Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
  Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
  Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  Connection.qryBusca.Params.ParamByName('Fecha').Value := dFechaDistribuye;
  Connection.qryBusca.ExecSQL;
end;

procedure TfrmAjustaAnexo.MemoryAnexoAfterInsert(DataSet: TDataSet);
begin
  if lInvalido then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
      MemoryAnexo.Cancel;
      if Panel.Visible then
        tsMes.SetFocus
    end
end;

procedure TfrmAjustaAnexo.MemoryAnexoBeforeDelete(DataSet: TDataSet);
begin
  dFechaDistribuye := StrToDate('01/' + IntToStr(MemoryAnexo.FieldValues['iMes']) + '/' + IntToStr(MemoryAnexo.FieldValues['Anno']));
end;

procedure TfrmAjustaAnexo.ActividadesxAnexoAfterScroll(DataSet: TDataSet);
begin
  grid_actividades.Hint := '';
  if ActividadesxAnexo.RecordCount > 0 then
  begin
    if lProcesoDistribucion = False then
    begin
      grid_actividades.Hint := ActividadesxAnexo.FieldValues['mDescripcion'];
      tdImportePartida.Value := ActividadesxAnexo.FieldValues['dCantidadAnexo'] * ActividadesxAnexo.FieldValues['dVentaMN'];
      tdImportePartidaDLL.Value := ActividadesxAnexo.FieldValues['dCantidadAnexo'] * ActividadesxAnexo.FieldValues['dVentaDLL'];

      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Sum(dt) as Cantidad, Sum(DEmn) as Monto, Sum(DEdll) as MontoDLL ' +
        'From anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad ' +
        'Group By sWbs, sNumeroActividad');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
      Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
      Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
      begin
        tdTotal.Value := Connection.qryBusca.FieldValues['Cantidad'];
        tdImporte.Value := Connection.qryBusca.FieldValues['Monto'];
        tdImporteDLL.Value := Connection.qryBusca.FieldValues['MontoDLL'];
      end
      else
      begin
        tdtotal.Value := 0;
        tdImporte.Value := 0;
        tdImporteDLL.Value := 0;
      end;
    end;

    if MemoryAnexo.RecordCount > 0 then
      MemoryAnexo.EmptyTable;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Year(dIdFecha) as Anno, Month(dIdFecha) as Mes, DT as Cantidad, DEmn as Monto, DEdll as MontoDLL ' +
      'From anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad Group By ' +
      'sWbs, sNumeroActividad, Year(dIdFecha), Month(dIdFecha)');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
    Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    Connection.qryBusca.Open;
    lInvalido := False;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      Connection.qryBusca.First;
      while not Connection.qryBusca.Eof do
      begin
        MemoryAnexo.Append;
        MemoryAnexo.FieldValues['Anno'] := Connection.qryBusca.FieldValues['Anno'];
        MemoryAnexo.FieldValues['Mes'] := Months[Connection.qryBusca.FieldByName('Mes').AsInteger];
        MemoryAnexo.FieldValues['iMes'] := Connection.qryBusca.FieldValues['Mes'];
        MemoryAnexo.FieldValues['Cantidad'] := Connection.qryBusca.FieldValues['Cantidad'];
        MemoryAnexo.FieldValues['Monto'] := Connection.qryBusca.FieldValues['Monto'];
        MemoryAnexo.FieldValues['MontoDLL'] := Connection.qryBusca.FieldValues['MontoDLL'];
        MemoryAnexo.Post;
        Connection.qryBusca.Next
      end
    end;
    lInvalido := True;
  end
end;

//*****************************BRITO 13/01/11*******************************

procedure TfrmAjustaAnexo.llenarMenData(mensaje: string);
var
  lNuevaAct: boolean;
begin
  lNuevaAct := true;
  if RxMDValida.RecordCount > 0 then
  begin
        //if RxMDValida.FieldByName('actividad').AsString = Connection.qryBusca.fieldByName('sNumeroActividad').AsString then
    if RxMDValida.Locate('actividad', Connection.qryBusca.fieldByName('sNumeroActividad').AsString, []) then
    begin
      RxMDValida.Edit;
      RxMDValida.FieldByName('mensaje').Value := RxMDValida.FieldByName('mensaje').AsString + #10 + mensaje;
      RxMDValida.Post;
      lNuevaAct := false;
    end;
  end;
  if lNuevaAct then
  begin
    RxMDValida.Append;
    RxMDValida.FieldByName('numero').Value := '1';
    RxMDValida.FieldByName('mensaje').Value := mensaje;
    RxMDValida.FieldByName('actividad').Value := Connection.qryBusca.fieldByName('sNumeroActividad').AsString;
    RxMDValida.FieldByName('wbs').Value := Connection.qryBusca.fieldByName('sWbs').AsString;
    RxMDValida.FieldByName('descripcion').Value := Connection.qryBusca.fieldByName('descripcion').AsString;
    RxMDValida.FieldByName('cantidadAnexo').Value := Connection.qryBusca.fieldByName('dCantidadAnexo').AsString;
    RxMDValida.FieldByName('ventaMN').Value := Connection.qryBusca.fieldByName('dVentaMN').AsString;
    RxMDValida.FieldByName('ventaDLL').Value := Connection.qryBusca.fieldByName('dVentaDLL').AsString;
    RxMDValida.FieldByName('DT').Value := Connection.qryBusca.fieldByName('DT').AsString;
    RxMDValida.FieldByName('DEMN').Value := Connection.qryBusca.fieldByName('dDEmn').AsString;
    RxMDValida.FieldByName('DEDLL').Value := Connection.qryBusca.fieldByName('dDEdll').AsString;
    RxMDValida.Post;
  end;
end;
//*********************************BRITO 13/01/11*******************************

procedure TfrmAjustaAnexo.btnValidaClick(Sender: TObject);
var
  dImporteMN: Double;
  dAnexomn: Double;
  dImporteDLL,
    dAnexodll: Double;
  cadena: string;
  lError: boolean;
begin
  if not FileExists(global_files + global_miReporte + '_reporteValidacion.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_reporteValidacion.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;

  try
    //***********************IVAN 11/06/11*************************************
    lError := false;
    RxMDValida.Active := True;
    if RxMDValida.RecordCount > 0 then
      RxMDValida.EmptyTable;

    {Consultamos las distribuciones con fechas diferentes de inicio y termino de las partidas.. 11 Junio 2011..}
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select m.sNumeroActividad, a.dFechaInicio, a.dFechaFinal, m.dIdFecha, ' +
      'if((select count(distinct year(am.didfecha)) from anexosmensuales am ' +
      'where am.scontrato=m.scontrato and am.sIdConvenio=a.sIdConvenio ' +
      'and am.swbs=a.sWbs and am.snumeroactividad=a.sNumeroActividad ' +
      'group by am.swbs)=(select PERIOD_DIFF(year(a.dFechaFinal), ' +
      'year(a.dFechaInicio))+1 as Age),1,0) as periodo ' +
      'from anexosmensuales m ' +
      'inner join actividadesxanexo a ' +
      'on (a.sContrato = m.sContrato and a.sIdConvenio = m.sIdConvenio ' +
      'and a.sWbs = m.sWbs and a.sNumeroActividad = m.sNumeroActividad) ' +
      'where m.sContrato =:Contrato and m.sIdConvenio =:Convenio ' +
      'and (year(m.dIdFecha) <> year(a.dFechaInicio) or year(m.dIdFecha) <> year(a.dFechaFinal)) ' +
      'group by m.swbs having periodo=0 order by a.iItemorden ');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
      cadena := cadena + connection.zCommand.FieldValues['sNumeroActividad'] + ', ';
      connection.zCommand.Next;
    end;
    if cadena <> '' then
    begin
      messageDLG('La distribucion del Anexo DT de las siguientes partidas contiene fechas fuera del rango permitido !' + #13 + 'Partida: ' + cadena, mtInformation, [mbOk], 0);
      exit;
    end;
    {Termina validacion de distribucion...}

    //***********************BRITO 13/01/11*************************************
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select a.sWbs, a.dCantidadAnexo,a.dVentaMN, a.dVentaDLL, Sum(m.DT) as DT, Sum(m.DEmn) as dDEmn, Sum(m.DEdll) as dDEdll, ' +
      'a.sNumeroActividad, substr(a.mDescripcion, 1, 255) as descripcion ' +
      'From actividadesxanexo a LEFT JOIN anexosmensuales m ON (a.sContrato = m.sContrato And a.sIdConvenio = m.sIdConvenio And ' +
      'a.sWbs = m.sWbs And a.sNumeroActividad = m.sNumeroActividad) Where a.sContrato = :contrato And a.sIdConvenio = :Convenio And a.dCantidadAnexo > 0 And a.sTipoActividad = "Actividad" ' +
      'Group By a.sWbs Order By a.iItemOrden');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount >= 0 then
    begin
      while not Connection.qryBusca.Eof do
      begin
        if chkDT.Checked = True then
        begin
          if Connection.qryBusca.fieldByName('DT').IsNull and Connection.qryBusca.FieldValues['dCantidadAnexo'] > 0 then begin
                    //MessageDlg('Existe Diferencia entre la cantidad anexo y el Anexo DT en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0)
            llenarMenData('Hay Diferencia entre la cantidad anexo y el Anexo DT');
            lError := true;
          end
          else
            if (Connection.qryBusca.FieldValues['dCantidadAnexo'] > 0) and (Connection.qryBusca.FieldValues['dCantidadAnexo'] <> Connection.qryBusca.FieldValues['DT']) then begin
                        //MessageDlg('Existe Diferencia entre la cantidad anexo y el Anexo DT en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0) ;
              llenarMenData('Hay Diferencia entre la cantidad anexo y el Anexo DT');
              lError := true;
            end;
        end;

        if ChkDE.Checked = True then
        begin
          try
            dImporteMN := RoundTo(Connection.qryBusca.FieldValues['dCantidadAnexo'] * Connection.qryBusca.FieldValues['dVentaMN'], -2);
            if (Connection.qryBusca.FieldByName('dDEmn').IsNull) and (dImporteMN > 0) then begin
                        //MessageDlg('Existe Diferencia entre el importe total y el Anexo DE M.N. en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0)
              llenarMenData('Hay Diferencia entre el total M.N. y el Anexo DE M.N.');
              lError := true;
            end
            else
            begin
              dAnexomn := RoundTo(Connection.qryBusca.FieldValues['dDEmn'], -2);
              if dImporteMN <> dAnexoMN then begin
                              //MessageDlg('Existe Diferencia entre el total en MN y el Anexo DE M.N. en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0) ;
                llenarMenData('Hay Diferencia entre el total en M.N. y el Anexo DE M.N.');
                lError := true;
              end;
            end;

            dImporteDLL := RoundTo(Connection.qryBusca.FieldValues['dCantidadAnexo'] * Connection.qryBusca.FieldValues['dVentaDLL'], -2);
            if (Connection.qryBusca.FieldByName('dDEdll').IsNull) and (dImporteDLL > 0) then begin
                        //MessageDlg('Existe Diferencia entre el importe total y el Anexo DE en moneda extranjera en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0)
              llenarMenData('Hay Diferencia entre el total en DLL y el Anexo DE D.L.L.');
              lError := true;
            end else
            begin
              dAnexodll := RoundTo(Connection.qryBusca.FieldValues['dDEdll'], -2);
              if dImporteDLL <> dAnexoDLL then begin
                            //MessageDlg('Existe Diferencia entre el importe total y el Anexo en moneda extranjera en la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0) ;
                llenarMenData('Hay Diferencia entre el total en DLL y el Anexo DE D.L.L.');
                lError := true;
              end;
            end
          except
                     //MessageDlg('Error en la partida No. ' + Connection.qryBusca.FieldByName('sWbs').AsString , mtInformation, [mbOk], 0) ;
            llenarMenData('Error en la partida');
            lError := true;
          end
        end;
        Connection.qryBusca.Next
      end
    end;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select a.sWbs, a.dCantidadAnexo, Sum(m.dCantidad) as DT, ' +
      'a.dVentaMN, a.dVentaDLL, a.sNumeroActividad, ' +
      'substr(a.mDescripcion, 1, 255) as descripcion, "" as dDEmn, "" as dDEdll ' +
      'From actividadesxanexo a LEFT JOIN distribuciondeanexo m ON ' +
      '(a.sContrato = m.sContrato And a.sIdConvenio = m.sIdConvenio And a.sWbs = m.sWbs And a.sNumeroActividad = m.sNumeroActividad) ' +
      'Where a.sContrato = :contrato And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Group By a.sWbs Order By a.iItemOrden');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount >= 0 then
    begin
      if chkDT.Checked = True then
        while not Connection.qryBusca.Eof do
        begin
          if Connection.qryBusca.FieldByName('DT').IsNull and Connection.qryBusca.FieldValues['dCantidadAnexo'] > 0 then begin
                  //MessageDlg('Existe Diferencia entre la cantidad anexo y la distribucion de la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0)
            llenarMenData('Existe Diferencia entre la cantidad anexo y la distribucion de la partida');
            lError := true;
          end
          else
            if (Connection.qryBusca.FieldValues['dCantidadAnexo'] > 0) and (Connection.qryBusca.FieldValues['dCantidadAnexo'] <> Connection.qryBusca.FieldValues['DT']) then begin
                      //MessageDlg('Existe Diferencia entre la cantidad anexo y la distribucion de la partida ' + Connection.qryBusca.FieldValues['sWbs'], mtInformation, [mbOk], 0) ;
              llenarMenData('Existe Diferencia entre la cantidad anexo y la distribucion de la partida ');
              lError := true;
            end;
          Connection.qryBusca.Next
        end
    end;

    //***************************BRITO 13/01/11*********************************
    if lError then begin
      MessageDlg('Existen diferencias. Oprima aceptar para ver el reporte.', mtInformation, [mbOk], 0);
      frxAnexo.LoadFromFile(global_files + 'reporteValidacion.fr3');
      frxAnexo.PreviewOptions.MDIChild := True;
      frxAnexo.PreviewOptions.Modal := False;
      frxAnexo.PreviewOptions.Maximized := lCheckMaximized;
      frxAnexo.PreviewOptions.ShowCaptions := False;
      frxAnexo.Previewoptions.ZoomMode := zmPageWidth;

      frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
      if not FileExists(global_files +global_Mireporte+ '_reporteValidacion.fr3') then
        showmessage('El archivo de reporte reporteValidacion.fr3 no existe, notifique al administrador del sistema');
    end
    else begin
      MessageDlg('Proceso Terminado con Exito! No hay diferencias.', mtInformation, [mbOk], 0);
    end;
    //***************************BRITO 13/01/11*********************************

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_AjustaAnexo', 'En el proceso valida', 0);
    end;
  end;
end;

procedure TfrmAjustaAnexo.CreaDTparaTodaslaspartidas1Click(Sender: TObject);
var
  total: integer;
  dCantidad: double;
  dia, anio: string;
  fecha: tDate;
begin
  EliminaDistribucion('Todas');
  ActividadesxAnexo.First;
  while not ActividadesxAnexo.Eof do
  begin
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
            //primero obtenermos el total de meses..
      fecha := ActividadesxAnexo.FieldValues['dFechaInicio'];
      if fecha < ActividadesxAnexo.FieldValues['dFechaFinal'] then
        total := 0
      else
        total := 1;
      while fecha < ActividadesxAnexo.FieldValues['dFechaFinal'] do
      begin
        inc(total);
        fecha := Incmonth(fecha, 1);
      end;

      dCantidad := ActividadesxAnexo.FieldValues['dCantidadAnexo'] / total;
            //Ahora salvamos por mes la cantidad de DT..
      fecha := ActividadesxAnexo.FieldValues['dFechaInicio'];
      while fecha <= ActividadesxAnexo.FieldValues['dFechaFinal'] do
      begin
        connection.QryBusca.Active := false;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('insert into anexosmensuales (sContrato, sIdConvenio, sAnexo, sWbs, sNumeroActividad, dIdFecha, DT, Demn, DEdll)' +
          'values (:Contrato, :Convenio, :Anexo, :Wbs, :Actividad, :Fecha, :DT, :DEmn, :DEdll)');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Convenio').AsString := global_convenio;
        connection.QryBusca.ParamByName('Anexo').AsString := ActividadesxAnexo.FieldValues['sAnexo'];
        connection.QryBusca.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
        connection.QryBusca.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        connection.QryBusca.ParamByName('Fecha').AsDate := StrToDate('01/' + copy(DateToStr(fecha), 4, 2) + '/' + copy(DateToStr(fecha), 7, 4));
        connection.QryBusca.ParamByName('DT').AsFloat := dCantidad;
        connection.QryBusca.ParamByName('DEmn').AsFloat := dCantidad * ActividadesxAnexo.FieldValues['dVentaMN'];
        connection.QryBusca.ParamByName('DEdll').AsFloat := dCantidad * ActividadesxAnexo.FieldValues['dVentaDLL'];
        connection.QryBusca.ExecSQL;
        fecha := Incmonth(fecha, 1);
      end;
    end;
    ActividadesxAnexo.Next;
  end;
  messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0);
end;

procedure TfrmAjustaAnexo.CreaDTpartidaSelccionada1Click(Sender: TObject);
var
  total: integer;
  dCantidad: double;
  dia, anio: string;
  fecha: tDate;
begin
  EliminaDistribucion('Partida');
  if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
  begin
        //primero obtenermos el total de meses..
    fecha := ActividadesxAnexo.FieldValues['dFechaInicio'];

    if fecha < ActividadesxAnexo.FieldValues['dFechaFinal'] then
      total := 0
    else
      total := 1;

    while fecha < ActividadesxAnexo.FieldValues['dFechaFinal'] do
    begin
      inc(total);
      fecha := Incmonth(fecha, 1);
    end;

    dCantidad := ActividadesxAnexo.FieldValues['dCantidadAnexo'] / total;
        //Ahora salvamos por mes la cantidad de DT..
    fecha := ActividadesxAnexo.FieldValues['dFechaInicio'];
    while fecha <= ActividadesxAnexo.FieldValues['dFechaFinal'] do
    begin
      connection.QryBusca.Active := false;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('insert into anexosmensuales (sContrato, sIdConvenio, sAnexo, sWbs, sNumeroActividad, dIdFecha, DT, Demn, DEdll)' +
        'values (:Contrato, :Convenio, :Anexo, :Wbs, :Actividad, :Fecha, :DT, :DEmn, :DEdll)');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Convenio').AsString := global_convenio;
      connection.QryBusca.ParamByName('Anexo').AsString := ActividadesxAnexo.FieldValues['sAnexo'];
      connection.QryBusca.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
      connection.QryBusca.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      connection.QryBusca.ParamByName('Fecha').AsDate := StrToDate('01/' + copy(DateToStr(fecha), 4, 2) + '/' + copy(DateToStr(fecha), 7, 4));
      connection.QryBusca.ParamByName('DT').AsFloat := dCantidad;
      connection.QryBusca.ParamByName('DEmn').AsFloat := dCantidad * ActividadesxAnexo.FieldValues['dVentaMN'];
      connection.QryBusca.ParamByName('DEdll').AsFloat := dCantidad * ActividadesxAnexo.FieldValues['dVentaDLL'];
      connection.QryBusca.ExecSQL;
      fecha := Incmonth(fecha, 1);
    end;
    messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmAjustaAnexo.cxgrdbtblvwGrid1DBTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #26 then
  begin
    if MessageDlg('Desea ejecutar el proceso de distribución automatica de partidas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      lProcesoDistribucion := True;
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('DELETE FROM distribuciondeanexo Where sContrato = :contrato And sIdConvenio = :Convenio');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
      connection.zCommand.ExecSQL();
      ActividadesxAnexo.First;
      while not ActividadesxAnexo.EOF do
      begin
        if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
          btnDistribuye.Click;
        ActividadesxAnexo.Next
      end;
      lProcesoDistribucion := False;
    end
  end
end;

procedure TfrmAjustaAnexo.Excel1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      Ren, nivel: integer;
      Q_Meses: TZReadOnlyQuery;
      i: integer;
      MiWbs: string;
      dTotal: double;
    begin
      Q_Meses := TZReadOnlyQuery.Create(self);
      Q_Meses.Connection := connection.zConnection;

      Ren := 1;

      {Primero consultamos los meses que durara la Obra..}
      Q_Meses.Active := False;
      Q_Meses.SQL.Clear;
      Q_Meses.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes from anexosmensuales ' +
        'Where sContrato =:Contrato And sIdConvenio =:Convenio ' +
        'group by Year(dIdFecha), month(dIdFecha) ' +
        'Order by Year(dIdFecha), month(dIdFecha)');
      Q_Meses.ParamByName('Contrato').AsString := global_contrato;
      Q_Meses.ParamByName('Convenio').AsString := global_convenio;
      Q_Meses.Open;

      {Primero activamos la consulta del DT..}
      AnexoDt.Active := False;
      AnexoDT.Params.ParamByName('Contrato').DataType := ftString;
      AnexoDT.Params.ParamByName('Contrato').Value := global_contrato;
      AnexoDT.Params.ParamByName('Convenio').DataType := ftString;
      AnexoDT.Params.ParamByName('Convenio').Value := global_convenio;
      AnexoDT.Open;

     // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
      Excel.Columns['A:A'].ColumnWidth := 10;
      Excel.Columns['B:B'].ColumnWidth := 40;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Partida';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;

      Hoja.Range['A1:D1'].Select;
      Excel.Selection.Interior.ColorIndex := 5;
      Excel.Selection.Font.Color := clWhite;

      Q_Meses.First;
      i := 1;
      while not Q_Meses.Eof do
      begin
        Hoja.Cells[1, 4 + i].Select;
        Excel.Selection.Value := StrToDate('01/' + FloatToStr(Q_Meses.FieldValues['dMes']) + '/' + FloatToStr(Q_Meses.FieldValues['dAnno']));
        Excel.Selection.Interior.ColorIndex := 5;
        Excel.Selection.Font.Color := clWhite;
        Inc(i);
        Q_Meses.Next;
      end;

      Hoja.Cells[Ren, 4 + i].Select;
      Excel.Selection.Value := 'Total';
      Excel.Selection.Interior.ColorIndex := 5;
      Excel.Selection.Font.Color := clWhite;
      FormatoEncabezado;

      dTotal := 0;
      if AnexoDT.RecordCount > 0 then
      begin
        while not AnexoDT.Eof do
        begin
          if MiWbs <> AnexoDT.FieldValues['sWbs'] then
          begin
            Inc(Ren);
            Hoja.Cells[Ren, 1].Select;
            Excel.Selection.Value := AnexoDT.FieldValues['sNumeroActividad'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Size := 11;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Calibri';

            Hoja.Cells[Ren, 2].Select;
            Excel.Selection.Value := AnexoDT.FieldValues['mDescripcion'];
            Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
            Hoja.Cells[Ren, 2].Value := '';

            if Alto > 15 then
              Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
            else
              Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

            Excel.Selection.Value := AnexoDT.FieldValues['mDescripcion'];

            Hoja.Cells[Ren, 3].Select;
            if sOpcion = 'DT' then
              Excel.Selection.Value := FloatToStr(AnexoDT.FieldValues['dCantidadAnexo']);

            Excel.Selection.NumberFormat := '@';
            if sOpcion = 'DE' then
              Excel.Selection.Value := CurrToStrF(AnexoDT.FieldByName('dVentaMN').AsFloat *
                AnexoDT.FieldValues['dCantidadAnexo'], ffCurrency, 2);
            if sOpcion = 'DEDLL' then
              Excel.Selection.Value := CurrToStrF(AnexoDT.FieldByName('dVentaDLL').AsFloat *
                AnexoDT.FieldValues['dCantidadAnexo'], ffCurrency, 2);

            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 4].Select;
            Excel.Selection.Value := AnexoDT.FieldValues['sMedida'];
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;

            MiWbs := AnexoDT.FieldValues['sWbs'];
            dTotal := 0;
          end;

          Q_Meses.First;
          i := 1;
          while not Q_Meses.Eof do
          begin
            if (Q_Meses.FieldValues['dAnno'] = AnexoDT.FieldValues['dAnno']) and (Q_Meses.FieldValues['dMes'] = AnexoDT.FieldValues['dMes']) then
            begin
              Hoja.Cells[Ren, 4 + i].Select;

              if sOpcion = 'DT' then
                Excel.Selection.Value := FloatToStr(AnexoDT.FieldValues['dMensual']);

              if sOpcion = 'DE' then
              begin
                Excel.Selection.NumberFormat := '@';
                Excel.Selection.Value := CurrToStrF(AnexoDT.FieldByName('dVentaMN').AsFloat *
                  AnexoDT.FieldValues['dCantidadAnexo'], ffCurrency, 2);
              end;

              if sOpcion = 'DEDLL' then
              begin
                Excel.Selection.NumberFormat := '@';
                Excel.Selection.Value := CurrToStrF(AnexoDT.FieldByName('dVentaDLL').AsFloat *
                  AnexoDT.FieldValues['dCantidadAnexo'], ffCurrency, 2);
              end;
              Excel.Selection.HorizontalAlignment := xlRight;
              Excel.Selection.VerticalAlignment := xlCenter;
            end;
            Inc(i);
            Q_Meses.Next;
          end;

          dTotal := dTotal + AnexoDT.FieldValues['dMensual'];

          Hoja.Cells[Ren, 4 + i].Select;

          if sOpcion = 'DT' then
            Excel.Selection.Value := FloatToStr(dTotal);

          if sOpcion = 'DE' then
          begin
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := CurrToStrF(dTotal * AnexoDT.FieldByName('dVentaMN').AsFloat, ffCurrency, 2);
          end;

          if sOpcion = 'DEDLL' then
          begin
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := CurrToStrF(dTotal * AnexoDT.FieldByName('dVentaDLL').AsFloat, ffCurrency, 2);
          end;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          AnexoDT.Next;
        end;
      end;

      Hoja.Cells[2, 2].Select;

    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      if sOpcion = 'DT' then
        Hoja.Name := 'ANEXO D.T.'
      else
        if sOpcion = 'DE' then
          Hoja.Name := 'ANEXO DE MN'
        else
          Hoja.Name := 'ANEXO DE DLL';

      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al generar el Anexo D.T.:' + #10 + #10 + e.Message;
      end;
    end;

    Result := Resultado;
  end;

begin
  try
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    if not SaveDialog1.Execute then
      Exit;

  // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
    except
      on e: exception do begin
        FreeAndNil(Excel);
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas', 'Al generar el ambiente de excel', 0);
        Exit;
      end;
    end;

    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;

    Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
    while Libro.Sheets.Count < 2 do
      Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
    Libro.Sheets[1].Select;
    while Libro.Sheets.Count > 1 do
      Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
    CadError := '';

    if GenerarPlantilla then
    // Grabar el archivo de excel con el nombre dado
      if sOpcion = 'DT' then
        messageDlg('El Anexo D.T. se Genero Correctamente!', mtConfirmation, [mbOk], 0)
      else
        if sOpcion = 'DE' then
          messageDlg('El Anexo DE MN se Genero Correctamente!', mtConfirmation, [mbOk], 0)
        else
          messageDlg('El Anexo DE DLL se Genero Correctamente!', mtConfirmation, [mbOk], 0);

    Excel := '';

    if CadError <> '' then
      showmessage(CadError);

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_AjustaAnexo', 'Al generar Excel', 0);
    end;
  end;
end;

procedure TfrmAjustaAnexo.btnDistribuyeClick(Sender: TObject);
var
  dFactor: Double;
  lValido: Boolean;
  days: array[1..7] of string;
  sFecha, sMyDia, txtAux: string;
  dFechaInicial: tDate;
  dFechaFinal: tDate;
  dDistribuido: Real;
  dAjuste: Real;
  dFactorDiario: Real;
  dCantidadEntera: Real;
  dHorasTotales: Real;
  dHorasDiarias: Real;
  sNumeroActividad,
    sWbs: string;
begin
  try
    sWbs := ActividadesxAnexo.FieldValues['sWbs'];
    sNumeroActividad := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    MemoryAnexo.First;
    while not MemoryAnexo.Eof do
    begin
      lValido := False;
      dFechaInicial := strToDate('01/' + Trim(IntToStr(MemoryAnexo.FieldValues['iMes'])) + '/' + Trim(IntToStr(MemoryAnexo.FieldValues['Anno'])));
      dFechaFinal := strToDate(sfnFechaFinal(MemoryAnexo.FieldValues['iMes'], MemoryAnexo.FieldValues['Anno']));
      lValido := True;
      if not lProcesoDistribucion then
      begin
        Connection.qryBusca.Active := False;
        Connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('Select sContrato From anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio And ' +
          'sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
        Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
        Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Actividad').Value := sNumeroActividad;
        Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
        Connection.qryBusca.Params.ParamByName('Fecha').Value := dFechaInicial;
        Connection.qryBusca.Open;
        if Connection.qryBusca.RecordCount = 0 then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('INSERT INTO anexosmensuales ( sContrato , sIdConvenio, dIdFecha, sWbs, sNumeroActividad, DT, DEmn, DEdll ) ' +
            ' VALUES (:contrato, :convenio, :fecha, :Wbs, :Actividad, :dt, :demn, :dedll)');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
          connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
          connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('actividad').value := sNumeroActividad;
          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial;
          connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('DT').value := MemoryAnexo.FieldValues['Cantidad'];
          connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('DEmn').value := MemoryAnexo.FieldValues['Monto'];
          connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('DEdll').value := MemoryAnexo.FieldValues['Montodll'];
          connection.zCommand.ExecSQL;
        end
        else
        begin
          try
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('UPDATE anexosmensuales SET dt = :dt, demn = :demn, deDLL = :deDLL Where sContrato = :Contrato And ' +
              'sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
            connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
            connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
            connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
            connection.zCommand.Params.ParamByName('actividad').value := sNumeroActividad;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial;
            connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('DT').value := MemoryAnexo.FieldValues['Cantidad'];
            connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('DEmn').value := MemoryAnexo.FieldValues['Monto'];
            connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('DEdll').value := MemoryAnexo.FieldValues['MontoDLL'];
            connection.zCommand.ExecSQL;
          except
            on e: exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas', 'Al actualizar registro', 0);
            end;
          end;
        end
      end;

      if lValido then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('DELETE FROM distribuciondeanexo Where sContrato = :contrato And sIdConvenio = :Convenio And ' +
          'sWbs = :wbs And sNumeroActividad = :Actividad And Year(dIdFecha) = :Anno and Month(dIdFecha) = :Mes');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
        connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
        connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
        connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
        connection.zCommand.Params.ParamByName('Anno').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Anno').Value := MemoryAnexo.FieldValues['Anno'];
        connection.zCommand.Params.ParamByName('Mes').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Mes').Value := MemoryAnexo.FieldValues['iMes'];
        connection.zCommand.ExecSQL();

        if MemoryAnexo.FieldValues['Cantidad'] > 0 then
        begin
                // Adiciona los registros nuevos ....
          dFechaInicial := strToDate('01/' + Trim(IntToStr(MemoryAnexo.FieldValues['iMes'])) + '/' + Trim(IntToStr(MemoryAnexo.FieldValues['Anno'])));
          if (YearOf(dFechaInicial) = YearOf(ActividadesxAnexo.FieldValues['dFechaInicio'])) and (MonthOf(dFechaInicial) = MonthOf(ActividadesxAnexo.FieldValues['dFechaInicio'])) then
            dFechaInicial := ActividadesxAnexo.FieldValues['dFechaInicio']
          else
            if (dFechaInicial < ActividadesxAnexo.FieldValues['dFechaInicio']) then
              dFechaInicial := ActividadesxAnexo.FieldValues['dFechaInicio'];

          dFechaFinal := strToDate(sfnFechaFinal(MemoryAnexo.FieldValues['iMes'], MemoryAnexo.FieldValues['Anno']));

          if dFechaFinal > ActividadesxAnexo.FieldValues['dFechaFinal'] then
            dFechaFinal := ActividadesxAnexo.FieldValues['dFechaFinal'];

          dHorasTotales := 0;
          dHorasTotales := ifnJornadaTotal(global_contrato, dFechaInicial, dFechaFinal, frmAjustaAnexo);
          if not lExisteMedida(ActividadesxAnexo.FieldValues['sMedida']) then
          begin
                     // Este proceso es facil, la distribucion x dia = Cantidad / Duracion
                     // Hago el Ciclo ...

            dDistribuido := 0;
            while dFechaInicial <= dFechaFinal do
            begin
              dHorasDiarias := ifnJornadaDia(global_contrato, dFechaInicial, frmAjustaAnexo);
              if dHorasDiarias > 0 then
              begin
                dFactorDiario := (dHorasDiarias / dHorasTotales) * MemoryAnexo.FieldValues['Cantidad'];
                Str(dFactorDiario: 8: 8, txtAux);
                txtAux := Copy(txtAux, 1, Pos('.', txtAux) + 5);
                dFactorDiario := rfnDecimal(txtAux);
                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO distribuciondeanexo ( sContrato , sIdConvenio, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                    ' VALUES (:contrato, :convenio, :fecha, :Wbs, :Actividad, :cantidad)');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
                  connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial;
                  connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('cantidad').value := dFactorDiario;
                  connection.zCommand.ExecSQL;
                  dDistribuido := dDistribuido + dFactorDiario;
                except
                  on e: exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas', 'Al actualizar registro', 0);
                  end;
                end;
              end;
              dFechaInicial := dFechaInicial + 1;
            end;

            dAjuste := 0;
            if dDistribuido > MemoryAnexo.FieldValues['Cantidad'] then
              dAjuste := (dDistribuido - MemoryAnexo.FieldValues['Cantidad']) * -1
            else
              if dDistribuido < MemoryAnexo.FieldValues['Cantidad'] then
                dAjuste := MemoryAnexo.FieldValues['Cantidad'] - dDistribuido;

            if dAjuste <> 0 then
            begin
              dFechaInicial := dFechaFinal;
              Connection.qryBusca.Active := False;
              Connection.qryBusca.SQL.Clear;
              Connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeanexo Where sContrato = :contrato And sIdConvenio = :Convenio And ' +
                'sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :fecha  ');
              Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
              Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
              Connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
              Connection.qryBusca.Params.ParamByName('fecha').Value := dFechaInicial;
              Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
              Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Actividad').Value := sNumeroActividad;
              Connection.qryBusca.Open;
              if Connection.qryBusca.RecordCount > 0 then
              begin
                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE distribuciondeanexo SET dCantidad = :Cantidad ' +
                    'where sContrato = :contrato And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :fecha');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                  connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  connection.zCommand.Params.ParamByName('convenio').Value := global_convenio;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'];
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
                  connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] + dAjuste;
                  connection.zCommand.ExecSQL;
                except
                  MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + sNumeroActividad, mtInformation, [mbOk], 0)
                end
              end
              else
              begin
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeanexo Where sContrato = :contrato And sIdConvenio = :Convenio And ' +
                  'sWbs = :Wbs And sNumeroActividad = :Actividad Order By dIdFecha Desc');
                Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
                Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
                Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
                Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad;
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount > 0 then
                begin
                  try
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE distribuciondeanexo SET dCantidad = :Cantidad ' +
                      'where sContrato = :contrato And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :fecha');
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    connection.zCommand.Params.ParamByName('convenio').Value := global_convenio;
                    connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'];
                    connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
                    connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
                    connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                    connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] + dAjuste;
                    connection.zCommand.ExecSQL;
                  except
                    MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + ActividadesxAnexo.FieldValues['sNumeroActividad'], mtInformation, [mbOk], 0)
                  end
                end
              end
            end
          end
          else
          begin
                     // Ahora va el proceso dificil, deben ser cantidades enteras ....
                     // Proceso de Calculo de Horas Totales ......  : )
                     // 20 de Septiembre 2004
            dDistribuido := 0;
            dCantidadEntera := 0;
            while dFechaInicial <= dFechaFinal do
            begin
              dHorasDiarias := ifnJornadaDia(global_contrato, dFechaInicial, frmAjustaAnexo);
              if dHorasDiarias > 0 then
              begin
                dFactorDiario := (dHorasDiarias / dHorasTotales) * MemoryAnexo.FieldValues['Cantidad'];
                Str(dFactorDiario: 8: 8, txtAux);
                txtAux := Copy(txtAux, 1, Pos('.', txtAux) + 5);

                dFactorDiario := rfnDecimal(txtAux);
                dCantidadEntera := dCantidadEntera + dFactorDiario;

                if dFechaInicial = dFechaFinal then
                begin
                  try
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('INSERT INTO distribuciondeanexo ( sContrato , sIdConvenio, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                      ' VALUES (:contrato, :convenio, :fecha, :Wbs, :Actividad, :cantidad)');
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                    connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial;
                    connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
                    connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad;
                    connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                    connection.zCommand.Params.ParamByName('cantidad').value := dCantidadEntera;
                    connection.zCommand.ExecSQL;
                  except
                    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                  end;
                  dDistribuido := dDistribuido + dCantidadEntera;
                end
                else
                  if Trunc(dCantidadEntera) > 0 then
                  begin
                    try
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('INSERT INTO distribuciondeanexo ( sContrato , sIdConvenio, dIdFecha, sWbs, sNumeroActividad, dCantidad ) ' +
                        ' VALUES (:contrato, :convenio, :fecha, :Wbs, :Actividad, :cantidad)');
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato;
                      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Convenio').value := Global_Convenio;
                      connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Wbs').value := sWbs;
                      connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                      connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad;
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                      connection.zCommand.Params.ParamByName('Fecha').value := dFechaInicial;
                      connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                      connection.zCommand.Params.ParamByName('Cantidad').value := Trunc(dCantidadEntera);
                      connection.zCommand.ExecSQL;
                    except
                      MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                    end;
                    dDistribuido := dDistribuido + Trunc(dCantidadEntera);
                    dCantidadEntera := dCantidadEntera - Trunc(dCantidadEntera);
                  end
              end;
              dFechaInicial := dFechaInicial + +1;
            end;

            dAjuste := 0;
            if dDistribuido > MemoryAnexo.FieldValues['Cantidad'] then
              dAjuste := (dDistribuido - MemoryAnexo.FieldValues['Cantidad']) * -1
            else
              if dDistribuido < MemoryAnexo.FieldValues['Cantidad'] then
                dAjuste := MemoryAnexo.FieldValues['Cantidad'] - dDistribuido;

            if dAjuste <> 0 then
            begin
              dFechaInicial := dFechaFinal;
              Connection.qryBusca.Active := False;
              Connection.qryBusca.SQL.Clear;
              Connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeanexo Where sContrato = :contrato And sIdConvenio = :Convenio And ' +
                'dIdFecha = :fecha And sWbs = :Wbs And sNumeroActividad = :Actividad');
              Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
              Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
              Connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
              Connection.qryBusca.Params.ParamByName('fecha').Value := dFechaInicial;
              Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
              Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Actividad').Value := sNumeroActividad;
              Connection.qryBusca.Open;
              if Connection.qryBusca.RecordCount > 0 then
              begin
                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE distribuciondeanexo SET dCantidad = :Cantidad ' +
                    'where sContrato = :contrato And dIdFecha = :fecha And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                  connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  connection.zCommand.Params.ParamByName('convenio').Value := global_convenio;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'];
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
                  connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] + dAjuste;
                  connection.zCommand.ExecSQL;
                except
                  MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + sNumeroActividad, mtInformation, [mbOk], 0)
                end
              end
              else
              begin
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select dIdFecha, sNumeroActividad, dCantidad from distribuciondeanexo ' +
                  'Where sContrato = :contrato And sIdConvenio = :Convenio And sWbs = :Wbs And ' +
                  'sNumeroActividad = :actividad Order By dIdFecha Desc');
                Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
                Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
                Connection.qryBusca.Params.ParamByName('wbs').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('wbs').Value := sWbs;
                Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad;
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount > 0 then
                begin
                  try
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE distribuciondeanexo SET dCantidad = :Cantidad ' +
                      'where sContrato = :contrato And dIdFecha = :fecha And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad');
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    connection.zCommand.Params.ParamByName('convenio').Value := global_convenio;
                    connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues['dIdFecha'];
                    connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                    connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
                    connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                    connection.zCommand.Params.ParamByName('actividad').Value := sNumeroActividad;
                    connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                    connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] + dAjuste;
                    connection.zCommand.ExecSQL;
                  except
                    MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + ActividadesxAnexo.FieldValues['sNumeroActividad'], mtInformation, [mbOk], 0)
                  end
                end
              end
            end
          end
        end
        else
        begin
          if (MemoryAnexo.FieldValues['Monto'] <= 0) and (MemoryAnexo.FieldValues['MontoDLL'] <= 0) then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('DELETE FROM anexosmensuales Where sContrato = :contrato And sIdConvenio = :Convenio And ' +
              'sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
            connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
            connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := dFechaFinal;
            connection.zCommand.ExecSQL();
          end;

        end
      end;

      application.ProcessMessages;
      MemoryAnexo.Next;
    end;

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Sum(dt) as Cantidad, Sum(DEmn) as Monto, Sum(DEdll) as MontoDLL ' +
      'From anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad ' +
      'Group By sContrato');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
    Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs;
    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Actividad').Value := sNumeroActividad;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      tdTotal.Value := Connection.qryBusca.FieldValues['Cantidad'];
      tdImporte.Value := Connection.qryBusca.FieldValues['Monto'];
      tdImporteDLL.Value := Connection.qryBusca.FieldValues['MontoDLL'];
    end
    else
    begin
      tdtotal.Value := 0;
      tdImporte.Value := 0;
      tdImporteDLL.Value := 0;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_AjustaAnexo', 'En el proceso Distribuye', 0);
    end;
  end;
end;

procedure TfrmAjustaAnexo.PanelExit(Sender: TObject);
begin
    //Panel.Visible := False ;
end;

procedure TfrmAjustaAnexo.PDF1Click(Sender: TObject);
begin
  try
    AnexoDt.Active := False;
    AnexoDT.Params.ParamByName('Contrato').DataType := ftString;
    AnexoDT.Params.ParamByName('Contrato').Value := global_contrato;
    AnexoDT.Params.ParamByName('Convenio').DataType := ftString;
    AnexoDT.Params.ParamByName('Convenio').Value := global_convenio;
    AnexoDT.Open;

        {Aqui seleccionamos que opcion es la correcta para la impresion en PDF...}
    if sOpcion = 'DT' then
      frxAnexo.LoadFromFile(global_files +global_Mireporte+ '_Anexo DT.fr3');

    if sOpcion = 'DE' then
      frxAnexo.LoadFromFile(global_files +global_Mireporte+ '_Anexo DE.fr3');

    if sOpcion = 'DEDLL' then
      frxAnexo.LoadFromFile(global_files +global_MiReporte+ '_Anexo DE Dll.fr3');

    frxAnexo.PreviewOptions.MDIChild := True;
    frxAnexo.PreviewOptions.Modal := False;
    frxAnexo.PreviewOptions.Maximized := lCheckMaximized();
    frxAnexo.PreviewOptions.ShowCaptions := False;
    frxAnexo.Previewoptions.ZoomMode := zmPageWidth;
    frxAnexo.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

    if sOpcion = 'DT' then
      if not FileExists(global_files +global_Mireporte+ '_Anexo DT.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_Anexo DT.fr3 no existe, notifique al administrador del sistema');

    if sOpcion = 'DE' then
      if not FileExists(global_files +global_Mireporte+ '_Anexo DE.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_Anexo DE.fr3 no existe, notifique al administrador del sistema');

    if sOpcion = 'DEDLL' then
      if not FileExists(global_files +global_Mireporte+ '_Anexo DE dll.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_Anexo DE DLL.fr3 no existe, notifique al administrador del sistema');

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_AjustaAnexo', 'Al Generar PDF', 0);
    end;
  end;
end;

procedure TfrmAjustaAnexo.btnAdicionaClick(Sender: TObject);
begin
  if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
  begin
    Panel.Visible := True;
    Panel.SetFocus
  end
end;

procedure TfrmAjustaAnexo.PanelEnter(Sender: TObject);
begin
  UpAnno.Position := YearOf(ActividadesxAnexo.FieldValues['dFechaInicio']);
  tsMes.ItemIndex := MonthOf(ActividadesxAnexo.FieldValues['dFechaInicio']) - 1;
  tdCantidad.Value := 0;
  tdMonto.Value := 0;
  tiAnno.SetFocus
end;

function TfrmAjustaAnexo.lExisteMedida(sMedida: string): Boolean;
begin
  lExisteMedida := False;
  lExisteMedida := (strPos(pchar(connection.configuracion.FieldByName('txtMaterialAutomatico').AsString), pchar(sMedida + '|')) <> nil)
end;

procedure TfrmAjustaAnexo.rxMensuaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//    If MemoryAnexo.RecordCount = MemoryAnexo.RecNo Then
//        MemoryAnexo.Cancel
end;

procedure TfrmAjustaAnexo.rxMensualMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmAjustaAnexo.rxMensualMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmAjustaAnexo.rxMensualTitleClick(Column: TColumn);
begin
  UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmAjustaAnexo.btnSalirClick(Sender: TObject);
begin
  if MemoryAnexo.RecordCount > 0 then
    btnDistribuye.Click;

  Panel.Visible := False;
  rxMensual.SetFocus;
end;

procedure TfrmAjustaAnexo.btnAdicionarClick(Sender: TObject);
var
  NueevaFecha: tDate;
begin
  lInvalido := False;
  MemoryAnexo.Append;
  MemoryAnexo.FieldValues['Anno'] := UpAnno.Position;
  MemoryAnexo.FieldValues['Mes'] := tsMes.Text;
  MemoryAnexo.FieldValues['iMes'] := tsMes.ItemIndex + 1;
  MemoryAnexo.FieldValues['Cantidad'] := tdCantidad.Value;
  MemoryAnexo.FieldValues['Monto'] := tdMonto.Value;
  MemoryAnexo.FieldValues['MontoDLL'] := tdMontoDLL.Value;
  MemoryAnexo.Post;
  lInvalido := True;
  if MemoryAnexo.RecordCount > 0 then
  begin
    if MemoryAnexo.FieldValues['iMes'] = 12 then
    begin
      tsMes.ItemIndex := 0;
      upAnno.Position := upAnno.Position + 1;
    end
    else
      tsMes.ItemIndex := MemoryAnexo.FieldValues['iMes'];
    tdCantidad.Value := 0;
  end;
  tdCantidad.SetFocus
end;

procedure TfrmAjustaAnexo.tiAnnoEnter(Sender: TObject);
begin
  tiAnno.Color := global_color_entradaERP;
end;

procedure TfrmAjustaAnexo.tiAnnoExit(Sender: TObject);
begin
  tiAnno.Color := global_color_salidaERP;
end;

procedure TfrmAjustaAnexo.tiAnnoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsMes.SetFocus
end;

procedure TfrmAjustaAnexo.tsMesEnter(Sender: TObject);
begin
  tsMes.Color := global_color_entradaERP;
end;

procedure TfrmAjustaAnexo.tsMesExit(Sender: TObject);
begin
  tsMes.Color := global_color_salidaERP;
end;

procedure TfrmAjustaAnexo.tsMesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdCantidad.SetFocus
end;

procedure TfrmAjustaAnexo.tdCantidadChange(Sender: TObject);
begin
  TCurrenCiEditChangef(tdCantidad, 'Cantidad');
end;

procedure TfrmAjustaAnexo.tdCantidadEnter(Sender: TObject);
begin
  tdCantidad.Color := global_color_entradaERP;
end;

procedure TfrmAjustaAnexo.tdCantidadExit(Sender: TObject);
begin
  tdCantidad.Color := global_color_salidaERP;
  tdMonto.Value := tdCantidad.Value * ActividadesxAnexo.FieldValues['dVentaMN'];
  tdMontoDLL.Value := tdCantidad.Value * ActividadesxAnexo.FieldValues['dVentaDLL']
end;

procedure TfrmAjustaAnexo.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltrotCurrencyEdit(tdCantidad, key) then
    key := #0;
  if Key = #13 then
    tdMonto.SetFocus
end;

procedure TfrmAjustaAnexo.tdImporteDLLKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdimportepartida.SetFocus;
end;

procedure TfrmAjustaAnexo.tdImporteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdimportedll.SetFocus;
end;

procedure TfrmAjustaAnexo.tdImportePartidaDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdtotal.SetFocus;
end;

procedure TfrmAjustaAnexo.tdImportePartidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdimportepartidadll.SetFocus;
end;

procedure TfrmAjustaAnexo.tdMontoEnter(Sender: TObject);
begin
  tdMonto.Color := global_color_entradaERP;
end;

procedure TfrmAjustaAnexo.tdMontoExit(Sender: TObject);
begin
  tdMonto.Color := global_color_salidaERP;
end;

procedure TfrmAjustaAnexo.tdMontoKeyPress(Sender: TObject; var Key: Char);
var
  PrecioMn: Currency;
begin
  if not keyFiltrotCurrencyEdit(tdMonto, key) then
    key := #0;
  if Key = #13 then
  begin
    tdMontoDLL.SetFocus;
    PrecioMn := sTrToCurr(tdMonto.text);
    PrecioMn := (PrecioMn / Actividadesxanexo.FieldValues['dVentaMn']);
    tdCantidad.Text := CurrToStr(precioMn);
  end;
end;

procedure TfrmAjustaAnexo.tdTotalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdimporte.SetFocus;
end;

procedure TfrmAjustaAnexo.btnAnexoDEMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  sOpcion := 'DE';
end;

procedure TfrmAjustaAnexo.btnAnexoDTMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  sOpcion := 'DT';
end;

procedure TfrmAjustaAnexo.grid_actividadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #26 then
  begin
    if MessageDlg('Desea ejecutar el proceso de distribución automatica de partidas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      lProcesoDistribucion := True;
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('DELETE FROM distribuciondeanexo Where sContrato = :contrato And sIdConvenio = :Convenio');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
      connection.zCommand.ExecSQL();
      ActividadesxAnexo.First;
      while not ActividadesxAnexo.EOF do
      begin
        if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
          btnDistribuye.Click;
        ActividadesxAnexo.Next
      end;
      lProcesoDistribucion := False;
    end
  end
end;

procedure TfrmAjustaAnexo.grid_actividadeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmAjustaAnexo.grid_actividadeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmAjustaAnexo.grid_actividadeTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmAjustaAnexo.tdMontoDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltrotCurrencyEdit(tdMontoDLL, key) then
    key := #0;

  if Key = #13 then
    btnAdicionar.SetFocus
end;

procedure TfrmAjustaAnexo.tdMontoChange(Sender: TObject);
begin
  tCurrenciEditChangef(tdMonto, 'Importe MN');
end;

procedure TfrmAjustaAnexo.tdMontoDLLChange(Sender: TObject);
begin
  tCurrenciEditChangef(tdMontoDLL, 'Importe DLL');
end;

procedure TfrmAjustaAnexo.tdMontoDLLEnter(Sender: TObject);
begin
  tdMontoDLL.Color := global_color_entradaERP;
end;

procedure TfrmAjustaAnexo.tdMontoDLLExit(Sender: TObject);
begin
  tdMontoDLL.Color := global_color_salidaERP;
end;

procedure TfrmAjustaAnexo.grid_actividadeGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if ActividadesxAnexo.RecordCount > 0 then
    begin
      AFont.Color := esColor(ActividadesxAnexo.FieldValues['iColor']);
      if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
      begin
        Afont.Style := [fsBold];
        Afont.Size := Afont.Size + 1
      end
    end
end;

procedure TfrmAjustaAnexo.ActividadesxAnexoCalcFields(DataSet: TDataSet);
begin
  ActividadesxAnexosWbsSpace.Text := espaces(ActividadesxAnexo.FieldValues['iNivel']) + ActividadesxAnexo.FieldValues['sWbs'];
end;

procedure TfrmAjustaAnexo.procActualizaPonderado(sContrato, sConvenio, sWbs, sActividad: string; dPonderado: currency);
begin
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('update actividadesxanexo SET dPonderado = :ponderado ' +
    'Where sContrato = :contrato And sIdConvenio = :convenio And sWbs = :Wbs And sNumeroActividad = :actividad');
  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
  Connection.zCommand.Params.ParamByName('contrato').Value := sContrato;
  Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
  Connection.zCommand.Params.ParamByName('convenio').Value := sConvenio;
  Connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
  Connection.zCommand.Params.ParamByName('Wbs').Value := sWbs;
  Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
  Connection.zCommand.Params.ParamByName('actividad').Value := sActividad;
  Connection.zCommand.Params.ParamByName('ponderado').DataType := ftFloat;
  Connection.zCommand.Params.ParamByName('ponderado').Value := dPonderado;
  connection.zCommand.ExecSQL;
end;

procedure TfrmAjustaAnexo.SpeedItem1Click(Sender: TObject);
var
  QryPrincipal: TZReadOnlyQuery;
  QryTotales: TZReadOnlyQuery;
  QryDistDiaria: TZReadOnlyQuery;

  dPonderadoAjuste,
    dTotalDivisor,
    dPonderadoDia,
    dPonderadoGlobal,
    dValidaPonderado: Currency;
  iRecord: Integer;
  iDivisor: Byte;
  dFechaInicial: tDate;
  lValidaAvance: boolean;
begin
  try
    if MessageDlg('Desea Generar la Linea Base del Proyecto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
          // Inicializo Ponderados a 0 de Toda la Orden de Trabajo de las Actividades que se se calculen ...
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE actividadesxanexo SET dPonderado = 0.00 WHERE sContrato = :contrato And ' +
        'sIdConvenio = :Convenio And lCalculo = :Calculo');
      Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      Connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      Connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
      Connection.zCommand.Params.ParamByName('Calculo').DataType := ftString;
      Connection.zCommand.Params.ParamByName('Calculo').Value := 'Si';
      connection.zCommand.ExecSQL;

      QryTotales := tzReadOnlyQuery.Create(self);
      QryTotales.Connection := connection.zconnection;

      QryPrincipal := tzReadOnlyQuery.Create(self);
      QryPrincipal.Connection := connection.zconnection;

      QryTotales.Active := False;
      QryTotales.SQL.Clear;
      QryTotales.SQL.Add('Select SUM(dPonderado) as TotalPonderado from actividadesxanexo Where sContrato = :contrato ' +
        'And sIdConvenio = :Convenio And lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sContrato');
      QryTotales.Params.ParamByName('contrato').DataType := ftString;
      QryTotales.Params.ParamByName('contrato').Value := global_contrato;
      QryTotales.Params.ParamByName('convenio').DataType := ftString;
      QryTotales.Params.ParamByName('convenio').Value := global_convenio;
      QryTotales.Params.ParamByName('Calculo').DataType := ftString;
      QryTotales.Params.ParamByName('Calculo').Value := 'No';
      QryTotales.Open;

      dPonderadoAjuste := 100;

      if QryTotales.RecordCount > 0 then
        dPonderadoAjuste := 100 - QryTotales.FieldValues['TotalPonderado'];

      QryPrincipal.Active := False;
      QryPrincipal.SQL.Clear;

      QryTotales.Active := False;
      QryTotales.SQL.Clear;

      if dPonderadoAjuste > 0 then
      begin
        if connection.configuracion.FieldValues['lCalculoPonderado'] <> 'Mezcla' then
        begin
          if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Duracion' then
          begin
            QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, dDuracion as dValorPartida from actividadesxanexo Where sContrato = :contrato ' +
              'And sIdConvenio = :Convenio And dDuracion > 0 and dCantidadAnexo > 0 And ' +
              'lCalculo = :Calculo And sTipoActividad = "Actividad" Order By iItemOrden');
            QryTotales.SQL.Add('Select SUM(dDuracion) as TotalDivisor from actividadesxanexo Where sContrato = :contrato ' +
              'And sIdConvenio = :Convenio And dDuracion > 0 and dCantidadAnexo > 0 And ' +
              'lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sContrato');
          end
          else
            if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Financiero' then
            begin
              QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, (dCantidadAnexo * dVentaMN) as dValorPartida from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio ' +
                'and dVentaMN > 0 And lCalculo = :Calculo And sTipoActividad = "Actividad" Order By iItemOrden');
              QryTotales.SQL.Add('Select SUM(dVentaMN * dCantidadAnexo) as TotalDivisor from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio ' +
                'And lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sContrato');
            end;

          QryPrincipal.Params.ParamByName('contrato').DataType := ftString;
          QryPrincipal.Params.ParamByName('contrato').Value := global_contrato;
          QryPrincipal.Params.ParamByName('convenio').DataType := ftString;
          QryPrincipal.Params.ParamByName('convenio').Value := global_convenio;
          QryPrincipal.Params.ParamByName('Calculo').DataType := ftString;
          QryPrincipal.Params.ParamByName('Calculo').Value := 'Si';
          QryPrincipal.Open;

          dTotalDivisor := 0;
          QryTotales.Params.ParamByName('contrato').DataType := ftString;
          QryTotales.Params.ParamByName('contrato').Value := global_contrato;
          QryTotales.Params.ParamByName('convenio').DataType := ftString;
          QryTotales.Params.ParamByName('convenio').Value := global_convenio;
          QryTotales.Params.ParamByName('Calculo').DataType := ftString;
          QryTotales.Params.ParamByName('Calculo').Value := 'Si';
          QryTotales.Open;
          if QryTotales.RecordCount > 0 then
            dTotalDivisor := QryTotales.FieldValues['TotalDivisor'];

          Progress.visible := True;
          Progress.MinValue := 1;
          Progress.MaxValue := QryPrincipal.RecordCount;
          Progress.Progress := 0;

          QryPrincipal.First;
          for iRecord := Progress.MinValue to Progress.MaxValue do
          begin
            procActualizaPonderado(global_contrato, global_convenio, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
              ROUNDTO((QryPrincipal.FieldValues['dValorPartida'] * dPonderadoAjuste) / dTotalDivisor, -5));
            QryPrincipal.Next;
            Progress.Progress := iRecord;
          end;
        end
        else
        begin
                  // Es ponderado Mixto
                  // Financiero Nacional
          iDivisor := 0;
          QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, (dCantidadAnexo * dVentaMN) as dValorPartida from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio ' +
            'and dVentaMN > 0 And lCalculo = :Calculo And sTipoActividad = "Actividad" Order By iItemOrden');
          QryTotales.SQL.Add('Select SUM(dVentaMN * dCantidadAnexo) as TotalDivisor from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio ' +
            'And lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sContrato');
          QryPrincipal.Params.ParamByName('contrato').DataType := ftString;
          QryPrincipal.Params.ParamByName('contrato').Value := global_contrato;
          QryPrincipal.Params.ParamByName('convenio').DataType := ftString;
          QryPrincipal.Params.ParamByName('convenio').Value := global_convenio;
          QryPrincipal.Params.ParamByName('Calculo').DataType := ftString;
          QryPrincipal.Params.ParamByName('Calculo').Value := 'Si';
          QryPrincipal.Open;

          if QryPrincipal.RecordCount > 0 then
          begin
            iDivisor := iDivisor + 1;
            QryTotales.Params.ParamByName('contrato').DataType := ftString;
            QryTotales.Params.ParamByName('contrato').Value := global_contrato;
            QryTotales.Params.ParamByName('convenio').DataType := ftString;
            QryTotales.Params.ParamByName('convenio').Value := global_convenio;
            QryTotales.Params.ParamByName('Calculo').DataType := ftString;
            QryTotales.Params.ParamByName('Calculo').Value := 'Si';
            QryTotales.Open;
            if QryTotales.RecordCount > 0 then
              dTotalDivisor := QryTotales.FieldValues['TotalDivisor'];

            Progress.visible := True;
            Progress.MinValue := 1;
            Progress.MaxValue := QryPrincipal.RecordCount;
            Progress.Progress := 0;

            QryPrincipal.First;
            for iRecord := Progress.MinValue to Progress.MaxValue do
            begin
              procActualizaPonderado(global_contrato, global_convenio, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
                ROUNDTO((QryPrincipal.FieldValues['dValorPartida'] * dPonderadoAjuste) / dTotalDivisor, -5));
              QryPrincipal.Next;
              Progress.Progress := iRecord;
            end;
          end;

                  // Financiero DLL
          QryPrincipal.Active := False;
          QryPrincipal.SQL.Clear;
          QryTotales.Active := False;
          QryTotales.SQL.Clear;
          QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, (dCantidadAnexo * dVentaDLL) as dValorPartida from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio ' +
            'and dVentaDLL > 0 And lCalculo = :Calculo And sTipoActividad = "Actividad"  Order By iItemOrden');
          QryTotales.SQL.Add('Select SUM(dVentaDLL * dCantidadAnexo) as TotalDivisor from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio ' +
            'And lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sContrato');
          QryPrincipal.Params.ParamByName('contrato').DataType := ftString;
          QryPrincipal.Params.ParamByName('contrato').Value := global_contrato;
          QryPrincipal.Params.ParamByName('convenio').DataType := ftString;
          QryPrincipal.Params.ParamByName('convenio').Value := global_convenio;
          QryPrincipal.Params.ParamByName('Calculo').DataType := ftString;
          QryPrincipal.Params.ParamByName('Calculo').Value := 'Si';
          QryPrincipal.Open;

          if QryPrincipal.RecordCount > 0 then
          begin
            iDivisor := iDivisor + 1;
            QryTotales.Params.ParamByName('contrato').DataType := ftString;
            QryTotales.Params.ParamByName('contrato').Value := global_contrato;
            QryTotales.Params.ParamByName('convenio').DataType := ftString;
            QryTotales.Params.ParamByName('convenio').Value := global_convenio;
            QryTotales.Params.ParamByName('Calculo').DataType := ftString;
            QryTotales.Params.ParamByName('Calculo').Value := 'Si';
            QryTotales.Open;
            if QryTotales.RecordCount > 0 then
              dTotalDivisor := QryTotales.FieldValues['TotalDivisor'];

            Progress.visible := True;
            Progress.MinValue := 1;
            Progress.MaxValue := QryPrincipal.RecordCount;
            Progress.Progress := 0;

            QryPrincipal.First;
            for iRecord := Progress.MinValue to Progress.MaxValue do
            begin
              procActualizaPonderado(global_contrato, global_convenio, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
                (QryPrincipal.FieldValues['dPonderado'] + ROUNDTO((QryPrincipal.FieldValues['dValorPartida'] * dPonderadoAjuste) / dTotalDivisor, -5)) / 2);
              QryPrincipal.Next;
              Progress.Progress := iRecord;
            end;
          end;

                  // Duracion ...
          QryPrincipal.Active := False;
          QryPrincipal.SQL.Clear;
          QryPrincipal.SQL.Add('Select sWbs, sNumeroActividad, dPonderado, dDuracion as dValorPartida from actividadesxanexo Where sContrato = :contrato ' +
            'And sIdConvenio = :Convenio And dCantidadAnexo > 0 And lCalculo = :Calculo And sTipoActividad = "Actividad" Order By iItemOrden');
          QryTotales.Active := False;
          QryTotales.SQL.Clear;
          QryTotales.SQL.Add('Select SUM(dDuracion) as TotalDivisor from actividadesxanexo Where sContrato = :contrato ' +
            'And sIdConvenio = :Convenio And dCantidadAnexo > 0 And lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sContrato');
          QryPrincipal.Params.ParamByName('contrato').DataType := ftString;
          QryPrincipal.Params.ParamByName('contrato').Value := global_contrato;
          QryPrincipal.Params.ParamByName('convenio').DataType := ftString;
          QryPrincipal.Params.ParamByName('convenio').Value := global_convenio;
          QryPrincipal.Params.ParamByName('Calculo').DataType := ftString;
          QryPrincipal.Params.ParamByName('Calculo').Value := 'Si';
          QryPrincipal.Open;

          if QryPrincipal.RecordCount > 0 then
          begin
            iDivisor := iDivisor + 1;
            QryTotales.Params.ParamByName('contrato').DataType := ftString;
            QryTotales.Params.ParamByName('contrato').Value := global_contrato;
            QryTotales.Params.ParamByName('convenio').DataType := ftString;
            QryTotales.Params.ParamByName('convenio').Value := global_convenio;
            QryTotales.Params.ParamByName('Calculo').DataType := ftString;
            QryTotales.Params.ParamByName('Calculo').Value := 'Si';
            QryTotales.Open;
            Progress.visible := True;
            Progress.MinValue := 1;
            Progress.MaxValue := QryPrincipal.RecordCount;
            Progress.Progress := 0;
            QryPrincipal.First;
            for iRecord := Progress.MinValue to Progress.MaxValue do
            begin
              procActualizaPonderado(global_contrato, global_convenio, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
                (QryPrincipal.FieldValues['dPonderado'] + ROUNDTO((QryPrincipal.FieldValues['dValorPartida'] * dPonderadoAjuste) / dTotalDivisor, -5)) / 2);
              QryPrincipal.Next;
              Progress.Progress := iRecord;
            end;
          end
        end;

              // Ajusta todos los ponderados a 100
        QryTotales.Active := False;
        QryTotales.SQL.Clear;
        QryTotales.SQL.Add('Select SUM(dPonderado) as TotalPonderado from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" Group By sContrato, sIdConvenio');
        QryTotales.Params.ParamByName('contrato').DataType := ftString;
        QryTotales.Params.ParamByName('contrato').Value := global_contrato;
        QryTotales.Params.ParamByName('convenio').DataType := ftString;
        QryTotales.Params.ParamByName('convenio').Value := global_convenio;
        QryTotales.Open;
        dPonderadoAjuste := 100;
        if QryTotales.RecordCount > 0 then
          dPonderadoAjuste := 100 - QryTotales.FieldValues['TotalPonderado'];

        QryPrincipal.Active := False;
        QryPrincipal.Open;
        QryPrincipal.First;
        procActualizaPonderado(global_contrato, global_convenio, QryPrincipal.FieldValues['sWbs'], QryPrincipal.FieldValues['sNumeroActividad'],
          (QryPrincipal.FieldValues['dPonderado'] + dPonderadoAjuste));
      end;

      QryPrincipal.Destroy;
      QryTotales.Destroy;
      Connection.QryBusca2.Active := False;
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select Distinct sWBS From actividadesxanexo ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC');
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca2.Open;
      while not Connection.QryBusca2.Eof do
      begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
          'sum(dCantidadAnexo * dVentaMN) as dMontoMN, sum(dCantidadAnexo * dVentaDLL) as dMontoDLL From actividadesxanexo ' +
          'Where sContrato = :Contrato And sIdConvenio = :Convenio And sWBSAnterior = :Paquete Group By sWBSAnterior');
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
        Connection.QryBusca.Params.ParamByName('Paquete').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
        Connection.QryBusca.Open;
        if Connection.QryBusca.RecordCount > 0 then
          if (not Connection.QryBusca.FieldByName('dFechaInicio').IsNull) and (not Connection.QryBusca.FieldByName('dFechaFinal').IsNull) then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update actividadesxanexo SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio And ' +
              'sWBS = :Paquete And sTipoActividad = "Paquete"');
            connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
            connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
            connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
            connection.zcommand.params.ParamByName('Paquete').DataType := ftString;
            connection.zcommand.params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
            connection.zcommand.params.ParamByName('Inicio').DataType := ftDate;
            connection.zcommand.params.ParamByName('Inicio').Value := Connection.QryBusca.FieldValues['dFechaInicio'];
            connection.zcommand.params.ParamByName('Final').DataType := ftDate;
            connection.zcommand.params.ParamByName('Final').Value := Connection.QryBusca.FieldValues['dFechaFinal'];
            connection.zcommand.params.ParamByName('Ponderado').DataType := ftFloat;
            if roundTo(Connection.QryBusca.FieldValues['dPonderado'], -2) >= 100 then
              connection.zcommand.params.ParamByName('Ponderado').Value := 100
            else
              connection.zcommand.params.ParamByName('Ponderado').Value := Connection.QryBusca.FieldValues['dPonderado'];
            connection.zcommand.params.ParamByName('MontoMN').DataType := ftFloat;
            connection.zcommand.params.ParamByName('MontoMN').Value := Connection.QryBusca.FieldValues['dMontoMN'];
            connection.zcommand.params.ParamByName('MontoDLL').DataType := ftFloat;
            connection.zcommand.params.ParamByName('MontoDLL').Value := Connection.QryBusca.FieldValues['dMontoDLL'];
            Connection.zCommand.ExecSQL;
          end;
        Connection.QryBusca2.Next
      end;
      ActividadesxAnexo.Active := False;
      ActividadesxAnexo.Open;


          // Linea Base del Proyecto ...
      dPonderadoGlobal := 0;
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('delete from avancesglobales WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :orden ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := '';
      connection.zCommand.ExecSQL;

      Connection.qryBusca2.Active := False;
      Connection.qryBusca2.SQL.Clear;
      Connection.qryBusca2.SQL.Add('Select dFechaInicio, dFechaFinal from convenios ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio');
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.qryBusca2.Open;
      if connection.QryBusca2.FieldValues['dFechaFinal'] > connection.QryBusca2.FieldValues['dFechaInicio'] then
        iRecord := (Connection.qryBusca2.FieldValues['dFechaFinal'] - Connection.qryBusca2.FieldValues['dFechaInicio']) + 1
      else
        iRecord := 1;


      QryDistDiaria := tzReadOnlyQuery.Create(self);
      QryDistDiaria.Connection := connection.zconnection;

      Progress.visible := True;
      Progress.MinValue := 1;
      Progress.MaxValue := iRecord;
      Progress.Progress := 0;
      dValidaPonderado := 0;
      lValidaAvance := True;
      dFechaInicial := Connection.qryBusca2.FieldValues['dFechaInicio'];
      while dFechaInicial <= Connection.qryBusca2.FieldValues['dFechaFinal'] do
      begin
        QryDistDiaria.Active := False;
        QryDistDiaria.SQL.Clear;
        QryDistDiaria.SQL.Add('Select (SUM((d.dCantidad/a.dCantidadAnexo)* a.dPonderado) * 10000) as dAvance from distribuciondeanexo d ' +
          'inner join actividadesxanexo a on (d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and sTipoActividad = "Actividad" ) ' +
          'Where d.sContrato = :contrato And d.sIdConvenio = :Convenio And d.dIdFecha = :fecha  Group By d.dIdFecha');
        QryDistDiaria.Params.ParamByName('contrato').DataType := ftString;
        QryDistDiaria.Params.ParamByName('contrato').Value := global_contrato;
        QryDistDiaria.Params.ParamByName('convenio').DataType := ftString;
        QryDistDiaria.Params.ParamByName('convenio').Value := global_convenio;
        QryDistDiaria.Params.ParamByName('fecha').DataType := ftDate;
        QryDistDiaria.Params.ParamByName('fecha').Value := dFechaInicial;
        QryDistDiaria.Open;
        dPonderadoDia := 0;

        if QryDistDiaria.RecordCount > 0 then
          dPonderadoDia := trunc(QryDistDiaria.FieldValues['dAvance']) / 10000;

        if dFechaInicial = Connection.qryBusca2.FieldValues['dFechaFinal'] then
          dPonderadoDia := (100 - dPonderadoGlobal);

        dPonderadoGlobal := dPonderadoGlobal + dPonderadoDia;

              //Ajustes...
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Select SUM((d.dCantidad/a.dCantidadAnexo)* a.dPonderado) as dAvance from distribuciondeanexo d inner join actividadesxanexo a on ' +
          '(d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") Where ' +
          'd.sContrato = :contrato And d.sIdConvenio = :Convenio And d.dIdFecha >:fecha Group By a.sContrato ');
        connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
        connection.QryBusca.Params.ParamByName('convenio').DataType := ftString;
        connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio;
        connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate;
        connection.QryBusca.Params.ParamByName('fecha').Value := dFechaInicial;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          if (dPonderadoGlobal + connection.QryBusca.FieldByName('dAvance').AsFloat) > 100 then
            dPonderadoGlobal := dPonderadoGlobal - ((dPonderadoGlobal + connection.QryBusca.FieldByName('dAvance').AsFloat) - 100);

          if dFechaInicial = Connection.qryBusca2.FieldValues['dFechaInicio'] then
            dValidaPonderado := connection.QryBusca.FieldByName('dAvance').AsFloat
        end;

        if dPonderadoGlobal < 0 then
        begin
          dPonderadoGlobal := 0;
          dPonderadoDia := 0;
        end
        else
        begin
          if lValidaAvance then
          begin
            dPonderadoDia := dPonderadoGlobal;
            lValidaAvance := False;
          end;
        end;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('insert into avancesglobales values (:contrato, :convenio, :fecha, :orden, :ponderadodia, :ponderadoglobal, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := Global_Convenio;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').Value := dFechaInicial;
        connection.zCommand.Params.ParamByName('orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('orden').Value := '';
        connection.zCommand.Params.ParamByName('ponderadodia').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('ponderadodia').Value := dPonderadoDia;
        connection.zCommand.Params.ParamByName('ponderadoglobal').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('ponderadoglobal').Value := dPonderadoglobal;
        connection.zCommand.ExecSQL;
        dFechaInicial := dFechaInicial + 1;
        Progress.progress := Progress.progress + 1;
      end;
//
//          if dValidaPonderado > 0 then
//             messageDLg(' Se Genero la Linea Base! '+#13+
//                        '   - Exiten volumenes excedidos en el Anexo DT.'+#13+
//                        '   - Genere archivo de Excel o PDF para ver detalle. ', mtInformation, [mbok], 0)
//          else
      messageDLg(' Proceso Terminado con Exito!', mtInformation, [mbok], 0);

      QryDistDiaria.Destroy;
      Progress.Progress := 0;
      Progress.visible := False;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_AjustaAnexo', 'En el proceso Linea Base', 0);
    end;
  end;
end;

procedure TfrmAjustaAnexo.SpeedItem3Click(Sender: TObject);
begin

  if MessageDlg('Desea ejecutar el proceso de distribución automatica de partidas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    lProcesoDistribucion := True;
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('DELETE FROM distribuciondeanexo Where sContrato = :contrato And sIdConvenio = :Convenio');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
    connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
    connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
    connection.zCommand.ExecSQL();
    ActividadesxAnexo.First;
    while not ActividadesxAnexo.EOF do
    begin
      if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
        btnDistribuye.Click;
      ActividadesxAnexo.Next;
      application.ProcessMessages;
    end;
    lProcesoDistribucion := False;
  end
end;

procedure TfrmAjustaAnexo.bNotasClick(Sender: TObject);
begin
  ActividadesxAnexo.Active := False;
  ActividadesxAnexo.Open;
end;

procedure TfrmAjustaAnexo.btAnexoDEDLSMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  sOpcion := 'DEDLL';
end;

procedure TfrmAjustaAnexo.formatoEncabezado;
begin
  Excel.Selection.MergeCells := False;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

procedure TfrmAjustaAnexo.EliminaDistribucion(sParamPartida: string);
begin
  if sParamPartida = 'Partida' then
  begin
    connection.zCommand.Active;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('delete from anexosmensuales where sContrato =:Contrato and sIdConvenio =:Convenio and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad');
    connection.zCommand.ParamByName('Contrato').AsString := global_Contrato;
    connection.zCommand.ParamByName('Convenio').AsString := global_Convenio;
    connection.zCommand.ParamByName('Anexo').AsString := ActividadesxAnexo.FieldValues['sAnexo'];
    connection.zCommand.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
    connection.zCommand.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.zCommand.ExecSQL;
  end
  else
  begin
    connection.zCommand.Active;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('delete from anexosmensuales where sContrato =:Contrato and sIdConvenio =:Convenio');
    connection.zCommand.ParamByName('Contrato').AsString := global_Contrato;
    connection.zCommand.ParamByName('Convenio').AsString := global_Convenio;
    connection.zCommand.ExecSQL;
  end;
end;

end.

