unit frm_ConsultaPaquetePartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  ADODB, Mask, Grids, DBGrids, global, Buttons;

type
  TfrmConsultaPaquetePartida = class(TForm)
    ds_actividadesxOrden: TDataSource;
    ActividadesxOrden: TADOQuery;
    grid_bitacora: TDBGrid;
    ds_ordenesdetrabajo: TDataSource;
    OrdenesdeTrabajo: TADOQuery;
    Bitacora: TADOQuery;
    ds_bitacora: TDataSource;
    GroupBox1: TGroupBox;
    EtiquetaPU2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    tmDescripcion: TDBMemo;
    tdCantidad: TDBEdit;
    tdCargado: TDBEdit;
    tdInstalado: TDBEdit;
    tdExcedente: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    tsNumeroActividad: TEdit;
    tsPaquete: TEdit;
    btnExit: TBitBtn;
    btnPrinter: TBitBtn;
    Label4: TLabel;
    tdPonderado: TDBEdit;
    BitacorasContrato: TStringField;
    BitacoradIdFecha: TDateField;
    BitacoraiIdDiario: TIntegerField;
    BitacorasIdTurno: TStringField;
    BitacorasIdDepartamento: TStringField;
    BitacorasNumeroOrden: TStringField;
    BitacorasPaquete: TStringField;
    BitacorasNumeroActividad: TStringField;
    BitacorasIdTipoMovimiento: TStringField;
    BitacorasHoraInicio: TStringField;
    BitacorasHoraFinal: TStringField;
    BitacorasFactor: TStringField;
    BitacoradCantidad: TFloatField;
    BitacoradAvance: TBCDField;
    BitacoralGenerado: TStringField;
    BitacoramDescripcion: TMemoField;
    BitacorasIsometrico: TStringField;
    BitacorasDescripcion: TStringField;
    BitacorasCantidad: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsPaqueteKeyPress(Sender: TObject; var Key: Char);
    procedure btnExitClick(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsPaqueteEnter(Sender: TObject);
    procedure tsPaqueteExit(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaPaquetePartida: TfrmConsultaPaquetePartida;

implementation

{$R *.dfm}

procedure TfrmConsultaPaquetePartida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmConsultaPaquetePartida.FormShow(Sender: TObject);
begin
  connection.configuracion.refresh ;
  tsPaquete.Text := '' ;
  tsNumeroActividad.Text := '' ;

  ActividadesxOrden.Active := False ;
  Bitacora.Active := False ;
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
  OrdenesdeTrabajo.Parameters.ParamByName('Contrato').DataType := ftString ;
  ordenesdetrabajo.Parameters.ParamByName('status').DataType := ftString ;
  ordenesdetrabajo.Parameters.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;

  tsNumeroOrden.SetFocus
end;

procedure TfrmConsultaPaquetePartida.tsNumeroOrdenExit(Sender: TObject);
begin
  tsPaquete.Text := '' ;
  tsNumeroActividad.Text := '' ;
  ActividadesxOrden.Active := False ;
  Bitacora.Active := False ;
  tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmConsultaPaquetePartida.tsNumeroActividadExit(Sender: TObject);
var
  lExisteActividad : boolean ;
begin
  If tsNumeroActividad.Text <> '' then
  Begin
      ActividadesxOrden.Active := False ;
      ActividadesxOrden.Parameters.ParamByName('Contrato').Value := global_contrato ;
      ActividadesxOrden.Parameters.ParamByName('Contrato').DataType := ftString ;
      ActividadesxOrden.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text  ;
      ActividadesxOrden.Parameters.ParamByName('Orden').DataType := ftString ;
      ActividadesxOrden.Parameters.ParamByName('paquete').Value := tsPaquete.Text  ;
      ActividadesxOrden.Parameters.ParamByName('paquete').DataType := ftString ;
      ActividadesxOrden.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
      ActividadesxOrden.Parameters.ParamByName('Actividad').DataType := ftString ;

      ActividadesxOrden.Open ;
      if ActividadesxOrden.RecordCount > 0 then
          If ActividadesxOrden.FieldValues ['sTipoActividad'] = 'Actividad' Then
              lExisteActividad := True
          else
              lExisteActividad := False
      else
          lExisteActividad := False ;
      If NOT lExisteActividad then
      begin
          ActividadesxOrden.Active := False ;
          Bitacora.Active := False ;
          tsNumeroActividad.setfocus
      end
      Else
      Begin
          // Actualizo el Cursos ReadOnly de la Bitacora ...
          Bitacora.Active := False ;
          Bitacora.Parameters.ParamByName('contrato').DataType := ftString ;
          Bitacora.Parameters.ParamByName('contrato').Value := global_contrato ;
          Bitacora.Parameters.ParamByName('Orden').DataType := ftString ;
          Bitacora.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
          Bitacora.Parameters.ParamByName('Paquete').DataType := ftString ;
          Bitacora.Parameters.ParamByName('Paquete').Value := tsPaquete.Text ;
          Bitacora.Parameters.ParamByName('Actividad').DataType := ftString ;
          Bitacora.Parameters.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
          Bitacora.Parameters.ParamByName('depto').DataType := ftString ;
          Bitacora.Parameters.ParamByName('depto').Value := connection.configuracion.FieldValues ['sIdDepartamento'] ;
          Bitacora.Open ;
          // Termino
      End
  End ;
  tsNumeroActividad.Color := global_color_salida
end;

procedure TfrmConsultaPaquetePartida.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsPaquete.SetFocus
end;

procedure TfrmConsultaPaquetePartida.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      grid_Bitacora.SetFocus
end;

procedure TfrmConsultaPaquetePartida.tsPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsNumeroActividad.SetFocus
end;

procedure TfrmConsultaPaquetePartida.btnExitClick(Sender: TObject);
begin
  close
end;

procedure TfrmConsultaPaquetePartida.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmConsultaPaquetePartida.tsPaqueteEnter(Sender: TObject);
begin
    tsPaquete.Color := global_color_entrada
end;

procedure TfrmConsultaPaquetePartida.tsPaqueteExit(Sender: TObject);
begin
    tsPaquete.Color := global_color_salida
end;

procedure TfrmConsultaPaquetePartida.tsNumeroActividadEnter(
  Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entrada
end;

end.
