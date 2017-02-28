unit frm_censocomponentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Mask, rxToolEdit,
  rxCurrEdit, frm_inspeccionvisual, NxCollection, frm_InspeccionEspesores,
  frm_InspeccionEspesores2, frm_InspeccionEspesores3, frm_InspeccionEspesores4,
  rxSpeedbar, DBCtrls, Buttons, RXDBCtrl, frm_HallazgosdeInspeccion, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UnitExcepciones, global;
type
  Evalidaciones = class(Exception)
end;
type
  Tfrmcensocomponentes = class(TForm)
    Panel1: TPanel;
    frmBarra1: TfrmBarra;
    DBGrid3: TDBGrid;
    Label35: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    zqComponentes: TZQuery;
    zqDiametros: TZQuery;
    zqClase: TZQuery;
    zqEspecificaciones: TZQuery;
    zqCensoComponentes: TZQuery;
    ds_Componentes: TDataSource;
    ds_Diametros: TDataSource;
    ds_Clase: TDataSource;
    ds_especificaciones: TDataSource;
    ds_CensoComponentes: TDataSource;
    cb_componentes: TDBLookupComboBox;
    cb_diametros: TDBLookupComboBox;
    cb_clase: TDBLookupComboBox;
    cb_especificacion: TDBLookupComboBox;
    zqComponentesiIdComponente: TIntegerField;
    zqComponentessComponente: TStringField;
    zqDiametrosiIdDiametro: TIntegerField;
    zqDiametrossDescripcion: TStringField;
    zqClaseiIdClase: TIntegerField;
    zqClasesClase: TStringField;
    zqEspecificacionesiIdEspecificacion: TIntegerField;
    zqEspecificacionessEspecificacion: TStringField;
    zqCensoComponentesiIdCensocomponente: TIntegerField;
    zqCensoComponentessContrato: TStringField;
    zqCensoComponentesiIdUdc: TIntegerField;
    zqCensoComponentesiNumero: TIntegerField;
    zqCensoComponentesiIdComponente: TIntegerField;
    zqCensoComponentesiIdDiametro: TIntegerField;
    zqCensoComponentesfLongitud: TFloatField;
    zqCensoComponentesiIdEspecificacion: TIntegerField;
    zqCensoComponentesiIdClase: TIntegerField;
    zqCensoComponentessObservacion: TMemoField;
    zqCensoComponentessComponente: TStringField;
    zqCensoComponentessDiametro: TStringField;
    tsNumero: TDBEdit;
    tsObservacion: TDBMemo;
    zqtransaction: TZQuery;
    zmuetraespecificaciones: TZQuery;
    zmuestraclases: TZQuery;
    zmuetraespecificacionesiIdEspecificacion: TIntegerField;
    zmuetraespecificacionessEspecificacion: TStringField;
    zmuetraespecificacionesiIdFamilia: TIntegerField;
    zmuestraclasesiIdClase: TIntegerField;
    zmuestraclasessClase: TStringField;
    zqCensoComponentessEspcificacion: TStringField;
    zqCensoComponentessClase: TStringField;
    zqCensoComponentessObservaciones: TStringField;
    tsLongitud: TRxDBCalcEdit;
    zqDiametrosfconvercion: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cb_componentesClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure tsNumeroEnter(Sender: TObject);
    procedure tsNumeroExit(Sender: TObject);
    procedure cb_componentesEnter(Sender: TObject);
    procedure cb_componentesExit(Sender: TObject);
    procedure cb_diametrosEnter(Sender: TObject);
    procedure cb_diametrosExit(Sender: TObject);
    procedure tsLongitudExit(Sender: TObject);
    procedure tsLongitudEnter(Sender: TObject);
    procedure cb_claseEnter(Sender: TObject);
    procedure cb_claseExit(Sender: TObject);
    procedure cb_especificacionExit(Sender: TObject);
    procedure cb_especificacionEnter(Sender: TObject);
    procedure tsObservacionEnter(Sender: TObject);
    procedure tsObservacionExit(Sender: TObject);
    procedure zqCensoComponentesAfterScroll(DataSet: TDataSet);
    procedure tsNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure cb_componentesKeyPress(Sender: TObject; var Key: Char);
    procedure cb_diametrosKeyPress(Sender: TObject; var Key: Char);
    procedure tsLongitudKeyPress(Sender: TObject; var Key: Char);
    procedure cb_claseKeyPress(Sender: TObject; var Key: Char);
    procedure cb_especificacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsObservacionKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    procedure cancelatransaccion;
    procedure finalizatransaccion;
    procedure iniciatransaccion;
    procedure Deshabilitacampos();
    procedure Habilitacampos();
  public
    { Public declarations }
 
  end;

