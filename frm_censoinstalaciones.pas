unit frm_censoinstalaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frm_barra, Grids, DBGrids, AdvOfficePager, frm_censocomponentes, frm_inspeccionvisual,
  ExtCtrls, Mask, rxToolEdit, rxCurrEdit, DBCtrls, NxPageControl, Buttons, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBLabelEdit,unitexcepciones,
  AdvGlowButton, Global;
type
  Evalidaciones = class(Exception)
end;
type
  Eauxiliar = class(Exception)
end;
type
  Tfrmcensoinstalaciones = class(TForm)
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    frmBarra1: TfrmBarra;
    dbgrid_Udcxcontrato: TDBGrid;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    tempopec1: TRxCalcEdit;
    presompkgmc1: TRxCalcEdit;
    tempmopec1: TRxCalcEdit;
    presopkgmc1: TRxCalcEdit;
    tsNumeroudc: TDBEdit;
    tsNombreudc: TDBEdit;
    tsNumeroSap: TDBEdit;
    NxTabSheet2: TNxTabSheet;
    NxTabSheet3: TNxTabSheet;
    zqSistematizacion: TZQuery;
    ds_Sistematizacion: TDataSource;
    dbcsistematizacion: TDBLookupComboBox;
    zqSistematizacioniIdSistematizacion: TIntegerField;
    zqSistematizacionsIdentificador: TStringField;
    zqSistematizacionsDescripcion: TStringField;
    presoppsi1: TDBLabelEdit;
    zqUdctuberias: TZQuery;
    ds_Udctuberias: TDataSource;
    zqUdctuberiasiIdUdc: TIntegerField;
    zqUdctuberiassDescripcion: TStringField;
    zqUdctuberiassUbicaciontecnica: TStringField;
    zqUdctuberiasiIdSistematizacion: TIntegerField;
    zqUdctuberiassIdentificador: TStringField;
    zqUdctuberiasfPresoper: TFloatField;
    zqUdctuberiasfTempoper: TFloatField;
    zqUdctuberiasfPresmaxoper: TFloatField;
    zqUdctuberiasfTempmaxoper: TFloatField;
    zqtransaction: TZQuery;
    btncensocomponent: TAdvGlowButton;
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    frmBarra2: TfrmBarra;
    jhjjjj: TDBGrid;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBLabelEdit1: TDBLabelEdit;
    RxCalcEdit1: TRxCalcEdit;
    RxCalcEdit2: TRxCalcEdit;
    RxCalcEdit3: TRxCalcEdit;
    RxCalcEdit4: TRxCalcEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    AdvGlowButton1: TAdvGlowButton;
    Panel3: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    frmBarra3: TfrmBarra;
    ggggg: TDBGrid;
    GroupBox3: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBLabelEdit2: TDBLabelEdit;
    RxCalcEdit5: TRxCalcEdit;
    RxCalcEdit6: TRxCalcEdit;
    RxCalcEdit7: TRxCalcEdit;
    RxCalcEdit8: TRxCalcEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    AdvGlowButton2: TAdvGlowButton;
    Label43: TLabel;
    Label44: TLabel;
    tempopef1: TDBLabelEdit;
    tempmopef1: TDBLabelEdit;
    Label45: TLabel;
    Label46: TLabel;
    presmopsi1: TDBLabelEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TempOpCKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure btncensocomponentClick(Sender: TObject);
    procedure presopkgmc1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure presmopkgmc1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tempopec1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tempmopec1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure presopkgmc1Enter(Sender: TObject);
    procedure presopkgmc1Exit(Sender: TObject);
    procedure presompkgmc1Exit(Sender: TObject);
    procedure presompkgmc1Enter(Sender: TObject);
    procedure tsNumeroSapEnter(Sender: TObject);
    procedure tsNumeroSapExit(Sender: TObject);
    procedure tsNombreudcExit(Sender: TObject);
    procedure tsNombreudcEnter(Sender: TObject);
    procedure tempopec1Enter(Sender: TObject);
    procedure tempopec1Exit(Sender: TObject);
    procedure tempmopec1Enter(Sender: TObject);
    procedure tempmopec1Exit(Sender: TObject);
    procedure tsNombreudcKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroSapKeyPress(Sender: TObject; var Key: Char);
    procedure dbcsistematizacionKeyPress(Sender: TObject; var Key: Char);
    procedure presopkgmc1KeyPress(Sender: TObject; var Key: Char);
    procedure tempopec1KeyPress(Sender: TObject; var Key: Char);
    procedure presompkgmc1KeyPress(Sender: TObject; var Key: Char);
    procedure tempmopec1KeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra3btnPostClick(Sender: TObject);
    procedure zqUdctuberiasAfterScroll(DataSet: TDataSet);
    procedure frmBarra1btnExitClick(Sender: TObject);
  private
    { Private declarations }
    procedure cancelatransaccion;
    procedure finalizatransaccion;
    procedure iniciatransaccion;
    procedure Deshabilitacampos;
    procedure Habilitacampos;
  public
    { Public declarations }

  end;

