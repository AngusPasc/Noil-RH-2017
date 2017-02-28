unit frmNotificaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, dxBar, cxContainer, cxDBEdit, cxCalc,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  cxMaskEdit, cxCalendar, cxTextEdit, cxLabel, global, frm_connection, Menus,
  StdCtrls, cxButtons, cxPCdxBarPopupMenu, cxPC, cxGroupBox, cxRadioGroup,
  cxSpinEdit, cxTimeEdit, dxBarBuiltInMenu, frm_barra, unittbotonespermisos,
  UDbGrid;

type
  Tfrm_Notificaciones = class(TForm)
    dxBarManager1: TdxBarManager;
    dxInsertar: TdxBarLargeButton;
    dxEditar: TdxBarLargeButton;
    dxGuardar: TdxBarLargeButton;
    dxCancelar: TdxBarLargeButton;
    dxEliminar: TdxBarLargeButton;
    dxRefrescar: TdxBarLargeButton;
    dxSalir: TdxBarLargeButton;
    dxImprimir: TdxBarLargeButton;
    Grid_NotificacionesDBTableView1: TcxGridDBTableView;
    Grid_NotificacionesLevel1: TcxGridLevel;
    Grid_Notificaciones: TcxGrid;
    zq_Notificaciones: TZQuery;
    ds_Notificaciones: TDataSource;
    ColConcepto: TcxGridDBColumn;
    Grid_NotificacionesDBTableView1Column2: TcxGridDBColumn;
    ColFechaE: TcxGridDBColumn;
    Grid_NotificacionesDBTableView1Column4: TcxGridDBColumn;
    ColReceptor: TcxGridDBColumn;
    Grid_NotificacionesDBTableView1Column7: TcxGridDBColumn;
    zq_Usuarios: TZQuery;
    ds_Usuarios: TDataSource;
    ColFechaI: TcxGridDBColumn;
    ColFechaF: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel9: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtFechaE: TcxDBDateEdit;
    edtFechaA: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    edtDesc: TcxDBMemo;
    lkpReceptor: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    edtRepetir: TcxDBComboBox;
    cxLabel7: TcxLabel;
    cbStatus: TcxDBComboBox;
    edtTitulo: TcxDBTextEdit;
    cxTabSheet2: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    edtFechaAV: TcxDBDateEdit;
    cbConceptoV: TcxDBComboBox;
    lkpModuloV: TcxComboBox;
    edtDescV: TcxDBMemo;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cbStatusV: TcxDBComboBox;
    edtRepetirV: TcxDBComboBox;
    cxLabel12: TcxLabel;
    edtFechaIV: TcxDBDateEdit;
    cxTabSheet3: TcxTabSheet;
    ColTitulo: TcxGridDBColumn;
    rbEventos: TcxRadioButton;
    rbVigencias: TcxRadioButton;
    rbRegistros: TcxRadioButton;
    cxLabel8: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    edtFechaAC: TcxDBDateEdit;
    cbConceptoC: TcxDBComboBox;
    lkpModuloC: TcxComboBox;
    cxLabel20: TcxLabel;
    edtDescC: TcxDBMemo;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cbStatusC: TcxDBComboBox;
    edtRepetirC: TcxDBComboBox;
    edtTiempo: TcxDBTimeEdit;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel14: TcxLabel;
    edtTiempoV: TcxDBTimeEdit;
    cxLabel17: TcxLabel;
    cxLabel25: TcxLabel;
    edtTiempoC: TcxDBTimeEdit;
    cxLabel26: TcxLabel;
    frmBarra1: TfrmBarra;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    procedure edtTituloKeyPress(Sender: TObject; var Key: Char);
    procedure edtFechaAVKeyPress(Sender: TObject; var Key: Char);
    procedure edtFechaEKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescVKeyPress(Sender: TObject; var Key: Char);
    procedure lkpReceptorKeyPress(Sender: TObject; var Key: Char);
    procedure edtFechaAVEnter(Sender: TObject);
    procedure edtFechaEEnter(Sender: TObject);
    procedure edtDescVEnter(Sender: TObject);
    procedure lkpReceptorEnter(Sender: TObject);
    procedure edtRepetirVEnter(Sender: TObject);
    procedure edtFechaAVExit(Sender: TObject);
    procedure edtFechaEExit(Sender: TObject);
    procedure edtDescVExit(Sender: TObject);
    procedure lkpReceptorExit(Sender: TObject);
    procedure edtRepetirVExit(Sender: TObject);
    procedure cambio_estado;
    procedure dxInsertarClick(Sender: TObject);
    procedure dxEditarClick(Sender: TObject);
    procedure dxGuardarClick(Sender: TObject);
    procedure dxCancelarClick(Sender: TObject);
    procedure dxEliminarClick(Sender: TObject);
    procedure dxRefrescarClick(Sender: TObject);
    procedure dxSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbStatusVEnter(Sender: TObject);
    procedure cbStatusVExit(Sender: TObject);
    procedure edtRepetirVKeyPress(Sender: TObject; var Key: Char);
    procedure bloquear (b: Boolean);
    procedure lkpModuloVKeyPress(Sender: TObject; var Key: Char);
    procedure cbConceptoVKeyPress(Sender: TObject; var Key: Char);
    procedure lkpModuloVEnter(Sender: TObject);
    procedure cbConceptoVEnter(Sender: TObject);
    procedure lkpModuloVExit(Sender: TObject);
    procedure cbConceptoVExit(Sender: TObject);
    procedure cbStatusVKeyPress(Sender: TObject; var Key: Char);
    procedure edtFechaIVKeyPress(Sender: TObject; var Key: Char);
    procedure edtFechaIVEnter(Sender: TObject);
    procedure edtFechaIVExit(Sender: TObject);
    procedure edtTituloEnter(Sender: TObject);
    procedure edtTituloExit(Sender: TObject);
    procedure edtDescKeyPress(Sender: TObject; var Key: Char);
    procedure edtRepetirKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescEnter(Sender: TObject);
    procedure edtRepetirEnter(Sender: TObject);
    procedure cbStatusEnter(Sender: TObject);
    procedure edtDescExit(Sender: TObject);
    procedure edtRepetirExit(Sender: TObject);
    procedure cbStatusExit(Sender: TObject);
    procedure rbEventosClick(Sender: TObject);
    procedure rbVigenciasClick(Sender: TObject);
    procedure rbRegistrosClick(Sender: TObject);
    procedure lkpModuloVPropertiesChange(Sender: TObject);
    procedure lkpModuloCKeyPress(Sender: TObject; var Key: Char);
    procedure lkpModuloCEnter(Sender: TObject);
    procedure lkpModuloCExit(Sender: TObject);
    procedure cbConceptoCKeyPress(Sender: TObject; var Key: Char);
    procedure cbConceptoCEnter(Sender: TObject);
    procedure cbConceptoCExit(Sender: TObject);
    procedure edtFechaACKeyPress(Sender: TObject; var Key: Char);
    procedure edtFechaACEnter(Sender: TObject);
    procedure edtFechaACExit(Sender: TObject);
    procedure edtDescCKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescCEnter(Sender: TObject);
    procedure edtDescCExit(Sender: TObject);
    procedure edtRepetirCKeyPress(Sender: TObject; var Key: Char);
    procedure edtRepetirCEnter(Sender: TObject);
    procedure edtRepetirCExit(Sender: TObject);
    procedure cbStatusCEnter(Sender: TObject);
    procedure cbStatusCExit(Sender: TObject);
    procedure lkpModuloCPropertiesChange(Sender: TObject);
    procedure cbStatusKeyPress(Sender: TObject; var Key: Char);
    procedure cbStatusCKeyPress(Sender: TObject; var Key: Char);
    procedure edtTiempoVEnter(Sender: TObject);
    procedure edtTiempoVExit(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Notificaciones: Tfrm_Notificaciones;
  botonpermiso     : tbotonespermisos;
  utgrid           : ticdbgrid;

implementation


{$R *.dfm}

procedure Tfrm_Notificaciones.cbConceptoCEnter(Sender: TObject);
begin
  cbConceptoC.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.cbConceptoCExit(Sender: TObject);
begin
  cbConceptoC.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.cbConceptoCKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        edtFechaAC.SetFocus
end;

procedure Tfrm_Notificaciones.cbConceptoVEnter(Sender: TObject);
begin
  cbConceptoV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.cbConceptoVExit(Sender: TObject);
begin
  cbConceptoV.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.cbConceptoVKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
        edtFechaAV.SetFocus
end;

procedure Tfrm_Notificaciones.cbStatusCEnter(Sender: TObject);
begin
  cbStatusC.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.cbStatusCExit(Sender: TObject);
begin
  cbStatusC.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.cbStatusCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        edtTiempoC.SetFocus
end;

procedure Tfrm_Notificaciones.cbStatusEnter(Sender: TObject);
begin
  cbStatus.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.cbStatusExit(Sender: TObject);
begin
  cbStatus.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.cbStatusKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        edtTiempo.SetFocus
end;

procedure Tfrm_Notificaciones.cbStatusVEnter(Sender: TObject);
begin
  cbStatusV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.cbStatusVExit(Sender: TObject);
begin
  cbStatusV.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.cbStatusVKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        edtFechaIV.SetFocus
end;

procedure Tfrm_Notificaciones.Copy1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure Tfrm_Notificaciones.Cut1Click(Sender: TObject);
begin
  UtGrid.AddRowsFromClip;
end;

procedure Tfrm_Notificaciones.rbEventosClick(Sender: TObject);
begin
  if rbEventos.Checked then
  begin
    zq_Notificaciones.Active := False;
    zq_Notificaciones.Params.ParamByName('Usuario').AsString := global_usuario;
    zq_Notificaciones.Params.ParamByName('TipoAlert').AsString := 'Eventos';
    zq_Notificaciones.Open;

    rbEventos.Checked:=True;
    cxTabSheet1.Enabled:=True;
    cxTabSheet2.Enabled:=False;
    cxTabSheet3.Enabled:=False;
    cxTabSheet1.Show;

    ColFechaE.Visible:=True;
    ColReceptor.Visible:=True;
    ColTitulo.Visible:=True;
    ColFechaI.Visible:=False;
    ColFechaF.Visible:=False;
    ColConcepto.Visible:=False;
  end;
end;

procedure Tfrm_Notificaciones.rbRegistrosClick(Sender: TObject);
begin
  if rbRegistros.Checked then
  begin
    zq_Notificaciones.Active := False;
    zq_Notificaciones.Params.ParamByName('Usuario').AsString := global_usuario;
    zq_Notificaciones.Params.ParamByName('TipoAlert').AsString := 'Criterios';
    zq_Notificaciones.Open;

    rbRegistros.Checked:=True;
    cxTabSheet1.Enabled:=False;
    cxTabSheet2.Enabled:=False;
    cxTabSheet3.Enabled:=True;
    cxTabSheet3.Show;
  end;
end;

procedure Tfrm_Notificaciones.rbVigenciasClick(Sender: TObject);
begin
  if rbVigencias.Checked then
  begin
    zq_Notificaciones.Active := False;
    zq_Notificaciones.Params.ParamByName('Usuario').AsString := global_usuario;
    zq_Notificaciones.Params.ParamByName('TipoAlert').AsString := 'Vigencias';
    zq_Notificaciones.Open;

    rbVigencias.Checked:=True;
    cxTabSheet1.Enabled:=False;
    cxTabSheet2.Enabled:=True;
    cxTabSheet3.Enabled:=False;
    cxTabSheet2.Show;

    ColFechaI.Visible:=True;
    ColFechaF.Visible:=True;
    ColConcepto.Visible:=True;
    ColFechaE.Visible:=False;
    ColTitulo.Visible:=False;
    ColReceptor.Visible:=False;
  end;
end;

procedure Tfrm_Notificaciones.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure Tfrm_Notificaciones.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure Tfrm_Notificaciones.edtFechaIVEnter(Sender: TObject);
begin
  edtFechaIV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtFechaIVExit(Sender: TObject);
begin
  edtFechaIV.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtFechaIVKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
        edtTiempoV.SetFocus
end;

procedure Tfrm_Notificaciones.dxCancelarClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zq_Notificaciones.Cancel;

  //cambio_estado;

  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;

  bloquear(False);
  rbVigencias.Enabled:=True;
  rbEventos.Enabled:=True;
  rbRegistros.Enabled:=True;
end;

procedure Tfrm_Notificaciones.dxEditarClick(Sender: TObject);
begin
  if zq_Notificaciones.RecordCount > 0 Then
  begin
      frmBarra1.btnEditClick(Sender);
      Insertar1.Enabled := False ;
      Editar1.Enabled := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled := True ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled := False ;
      Salir1.Enabled := False ;

      zq_Notificaciones.Edit ;
//      cambio_estado;
      if zq_Notificaciones.FieldByName('sIdUsuarioE').AsString<>global_usuario then
      begin
        bloquear(True);
      end;
      cbStatus.Enabled:=True;

    if rbEventos.Checked then
    begin
      rbVigencias.Enabled:=False;
      rbRegistros.Enabled:=False;
    end;

    if rbVigencias.Checked then
    begin
      rbEventos.Enabled:=False;
      rbRegistros.Enabled:=False;
    end;

    if rbRegistros.Checked then
    begin
      rbVigencias.Enabled:=False;
      rbEventos.Enabled:=False;
    end;

  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
  end;

end;

procedure Tfrm_Notificaciones.dxEliminarClick(Sender: TObject);
begin
  if zq_Notificaciones.RecordCount  > 0 then
    if MessageDlg('¿Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        if zq_Notificaciones.FieldByName('sStatus').AsString='Cerrado' then
          zq_Notificaciones.Delete
        else
          MessageDlg('No se puede eliminar el registro porque no esta cerrada la notificacion.', mtInformation, [mbOk], 0);
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end
end;

procedure Tfrm_Notificaciones.dxGuardarClick(Sender: TObject);
begin
  try
    frmBarra1.btnPostClick(Sender);
    if rbEventos.Checked then
    begin
      if Length(Trim(edtFechaA.Text)) = 0  then
      begin
          MessageDlg('El campo Fecha de Alerta debe ser llenado correctamente antes de proceder a grabar el registro.', mtInformation, [mbOK], 0);
          if edtFechaA.CanFocus then
            edtFechaA.SetFocus;
          Exit;
      end;
      if Length(Trim(edtFechaE.Text)) = 0  then
      begin
          MessageDlg('El campo Fecha de Evento debe ser llenado correctamente antes de proceder a grabar el registro.', mtInformation, [mbOK], 0);
          if edtFechaE.CanFocus then
            edtFechaE.SetFocus;
          Exit;
      end;
      if Length(Trim(edtDesc.Text)) = 0  then
      begin
          MessageDlg('El campo Descripción debe ser llenado correctamente antes de proceder a grabar el registro.', mtInformation, [mbOK], 0);
          if edtDesc.CanFocus then
            edtDesc.SetFocus;
          Exit;
      end;
      if Length(Trim(lkpReceptor.Text)) = 0  then
      begin
          MessageDlg('El campo Receptor debe ser llenado correctamente antes de proceder a grabar el registro.', mtInformation, [mbOK], 0);
          if lkpReceptor.CanFocus then
            lkpReceptor.SetFocus;
          Exit;
      end;
      if Length(Trim(edtRepetir.Text)) = 0  then
      begin
          MessageDlg('El campo Repetir debe ser llenado correctamente antes de proceder a grabar el registro.', mtInformation, [mbOK], 0);
          if edtRepetir.CanFocus then
            edtRepetir.SetFocus;
          Exit;
      end;
      if zq_Notificaciones.State=dsInsert then
      begin
        if (edtFechaA.Date<Date) or (edtFechaE.Date<Date) then
        begin
            MessageDlg('No se puede guardar el registro porque la Fecha de Alerta y de Evento no debe ser menor a la Fecha Actual.', mtInformation, [mbOK], 0);
            if edtFechaA.CanFocus then
              edtFechaA.SetFocus;
            Exit;
        end;
      end;
    end;
    if rbVigencias.Checked then
    begin
      if zq_Notificaciones.State=dsInsert then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('SELECT iIdNotificacion FROM nuc_notificaciones WHERE sConcepto=:Concepto AND sTipoAlert="Vigencias"');
        connection.QryBusca.ParamByName('Concepto').AsString:=cbConceptoV.Text;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount>0 then
        begin
          MessageDlg('No se puede guardar el registro porque ya existe este concepto.', mtInformation, [mbOK], 0);
          if cbConceptoV.CanFocus then
            cbConceptoV.SetFocus;
          Exit;
        end;
      end;
    end;
    if rbRegistros.Checked then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT iIdNotificacion FROM nuc_notificaciones WHERE sConcepto=:Concepto AND sTipoAlert="Criterios"');
      connection.QryBusca.ParamByName('Concepto').AsString:=cbConceptoC.Text;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount>0 then
      begin
        MessageDlg('No se puede guardar el registro porque ya existe este concepto.', mtInformation, [mbOK], 0);
        if cbConceptoC.CanFocus then
          cbConceptoC.SetFocus;
        Exit;
      end;
    end;
    if zq_Notificaciones.State=dsInsert then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(iIdNotificacion) AS id FROM nuc_notificaciones');
      connection.QryBusca.Open;

      if connection.QryBusca.FieldValues['id'] = null then
          zq_Notificaciones.FieldValues['iIdNotificacion'] := 1
      else
           zq_Notificaciones.FieldValues['iIdNotificacion'] := connection.QryBusca.FieldValues['id'] + 1;
    end;


    zq_Notificaciones.Post;
    cambio_estado;
    zq_Notificaciones.Refresh;
    bloquear(False);

    rbVigencias.Enabled:=True;
    rbEventos.Enabled:=True;
    rbRegistros.Enabled:=True;


    Insertar1.Enabled  := True ;
    Editar1.Enabled    := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled       := False ;
    Eliminar1.Enabled  := True ;
    Refresh1.Enabled   := True ;

    Salir1.Enabled     := True ;

  except
    MessageDlg('Ocurrio un error al guardar el registro.', mtInformation, [mbOk], 0);
  end;
end;

procedure Tfrm_Notificaciones.dxInsertarClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;

  zq_Notificaciones.Append;
  zq_Notificaciones.FieldByName('sStatus').AsString:='Abierto';
  zq_Notificaciones.FieldByName('sIdUsuarioE').AsString:=global_usuario;

  if rbEventos.Checked then
  begin
    zq_Notificaciones.FieldByName('sTipoAlert').AsString:='Eventos';
    rbVigencias.Enabled:=False;
    rbRegistros.Enabled:=False;
  end;

  if rbVigencias.Checked then
  begin
    zq_Notificaciones.FieldByName('sTipoAlert').AsString:='Vigencias';
    rbEventos.Enabled:=False;
    rbRegistros.Enabled:=False;
  end;

  if rbRegistros.Checked then
  begin
    zq_Notificaciones.FieldByName('sTipoAlert').AsString:='Criterios';
    rbVigencias.Enabled:=False;
    rbEventos.Enabled:=False;
  end;

  cbStatus.Enabled:=False;
  //lkpModuloV.SetFocus;
  edtFechaA.Date:=Date;
  edtFechaE.Date:=Date;
//  cambio_estado;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;

end;

procedure Tfrm_Notificaciones.dxRefrescarClick(Sender: TObject);
begin
  zq_Notificaciones.Refresh;
end;

procedure Tfrm_Notificaciones.dxSalirClick(Sender: TObject);
begin
  Close
end;

procedure Tfrm_Notificaciones.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure Tfrm_Notificaciones.edtDescCEnter(Sender: TObject);
begin
  edtDescC.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtDescCExit(Sender: TObject);
begin
  edtDescC.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtDescCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        edtRepetirC.SetFocus;
end;

procedure Tfrm_Notificaciones.edtDescEnter(Sender: TObject);
begin
  edtDesc.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtDescExit(Sender: TObject);
begin
  edtDesc.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtDescKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        lkpReceptor.SetFocus
end;

procedure Tfrm_Notificaciones.edtDescVEnter(Sender: TObject);
begin
  edtDescV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtDescVExit(Sender: TObject);
begin
  edtDescV.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtDescVKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        edtRepetirV.SetFocus;
end;

procedure Tfrm_Notificaciones.edtFechaACEnter(Sender: TObject);
begin
  edtFechaAC.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtFechaACExit(Sender: TObject);
begin
  edtFechaAC.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtFechaACKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
        edtDescC.SetFocus
end;

procedure Tfrm_Notificaciones.edtFechaAVEnter(Sender: TObject);
begin
  edtFechaAV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtFechaAVExit(Sender: TObject);
begin
  edtFechaAV.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtFechaAVKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        edtDescV.SetFocus
end;

procedure Tfrm_Notificaciones.edtFechaEEnter(Sender: TObject);
begin
  edtFechaE.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtFechaEExit(Sender: TObject);
begin
  edtFechaE.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtFechaEKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        edtDesc.SetFocus
end;

procedure Tfrm_Notificaciones.edtRepetirCEnter(Sender: TObject);
begin
  edtRepetirV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtRepetirCExit(Sender: TObject);
begin
  edtRepetirC.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtRepetirCKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
        cbStatusC.SetFocus
end;

procedure Tfrm_Notificaciones.edtRepetirEnter(Sender: TObject);
begin
  edtRepetir.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtRepetirExit(Sender: TObject);
begin
  edtRepetir.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtRepetirKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
        cbStatus.SetFocus
end;

procedure Tfrm_Notificaciones.edtRepetirVEnter(Sender: TObject);
begin
  edtRepetirV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtRepetirVExit(Sender: TObject);
begin
  edtRepetirV.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtRepetirVKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
        cbStatusV.SetFocus
end;

procedure Tfrm_Notificaciones.edtTiempoVEnter(Sender: TObject);
begin
  edtTiempoV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtTiempoVExit(Sender: TObject);
begin
  edtTiempoV.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtTituloEnter(Sender: TObject);
begin
  edtTitulo.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.edtTituloExit(Sender: TObject);
begin
  edtTitulo.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.edtTituloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        edtFechaA.SetFocus
end;

procedure Tfrm_Notificaciones.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure Tfrm_Notificaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure Tfrm_Notificaciones.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

  zq_Notificaciones.Active := False;
  zq_Notificaciones.Params.ParamByName('Usuario').AsString := global_usuario;
  zq_Notificaciones.Params.ParamByName('TipoAlert').AsString := 'Eventos';
  zq_Notificaciones.Open;

  rbEventos.OnClick(Sender);

  zq_Usuarios.Active := False;
  zq_Usuarios.Open;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure Tfrm_Notificaciones.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure Tfrm_Notificaciones.lkpModuloCEnter(Sender: TObject);
begin
  lkpModuloC.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.lkpModuloCExit(Sender: TObject);
begin
  lkpModuloC.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.lkpModuloCKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        cbConceptoC.SetFocus
end;

procedure Tfrm_Notificaciones.lkpModuloCPropertiesChange(Sender: TObject);
begin
  cbConceptoC.Properties.Items.Clear;
  if lkpModuloC.Text='Control Administrativo' then
    cbConceptoC.Properties.Items.Add('FACTURAS SIN ARCHIVOS');
  if lkpModuloC.Text='Ventas' then
  begin
    cbConceptoC.Properties.Items.Add('COTIZACION PENDIENTE');
  end;
end;

procedure Tfrm_Notificaciones.lkpModuloVEnter(Sender: TObject);
begin
  lkpModuloV.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.lkpModuloVExit(Sender: TObject);
begin
  lkpModuloV.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.lkpModuloVKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        cbConceptoV.SetFocus
end;

procedure Tfrm_Notificaciones.lkpModuloVPropertiesChange(Sender: TObject);
begin
  cbConceptoV.Properties.Items.Clear;
  if lkpModuloV.Text='Control Administrativo' then
  begin
    cbConceptoV.Properties.Items.Add('FACTURAS VENCIDAS');
  end;
  if lkpModuloV.Text='Recursos Humanos' then
  begin
    cbConceptoV.Properties.Items.Add('PROXIMAS LIBRETAS A VENCER');
    cbConceptoV.Properties.Items.Add('PROXIMOS CERTIFICADOS A VENCER');
  end;
  if lkpModuloV.Text='Almacén' then
  begin
    cbConceptoV.Properties.Items.Add('REQUISICIONES POR AUTORIZAR');
    cbConceptoV.Properties.Items.Add('ORD. DE COMPRA POR AUTORIZAR');
    cbConceptoV.Properties.Items.Add('ENTRADA DE INSUMOS EN ALMACEN');
  end;
  if lkpModuloV.Text='Control de obra' then
  begin
    cbConceptoV.Properties.Items.Add('REPORTE DIARIO NUEVO');
    cbConceptoV.Properties.Items.Add('GENERADOR NUEVO');
    cbConceptoV.Properties.Items.Add('ESTIMACIÓN NUEVA');
    cbConceptoV.Properties.Items.Add('REPROGRAMACIÓN NUEVA');
    cbConceptoV.Properties.Items.Add('PARTIDA FUERA DE FECHA');
    cbConceptoV.Properties.Items.Add('VENCIMIENTO DE CONTRATO');
  end;
  if lkpModuloV.Text='Ventas' then
  begin
    cbConceptoV.Properties.Items.Add('SEGUIMIENTO DE PROSPECTOS');
  end;
end;

procedure Tfrm_Notificaciones.lkpReceptorEnter(Sender: TObject);
begin
  lkpReceptor.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Notificaciones.lkpReceptorExit(Sender: TObject);
begin
  lkpReceptor.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Notificaciones.lkpReceptorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
        edtRepetir.SetFocus
end;

procedure Tfrm_Notificaciones.cambio_estado;
begin
  if zq_Notificaciones.State in [dsInsert,dsEdit] then
  begin
    dxInsertar.Enabled      :=False;
    dxEditar.Enabled        :=False;
    dxGuardar.Enabled       :=True;
    dxCancelar.Enabled      :=True;
    dxEliminar.Enabled      :=False;
    dxImprimir.Enabled      :=False;
    dxRefrescar.Enabled     :=False;
    dxSalir.Enabled         :=False;
    Grid_Notificaciones.Enabled:=False;
  end else
  if zq_Notificaciones.State in [dsBrowse] then
  begin
    dxInsertar.Enabled      :=True;
    dxEditar.Enabled        :=True;
    dxGuardar.Enabled       :=False;
    dxCancelar.Enabled      :=False;
    dxEliminar.Enabled      :=True;
    dxImprimir.Enabled      :=True;
    dxRefrescar.Enabled     :=True;
    dxSalir.Enabled         :=True;
    Grid_Notificaciones.Enabled:=True;
  end;
end;

procedure Tfrm_Notificaciones.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure Tfrm_Notificaciones.bloquear(b: Boolean);
begin
  if b then
  begin
    cbConceptoV.Enabled:=False;
    edtFechaA.Enabled:=False;
    edtFechaE.Enabled:=False;
    edtDesc.Enabled:=False;
    lkpReceptor.Enabled:=False;
    edtRepetir.Enabled:=False;
  end
  else
  begin
    cbConceptoV.Enabled:=True;
    edtFechaA.Enabled:=True;
    edtFechaE.Enabled:=True;
    edtDesc.Enabled:=True;
    lkpReceptor.Enabled:=True;
    edtRepetir.Enabled:=True;
  end;
end;

end.
