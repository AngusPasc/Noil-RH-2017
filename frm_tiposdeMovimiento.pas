unit frm_tiposdeMovimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, RxCombos,UnitValidacion, 
  ZAbstractRODataset, ZAbstractDataset, ZDataset, unitexcepciones,
   udbgrid, unittbotonespermisos, UnitValidaTexto, UnitTablasImpactadas, unitactivapop,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid ;
type
  TfrmTiposdeMovimiento = class(TForm)
    frmBarra1: TfrmBarra;
    ds_tiposdemovimiento: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    TiposdeMovimiento: TZQuery;
    TiposdeMovimientosContrato: TStringField;
    TiposdeMovimientosIdTipoMovimiento: TStringField;
    TiposdeMovimientosDescripcion: TStringField;
    TiposdeMovimientosClasificacion: TStringField;
    TiposdeMovimientosMedida: TStringField;
    TiposdeMovimientosTipo: TStringField;
    TiposdeMovimientoiOrden: TStringField;
    TiposdeMovimientolGrafica: TStringField;
    TiposdeMovimientoiColor: TIntegerField;
    TiposdeMovimientodVentaMN: TFloatField;
    TiposdeMovimientodVentaDLL: TFloatField;
    TiposdeMovimientolGenera: TStringField;
    TiposdeMovimientoiIdEstimacionContrato: TIntegerField;
    TiposdeMovimientodCantidad: TFloatField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_tiposdemovimiento: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    lb5: TLabel;
    lb6: TLabel;
    lb7: TLabel;
    lb8: TLabel;
    tsIdTipoMovimiento: TDBEdit;
    tsDescripcion: TDBEdit;
    tlGrafica: TDBComboBox;
    tiColor: TDBComboBox;
    tsClasificacion: TDBComboBox;
    tdVentaMN: TDBEdit;
    tdVentaDLL: TDBEdit;
    tiColores: TColorBox;
    tiOrden: TDBEdit;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgrd_tiposdemovimientCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tlGraficaKeyPress(Sender: TObject; var Key: Char);
    procedure tsClasificacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTipoMovimientoEnter(Sender: TObject);
    procedure tsIdTipoMovimientoExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsClasificacionEnter(Sender: TObject);
    procedure tsClasificacionExit(Sender: TObject);
    procedure tlGraficaEnter(Sender: TObject);
    procedure tlGraficaExit(Sender: TObject);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tdVentaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaDLLEnter(Sender: TObject);
    procedure tdVentaDLLExit(Sender: TObject);
    procedure tiColoresChange(Sender: TObject);
    procedure tiColoresEnter(Sender: TObject);
    procedure tiColoresExit(Sender: TObject);
    procedure tiColoresKeyPress(Sender: TObject; var Key: Char);
    procedure TiposdeMovimientoAfterScroll(DataSet: TDataSet);
    procedure tiOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tiOrdenEnter(Sender: TObject);
    procedure tiOrdenExit(Sender: TObject);
    procedure tiColorEnter(Sender: TObject);
    procedure tiColorExit(Sender: TObject);
    procedure tsIdTipoMovimientoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_tiposdemovimientMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_tiposdemovimientMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_tiposdemovimientTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure tdVentaMNChange(Sender: TObject);
    procedure tdVentaDLLChange(Sender: TObject);
    procedure TiposdeMovimientoBeforePost(DataSet: TDataSet);
    procedure TiposdeMovimientodVentaMNSetText(Sender: TField;
      const Text: string);
    procedure TiposdeMovimientodVentaDLLSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTiposdeMovimiento: TfrmTiposdeMovimiento;
  //utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
  sIdOrig : string;
implementation

{$R *.dfm}

procedure TfrmTiposdeMovimiento.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tiOrden.SetFocus 
end;

procedure TfrmTiposdeMovimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TiposdeMovimiento.Cancel ;
  action := cafree ;
  //utgrid.destroy;
  botonpermiso.Free;
end;

