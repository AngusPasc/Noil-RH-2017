unit frm_ModuloTraspaso;

interface

uses
  Windows, Messages, SysUtils,global, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, JvExControls, JvLabel, ExtCtrls, ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, Buttons, DB,
  ZAbstractRODataset, ZDataset, frm_connection, Newpanel, AdvGlowButton,
  ZAbstractDataset, dblookup, TeEngine, Series, TeeProcs, Chart, DBChart,
  RxMemDS, rxToolEdit, rxCurrEdit, TeeDBEdit, TeeDBCrossTab, RXDBCtrl,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfrmModuloTraspaso = class(TForm)
    Panel: tNewGroupBox;
    JvLabel2: TJvLabel;
    contra: TEdit;
    cuentadeposito: TDBLookupComboBox;
    DBCuentaRetiro: TDBLookupComboBox;
    rxcuentas: TRxMemoryData;
    rxcuentassNombreCuenta: TStringField;
    rxcuentasdImporteTotal: TFloatField;
    JvLabel1: TJvLabel;
    Memo1: TMemo;
    Memo11: TMemo;
    Rimporte: TRxCalcEdit;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    tsNombre: TDBEdit;
    DBChart1: TDBChart;
    Label2: TLabel;
    PieSeries1: TBarSeries;
    dsGrafica: TDataSource;
    rxcuentassIdNumeroCuenta: TStringField;
    DbSaldo: TRxDBCalcEdit;
    DsDepposito: TDataSource;
    RxDeposito: TRxMemoryData;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    DbRetiro: TRxDBCalcEdit;
    DbDeposito: TRxDBCalcEdit;
    RxGrafica: TRxMemoryData;
    StringField3: TStringField;
    FloatField2: TFloatField;
    StringField4: TStringField;
    Zacceso: TZQuery;
    dsConfiguracion: TDataSource;
    zconsulta: TZReadOnlyQuery;
    ZFolio: TZReadOnlyQuery;
    bitbtn1: TcxButton;
    bitbtn3: TcxButton;
    bitbtn2: TcxButton;
    ch: TcxButton;
    Tfecha: TJvDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure mbaceptarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chClick(Sender: TObject);
    procedure mbcancelClick(Sender: TObject);
    procedure DBCuentaRetiroClick(Sender: TObject);
    procedure cuentadepositoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure Retiro();
    procedure Depositos();
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo11KeyPress(Sender: TObject; var Key: Char);
    procedure RimporteKeyPress(Sender: TObject; var Key: Char);
    procedure TfechaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
    frmModuloTraspaso: TfrmModuloTraspaso;
    sQueryI, SqueryG, squerytotal, valorc, sacumulados   : String ;
    Ingresos, Restax, Acumulado,Gastos              : Double ;
    qrySumaTotal, qryIngresos, qryGastos, qryTotalCuentas  : TZReadOnlyQuery;
    i, ii   : Byte ;

    sQueryII, SqueryGG, squerytotalL, valorcC, sacumuladosS   : String ;
    IngresosS, RestaxX, AcumuladoO,GastosS              : Double ;
    qrySumaTotalL, qryIngresosS, qryGastosS, qryTotalCuentasS  : TZReadOnlyQuery;
    iB, iiB   : Byte ;

implementation

{$R *.dfm}



