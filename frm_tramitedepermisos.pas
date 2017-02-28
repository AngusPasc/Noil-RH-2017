unit frm_tramitedepermisos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, DBCtrls, ComCtrls, Grids, DBGrids, frm_barra, frm_connection, global, DB,
  Menus, ADODB, ExtCtrls, RXDBCtrl, ZAbstractRODataset, ZDataset, UnitValidaTexto,
  ZAbstractDataset, UnitTBotonesPermisos, UnitExcepciones, udbgrid,
  unitactivapop, DBDateTimePicker, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmTramitedePermisos = class(TForm)
    frmBarra1: TfrmBarra;
    ds_TramitedePermisos: TDataSource;
    ds_OrdenesdeTrabajo: TDataSource;
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
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    OrdenesdeTrabajo: TZReadOnlyQuery;
    ds_TiposdePermiso: TDataSource;
    TiposdePermiso: TZReadOnlyQuery;
    TramitedePermisos: TZQuery;
    Permisos: TZReadOnlyQuery;
    TramitedePermisossContrato: TStringField;
    TramitedePermisosdIdFecha: TDateField;
    TramitedePermisossNumeroOrden: TStringField;
    TramitedePermisossIdTurno: TStringField;
    TramitedePermisossIdTipoPermiso: TStringField;
    TramitedePermisossFolios: TMemoField;
    TramitedePermisosmComentarios: TMemoField;
    TramitedePermisossDescripcion: TStringField;
    TiposdePermisosIdTipoPermiso: TStringField;
    TiposdePermisosDescripcion: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_tramitedepermisos: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    pnl1: TPanel;
    ts1: TLabel;
    ts2: TLabel;
    tsIdTipoPermiso: TDBLookupComboBox;
    tsFolios: TDBMemo;
    pnl2: TPanel;
    ts3: TLabel;
    ts4: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    tdIdFecha: TDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsIdTipoPermisoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsIdTipoPermisoEnter(Sender: TObject);
    procedure tsIdTipoPermisoExit(Sender: TObject);
    procedure tsFoliosEnter(Sender: TObject);
    procedure tsFoliosExit(Sender: TObject);
    procedure grid_kGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure TramitedePermisosCalcFields(DataSet: TDataSet);
    procedure grid_kMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_kMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_kTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure tsFoliosKeyPress(Sender: TObject; var Key: Char);
    procedure grid_tramitedepermisosEnter(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTramitedePermisos: TfrmTramitedePermisos;
  Opcion : String ;
  BotonPermiso: TBotonesPermisos;
  //utgrid:TicDbGrid;
implementation

{$R *.dfm}


procedure TfrmTramitedePermisos.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cOrdenes', PopupPrincipal);
   //UtGrid:=TicdbGrid.create(grid_tramitedepermisos);
   OpcButton := '' ;
   frmBarra1.btnCancel.Click ;
   tdIdFecha.Date:= global_fecha ;

   If global_orden = '' then
   begin
      param_global_contrato := global_contrato;
      global_turno_reporte  := global_turno;
   end;

   TramitedePermisos.Active := False ;

   OrdenesdeTrabajo.Active := False ;
   OrdenesdeTrabajo.SQL.Clear ;
   If (global_grupo = 'INTEL-CODE') Then
      OrdenesdeTrabajo.SQL.Add('select ot.sNumeroOrden from ordenesdetrabajo ot where ot.sContrato =:Contrato ' +
                               'And ot.cIdStatus =:Status order by ot.sNumeroOrden')
   Else
      OrdenesdeTrabajo.SQL.Add('Select ot.sNumeroOrden from ordenesdetrabajo ot ' +
                               'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato '  +
                               'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
                               'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
                               'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden') ;
   OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
   OrdenesdeTrabajo.Params.ParamByName('Contrato').Value    := param_Global_Contrato ;
   OrdenesdeTrabajo.Params.ParamByName('status').DataType   := ftString ;
   OrdenesdeTrabajo.Params.ParamByName('status').Value      := connection.configuracion.FieldValues [ 'cStatusProceso' ];
    If (global_grupo <> 'INTEL-CODE') Then
     begin
       OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType  := ftString ;
       OrdenesdeTrabajo.Params.ParamByName('Usuario').Value     := Global_Usuario ;
     end;
   OrdenesdeTrabajo.Open ;
   tiposdepermiso.Active := False ;
   TiposdePermiso.Open ;


  If global_orden <> '' Then
  Begin
      tsNumeroOrden.KeyValue := global_orden ;
      tdIdFecha.Date := global_fecha ;
      TramitedePermisos.Active := False ;
      TramitedePermisos.Params.ParamByName('contrato').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('contrato').Value := param_global_contrato ;
      TramitedePermisos.Params.ParamByName('fecha').DataType := ftDate ;
      TramitedePermisos.Params.ParamByName('fecha').Value := global_fecha ;
      TramitedePermisos.Params.ParamByName('orden').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('orden').Value := global_orden ;
      TramitedePermisos.Params.ParamByName('turno').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('turno').Value := global_turno_reporte ;
      TramitedePermisos.Open ;
      grid_tramitedepermisos.SetFocus
  End
  Else
  Begin
      If OrdenesdeTrabajo.RecordCount > 0 Then
          tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;

      TramitedePermisos.Active := False ;
      TramitedePermisos.Params.ParamByName('contrato').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('contrato').Value := param_global_contrato ;
      TramitedePermisos.Params.ParamByName('fecha').DataType := ftDate ;
      TramitedePermisos.Params.ParamByName('fecha').Value    := tdIdFecha.Date ;
      TramitedePermisos.Params.ParamByName('orden').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('orden').Value    := tsNumeroOrden.Text ;
      TramitedePermisos.Params.ParamByName('turno').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('turno').Value    := global_turno_reporte ;
      TramitedePermisos.Open ;
      tdIdFecha.SetFocus
  End;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmTramitedePermisos.tdIdFechaExit(Sender: TObject);
begin
  tdIdFecha.Color := global_color_salidaPU ;
  If Trim (tsNumeroOrden.Text) <> '' Then
  Begin
      TramitedePermisos.Active := False ;
      TramitedePermisos.Params.ParamByName('contrato').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('contrato').Value := param_global_contrato ;
      TramitedePermisos.Params.ParamByName('fecha').DataType := ftDate ;
      TramitedePermisos.Params.ParamByName('fecha').Value    := tdIdFecha.Date ;
      TramitedePermisos.Params.ParamByName('orden').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('orden').Value    := tsNumeroOrden.Text ;
      TramitedePermisos.Open ;
  End
end;

procedure TfrmTramitedePermisos.frmBarra1btnAddClick(Sender: TObject);
Var
    lInserta : Boolean ;
    nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Fecha');nombres.Add('Frente de T');
  cadenas.Add(vartostr(tdidfecha.Date));cadenas.Add(tsnumeroorden.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  try
   grid_tramitedepermisos.Enabled:=false;
   //activapop(frmTramitedePermisos, popupprincipal);
   lInserta := False ;
   If Trim(tsNumeroOrden.Text) <> '' Then
     If TramitedePermisos.RecordCount = 0 Then
     Begin
      // Primero, si no hay registros en la fecha seleccionada que pregunte si deseamos insertar los permisos del dia anterior ...
        Permisos.Active := False ;
        Permisos.Params.ParamByName('contrato').DataType := ftString ;
        Permisos.Params.ParamByName('contrato').Value := param_global_contrato ;
        Permisos.Params.ParamByName('Orden').DataType := ftString ;
        Permisos.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
        Permisos.Params.ParamByName('Turno').DataType := ftString ;
        Permisos.Params.ParamByName('Turno').Value    := global_turno_reporte ;
        Permisos.Params.ParamByName('fecha').DataType := ftDate ;
        Permisos.Params.ParamByName('fecha').Value    := tdIdFecha.Date - 1 ;
        Permisos.Open ;
        // Existen permisos en el dia anterior?

        If Permisos.RecordCount > 0 then
            If MessageDlg('Desea que se registren los mismos permisos del dia anterior?',
               mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            Begin
                Permisos.First ;
                While NOT Permisos.Eof Do
                Begin
                    TramitedePermisos.Append ;
                    TramitedePermisos.FieldValues['sContrato'] := Permisos.FieldValues['sContrato'] ;
                    TramitedePermisos.FieldValues['dIdFecha'] := tdIdFecha.Date ;
                    TramitedePermisos.FieldValues['sIdTurno'] := Permisos.FieldValues['sIdTurno'] ;
                    TramitedePermisos.FieldValues['sNumeroOrden'] := Permisos.FieldValues['sNumeroOrden'] ;
                    TramitedePermisos.FieldValues['sIdTipoPermiso'] := Permisos.FieldValues['sIdTipoPermiso'] ;
                    If NOT Permisos.FieldByName('sFolios').IsNull Then
                        TramitedePermisos.FieldValues['sFolios'] := Permisos.FieldValues['sFolios']
                    Else
                       TramitedePermisos.FieldValues['sFolios'] := '' ;

                    TramitedePermisos.FieldValues['mComentarios'] := '*';
                    TramitedePermisos.Post ;
                    Permisos.Next
                End ;
                frmBarra1.btnCancel.Click ;
            End
            Else
                lInserta := True
        Else
            lInserta := True
     End
     Else
         lInserta := True ;

   If lInserta Then
   Begin
       frmBarra1.btnAddClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       tsIdTipoPermiso.SetFocus;
       TramitedePermisos.Append ;
       TramitedePermisos.FieldValues [ 'dIdFecha' ]     := tdIdFecha.Date ;
       TramitedePermisos.FieldValues [ 'sContrato' ]    := param_Global_Contrato ;
       TramitedePermisos.FieldValues [ 'sNumeroOrden' ] := tsNumeroOrden.Text ;
       TramitedePermisos.FieldValues [ 'sIdTurno' ]     := global_turno_reporte ;
       TramitedePermisos.FieldValues [ 'mComentarios' ] := '' ;
       activapop(frmTramitedePermisos,popupprincipal);
   End;
  except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_tramitedepermisos', 'Al agregar registro', 0);
end;
  end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;

end;

procedure TfrmTramitedePermisos.frmBarra1btnEditClick(Sender: TObject);
begin
  grid_tramitedepermisos.Enabled:=false;
  //activapop(frmTramitedePermisos, popupprincipal);
  If Trim(tsNumeroOrden.Text) <> '' Then
      If TramitedePermisos.RecordCount > 0 then
      Begin
         frmBarra1.btnEditClick(Sender);
         Insertar1.Enabled := False ;
         Editar1.Enabled := False ;
         Registrar1.Enabled := True ;
         Can1.Enabled := True ;
         Eliminar1.Enabled := False ;
         Refresh1.Enabled := False ;
         Salir1.Enabled := False ;
         try
            TramitedePermisos.Edit ;
            activapop(frmTramitedePermisos,popupprincipal);
         except
           on e : exception do begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tramite de Permisos de Seguridad', 'Al editar registro', 0);
             frmbarra1.btnCancel.Click ;
           end;
         end ;
         tsIdTipoPermiso.SetFocus
      End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmTramitedePermisos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Tipo de Permiso');nombres.Add('Folios');
  cadenas.Add(tsIdTipoPermiso.Text);cadenas.Add(tsFolios.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  grid_tramitedepermisos.Enabled:=true;
  //desactivapop(popupprincipal);
  try
      TramitedePermisos.FieldValues [ 'sIdTurno' ] := global_turno_reporte ;
      TramitedePermisos.FieldValues [ 'mComentarios' ] := '*' ;

      TramitedePermisos.Post ;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      frmBarra1.btnPostClick(Sender);
      desactivapop(popupprincipal);
   except
     on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tramite de Permisos de Seguridad', 'Al salvar registro', 0);
      frmbarra1.btnCancel.Click ;
     end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmTramitedePermisos.frmBarra1btnCancelClick(Sender: TObject);
begin
  grid_tramitedepermisos.Enabled:=true;
  desactivapop(popupprincipal);
  try
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   TramitedePermisos.Cancel ;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;

  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tramite de Permisos de Seguridad', 'Al cancelar', 0);
   end;
  end
end;

procedure TfrmTramitedePermisos.frmBarra1btnDeleteClick(Sender: TObject);
begin
try
  If TramitedePermisos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        TramitedePermisos.Delete ;
    end
except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tramite de Permisos de Seguridad', 'Al eliminar registro', 0);
  end;
end
end;

procedure TfrmTramitedePermisos.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  TramitedePermisos.active := False ;
  TramitedePermisos.Open ;
  TiposdePermiso.Active := False ;
  TiposdePermiso.Open ;
  tdidfecha.SetFocus;
  tsnumeroorden.SetFocus;
  grid_tramitedepermisos.SetFocus;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_tramitedepermisos', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmTramitedePermisos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmTramitedePermisos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TramitedePermisos.Cancel ;
  action := cafree ;
  BotonPermiso.free;
  //utGrid.Destroy;
end;

procedure TfrmTramitedePermisos.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    tsNumeroOrden.SetFocus
end;

procedure TfrmTramitedePermisos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmTramitedePermisos.Paste1Click(Sender: TObject);
begin
try
  //UtGrid.AddRowsFromClip;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_formulario1', 'Al agregar registro', 0);
end;
end;
end;

procedure TfrmTramitedePermisos.Copy1Click(Sender: TObject);
begin
  //UtGrid.CopyRowsToClip;
end;

procedure TfrmTramitedePermisos.cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
 // If Trim((Sender as TcxGridDBTableView).DataController.DataSource.DataSet.FieldByName('sIdTurno').AsString) <> global_turno_reporte then
      //  AStyle.Color := clGradientInactiveCaption
end;

procedure TfrmTramitedePermisos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmTramitedePermisos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmTramitedePermisos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmTramitedePermisos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmTramitedePermisos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmTramitedePermisos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmTramitedePermisos.tsIdTipoPermisoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    tsFolios.SetFocus
end;

procedure TfrmTramitedePermisos.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsIdTipoPermiso.SetFocus 
end;

procedure TfrmTramitedePermisos.tsNumeroOrdenExit(Sender: TObject);
begin
 try
  tsNumeroOrden.Color := global_color_salidaPU ;
  If Trim (tsNumeroOrden.Text) <> '' Then
  Begin
      TramitedePermisos.Active := False ;
      TramitedePermisos.Params.ParamByName('contrato').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('contrato').Value := param_global_contrato ;
      TramitedePermisos.Params.ParamByName('fecha').DataType := ftDate ;
      TramitedePermisos.Params.ParamByName('fecha').Value    := tdIdFecha.Date ;
      TramitedePermisos.Params.ParamByName('orden').DataType := ftString ;
      TramitedePermisos.Params.ParamByName('orden').Value    := tsNumeroOrden.Text ;
      TramitedePermisos.Open ;
  End
 except
      on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_tramitedepermisos', 'Al seleccionar el frente de trabajo', 0);
      end;
 end;
end;

procedure TfrmTramitedePermisos.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entradaERP   ;
    frmBarra1.btnCancel.Click
end;

procedure TfrmTramitedePermisos.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entradaERP  ;
    frmBarra1.btnCancel.Click
end;

procedure TfrmTramitedePermisos.tsIdTipoPermisoEnter(Sender: TObject);
begin
    tsIdTipoPermiso.Color := global_color_entradaERP ;
end;

procedure TfrmTramitedePermisos.tsIdTipoPermisoExit(Sender: TObject);
begin
    tsIdTipoPermiso.Color := global_color_salidaPU 
end;

procedure TfrmTramitedePermisos.tsFoliosEnter(Sender: TObject);
begin
    tsFolios.Color := global_color_entradaERP
end;

procedure TfrmTramitedePermisos.tsFoliosExit(Sender: TObject);
begin
    tsFolios.Color := global_color_salidaPU
end;

procedure TfrmTramitedePermisos.tsFoliosKeyPress(Sender: TObject;
  var Key: Char);
begin
   // tdIdFecha.SetFocus
end;

procedure TfrmTramitedePermisos.grid_tramitedepermisosEnter(Sender: TObject);
begin
  if frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click;
end;

procedure TfrmTramitedePermisos.grid_kGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    If Trim((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdTurno').AsString) <> global_turno_reporte then
        Background := clGradientInactiveCaption
end;

procedure TfrmTramitedePermisos.grid_kMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmTramitedePermisos.grid_kMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmTramitedePermisos.grid_kTitleClick(
  Column: TColumn);
begin
 //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmTramitedePermisos.TramitedePermisosCalcFields(
  DataSet: TDataSet);
begin
    tsIdTipoPermiso.KeyValue := TramitedePermisos.FieldValues['sIdTipoPermiso'] ;
    TramitedePermisossDescripcion.Text := tsIdTipoPermiso.Text ;
end;

end.
