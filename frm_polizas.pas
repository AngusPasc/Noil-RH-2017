unit frm_polizas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,
  DBGrids, ComCtrls, global, DB, Menus,  RXDBCtrl, ExtCtrls, UnitValidaTexto,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, rxToolEdit,
  unittbotonespermisos, udbgrid, unitexcepciones, unitactivapop,
  DBDateTimePicker, cxGraphics, cxControls, cxLookAndFeels,
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

  function IsDate(ADate: string): Boolean;

type
  TfrmPolizas = class(TForm)
    frmBarra1: TfrmBarra;
    dsPolizas: TDataSource;
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
    Polizas: TZQuery;
    PolizassContrato: TStringField;
    PolizasdFechaInicio: TDateField;
    PolizasdFechaFinal: TDateField;
    PolizassFianza: TMemoField;
    PolizassPoliza: TMemoField;
    Polizasfianza: TStringField;
    Polizaspoliza: TStringField;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    tsFolio: TDBMemo;
    tsEmisor: TDBMemo;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_polizas: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_polizasEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsFolioEnter(Sender: TObject);
    procedure tsFolioExit(Sender: TObject);
    procedure tsFolioKeyPress(Sender: TObject; var Key: Char);
    procedure tsEmisorEnter(Sender: TObject);
    procedure tsEmisorExit(Sender: TObject);
    procedure tsEmisorKeyPress(Sender: TObject; var Key: Char);
    procedure grid_polizasCellClick(Column: TColumn);
    procedure grid_polizasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_polizasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_polizasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_polizasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_polizasTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tdFechaInicioChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPolizas: TfrmPolizas;
  Opcion : String ;
  Registro_Actual : String ;
  botonpermiso:tbotonespermisos;
  utgrid:ticdbgrid;
  banderaagregar:boolean;
implementation

{$R *.dfm}

procedure TfrmPolizas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Polizas.Cancel ;
  action := cafree ;
 // botonpermiso.free;
  //utgrid.destroy;
end;

function IsDate(ADate: string): Boolean;
 var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmPolizas.grid_polizasEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;


procedure TfrmPolizas.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPolizas', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_polizas);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  Polizas.Active := False ;
  Polizas.Params.ParamByName('Contrato').DataType := ftString ;
  Polizas.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Polizas.Open ;
  Grid_Polizas.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmPolizas.frmBarra1btnAddClick(Sender: TObject);
begin
try
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  grid_polizas.Enabled:=false;
  connection.qryBusca.Active := False ;
  connection.qryBusca.SQL.Clear ;
  connection.qryBusca.SQL.Add('Select * from polizas where sContrato = :contrato Order By dFechaInicio Desc') ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Open ;
  banderaagregar:=true;
  Polizas.Append ;
  If connection.qryBusca.RecordCount > 0 Then
  Begin
      Polizas.FieldValues [ 'sContrato' ]  := Global_Contrato ;
      Polizas.FieldValues [ 'dFechaInicio' ] := connection.qryBusca.FieldValues [ 'dFechaFinal' ] + 1 ;
      Polizas.FieldValues [ 'dFechaFinal' ] := connection.qryBusca.FieldValues [ 'dFechaFinal' ] + 1 ;
      Polizas.FieldValues [ 'sFianza' ] := connection.qryBusca.FieldValues [ 'sFianza' ] ;
      Polizas.FieldValues [ 'sPoliza' ] := connection.qryBusca.FieldValues [ 'sPoliza' ] ;
  End
  Else
  Begin
      Polizas.FieldValues ['dFechaInicio'] := Date ;
      Polizas.FieldValues ['dFechaFinal'] := Date ;
  End ;
  tdFechaInicio.SetFocus ;

except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_polizas', 'Al agregar registro', 0);
end;
end;
  //activapop(frmPolizas, popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmPolizas.frmBarra1btnEditClick(Sender: TObject);
