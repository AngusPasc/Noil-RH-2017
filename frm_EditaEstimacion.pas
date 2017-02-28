unit frm_EditaEstimacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  Grids, DBGrids, rxToolEdit, RXDBCtrl, CheckLst, JvExControls, JvxCheckListBox,
  ZAbstractDataset, rxSpeedbar, rxCurrEdit, UnitEstimacion, NxPageControl;
type
  TfrmEditaEstimacion = class(TForm)
    CmdCancel: TButton;
    CmdNext: TButton;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    sEstimacionVacia: TSpeedItem;
    sEstimacionGeneradores: TSpeedItem;
    sActualizaAcum: TSpeedItem;
    sElimina: TSpeedItem;
    sEliminaCeros: TSpeedItem;
    mEditar: TSpeedItem;
    mImprimir: TSpeedItem;
    mCabecera: TSpeedItem;
    ds_ActividadesxEstimacion: TDataSource;
    ActividadesxEstimacion: TZQuery;
    ActividadesxEstimacionsContrato: TStringField;
    ActividadesxEstimacioniNumeroEstimacion: TStringField;
    ActividadesxEstimacionsWbs: TStringField;
    ActividadesxEstimacionsWbsAnterior: TStringField;
    ActividadesxEstimacionsNumeroActividad: TStringField;
    ActividadesxEstimacionsTipoActividad: TStringField;
    ActividadesxEstimacionmDescripcion: TMemoField;
    ActividadesxEstimaciondCostoMN: TFloatField;
    ActividadesxEstimaciondCostoDll: TFloatField;
    ActividadesxEstimaciondVentaMN: TFloatField;
    ActividadesxEstimaciondVentaDLL: TFloatField;
    ActividadesxEstimacionsMedida: TStringField;
    ActividadesxEstimaciondCantidadAnexo: TFloatField;
    ActividadesxEstimaciondAcumuladoAnterior: TFloatField;
    ActividadesxEstimaciondCantidad: TFloatField;
    ActividadesxEstimaciondAcumuladoActual: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorDLL: TFloatField;
    ActividadesxEstimacionsWbsSpace: TStringField;
    ActividadesxEstimaciondMontoMN: TFloatField;
    ActividadesxEstimaciondMontoDLL: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoDLL: TFloatField;
    ActividadesxEstimacioniItemOrden: TStringField;
    ActividadesxEstimacionsAnexo: TStringField;
    ActividadesxEstimacionsIdTipoEstimacion: TStringField;
    ActividadesxEstimacioniNumeroEstimacionSub: TStringField;
    ActividadesxEstimaciondCantidadRestante: TFloatField;
    ActividadesxEstimaciondCantidadExcedente: TFloatField;
    ActividadesxEstimaciondCantidadPT: TFloatField;
    lblDatos: TLabel;
    DBMemo1: TDBMemo;
    ActividadesxEstimacioniConsecutivo: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tdMontoMN: TRxDBCalcEdit;
    tdMontoDLL: TRxDBCalcEdit;
    tdMontoAcumMN: TRxDBCalcEdit;
    tdMontoAcumDLL: TRxDBCalcEdit;
    ds_montos: TDataSource;
    Montos: TZQuery;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    ActividadesxEstimacioniOrigen: TIntegerField;
    pgEstimaciones: TNxPageControl;
    pgActual: TNxTabSheet;
    Grid_Partidas: TRxDBGrid;
    pgReportes: TNxTabSheet;
    Grid_Reportes: TRxDBGrid;
    procedure FormShow(Sender: TObject);
    procedure mEditarClick(Sender: TObject);
    procedure sEliminaCerosClick(Sender: TObject);
    procedure sActualizaAcumClick(Sender: TObject);
    procedure sEliminaClick(Sender: TObject);
    procedure mImprimirClick(Sender: TObject);
    procedure CmdNextClick(Sender: TObject);
    procedure ActividadesxEstimacionAfterScroll(DataSet: TDataSet);
    procedure pgActualShow(Sender: TObject);
    procedure pgActualHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditaEstimacion: TfrmEditaEstimacion;
  Bandera, Fecha  : string;
  oper            : integer ;

implementation

uses
    frm_EstimacionGeneral;

{$R *.dfm}

procedure TfrmEditaEstimacion.ActividadesxEstimacionAfterScroll(
  DataSet: TDataSet);
begin
     Grid_Partidas.Hint := ActividadesxEstimacion.FieldValues['mDescripcion'];
end;

