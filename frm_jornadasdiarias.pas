unit frm_jornadasdiarias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, DBCtrls, ComCtrls, Grids, DBGrids, frm_barra, frm_connection, global, DB,
  Menus, Utilerias, StrUtils, MAth, ExtCtrls, frxClass, frxDBSet, unitactivapop,
  RXDBCtrl,  RxLookup, Newpanel, masUtilerias, UnitTBotonesPermisos,udbgrid, unitExcepciones,
  ZAbstractRODataset, ZDataset, rxToolEdit, rxCurrEdit, WordXP, OleServer,ComObj,
  ClipBrd, ShellApi, UnitValidaTexto, UnitValidacion, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmJornadasDiarias = class(TForm)
    frmBarra1: TfrmBarra;
    ds_JornadasDiarias: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    ds_tiposdemovimiento: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    lblPersonal: TLabel;
    tdFrente: TCurrencyEdit;
    GroupBox2: TGroupBox;
    lblTiempos1: TLabel;
    lblTiempos2: TLabel;
    lblAlimentacion: TLabel;
    tsHoraInicio: TMaskEdit;
    tsHoraFinal: TMaskEdit;
    tsTiempoComida: TMaskEdit;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label13: TLabel;
    tsArea: TEdit;
    tmDescripcion: TMemo;
    tsTipoMovimiento: TDBLookupComboBox;
    Label2: TLabel;
    GroupBox6: TGroupBox;
    tsTipo: TComboBox;
    lblPernocta: TLabel;
    Label4: TLabel;
    lblPlataforma: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    tsHoraSalida: TMaskEdit;
    tsHoraLlegada: TMaskEdit;
    tsIdEmbarcacion: TRxDBLookupCombo;
    tsIdPlataforma: TRxDBLookupCombo;
    Label3: TLabel;
    Label7: TLabel;
    chkSinTransporte: TCheckBox;
    TiposdeMovimiento: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    JornadasDiarias: TZReadOnlyQuery;
    ds_Plataformas: TDataSource;
    Plataformas: TZReadOnlyQuery;
    ds_Pernoctan: TDataSource;
    pernoctan: TZReadOnlyQuery;
    Embarcaciones: TZReadOnlyQuery;
    ds_embarcaciones: TDataSource;
    tsIdPernocta: TDBLookupComboBox;
    LabelAfectaciones: TLabel;
    N5: TMenuItem;
    RevisarOrtografia1: TMenuItem;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_JornadasDiarias: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    pnl1: TPanel;
    ts1: TLabel;
    ts2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    tdIdFecha: TDateTimePicker;
    btnCalculaJornadasDiarias: TButton;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Grid_v(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsAreaKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tdFrenteKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsAreaEnter(Sender: TObject);
    procedure tsAreaExit(Sender: TObject);
    procedure tsHoraInicioEnter(Sender: TObject);
    procedure tsHoraInicioExit(Sender: TObject);
    procedure tsHoraFinalEnter(Sender: TObject);
    procedure tsHoraFinalExit(Sender: TObject);
    procedure tdFrenteEnter(Sender: TObject);
    procedure tdFrenteExit(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tsTipoMovimientoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoMovimientoEnter(Sender: TObject);
    procedure tsTipoMovimientoExit(Sender: TObject);
    procedure JornadasDiariasAfterScroll(DataSet: TDataSet);
    procedure Grid_JornadasDiariasGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure tsTipoEnter(Sender: TObject);
    procedure tsTipoExit(Sender: TObject);
    procedure tsTipoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTiempoComidaEnter(Sender: TObject);
    procedure tsTiempoComidaExit(Sender: TObject);
    procedure tsTiempoComidaKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoChange(Sender: TObject);
    procedure procCalculaGenerales ;
    procedure tsIdPernoctaEnter(Sender: TObject);
    procedure tsIdPernoctaExit(Sender: TObject);
    procedure tsIdPlataformaExit(Sender: TObject);
    procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraSalidaEnter(Sender: TObject);
    procedure tsHoraSalidaExit(Sender: TObject);
    procedure tsHoraSalidaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdEmbarcacionEnter(Sender: TObject);
    procedure tsIdEmbarcacionExit(Sender: TObject);
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPlataformaEnter(Sender: TObject);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraLlegadaEnter(Sender: TObject);
    procedure tsHoraLlegadaExit(Sender: TObject);
    procedure tsHoraLlegadaKeyPress(Sender: TObject; var Key: Char);
    procedure chkSinTransporteClick(Sender: TObject);
    procedure tmDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalculaJornadasDiariasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LabelAfectacionesClick(Sender: TObject);
    procedure RevisarOrtografia1Click(Sender: TObject);
    procedure Grid_JornadasDiariasMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Grid_JornadasDiariasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_JornadasDiariasTitleClick(Column: TColumn);
    procedure tdFrenteChange(Sender: TObject);
    function MostrarFormChild(sForm: string): boolean;
    procedure grid_JornadasDiariasEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJornadasDiarias: TfrmJornadasDiarias;
  Opcion           : String ;
  iJornada         : Integer ;
  sMuerto          : String ;
  iMinutosJornada  : Real ;
  iMinutosHombre   : Real ;
  iMinutosMuerto   : Real ;
  nHorasMax        : Real ;
  PorcMuerto       : Real ;
  iMuerto          : Real ;
  dMuerto          : Real ;
  sHoras, sMinutos : String ;
  sJornada          : String ;
  BotonPermiso: TBotonesPermisos;
 // UtGrid:TicDbGrid;
implementation

uses frm_detalletiemposmuertos;

{$R *.dfm}


procedure TfrmJornadasDiarias.FormShow(Sender: TObject);
begin
  try
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', PopupPrincipal);
    //UtGrid:=TicdbGrid.create(grid_jornadasdiarias);
    If global_grupo = 'INTEL-CODE' Then
        btnCalculaJornadasDiarias.Visible := True
    Else
        btnCalculaJornadasDiarias.Visible := False ;

    If global_orden = '' then
       param_global_contrato := global_contrato;

    OpcButton := '' ;
    frmBarra1.btnCancel.Click ;
    JornadasDiarias.Active := False ;

    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('contrato').Value := param_global_contrato ;
    OrdenesdeTrabajo.Params.ParamByName('status').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('status').Value := connection.configuracion.FieldValues [ 'cStatusProceso' ] ;
    OrdenesdeTrabajo.Open ;

    If OrdenesdeTrabajo.RecordCount > 1 Then
    Begin
        tsIdPernocta.ReadOnly := False ;
        tsIdEmbarcacion.ReadOnly := False ;
        tsIdPlataforma.ReadOnly := False ;
        tsHoraSalida.ReadOnly := False ;
        tsHoraLlegada.ReadOnly := False ;
    End
    Else
    Begin
        tsIdPernocta.ReadOnly := True ;
        tsIdEmbarcacion.ReadOnly := True ;
        tsIdPlataforma.ReadOnly := True ;
        tsHoraSalida.ReadOnly := True ;
        tsHoraLlegada.ReadOnly := True ;
    End ;
    TiposdeMovimiento.Active := False ;
    TiposdeMovimiento.Params.ParamByName('Contrato').DataType := ftString ;
    TiposdeMovimiento.Params.ParamByName('Contrato').Value := param_global_Contrato ;
    TiposdeMovimiento.Open ;

    Plataformas.Active := False ;
    Plataformas.Open ;

    Pernoctan.Active := False ;
    Pernoctan.Open ;

    Embarcaciones.Active := False ;
    Embarcaciones.Open ;

    If global_orden <> '' then
    Begin
        tsNumeroOrden.KeyValue := global_orden ;
        tdIdFecha.Date         := global_fecha ;

        If OrdenesdeTrabajo.FieldValues['iJornada'] = 0 Then
             iJornada := ifnJornadaDia (param_global_contrato, tdIdFecha.Date, frmJornadasDiarias)
        Else
             iJornada := OrdenesdeTrabajo.FieldValues['iJornada'] ;

        If iJornada < 10 Then
            sJornada := '0' + Trim(IntToStr(iJornada)) + ':00'
        Else
            sJornada := Trim(IntToStr(iJornada)) + ':00' ;

        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value    := param_global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType    := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value       := global_turno_reporte ;
        ReporteDiario.Params.ParamByName('Fecha').DataType    := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value       := tdIdFecha.Date  ;
        ReporteDiario.Params.ParamByName('Orden').DataType    := ftString ;
        ReporteDiario.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
        ReporteDiario.Open ;
        If ReporteDiario.RecordCount > 0 then
            If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
                procCalculaGenerales ;

        JornadasDiarias.Active := False ;
        JornadasDiarias.Params.ParamByName('contrato').DataType := ftString ;
        JornadasDiarias.Params.ParamByName('contrato').Value := param_global_contrato ;
        JornadasDiarias.Params.ParamByName('Orden').DataType := ftString ;
        JornadasDiarias.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
        JornadasDiarias.Params.ParamByName('fecha').DataType := ftDate ;
        JornadasDiarias.Params.ParamByName('fecha').Value    := tdIdFecha.Date ;
        JornadasDiarias.Params.ParamByName('turno').DataType := ftString ;
        JornadasDiarias.Params.ParamByName('turno').Value    := global_turno_reporte ;
        JornadasDiarias.Open ;

        tdIdFecha.Enabled := False ;
        tsNumeroOrden.Enabled := False ;
        Grid_JornadasDiarias.SetFocus
    End
    Else
    Begin
        tdIdFecha.Enabled := True ;
        tsNumeroOrden.Enabled := True ;
        global_turno_reporte := global_turno ;
        If OrdenesdeTrabajo.RecordCount > 0 Then
            tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        tdIdFecha.SetFocus
    End;
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al mostrar ventana', 0);
    end;
  end;
end;

procedure TfrmJornadasDiarias.tdIdFechaExit(Sender: TObject);
begin
  try
    If tsNumeroOrden.Text <> '' Then
    Begin
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := Param_global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value    := global_turno_reporte ;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value    := tdIdFecha.Date  ;
        ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
        ReporteDiario.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
        ReporteDiario.Open ;

        If ReporteDiario.RecordCount > 0 then
        Begin
            If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                 MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
        end
    End ;

    tdIdFecha.Color := global_color_salidaERP ;
    If tsNumeroOrden.Text <> '' then
    Begin
        JornadasDiarias.Active := False ;
        JornadasDiarias.Params.ParamByName('contrato').DataType := ftString ;
        JornadasDiarias.Params.ParamByName('contrato').Value := Param_global_contrato ;
        JornadasDiarias.Params.ParamByName('Orden').DataType := ftString ;
        JornadasDiarias.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
        JornadasDiarias.Params.ParamByName('fecha').DataType := ftDate ;
        JornadasDiarias.Params.ParamByName('fecha').Value    := tdIdFecha.Date ;
        JornadasDiarias.Params.ParamByName('turno').DataType := ftString ;
        JornadasDiarias.Params.ParamByName('turno').Value    := global_turno_reporte ;
        JornadasDiarias.Open ;

        If OrdenesdeTrabajo.FieldValues['iJornada'] = 0 Then
              iJornada := ifnJornadaDia ( Param_global_contrato, tdIdFecha.Date, frmJornadasDiarias )
        Else
            iJornada := OrdenesdeTrabajo.FieldValues['iJornada'] ;

        If iJornada < 10 Then
            sJornada := '0' + Trim(IntToStr(iJornada)) + ':00'
        Else
            sJornada := Trim(IntToStr(iJornada)) + ':00' ;
    End
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al seleccionar fecha', 0);
    end;
  end;
End ;



procedure TfrmJornadasDiarias.frmBarra1btnAddClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
    lValido := False ;
    chkSintransporte.Checked := True;
    If Trim(tsNumeroOrden.Text) <> '' Then
    Begin
        lValido := True ;
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := Param_global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value    := global_turno_reporte ;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value    := tdIdFecha.Date  ;
        ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
        ReporteDiario.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
        ReporteDiario.Open ;

        If ReporteDiario.RecordCount > 0 then
        Begin
            If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
            Begin
                MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                lValido := False ;
                frmBarra1.btnCancel.Click
            End
        end
    End ;
    If lValido Then
    Begin
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       tsArea.ReadOnly := False ;
       tsHoraInicio.ReadOnly := False ;
       tsHoraFinal.ReadOnly := False ;
       tsTiempoComida.ReadOnly := False ;
       tdFrente.ReadOnly := False ;
       tmDescripcion.ReadOnly := False ;
       tsIdPernocta.KeyValue  := ordenesdetrabajo.FieldValues['sIdPernocta'];
       tsArea.Text := '' ;
       tsHoraInicio.Text := '00:00' ;
       tsHoraFinal.Text := '00:00' ;
       tsTiempoComida.Text := '00:00' ;
       tsHoraSalida.Text := '00:00' ;
       tsHoraLlegada.Text := '00:00' ;
       tdFrente.Text := '0' ;
       tmDescripcion.Text := '0' ;
       tmDescripcion.Text := '' ;
       tsTipo.Enabled := True ;
       activapop(frmJornadasDiarias,popupprincipal);
       If tsTipo.Text = 'Disponibilidad del Sitio' Then
       Begin
           tsArea.Color := global_color_pantalla ;
           tsTipoMovimiento.Color := global_color_pantalla ;
           tsTipoMovimiento.KeyValue := '' ;
           tsTipoMovimiento.ReadOnly := True ;
           tsArea.ReadOnly := True ;
       End
       Else
           If tsTipo.Text = 'Tiempo Inactivo' Then
           Begin
               tsTipoMovimiento.ReadOnly := False ;
               tsArea.ReadOnly := False ;
               tsArea.Color := global_color_text ;
               tsTipoMovimiento.Color := global_color_text ;
           End
           Else
           Begin
               tsTipoMovimiento.KeyValue := '' ;
               tsTipoMovimiento.ReadOnly := True ;
               tsTipoMovimiento.Color := global_color_pantalla ;
               tsArea.ReadOnly := True ;
               tsArea.Color := global_color_pantalla ;
           End ;
       frmBarra1.btnAddClick(Sender);
       tsTipo.SetFocus
    End;
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;   
end;



procedure TfrmJornadasDiarias.frmBarra1btnEditClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
    lValido := False ;
    If Trim(tsNumeroOrden.Text) <> '' Then
    Begin
         lValido := True ;
         ReporteDiario.Active := False ;
         ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
         ReporteDiario.Params.ParamByName('contrato').Value := Param_global_contrato ;
         ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
         ReporteDiario.Params.ParamByName('turno').Value    := global_turno_reporte ;
         ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
         ReporteDiario.Params.ParamByName('Fecha').Value    := tdIdFecha.Date  ;
         ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
         ReporteDiario.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
         ReporteDiario.Open ;
         If ReporteDiario.RecordCount > 0 then
         Begin
             If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
             Begin
                  MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                  lValido := False ;
                  frmBarra1.btnCancel.Click
             End
         end
    end;

    If lValido Then
        If (JornadasDiarias.FieldValues['sIdTipoMovimiento'] <> 'TMDS') Then
        Begin
           frmBarra1.btnEditClick(Sender);
           Insertar1.Enabled := False ;
           Editar1.Enabled := False ;
           Registrar1.Enabled := True ;
           Can1.Enabled := True ;
           Eliminar1.Enabled := False ;
           Refresh1.Enabled := False ;
           Salir1.Enabled := False ;
           tsArea.ReadOnly := False ;
           tsHoraInicio.ReadOnly := False ;
           tsHoraFinal.ReadOnly := False ;
           tsTiempoComida.ReadOnly := False ;
           tsTipo.Enabled := True ;
           tdFrente.ReadOnly := False ;
           tmDescripcion.ReadOnly := False ;
           activapop(frmJornadasDiarias,popupprincipal);
           tsTipo.SetFocus;
        End
        Else
           MessageDlg('No es posible modificar directamente un Tiempo Inactivo por indisponibilidad del sitio. Modifique los horarios y descripciones de las disponibilidades del sitio existentes para que automaticamente se modifique este Tiempo Inactivo.', mtWarning, [mbOk], 0);
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
end ;


procedure TfrmJornadasDiarias.frmBarra1btnPostClick(Sender: TObject);
Var
   StringList : TStrings ;
   nombres, cadenas: TStringList;
   lIncorrecto : boolean;
begin
    {Validacion de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Tipo de Afectacion');
    nombres.Add('Personal Pernocta');
    cadenas.Add(tsTipo.Text);
    cadenas.Add(tsIdPernocta.Text);

    {Validacion de barco hora > 24:00}
    lIncorrecto := False;
    if (StrToInt(copy(tsHoraInicio.Text, 1, 2)) = 24) and (StrToInt(copy(tsHoraInicio.Text, 4, 5)) > 0) then
      lIncorrecto := True
    else
      if (StrToInt(copy(tsHoraInicio.Text, 1, 2)) = 25) then
        lIncorrecto := True;

    if lIncorrecto then
    begin
      messageDLG('La Hora de Inicio es Mayor a 24:00 Hrs', mtInformation, [mbOk], 0);
      exit;
    end;

    if (StrToInt(copy(tsHoraFinal.Text, 1, 2)) = 24) and (StrToInt(copy(tsHoraFinal.Text, 4, 5)) > 0) then
      lIncorrecto := True
    else
      if (StrToInt(copy(tsHoraFinal.Text, 1, 2)) = 25) then
        lIncorrecto := True;

    if lIncorrecto then
    begin
      messageDLG('La Hora de Final es Mayor a 24:00 Hrs', mtInformation, [mbOk], 0);
      exit;
    end;


    If (tsTipo.Text = 'Disponibilidad del Sitio') Then
    begin
        if not chkSinTransporte.Checked then
        begin
            nombres.Add('Embarcacion');
            cadenas.Add(tsIdEmbarcacion.Text);
            nombres.Add('Plataforma Destino');
            nombres.Add('Area');
            cadenas.Add(tsIdPlataforma.Text);
            cadenas.Add(tsArea.Text);
        end;
   end
   else
   begin
       if tsTipoMovimiento.Text = '' then
       begin
           messageDLG('Seleccione una Clasificación para el Tiempo Inactivo!', mtInformation, [mbOk], 0);
           tsTipoMovimiento.SetFocus;
           exit;
       end;
   end;

   if not validaTexto(nombres, cadenas, '', '') then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;
   {Continua insercion de datos}

   If tsHorainicio.Text < tsHoraFinal.Text Then
        Begin
     If tmDescripcion.Text = '' Then
       If (tsTipo.Text = 'Disponibilidad del Sitio') Then
       Begin
           StringList := TStringList.Create;
           StringList.Clear ;
           StringList.Add('DISPONIBILIDAD DEL SITIO:') ;
           StringList.Add('INICIO DE ACTIVIDADES: ' + tsHoraInicio.Text + ', CIERRE DE ACTVIDADES: ' + tsHoraFinal.Text + ', CANT. PERSONAL: ' + tdFrente.Text ) ;
           tmDescripcion.Text := StringList.Text
       End
       Else
            If (tsTipo.Text = 'Personal Administrativo') Then
            Begin
                StringList := TStringList.Create;
                StringList.Clear ;
                StringList.Add('PERSONAL ADMINISTRATIVO:') ;
                StringList.Add('INICIO DE ACTIVIDADES: ' + tsHoraInicio.Text + ', CIERRE DE ACTIVIDADES: ' + tsHoraFinal.Text + ', CANT. PERSONAL: ' + tdFrente.Text ) ;
                tmDescripcion.Text := StringList.Text
            End
            Else
                tmDescripcion.Text := 'INTRODUZCA DESCRIPCIÓN DE TIEMPO INACTIVO' ;

  If OpcButton = 'New' then
  begin
     try
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'INSERT INTO jornadasdiarias ( sContrato , dIdFecha , sNumeroOrden, sIdTurno, sArea, sTipo, sIdPernocta, sHoraSalida, sIdEmbarcacion, sHoraLlegada, sIdPlataforma, ' +
                                       ' sHoraInicio, sHoraFinal, sTiempoComida, dPersonal, dFrente, mDescripcion, sIdTipoMovimiento ) ' +
                                       ' VALUES (:contrato, :fecha, :orden, :turno, :area, :tipo, :Pernocta, :Salida, :Embarcacion, :Llegada, :Plataforma, :inicio, :final, :Comida, :personal , :frente , :descripcion, :tipomovto)') ;
         connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
         connection.zCommand.Params.ParamByName('contrato').value := Param_Global_Contrato ;
         connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
         connection.zCommand.Params.ParamByName('fecha').value    := tdIdFecha.Date  ;
         connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
         connection.zCommand.Params.ParamByName('orden').value    := tsNumeroOrden.Text ;
         connection.zCommand.Params.ParamByName('turno').DataType := ftString ;
         connection.zCommand.Params.ParamByName('turno').value    := global_turno_reporte ;
         connection.zCommand.Params.ParamByName('area').DataType  := ftString ;
         connection.zCommand.Params.ParamByName('area').value     := tsArea.Text ;
         connection.zCommand.Params.ParamByName('tipo').DataType  := ftString ;
         connection.zCommand.Params.ParamByName('tipo').value     := tsTipo.Text ;
         connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString ;
         If tsIdPernocta.Text <> '' Then
          connection.zCommand.Params.ParamByName('Pernocta').value := tsIdPernocta.KeyValue ;

         connection.zCommand.Params.ParamByName('Salida').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Salida').value    := tsHoraSalida.Text ;
         connection.zCommand.Params.ParamByName('Embarcacion').DataType := ftString ;
         If tsIdEmbarcacion.Text <> '' Then
          connection.zCommand.Params.ParamByName('Embarcacion').value := tsIdEmbarcacion.KeyValue ;
         connection.zCommand.Params.ParamByName('Llegada').DataType   := ftString ;
         connection.zCommand.Params.ParamByName('Llegada').value      := tsHoraLlegada.Text ;
         connection.zCommand.Params.ParamByName('Plataforma').DataType:= ftString ;
         If tsIdPlataforma.Text = '' Then
             connection.zCommand.Params.ParamByName('Plataforma').value := null
         Else
             connection.zCommand.Params.ParamByName('Plataforma').value := tsIdPlataforma.KeyValue ;
         connection.zCommand.Params.ParamByName('inicio').DataType := ftString ;
         connection.zCommand.Params.ParamByName('inicio').value := tsHoraInicio.Text ;
         connection.zCommand.Params.ParamByName('final').DataType := ftString ;
         connection.zCommand.Params.ParamByName('final').value := tsHoraFinal.Text ;
         connection.zCommand.Params.ParamByName('Comida').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Comida').value := tsTiempoComida.Text ;
         connection.zCommand.Params.ParamByName('personal').DataType := ftInteger ;
         connection.zCommand.Params.ParamByName('personal').value := 0 ;
         connection.zCommand.Params.ParamByName('frente').DataType := ftInteger ;
         connection.zCommand.Params.ParamByName('frente').value := tdFrente.Value ;
         connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('descripcion').value := tmDescripcion.Text ;
         connection.zCommand.Params.ParamByName('tipoMovto').DataType := ftString ;
         If (tsTipo.Text = 'Disponibilidad del Sitio') OR (tsTipo.Text = 'Personal Administrativo') Then
             connection.zCommand.Params.ParamByName('tipoMovto').value := null
         Else
             connection.zCommand.Params.ParamByName('tipoMovto').value := tsTipoMovimiento.KeyValue  ;

         connection.zCommand.ExecSQL ;
         frmBarra1.btnPostClick(Sender);
     except
         on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al salvar nuevo registro', 0);
              tsArea.SetFocus
         end;
     end
  End
  Else
  Begin
     try
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'Update jornadasdiarias Set sArea = :Area, sTipo = :Tipo, sIdPernocta = :Pernocta, sHoraSalida = :Salida, sIdEmbarcacion = :Embarcacion, ' +
                                       'sHoraLlegada = :Llegada, sIdPlataforma = :Plataforma, sHoraInicio = :Inicio, sHoraFinal = :Final, sTiempoComida = :Comida, ' +
                                       'dPersonal = :Personal , dFrente = :Frente , mDescripcion = :Descripcion , sIdTipoMovimiento = :TipoMovto Where ' +
                                       '(sContrato = :Contrato And dIdFecha = :Oldfecha And sNumeroOrden = :Oldorden And sIdTurno = :OldTurno And sArea = :OldArea And ' +
                                       'sTipo = :OldTipo And '+
                                       '((not :OldPernocta is null and sIdPernocta = :OldPernocta) or (:OldPernocta is null and sIdPernocta is null)) And ' +
                                       '((not :OldEmbarcacion is null and sIdEmbarcacion = :OldEmbarcacion) or (:OldEmbarcacion is null and sIdEmbarcacion is null) ) '+
                                       'And sHoraInicio = :OldInicio And sHoraFinal = :OldFinal And ' +
                                       '((not :OldTipoMovimiento is null and sIdTipoMovimiento = :OldTipoMovimiento) or (:OldTipoMovimiento is null and sIdTipoMovimiento is null)) and pkLlave =:OldLlave)');
         connection.zCommand.Params.ParamByName('area').DataType := ftString ;
         connection.zCommand.Params.ParamByName('area').value := tsArea.Text ;
         connection.zCommand.Params.ParamByName('inicio').DataType := ftString ;
         connection.zCommand.Params.ParamByName('inicio').value := tsHoraInicio.Text ;
         connection.zCommand.Params.ParamByName('final').DataType := ftString ;
         connection.zCommand.Params.ParamByName('final').value := tsHoraFinal.Text ;
         connection.zCommand.Params.ParamByName('Comida').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Comida').value := tsTiempoComida.Text ;
         connection.zCommand.Params.ParamByName('Personal').DataType := ftInteger ;
         connection.zCommand.Params.ParamByName('Personal').value := 0 ;
         connection.zCommand.Params.ParamByName('frente').DataType := ftInteger ;
         connection.zCommand.Params.ParamByName('frente').value := tdFrente.Value ;
         connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('descripcion').value    := tmDescripcion.Text ;
         connection.zCommand.Params.ParamByName('tipo').DataType        := ftString ;
         connection.zCommand.Params.ParamByName('tipo').value           := tsTipo.Text ;
         connection.zCommand.Params.ParamByName('tipoMovto').DataType   := ftString ;
         If (tsTipo.Text = 'Disponibilidad del Sitio') OR (tsTipo.Text = 'Personal Administrativo') Then
             connection.zCommand.Params.ParamByName('tipoMovto').value :=null
         Else
             connection.zCommand.Params.ParamByName('tipoMovto').value := tsTipoMovimiento.KeyValue  ;
         connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString ;
         If tsIdPernocta.Text = '' Then
             connection.zCommand.Params.ParamByName('Pernocta').value :=null
         Else
             connection.zCommand.Params.ParamByName('Pernocta').value := tsIdPernocta.KeyValue ;
         connection.zCommand.Params.ParamByName('Salida').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Salida').value := tsHoraSalida.Text ;
         connection.zCommand.Params.ParamByName('Embarcacion').DataType := ftString ;
         If tsIdEmbarcacion.Text = '' Then
             connection.zCommand.Params.ParamByName('Embarcacion').value :=null
         Else
             connection.zCommand.Params.ParamByName('Embarcacion').value := tsIdEmbarcacion.KeyValue ;
         connection.zCommand.Params.ParamByName('Llegada').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Llegada').value := tsHoraLlegada.Text ;
         connection.zCommand.Params.ParamByName('Plataforma').DataType := ftString ;
         If tsIdPlataforma.Text = '' Then
             connection.zCommand.Params.ParamByName('Plataforma').value :=null
         Else
             connection.zCommand.Params.ParamByName('Plataforma').value       := tsIdPlataforma.KeyValue ;
         connection.zCommand.Params.ParamByName('contrato').DataType          := ftString ;
         connection.zCommand.Params.ParamByName('contrato').value             := Param_Global_Contrato ;
         connection.zCommand.Params.ParamByName('OldOrden').DataType          := ftString ;
         connection.zCommand.Params.ParamByName('OldOrden').value             := tsNumeroOrden.Text ;
         connection.zCommand.Params.ParamByName('OldFecha').DataType          := ftDate ;
         connection.zCommand.Params.ParamByName('OldFecha').value             := tdIdFecha.Date  ;
         connection.zCommand.Params.ParamByName('OldTurno').DataType          := ftString ;
         connection.zCommand.Params.ParamByName('OldTurno').value             := JornadasDiarias.FieldValues['sIdTurno'] ;
         connection.zCommand.Params.ParamByName('OldArea').DataType           := ftString ;
         connection.zCommand.Params.ParamByName('OldArea').value              := JornadasDiarias.FieldValues['sArea'] ;
         connection.zCommand.Params.ParamByName('OldTipo').DataType           := ftString ;
         connection.zCommand.Params.ParamByName('OldTipo').value              := JornadasDiarias.FieldValues['sTipo'] ;
         connection.zCommand.Params.ParamByName('OldPernocta').DataType       := ftString ;
         connection.zCommand.Params.ParamByName('OldPernocta').value          := JornadasDiarias.FieldValues['sIdPernocta'] ;
         connection.zCommand.Params.ParamByName('OldEmbarcacion').DataType    := ftString ;
         connection.zCommand.Params.ParamByName('OldEmbarcacion').value       := JornadasDiarias.FieldValues['sIdEmbarcacion'] ;
         connection.zCommand.Params.ParamByName('OldInicio').DataType         := ftString ;
         connection.zCommand.Params.ParamByName('OldInicio').value            := JornadasDiarias.FieldValues['sHoraInicio'] ;
         connection.zCommand.Params.ParamByName('OldFinal').DataType          := ftString ;
         connection.zCommand.Params.ParamByName('OldFinal').value             := JornadasDiarias.FieldValues['sHoraFinal'] ;
         connection.zCommand.Params.ParamByName('OldTipoMovimiento').DataType := ftString ;
         connection.zCommand.Params.ParamByName('OldTipoMovimiento').value    := JornadasDiarias.FieldValues['sIdTipoMovimiento'] ;
         connection.zCommand.Params.ParamByName('OldLlave').DataType          := ftInteger ;
         connection.zCommand.Params.ParamByName('OldLlave').value             := JornadasDiarias.FieldValues['pkLlave'];
         connection.zCommand.ExecSQL ;

         connection.zCommand.Active := False;
         connection.zCommand.SQL.Clear;
         connection.zCommand.SQL.Add('Update tiempomuertopersonal set sHoraInicio =:Hora where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sHoraInicio =:HoraOld ');
         connection.zCommand.ParamByName('Contrato').AsString  := Param_global_contrato;
         connection.zCommand.ParamByName('Fecha').AsDate       := tdIdFecha.Date;
         connection.zCommand.ParamByName('Orden').AsString     := tsNumeroOrden.Text;
         connection.zCommand.ParamByName('Turno').AsString     := global_turno_reporte;
         connection.zCommand.ParamByName('Hora').AsString      := tsHoraInicio.Text;
         connection.zCommand.ParamByName('HoraOld').AsString   := JornadasDiarias.FieldValues['sHoraInicio'] ;
         connection.zCommand.ExecSQL;

         desactivapop(popupprincipal);
         frmBarra1.btnCancelClick(Sender);
     except
         on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al salvar cambios en registro', 0);
              tsArea.SetFocus
         end;
     end
  End ;
   procCalculaGenerales ;
   JornadasDiarias.Active := False ;
   JornadasDiarias.Open ;
  end
  Else
      Begin
          MessageDlg('La hora de Inicio debe ser MENOR a la hora de cierre de Jornada', mtWarning, [mbOk], 0);
           tsHorainicio.SetFocus
      end ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmJornadasDiarias.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   tsArea.Text := '' ;
   tsHoraInicio.Text         := '00:00' ;
   tsHoraFinal.Text          := '00:00' ;
   tsTiempoComida.Text       := '00:00' ;
   tdFrente.Text             := '0' ;
   tmDescripcion.Text        := '' ;
   tsTipoMovimiento.KeyValue := '' ;
   tsIdEmbarcacion.KeyValue  := null ;
   tsIdPlataforma.KeyValue   := null ;
   tsHoraSalida.Text         := '00:00' ;
   tsHoraLlegada.Text        := '00:00' ;

   tsArea.ReadOnly := True ;
   tsHoraInicio.ReadOnly := True ;
   tsHoraFinal.ReadOnly := True ;
   tsIdPernocta.ReadOnly := True ;
   tsIdEmbarcacion.ReadOnly := True ;
   tsIdPlataforma.ReadOnly := True ;
   tsHoraSalida.ReadOnly := True ;
   tsHoraLlegada.ReadOnly := True ;
   tsTiempoComida.ReadOnly := True ;
   tdFrente.ReadOnly := True ;
   tmDescripcion.ReadOnly := True ;
   tsTipo.Enabled := False ;
   tsTipoMovimiento.ReadOnly := True ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
End;

procedure TfrmJornadasDiarias.frmBarra1btnDeleteClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
    lValido := False ;
    If Trim(tsNumeroOrden.Text) <> '' Then
    Begin
        lValido := True ;
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := Param_global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value    := global_turno_reporte ;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value    := tdIdFecha.Date  ;
        ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
        ReporteDiario.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
        ReporteDiario.Open ;

        If ReporteDiario.RecordCount > 0 then
        Begin
            If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
            Begin
                MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                lValido := False ;
                frmBarra1.btnCancel.Click
            End
        end
    End;

    //soad -> Compara si hay detalles de Personal/Equipo Afectado..
    If (JornadasDiarias.FieldValues['stipo'] = 'Disponibilidad del Sitio') Then
    begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Select sIdPersonalEquipo from tiempomuertopersonal where sContrato = :Contrato And dIdFecha = :Fecha And sIdTurno = :Turno And ' +
                                      'sNumeroOrden = :Orden ') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value    := JornadasDiarias.FieldValues['sContrato'] ;
        connection.zCommand.Params.ParamByName('Fecha').DataType    := ftDate ;
        connection.zCommand.Params.ParamByName('Fecha').Value       := JornadasDiarias.FieldValues['dIdFecha'] ;
        connection.zCommand.Params.ParamByName('Orden').DataType    := ftString ;
        connection.zCommand.Params.ParamByName('Orden').Value       := JornadasDiarias.FieldValues['sNumeroOrden']  ;
        connection.zCommand.Params.ParamByName('Turno').DataType    := ftString ;
        connection.zCommand.Params.ParamByName('Turno').Value       := global_turno_reporte ;
        connection.zCommand.Open ;
    end
    else
    begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Select sIdPersonalEquipo from tiempomuertopersonal where sContrato = :Contrato And dIdFecha = :Fecha And sIdTurno = :Turno And ' +
                                      'sNumeroOrden = :Orden and sHoraInicio =:Hora ') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value    := JornadasDiarias.FieldValues['sContrato'] ;
        connection.zCommand.Params.ParamByName('Fecha').DataType    := ftDate ;
        connection.zCommand.Params.ParamByName('Fecha').Value       := JornadasDiarias.FieldValues['dIdFecha'] ;
        connection.zCommand.Params.ParamByName('Orden').DataType    := ftString ;
        connection.zCommand.Params.ParamByName('Orden').Value       := JornadasDiarias.FieldValues['sNumeroOrden']  ;
        connection.zCommand.Params.ParamByName('Turno').DataType    := ftString ;
        connection.zCommand.Params.ParamByName('Turno').Value       := global_turno_reporte ;
        connection.zCommand.Params.ParamByName('Hora').DataType     := ftString ;
        connection.zCommand.Params.ParamByName('Hora').Value        := JornadasDiarias.FieldValues['sHoraInicio'];
        connection.zCommand.Open ;
    end;

    if connection.zCommand.RecordCount > 0 then
    begin
        lValido  := False;
        messageDLg('No se pude eliminar '+JornadasDiarias.FieldValues['sTipo']+', Primero Elimnine el Detalle de Personal/Equipo Afectado', mtWarning, [mbOk],0);
    end;

    //Continua el proceso para eliminar datos...
    If lValido Then
    Begin
      If JornadasDiarias.RecordCount  > 0 then
        //If (JornadasDiarias.FieldValues['sIdTipoMovimiento'] <> 'TMDS') Then
        //Begin
            If MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                try
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zCommand.SQL.Add ( 'Delete from tiempomuertopersonal where sContrato = :Contrato And dIdFecha = :Fecha And ' +
                                                   'sNumeroOrden = :Orden And sIdTurno =:Turno And sHoraInicio = :Hora ') ;
                     connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('Contrato').Value    := JornadasDiarias.FieldValues['sContrato'] ;
                     connection.zCommand.Params.ParamByName('Fecha').DataType    := ftDate ;
                     connection.zCommand.Params.ParamByName('Fecha').Value       := JornadasDiarias.FieldValues['dIdFecha'] ;
                     connection.zCommand.Params.ParamByName('Orden').DataType    := ftString ;
                     connection.zCommand.Params.ParamByName('Orden').Value       := JornadasDiarias.FieldValues['sNumeroOrden']  ;
                     connection.zCommand.Params.ParamByName('Turno').DataType    := ftString ;
                     connection.zCommand.Params.ParamByName('Turno').Value       := JornadasDiarias.FieldValues['sIdTurno'] ;
                     connection.zCommand.Params.ParamByName('Hora').DataType     := ftString ;
                     connection.zCommand.Params.ParamByName('Hora').Value        := JornadasDiarias.FieldValues['sHoraInicio'] ;
                     connection.zCommand.ExecSQL ;

                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zCommand.SQL.Add ( 'Delete from jornadasdiarias where sContrato = :Contrato And dIdFecha = :Fecha And sTipo = :Tipo And ' +
                                                   'sNumeroOrden = :Orden and sIdTurno =:Turno And sArea = :Area And sHoraInicio = :HoraI And sHoraFinal = :HoraF') ;
                     connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('Contrato').Value :=  JornadasDiarias.FieldValues['sContrato'] ;
                     connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
                     connection.zCommand.Params.ParamByName('Fecha').Value    :=  JornadasDiarias.FieldValues['dIdFecha'] ;
                     connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('Orden').Value    :=  JornadasDiarias.FieldValues['sNumeroOrden']  ;
                     connection.zCommand.Params.ParamByName('Turno').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('Turno').Value    := JornadasDiarias.FieldValues['sIdTurno'] ;
                     connection.zCommand.Params.ParamByName('Tipo').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('Tipo').Value :=  JornadasDiarias.FieldValues['sTipo'] ;
                     connection.zCommand.Params.ParamByName('Area').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('Area').Value :=  JornadasDiarias.FieldValues['sArea']  ;
                     connection.zCommand.Params.ParamByName('HoraI').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('HoraI').Value :=  JornadasDiarias.FieldValues['sHoraInicio']  ;
                     connection.zCommand.Params.ParamByName('HoraF').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('HoraF').Value :=  JornadasDiarias.FieldValues['sHoraFinal']  ;
                     connection.zCommand.ExecSQL ;

                     If (JornadasDiarias.FieldValues['stipo'] = 'Disponibilidad del Sitio') Then
                     begin
                      connection.zCommand.Active := False ;
                      connection.zCommand.SQL.Clear ;
                      connection.zCommand.SQL.Add ( 'Delete from jornadasdiarias where sContrato = :Contrato And dIdFecha = :Fecha And ' +
                                                    'sNumeroOrden = :Orden and sIdTurno =:Turno And sTipo = "Tiempo Inactivo" And sIdTipoMovimiento = "TMDS"') ;
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                      connection.zCommand.Params.ParamByName('Contrato').Value := Param_global_contrato ;
                      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
                      connection.zCommand.Params.ParamByName('Fecha').Value    := tdIdFecha.Date ;
                      connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                      connection.zCommand.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
                      connection.zCommand.Params.ParamByName('Turno').DataType := ftString ;
                      connection.zCommand.Params.ParamByName('Turno').Value    := global_turno_reporte ;
                      connection.zCommand.ExecSQL ;
                     end;

                     procCalculaGenerales ;

                     JornadasDiarias.Active := False ;
                     JornadasDiarias.Open ;

                     Grid_JornadasDiarias.SetFocus

                except
                on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al eliminar registro', 0);
                end;
                end
            end
        //End
        //Else
        //    MessageDlg('No es posible eliminar directamente un Tiempo Inactivo por indisponibilidad del sitio. Modifique los horarios y descripciones de las disponibilidades del sitio existentes para que automaticamente se elimine este Tiempo Inactivo.', mtWarning, [mbOk], 0);
    End