procedure TfrmModuloTraspaso.mbaceptarClick(Sender: TObject);
begin
    if DBCuentaRetiro.KeyValue = '*' then
      begin
      MessageDlg('Seleccione una Cuenta de traspaso' ,mtWarning, [mbOk],0);
      DBCuentaRetiro.setfocus;
      exit;
    end;

    if cuentadeposito.KeyValue = '*' then
      begin
      MessageDlg('Seleccione una Cuenta de traspaso' ,mtWarning, [mbOk],0);
      cuentadeposito.setfocus;
      exit;
    end;

    if Rimporte.Value = 0 then
    begin
      MessageDlg('Asigne una cantidad de Importe de traspaso' ,mtWarning, [mbOk],0);
      Rimporte.setfocus;
      exit;
    end;

    if DBCuentaRetiro.KeyValue = cuentadeposito.KeyValue then
    begin
      MessageDlg('Debe seleccionar Una cuenta diferente a su traspasos' ,mtWarning, [mbOk],0);
      cuentadeposito.setfocus;
      exit;
    end;

    if Rimporte.Value > DbRetiro.Value  then
    begin
      MessageDlg('No puede ser mayor el Importe de traspaso al Importe de Retiro' ,mtWarning, [mbOk],0);
      Rimporte.setfocus;
      exit;
    end;                

    Zacceso.Active := False;
    Zacceso.SQL.Clear;
    Zacceso.SQL.text := 'select sIdUsuario, sPasswordAjustaMaterial, lAjusteMaterial  from usuarios ' +
                        'where sIdUsuario = :Usuario';
    Zacceso.Params.ParamByName('Usuario').DataType := ftString;
    Zacceso.Params.ParamByName('Usuario').Value := ''+global_Usuario+'';
    Zacceso.Open;
    if Zacceso.RecordCount > 0 then
    begin
      if Zacceso.FieldValues ['lAjusteMaterial']= 'SI' then
      begin
        Panel.Top := 132;
        panel.Left := 300;
        Panel.Visible := true
      end
      else
      begin
        showmessage('No es un Usuario Permitido Para realizar esta operacion');
        exit;
      end;
    end;
end;

procedure TfrmModuloTraspaso.mbcancelClick(Sender: TObject);
begin
close
end;

procedure TfrmModuloTraspaso.Memo11KeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
         Rimporte.SetFocus;
end;

procedure TfrmModuloTraspaso.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
          Memo11.SetFocus;
end;

