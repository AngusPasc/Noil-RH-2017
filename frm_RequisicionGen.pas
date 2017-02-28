unit frm_RequisicionGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxLabel, ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxPCdxBarPopupMenu, Menus,
  StdCtrls, cxButtons, cxGroupBox, cxPC, ImgList, ZSqlUpdate, DBClient,
  cxCheckBox, cxDBLookupComboBox, cxTextEdit, cxSplitter, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu;

type
  TfrmRequisicionGen = class(TForm)
  BView_Partidas: TcxGridDBTableView;
  Grid_PartidasLevel1: TcxGridLevel;
  Grid_Partidas: TcxGrid;
  PnlDatos: TPanel;
  cxLabel1: TcxLabel;
  lbRequsicion: TcxLabel;
  cxLabel3: TcxLabel;
  cxLabel7: TcxLabel;
  label1: TcxLabel;
  label2: TcxLabel;
  lbFechaRequisicion: TcxLabel;
  lbSolicitante: TcxLabel;
  lbRequisitada: TcxLabel;
  lbFechaEntrega: TcxLabel;
  anexo_prequisicion: TZQuery;
  dsanexo_prequisicion: TDataSource;
  BView_PartidasdCantidad: TcxGridDBColumn;
  BView_PartidasmDescripcion: TcxGridDBColumn;
  BView_PartidassMedida: TcxGridDBColumn;
  pcProveedores: TcxPageControl;
  cxTabSheet1: TcxTabSheet;
  cxTabSheet2: TcxTabSheet;
  cxGroupBox2: TcxGroupBox;
  cxGroupBox3: TcxGroupBox;
  Grid_ArticulosxProveedor: TcxGrid;
  BView_ArticulosxProveedor: TcxGridDBTableView;
  cxGridLevel3: TcxGridLevel;
  dsZQProveedores: TDataSource;
  ZQProveedores: TZQuery;
  PnlProveedores: TPanel;
  BView_Proveedores: TcxGridDBTableView;
  Grid_ProveedoresLevel1: TcxGridLevel;
  Grid_Proveedores: TcxGrid;
  BView_ProveedoressIdProveedor1: TcxGridDBColumn;
  BView_ProveedoressRazon1: TcxGridDBColumn;
  BView_ProveedoressDomicilio1: TcxGridDBColumn;
  BView_ProveedoressCiudad1: TcxGridDBColumn;
  BView_ProveedoressEstado1: TcxGridDBColumn;
  BView_ProveedoressRfc1: TcxGridDBColumn;
  BView_ProveedoressTelefono1: TcxGridDBColumn;
  BView_ProveedoressVendedor1: TcxGridDBColumn;
  BView_ProveedoressEmail1: TcxGridDBColumn;
  cxLabel2: TcxLabel;
  ImgBtns: TImageList;
  dsZQProveedorxRequisicion: TDataSource;
  cmdCerrar: TcxButton;
  Grid_proveedorxrequisicion2: TcxGrid;
  BView_proveedorxrequisicion2: TcxGridDBTableView;
  cxGridDBColumn1: TcxGridDBColumn;
  cxGridDBColumn2: TcxGridDBColumn;
  cxGridDBColumn3: TcxGridDBColumn;
  cxGridLevel1: TcxGridLevel;
  Grid_proveedorxrequisicion: TcxGrid;
  BView_proveedorxrequisicion: TcxGridDBTableView;
  BView_proveedorxrequisicionNombre: TcxGridDBColumn;
  BView_proveedorxrequisicioniFolioRequisicion: TcxGridDBColumn;
  BView_proveedorxrequisicionsIdProveedor: TcxGridDBColumn;
  cxGridLevel2: TcxGridLevel;
  BView_ArticulosxProveedormDescripcion: TcxGridDBColumn;
  PM_ArticulosxProveedor: TPopupMenu;
  CrearCotizacion1: TMenuItem;
  BView_ArticulosxProveedorMarcado: TcxGridDBColumn;
  anexo_prequisicionMarcado: TBooleanField;
  anexo_prequisicionsContrato: TStringField;
  anexo_prequisicionsIdInsumo: TStringField;
  anexo_prequisicionsIdAlmacen: TStringField;
  anexo_prequisicioniItem: TIntegerField;
  anexo_prequisicioniFolioPedido: TIntegerField;
  anexo_prequisicionmDescripcion: TMemoField;
  anexo_prequisicionsMedida: TStringField;
  anexo_prequisiciondFechaRequerimiento: TDateField;
  anexo_prequisiciondCantidad: TFloatField;
  anexo_prequisiciondCosto: TFloatField;
  anexo_prequisicionsModelo: TStringField;
  anexo_prequisicionsWbs: TStringField;
  anexo_prequisicionsNumeroActividad: TStringField;
  anexo_prequisicionsNumeroOrden: TStringField;
  anexo_prequisicionsObservacion: TStringField;
  anexo_prequisicionsEstado: TStringField;
  anexo_prequisicionsMedidaAnexo: TStringField;
  anexo_prequisiciondCantidad_1: TFloatField;
  anexo_prequisicioniItemOrden: TStringField;
  anexo_prequisiciondExistencia: TFloatField;
  cdproveedorxrequisicion: TClientDataSet;
  StringField2: TStringField;
  cdProductos1: TClientDataSet;
  StringField1: TStringField;
  StringField3: TStringField;
  cdProductosProveedores: TClientDataSet;
  StringField4: TStringField;
  StringField5: TStringField;
  dscdProductos1: TDataSource;
  cdProductos1mDescripcion: TStringField;
  dscdProductosProveedores: TDataSource;
  cxGrid1DBTableView1: TcxGridDBTableView;
  cxGrid1Level1: TcxGridLevel;
  cxGrid1: TcxGrid;
  cxGrid1DBTableView1Column1: TcxGridDBColumn;
  cxGrid1DBTableView1Column2: TcxGridDBColumn;
  BView_ArticulosxProveedorColumn1: TcxGridDBColumn;
  cdProductos1iItem: TIntegerField;
    cdProductosProveedoresiItem: TIntegerField;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cdProductos1dCantidad: TFloatField;
    BView_ArticulosxProveedordCantidad: TcxGridDBColumn;
    cdProductosProveedoresdCantidad: TFloatField;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxstylrpstryGrid: TcxStyleRepository;
    Agregado: TcxStyle;
    pnl1: TPanel;
    cxSplitter1: TcxSplitter;
    cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid2Level1: TcxGridLevel;
    Grid_Requisiciones: TcxGrid;
    anexo_requisicion: TZQuery;
    ds_anexo_requisicion: TDataSource;
    cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn;
    cxMostrarRequisiciones: TcxCheckBox;
    cxgrdbclmnBView_PartidasColumn1: TcxGridDBColumn;
    anexo_prequisicioniFolioRequisicion: TStringField;
    cdproveedorxrequisicioniFolioRequisicion: TIntegerField;
    BView_ProveedoresColumn1: TcxGridDBColumn;
  procedure FormShow(Sender: TObject);
  procedure BView_ProveedoresCellDblClick(Sender: TcxCustomGridTableView;
    ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
    AShift: TShiftState; var AHandled: Boolean);
  procedure BView_proveedorxrequisicionNavigatorButtonsButtonClick(
    Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  procedure BView_ArticulosxProveedorMarcadoPropertiesEditValueChanged(
    Sender: TObject);
  procedure cdproveedorxrequisicionAfterScroll(DataSet: TDataSet);
  procedure CrearCotizacion1Click(Sender: TObject);
  procedure pcProveedoresClick(Sender: TObject);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure Cargar_Requisicion;
    procedure anexo_requisicionAfterScroll(DataSet: TDataSet);
    procedure cxgrdbtblvwGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure BView_ArticulosxProveedorNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);