procedure TfrmEditaEstimacion.CmdNextClick(Sender: TObject);
begin
    sActualizaAcum.Click;
    Grid_Partidas.ReadOnly := True;
    cmdNext.Enabled := False;
    sEstimacionVacia.Enabled       := True;
    sEstimacionGeneradores.Enabled := True;
    sActualizaAcum.Enabled         := True;
    sElimina.Enabled               := True;
    sEliminaCeros.Enabled          := True;
    mImprimir.Enabled              := True;
    mCabecera.Enabled              := True;
end;

procedure TfrmEditaEstimacion.FormShow(Sender: TObject);
var
    LineaPendientes : string;
begin
    if frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'] <> '' then
       LineaPendientes := ' and dCantidad > 0 '
    else
       LineaPendientes := '';

    if frmEstimacionGeneral.EstimacionOrden.RecordCount = 0 then
       exit;

    frmEditaEstimacion.Caption :=  'Edita Estimacion Anexo / Orden [ '+ frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato']+' ]';

    Grid_Partidas.ReadOnly := True;
    ActividadesxEstimacion.Active := False ;
    ActividadesxEstimacion.SQL.Clear;
    ActividadesxEstimacion.SQL.Add('Select * from estimacion_actividades Where sContrato = :contrato '+
                                   'and iNumeroEstimacion = :Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo '+ LineaPendientes +
                                   'order by sAnexo, iItemOrden, iOrden');
    ActividadesxEstimacion.Params.ParamByName('Contrato').DataType      := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').Value         := frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato'];
    ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType    := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').Value       := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion'];
    ActividadesxEstimacion.Params.ParamByName('EstimacionSub').DataType := ftString ;
    ActividadesxEstimacion.Params.ParamByName('EstimacionSub').Value    := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'];
    ActividadesxEstimacion.Params.ParamByName('Tipo').DataType          := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Tipo').Value             := frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdTipoEstimacion'];
    ActividadesxEstimacion.Open ;

    if ActividadesxEstimacion.RecordCount > 0 then

    lblDatos.Caption := 'Estimación No. '+ frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion']+
                        ' '+ frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub']+
                        '    P. Ejecución: '+ DateToStr(frmEstimacionGeneral.EstimacionOrden.FieldValues['dFechaInicio_Convenio'])+
                        ' AL '+ DateToStr(frmEstimacionGeneral.EstimacionOrden.FieldValues['dFechaFinal_Convenio']) +
                        '    P. Estimación: '+ DateToStr(frmEstimacionGeneral.EstimacionOrden.FieldValues['dFechaInicio']) +
                        ' AL '+ DateToStr(frmEstimacionGeneral.EstimacionOrden.FieldValues['dFechaFinal']);

    Montos.Active := False ;
    Montos.Params.ParamByName('Estimacion').AsString    := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion'] ;
    Montos.Params.ParamByName('EstimacionSub').AsString := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'] ;
    Montos.Params.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdTipoEstimacion'] ;
    Montos.Params.ParamByName('Contrato').AsString      := frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato'] ;
    Montos.Open ;
end;

procedure TfrmEditaEstimacion.mEditarClick(Sender: TObject);
Var
    sSelect : String ;
    Q_Acumulados :TZReadOnlyQuery;
begin
    Q_Acumulados := TZReadOnlyQuery.Create(self);
    Q_Acumulados.Connection := Connection.zConnection;

    If ((frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioValida'] <> '') and (frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioValida'] <> null)) and ((frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioAutoriza'] <> '') and frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioValida'] <> null) Then
    begin
       Grid_Partidas.ReadOnly := True;
       messagedLG('No se puede Editar, la Estimacion se encuentra Validada/Autorizada, Favor de Verificar!', mtInformation, [mbOk], 0);
       exit;
    end
    Else
       Grid_Partidas.ReadOnly := False ;

    sEstimacionVacia.Enabled       := False;
    sEstimacionGeneradores.Enabled := False;
    sActualizaAcum.Enabled         := False;
    sElimina.Enabled               := False;
    sEliminaCeros.Enabled          := False;
    mImprimir.Enabled              := False;
    mCabecera.Enabled              := False;
    cmdNext.Enabled := True;

    ActividadesxEstimacion.Active := False ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').DataType      := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').Value         := frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato'];
    ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType    := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').Value       := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion'];
    ActividadesxEstimacion.Params.ParamByName('EstimacionSub').DataType := ftString ;
    ActividadesxEstimacion.Params.ParamByName('EstimacionSub').Value    := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'];
    ActividadesxEstimacion.Params.ParamByName('Tipo').DataType          := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Tipo').Value             := frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdTipoEstimacion'];
    ActividadesxEstimacion.Open ;