end;

procedure TfrmJornadasDiarias.frmBarra1btnRefreshClick(Sender: TObject);
begin
  JornadasDiarias.Active := False ;
  JornadasDiarias.Open ;
  TiposdeMovimiento.Active := False ;
  TiposdeMovimiento.Open ;
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Open ;
  Plataformas.Active := False ;
  Plataformas.Open ;
  Pernoctan.Active := False ;
  Pernoctan.Open ;

  ReporteDiario.Active := False ;
  ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
  ReporteDiario.Params.ParamByName('contrato').Value := Param_global_contrato ;
  ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
  ReporteDiario.Params.ParamByName('turno').Value    := global_turno_reporte ;
  ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
  ReporteDiario.Params.ParamByName('Fecha').Value    := tdIdFecha.Date  ;
  ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
  ReporteDiario.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
  ReporteDiario.Open ;
  If ReporteDiario.RecordCount > 0 then
      If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
           procCalculaGenerales ;
end;

procedure TfrmJornadasDiarias.grid_JornadasDiariasEnter(Sender: TObject);
begin
 if frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmJornadasDiarias.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;

procedure TfrmJornadasDiarias.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    tsNumeroOrden.SetFocus
end;

procedure TfrmJornadasDiarias.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmJornadasDiarias.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmJornadasDiarias.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmJornadasDiarias.RevisarOrtografia1Click(Sender: TObject);
var
  WindowName: string;
  WindowHandle: Cardinal;
  WordApp, Document, Selection: OleVariant;
  exito:boolean;
  actualizar:boolean;
  registro:tbookmark;
