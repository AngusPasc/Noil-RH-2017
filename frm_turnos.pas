unit frm_turnos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, unitexcepciones, udbgrid, unittbotonespermisos,
  UnitValidaTexto, UnitTablasImpactadas, unitactivapop, FormAutoScaler,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfrmTurnos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tsIdTurno: TDBEdit;
    tsDescripcion: TDBEdit;
    frmBarra1: TfrmBarra;
    ds_turnos: TDataSource;
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
    Label3: TLabel;
    tsOrigenTierra: TDBComboBox;
    Label4: TLabel;
    tsPrefijo: TDBEdit;
    Turnos: TZQuery;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    TurnossContrato: TStringField;
    TurnossIdTurno: TStringField;
    TurnossDescripcion: TStringField;
    TurnossOrigenTierra: TStringField;
    TurnossPrefijo: TStringField;
    TurnosiJornadas: TIntegerField;
    fsc_turnos: TFormAutoScaler;
    grid_turnos: TcxGrid;
    grid_turnosDBTableView1: TcxGridDBTableView;
    grid_turnosDBTableView1Column1: TcxGridDBColumn;
    grid_turnosDBTableView1Column2: TcxGridDBColumn;
    grid_turnosLevel1: TcxGridLevel;
    grid_turnosDBTableView1Column3: TcxGridDBColumn;
    grid_turnosDBTableView1Column4: TcxGridDBColumn;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_turnosCellClick(Column: TColumn);
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
    procedure tsIdTurnoEnter(Sender: TObject);
    procedure tsIdTurnoExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsOrigenTierraEnter(Sender: TObject);
    procedure tsOrigenTierraExit(Sender: TObject);
    procedure tsOrigenTierraKeyPress(Sender: TObject; var Key: Char);
    procedure tsPrefijoEnter(Sender: TObject);
    procedure tsPrefijoExit(Sender: TObject);
    procedure tsPrefijoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure grid_turnosDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTurnos: TfrmTurnos;
  //utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
  sIdOrig : string;

implementation
uses frm_RequisiondePersonal;

{$R *.dfm}

procedure TfrmTurnos.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmTurnos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    if (trim(frmRequisiciondePersonal.bbandera.Text) = 'frmRequisiciondePersonal') then
    begin
      frmRequisiciondePersonal.bbandera.text :='';
      frmRequisiciondePersonal.qryTurnos.Refresh;
      frmRequisiciondePersonal.qryRequisicionPersonal.FieldByName('sIdTurno').AsString    :=  Turnos.FieldByName('sIdTurno').AsString;
    end;
  except

  end;
  Turnos.Cancel ;
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmTurnos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adTurnos', PopupPrincipal);
  OpcButton := '' ;
  sIdOrig := '';
  frmBarra1.btnCancel.Click ;
  Turnos.Active := False ;
  Turnos.Params.ParamByName('Contrato').DataType := ftString ;
  Turnos.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Turnos.Open ;
  //UtGrid:=TicdbGrid.create(grid_turnos);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmTurnos.grid_turnosCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmTurnos.grid_turnosDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmTurnos.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmTurnos, popupprincipal);
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Turnos.Append ;
   Turnos.FieldValues [ 'sContrato' ] := Global_Contrato ;
   tsIdTurno.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_turnos.Enabled := False;   
end;

procedure TfrmTurnos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  sIdOrig := Turnos.FieldByName('sIdTurno').AsString;
  try
      //activapop(frmTurnos, popupprincipal);
      Turnos.Edit ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al editar registro', 0);
    frmBarra1.btnCancel.Click ;
    end;
  end ;
  tsIdTurno.SetFocus ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  grid_turnos.Enabled := False;
end;

procedure TfrmTurnos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lEdita: boolean;
begin
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Descripcion');nombres.Add('Obra en Tierra');nombres.Add('Prefijo');
   cadenas.Add(tsDescripcion.Text);cadenas.Add(tsOrigenTierra.Text);cadenas.Add(tsPrefijo.Text);
   if not validaTexto(nombres, cadenas, 'Turno', tsIdTurno.Text) then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;
   {Continua insercion de datos}
   lEdita := false;
   if Turnos.State = dsEdit then
      lEdita := true;
   try
      Turnos.FieldValues [ 'sContrato' ]  := Global_Contrato ;
      //desactivapop(popupprincipal);
      Turnos.Post ;
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
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al salvar registro', 0);
     frmBarra1.btnCancel.Click ;
     lEdita := false;//cancelar la actualizacion de tablas dependientes
     end;
   end;
   if (lEdita) and (Turnos.FieldByName('sIdTurno').AsString <> sIdOrig) then
   begin
       tablasDependientes(sIdOrig);
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_turnos.Enabled := True;
end;

procedure TfrmTurnos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   //desactivapop(popupprincipal);
   Turnos.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_turnos.Enabled := True;
end;

procedure TfrmTurnos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Turnos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(Turnos.FieldByName('sIdTurno').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      try
        Turnos.Delete ;
      except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Turnos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmTurnos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Turnos.Active := False ;
  Turnos.Open ;
end;

procedure TfrmTurnos.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTurnos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsOrigenTierra.SetFocus
end;

procedure TfrmTurnos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmTurnos.Paste1Click(Sender: TObject);
begin
  //UtGrid.AddRowsFromClip;
end;

procedure TfrmTurnos.Copy1Click(Sender: TObject);
begin
 //UtGrid.CopyRowsToClip;
end;

procedure TfrmTurnos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmTurnos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmTurnos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmTurnos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmTurnos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmTurnos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmTurnos.tsIdTurnoEnter(Sender: TObject);
begin
    tsIdTurno.Color := global_color_entradaERP
end;

procedure TfrmTurnos.tsIdTurnoExit(Sender: TObject);
begin
    tsIdTurno.Color := global_color_salidaPU
end;

procedure TfrmTurnos.tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsDESCRIPCION.SetFocus
end;

function TfrmTurnos.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sIdTurno');ParamValuesSET.Add(Turnos.FieldByName('sIdTurno').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdTurno');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('turnos',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
end;

function TfrmTurnos.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdTurno');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('turnos',ParamNamesWHERE,ParamValuesWHERE);
end;


procedure TfrmTurnos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmTurnos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaPU
end;

procedure TfrmTurnos.tsOrigenTierraEnter(Sender: TObject);
begin
    tsOrigenTierra.Color := global_color_entradaERP
end;

procedure TfrmTurnos.tsOrigenTierraExit(Sender: TObject);
begin
    tsOrigenTierra.Color := global_color_salidaPU
end;

procedure TfrmTurnos.tsOrigenTierraKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsPrefijo.SetFocus 
end;

procedure TfrmTurnos.tsPrefijoEnter(Sender: TObject);
begin
    tsPrefijo.Color := global_color_entradaERP
end;

procedure TfrmTurnos.tsPrefijoExit(Sender: TObject);
begin
    tsPrefijo.Color := global_color_salidaPU
end;

procedure TfrmTurnos.tsPrefijoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsIdTurno.SetFocus
end;

end.