var
  frmcensocomponentes: Tfrmcensocomponentes;
  Udc_activa, censo_comp_activo: integer;
implementation

uses frm_connection, frm_censoinstalaciones;

{$R *.dfm}
procedure Tfrmcensocomponentes.Deshabilitacampos();
begin
tsNumero.Enabled:=false;
cb_componentes.Enabled:=false;
cb_diametros.Enabled:=false;
tsLongitud.Enabled:=false;
cb_clase.Enabled:=false;
cb_especificacion.Enabled:=false;
tsObservacion.Enabled:=false;

end;
procedure Tfrmcensocomponentes.Habilitacampos();
begin
tsNumero.Enabled:=true;
cb_componentes.Enabled:=true;
cb_diametros.Enabled:=true;
tsLongitud.Enabled:=true;
cb_clase.Enabled:=true;
cb_especificacion.Enabled:=true;
tsObservacion.Enabled:=true;

end;

procedure Tfrmcensocomponentes.BitBtn1Click(Sender: TObject);
begin
  if (zqCensoComponentes.RecordCount>0) then
  begin
    if zqCensoComponentes.State<>dsEdit then
    begin
      if zqCensoComponentes.State<>dsInsert then
      begin
        Application.CreateForm(Tfrminspeccion, frminspeccion);
        frminspeccion.Show;
      end;
    end;
  end;
end;

procedure Tfrmcensocomponentes.BitBtn2Click(Sender: TObject);
var
familia: string;
diametro : double;
zqCompara :tzquery;
begin

  zqCompara:=tzquery.Create(nil);
  zqCompara.Connection:=connection.zConnection;
  zqCompara.Active :=false;
  zqCompara.SQL.Clear;
  zqCompara.SQL.Add('SELECT '+
  '*'+
  'from '+
  'ins_catdiametros '+
  'where iIdDiametro=:Diametro');
  zqCompara.ParamByName('Diametro').AsInteger:=zqCensoComponentes.FieldByName('iIdDiametro').AsInteger;
  zqCompara.Open;

  diametro:=zqCompara.FieldByName('fconvercion').AsFloat;

  zqCompara:=tzquery.Create(nil);
  zqCompara.Connection:=connection.zConnection;
  zqCompara.Active :=false;
  zqCompara.SQL.Clear;
  zqCompara.SQL.Add('select '+
  '*'+
  'from '+
  'ins_componentesxfamilia as a inner join ins_familiacomponente as b '+
  'on (a.iIdFamilia=b.iIdFamilia) '+
  'where iIdComponente=:componente');
  zqCompara.ParamByName('componente').AsInteger:=zqCensoComponentes.FieldByName('iIdComponente').AsInteger;
  zqCompara.Open;

  familia:=zqCompara.FieldByName('sFamilia').AsString;

//
  if ((diametro>=18) and (familia<>'TEE')) then
  begin
  Application.CreateForm(TfrmInspeccionEspesores2, frmInspeccionEspesores2);
  frmInspeccionEspesores2.Show;
  end;
  if ((diametro>=18) and (familia='TEE')) then
  begin
  Application.CreateForm(TfrmInspeccionEspesores3, frmInspeccionEspesores3);
  frmInspeccionEspesores3.Show;
  exit;
  end;


  if ((diametro<18) and (familia='TEE')) then
  begin
  Application.CreateForm(TfrmInspeccionEspesores4, frmInspeccionEspesores4);
  frmInspeccionEspesores4.Show;
  exit;
  end;

  if ((diametro<18) and (familia<>'TEE')) then
  begin
  Application.CreateForm(TfrmInspeccionEspesores, frmInspeccionEspesores);
  frmInspeccionEspesores.Show;
  end;
