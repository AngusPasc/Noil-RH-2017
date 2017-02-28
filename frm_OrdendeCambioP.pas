unit frm_OrdendeCambioP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, RXDBCtrl, AdvGlowButton, NxScrollControl,
  DBCtrls, Mask, rxToolEdit,
  rxCurrEdit, Newpanel, ExtCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, DB,
  ZAbstractRODataset, ZDataset, global, RxLookup, ZAbstractDataset ;

type
  TfrmOrdendeCambioP = class(TForm)
    Label35: TLabel;
    Label36: TLabel;
    tsOrdenOficio: TEdit;
    tsOrdenCambio: TEdit;
    grDetalle: tNewGroupBox;
    Label1: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    EtiquetaPU1: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    tmDescripcion: TDBMemo;
    tdVentaDLL: TRxDBCalcEdit;
    tdVentaMN: TRxDBCalcEdit;
    tdCostoDLL: TRxDBCalcEdit;
    tdCostoMN: TRxDBCalcEdit;
    tdCantidadAnexo: TRxDBCalcEdit;
    tsEspecificacion: TDBEdit;
    tsMedida: TDBEdit;
    btnInsert: TAdvGlowButton;
    btnDelete: TAdvGlowButton;
    btnClose: TAdvGlowButton;
    Grid_Bitacora: TRxDBGrid;
    QryPartidasEfectivas: TZReadOnlyQuery;
    ds_PartidasEfectivas: TDataSource;
    tsNumeroActividad: TRxDBLookupCombo;
    dsPartidasOC: TDataSource;
    Label3: TLabel;
    tiCedulaProcedencia: TCurrencyEdit;
    QryPartidasOC: TZQuery;
    QryPartidasOCsContrato: TStringField;
    QryPartidasOCiCedulaProcedencia: TIntegerField;
    QryPartidasOCsWbs: TStringField;
    QryPartidasOCsNumeroActividad: TStringField;
    QryPartidasOCdCantidad: TFloatField;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure QryPartidasOCBeforeInsert(DataSet: TDataSet);
    procedure QryPartidasOCBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdendeCambioP: TfrmOrdendeCambioP;

implementation
uses frm_connection ;
{$R *.dfm}

procedure TfrmOrdendeCambioP.btnCloseClick(Sender: TObject);
begin
    close
end;

procedure TfrmOrdendeCambioP.btnDeleteClick(Sender: TObject);
begin
    if QryPartidasOC.RecordCount > 0 then
    begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('delete from ordendecambio_p Where sContrato = :Contrato And iCedulaProcedencia = :Cedula And sWbs = :WBS') ;
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
        connection.zCommand.Params.ParamByName('cedula').DataType := ftInteger ;
        connection.zCommand.Params.ParamByName('cedula').Value := tiCedulaProcedencia.Value ;
        connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Wbs').Value := QryPartidasOC.FieldValues ['sWbs'] ;
        Try
            connection.zCommand.ExecSQL ;
            QryPartidasOC.Refresh ;
        Except
              MessageDlg( 'Ocurrio un error al intentar eliminar el registro.', mtWarning, [ mbOk ], 0 );
        End;
    end;
end;

procedure TfrmOrdendeCambioP.btnInsertClick(Sender: TObject);
begin
    if QryPartidasEfectivas.RecordCount > 0 then
    begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('Insert Into ordendecambio_p (sContrato, iCedulaProcedencia, sWbs, sNumeroActividad, dCantidad) VALUES (:Contrato, :Cedula, :WBS, :Actividad, 0) ') ;
        connection.zCommand.Params.ParamByName('contrato').DataType  := ftString ;
        connection.zCommand.Params.ParamByName('contrato').Value     := global_contrato ;
        connection.zCommand.Params.ParamByName('cedula').DataType    := ftInteger ;
        connection.zCommand.Params.ParamByName('cedula').Value       := tiCedulaProcedencia.Value ;
        connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString ;
        connection.zCommand.Params.ParamByName('Wbs').Value          := QryPartidasEfectivas.FieldValues ['sWbs'] ;
        connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Actividad').Value    := QryPartidasEfectivas.FieldValues ['sNumeroActividad'] ;
        Try
            connection.zCommand.ExecSQL ;
            QryPartidasOC.Refresh ;
        Except
              MessageDlg( 'La partida ya ha sido registrada en la orden de cambio.', mtWarning, [ mbOk ], 0 );
        End;
    end;
end;

procedure TfrmOrdendeCambioP.FormShow(Sender: TObject);
begin
     tsOrdenOficio.Text       := global_OrdenOficio       ;
     tsOrdenCambio.Text       := global_OrdenCambio       ;
     tiCedulaProcedencia.Text := global_CedulaProcedencia ;

    QryPartidasEfectivas.Active := False ;
    QryPartidasEfectivas.Params.ParamByName( 'contrato' ).DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName( 'contrato' ).Value := global_contrato;
    QryPartidasEfectivas.Params.ParamByName( 'convenio' ).DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName( 'convenio' ).Value := global_convenio;
    QryPartidasEfectivas.Open;
    if QryPartidasEfectivas.RecordCount > 0 then
          tsNumeroActividad.KeyValue := QryPartidasEfectivas.FieldValues ['sNumeroActividad'] ;


    QryPartidasOC.Active := False ;
    QryPartidasOC.Params.ParamByName( 'contrato' ).DataType := ftString;
    QryPartidasOC.Params.ParamByName( 'contrato' ).Value    := global_contrato;
    QryPartidasOC.Params.ParamByName( 'cedula' ).DataType   := ftInteger;
    QryPartidasOC.Params.ParamByName( 'cedula' ).Value      := tiCedulaProcedencia.Value ;
    QryPartidasOC.Open;

    tsNumeroActividad.SetFocus

end;



procedure TfrmOrdendeCambioP.QryPartidasOCBeforeDelete(DataSet: TDataSet);
begin
    abort
end;

procedure TfrmOrdendeCambioP.QryPartidasOCBeforeInsert(DataSet: TDataSet);
begin
    abort
end;

end.
