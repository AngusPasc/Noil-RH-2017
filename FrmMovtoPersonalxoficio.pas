unit FrmMovtoPersonalxoficio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Global, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ZAbstractRODataset, frm_Connection, ZAbstractDataset,
  udbgrid, ZDataset, rxToolEdit, RXDBCtrl, Mask, frm_barra, Grids, DBGrids, Menus,
  UnitTBotonesPermisos, UnitExcepciones, ComCtrls, DBDateTimePicker, dblookup, DateUtils,
  ExcelXP, ComObj, Excel2000, OleServer, ExtCtrls, Buttons, frm_BusquedaGeneralizada, StrUtils,
  ADODB, frm_MensajesGenerales, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TFrmMovtosPersonalxoficio = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    qryOrdenesGral: TZReadOnlyQuery;
    ds_MovtosPersonal: TDataSource;
    movtosPersEq: TZQuery;
    movtosPersEqdFechaVigencia: TDateField;
    movtosPersEqsAnexo: TStringField;
    movtosPersEqiItemOrden: TIntegerField;
    movtosPersEqsNumeroActividad: TStringField;
    movtosPersEqsContrato: TStringField;
    movtosPersEqsNumeroOrden: TStringField;
    movtosrecursos: TZQuery;
    PopupPrincipal: TPopupMenu;
    AnexoC141: TMenuItem;
    BorrarVigencia1: TMenuItem;
    VigenciaAnterior1: TMenuItem;
    EliminarPartidasen01: TMenuItem;
    movtosPersEqsDescripcion: TStringField;
    ds_fechavigencia: TDataSource;
    fechaVigencia: TZReadOnlyQuery;
    N1: TMenuItem;
    GeneraDMO1: TMenuItem;
    OpenXLS: TOpenDialog;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    SaveDialog1: TSaveDialog;
    PanelProgress: TPanel;
    Label15: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    BarraEstado: TProgressBar;
    ImprimeComparativo: TMenuItem;
    movtosPersEqdCantidad: TFloatField;
    movtosPersEqAnterior: TFloatField;
    movtosPersEqiFolioOficio: TIntegerField;
    DBExcel: TADOConnection;
    TExcel: TADODataSet;
    DataSource1: TDataSource;
    EliminarSeleccionado: TMenuItem;
    N2: TMenuItem;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    txtTotal: TEdit;
    tsArchivo: TEdit;
    btnFiles: TBitBtn;
    btnResumido: TBitBtn;
    btnSalir: TBitBtn;
    pnl2: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    rbcPernocta: TRadioButton;
    tsIdFolio: TDBEdit;
    sDias: TDBEdit;
    ssOficioAutorizacion: TDBEdit;
    tsDescripcionCorta: TDBEdit;
    tmDescripcion: TDBMemo;
    dbordentrabajo: TDBEdit;
    rbC14: TRadioButton;
    rbc15: TRadioButton;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    tsFechas: TDBLookupComboBox;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    dbpersonal: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure rbC14Click(Sender: TObject);
    procedure rbc15Click(Sender: TObject);
    procedure movtosPersEqCalcFields(DataSet: TDataSet);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure movtosPersEqAfterInsert(DataSet: TDataSet);
    procedure movtosPersEqAfterPost(DataSet: TDataSet);
    procedure movtosPersEqAfterDelete(DataSet: TDataSet);
    procedure AnexoC141Click(Sender: TObject);
    procedure VigenciaAnterior1Click(Sender: TObject);
    procedure BorrarVigencia1Click(Sender: TObject);
    procedure sumaequipos();
    procedure sumapersonal();
    procedure sumapernocta();
    procedure EliminarPartidasen01Click(Sender: TObject);
    procedure movtosPersEqsNumeroActividadChange(Sender: TField);
    procedure movtosPersEqBeforePost(DataSet: TDataSet);
    procedure AntesEliminar(tabla, partida: string);
    procedure rbcPernoctaClick(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);
    procedure ssOficioAutorizacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdFolioKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionCortaKeyPress(Sender: TObject; var Key: Char);
    procedure dbordentrabajoKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure sDiasKeyPress(Sender: TObject; var Key: Char);
    procedure movtosPersEqPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure movtosPersEqDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure InsertaVigenciaDia(sParamAnexo, sParamId: string);
    procedure EliminaVigenciaDia(sParamAnexo, sParamId: string);
    procedure RecursosCeroVigencia(sParamAnexo: string);
    procedure AnteriorVigenciaDia(sParamAnexo, sParamId: string; dParamFecha, dParamFechaAnt: tDate; iParamFolio: integer);
    procedure GeneraDMO1Click(Sender: TObject);
    procedure formatoEncabezado;
    procedure ImprimeComparativoClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnResumidoClick(Sender: TObject);
    procedure CargarDMOPersonalExcel;
    function FormatearAFecha(Fecha: string): TDateTime;
    procedure btnFilesClick(Sender: TObject);
    procedure tsFechasClick(Sender: TObject);
    function validarEdicionBorrado(): Boolean;
    procedure movtosPersEqBeforeEdit(DataSet: TDataSet);
    procedure EliminarSeleccionadoClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView1KeyPress(Sender: TObject;
      var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
    iFolioOficio: Integer;
    dFechaVigencia: TDateTime;
  end;

var
  FrmMovtosPersonalxoficio: TFrmMovtosPersonalxoficio;
  Excel, Libro, Hoja: Variant;
  Fecha, Bandera: string;
  oper: integer;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
  

implementation

uses Frm_DetalleOficioPersonal;

{$R *.dfm}


procedure TFrmMovtosPersonalxoficio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  BotonPermiso.Free;
  BotonPermiso1.Free;
  action := cafree;
end;

procedure TFrmMovtosPersonalxoficio.FormShow(Sender: TObject);
begin
  try
    //UtGrid := TicdbGrid.create(dbpersonal);
    //BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MovPerofic', PopupPrincipal);
    BotonPermiso1 := TbotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MovPerofic', movtosPersEq);

    fechaVigencia.Active := False;
    fechaVigencia.ParamByName('Contrato').AsString := global_contrato;
    fechaVigencia.Open;

    movtosRecursos.Open;
    //BotonPermiso.permisosBotones(nil);

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal x Oficio', 'Al abrir ventana', 0);
    end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.frmBarra1btnDeleteClick(Sender: TObject);
begin
  try
    if (TcxGridDBTableView(dbpersonal.ActiveView).DataController.DataSource.DataSet.IsEmpty = false) or (TcxGridDBTableView(dbpersonal.ActiveView).DataController.DataSource.DataSet.RecordCount > 0) then
    begin
      if movtosPersEq.RecordCount > 0 then
        if MessageDlg('Desea eliminar el Registro Activo?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if rbC14.Checked then
            AntesEliminar('bitacoradepersonal', 'and sIdPersonal = "' + movtosPersEq.FieldValues['sNumeroActividad'] + '" ');
          if rbC15.Checked then
            AntesEliminar('bitacoradeequipos', 'and sIdEquipo = "' + movtosPersEq.FieldValues['sNumeroActividad'] + '" ');
              if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
            messageDLG('No se puede Eliminar la Partida ' + movtosPersEq.FieldValues['sNumeroActividad'] + ', se encuentra Reportada !', mtWarning, [mbOK], 0)
          else
            movtosPersEq.Delete;
        end;

    end;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal x Oficio', 'Al eliminar registro', 0);
    end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.frmBarra1btnExitClick(Sender: TObject);
begin
  try
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE movtorecursosxoficio m,  personal p set m.iItemOrden=p.iItemOrden ' +
      'Where m.sContrato=p.sContrato And m.sNumeroActividad=p.sIdPersonal ' +
      'And m.sContrato =:Contrato ');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato;
    connection.zCommand.ExecSQL;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE movtorecursosxoficio m,  equipos e set m.iItemOrden=e.iItemOrden ' +
      'Where m.sContrato=e.sContrato And m.sNumeroActividad=e.sIdEquipo ' +
      'And m.sContrato =:Contrato ');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato;
    connection.zCommand.ExecSQL;

    close
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal x Oficio', 'Al salir', 0);
    end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.GeneraDMO1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PLANTILAS DE IMPORTACION /////////////////////////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      fs: tStream;
      i, x, n, Ren, total: integer;
      MiFecha, MiFechaI, MiFechaF: tDate;
      Progreso, TotalProgreso: real;
      dVolumen, Alto: double;
      sAnexoRecurso: string;
      Q_Partidas: TZReadOnlyQuery;
    begin
    // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

    {Encabezados.}
      Hoja.Range['C1:H2'].Select;
      if rbC14.Checked then
      begin
        Excel.Selection.Value := 'ANEXO DMO';
        sAnexoRecurso := global_LabelPersonal;
      end;
      if rbC15.Checked then
      begin
        Excel.Selection.Value := 'ANEXO DME';
        sAnexoRecurso := global_LabelEquipo;
      end;
      Excel.Selection.MergeCells := True;
      Excel.Selection.WrapText := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 14;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['C3:H5'].Select;
      Excel.Selection.Value := connection.contrato.FieldValues['mDescripcion'];
      Excel.Selection.MergeCells := True;
      Excel.Selection.WrapText := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 9;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['C6:C6'].Select;
      Excel.Selection.Value := 'OFICIO DE AUTORIZACION';
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['D6:F6'].Select;
      Excel.Selection.Value := QryOrdenesGral.FieldValues['sOficioAutorizacion'];
      Excel.Selection.MergeCells := True;
      Excel.Selection.WrapText := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['G6:G6'].Select;
      Excel.Selection.Value := 'ORDEN:';
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['H6:H6'].Select;
      Excel.Selection.Value := connection.contrato.FieldValues['sContrato'];
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Arial';

    //Genera Plantilla para Anexo A...
      Ren := 8;

      Excel.Columns['A:A'].ColumnWidth := 6.86;
      Excel.Columns['B:B'].ColumnWidth := 9.43;
      Excel.Columns['C:C'].ColumnWidth := 43.57;
      Excel.Columns['D:D'].ColumnWidth := 9.30;
      Excel.Columns['E:E'].ColumnWidth := 10.14;
      Excel.Columns['F:F'].ColumnWidth := 12.45;

    // Colocar los encabezados de la plantilla...
      Hoja.Range['A8:A8'].Select;
      Excel.Selection.Value := '#';
      FormatoEncabezado;
      Hoja.Range['B8:B8'].Select;
      Excel.Selection.Value := 'Código';
      FormatoEncabezado;
      Hoja.Range['C8:C8'].Select;
      Excel.Selection.Value := 'Descripción';
      FormatoEncabezado;
      Hoja.Range['D8:D8'].Select;
      Excel.Selection.Value := 'Unidad';
      FormatoEncabezado;
      Hoja.Range['E8:E8'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;

      Hoja.Range['A8:E8'].Select;
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
    //Personal DMO
      if rbC14.Checked then
        if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
          connection.QryBusca.SQL.Add('select d.*, p.iItemOrden, p.sDescripcion, p.sMedida, m.dCantidad as dCantidadOficio from detallerecursosxoficio d ' +
            'inner join personal p on (p.sContrato = d.sContrato and p.sIdPersonal = d.sNumeroActividad) ' +
            'inner join movtorecursosxoficio m on (m.sContrato = p.sContrato and m.iFolioOficio = d.iFolioOficio and m.sAnexo = d.sAnexo and m.sNumeroActividad = d.sNumeroActividad) ' +
            'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo group by d.sAnexo, d.sNumeroActividad order by p.iItemOrden')
        else
          connection.QryBusca.SQL.Add('select d.*, p.iItemOrden, p.sDescripcion, p.sMedida, d.dCantidad as dCantidadOficio from movtorecursosxoficio d ' +
            ' inner join personal p on (p.sContrato = d.sContrato and p.sIdPersonal = d.sNumeroActividad) ' +
            ' where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo group by d.sAnexo, d.sNumeroActividad order by p.iItemOrden;');

    //Equipo DMO
      if rbC15.Checked then
        if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
          connection.QryBusca.SQL.Add('select d.*, p.iItemOrden, p.sDescripcion, p.sMedida, m.dCantidad as dCantidadOficio from detallerecursosxoficio d ' +
            'inner join equipos p on (p.sContrato = d.sContrato and p.sIdEquipo = d.sNumeroActividad) ' +
            'inner join movtorecursosxoficio m on (m.sContrato = p.sContrato and m.iFolioOficio = d.iFolioOficio and m.sAnexo = d.sAnexo and m.sNumeroActividad = d.sNumeroActividad) ' +
            'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo group by d.sAnexo, d.sNumeroActividad order by p.iItemOrden')
        else
          connection.QryBusca.SQL.Add('select d.*, p.iItemOrden, p.sDescripcion, p.sMedida, d.dCantidad as dCantidadOficio from movtorecursosxoficio d ' +
            ' inner join equipos p on (p.sContrato = d.sContrato and p.sIdEquipo = d.sNumeroActividad) ' +
            ' where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo ' +
            ' group by d.sAnexo, d.sNumeroActividad order by p.iItemOrden');

      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Oficio').DataType := ftInteger;
      connection.QryBusca.Params.ParamByName('Oficio').Value := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];
      connection.QryBusca.Params.ParamByName('Anexo').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Anexo').Value := sAnexoRecurso;
      connection.QryBusca.Open;

      i := 1;

      while not connection.QryBusca.Eof do
      begin
        MiFecha := dFechaVigencia; //fechaVigencia.FieldValues['dFechaVigencia'];
        MiFechaI := QryOrdenesGral.FieldValues['dFiProgramado'];
        MiFechaF := QryOrdenesGral.FieldValues['dFfProgramado'];

        if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
        begin
          for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
          begin
            Hoja.Cells[Ren, 5 + i].Select;
             {Formato de las fechas archivo Excel,, 24/07/2011..}
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := DateToStr(MiFecha);
            FormatoEncabezado;
            Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
            Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
            Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
            Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
             //Excel.Selection.Interior.ColorIndex := 49;
            MiFecha := IncDay(MiFecha);
          end;
          total := 5 + i;

        //Hoja.Cells[Ren, 5 + i].Select;
          Hoja.Cells[Ren, total].Select;
          Excel.Selection.Value := 'Total';
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clNavy;
          Excel.Selection.Font.Size := 9;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.Name := 'Arial';
        end;

        Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
        Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
        Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
        Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;


        inc(Ren);

        connection.QryBusca.First;
        while not connection.QryBusca.Eof do
        begin
              {Movimiento de la Barra..}
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

              {Escritura de Datos en el Archvio de Excel..}
          Hoja.Cells[Ren, 1].select;
          Excel.Selection.Value := Ren - 8;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 2].select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 3].Value := '';

          Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 12.75;

          Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];

          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidadOficio'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Range['A' + IntTostr(Ren) + ':E' + IntTostr(Ren)].Select;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.name := 'Arial';
          Excel.Selection.Font.size := 8;

              {Consultamos si la partida esta reprotada..}
          if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
          begin
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
              //Personal DMO
            if rbC14.Checked then
              Q_Partidas.SQL.Add('select d.*, p.iItemOrden from detallerecursosxoficio d ' +
                'inner join personal p on (p.sContrato = d.sContrato and p.sIdPersonal = d.sNumeroActividad) ' +
                'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo and sNumeroActividad =:Id order by p.iItemOrden');
              //Equipo DME
            if rbC15.Checked then
              Q_Partidas.SQL.Add('select d.*, p.iItemOrden from detallerecursosxoficio d ' +
                'inner join equipos p on (p.sContrato = d.sContrato and p.sIdEquipo = d.sNumeroActividad) ' +
                'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo and sNumeroActividad =:Id order by p.iItemOrden');
            Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
            Q_Partidas.Params.ParamByName('Contrato').Value := global_contrato;
            Q_Partidas.Params.ParamByName('Oficio').DataType := ftInteger;
            Q_Partidas.Params.ParamByName('Oficio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
            Q_Partidas.Params.ParamByName('Anexo').DataType := ftString;
            Q_Partidas.Params.ParamByName('Anexo').Value := sAnexoRecurso;
            Q_Partidas.Params.ParamByName('Id').DataType := ftString;
            Q_Partidas.Params.ParamByName('Id').Value := connection.QryBusca.FieldValues['sNumeroActividad'];
            Q_Partidas.Open;

            dVolumen := 0;
            i := 1;
            while not Q_Partidas.Eof do
            begin
              Hoja.Cells[Ren, 5 + i].Select;
              Excel.Selection.Value := Q_Partidas.FieldByName('dCantidad').AsFloat;
              Excel.Selection.HorizontalAlignment := xlRight;
              Excel.Selection.VerticalAlignment := xlCenter;
              Excel.Selection.Font.Color := clBlack;
              Excel.Selection.Font.Bold := False;
              Excel.Selection.Font.name := 'Arial';
              Excel.Selection.Font.size := 8;
                  //Excel.Selection.Interior.ColorIndex := 41;
              dVolumen := dVolumen + Q_Partidas.FieldByName('dCantidad').AsFloat;
              inc(i);
              Q_Partidas.Next;
            end;

          //Hoja.Cells[Ren, 5 + i].Select;
            Hoja.Cells[Ren, total].Select;
            Excel.Selection.Value := dVolumen;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clBlack;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Font.name := 'Arial';
            Excel.Selection.Font.size := 8;


              {Lineas}
            i := 1;
            Inc(Ren);
            Hoja.Cells[Ren, 5].Select;
            Excel.Selection.Value := ' ';
            Excel.Selection.Font.Color := clBlack;

            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 12.75;
            Q_Partidas.First;
            while not Q_Partidas.Eof do
            begin
              if Q_Partidas.FieldValues['dCantidad'] > 0 then
              begin
                Hoja.Cells[Ren, 5 + i].Select;
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment := xlCenter;
                Excel.Selection.Value := '■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■';
                Excel.Selection.Font.Bold := True;
                Excel.Selection.Font.name := 'Courier New';
                Excel.Selection.Font.size := 11;
                Excel.Selection.Font.Color := clRed;
              end
              else
              begin
                Hoja.Cells[Ren, 5 + i].Select;
                Excel.Selection.Value := ' ';
                Excel.Selection.Font.Color := clBlack;
              end;

              inc(i);
              Q_Partidas.Next;
            end;

          end;
          Hoja.Cells[Ren, 5 + i].Select;
          Excel.Selection.Value := ' ';
          Excel.Selection.Font.Color := clBlack;

          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;

      Hoja.Cells[2, 2].Select;
      Hoja.Range['A8:A8'].Select;
      Q_Partidas.Destroy;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      if rbC14.Checked then
        Hoja.Name := 'ANEXO DMO';

      if rbC15.Checked then
        Hoja.Name := 'ANEXO DME';

      DatosPlantilla;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      Excel.DisplayAlerts := True;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al generar la hoja VIGENCIAS PERSONAL/EQUIPO/PERNOCTAS:' + #10 + #10 + e.Message;
        Excel.DisplayAlerts := True;
      end;
    end;

    Result := Resultado;
  end;

begin
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  if not SaveDialog1.Execute then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    on e: exception do begin
      FreeAndNil(Excel);
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Vigencias de Personal, Equipos, Vigencias', 'Al importar datos', 0);
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
    messageDlg('El Anexo se Generó Correctamente!', mtConfirmation, [mbOk], 0);

  Excel := '';

  if CadError <> '' then
    showmessage(CadError)
 // else
    //tsarchivo.Text:=SaveDialog1.FileName;
end;

procedure TFrmMovtosPersonalxoficio.AnexoC141Click(Sender: TObject);
var
  Anexo: string;
begin
  try
    if rbC14.Checked then
    begin
      AntesEliminar('bitacoradepersonal', '');
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      begin
        messageDLG('No se puede reqalizar esta operacion la vigencia Existe Personal Reportado !', mtWarning, [mbOK], 0);
        exit;
      end;

      Anexo := global_labelPersonal;
      Bandera := 'Personal';
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add(' select iItemOrden as Item, sIdPersonal as Id, sDescripcion from personal ' +
        ' Where scontrato = :Contrato And sDescripcion not like "%TIEMPO EXTRA%"  and not exists(select sNumeroActividad from ' +
        '    movtorecursosxoficio where sContrato=:Contrato and sAnexo=:anexo and iFolioOficio=:folio and sNumeroActividad=personal.sIdPersonal) ' +
        ' Order By iItemOrden ');
      Connection.QryBusca.Params.ParamByName('anexo').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('anexo').Value := global_labelPersonal;
      Connection.QryBusca.Params.ParamByName('folio').DataType := ftInteger;
      Connection.QryBusca.Params.ParamByName('folio').Value := iFolioOficio;

      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
      Connection.QryBusca.Open;
      if Connection.QryBusca.RecordCount = 0 then
        MessageDlg('No Existe el Anexo o ya fue cargado por completo.' + global_labelPersonal, mtError, [mbOk], 0);
    end;

    if rbC15.Checked then
    begin
      AntesEliminar('bitacoradeequipos', '');
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      begin
        messageDLG('No se puede reqalizar esta operacion la vigencia Existe Equipo Reportado !', mtWarning, [mbOK], 0);
        exit;
      end;
      Anexo := global_labelEquipo;
      Bandera := 'Equipo';
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('select iItemOrden as Item, sIdEquipo as Id, sDescripcion from equipos ' +
        'Where scontrato = :Contrato and not exists(select sNumeroActividad from ' +
        '    movtorecursosxoficio where sContrato=:Contrato and sAnexo=:anexo and iFolioOficio=:folio and sNumeroActividad=equipos.sIdEquipo) ' +
        ' Order By iItemOrden ');
      Connection.QryBusca.Params.ParamByName('anexo').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('anexo').Value := global_labelEquipo;
      Connection.QryBusca.Params.ParamByName('folio').DataType := ftInteger;
      Connection.QryBusca.Params.ParamByName('folio').Value := iFolioOficio;
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
      Connection.QryBusca.Open;
      if Connection.QryBusca.RecordCount = 0 then
        MessageDlg('No Existe el Anexo  o ya fue cargado por completo.' + global_labelEquipo, mtError, [mbOk], 0);
    end;


    if rbcPernocta.Checked then
    begin
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      if connection.zCommand.RecordCount > 0 then
      begin
        messageDLG('No se puede reqalizar esta operacion la vigencia Existe Equipo Reportado !', mtWarning, [mbOK], 0);
        exit;
      end;
      Anexo := global_labelPernocta;
      Bandera := 'Pernocta';
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('select sIdCuenta as Item, sIdPernocta as Id, sDescripcion from cuentas  where not exists(select sNumeroActividad from ' +
        '    movtorecursosxoficio where sContrato=:Contrato and sAnexo=:anexo and iFolioOficio=:folio and sNumeroActividad=cuentas.sIdPernocta) ' +
        ' Order By sIdCuenta ');
      Connection.QryBusca.Params.ParamByName('anexo').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('anexo').Value := global_labelPernocta;
      Connection.QryBusca.Params.ParamByName('folio').DataType := ftInteger;
      Connection.QryBusca.Params.ParamByName('folio').Value := iFolioOficio;
      Connection.QryBusca.Open;
      if Connection.QryBusca.RecordCount = 0 then
        MessageDlg('No Existe el Anexo  o ya fue cargado por completo.' + global_labelPernocta, mtError, [mbOk], 0);
    end;

    movtosPersEq.Open;
    if Connection.QryBusca.RecordCount > 0 then
    begin
      while not Connection.QryBusca.Eof do
      begin
        Movtosrecursos.Append;
        Movtosrecursos.FieldValues['sContrato'] := Global_Contrato;
        Movtosrecursos.FieldValues['sNumeroOrden'] := dbOrdenTrabajo.Text;
        Movtosrecursos.FieldValues['dFechaVigencia'] := tsFechas.text;
        Movtosrecursos.FieldValues['iFolioOficio'] := QryOrdenesGral.FieldValues['iFolioOficio'];
        Movtosrecursos.FieldValues['sAnexo'] := Anexo;
        Movtosrecursos.FieldValues['sNumeroActividad'] := Connection.QryBusca.FieldValues['Id'];
        Movtosrecursos.FieldValues['iItemOrden'] := Connection.QryBusca.FieldValues['Item'];
        Movtosrecursos.FieldValues['dCantidad'] := 0;
        Movtosrecursos.Post;

        if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
          InsertaVigenciaDia(Anexo, Connection.QryBusca.FieldValues['Id']);

        Connection.QryBusca.Next
      end;
    end;

    if rbC14.Checked then
      rbC14Click(Sender);

    if rbC15.Checked then
      rbC15Click(Sender);

    if rbcPernocta.Checked then
      rbcPernoctaClick(Sender);
    MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal por Oficio', 'Al insertar anexo personal', 0);
    end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.BorrarVigencia1Click(Sender: TObject);
begin
  try
    if MessageDlg('Desea eliminar la Vigencia Activa de Personal ?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      AntesEliminar('bitacoradepersonal', '');
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
        messageDLG('No se puede Eliminar la vigencia Existe Personal Reportado !', mtWarning, [mbOK], 0)
      else
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
          'And iFolioOficio = :Folio and sAnexo="' + global_labelPersonal + '" ');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];
        connection.zCommand.ExecSQL();

        if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
          EliminaVigenciaDia(global_labelPersonal, '');

        movtospersEq.Refresh;
      end;
    end;

    if MessageDlg('Desea eliminar la Vigencia Activa de Equipos ?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      AntesEliminar('bitacoradeequipos', '');
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
        messageDLG('No se puede Eliminar la vigencia Existe Equipo Reportado !', mtWarning, [mbOK], 0)
      else
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
          'And iFolioOficio = :Folio and sAnexo="' + global_labelEquipo + '" ');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
        connection.zCommand.ExecSQL();

        if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
          EliminaVigenciaDia(global_labelEquipo, '');

        movtospersEq.Refresh;
      end;
    end;

    if MessageDlg('Desea eliminar la Vigencia Activa de Pernoctas ?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      AntesEliminar('bitacoradepernocta', '');
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
        messageDLG('No se puede Eliminar la vigencia Existen Pernoctas Reportadas !', mtWarning, [mbOK], 0)
      else
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
          'And iFolioOficio = :Folio and sAnexo="' + global_labelPernocta + '" ');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
        connection.zCommand.ExecSQL();

        if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
          EliminaVigenciaDia(global_labelPernocta, '');

        movtospersEq.Refresh;
      end;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal por Oficio', 'Al Borrar Vigencia', 0);
    end;
  end;