begin
     registro:=jornadasdiarias.GetBookmark;
     actualizar:=false;
     if (OpcButton <> 'New') and (OpcButton <> 'Edit') then
     begin
          if MessageDlgpos('Para Corregir el comentario se necesita editar el registro'+#13+#13+'¿Desea Actualizar el comentario?',
          mtConfirmation, [mbYes, mbNo], 0,self.Left+round(self.Width/4)+10,self.Top+round(self.Height/2)) = mrYes then
                        actualizar:=true
          else exit;
     end;


     if(length(trim(self.tmDescripcion.Text))>0) then
     begin
          exito:=true;
          try
             WordApp := CreateOleObject('Word.Application');
          EXCEPT
                exito:=false;
          end;
          if exito  then
          begin
               Document := WordApp.Documents.Add;
               Selection := WordApp.Selection;
               Selection.TypeText(tmDescripcion.Text);
               WindowName := WordApp.ActiveDocument.FullName + ' - ' + WordApp.Application.Caption;
               WindowHandle := 0;
               WindowHandle := FindWindow(nil, pChar(WindowName));
               SetWindowRgn(WindowHandle, CreateRectRgn(0,0,0,0), true);
               if wordapp.Options.IgnoreUppercase=true then
                  wordapp.Options.IgnoreUppercase := false;
               WordApp.ActiveDocument.CheckGrammar;

               Selection.WholeStory;
               Selection.Copy;
               if actualizar then
                frmBarra1btnEditClick(sender);

               tmDescripcion.Text := Clipboard.AsText;
               wordapp.quit(false);
               if actualizar then
                  frmBarra1btnPostClick(sender);

          end else
              MessageDlg('Para Verificar la ortografia necesita tener instalado Microsoft Word xp o versiones posteriores de office word.', mtWarning, [mbOk], 0);

     end;
     if actualizar then
     begin
          try
             jornadasdiarias.GotoBookmark(registro);
          except
                jornadasdiarias.FreeBookmark(registro);
          end;
          self.Grid_jornadasdiarias.SetFocus;
     end;