end;

procedure TfrmEditaEstimacion.mImprimirClick(Sender: TObject);
begin
    frmEstimacionGeneral.MnuReporteOrden.Click;
end;

procedure TfrmEditaEstimacion.pgActualHide(Sender: TObject);
begin
      sEstimacionVacia.Enabled       := False;
      sEstimacionGeneradores.Enabled := False;
      sActualizaAcum.Enabled := False;
      sElimina.Enabled       := False;
      sEliminaCeros.Enabled  := False;
      mEditar.Enabled        := False;
      mImprimir.Enabled      := False;
      mCabecera.Enabled      := False;
      tdMontoMN.Visible      := False;
      tdMontoAcumMN.Visible  := False;
      tdMontoDLL.Visible     := False;
      tdMontoAcumDLL.Visible := False;
      label1.Visible         := False;
      label2.Visible         := False;
      label3.Visible         := False;
      label4.Visible         := False;
end;

procedure TfrmEditaEstimacion.pgActualShow(Sender: TObject);
begin
      sEstimacionVacia.Enabled       := True;
      sEstimacionGeneradores.Enabled := True;
      sActualizaAcum.Enabled := True;
      sElimina.Enabled       := True;
      sEliminaCeros.Enabled  := True;
      mEditar.Enabled        := True;
      mImprimir.Enabled      := True;
      mCabecera.Enabled      := True;
      tdMontoMN.Visible      := True;
      tdMontoAcumMN.Visible  := True;
      tdMontoDLL.Visible     := True;
      tdMontoAcumDLL.Visible := True;
      label1.Visible         := True;
      label2.Visible         := True;
      label3.Visible         := True;
      label4.Visible         := True;
end;

procedure TfrmEditaEstimacion.sActualizaAcumClick(Sender: TObject);
begin
    if (frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioAutoriza'] <> '') and (frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioAutoriza'] <> null) then
    begin
        messageDLG('La orden se encuentra Autorizada, No se puede hacer calculo de Acumulados!', mtInformation, [mbOk], 0);
        exit;
    end;
    {Llamamos funcion de acumulados..}
    ActualizaAcumulados(frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato'], frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion'],
                        frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'], frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdTipoEstimacion'], frmEditaEstimacion);

    frmEstimacionGeneral.EstimacionOrden.Refresh;
    ActividadesxEstimacion.Refresh;

    Montos.Active := False ;
    Montos.Params.ParamByName('Estimacion').AsString    := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion'];
    Montos.Params.ParamByName('EstimacionSub').AsString := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'];
    Montos.Params.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdTipoEstimacion'];
    Montos.Params.ParamByName('Contrato').AsString      := frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato'];
    Montos.Open ;

    messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0);
end;