end;

function TFrmMovtosPersonalxoficio.FormatearAFecha(Fecha: string): TDateTime;
begin

  Fecha := AnsireplaceText(Fecha, 'Ene', '01');
  Fecha := AnsireplaceText(Fecha, 'Feb', '02');
  Fecha := AnsireplaceText(Fecha, 'Mar', '03');
  Fecha := AnsireplaceText(Fecha, 'Abr', '04');
  Fecha := AnsireplaceText(Fecha, 'May', '05');
  Fecha := AnsireplaceText(Fecha, 'Jun', '06');
  Fecha := AnsireplaceText(Fecha, 'Jul', '07');
  Fecha := AnsireplaceText(Fecha, 'Ago', '08');
  Fecha := AnsireplaceText(Fecha, 'Sep', '09');
  Fecha := AnsireplaceText(Fecha, 'Oct', '10');
  Fecha := AnsireplaceText(Fecha, 'Nov', '11');
  Fecha := AnsireplaceText(Fecha, 'Dic', '12');

  Fecha := AnsireplaceText(Fecha, '-', '/');

  FormatearAFecha := StrToDate(Fecha);

end;

procedure TFrmMovtosPersonalxoficio.CargarDMOPersonalExcel;
var
  NombreHoja: string;
  sAnexo: string;
  I: Integer;
  qry, qry2: TZQuery;
  qryBuscar: TZReadOnlyQuery;
  Mensajes: string;