end;


procedure TfrmJornadasDiarias.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmJornadasDiarias.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmJornadasDiarias.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmJornadasDiarias.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmJornadasDiarias.Grid_v(Sender: TObject);
begin
  if frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmJornadasDiarias.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    grid_JornadasDiarias.SetFocus
end;

procedure TfrmJornadasDiarias.tsAreaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tmDescripcion.SetFocus
end;

procedure TfrmJornadasDiarias.tsHoraInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsHoraFinal.SetFocus
end;

procedure TfrmJornadasDiarias.tsHoraFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsTiempoComida.SetFocus
end;


procedure TfrmJornadasDiarias.tdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin

    If Key = #13 Then
       tdFrente.SetFocus
    Else
        If frmBarra1.btnCancel.Enabled Then
            If JornadasDiarias.RecordCount > 1 Then
                MessageDlg('Este campo no es posible modificar ya que existen movimientos registrados. Elimine todos los movimientos registrados y realize sus cambios.', mtWarning, [mbOk], 0);

end;

procedure TfrmJornadasDiarias.tdFrenteKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltrotCurrencyEdit(tdFrente,key) then
   key:=#0;
    If Key = #13 Then
        tsTipoMovimiento.SetFocus
end;

procedure TfrmJornadasDiarias.tdIdFechaEnter(Sender: TObject);
begin
  tdIdFecha.Color := global_color_entradaERP ;
  frmBarra1.btnCancel.Click
end;

procedure TfrmJornadasDiarias.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_entradaERP ;
  frmBarra1.btnCancel.Click
end;

procedure TfrmJornadasDiarias.tsNumeroOrdenExit(Sender: TObject);
begin
  If tsNumeroOrden.Text <> '' Then
  Begin
      ReporteDiario.Active := False ;
      ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
      ReporteDiario.Params.ParamByName('contrato').Value := Param_global_contrato ;
      ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
      ReporteDiario.Params.ParamByName('turno').Value    := global_turno_reporte ;
      ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
      ReporteDiario.Params.ParamByName('Fecha').Value    := tdIdFecha.Date  ;
      ReporteDiario.Params.ParamByName('Orden').DataType := ftString ;
      ReporteDiario.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
      ReporteDiario.Open ;
      If ReporteDiario.RecordCount > 0 then
      Begin
           If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
      end
  End ;

  tsNumeroOrden.Color := global_color_salidaERP ;
  If tsNumeroOrden.Text <> '' then
  Begin
      JornadasDiarias.Active := False ;
      JornadasDiarias.Params.ParamByName('contrato').DataType := ftString ;
      JornadasDiarias.Params.ParamByName('contrato').Value := param_global_contrato ;
      JornadasDiarias.Params.ParamByName('Orden').DataType := ftString ;
      JornadasDiarias.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
      JornadasDiarias.Params.ParamByName('fecha').DataType := ftDate ;
      JornadasDiarias.Params.ParamByName('fecha').Value    := tdIdFecha.Date ;
      JornadasDiarias.Params.ParamByName('turno').DataType := ftString ;
      JornadasDiarias.Params.ParamByName('turno').Value    := global_turno_reporte ;
      JornadasDiarias.Open ;
  End
end;

