unit frm_catactualizaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ComCtrls, frm_connection, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_barra, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxMemo, cxDBEdit, cxTextEdit, StdCtrls,
  cxMaskEdit, cxDropDownEdit, global, DBDateTimePicker, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  Menus, CxGridExportLink, ShellApi, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ExtCtrls;

type
  Tfrm_actualizaciones = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    tdFechaInicio: TDateTimePicker;
    grid_actualizaciones: TcxGridDBTableView;
    gridactualizacioneslevel: TcxGridLevel;
    cxGridActualizaciones: TcxGrid;
    frmBarra1: TfrmBarra;
    dsActualizaciones: TDataSource;
    qrActualizaciones: TZQuery;
    qrActualizacionessId: TStringField;
    qrActualizacionessIdUsuario: TStringField;
    dtfldActualizacionesdIdFecha: TDateField;
    qrActualizacionessModulo: TStringField;
    qrActualizacioneseTipoActualizacion: TStringField;
    qrActualizacionessDesarrollador: TStringField;
    qrActualizacionessTester: TStringField;
    qrActualizacionessDescripcion: TMemoField;
    grid_actualizacionessIdUsuario1: TcxGridDBColumn;
    grid_actualizacionesdIdFecha1: TcxGridDBColumn;
    grid_actualizacionessModulo1: TcxGridDBColumn;
    grid_actualizacioneseTipoActualizacion1: TcxGridDBColumn;
    grid_actualizacionessDesarrollador1: TcxGridDBColumn;
    grid_actualizacionessTester1: TcxGridDBColumn;
    grid_actualizacionessDescripcion1: TcxGridDBColumn;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbDesarrollador: TcxDBTextEdit;
    lbl4: TLabel;
    dbTester: TcxDBTextEdit;
    lbl5: TLabel;
    dbDescripcion: TcxDBMemo;
    dbTipo: TcxDBComboBox;
    pnlInformacion: TNxHeaderPanel;
    intgrfldActualizacionesiOrden: TIntegerField;
    dtfldActualizacionesdFechaActualizacion: TDateField;
    tdFechaFinal: TDateTimePicker;
    lbl6: TLabel;
    dbFechaActualizacion: TDBDateTimePicker;
    lbl7: TLabel;
    dbVersion: TcxDBTextEdit;
    qrActualizacionessVersion: TStringField;
    grid_actualizacionesColumn1: TcxGridDBColumn;
    Grid__actualizacionesColumn2: TcxGridDBColumn;
    pmPopupPrincipal: TPopupMenu;
    mniInsertar1: TMenuItem;
    mniEditar1: TMenuItem;
    mniN1: TMenuItem;
    mniRegistrar1: TMenuItem;
    mniCan1: TMenuItem;
    mniN2: TMenuItem;
    mniExportarExcel1: TMenuItem;
    mniEliminar1: TMenuItem;
    mniRefresh1: TMenuItem;
    mniN3: TMenuItem;
    mniCopy1: TMenuItem;
    mniPaste1: TMenuItem;
    mniN4: TMenuItem;
    mniSalir1: TMenuItem;
    dlgSave1: TSaveDialog;
    dbModulo: TcxDBTextEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    function formatoFecha(fecha: TDate) : string;
    procedure tdFechaInicioChange(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbModuloKeyPress(Sender: TObject; var Key: Char);
    procedure dbTipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbTesterKeyPress(Sender: TObject; var Key: Char);
    procedure dbDesarrolladorKeyPress(Sender: TObject; var Key: Char);
    procedure dbFechaActualizacionKeyPress(Sender: TObject; var Key: Char);
    procedure dbModuloEnter(Sender: TObject);
    procedure dbModuloExit(Sender: TObject);
    procedure mniInsertar1Click(Sender: TObject);
    procedure mniExportarExcel1Click(Sender: TObject);
    procedure mniEditar1Click(Sender: TObject);
    procedure mniSalir1Click(Sender: TObject);
    procedure mniRegistrar1Click(Sender: TObject);
    procedure mniCan1Click(Sender: TObject);
    procedure mniEliminar1Click(Sender: TObject);
    procedure mniRefresh1Click(Sender: TObject);
    procedure mniPaste1Click(Sender: TObject);
    procedure mniCopy1Click(Sender: TObject);//Sam
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_actualizaciones: Tfrm_actualizaciones;

implementation

uses UInteliDialog;

{$R *.dfm}

procedure Tfrm_actualizaciones.btnAddClick(Sender: TObject);
begin
  qrActualizaciones.Append;
  frmBarra1.btnAddClick(Sender);
 // pnlInformacion.Visible := True;
  cxGridActualizaciones.Enabled := False;
  dbmodulo.SetFocus;

  dbTipo.Text := 'Sistema';
  dbTester.Text := 'JOSE LUIS FADUL SANCHEZ';
  dbDesarrollador.Text := 'INTELI-CODE';
  dbDescripcion.Text   := '*';
  dbVersion.Text       := '2015.5.27.4' ;
end;

procedure Tfrm_actualizaciones.btnCancelClick(Sender: TObject);
begin
  qrActualizaciones.Cancel;
  frmBarra1.btnCancelClick(Sender);
  cxGridActualizaciones.Enabled := True;
  //pnlInformacion.Visible := False
end;

procedure Tfrm_actualizaciones.btnDeleteClick(Sender: TObject);
begin
  if qrActualizaciones.RecordCount > 0 then
  begin
    if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      qrActualizaciones.Delete;
  end;
end;

procedure Tfrm_actualizaciones.btnEditClick(Sender: TObject);
begin
  if qrActualizaciones.RecordCount > 0 then
  begin
    qrActualizaciones.Edit;
    frmBarra1.btnEditClick(Sender);
    cxGridActualizaciones.Enabled := False;
  //  pnlInformacion.Visible := True;
  end;
end;

procedure Tfrm_actualizaciones.btnExitClick(Sender: TObject);
begin
  if (qrActualizaciones.State in [dsInsert]) or (qrActualizaciones.State in [dsEdit]) then
    qrActualizaciones.Cancel;
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure Tfrm_actualizaciones.btnPostClick(Sender: TObject);
var
  continuar : Boolean;
  x : integer;
begin
  if Trim(dbModulo.Text) <> '' then
  begin
    dbModulo.Style.Color := clWindow;
    if Trim(dbTipo.Text) <> '' then
    begin
      dbTipo.Style.Color := clWindow;
      if (qrActualizaciones.State in [dsInsert]) then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Text := 'select max(iOrden) as max from cat_actualizaciones';
        connection.QryBusca.Open;

        qrActualizaciones.FieldByName('sId').AsString := dbModulo.Text + IntToStr(connection.QryBusca.FieldByName('max').AsInteger);
        qrActualizaciones.FieldByName('sIdUsuario').AsString := global_usuario;
        qrActualizaciones.FieldByName('dIdFecha').AsDateTime := Date;
        qrActualizaciones.FieldByName('dFechaActualizacion').AsDateTime := dbFechaActualizacion.Date;
        qrActualizaciones.FieldByName('iOrden').AsInteger := connection.QryBusca.FieldByName('max').AsInteger + 1;
      end;
      qrActualizaciones.Post;
      frmBarra1.btnPostClick(Sender);
      cxGridActualizaciones.Enabled := True;
     // pnlInformacion.Visible := False;
    end
    else
    begin
      MessageDlg('Especifique el tipo de actualización', mtInformation, [mbOk], 0);
      dbTipo.Style.Color := $008080FF;
    end;
  end
  else
  begin
    MessageDlg('Especifique el modulo en que se realizo la actualización', mtInformation, [mbOk], 0);
    dbModulo.Style.Color := $008080FF;
  end;
  qrActualizaciones.Refresh ;
  qrActualizaciones.First ;
end;

procedure Tfrm_actualizaciones.btnRefreshClick(Sender: TObject);
begin
  qrActualizaciones.Active := False;
  qrActualizaciones.ParamByName('fechaI').AsString := formatoFecha(tdFechaInicio.Date);
  qrActualizaciones.ParamByName('fechaF').AsString := formatoFecha(tdFechaFinal.Date);
  qrActualizaciones.Open;
end;

procedure Tfrm_actualizaciones.dbDesarrolladorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbFechaActualizacion.SetFocus;
end;

procedure Tfrm_actualizaciones.dbFechaActualizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbDescripcion.SetFocus;
end;

procedure Tfrm_actualizaciones.dbModuloEnter(Sender: TObject);
begin
  if (Sender is tcxdbtextedit) then
     (Sender as tcxdbtextedit).Style.Color := global_color_entrada;

  if (Sender is tdbdatetimepicker) then
    (Sender as tdbdatetimepicker).Color := global_color_entrada;

  if (Sender is tcxdbmemo) then
  (Sender as tcxdbmemo).Style.Color := global_color_entrada;

  if (Sender is tcxdbcombobox) then
    (Sender as tcxdbcombobox).Style.Color := global_color_entrada;
end;

procedure Tfrm_actualizaciones.dbModuloExit(Sender: TObject);
begin
   if (Sender is tcxdbtextedit) then
     (Sender as tcxdbtextedit).Style.Color := global_color_Salida;

  if (Sender is tdbdatetimepicker) then
    (Sender as tdbdatetimepicker).Color := global_color_Salida;

  if (Sender is tcxdbmemo) then
    (Sender as tcxdbmemo).Style.Color := global_color_Salida;
    
  if (Sender is tcxdbcombobox) then
    (Sender as tcxdbcombobox).Style.Color := global_color_Salida;
end;

procedure Tfrm_actualizaciones.dbModuloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbTipo.SetFocus;
end;

procedure Tfrm_actualizaciones.dbTesterKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbDesarrollador.SetFocus;
end;

procedure Tfrm_actualizaciones.dbTipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbTester.SetFocus;
end;

procedure Tfrm_actualizaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_actualizaciones.FormShow(Sender: TObject);
begin
  tdFechaInicio.Date := Sysutils.Date;
  tdFechaFinal.Date := Sysutils.Date;
  dbFechaActualizacion.Date := Sysutils.Date;
  tdFechaInicio.Date := Date() -2000 ;
  qrActualizaciones.Active := False;
  qrActualizaciones.ParamByName('fechaI').AsString := formatoFecha(tdFechaInicio.Date-2000);
  qrActualizaciones.ParamByName('fechaF').AsString := formatoFecha(tdFechaFinal.Date);
  qrActualizaciones.Open;
end;

procedure Tfrm_actualizaciones.mniCan1Click(Sender: TObject);
begin
 frmBarra1.btnCancel.Click ;
end;

procedure Tfrm_actualizaciones.mniCopy1Click(Sender: TObject);
begin
  if dbDescripcion.Focused = true Then
     dbDescripcion.CopyToClipboard ;
end;

procedure Tfrm_actualizaciones.mniEditar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click;
end;

procedure Tfrm_actualizaciones.mniEliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click ;
end;

procedure Tfrm_actualizaciones.mniExportarExcel1Click(Sender: TObject);

Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxGridActualizaciones);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;