begin
  try
    try
      begin
        if (tsArchivo.Text <> '') and (fileexists(tsArchivo.Text)) then
        begin

          qryBuscar := TZReadOnlyQuery.Create(nil);
          qryBuscar.Connection := Connection.zConnection;
          qryBuscar.SQL.Clear;


          if rbC14.Checked then
          begin
            sAnexo := global_labelPersonal;
            qryBuscar.SQL.Add('select sIdPersonal from personal where sIdPersonal=:clave and sContrato=:contrato');
          end;

          if rbC15.Checked then
          begin
            sAnexo := global_labelEquipo;
            qryBuscar.SQL.Add('select sIdEquipo from equipo where sIdEquipo=:clave and sContrato=:contrato');
          end;

          DBExcel.Close;
          TExcel.Active := false;
          TExcel.Close;

          DBExcel.ConnectionString :=
            wideString('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='
            + tsArchivo.Text
            + ';Extended Properties=Excel 8.0;Persist Security Info=False');
          DBExcel.Connected := true;
          if rbC14.Checked then
            NombreHoja := InputBox('Hoja de Excel', 'Introduzca el nombre de la hoja de excel donde se encuentra el ANEXO DMO', 'ANEXO DMO');

          if rbC15.Checked then
            NombreHoja := InputBox('Hoja de Excel', 'Introduzca el nombre de la hoja de excel donde se encuentra el ANEXO DME', 'ANEXO DME');

          TExcel.CommandText := '''' + NombreHoja + '$''';
          TExcel.Active := true;
          TExcel.Open;

          qry := TZQuery.Create(nil);
          qry.Connection := Connection.zConnection;
          qry2 := TZQuery.Create(nil);
          qry2.Connection := Connection.zConnection;

          TExcel.First;

            {insertar la distribuicion de personal}
          qry.Active := False;
          qry.SQL.Clear;
          qry.SQL.Add('insert into detallerecursosxoficio (sContrato, iFolioOficio, sAnexo, sNumeroActividad, dFechaDia, dCantidad) ' +
            ' values (:Contrato, :Folio, :Anexo, :Actividad, :Fecha, :Cantidad) on duplicate key update dCantidad=:Cantidad');
          qry.ParamByName('Contrato').AsString := global_Contrato;
          qry.ParamByName('Anexo').AsString := sAnexo;
          qry.ParamByName('Folio').AsInteger := QryOrdenesGral.FieldValues['iFolioOficio'];
          Mensajes := '';
          while not TExcel.Eof do
          begin

            qryBuscar.Active := false;
            qryBuscar.Params.ParamByName('clave').AsString := TExcel.Fields[1].AsString;
            qryBuscar.Params.ParamByName('contrato').AsString := global_contrato;
            qryBuscar.Open;

            if qryBuscar.RecordCount > 0 then
            begin
              if TExcel.Fields[0].AsString <> '' then
                for I := 0 to TExcel.FieldCount - 1 do
                begin
            {Leer el numero de actividad anexo DMO}
                  if I = 1 then
                    qry.ParamByName('Actividad').AsString := TExcel.Fields[I].AsString;
            {Leer la distribuicion con las fechas}
                  if (I > 4) and (I < TExcel.FieldCount - 1) then
                  begin
                    qry.ParamByName('Fecha').AsDate := FormatearAFecha(TExcel.Fields[I].FullName); // StrToDate(TExcel.Fields[I].FullName);
                    qry.ParamByName('Cantidad').AsFloat := TExcel.Fields[I].AsFloat;
                    if TExcel.Fields[I].AsFloat > 0 then
                      qry.ExecSQL;
                  end;
              {si es el ultimo campo, insertar el movimiento }
                  if I = TExcel.FieldCount - 1 then
                  begin
                    qry2.Active := false;
                    qry2.SQL.Clear;
                    qry2.SQL.Add('insert into movtorecursosxoficio set ' +
                      ' sContrato = :contrato,  ' +
                      ' sNumeroOrden =:orden,' +
                      ' dFechaVigencia =:vigencia,' +
                      ' iFolioOficio =:folio,' +
                      ' sAnexo =:anexo,' +
                      ' iItemOrden =:item,' +
                      ' sNumeroActividad =:actividad,' +
                      ' dCantidad=:cantidad ' +
                      ' on duplicate key update dCantidad=:cantidad , iItemOrden =:item ');
                    qry2.ParamByName('contrato').AsString := global_Contrato;
                    qry2.ParamByName('orden').AsString := dbOrdenTrabajo.Text;
                    qry2.ParamByName('vigencia').AsDate := StrToDate(tsFechas.Text);
                    qry2.ParamByName('folio').AsString := QryOrdenesGral.FieldValues['iFolioOficio'];
                    qry2.ParamByName('anexo').AsString := sAnexo;
                    qry2.ParamByName('item').AsString := TExcel.Fields[0].AsString;
                    qry2.ParamByName('actividad').AsString := TExcel.Fields[1].AsString;
                    qry2.ParamByName('cantidad').AsFloat := TExcel.Fields[I].AsFloat;
                    qry2.ExecSQL;
                  end;
                end;
            end
            else
            begin
              Mensajes := Mensajes + TExcel.Fields[1].AsString + Chr(9) + TExcel.Fields[2].AsString + Chr(13) + Chr(10);
            end;
            TExcel.Next;
          end;

          if Mensajes <> '' then
          begin
            Application.CreateForm(TfrmMensajesGenerales, frmMensajesGenerales);
            if rbC14.Checked then
            begin
              frmMensajesGenerales.ListaMensajes.Lines.Append('Los siguientes elementos no fueron encontrados en los catalogos de Personal');
            end;
            if rbC15.Checked then
            begin
              frmMensajesGenerales.ListaMensajes.Lines.Append('Los siguientes elementos no fueron encontrados en los catalogos de Equipos');
            end;
            frmMensajesGenerales.ListaMensajes.Lines.Append(Mensajes);
            frmMensajesGenerales.ShowModal;
          end;

          MessageDlg('Proceso Terminado.', mtInformation, [mbOk], 0);
          movtosPersEq.refresh;
        end
        else
          MessageDlg('El archivo no existe.', mtError, [mbOk], 0)
      end;

    except
      raise;
    end;
  finally
    TExcel.Close;
  end;
end;

