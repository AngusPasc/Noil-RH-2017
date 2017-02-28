unit frm_tripulacion_diaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids, global, frm_connection, utilerias,
  DB, ADODB, Buttons, ExtCtrls, frxClass, frxDBSet, ZAbstractRODataset,
  ZDataset, ZAbstractDataset, Controls, Menus, dblookup, UnitExcepciones, udbgrid, UFunctionsGHH,
  DBDateTimePicker, UnitValidacion, rxToolEdit, rxCurrEdit, RXDBCtrl,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  TfrmTripulacionDiaria = class(TForm)
    ds_tripulacion: TDataSource;
    Panel1: TPanel;
    ttripulacion_nacionales: TEdit;
    ttripulacion_extranjeros: TEdit;
    DBTripulacion: TfrxDBDataset;
    DBTotalesxCategoria: TfrxDBDataset;
    frxTripulacion: TfrxReport;
    ds_categorias: TDataSource;
    categorias: TZReadOnlyQuery;
    tripulaciondiaria: TZQuery;
    qry_Tripulacion: TZQuery;
    qry_TripulacionsContrato: TStringField;
    qry_TripulaciondIdFecha: TDateField;
    qry_TripulacionsIdCategoria: TStringField;
    qry_TripulacionsIdTripulacion: TStringField;
    qry_TripulacioniNacionales: TIntegerField;
    qry_TripulacioniExtranjeros: TIntegerField;
    qry_TripulacionlAplicaPernocta: TStringField;
    qry_TripulacionsDescripcion: TStringField;
    Panel2: TPanel;
    lblTripulacion: TLabel;
    Label4: TLabel;
    txtCantidad: TEdit;
    Label5: TLabel;
    cmdAgregar: TButton;
    Tripulacion: TZReadOnlyQuery;
    cmdSalir: TButton;
    PopupMenu1: TPopupMenu;
    ripulacinDiariaDiaAnterior1: TMenuItem;
    ZLookTripulacion: TZQuery;
    ds_looktripulacion: TDataSource;
    tsIdTripulacion: TDBLookupComboBox;
    ds_turnos: TDataSource;
    QryTurnos: TZQuery;
    qryTripulacionPernoctaFuera: TZQuery;
    dsTripulacionPernoctaFuera: TDataSource;
    GroupBox1: TGroupBox;
    dCantidadPernoctaFuera: TRxDBCalcEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Button1: TButton;
    Label8: TLabel;
    qryTripulacionPernoctaFuerasContrato: TStringField;
    qryTripulacionPernoctaFuerasIdTurno: TStringField;
    qryTripulacionPernoctaFueradIdFecha: TDateField;
    qryTripulacionPernoctaFueradCantidad: TFloatField;
    qryTripulacionPernoctaFueradCantidadBordo: TFloatField;
    qryTripulacionPernoctaFueramNotas: TMemoField;
    ActualizaPersonal: TMenuItem;
    Label9: TLabel;
    iEspacios: TRxDBCalcEdit;
    qryTripulacionPernoctaFueramEspacios: TMemoField;
    qryTripulacionPernoctaFueraiEspacios: TIntegerField;
    qry_TripulacionsOrden: TStringField;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    tsIdCategoria: TDBLookupComboBox;
    btnUpdate: TBitBtn;
    btnPrinter: TBitBtn;
    btnNuevo: TBitBtn;
    btnDelete: TBitBtn;
    tdIdFecha: TDBDateTimePicker;
    cmbTurnos: TDBLookupComboBox;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_tripulacion: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure ttripulacion_nacionalesKeyPress(Sender: TObject;
      var Key: Char);
    procedure ttripulacion_extranjerosKeyPress(Sender: TObject;
      var Key: Char);
    procedure tdIdFechaExit(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure qry_tripulacionAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure qry_tripulacionCalcFields(DataSet: TDataSet);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure tsIdCategoriaExit(Sender: TObject);
    procedure cmdAgregarClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure cmdSalirClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure ripulacinDiariaDiaAnterior1Click(Sender: TObject);
    procedure frxTripulacionGetValue(const VarName: string; var Value: Variant);
    procedure tsIdTripulacionExit(Sender: TObject);
    procedure tsIdCategoriaEnter(Sender: TObject);
    procedure tsIdTripulacionEnter(Sender: TObject);
    procedure txtCantidadEnter(Sender: TObject);
    procedure txtCantidadExit(Sender: TObject);
    procedure dbgrd_rMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgrd_rMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_rTitleClick(Column: TColumn);
    procedure qry_TripulacionBeforePost(DataSet: TDataSet);
    procedure txtCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure txtCantidadChange(Sender: TObject);
    procedure cmbTurnosExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qryTripulacionPernoctaFueraAfterScroll(DataSet: TDataSet);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure ActualizaPersonalClick(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTripulacionDiaria: TfrmTripulacionDiaria;
  sFirma_PEP, sPuesto_PEP, sFirma_Contratista, sPuesto_Contratista: string;
  fechaAntes: tDate;
  utgrid: ticdbgrid;
implementation

{$R *.dfm}

procedure TfrmTripulacionDiaria.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  {if key = #13 then
    tsIdCategoria.SetFocus  }
end;

procedure TfrmTripulacionDiaria.tsIdCategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
 { if key = #13 then
    grid_tripulacion.SetFocus   }
end;

procedure TfrmTripulacionDiaria.tsIdTripulacionEnter(Sender: TObject);
begin
  tsidtripulacion.Color := global_color_entrada;
end;

procedure TfrmTripulacionDiaria.tsIdTripulacionExit(Sender: TObject);
begin
  tsidtripulacion.Color := global_color_salida;
  if tsidtripulacion.KeyValue <> null then
    lblTripulacion.Caption := 'Tripulacion ' + tsIdTripulacion.KeyValue;
end;

procedure TfrmTripulacionDiaria.ttripulacion_nacionalesKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    ttripulacion_extranjeros.SetFocus
end;

procedure TfrmTripulacionDiaria.txtCantidadChange(Sender: TObject);
begin
  tEditChangef(txtCantidad, 'Cantidad');
end;

procedure TfrmTripulacionDiaria.txtCantidadEnter(Sender: TObject);
begin
  txtcantidad.Color := global_color_entrada;
end;

procedure TfrmTripulacionDiaria.txtCantidadExit(Sender: TObject);
begin
  txtcantidad.Color := global_color_salida
end;

procedure TfrmTripulacionDiaria.txtCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTedit(txtCantidad, key) then
    key := #0;
end;

procedure TfrmTripulacionDiaria.ttripulacion_extranjerosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tdidFecha.SetFocus
end;

//Inicio LA forma

procedure TfrmTripulacionDiaria.FormShow(Sender: TObject);
begin


  tdIdFecha.Date := Date();
  tdIdFecha.SetFocus;

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ASC');
  connection.zCommand.Open;

  fechaAntes := date;
  if connection.zCommand.RecordCount > 0 then
  begin
    fechaAntes := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
    while not connection.zCommand.Eof do
    begin
      if tdIdFecha.Date >= connection.zCommand.FieldByName('dFechaVigencia').AsDateTime then
        fechaAntes := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
      connection.zCommand.Next;
    end;
  end;

  Categorias.Active := False;
  Categorias.ParamByName('fecha').AsDate := fechaAntes;
  Categorias.Open;

  QryTurnos.Active := False;
  QryTurnos.ParamByName('Contrato').AsString := global_contrato_barco;
  QryTurnos.Open;

  cmbTurnos.KeyValue := 'A';

  Tripulacion.Active := False;
  Tripulacion.SQL.Clear;
  Tripulacion.SQL.Add('select * from tripulacion where sContrato = :Contrato and dFechaVigencia =:Fecha order by sIdTripulacion');
  Tripulacion.params.ParamByName('Contrato').DataType := ftString;
  Tripulacion.params.ParamByName('Contrato').Value := Global_Contrato_barco;
  Tripulacion.params.ParamByName('fecha').DataType := ftDate;
  Tripulacion.params.ParamByName('fecha').Value := fechaAntes;
  Tripulacion.Open;
end;

procedure TfrmTripulacionDiaria.frxTripulacionGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'FECHA_REPORTE') = 0 then
    Value := global_fecha_barco;

  if CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
    Value := global_dias_por_transcurrir;

  if CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
    Value := global_dias_transcurridos;

  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    Value := sSuperIntendente;

  if CompareText(VarName, 'SUPERVISOR') = 0 then
    Value := sSupervisor;

  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    Value := sSupervisorTierra;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;

  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    Value := sPuestoSupervisor;

  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    Value := sPuestoSupervisorTierra;

  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
    'where sContrato =:Contrato and dFechaInicio <= :Fecha and dFechaFinal >=:Fecha order by dFechaInicio');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate := tdIdFecha.date;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select sDescripcion from pernoctan where sIdPernocta =:Embarcacion ');
    connection.QryBusca2.ParamByName('Embarcacion').AsString := connection.QryBusca.FieldValues['sIdEmbarcacion'];
    connection.QryBusca2.Open;
    if CompareText(VarName, 'EMBARCACION') = 0 then
      Value := connection.QryBusca2.FieldValues['sDescripcion'];
  end;

  //Aqui consultamos que las ordenes esten autorizadas
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from reportediario where dIdFecha =:fecha and lStatus  <> "Autorizado" '+
                              'and sContrato <> :Contrato');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate      := tdIdFecha.date;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
      if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
         Value := 'No';
  end
  else
  begin
      if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
         Value := 'Si';
  end;