private
  { Private declarations }
  Filtrar: Boolean;
  IsOpen: Boolean;
public
  { Public declarations }
end;

var
  frmRequisicionGen: TfrmRequisicionGen;

implementation
uses
  frm_RequisicionPerf,global, Func_Genericas, frm_connection;

//Fin de uses

{$R *.dfm}

procedure TfrmRequisicionGen.anexo_requisicionAfterScroll(DataSet: TDataSet);
begin
  if IsOpen then
  begin
    Cargar_Requisicion;
    anexo_prequisicion.First;
  end;
end;

procedure TfrmRequisicionGen.BView_ArticulosxProveedorMarcadoPropertiesEditValueChanged(Sender: TObject);
(*Creo: Rafael
Descripcion: Bloque para que al seleccionar un articulo este sea ligado a un proveedor par hacer la cotizacion*)
begin
  //Cuando chekeo el producto validara que no exista en la tabla cdProductosProveedores
  if cdProductos1.FieldByName('Activo').AsString = 'Si' then
  begin  //Si lo chekeo lo agregar a la tabla
    if NOT cdProductosProveedores.locate('sIdInsumo; sIdProveedor', VarArrayOf([cdProductos1.FieldByName('sIdInsumo').AsString, cdproveedorxrequisicion.FieldByName('sIdProveedor').AsString]), []) then
    BEGIN
      cdProductosProveedores.Append;
      cdProductosProveedores.FieldByName('sIdInsumo').AsString      := cdProductos1.FieldByName('sIdInsumo').AsString;
      cdProductosProveedores.FieldByName('sIdProveedor').AsString   := cdproveedorxrequisicion.FieldByName('sIdProveedor').AsString;
      cdProductosProveedores.FieldByName('iItem').AsString          := cdProductos1.FieldByName('iItem').AsString;
      cdProductosProveedores.FieldByName('dCantidad').AsFloat       := cdProductos1.FieldByName('dCantidad').AsFloat;
      cdProductosProveedores.Post;
    END;
  end else
  begin //Si lo descheo lo busca y lo quita de la tabal
    if cdProductosProveedores.locate('sIdInsumo; sIdProveedor', VarArrayOf([cdProductos1.FieldByName('sIdInsumo').AsString, cdproveedorxrequisicion.FieldByName('sIdProveedor').AsString]), []) then
      cdProductosProveedores.Delete;
  end;