procedure TFrmMovtosPersonalxoficio.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
begin
   if not (movtosPersEq.State in [dsInsert, dsEdit]) then
  begin
    if (movtosPersEq.RecordCount > 0) and (QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA') then
    begin
      Application.CreateForm(TfrmDetalleOficioPersonal, frmDetalleOficioPersonal);
      frmDetalleOficioPersonal.dBPersonal.ReadOnly := false;
      if rbc14.Checked then
      begin
        AntesEliminar('bitacoradepersonal', '');
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
         // frmDetalleOficioPersonal.dBPersonal.ReadOnly := true;
      end;
      if rbc15.Checked then
      begin
        AntesEliminar('bitacoradeequipos', '');
    if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
        // frmDetalleOficioPersonal.dBPersonal.ReadOnly := true;
      end;
      if rbcpernocta.Checked then
      begin
        AntesEliminar('bitacoradepernocta', '');
    if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
        // frmDetalleOficioPersonal.dBPersonal.ReadOnly := true;
      end;
      frmDetalleOficioPersonal.show
    end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.cxgrdbtblvwGrid1DBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  begin
    Key := 0;

    if rbc14.Checked then
    begin
      AntesEliminar('bitacoradepersonal', '');
   if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
        messageDLG('No se puede Eliminar la vigencia Existe Personal Reportado !', mtWarning, [mbOK], 0);
    end;
    if rbc15.Checked then
    begin
      AntesEliminar('bitacoradeequipos', '');
    if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
        messageDLG('No se puede Eliminar la vigencia Existe Equipo Reportado !', mtWarning, [mbOK], 0);
    end;
    if rbcpernocta.Checked then
    begin
      AntesEliminar('bitacoradepernocta', '');
    if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
        messageDLG('No se puede Eliminar la vigencia Existe Pernocta Reportado !', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.cxgrdbtblvwGrid1DBTableView1KeyPress(
  Sender: TObject; var Key: Char);
  var
  sBotonPresionado: string;
begin
   if movtosPersEq.State in [dsInsert, dsEdit] then
  begin
    //if dbpersonal.SelectedField.FullName = 'sNumeroActividad' then
      if key = #13 then
      begin
        Application.CreateForm(TfrmBusquedaGeneralizada, frmBusquedaGeneralizada);
        frmBusquedaGeneralizada.Titulo.Caption := 'LISTA DE PERSONAL DISPONIBLE';
        frmBusquedaGeneralizada.Qry.Active := false;
        frmBusquedaGeneralizada.Qry.SQL.Clear;

        if rbc14.Checked then
          frmBusquedaGeneralizada.Qry.SQL.Add(' Select sIdPersonal as Clave ,sDescripcion as Descripcion from personal Where sContrato = :Contrato Order By sDescripcion');
        if rbc15.Checked then
          frmBusquedaGeneralizada.Qry.SQL.Add(' Select sIdEquipo as Clave ,sDescripcion as Descripcion from equipos Where sContrato = :Contrato Order By sDescripcion');
        if rbcpernocta.Checked then
          frmBusquedaGeneralizada.Qry.SQL.Add(' Select sIdPernocta as Clave ,sDescripcion as Descripcion from cuentas  Order By sDescripcion');

        if not rbcpernocta.Checked then
        begin
          frmBusquedaGeneralizada.Qry.Params.ParamByName('Contrato').DataType := ftString;
          frmBusquedaGeneralizada.Qry.Params.ParamByName('Contrato').Value := global_contrato;
        end;
        frmBusquedaGeneralizada.Qry.Open;
        frmBusquedaGeneralizada.ShowModal;

        sBotonPresionado := frmBusquedaGeneralizada.BotonPulsado;

        if sBotonPresionado = 'ACEPTAR' then
        begin
         // dbpersonal.SelectedField.AsString := frmBusquedaGeneralizada.Qry.FieldValues['Clave'];
          TcxGridDBTableView(dbpersonal.ActiveView).DataController.DataSource.DataSet.FieldValues['sNumeroActividad'] := frmBusquedaGeneralizada.Qry.FieldValues['Clave'];
        end;
        frmBusquedaGeneralizada.Destroy;
        key := #0;
      end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.btnFilesClick(Sender: TObject);
begin
  OpenXLS.Filter := 'Hoja de calculo Excel 2003|*.xls';
  OpenXLS.FilterIndex := 1;
  if OpenXLS.Execute then
  begin
    tsArchivo.Text := OpenXLS.FileName;
  end;
end;

procedure TFrmMovtosPersonalxoficio.btnResumidoClick(Sender: TObject);
begin
  if rbC14.Checked or rbC15.Checked then
    CargarDMOPersonalExcel;

end;

procedure TFrmMovtosPersonalxoficio.btnSalirClick(Sender: TObject);
begin
  close;
end;

procedure TFrmMovtosPersonalxoficio.dbordentrabajoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdfechainicio.SetFocus;
end;

procedure TFrmMovtosPersonalxoficio.EliminarPartidasen01Click(Sender: TObject);
begin
  try
    if rbc14.Checked = True then
    begin
      AntesEliminar('bitacoradepersonal', '');
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      begin
        messageDLG('No se puede reqalizar esta operacion la vigencia Existe Personal Reportado !', mtWarning, [mbOK], 0);
        exit;
      end;
           //Aqui Borro Todo los 0
      if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
        RecursosCeroVigencia(global_labelPersonal);
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
        'And iFolioOficio = :Folio And sAnexo = "' + global_labelPersonal + '" And dCantidad=0 ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];
      connection.zCommand.ExecSQL();

    end;

    if rbc15.Checked = True then
    begin
      AntesEliminar('bitacoradeequipos', '');
          if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      begin
        messageDLG('No se puede reqalizar esta operacion la vigencia Existe Equipo Reportado !', mtWarning, [mbOK], 0);
        exit;
      end;
           //Aqui Borro Todo los 0
      if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
        RecursosCeroVigencia(global_labelEquipo);
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
        'And iFolioOficio = :Folio And sAnexo = "' + global_labelEquipo + '" And dCantidad=0');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];
      connection.zCommand.ExecSQL();
    end;

    if rbcPernocta.Checked = True then
    begin
      AntesEliminar('bitacoradepernocta', '');
    if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      begin
        messageDLG('No se puede reqalizar esta operacion la vigencia Existe Pernocta Reportado !', mtWarning, [mbOK], 0);
        exit;
      end;
           //Aqui Borro Todas las Perncotas
      if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
        RecursosCeroVigencia(global_labelPernocta);
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
        'And iFolioOficio = :Folio And sAnexo = "' + global_labelPernocta + '" And dCantidad=0');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
      connection.zCommand.ExecSQL();
    end;
    MovtosPersEq.Refresh;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal por Oficio', 'Al Eliminar Partidas en 0', 0);
    end;
  end;
end;


procedure TFrmMovtosPersonalxoficio.EliminarSeleccionadoClick(Sender: TObject);
var
  sNumeroActividad: string;