procedure TfrmEditaEstimacion.sEliminaCerosClick(Sender: TObject);
begin
 // Pregunto si desea que se eliminen las partidas con valor estimado acumulado = 0
    If ((frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioValida'] = '') or (frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioValida'] = null)) and ((frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioAutoriza'] = '') or (frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioAutoriza'] = null)) Then
        If MessageDlg('Desea eliminar todos aquellos recursos que contienen Montos Acumulados en 0 ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
             // Todas las partidas decencientes
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ('Delete from estimacion_actividades where sContrato = :contrato And iNumeroEstimacion = :Estimacion And ' +
                                          'iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and dMontoAcumuladoMN = 0 And dMontoAcumuladoDLL = 0 ') ;
             connection.zCommand.Params.ParamByName('Contrato').DataType      := ftString ;
             connection.zCommand.Params.ParamByName('Contrato').Value         := frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato'];
             connection.zCommand.Params.ParamByName('Estimacion').DataType    := ftString ;
             connection.zCommand.Params.ParamByName('Estimacion').Value       := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion'];
             connection.zCommand.Params.ParamByName('EstimacionSub').DataType := ftString ;
             connection.zCommand.Params.ParamByName('EstimacionSub').Value    := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'];
             connection.zCommand.Params.ParamByName('Tipo').DataType          := ftString ;
             connection.zCommand.Params.ParamByName('Tipo').Value             := frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdTipoEstimacion'];
             connection.zCommand.ExecSQL ;

             ActividadesxEstimacion.Filter   := '' ;
             ActividadesxEstimacion.Filtered := False ;
             ActividadesxEstimacion.Active   := False ;
             ActividadesxEstimacion.Open ;
             ActividadesxEstimacion.First ;
             MessageDlg('Proceso Terminada Con Exito.', mtWarning, [mbOk], 0) ;
          end
    Else
    Else
        MessageDlg('Estimacion VALIDADA/AUTORIZADA, no se pueden eliminar conceptos!', mtWarning, [mbOk], 0)
end;

procedure TfrmEditaEstimacion.sEliminaClick(Sender: TObject);
var
    lPoder : Boolean ;
    Q_Actualiza,
    Q_Actividades : TZReadOnlyQuery;
begin
    {Verifica primero que la estimacion no se encientre en estatus de Autorizado..}
    If ((frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioAutoriza'] = '') or (frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdUsuarioAutoriza'] = null)) Then
       lPoder := True
    Else
    Begin
        MessageDlg('Estimacion AUTORIZADA, no se pueden realizar cambios.', mtWarning, [mbOk], 0) ;
        lPoder := False
    End ;

    If lPoder Then
    Begin
        {Inciamos el proceso de acumulados de la Estimacion...}
        Q_Actividades := TZReadOnlyQuery.Create(self);
        Q_Actividades.Connection := Connection.zConnection;

        Q_Actualiza := TZReadOnlyQuery.Create(self);
        Q_Actualiza.Connection := Connection.zConnection;

        if ActividadesxEstimacion.FieldValues['iOrigen']> 0 then
        begin
            {buscamos los recursos / partidas que sean de estiamciones con retraso..}
            Q_Actividades.Active := False;
            Q_Actividades.SQL.Clear;
            Q_Actividades.SQL.Add('Select * from estimacion_actividades where sContrato =:Contrato and iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub '+
                                  'and sIdTipoEstimacion =:Tipo and iOrigen > 0 ');
            Q_Actividades.ParamByName('Contrato').AsString      := frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato'];
            Q_Actividades.ParamByName('Estimacion').AsString    := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion'];
            Q_Actividades.ParamByName('EstimacionSub').AsString := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'];
            Q_Actividades.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdTipoEstimacion'];
            Q_Actividades.Open;

            while not Q_Actividades.Eof do
            begin
                {Actualizamos la Cantidad Pendiente Acumulada de la Estimacion referenciada por el iOrigen..}
                Q_Actualiza.Active := False;
                Q_Actualiza.SQL.Clear;
                Q_Actualiza.SQL.Add('Update estimacion_actividades set dCantidadRestante = dCantidadRestante + :Cantidad where sContrato =:Contrato and sIdTipoEstimacion =:Tipo '+
                                    'and iConsecutivo =:Consecutivo and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad and sTipoActividad = "Actividad"');
                Q_Actualiza.ParamByName('Contrato').AsString    := Q_Actividades.FieldValues['sContrato'];
                Q_Actualiza.ParamByName('Tipo').AsString        := Q_Actividades.FieldValues['sIdTipoEstimacion'];
                Q_Actualiza.ParamByName('Consecutivo').AsString := Q_Actividades.FieldValues['iOrigen'];
                Q_Actualiza.ParamByName('Anexo').AsString       := Q_Actividades.FieldValues['sAnexo'];
                Q_Actualiza.ParamByName('Wbs').AsString         := Q_Actividades.FieldValues['sWbs'];
                Q_Actualiza.ParamByName('Actividad').AsString   := Q_Actividades.FieldValues['sNumeroActividad'];
                Q_Actualiza.ParamByName('Cantidad').AsString    := Q_Actividades.FieldValues['dCantidad'];
                Q_Actualiza.ExecSQL;

                Q_Actividades.Next;
            end;
        end;

        {Borramos la información de la estimaciones..}
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from estimacion_actividades where iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sContrato =:contrato') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType      := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value         := frmEstimacionGeneral.EstimacionOrden.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('Estimacion').DataType    := ftString ;
        connection.zCommand.Params.ParamByName('Estimacion').Value       := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacion'];
        connection.zCommand.Params.ParamByName('EstimacionSub').DataType := ftString ;
        connection.zCommand.Params.ParamByName('EstimacionSub').Value    := frmEstimacionGeneral.EstimacionOrden.FieldValues['iNumeroEstimacionSub'];
        connection.zCommand.Params.ParamByName('Tipo').DataType          := ftString ;
        connection.zCommand.Params.ParamByName('Tipo').Value             := frmEstimacionGeneral.EstimacionOrden.FieldValues['sIdTipoEstimacion'];
        connection.zCommand.ExecSQL ;

        ActividadesxEstimacion.Refresh;
    End

end;


end.