end;

procedure TfrmRequisicionGen.BView_ArticulosxProveedorNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex = 16 then
  begin
    while not cdProductos1.Eof do
    begin
      cdProductos1.edit;
      cdProductos1.FieldByName('Activo').AsString := 'Si';
      cdProductos1.post;
      BView_ArticulosxProveedorMarcadoPropertiesEditValueChanged(Sender);
      cdProductos1.Next;
    end;
    
  end
end;

procedure TfrmRequisicionGen.BView_ProveedoresCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
{Creo: Rafael
Descripcion: Procedimiento para agregar un proveedor con solo dar doble clic sobre el}
begin
  if cdProveedorxRequisicion.Locate('iFolioRequisicion;sIdProveedor', VarArrayOf([StrToInt(lbRequsicion.Caption),ZQProveedores.FieldByName('sIdProveedor').AsString]),[]) then
  begin
    MSG_W('El proveedor ya a sido agregado');
    Abort;
  end else
  begin
    cdProveedorxRequisicion.Append;
    cdProveedorxRequisicion.FieldByName('iFolioRequisicion').AsInteger  := StrToInt(lbRequsicion.Caption);
    cdProveedorxRequisicion.FieldByName('sIdProveedor').AsString        := ZQProveedores.FieldByName('sIdProveedor').AsString;
    Filtrar := False;
    cdProveedorxRequisicion.Post;
    Filtrar := True;
    MSG_OK('Proveedor agregado exitosamente');
  end;
end;

procedure TfrmRequisicionGen.BView_proveedorxrequisicionNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
(*Creo: Rafael
Descripcion: Bloque para que cuando se de clic en en navegador del grid de los proveedores se pueda insertar o eliminar*)
begin
  if AButtonIndex = 6 then  //Para insertar
  begin
    Crear_Form(PnlProveedores, 'Lista de Proveedores', 430, 930, [biSystemMenu]);
    if cdproveedorxrequisicion.RecordCount > 0 then
    begin
      pcProveedores.ActivePageIndex := 1;
      cdproveedorxrequisicion.First;
    end else pcProveedores.ActivePageIndex := 0;
    Abort; //Para que no se ejecute el procedimiento nativo de insertar
  end else if AButtonIndex = 8 then   //Si se pulso quitar
  begin
    if cdProveedorxRequisicion.RecordCount > 0then
    begin
      if MSG_YN('Esta seguro que desea quitar al proveedor?') then //Valida que no sea un error
      begin
        cdProveedorxRequisicion.Delete;                            //Lo elimina
        Abort;                                                     //Evita el evento nativo
      end;
    end;
  end;
end;

