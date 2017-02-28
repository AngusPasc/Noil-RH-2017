unit frm_ReportesAlmacen;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,
  DBTables, Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer, Newpanel,
  Excel2000, ZAbstractRODataset, ZDataset, ZAbstractDataset, rxCurrEdit,
  rxToolEdit, JvExMask, JvToolEdit, JvCombobox, NxCollection,
  AdvGlowButton, udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  UFunctionsGHH, UnitValidacion, Editb, EditCalc, NxPageControl, FormAutoScaler, ComObj;

type
  TfrmReportesAlmacen = class(TForm)
    {$REGION 'Declaracion de componentes'}
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    FiltroDos: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    FechaInicio: TDateTimePicker;
    FechaFinal: TDateTimePicker;
    FiltroUno: TGroupBox;
    cboProveedores: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    cboReferencias: TDBLookupComboBox;
    qryProveedores: TZReadOnlyQuery;
    qryReferencias: TZReadOnlyQuery;
    dsProveedores: TDataSource;
    dsReferencias: TDataSource;
    GroupBox2: TGroupBox;
    rProveedores: TRadioButton;
    rReferencias: TRadioButton;
    rOC: TRadioButton;
    cmdImprimeOCs: TButton;
    chkTodosProveedores: TCheckBox;
    ChkTodasReferencias: TCheckBox;
    frxEntrada: TfrxReport;
    rComparativo: TRadioButton;
    GroupBox3: TGroupBox;
    cboMateriales: TDBLookupComboBox;
    chkTodosMateriales: TCheckBox;
    dsMateriales: TDataSource;
    qryMateriales: TZReadOnlyQuery;
    qryOrdenCompra: TZReadOnlyQuery;
    dsOrdenCompra: TDataSource;
    frxPrecios: TfrxDBDataset;
    rxPrecios: TRxMemoryData;
    rxPreciossContrato: TStringField;
    rxPreciossIdInsumo: TStringField;
    rxPreciosmDescripcion: TMemoField;
    rxPreciossIdProveedor: TStringField;
    rxPreciosdFecha1: TDateField;
    rxPreciosdFecha2: TDateField;
    rxPreciosdFecha3: TDateField;
    rxPreciosdFecha4: TDateField;
    rxPreciosdFecha5: TDateField;
    rxPreciosdFecha6: TDateField;
    rxPreciosdFecha7: TDateField;
    rxPreciosdFecha8: TDateField;
    rxPreciosdCosto1: TFloatField;
    rxPreciosdCosto2: TFloatField;
    rxPreciosdCosto3: TFloatField;
    rxPreciosdCosto4: TFloatField;
    rxPreciosdCosto5: TFloatField;
    rxPreciosdCosto6: TFloatField;
    rxPreciosdCosto7: TFloatField;
    rxPreciosdCosto8: TFloatField;
    rxPreciosItem: TIntegerField;
    rxPreciossOrdenCompra1: TStringField;
    rxPreciossOrdenCompra2: TStringField;
    rxPreciossOrdenCompra3: TStringField;
    rxPreciossOrdenCompra4: TStringField;
    rxPreciossOrdenCompra5: TStringField;
    rxPreciossOrdenCompra6: TStringField;
    rxPreciossOrdenCompra7: TStringField;
    rxPreciossOrdenCompra8: TStringField;
    cboOrdenCompra: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    chkFechas: TCheckBox;
    frxDBReporte: TfrxDBDataset;
    reporte: TZQuery;
    reportesContrato: TStringField;
    reporteiFolioPedido: TIntegerField;
    reportesOrdenCompra: TStringField;
    reportesFolioRequisicion: TStringField;
    reportesIdProveedor: TStringField;
    reportesNumeroOrden: TStringField;
    reportedIdFecha: TDateField;
    reportedFechaEntrega: TDateField;
    reportesReferencia: TStringField;
    reportesElaboro: TStringField;
    reportesReviso1: TStringField;
    reportesAutorizo: TStringField;
    reportesFormaPago: TStringField;
    reportesMoneda: TStringField;
    reportedCambio: TFloatField;
    reportemComentarios: TMemoField;
    reportesStatus: TStringField;
    reportesLugarEntrega: TStringField;
    reportesCondiciones: TStringField;
    reportesEntrega: TStringField;
    reportesPrecios: TStringField;
    reportesVigencia: TStringField;
    reportesVendedor: TStringField;
    reportesMail: TStringField;
    reportesRazon: TStringField;
    reportesDomicilio: TStringField;
    reportesEstado: TStringField;
    reportesRFC: TStringField;
    reportesTelefono: TStringField;
    reporteiItem: TIntegerField;
    reportedCantidad: TFloatField;
    reportemDescripcion: TMemoField;
    reportesMedida: TStringField;
    reportedCosto: TFloatField;
    reporteiItemOrden: TStringField;
    reportemoneda: TStringField;
    reportedAcumulado: TFloatField;
    reportesElabora: TStringField;
    reportedIVA: TFloatField;
    reportedDescuento: TFloatField;
    reporteDescuentoMat: TFloatField;
    reportesReviso2: TStringField;
    reporteAgrupa: TStringField;
    reporteDescAgrupa: TStringField;
    chkTodasLasOC: TCheckBox;
    frmtsclr1: TFormAutoScaler;
    chkAcumExcel: TCheckBox;
    SaveDialog1: TSaveDialog;
    PanelProgress: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    BarraEstado: TProgressBar;
    {$ENDREGION}
    procedure rOCClick(Sender: TObject);
    procedure rProveedoresClick(Sender: TObject);
    procedure rReferenciasClick(Sender: TObject);
    procedure chkFechasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmdImprimeOCsClick(Sender: TObject);
    procedure ChkTodasReferenciasClick(Sender: TObject);
    procedure chkTodosProveedoresClick(Sender: TObject);
    procedure qryOrdenCompraAfterScroll(DataSet: TDataSet);
    procedure rComparativoClick(Sender: TObject);
    procedure chkTodosMaterialesClick(Sender: TObject);
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure chkTodasLasOCClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxEntradaClosePreview(Sender: TObject);
    procedure chkAcumExcelClick(Sender: TObject);

    procedure ImprimeExcel;
    procedure formatoEncabezado(const Datos : array of string);
    procedure AnchoColumnas(const Ancho : array of string);
    procedure TextoColumnasColorFondo(const Datos : array of string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportesAlmacen: TfrmReportesAlmacen;
  sEncAgrupa: string;
  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;

implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmReportesAlmacen.chkAcumExcelClick(Sender: TObject);
begin
    if chkAcumExcel.Checked then
    begin
        cboOrdenCompra.Enabled := True;
        cboMateriales.Enabled  := false;
        chkTodosMateriales.Checked := False;
        chktodaslasOC.Checked      := True;
    end
    else
    begin
        cboOrdenCompra.Enabled := True;
        cboMateriales.Enabled  := True;
    end;

end;

procedure TfrmReportesAlmacen.chkFechasClick(Sender: TObject);
begin
  if not (chkFechas.Checked) then
  begin
    FechaInicio.Enabled := False;
    FechaFinal.Enabled := False;
  end
  else
  begin
    FechaInicio.Enabled := True;
    FechaFinal.Enabled := True;
  end;
end;

procedure TfrmReportesAlmacen.chkTodasLasOCClick(Sender: TObject);
begin
  if chkTodasLasOC.Checked then
  begin
    cboOrdenCompra.Enabled := false;
    cboMateriales.Enabled := false;
    chkTodosMateriales.Enabled := True;
  end
  else
  begin
    cboOrdenCompra.Enabled := True;
    cboMateriales.Enabled := True;
    chkTodosMateriales.Enabled := True;
  end;
end;

procedure TfrmReportesAlmacen.ChkTodasReferenciasClick(Sender: TObject);
begin
  if ChkTodasReferencias.Checked then
  begin
    cboReferencias.Enabled := false;
  end
  else
  begin
    cboReferencias.Enabled := True;
  end;
end;

procedure TfrmReportesAlmacen.chkTodosMaterialesClick(Sender: TObject);
begin
  if chkTodosMateriales.Checked then
  begin
    cboMateriales.Enabled := false;
  end
  else
  begin
    cboMateriales.Enabled := True;
  end;
end;

procedure TfrmReportesAlmacen.chkTodosProveedoresClick(Sender: TObject);
begin
  if chkTodosProveedores.Checked then
  begin
    cboProveedores.Enabled := false;
  end
  else
  begin
    cboProveedores.Enabled := True;
  end;
end;

procedure TfrmReportesAlmacen.cmdImprimeOCsClick(Sender: TObject);
var
  sIdProveedor: string;
  sNumeroOrden: string;
  sIFolioPedido: string;
  sIdInsumo: string;
  dFechaInicial: TDateTime;
  dFechaFinal: TDateTime;

  Item: string;
  conteo, lineas: integer;
  Insumo: string;

  SqlWhere: string;
  sqlGroup: string;
  CamposAgrupa: string;
  SqlOrderBy: string;

begin
{$REGION 'Obtener datos requeridos'}


  if ChkTodasReferencias.Checked then
    sNumeroOrden := '%'
  else
    sNumeroOrden := qryReferencias.FieldByName('sNumeroOrden').AsString;

  if ChkTodosProveedores.Checked then
    sIdProveedor := '%'
  else
    sIdProveedor := qryProveedores.FieldByName('sIdProveedor').AsString;

  if chkTodasLasOC.Checked then
  begin
    sIFolioPedido := '%';
    sIdInsumo := '%';
  end
  else
  begin
    if ChkTodosMateriales.Checked then
    begin
      sIFolioPedido := qryOrdenCompra.FieldByName('iFolioPedido').AsString;
      sIdInsumo := '%';
    end
    else
    begin
      sIFolioPedido := qryOrdenCompra.FieldByName('iFolioPedido').AsString;
      sIdInsumo := qryMateriales.FieldByName('sIdInsumo').AsString;
    end;
  end;

  dFechaFinal := FechaFinal.Date;
  dFechaInicial := FechaInicio.Date;

  SqlWhere := '';
  SqlGroup := '';
  SqlOrderBy := '';
  sEncAgrupa := '';

  frmReportesalmacen.Visible := False;
{$ENDREGION}

{$REGION 'Agrupación para el reporte'}
     {Reporte de Ordenes de compra}
  if (rOC.Checked) then
  begin
    sEncAgrupa := 'CONTRATO: ';
    camposAgrupa := ' a2.sContrato as agrupa,a2.sContrato as descagrupa ';
    sqlGroup := ' group by a2.iFolioPedido, a1.sidinsumo ';
    SqlOrderBy := ' order  by a2.sMoneda, a2.iFolioPedido ';
  end;
  if (rProveedores.Checked) then
  begin
    sEncAgrupa := 'PROVEEDOR: ';
    if not (ChkTodosProveedores.Checked) then
      SqlWhere := ' and p.sIdProveedor =' + quotedstr(sIdProveedor) + '  ';
    CamposAgrupa := ' p.sidproveedor as agrupa,p.srazon as descagrupa ';
    sqlGroup := ' group by a2.sIdProveedor,a1.iFolioPedido,a1.sidinsumo ';
    SqlOrderBy := ' order  by a2.sMoneda, a2.sIdProveedor,a1.iFolioPedido,a1.sidinsumo  ';
  end;
  if (rReferencias.Checked) then
  begin
    sEncAgrupa := 'REFERENCIA: ';
    if not (ChkTodasReferencias.Checked) then
      SqlWhere := ' and a2.sNumeroOrden =' + quotedstr(sNumeroOrden) + '  ';
    camposAgrupa := ' a2.sNumeroOrden as agrupa,a2.sNumeroOrden as descagrupa ';
    sqlGroup := ' group by a2.sMoneda, a2.sNumeroOrden,a2.iFolioPedido,a1.sidinsumo ';
  end;
{$ENDREGION}

{$REGION 'Acumulados Excel (Diciembre de 2015) [DSAI]'}
if chkAcumExcel.Checked then
begin
    ImprimeExcel;
    exit;
end;
{$ENDREGION}


{$REGION 'Armar SQL'}
  if sEncAgrupa <> '' then
  begin
    if (chkFechas.Checked) then
    begin
      SqlWhere := sqlWhere + ' and (a2.didFecha Between :FechaI and :FechaF) '
    end;
    Reporte.Active := False;
    Reporte.SQL.Clear;
    Reporte.SQL.Add(' Select a2.*, p.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, sum(a1.dCantidad * (a1.dCosto - a1.dDescuento)) as dCosto, "" as iItemOrden, u.sNombre as sElabora, ');
    Reporte.SQL.Add(' m.sDescripcion as moneda, a1.dDescuento as DescuentoMat,' + CamposAgrupa);
    Reporte.SQL.Add('  from anexo_ppedido a1 ');
    Reporte.SQL.Add(' inner join anexo_pedidos a2 on (a1.sContrato = a2.sContrato And a1.iFolioPedido = a2.iFolioPedido) '); // and a1.snumeroorden=a2.snumeroorden
    Reporte.SQL.Add(' left join proveedores p on (a2.sIdProveedor = p.sIdProveedor) ');
    Reporte.SQL.Add(' left join usuarios u on (u.sIdUsuario = a2.sElaboro) ');
    Reporte.SQL.Add(' left join tiposdemoneda m on (a2.sMoneda = m.sIdMoneda) ');
    Reporte.SQL.Add(' Where a1.sContrato =:Contrato ' + SqlWhere + ' ' + sqlGroup);
    Reporte.SQL.Add(' '+SqlOrderBy+' ');
    Reporte.Params.ParamByName('Contrato').DataType := ftString;
    Reporte.Params.ParamByName('Contrato').Value := global_contrato;
    if (chkFechas.Checked) then
    begin
      Reporte.ParamByName('FechaI').AsDate := dFechaInicial;
      Reporte.ParamByName('FechaF').AsDate := dFechaFinal;
    end;

    Reporte.Open;
    frxEntrada.LoadFromFile(global_files + global_miReporte + '_ALMoCompraxFiltro.fr3');
     if not FileExists(global_files + global_miReporte + '_ALMoCompraxFiltro.fr3') then
          showmessage('El archivo de reporte '+global_miReporte+'_ALMoCompraxFiltro.fr3 no existe, notifique al administrador del sistema');
    frxEntrada.ShowReport;
  end;
{$ENDREGION}

{$REGION 'Comparativo'}
  if (rComparativo.Checked) then
  begin
    with connection do
    begin
      zCommand.Active := false;
      zCommand.SQL.Clear;
      zCommand.SQL.Add(' select distinct sIdInsumo, iFolioPedido, mDescripcion, sMedida ');
      zCommand.SQL.Add(' from anexo_ppedido where sContrato =:Contrato and ');
      zCommand.SQL.ADD(' iFolioPedido like :Pedido and sIdInsumo like :Insumo group by sIdInsumo order by sIdInsumo ');
      zCommand.ParamByName('Contrato').AsString := global_contrato;
      zCommand.ParamByName('Pedido').AsString := sIFolioPedido;
      zCommand.ParamByName('Insumo').AsString := sIdInsumo;
      zCommand.Open;

      rxPrecios.EmptyTable;
      conteo := 1;
      Insumo := '';
      lineas := 1;
      while not zCommand.Eof do
      begin
        QryBusca.Active := False;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add(' select pp.dCosto, p.dIdFecha, p.sOrdenCompra, p.sIdProveedor from anexo_ppedido pp ');
        QryBusca.SQL.Add(' inner join anexo_pedidos p on (p.sContrato = pp.sContrato and p.iFolioPedido = pp.iFolioPedido ) ');
        QryBusca.SQL.Add(' where pp.sContrato = :Contrato and pp.sIdInsumo =:Insumo group by p.dIdFecha, pp.dCosto order by p.dIdFecha ');
        QryBusca.ParamByName('Contrato').AsString := global_contrato;
        QryBusca.ParamByName('Insumo').AsString := zCommand.FieldValues['sIdInsumo'];
        QryBusca.Open;

        while not QryBusca.Eof do
        begin
          if conteo > 8 then
          begin
            conteo := 1;
            inc(lineas);
          end;

          if conteo = 1 then
            rxPrecios.Append
          else
            rxPrecios.Edit;

          rxPrecios.FieldValues['sContrato'] := global_contrato;
          rxPrecios.FieldValues['Item'] := lineas;
          rxPrecios.FieldValues['sIdInsumo'] := zCommand.FieldValues['sIdInsumo'];
          rxPrecios.FieldValues['mDescripcion'] := zCommand.FieldValues['mDescripcion'];
          rxPrecios.FieldValues['sIdProveedor'] := QryBusca.FieldValues['sIdProveedor'];
          rxPrecios.FieldValues['sOrdenCompra' + IntToStr(conteo)] := QryBusca.FieldValues['sOrdenCompra'];
          rxPrecios.FieldValues['dFecha' + IntToStr(conteo)] := QryBusca.FieldValues['dIdFecha'];
          rxPrecios.FieldValues['dCosto' + IntToStr(conteo)] := QryBusca.FieldValues['dCosto'];
          rxPrecios.Post;

          inc(conteo);
          QryBusca.Next;

        end;
        zCommand.Next;
        Insumo := zCommand.FieldValues['sIdInsumo'];
        lineas := 1;
        conteo := 1;
      end;

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
      frxEntrada.LoadFromFile(global_files + global_miReporte + '_ALMoCompraComparativo.fr3');
      if not FileExists(global_files + global_miReporte + '_ALMoCompraComparativo.fr3') then
          showmessage('_El archivo de reporte '+global_miReporte+'_ALMoCompraComparativo.fr3 no existe, notifique al administrador del sistema');

      frxentrada.ShowReport(configuracion.FieldByName('sFormatos').AsString, PermisosExportar(zConnection, global_grupo, stMenu));
    end;
{$ENDREGION}
  end;
end;

procedure TfrmReportesAlmacen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree ;
end;

procedure TfrmReportesAlmacen.FormShow(Sender: TObject);
var
  qry: TZReadOnlyQuery;
  x,y,i : integer;
begin
   // soad - > Llenado del array..
    for x := 1 to 26 do
        columnas[x] := Chr(64 + x);

    i := 27;
    for x := 1 to 9 do
    begin
         for y := 1 to 26 do
         begin
             columnas[i] := Chr(64+ x) + Chr(64 + y);
             i := i + 1;
         end;
    end;

  try
    qry := TZReadOnlyQuery.Create(nil);
    qry.Connection := frm_connection.connection.zConnection;
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add(' select min(dIdFecha) fechamin from anexo_pedidos where sContrato=:contrato ');
    qry.ParamByName('contrato').AsString := global_contrato;
    qry.Open;
   // if qry.RecordCount > 0 then
    //  FechaInicio.DateTime := qry.FieldByName('fechamin').AsDateTime
   // else


    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add(' select max(dIdFecha) fechamax from anexo_pedidos where sContrato=:contrato ');
    qry.ParamByName('contrato').AsString := global_contrato;    
    qry.Open;
    //if qry.RecordCount > 0 then
      //FechaFinal.DateTime := qry.FieldByName('fechamax').AsDateTime
    //else


    qry.Free;

    qryOrdenCompra.Active := false;
    qryOrdenCompra.ParamByName('contrato').AsString := global_contrato;
    qryOrdenCompra.Open;

    qryProveedores.Active := false;
    qryProveedores.Open;

    qryReferencias.Active := false;
    qryReferencias.ParamByName('contrato').AsString := global_contrato;
    qryReferencias.Open;

//    cboProveedores.Enabled := false;
//    cboReferencias.Enabled := False;
//    cboMateriales.Enabled := False;
//    cboOrdenCompra.Enabled := False;
//
//    ChkTodosProveedores.Enabled := false;
//    ChkTodasReferencias.Enabled := False;
//    chkTodosMateriales.Enabled := false;
//    chkTodasLasOC.Enabled := false;
  except
    on E: Exception do
    begin
      MessageDlg('Error al cargar listas:' + E.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmReportesAlmacen.frxEntradaClosePreview(Sender: TObject);
begin
    frmReportesalmacen.Visible := True;
    chkTodosMateriales.Enabled := true;
    chkTodasLasOC.Enabled := true;

end;

procedure TfrmReportesAlmacen.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
begin
  if AnsiCompareText(VarName, 'Agrupa') = 0 then
    Value := sEncAgrupa;

  if CompareText(VarName, 'Periodo') = 0 then
//    if (rOC.Checked) then
//    begin
    if (chkFechas.Checked) then
    begin
      value := 'Periodo :  del ' + datetostr(FechaInicio.Date) + ' al ' + Datetostr(FechaFinal.Date);
    end;
//    end
//    else
//      value := '';


end;

procedure TfrmReportesAlmacen.qryOrdenCompraAfterScroll(DataSet: TDataSet);
begin
  try
    qryMateriales.Active := false;
    qryMateriales.ParamByName('Folio').AsString := qryOrdenCompra.FieldByName('iFolioPedido').AsString;
    qryMateriales.ParamByName('Contrato').AsString := global_contrato;
    qryMateriales.Open;
  except
  end;
end;

procedure TfrmReportesAlmacen.rComparativoClick(Sender: TObject);
begin
  if rComparativo.Checked then
  begin
    cboProveedores.Enabled := false;
    cboReferencias.Enabled := False;
    cboMateriales.Enabled := True;
    cboOrdenCompra.Enabled := True;

    ChkTodosProveedores.Enabled := False;
    ChkTodasReferencias.Enabled := False;
    chkTodosMateriales.Enabled := true;
    chkTodasLasOC.Enabled := true;
  end;
end;

procedure TfrmReportesAlmacen.rOCClick(Sender: TObject);
begin
  if rOC.Checked then
  begin
    cboProveedores.Enabled := false;
    cboReferencias.Enabled := False;
    cboMateriales.Enabled := False;
    cboOrdenCompra.Enabled := False;

    ChkTodosProveedores.Enabled := false;
    ChkTodasReferencias.Enabled := False;
    chkTodosMateriales.Enabled := false;
    chkTodasLasOC.Enabled := false;
  end;
end;

procedure TfrmReportesAlmacen.rProveedoresClick(Sender: TObject);
begin
  if rProveedores.Checked then
  begin
    cboProveedores.Enabled := True;
    cboReferencias.Enabled := False;
    cboMateriales.Enabled := False;
    cboOrdenCompra.Enabled := False;

    ChkTodosProveedores.Enabled := True;
    ChkTodasReferencias.Enabled := False;
    chkTodosMateriales.Enabled := false;
    chkTodasLasOC.Enabled := false;
  end;
end;

procedure TfrmReportesAlmacen.rReferenciasClick(Sender: TObject);
begin
  if rReferencias.Checked then
  begin
    cboProveedores.Enabled := False;
    cboReferencias.Enabled := True;
    cboMateriales.Enabled := False;
    cboOrdenCompra.Enabled := False;

    ChkTodosProveedores.Enabled := False;
    ChkTodasReferencias.Enabled := True;
    chkTodosMateriales.Enabled := false;
    chkTodasLasOC.Enabled := false;
  end;
end;

procedure TfrmReportesAlmacen.ImprimeExcel;
Var
  CadError : String;
//////////////////////////////////// SEGUIMINTO DE ORDENES DE COMPRA INTELCODE 2015 {DSAI} //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Ren, Posicion, MaxPos, i: integer;
      Progreso, TotalProgreso: real;
    begin
      Ren := 2;
      Excel.ActiveWindow.Zoom := 80;

      //AnchoColumnas[Columna,Ancho]
      AnchoColumnas(['A','4.43','B','9.43','C','19.86','D','25.43']);

      //TextoColumnas[Columna, Fila, Texto, AnchoFila, Fuente, Tamaño, Neg, Cur, Sub, ColorFuente, ColorFondo]
      TextoColumnasColorFondo(['A','1:1','RELACION DE ORDENES DE COMPRA','', '26.5','Arial','16','1','','','$007D491F','']);
      TextoColumnasColorFondo(['A',IntTostr(Ren),'NUM.','', '15.75','Arial','11','1','','','','']);
      TextoColumnasColorFondo(['B',IntTostr(Ren),'FECHA','', '15.75','Arial','11','1','','','','']);
      TextoColumnasColorFondo(['C',IntTostr(Ren),'PROVEEDOR','', '','Arial','11','1','','','','']);

      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select * from familias order by sIdFamilia ');
      connection.QryBusca2.Open;

      Posicion := 5;
      while not connection.QryBusca2.Eof do
      begin
          TextoColumnasColorFondo([columnas[Posicion],IntTostr(Ren),connection.QryBusca2.FieldByName('sDescripcion').AsString,'', '','Arial','11','1','','','','']);
          TextoColumnasColorFondo([columnas[Posicion],IntTostr(Ren    +1),'M.N','', '','Arial','11','1','','','','']);
          TextoColumnasColorFondo([columnas[Posicion +1],IntTostr(Ren +1),'USD','', '','Arial','11','1','','','','']);
          inc(Posicion,2);
          connection.QryBusca2.Next;
      end;
      MaxPos := Posicion;
      AnchoColumnas([columnas[5]+':'+columnas[MaxPos-1],'16',columnas[MaxPos],'40']);
      TextoColumnasColorFondo([columnas[Posicion],IntTostr(Ren),'CONCEPTO','', '','Arial','11','1','','','','']);

      inc(Ren);
      //Consultamos las fechas del convenio modificatorio para impresion de las cantidades reportadas superiores al programa de trabajo.
      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('   select oc.sMoneda, tm.sDescripcionCorta, oc.sOrdenCompra, DATE_FORMAT(oc.dIdFecha,"%d/%m/%Y") as dIdFecha, oc.sIdProveedor, oc.sReferencia, '+
                '      p.sRazonSocial, f.sIdFamilia, f.sDescripcion, sum(ocp.dCosto * ocp.dCantidad) as Monto from anexo_pedidos oc '+
                'inner join proveedores  p '+
                '  on (p.sIdProveedor = oc.sIdProveedor) '+
                'inner join tiposdemoneda tm '+
                '  on(tm.sIdMoneda = oc.sMoneda ) '+
                'inner join anexo_ppedido ocp '+
                '  on (ocp.sContrato = oc.sContrato and ocp.iFolioPedido = oc.iFolioPedido) '+
                'inner join insumos i '+
                '  on ((:Principal=-1 or (:Principal<>-1 and i.sContrato = ocp.sContrato)) and i.sIdAlmacen = ocp.sIdAlmacen and i.sIdInsumo = ocp.sIdInsumo) '+
                'inner join familias f '+
                '  on (f.sIdFamilia = i.sIdGrupo) '+
                'where oc.sContrato = :Contrato '+
                'and (tm.sDescripcionCorta = "M.N." or tm.sDescripcionCorta = "MX" or tm.sDescripcionCorta = "MN" or '+
                '     tm.sDescripcionCorta = "USD" or tm.sDescripcionCorta = "DLL") '+
                ' and oc.dIdFecha >=:FechaI and oc.dIdFecha <=:FechaF '+
                'group by oc.sIdProveedor, oc.dIdFecha, oc.sMoneda, i.sIdGrupo order by oc.dIdFecha, oc.sIdProveedor, i.sIdGrupo, oc.sMoneda');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
        connection.QryBusca.ParamByName('Principal').AsString  := 'No'
      else
        connection.QryBusca.ParamByName('Principal').AsInteger :=-1;
        
      connection.QryBusca.ParamByName('FechaI').AsDate := FechaInicio.Date;
      connection.QryBusca.ParamByName('FechaF').AsDate := FechaFinal.Date;
      connection.QryBusca.Open;

      connection.QryBusca.First;
      cadena := '';
      while not connection.QryBusca.Eof do
      begin
          if cadena <> (DateToStr(connection.QryBusca.FieldByName('dIdFecha').AsDateTime) + connection.QryBusca.FieldByName('sIdProveedor').AsString) then
          begin
             cadena  := DateToStr(connection.QryBusca.FieldByName('dIdFecha').AsDateTime) + connection.QryBusca.FieldByName('sIdProveedor').AsString;
             inc(Ren);
          end;
          //{Movimiento de la Barra..
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

          TextoColumnasColorFondo(['A',IntTostr(Ren),IntTostr(Ren-3),'', '','Arial','9','1','','','','']);
          TextoColumnasColorFondo(['B',IntTostr(Ren),DateToStr(connection.QryBusca.FieldByName('dIdFecha').AsDateTime),'','','Arial','9','','','','','']);
          TextoColumnasColorFondo(['C',IntTostr(Ren),connection.QryBusca.FieldByName('sRazonSocial').AsString,'','','Arial','9','','','','','']);
          TextoColumnasColorFondo([columnas[MaxPos],IntTostr(Ren),connection.QryBusca.FieldByName('sReferencia').AsString,'','','Arial','9','','','','','']);

          Posicion := 5;
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
              if connection.QryBusca.FieldByName('sIdFamilia').AsString = connection.QryBusca2.FieldByName('sIdFamilia').AsString then
              begin
                  if (connection.QryBusca.FieldByName('sDescripcionCorta').AsString = 'MN') or (connection.QryBusca.FieldByName('sDescripcionCorta').AsString = 'M.N.') or  (connection.QryBusca.FieldByName('sDescripcionCorta').AsString = 'MX') then
                      TextoColumnasColorFondo([columnas[Posicion],IntTostr(Ren),FloatToStr(connection.QryBusca.FieldByName('Monto').AsFloat),'','','Arial','9','','','','','']);

                  if (connection.QryBusca.FieldByName('sDescripcionCorta').AsString = 'USD') or (connection.QryBusca.FieldByName('sDescripcionCorta').AsString = 'DLL') then
                      TextoColumnasColorFondo([columnas[Posicion+1],IntTostr(Ren),FloatToStr(connection.QryBusca.FieldByName('Monto').AsFloat),'','','Arial','9','','','','','']);
              end;
              inc(Posicion, 2);
              connection.QryBusca2.Next;
          end;
          connection.QryBusca.Next;

      end;
      inc(Ren);
     //FormatoEncabezado[Columna, Fila, Combinado, Alineacion, Ajustado, LineaIz, LineaDer, LineaArrib, LineaAbajo, LineaCentro, ColorLetra, ColorFondo]}]
     FormatoEncabezado(['A:Q','1:1','1','1','1','','','','','','','','']);
     FormatoEncabezado(['A','2:3','1','2','0','1','1','1','1','','','','']);
     FormatoEncabezado(['B','2:3','1','2','0','1','1','1','1','','','','']);
     FormatoEncabezado(['C:D','2:3','1','2','0','1','1','1','1','','','','']);
     i := 5;
     While i < MaxPos do
     begin
         FormatoEncabezado([columnas[i]+':'+columnas[i+1],'2:2','1','2','0','1','1','1','1','','','','']);
         Excel.Range[columnas[i]+IntToStr(Ren)+':'+columnas[i]+IntToStr(Ren)].FormulaArray     := '=SUMA('+columnas[i]+'4:'+columnas[i]+IntToStr(Ren-1)+')';
         Excel.Range[columnas[i+1]+IntToStr(Ren)+':'+columnas[i+1]+IntToStr(Ren)].FormulaArray := '=SUMA('+columnas[i+1]+'4:'+columnas[i+1]+IntToStr(Ren-1)+')';
         i := i + 2;
     end;

     FormatoEncabezado([columnas[MaxPos],'2:3','1','2','0','1','1','1','1','','','','']);
     FormatoEncabezado([columnas[5]+':'+columnas[MaxPos-1],'3:3','','2','0','1','1','1','1','1','','','']);
     FormatoEncabezado(['A:'+columnas[MaxPos],'2:3','','','0','','','','','','$00262626','$00E4CCB8','']);
     FormatoEncabezado(['E:'+columnas[MaxPos-1],IntToStr(Ren),'','','0','1','1','1','1','','','$00E4CCB8','']);

     //Cuerpo del reporte
     FormatoEncabezado(['A:B','4:'+IntToStr(Ren -1),'','2','','1','1','1','1','1','','','']);
     FormatoEncabezado(['B','4:'+IntToStr(Ren -1),'','','','','','','','','','','mm/dd/aaaa']);
     FormatoEncabezado(['C:D','4:4','1','1','','1','1','1','1','','','','']);
     Excel.Range['C4:D4'].Select;
     Excel.Range['C4:D4'].Copy;
     Excel.Range['C4:D'+IntToStr(Ren-1)].Select;
     Excel.Selection.PasteSpecial(xlPasteFormats, xlNone, False, False);
     Excel.CutCopyMode := False;
     FormatoEncabezado(['E:'+columnas[MaxPos-1],'4:'+IntToStr(Ren -1),'','3','','1','1','1','1','1','','','']);
     FormatoEncabezado([columnas[MaxPos],'4:'+IntToStr(Ren -1),'','1','','1','1','1','1','1','','','']);
     FormatoEncabezado(['E'+':'+columnas[MaxPos-1],'4:'+IntToStr(Ren),'','3','','1','1','1','1','1','','','_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)']);
     Excel.Range['A2:A2'].Select;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      Hoja.Name := 'ORDENES DE COMPRA ';
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
        PanelProgress.Visible := False;
      end;
    end;

    Result := Resultado;
  end;

begin
    {$REGION 'Mostrar Excel'}
    // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    if not SaveDialog1.Execute then
      Exit;
      // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
    except
      FreeAndNil(Excel);
      showmessage('No es posible generar el archivo de EXCEL, informe de esto al administrador del sistema.');
      Exit;
    end;

    if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := True;
    end
    else
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := False;
    end;

    PanelProgress.Visible := True;
    Label15.Refresh;
    Label16.Refresh;
    BarraEstado.Position := 0;

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
    begin
          // Grabar el archivo de excel con el nombre dado
      Excel.Visible := True;
      Excel.DisplayAlerts := True;
      Excel.ScreenUpdating := True;
      PanelProgress.Visible := False;
      messageDlg('El Archivo se generó Correctamente!', mtInformation, [mbOk], 0);
    end;

    Excel := '';

    if CadError <> '' then
      showmessage(CadError);
    {$ENDREGION}
end;

procedure TfrmReportesAlmacen.formatoEncabezado(const Datos : array of string);
var
   i, conteo : integer;
   Letra, Fila, Columna, CFilaA, CFilaB :string;
   Num   :double;
begin
    conteo := 0;
    for i := Low(Datos) to High (Datos) do
    begin
       inc(conteo);
       if conteo = 1 then
          Columna := Datos[i];

       //Ahora a dar formato a los datos
       if conteo = 2 then
       begin
           Fila := Datos[i];
           if pos(':', Columna) > 0 then
           begin
               CFilaA := copy(Columna,1,pos(':',Columna)-1);
               CFilaB := copy(Columna,pos(':',columna)+ 1, length(Columna));
           end
           else
           begin
               CFilaA := Columna;
               CFIlaB := Columna;
           end;

           if pos(':', Fila) > 0 then
           begin
               CFilaA := CFilaA + copy(Fila,1,pos(':',Fila)-1);
               CFilaB := CFilaB + copy(Fila,pos(':',Fila) + 1, length(Fila) );
           end
           else
           begin
               CFilaA := CFilaA + Fila;
               CFilaB := CFilaB + Fila;
           end;

           Hoja.Range[CFilaA+':'+CFilaB].Select;
           Excel.Selection.VerticalAlignment := xlCenter;
       end;

       if conteo = 3 then
          if trim(Datos[i])<> '' then
             Excel.Selection.MergeCells := StrToInt(Datos[i]);

        if conteo = 4 then
          if trim(Datos[i])<> '' then
          begin
              if Datos[i] = '1' then
                 Excel.Selection.HorizontalAlignment   := xlLeft;

              if Datos[i] = '2' then
                 Excel.Selection.HorizontalAlignment   := xlCenter;

              if Datos[i] = '3' then
                 Excel.Selection.HorizontalAlignment   := xlRight;
          end;

       if conteo = 5 then
          if trim(Datos[i])<> '' then
             Excel.Selection.WrapText := StrToInt(Datos[i]);

       if conteo = 6 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
              Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
          end;
       if conteo = 7 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
              Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
          end;

       if conteo = 8 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
              Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
          end;

       if conteo = 9 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
              Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
          end;

       if conteo = 10 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlInsideVertical].LineStyle   := xlContinuous;
              Excel.Selection.Borders[xlInsideVertical].Weight      := xlThin;
              Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
              Excel.Selection.Borders[xlInsidehorizontal].Weight    := xlThin;
          end;

        if conteo = 11 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Color := StringToColor(Datos[i]);

       if conteo = 12 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Interior.Color := StringToColor(Datos[i]);

       if conteo = 13 then
          if trim(Datos[i])<> '' then
             Excel.Selection.NumberFormat := Datos[i];

    end;
end;

procedure TfrmReportesAlmacen.AnchoColumnas(const Ancho: array of string);
var
   i, conteo : integer;
   Letra :string;
   Num   :double;
begin
   conteo := 0;
   for i := Low(Ancho) to High (Ancho) do
   begin
      inc(conteo);
      if conteo = 1 then
         Letra := Ancho[i];

      //Ahora a dar formato a los encabezados
      if conteo = 2 then
      begin
          Num := StrToFloat(Ancho[i]);
          if pos(':', Letra) > 0 then
             Excel.Columns[Letra].ColumnWidth := Num
          else
             Excel.Columns[Letra+':'+Letra].ColumnWidth := Num;
          conteo := 0;
      end;
   end;
end;

procedure TfrmReportesAlmacen.TextoColumnasColorFondo(const Datos: array of string);
var
   i, conteo : integer;
   Letra, Fila, Columna, CFilaA, CFilaB :string;
   Num   :double;
begin
    conteo := 0;
    for i := Low(Datos) to High (Datos) do
    begin
       inc(conteo);
       if conteo = 1 then
          Columna := Datos[i];

       //Ahora a dar formato a los datos
       if conteo = 2 then
       begin
           Fila := Datos[i];
           if pos(':', Columna) > 0 then
           begin
               CFilaA := copy(Columna,1,pos(':',Columna)-1);
               CFilaB := copy(Columna,pos(':',columna)+ 1, length(Columna));
           end
           else
           begin
               CFilaA := Columna;
               CFIlaB := Columna;
           end;

           if pos(':', Fila) > 0 then
           begin
               CFilaA := CFilaA + copy(Fila,1,pos(':',Fila)-1);
               CFilaB := CFilaB + copy(Fila,pos(':',Fila) + 1, length(Fila) );
           end
           else
           begin
               CFilaA := CFilaA + Fila;
               CFilaB := CFilaB + Fila;
           end;

           Hoja.Range[CFilaA+':'+CFilaB].Select;
       end;

       if conteo = 3 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Value := Datos[i];

       if conteo = 4 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Format := Datos[i];

       if conteo = 5 then
          if trim(Datos[i])<> '' then
             Excel.Selection.RowHeight := StrToFloat(Datos[i]);

       if conteo = 6 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Name := Datos[i];

       if conteo = 7 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Size := StrToInt(Datos[i]);

       if conteo = 8 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Bold := StrToInt(Datos[i]);

       if conteo = 9 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Italic := StrToInt(Datos[i]);

       if conteo = 10 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Underline := StrToInt(Datos[i]);

       if conteo = 11 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Color := StringToColor(Datos[i]);

       if conteo = 12 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Interior.Color := StringToColor(Datos[i]);

    end;
end;

end.

