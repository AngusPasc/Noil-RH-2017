unit frm_estimacionAdicional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  Grids, DBGrids, rxToolEdit, RXDBCtrl, CheckLst, JvExControls, JvxCheckListBox,
  ZAbstractDataset;
type
  TfrmEstimacionAdicional = class(TForm)
    CmdCancel: TButton;
    OrdenesAnexos: TZReadOnlyQuery;
    ds_OrdenesAnexos: TDataSource;
    ds_estimaciones: TDataSource;
    Label2: TLabel;
    tsOrdenes: TDBLookupComboBox;
    DBGrid_Convenios: TDBGrid;
    GrupoEstimacion: TGroupBox;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    tFecha_I: TDBDateEdit;
    tFecha_F: TDBDateEdit;
    tNumeroEstimacion: TEdit;
    lblTipo: TLabel;
    rxEstimaciones: TRxMemoryData;
    rxEstimacionessContrato: TStringField;
    rxEstimacionessIdTipoEstimacion: TStringField;
    rxEstimacionesiNumeroEstimacion: TStringField;
    rxEstimacionesdFechaInicio: TDateField;
    rxEstimacionesdFechaFinal: TDateField;
    rxEstimacionesPendienteMN: TFloatField;
    rxEstimacionesPendienteDLL: TFloatField;
    rxEstimacionesAdicionalMN: TFloatField;
    rxEstimacionesAdicionalDLL: TFloatField;
    rxEstimacionessIdConvenio: TStringField;
    rxEstimacionesiNumeroEstimacionSub: TStringField;
    rxEstimacionessIdTipo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tsOrdenesExit(Sender: TObject);
    procedure DBGrid_ConveniosDblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimacionAdicional: TfrmEstimacionAdicional;
  Bandera, Fecha  : string;
  oper            : integer ;
  Consecutivo     : integer;

implementation

uses
    frm_EstimacionGeneral, frm_EstimacionDetalleAdicional;

{$R *.dfm}

procedure TfrmEstimacionAdicional.DBGrid_ConveniosDblClick(Sender: TObject);
begin
     Application.CreateForm(TfrmEstimacionDetalleAdicional, frmEstimacionDetalleAdicional);
     frmEstimacionDetalleAdicional.ShowModal;
end;

procedure TfrmEstimacionAdicional.FormShow(Sender: TObject);
begin
    OrdenesAnexos.Active;
    OrdenesAnexos.ParamByName('Contrato').AsString := global_contrato_barco;
    OrdenesAnexos.Open;

    if OrdenesAnexos.RecordCount = 0 then
       messageDLG('No existe un códogo principal para las Ordenes / Anexos registradas!', mtInformation, [mbOk], 0);

    tFecha_I.Date          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['dFechaInicio'];
    tFecha_F.Date          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['dFechaFinal'];
    tNumeroEstimacion.Text := frmEstimacionGeneral.EstimacionGeneral.FieldValues['iNumeroEstimacion'];
    lblTipo.Caption        := frmEstimacionGeneral.EstimacionGeneralsDescripcion.Text;
    tsOrdenes.SetFocus;
end;

procedure TfrmEstimacionAdicional.tsOrdenesExit(Sender: TObject);
var
    Q_Datos,
    Q_Estimaciones,
    Q_Montos : TZReadOnlyQuery;