end;

procedure Tfrmcensocomponentes.BitBtn3Click(Sender: TObject);
begin
Application.CreateForm(TfrmHallazgosdeInspeccion, frmHallazgosdeInspeccion);
frmHallazgosdeInspeccion.Show;

end;

procedure Tfrmcensocomponentes.Button1Click(Sender: TObject);
begin
Application.CreateForm(Tfrminspeccion, frminspeccion);
frminspeccion.Show;
end;

procedure Tfrmcensocomponentes.cb_claseEnter(Sender: TObject);
begin
cb_clase.Color := global_color_entrada;

end;

procedure Tfrmcensocomponentes.cb_claseExit(Sender: TObject);
begin

cb_clase.Color := global_color_salida;
end;

procedure Tfrmcensocomponentes.cb_claseKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
       cb_especificacion.SetFocus;
end;

procedure Tfrmcensocomponentes.cb_componentesClick(Sender: TObject);
var
  zqBuscafamilia: tzquery;
begin
 if zqComponentes.fieldbyname('sComponente').AsString='BRIDA' then
    begin
      cb_clase.Enabled:=True;
      zqClase.Open;
      cb_clase.KeyValue:=2;
    end else begin
      zqClase.Open;
      cb_clase.KeyValue:=1;
      cb_clase.Enabled:=false;
    end;
//####################################################################
  zqBuscafamilia:=tzquery.Create(nil);
  zqBuscafamilia.Connection:=connection.zConnection;
  zqBuscafamilia.Active :=false;
  zqBuscafamilia.SQL.Clear;
  zqBuscafamilia.SQL.Add('SELECT '+
  '*'+
  'from '+
  'ins_componentesxfamilia '+
  'where iIdComponente=:componente');
  zqBuscafamilia.ParamByName('componente').AsInteger:=zqComponentes.FieldByName('iIdComponente').AsInteger;
  zqBuscafamilia.Open;
  if zqBuscafamilia.RecordCount>0 then
  begin

  cb_especificacion.Enabled:=True;
  zqEspecificaciones.Active:=false;
  zqEspecificaciones.ParamByName('familia').AsInteger:=zqBuscafamilia.FieldByName('iIdFamilia').AsInteger;
  zqEspecificaciones.Open;

  end else begin

  zqEspecificaciones.Active:=false;
  zqEspecificaciones.ParamByName('familia').AsInteger:=strtoint('1');
  zqEspecificaciones.Open;
  cb_especificacion.KeyValue:=1;
  cb_especificacion.Enabled:=false;
  end;
//###########################################################################
end;

procedure Tfrmcensocomponentes.cb_componentesEnter(Sender: TObject);

begin
cb_componentes.Color := global_color_entrada;

end;

procedure Tfrmcensocomponentes.cb_componentesExit(Sender: TObject);
begin

cb_componentes.Color := global_color_salida;
end;

procedure Tfrmcensocomponentes.cb_componentesKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       cb_diametros.SetFocus;
end;

procedure Tfrmcensocomponentes.cb_diametrosEnter(Sender: TObject);
begin
cb_diametros.Color := global_color_entrada;

end;

procedure Tfrmcensocomponentes.cb_diametrosExit(Sender: TObject);
begin

cb_diametros.Color := global_color_salida;
end;

procedure Tfrmcensocomponentes.cb_diametrosKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       tsLongitud.SetFocus;
end;

procedure Tfrmcensocomponentes.cb_especificacionEnter(Sender: TObject);
begin
cb_especificacion.Color := global_color_entrada;

end;

procedure Tfrmcensocomponentes.cb_especificacionExit(Sender: TObject);
begin

cb_especificacion.Color := global_color_salida;
end;

procedure Tfrmcensocomponentes.cb_especificacionKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       tsObservacion.SetFocus;
end;