begin
  try
    sNumeroActividad := movtosPersEq.FieldValues['sNumeroActividad'];

    if rbc14.Checked then
    begin
      if MessageDlg('Desea eliminar el Personal seleccionado?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        AntesEliminar('bitacoradepersonal', '');
      if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
          messageDLG('No se puede Eliminar la vigencia Existe Personal Reportado !', mtWarning, [mbOK], 0)
        else
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
            'And iFolioOficio = :Folio and sAnexo="' + global_labelPersonal + '" and sNumeroActividad =:Actividad');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
          connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];
          connection.zCommand.ExecSQL();

          if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
            EliminaVigenciaDia(global_labelPersonal, sNumeroActividad);

          movtospersEq.Refresh;
        end;
      end;
    end;
    if rbc15.Checked then
    begin
      if MessageDlg('Desea eliminar el Equipos seleccionado?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        AntesEliminar('bitacoradeequipos', '');
       if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
          messageDLG('No se puede Eliminar la vigencia Existe Equipo Reportado !', mtWarning, [mbOK], 0)
        else
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
            'And iFolioOficio = :Folio and sAnexo="' + global_labelEquipo + '"   and sNumeroActividad =:Actividad');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
          connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
          connection.zCommand.ExecSQL();

          if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
            EliminaVigenciaDia(global_labelEquipo, sNumeroActividad);

          movtospersEq.Refresh;
        end;
      end;
    end;


    if rbcpernocta.Checked then
    begin
      if MessageDlg('Desea eliminar la Pernocta seleccionada? ',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        AntesEliminar('bitacoradepernocta', '');
      if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
          messageDLG('No se puede Eliminar la vigencia Existen Pernoctas Reportadas !', mtWarning, [mbOK], 0)
        else
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('DELETE FROM movtorecursosxoficio Where sContrato = :contrato ' +
            'And iFolioOficio = :Folio and sAnexo="' + global_labelPernocta + '"   and sNumeroActividad =:Actividad ');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('Actividad').Value := sNumeroActividad;
          connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
          connection.zCommand.ExecSQL();

          if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
            EliminaVigenciaDia(global_labelPernocta, sNumeroActividad);

          movtospersEq.Refresh;
        end;
      end;
    end;
  except
    on e: exception do begin
            ShowMessage(E.Message);
//      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal por Oficio', 'Al Borrar Vigencia', 0);
    end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.movtosPersEqAfterDelete(DataSet: TDataSet);
begin
  if Rbc14.Checked = True then
    sumaPersonal();

  if Rbc15.Checked = True then
    sumaEquipos();

  if rbcpernocta.Checked = True then
    sumaPernocta();
end;



procedure TFrmMovtosPersonalxoficio.movtosPersEqAfterInsert(DataSet: TDataSet);
begin
  if rbC14.Checked = True then
  begin
    Bandera := 'Personal';
    movtosPersEq.FieldValues['sNumeroActividad'] := '';
    movtosPersEq.FieldValues['sAnexo'] := global_labelPersonal;
    movtosPersEq.FieldValues['sContrato'] := Global_Contrato;
    movtosPersEq.FieldValues['sNumeroOrden'] := dbOrdenTrabajo.Text;
    movtosPersEq.FieldValues['dFechaVigencia'] := tsFechas.Text;
    movtosPersEq.FieldValues['iFolioOficio'] := qryOrdenesGral.FieldValues['iFolioOficio'];
    movtosPersEq.FieldValues['iItemOrden'] := 0;
    movtosPersEq.FieldValues['dCantidad'] := 0;
  end;

  if rbC15.Checked = True then
  begin
    Bandera := 'Equipos';
    movtosPersEq.FieldValues['sNumeroActividad'] := '';
    movtosPersEq.FieldValues['sAnexo'] := global_labelEquipo;
    movtosPersEq.FieldValues['sContrato'] := Global_Contrato;
    movtosPersEq.FieldValues['sNumeroOrden'] := dbOrdenTrabajo.Text;
    movtosPersEq.FieldValues['dFechaVigencia'] := tsFechas.Text;
    movtosPersEq.FieldValues['iFolioOficio'] := qryOrdenesGral.FieldValues['iFolioOficio'];
    movtosPersEq.FieldValues['dCantidad'] := 0;
    movtosPersEq.FieldValues['iItemOrden'] := 0;
  end;

  if rbcPernocta.Checked = True then
  begin
    Bandera := 'Pernocta';
    movtosPersEq.FieldValues['sNumeroActividad'] := '';
    movtosPersEq.FieldValues['sAnexo'] := global_labelPernocta;
    movtosPersEq.FieldValues['sContrato'] := Global_Contrato;
    movtosPersEq.FieldValues['sNumeroOrden'] := dbOrdenTrabajo.Text;
    movtosPersEq.FieldValues['dFechaVigencia'] := tsFechas.Text;
    movtosPersEq.FieldValues['iFolioOficio'] := qryOrdenesGral.FieldValues['iFolioOficio'];
    movtosPersEq.FieldValues['dCantidad'] := 0;
    movtosPersEq.FieldValues['iItemOrden'] := 0;
  end;
end;



procedure TFrmMovtosPersonalxoficio.movtosPersEqAfterPost(DataSet: TDataSet);
var
  x: Integer;
  qry: TZQuery;
begin
  {Como no hay integridad referencial en estas tablas, permite insertar datos
  aunque estos no tengan referencias padres, aqui se verifica si existen datos
  huerfanos y los borramos}
  qry := TZQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  if Rbc14.Checked = True then
  begin
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('delete from detallerecursosxoficio ' +
      ' where sContrato=:Contrato and sAnexo=:anexo and not exists ( select sIdPersonal from personal where sContrato=:Contrato ' +
      ' and sIdPersonal=detallerecursosxoficio.sNumeroActividad )');
    qry.Params.ParamByName('Contrato').Value := global_contrato;
    qry.Params.ParamByName('anexo').Value := global_labelPersonal;
    qry.ExecSQL;

    sumapersonal();
  end;

  if Rbc15.Checked = True then
  begin
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('delete from detallerecursosxoficio ' +
      ' where sContrato=:Contrato and sAnexo=:anexo and not exists ( select sIdEquipo from equipos where sContrato=:Contrato ' +
      ' and sIdEquipo=detallerecursosxoficio.sNumeroActividad )');
    qry.Params.ParamByName('Contrato').Value := global_contrato;
    qry.Params.ParamByName('anexo').Value := global_labelEquipo;
    qry.ExecSQL;
    sumaequipos();
  end;

  if rbcpernocta.Checked = True then
  begin
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('delete from detallerecursosxoficio ' +
      ' where sContrato=:Contrato and sAnexo=:anexo and not exists ( select sIdPernocta from cuentas where  ' +
      ' sIdPernocta=detallerecursosxoficio.sNumeroActividad )');
    qry.Params.ParamByName('Contrato').Value := global_contrato;
    qry.Params.ParamByName('anexo').Value := global_labelPernocta;
    qry.ExecSQL;
    sumaPernocta();
  end;

  qry.Destroy;
end;

procedure TFrmMovtosPersonalxoficio.movtosPersEqBeforeEdit(DataSet: TDataSet);
begin
  if rbc14.Checked then
  begin
    AntesEliminar('bitacoradepersonal', '');
  if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      messageDLG('No se puede editar la vigencia Existe Personal Reportado !', mtWarning, [mbOK], 0);
    movtosPersEq.CancelUpdates;
  end;
  if rbc15.Checked then
  begin
    AntesEliminar('bitacoradeequipos', '');
  if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      messageDLG('No se puede editar la vigencia Existe Personal Reportado !', mtWarning, [mbOK], 0);
    movtosPersEq.CancelUpdates;
  end;
end;

procedure TFrmMovtosPersonalxoficio.movtosPersEqBeforePost(DataSet: TDataSet);
var
  qry: TZQuery;
begin

  {Como no hay integridad referencial en estas tablas, permite insertar datos
  aunque estos no tengan referencias padres, aqui se verifica si existen datos
  huerfanos y los borramos}
  qry := TZQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  {Si esta seleccionado personal}
  if rbc14.Checked then
  begin
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('select * from  personal where sContrato=:Contrato and sIdPersonal=:Actividad');
    qry.Params.ParamByName('Contrato').Value := global_contrato;
    qry.Params.ParamByName('Actividad').Value := movtosPersEq.FieldValues['sNumeroActividad'];
    qry.Open;
    if qry.RecordCount <= 0 then
    begin
      qry.Active := false;
      qry.SQL.Clear;
      qry.SQL.Add('delete from detallerecursosxoficio where sContrato=:Contrato and iFolioOficio=:Oficio ' +
        ' and sNumeroActividad=:Actividad and sAnexo=:anexo ');
      qry.Params.ParamByName('Contrato').Value := global_contrato;
      qry.Params.ParamByName('Actividad').Value := movtosPersEq.FieldValues['sNumeroActividad'];
      qry.Params.ParamByName('Oficio').Value := movtosPersEq.FieldValues['iFolioOficio'];
      qry.Params.ParamByName('anexo').Value := global_labelPersonal;
      qry.ExecSQL;
      movtosPersEq.CancelUpdates;
    end;

  end;

  {Si esta seleccionado equipos}
  if rbc15.Checked then
  begin
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('select * from  equipos where sContrato=:Contrato and sIdEquipo=:Actividad');
    qry.Params.ParamByName('Contrato').Value := global_contrato;
    qry.Params.ParamByName('Actividad').Value := movtosPersEq.FieldValues['sNumeroActividad'];
    qry.Open;
    if qry.RecordCount <= 0 then
    begin
      qry.Active := false;
      qry.SQL.Clear;
      qry.SQL.Add('delete from detallerecursosxoficio where sContrato=:Contrato and iFolioOficio=:Oficio ' +
        ' and sNumeroActividad=:Actividad  and sAnexo=:anexo');
      qry.Params.ParamByName('Contrato').Value := global_contrato;
      qry.Params.ParamByName('Actividad').Value := movtosPersEq.FieldValues['sNumeroActividad'];
      qry.Params.ParamByName('Oficio').Value := movtosPersEq.FieldValues['iFolioOficio'];
      qry.Params.ParamByName('anexo').Value := global_labelEquipo;
      qry.ExecSQL;
      movtosPersEq.CancelUpdates;
    end;

  end;

  {Si esta seleccionado pernoctan}
  if rbc15.Checked then
  begin
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('select * from  cuentas where  sIdPernocta=:Actividad');
    qry.Params.ParamByName('Actividad').Value := movtosPersEq.FieldValues['sNumeroActividad'];
    qry.Open;
    if qry.RecordCount <= 0 then
    begin
      qry.Active := false;
      qry.SQL.Clear;
      qry.SQL.Add('delete from detallerecursosxoficio where sContrato=:Contrato and iFolioOficio=:Oficio ' +
        ' and sNumeroActividad=:Actividad  and sAnexo=:anexo');
      qry.Params.ParamByName('Contrato').Value := global_contrato;
      qry.Params.ParamByName('Actividad').Value := movtosPersEq.FieldValues['sNumeroActividad'];
      qry.Params.ParamByName('Oficio').Value := movtosPersEq.FieldValues['iFolioOficio'];
      qry.Params.ParamByName('anexo').Value := global_labelPernocta;
      qry.ExecSQL;
      movtosPersEq.CancelUpdates;
    end;

  end;
  qry.Destroy;
  if MovtosPersEq.FieldValues['sNumeroActividad'] = '0' then
    MovtosPersEq.Cancel;
end;



procedure TFrmMovtosPersonalxoficio.movtosPersEqCalcFields(DataSet: TDataSet);
var
  iFolio: integer;
begin
  if Bandera <> '' then
  begin
    if Bandera = 'Personal' then
    begin
      Connection.qryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select sDescripcion From personal Where ' +
        'sContrato =:Contrato And sIdPersonal =:Actividad And sDescripcion not like "%TIEMPO EXTRA%" ');
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := Global_Contrato;
    end;
    if Bandera = 'Equipos' then
    begin
      Connection.qryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select sDescripcion From equipos Where ' +
        'sContrato =:Contrato  And sIdEquipo =:Actividad ');
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := Global_Contrato;
    end;

    if Bandera = 'Pernocta' then
    begin
      Connection.qryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select sDescripcion From cuentas Where ' +
        'sIdPernocta =:Actividad ');
    end;

    Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
    Connection.QryBusca2.Params.ParamByName('Actividad').Value := MovtosPersEq.FieldValues['sNumeroActividad'];
    Connection.QryBusca2.Open;
    if Connection.QryBusca2.RecordCount > 0 then
      movtosPersEqsDescripcion.Text := Connection.QryBusca2.FieldValues['sDescripcion'];

  end;


      //Este es por si ya Existe el Personal y el Equipo
  if Bandera = '' then
  begin
    if movtosPersEq.fieldValues['sAnexo'] = global_labelPersonal then
    begin
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select sDescripcion From personal Where ' +
        'sContrato =:Contrato  And sIdPersonal =:Actividad ');
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := Global_Contrato;
      Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Actividad').Value := MovtosPersEq.FieldValues['sNumeroActividad'];
      Connection.QryBusca2.Open;

      if Connection.QryBusca2.RecordCount = 0 then
        MessageDlg('No Existe el Anexo ' + global_labelPersonal, mtError, [mbOk], 0);

    end;

    if movtosPersEq.fieldValues['sAnexo'] = global_labelEquipo then
    begin
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select sDescripcion From equipos Where ' +
        'sContrato =:Contrato  And sIdEquipo =:Actividad ');
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := Global_Contrato;
      Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Actividad').Value := MovtosPersEq.FieldValues['sNumeroActividad'];
      Connection.QryBusca2.Open;
      if Connection.QryBusca2.RecordCount = 0 then
        MessageDlg('No Existe el Anexo ' + global_labelEquipo, mtError, [mbOk], 0);

    end;

    if movtosPersEq.fieldValues['sAnexo'] = global_labelPernocta then
    begin
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select sDescripcion From cuentas Where ' +
        'sIdPernocta =:Actividad ');
      Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Actividad').Value := MovtosPersEq.FieldValues['sNumeroActividad'];
      Connection.QryBusca2.Open;
      if Connection.QryBusca2.RecordCount = 0 then
        MessageDlg('No Existe el Anexo ' + global_labelPernocta, mtError, [mbOk], 0);

    end;
  end;

     //Calculo de cantidad anterior...
  if fechaVigencia.RecordCount > 1 then
  begin
    fechaVigencia.Next;
    iFolio := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];//
    fechaVigencia.Prior;

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    if Bandera = 'Personal' then
      Connection.qryBusca.SQL.Add('Select dCantidad from movtorecursosxoficio Where sContrato =:Contrato And iFolioOficio =:Folio And sNumeroActividad =:Actividad And sAnexo ="' + global_labelPersonal + '"');

    if Bandera = 'Equipos' then
      Connection.qryBusca.SQL.Add('Select dCantidad from movtorecursosxoficio Where sContrato =:Contrato And iFolioOficio =:Folio And sNumeroActividad =:Actividad And sAnexo ="' + global_labelEquipo + '"');

    if Bandera = 'Pernocta' then
      Connection.qryBusca.SQL.Add('Select dCantidad from movtorecursosxoficio Where sContrato =:Contrato And iFolioOficio =:Folio And sNumeroActividad =:Actividad And sAnexo ="' + global_labelPernocta + '"');

    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Actividad').Value := MovtosPersEq.FieldValues['sNumeroActividad'];
    Connection.qryBusca.Params.ParamByName('Folio').DataType := ftInteger;
    Connection.qryBusca.Params.ParamByName('Folio').Value := iFolio - 1;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      movtosPersEqAnterior.Text := Connection.QryBusca.FieldValues['dCantidad']
    else
      movtosPersEqAnterior.Text := '0';
  end
  else
  begin
    movtosPersEqAnterior.Text := '0';
  end;
end;

procedure TFrmMovtosPersonalxoficio.movtosPersEqDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal X Oficio', 'Al Eliminar registro de Personal', 0);
  abort;
end;

procedure TFrmMovtosPersonalxoficio.movtosPersEqPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal X Oficio', 'Al salvar registro de Personal', 0);
  abort;
end;

procedure TFrmMovtosPersonalxoficio.movtosPersEqsNumeroActividadChange(
  Sender: TField);
begin

  if Bandera = 'Personal' then
  begin
    Connection.Auxiliar.Active := False;
    Connection.Auxiliar.SQL.Clear;
    Connection.Auxiliar.SQL.Add('Select sNumeroActividad from movtorecursosxoficio Where sContrato=:Contrato And sNumeroActividad =:Actividad And sAnexo="' + global_labelPersonal + '" And dFechaVigencia =:Fecha');
    movtosPersEq.FieldValues['sAnexo'] := global_labelPersonal
  end;

  if Bandera = 'Equipos' then
  begin
    Connection.Auxiliar.SQL.Clear;
    Connection.Auxiliar.SQL.Add('Select sNumeroActividad from movtorecursosxoficio Where sContrato =:Contrato ' +
      'And sNumeroActividad =:Actividad And sAnexo="' + global_labelEquipo + '" And dFechaVigencia =:Fecha ');
    movtosPersEq.FieldValues['sAnexo'] := global_labelEquipo
  end;

  if Bandera = 'Pernocta' then
  begin
    Connection.Auxiliar.SQL.Clear;
    Connection.Auxiliar.SQL.Add('Select sNumeroActividad from movtorecursosxoficio Where sContrato =:Contrato ' +
      'And sNumeroActividad =:Actividad And sAnexo="' + global_labelPernocta + '" And dFechaVigencia =:Fecha ');
    movtosPersEq.FieldValues['sAnexo'] := global_labelPernocta
  end;

  if bandera <> '' then
  begin
    Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
    Connection.Auxiliar.Params.ParamByName('Contrato').Value := Global_Contrato;
    Connection.Auxiliar.Params.ParamByName('Actividad').DataType := ftString;
    Connection.Auxiliar.Params.ParamByName('Actividad').Value := movtosPersEq.FieldValues['sNumeroActividad'];
    Connection.Auxiliar.Params.ParamByName('Fecha').DataType := ftDate;
    Connection.Auxiliar.Params.ParamByName('Fecha').Value := tsFechas.text;
    Connection.Auxiliar.Open;
    if Connection.Auxiliar.RecordCount > 0 then
    begin
      MessageDlg('Esa Categoria Ya Existe ', mtError, [mbOk], 0);
      if movtosPersEq.FieldValues['sNumeroActividad'] <> 0 then
        MovtosPersEq.Cancel;
    end
    else
    begin
      if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
        if (movtosPersEq.FieldValues['sNumeroActividad'] <> NULL) and (movtosPersEq.FieldValues['sNumeroActividad'] <> '') and (movtosPersEq.FieldValues['sNumeroActividad'] <> '0') then
          InsertaVigenciaDia(movtosPersEq.FieldValues['sAnexo'], movtosPersEq.FieldValues['sNumeroActividad']);
    end;
  end;