procedure TfrmRequisicionGen.cdproveedorxrequisicionAfterScroll(DataSet: TDataSet);
(*Creo: Rafael
Descripcion: Bloque para que cuando se haga after scrol sobre un proveedor filtre los productos que se le han ligado
y se chekeean en el grid*)
begin
  if Filtrar then
  begin
    //Para que solo filtre los registros del proveedor
    cdProductosProveedores.Filtered := False;
    cdProductosProveedores.Filter := 'sIdProveedor = '+ QuotedStr(cdproveedorxrequisicion.FieldByName('sIdProveedor').AsString);
    cdProductosProveedores.Filtered := True;
    BView_Partidas.DataController.DataSource := nil;
    cdProductos1.EmptyDataSet;
    anexo_prequisicion.First;
    BView_ArticulosxProveedor.DataController.DataSource := nil;
    while not anexo_prequisicion.Eof do
    begin
      cdProductos1.Append;
      cdProductos1.FieldByName('sIdInsumo').AsString    := anexo_prequisicion.FieldByName('sIdInsumo').AsString;
      cdProductos1.FieldByName('mDescripcion').AsString := anexo_prequisicion.FieldByName('mDescripcion').AsString;
      cdProductos1.FieldByName('iItem').AsString := anexo_prequisicion.FieldByName('iItem').AsString;
      if cdProductosProveedores.locate('sIdInsumo', anexo_prequisicion.FieldByName('sIdInsumo').AsString,[]) then
      begin
        if (cdProductosProveedores.FieldByName('sIdProveedor').AsString = cdproveedorxrequisicion.FieldByName('sIdProveedor').AsString) and (cdProductosProveedores.FieldByName('iItem').AsString = anexo_prequisicion.FieldByName('iItem').AsString) then
          cdProductos1.FieldByName('Activo').AsString := 'Si'
        else cdProductos1.FieldByName('Activo').AsString := 'No'
      end else cdProductos1.FieldByName('Activo').AsString := 'No';
      cdProductos1.FieldByName('dCantidad').AsInteger       := anexo_prequisicion.FieldByName('dCantidad').AsInteger;
      cdProductos1.Post;
      anexo_prequisicion.Next;
    end;
    cdProductos1.IndexFieldNames:='sIdInsumo';  //Se ordena por
    cdProductos1.First;
    anexo_prequisicion.First;
    BView_Partidas.DataController.DataSource := dsanexo_prequisicion;
    BView_ArticulosxProveedor.DataController.DataSource := dscdProductos1;
  end
end;

procedure TfrmRequisicionGen.CrearCotizacion1Click(Sender: TObject);
(*Creo: Rafael
Descripcion: Bloque para que cuando ya se haya cargado la informacion necesaria para generar el pdf con la cotizacion*)
var
  iIdCotizacion: Integer;
  ZQCotizacion:TZQuery;
  Mostrar : Boolean;