procedure Tfrmcensocomponentes.FormShow(Sender: TObject);
begin

Deshabilitacampos();
DBGrid3.Enabled:=true;

zqCensoComponentes.Active:=false;
zqCensoComponentes.ParamByName('Udc_Activa1').AsInteger:=Udc_Activa1;
zqCensoComponentes.Open;
cb_clase.Enabled:=false;
cb_Especificacion.Enabled:=false;
zqComponentes.Open;
zqDiametros.Open;
zqClase.Open;
end;

procedure Tfrmcensocomponentes.frmBarra1btnAddClick(Sender: TObject);
var
zqconsecutivo: tzquery;
consecutivo:integer;
begin
  Habilitacampos();

  tsNumero.setfocus;
  zqconsecutivo:=tzquery.Create(nil);
  zqconsecutivo.Connection:=connection.zConnection;
  zqconsecutivo.Active :=false;
  zqconsecutivo.SQL.Clear;
  zqconsecutivo.SQL.Add('SELECT '+
  '*'+
  'from '+
  'ins_censocomponentes ');
//  zqconsecutivo.ParamByName('iiddestino').AsInteger:=zqdestinos.FieldByName('iiddestino').AsInteger;
  zqconsecutivo.Open;

  consecutivo:= zqconsecutivo.RecordCount+1;

  zqCensoComponentes.Append;
  tsNumero.Text:= inttostr(consecutivo);
  cb_componentes.KeyValue:=1;

  frmBarra1.btnAddClick(Sender);

end;

procedure Tfrmcensocomponentes.frmBarra1btnCancelClick(Sender: TObject);
begin
  Deshabilitacampos();
  DBGrid3.Enabled:=true;
  frmBarra1.btnCancelClick(Sender);
  zqCensoComponentes.Cancel;
end;

procedure Tfrmcensocomponentes.frmBarra1btnDeleteClick(Sender: TObject);
var
  zqBuscaInspeccionVisual: tzquery;
