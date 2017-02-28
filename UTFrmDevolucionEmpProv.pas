unit UTFrmDevolucionEmpProv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel,
  cxMemo, cxDBEdit, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGroupBox,
  AdvGlowButton, cxButtonEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, frm_barra, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, global, Func_Genericas, DateUtils, Utilerias,
  cxGridBandedTableView, cxGridDBBandedTableView, cxDBExtLookupComboBox;

type
  TFrmDevolucionEmpProv = class(TForm)
    cxGBDatos: TcxGroupBox;
    zCuentas: TZQuery;
    dsCuentas: TDataSource;
    CxDbDateFecha: TcxDBDateEdit;
    cxDbCurrencyEditIMporte: TcxDBCurrencyEdit;
    CxDbMemoMotivo: TcxDBMemo;
    CxLbl1: TcxLabel;
    c: TcxLabel;
    zDeposito: TZQuery;
    dsDeposito: TDataSource;
    frmBarra1: TfrmBarra;
    CxGridDatos: TcxGrid;
    CxGridSaldoInicial: TcxGridDBTableView;
    IDGrid1DBTableView1iid1: TcxGridDBColumn;
    IDGrid1DBTableView1sIdCompania1: TcxGridDBColumn;
    CxColumnFecha: TcxGridDBColumn;
    CxLevelSaldoInicial: TcxGridLevel;
    CxColumnCuenta: TcxGridDBColumn;
    CxColumnImporte: TcxGridDBColumn;
    CxColumnMotivo: TcxGridDBColumn;
    CxLbl4: TcxLabel;
    CxCbbCuentas: TcxLookupComboBox;
    CxLbl2: TcxLabel;
    cxLabel1: TcxLabel;
    zq_Devolucion: TZQuery;
    ds_Devolucion: TDataSource;
    cxGridViewRepository1: TcxGridViewRepository;
    BView_Debe: TcxGridDBBandedTableView;
    BView_DebeColumn1: TcxGridDBBandedColumn;
    BView_DebeColumn2: TcxGridDBBandedColumn;
    BView_DebeColumn3: TcxGridDBBandedColumn;
    cxExtLookupComboBox1: TcxExtLookupComboBox;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    zq_Detalles: TZQuery;
    ds_detalles: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure CxCbbCuentasPropertiesChange(Sender: TObject);
  private
    Procedure EstadoBotones;
    { Private declarations }
  public
    Empresa: string;
    { Public declarations }
  end;

var
  FrmDevolucionEmpProv: TFrmDevolucionEmpProv;
const
 ArrMonthNames: array[1..12] of string[10] = ('ENERO', 'FEBRERO', 'MARZO',
                                               'ABRIL', 'MAYO', 'JUNIO', 'JULIO',
                                               'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE',
                                               'NOVIEMBRE', 'DICIEMBRE');
implementation
Uses
  frm_connection;

{$R *.dfm}

procedure TFrmDevolucionEmpProv.btnAddClick(Sender: TObject);
begin
  try
    if CxCbbCuentas.EditValue = null then
    begin
      MessageDlg('Seleccione una cuenta para poder registrar un Saldo Inicial', mtInformation, [mbOK], 0);
      Exit;
    end;
    
    try
      if zDeposito.Active then
      begin
        if (zDeposito.RecordCount > 0) then
        begin
          MessageDlg('Esta Cuenta Bancaria ya cuenta con un Saldo de Apertura', mtInformation, [mbOK], 0);
          exit
        end;
        zDeposito.Insert;
        if CxDbDateFecha.CanFocus then
          CxDbDateFecha.SetFocus;
      end;
    finally
      EstadoBotones;
    end;  
    zq_Devolucion.Active:=False;
    zq_Devolucion.Open;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmDevolucionEmpProv.BtnCancelClick(Sender: TObject);
begin
  try
    if (zDeposito.Active) and (zDeposito.State in [dsEdit, dsInsert])then
      zDeposito.close;
  finally
    EstadoBotones;
  end;
end;