begin
  Mostrar := False;
  ZQCotizacion := TZQuery.Create(nil);
  ZQCotizacion.Connection := connection.zConnection;
  if cdproveedorxrequisicion.RecordCount > 0then
  begin
    if MSG_YN('Confirme si desea crear la cotización') then
    begin
      //Empieza a guardar laas requiciones
      (*Procedimiento para generar la cotizacion
      Primero voy a recorrer en clientdataset de los proveedores(cdproveedorxrequisicion)
      y si al recorrerlo tiene productos asignado en cdProductosProveedores lo guardo para generar la requsicion*)
      try
        connection.zConnection.StartTransaction;
        iIdCotizacion := 0;
        cdproveedorxrequisicion.first;
        while not cdproveedorxrequisicion.eof do
        begin
	        if cdProductosProveedores.RecordCount > 0 then  //Valido que existan movimiento para ese proveedor
	        begin //Si existe lo que hago es guardar ese registro
            //Se agrega la primera cotizacion
            ZQCotizacion.Active := False;
            ZQCotizacion.SQL.Clear;
            ZQCotizacion.SQL.Add('insert into alm_cotizacion (iIdCotizacion, iIdRequisicion, sIdProveedor, sStatus, sContrato) '+
                                      'values(:iIdCotizacion, :iIdRequisicion, :sIdProveedor, :sStatus, :contrato)');
	          ZQCotizacion.ParamByName('iIdCotizacion').AsInteger  := NextId('iIdCotizacion','alm_cotizacion');
            iIdCotizacion := NextId('iIdCotizacion','alm_cotizacion');
	          ZQCotizacion.ParamByName('iIdRequisicion').AsInteger :=   cdproveedorxrequisicion.fieldbyname('iFolioRequisicion').asInteger;
	          ZQCotizacion.ParamByName('sIdProveedor').asString 	  :=  cdproveedorxrequisicion.fieldbyname('sIdProveedor').asString;
            ZQCotizacion.ParamByName('sStatus').AsString          :=  'Pendiente';
            ZQCotizacion.ParamByName('Contrato').AsString         :=  global_contrato;
            ZQCotizacion.ExecSQL;
            //Se procede a agregar los productos d esa requsicion
              cdProductosProveedores.First; //Me posiono en el primer registo
              while not cdProductosProveedores.Eof do    //Empiezo a recorrerlos
              begin
                ZQCotizacion.Active := False;
                ZQCotizacion.SQL.Clear;
                ZQCotizacion.SQL.Add('insert into alm_cotizacion_detalle(iIdCotizacionDetalle, iIdCotizacion, sIdInsumo, iCantidad, iCantidadCotizada, dPrecio, dTasa, iTiempoEntrega, dFechaRequerida, Comentario, iIdMoneda, dTipoCambio, iItem) '+
                                            'values(:iIdCotizacionDetalle, :iIdCotizacion, :sIdInsumo, :iCantidad, :iCantidadCotizada, :dPrecio, :dTasa, :iTiempoEntrega, :dFechaRequerida, :Comentario, :iIdMoneda, :dTipoCambio, :iItem)');
                ZQCotizacion.ParamByName('iIdCotizacionDetalle').AsInteger := NextId('iIdCotizacionDetalle','alm_cotizacion_detalle');
	              ZQCotizacion.ParamByName('iIdCotizacion').AsInteger        := iIdCotizacion;
	              ZQCotizacion.ParamByName('sIdInsumo').AsString             := cdProductosProveedores.FieldByName('sIdInsumo').AsString;
	              ZQCotizacion.ParamByName('iCantidad').AsInteger            := cdProductosProveedores.FieldByName('dCantidad').AsInteger;
	              ZQCotizacion.ParamByName('iCantidadCotizada').AsInteger    := 0;
	              ZQCotizacion.ParamByName('dPrecio').AsFloat                := 0;
	              ZQCotizacion.ParamByName('dTasa').AsFloat                  := 0;
	              ZQCotizacion.ParamByName('iTiempoEntrega').AsInteger       := 0;
                if bandera_formulario = 'frmRequisicionPerf' then
                  ZQCotizacion.ParamByName('dFechaRequerida').AsDate         := frmRequisicionPerf.anexo_requisicion.FieldByName('dFechaRequerido'). AsDateTime
                else
                  ZQCotizacion.ParamByName('dFechaRequerida').AsDate         := anexo_requisicion.FieldByName('dFechaRequerido'). AsDateTime;
	              ZQCotizacion.ParamByName('Comentario').AsString            := '*';
	              ZQCotizacion.ParamByName('iIdMoneda').AsString             := 'MXN';
	              ZQCotizacion.ParamByName('dTipoCambio').AsFloat            := 0;
                ZQCotizacion.ParamByName('iItem').AsInteger                := cdProductosProveedores.FieldByName('iItem').AsInteger;
                ZQCotizacion.ExecSQL;
                Mostrar := True;
                Guardar_Kardex(global_contrato, global_usuario, ('Registro de Cotización: [' + IntToStr(iIdCotizacion) +  '] Registrado el [' + DateToStr(Date) +  '] Usuario [ ' + global_usuario + ']' ), 'Otros Movimientos');
                cdProductosProveedores.Next;
              end; //fin del while
	        end; //fin del if
          cdproveedorxrequisicion.Next;
        end; //fin del while
        connection.zConnection.Commit;
      except
        on E: Exception do
        begin
          connection.zConnection.Rollback;
          MSG_W('Ocurrio un error: ' + E.Message + e.ClassName);
        End;
      end;
      //Se procede a limpiar todo para poder hacer otra requisicion.
      cdProductosProveedores.EmptyDataSet;
      cdproveedorxrequisicion.EmptyDataSet;
      cdProductos1.EmptyDataSet;
      pcProveedores.ActivePageIndex := 0;
      if Mostrar then msg_ok('El documento de cotizacion fue creado exitosamente')
      else MSG_W('No asigno partidas a los proveedores');
    end;
  end else msg_w('No es posible realizar la cotizacion por que no a sido asignado los articulos a los proveedores');
  ZQCotizacion.Destroy;