procedure TfrmTiposdeMovimiento.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adTiposMov', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_tiposdemovimiento);
  OpcButton := '' ;
  sIdOrig := '';
  frmBarra1.btnCancel.Click ;
  TiposdeMovimiento.Active := False ;
  TiposdeMovimiento.Params.ParamByName('Contrato').DataType := ftString ;
  TiposdeMovimiento.Params.ParamByName('Contrato').Value := Global_Contrato ;
  TiposdeMovimiento.Open ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmTiposdeMovimiento.dbgrd_tiposdemovimientCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmTiposdeMovimiento.dbgrd_tiposdemovimientMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmTiposdeMovimiento.dbgrd_tiposdemovimientMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmTiposdeMovimiento.dbgrd_tiposdemovimientTitleClick(
  Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmTiposdeMovimiento, popupprincipal);
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tiColores.ItemIndex := 0 ;
   TiposdeMovimiento.Append ;
   TiposdeMovimiento.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   TiposdeMovimiento.FieldValues [ 'sClasificacion' ]  := 'Tiempo en Operacion' ;
   TiposdeMovimiento.FieldValues [ 'sDescripcion' ]  := '*' ;
   TiposdeMovimiento.FieldValues [ 'lGrafica' ]   := 'No' ;
   TiposdeMovimiento.FieldValues [ 'iColor' ]     := 0 ;
   TiposdeMovimiento.FieldValues [ 'dVentaMN' ]   := 0 ;
   TiposdeMovimiento.FieldValues [ 'dVentaDLL' ]  := 0 ;
   TiposdeMovimiento.FieldValues [ 'sTipo' ]      := '' ;
   TiposdeMovimiento.FieldValues [ 'lGenera' ]    := 'Si' ;
   TiposdeMovimiento.FieldValues [ 'iIdEstimacionContrato' ] := 0;
   TiposdeMovimiento.FieldValues [ 'dCantidad' ]  := 0 ;
   If TiposdeMovimiento.FieldValues['sClasificacion'] = 'Tiempo en Operacion' Then
      TiposdeMovimiento.FieldValues['iOrden'] := '1' ;
   If TiposdeMovimiento.FieldValues['sClasificacion'] = 'Recursos' Then
      TiposdeMovimiento.FieldValues['iOrden'] := '2' ;
   If TiposdeMovimiento.FieldValues['sClasificacion'] = 'Tiempo Muerto' Then
      TiposdeMovimiento.FieldValues['iOrden'] := '3' ;
   If TiposdeMovimiento.FieldValues['sClasificacion'] = 'Notas' Then
      TiposdeMovimiento.FieldValues['iOrden'] := '4' ;
   If TiposdeMovimiento.FieldValues['sClasificacion'] = 'Movimiento de Barco' Then
      TiposdeMovimiento.FieldValues['iOrden'] := '5' ;
   If TiposdeMovimiento.FieldValues['sClasificacion'] = 'Clasificacion de Pernoctas' Then
      TiposdeMovimiento.FieldValues['iOrden'] := '6' ;

   Case tiColores.ItemIndex Of
        0 : tiColor.ItemIndex := 0 ;
        1 : tiColor.ItemIndex := 8 ;
        2 : tiColor.ItemIndex := 9 ;
        3 : tiColor.ItemIndex := 11 ;
        4 : tiColor.ItemIndex := 10 ;
        5 : tiColor.ItemIndex := 11 ;
        6 : tiColor.ItemIndex := 13 ;
        7 : tiColor.ItemIndex := 15 ;
        8 : tiColor.ItemIndex := 14 ;
        9 : tiColor.ItemIndex := 2 ;
        10 : tiColor.ItemIndex := 3 ;
        11 : tiColor.ItemIndex := 5 ;
        12 : tiColor.ItemIndex := 4 ;
        13 : tiColor.ItemIndex := 6 ;
        14 : tiColor.ItemIndex := 7 ;
        15 : tiColor.ItemIndex := 1 ;
   End ;

   tsIdTipoMovimiento.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_tiposdemovimiento.Enabled := False;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnEditClick(Sender: TObject);
begin
   //activapop(frmTiposdeMovimiento, popupprincipal);
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sIdOrig := TiposdeMovimiento.FieldByName('sIdTipoMovimiento').AsString;
   try
      TiposdeMovimiento.Edit ;
   except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al editar registro', 0);
        frmBarra1.btnCancel.Click ;
       end;
   end ;
   tsIdTipoMovimiento.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_tiposdemovimiento.Enabled := False;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnPostClick(Sender: TObject);
var
   nombres, cadenas: TStringList;
   lEdita: boolean;