procedure Tfrm_actualizaciones.mniInsertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click;
end;

 procedure Tfrm_actualizaciones.mniPaste1Click(Sender: TObject);
begin
  if dbDescripcion.Focused = true Then
     dbDescripcion.PasteFromClipboard ;
 
end;

procedure Tfrm_actualizaciones.mniRefresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click ;
end;

procedure Tfrm_actualizaciones.mniRegistrar1Click(Sender: TObject);
begin
   frmBarra1.btnPost.Click();
end;

procedure Tfrm_actualizaciones.mniSalir1Click(Sender: TObject);
begin
  close ;
end;

procedure Tfrm_actualizaciones.tdFechaFinalChange(Sender: TObject);
begin
  qrActualizaciones.Active := False;
  qrActualizaciones.ParamByName('fechaI').AsString := formatoFecha(tdFechaInicio.Date);
  qrActualizaciones.ParamByName('fechaF').AsString := formatoFecha(tdFechaFinal.Date);
  qrActualizaciones.Open;
end;

procedure Tfrm_actualizaciones.tdFechaInicioChange(Sender: TObject);
begin
  qrActualizaciones.Active := False;
  qrActualizaciones.ParamByName('fechaI').AsString := formatoFecha(tdFechaInicio.Date);
  qrActualizaciones.ParamByName('fechaF').AsString := formatoFecha(tdFechaFinal.Date);
  qrActualizaciones.Open;
end;

function Tfrm_actualizaciones.formatoFecha(fecha: TDate) : string;//Sam
var
  anio, mes, dia : Word;
  resultado : string;
begin
  DecodeDate(fecha, anio, mes, dia);
  resultado := IntToStr(anio) + '/' + IntToStr(mes) + '/' + IntToStr(dia);//Sam
  Result := resultado;
end;

end.