end;

procedure TfrmRequisicionGen.cxCheckBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxMostrarRequisiciones.Checked then Grid_Requisiciones.Visible := True
  else Grid_Requisiciones.Visible := False;
end;

procedure TfrmRequisicionGen.cxgrdbtblvwGrid2DBTableView1DblClick(
  Sender: TObject);
begin
  cxMostrarRequisiciones.Checked := False;
end;

procedure TfrmRequisicionGen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRequisicionGen.FormShow(Sender: TObject);
(*Creo: Rafael
Descripcion: Bloque de inicio del formulario aqui se cargo la informacion de los productos y cargo los proveedores*)
var
  Folio: string;
begin
  try
    anexo_prequisicion.Active := False;
    anexo_prequisicion.ParamByName('Contrato').AsString  := global_contrato;
    IsOpen := False;
    anexo_prequisicion.Open;
    IsOpen:= True;
    anexo_prequisicion.first;
    (* Si el formulario fue abierto desde requsicion que llene los datos*)
    if bandera_formulario = 'frmRequisicionPerf' then
    begin
      Grid_Requisiciones.Visible:= False;
      lbRequsicion.Caption      := frmRequisicionPerf.anexo_requisicion.FieldByName('iFolioRequisicion'). AsString;
      lbFechaRequisicion.Caption:= frmRequisicionPerf.anexo_requisicion.FieldByName('dIdFecha'). AsString;
      lbSolicitante.Caption     := frmRequisicionPerf.anexo_requisicion.FieldByName('sSolicito'). AsString;
      lbRequisitada.Caption     := frmRequisicionPerf.anexo_requisicion.FieldByName('sRequisita'). AsString;
      lbFechaEntrega.Caption    := frmRequisicionPerf.anexo_requisicion.FieldByName('dFechaRequerido'). AsString;
      Folio := frmRequisicionPerf.anexo_requisicion.FieldByName('sNumFolio').AsString;
      //Cargas todos las partidas de la requsicion
      anexo_prequisicion.Filtered := False;
      anexo_prequisicion.Filter   := 'iFolioRequisicion ='+QuotedStr(Folio);
      anexo_prequisicion.Filtered := True;
      //Se crea el dataset y se prepara para recibir todas las partidas
      cdProductos1.CreateDataSet;
      cdProductos1.Open;
      anexo_prequisicion.first;
      //Se inicia el ciclo para llenar cdProductos1 que contendra las partidas
      while not anexo_prequisicion.Eof do
      begin
        cdProductos1.Append;
        cdProductos1.FieldByName('sIdInsumo').AsString    := anexo_prequisicion.FieldByName('sIdInsumo').AsString;
        cdProductos1.FieldByName('mDescripcion').AsString := anexo_prequisicion.FieldByName('mDescripcion').AsString;
        cdProductos1.FieldByName('iItem').AsInteger       := anexo_prequisicion.FieldByName('iItem').AsInteger;
        cdProductos1.FieldByName('dCantidad').AsInteger   := anexo_prequisicion.FieldByName('dCantidad').AsInteger;
        cdProductos1.Post;
        anexo_prequisicion.Next;
      end;
      cdProductosProveedores.IndexFieldNames:='sIdProveedor';  //Se ordena por el campo sIdProveedor
      anexo_prequisicion.first;
      //ClienDataSet que contiene los productos que son asignado a un proveedor
      cdProductosProveedores.CreateDataSet;
      cdProductosProveedores.Open;
      //Para cargar la lista de proveedores
      ZQProveedores.active := false;
      ZQProveedores.open;
      //ClientDataSet en donde guardo los proveedores para la cotizacion
      cdproveedorxrequisicion.CreateDataSet;
      Filtrar := False;   //Le asigno un false la varible para que no haga el afterscroll y sea mas rapido
      cdproveedorxrequisicion.Open;
      cdproveedorxrequisicion.IndexFieldNames:='iFolioRequisicion';
      Filtrar := True;  //Asigno true para qpoder filtrar por proveedores
      pcProveedores.ActivePageIndex := 0;  //que inicie en la pagina
      cxMostrarRequisiciones.Checked := False;
      cxMostrarRequisiciones.Visible := False;
    end else
    begin
      anexo_requisicion.Active := False;
      anexo_requisicion.ParamByName('contrato').AsString := global_contrato;
      anexo_requisicion.Open;
      cxMostrarRequisiciones.Checked := True;
      cxMostrarRequisiciones.Visible := True;
      Cargar_Requisicion;
    end;
  except
    on E : Exception do
      MSG_ER(E.ClassName+' error: '+E.Message);   //Si surge un error que lo muestre
  end;