begin
  try

    zqBuscaInspeccionVisual:=tzquery.Create(nil);
    zqBuscaInspeccionVisual.Connection:=connection.zConnection;
    zqBuscaInspeccionVisual.Active :=false;
    zqBuscaInspeccionVisual.SQL.Clear;
    zqBuscaInspeccionVisual.SQL.Add('SELECT '+
    '*'+
    'from '+
    'ins_inspeccionvisual '+
    'where iIdComponente=:iIdComponente ');
    zqBuscaInspeccionVisual.ParamByName('iIdComponente').AsInteger:=zqCensoComponentes.FieldByName('iIdComponente').AsInteger;
    zqBuscaInspeccionVisual.Open;

    if zqBuscaInspeccionVisual.RecordCount>0 then
    begin
    raise Evalidaciones.Create('Imposible Borrar;El Registro Actual Tiene Inpecciones Visuales ');
    end;
      If   zqCensoComponentes.RecordCount > 0 then
        if MessageDlg('Desea eliminar el Registro Activo?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
            zqCensoComponentes.Delete;
        end;
  except
    on e:Evalidaciones do
      begin
        MessageDlg('Importante:'+#13+e.Message, mtinformation, [mbOK], 0);
        zqCensoComponentes.Cancel;
      end;
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Censo de Instalaciones', 'Al eliminar registro', 0);
      zqCensoComponentes.Cancel;
    end;
  end;
end;

procedure Tfrmcensocomponentes.frmBarra1btnEditClick(Sender: TObject);
begin
  Habilitacampos();

  zqCensoComponentes.Edit;
  tsNumero.ReadOnly:=false;
  frmBarra1.btnEditClick(Sender);

end;

procedure Tfrmcensocomponentes.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
  frmBarra1.btnExitClick(Sender);

end;

procedure Tfrmcensocomponentes.frmBarra1btnPostClick(Sender: TObject);
var
zqBuscaNumeroOrdenamiento: tzquery;
decimal, ordenaid: string;
numero,idcenso, consecutivonocambia: integer;
longituddecimal: double;
begin
  try

    if tsNumero.Text='' then
    raise Evalidaciones.Create('Debe Colocar Un Número de Componente');

    if tsLongitud.Text='' then
    raise Evalidaciones.Create('Debe Colocar Longitud de Componente');

     if zqCensoComponentes.state=dsEdit then
    begin
      if strtoint(tsNumero.Text)>zqCensoComponentes.RecordCount then
      raise Evalidaciones.Create('Valor Incorrecto; el ID no sigue el consecutivo establecido.');

      if zqCensoComponentes.FieldByName('iNumero').AsInteger<>strtoint(tsNumero.Text) then
      begin
      ordenaid:='si';
      consecutivonocambia:=zqCensoComponentes.FieldByName('iNumero').AsInteger;
      consecutivonocambia:=consecutivonocambia+1;
      numero:=strtoint(tsNumero.Text);
      idcenso:=zqCensoComponentes.FieldByName('iIdCensocomponente').AsInteger;
      end;
    end;

    iniciatransaccion;


    zqCensoComponentes.FieldValues['iNumero']:= strtoint(tsNumero.Text);
    zqCensoComponentes.FieldValues['iIdComponente']:=zqComponentes.FieldByName('iIdComponente').AsInteger;
    zqCensoComponentes.FieldValues['iIdDiametro']:=zqDiametros.FieldByName('iIddiametro').AsInteger;
    zqCensoComponentes.FieldValues['fLongitud']:=tsLongitud.text;
    zqCensoComponentes.FieldValues['iIdClase']:=zqClase.FieldByName('iIdClase').AsInteger;
    zqCensoComponentes.FieldValues['iIdEspecificacion']:=zqEspecificaciones.FieldByName('iIdEspecificacion').AsInteger;
    zqCensoComponentes.FieldValues['sObservacion']:=tsObservacion.text;
    zqCensoComponentes.FieldValues['iIdUdc']:=Udc_Activa1;

     if zqCensoComponentes.state=dsEdit then
    begin
      zqCensoComponentes.Post;
      if ordenaid='si' then
     begin
     zqBuscaNumeroOrdenamiento:=tzquery.Create(nil);
     zqBuscaNumeroOrdenamiento.Connection:=connection.zConnection;
     zqBuscaNumeroOrdenamiento.Active :=false;
     zqBuscaNumeroOrdenamiento.SQL.Clear;
     zqBuscaNumeroOrdenamiento.SQL.Add('SELECT '+
     '*'+
     'from '+
     'ins_censocomponentes '+
     'where iNumero>=:Numero and iNumero<:consecutivonocambia and iIdCensocomponente<>:idcenso and iIdUdc=:iIdUdc');
     zqBuscaNumeroOrdenamiento.ParamByName('Numero').AsInteger:=numero;
     zqBuscaNumeroOrdenamiento.ParamByName('consecutivonocambia').AsInteger:=consecutivonocambia;
     zqBuscaNumeroOrdenamiento.ParamByName('iIdUdc').AsInteger:=Udc_Activa1;
     zqBuscaNumeroOrdenamiento.ParamByName('idcenso').AsInteger:=idcenso;
     zqBuscaNumeroOrdenamiento.Open;

     zqBuscaNumeroOrdenamiento.First;

     while not zqBuscaNumeroOrdenamiento.Eof do
      begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Update ins_censocomponentes set iNumero =:Numero+1 '+
      'where iIdCensocomponente=:iIdCensocomponente and iIdUdc=:iIdUdc');
      connection.zCommand.ParamByName('Numero').AsInteger:=zqBuscaNumeroOrdenamiento.FieldByName('iNumero').AsInteger;
      connection.zCommand.ParamByName('iIdCensocomponente').AsInteger:=zqBuscaNumeroOrdenamiento.FieldByName('iIdCensocomponente').AsInteger;
      connection.zCommand.ParamByName('iIdUdc').AsInteger:=Udc_Activa1;
      connection.zCommand.ExecSQL;

      zqBuscaNumeroOrdenamiento.Next;
      end;

      end;
      Deshabilitacampos();
      DBGrid3.Enabled:=true;
    end else begin
    zqCensoComponentes.Post;
    end;

    finalizatransaccion;
  except
    on e:Evalidaciones do
      begin
        MessageDlg('Importante:'+#13+e.Message, mtinformation, [mbOk], 0);
        cancelatransaccion;
        exit;
      end;
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Censo de Instalaciones', 'Al eliminar registro', 0);
      cancelatransaccion;
      exit;
    end;
  end;
  zqCensoComponentes.Refresh;
  DBGrid3.Enabled:=true;
  frmBarra1.btnPostClick(Sender);
end;
procedure Tfrmcensocomponentes.frmBarra1btnRefreshClick(Sender: TObject);
begin
zqCensoComponentes.Refresh;
end;

procedure Tfrmcensocomponentes.iniciatransaccion;
begin
     zqtransaction.SQL.Text := 'start transaction';
     zqtransaction.ExecSQL;

end;

procedure Tfrmcensocomponentes.tsLongitudEnter(Sender: TObject);
begin
tsLongitud.Color := global_color_entrada;

end;

procedure Tfrmcensocomponentes.tsLongitudExit(Sender: TObject);
begin

tsLongitud.Color := global_color_salida;
end;

procedure Tfrmcensocomponentes.tsLongitudKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       cb_clase.SetFocus;
end;

procedure Tfrmcensocomponentes.tsNumeroEnter(Sender: TObject);
begin
tsNumero.Color := global_color_entrada;
end;

procedure Tfrmcensocomponentes.tsNumeroExit(Sender: TObject);
begin 

tsNumero.Color := global_color_salida;
end;

procedure Tfrmcensocomponentes.tsNumeroKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
       cb_componentes.SetFocus;
end;

procedure Tfrmcensocomponentes.tsObservacionEnter(Sender: TObject);
begin
tsObservacion.Color := global_color_entrada;

end;

procedure Tfrmcensocomponentes.tsObservacionExit(Sender: TObject);
begin

tsObservacion.Color := global_color_salida;
end;

procedure Tfrmcensocomponentes.tsObservacionKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       tsNumero.SetFocus;
end;

procedure Tfrmcensocomponentes.zqCensoComponentesAfterScroll(DataSet: TDataSet);
var
zqBuscafamilia: tzquery;
begin
  zqBuscafamilia:=tzquery.Create(nil);
  zqBuscafamilia.Connection:=connection.zConnection;
  zqBuscafamilia.Active :=false;
  zqBuscafamilia.SQL.Clear;
  zqBuscafamilia.SQL.Add('SELECT '+
  '*'+
  'from '+
  'ins_componentesxfamilia '+
  'where iIdComponente=:componente');
  zqBuscafamilia.ParamByName('componente').AsInteger:=zqCensoComponentes.FieldByName('iIdComponente').AsInteger;
  zqBuscafamilia.Open;
  if zqBuscafamilia.RecordCount>0 then
  begin
    zqEspecificaciones.Active:=false;
    zqEspecificaciones.ParamByName('familia').AsInteger:=zqBuscafamilia.FieldByName('iIdFamilia').AsInteger;
    zqEspecificaciones.Open;
  end else begin
    zqEspecificaciones.Active:=false;
    zqEspecificaciones.ParamByName('familia').AsInteger:=strtoint('1');
    zqEspecificaciones.Open;

  end;
  Udc_activa:=zqCensoComponentes.FieldByName('iIdUdc').AsInteger;
  censo_comp_activo:=zqCensoComponentes.FieldByName('iIdCensocomponente').AsInteger;
end;

procedure Tfrmcensocomponentes.cancelatransaccion;
begin
    zqtransaction.SQL.Text := 'rollback';
    zqtransaction.ExecSQL;
    zqtransaction.Close;
end;

procedure Tfrmcensocomponentes.finalizatransaccion;
begin
    zqtransaction.SQL.Text := 'commit';
    zqtransaction.ExecSQL;
    zqtransaction.Close;
end;

end.