begin
//activapop(frmPolizas, popupprincipal);
 try
    frmBarra1.btnEditClick(Sender);
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;
    try
    grid_polizas.Enabled:=false;
        Polizas.Edit ;
    banderaagregar:=false;
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Polizas y Fianzas', 'Al editar registro', 0);
            frmBarra1.btnCancel.Click ;
        end;
    end ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_polizas', 'Al editar registro', 0);
  end;
 end;
    tdFechaInicio.SetFocus;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmPolizas.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin

   //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicio.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdFechaFinal.SetFocus;
   exit;
   end;

  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Fianza de Cumplimiento');nombres.Add('Poliza de seguro...');
  cadenas.Add(tsFolio.Text);cadenas.Add(tsEmisor.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

    //desactivapop(popupprincipal);
    try
        Polizas.FieldValues [ 'sContrato' ]  := Global_Contrato ;
        Polizas.FieldValues [ 'dFechaInicio' ]  := tdfechainicio.date ;
        Polizas.FieldValues [ 'dFechaFinal' ]  := tdFechafinal.date ;
        Polizas.Post ;
        Insertar1.Enabled := True ;
        Editar1.Enabled := True ;
        Registrar1.Enabled := False ;
        Can1.Enabled := False ;
        Eliminar1.Enabled := True ;
        Refresh1.Enabled := True ;
        Salir1.Enabled := True ;
        frmBarra1.btnPostClick(Sender);
        grid_polizas.Enabled:=true;
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Polizas y Fianzas', 'Al actualizar registro', 0);
            frmBarra1.btnCancel.Click ;
        end;
    End;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled:=false;
    //if banderaagregar then
    //frmbarra1.btnAdd.Click;
end;

procedure TfrmPolizas.frmBarra1btnCancelClick(Sender: TObject);
begin
//  desactivapop(popupprincipal);
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Polizas.Cancel ;
  BotonPermiso.permisosBotones(frmBarra1);
  grid_polizas.Enabled:=true;
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmPolizas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Polizas.RecordCount  > 0 then
     If MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        try
           Polizas.Delete ;
        except
           on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Polizas y Fianzas', 'Al eliminar registro', 0);
           end;
        end
     End
end;

procedure TfrmPolizas.frmBarra1btnRefreshClick(Sender: TObject);
begin
  try
    Polizas.Active := False ;
    Polizas.Open
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_polizas', 'Al actualizar grid', 0);
    end;
  end;
end;

procedure TfrmPolizas.frmBarra1btnExitClick(Sender: TObject);
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


procedure TfrmPolizas.tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     tdFechaFinal.SetFocus 
end;

procedure TfrmPolizas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmPolizas.Paste1Click(Sender: TObject);
begin
//UtGrid.AddRowsFromClip;
end;

procedure TfrmPolizas.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure TfrmPolizas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmPolizas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmPolizas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmPolizas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmPolizas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmPolizas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmPolizas.tdFechaInicioChange(Sender: TObject);
begin
//  if tdFechaFinal.Date<tdFechaInicio.Date then

end;

procedure TfrmPolizas.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entradaERP
end;

procedure TfrmPolizas.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salidaERP
end;

procedure TfrmPolizas.tdFechaFinalChange(Sender: TObject);
begin
//  tdFechaFinal.MinDate:=tdFechainicio.Date;
end;

procedure TfrmPolizas.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entradaERP ;
end;

procedure TfrmPolizas.tdFechaFinalExit(Sender: TObject);
begin
  tdFechaFinal.Color := global_color_salidaERP ;
end;

procedure TfrmPolizas.tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    tsFolio.SetFocus
end;

procedure TfrmPolizas.tsFolioEnter(Sender: TObject);
begin
    tsFolio.Color := global_color_entradaERP
end;

procedure TfrmPolizas.tsFolioExit(Sender: TObject);
begin
    tsFolio.Color := global_color_salidaERP;
end;

procedure TfrmPolizas.tsFolioKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsEmisor.SetFocus
end;

procedure TfrmPolizas.tsEmisorEnter(Sender: TObject);
begin
    tsEmisor.Color := global_color_entradaERP
end;

procedure TfrmPolizas.tsEmisorExit(Sender: TObject);
begin
    tsEmisor.Color := global_color_salidaERP;
end;

procedure TfrmPolizas.tsEmisorKeyPress(Sender: TObject; var Key: Char);
begin
    If KEy = #13 Then
        tdFechaInicio.SetFocus
end;

procedure TfrmPolizas.grid_polizasCellClick(Column: TColumn);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmPolizas.grid_polizasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmPolizas.grid_polizasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmPolizas.grid_polizasMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPolizas.grid_polizasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPolizas.grid_polizasTitleClick(Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

end.