begin
   //desactivapop(popupprincipal);
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Orden de Impresion');nombres.Add('Descripcion');nombres.Add('Clasificaion');nombres.Add('Grafica');
   cadenas.Add(tiOrden.Text);cadenas.Add(tsDescripcion.Text);cadenas.Add(tsClasificacion.Text);cadenas.Add(tlGrafica.Text);
   if not validaTexto(nombres, cadenas, 'Tipo de Movimiento', tsIdTipoMovimiento.Text) then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;
   {Continua insercion de datos}
   lEdita := false;
   if TiposdeMovimiento.State = dsEdit then
      lEdita := true;
//MessageDlg( inttostr ( cmbColor.Selected ) , mtInformation, [mbOk], 0);
   try                                      //estaba como comentario
      TiposdeMovimiento.FieldValues['iColor'] := tiColor.Text ;
      TiposdeMovimiento.Post ;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      frmBarra1.btnPostClick(Sender);
   except                          //estaba como comentario
//      MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al salvar registro', 0);
        frmBarra1.btnCancel.Click ;  //estabacomocomentario
        lEdita := false;//cancelar la actualizacion de tablas dependientes
       end;
   end;
   if (lEdita) and (TiposdeMovimiento.FieldByName('sIdTipoMovimiento').AsString <> sIdOrig) then
   begin
       tablasDependientes(sIdOrig);
   end;
   BotonPermiso.permisosBotones(frmBarra1);                //estabacomocomentario
   frmBarra1.btnPrinter.Enabled := False;
   grid_tiposdemovimiento.Enabled := True;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnCancelClick(Sender: TObject);
begin
   //desactivapop(popupprincipal);
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   TiposdeMovimiento.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_tiposdemovimiento.Enabled := True;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If TiposdeMovimiento.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(TiposdeMovimiento.FieldByName('sIdTipoMovimiento').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      try
        TiposdeMovimiento.Delete ;
      except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tipos de Movimiento', 'Al eliminar registro', 0);
       end;
      end
    end
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnRefreshClick(Sender: TObject);
begin
  TiposdeMovimiento.Active := False ;
  TiposdeMovimiento.Open ;
end;

procedure TfrmTiposdeMovimiento.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close
end;

procedure TfrmTiposdeMovimiento.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsClasificacion.SetFocus 
end;

procedure TfrmTiposdeMovimiento.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmTiposdeMovimiento.Paste1Click(Sender: TObject);
begin
  //UtGrid.AddRowsFromClip;
end;

procedure TfrmTiposdeMovimiento.Copy1Click(Sender: TObject);
begin
   //UtGrid.CopyRowsToClip;
end;

procedure TfrmTiposdeMovimiento.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmTiposdeMovimiento.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmTiposdeMovimiento.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmTiposdeMovimiento.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmTiposdeMovimiento.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmTiposdeMovimiento.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmTiposdeMovimiento.tlGraficaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tiColores.SetFocus
end;


procedure TfrmTiposdeMovimiento.tsClasificacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tlGrafica.SetFocus
end;

procedure TfrmTiposdeMovimiento.tsIdTipoMovimientoEnter(Sender: TObject);
begin
    tsIdTipoMovimiento.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tsIdTipoMovimientoExit(Sender: TObject);
begin
    tsIdTipoMovimiento.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tsIdTipoMovimientoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tiorden.SetFocus

end;

procedure TfrmTiposdeMovimiento.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tsClasificacionEnter(Sender: TObject);
begin
    tsClasificacion.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tsClasificacionExit(Sender: TObject);
begin
    tsClasificacion.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tlGraficaEnter(Sender: TObject);
begin
    tlGrafica.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tlGraficaExit(Sender: TObject);
begin
    tlGrafica.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tdVentaMNChange(Sender: TObject);
begin
   tdbeditchangef(tdVentaMN,'Venta MN');
end;

procedure TfrmTiposdeMovimiento.tdVentaMNEnter(Sender: TObject);
begin
    tdVentaMN.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tdVentaMNExit(Sender: TObject);
begin
    tdVentaMN.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tdVentaMNKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdVentaMN,key) then
   key:=#0;
  If Key = #13 then
    tdVentaDLL.SetFocus 
end;

procedure TfrmTiposdeMovimiento.tiColorEnter(Sender: TObject);
begin
  ticolor.color:= global_color_entradaERP;
end;

procedure TfrmTiposdeMovimiento.tdVentaDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdVentaDLL,key) then
   key:=#0;
  If key = #13 then
    tsidTipoMovimiento.SetFocus