procedure TFrmDevolucionEmpProv.btnDeleteClick(Sender: TObject);
begin
  try
    if (zDeposito.Active) and (zDeposito.RecordCount > 0) then
    begin
      if MessageDlg('¿Está seguro que desea Eliminar este saldo Inicial?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        zDeposito.Delete;
        Kardex('Otros Movimientos', 'Eliminar saldo inicial', zCuentas.FieldByName('sIdNumeroCuenta').AsString, 'Numero Cuenta', '', '', '' );
      end;
    end;
  finally
    EstadoBotones;
  end;
end;

procedure TFrmDevolucionEmpProv.btnEditClick(Sender: TObject);
begin
  try
    try
      if (zDeposito.Active) and (zDeposito.RecordCount > 0) then
      begin
        zDeposito.Edit;
        if CxDbDateFecha.CanFocus then
          CxDbDateFecha.SetFocus;
      end;
    finally
      EstadoBotones;
    end;
    zq_Devolucion.Active:=False;
    zq_Devolucion.Open;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmDevolucionEmpProv.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDevolucionEmpProv.btnPostClick(Sender: TObject);

begin
  try
    try
      if (zDeposito.Active) and (zDeposito.State in [dsEdit, dsInsert]) then
      begin
        if (zDeposito.FieldByName('dImporteTotal').IsNull) then
        begin
          MessageDlg('Ingrese un Saldo Inicial.', mtInformation, [mbOK], 0);
         // if TcxDBCurrencyEdit.CanFocus then
            //TcxDBCurrencyEdit.SetFocus;
          Exit;
        end;

        if (CxDbDateFecha.EditValue = null) or (Length(Trim(CxDbDateFecha.Text)) = 0) then
        begin
          MessageDlg('Ingrese una fecha válida', mtInformation, [mbOK], 0);
          if CxDbDateFecha.CanFocus then
            CxDbDateFecha.SetFocus;
          Exit;
        end;

        if (CxCbbCuentas.EditValue = null) or (Length(Trim(CxCbbCuentas.Text)) = 0) then
        begin
          MessageDlg('Seleccione un Cuenta Bancaria', mtInformation, [mbOK], 0);
          if CxCbbCuentas.CanFocus then
            CxCbbCuentas.SetFocus;
          Exit;
        end;


        if zCuentas.Locate('sIdNumeroCuenta', CxCbbCuentas.EditValue, []) then
          ;

        if zDeposito.State = dsInsert then
        begin
          zDeposito.FieldByName('iIdFolio').AsInteger := NextId('iIdFolio','con_tesoreriaegresos');
          zDeposito.FieldByName('sTipoMovimiento').AsString := 'DEPOSITO';
          zDeposito.FieldByName('sIdArea').AsString := Connection.configuracionCont.FieldByName('sTesoreria').AsString;
          zDeposito.FieldByName('sIdNumeroCuenta').AsString := zCuentas.FieldByName('sIdNumeroCuenta').AsString;
          zDeposito.FieldByName('sNumeroOrden').AsString := '*';
          zDeposito.FieldByName('sReferencia').AsString := 'Devoluciones por Empleado/Proveedor';
          zDeposito.FieldByName('sIdProveedor').AsString := '*';
          zDeposito.FieldByName('sIdCompania').AsString := Empresa;
          zDeposito.FieldByName('sRfc').AsString := '*';
          zDeposito.FieldByName('sRazonSocial').AsString := '*';
          zDeposito.FieldByName('sDomicilio').AsString := '*';
          zDeposito.FieldByName('sCiudad').AsString := '*';
          zDeposito.FieldByName('sCp').AsString := '*';
          zDeposito.FieldByName('sEstado').AsString := '*';
          zDeposito.FieldByName('sTelefono').AsString := '*';
          zDeposito.FieldByName('dImporteSubTotal').Clear;
          zDeposito.FieldByName('lComprobado').AsString := 'Si';
          zDeposito.FieldByName('sStatus').AsString := 'Aprobado';
          zDeposito.FieldByName('dIva').AsFloat := 0;
          zDeposito.FieldByName('lAplicaIva').AsString := 'Si';
          zDeposito.FieldByName('dFechaFactura').Clear;
          zDeposito.FieldByName('dFechaRecepcion').AsDateTime := Now();
          zDeposito.FieldByName('iFolio').AsInteger := 0;
          zDeposito.FieldByName('iIdStatus').AsInteger := 4; // Pagada
          zDeposito.FieldByName('sFormaPago').Clear;
          zDeposito.FieldByName('sNumeroDeCuenta').AsString := zCuentas.FieldByName('sIdNumeroCuenta').AsString;
          zDeposito.FieldByName('sNumeroPedido').AsString := '*';
          zDeposito.FieldByName('iImprimeProveedor').Clear;
          zDeposito.FieldByName('sMes').AsString := ArrMonthNames[MonthOf(CxDbDateFecha.Date)];
          zDeposito.FieldByName('lAplicaPagoParcial').AsString := 'No';
          zDeposito.FieldByName('dParcialidad').AsInteger := 0;
          zDeposito.FieldByName('sProyecto').AsString := '*';
          zDeposito.FieldByName('sUsuario').AsString := global_usuario;
          zDeposito.FieldByName('iEjercicio').AsInteger := YEAROF(CxDbDateFecha.Date);
          zDeposito.FieldByName('iIdTipoMoneda').AsString := 'MXP';
          zDeposito.FieldByName('iIdPrecioMoneda').AsFloat := 1;
          zDeposito.FieldByName('lNotaCredito').AsString := 'No';
          zDeposito.FieldByName('eSaldoinicial').AsString := 'No';
          zDeposito.Post;
          Kardex('Otros Movimientos', 'Establecer saldo inicial', zCuentas.FieldByName('sIdNumeroCuenta').AsString, 'Numero Cuenta', '', '', '' );
        end;
        if zDeposito.State = dsEdit then
        begin
          zDeposito.FieldByName('sIdNumeroCuenta').AsString := zCuentas.FieldByName('sIdNumeroCuenta').AsString;
          zDeposito.FieldByName('sNumeroDeCuenta').AsString := zCuentas.FieldByName('sIdNumeroCuenta').AsString;
          zDeposito.Post;
          Kardex('Otros Movimientos', 'Modificación saldo inicial', zCuentas.FieldByName('sIdNumeroCuenta').AsString, 'Numero Cuenta', '', '', '' );
        end;

        zq_Detalles.Active:=False;
        zq_Detalles.Open;
        zq_Detalles.Insert;

        zq_Detalles.FieldByName('idorganizacion').AsInteger:=connection.contrato.fieldbyname('idorganizacion').AsInteger;;
        zq_Detalles.FieldByName('dIdFecha').AsDateTime:=zq_Devolucion.FindField('dIdFecha').AsDateTime;
        zq_Detalles.FieldByName('iIdFolio').AsInteger:=zq_Devolucion.FindField('iIdFolio').AsInteger;
        zq_Detalles.FieldByName('sIdEgreso').AsString:='AJUSTES';
        zq_Detalles.FieldByName('sTipoEgreso').AsString:=zq_Devolucion.FindField('sTipoEgreso').AsString;
        zq_Detalles.FieldByName('sIdProveedor').AsString:=zq_Devolucion.FindField('sIdProveedor').AsString;
        zq_Detalles.FieldByName('sRazonSocial').AsString:=zq_Devolucion.FindField('sRazonSocial').AsString;
        zq_Detalles.FieldByName('mDescripcion').AsString:='Devoluciones por Empleado/Proveedor';
        zq_Detalles.FieldByName('dImporte').AsFloat:=zDeposito.FieldByName('dImporteTotal').AsFloat;
        zq_Detalles.FieldByName('eReal').AsString:='Si';
        zq_Detalles.FieldByName('eStatus').AsString:='ABIERTO';
        zq_Detalles.FieldByName('sIdFactura').AsString:='*';
        zq_Detalles.FieldByName('dIva').AsFloat:=0;
        zq_Detalles.FieldByName('dRetencion').AsFloat:=0;
        zq_Detalles.FieldByName('dIspt').AsFloat:=0;
        zq_Detalles.FieldByName('dIsr').AsFloat:=0;
        zq_Detalles.FieldByName('dsubtotal').AsFloat:=0;
        zq_Detalles.FieldByName('sCheque').AsString:='*';
        zq_Detalles.FieldByName('sPoliza').AsString:='*';
        zq_Detalles.FieldByName('sNameFilePdf').AsString:='*';
        zq_Detalles.FieldByName('sNameFileJpeg').AsString:='*';
        zq_Detalles.FieldByName('sNameXml').AsString:='*';
        zq_Detalles.Post;

        MessageDlg('Saldo Inicial registrado', mtInformation, [mbOK], 0);
      end;
    finally
      EstadoBotones;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmDevolucionEmpProv.btnRefreshClick(Sender: TObject);
begin
  try
    if zDeposito.State = dsBrowse then
      zDeposito.Refresh;
  finally
    EstadoBotones;
  end;
end;

procedure TFrmDevolucionEmpProv.CxCbbCuentasPropertiesChange(Sender: TObject);
begin
  try
    if zDeposito.Active then
    begin
      zDeposito.Params.ParamByName('Cuenta').asString := VarToStr(CxCbbCuentas.EditValue);
      zDeposito.Refresh;
    end;
  finally
    EstadoBotones;
  end;

end;

procedure TFrmDevolucionEmpProv.EstadoBotones;
var
 Estado: Boolean;
begin
  if zDeposito.Active then
  begin
    Estado := (zDeposito.Active) and (Not (zDeposito.State in [dsEdit, dsInsert]));
    frmBarra1.btnAdd.Enabled := Estado;
    frmBarra1.btnRefresh.Enabled := Estado;
    CxGridDatos.Enabled := Estado;
    CxCbbCuentas.Enabled := Estado;

    frmBarra1.btnPost.Enabled := Not Estado;
    frmBarra1.btnCancel.Enabled := Not Estado;
    CxDbDateFecha.Enabled := Not Estado;
    cxDbCurrencyEditIMporte.Enabled := Not Estado;
    CxDbMemoMotivo.Enabled := Not Estado;

    Estado := (zDeposito.Active) and (Not (zDeposito.State in [dsEdit, dsInsert])) and (zDeposito.RecordCount > 0);
    frmBarra1.btnEdit.Enabled := Estado;
    frmBarra1.btnDelete.Enabled := Estado;
  end;
end;

procedure TFrmDevolucionEmpProv.FormCreate(Sender: TObject);
begin
  zDeposito.Active := False;
  zDeposito.Connection := connection.zConnection;

  zCuentas.Active := False;
  zCuentas.Connection := connection.zConnection;

  Empresa := global_contrato;


//ALTER TABLE `con_tesoreriaegresos`
//ADD COLUMN `eSaldoInicial`  enum('Si','No') NULL DEFAULT NULL AFTER `lNotaCredito`;

end;

procedure TFrmDevolucionEmpProv.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try

    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if Not zDeposito.Active then
      begin
        zDeposito.Params.ParamByName('Cuenta').AsInteger := -9;
        zDeposito.Open;
      end;

      if Not zCuentas.Active then
      begin
        zCuentas.Params.ParamByName('sIdNumeroCuenta').AsInteger := -1;
        //zCuentas.Params.ParamByName('AplicaFiscal').AsString := 'Si';
        zCuentas.Params.ParamByName('sIdCompaniaConf').AsString := Empresa;
        zCuentas.Open;
      end;

      if zCuentas.RecordCount =0 then
      begin
        MessageDlg('No hay cuentas bancarias registradas en el sistema.', mtWarning, [mbOK], 0);
        zDeposito.Close;
        zCuentas.Close;
        Close;
      end;
    finally
      EstadoBotones;
      Screen.Cursor := Cursor;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error inesperado, informar del siguiente error al administrador del sistema: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

end.