var
  frmcensoinstalaciones: Tfrmcensoinstalaciones;
  Udc_Activa1: Integer;
implementation

uses frm_connection;

{$R *.dfm}
procedure Tfrmcensoinstalaciones.Deshabilitacampos();
begin
  tsNumeroudc.Enabled:=false;
  tsNumeroSap.ReadOnly:=true;
  tsNombreudc.ReadOnly:=true;
  dbcsistematizacion.ReadOnly:=true;
  presopkgmc1.ReadOnly:=true;
  presompkgmc1.ReadOnly:=true;
  tempopec1.ReadOnly:=true;
  tempmopec1.ReadOnly:=true;
  presoppsi1.Editable:=false;
  presmopsi1.Editable:=false;
  tempopef1.Editable:=false;
  tempmopef1.Editable:=false;
end;
procedure Tfrmcensoinstalaciones.Habilitacampos();
begin
  tsNumeroSap.ReadOnly:=false;
  tsNombreudc.ReadOnly:=false;
  dbcsistematizacion.ReadOnly:=false;
  presopkgmc1.ReadOnly:=false;
  presompkgmc1.ReadOnly:=false;
  tempopec1.ReadOnly:=false;
  tempmopec1.ReadOnly:=false;
  presoppsi1.Editable:=true;
  presmopsi1.Editable:=true;
  tempopef1.Editable:=true;
  tempmopef1.Editable:=true;

end;

procedure Tfrmcensoinstalaciones.btncensocomponentClick(Sender: TObject);
begin
 if zqUdctuberias.RecordCount>0 then
  begin
    if zqUdctuberias.State<>dsEdit then
    begin
      if zqUdctuberias.State<>dsInsert then
      begin
         Application.CreateForm(Tfrmcensocomponentes, frmcensocomponentes);
         frmcensocomponentes.Show;
      end;
    end;
  end;
end;

procedure Tfrmcensoinstalaciones.BitBtn2Click(Sender: TObject);
begin
 Application.CreateForm(Tfrmcensocomponentes, frmcensocomponentes);
  frmcensocomponentes.Show;
end;

procedure Tfrmcensoinstalaciones.Button1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmcensocomponentes, frmcensocomponentes);
  frmcensocomponentes.Show;
end;

procedure Tfrmcensoinstalaciones.Button2Click(Sender: TObject);
begin
Application.CreateForm(Tfrminspeccion, frminspeccion);
frminspeccion.Show;

end;

procedure Tfrmcensoinstalaciones.Button3Click(Sender: TObject);
begin
Application.CreateForm(Tfrminspeccion, frminspeccion);
frminspeccion.Show;
end;

procedure Tfrmcensoinstalaciones.Button4Click(Sender: TObject);
begin
Application.CreateForm(Tfrmcensocomponentes, frmcensocomponentes);
  frmcensocomponentes.Show;