end;

procedure TfrmTripulacionDiaria.dbgrd_rMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//if grid_tripulacion.datasource.DataSet.IsEmpty=false  then
//if grid_tripulacion.DataSource.DataSet.RecordCount>0 then
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmTripulacionDiaria.dbgrd_rMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//if grid_tripulacion.datasource.DataSet.IsEmpty=false  then
//if grid_tripulacion.DataSource.DataSet.RecordCount>0 then
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmTripulacionDiaria.dbgrd_rTitleClick(Column: TColumn);
begin
//if grid_tripulacion.datasource.DataSet.IsEmpty=false  then
  if TcxGridDBTableView(grid_tripulacion.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
   UtGrid.DbGridTitleClick(Column);
end;

//Consultar la Fecha

procedure TfrmTripulacionDiaria.tdIdFechaExit(Sender: TObject);
begin
  tdidfecha.Color := global_color_salida;
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ASC');
  connection.zCommand.Open;

  fechaAntes := date;
  if connection.zCommand.RecordCount > 0 then
  begin
    fechaAntes := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
    while not connection.zCommand.Eof do
    begin
      if tdIdFecha.Date >= connection.zCommand.FieldByName('dFechaVigencia').AsDateTime then
         fechaAntes := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
      connection.zCommand.Next;
    end;
  end;

  Tripulacion.Active := False;
  Tripulacion.SQL.Clear;
  Tripulacion.SQL.Add('select * from tripulacion where sContrato = :Contrato and dFechaVigencia =:Fecha order by sIdTripulacion');
  Tripulacion.params.ParamByName('Contrato').DataType := ftString;
  Tripulacion.params.ParamByName('Contrato').Value    := Global_Contrato_barco;
  Tripulacion.params.ParamByName('fecha').DataType    := ftDate;
  Tripulacion.params.ParamByName('fecha').Value       := fechaAntes;
  Tripulacion.Open;

  Categorias.Active := False;
  Categorias.ParamByName('fecha').AsDate := fechaAntes;
  Categorias.Open;


  with qry_tripulacion do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT * FROM tripulaciondiaria where sContrato = :contrato and dIdfecha = :fecha and sIdTurno =:Turno ');
    params.ParamByName('contrato').DataType := ftString;
    params.ParamByName('contrato').Value := global_contrato_barco;
    params.ParamByName('fecha').DataType := ftDate;
    params.ParamByName('fecha').Value := tdIdFecha.Date;
    params.ParamByName('turno').DataType := ftString;
    params.ParamByName('turno').Value := QryTurnos.FieldValues['sIdTurno'];
    Open;
    if qry_Tripulacion.RecordCount = 0 then
    begin
      ttripulacion_nacionales.Text := '0';
      ttripulacion_extranjeros.Text := '0';
      qry_Tripulacion.Close;
    end;
  end;

  qryTripulacionPernoctaFuera.Active := false;
  qryTripulacionPernoctaFuera.params.ParamByName('contrato').DataType := ftString;
  qryTripulacionPernoctaFuera.params.ParamByName('contrato').Value := global_contrato_barco;
  qryTripulacionPernoctaFuera.params.ParamByName('fecha').DataType := ftDate;
  qryTripulacionPernoctaFuera.params.ParamByName('fecha').Value := tdIdFecha.Date;
  qryTripulacionPernoctaFuera.params.ParamByName('turno').DataType := ftString;
  qryTripulacionPernoctaFuera.params.ParamByName('turno').Value := QryTurnos.FieldValues['sIdTurno'];
  qryTripulacionPernoctaFuera.Open;

  //Consultamos los tipos de personal que se deben mostrar en personal y equipo..
  connection.QryBusca.Active := FalsE;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from reportediario where dIdFecha =:Fecha and sContrato <> :contrato group by sContrato ');
  connection.QryBusca.ParamByName('fecha').AsDate      := tdIdfecha.Date;
  connection.QryBusca.ParamByName('contrato').AsString := connection.contrato.FieldValues['sCodigo'];
  connection.QryBusca.Open;

  //grid_tripulacion.Columns[2].PickList.add('');
  while not connection.QryBusca.Eof do
  begin
    //  grid_tripulacion.Columns[2].PickList.add(connection.QryBusca.FieldValues['sContrato']);
      connection.QryBusca.Next;
  end;

end;


//Consultar la Categoria

procedure TfrmTripulacionDiaria.ActualizaPersonalClick(Sender: TObject);
var
    zPersonal, zInserta, zBusca, zTripulacion  : tzReadOnlyQuery;
    lEncuentra : boolean;
    Categoria  : string;
begin
    zPersonal := tzReadOnlyQuery.Create(self);
    zPersonal.Connection := connection.zConnection;

    zInserta := tzReadOnlyQuery.Create(self);
    zInserta.Connection := connection.zConnection;

    zBusca := tzReadOnlyQuery.Create(self);
    zBusca.Connection := connection.zConnection;

    zTripulacion := tzReadOnlyQuery.Create(self);
    zTripulacion.Connection := connection.zConnection;

    if qry_tripulacion.RecordCount > 0 then
    begin
        zTripulacion.Active := False;
        zTripulacion.SQL.Clear;
        zTripulacion.SQL.Add('select * from tripulaciondiaria where sContrato =:Contrato and sIdTurno =:Turno and dIdFecha =:fecha ');
        zTripulacion.ParamByName('contrato').AsString := global_contrato_barco;
        zTripulacion.ParamByName('turno').AsString    := QryTurnos.FieldValues['sIdTurno'];
        zTripulacion.ParamByName('fecha').AsDate      := tdIdFecha.Date;
        zTripulacion.Open;

        zPersonal.Active := False;
        zPersonal.SQL.Clear;
        zPersonal.SQL.Add('select p.sAgrupaPersonal, sum(b.dCantidad) as dCantidad, p.sDescripcion from bitacoradepersonal b '+
                          'inner join personal p on(b.sContrato = p.sContrato  and p.sIdPersonal = b.sIdPersonal) '+
                          'where b.dIdFecha  = :fecha and sIdTipoPersonal = "PE-C" group by b.sAgrupaPersonal order by p.iItemOrden');
        zPersonal.ParamByName('fecha').AsDate := tdIdFecha.Date;
        zPersonal.Open;

        //Personal de reportes diarios..
        while not zPersonal.Eof do
        begin
            //Personal de tripulacion..
            lEncuentra :=  False;
            zTripulacion.First;
            while not zTripulacion.Eof do
            begin
                if zTripulacion.FieldValues['sIdTripulacion'] = zPersonal.FieldValues['sAgrupaPersonal']  then
                begin
                    lEncuentra := True;
                    Categoria  := zTripulacion.FieldValues['sIdCategoria'];
                    zTripulacion.Last;
                end;
                zTripulacion.Next;
            end;

            //Verificamos si se encontro la categoria de personal en la zTripulacion diaria,
            if lEncuentra  then
            begin
                zInserta.Active := False;
                zInserta.SQL.Clear;
                zInserta.SQL.Add('Update tripulaciondiaria set iNacionales =:cantidad where sContrato =:Contrato and sIdTurno =:Turno '+
                                  'and dIdFecha =:Fecha and sIdCategoria =:Categoria and sIdTripulacion =:Tripulacion');
                zInserta.ParamByName('contrato').AsString    := global_contrato_barco;
                zInserta.ParamByName('turno').AsString       := QryTurnos.FieldValues['sIdTurno'];
                zInserta.ParamByName('fecha').AsDate         := tdIdFecha.Date;
                zInserta.ParamByName('categoria').AsString   := Categoria;
                zInserta.ParamByName('cantidad').AsFloat     := zPersonal.FieldValues['dCantidad'];
                zInserta.ParamByName('tripulacion').AsString := zPersonal.FieldValues['sAgrupaPersonal'];
                zInserta.ExecSQL;
            end
            else
            begin
                //Buscamos la categoria de la tripulacion que sea del Anexo de Personal,,
                zBusca.Active := False;
                zBusca.SQL.Clear;
                zBusca.SQL.Add('select sIdCategoria from categorias where dFechaVigencia =:fecha and lPersonalAnexo = "Si" ');
                zBusca.ParamByName('fecha').AsDate   := fechaAntes;
                zBusca.Open;

                if zBusca.RecordCount > 0 then
                   categoria := zBusca.FieldValues['sIdCategoria']
                else
                begin
                    messageDLG('No existe una Categoría que Considere Personal de Anexo "Si", Ver Administración de Catálogos [Categorías]', mtInformation, [mbOk], 0);
                    exit;
                end;

                //Ahora buscamos la categoria en el catalogo de tripulacion..
                zBusca.Active := False;
                zBusca.SQL.Clear;
                zBusca.SQL.Add('select sIdTripulacion from tripulacion where sContrato =:Contrato and dFechaVigencia =:fecha and sIdCategoria =:Categoria and sIdTripulacion =:Tripulacion ');
                zBusca.ParamByName('contrato').AsString    := global_contrato_barco;
                zBusca.ParamByName('fecha').AsDate         := fechaAntes;
                zBusca.ParamByName('categoria').AsString   := categoria;
                zBusca.ParamByName('tripulacion').AsString := zPersonal.FieldValues['sAgrupaPersonal'];
                zBusca.Open;

                //Si no se encuentra la damos de alta en el catalogo..
                if zBusca.RecordCount = 0 then
                begin
                    zInserta.Active := False;
                    zInserta.SQL.Clear;
                    zInserta.SQL.Add('Insert into tripulacion (sContrato, dFechaVigencia, sIdCategoria, sIdTripulacion, sDescripcion, iNacionales, iExtranjeros ) '+
                                      'values (:Contrato, :fecha, :categoria, :tripulacion, :descripcion, 0, 0)');
                    zInserta.ParamByName('contrato').DataType    := ftString;
                    zInserta.ParamByName('contrato').value       := Global_Contrato_barco;
                    zInserta.ParamByName('fecha').DataType       := ftDate;
                    zInserta.ParamByName('fecha').value          := fechaAntes;
                    zInserta.ParamByName('categoria').DataType   := ftString;
                    zInserta.ParamByName('categoria').value      := categoria;
                    zInserta.ParamByName('tripulacion').DataType := ftString;
                    zInserta.ParamByName('tripulacion').value    := zPersonal.FieldValues['sAgrupaPersonal'];
                    zInserta.ParamByName('Descripcion').DataType := ftString;
                    zInserta.ParamByName('Descripcion').value    := zPersonal.FieldValues['sAgrupaPersonal'] +' '+zPersonal.FieldValues['sDescripcion'];
                    zInserta.ExecSQL;
                end;

                //Insertamos la tripulaicon diaria..
                zInserta.Active := False;
                zInserta.SQL.Clear;
                zInserta.SQL.Add('Insert into tripulaciondiaria (sContrato, sIdTurno, dIdFecha, sIdCategoria, sIdTripulacion, iNacionales, iExtranjeros ) '+
                                  'values (:Contrato, :turno, :fecha, :categoria, :tripulacion, :nacionales, :extranjeros)');
                zInserta.ParamByName('contrato').DataType    := ftString;
                zInserta.ParamByName('contrato').value       := Global_Contrato_barco;
                zInserta.ParamByName('Turno').DataType       := ftString;
                zInserta.ParamByName('Turno').value          := QryTurnos.FieldValues['sIdTurno'];
                zInserta.ParamByName('fecha').DataType       := ftDate;
                zInserta.ParamByName('fecha').value          := tdIdFecha.Date;
                zInserta.ParamByName('categoria').DataType   := ftString;
                zInserta.ParamByName('categoria').value      := categoria;
                zInserta.ParamByName('tripulacion').DataType := ftString;
                zInserta.ParamByName('tripulacion').value    := zPersonal.FieldValues['sAgrupaPersonal'];
                zInserta.ParamByName('Nacionales').DataType  := ftInteger;
                zInserta.ParamByName('Nacionales').value     := zPersonal.FieldValues['dCantidad'];
                zInserta.ParamByName('Extranjeros').DataType := ftInteger;
                zInserta.ParamByName('Extranjeros').value    := 0;
                zInserta.ExecSQL;
            end;
            zPersonal.Next;
        end;

        //Sino se encontro personal reportado y se hizo el recalculo..
        if zPersonal.RecordCount = 0 then
        begin
            zPersonal.Active := False;
            zPersonal.SQL.Clear;
            zPersonal.SQL.Add('select sAgrupaPersonal from personal where sContrato =:Contrato ');
            zPersonal.ParamByName('Contrato').AsString := global_contrato_barco;
            zPersonal.Open;

            zBusca.Active := False;
            zBusca.SQL.Clear;
            zBusca.SQL.Add('select * from tripulaciondiaria where sContrato =:Contrato and sIdTurno =:Turno and dIdFecha =:fecha ');
            zBusca.ParamByName('contrato').AsString := global_contrato_barco;
            zBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
            zBusca.ParamByName('Turno').AsString    := Qryturnos.FieldValues['sIdTurno'] ;
            zBusca.Open;

            while not zBusca.Eof do
            begin
                zPersonal.First;
                while not zPersonal.Eof do
                begin
                    if zPersonal.FieldValues['sAgrupaPersonal'] = zBusca.FieldValues['sIdTripulacion'] then
                    begin
                        zInserta.Active := False;
                        zInserta.SQL.Clear;
                        zInserta.SQL.Add('Update tripulaciondiaria set iNacionales =:cantidad where sContrato =:Contrato and sIdTurno =:Turno '+
                                         'and dIdFecha =:Fecha and sIdCategoria =:Categoria and sIdTripulacion =:Tripulacion');
                        zInserta.ParamByName('contrato').AsString    := global_contrato_barco;
                        zInserta.ParamByName('turno').AsString       := zBusca.FieldValues['sIdTurno'];
                        zInserta.ParamByName('fecha').AsDate         := zBusca.FieldValues['dIdFecha'];
                        zInserta.ParamByName('categoria').AsString   := zBusca.FieldValues['sIdCategoria'];
                        zInserta.ParamByName('cantidad').AsFloat     := 0;
                        zInserta.ParamByName('tripulacion').AsString := zBusca.FieldValues['sIdTripulacion'];
                        zInserta.ExecSQL;
                    end;
                    zPersonal.Next;
                end;
                zBusca.Next;
            end;
        end;
    end
    else
       messageDLG('Primero debe Agregar Personal de Tripulacion!', mtInformation, [mbOk], 0);

    btnUpdate.Click;
    Qry_Tripulacion.Refresh;
    Qry_tripulacion.First;

    zPersonal.Destroy;
    zInserta.Destroy;
    zBusca.Destroy;
    zTripulacion.Destroy;
end;

procedure TfrmTripulacionDiaria.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTripulacionDiaria.btnUpdateClick(Sender: TObject);
begin
  if (not qry_Tripulacion.active) or (qry_Tripulacion.RecordCount < 1) then
    exit;
  ttripulacion_nacionales.Text := '0';
  ttripulacion_extranjeros.Text := '0';
  qry_tripulacion.First;
  try
    Connection.zcommand.Active := False;
    Connection.zcommand.SQL.Clear;
    Connection.zcommand.SQL.Add('begin');
    Connection.zcommand.ExecSQL;
    while not qry_tripulacion.eof do
    begin
      ttripulacion_nacionales.Text := inttostr(strtoint(ttripulacion_nacionales.Text) + qry_tripulacion.FieldValues['iNacionales']);
      ttripulacion_extranjeros.Text := inttostr(strtoint(ttripulacion_extranjeros.Text) + qry_tripulacion.FieldValues['iExtranjeros']);

      Connection.zcommand.Active := False;
      Connection.zcommand.SQL.Clear;
      Connection.zcommand.SQL.Add('UPDATE tripulaciondiaria SET iNacionales = :nacionales , ' +
        'iExtranjeros = :extranjeros WHERE sContrato = :contrato and ' +
        'dIdFecha = :fecha and sIdCategoria = :categoria and sIdTripulacion = :tripulacion and sIdTurno =:Turno ');
      Connection.zcommand.params.ParamByName('nacionales').DataType := ftInteger;
      Connection.zcommand.params.ParamByName('nacionales').value := qry_tripulacion.FieldValues['iNacionales'];
      Connection.zcommand.params.ParamByName('extranjeros').DataType := ftInteger;
      Connection.zcommand.params.ParamByName('extranjeros').value := qry_tripulacion.FieldValues['iExtranjeros'];
      Connection.zcommand.params.ParamByName('contrato').DataType := ftString;
      Connection.zcommand.params.ParamByName('contrato').value := global_contrato_barco;
      Connection.zcommand.params.ParamByName('Turno').DataType := ftString;
      Connection.zcommand.params.ParamByName('Turno').value := QryTurnos.FieldValues['sIdTurno'];
      Connection.zcommand.params.ParamByName('fecha').DataType := ftDate;
      Connection.zcommand.params.ParamByName('fecha').value := tdIdFecha.Date;
      Connection.zcommand.params.ParamByName('categoria').DataType := ftString;
      Connection.zcommand.params.ParamByName('categoria').value := tsIdCategoria.KeyValue;
      Connection.zcommand.params.ParamByName('tripulacion').DataType := ftString;
      Connection.zcommand.params.ParamByName('tripulacion').value := qry_tripulacion.FieldValues['sIdTripulacion'];
      Connection.zcommand.ExecSQL;
      qry_tripulacion.Next
    end;
    Connection.zcommand.Active := False;
    Connection.zcommand.SQL.Clear;
    Connection.zcommand.SQL.Add('commit');
    Connection.zcommand.ExecSQL;
  except;
    ShowMessage('Error al actualizar !!');
    Connection.zcommand.Active := False;
    Connection.zcommand.SQL.Clear;
    Connection.zcommand.SQL.Add('rollback');
    Connection.zcommand.ExecSQL;
  end;
  qry_tripulacion.Refresh;
end;

procedure TfrmTripulacionDiaria.Button1Click(Sender: TObject);
var
   espacios : string;
   i        : integer;
begin
  try

    btnUpdate.Click;

    if qryTripulacionPernoctaFuera.RecordCount > 0 then
      qryTripulacionPernoctaFuera.Edit
    else
    begin
       // qryTripulacionPernoctaFuera.Append;
       // qryTripulacionPernoctaFuera.FieldValues['sContrato'] := global_contrato;
       // qryTripulacionPernoctaFuera.FieldValues['sIdTurno'] := QryTurnos.FieldValues['sIdTurno'];
       // qryTripulacionPernoctaFuera.FieldValues['dIdFecha'] := tdIdFecha.Date;
    end;

    i := 1;
    espacios := '';
    while i < iEspacios.Value do
    begin
        espacios := espacios + #13;
        inc(i);
    end;

    if qryTripulacionPernoctaFuera.State in [dsInsert, dsEdit] then
    begin
      qryTripulacionPernoctaFuera.FieldValues['sContrato']  := global_contrato_barco;
      qryTripulacionPernoctaFuera.FieldValues['sIdTurno']   := QryTurnos.FieldValues['sIdTurno'];
      qryTripulacionPernoctaFuera.FieldValues['dIdFecha']   := tdIdFecha.Date;
      qryTripulacionPernoctaFuera.FieldValues['dCantidad']  := dCantidadPernoctaFuera.Value;
      qryTripulacionPernoctaFuera.FieldValues['dCantidadBordo'] := strtoint(ttripulacion_nacionales.Text) - dCantidadPernoctaFuera.Value;
      qryTripulacionPernoctaFuera.FieldValues['mEspacios']  := espacios;
      qryTripulacionPernoctaFuera.Post;
      qryTripulacionPernoctaFuera.Refresh;
    end;

  except
    on e: exception do begin
      MessageDlg(E.Message, mtError, [mbOk], 0);
//      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulacion Diaria', 'Al salvar registro', 0);
    end;
  end;

end;

procedure TfrmTripulacionDiaria.qryTripulacionPernoctaFueraAfterScroll(
  DataSet: TDataSet);
begin
(*      qryTripulacionPernoctaFuera.FieldValues['sContrato'] := global_contrato;
      qryTripulacionPernoctaFuera.FieldValues['sIdTurno'] := QryTurnos.FieldValues['sIdTurno'];
      qryTripulacionPernoctaFuera.FieldValues['dIdFecha'] := tdIdFecha.Date;*)
end;

procedure TfrmTripulacionDiaria.qry_tripulacionAfterInsert(
  DataSet: TDataSet);
begin
  qry_tripulacion.Cancel
end;

procedure TfrmTripulacionDiaria.qry_TripulacionBeforePost(DataSet: TDataSet);
begin
  if qry_Tripulacion.FieldValues['inacionales'] < 0 then
    qry_Tripulacion.cancel;
  if qry_Tripulacion.FieldValues['iExtranjeros'] < 0 then
    qry_Tripulacion.cancel;


  if qry_tripulacionsOrden.Text = '' then
     qry_tripulacionsOrden.text := ''
  else
  begin
      //Consultamos los tipos de personal que se deben mostrar en personal y equipo..
      connection.QryBusca.Active := FalsE;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select * from reportediario where dIdFecha =:Fecha and sContrato <> :contrato and sContrato like :orden group by sContrato ');
      connection.QryBusca.ParamByName('fecha').AsDate      := tdIdfecha.Date;
      connection.QryBusca.ParamByName('contrato').AsString := connection.contrato.FieldValues['sCodigo'];
      connection.QryBusca.ParamByName('orden').AsString    := '%'+qry_tripulacionsOrden.Text + '%';
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
         qry_tripulacionsOrden.text := connection.QryBusca.FieldValues['sContrato'];

      if connection.QryBusca.RecordCount = 0 then
      begin
         messageDLg('No existen esta orden en los reportes diarios!', mtInformation, [mbOk], 0);
         Abort;
         exit;
      end;
  end;
end;

procedure TfrmTripulacionDiaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  
  action := cafree;
end;

procedure TfrmTripulacionDiaria.tdIdFechaEnter(Sender: TObject);
begin
  tdIdFecha.Color := global_Color_entrada
end;


procedure TfrmTripulacionDiaria.qry_tripulacionCalcFields(
  DataSet: TDataSet);
begin

  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select sDescripcion from tripulacion Where sContrato =:Contrato ' +
    'And sIdCategoria = :Categoria And sIdTripulacion = :CatTripulacion and dFechaVigencia =:Fecha ');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := Global_Contrato_barco;
  Connection.QryBusca.Params.ParamByName('Categoria').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Categoria').Value := qry_Tripulacion.FieldValues['sIdCategoria'];
  Connection.QryBusca.Params.ParamByName('CatTripulacion').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('CatTripulacion').Value := qry_Tripulacion.FieldValues['sIdTripulacion'];
  Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  Connection.QryBusca.Params.ParamByName('Fecha').Value := fechaAntes;
  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
    qry_TripulacionsDescripcion.Text := Connection.QryBusca.FieldValues['sDescripcion'];


