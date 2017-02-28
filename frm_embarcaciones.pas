unit frm_embarcaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, sSkinProvider, RxLookup,
  rxToolEdit, rxCurrEdit, RXDBCtrl, UnitExcepciones, UDbGrid,FRM_INTELIGENT,
  UnitTBotonesPermisos, UnitValidaTexto, UnitTablasImpactadas,unitactivapop,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;
  procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
type      
  TfrmEmbarcaciones = class(TForm)
    frmBarra1: TfrmBarra;
    DBTotalesxCategoria: TfrxDBDataset;
    frxEmbarcacion: TfrxReport;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_tiposdeembarcacion: TDataSource;
    TiposdeEmbarcacion: TZReadOnlyQuery;
    ds_embarcaciones: TDataSource;
    embarcaciones: TZQuery;
    embarcacionessContrato: TStringField;
    embarcacionessIdEmbarcacion: TStringField;
    embarcacionessDescripcion: TStringField;
    embarcacionessIdTipoEmbarcacion: TStringField;
    embarcacionessImagen: TStringField;
    embarcacioneslStatus: TStringField;
    embarcacioneslSuministros: TStringField;
    embarcacioneslFases: TStringField;
    embarcacionesiJornada: TIntegerField;
    TiposdeEmbarcacionsIdTipoEmbarcacion: TStringField;
    TiposdeEmbarcacionsDescripcion: TStringField;
    TiposdeEmbarcacioniRenglon: TIntegerField;
    TiposdeEmbarcacionsTitulo: TStringField;
    embarcacionessTipo: TStringField;
    embarcacionessAplicaDiesel: TStringField;
    embarcacionesdCantidadInicial: TFloatField;
    embarcacionessIniciaDiesel: TStringField;
    embarcacionesdCantidadInicialAgua: TFloatField;
    pnl1: TPanel;
    grid_medios_transportes: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    tsIdEmbarcacion: TDBEdit;
    tsDescripcion: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    tsIdTipoEmbarcacion: TDBLookupComboBox;
    tlStatus: TDBComboBox;
    Label4: TLabel;
    Label8: TLabel;
    tlSuministros: TDBComboBox;
    tlFases: TDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    tiJornada: TDBEdit;
    lAplicaDiesel: TDBCheckBox;
    sPrioridad: TDBComboBox;
    Label10: TLabel;
    Label9: TLabel;
    dCantidadDiesel: TRxDBCalcEdit;
    dCantidadAgua: TRxDBCalcEdit;
    Label5: TLabel;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgrdtCellClick(Column: TColumn);
    procedure tsIdTipoEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure tlStatusKeyPress(Sender: TObject; var Key: Char);

    procedure tlFasesKeyPress(Sender: TObject; var Key: Char);
    procedure tlSuministrosKeyPress(Sender: TObject; var Key: Char);
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
    procedure tsIdEmbarcacionEnter(Sender: TObject);
    procedure tsIdEmbarcacionExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsIdTipoEmbarcacionEnter(Sender: TObject);
    procedure tsIdTipoEmbarcacionExit(Sender: TObject);
    procedure tlStatusEnter(Sender: TObject);
    procedure tlStatusExit(Sender: TObject);
    procedure tlFasesEnter(Sender: TObject);
    procedure tlFasesExit(Sender: TObject);
    procedure tlSuministrosEnter(Sender: TObject);
    procedure tlSuministrosExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tiJornadaEnter(Sender: TObject);
    procedure tiJornadaExit(Sender: TObject);
    procedure tiJornadaKeyPress(Sender: TObject; var Key: Char);
    procedure sPrioridadEnter(Sender: TObject);
    procedure sPrioridadExit(Sender: TObject);
    procedure sPrioridadKeyPress(Sender: TObject; var Key: Char);

    procedure dbgrdtMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure dbgrdtTitleClick(Column: TColumn);
    procedure Paste1Click(Sender: TObject);
    procedure dbgrdtMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure sPrioridadChange(Sender: TObject);

    procedure dCantidadDieselEnter(Sender: TObject);
    procedure dCantidadDieselExit(Sender: TObject);
    procedure dCantidadDieselKeyPress(Sender: TObject; var Key: Char);
    procedure Imprimir1Click(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function existeEnMovtosEMb(sIdEmb: string): boolean;
    procedure tiJornadaChange(Sender: TObject);
    procedure embarcacionesBeforePost(DataSet: TDataSet);
    procedure dCantidadDieselChange(Sender: TObject);
    procedure embarcacionesiJornadaSetText(Sender: TField; const Text: string);
    procedure dCantidadAguaChange(Sender: TObject);
    procedure dCantidadAguaEnter(Sender: TObject);
    procedure dCantidadAguaExit(Sender: TObject);
    procedure dCantidadAguaKeyPress(Sender: TObject; var Key: Char);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmbarcaciones: TfrmEmbarcaciones;
 // UtGrid:TicDbGrid;
  botonpermiso: tbotonespermisos;
  banderaagregar:boolean;
  sIdOrig, sTipoOrig, sAplicaDieselOrig: string;

implementation

{$R *.dfm}

procedure TfrmEmbarcaciones.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmEmbarcaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Embarcaciones.Cancel;
  action := cafree ;
 // UtGrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmEmbarcaciones.FormShow(Sender: TObject);
begin
 try
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cEmbarcaciones', PopupPrincipal);

  OpcButton := '' ;
  sIdOrig := '';
  frmbarra1.btnCancel.Click ;
  BotonPermiso.permisosBotones(frmBarra1);
  //UtGrid:=TicdbGrid.create(grid_embarcaciones);

  embarcaciones.Active := False ;
  //embarcaciones.Params.ParamByName('Contrato').DataType:= ftString ;
  //embarcaciones.Params.ParamByName('Contrato').Value := global_contrato ;
  embarcaciones.Open ;

  TiposdeEmbarcacion.Active := False ;
  TiposdeEmbarcacion.SQL.Clear ;
  TiposdeEmbarcacion.SQL.Add('select * from tiposdeembarcacion order by sIdTipoEmbarcacion' ) ;
  TiposdeEmbarcacion.Open ;
 except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al iniciar el formulario', 0);
end;
 end;
end;

procedure TfrmEmbarcaciones.dbgrdtCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmEmbarcaciones.dbgrdtMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  // UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEmbarcaciones.dbgrdtMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   // UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEmbarcaciones.dbgrdtTitleClick(Column: TColumn);
begin
   // UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEmbarcaciones.tsIdTipoEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tlStatus.SetFocus
end;

procedure TfrmEmbarcaciones.tlStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
    tlSuministros.SetFocus
end;



procedure TfrmEmbarcaciones.tlFasesKeyPress(Sender: TObject; var Key: Char);
begin
if  key = #13  then
{*  if ( key = #13 ) then
  begin
    if tiJornada.Visible then
      tiJornada.SetFocus
    else*}
     // sPrioridad.SetFocus;
end;

procedure TfrmEmbarcaciones.tlSuministrosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    //tlFases.SetFocus;
    sPrioridad.SetFocus;
end;

procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin
if Zeo.FieldValues[Camp]<0 then
 Zeo.FieldValues[Camp]:=Zeo.FieldValues[Camp]*-1;
end;


procedure TfrmEmbarcaciones.embarcacionesBeforePost(DataSet: TDataSet);
begin
 PCAbsoluto(embarcaciones,'dCantidadInicial');
end;

procedure TfrmEmbarcaciones.embarcacionesiJornadaSetText(Sender: TField;
  const Text: string);
begin
sender.Value:=abs(StrToIntDef(text,0));
end;

function TfrmEmbarcaciones.existeEnMovtosEMb(sIdEmb: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT iIdDiario FROM movimientosdeembarcacion WHERE sIdEmbarcacion = :id LIMIT 1');
    ParamByName('id').Value := sIdEmb;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;
procedure TfrmEmbarcaciones.frmBarra1btnAddClick(Sender: TObject);

begin

  try
   //activapop(frmEmbarcaciones,popupprincipal);
   banderaAgregar:=true;
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Embarcaciones.Append ;
   Embarcaciones.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   Embarcaciones.FieldValues ['lStatus'] := 'Activa' ;
   Embarcaciones.FieldValues ['lFases'] := 'No Aplica' ;
   Embarcaciones.FieldValues ['lSuministros'] := 'No Aplica' ;
   Embarcaciones.FieldValues ['sTipo'] := 'Secundario';
   Embarcaciones.FieldValues ['sAplicaDiesel'] := 'Si';
   Embarcaciones.FieldValues ['dCantidadInicial'] := 0;
   tsIdEmbarcacion.SetFocus ;
   grid_medios_transportes.Enabled:=false;



  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al agregar registro ', 0);
   end;
  end;

end;

procedure TfrmEmbarcaciones.frmBarra1btnEditClick(Sender: TObject);
begin
   banderaAgregar:=false;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sIdOrig := Embarcaciones.FieldByName('sIdEmbarcacion').AsString;
   sTipoOrig := Embarcaciones.FieldByName('sTipo').AsString;
   sAplicaDieselOrig := Embarcaciones.FieldByName('sAplicaDiesel').AsString;
   try
      //activapop(frmEmbarcaciones,popupprincipal);
      Embarcaciones.Edit ;
      grid_medios_transportes.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al editar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
   end ;
   tsIdEmbarcacion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);

end;

procedure TfrmEmbarcaciones.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lEdita: boolean;
  sAplicaDiesel: string;
begin
 //empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');nombres.Add('Clasificacion');
  nombres.Add('Status');//nombres.Add('Fases');
  nombres.Add('Suministros');nombres.Add('Prioridad');
  //nombres.Add('Jornada');

  cadenas.Add(tsDescripcion.Text);cadenas.Add(tsIdTipoEmbarcacion.Text);
  cadenas.Add(tlStatus.Text);//cadenas.Add(tlFases.Text);
  cadenas.Add(tlSuministros.Text);cadenas.Add(sPrioridad.Text);
  //cadenas.Add(tiJornada.Text);

  if not validaTexto(nombres, cadenas, 'Identificacion', tsIdEmbarcacion.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos
  //desactivapop(popupprincipal);
  lEdita := false;
  if Embarcaciones.State = dsEdit then
  begin
    lEdita := true;
    //****************************BRITO 16/05/2011******************************
    //impedir el cambio de ciertos datos si el registro ya fue usado en movimientos de embarcacion
    sAplicaDiesel := lAplicaDiesel.ValueUnchecked;
    if lAplicaDiesel.Checked then
      sAplicaDiesel := lAplicaDiesel.ValueChecked;
    if (sPrioridad.Text <> sTipoOrig) or (sAplicaDiesel <> sAplicaDieselOrig) then
    begin
      if existeEnMovtosEMb(sIdOrig) then
      begin
        //el registro ya existe, no permitir cambiar los datos
        if sPrioridad.Text <> sTipoOrig then
        begin
          Embarcaciones.FieldByName('sTipo').AsString := 'Principal';
          ShowMessage('No es posible cambiar la clasificacion de la embarcacion porque esta ya fue usada en el modulo de Movimientos de Barcos');
        end;
        if sAplicaDiesel <> sAplicaDieselOrig then
        begin
          Embarcaciones.FieldByName('sAplicaDiesel').AsString := sAplicaDieselOrig;
          ShowMessage('No es posible cambiar aplica combustible de la embarcacion porque esta ya fue usada en el modulo de Movimientos de Barcos');
        end;
      end; 
    end;
    //****************************BRITO 16/05/2011******************************
  end;

  try
     //soad-> Validacion de datos antes de insertar Embarcacion..
//     if (tsIdEmbarcacion.Text= '') or (tsDescripcion.Text = '') or (tsIdTipoEmbarcacion.Text = '') or (tiJornada.Text = '') then
//     begin
//          messageDlg('Existen Datos vacíos, Favor de Llenar.',mtInformation, [mbOk],0);
//          exit;
//     end;

     if Embarcaciones.FieldValues['sAplicaDiesel'] = 'Si' then
        Embarcaciones.FieldValues ['sIniciaDiesel'] := 'Si'
     else
        Embarcaciones.FieldValues ['sIniciaDiesel'] := 'No';

     Embarcaciones.FieldValues [ 'sContrato' ]  := Global_Contrato ;
     Embarcaciones.Post ;
     Insertar1.Enabled := True ;
     Editar1.Enabled := True ;
     Registrar1.Enabled := False ;
     Can1.Enabled := False ;
     Eliminar1.Enabled := True ;
     Refresh1.Enabled := True ;
     Salir1.Enabled := True ;
     frmBarra1.btnPostClick(Sender);

  except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al salvar registro', 0);
     frmbarra1.btnCancel.Click ;
     lEdita := false;//cancelar la actualizacion de tablas dependientes
     end;
  end;
  { esto dejo de ser necesario al definir embarcaciones como catalogo maestro (se hicieron relaciones en cascada)
  if (lEdita) and (Embarcaciones.FieldByName('sIdEmbarcacion').AsString <> sIdOrig) then
  begin
    tablasDependientes(sIdOrig);
  end;}

     BotonPermiso.permisosBotones(frmBarra1);
     grid_medios_transportes.Enabled:=true;
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmEmbarcaciones.frmBarra1btnCancelClick(Sender: TObject);

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
   Embarcaciones.Cancel ;

   BotonPermiso.permisosBotones(frmBarra1);
   grid_medios_transportes.Enabled:=true;
end;

procedure TfrmEmbarcaciones.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Embarcaciones.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        //soad-> Validacion antes de eliminar Embarcacion..
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select * from movimientosdeembarcacion where sIdEmbarcacion =:Embarcacion limit 1');
        //connection.QryBusca.SQL.Add('select * from movimientosdeembarcacion where sContrato =:Contrato and sIdEmbarcacion =:Embarcacion limit 3');
        //connection.QryBusca.Params.ParamByName('Contrato').DataType    := ftString;
        //connection.QryBusca.Params.ParamByName('Contrato').Value       := global_contrato;
        connection.QryBusca.Params.ParamByName('Embarcacion').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Embarcacion').Value    := tsIdEmbarcacion.Text;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            messageDlg('No se puede Eliminar la Embarcación. Existen movimientos Registrados.', mtInformation, [mbOk], 0);
            exit;
        end;

        Embarcaciones.Delete ;
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al eliminar registro', 0);
          end;
      end
    end
end;

procedure TfrmEmbarcaciones.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Embarcaciones.Refresh ;
  TiposdeEmbarcacion.Refresh ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al actualizar Grid',0);  end;
 end;
end;

procedure TfrmEmbarcaciones.frmBarra1btnExitClick(Sender: TObject);
begin
    frmBarra1.btnExitClick(Sender);
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ;
    close;
end;

procedure TfrmEmbarcaciones.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdTipoEmbarcacion.SetFocus
end;

procedure TfrmEmbarcaciones.Imprimir1Click(Sender: TObject);
begin
frmBarra1.btnPrinter.Click
end;

procedure TfrmEmbarcaciones.Insertar1Click(Sender: TObject);
begin

    frmBarra1.btnAdd.Click
end;

procedure TfrmEmbarcaciones.Paste1Click(Sender: TObject);
begin
  try
   
  except
   on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al pegar registro', 0);
   end;
  end;
end;

procedure TfrmEmbarcaciones.dCantidadAguaChange(Sender: TObject);
begin
TRxDBCalcEditChangef(dCantidadAgua,'Cantidad Inicial AGUAL');
end;

procedure TfrmEmbarcaciones.dCantidadAguaEnter(Sender: TObject);
begin
     dCantidadAgua.color := global_color_entradaERP
end;

procedure TfrmEmbarcaciones.dCantidadAguaExit(Sender: TObject);
begin
    dCantidadAgua.color := global_color_salidaerp;
end;

procedure TfrmEmbarcaciones.dCantidadAguaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       tsIdEmbarcacion.SetFocus
end;

procedure TfrmEmbarcaciones.dCantidadDieselChange(Sender: TObject);
begin
   TRxDBCalcEditChangef(dCantidadDiesel,'Cantidad Inicial DIESEL');
end;

procedure TfrmEmbarcaciones.dCantidadDieselEnter(Sender: TObject);
begin
  dCantidadDiesel.color := global_color_entradaERP
end;

procedure TfrmEmbarcaciones.dCantidadDieselExit(Sender: TObject);
begin
  dCantidadDiesel.color := global_color_salidaerp;
end;

procedure TfrmEmbarcaciones.dCantidadDieselKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dCantidadAgua.SetFocus
end;

procedure TfrmEmbarcaciones.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmEmbarcaciones.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmEmbarcaciones.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmEmbarcaciones.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmEmbarcaciones.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmEmbarcaciones.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmEmbarcaciones.sPrioridadChange(Sender: TObject);
begin
 //**********
   //***************************
         end;

procedure TfrmEmbarcaciones.sPrioridadEnter(Sender: TObject);
begin
      sPrioridad.Color := global_color_entradaERP
end;

procedure TfrmEmbarcaciones.sPrioridadExit(Sender: TObject);
begin
      sPrioridad.Color := global_color_salidaerp;
end;

procedure TfrmEmbarcaciones.sPrioridadKeyPress(Sender: TObject; var Key: Char);
begin
      If key = #13 then
         dCantidadDiesel.SetFocus
end;

procedure TfrmEmbarcaciones.tsIdEmbarcacionEnter(Sender: TObject);
begin
    tsIdEmbarcacion.Color := global_color_entradaERP
end;

procedure TfrmEmbarcaciones.tsIdEmbarcacionExit(Sender: TObject);
begin
    tsIdEmbarcacion.Color :=global_color_salidaERP;
end;

procedure TfrmEmbarcaciones.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
   end;

procedure TfrmEmbarcaciones.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmEmbarcaciones.tsIdTipoEmbarcacionEnter(Sender: TObject);
begin
    tsIdTipoEmbarcacion.Color := global_color_entradaERP;
end;

procedure TfrmEmbarcaciones.tsIdTipoEmbarcacionExit(Sender: TObject);
begin
    tsIdTipoEmbarcacion.Color :=  global_color_salidaERP;
end;

procedure TfrmEmbarcaciones.tlStatusEnter(Sender: TObject);
begin
    tlStatus.Color := global_color_entradaERP
end;

procedure TfrmEmbarcaciones.tlStatusExit(Sender: TObject);
begin
    tlStatus.Color := global_color_salidaERP
end;

//procedure TfrmEmbarcaciones.tsImagenEnter(Sender: TObject);
//begin
  //  tsImagen.Color := global_color_entrada
//end;

//procedure TfrmEmbarcaciones.tsImagenExit(Sender: TObject);
//begin
//    tsImagen.Color := global_color_salida
//end;

procedure TfrmEmbarcaciones.tlFasesEnter(Sender: TObject);
begin
    tlFases.Color := global_color_entradaERP
end;

procedure TfrmEmbarcaciones.tlFasesExit(Sender: TObject);
begin
    tlFases.Color := global_color_salidaERP
end;

procedure TfrmEmbarcaciones.tlSuministrosEnter(Sender: TObject);
begin
    tlSuministros.Color := global_color_entradaERP
end;

procedure TfrmEmbarcaciones.tlSuministrosExit(Sender: TObject);
begin
    tlSuministros.Color := global_color_salidaERP
end;

procedure TfrmEmbarcaciones.frmBarra1btnPrinterClick(Sender: TObject);
var
    QryEmbarcaciones : TZReadOnlyQuery;
begin


    //Revisado por <ivan> 18 Septiembre de 2010
    QryEmbarcaciones := TZReadOnlyQuery.Create(self);
    QryEmbarcaciones.Connection := connection.zConnection;

    DBTotalesxCategoria.DataSet := QryEmbarcaciones;
    DBTotalesxCategoria.FieldAliases.Clear;

    QryEmbarcaciones.Active := False;
    QryEmbarcaciones.SQL.Clear;
    QryEmbarcaciones.SQL.Add('select * from embarcaciones order by sIdEmbarcacion');
    QryEmbarcaciones.Open;

    if not FileExists(global_files + global_miReporte + '_embarcaciones.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_embarcaciones.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

    If QryEmbarcaciones.RecordCount > 0 Then
       frxEmbarcacion.LoadFromFile (global_files + global_miReporte  + '_embarcaciones.fr3') ;
    frxEmbarcacion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

    if QryEmbarcaciones.RecordCount > 0 then
    ShowMessage('No existen registros para imprimir');
end;

function TfrmEmbarcaciones.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sIdEmbarcacion');ParamValuesSET.Add(embarcaciones.FieldByName('sIdEmbarcacion').AsString);
  //ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdEmbarcacion');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('embarcaciones',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end;
end;

procedure TfrmEmbarcaciones.tiJornadaChange(Sender: TObject);
begin
//   if TDBEdit(Sender).Text = '-' then
//    TDBEdit(Sender).Text := '';
//  TRxDBCalcEditChangef(dCantidadDiesel,'Cantidad Inicial DIESEL');
tdbeditchangei(tiJornada,'Jornada');
end;

procedure TfrmEmbarcaciones.tiJornadaEnter(Sender: TObject);
begin
    tiJornada.Color := global_color_entradaERP;
end;

procedure TfrmEmbarcaciones.tiJornadaExit(Sender: TObject);
begin
    tiJornada.Color := global_color_salidaERP;
end;

procedure TfrmEmbarcaciones.tiJornadaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
//    sPrioridad.SetFocus;
end;

end.