end;


procedure TFrmMovtosPersonalxoficio.PopupPrincipalPopup(Sender: TObject);
begin
//      if MovtosPersEq.RecordCount = 0 then
//          MovtosPersEq.Append;

  GeneraDMO1.Enabled := True;
  ImprimeComparativo.Enabled := True;

  if rbC14.Checked then
  begin
    AnexoC141.Caption := 'Insertar Anexo Personal';
    GeneraDMO1.Caption := 'Imprime Oficio DMO [Excel]';
    ImprimeComparativo.Caption := 'Imprime Reportado vs Ofico DMO [Excel]';
    EliminarSeleccionado.Caption := 'Eliminar Personal Seleccionado';
  end;

  if rbC15.Checked then
  begin
    AnexoC141.Caption := 'Insertar Anexo Equipos';
    GeneraDMO1.Caption := 'Imprime Oficio DME [Excel]';
    ImprimeComparativo.Caption := 'Imprime Reportado vs Ofico DME [Excel]';
    EliminarSeleccionado.Caption := 'Eliminar Equipo Seleccionado';
  end;

  if rbcPernocta.Checked then
  begin
    AnexoC141.Caption := 'Insertar Anexo Pernocta';
    GeneraDMO1.Enabled := False;
    ImprimeComparativo.Enabled := False;
    EliminarSeleccionado.Caption := 'Eliminar Pernocta Seleccionada';
  end;

end;

//Al presionar solo Personal y lo sumo...

procedure TFrmMovtosPersonalxoficio.rbC14Click(Sender: TObject);
begin
  if tsFechas.Text = '' then
  begin
    showmessage('No Existen Vigencias Abiertas.');
    rbC14.Checked := False;
  end
  else begin

    //dbpersonal.ReadOnly := false;
    AntesEliminar('bitacoradepersonal', '');
    if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
    begin
     // dbpersonal.ReadOnly := true;
      messageDLG('No se puede realizar operaciones ya que Existe Personal Reportado !', mtWarning, [mbOK], 0);
    end;


    Bandera := 'Personal';
    MovtosPersEq.Active := False;
    MovtosPersEq.SQL.Clear;
    MovtosPersEq.SQL.Add('select * from movtorecursosxoficio ' +
      'where sContrato =:Contrato And iFolioOficio =:Folio ' +
      'And sAnexo="' + global_labelPersonal + '" Order by iItemOrden');
    MovtosPersEq.Params.ParamByName('Contrato').DataType := ftString;
    MovtosPersEq.Params.ParamByName('Contrato').Value := Global_Contrato;
    MovtosPersEq.Params.ParamByName('Folio').DataType := ftInteger;
    MovtosPersEq.Params.ParamByName('Folio').Value := iFolioOficio;
    MovtosPersEq.Open;
    sumaPersonal();
  end;
end;

//Al presionar solo equipo y lo sumo...

procedure TFrmMovtosPersonalxoficio.rbc15Click(Sender: TObject);
begin
  if tsFechas.Text = '' then
  begin
    showmessage('No Existen Vigencias Abiertas.');
    rbc15.Checked := False;
  end
  else begin

    //dbpersonal.ReadOnly := false;
    AntesEliminar('bitacoradeequipos', '');
   if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
    begin
     // dbpersonal.ReadOnly := true;
      messageDLG('No se puede realizar operaciones ya que Existe Equipo Reportado !', mtWarning, [mbOK], 0);
    end;

    Bandera := 'Equipos';
    MovtosPersEq.Active := False;
    MovtosPersEq.SQL.Clear;
    MovtosPersEq.SQL.Add('select * from movtorecursosxoficio ' +
      'where sContrato =:Contrato And iFolioOficio =:Folio ' +
      'And sAnexo="' + global_labelEquipo + '" order by iItemOrden');
    MovtosPersEq.Params.ParamByName('Contrato').DataType := ftString;
    MovtosPersEq.Params.ParamByName('Contrato').Value := Global_Contrato;
    MovtosPersEq.Params.ParamByName('Folio').DataType := ftInteger;
    MovtosPersEq.Params.ParamByName('Folio').Value := iFolioOficio;
    MovtosPersEq.Open;
    sumaequipos();
  end;
end;


procedure TFrmMovtosPersonalxoficio.rbcPernoctaClick(Sender: TObject);
begin
  if tsFechas.Text = '' then
  begin
    showmessage('No Existen Vigencias Abiertas.');
    rbcPernocta.Checked := False;
  end
  else begin

    //dbpersonal.ReadOnly := false;
    AntesEliminar('bitacoradepernocta', '');
   if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
    begin
      //dbpersonal.ReadOnly := true;
      messageDLG('No se puede realizar operaciones ya que Existe Pernocta Reportado !', mtWarning, [mbOK], 0);
    end;

    Bandera := 'Pernocta';
    MovtosPersEq.Active := False;
    MovtosPersEq.SQL.Clear;
    MovtosPersEq.SQL.Add('select * from movtorecursosxoficio ' +
      'where sContrato =:Contrato And iFolioOficio =:Folio ' +
      'And sAnexo="' + global_labelPernocta + '" order by iItemOrden');
    MovtosPersEq.Params.ParamByName('Contrato').DataType := ftString;
    MovtosPersEq.Params.ParamByName('Contrato').Value := Global_Contrato;
    MovtosPersEq.Params.ParamByName('Folio').DataType := ftInteger;
    MovtosPersEq.Params.ParamByName('Folio').Value := iFolioOficio;
    MovtosPersEq.Open;
    sumaequipos();
  end;
end;

//Salga del Combo de Fechas

procedure TFrmMovtosPersonalxoficio.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    sdias.SetFocus;
end;

procedure TFrmMovtosPersonalxoficio.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdfechafinal.SetFocus;
end;

procedure TFrmMovtosPersonalxoficio.tsDescripcionCortaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbordentrabajo.SetFocus;
end;

procedure TFrmMovtosPersonalxoficio.tsFechasClick(Sender: TObject);
begin
  try
    iFolioOficio := fechaVigencia.FieldValues['iFolioOficio'];
    dFechaVigencia := fechaVigencia.FieldValues['dFechaVigencia'];
    if tsFechas.text <> '' then
    begin
      qryOrdenesGral.Active := False;
      qryOrdenesGral.Params.ParamByName('Contrato').DataType := ftString;
      qryOrdenesGral.Params.ParamByName('Contrato').Value := Global_Contrato;
      qryOrdenesGral.Params.ParamByName('Folio').DataType := ftInteger;
      qryOrdenesGral.Params.ParamByName('Folio').Value := iFolioOficio;
      qryOrdenesGral.Open;

      if rbc14.Checked then
        rbC14Click(Sender)
      else
      begin
        rbc14.Checked   ;
        rbC14Click(Sender)
      end;

     // dbpersonal.ReadOnly := false;
      AntesEliminar('bitacoradepersonal', '');
     if (connection.zCommand.RecordCount > 0)  and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
      begin
        //dbpersonal.ReadOnly := true;
      end;

      MovtosPersEq.Active := False;
      MovtosPersEq.Params.ParamByName('Contrato').DataType := ftString;
      MovtosPersEq.Params.ParamByName('Contrato').Value := Global_Contrato;
      MovtosPersEq.Params.ParamByName('Folio').DataType := ftInteger;
      MovtosPersEq.Params.ParamByName('Folio').Value := iFolioOficio;
      MovtosPersEq.Open;

      movtosRecursos.Open;
    end
    else
      MessageDlg('No Existen Vigencias Abiertas.', mtInformation, [mbOk], 0);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal x Oficio', 'Al seleccionar vigencia', 0);
    end;
  end;
end;

procedure TFrmMovtosPersonalxoficio.tsIdFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsdescripcioncorta.SetFocus;
end;

procedure TFrmMovtosPersonalxoficio.ssOficioAutorizacionKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsidfolio.SetFocus;
end;

//Traer Vigencia Anterior

procedure TFrmMovtosPersonalxoficio.VigenciaAnterior1Click(Sender: TObject);
var
  iFolioAnterior: integer;
begin
  try
    fechaVigencia.Next;
    iFolioAnterior := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];
    Fecha := tsFechas.Text;
    fechaVigencia.Prior;

     //soad -> Se eliminan datos..
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('delete from movtorecursosxoficio ' +
      'where sContrato =:Contrato And iFolioOficio =:Folio');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
    Connection.QryBusca.Params.ParamByName('Folio').DataType := ftInteger;
    Connection.QryBusca.Params.ParamByName('Folio').Value := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];
    Connection.QryBusca.ExecSQL;

     //Busqueda de vigencia anterior...
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('select * from movtorecursosxoficio ' +
      'where sContrato =:Contrato And iFolioOficio =:Folio ' +
      'order by iItemOrden');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
    Connection.QryBusca.Params.ParamByName('Folio').DataType := ftInteger;
    Connection.QryBusca.Params.ParamByName('Folio').Value := iFolioAnterior;
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount > 0 then
    begin
      Bandera := '';
      while not Connection.QryBusca.Eof do
      begin
        Movtosrecursos.Append;
        Movtosrecursos.FieldValues['sContrato'] := Global_Contrato;
        Movtosrecursos.FieldValues['sNumeroOrden'] := dbOrdenTrabajo.Text;
        Movtosrecursos.FieldValues['dFechaVigencia'] := tsFechas.Text;
        Movtosrecursos.FieldValues['iFolioOficio'] := fechaVigencia.FieldValues['iFolioOficio'];
        Movtosrecursos.FieldValues['sAnexo'] := Connection.QryBusca.FieldValues['sAnexo'];
        Movtosrecursos.FieldValues['sNumeroActividad'] := Connection.QryBusca.FieldValues['sNumeroActividad'];
        Movtosrecursos.FieldValues['iItemOrden'] := Connection.QryBusca.FieldValues['iItemOrden'];
        Movtosrecursos.FieldValues['dCantidad'] := Connection.QryBusca.FieldValues['dCantidad']; ;
        Movtosrecursos.Post;

        if QryOrdenesGral.FieldValues['sTipoVigencia'] = 'DIARIA' then
          AnteriorVigenciaDia(connection.QryBusca.FieldValues['sAnexo'], Connection.QryBusca.FieldValues['sNumeroActividad'],
            strToDate(tsFechas.Text), strToDate(Fecha), iFolioAnterior);
        Connection.QryBusca.Next
      end;
    end;
    rbC14Click(Sender);
    MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Personal x Oficio', 'Al Aplicar Vigencia Anterior', 0);
    end;
  end;
end;


procedure TFrmMovtosPersonalxoficio.sDiasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmdescripcion.SetFocus;
end;

procedure TfrmMovtosPersonalxOficio.sumaequipos();
begin
  Connection.zCommand.SQL.Clear;
  Connection.zCommand.SQL.Add('Select sum(dCantidad)as total from movtorecursosxoficio ' +
    'where sContrato =:Contrato And iFolioOficio =:Folio ' +
    'And sAnexo="' + global_labelEquipo + '" order by iItemOrden');
  Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  Connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
  Connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
  Connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
  Connection.zCommand.Open;
  if Connection.zCommand.RecordCount > 0 then
  begin
    if Connection.zCommand.FieldByName('total').Isnull then
      txtTotal.text := '0'
    else
      txtTotal.text := Connection.zCommand.FieldValues['total'];
  end;

end;

procedure TfrmMovtosPersonalxOficio.sumapersonal();
begin
  Connection.zCommand.SQL.Clear;
  Connection.zCommand.SQL.Add('Select sum(dCantidad)as total from movtorecursosxoficio ' +
    'where sContrato =:Contrato And iFolioOficio =:Folio ' +
    'And sAnexo="' + global_labelPersonal + '" Order by iItemOrden');
  Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  Connection.zCommand.Params.paramByName('Contrato').Value := Global_Contrato;
  Connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
  Connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; //fechaVigencia.FieldValues['iFolioOficio'];
  Connection.zCommand.Open;
  if Connection.zCommand.RecordCount > 0 then
  begin
    if Connection.zCommand.FieldByName('total').Isnull then
      txtTotal.text := '0'
    else
      txtTotal.text := Connection.zCommand.FieldValues['total'];
  end;
