unit frm_firmantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,  Jpeg,
  DBGrids, ComCtrls, global, DB, Menus,  RXDBCtrl, ExtCtrls, 
  Newpanel, ZDataset, ZAbstractRODataset, ZAbstractDataset, rxToolEdit,
  UnitTBotonesPermisos, UnitExcepciones, udbgrid,UnitValidaTexto,
  unitactivapop, JvExMask, JvToolEdit, JvDBControls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, DateUtils, JvDBDatePickerEdit,
  DBDateTimePicker, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxImage, cxLabel, ExtDlgs, dxGDIPlusClasses, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  FormAutoScaler;


  function IsDate(ADate: string): Boolean;
  type
  TfrmFirmas = class(TForm)
    frmBarra1: TfrmBarra;
    ds_ordenesdetrabajo: TDataSource;
    dsFirmas: TDataSource;
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
    Firmas: TZQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    pgControl: TPageControl;
    TabDependenca: TTabSheet;
    TabContratista: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    tsFirma5: TDBEdit;
    tsFirma6: TDBEdit;
    tsPuesto5: TDBEdit;
    tsPuesto6: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    tsFirma2: TDBEdit;
    tsFirma3: TDBEdit;
    tsFirma4: TDBEdit;
    tsPuesto2: TDBEdit;
    tsPuesto3: TDBEdit;
    tsPuesto4: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    tsFirma8: TDBEdit;
    tsPuesto8: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    tsFirma1: TDBEdit;
    tsPuesto1: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    tsFirma7: TDBEdit;
    tsPuesto7: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    tsFirma9: TDBEdit;
    tsPuesto9: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    tsFirma10: TDBEdit;
    tsPuesto10: TDBEdit;
    TabRequisiciones: TTabSheet;
    TabOrdenesCompra: TTabSheet;
    TabEntradasSalidas: TTabSheet;
    Label21: TLabel;
    tsPuesto24: TDBEdit;
    tsFirma24: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    tsPuesto26: TDBEdit;
    tsFirma26: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    tsPuesto27: TDBEdit;
    tsFirma27: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    tsPuesto14: TDBEdit;
    tsFirma14: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    tsPuesto15: TDBEdit;
    Label32: TLabel;
    tsFirma15: TDBEdit;
    Label33: TLabel;
    tsPuesto16: TDBEdit;
    Label34: TLabel;
    tsFirma16: TDBEdit;
    Label35: TLabel;
    tsPuesto17: TDBEdit;
    tsFirma17: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    tsPuesto18: TDBEdit;
    tsFirma18: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    TabEstimaciones: TTabSheet;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    tsPuesto19: TDBEdit;
    tsFirma19: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    tsPuesto20: TDBEdit;
    tsFirma20: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    tsPuesto21: TDBEdit;
    tsFirma21: TDBEdit;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    tsFirma22: TDBEdit;
    tsPuesto22: TDBEdit;
    ds_turnos: TDataSource;
    QryTurnos: TZQuery;
    cmbTurnos: TDBLookupComboBox;
    tsFirma23: TDBEdit;
    Label62: TLabel;
    tsPuesto23: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    tsPuesto25: TDBEdit;
    Label65: TLabel;
    tsFirma25: TDBEdit;
    ds_departamentos: TDataSource;
    departamentos: TZReadOnlyQuery;
    Label67: TLabel;
    tsPuesto28: TDBEdit;
    tsFirma28: TDBEdit;
    Label68: TLabel;
    tsPuesto29: TDBEdit;
    tsFirma29: TDBEdit;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    OpenPicture: TOpenPictureDialog;
    cxLabel4: TcxLabel;
    imgRealizaOrden: TcxImage;
    cxLabel1: TcxLabel;
    imgAutorizaOrden: TcxImage;
    cxLabel2: TcxLabel;
    OpenPicture2: TOpenPictureDialog;
    imgSello: TcxImage;
    cxLabel3: TcxLabel;
    OpenPicture3: TOpenPictureDialog;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    cbActualizarOrdenes: TCheckBox;
    tdIdFecha: TJvDBDateTimePicker;
    tsDepartamentos: TDBLookupComboBox;
    pnl2: TPanel;
    lb4: TLabel;
    tsNumeroOrden1: TDBLookupComboBox;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_firmantes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    frmtsclr1: TFormAutoScaler;
    //tsnumeroorden1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_firmantesEnter(Sender: TObject);
    procedure grid_firmantesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_firmantesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grid_firmantesCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma1KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma2KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma3KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma4KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma5KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma6KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma7KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma8KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma9KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma10KeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsPuesto1KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma1Enter(Sender: TObject);
    procedure tsFirma1Exit(Sender: TObject);
    procedure tsPuesto2KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma2Enter(Sender: TObject);
    procedure tsFirma2Exit(Sender: TObject);
    procedure tsPuesto3KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma3Enter(Sender: TObject);
    procedure tsFirma3Exit(Sender: TObject);
    procedure tsPuesto4KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma4Enter(Sender: TObject);
    procedure tsFirma4Exit(Sender: TObject);
    procedure tsPuesto5KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma5Enter(Sender: TObject);
    procedure tsFirma5Exit(Sender: TObject);
    procedure tsPuesto6KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma6Enter(Sender: TObject);
    procedure tsFirma6Exit(Sender: TObject);
    procedure tsPuesto7KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma7Enter(Sender: TObject);
    procedure tsFirma7Exit(Sender: TObject);
    procedure tsPuesto8KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma8Enter(Sender: TObject);
    procedure tsFirma8Exit(Sender: TObject);
    procedure tsPuesto9KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma9Enter(Sender: TObject);
    procedure tsFirma9Exit(Sender: TObject);
    procedure tsPuesto10KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma10Enter(Sender: TObject);
    procedure tsFirma10Exit(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tsNumeroOrden1Exit(Sender: TObject);
    procedure tsNumeroOrden1Enter(Sender: TObject);
    procedure tsNumeroOrden1KeyPress(Sender: TObject; var Key: Char);
    procedure FirmasAfterPost(DataSet: TDataSet);
    procedure tsPuesto24KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma24KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto26KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto27KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma26KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma27KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto14KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto15KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto16KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma14KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma15KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma16KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto17KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto18KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma17KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma18KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma24Enter(Sender: TObject);
    procedure tsFirma26Enter(Sender: TObject);
    procedure tsFirma27Enter(Sender: TObject);
    procedure tsFirma14Enter(Sender: TObject);
    procedure tsFirma15Enter(Sender: TObject);
    procedure tsFirma16Enter(Sender: TObject);
    procedure tsFirma17Enter(Sender: TObject);
    procedure tsFirma18Enter(Sender: TObject);
    procedure tsFirma24Exit(Sender: TObject);
    procedure tsFirma26Exit(Sender: TObject);
    procedure tsFirma27Exit(Sender: TObject);
    procedure tsFirma14Exit(Sender: TObject);
    procedure tsFirma15Exit(Sender: TObject);
    procedure tsFirma16Exit(Sender: TObject);
    procedure tsFirma18Exit(Sender: TObject);
    procedure tsFirma17Exit(Sender: TObject);
    procedure tsPuesto19KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma19KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto20KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma20KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto21KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma21KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto22KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma22KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma20Enter(Sender: TObject);
    procedure tsFirma20Exit(Sender: TObject);
    procedure tsFirma21Exit(Sender: TObject);
    procedure tsFirma22Exit(Sender: TObject);
    procedure tsFirma19Enter(Sender: TObject);
    procedure tsFirma21Enter(Sender: TObject);
    procedure tsFirma22Enter(Sender: TObject);
    procedure tsFirma19Exit(Sender: TObject);
    procedure grid_firmantesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_firmantesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_firmantesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure tsPuesto23KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma23KeyPress(Sender: TObject; var Key: Char);
    procedure tsPuesto25KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma25KeyPress(Sender: TObject; var Key: Char);
    procedure tsFirma23Enter(Sender: TObject);
    procedure tsPuesto23Enter(Sender: TObject);
    procedure tsPuesto24Enter(Sender: TObject);
    procedure tsPuesto25Enter(Sender: TObject);
    procedure tsFirma25Enter(Sender: TObject);
    procedure tsPuesto26Enter(Sender: TObject);
    procedure tsPuesto27Enter(Sender: TObject);
    procedure tsPuesto23Exit(Sender: TObject);
    procedure tsFirma23Exit(Sender: TObject);
    procedure tsPuesto24Exit(Sender: TObject);
    procedure tsPuesto25Exit(Sender: TObject);
    procedure tsFirma25Exit(Sender: TObject);
    procedure tsPuesto26Exit(Sender: TObject);
    procedure tsPuesto27Exit(Sender: TObject);
    procedure tsFirma27Change(Sender: TObject);
    procedure tsDepartamentosKeyPress(Sender: TObject; var Key: Char);
    procedure cmbTurnosKeyPress(Sender: TObject; var Key: Char);
    procedure imgRealizaOrdenClick(Sender: TObject);
    procedure FirmasAfterScroll(DataSet: TDataSet);
    procedure imgAutorizaOrdenClick(Sender: TObject);
    procedure imgSelloClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFirmas: TfrmFirmas;
  Opcion : String ;
  Registro_Actual : String ;
  BotonPermiso: TBotonesPermisos;  
 // utgrid:ticdbgrid;
  banderaagregar:boolean;
  
implementation

{$R *.dfm}





procedure TfrmFirmas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     BotonPermiso.free;
     action := cafree ;

end;

procedure TfrmFirmas.grid_firmantesEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmFirmas.grid_firmantesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmFirmas.grid_firmantesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;


procedure TfrmFirmas.grid_firmantesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmFirmas.grid_firmantesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmFirmas.grid_firmantesTitleClick(Column: TColumn);
begin
// UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmFirmas.imgAutorizaOrdenClick(Sender: TObject);
begin
  if (firmas.State = dsInsert) or (firmas.State = dsEdit) then
  begin
    OpenPicture2.Title := 'Inserta Imagen';
    if OpenPicture2.Execute then
    begin
      try
        imgAutorizaOrden.Picture.LoadFromFile(OpenPicture2.FileName);
      except
        imgAutorizaOrden.Picture.LoadFromFile('');
      end
    end
  end
end;

procedure TfrmFirmas.imgRealizaOrdenClick(Sender: TObject);
begin
  if (firmas.State = dsInsert) or (firmas.State = dsEdit) then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        imgRealizaOrden.Picture.LoadFromFile(OpenPicture.FileName);
      except
        imgRealizaOrden.Picture.LoadFromFile('');
      end
    end
  end
end;

procedure TfrmFirmas.imgSelloClick(Sender: TObject);
begin
    if (firmas.State = dsInsert) or  (firmas.State = dsEdit) then
    begin
      OpenPicture3.Title := 'Inserta Imagen';
      if OpenPicture3.Execute then
      begin
        try
          imgSello.Picture.LoadFromFile(OpenPicture3.FileName);
        except
          imgSello.Picture.LoadFromFile('');
        end
      end
    end
end;

procedure TfrmFirmas.FormShow(Sender: TObject);
begin
 try
  //UtGrid:=TicdbGrid.create(grid_firmantes);
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opFirmas', PopupPrincipal);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  pgcontrol.ActivePageIndex := 0 ;
  TabContratista.Caption := 'Firmantes por parte de : ' + connection.configuracion.FieldValues['sNombre'] ;
  OrdenesdeTrabajo.Active := False ;

  departamentos.Active := False;
  departamentos.Open;

  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.SQL.Clear ;
  If (global_grupo = 'INTEL-CODE') Then
     OrdenesdeTrabajo.SQL.Add('select ot.sNumeroOrden from ordenesdetrabajo ot where ot.sContrato =:Contrato ' +
                               'And ot.cIdStatus =:Status order by ot.sNumeroOrden')
  Else
     OrdenesdeTrabajo.SQL.Add('Select ot.sNumeroOrden from ordenesdetrabajo ot ' +
                               'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato '  +
                               'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
                               'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
                               'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden') ;
   OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
   OrdenesdeTrabajo.Params.ParamByName('Contrato').Value    := Global_Contrato ;
   OrdenesdeTrabajo.Params.ParamByName('status').DataType   := ftString ;
   OrdenesdeTrabajo.Params.ParamByName('status').Value      := connection.configuracion.FieldValues [ 'cStatusProceso' ];
 If (global_grupo <> 'INTEL-CODE') Then
   begin
     OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType  := ftString ;
     OrdenesdeTrabajo.Params.ParamByName('Usuario').Value     := Global_Usuario ;
   end;
   OrdenesdeTrabajo.Open ;
  If global_orden <> '' Then
  Begin
      tsNumeroOrden1.KeyValue := global_orden ;
      Firmas.Active := False ;
      Firmas.Params.ParamByName('Contrato').DataType := ftString ;
      Firmas.Params.ParamByName('Contrato').Value := Global_Contrato ;
      Firmas.Params.ParamByName('Orden').DataType := ftString ;
      Firmas.Params.ParamByName('Orden').Value := global_orden ;
      Firmas.Open ;
  End
  Else
  Begin
      If OrdenesdeTrabajo.RecordCount > 0 Then
          tsnumeroorden1.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
      Firmas.Active := False ;
      Firmas.Params.ParamByName('Contrato').DataType := ftString ;
      Firmas.Params.ParamByName('Contrato').Value := Global_Contrato ;
      Firmas.Params.ParamByName('Orden').DataType := ftString ;
      Firmas.Params.ParamByName('Orden').Value := tsNumeroOrden1.Text ;
      Firmas.Open ;
  End ;

  QryTurnos.Active := False;
  Qryturnos.ParamByName('Contrato').AsString := global_contrato;
  QryTurnos.Open;

  cmbTurnos.KeyValue := 'A';
  grid_firmantes.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al iniciar registro', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmFirmas.grid_firmantesCellClick(Column: TColumn);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

end;

procedure TfrmFirmas.frmBarra1btnAddClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  banderaAgregar:=true;
 // grid_firmantes.Enabled:=false;
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Frente de trabajo');cadenas.Add(tsNumeroOrden1.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

  //Sino existe ningun turno se da de alta en automatico uno.
  if Qryturnos.RecordCount = 0 then
  begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('insert into turnos (sContrato, sIdTurno, sDescripcion, sOrigenTierra, sPrefijo) values (:contrato, :turno, :descripcion, :tierra, :prefijo)');
      connection.QryBusca.ParamByName('contrato').AsString    := global_contrato;
      connection.QryBusca.ParamByName('turno').AsString       := 'A';
      connection.QryBusca.ParamByName('descripcion').AsString := 'TURNO A';
      connection.QryBusca.ParamByName('tierra').AsString      := 'No';
      connection.QryBusca.ParamByName('prefijo').AsInteger    := 0;
      connection.QryBusca.ExecSQL;

      Qryturnos.Refresh;
  end;

  //continuainserccion de datos
 try
  If tsNumeroOrden1.Text <> '' Then
  Begin

      frmBarra1.btnAddClick(Sender);
      Insertar1.Enabled := False ;
      Editar1.Enabled := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled := True ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled := False ;
      Salir1.Enabled := False ;

      connection.qryBusca.Active := False ;
      connection.qryBusca.SQL.Clear ;
      connection.qryBusca.SQL.Add('Select * from firmas where sContrato = :contrato And sNumeroOrden = :Orden Order By dIdFecha Desc') ;
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden1.Text ;
      connection.qryBusca.Open ;

      Firmas.Append ;

      tsDepartamentos.KeyValue := departamentos.FieldValues['sIdDepartamento'];
      cmbturnos.KeyValue       := qryturnos.FieldValues['sIdTurno'];

      If connection.qryBusca.RecordCount > 0 Then
      Begin
          if departamentos.RecordCount > 0 then
             tsDepartamentos.KeyValue := departamentos.FieldByName('sIdDepartamento').AsString;

          Firmas.FieldValues [ 'sIdDepartamento' ]  := tsDepartamentos.KeyValue;
          Firmas.FieldValues [ 'sContrato' ]  := Global_Contrato ;
          Firmas.FieldValues [ 'dIdFecha' ]   := connection.qryBusca.FieldValues [ 'dIdFecha' ] ;
          Firmas.FieldValues [ 'sIdTurno' ]   := 'A' ;
          tdIdFecha.Date := connection.qryBusca.Fieldbyname('didfecha').AsDateTime ;
          Firmas.FieldValues [ 'sFirmante1' ] := connection.qryBusca.FieldValues [ 'sFirmante1' ] ;
          Firmas.FieldValues [ 'sFirmante2' ] := connection.qryBusca.FieldValues [ 'sFirmante2' ] ;
          Firmas.FieldValues [ 'sFirmante3' ] := connection.qryBusca.FieldValues [ 'sFirmante3' ] ;
          Firmas.FieldValues [ 'sFirmante4' ] := connection.qryBusca.FieldValues [ 'sFirmante4' ] ;
          Firmas.FieldValues [ 'sFirmante5' ] := connection.qryBusca.FieldValues [ 'sFirmante5' ] ;
          Firmas.FieldValues [ 'sFirmante6' ] := connection.qryBusca.FieldValues [ 'sFirmante6' ] ;
          Firmas.FieldValues [ 'sFirmante7' ] := connection.qryBusca.FieldValues [ 'sFirmante7' ] ;
          Firmas.FieldValues [ 'sFirmante8' ] := connection.qryBusca.FieldValues [ 'sFirmante8' ] ;
          Firmas.FieldValues [ 'sFirmante9' ] := connection.qryBusca.FieldValues [ 'sFirmante9' ] ;
          Firmas.FieldValues [ 'sFirmante10' ] := connection.qryBusca.FieldValues [ 'sFirmante10' ] ;
          Firmas.FieldValues [ 'sFirmante11' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante12' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante13' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante14' ] := connection.qryBusca.FieldValues [ 'sFirmante14' ] ;
          Firmas.FieldValues [ 'sFirmante15' ] := connection.qryBusca.FieldValues [ 'sFirmante15' ] ;
          Firmas.FieldValues [ 'sFirmante16' ] := connection.qryBusca.FieldValues [ 'sFirmante16' ] ;
          Firmas.FieldValues [ 'sFirmante17' ] := connection.qryBusca.FieldValues [ 'sFirmante17' ] ;
          Firmas.FieldValues [ 'sFirmante18' ] := connection.qryBusca.FieldValues [ 'sFirmante18' ] ;
          Firmas.FieldValues [ 'sFirmante19' ] := connection.qryBusca.FieldValues [ 'sFirmante19' ] ;
          Firmas.FieldValues [ 'sFirmante20' ] := connection.qryBusca.FieldValues [ 'sFirmante20' ] ;
          Firmas.FieldValues [ 'sFirmante21' ] := connection.qryBusca.FieldValues [ 'sFirmante21' ] ;
          Firmas.FieldValues [ 'sFirmante22' ] := connection.qryBusca.FieldValues [ 'sFirmante22' ] ;
          Firmas.FieldValues [ 'sFirmante23' ] := connection.qryBusca.FieldValues [ 'sFirmante23' ] ;
          Firmas.FieldValues [ 'sFirmante24' ] := connection.qryBusca.FieldValues [ 'sFirmante24' ] ;
          Firmas.FieldValues [ 'sFirmante25' ] := connection.qryBusca.FieldValues [ 'sFirmante25' ] ;
          Firmas.FieldValues [ 'sFirmante26' ] := connection.qryBusca.FieldValues [ 'sFirmante26' ] ;
          Firmas.FieldValues [ 'sFirmante27' ] := connection.qryBusca.FieldValues [ 'sFirmante27' ] ;
          Firmas.FieldValues [ 'sFirmante28' ] := connection.qryBusca.FieldValues [ 'sFirmante28' ] ;
          Firmas.FieldValues [ 'sFirmante29' ] := connection.qryBusca.FieldValues [ 'sFirmante22' ] ;
          Firmas.FieldValues [ 'sPuesto1' ] := connection.qryBusca.FieldValues [ 'sPuesto1' ] ;
          Firmas.FieldValues [ 'sPuesto2' ] := connection.qryBusca.FieldValues [ 'sPuesto2' ] ;
          Firmas.FieldValues [ 'sPuesto3' ] := connection.qryBusca.FieldValues [ 'sPuesto3' ] ;
          Firmas.FieldValues [ 'sPuesto4' ] := connection.qryBusca.FieldValues [ 'sPuesto4' ] ;
          Firmas.FieldValues [ 'sPuesto5' ] := connection.qryBusca.FieldValues [ 'sPuesto5' ] ;
          Firmas.FieldValues [ 'sPuesto6' ] := connection.qryBusca.FieldValues [ 'sPuesto6' ] ;
          Firmas.FieldValues [ 'sPuesto7' ] := connection.qryBusca.FieldValues [ 'sPuesto7' ] ;
          Firmas.FieldValues [ 'sPuesto8' ] := connection.qryBusca.FieldValues [ 'sPuesto8' ] ;
          Firmas.FieldValues [ 'sPuesto9' ] := connection.qryBusca.FieldValues [ 'sPuesto9' ] ;
          Firmas.FieldValues [ 'sPuesto10' ] := connection.qryBusca.FieldValues [ 'sPuesto10' ] ;
          Firmas.FieldValues [ 'sPuesto11' ] := connection.qryBusca.FieldValues [ 'sPuesto11' ] ;
          Firmas.FieldValues [ 'sPuesto12' ] := connection.qryBusca.FieldValues [ 'sPuesto12' ] ;
          Firmas.FieldValues [ 'sPuesto13' ] := connection.qryBusca.FieldValues [ 'sPuesto13' ] ;
          Firmas.FieldValues [ 'sPuesto14' ] := connection.qryBusca.FieldValues [ 'sPuesto14' ] ;
          Firmas.FieldValues [ 'sPuesto15' ] := connection.qryBusca.FieldValues [ 'sPuesto15' ] ;
          Firmas.FieldValues [ 'sPuesto16' ] := connection.qryBusca.FieldValues [ 'sPuesto16' ] ;
          Firmas.FieldValues [ 'sPuesto17' ] := connection.qryBusca.FieldValues [ 'sPuesto17' ] ;
          Firmas.FieldValues [ 'sPuesto18' ] := connection.qryBusca.FieldValues [ 'sPuesto18' ] ;
          Firmas.FieldValues [ 'sPuesto19' ] := connection.qryBusca.FieldValues [ 'sPuesto19' ] ;
          Firmas.FieldValues [ 'sPuesto20' ] := connection.qryBusca.FieldValues [ 'sPuesto20' ] ;
          Firmas.FieldValues [ 'sPuesto21' ] := connection.qryBusca.FieldValues [ 'sPuesto21' ] ;
          Firmas.FieldValues [ 'sPuesto22' ] := connection.qryBusca.FieldValues [ 'sPuesto22' ] ;
          Firmas.FieldValues [ 'sPuesto23' ] := connection.qryBusca.FieldValues [ 'sPuesto23' ] ;
          Firmas.FieldValues [ 'sPuesto24' ] := connection.qryBusca.FieldValues [ 'sPuesto24' ] ;
          Firmas.FieldValues [ 'sPuesto25' ] := connection.qryBusca.FieldValues [ 'sPuesto25' ] ;
          Firmas.FieldValues [ 'sPuesto26' ] := connection.qryBusca.FieldValues [ 'sPuesto26' ] ;
          Firmas.FieldValues [ 'sPuesto27' ] := connection.qryBusca.FieldValues [ 'sPuesto27' ] ;
          Firmas.FieldValues [ 'sPuesto28' ] := connection.qryBusca.FieldValues [ 'sPuesto28' ] ;
          Firmas.FieldValues [ 'sPuesto29' ] := connection.qryBusca.FieldValues [ 'sPuesto29' ] ;
          Firmas.FieldValues [ 'bImagen14' ] := Null ;
          Firmas.FieldValues [ 'bImagen16' ] := Null ;
          Firmas.FieldValues [ 'bImagen14' ] := Null ;
          Firmas.FieldValues [ 'bImagen14Sello' ] := Null ;
      End
      Else
      Begin
          tdIdFecha.Date := Date ;
          Firmas.FieldValues [ 'sIdDepartamento' ]  := tsDepartamentos.KeyValue;
          Firmas.FieldValues ['dIdFecha'] := Date ;
          Firmas.FieldValues [ 'sFirmante1' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante2' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante3' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante4' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante5' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante6' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante7' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante8' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante9' ]  := '*' ;
          Firmas.FieldValues [ 'sFirmante10' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante11' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante12' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante13' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante14' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante15' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante16' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante17' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante18' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante19' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante20' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante21' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante22' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante23' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante24' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante25' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante26' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante27' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante28' ] := '*' ;
          Firmas.FieldValues [ 'sFirmante29' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto1' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto2' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto3' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto4' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto5' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto6' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto7' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto8' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto9' ]  := '*' ;
          Firmas.FieldValues [ 'sPuesto10' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto11' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto12' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto13' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto14' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto15' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto16' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto17' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto18' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto19' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto20' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto21' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto22' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto23' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto24' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto25' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto26' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto27' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto28' ] := '*' ;
          Firmas.FieldValues [ 'sPuesto29' ] := '*' ;
          Firmas.FieldValues [ 'bImagen14' ] := Null ;
          Firmas.FieldValues [ 'bImagen16' ] := Null ;
          Firmas.FieldValues [ 'bImagen14Sello' ] := Null ;
      End ;
      pgControl.ActivePageIndex := 0 ;

      tdIdFecha.SetFocus ;
  End;
  //activapop(frmFirmas, popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al agregar registro', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmFirmas.frmBarra1btnEditClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
 try
              banderaAgregar:=false;
  grid_firmantes.Enabled:=false;
    lValido := False ;
    If Trim(tsNumeroOrden1.Text) <> '' Then
        If global_grupo <> 'INTEL-CODE' Then
        Begin

             lValido := True ;
             ReporteDiario.Active := False ;
             ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
             ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
             ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
             ReporteDiario.Params.ParamByName('turno').Value := global_turno ;
             ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
             ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
             ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
             ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden1.Text ;
             ReporteDiario.Open ;

             If ReporteDiario.RecordCount > 0 then
             Begin
                 If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                 Begin
                      MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                      lValido := False ;
                      frmBarra1.btnCancel.Click
                 End
             end
        End
        Else
             lValido := True ;
    If lValido Then
    Begin
        frmBarra1.btnEditClick(Sender);
        Insertar1.Enabled := False ;
        Editar1.Enabled := False ;
        Registrar1.Enabled := True ;
        Can1.Enabled := True ;
        Eliminar1.Enabled := False ;
        Refresh1.Enabled := False ;
        Salir1.Enabled := False ;
        try
            Firmas.Edit ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Firmantes', 'Al editar registro', 0);
                frmbarra1.btnCancel.Click ;
            end;
        end ;
        tdIdFecha.SetFocus
    End;
    //activapop(frmFirmas, popupprincipal);
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al editar registro', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmFirmas.frmBarra1btnPostClick(Sender: TObject);
Var
    lValido : Boolean ;
    nombres, cadenas: TStringList;
    QryFirmas : TZReadOnlyQuery;

    bS: TStream;
    Pic: TJpegImage;
    BlobField: tField;
    MyJpg   : TJPEGImage;

begin
    //empieza validacion
    nombres:=TStringList.Create;
    cadenas:=TStringList.Create;
    nombres.Add('Frente de trabajo');
    cadenas.Add(tsNumeroOrden1.Text);

    if not validaTexto(nombres, cadenas, '', '') then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    //continuainserccion de datos...
    if tsDepartamentos.Text = '' then
    begin
       messageDLG('Debe seleccionar un departamento.', mtInformation, [mbOk], 0);
       tsDepartamentos.SetFocus;
       exit;
    end;

    QryFirmas := TZReadOnlyQuery.Create(self);
    QryFirmas.Connection := connection.zConnection;

    Grid_firmantes.Enabled:=true;
    try
      lValido := False ;
      If Trim(tsNumeroOrden1.Text) <> '' Then
         If global_grupo <> 'INTEL-CODE' Then
         Begin
             lValido := True ;
             ReporteDiario.Active := False ;
             ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
             ReporteDiario.Params.ParamByName('contrato').Value    := global_contrato ;
             ReporteDiario.Params.ParamByName('turno').DataType    := ftString ;
             ReporteDiario.Params.ParamByName('turno').Value       := global_turno ;
             ReporteDiario.Params.ParamByName('Fecha').DataType    := ftDate ;
             ReporteDiario.Params.ParamByName('Fecha').Value       := tdIdFecha.Date  ;
             ReporteDiario.Params.ParamByName('Orden').DataType    := ftString ;
             ReporteDiario.Params.ParamByName('Orden').Value       := tsNumeroOrden1.Text ;
             ReporteDiario.Open ;
             If ReporteDiario.RecordCount > 0 then
             Begin
                 If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                 Begin
                      MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                      lValido := False ;
                 End
             end
        End
        Else
           lValido := True ;
      If lValido Then
      Begin
          firmas.FieldValues ['sContrato']    := Global_Contrato ;
          firmas.FieldValues ['sNumeroOrden'] := tsNumeroOrden1.Text ;
          firmas.FieldValues ['sIdTurno']     := QryTurnos.FieldValues['sIdTurno'];

          //En el caso de edidicon se carga nuevamente la imagen guardada.
          if OpenPicture.FileName <> '' then
          begin
            try
              BlobField := firmas.FieldByName('bImagen14');
              BS        := firmas.CreateBlobStream(BlobField, bmWrite);
              try
                Pic := TJpegImage.Create;
                try
                  Pic.LoadFromFile(OpenPicture.FileName);
                  Pic.SaveToStream(BS);
                finally
                  Pic.Free;
                end;
              finally
                bS.Free
              end
            except
            end
          end;

          //Aplica lo mismp para la segunda imagen.
          if OpenPicture2.FileName <> '' then
          begin
            try
              BlobField := firmas.FieldByName('bImagen16');
              BS        := firmas.CreateBlobStream(BlobField, bmWrite);
              try
                Pic := TJpegImage.Create;
                try
                  Pic.LoadFromFile(OpenPicture2.FileName);
                  Pic.SaveToStream(bs);
                finally
                  Pic.Free;
                end;
              finally
                bS.Free
              end
            except
            end
          end;

          //Aplica lo mismp para la segunda imagen.
          if OpenPicture3.FileName <> '' then
          begin
            try
              BlobField := firmas.FieldByName('bImagen14Sello');
              BS        := firmas.CreateBlobStream(BlobField, bmWrite);
              try
                Pic := TJpegImage.Create;
                try
                  Pic.LoadFromFile(OpenPicture3.FileName);
                  Pic.SaveToStream(Bs);
                finally
                  Pic.Free;
                end;
              finally
                bS.Free
              end
            except
            end
          end;

          firmas.Post ;

          QryFirmas.Active := False;
          QryFirmas.SQL.Clear;
          QryFirmas.SQL.Add('select * from firmas where sContrato =:Contrato and sIdTurno =:Turno and sNumeroOrden =:Orden and dIdFecha =:Fecha ');
          QryFirmas.ParamByName('Contrato').AsString := global_contrato;
          QryFirmas.ParamByName('Turno').AsString    := QryTurnos.FieldValues['sIdTurno'];
          QryFirmas.ParamByName('Orden').AsString    := tsNumeroOrden1.Text;
          QryFirmas.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
          QryFirmas.Open;

          Insertar1.Enabled  := True ;
          Editar1.Enabled    := True ;
          Registrar1.Enabled := False ;
          Can1.Enabled       := False ;
          Eliminar1.Enabled  := True ;
          Refresh1.Enabled   := True ;
          Salir1.Enabled     := True ;
          frmBarra1.btnCancelClick(Sender);
      End;

      BotonPermiso.permisosBotones(frmBarra1);
      frmBarra1.btnPrinter.Enabled := False;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al salvar registro', 0);
    frmbarra1.btnCancel.Click;
    banderaagregar:=false;
    end;
  end;

  if banderaAgregar then
     frmbarra1.btnAdd.Click;
end;

procedure TfrmFirmas.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  grid_firmantes.Enabled:=true;
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  firmas.Cancel ;
  //desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al cancelar', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmFirmas.frmBarra1btnDeleteClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
 try
    lValido := False ;
    If Trim(tsNumeroOrden1.Text) <> '' Then
         If global_grupo <> 'INTEL-CODE' Then
         Begin
              lValido := True ;
              ReporteDiario.Active := False ;
              ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
              ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
              ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
              ReporteDiario.Params.ParamByName('turno').Value := global_turno ;
              ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
              ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
              ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
              ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden1.Text ;
              ReporteDiario.Open ;

              If ReporteDiario.RecordCount > 0 then
              Begin
                  If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                  Begin
                        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                        lValido := False ;
                        frmBarra1.btnCancel.Click
                  End
              end ;
         End
         Else
              lValido := True ;
    If lValido Then
    Begin
      If Firmas.RecordCount  > 0 then
        If MessageDlg('Desea eliminar el Registro Activo?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin

            Firmas.Delete ;
        end
    End
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al eliminar registro', 0);
  end;
 end;
end;

procedure TfrmFirmas.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Firmas.active := False ;
  Firmas.Open ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmFirmas.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close ;
   
end;
function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;
procedure TfrmFirmas.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
  Begin
     tsDepartamentos.SetFocus
  End
end;

procedure TfrmFirmas.tsFirma1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto1.SetFocus 
end;

procedure TfrmFirmas.tsFirma2KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto3.SetFocus
end;

procedure TfrmFirmas.tsFirma3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto5.SetFocus
end;

procedure TfrmFirmas.tsFirma4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto5.SetFocus 
end;

procedure TfrmFirmas.tsFirma5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto2.SetFocus
end;

procedure TfrmFirmas.tsFirma6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto8.SetFocus
end;

procedure TfrmFirmas.tsFirma7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto9.SetFocus
end;

procedure TfrmFirmas.tsFirma8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto2.SetFocus
end;

procedure TfrmFirmas.tsFirma9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto10.SetFocus
end;

procedure TfrmFirmas.tsFirma10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto1.SetFocus
end;

procedure TfrmFirmas.tsFirma24Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma24Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma24KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto25.SetFocus
end;

procedure TfrmFirmas.tsFirma25Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma25Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma25KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsPuesto26.SetFocus
end;

procedure TfrmFirmas.tsFirma26Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma26Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma26KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto27.SetFocus
end;

procedure TfrmFirmas.tsFirma27Change(Sender: TObject);
begin
//  If Key = #13 Then
  //      tsFirma23.SetFocus
end;

procedure TfrmFirmas.tsFirma27Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma27Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma27KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto23.SetFocus
end;

procedure TfrmFirmas.tsFirma14Enter(Sender: TObject);
begin
    tsFirma14.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma14Exit(Sender: TObject);
begin
    tsFirma14.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma14KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto15.SetFocus
end;

procedure TfrmFirmas.tsFirma15Enter(Sender: TObject);
begin
    tsFirma15.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma15Exit(Sender: TObject);
begin
    tsFirma15.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma15KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto16.SetFocus
end;

procedure TfrmFirmas.tsFirma16Enter(Sender: TObject);
begin
    tsFirma16.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma16Exit(Sender: TObject);
begin
    tsFirma16.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma16KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPuesto14.SetFocus
end;

procedure TfrmFirmas.tsFirma17Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma17Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto18.SetFocus
end;

procedure TfrmFirmas.tsFirma18Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma18Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto17.SetFocus
end;

procedure TfrmFirmas.tsFirma19Enter(Sender: TObject);
begin
    tsFirma19.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma19Exit(Sender: TObject);
begin
    tsFirma19.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPuesto19.SetFocus
end;

procedure TfrmFirmas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmFirmas.Paste1Click(Sender: TObject);
begin
//try
//UtGrid.AddRowsFromClip;
//except
//  on e : exception do begin
//  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al pegar registro', 0);
//  end;
//end;
end;

procedure TfrmFirmas.cmbTurnosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNumeroOrden1.SetFocus
end;

procedure TfrmFirmas.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure TfrmFirmas.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmFirmas.cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmFirmas.cxgrdbtblvwGrid1DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmFirmas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmFirmas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmFirmas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmFirmas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmFirmas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmFirmas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmFirmas.tsPuesto1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma1.SetFocus
end;

procedure TfrmFirmas.tsFirma1Enter(Sender: TObject);
begin
    tsFirma1.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma1Exit(Sender: TObject);
begin
    tsFirma1.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto20KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma20.SetFocus
end;

procedure TfrmFirmas.tsPuesto21KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma21.SetFocus
end;

procedure TfrmFirmas.tsPuesto22KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma22.SetFocus
end;

procedure TfrmFirmas.tsPuesto23Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsPuesto23Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto23KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma23.SetFocus
end;

procedure TfrmFirmas.tsPuesto2KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma2.SetFocus
end;

procedure TfrmFirmas.tsFirma20Enter(Sender: TObject);
begin
    tsFirma20.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma20Exit(Sender: TObject);
begin
    tsFirma20.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma20KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsPuesto21.SetFocus
end;

procedure TfrmFirmas.tsFirma21Enter(Sender: TObject);
begin
    tsFirma21.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma21Exit(Sender: TObject);
begin
    tsFirma21.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma21KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsPuesto22.SetFocus
end;

procedure TfrmFirmas.tsFirma22Enter(Sender: TObject);
begin
    tsFirma22.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma22Exit(Sender: TObject);
begin
    tsFirma22.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma22KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsPuesto19.SetFocus
end;

procedure TfrmFirmas.tsFirma23Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma23Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsFirma23KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsPuesto24.SetFocus
end;

procedure TfrmFirmas.tsFirma2Enter(Sender: TObject);
begin
    tsFirma2.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma2Exit(Sender: TObject);
begin
    tsFirma2.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto3KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma3.SetFocus
end;

procedure TfrmFirmas.tsFirma3Enter(Sender: TObject);
begin
    tsFirma3.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma3Exit(Sender: TObject);
begin
    tsFirma3.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto4KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma4.SetFocus
end;

procedure TfrmFirmas.tsFirma4Enter(Sender: TObject);
begin
    tsFirma4.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma4Exit(Sender: TObject);
begin
    tsFirma4.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto5KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma5.SetFocus
end;

procedure TfrmFirmas.tsFirma5Enter(Sender: TObject);
begin
    tsFirma5.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma5Exit(Sender: TObject);
begin
    tsFirma5.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto6KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma6.SetFocus
end;

procedure TfrmFirmas.tsFirma6Enter(Sender: TObject);
begin
    tsFirma6.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma6Exit(Sender: TObject);
begin
    tsFirma6.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto7KeyPress(Sender: TObject; var Key: Char);
begin
    If KEy = #13 Then
        tsFirma7.SetFocus
end;

procedure TfrmFirmas.tsFirma7Enter(Sender: TObject);
begin
    tsFirma7.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma7Exit(Sender: TObject);
begin
    tsFirma7.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto8KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma8.SetFocus
end;

procedure TfrmFirmas.tsFirma8Enter(Sender: TObject);
begin
    tsFirma8.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma8Exit(Sender: TObject);
begin
    tsFirma8.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto9KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma9.SetFocus
end;

procedure TfrmFirmas.tsFirma9Enter(Sender: TObject);
begin
    tsFirma9.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma9Exit(Sender: TObject);
begin
    tsFirma9.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto10KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma10.SetFocus
end;

procedure TfrmFirmas.tsPuesto24Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsPuesto24Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto24KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma24.SetFocus
end;

procedure TfrmFirmas.tsPuesto25Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsPuesto25Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto25KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma25.SetFocus
end;

procedure TfrmFirmas.tsPuesto26Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsPuesto26Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto26KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma26.SetFocus
end;

procedure TfrmFirmas.tsPuesto27Enter(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsPuesto27Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsPuesto27KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma27.SetFocus
end;

procedure TfrmFirmas.tsPuesto14KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsFirma14.SetFocus
end;

procedure TfrmFirmas.tsPuesto15KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsFirma15.SetFocus
end;

procedure TfrmFirmas.tsPuesto16KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsFirma16.SetFocus
end;

procedure TfrmFirmas.tsPuesto17KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma17.SetFocus
end;

procedure TfrmFirmas.tsPuesto18KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma18.SetFocus
end;

procedure TfrmFirmas.tsPuesto19KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsFirma19.SetFocus
end;

procedure TfrmFirmas.tsDepartamentosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cmbTurnos.SetFocus
end;

procedure TfrmFirmas.tsFirma10Enter(Sender: TObject);
begin
    tsFirma10.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsFirma10Exit(Sender: TObject);
begin
    tsFirma10.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salidaERP;
end;

procedure TfrmFirmas.tsNumeroOrden1Exit(Sender: TObject);
begin
 try
  tsNumeroOrden1.Color := global_color_salidaERP;
  Firmas.Active := False ;
  Firmas.Params.ParamByName('Contrato').DataType := ftString ;
  Firmas.Params.ParamByName('Contrato').Value    := Global_Contrato ;
  Firmas.Params.ParamByName('Orden').DataType    := ftString ;
  Firmas.Params.ParamByName('Orden').Value       := tsNumeroOrden1.Text ;
  Firmas.Open ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_firmantes', 'Al seleccionar frente de trabajo', 0);
  end;
 end;

end;

procedure TfrmFirmas.tsNumeroOrden1Enter(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;
    tsNumeroOrden1.Color := global_color_entradaERP;
end;

procedure TfrmFirmas.tsNumeroOrden1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tdIdFecha.SetFocus 
end;

procedure TfrmFirmas.FirmasAfterPost(DataSet: TDataSet);
begin
if cbActualizarOrdenes.Checked then
begin
  ShowMessage('Se van a actualizar las firmas en todos los frentes registrados...');
  connection.QryBusca.Active:= false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato=:Contrato');
  connection.QryBusca.Params.ParamByName('Contrato').DataType:=ftString;
  connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  connection.QryBusca.Open;
  while not connection.QryBusca.Eof  do
  begin
    connection.zCommand.Active:=False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add(' INSERT INTO firmas SET '+
                                '     sContrato=:Contrato, '+
                                '     sNumeroOrden=:Orden, '+
                                '     dIdFecha=:Fecha, '+
                                '     sFirmante1=:sFirmante1,'+
                                '     sFirmante2=:sFirmante2,'+
                                '     sFirmante3=:sFirmante3,'+
                                '     sFirmante4=:sFirmante4,'+
                                '     sFirmante5=:sFirmante5,'+
                                '     sFirmante6=:sFirmante6,'+
                                '     sFirmante7=:sFirmante7,'+
                                '     sFirmante8=:sFirmante8,'+
                                '     sFirmante9=:sFirmante9,'+
                                '     sFirmante10=:sFirmante10,'+
                                //'     sFirmante11=:sFirmante11,'+
                                //'     sFirmante12=:sFirmante12,'+
                                //'     sFirmante13=:sFirmante13,'+
                                '     sFirmante14=:sFirmante14,'+
                                '     sFirmante15=:sFirmante15,'+
                                '     sFirmante16=:sFirmante16,'+
                                '     sFirmante17=:sFirmante17,'+
                                '     sFirmante18=:sFirmante18,'+
                                '     sFirmante23=:sFirmante23,'+
                                '     sFirmante24=:sFirmante24,'+
                                '     sFirmante25=:sFirmante25,'+
                                '     sFirmante26=:sFirmante26,'+
                                '     sFirmante27=:sFirmante27,'+
                                '     sPuesto1=:sPuesto1,'+
                                '     sPuesto2=:sPuesto2,'+
                                '     sPuesto3=:sPuesto3,'+
                                '     sPuesto4=:sPuesto4,'+
                                '     sPuesto5=:sPuesto5,'+
                                '     sPuesto6=:sPuesto6,'+
                                '     sPuesto7=:sPuesto7,'+
                                '     sPuesto8=:sPuesto8,'+
                                '     sPuesto9=:sPuesto9,'+
                                '     sPuesto10=:sPuesto10,' +
                                //'     sPuesto11=:sPuesto11,' +
                                //'     sPuesto12=:sPuesto12,' +
                                //'     sPuesto13=:sPuesto13,' +
                                '     sPuesto14=:sPuesto14,' +
                                '     sPuesto15=:sPuesto15,' +
                                '     sPuesto16=:sPuesto16,' +
                                '     sPuesto17=:sPuesto17,' +
                                '     sPuesto18=:sPuesto18,' +
                                '     sPuesto23=:sPuesto23,' +
                                '     sPuesto24=:sPuesto24,' +
                                '     sPuesto25=:sPuesto25,' +
                                '     sPuesto26=:sPuesto26,' +
                                '     sPuesto27=:sPuesto27' +
                                ' ON DUPLICATE KEY UPDATE '+
                                '     sFirmante1=:sFirmante1,'+
                                '     sFirmante2=:sFirmante2,'+
                                '     sFirmante3=:sFirmante3,'+
                                '     sFirmante4=:sFirmante4,'+
                                '     sFirmante5=:sFirmante5,'+
                                '     sFirmante6=:sFirmante6,'+
                                '     sFirmante7=:sFirmante7,'+
                                '     sFirmante8=:sFirmante8,'+
                                '     sFirmante9=:sFirmante9,'+
                                '     sFirmante10=:sFirmante10,'+
                                //'     sFirmante11=:sFirmante11,'+
                                //'     sFirmante12=:sFirmante12,'+
                                //'     sFirmante13=:sFirmante13,'+
                                '     sFirmante14=:sFirmante14,'+
                                '     sFirmante15=:sFirmante15,'+
                                '     sFirmante16=:sFirmante16,'+
                                '     sFirmante17=:sFirmante17,'+
                                '     sFirmante18=:sFirmante18,'+
                                '     sFirmante23=:sFirmante23,'+
                                '     sFirmante24=:sFirmante24,'+
                                '     sFirmante25=:sFirmante25,'+
                                '     sFirmante26=:sFirmante26,'+
                                '     sFirmante27=:sFirmante27,'+
                                '     sPuesto1=:sPuesto1,'+
                                '     sPuesto2=:sPuesto2,'+
                                '     sPuesto3=:sPuesto3,'+
                                '     sPuesto4=:sPuesto4,'+
                                '     sPuesto5=:sPuesto5,'+
                                '     sPuesto6=:sPuesto6,'+
                                '     sPuesto7=:sPuesto7,'+
                                '     sPuesto8=:sPuesto8,'+
                                '     sPuesto9=:sPuesto9,'+
                                '     sPuesto10=:sPuesto10,' +
                                //'     sPuesto11=:sPuesto11,'+
                                //'     sPuesto12=:sPuesto12,'+
                                //'     sPuesto13=:sPuesto13,'+
                                '     sPuesto14=:sPuesto14,'+
                                '     sPuesto15=:sPuesto15,'+
                                '     sPuesto16=:sPuesto16,'+
                                '     sPuesto17=:sPuesto17,'+
                                '     sPuesto18=:sPuesto18,'+
                                '     sPuesto23=:sPuesto23,' +
                                '     sPuesto24=:sPuesto24,' +
                                '     sPuesto25=:sPuesto25,' +
                                '     sPuesto26=:sPuesto26,' +
                                '     sPuesto27=:sPuesto27' );

    connection.zCommand.Params.ParamByName('sFirmante1').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante1').Value := tsFirma1.Text;

    connection.zCommand.Params.ParamByName('sFirmante2').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante2').Value := tsFirma2.Text;

    connection.zCommand.Params.ParamByName('sFirmante3').DataType:=ftString ;
    connection.zCommand.Params.ParamByName('sFirmante3').Value := tsFirma3.Text;

    connection.zCommand.Params.ParamByName('sFirmante4').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante4').Value := tsFirma4.Text;

    connection.zCommand.Params.ParamByName('sFirmante5').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante5').Value := tsFirma5.Text;

    connection.zCommand.Params.ParamByName('sFirmante6').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante6').Value := tsFirma6.Text;

    connection.zCommand.Params.ParamByName('sFirmante7').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante7').Value := tsFirma7.Text;

    connection.zCommand.Params.ParamByName('sFirmante8').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante8').Value := tsFirma8.Text;

    connection.zCommand.Params.ParamByName('sFirmante9').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante9').Value := tsFirma9.Text;

    connection.zCommand.Params.ParamByName('sFirmante10').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante10').Value := tsFirma10.Text;

    connection.zCommand.Params.ParamByName('sFirmante23').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante23').Value := tsFirma23.Text;

    connection.zCommand.Params.ParamByName('sFirmante24').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante24').Value := tsFirma24.Text;

    connection.zCommand.Params.ParamByName('sFirmante25').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante25').Value := tsFirma25.Text;

    connection.zCommand.Params.ParamByName('sFirmante26').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante26').Value := tsFirma26.Text;

    connection.zCommand.Params.ParamByName('sFirmante27').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante27').Value := tsFirma27.Text;

//    connection.zCommand.Params.ParamByName('sFirmante11').DataType:=ftString;
//    connection.zCommand.Params.ParamByName('sFirmante11').Value := tsFirma11.Text;
//
//    connection.zCommand.Params.ParamByName('sFirmante12').DataType:=ftString;
//    connection.zCommand.Params.ParamByName('sFirmante12').Value := tsFirma12.Text;
//
//    connection.zCommand.Params.ParamByName('sFirmante13').DataType:=ftString;
//    connection.zCommand.Params.ParamByName('sFirmante13').Value := tsFirma13.Text;

    connection.zCommand.Params.ParamByName('sFirmante14').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante14').Value := tsFirma14.Text;

    connection.zCommand.Params.ParamByName('sFirmante15').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante15').Value := tsFirma15.Text;

    connection.zCommand.Params.ParamByName('sFirmante16').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante16').Value := tsFirma16.Text;

    connection.zCommand.Params.ParamByName('sFirmante17').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante17').Value := tsFirma17.Text;

    connection.zCommand.Params.ParamByName('sFirmante18').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sFirmante18').Value := tsFirma18.Text;

    connection.zCommand.Params.ParamByName('sPuesto1').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto1').Value := tsPuesto1.Text;

    connection.zCommand.Params.ParamByName('sPuesto2').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto2').Value := tsPuesto2.Text;

    connection.zCommand.Params.ParamByName('sPuesto3').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto3').Value := tsPuesto3.Text;

    connection.zCommand.Params.ParamByName('sPuesto4').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto4').Value := tsPuesto4.Text;

    connection.zCommand.Params.ParamByName('sPuesto5').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto5').Value := tsPuesto5.Text;

    connection.zCommand.Params.ParamByName('sPuesto6').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto6').Value := tsPuesto6.Text;

    connection.zCommand.Params.ParamByName('sPuesto7').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto7').Value := tsPuesto7.Text;

    connection.zCommand.Params.ParamByName('sPuesto8').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto8').Value := tsPuesto8.Text;

    connection.zCommand.Params.ParamByName('sPuesto9').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto9').Value := tsPuesto9.Text;

    connection.zCommand.Params.ParamByName('sPuesto10').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto10').Value := tsPuesto10.Text;

//    connection.zCommand.Params.ParamByName('sPuesto11').DataType:=ftString;
//    connection.zCommand.Params.ParamByName('sPuesto11').Value := tsPuesto11.Text;
//
//    connection.zCommand.Params.ParamByName('sPuesto12').DataType:=ftString;
//    connection.zCommand.Params.ParamByName('sPuesto12').Value := tsPuesto12.Text;
//
//    connection.zCommand.Params.ParamByName('sPuesto13').DataType:=ftString;
//    connection.zCommand.Params.ParamByName('sPuesto13').Value := tsPuesto13.Text;

    connection.zCommand.Params.ParamByName('sPuesto14').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto14').Value := tsPuesto14.Text;

    connection.zCommand.Params.ParamByName('sPuesto15').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto15').Value := tsPuesto15.Text;

    connection.zCommand.Params.ParamByName('sPuesto16').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto16').Value := tsPuesto16.Text;

    connection.zCommand.Params.ParamByName('sPuesto17').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto17').Value := tsPuesto17.Text;

    connection.zCommand.Params.ParamByName('sPuesto18').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto18').Value := tsPuesto18.Text;

    connection.zCommand.Params.ParamByName('sPuesto23').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto23').Value := tsPuesto23.Text;

    connection.zCommand.Params.ParamByName('sPuesto24').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto24').Value := tsPuesto24.Text;

    connection.zCommand.Params.ParamByName('sPuesto25').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto25').Value := tsPuesto25.Text;

    connection.zCommand.Params.ParamByName('sPuesto26').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto26').Value := tsPuesto26.Text;

    connection.zCommand.Params.ParamByName('sPuesto27').DataType:=ftString;
    connection.zCommand.Params.ParamByName('sPuesto27').Value := tsPuesto27.Text;

    connection.zCommand.Params.ParamByName('Contrato').DataType:=ftString;
    connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;

    connection.zCommand.Params.ParamByName('Orden').DataType:=ftString;
    connection.zCommand.Params.ParamByName('Orden').Value:=connection.QryBusca.FieldValues['sNumeroOrden'];

    connection.zCommand.Params.ParamByName('Fecha').DataType:=ftDate;
    connection.zCommand.Params.ParamByName('Fecha').Value:=tdIdFecha.Date;
//    try
      connection.zCommand.ExecSQL;
//    except
//      ShowMessage('No se pudo actualizar las firmas del dia ' + DateToStr(tdIdFecha.Date) + ' de la orden ' + connection.QryBusca.FieldValues['sNumeroOrden']);
//    end;
    connection.QryBusca.Next;
  end
end

end;

procedure TfrmFirmas.FirmasAfterScroll(DataSet: TDataSet);
var
  bS        : TStream;
  Pic       : TJpegImage;
  BlobField : tField;
begin
    if firmas.RecordCount > 0 then
    begin
      BlobField := firmas.FieldByName('bImagen14');

      BS := firmas.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 1 then
      begin
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromStream(bS);
            imgRealizaOrden.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free;
        end;
      end
      else
        imgRealizaOrden.Picture.LoadFromFile('');

      bS.Position := 0 ;

      BlobField := firmas.FieldByName('bImagen16');

      BS := firmas.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 1 then
      begin
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromStream(bS);
            imgAutorizaOrden.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      end
      else
        imgAutorizaOrden.Picture.LoadFromFile('');

      bS.Position := 0 ;

      BlobField := firmas.FieldByName('bImagen14Sello');

      BS := firmas.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 1 then
      begin
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromStream(bS);
            imgSello.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      end
      else
        imgSello.Picture.LoadFromFile('');
  end;

 end;

end.