end;



procedure TfrmTripulacionDiaria.ripulacinDiariaDiaAnterior1Click(
  Sender: TObject);
var
  dFechaAnterior : tDate;
  lNuevaVigencia : boolean;

begin
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select * from tripulaciondiaria Where sContrato =:Contrato And dIdFecha =:Fecha');
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Contrato').Value    := Global_Contrato_barco;
  Connection.qryBusca.Params.ParamByName('Fecha').Datatype    := ftDate;
  Connection.qryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.DateTime;
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    if MessageDlg('Desea Eliminar todo la Tripulacion Asignado?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Delete From tripulaciondiaria where sContrato = :contrato and dIdFecha = :fecha and sIdTurno =:Turno ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato_barco;
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
      connection.zCommand.Params.ParamByName('Turno').Value := QryTurnos.FieldValues['sIdTurno'];
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.zCommand.ExecSQL;
    end;

  if MessageDlg('Desea adicionar todo la Tripulación Existente en el reporte anterior?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      //Ahora verificamos si las vigencias son diferentes,
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ASC');
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
      begin
          dFechaAnterior := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
          while not connection.zCommand.Eof do
          begin
              if tdIdFecha.Date  - 1 >= connection.zCommand.FieldByName('dFechaVigencia').AsDateTime then
                 dFechaAnterior := connection.zCommand.FieldByName('dFechaVigencia').AsDateTime;
              connection.zCommand.Next;
          end;

          if dFechaAnterior <> fechaAntes then
          begin
              messageDLG('Existe una Nueva Vigencia de personal con fecha del '+DateToStr(fechaAntes)+' diefrente al Dia Anterior. Los Datos se insertaran en 0', mtInformation, [mbOk], 0);

              Connection.Auxiliar.SQL.Clear;
              Connection.Auxiliar.SQL.Add('Select * from tripulacion Where dFechaVigencia =:Fecha');
              Connection.Auxiliar.Params.ParamByName('Fecha').Datatype    := ftDate;
              Connection.Auxiliar.Params.ParamByName('Fecha').Value       := FechaAntes;
              Connection.Auxiliar.Open;
          end
          else
          begin
              dFechaAnterior := tdIdFecha.Date - 1;
              Connection.Auxiliar.SQL.Clear;
              Connection.Auxiliar.SQL.Add('Select * from tripulaciondiaria Where sContrato =:Contrato And dIdFecha =:Fecha');
              Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
              Connection.Auxiliar.Params.ParamByName('Contrato').Value    := Global_Contrato_barco;
              Connection.Auxiliar.Params.ParamByName('Fecha').Datatype    := ftDate;
              Connection.Auxiliar.Params.ParamByName('Fecha').Value       := dFechaAnterior;
              Connection.Auxiliar.Open;
          end;
      end;

      if Connection.Auxiliar.RecordCount > 0 then
      begin
          Connection.zcommand.SQL.Clear;
          Connection.zcommand.SQL.Add('INSERT INTO tripulaciondiaria ( sContrato , sIdTurno, didFecha , sIdCategoria, sIdTripulacion, iNacionales, iExtranjeros ) ' +
            ' VALUES (:contrato , :Turno, :fecha  , :categoria , :tripulacion , :Nacionales , :Extranjeros )');
          while not Connection.Auxiliar.Eof do
          begin
            with connection do
            begin
                try
                  zcommand.params.ParamByName('contrato').DataType    := ftString;
                  zcommand.params.ParamByName('contrato').value       := Global_Contrato_barco;
                  zcommand.params.ParamByName('Turno').DataType       := ftString;
                  zcommand.params.ParamByName('Turno').value          := QryTurnos.FieldValues['sIdTurno'];
                  zcommand.params.ParamByName('Turno').value          := QryTurnos.FieldValues['sIdTurno'];
                  zcommand.params.ParamByName('fecha').DataType       := ftDate;
                  zcommand.params.ParamByName('fecha').value          := tdIdFecha.Date;
                  zcommand.params.ParamByName('categoria').DataType   := ftString;
                  zcommand.params.ParamByName('categoria').value      := Auxiliar.FieldValues['sIdCategoria'];
                  zcommand.params.ParamByName('tripulacion').DataType := ftString;
                  zcommand.params.ParamByName('tripulacion').value    := Auxiliar.FieldValues['sIdTripulacion'];
                  zcommand.params.ParamByName('Nacionales').DataType  := ftInteger;
                  zcommand.params.ParamByName('Nacionales').value     := Auxiliar.FieldValues['iNacionales'];
                  zcommand.params.ParamByName('Extranjeros').DataType := ftInteger;
                  zcommand.params.ParamByName('Extranjeros').value    := Auxiliar.FieldValues['iExtranjeros'];
                  zcommand.ExecSQL;
                except
                end;
                Auxiliar.Next;
            end;
          end;
      end
      else
         messageDLG('No se encontró personal el día anterior', mtInformation, [mbOk], 0);
  end;
  tripulacion.Refresh;
  with qry_tripulacion do
  begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT * FROM tripulaciondiaria where sContrato = :contrato and dIdfecha = :fecha and sIdTurno =:Turno ');
      params.ParamByName('contrato').DataType := ftString;
      params.ParamByName('contrato').Value := global_contrato_barco;
      params.ParamByName('fecha').DataType := ftDate;
      params.ParamByName('fecha').Value := tdIdFecha.Date;
      params.ParamByName('turno').DataType := ftString;
      params.ParamByName('turno').Value := QryTurnos.FieldValues['sIdTurno'];
      Open;
  end;
end;

procedure TfrmTripulacionDiaria.btnDeleteClick(Sender: TObject);
begin
  if (not qry_Tripulacion.active) or (qry_Tripulacion.RecordCount < 1) then
    exit;
  Connection.zCommand.Active := False;
  Connection.zCommand.SQL.Clear;
  Connection.zCommand.SQL.Add('Delete from tripulaciondiaria where sContrato = :contrato and sIdCategoria = :Categoria ' +
    'And dIdFecha =:Fecha And sIdTripulacion =:Tripulacion and sIdTurno =:Turno ');
  Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  Connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato_barco;
  Connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
  Connection.zCommand.Params.ParamByName('Turno').Value := QryTurnos.FieldValues['sIdTurno'];
  Connection.zCommand.Params.ParamByName('Categoria').DataType := ftString;
  Connection.zCommand.Params.ParamByName('Categoria').Value := qry_Tripulacion.FieldValues['sIdCategoria'];
  Connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  Connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.date;
  Connection.zCommand.Params.ParamByName('Tripulacion').DataType := ftString;
  Connection.zCommand.Params.ParamByName('Tripulacion').Value := qry_Tripulacion.FieldValues['sIdTripulacion'];
  Connection.zCommand.ExecSQL();
  qry_Tripulacion.Refresh;
end;

procedure TfrmTripulacionDiaria.btnNuevoClick(Sender: TObject);
begin
  if tsIdCategoria.KeyValue = null then begin
    ShowMessage('Favor de Seleccionar una Categoria');
    exit;
  end;

  lblTripulacion.Caption := '';
  ZLookTripulacion.Active := False;
  ZLookTripulacion.Params.ParamByName('Contrato').AsString := Global_Contrato_barco;
  ZLookTripulacion.Params.ParamByName('Categoria').AsString := tsIdCategoria.KeyValue;
  ZLookTripulacion.Params.ParamByName('Fecha').AsDate := fechaAntes;
  ZLookTripulacion.Open;
  if ZLookTripulacion.RecordCount > 0 then begin
    ZLookTripulacion.First;
    tsIdTripulacion.keyvalue := ZLookTripulacion.FieldValues['sIdTripulacion'];
    lblTripulacion.Caption := 'Tripulacion ' + tsIdTripulacion.keyvalue;
  end;

  Panel2.Visible := True;
  cmdAgregar.Visible := True;
  txtCantidad.Text := '0';
  tsIdTripulacion.SetFocus;
end;


procedure TfrmTripulacionDiaria.btnPrinterClick(Sender: TObject);
begin
  try
      if (qry_Tripulacion.Active) and (qry_Tripulacion.RecordCount > 0) then
        procreporteTripulacion(Global_Contrato_barco, QryTurnos.FieldValues['sIdTurno'], tdIdFecha.DateTime, frmTripulacionDiaria, frxTripulacion.OnGetValue, connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, 'reporteBarco'), 'Barco')
      else
        showmessage('No hay datos para imprimir');
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulacion Diaria', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmTripulacionDiaria.tsIdCategoriaEnter(Sender: TObject);
begin
  tsidcategoria.Color := global_color_entrada;
end;

procedure TfrmTripulacionDiaria.tsIdCategoriaExit(Sender: TObject);
begin
  tsIdcategoria.Color := global_Color_salida;
  with qry_tripulacion do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT * FROM tripulaciondiaria where sContrato = :contrato and dIdfecha = :fecha ' +
      'And sIdCategoria= :Categoria and sIdTurno =:Turno ');
    params.ParamByName('contrato').DataType := ftString;
    params.ParamByName('contrato').Value := global_contrato_barco;
    params.ParamByName('fecha').DataType := ftDate;
    params.ParamByName('fecha').Value := tdIdFecha.Date;
    params.ParamByName('categoria').DataType := ftString;
    params.ParamByName('categoria').Value := tsIdCategoria.KeyValue;
    params.ParamByName('turno').DataType := ftString;
    params.ParamByName('turno').Value := QryTurnos.FieldValues['sIdTurno'];
    Open;
    if qry_Tripulacion.RecordCount = 0 then
    begin
      ttripulacion_nacionales.Text := '0';
      ttripulacion_extranjeros.Text := '0';
         //qry_Tripulacion.Close ;
    end;
  end;
