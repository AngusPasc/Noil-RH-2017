unit frm_Cuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, ADODB, UnitTablasImpactadas,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, sSkinProvider,UDBGRID,
  unitexcepciones, unittbotonespermisos, UnitValidaTexto,unitactivapop,
  UFunctionsGHH, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;
        
type
  TfrmCuentas = class(TForm)
    frmBarra1: TfrmBarra;     
    DBCuentas: TfrxDBDataset;
    frxCuentas: TfrxReport;
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
    ds_cuentas: TDataSource;
    cuentas: TZQuery;
    sSkinProvider1: TsSkinProvider;
    cuentassIdCuenta: TStringField;
    cuentassDescripcion: TStringField;
    cuentassMedida: TStringField;
    cuentasdVentaMN: TFloatField;
    cuentasdVentaDLL: TFloatField;
    Imprimir1: TMenuItem;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_cuentas: TcxGrid;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    tsIdCuenta: TDBEdit;
    tsDescripcion: TDBEdit;
    tdVentaMN: TDBEdit;
    tdVentaDLL: TDBEdit;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_cuentasCellClick(Column: TColumn);
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
    procedure tsIdCuentaEnter(Sender: TObject);
    procedure tsIdCuentaExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tdVentaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaDLLEnter(Sender: TObject);
    procedure tdVentaDLLExit(Sender: TObject);
    procedure tdVentaDLLKeyPress(Sender: TObject; var Key: Char);
    //******************************BRITO 02/12/10******************************
    function actualizarCuenta(idOrig: string): boolean;
    procedure grid_cuentasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_cuentasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_cuentasTitleClick(Column: TColumn);
    procedure Imprimir1Click(Sender: TObject);
    function estaEnBitacoraDePersonal(sIdCuenta: string): boolean;
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    //******************************BRITO 02/12/10******************************

  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCuentas: TfrmCuentas;
  //utgrid:ticdbgrid;
  botonpermiso: tbotonespermisos;
  //****************************BRITO 02/12/10****************************
  sOldCuenta: string;
  //****************************BRITO 02/12/10****************************
  sOpcion : string;
implementation

{$R *.dfm}