begin
    if tsOrdenes.KeyValue = Null then
        messageDLG('Seleccione un Anexo / Orden !', mtInformation, [mbOk], 0)
    else
    begin
        rxEstimaciones.Open;
        rxEstimaciones.EmptyTable;

        Q_Datos := TZReadOnlyQuery.Create(self);
        Q_Datos.Connection := connection.zConnection;

        Q_Montos := TZReadOnlyQuery.Create(self);
        Q_Montos.Connection := connection.zConnection;

        Q_Estimaciones := TZReadOnlyQuery.Create(self);
        Q_Estimaciones.Connection := connection.zConnection;

        Q_Estimaciones.Active := False;
        Q_Estimaciones.SQL.Clear;
        Q_Estimaciones.SQL.Add('select * from estimacion_orden where sContrato =:Contrato and iNumeroEstimacionSub ="" order by iConsecutivo ');
        Q_Estimaciones.ParamByName('Contrato').AsString := tsOrdenes.Text;
        Q_Estimaciones.Open;

        while not Q_Estimaciones.Eof do
        begin
            {Checamos si existen Cantidades Restantes por cobrar..}
            Q_Montos.Active := False;
            Q_Montos.SQL.Clear;
            Q_Montos.SQL.Add('select sum(dCantidadRestante * dVentaMN) as RestanteMN, sum(dCantidadRestante * dVentaDLL) as RestanteDLL, '+
                             'sum(dCantidadExcedente * dVentaMN) as AdicionalMN, sum(dCantidadExcedente * dVentaDLL) as AdicionalDLL '+
                             'from estimacion_actividades where sContrato =:Contrato and iNumeroEstimacion =:Estimacion '+
                             'and sIdTipoEstimacion =:Tipo and dCantidadExcedente > 0 group by sContrato ');
            Q_Montos.ParamByName('Contrato').AsString   := Q_Estimaciones.FieldValues['sContrato'];
            Q_Montos.ParamByName('Estimacion').AsString := Q_Estimaciones.FieldValues['iNumeroEstimacion'];
            Q_Montos.ParamByName('Tipo').AsString       := Q_Estimaciones.FieldValues['sIdTipoEstimacion'];
            Q_Montos.Open;

            if Q_Montos.RecordCount > 0 then
            begin
                rxEstimaciones.Append;
                rxEstimaciones.FieldValues['sContrato']            := Q_Estimaciones.FieldValues['sContrato'];
                rxEstimaciones.FieldValues['iNumeroEstimacion']    := Q_Estimaciones.FieldValues['iNumeroEstimacion'];
                rxEstimaciones.FieldValues['iNumeroEstimacionSub'] := ' ';
                rxEstimaciones.FieldValues['PendienteMN']          := Q_Montos.FieldValues['RestanteMN'];
                rxEstimaciones.FieldValues['PendienteDLL']         := Q_Montos.FieldValues['RestanteDLL'];
                rxEstimaciones.FieldValues['AdicionalMN']          := Q_Montos.FieldValues['AdicionalMN'];
                rxEstimaciones.FieldValues['AdicionalDLL']         := Q_Montos.FieldValues['AdicionalDLL'];
                rxEstimaciones.FieldValues['dFechaInicio']         := Q_Estimaciones.FieldValues['dFechaInicio'];
                rxEstimaciones.FieldValues['dFechaFinal']          := Q_Estimaciones.FieldValues['dFechaFinal'];
                if Q_Estimaciones.FieldValues['sIdConvenio'] = '' then
                   rxEstimaciones.FieldValues['sIdConvenio']       := ' '
                else
                   rxEstimaciones.FieldValues['sIdConvenio']       := Q_Estimaciones.FieldValues['sIdConvenio'];
                rxEstimaciones.FieldValues['sIdTipoEstimacion']              := Q_Estimaciones.FieldValues['sIdTipoEstimacion'];

                {Tipo de Estimacion..}
                Q_Datos.Active := False;
                Q_Datos.SQL.Clear;
                Q_Datos.SQL.Add('Select sDescripcion From tiposdeestimacion Where sIdTipoEstimacion = :Tipo');
                Q_Datos.ParamByName('Tipo').AsString := Q_Estimaciones.FieldValues['sIdTipoEstimacion'];
                Q_Datos.Open;

                if Q_Datos.RecordCount > 0 then
                   rxEstimaciones.FieldValues['sIdTipo'] := Q_Datos.FieldValues['sDescripcion'];
                rxEstimaciones.Post;
            end;
            Q_Estimaciones.Next;
        end;
        rxEstimaciones.Refresh;
        Q_Datos.Destroy;
        Q_Montos.Destroy;
        Q_Estimaciones.Destroy;
        DBGrid_convenios.SetFocus;
    end;
end;

end.