procedure TfrmModuloTraspaso.BitBtn2Click(Sender: TObject);
var
iFolio : Integer ;
Puntero1, Puntero2 : Integer;
begin
    if Zacceso.FieldValues ['sPasswordAjustaMaterial']= contra.Text then
    begin
      //obtenemos el ultimo folio para incrementarlo
      ZFolio.Active := False ;
      ZFolio.SQL.clear ;
      ZFolio.Sql.Add('select max(iIdFolio) as iIdFolio from con_tesoreriaegresos') ;
      ZFolio.Open ;
      if NOT ZFolio.FieldByName('iIdFolio').IsNull then
          iFolio := ZFolio.FieldValues ['iIdFolio'] + 1 ;

      zconsulta.Active := False;
      zconsulta.SQL.Clear;
      zconsulta.SQL.Add('INSERT INTO con_tesoreriaegresos ( dIdFecha, iIdFolio, sTipoMovimiento, sIdArea, sIdNumeroCuenta, sNumeroOrden, sReferencia, sIdProveedor, sIdCompania, sRFC, sRazonSocial, sDomicilio, sCiudad, sCP, sEstado, sTelefono, dImporteTotal, ' +
                                  'lComprobado, sStatus, mDescripcion, dIva, lAplicaiva, sPoliza, dFechaFactura, iFolio, iIdStatus, sTipoPago, sFormaPago, sNumeroDeCuenta, sNumeroPedido, iImprimeProveedor, iEjercicio) ' +
      ' VALUES (:Fecha, :iIdFolio, :Movimiento, :Area, :Cuenta, "*", :Referencia, "*", :Compania, "*", "*", "*", "*", "*", "*", "*", ' +
      ':ImporteTotal, :Comprobado, :sStatus, :Descripcion, :Iva, :Aplicaiva, "*", :FechaFactura, :iFolio, :Status, null, null, null, :NumeroPedido,null, :ejercicio)');
      zconsulta.Params.ParamByName('Fecha').DataType := ftDATE;
      zconsulta.Params.ParamByName('Fecha').value    := Tfecha.Date;
      zconsulta.Params.ParamByName('iIdFolio').DataType   := ftInteger;
      zconsulta.Params.ParamByName('iIdFolio').value      := iFolio;
      zconsulta.Params.ParamByName('Movimiento').DataType  := ftString;
      zconsulta.Params.ParamByName('Movimiento').value     := 'DEPOSITO';
      zconsulta.Params.ParamByName('Area').DataType  := ftString;
      zconsulta.Params.ParamByName('Area').value     := 'INTELCOD';
      zconsulta.Params.ParamByName('Cuenta').DataType  := ftString;
      zconsulta.Params.ParamByName('Cuenta').value     := DsDepposito.DataSet.FieldValues['sIdNumeroCuenta'];
      zconsulta.Params.ParamByName('Referencia').DataType  := ftString;
      zconsulta.Params.ParamByName('Referencia').value     := 'TRANSFERENCIA DE OTRO BANCO';
      zconsulta.Params.ParamByName('Compania').DataType  := ftString;
      zconsulta.Params.ParamByName('Compania').value     := 'NO TIENE';
      zconsulta.Params.ParamByName('ImporteTotal').DataType  := ftFloat;
      zconsulta.Params.ParamByName('ImporteTotal').value     := Rimporte.Value;
      zconsulta.Params.ParamByName('Comprobado').DataType  := ftString;
      zconsulta.Params.ParamByName('Comprobado').value     := 'Si';
      zconsulta.Params.ParamByName('sStatus').DataType  := ftString;
      zconsulta.Params.ParamByName('sStatus').value     := 'Aprobado';
      zconsulta.Params.ParamByName('Descripcion').DataType  := ftString;
      zconsulta.Params.ParamByName('Descripcion').value     := 'Deposito Transferida de la cuenta ' + dsGrafica.DataSet.FieldValues['sNombreCuenta'] ;
      zconsulta.Params.ParamByName('Iva').DataType  := ftFloat;
      zconsulta.Params.ParamByName('Iva').value     := 0;
      zconsulta.Params.ParamByName('Aplicaiva').DataType  := ftString;
      zconsulta.Params.ParamByName('Aplicaiva').value     := 'Si';
      zconsulta.Params.ParamByName('FechaFactura').DataType := ftDATE;
      zconsulta.Params.ParamByName('FechaFactura').value    := 0000-00-00;

      zconsulta.Params.ParamByName('iFolio').DataType := ftInteger;
      zconsulta.Params.ParamByName('iFolio').value    := 0;

      zconsulta.Params.ParamByName('Status').DataType  := ftInteger;
      zconsulta.Params.ParamByName('Status').value     := 5;
      zconsulta.Params.ParamByName('NumeroPedido').DataType  := ftstring;
      zconsulta.Params.ParamByName('NumeroPedido').value     := 50098760;
      zconsulta.Params.ParamByName('Ejercicio').value        := connection.configuracionCont.FieldByName('iEjercicio').AsInteger;
      zconsulta.ExecSQL;


      //obtenemos el ultimo folio para incrementarlo
      ZFolio.Active := False ;
      ZFolio.SQL.clear ;
      ZFolio.Sql.Add('select max(iIdFolio) as iIdFolio from con_tesoreriaegresos') ;
      ZFolio.Open ;
      if NOT ZFolio.FieldByName('iIdFolio').IsNull then
          iFolio := ZFolio.FieldValues ['iIdFolio'] + 1 ;

      zconsulta.Active := False;
      zconsulta.SQL.Clear;
      zconsulta.SQL.Add('INSERT INTO con_tesoreriaegresos ( dIdFecha, iIdFolio, sTipoMovimiento, sIdArea, sIdNumeroCuenta, sNumeroOrden, sReferencia, sIdProveedor, sIdCompania, sRFC, sRazonSocial, sDomicilio, sCiudad, sCP, sEstado, sTelefono, dImporteTotal, ' +
                                  'lComprobado, sStatus, mDescripcion, dIva, lAplicaiva, sPoliza, dFechaFactura, iFolio, iIdStatus, sTipoPago, sFormaPago, sNumeroDeCuenta, sNumeroPedido, iImprimeProveedor, iEjercicio) ' +
      ' VALUES (:Fecha, :iIdFolio, :Movimiento, :Area, :Cuenta, "*", :Referencia, "*", :Compania, "*", "*", "*", "*", "*", "*", "*", ' +
      ':ImporteTotal, :Comprobado, :sStatus, :Descripcion, :Iva, :Aplicaiva, "*", :FechaFactura, 0, :Status, null, null, null, :NumeroPedido,null, :Ejercicio)');
      zconsulta.Params.ParamByName('Fecha').DataType := ftDATE;
      zconsulta.Params.ParamByName('Fecha').value    := Tfecha.Date;
      zconsulta.Params.ParamByName('iIdFolio').DataType   := ftInteger;
      zconsulta.Params.ParamByName('iIdFolio').value      := iFolio;
      zconsulta.Params.ParamByName('Movimiento').DataType  := ftString;
      zconsulta.Params.ParamByName('Movimiento').value     := 'GASTOS';
      zconsulta.Params.ParamByName('Area').DataType  := ftString;
      zconsulta.Params.ParamByName('Area').value     := 'INTELCOD';
      zconsulta.Params.ParamByName('Cuenta').DataType  := ftString;
      zconsulta.Params.ParamByName('Cuenta').value     := dsGrafica.DataSet.FieldValues['sIdNumeroCuenta'] ;
      zconsulta.Params.ParamByName('Referencia').DataType  := ftString;
      zconsulta.Params.ParamByName('Referencia').value     := 'TRANSFERENCIA DE OTRO BANCO';
      zconsulta.Params.ParamByName('Compania').DataType  := ftString;
      zconsulta.Params.ParamByName('Compania').value     := 'NO TIENE';
      zconsulta.Params.ParamByName('ImporteTotal').DataType  := ftFloat;
      zconsulta.Params.ParamByName('ImporteTotal').value     := 0-Rimporte.Value;
      zconsulta.Params.ParamByName('Comprobado').DataType  := ftString;
      zconsulta.Params.ParamByName('Comprobado').value     := 'Si';
      zconsulta.Params.ParamByName('sStatus').DataType  := ftString;
      zconsulta.Params.ParamByName('sStatus').value     := 'Aprobado';
      zconsulta.Params.ParamByName('Descripcion').DataType  := ftString;
      zconsulta.Params.ParamByName('Descripcion').value     := 'Deposito Transferida a la cuenta ' + DsDepposito.DataSet.FieldValues['sNombreCuenta'] ;
      zconsulta.Params.ParamByName('Iva').DataType  := ftFloat;
      zconsulta.Params.ParamByName('Iva').value     := 0;
      zconsulta.Params.ParamByName('Aplicaiva').DataType  := ftString;
      zconsulta.Params.ParamByName('Aplicaiva').value     := 'Si';
      zconsulta.Params.ParamByName('FechaFactura').DataType := ftDATE;
      zconsulta.Params.ParamByName('FechaFactura').value    := 0000-00-00;
      zconsulta.Params.ParamByName('Status').DataType  := ftInteger;
      zconsulta.Params.ParamByName('Status').value     := 5;
      zconsulta.Params.ParamByName('NumeroPedido').DataType  := ftstring;
      zconsulta.Params.ParamByName('NumeroPedido').value     := 50098760;
      zconsulta.Params.ParamByName('Ejercicio').value        := connection.configuracionCont.FieldByName('iEjercicio').AsInteger;
      zconsulta.ExecSQL;

      DBChart1.Title.Text.Clear ;

      Puntero1 := RxCuentas.RecNo;
      Puntero2 := RxDeposito.RecNo;

      Retiro();
      Depositos();
      RxCuentas.RecNo := Puntero1;
      RxDeposito.RecNo := Puntero2;

