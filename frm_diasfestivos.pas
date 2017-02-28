unit frm_diasfestivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ComCtrls, ADODB,  RXDBCtrl,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, rxToolEdit, unitexcepciones, udbgrid, unittbotonespermisos, UnitValidaTexto, unitactivapop,
  JvExMask, JvToolEdit, JvDBControls, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, DBDateTimePicker, UnitValidacion,
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
  function IsDate(ADate: string): Boolean;
type
  TfrmDiasFestivos = class(TForm)
    frmBarra1: TfrmBarra;
    ds_diasespeciales: TDataSource;
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
    DiasEspeciales: TZQuery;
    DiasEspecialessContrato: TStringField;
    DiasEspecialesdIdFecha: TDateField;
    DiasEspecialesiJornada: TIntegerField;
    DiasEspecialessDescripcion: TStringField;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    tsDescripcion: TDBEdit;
    tiJornada: TDBEdit;
    tdIdFecha: TDBDateTimePicker;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_tiposdeequipo: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_tiposdeequipoCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tiJornadaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_tiposdeequipoEnter(Sender: TObject);
    procedure grid_tiposdeequipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_tiposdeequipoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tiJornadaEnter(Sender: TObject);
    procedure tiJornadaExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_tiposdeequipoMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure grid_tiposdeequipoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_tiposdeequipoTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure tiJornadaChange(Sender: TObject);
    procedure DiasEspecialesiJornadaSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiasFestivos: TfrmDiasFestivos;
  //utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
implementation

{$R *.dfm}

procedure TfrmDiasFestivos.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmDiasFestivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DiasEspeciales.Cancel ;
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;
end;

function IsDate(ADate: string): Boolean;
 var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmDiasFestivos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adFestivos', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_tiposdeequipo);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  DiasEspeciales.Active := False ;
  DiasEspeciales.Params.ParamByName('Contrato').Value := Global_Contrato ;
  DiasEspeciales.Params.ParamByName('Contrato').DataType := ftString ;
  DiasEspeciales.Open ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmDiasFestivos.grid_tiposdeequipoCellClick(Column: TColumn);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiasFestivos.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmDiasFestivos, popupprincipal);
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   DiasEspeciales.Append ;
   DiasEspeciales.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   DiasEspeciales.FieldValues [ 'dIdFecha' ]  := Date ;
   tdIdFecha.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmDiasFestivos.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
      //activapop(frmDiasFestivos, popupprincipal);
      DiasEspeciales.Edit ;
   except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Dias Festivos', 'Al editar registro', 0);
     frmBarra1.btnCancel.Click ;
     end;
   end ;
   tdIdFecha.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmDiasFestivos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Jornada');nombres.Add('Descripcion');
   cadenas.Add(tiJornada.Text);cadenas.Add(tsDescripcion.Text);
   if not validaTexto(nombres, cadenas, '', '') then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;

      DiasEspeciales.FieldValues [ 'dIdFecha' ]  := tdIdFecha.Date ;
   {Continua insercion de datos}
  try
      //desactivapop(popupprincipal);
      DiasEspeciales.FieldValues [ 'sContrato' ]  := Global_Contrato ;

      DiasEspeciales.Post ;
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
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Dias Festivos', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
    end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmDiasFestivos.frmBarra1btnCancelClick(Sender: TObject);
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
  DiasEspeciales.Cancel ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmDiasFestivos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If DiasEspeciales.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        DiasEspeciales.Delete ;
      except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Dias Festivos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmDiasFestivos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  DiasEspeciales.Active := False ;
  DiasEspeciales.Open ;
end;

procedure TfrmDiasFestivos.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;

procedure TfrmDiasFestivos.tiJornadaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiJornada,key) then
   key:=#0;
  if key = #13 then
    tsDescripcion.SetFocus 
end;

procedure TfrmDiasFestivos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdIdFecha.SetFocus
end;

procedure TfrmDiasFestivos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmDiasFestivos.Paste1Click(Sender: TObject);
begin
 //UtGrid.AddRowsFromClip;
end;

procedure TfrmDiasFestivos.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;
procedure TfrmDiasFestivos.DiasEspecialesiJornadaSetText(Sender: TField;
  const Text: string);
begin
    Sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmDiasFestivos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmDiasFestivos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmDiasFestivos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmDiasFestivos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmDiasFestivos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmDiasFestivos.Salir1Click(Sender: TObject);
begin
    frmbarra1.btnExit.Click 
end;

procedure TfrmDiasFestivos.grid_tiposdeequipoEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiasFestivos.grid_tiposdeequipoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiasFestivos.grid_tiposdeequipoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiasFestivos.grid_tiposdeequipoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmDiasFestivos.grid_tiposdeequipoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmDiasFestivos.grid_tiposdeequipoTitleClick(Column: TColumn);
begin
  //UtGrid.DbGridTitleClick(Column);
end;


procedure TfrmDiasFestivos.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
   tiJornada.SetFocus
end;


procedure TfrmDiasFestivos.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entradaERP
end;

procedure TfrmDiasFestivos.tdIdFechaExit(Sender: TObject);
begin

    tdIdFecha.Color := global_color_salidaERP;
end;

procedure TfrmDiasFestivos.tiJornadaChange(Sender: TObject);
begin
  tdbeditchangef(tiJornada,'Jornada');
end;

procedure TfrmDiasFestivos.tiJornadaEnter(Sender: TObject);
begin
    tiJornada.Color := global_color_entradaERP
end;

procedure TfrmDiasFestivos.tiJornadaExit(Sender: TObject);
begin
    tiJornada.Color := global_color_salidaERP;
end;

procedure TfrmDiasFestivos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmDiasFestivos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

end.