end;

 //Funcion para verificar personal y equipo reportado antes de eliminar....
 //***********************************************************************************

procedure TfrmMovtospersonalxOficio.AntesEliminar(tabla: string; partida: string);
begin
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Select * from ' + tabla + ' Where sContrato = :Contrato ' +
    'and dIdFecha >= :FechaI and dIdFecha <= :FechaF ' + partida);
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
  connection.zCommand.Params.ParamByName('FechaI').DataType := ftDate;
  connection.zCommand.Params.ParamByName('FechaI').Value := tdFechaInicio.Date;
  connection.zCommand.Params.ParamByName('FechaF').DataType := ftDate;
  connection.zCommand.Params.ParamByName('FechaF').Value := tdFechaFinal.Date;
  connection.zCommand.Open;
end;

procedure TfrmMovtosPersonalxOficio.sumapernocta();
begin
  Connection.zCommand.SQL.Clear;
  Connection.zCommand.SQL.Add('Select sum(dCantidad)as total from movtorecursosxoficio ' +
    'where sContrato =:Contrato And iFolioOficio =:Folio ' +
    'And sAnexo="' + global_labelPernocta + '" Order by iItemOrden');
  Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  Connection.zCommand.Params.paramByName('Contrato').Value := Global_Contrato;
  Connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
  Connection.zCommand.Params.ParamByName('Folio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
  Connection.zCommand.Open;
  if Connection.zCommand.RecordCount > 0 then
  begin
    if Connection.zCommand.FieldByName('total').Isnull then
      txtTotal.text := '0'
    else
      txtTotal.text := Connection.zCommand.FieldValues['total'];
  end;
end;

 {Insertar Detalle de vigencia por dia.}

procedure TFrmMovtosPersonalxoficio.ImprimeComparativoClick(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PLANTILAS DE IMPORTACION /////////////////////////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      fs: tStream;
      i, x, n, Ren, total: integer;
      MiFecha, MiFechaI, MiFechaF: tDate;
      Progreso, TotalProgreso: real;
      dVolumen, dVolumenDia, Alto: double;
      sAnexoRecurso: string;
      Q_Partidas, Q_Partidas2: TZReadOnlyQuery;
    begin
    // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Q_Partidas2 := TZReadOnlyQuery.Create(self);
      Q_Partidas2.Connection := connection.zConnection;

    {Encabezados.}
      Hoja.Range['C1:H2'].Select;
      if rbC14.Checked then
      begin
        Excel.Selection.Value := ' COMPARATIVO ANEXO DMO VS REPORTADO';
        sAnexoRecurso := global_LabelPersonal;
      end;
      if rbC15.Checked then
      begin
        Excel.Selection.Value := 'COMPARATIVO ANEXO DME VS REPORTADO';
        sAnexoRecurso := global_LabelEquipo;
      end;
      Excel.Selection.MergeCells := True;
      Excel.Selection.WrapText := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 14;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['C3:H5'].Select;
      Excel.Selection.Value := connection.contrato.FieldValues['mDescripcion'];
      Excel.Selection.MergeCells := True;
      Excel.Selection.WrapText := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 9;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['C6:C6'].Select;
      Excel.Selection.Value := 'OFICIO DE AUTORIZACION';
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['D6:F6'].Select;
      Excel.Selection.Value := QryOrdenesGral.FieldValues['sOficioAutorizacion'];
      Excel.Selection.MergeCells := True;
      Excel.Selection.WrapText := True;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['G6:G6'].Select;
      Excel.Selection.Value := 'ORDEN:';
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Name := 'Arial';

      Hoja.Range['H6:H6'].Select;
      Excel.Selection.Value := connection.contrato.FieldValues['sContrato'];
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Arial';

    //Genera Plantilla para Anexo A...
      Ren := 8;

      Excel.Columns['A:A'].ColumnWidth := 6.86;
      Excel.Columns['B:B'].ColumnWidth := 9.43;
      Excel.Columns['C:C'].ColumnWidth := 43.57;
      Excel.Columns['D:D'].ColumnWidth := 9.30;
      Excel.Columns['E:E'].ColumnWidth := 10.14;
      Excel.Columns['F:F'].ColumnWidth := 12.45;

    // Colocar los encabezados de la plantilla...
      Hoja.Range['A8:A8'].Select;
      Excel.Selection.Value := '#';
      FormatoEncabezado;
      Hoja.Range['B8:B8'].Select;
      Excel.Selection.Value := 'Código';
      FormatoEncabezado;
      Hoja.Range['C8:C8'].Select;
      Excel.Selection.Value := 'Descripción';
      FormatoEncabezado;
      Hoja.Range['D8:D8'].Select;
      Excel.Selection.Value := 'Unidad';
      FormatoEncabezado;
      Hoja.Range['E8:E8'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;

      Hoja.Range['A8:E8'].Select;
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
    //Personal DMO
      if rbC14.Checked then
        connection.QryBusca.SQL.Add('select d.*, p.iItemOrden, p.sDescripcion, p.sMedida, m.dCantidad as dCantidadOficio from detallerecursosxoficio d ' +
          'inner join personal p on (p.sContrato = d.sContrato and p.sIdPersonal = d.sNumeroActividad) ' +
          'inner join movtorecursosxoficio m on (m.sContrato = p.sContrato and m.iFolioOficio = d.iFolioOficio and m.sAnexo = d.sAnexo and m.sNumeroActividad = d.sNumeroActividad) ' +
          'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo group by d.sAnexo, d.sNumeroActividad order by p.iItemOrden');
    //Equipo DMO
      if rbC15.Checked then
        connection.QryBusca.SQL.Add('select d.*, p.iItemOrden, p.sDescripcion, p.sMedida, m.dCantidad as dCantidadOficio from detallerecursosxoficio d ' +
          'inner join equipos p on (p.sContrato = d.sContrato and p.sIdEquipo = d.sNumeroActividad) ' +
          'inner join movtorecursosxoficio m on (m.sContrato = p.sContrato and m.iFolioOficio = d.iFolioOficio and m.sAnexo = d.sAnexo and m.sNumeroActividad = d.sNumeroActividad) ' +
          'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo group by d.sAnexo, d.sNumeroActividad order by p.iItemOrden');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Oficio').DataType := ftInteger;
      connection.QryBusca.Params.ParamByName('Oficio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
      connection.QryBusca.Params.ParamByName('Anexo').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Anexo').Value := sAnexoRecurso;
      connection.QryBusca.Open;

      while not connection.QryBusca.Eof do
      begin
        MiFecha := dFechaVigencia; //fechaVigencia.FieldValues['dFechaVigencia'];
        MiFechaI := QryOrdenesGral.FieldValues['dFiProgramado'];
        MiFechaF := QryOrdenesGral.FieldValues['dFfProgramado'];
        for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
        begin
          Hoja.Cells[Ren, 5 + i].Select;
             {Formato de las fechas archivo Excel,, 24/07/2011..}
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := DateToStr(MiFecha);
          FormatoEncabezado;
          Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
          Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
          Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
          Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
          Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
          Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
          Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
          Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
             //Excel.Selection.Interior.ColorIndex := 49;
          MiFecha := IncDay(MiFecha);
        end;
        total := i;

        Hoja.Cells[Ren, 5 + i].Select;
        Excel.Selection.Value := 'Total';
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clNavy;
        Excel.Selection.Font.Size := 9;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Name := 'Arial';

        Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
        Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
        Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
        Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;

        inc(Ren);

        connection.QryBusca.First;
        while not connection.QryBusca.Eof do
        begin
              {Movimiento de la Barra..}
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

              {Escritura de Datos en el Archvio de Excel..}
          Hoja.Cells[Ren, 1].select;
          Excel.Selection.Value := Ren - 8;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 2].select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];

          Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 12.75;



          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidadOficio'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Range['A' + IntTostr(Ren) + ':E' + IntTostr(Ren)].Select;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.name := 'Arial';
          Excel.Selection.Font.size := 8;

              //***** PRIMERO EL PROGRAMADO DMO - DME *****
          Q_Partidas.Active := False;
          Q_Partidas.SQL.Clear;
              //Personal DMO
          if rbC14.Checked then
            Q_Partidas.SQL.Add('select d.*, p.iItemOrden from detallerecursosxoficio d ' +
              'inner join personal p on (p.sContrato = d.sContrato and p.sIdPersonal = d.sNumeroActividad) ' +
              'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo and sNumeroActividad =:Id order by p.iItemOrden');
              //Equipo DME
          if rbC15.Checked then
            Q_Partidas.SQL.Add('select d.*, p.iItemOrden from detallerecursosxoficio d ' +
              'inner join equipos p on (p.sContrato = d.sContrato and p.sIdEquipo = d.sNumeroActividad) ' +
              'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo and sNumeroActividad =:Id order by p.iItemOrden');
          Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
          Q_Partidas.Params.ParamByName('Contrato').Value := global_contrato;
          Q_Partidas.Params.ParamByName('Oficio').DataType := ftInteger;
          Q_Partidas.Params.ParamByName('Oficio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
          Q_Partidas.Params.ParamByName('Anexo').DataType := ftString;
          Q_Partidas.Params.ParamByName('Anexo').Value := sAnexoRecurso;
          Q_Partidas.Params.ParamByName('Id').DataType := ftString;
          Q_Partidas.Params.ParamByName('Id').Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Q_Partidas.Open;

          dVolumen := 0;
          i := 1;
          Hoja.Range['D' + IntToStr(Ren + 1) + ':E' + IntToStr(Ren + 1)].Select;
          Excel.Selection.Value := 'Programado';
          Excel.Selection.MergeCells := True;
          Excel.Selection.HorizontalAlignment := xlLeft;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.name := 'Arial';
          Excel.Selection.Font.size := 8;
          Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 12.75;
          while not Q_Partidas.Eof do
          begin
            Hoja.Cells[Ren, 5 + i].Select;
            Excel.Selection.Value := Q_Partidas.FieldByName('dCantidad').AsFloat;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clBlack;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.name := 'Arial';
            Excel.Selection.Font.size := 8;

            if Q_Partidas.FieldValues['dCantidad'] > 0 then
            begin
              Hoja.Cells[Ren + 1, 5 + i].Select;
              Excel.Selection.HorizontalAlignment := xlCenter;
              Excel.Selection.VerticalAlignment := xlCenter;
              Excel.Selection.Value := '■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■';
              Excel.Selection.Font.Bold := True;
              Excel.Selection.Font.name := 'Courier New';
              Excel.Selection.Font.size := 11;
              Excel.Selection.Font.Color := clRed;
            end
            else
            begin
              Hoja.Cells[Ren + 1, 5 + i].Select;
              Excel.Selection.Value := ' ';
              Excel.Selection.Font.Color := clBlack;
            end;

            Hoja.Cells[Ren + 3, 5 + i].Select;
            Excel.Selection.Value := ' ';
            Excel.Selection.Font.Color := clBlack;

            dVolumen := dVolumen + Q_Partidas.FieldByName('dCantidad').AsFloat;
            inc(i);
            Q_Partidas.Next;
          end;

          Hoja.Cells[Ren, 5 + i].Select;
          Excel.Selection.Value := dVolumen;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.name := 'Arial';
          Excel.Selection.Font.size := 8;

          Hoja.Cells[Ren + 1, 5 + i].Select;
          Excel.Selection.Value := ' ';
          Excel.Selection.Font.Color := clBlack;
          Inc(Ren, 2);

              //***** AHORA LO REPORTADO DEL DMO - DME *****
          Q_Partidas2.Active := False;
          Q_Partidas2.SQL.Clear;
              //Personal DMO
          if rbC14.Checked then
            Q_Partidas2.SQL.Add('select d.*, p.iItemOrden, IFNULL(sum(bp.dCantidad), 0) as Reportado, bp.dIdFecha from detallerecursosxoficio d ' +
              'inner join personal p on (p.sContrato = d.sContrato and p.sIdPersonal = d.sNumeroActividad) ' +
              'inner join bitacoradepersonal bp on (bp.sContrato = d.sContrato and bp.dIdFecha = d.dFechaDia and bp.sIdPersonal = d.sNumeroActividad) ' +
              'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo and sNumeroActividad =:Id group by d.dFechaDia order by p.iItemOrden');
              //Equipo DME
          if rbC15.Checked then
            Q_Partidas2.SQL.Add('select d.*, p.iItemOrden, IFNULL(sum(bp.dCantidad), 0) as Reportado, bp.dIdFecha from detallerecursosxoficio d ' +
              'inner join equipos p on (p.sContrato = d.sContrato and p.sIdEquipo = d.sNumeroActividad) ' +
              'inner join bitacoradeequipos bp on (bp.sContrato = d.sContrato and bp.dIdFecha = d.dFechaDia and bp.sIdEquipo = d.sNumeroActividad) ' +
              'where d.sContrato =:Contrato and d.iFolioOficio =:Oficio and d.sAnexo =:Anexo and sNumeroActividad =:Id group by d.dFechaDia order by p.iItemOrden');
          Q_Partidas2.Params.ParamByName('Contrato').DataType := ftString;
          Q_Partidas2.Params.ParamByName('Contrato').Value := global_contrato;
          Q_Partidas2.Params.ParamByName('Oficio').DataType := ftInteger;
          Q_Partidas2.Params.ParamByName('Oficio').Value := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
          Q_Partidas2.Params.ParamByName('Anexo').DataType := ftString;
          Q_Partidas2.Params.ParamByName('Anexo').Value := sAnexoRecurso;
          Q_Partidas2.Params.ParamByName('Id').DataType := ftString;
          Q_Partidas2.Params.ParamByName('Id').Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Q_Partidas2.Open;

          Hoja.Range['D' + IntToStr(Ren + 1) + ':E' + IntToStr(Ren + 1)].Select;
          Excel.Selection.Value := 'Reportado (Real)';
          Excel.Selection.MergeCells := True;
          Excel.Selection.HorizontalAlignment := xlLeft;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.name := 'Arial';
          Excel.Selection.Font.size := 8;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];

          dVolumen := 0;
          Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 12.75;
          while not Q_Partidas2.Eof do
          begin
            Q_Partidas.First;
            i := 1;
            dVolumenDia := 0;
            while not Q_Partidas.Eof do
            begin
              if (Q_Partidas.FieldValues['sNumeroActividad'] = Q_Partidas2.FieldValues['sNumeroActividad']) and (Q_Partidas.FieldValues['dFechaDia'] = Q_Partidas2.FieldValues['dIdFecha'])
                and (Q_Partidas2.FieldValues['Reportado'] > 0) then
              begin
                dVolumenDia := Q_Partidas2.FieldByName('Reportado').AsFloat;
                Hoja.Cells[Ren, 5 + i].Select;
                Excel.Selection.Value := dVolumenDia;
                Excel.Selection.HorizontalAlignment := xlRight;
                Excel.Selection.VerticalAlignment := xlCenter;
                Excel.Selection.Font.Color := clBlack;
                Excel.Selection.Font.Bold := False;
                Excel.Selection.Font.name := 'Arial';
                Excel.Selection.Font.size := 8;

                Hoja.Cells[Ren + 1, 5 + i].Select;
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment := xlCenter;
                Excel.Selection.Value := '■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■';
                Excel.Selection.Font.Bold := True;
                Excel.Selection.Font.name := 'Courier New';
                Excel.Selection.Font.size := 11;
                Excel.Selection.Font.Color := clBlue;
                Q_Partidas.Last;
              end;
              Q_Partidas.Next;
              inc(i);
            end;
            dVolumen := dVolumen + dVolumenDia;
            Q_Partidas2.Next;
          end;

          Hoja.Cells[Ren, 5 + i].Select;
          Excel.Selection.Value := dVolumen;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.name := 'Arial';
          Excel.Selection.Font.size := 8;

          Hoja.Cells[Ren + 1, 5 + i].Select;
          Excel.Selection.Value := ' ';
          Excel.Selection.Font.Color := clBlack;

          connection.QryBusca.Next;
          Inc(Ren, 2);
        end;
      end;

      Hoja.Cells[2, 2].Select;
      Hoja.Range['A8:A8'].Select;
      Q_Partidas.Destroy;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      if rbC14.Checked then
        Hoja.Name := 'COMPARATIVO ANEXO DMO';

      if rbC15.Checked then
        Hoja.Name := 'COMPARATIVO ANEXO DME';

      DatosPlantilla;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      Excel.DisplayAlerts := True;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al generar la hoja VIGENCIAS PERSONAL/EQUIPO/PERNOCTAS:' + #10 + #10 + e.Message;
        Excel.DisplayAlerts := True;
      end;
    end;

    Result := Resultado;
  end;

begin
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  if not SaveDialog1.Execute then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    on e: exception do begin
      FreeAndNil(Excel);
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Vigencias de Personal, Equipo, Vigencias', 'Al importar datos', 0);
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
    messageDlg('El Anexo se Generó Correctamente!', mtConfirmation, [mbOk], 0);

  Excel := '';

  if CadError <> '' then
    showmessage(CadError)
 // else
    //tsarchivo.Text:=SaveDialog1.FileName;

end;

procedure TfrmMovtosPersonalxOficio.InsertaVigenciaDia(sParamAnexo: string; sParamId: string);
var
  tFechaDia: tDate;
  Indice, tope: integer;
  iFolio: integer;
begin
  tFechaDia := QryOrdenesGral.FieldValues['dFiProgramado'];
  tope := (QryOrdenesGral.FieldValues['dFfProgramado'] - QryOrdenesGral.FieldValues['dFiProgramado']) + 1;

     //Se insertan los datos de cacuerdo a la vigencia de inicio y fin.
  for indice := 0 to tope - 1 do
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('insert into detallerecursosxoficio (sContrato, iFolioOficio, sAnexo, sNumeroActividad, dFechaDia, dCantidad) ' +
      ' values (:Contrato, :Folio, :Anexo, :Actividad, :Fecha, :Cantidad) on duplicate key update dCantidad=0');
    connection.zCommand.ParamByName('Contrato').AsString := global_Contrato;
    connection.zCommand.ParamByName('Folio').AsInteger := QryOrdenesGral.FieldValues['iFolioOficio'];
    connection.zCommand.ParamByName('Anexo').AsString := sParamAnexo;
    connection.zCommand.ParamByName('Actividad').AsString := sParamId;
    connection.zCommand.ParamByName('Fecha').AsDate := tFechaDia + indice;
    connection.zCommand.ParamByName('Cantidad').AsFloat := 0;
    connection.zCommand.ExecSQL;

  end;
end;

 {Elimina detalle de vigencia x dia.}

procedure TfrmMovtosPersonalxOficio.EliminaVigenciaDia(sParamAnexo: string; sParamId: string);
begin
  if sParamId = '' then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('delete from detallerecursosxoficio where sContrato =:Contrato and iFolioOficio =:Folio and sAnexo =:Anexo ');
    connection.zCommand.ParamByName('Contrato').AsString := global_Contrato;
    connection.zCommand.ParamByName('Folio').AsInteger := QryOrdenesGral.FieldValues['iFolioOficio'];
    connection.zCommand.ParamByName('Anexo').AsString := sParamAnexo;
    connection.zCommand.ExecSQL;
  end
  else
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('delete from detallerecursosxoficio where sContrato =:Contrato and iFolioOficio =:Folio and sAnexo =:Anexo and sNumeroActividad =:Id ');
    connection.zCommand.ParamByName('Contrato').AsString := global_Contrato;
    connection.zCommand.ParamByName('Folio').AsInteger := QryOrdenesGral.FieldValues['iFolioOficio'];
    connection.zCommand.ParamByName('Anexo').AsString := sParamAnexo;
    connection.zCommand.ParamByName('Id').AsString := sParamId;
    connection.zCommand.ExecSQL;
  end;
end;

 {Recursos en cero..}

procedure TfrmMovtosPersonalxOficio.RecursosCeroVigencia(sParamAnexo: string);
begin
  movtosPersEq.First;
  while not movtosPersEq.Eof do
  begin
    if movtosPersEq.FieldValues['dCantidad'] = 0 then
      EliminaVigenciaDia(sParamAnexo, movtosPersEq.FieldValues['sNumeroActividad']);
    movtosPersEq.Next;
  end;

end;

procedure TfrmMovtosPersonalxOficio.AnteriorVigenciaDia(sParamAnexo: string; sParamId: string; dParamFecha: TDate; dParamFechaAnt: TDate; iParamFolio: Integer);
begin
  connection.QryBusca2.Active := False;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select * from detallerecursosxoficio where sContrato =:Contrato and iFolioOficio =:Oficio ' +
    'and sAnexo =:Anexo and sNumeroActividad  =:Id');
  connection.QryBusca2.ParamByName('Contrato').AsString := global_Contrato;
  connection.QryBusca2.ParamByName('Oficio').AsInteger := iParamFolio;
  connection.QryBusca2.ParamByName('Anexo').AsString := sParamAnexo;
  connection.QryBusca2.ParamByName('Id').AsString := sParamId;
  connection.QryBusca2.Open;

  while not connection.QryBusca2.Eof do
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('insert into detallerecursosxoficio (sContrato, iFolioOficio, sAnexo, sNumeroActividad, dFechaDia, dCantidad) ' +
      ' values (:Contrato, :Folio, :Anexo, :Actividad, :Fecha, :Cantidad)');
    connection.zCommand.ParamByName('Contrato').AsString := global_Contrato;
    connection.zCommand.ParamByName('Folio').AsInteger := iFolioOficio; // fechaVigencia.FieldValues['iFolioOficio'];
    connection.zCommand.ParamByName('Anexo').AsString := connection.QryBusca2.FieldValues['sAnexo'];
    connection.zCommand.ParamByName('Actividad').AsString := connection.QryBusca2.FieldValues['sNumeroActividad'];
    connection.zCommand.ParamByName('Fecha').AsDate := dParamFecha;
    connection.zCommand.ParamByName('Cantidad').AsFloat := connection.QryBusca2.FieldValues['dCantidad'];
    connection.zCommand.ExecSQL;

    dParamFecha := dParamFecha + 1;

    connection.QryBusca2.Next;
  end;
end;


procedure TfrmMovtosPersonalxOficio.formatoEncabezado;
begin
  Excel.Selection.MergeCells := False;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 8;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Arial';
end;

function TfrmMovtosPersonalxOficio.validarEdicionBorrado(): Boolean;


var
  qry: TZReadOnlyQuery;
begin

  qry := TZReadOnlyQuery.Create(nil);
  qry.Connection := Connection.zConnection;
  qry.Active := false;
  qry.SQL.Clear;
  qry.SQL.Add(' select * from bitacoradepersonal where sContrato=:contrato and dIdFecha between :fechai and :fechaf ');
  qry.Params.ParamByName('contrato').AsString := global_Contrato;
  qry.Params.ParamByName('fechai').AsDate := tdFechaInicio.Date;
  qry.Params.ParamByName('fechaf').AsDate := tdFechaFinal.Date;
  qry.Open;

  if qry.RecordCount > 0 then
  begin
    validarEdicionBorrado := true;
  end;

  qry.Active := false;
  qry.SQL.Clear;
  qry.SQL.Add(' select * from bitacoradeequipos where sContrato=:contrato and dIdFecha between :fechai and :fechaf ');
  qry.Params.ParamByName('contrato').AsString := global_Contrato;
  qry.Params.ParamByName('fechai').AsDate := tdFechaInicio.Date;
  qry.Params.ParamByName('fechaf').AsDate := tdFechaFinal.Date;
  qry.Open;

  if qry.RecordCount > 0 then
  begin
    validarEdicionBorrado := true;
  end;

end;

end.