//      RxGrafica.EmptyTable ;
      RxGrafica.First;
      RxGrafica.Next;
      RxGrafica.Edit ;
      RxGrafica.FieldValues['sNombreCuenta']  :=  RxCuentas.FieldValues['sNombreCuenta'] ;
      RxGrafica.FieldValues['dImporteTotal']  :=  RxCuentas.FieldValues['dImporteTotal'] ;
      RxGrafica.Post ;
      DBChart1.Axes.Left.Maximum := DsDepposito.DataSet.FieldValues['dImporteTotal'] ;

      RxGrafica.First;
      RxGrafica.Edit ;
      RxGrafica.FieldValues['sNombreCuenta']  :=  RxDeposito.FieldValues['sNombreCuenta'] ;
      RxGrafica.FieldValues['dImporteTotal']  :=  RxDeposito.FieldValues['dImporteTotal'] ;
      RxGrafica.Post ;
      DBChart1.Axes.Left.Maximum := dsGrafica.DataSet.FieldValues['dImporteTotal'] ;


      messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
      DBCuentaRetiro.KeyValue := rxcuentas.FieldValues['sIdNumeroCuenta'] ;
      cuentadeposito.KeyValue := RxDeposito.FieldValues['sIdNumeroCuenta'] ;
      contra.Text := '';
      panel.Visible := false;
    end
    else
    begin
      if MessageDlg('Contraseña Incorrecta. Introduzca Su contraseña Correcta!' + #10 + #10 + 'deseas volver a intentar su acceso?' ,mtConfirmation, [mbYes,mbNo],0) = mrYes then
      begin
        contra.Text := '';
        contra.SetFocus;
        exit;
       end
        else
        panel.Visible := false
    end;
end;

procedure TfrmModuloTraspaso.chClick(Sender: TObject);
begin
contra.Text := '';
panel.Visible := false;
end;

procedure TfrmModuloTraspaso.cuentadepositoClick(Sender: TObject);
begin
DbDeposito.Visible := true;
DbDeposito.Enabled := false;

      RxGrafica.First;
      RxGrafica.Next;
      RxGrafica.Edit ;
      RxGrafica.FieldValues['sNombreCuenta']  :=  DsDepposito.DataSet.FieldValues['sNombreCuenta'] ;

      if RxDeposito.FieldValues['dImporteTotal'] > 0 then
        begin
          RxGrafica.FieldValues['dImporteTotal']  :=  DsDepposito.DataSet.FieldValues['dImporteTotal'] ;
          RxGrafica.Post ;
          DBChart1.Axes.Left.Maximum := DsDepposito.DataSet.FieldValues['dImporteTotal'] ;
        end
        else
        begin
          RxGrafica.FieldValues['dImporteTotal'] := '$0.00';
        end;
end;

procedure TfrmModuloTraspaso.DBCuentaRetiroClick(Sender: TObject);
begin
   DbRetiro.Visible := true;
  DbRetiro.Enabled := false;

      RxGrafica.First;
      RxGrafica.Edit ;
      RxGrafica.FieldValues['sNombreCuenta']  :=  dsGrafica.DataSet.FieldValues['sNombreCuenta'] ; ;

      if rxcuentas.FieldValues['dImporteTotal'] > 0 then
        begin
          RxGrafica.FieldValues['dImporteTotal']  :=  dsGrafica.DataSet.FieldValues['dImporteTotal'] ;
          RxGrafica.Post ;
          DBChart1.Axes.Left.Maximum := dsGrafica.DataSet.FieldValues['dImporteTotal'] ;
        end
      else
      begin
        RxGrafica.FieldValues['dImporteTotal'] := '$0.00';
      end;


end;

procedure TfrmModuloTraspaso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree ;
end;


procedure TfrmModuloTraspaso.Retiro();
Begin
  RestaxX := 0;
  AcumuladoO := 0;
  IngresosS := 0;
  GastosS := 0;

       Tfecha.Date := now;

       qrySumaTotalL                := TZReadOnlyQuery.Create(Self);
       qrySumaTotalL.Connection     := Connection.ZConnection;

       qryTotalCuentasS             := TZReadOnlyQuery.Create(Self);
       qryTotalCuentasS.Connection  := Connection.ZConnection;

       qryIngresosS                 := TZReadOnlyQuery.Create(Self);
       qryIngresosS.Connection      := Connection.ZConnection;

       qryGastosS                   := TZReadOnlyQuery.Create(Self);
       qryGastosS.Connection        := Connection.ZConnection;

       qrySumaTotal                := TZReadOnlyQuery.Create(Self);
       qrySumaTotal.Connection     := Connection.ZConnection;

       qryTotalCuentas            := TZReadOnlyQuery.Create(Self);
       qryTotalCuentas.Connection  := Connection.ZConnection;

       qryIngresos                 := TZReadOnlyQuery.Create(Self);
       qryIngresos.Connection      := Connection.ZConnection;

       qryGastos                   := TZReadOnlyQuery.Create(Self);
       qryGastos.Connection        := Connection.ZConnection;


       squerytotalL := 'select "*" as sIdNumeroCuenta, "--- Seleccionar una cuenta ---" as sNombreCuenta from con_cuentasbancarias limit 1 union  ' +
                       'select sidnumerocuenta, sNombreCuenta from con_cuentasbancarias';
       qrytotalcuentasS.Active := false ;
       qrytotalcuentasS.SQL.Clear ;
       qrytotalcuentasS.sql.Add(squerytotalL);
       //qrytotalcuentasS.ParamByName('Compania').AsString := connection.contrato.FieldByName('sContrato').AsString;
       qrytotalcuentasS.Open ;
       rxcuentas.EmptyTable;
         while not qrytotalcuentasS.Eof  do
          begin
                   sQueryII :=
                              'select concat("$"," ",format(sum(te.dImporteTotal+te.dIva),2)) as dImporteTotal from con_tesoreriaegresos te ' +
                              'Where te.sTipoMovimiento="DEPOSITO" ' +
                              'and (iIdStatus=4 or iIdStatus=5) And te.sIdNumeroCuenta =:Cuenta Group By te.sIdNumeroCuenta' ;

                   qryIngresosS.Active := False ;
                   qryIngresosS.Sql.Clear ;
                   qryIngresosS.SQL.Add(sQueryII) ;
                   qryIngresosS.Params.ParamByName('Cuenta').DataType := ftString ;
                   qryIngresosS.Params.ParamByName('Cuenta').Value    := qrytotalcuentasS.FieldValues['sIdNumeroCuenta'] ;
                   qryIngresosS.Open ;
                   if qryIngresosS.RecordCount > 0  Then
                       IngresosS := qryIngresosS.FieldValues['dImporteTotal']
                   else
                       IngresosS := 0 ;


                    sQueryGG :=
                               'select concat("$"," ",format(sum(te.dImporteTotal+te.dIva),2)) as dImporteTotal from con_tesoreriaegresos te ' +
                               'Where (te.sTipoMovimiento="GASTOS" Or te.sTipoMovimiento="CHEQUE") ' +
                               'And lComprobado ="Si" And te.sIdNumeroCuenta =:Cuenta Group By te.sIdNumeroCuenta ';
                   qryGastosS.Active := False ;
                   qryGastosS.Sql.Clear ;
                   qryGastosS.SQL.Add(sQueryGG) ;
                   qryGastosS.Params.ParamByName('Cuenta').DataType  := ftString ;
                   qryGastosS.Params.ParamByName('Cuenta').Value    := qrytotalcuentasS.FieldValues['sIdNumeroCuenta'] ;
                   qryGastosS.Open ;
                   if qryGastosS.RecordCount > 0 Then
                       GastosS := qryGastosS.FieldValues['dImporteTotal']
                   else
                       GastosS := 0 ;

                   if GastosS < 0 Then
                     RestaxX := IngresosS + GastosS
                   else
                     RestaxX := IngresosS - GastosS ;

                   AcumuladoO  := RestaxX + AcumuladoO  ;
                   rxcuentas.Active := True ;
                   rxcuentas.Append ;
                   rxcuentas.FieldValues['sNombreCuenta']  :=  qrytotalcuentasS.FieldValues['sNombreCuenta'] ;
                   rxcuentas.FieldValues['sIdNumeroCuenta']  :=  qrytotalcuentasS.FieldValues['sIdNumeroCuenta'] ;
                   rxcuentas.FieldValues['dImporteTotal']       :=  RestaxX ;
                   rxcuentas.Post ;
                   qrytotalcuentasS.Next ;
          end;
          rxcuentas.Refresh;


end;

procedure TfrmModuloTraspaso.RimporteKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
          Tfecha.SetFocus;
end;

procedure TfrmModuloTraspaso.TfechaKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
          tsNombre.SetFocus;
end;

procedure TfrmModuloTraspaso.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
          Memo1.SetFocus;
end;

procedure TfrmModuloTraspaso.Depositos();
begin
      Restax := 0;
      AcumuladoO := 0;

       squerytotal :='select "*" as sIdNumeroCuenta, "--- Seleccionar una cuenta ---" as sNombreCuenta from con_cuentasbancarias limit 1 union  ' +
                     'select sidnumerocuenta, sNombreCuenta from con_cuentasbancarias';
       qrytotalcuentas.Active := false ;
       qrytotalcuentas.SQL.Clear ;
       qrytotalcuentas.sql.Add(squerytotal);
       //qrytotalcuentas.ParamByName('Compania').AsString := connection.contrato.FieldByName('sContrato').AsString;
       qrytotalcuentas.Open ;
       qrytotalcuentas.First ;
       RxDeposito.EmptyTable;
         while not qrytotalcuentas.Eof  do
          begin
                   sQueryII := 'select concat("$"," ",format(sum(te.dImporteTotal+te.dIva),2)) as dImporteTotal from con_tesoreriaegresos te ' +
                              'Where te.sTipoMovimiento="DEPOSITO" ' +
                              'and (iIdStatus=4 or iIdStatus=5) And te.sIdNumeroCuenta =:Cuenta Group By te.sIdNumeroCuenta' ;

                   qryIngresos.Active := False ;
                   qryIngresos.Sql.Clear ;
                   qryIngresos.SQL.Add(sQueryII) ;
                   qryIngresos.Params.ParamByName('Cuenta').DataType := ftString ;
                   qryIngresos.Params.ParamByName('Cuenta').Value    := qrytotalcuentas.FieldValues['sIdNumeroCuenta'] ;
                   qryIngresos.Open ;
                   if qryIngresos.RecordCount > 0  Then
                       Ingresos := qryIngresos.FieldValues['dImporteTotal']
                   else
                       Ingresos := 0 ;


                    sQueryG := 'select concat("$"," ",format(sum(te.dImporteTotal+te.dIva),2)) as dImporteTotal from con_tesoreriaegresos te ' +
                               'Where (te.sTipoMovimiento="GASTOS" Or te.sTipoMovimiento="CHEQUE") ' +
                               'And lComprobado ="Si" And te.sIdNumeroCuenta =:Cuenta Group By te.sIdNumeroCuenta ';
                   qryGastos.Active := False ;
                   qryGastos.Sql.Clear ;
                   qryGastos.SQL.Add(sQueryG) ;
                   qryGastos.Params.ParamByName('Cuenta').DataType  := ftString ;
                   qryGastos.Params.ParamByName('Cuenta').Value    := qrytotalcuentas.FieldValues['sIdNumeroCuenta'] ;
                   qryGastos.Open ;
                   if qryGastos.RecordCount > 0 Then
                       Gastos := qryGastos.FieldValues['dImporteTotal']
                   else
                       Gastos := 0 ;

                   if Gastos < 0 Then
                     Restax := Ingresos + Gastos
                   else
                     Restax := Ingresos - Gastos ;

                   AcumuladoO  := Restax + AcumuladoO  ;

                   RxDeposito.Active := True ;
                   RxDeposito.Append ;
                   RxDeposito.FieldValues['sNombreCuenta']  :=  qrytotalcuentas.FieldValues['sNombreCuenta'] ;
                   RxDeposito.FieldValues['sIdNumeroCuenta']  :=  qrytotalcuentas.FieldValues['sIdNumeroCuenta'] ;
                   RxDeposito.FieldValues['dImporteTotal']       :=  Restax ;
                   RxDeposito.Post ;
                   qrytotalcuentas.Next ;
          end;
          RxDeposito.Refresh;

   End;


procedure TfrmModuloTraspaso.FormShow(Sender: TObject);
 begin
        Tfecha.Date := now;

        Retiro();
        DBCuentaRetiro.KeyValue := '*';
        Depositos();
        cuentadeposito.KeyValue := '*';

        RxGrafica.Active := True ;
        RxGrafica.Append ;
        RxGrafica.FieldValues['sNombreCuenta']  :=  0 ;
        RxGrafica.FieldValues['dImporteTotal']  :=  0 ;
        RxGrafica.Post ;

        RxGrafica.Append ;
        RxGrafica.FieldValues['sNombreCuenta']  :=  0 ;
        RxGrafica.FieldValues['dImporteTotal']  :=  0 ;
        RxGrafica.Post ;
 end;
end.