end;
procedure TfrmRequisicionGen.Cargar_Requisicion;
var
  Folio:string;
begin
  lbRequsicion.Caption      := anexo_requisicion.FieldByName('iFolioRequisicion'). AsString;
  lbFechaRequisicion.Caption:= anexo_requisicion.FieldByName('dIdFecha'). AsString;
  lbSolicitante.Caption     := anexo_requisicion.FieldByName('sSolicito'). AsString;
  lbRequisitada.Caption     := anexo_requisicion.FieldByName('sRequisita'). AsString;
  lbFechaEntrega.Caption    := anexo_requisicion.FieldByName('dFechaRequerido'). AsString;
  Folio                     := anexo_requisicion.FieldByName('sNumFolio').AsString;
  //Cargas todos las partidas de la requsicion
  anexo_prequisicion.Filtered := False;
  anexo_prequisicion.Filter   := 'iFolioRequisicion ='+QuotedStr(Folio);
  anexo_prequisicion.Filtered := True;
  //Se crea el dataset y se prepara para recibir todas las partidas
  if cdProductos1.active then cdProductos1.EmptyDataSet   //Si ya esta activo solo lo limpio
  else                                                      //Si no esta activo
  begin
    cdProductos1.CreateDataSet;                            //Crea el dataset
    cdProductos1.Open;                                     //Abro la tabla
  end;
  //Se inicia el ciclo para llenar cdProductos1 que contendra las partidas
  anexo_prequisicion.first;
  while not anexo_prequisicion.Eof do
  begin
    cdProductos1.Append;
    cdProductos1.FieldByName('sIdInsumo').AsString    := anexo_prequisicion.FieldByName('sIdInsumo').AsString;
    cdProductos1.FieldByName('mDescripcion').AsString := anexo_prequisicion.FieldByName('mDescripcion').AsString;
    cdProductos1.FieldByName('iItem').AsInteger       := anexo_prequisicion.FieldByName('iItem').AsInteger;
    cdProductos1.FieldByName('dCantidad').AsInteger   := anexo_prequisicion.FieldByName('dCantidad').AsInteger;
    cdProductos1.Post;
    anexo_prequisicion.Next;
  end;
  cdProductosProveedores.IndexFieldNames:='sIdProveedor';  //Se ordena por el campo sIdProveedor
  anexo_prequisicion.First;
  //ClienDataSet que contiene los productos que son asignado a un proveedor
  if cdProductosProveedores.active then cdProductosProveedores.EmptyDataSet   //Si ya esta activo solo lo limpio
  else                                                      //Si no esta activo
  begin
    cdProductosProveedores.CreateDataSet;                            //Crea el dataset
    cdProductosProveedores.Open;                                     //Abro la tabla
  end;
  //Para cargar la lista de proveedores
  ZQProveedores.active := false;
  ZQProveedores.open;
  //ClientDataSet en donde guardo los proveedores para la cotizacion
  if cdproveedorxrequisicion.active then cdproveedorxrequisicion.EmptyDataSet   //Si ya esta activo solo lo limpio
  else                                                      //Si no esta activo
  begin
    cdproveedorxrequisicion.CreateDataSet;
    Filtrar := False;   //Le asigno un false la varible para que no haga el afterscroll y sea mas rapido
    cdproveedorxrequisicion.Open;
    cdproveedorxrequisicion.IndexFieldNames:='iFolioRequisicion';
    Filtrar := True;  //Asigno true para qpoder filtrar por proveedores
  end;
  pcProveedores.ActivePageIndex := 0;  //que inicie en la pagina
end;

procedure TfrmRequisicionGen.pcProveedoresClick(Sender: TObject);
begin
  if pcProveedores.ActivePageIndex = 1 then
  begin
    if cdproveedorxrequisicion.RecordCount = 0 then
    begin
      MSG_W('No es posible cambiarse de ventana por que no tiene ningun proveedor cargado');
      pcProveedores.ActivePageIndex := 0;
      Abort;
    end else cdproveedorxrequisicion.First;
  end;
end;

end.