end;

function TfrmTiposdeMovimiento.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sIdTipoMovimiento');ParamValuesSET.Add(TiposdeMovimiento.FieldByName('sIdTipoMovimiento').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdTipoMovimiento');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('tiposdemovimiento',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
end;

function TfrmTiposdeMovimiento.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdTipoMovimiento');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('tiposdemovimiento',ParamNamesWHERE,ParamValuesWHERE);
end;

procedure TfrmTiposdeMovimiento.tdVentaDLLChange(Sender: TObject);
begin
tdbeditchangef(tdVentaDLL,'Venta DLL');
end;

procedure TfrmTiposdeMovimiento.tdVentaDLLEnter(Sender: TObject);
begin
    tdVentaDLL.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tdVentaDLLExit(Sender: TObject);
begin
    tdVentaDLL.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tiColoresChange(Sender: TObject);
begin
    Case tiColores.ItemIndex Of
        0 : tiColor.ItemIndex := 0 ;
        1 : tiColor.ItemIndex := 1 ;
        2 : tiColor.ItemIndex := 2 ;
        3 : tiColor.ItemIndex := 3 ;
        4 : tiColor.ItemIndex := 4 ;
        5 : tiColor.ItemIndex := 5 ;
        6 : tiColor.ItemIndex := 6 ;
        7 : tiColor.ItemIndex := 7 ;
        8 : tiColor.ItemIndex := 8 ;
        9 : tiColor.ItemIndex := 9 ;
        10 : tiColor.ItemIndex := 10 ;
        11 : tiColor.ItemIndex := 11 ;
        12 : tiColor.ItemIndex := 12 ;
        13 : tiColor.ItemIndex := 13 ;
        14 : tiColor.ItemIndex := 14 ;
        15 : tiColor.ItemIndex := 15 ;
    End 
end;

procedure TfrmTiposdeMovimiento.tiColoresEnter(Sender: TObject);
begin
    tiColores.Color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tiColoresExit(Sender: TObject);
begin
    tiColores.Color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tiColoresKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    tdVentaMN.SetFocus
end;

procedure TfrmTiposdeMovimiento.tiColorExit(Sender: TObject);
begin
  ticolor.Color:=global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tiOrdenEnter(Sender: TObject);
begin
    tiOrden.color := global_color_entradaERP
end;

procedure TfrmTiposdeMovimiento.tiOrdenExit(Sender: TObject);
begin
    tiOrden.color := global_color_salidaERP;
end;

procedure TfrmTiposdeMovimiento.tiOrdenKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmTiposdeMovimiento.TiposdeMovimientoAfterScroll(
  DataSet: TDataSet);
begin
   Case tiColor.ItemIndex Of
        0 : tiColores.ItemIndex := 0 ;
        1 : tiColores.ItemIndex := 1 ;
        2 : tiColores.ItemIndex := 2 ;
        3 : tiColores.ItemIndex := 3 ;
        4 : tiColores.ItemIndex := 4 ;
        5 : tiColores.ItemIndex := 5 ;
        6 : tiColores.ItemIndex := 6 ;
        7 : tiColores.ItemIndex := 7 ;
        8 : tiColores.ItemIndex := 8 ;
        9 : tiColores.ItemIndex := 9 ;
        10 : tiColores.ItemIndex := 10 ;
        11 : tiColores.ItemIndex := 11 ;
        12 : tiColores.ItemIndex := 12 ;
        13 : tiColores.ItemIndex := 13 ;
        14 : tiColores.ItemIndex := 14 ;
        15 : tiColores.ItemIndex := 15 ;
   End ;
end;
procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin
if Zeo.FieldValues[Camp]<0 then
 Zeo.FieldValues[Camp]:=Zeo.FieldValues[Camp]*-1;
end;
procedure TfrmTiposdeMovimiento.TiposdeMovimientoBeforePost(DataSet: TDataSet);
begin
   PCAbsoluto(TiposdeMovimiento,'dVentaMN');
   PCAbsoluto(TiposdeMovimiento,'dVentaDLL');
end;

procedure TfrmTiposdeMovimiento.TiposdeMovimientodVentaDLLSetText(
  Sender: TField; const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmTiposdeMovimiento.TiposdeMovimientodVentaMNSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));
end;

end.