end;

 //SOAD -> Busqued de tripulacion por id.

procedure TfrmTripulacionDiaria.cmbTurnosExit(Sender: TObject);
begin
  tdIdFecha.OnExit(sender);
end;

procedure TfrmTripulacionDiaria.cmdAgregarClick(Sender: TObject);
begin

  try
    tripulacionDiaria.Open;
    tripulacionDiaria.Append;
    tripulacionDiaria.FieldValues['sContrato'] := global_contrato_barco;
    tripulacionDiaria.FieldValues['sIdTurno'] := QryTurnos.FieldValues['sIdTurno'];
    tripulacionDiaria.FieldValues['dIdFecha'] := tdIdFecha.Date;
    tripulacionDiaria.FieldValues['sIdCategoria'] := tsIdCategoria.KeyValue;
    tripulacionDiaria.FieldValues['sIdTripulacion'] := tsIdTripulacion.KeyValue;
    tripulacionDiaria.FieldValues['iNacionales'] := txtCantidad.Text;
    tripulacionDiaria.FieldValues['iExtranjeros'] := 0;
    tripulacionDiaria.FieldValues['lAplicaPernocta'] := 'Si';
    tripulacionDiaria.FieldValues['sOrden'] := '';
    tripulacionDiaria.Post;

    txtCantidad.Text := '0';
    qry_tripulacion.Refresh;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulacion Diaria', 'Al salvar registro', 0);
    end;
  end;

  lblTripulacion.Caption := '';
  if ZLookTripulacion.RecordCount > 0 then begin
    ZLookTripulacion.First;
    tsIdTripulacion.keyvalue := ZLookTripulacion.FieldValues['sIdTripulacion'];
    lblTripulacion.Caption := 'Tripulacion ' + tsIdTripulacion.keyvalue;
  end;

end;

procedure TfrmTripulacionDiaria.cmdSalirClick(Sender: TObject);
begin
  Panel2.Visible := False;
  cmdAgregar.Visible := False;
  cmdSalir.Visible := False;

end;

procedure TfrmTripulacionDiaria.Panel2Click(Sender: TObject);
begin
  Panel2.Visible := False;
  cmdAgregar.Visible := False;
end;

procedure TfrmTripulacionDiaria.PopupMenu1Popup(Sender: TObject);
var
    zPersonal : tzReadOnlyQuery;
begin
    zPersonal := tzReadOnlyQuery.Create(self);
    zPersonal.Connection := connection.zConnection;

    zPersonal.Active := False;
    zPersonal.SQL.Clear;
    zPersonal.SQL.Add('select sAnexo from anexos where sTipo = "PERSONAL"');
    zPersonal.Open;

    if zPersonal.RecordCount > 0 then
       ActualizaPersonal.Caption := 'Actualizar Partidas de Anexo '+ zPersonal.FieldValues['sAnexo'];

    zPersonal.Destroy;
end;

end.