procedure TfrmJornadasDiarias.tsAreaEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tsArea.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tsAreaExit(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tsArea.Color := global_color_salidaERP
end;

procedure TfrmJornadasDiarias.tsHoraInicioEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tsHoraInicio.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tsHoraInicioExit(Sender: TObject);
begin
   tsHoraInicio.Color := global_color_salidaERP ;
   If frmBarra1.btnCancel.Enabled = True Then
        If tsHorallegada.Text > tsHorainicio.Text Then
        Begin
            MessageDlg('La hora de llegada al sitio debe ser MENOR a la hora de inicio de trabajo', mtWarning, [mbOk], 0);
            tsHoraLlegada.SetFocus
        End
end;

procedure TfrmJornadasDiarias.tsHoraFinalEnter(Sender: TObject);
begin
  tsHoraFinal.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tsHoraFinalExit(Sender: TObject);
begin
   tsHoraFinal.Color := global_color_salidaERP ;
      If frmBarra1.btnCancel.Enabled = True Then
        If tsHorainicio.Text > tsHoraFinal.Text Then
        Begin
            MessageDlg('La hora de Inicio debe ser MENOR a la hora de cierre de Jornada', mtWarning, [mbOk], 0);
            tsHorainicio.SetFocus
        End ;

end;

procedure TfrmJornadasDiarias.tdFrenteChange(Sender: TObject);
begin
tCurrenciEditChangef(tdFrente,'Cant. de Personal');
end;

procedure TfrmJornadasDiarias.tdFrenteEnter(Sender: TObject);
begin
   tdFrente.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tdFrenteExit(Sender: TObject);
begin
   tdFrente.Color := global_color_salidaERP ;
end;

procedure TfrmJornadasDiarias.tmDescripcionEnter(Sender: TObject);
Var
    StringList : TStrings ;
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tmDescripcion.Color := global_color_entradaERP ;

    If frmBarra1.btnCancel.Enabled = True Then
        If tmDescripcion.Text = '' Then
            If (tsTipo.Text = 'Disponibilidad del Sitio') Then
            Begin
                StringList := TStringList.Create;
                StringList.Clear ;
                StringList.Add('DISPONIBILIDAD DEL SITIO:') ;
                StringList.Add('INICIO DE ACTIVIDADES: ' + tsHoraInicio.Text + ', CIERRE DE ACTVIDADES: ' + tsHoraFinal.Text + ', CANT. PERSONAL: ' + tdFrente.Text ) ;
                tmDescripcion.Text := StringList.Text
            End
            Else
            If (tsTipo.Text = 'Personal Administrativo') Then
            Begin
                StringList := TStringList.Create;
                StringList.Clear ;
                StringList.Add('PERSONAL ADMINISTRATIVO:') ;
                StringList.Add('INICIO DE ACTIVIDADES: ' + tsHoraInicio.Text + ', CIERRE DE ACTIVIDADES: ' + tsHoraFinal.Text + ', CANT. PERSONAL: ' + tdFrente.Text ) ;
                tmDescripcion.Text := StringList.Text
            End ;
end;

procedure TfrmJornadasDiarias.tmDescripcionExit(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tmDescripcion.Color := global_color_salidaERP
end;

procedure TfrmJornadasDiarias.tsTipoMovimientoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsArea.SetFocus
end;

procedure TfrmJornadasDiarias.tsTipoMovimientoEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tsTipoMovimiento.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tsTipoMovimientoExit(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tsTipoMovimiento.Color := global_color_salidaERP
end;



procedure TfrmJornadasDiarias.JornadasDiariasAfterScroll(DataSet: TDataSet);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  If Trim(tsNumeroOrden.Text) <> '' Then
      If JornadasDiarias.RecordCount > 0 Then
      Begin
          If JornadasDiarias.FieldValues['sTipo'] = 'Disponibilidad del Sitio' Then
          Begin
               lblTiempos1.Caption      := 'Inicio de Actividades' ;
               lblTiempos2.Caption      := 'Cierre de Actividades' ;
               lblPersonal.Caption      := 'Personal que inicia actividades' ;
               lblAlimentacion.Caption  := 'Tiempo inhabil por Alimentación' ;
               tsTipo.ItemIndex         := 0 ;
               tsIdPernocta.Color       := global_color_text;
               tsIdPlataforma.Color     := global_color_text ;
               tsIdEmbarcacion.Color    := global_color_text ;
               tsHoraSalida.Color       := global_color_text ;
               tsHoraLlegada.Color      := global_color_text ;
               tmDescripcion.Color      := global_color_text ;
               tsHoraInicio.Color       := global_color_text ;
               tsHoraFinal.Color        := global_color_text ;
               tsTiempoComida.Color     := global_color_text ;
               tdFrente.Color           := global_color_text ;
               tsArea.Color             := global_color_pantalla ;
               tsTipoMovimiento.Color   := global_color_pantalla ;
               chkSintransporte.Enabled := True ;
          End
          Else
               If JornadasDiarias.FieldValues['sTipo'] = 'Tiempo Inactivo' Then
               Begin
                   lblTiempos1.Caption := 'Inicio de la Suspensión' ;
                   lblTiempos2.Caption := 'Cierre de la Suspensión' ;
                   lblPersonal.Caption := 'Personal Suspendido' ;
                   lblAlimentacion.Caption := 'Tiempo no considerado por Alimentación' ;
                   tsTipo.ItemIndex := 1 ;
                   tsIdPernocta.Color := global_color_text;
                   tsIdPlataforma.Color := global_color_pantalla ;
                   tsIdEmbarcacion.Color := global_color_pantalla ;
                   tsHoraSalida.Color := global_color_pantalla ;
                   tsHoraLlegada.Color := global_color_pantalla ;
                   If JornadasDiarias.FieldValues ['sIdTipoMovimiento'] = 'TMDS' Then
                   Begin
                      tmDescripcion.Color := global_color_pantalla ;
                      tsArea.Color := global_color_pantalla ;
                      tsTipoMovimiento.Color := global_color_pantalla ;
                      tsHoraInicio.Color := global_color_pantalla ;
                      tsHoraFinal.Color := global_color_pantalla ;
                      tsTiempoComida.Color := global_color_pantalla ;
                      tdFrente.Color := global_color_pantalla ;
                   End
                   Else
                   Begin
                      tmDescripcion.Color := global_color_text ;
                      tsArea.Color := global_color_text ;
                      tsTipoMovimiento.Color := global_color_text ;
                      tsHoraInicio.Color := global_color_text ;
                      tsHoraFinal.Color := global_color_text ;
                      tsTiempoComida.Color := global_color_text ;
                      tdFrente.Color := global_color_text ;
                   End ;

                   tsIdEmbarcacion.KeyValue := null ;
                   tsIdPlataforma.KeyValue := null ;
                   tsHoraSalida.Text := '00:00' ;
                   tsHoraLlegada.Text := '00:00' ;
                   chkSintransporte.Enabled := True ;
              End
              Else
              Begin
                   lblTiempos1.Caption := 'Inicio de la Actividades' ;
                   lblTiempos2.Caption := 'Cierre de Actividades' ;
                   lblPersonal.Caption := 'Personal Administrativo' ;
                   lblAlimentacion.Caption := 'Tiempo no considerado por Alimentación' ;
                   tsTipo.ItemIndex := 2 ;
                   tsArea.ReadOnly := True ;
                   tsTipoMovimiento.ReadOnly := True ;
                   tsIdPernocta.ReadOnly := False ;
                   tsIdEmbarcacion.ReadOnly := True ;
                   tsIdPlataforma.ReadOnly := True ;
                   tsHoraSalida.ReadOnly := True ;
                   tsHoraLlegada.ReadOnly := True ;
                   tsIdPernocta.Color := global_color_text ;
                   tsIdPlataforma.Color := global_color_pantalla ;
                   tsIdEmbarcacion.Color := global_color_pantalla ;
                   tsHoraSalida.Color := global_color_pantalla ;
                   tsHoraLlegada.Color := global_color_pantalla ;
                   tmDescripcion.Color := global_color_text ;
                   tsHoraInicio.Color := global_color_text ;
                   tsHoraFinal.Color := global_color_text ;
                   tsTiempoComida.Color := global_color_text ;
                   tdFrente.Color := global_color_text ;
                   tsTipoMovimiento.Color := global_color_pantalla ;
                   tsArea.Color := global_color_pantalla ;
                   tsIdEmbarcacion.KeyValue := null ;
                   tsIdPlataforma.KeyValue := null ;
                   tsHoraSalida.Text := '00:00' ;
                   tsHoraLlegada.Text := '00:00' ;
                   tsTipoMovimiento.KeyValue := '' ;
                   chkSintransporte.Enabled := False ;
              End ;
          tsArea.Text         := JornadasDiarias.FieldValues['sArea'] ;
          tsHoraInicio.Text   := JornadasDiarias.FieldValues['sHoraInicio'] ;
          tsHoraFinal.Text    := JornadasDiarias.FieldValues['sHoraFinal'] ;
          tsTiempoComida.Text := JornadasDiarias.FieldValues['sTiempoComida'] ;
          tdFrente.Text       := JornadasDiarias.FieldValues['dFrente'] ;
          tmDescripcion.Text := JornadasDiarias.FieldValues['mDescripcion'] ;
          tsTipoMovimiento.KeyValue := JornadasDiarias.FieldValues['sIdTipoMovimiento'] ;
          tsIdPernocta.KeyValue := JornadasDiarias.FieldValues['sIdPernocta'] ;
          tsIdEmbarcacion.KeyValue := JornadasDiarias.FieldValues['sIdEmbarcacion'] ;
          tsIdPlataforma.KeyValue := JornadasDiarias.FieldValues['sIdPlataforma'] ;
          tsHoraSalida.Text := JornadasDiarias.FieldValues['sHoraSalida'] ;
          tsHoraLlegada.Text := JornadasDiarias.FieldValues['sHoraLlegada'] ;
          if JornadasDiarias.FieldValues['sIdEmbarcacion'] = Null then
             chkSinTransporte.Checked := True
          else
             chkSinTransporte.Checked := False;
      End
      Else
      Begin
          tsArea.Text               := '' ;
          tsHoraInicio.Text         := '00:00' ;
          tsHoraFinal.Text          := '00:00' ;
          tsTiempoComida.Text       := '00:00' ;
          tdFrente.Text             := '0' ;
          tmDescripcion.Text        := '' ;
          tsTipoMovimiento.KeyValue := '' ;
          tsIdPernocta.KeyValue     := null ;
          tsIdEmbarcacion.KeyValue  := null ;
          tsIdPlataforma.KeyValue   := '' ;
          tsHoraSalida.Text         := '00:00' ;
          tsHoraLlegada.Text        := '00:00' ;
      End ;
end;

procedure TfrmJornadasDiarias.LabelAfectacionesClick(Sender: TObject);
var
   cadenamensaje : string;
begin
    //soad -> Se muestra formulario de detalle de tiempos muertos..
    if jornadasDiarias.RecordCount > 0 then
    begin
        If JornadasDiarias.FieldValues['sTipo'] <> 'Disponibilidad del Sitio' Then
        begin
            cadenamensaje := '';
            //Consultamos si esta afectacion tiene datos Sino tiene preguntamos al usuario si desea traerlos del Reporte Diario..
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('select * from tiempomuertopersonal where sContrato =:Contrato and dIdFecha =:Fecha '+
                                        'and sNumeroOrden =:Orden and sIdTurno =:Turno and sHoraInicio =:Hora ');
            connection.zCommand.ParamByName('Contrato').AsString := Param_global_contrato;
            connection.zCommand.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
            connection.zCommand.ParamByName('Orden').AsString    := tsNumeroOrden.KeyValue;
            connection.zCommand.ParamByName('Turno').AsString    := global_turno_reporte;
            connection.zCommand.ParamByName('Hora').AsString     := tsHoraInicio.Text;
            connection.zCommand.Open;

            if connection.zCommand.RecordCount = 0 then
            begin
               if MessageDlg('Desea cargar el Personal y Equipo del Reporte Diario?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                   //Consultamos el personal existente en la tabla bitacoradepersonal,,
                   connection.zCommand.Active := False;
                   connection.zCommand.SQL.Clear;
                   connection.zCommand.SQL.Add('select ba.sHoraInicio, bp.sIdPersonal, sum(bp.dCantidad) as dCantidad from bitacoradepersonal bp '+
                                               'inner join bitacoradeactividades ba on (bp.sContrato = ba.sContrato and bp.dIdFecha = ba.dIdFecha '+
                                               'and bp.iIdDiario = ba.iIdDiario and ba.sIdTurno =:Turno and ba.sNumeroOrden =:Orden) '+
                                               'where bp.sContrato =:Contrato and bp.dIdFecha =:Fecha group by bp.sIdPersonal ');
                   connection.zCommand.ParamByName('Contrato').AsString := param_global_contrato;
                   connection.zCommand.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
                   connection.zCommand.ParamByName('Orden').AsString    := tsNumeroOrden.KeyValue;
                   connection.zCommand.ParamByName('Turno').AsString    := global_turno_reporte;
                   connection.zCommand.Open;

                   if connection.zCommand.RecordCount = 0 then
                      cadenamensaje := cadenamensaje +#13+ 'No se encontro Personal cargado para el horario de Afectación '+ tsHoraInicio.Text + ' - ' +tsHoraFinal.Text;

                   while not connection.zCommand.Eof do
                   begin
                       //Insertamos el personal en la afectacion..
                       connection.QryBusca.Active := False;
                       connection.QryBusca.SQL.Clear;
                       connection.QryBusca.SQL.Add('insert into tiempomuertopersonal (sContrato, dIdFecha, sNumeroOrden, sIdTurno, sIdPersonalEquipo, dCantidad, sHoraInicio, sTipo) '+
                                                   'values(:Contrato, :fecha, :Orden, :Turno, :Id, :Cantidad, :Hora, :tipo)' );
                       connection.QryBusca.ParamByName('Contrato').AsString := param_global_contrato;
                       connection.QryBusca.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
                       connection.QryBusca.ParamByName('Orden').AsString    := tsNumeroOrden.KeyValue;
                       connection.QryBusca.ParamByName('Turno').AsString    := global_turno_reporte;
                       connection.QryBusca.ParamByName('Id').AsString       := connection.zCommand.FieldValues['sIdPersonal'];
                       connection.QryBusca.ParamByName('Cantidad').AsFloat  := 0;
                       connection.QryBusca.ParamByName('Hora').AsString     := tsHoraInicio.Text;
                       connection.QryBusca.ParamByName('tipo').AsString     := 'Personal';
                       connection.QryBusca.ExecSQL;
                       connection.zCommand.Next;
                   end;

                   //Consultamos el personal existente en la tabla bitacoradepersonal,,
                   connection.zCommand.Active := False;
                   connection.zCommand.SQL.Clear;
                   connection.zCommand.SQL.Add('select ba.sHoraInicio, bp.sIdEquipo, sum(bp.dCantidad) as dCantidad from bitacoradeequipos bp '+
                                               'inner join bitacoradeactividades ba on (bp.sContrato = ba.sContrato and bp.dIdFecha = ba.dIdFecha '+
                                               'and bp.iIdDiario = ba.iIdDiario and ba.sIdTurno =:Turno and ba.sNumeroOrden =:Orden) '+
                                               'where bp.sContrato =:Contrato and bp.dIdFecha =:Fecha group by bp.sIdEquipo ');
                   connection.zCommand.ParamByName('Contrato').AsString := param_global_contrato;
                   connection.zCommand.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
                   connection.zCommand.ParamByName('Orden').AsString    := tsNumeroOrden.KeyValue;
                   connection.zCommand.ParamByName('Turno').AsString    := global_turno_reporte;
                   connection.zCommand.Open;

                   if connection.zCommand.RecordCount = 0 then
                      cadenamensaje := cadenamensaje +#13+ 'No se encontro Equipo cargado para el horario de Afectación   '+ tsHoraInicio.Text + ' - ' +tsHoraFinal.Text;

                   while not connection.zCommand.Eof do
                   begin
                       //Insertamos el personal en la afectacion..
                       connection.QryBusca.Active := False;
                       connection.QryBusca.SQL.Clear;
                       connection.QryBusca.SQL.Add('insert into tiempomuertopersonal (sContrato, dIdFecha, sNumeroOrden, sIdTurno, sIdPersonalEquipo, dCantidad, sHoraInicio, sTipo) '+
                                                   'values(:Contrato, :fecha, :Orden, :Turno, :Id, :Cantidad, :Hora, :tipo)' );
                       connection.QryBusca.ParamByName('Contrato').AsString := param_global_contrato;
                       connection.QryBusca.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
                       connection.QryBusca.ParamByName('Orden').AsString    := tsNumeroOrden.KeyValue;
                       connection.QryBusca.ParamByName('Turno').AsString    := global_turno_reporte;
                       connection.QryBusca.ParamByName('Id').AsString       := connection.zCommand.FieldValues['sIdEquipo'];
                       connection.QryBusca.ParamByName('Cantidad').AsFloat  := 0;
                       connection.QryBusca.ParamByName('Hora').AsString     := tsHoraInicio.Text;
                       connection.QryBusca.ParamByName('tipo').AsString     := 'Equipo';
                       connection.QryBusca.ExecSQL;

                       connection.zCommand.Next;
                   end;
               end;
               if cadenamensaje <> '' then
                  messageDLG(cadenamensaje, mtInformation, [mbOk], 0);
            end;

            if not MostrarFormChild('frmdetallestiemposmuertos') then
            begin
                Application.CreateForm(Tfrmdetallestiemposmuertos, frmdetallestiemposmuertos);
               frmdetallestiemposmuertos.Show ;
            end;
        end
        else
           messageDlG('El Tipo de Afectacion Disponibilidad de Sitio, No Pertenece a un Tipo Inactivo', mtWarning, [mbOK],0)
    end
    else
        messageDlG('No existen Jornadas o Tiempos Inactivos Reportados.', mtWarning, [mbOK],0)

end;

procedure TfrmJornadasDiarias.Grid_JornadasDiariasGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipo').AsString = 'Tiempo Inactivo' then
        Background := clGradientInactiveCaption
    Else
        If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipo').AsString = 'Personal Administrativo' then
            Background :=clInactiveCaptionText
end;

procedure TfrmJornadasDiarias.Grid_JornadasDiariasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmJornadasDiarias.Grid_JornadasDiariasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   // UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmJornadasDiarias.Grid_JornadasDiariasTitleClick(Column: TColumn);
begin
 //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmJornadasDiarias.tsTipoEnter(Sender: TObject);
begin
    tsTipo.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tsTipoExit(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        If tsTipo.Text = 'Disponibilidad del Sitio' Then
        Begin
            lblTiempos1.Caption := 'Inicio de Actividades' ;
            lblTiempos2.Caption := 'Cierre de Actividades' ;
            lblPersonal.Caption := 'Personal que inicia actividades' ;
            lblAlimentacion.Caption := 'Tiempo inhabil por Alimentación' ;
            tsTiempoComida.Text := '00:00' ;
            tsArea.Color := global_color_pantalla ;
            tsIdPernocta.ReadOnly := False ;
            tsIdEmbarcacion.ReadOnly := False ;
            tsIdPlataforma.ReadOnly := False ;
            tsHoraSalida.ReadOnly := False ;
            tsHoraLlegada.ReadOnly := False ;
            tsIdPernocta.Color := global_color_text;
            tsIdPlataforma.Color := global_color_text ;
            tsIdEmbarcacion.Color := global_color_text ;
            tsHoraSalida.Color := global_color_text ;
            tsHoraLlegada.Color := global_color_text ;
            tsTipoMovimiento.Color := global_color_pantalla ;
            tsTipoMovimiento.KeyValue := '' ;
            tsTipoMovimiento.ReadOnly := True ;
            chkSintransporte.Enabled := True ;
        End
        Else
            If tsTipo.Text = 'Tiempo Inactivo' Then
            Begin
                lblTiempos1.Caption := 'Inicio de la Suspensión' ;
                lblTiempos2.Caption := 'Termino de la Suspensión' ;
                lblPersonal.Caption := 'Personal Supendido' ;
                lblAlimentacion.Caption := 'Tiempo no considerado por Alimentación' ;
                tsArea.ReadOnly := False ;
                tsTipoMovimiento.ReadOnly := False ;
                tsArea.Color := global_color_text ;
                tsIdPernocta.ReadOnly := False ;
                tsIdEmbarcacion.ReadOnly := True ;
                tsIdPlataforma.ReadOnly := True ;
                tsHoraSalida.ReadOnly := True ;
                tsHoraLlegada.ReadOnly := True ;
                tsIdPernocta.Color := global_color_text ;
                tsIdPlataforma.Color := global_color_pantalla ;
                tsIdEmbarcacion.Color := global_color_pantalla ;
                tsHoraSalida.Color := global_color_pantalla ;
                tsHoraLlegada.Color := global_color_pantalla ;
                tsTipoMovimiento.Color := global_color_text ;
                tsIdEmbarcacion.KeyValue := '' ;
                tsIdPlataforma.KeyValue := '' ;
                tsHoraSalida.Text := '00:00' ;
                tsHoraLlegada.Text := '00:00' ;
                tsTipoMovimiento.KeyValue := TiposdeMovimiento.FieldValues ['sIdTipoMovimiento'] ;
                chkSintransporte.Enabled := False ;
            End
            Else
            Begin
                lblTiempos1.Caption := 'Inicio de la Actividades' ;
                lblTiempos2.Caption := 'Cierre de Actividades' ;
                lblPersonal.Caption := 'Personal Administrativo' ;
                lblAlimentacion.Caption := 'Tiempo no considerado por Alimentación' ;
                tsArea.ReadOnly := True ;
                tsTipoMovimiento.ReadOnly := True ;
                tsIdPernocta.ReadOnly := False ;
                tsIdEmbarcacion.ReadOnly := True ;
                tsIdPlataforma.ReadOnly := True ;
                tsHoraSalida.ReadOnly := True ;
                tsHoraLlegada.ReadOnly := True ;
                tsIdPernocta.Color := global_color_text ;
                tsIdPlataforma.Color := global_color_pantalla ;
                tsIdEmbarcacion.Color := global_color_pantalla ;
                tsHoraSalida.Color := global_color_pantalla ;
                tsHoraLlegada.Color := global_color_pantalla ;
                tsTipoMovimiento.Color := global_color_pantalla ;
                tsArea.Color := global_color_pantalla ;
                tsIdEmbarcacion.KeyValue := '' ;
                tsIdPlataforma.KeyValue := '' ;
                tsHoraSalida.Text := '00:00' ;
                tsHoraLlegada.Text := '00:00' ;
                tsTipoMovimiento.KeyValue := '' ;
                chkSintransporte.Enabled := False ;
            End ;
    tsTipo.Color := global_color_salidaERP
end;

procedure TfrmJornadasDiarias.tsTipoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdPernocta.SetFocus
end;

procedure TfrmJornadasDiarias.tsTiempoComidaEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tsTiempoComida.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tsTiempoComidaExit(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        tsTiempoComida.Color := global_color_salidaERP
end;

procedure TfrmJornadasDiarias.tsTiempoComidaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFrente.SetFocus
end;

procedure TfrmJornadasDiarias.tsTipoChange(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        If tsTipo.Text = 'Disponibilidad del Sitio' Then
        Begin
            lblTiempos1.Caption := 'Inicio de Actividades' ;
            lblTiempos2.Caption := 'Cierre de Actividades' ;
            lblPersonal.Caption := 'Personal que inicia actividades' ;
            lblAlimentacion.Caption := 'Tiempo inhabil por alimentación' ;
            tsTiempoComida.Text := '00:00' ;
            tsIdPernocta.ReadOnly := False ;
            tsIdEmbarcacion.ReadOnly := False ;
            tsIdPlataforma.ReadOnly := False ;
            tsHoraSalida.ReadOnly := False ;
            tsHoraLlegada.ReadOnly := False ;
            tsIdPernocta.Color := global_color_text;
            tsIdPlataforma.Color := global_color_text ;
            tsIdEmbarcacion.Color := global_color_text ;
            tsHoraSalida.Color := global_color_text ;
            tsHoraLlegada.Color := global_color_text ;
            tmDescripcion.Color := global_color_text ;
            tsHoraInicio.Color := global_color_text ;
            tsHoraFinal.Color := global_color_text ;
            tsTiempoComida.Color := global_color_text ;
            tdFrente.Color := global_color_text ;
            tsArea.Color := global_color_pantalla ;
            tsTipoMovimiento.Color := global_color_pantalla ;
            tsTipoMovimiento.KeyValue := '' ;
            tsTipoMovimiento.ReadOnly := True ;
            chkSintransporte.Enabled := True ;
        End
        Else
            If tsTipo.Text = 'Tiempo Inactivo' Then
            Begin
                lblTiempos1.Caption := 'Inicio de la Suspensión' ;
                lblTiempos2.Caption := 'Termino de la Suspensión' ;
                lblPersonal.Caption := 'Personal Suspendido' ;
                lblAlimentacion.Caption := 'Tiempo no considerado por Alimentación' ;
                tsArea.ReadOnly := False ;
                tsTipoMovimiento.ReadOnly := False ;
                tsArea.Color := global_color_text ;
                tsIdPernocta.ReadOnly := False ;
                tsIdEmbarcacion.ReadOnly := True ;
                tsIdPlataforma.ReadOnly := True ;
                tsHoraSalida.ReadOnly := True ;
                tsHoraLlegada.ReadOnly := True ;
                tsIdPernocta.Color := global_color_text ;
                tsIdPlataforma.Color := global_color_pantalla ;
                tsIdEmbarcacion.Color := global_color_pantalla ;
                tsHoraSalida.Color := global_color_pantalla ;
                tsHoraLlegada.Color := global_color_pantalla ;
                tsHoraInicio.Color := global_color_text ;
                tsHoraFinal.Color := global_color_text ;
                tsTiempoComida.Color := global_color_text ;
                tdFrente.Color := global_color_text ;
                tsTipoMovimiento.Color := global_color_text ;
                tsArea.Color := global_color_text ;
                tsTipoMovimiento.Color := global_color_text ;
                tmDescripcion.Color := global_color_text ;
                tsHoraSalida.Text := '00:00' ;
                tsHoraLlegada.Text := '00:00' ;
                tsTipoMovimiento.KeyValue := TiposdeMovimiento.FieldValues ['sIdTipoMovimiento'] ;
                chkSintransporte.Enabled := False ;
            End
            Else
            Begin
                lblTiempos1.Caption := 'Inicio de la Actividades' ;
                lblTiempos2.Caption := 'Cierre de Actividades' ;
                lblPersonal.Caption := 'Personal Administrativo' ;
                lblAlimentacion.Caption := 'Tiempo no considerado por Alimentación' ;
                tsArea.ReadOnly := True ;
                tsTipoMovimiento.ReadOnly := True ;
                tsIdPernocta.ReadOnly := False ;
                tsIdEmbarcacion.ReadOnly := True ;
                tsIdPlataforma.ReadOnly := True ;
                tsHoraSalida.ReadOnly := True ;
                tsHoraLlegada.ReadOnly := True ;
                tsIdPernocta.Color := global_color_text ;
                tsIdPlataforma.Color := global_color_pantalla ;
                tsIdEmbarcacion.Color := global_color_pantalla ;
                tsHoraSalida.Color := global_color_pantalla ;
                tsHoraLlegada.Color := global_color_pantalla ;
                tmDescripcion.Color := global_color_text ;
                tsHoraInicio.Color := global_color_text ;
                tsHoraFinal.Color := global_color_text ;
                tsTiempoComida.Color := global_color_text ;
                tdFrente.Color := global_color_text ;
                tsTipoMovimiento.Color := global_color_pantalla ;
                tsArea.Color := global_color_pantalla ;
                tsHoraSalida.Text := '00:00' ;
                tsHoraLlegada.Text := '00:00' ;
                tsTipoMovimiento.KeyValue := '' ;
                chkSintransporte.Enabled := False ;
            End ;
end;

procedure TfrmJornadasDiarias.procCalculaGenerales ;
Var
    sTMDS : String ;
    iFrente       : Integer ;
    StringList: TStrings;

begin
    // Recalculo los tiempos correctos ....
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sContrato, dIdFecha, sNumeroOrden, sIdTurno, sArea, sTipo, sIdTipoMovimiento, ' +
                                     'sIdPernocta, sHoraSalida, sIdEmbarcacion, sHoraInicio, sHoraFinal, sTiempoComida, ' +
                                     'dFrente From jornadasdiarias Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden and sIdTurno =:Turno '+
                                     'And (sIdTipoMovimiento <> "TMDS" or sIdTipoMovimiento is null )') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value    := tdIdFecha.Date ;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
    Connection.qryBusca.Params.ParamByName('Turno').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Turno').Value    := global_turno_reporte ;
    Connection.qryBusca.Open ;

    While NOT Connection.qryBusca.Eof Do
    Begin
        try
            sMuerto := fnTiempoMuerto(Connection.qryBusca.FieldValues['sTipo'] , Connection.qryBusca.FieldValues['sHoraInicio'],
                       Connection.qryBusca.FieldValues['sHoraFinal'], Connection.qryBusca.FieldValues['sTiempoComida'], sJornada, Connection.qryBusca.FieldValues['dFrente'],
                       Connection.qryBusca.FieldValues['dFrente'] ) ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al calcular tiempos muertos al calcular generales', 0);
            end;
        end;
        try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Update jornadasdiarias SET dPersonal = :Personal, sJornada = :Muerto, sTiempoMuerto = :MuertoReal Where ' +
                                          '(sContrato = :Contrato And dIdFecha = :fecha And sNumeroOrden = :orden And sIdTurno = :Turno And ' +
                                          'sArea = :Area And sTipo = :Tipo And ' +
                                          '((not :TipoMovto is null and sIdTipoMovimiento = :TipoMovto) or (:TipoMovto is null and sIdTipoMovimiento is null)) ' +

                                          //And ((not null is null and sIdTipoMovimiento <> "TMDS") or (null is null and sIdTipoMovimiento is null));



                                          'And ((not :Pernocta is null and sIdPernocta = :Pernocta) or (:Pernocta is null and sIdPernocta is null) )' +
                                          'and sHoraSalida = :Salida And ' +
                                          '((not :Embarcacion is null and sidembarcacion=:Embarcacion) or (:Embarcacion is null and sidembarcacion is null)) '+
                                          'And sHoraInicio = :Inicio And sHoraFinal = :Final)') ;
            connection.zCommand.Params.ParamByName('Personal').DataType := ftInteger ;
            connection.zCommand.Params.ParamByName('Personal').value := 0 ;
            connection.zCommand.Params.ParamByName('muerto').DataType := ftString ;
            connection.zCommand.Params.ParamByName('muerto').value := sMuerto ;
            connection.zCommand.Params.ParamByName('muertoreal').DataType := ftString ;
            connection.zCommand.Params.ParamByName('muertoreal').value := '00:00' ;
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('contrato').value := Connection.qryBusca.FieldValues['sContrato'] ;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('fecha').value := Connection.qryBusca.FieldValues['dIdFecha'] ;
            connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
            connection.zCommand.Params.ParamByName('orden').value := Connection.qryBusca.FieldValues['sNumeroOrden'] ;
            connection.zCommand.Params.ParamByName('turno').DataType := ftString ;
            connection.zCommand.Params.ParamByName('turno').value := Connection.qryBusca.FieldValues['sIdTurno'] ;
            connection.zCommand.Params.ParamByName('area').DataType := ftString ;
            connection.zCommand.Params.ParamByName('area').value := Connection.qryBusca.FieldValues['sArea'] ;
            connection.zCommand.Params.ParamByName('tipo').DataType := ftString ;
            connection.zCommand.Params.ParamByName('tipo').value := Connection.qryBusca.FieldValues['sTipo'] ;
            connection.zCommand.Params.ParamByName('tipoMovto').DataType := ftString ;
            connection.zCommand.Params.ParamByName('tipoMovto').value := Connection.qryBusca.FieldValues['sIdTipoMovimiento'] ;
            connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Pernocta').value := Connection.qryBusca.FieldValues['sIdPernocta'] ;
            connection.zCommand.Params.ParamByName('Salida').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Salida').value := Connection.qryBusca.FieldValues['sHoraSalida'] ;
            connection.zCommand.Params.ParamByName('Embarcacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Embarcacion').value := Connection.qryBusca.FieldValues['sIdEmbarcacion'] ;
            connection.zCommand.Params.ParamByName('inicio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('inicio').value := Connection.qryBusca.FieldValues['sHoraInicio'] ;
            connection.zCommand.Params.ParamByName('Final').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Final').value := Connection.qryBusca.FieldValues['sHoraFinal'] ;
            connection.zCommand.ExecSQL ;
        except
        end ;
        Connection.qryBusca.Next ;
    End ;


    // Aqui determino el total de horas por disponibilidad del sitio, asi como las descripciones generales ....
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sHoraInicio, sHoraFinal, sTiempoComida, dFrente, mDescripcion From jornadasdiarias Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdTurno =:Turno And sTipo = :Tipo') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value    := tdIdFecha.Date ;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
    Connection.qryBusca.Params.ParamByName('Turno').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Turno').Value    := global_turno_reporte ;
    Connection.qryBusca.Params.ParamByName('Tipo').DataType  := ftString ;
    Connection.qryBusca.Params.ParamByName('Tipo').Value     := 'Disponibilidad del Sitio' ;
    Connection.qryBusca.Open ;
    sHoras := '00:00' ;
    sTMDS := '00:00' ;
    iFrente := 0 ;
    StringList := TStringList.Create;
    StringList.Clear ;
    While NOT Connection.qryBusca.Eof Do
    Begin
        iFrente := iFrente + Connection.qryBusca.FieldValues['dFrente'] ;
        StringList.Add(Connection.qryBusca.FieldValues['mDescripcion']) ;
        Connection.qryBusca.Next ;
    End ;
    Connection.qryBusca.First ;
    sMuerto := '00:00' ;
    While NOT Connection.qryBusca.Eof Do
    Begin
        try
            sMuerto := fnTiempoMuerto('Tiempo Inactivo' , Connection.qryBusca.FieldValues['sHoraInicio'],
                       Connection.qryBusca.FieldValues['sHoraFinal'], Connection.qryBusca.FieldValues['sTiempoComida'], sJornada, iFrente,
                       Connection.qryBusca.FieldValues['dFrente'] ) ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al calcular tiempos muertos al calcular generales', 0);
            end;
        end;
        sHoras := sfnSumaHoras (sHoras , sMuerto ) ;
        Connection.qryBusca.Next ;
    End ;

  If sHoras <> '00:00' Then
  begin
    If sHoras < sJornada Then
    begin
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select sjornada From jornadasdiarias Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdTurno =:Turno And sTipo = :Tipo') ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato ;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
      Connection.qryBusca.Params.ParamByName('Fecha').Value    := tdIdFecha.Date ;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
      Connection.qryBusca.Params.ParamByName('Turno').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Turno').Value    := global_turno_reporte ;
      Connection.qryBusca.Params.ParamByName('Tipo').DataType  := ftString ;
      Connection.qryBusca.Params.ParamByName('Tipo').Value     := 'Tiempo Inactivo' ;
      Connection.qryBusca.Open ;

      Connection.qryBusca.First ;
      sMuerto := '00:00' ;
      While NOT Connection.qryBusca.Eof Do
      Begin
        try
          sMuerto :=Connection.qryBusca.FieldByName('sjornada').AsString;
        except
          on e : exception do
          begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al calcular tiempos muertos al calcular generales', 0);
          end;
        end;
        sHoras := sfnSumaHoras (sHoras , sMuerto ) ;
        Connection.qryBusca.Next ;
      End ;

      sTMDS := sfnRestaHoras (sJornada, sHoras ) ;
    end
    else
    begin
      connection.zCommand.Active := False ;
      connection.zCommand.SQL.Clear ;
      connection.zCommand.SQL.Add ( 'Delete from jornadasdiarias where sContrato = :Contrato And dIdFecha = :Fecha And ' +
                                    'sNumeroOrden = :Orden And sIdTurno =:Turno And sTipo = "Tiempo Inactivo" And sIdTipoMovimiento = "TMDS"') ;
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Contrato').Value := param_global_contrato ;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
      connection.zCommand.Params.ParamByName('Fecha').Value    := tdIdFecha.Date ;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Turno').Value    := global_turno_reporte ;
      connection.zCommand.ExecSQL ;
    end;


    If sTMDS <> '00:00' Then
      If MessageDlg('Desea Introducir automaticamente el tiempo muerto de ' + sTMDS + ' hrs. a los movimientos del dia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
           try
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'INSERT INTO jornadasdiarias ( sContrato , dIdFecha , sNumeroOrden, sIdTurno, sArea, ' +
                                            ' sTipo, sHoraInicio, sHoraFinal, sTiempoComida, dPersonal, dFrente, mDescripcion, sIdTipoMovimiento,  sJornada ) ' +
                                            ' VALUES (:contrato, :fecha, :orden, :turno, :area, :tipo, :inicio, :final, :Comida, :personal , :frente , :descripcion, :tipomovto, :muerto)') ;
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato ;
              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
              connection.zCommand.Params.ParamByName('fecha').value    := tdIdFecha.Date  ;
              connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
              connection.zCommand.Params.ParamByName('orden').value    := tsNumeroOrden.Text ;
              connection.zCommand.Params.ParamByName('turno').DataType := ftString ;
              connection.zCommand.Params.ParamByName('turno').value    := global_turno_reporte ;
              connection.zCommand.Params.ParamByName('area').DataType  := ftString ;
              connection.zCommand.Params.ParamByName('area').value     := '' ;
              connection.zCommand.Params.ParamByName('tipo').DataType  := ftString ;
              connection.zCommand.Params.ParamByName('tipo').value     := 'Tiempo Inactivo' ;
              connection.zCommand.Params.ParamByName('inicio').DataType:= ftString ;
              connection.zCommand.Params.ParamByName('inicio').value   := '00:00' ;
              connection.zCommand.Params.ParamByName('final').DataType := ftString ;
              connection.zCommand.Params.ParamByName('final').value    := '00:00' ;
              connection.zCommand.Params.ParamByName('Comida').DataType:= ftString ;
              connection.zCommand.Params.ParamByName('Comida').value   := '00:00' ;
              connection.zCommand.Params.ParamByName('personal').DataType := ftInteger ;
              connection.zCommand.Params.ParamByName('personal').value  := 0 ;
              connection.zCommand.Params.ParamByName('frente').DataType := ftInteger ;
              connection.zCommand.Params.ParamByName('frente').value    := iFrente ;
              connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo ;
              connection.zCommand.Params.ParamByName('descripcion').value  := StringList.Text ;
              connection.zCommand.Params.ParamByName('tipoMovto').DataType := ftString ;
              connection.zCommand.Params.ParamByName('tipoMovto').value := 'TMDS' ;
              connection.zCommand.Params.ParamByName('muerto').DataType := ftString ;
              connection.zCommand.Params.ParamByName('muerto').value := sTMDS ;
              connection.zCommand.ExecSQL ;
           except
           end
      End ;
  end
  else
  begin

    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'Delete from jornadasdiarias where sContrato = :Contrato And dIdFecha = :Fecha And ' +
                                  'sNumeroOrden = :Orden and sIdTurno =:Turno And sTipo = "Tiempo Inactivo" And sIdTipoMovimiento = "TMDS"') ;
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
    connection.zCommand.Params.ParamByName('Contrato').Value := param_global_contrato ;
    connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
    connection.zCommand.Params.ParamByName('Fecha').Value    := tdIdFecha.Date ;
    connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
    connection.zCommand.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
    connection.zCommand.Params.ParamByName('Turno').DataType := ftString ;
    connection.zCommand.Params.ParamByName('Turno').Value    := global_turno_reporte ;
    connection.zCommand.ExecSQL ;

  end;

end ;

procedure TfrmJornadasDiarias.tsIdPernoctaEnter(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
        tsIdPernocta.Color := global_color_entradaERP;
end;

procedure TfrmJornadasDiarias.tsIdPernoctaExit(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
    Begin
        If tsIdPernocta.Text <> '' Then
            lblPernocta.Caption := 'Salida de ' + tsIdPernocta.Text
        Else
            lblPernocta.Caption := 'Hora de Salida' ;
        tsIdPernocta.Color := global_color_salidaERP;
    End
    Else
        lblPernocta.Caption := 'No Aplica' ;


end;

procedure TfrmJornadasDiarias.tsIdPlataformaExit(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
    Begin
        If tsIdPlataforma.Text <> '' Then
            lblPlataforma.Caption := 'Llegada a ' + tsIdPlataforma.Text
        Else
            lblPlataforma.Caption := 'Hora de llegada' ;
        tsArea.Text :=  tsIdPlataforma.Text  ;
        tsIdPlataforma.Color := global_color_salidaERP;

    End
    Else
        lblPernocta.Caption := 'No Aplica' ;
end;

procedure TfrmJornadasDiarias.tsIdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsHoraSalida.SetFocus
end;

procedure TfrmJornadasDiarias.tsHoraSalidaEnter(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
        tsHoraSalida.Color := global_color_entradaERP;
end;

procedure TfrmJornadasDiarias.tsHoraSalidaExit(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
        tsHoraSalida.Color := global_color_salidaERP;

end;

procedure TfrmJornadasDiarias.tsHoraSalidaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdEmbarcacion.SetFocus
end;

procedure TfrmJornadasDiarias.tsIdEmbarcacionEnter(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
        tsIdEmbarcacion.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tsIdEmbarcacionExit(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
        tsIdEmbarcacion.Color := global_color_salidaERP
end;

procedure TfrmJornadasDiarias.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdPlataforma.SetFocus
end;

procedure TfrmJornadasDiarias.tsIdPlataformaEnter(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
        tsIdPlataforma.Color := global_color_entradaERP;
end;

procedure TfrmJornadasDiarias.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsHoraLlegada.SetFocus
end;

procedure TfrmJornadasDiarias.tsHoraLlegadaEnter(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
        tsHoraLlegada.Color := global_color_entradaERP
end;

procedure TfrmJornadasDiarias.tsHoraLlegadaExit(Sender: TObject);
begin
    If tsTipo.ItemIndex = 0 Then
        tsHoraLlegada.Color := global_color_salidaERP ;

    If frmBarra1.btnCancel.Enabled = True Then
        If tsHoraSalida.Text > tsHoraLlegada.Text Then
        Begin
            MessageDlg('La hora de llegada al sitio de los trabajos debe ser superior a la hora de salida del lugar donde pernocta el personal.', mtWarning, [mbOk], 0);
            tsHoraLlegada.SetFocus
        End
end;

procedure TfrmJornadasDiarias.tsHoraLlegadaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsHoraInicio.SetFocus
end;

procedure TfrmJornadasDiarias.chkSinTransporteClick(Sender: TObject);
begin
    If chkSintransporte.Enabled Then
        If chkSinTransporte.Checked Then
        Begin
            tsIdEmbarcacion.KeyValue := null ;
            tsIdPlataforma.KeyValue :=  null ;
            tsHoraSalida.Text := '00:00' ;
            tsHoraLlegada.Text := '00:00' ;
        End
end;

procedure TfrmJornadasDiarias.tmDescripcionKeyPress(Sender: TObject;
  var Key: Char);
Var
    StringList : TStrings ;
begin
    If frmBarra1.btnCancel.Enabled = True Then
      If Ord ( Key ) = 1 then
            If (tsTipo.Text = 'Disponibilidad del Sitio') Then
            Begin
                StringList := TStringList.Create;
                StringList.Clear ;
                StringList.Add('DISPONIBILIDAD DEL SITIO:') ;
                StringList.Add('INICIO DE ACTIVIDADES: ' + tsHoraInicio.Text + ', CIERRE DE ACTVIDADES: ' + tsHoraFinal.Text + ', CANT. PERSONAL: ' + tdFrente.Text ) ;
                tmDescripcion.Text := StringList.Text
            End
            Else
            If (tsTipo.Text = 'Personal Administrativo') Then
            Begin
                StringList := TStringList.Create;
                StringList.Clear ;
                StringList.Add('PERSONAL ADMINISTRATIVO:') ;
                StringList.Add('INICIO DE ACTIVIDADES: ' + tsHoraInicio.Text + ', CIERRE DE ACTIVIDADES: ' + tsHoraFinal.Text + ', CANT. PERSONAL: ' + tdFrente.Text ) ;
                tmDescripcion.Text := StringList.Text
            End ;
end;

procedure TfrmJornadasDiarias.btnCalculaJornadasDiariasClick(
  Sender: TObject);
begin
  try
    procCalculaGenerales ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Jornadas Diarias y Tiempos inhabiles', 'Al calcular', 0);
    end;
  end;
end;

procedure TfrmJornadasDiarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
    sHoraInicio,
    sHoraFinal  : string ;
begin
   // UtGrid.Destroy;
    // Actualizo hora de inicio y termino de la jornada ...
    sHoraInicio := '00:00' ;
    sHoraFinal  := '00:00' ;

    connection.qryBusca.Active := False ;
    connection.qryBusca.SQL.Clear ;
    connection.qryBusca.SQL.Add('Select Min(sHoraInicio) as sHoraInicio,  Max(sHoraFinal) as sHoraFinal ' +
                                'From jornadasdiarias Where sContrato = :Contrato And dIdFecha = :Fecha And ' +
                                'sNumeroOrden = :Orden And sTipo = :Tipo And sIdTurno = :Turno Group By sNumeroOrden') ;
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato ;
    connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    connection.qryBusca.Params.ParamByName('Fecha').Value    := tdIdFecha.Date ;
    connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
    connection.qryBusca.Params.ParamByName('Tipo').DataType  := ftString ;
    connection.qryBusca.Params.ParamByName('Tipo').Value     := 'Disponibilidad del Sitio' ;
    connection.qryBusca.Params.ParamByName('Turno').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Turno').Value    := global_turno_reporte ;
    connection.qryBusca.Open ;
    If connection.qryBusca.RecordCount > 0 Then
        If NOT connection.qryBusca.FieldByName('sHoraInicio').IsNull Then
        Begin
            sHoraInicio := connection.qryBusca.FieldValues['sHoraInicio'] ;
            sHoraFinal:= connection.qryBusca.FieldValues['sHoraFinal'] ;
         End ;

    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'Update reportediario SET sOperacionInicio = :Inicio, sOperacionFinal = :Final ' +
                                  'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno') ;
    connection.zCommand.Params.ParamByName('Inicio').DataType := ftString ;
    connection.zCommand.Params.ParamByName('Inicio').value    := sHoraInicio ;
    connection.zCommand.Params.ParamByName('Final').DataType  := ftString ;
    connection.zCommand.Params.ParamByName('Final').value     := sHoraFinal ;
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
    connection.zCommand.Params.ParamByName('Contrato').Value  := param_Global_Contrato ;
    connection.zCommand.Params.ParamByName('Orden').DataType  := ftString ;
    connection.zCommand.Params.ParamByName('Orden').Value     := tsNumeroOrden.Text ;
    connection.zCommand.Params.ParamByName('Fecha').DataType  := ftDate ;
    connection.zCommand.Params.ParamByName('Fecha').Value     := tdIdFecha.Date ;
    connection.zCommand.Params.ParamByName('Turno').DataType  := ftString ;
    connection.zCommand.Params.ParamByName('Turno').Value     := global_turno_reporte ;
    connection.zCommand.ExecSQL ;

    action := cafree ;
end;


function TfrmJornadasdiarias.MostrarFormChild(sForm: string): boolean;
var
  i: integer;
begin
  result := false;
  if MDIChildCount <> 0 then
  begin
    for I := 0 to MDIChildCount - 1 do
      if uppercase(MDIChildren[i].Name) = uppercase(sform) then
      begin
        MDIChildren[i].Show;
        result := true;
        break;
      end;
  end;

end;

end.