procedure TfrmCuentas.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmCuentas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Cuentas.Cancel ;
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmCuentas.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cCuentas', PopupPrincipal);
  OpcButton := '' ;
  frmbarra1.btnCancel.Click ;
  Cuentas.Active := False ;
  Cuentas.Open ;
  //UtGrid:=TicdbGrid.create(grid_cuentas);
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmCuentas.grid_cuentasCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmCuentas.grid_cuentasMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmCuentas.grid_cuentasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmCuentas.grid_cuentasTitleClick(Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;


function TfrmCuentas.estaEnBitacoraDePersonal(sIdCuenta: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT iIdDiario FROM bitacoradepersonal WHERE sTipoPernocta = :sTipoPernocta LIMIT 1');
    ParamByName('sTipoPernocta').Value := sIdCuenta;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

procedure TfrmCuentas.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Cuentas.Append ;
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tsIdCuenta.SetFocus ;
   sOldCuenta := '' ;//***********************BRITO 02/12/10********************
   //activapop(frmCuentas,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   grid_cuentas.Enabled := False;
end;

procedure TfrmCuentas.frmBarra1btnEditClick(Sender: TObject);
begin
   if estaEnBitacoraDePersonal(Cuentas.FieldByName('sIdCuenta').AsString) then
   begin
     MessageDlg('No se puede editar el registro porque ya ha sido utilizado' + #10 +
     'en el modulo de reporte diario personal y equipo', mtInformation, [mbOk], 0);
     exit;
   end;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
       Cuentas.Edit ;
       //activapop(frmCuentas,popupprincipal);
       sOldCuenta := Cuentas.FieldValues['sIdCuenta'] ;//************BRITO 02/12/10*************
   except
   on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Gastos Extras (Pernoctas)', 'Al agregar registro', 0);
       frmbarra1.btnCancel.Click ;
   end;
   end ;
   tsIdCuenta.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   sOpcion := 'Edit';
end;

//****************************BRITO 02/12/10************************************
//actualiza el valor sIdCuenta de las tablas bitacoradepernocta y
//bitacoradepernocta_aux a los nuevos valores del registro recien editado
function TfrmCuentas.actualizarCuenta(idOrig: string): boolean;

  procedure prepararConsulta(sSQL, original: string);
  begin
    Connection.zCommand.Active := False ;
    Connection.zCommand.Filtered := False;
    Connection.zCommand.SQL.Clear ;
    Connection.zCommand.SQL.Add(sSQL) ;
    Connection.zCommand.ParamByName('cuenta').Value := Cuentas.FieldByName('sIdCuenta').AsString ;
    //Connection.zCommand.ParamByName('contrato').Value := global_contrato ;
    Connection.zCommand.ParamByName('OldCuenta').Value := original ;
  end;

var
  sSQL: string;
begin
  result := true;

  //tabla bitacoradepernocta
  sSQL :=
  'UPDATE bitacoradepernocta SET '+
  'sIdCuenta = :cuenta '+
  //'WHERE sContrato = :Contrato '+
  //'AND sIdCuenta = :OldCuenta';
  'WHERE sIdCuenta = :OldCuenta ';
  prepararConsulta(sSQL, idOrig);
  try
    Connection.zCommand.ExecSQL;
  except
    result := false;
  end;

  //tabla bitacoradepernocta_aux
  sSQL :=
  'UPDATE bitacoradepernocta_aux SET '+
  'sIdCuenta = :cuenta '+
  //'WHERE sContrato = :Contrato '+
  //'AND sIdCuenta = :OldCuenta';
  'WHERE sIdCuenta = :OldCuenta ';
  prepararConsulta(sSQL, idOrig);
  try
    Connection.zCommand.ExecSQL;
  except
    result := false;
  end;
  
end;
//****************************BRITO 02/12/10************************************

procedure TfrmCuentas.frmBarra1btnPostClick(Sender: TObject);
//*******************************BRITO 02/12/10*********************************
var
    lEdicion: boolean;
    nombres, cadenas: TStringList;
begin
  {Validaciones de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Cuenta');  nombres.Add('Descripcion');  nombres.Add('Venta MN');
  cadenas.Add(tsIdCuenta.Text); cadenas.Add(tsDescripcion.Text); cadenas.Add(tdVentaMN.Text);

  nombres.Add('Venta DLL');
  cadenas.Add(tdVentaDLL.Text);

  if not validaTexto(nombres, cadenas, 'Cuenta',tsIdCuenta.Text) then
  begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
  end;

  {Continua insercion de datos..}

   lEdicion := false;
   if Cuentas.State = dsEdit then
       lEdicion := true;
//******************************BRITO 02/12/10**********************************
   try
       Cuentas.Post ;

      //**************************BRITO 02/12/10********************************
      //solo para modo edicion
      if lEdicion then begin
          //si el ID Cuenta ha cambiado, actualizar en todas las tablas
          If sOldCuenta <> Cuentas.FieldByName('sIdCuenta').AsString  Then Begin
              if not UnitTablasImpactadas.boolRelaciones(connection.zConnection) then
              begin
                  if actualizarCuenta(sOldCuenta) then
                      MessageDlg('Se actualizaron los datos de Pernocta para todo el contrato.', mtWarning, [mbOk], 0)
                  else
                      MessageDlg('No fue posible actualizar los datos de Pernocta para todo el contrato.', mtWarning, [mbOk], 0)
              end;
          End;
      end;
      //**************************BRITO 02/12/10********************************

       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       frmBarra1.btnPostClick(Sender);
       //desactivapop(popupprincipal);
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Gastos Extras (Pernoctas)', 'Al salvar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);

   if sOpcion = 'Edit' then
   begin
       grid_cuentas.Enabled := True;
       sOpcion := '';
   end;
end;

procedure TfrmCuentas.frmBarra1btnCancelClick(Sender: TObject);
begin
    frmBarra1.btnCancelClick(Sender);
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ;
    Cuentas.Cancel ;
    //desactivapop(popupprincipal);
    BotonPermiso.permisosBotones(frmBarra1);

    grid_cuentas.Enabled := True;
    sOpcion := '';
end;

procedure TfrmCuentas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Cuentas.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //**************************BRITO 02/12/10********************************
      //verificar si la cuenta se encuentra en alguna de las siguientes tablas antes de borrar
      //tabla bitacoradepernocta y bitacoradepernocta_aux
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      Connection.QryBusca.SQL.Add('SELECT sIdCuenta FROM bitacoradepernocta '+
                                  'WHERE sContrato = :Contrato AND sIdCuenta = :Cuenta '+
                                  'UNION SELECT sIdCuenta FROM bitacoradepernocta_aux '+
                                  'WHERE sContrato = :Contrato AND sIdCuenta = :Cuenta');
      Connection.QryBusca.ParamByName('Contrato').Value := Global_Contrato ;
      Connection.QryBusca.ParamByName('Cuenta').Value := Cuentas.FieldByName('sIdCuenta').AsString;
      Connection.QryBusca.Open ;
      If Connection.QryBusca.RecordCount > 0 Then Begin
          MessageDlg('El registro que desea eliminar ha sido utilizado en reportes diarios, no puede eliminarse.', mtInformation, [mbOk], 0);
      End
      Else Begin
          try
              Cuentas.Delete ;
          except
               on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Gastos Extras (Pernoctas)', 'Al eliminar registro', 0);
              end;
          end
      End;
    end;
BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmCuentas.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Cuentas.refresh ;
end;

procedure TfrmCuentas.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmCuentas.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then           
    tdVentaMN.SetFocus
end;

procedure TfrmCuentas.Imprimir1Click(Sender: TObject);
begin
    frmbarra1.btnPrinter.Click
end;

procedure TfrmCuentas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmCuentas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmCuentas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmCuentas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmCuentas.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if frmBarra1.btnCancel.Enabled = True then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmCuentas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmCuentas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmCuentas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmCuentas.tsIdCuentaEnter(Sender: TObject);
begin
    tsIdCuenta.Color := global_color_entradaERP
end;

procedure TfrmCuentas.tsIdCuentaExit(Sender: TObject);
begin
    tsIdCuenta.Color := global_color_salidaERP;
end;

procedure TfrmCuentas.tdVentaDLLEnter(Sender: TObject);
begin
    tdVentaDLL.Color := global_color_entradaERP
end;

procedure TfrmCuentas.tdVentaDLLExit(Sender: TObject);
begin
    tdVentaDLL.Color := global_color_salidaERP;
end;

procedure TfrmCuentas.tdVentaDLLKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsIdCuenta.SetFocus
end;

procedure TfrmCuentas.tdVentaMNEnter(Sender: TObject);
begin
    tdVentaMN.Color := global_color_entradaERP
end;

procedure TfrmCuentas.tdVentaMNExit(Sender: TObject);
begin
    tdVentaMN.Color := global_color_salidaERP;
end;

procedure TfrmCuentas.tdVentaMNKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        tdVentaDLL.SetFocus
end;

procedure TfrmCuentas.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmCuentas.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmCuentas.frmBarra1btnPrinterClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_gastosextras.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_gastosextras.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;
  If Cuentas.RecordCount > 0 Then
     frxCuentas.LoadFromFile (global_files + global_miReporte  + '_gastosextras.fr3') ;
  frxCuentas.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))

end;

end.