end;

procedure Tfrmcensoinstalaciones.Button5Click(Sender: TObject);
begin
Application.CreateForm(Tfrminspeccion, frminspeccion);
frminspeccion.Show;
end;

procedure Tfrmcensoinstalaciones.FormShow(Sender: TObject);
begin
  NxPageControl1.ActivePageIndex:=0;
  Deshabilitacampos();
  zqUdctuberias.Open;
  zqSistematizacion.Open;

end;

procedure Tfrmcensoinstalaciones.frmBarra1btnAddClick(Sender: TObject);

begin

  Habilitacampos();
  tsNombreudc.SetFocus;

  dbgrid_Udcxcontrato.Enabled:=false;
  frmBarra1.btnAddClick(Sender);
  zqUdctuberias.Append;
  zqUdctuberias.fieldvalues['sDescripcion']:= '';

end;

procedure Tfrmcensoinstalaciones.frmBarra1btnCancelClick(Sender: TObject);
begin
  zqUdctuberias.Cancel;
  tsNombreudc.SetFocus;
  dbgrid_Udcxcontrato.Enabled:=True;
  frmBarra1.btnCancelClick(Sender);
  Deshabilitacampos();

end;

procedure Tfrmcensoinstalaciones.frmBarra1btnDeleteClick(Sender: TObject);
var
zqBuscaComponentes: tzquery;
begin
  try
  zqBuscaComponentes:=tzquery.Create(nil);
  zqBuscaComponentes.Connection:=connection.zConnection;
  zqBuscaComponentes.Active :=false;
  zqBuscaComponentes.SQL.Clear;
  zqBuscaComponentes.SQL.Add('SELECT '+
  '*'+
  'from '+
  'ins_censocomponentes'+
  'where iIdUdc=:iIdUdc');
  zqBuscaComponentes.ParamByName('iIdUdc').AsInteger:=zqUdctuberias.FieldByName('iIdUdc').AsInteger;
  zqBuscaComponentes.Open;
  if zqBuscaComponentes.RecordCount>=0 then
  raise Evalidaciones.Create('No se Puede Eliminar la UDC Actual Por Que Existen Componentes Asociados');
  
      If   zqUdctuberias.RecordCount > 0 then
        if MessageDlg('Desea eliminar el Registro Activo?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
            zqUdctuberias.Delete;
        end;
  except
    on e:Evalidaciones do
    begin
      MessageDlg('Importante:'+#13+e.Message, mtinformation, [mbOK], 0);
      zqUdctuberias.Cancel;
    end;
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Censo de Instalaciones', 'Al eliminar registro', 0);
      zqUdctuberias.Cancel;
    end;
  end;
end;

procedure Tfrmcensoinstalaciones.frmBarra1btnEditClick(Sender: TObject);
begin
  zqUdctuberias.Edit;
  dbgrid_Udcxcontrato.Enabled:=false;
  frmBarra1.btnEditClick(Sender);
  Habilitacampos();
end;

procedure Tfrmcensoinstalaciones.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
  frmBarra1.btnExitClick(Sender);

end;

procedure Tfrmcensoinstalaciones.frmBarra1btnPostClick(Sender: TObject);
begin
  try
    if tsNumeroSap.Text='' then
      raise Evalidaciones.Create('Es Necesario Introducir la Ubicacíon Técnica.');

    if tsNombreudc.Text='' then
      raise Evalidaciones.Create('Es Necesario Introducir Un Nombre para la UDC.');

    if dbcsistematizacion.Text='' then
      raise Evalidaciones.Create('Es Necesario Introducir el tipo de Sistematizacíon.');

    if presoppsi1.Caption='' then
      begin
        presoppsi1.Caption:='0.00';
      end;

    if tempopef1.Caption='' then
      begin
        tempopef1.Caption:='0.00';
      end;

    if presmopsi1.Caption='' then
      begin
        presmopsi1.Caption:='0.00';
      end;

    if tempmopef1.Caption='' then
      begin
        tempmopef1.Caption:='0.00';
      end;

      iniciatransaccion;

      zqUdctuberias.fieldvalues['iIdSistematizacion']:= zqSistematizacion.FieldByName('iIdSistematizacion').AsString;
      zqUdctuberias.fieldvalues['sIdentificador']:= zqSistematizacion.FieldByName('sIdentificador').AsString;
      zqUdctuberias.fieldvalues['sUbicaciontecnica']:= tsNumeroSap.Text;
      zqUdctuberias.fieldvalues['sDescripcion']:= tsNombreudc.Text;
      zqUdctuberias.fieldvalues['fPresoper']:= strtofloat(presoppsi1.Caption);
      zqUdctuberias.fieldvalues['fPresmaxoper']:= strtofloat(presmopsi1.Caption);
      zqUdctuberias.fieldvalues['fTempoper']:= strtofloat(tempopef1.Caption);
      zqUdctuberias.fieldvalues['fTempmaxoper']:= strtofloat(tempmopef1.Caption);
      zqUdctuberias.Post;

    if zqUdctuberias.state=dsEdit then
      begin
        dbgrid_Udcxcontrato.Enabled:=true;
        Deshabilitacampos();
      end;

   finalizatransaccion;
  except
    on e:Evalidaciones do
      begin
        MessageDlg('Importante'+#13+e.Message, mtinformation, [mbOk], 0);
        cancelatransaccion;
        exit;

      end;
    on e:exception do
      begin
        MessageDlg('No se puede Agregar/Editar registros'+ #13+#13+'Intente mas tarde',mterror,[mbok],0);
        cancelatransaccion;
        zqUdctuberias.Cancel;
      end;
  end;
  zqUdctuberias.Refresh;
  tsNombreudc.SetFocus;
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrmcensoinstalaciones.frmBarra2btnAddClick(Sender: TObject);
begin
  frmBarra2.btnAddClick(Sender);

end;

procedure Tfrmcensoinstalaciones.frmBarra2btnPostClick(Sender: TObject);
begin
  frmBarra2.btnPostClick(Sender);

end;

procedure Tfrmcensoinstalaciones.frmBarra3btnPostClick(Sender: TObject);
begin
  frmBarra3.btnPostClick(Sender);

end;

procedure Tfrmcensoinstalaciones.presmopkgmc1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
  calculopsi:double;
begin
    if presompkgmc1.Text='' then
  begin
  presmopsi1.Caption:='0.00';
  end else begin
  calculopsi:=strtofloat(presompkgmc1.Text)*(14.223);
  presmopsi1.Caption:= FloatToStrF(calculopsi, ffgeneral, 8, 2);
  end;
end;

procedure Tfrmcensoinstalaciones.presompkgmc1Enter(Sender: TObject);
begin
presompkgmc1.Color := global_color_entrada;

end;

procedure Tfrmcensoinstalaciones.presompkgmc1Exit(Sender: TObject);
begin

presompkgmc1.Color := global_Color_salida;
end;

procedure Tfrmcensoinstalaciones.presompkgmc1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       tempmopec1.SetFocus;
end;

procedure Tfrmcensoinstalaciones.presopkgmc1Enter(Sender: TObject);
begin
presopkgmc1.Color := global_color_entrada;

end;

procedure Tfrmcensoinstalaciones.presopkgmc1Exit(Sender: TObject);
begin
presopkgmc1.Color := global_Color_salida;
end;

procedure Tfrmcensoinstalaciones.presopkgmc1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       tempopec1.SetFocus;
end;

procedure Tfrmcensoinstalaciones.presopkgmc1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  calculopsi:double;
begin
    if presopkgmc1.Text=''  then
  begin
  presoppsi1.Caption:='0.00';
  end else begin
  calculopsi:=strtofloat(presopkgmc1.Text)*(14.223);
  presoppsi1.Caption:= floattostr(calculopsi);
  end;
end;

procedure Tfrmcensoinstalaciones.tempmopec1Enter(Sender: TObject);
begin
tempmopec1.Color := global_color_entrada;

end;

procedure Tfrmcensoinstalaciones.tempmopec1Exit(Sender: TObject);
begin

tempmopec1.Color := global_Color_salida;
end;

procedure Tfrmcensoinstalaciones.tempmopec1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       tsNombreudc.SetFocus;

end;

procedure Tfrmcensoinstalaciones.tempmopec1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  calculofahrenheit:double;
begin
  if tempmopec1.Text='' then
  begin
  tempmopef1.Caption:='0.00'
  end else begin
  calculofahrenheit:=(strtofloat(tempmopec1.Text)*(9/5))+32;
  tempmopef1.Caption:= FloatToStrF(calculofahrenheit, ffgeneral, 8, 2);
  end;
end;

procedure Tfrmcensoinstalaciones.TempOpCKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  calculofahrenheit:double;
begin
  if tempopec1.Text='' then
  begin
  tempopef1.Caption:='0.00'
  end else begin
  calculofahrenheit:=(strtofloat(tempopec1.Text)*(9/5))+32;
  tempopef1.Caption:= FloatToStrF(calculofahrenheit, ffgeneral, 8, 2);
  end;
end;
procedure Tfrmcensoinstalaciones.tempopec1Enter(Sender: TObject);
begin
tempopec1.Color := global_color_entrada;

end;

procedure Tfrmcensoinstalaciones.tempopec1Exit(Sender: TObject);
begin

tempopec1.Color := global_Color_salida;
end;

procedure Tfrmcensoinstalaciones.tempopec1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       presompkgmc1.SetFocus;
end;

procedure Tfrmcensoinstalaciones.tempopec1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  calculofahrenheit:double;
begin
  if tempopec1.Text='' then
  begin
  tempopef1.Caption:='0.00'
  end else begin
  calculofahrenheit:=(strtofloat(tempopec1.Text)*(9/5))+32;
  tempopef1.Caption:= floattostr(calculofahrenheit);
  end;
end;

procedure Tfrmcensoinstalaciones.tsNombreudcEnter(Sender: TObject);
begin
tsNombreudc.Color := global_color_entrada;

end;

procedure Tfrmcensoinstalaciones.tsNombreudcExit(Sender: TObject);
begin

tsNombreudc.Color := global_Color_salida;
end;

procedure Tfrmcensoinstalaciones.tsNombreudcKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
       tsNumeroSap.SetFocus;
end;

procedure Tfrmcensoinstalaciones.tsNumeroSapEnter(Sender: TObject);
begin
tsNumeroSap.Color := global_color_entrada;
end;

procedure Tfrmcensoinstalaciones.tsNumeroSapExit(Sender: TObject);
begin

tsNumeroSap.Color := global_Color_salida;
end;

procedure Tfrmcensoinstalaciones.tsNumeroSapKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       dbcsistematizacion.SetFocus;
end;

procedure Tfrmcensoinstalaciones.zqUdctuberiasAfterScroll(DataSet: TDataSet);
begin

Udc_Activa1:=zqUdctuberias.FieldByName('iIdUdc').AsInteger;

end;

procedure Tfrmcensoinstalaciones.iniciatransaccion;
begin
     zqtransaction.SQL.Text := 'start transaction';
     zqtransaction.ExecSQL;

end;

procedure Tfrmcensoinstalaciones.cancelatransaccion;
begin
    zqtransaction.SQL.Text := 'rollback';
    zqtransaction.ExecSQL;
    zqtransaction.Close;
end;

procedure Tfrmcensoinstalaciones.dbcsistematizacionKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 then
       presopkgmc1.SetFocus;
end;

procedure Tfrmcensoinstalaciones.finalizatransaccion;
begin
    zqtransaction.SQL.Text := 'commit';
    zqtransaction.ExecSQL;
    zqtransaction.Close;
end;
end.
