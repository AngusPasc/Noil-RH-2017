unit frm_SalidadeEquipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, StdCtrls,
  NxCollection, NxEdit, Buttons, DBCtrls, rxToolEdit, RXDBCtrl, Mask, frm_barra,
  NxPageControl, ExtCtrls, ZAbstractDataset, frm_Connection, JvExMask,
  JvToolEdit, JvDBControls, JvBaseEdits, global, Menus, frxClass, frxDBSet,
  ZConnection, unittbotonespermisos, unitexcepciones, ZStoredProcedure;
type
  Evalidaciones = class(Exception)
end;
type
  TfrmSalidadeEquipos = class(TForm)
    Panel1: TPanel;
    NxPageControl1: TNxPageControl;
    NxTabSheet2: TNxTabSheet;
    gridInsXEmpl: TDBGrid;
    gridInsumos: TDBGrid;
    btnAsignar: TBitBtn;
    btnDenegar: TBitBtn;
    btnCancelar: TBitBtn;
    fchVigencia: TJvDBDateEdit;
    NxHeaderPanel2: TNxHeaderPanel;
    Label6: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label5: TLabel;
    label33: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N5: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ZStoredProc1: TZStoredProc;
    Salidas: TZQuery;
    dsSalidas: TDataSource;
    grid_salidas: TDBGrid;
    tdfechasalida: TDBDateEdit;
    tsmotivo: TDBEdit;
    tsobservaciones: TDBMemo;
    tsCompania: TDBEdit;
    tsrecibe: TDBEdit;
    tsdestino: TDBEdit;
    tsarea: TDBEdit;
    tsdepartamento: TDBEdit;
    SalidasiIdSalida: TIntegerField;
    SalidasdFechaSalida: TDateTimeField;
    SalidassMotivo: TStringField;
    SalidassEntrega: TStringField;
    SalidassRecibe: TStringField;
    SalidassArea: TStringField;
    SalidassDestino: TStringField;
    SalidassDepartamento: TStringField;
    SalidassObservaciones: TStringField;
    frmBarra1: TfrmBarra;
    Equipos: TZQuery;
    ds_Equipos: TDataSource;
    EquiposiId: TIntegerField;
    EquipossClave: TStringField;
    EquipossNombre: TStringField;
    EquipossModelo: TStringField;
    EquipossDescripcion: TStringField;
    EquipossMarca: TStringField;
    EquipossNumeroSerie: TStringField;
    EquiposbStatus: TStringField;
    ds_Movimientos: TDataSource;
    zqryMovimientos: TZQuery;
    zqryMovimientosiIdMovtoSalidadeEquipos: TIntegerField;
    zqryMovimientosiIdSalidadeEquipo: TIntegerField;
    zqryMovimientosiIdEquipo: TIntegerField;
    zqryMovimientossObservaciones: TStringField;
    zqryMovimientosDescripcion: TStringField;
    zqryMovimientosModelo: TStringField;
    zqryMovimientosnSerie: TStringField;
    zqryEquiposMovtos: TZQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    Label2: TLabel;
    tsEntrega: TDBEdit;
    BitBtn1: TBitBtn;
    FILTROS: TGroupBox;
    Label1: TLabel;
    Label9: TLabel;
    cbxFiltroCategaria: TDBLookupComboBox;
    txtFiltroDescripcion: TEdit;
    SalidassCompaia: TStringField;
    qryCatEquipos: TZQuery;
    qryCatEquiposiId: TIntegerField;
    qryCatEquipossCategoria: TStringField;
    dsCatEquipos: TDataSource;
    zequipo: TZQuery;
    EquiposiId_Categoria: TIntegerField;
    frxReport1: TfrxReport;
    SalidassEstatus: TStringField;
    frxSalidasdeEquipos: TfrxDBDataset;
    zqryReporteSalidas: TZQuery;
    zqryReporteSalidasiIdSalida: TIntegerField;
    zqryReporteSalidasdFechaSalida: TDateTimeField;
    zqryReporteSalidassMotivo: TStringField;
    zqryReporteSalidassCompaia: TStringField;
    zqryReporteSalidassRecibe: TStringField;
    zqryReporteSalidassArea: TStringField;
    zqryReporteSalidassDestino: TStringField;
    zqryReporteSalidassDepartamento: TStringField;
    zqryReporteSalidassObservaciones: TStringField;
    zqryReporteSalidassEntrega: TStringField;
    zqryReporteSalidassObservaciones_1: TStringField;
    zqryReporteSalidassClave: TStringField;
    zqryReporteSalidassNombre: TStringField;
    zqryReporteSalidassModelo: TStringField;
    zqryReporteSalidassMarca: TStringField;
    zqryReporteSalidassNumeroSerie: TStringField;
    zqConfiguracion: TZQuery;
    zqConfiguracionsNombre: TStringField;
    zqConfiguracionsNombreCorto: TStringField;
    zqConfiguracionsRfc: TStringField;
    zqConfiguracionsDireccion1: TStringField;
    zqConfiguracionsDireccion2: TStringField;
    zqConfiguracionsDireccion3: TStringField;
    zqConfiguracionsSlogan: TStringField;
    zqConfiguracionsPiePagina: TStringField;
    zqConfiguracionbImagen: TBlobField;
    zqConfiguracionsTelefono: TStringField;
    zqConfiguracionsFax: TStringField;
    zqConfiguracionsEmail: TStringField;
    zqConfiguracionsWeb: TStringField;
    zqConfiguracionsRepresentante: TStringField;
    zqConfiguracionsFirmante2: TStringField;
    zqConfiguracionsFirmante3: TStringField;
    zqConfiguracionsCiudad: TStringField;
    zqConfiguracionbImagenCliente: TBlobField;
    frxDBConfiguracionn: TfrxDBDataset;
    tsObservacionesMovtos: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    ractivo: TDBComboBox;
    SalidassTipoDocto: TStringField;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure zQEquiposAfterScroll(DataSet: TDataSet);
    procedure zqrysalidasAfterScroll(DataSet: TDataSet);
    procedure ckbVigenciaClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsdCantidadEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure tsMotivoEnter(Sender: TObject);
    procedure tsMotivoExit(Sender: TObject);
    procedure tdFechaSalidaKeyPress(Sender: TObject; var Key: Char);
    procedure tsCompaniaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDestinoKeyPress(Sender: TObject; var Key: Char);
    procedure tsAreaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDepartamentoKeyPress(Sender: TObject; var Key: Char);
    procedure tsObservacionesKeyPress(Sender: TObject; var Key: Char);
    procedure tsRecibeKeyPress(Sender: TObject; var Key: Char);
    procedure tdfechasalidaEnter(Sender: TObject);
    procedure tdfechasalidaExit(Sender: TObject);
    procedure tsdestinoEnter(Sender: TObject);
    procedure tsdestinoExit(Sender: TObject);
    procedure tsCompaniaExit(Sender: TObject);
    procedure tsCompaniaEnter(Sender: TObject);
    procedure tsrecibeEnter(Sender: TObject);
    procedure tsrecibeExit(Sender: TObject);
    procedure tsareaEnter(Sender: TObject);
    procedure tsareaExit(Sender: TObject);
    procedure tsdepartamentoExit(Sender: TObject);
    procedure tsdepartamentoEnter(Sender: TObject);
    procedure tsobservacionesEnter(Sender: TObject);
    procedure tsobservacionesExit(Sender: TObject);
    procedure grid_salidasDblClick(Sender: TObject);
    procedure SalidasAfterScroll(DataSet: TDataSet);
    procedure btnAsignarClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure zqryMovimientosAfterScroll(DataSet: TDataSet);
    procedure cbxFiltroCategariaClick(Sender: TObject);
    procedure txtFiltroDescripcionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsEntregaKeyPress(Sender: TObject; var Key: Char);
    procedure tsEntregaEnter(Sender: TObject);
    procedure tsEntregaExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalidadeEquipos: TfrmSalidadeEquipos;
  maxFolio, EquipodeSeguridad : integer;
  SavePlace     : TBookmark;
  cantant : double;
  botonpermiso: tbotonespermisos;
  EditarSN : boolean;
  //EditarDOCTOS : Boolean;
  comboCategorias : TZquery;
  dscomboCategorias : TDataSource;
  NombreQuienEntrega : String;
  NuevoDocto : Boolean;

  implementation

{$R *.dfm}

procedure TfrmSalidadeEquipos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmSalidadeEquipos.FormShow(Sender: TObject);
begin
    tdFechaSalida.Date := Now;
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
    EditarSN := False;
    NuevoDocto := False;
    frmbarra1.btnCancel.Click ;

    //BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
    OpcButton := '' ;
    Salidas.Active := False;
    //zQSalidas.Params.ParamByName('Empleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').asstring;
    Salidas.Open;

    BotonPermiso.permisosBotones(frmBarra1);
    //frmbarra1.btnPrinter.Enabled := False;

    //Equipos.SQL.Clear;
    Equipos.Active := False;
    Equipos.Open;

    zqryEquiposMovtos.Active:= false;
    zqryEquiposMovtos.Open;
    
    //zqryMovimientos.SQL.Clear;
    zqryMovimientos.Active := False;
    zqryMovimientos.open;

   //grid_sucursales.SetFocus;
   //UtGrid:=TicdbGrid.create(grid_sucursales);

   //BotonPermiso.permisosBotones(frmBarra1);
   //frmbarra1.btnPrinter.Enabled := False;

      comboCategorias := TZQuery.Create(self);
      comboCategorias.Connection := Connection.zConnection;
      dscomboCategorias := TDataSource.Create(self);
      dscomboCategorias.DataSet := comboCategorias;

      comboCategorias.Active := False;
      comboCategorias.SQL.Clear;
      comboCategorias.SQL.Add('SELECT "" as iId, "" as sCategoria');
      comboCategorias.SQL.Add('FROM con_catalogodeequipos_categorias');
      comboCategorias.SQL.Add('UNION');
      comboCategorias.SQL.Add('SELECT iId, sCategoria ');
      comboCategorias.SQL.Add('FROM con_catalogodeequipos_categorias');
      comboCategorias.SQL.Add('ORDER BY iId ASC;');
      comboCategorias.Open;

      cbxFiltroCategaria.ListSource := dscomboCategorias;
      cbxFiltroCategaria.KeyField := 'iId';
      cbxFiltroCategaria.ListField := 'sCategoria';

      qryCatEquipos.Open;

end;

procedure TfrmSalidadeEquipos.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   //sOpcion := 'insert';
   comboCategorias.First;
   Equipos.Filtered := False;
   Salidas.Append;
   Salidas.FieldValues['dFechaSalida'] := tdFechaSalida.date;
   tsEntrega.Text := global_nombre;
   NombrequienEntrega := global_nombre;
   tdFechaSalida.SetFocus;
   NuevoDocto := True;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_salidas.Enabled := False;
   NxPageControl1.Enabled := true;
end;

procedure TfrmSalidadeEquipos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   salidas.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := TRue;
   grid_salidas.Enabled := True;
   NxPageControl1.Enabled := False;

end;

procedure TfrmSalidadeEquipos.frmBarra1btnDeleteClick(Sender: TObject);
begin
      try
        if Salidas.RecordCount>0 then
        begin
          //iniciatransaccion;
          Salidas.Delete;
          //finalizatransaccion;
        end;
      except
        on e:Evalidaciones do
        begin
          messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
        end;
        on E:Exception do begin
        ShowMessage('Ocurrio un error al Eliminar, intentelo nuevamente mas tarde.' + E.Message);
        //cancelatransaccion;
        frmBarra1.btnCancelClick(Sender);
        end;
      end;
end;

procedure TfrmSalidadeEquipos.frmBarra1btnEditClick(Sender: TObject);
begin
//    connection.QryBusca.Active := False;
//    connection.QryBusca.SQL.Clear;
//    connection.QryBusca.SQL.Add('SELECT sEstatus FROM salidadeequipos WHERE iIdSalida= ;');
//    connection.QryBusca.Open;
//    if connection.QryBusca.FieldValues['Id'] = null then


    If Salidas.RecordCount > 0 Then
    Begin
          if Salidas.FieldByName('sEstatus').AsString = 'CERRADO'  then
          begin
                showMessage('La Salida No se Puede Alterar ya, Registre un Nuevo Movimiento.');
          end
          else
          begin
              try
                 frmBarra1.btnEditClick(Sender);
                 Insertar1.Enabled := False ;
                 Editar1.Enabled := False ;
                 Registrar1.Enabled := True ;
                 Can1.Enabled := True ;
                 Eliminar1.Enabled := False ;
                 Refresh1.Enabled := False ;
                 Salir1.Enabled := False ;
                 NxPageControl1.Enabled := True;
                 tdFechaSalida.SetFocus;
                 Salidas.Edit;
                 grid_salidas.Enabled := False;
              except
                 on e : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Salida de EQUIPOS', 'Al Editar Registro', 0);
                 end;
              end;
             BotonPermiso.permisosBotones(frmBarra1);
             frmbarra1.btnPrinter.Enabled := False;
          end;
    End;
end;

procedure TfrmSalidadeEquipos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure TfrmSalidadeEquipos.frmBarra1btnPostClick(Sender: TObject);
var
  QryBusca : tzquery;
begin

//          With ZStoredProc1.mSPDepartamentoInsert do
//            Begin
//                Close;
//                Params.ParamByName('`pIDEmpresa`').Value := FMain.oVariables.nEmpresa;
//                Params.ParamByName('`pIDSucursal`').Value := nArbol;
//                Params.ParamByName('`pIDPadre`').Value := nIDPadre;
//                Params.ParamByName('`pNombre`').Value := cNombre.Text;
//                Params.ParamByName('`pComentario`').Value := cComentario.Text;
//                Params.ParamByName('`pActivo`').Value := 1;
//                Params.ParamByName('`pUsuario`').Value := FMain.oVariables.cUsuario;
//                Params.ParamByName('`pU_Fecha`').Value := Now;
//                Execute;
//            end;

           if Salidas.State = dsEdit then
           begin
                EditarSN := true;
           end
           else
           begin
                connection.QryBusca.Active := False;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('SELECT MAX(iIdSalida) AS id FROM salidadeequipos;');
                connection.QryBusca.Open;

                if connection.QryBusca.FieldValues['Id'] = null then
                begin
                    Salidas.FieldValues['iIdSalida'] := 1;
                end
                else
                begin
                     Salidas.FieldValues['iIdSalida'] := connection.QryBusca.FieldValues['Id'] + 1;
                end
           end;

           try
             Salidas.Post ;
             Insertar1.Enabled := True ;
             Editar1.Enabled := True ;
             Registrar1.Enabled := False ;
             Can1.Enabled := False ;
             Eliminar1.Enabled := True ;
             Refresh1.Enabled := True ;
             Salir1.Enabled := True ;

             frmBarra1.btnPostClick(Sender);

         except
             on e : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Salida de Equipos', 'Al salvar registro', 0);
             frmBarra1.btnCancel.Click ;
             end;
         end;

         BotonPermiso.permisosBotones(frmBarra1);
         grid_Salidas.Enabled := True;
         frmBarra1.btnCancel.Click ;

end;

procedure TfrmSalidadeEquipos.frmBarra1btnPrinterClick(Sender: TObject);
begin
//    if cbxFiltroCategaria.Text = '' then
//       begin
//        Zreporte.Active := False;
//        Zreporte.SQL.Clear;
//        Zreporte.SQL.Add('select c.*, cat.sCategoria from con_catalogodeequipos c inner join con_catalogodeequipos_categorias cat on (c.iId_Categoria = cat.iId) order by iId_Categoria');
//        Zreporte.Open;
//       end
//       else
//       begin
//        Zreporte.Active := False;
//        Zreporte.SQL.Clear;
//        Zreporte.SQL.Add('select c.*, cat.sCategoria from con_catalogodeequipos c inner join con_catalogodeequipos_categorias cat on (c.iId_Categoria = cat.iId)' +
//                         'where c.iId_Categoria = :equipo');
//        Zreporte.Params.ParamByName('equipo').DataType := ftInteger;
//        Zreporte.Params.ParamByName('equipo').Value := comboCategorias.FieldByName('iId').AsString;
//        Zreporte.Open;
//      end;
    if Salidas.RecordCount > 0 then
      begin
          if Salidas.FieldByName('sEstatus').AsString = 'CERRADO'  then
          begin
              if Salidas.FieldByName('sTipoDocto').AsString = 'SALIDA' then
              begin
                    zqryReporteSalidas.Active := False;
                    zqryReporteSalidas.Params.ParamByName('IdSalida').AsInteger := Salidas.FieldByName('iIdSalida').asInteger;
                    zqryReporteSalidas.Open;
                    frxReport1.LoadFromFile(global_files + global_Mireporte + '_ReporteSalidadeEquipos.fr3') ;
                    frxReport1.ShowReport();
              end
              else
              begin
                    zqryReporteSalidas.Active := False;
                    zqryReporteSalidas.Params.ParamByName('IdSalida').AsInteger := Salidas.FieldByName('iIdSalida').asInteger;
                    zqryReporteSalidas.Open;
                    frxReport1.LoadFromFile(global_files + global_Mireporte + '_ReporteEmbarquedeEquipos.fr3') ;
                    frxReport1.ShowReport();
              end;
          end;
      end
      else
      begin
        MessageDlg('No se Encontraron Datos para la Impresión.',mtInformation,[mbOk],0);
      end;

end;

procedure TfrmSalidadeEquipos.frmBarra1btnRefreshClick(Sender: TObject);
begin
 Salidas.Refresh;

end;


procedure TfrmSalidadeEquipos.grid_salidasDblClick(Sender: TObject);
begin
    frmBarra1.btnEdit.Click;
    //btnCancel.Click ;
    //frmBarra1btnEditClick;
end;

procedure TfrmSalidadeEquipos.SalidasAfterScroll(DataSet: TDataSet);
begin
  zqryMovimientos.Active := False;
  zqryMovimientos.Params.ParamByName('IdSalida').AsInteger := Salidas.FieldByName('iIdSalida').AsInteger;
  zqryMovimientos.Open;

end;


procedure TfrmSalidadeEquipos.tdfechasalidaEnter(Sender: TObject);
begin
  tdfechasalida.Color := global_color_entradaERP;

end;

procedure TfrmSalidadeEquipos.tdfechasalidaExit(Sender: TObject);
begin
tdfechasalida.Color := global_color_salidaERP;
end;

procedure TfrmSalidadeEquipos.tdFechaSalidaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
        tsMotivo.SetFocus;

end;

procedure TfrmSalidadeEquipos.tsareaEnter(Sender: TObject);
begin
       tsarea.Color := global_color_entradaERP;
end;

procedure TfrmSalidadeEquipos.tsareaExit(Sender: TObject);
begin
      tsarea.Color := global_color_salidaERP;
end;

procedure TfrmSalidadeEquipos.tsAreaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        tsDepartamento.SetFocus;
end;

procedure TfrmSalidadeEquipos.tsdCantidadEnter(Sender: TObject);
begin
//tsdCantidad.Color := global_color_entradaERP;

end;

procedure TfrmSalidadeEquipos.tsdepartamentoEnter(Sender: TObject);
begin
     tsdepartamento.Color := global_color_entradaERP;
end;

procedure TfrmSalidadeEquipos.tsdepartamentoExit(Sender: TObject);
begin
       tsdepartamento.Color := global_color_salidaERP;
end;

procedure TfrmSalidadeEquipos.tsDepartamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
        tsObservaciones.SetFocus;

end;

procedure TfrmSalidadeEquipos.tsdestinoEnter(Sender: TObject);
begin
      tsdestino.Color := global_color_entradaERP;

end;

procedure TfrmSalidadeEquipos.tsdestinoExit(Sender: TObject);
begin
      tsdestino.Color := global_color_salidaERP;
end;

procedure TfrmSalidadeEquipos.tsDestinoKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        TsCompania.SetFocus;
end;

procedure TfrmSalidadeEquipos.tsEntregaEnter(Sender: TObject);
begin
      tsentrega.Color := global_color_entradaERP;
end;

procedure TfrmSalidadeEquipos.tsEntregaExit(Sender: TObject);
begin
       tsentrega.Color := global_color_salidaERP;

end;

procedure TfrmSalidadeEquipos.tsEntregaKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
        tsRecibe.SetFocus;
end;

procedure TfrmSalidadeEquipos.tsCompaniaEnter(Sender: TObject);
begin
     tsCompania.Color := global_color_entradaERP;
end;

procedure TfrmSalidadeEquipos.tsCompaniaExit(Sender: TObject);
begin
     tsCompania.Color := global_color_salidaERP;
end;

procedure TfrmSalidadeEquipos.tsCompaniaKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
        tsEntrega.SetFocus;

end;


procedure TfrmSalidadeEquipos.tsMotivoEnter(Sender: TObject);
begin
  tsMotivo.Color := global_color_entradaERP;

end;

procedure TfrmSalidadeEquipos.tsMotivoExit(Sender: TObject);
begin
tsMotivo.Color := global_color_salidaERP;

end;

procedure TfrmSalidadeEquipos.tsMotivoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
      tsDestino.SetFocus;

end;

procedure TfrmSalidadeEquipos.tsobservacionesEnter(Sender: TObject);
begin
     tsobservaciones.Color := global_color_entradaERP;
end;

procedure TfrmSalidadeEquipos.tsobservacionesExit(Sender: TObject);
begin
      tsobservaciones.Color := global_color_salidaERP;
end;

procedure TfrmSalidadeEquipos.tsObservacionesKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
        tsRecibe.SetFocus;
end;

procedure TfrmSalidadeEquipos.tsrecibeEnter(Sender: TObject);
begin
    tsrecibe.Color := global_color_entradaERP;
end;

procedure TfrmSalidadeEquipos.tsrecibeExit(Sender: TObject);
begin
      tsrecibe.Color := global_color_salidaERP;
end;

procedure TfrmSalidadeEquipos.tsRecibeKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        tsarea.SetFocus;
end;

procedure TfrmSalidadeEquipos.txtFiltroDescripcionKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  texto : String;
begin
  texto := '';

  if length(trim(txtFiltroDescripcion.Text)) <> 0 then begin
    if cbxFiltroCategaria.Text <> '' then begin
      texto := ' AND iId_Categoria = ' + comboCategorias.FieldByName('iId').AsString;
    end;
    Equipos.Filtered := False;
    Equipos.Filter := 'sNombre LIKE ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
    ' OR sClave like ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
    ' OR sModelo like ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
    ' OR sMarca like ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') + texto;

    Equipos.Filtered := True;

//      zqEquiposxEmpleado.Active:= false;
//      zqEquiposxEmpleado.ParamByName('IdEquipo').AsInteger := Equipos.FieldByName('iId').AsInteger;
//      zqEquiposxEmpleado.Open;

  end
  else begin
    if cbxFiltroCategaria.Text <> '' then
    begin
      Equipos.Filtered := False;
      Equipos.Filter := 'iId_Categoria = ' + comboCategorias.FieldByName('iId').AsString;
      Equipos.Filtered := True;

//      zqEquiposxEmpleado.Active:= false;
//      zqEquiposxEmpleado.ParamByName('IdEquipo').AsInteger := Equipos.FieldByName('iId').AsInteger;
//      zqEquiposxEmpleado.Open;

    end
    else begin
      Equipos.Filtered := False;
    end;
  end;

end;

procedure TfrmSalidadeEquipos.zQEquiposAfterScroll(DataSet: TDataSet);
begin
  //EquipodeSeguridad := zQEquipoSeg.FieldByName('iIdEquipoSeguridad').AsInteger;
end;

procedure TfrmSalidadeEquipos.zqryMovimientosAfterScroll(DataSet: TDataSet);
begin
//  zqryMovimientos.Active := False;
//  zqryMovimientos.Params.ParamByName('IdSalida').AsInteger := Salidas.FieldByName('iIdSalida').AsInteger;
//  zqryMovimientos.refresh;

end;

procedure TfrmSalidadeEquipos.zqrysalidasAfterScroll(DataSet: TDataSet);
begin
//  zQEquipos_x_folio.Active := False;
//  zQEquipos_x_folio.Params.ParamByName('Folio').AsInteger := zQSalidas.FieldByName('iIdFolios').AsInteger;
//  zQEquipos_x_folio.Open;
end;



//procedure TfrmSalidadeEquipos.btnDenegarClick(Sender: TObject);
//var
//  QryBusca, Query : tzquery;
//  Existencia, Salidas :double;
//begin
//try
//  if zQEquipos_x_folio.RecordCount>0 then
//  begin
//    if Not (zQSalidas.State in [dsEdit, dsInsert]) then
//    begin
//
//      try
//      QryBusca := TZQuery.Create(Self);
//      QryBusca.Connection := connection.ZConnection;
//      QryBusca.Active := False;
//      QryBusca.SQL.Clear;
//      QryBusca.SQL.Text := 'select sum(iCantidad) as Existencia from equiposeguridad_existencia WHERE iIdEquipoSeguridad = :Equipo ';
//      QryBusca.Params.ParamByName('Equipo').AsInteger := zQEquipos_x_folio.FieldByName('iIdEquipoSeguridad').AsInteger;
//      QryBusca.Open;
//      Existencia:=QryBusca.FieldByName('Existencia').AsFloat;
//
//        QryBusca := TZQuery.Create(Self);
//        QryBusca.Connection := connection.zConnection;
//        QryBusca.Active := False;
//        QryBusca.SQL.Clear;
//        QryBusca.SQL.Text := 'select sum(iCantidad) as salidas from equiposeguridadxfolio where iIdEquipoSeguridad = :Equipo ';
//        QryBusca.Params.ParamByName('Equipo').AsInteger := zQEquipos_x_folio.FieldByName('iIdEquipoSeguridad').AsInteger;
//        QryBusca.Open;
//        Salidas:= QryBusca.FieldByName('salidas').AsFloat;
//
//        if zQEquipos_x_folio.RecordCount>0 then
//          begin
//
//          Existencia := Existencia + Salidas;
//
//          iniciatransaccion;
//            Query := TZQuery.Create(Self);
//            Query.Connection := connection.ZConnection;
//            Query.Active := False;
//            Query.SQL.Clear;
//            Query.SQL.Add('UPDATE equiposeguridad_existencia SET iCantidad = :Existencia WHERE iIdEquipoSeguridad = :Equipo ');
//            Query.Params.ParamByName('Existencia').AsFloat := Existencia;
//            Query.Params.ParamByName('Equipo').AsInteger := zQEquipos_x_folio.FieldByName('iIdEquipoSeguridad').AsInteger;
//            Query.ExecSQL();
//          end;
//          
//      zQEquipos_x_folio.Delete;
//
//      Except
//         on E:Exception do begin
//           ShowMessage('Error al Actualizar las Existencia del Equipo' + E.Message);
//           cancelatransaccion;
//         end;
//      end;
//      finalizatransaccion;
//      zQEquipoSeg.Refresh;
//      guardar.Enabled := false;
//      btnDenegar.Enabled := true;
//      btnAsignar.Enabled := true;
//      btnCancelar.Visible :=false;
//      btnCancelar.Enabled :=false;
//    end;
//  end;
//  except
//    on E:Exception do begin
//    ShowMessage('No se pudo Borrar el Registro del Equipo de Seguridad, Comuniquese con el Administrador del sistema ' + E.Message);
//    cancelatransaccion;
//    btnCancelar.Click;
//    end;
//  end;
//end;



procedure TfrmSalidadeEquipos.BitBtn1Click(Sender: TObject);
VAR
  Query : tzquery;
begin
    if Salidas.State <> dsInsert then
    begin
        if zqryMovimientos.RecordCount > 0 then
         begin
              Salidas.Edit;
              Salidas.FieldValues['sEstatus'] := 'CERRADO';
              Salidas.Post;
              Salidas.Refresh;
              tsObservacionesMovtos.Text := '';

              NxPageControl1.Enabled := False;
              grid_salidas.enabled := True;
              frmbarra1.Enabled := True;
              NuevoDocto := False;
              frmBarra1.btnCancel.Click ;
          end
          ELSE
          begin
            showMessage('Agregue el Movimientos de Equipos Para poder Cerrarlo.');
          end;
    end
      else
        begin
          showMessage('Agregue el registro de salida,Para poder Cerrarlo.');
        end;
end;

procedure TfrmSalidadeEquipos.btnAsignarClick(Sender: TObject);
begin

//      connection.zCommand.Active := False;
//      connection.zCommand.SQL.Clear;
//      connection.zCommand.SQL.Add('Update con_catalogodeequipos set bStatus = 0 Where iId = :Id ');
//
//      connection.zcommand.Params.ParamByName('Id').DataType := ftInteger;
//      connection.zcommand.Params.ParamByName('Id').value := Equipos.FieldByName('iId').AsInteger;
//
//      connection.zcommand.Params.ParamByName('Id').DataType := ftInteger;
//      connection.zcommand.Params.ParamByName('Id').value := reportefotografico.FieldByName('iId').AsInteger;
//
//      connection.zCommand.ExecSQL;
//      Salidas.State = dsInsert

        if Salidas.State <> dsInsert then
        begin

            If  Salidas.FieldByName('sEstatus').AsString = 'ABIERTO' Then
            begin
                try
                      connection.QryBusca.Active := False;
                      connection.QryBusca.SQL.Clear;
                      connection.QryBusca.SQL.Add('SELECT MAX(iIdMovtoSalidadeEquipos) AS id FROM movtossalidadeequipos;');
                      connection.QryBusca.Open;
                      zqryMovimientos.Insert;
                      if connection.QryBusca.FieldValues['Id'] = null then
                        begin
                            zqryMovimientos.FieldValues['iIdMovtoSalidadeEquipos'] := 1;
                        end
                      else
                        begin
                             zqryMovimientos.FieldValues['iIdMovtoSalidadeEquipos'] := connection.QryBusca.FieldValues['Id'] + 1;
                        end;
                      zqryMovimientos.FieldValues['iIdSalidadeEquipo'] := Salidas.FieldByName('iIdSalida').AsInteger;
                      zqryMovimientos.FieldValues['iIdEquipo'] := Equipos.FieldByName('iId').AsInteger;
                      zqryMovimientos.FieldValues['sObservaciones'] := tsObservacionesMovtos.Text;
                      zqryMovimientos.Post;
                finally
                    Equipos.Edit;
                    Equipos.FieldValues['bStatus'] := '0';
                    Equipos.Post;
                    Equipos.Refresh;
                    tsObservacionesMovtos.Text := '';
                end
            end
            else
            begin
                showMessage('No se Puede Agregar Movimientos, Ya que el Reporte se Encuentra Cerrado.');
            end;
        end
        else
        begin
          showMessage('Agregue el registro de salida para Ingresar los movimientos.');
        end;
        //zqryMovimientos.FieldValues['sObservaciones'] := tsObservacionesMovtos
//        connection.zCommand.Active := False;
//        connection.zCommand.SQL.Clear;
//        connection.zCommand.SQL.Text := 'INSERT INTO movtossalidadeequipos (sIdEmpleado, iId_Prestacion, dImporte, lForma) VALUES ( ' + QuotedStr(zQEmpleados.FieldByName('sIdEmpleado').AsString) + ', ' + QuotedStr(Grid_Prestaciones.Cells[0, i]) + ', ' + QuotedStr(Grid_Prestaciones.Cells[4, i]) + ', ' + QuotedStr(Grid_Prestaciones.Cells[5, i]) + ') ;';
//
//        connection.zcommand.Params.ParamByName('Id').DataType := ftInteger;
//        connection.zcommand.Params.ParamByName('Id').value := Equipos.FieldByName('iId').AsInteger;
//
//        connection.zcommand.Params.ParamByName('Id').DataType := ftInteger;
//        connection.zcommand.Params.ParamByName('Id').value := reportefotografico.FieldByName('iId').AsInteger;
//
//        connection.zCommand.ExecSQL;

end;

procedure TfrmSalidadeEquipos.btnCancelarClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   salidas.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := true;
   grid_salidas.Enabled := True;
   NuevoDocto := False;
   NxPageControl1.Enabled := False;

end;

procedure TfrmSalidadeEquipos.btnDenegarClick(Sender: TObject);
var
  QryBusca, Query : tzquery;
begin
    if Salidas.RecordCount > 0 then
      begin
          try
            if zqryMovimientos.RecordCount > 0 then
            begin
              //iniciatransaccion;
              Query := TZQuery.Create(Self);
              Query.Connection := connection.ZConnection;
              Query.Active := False;
              Query.SQL.Clear;
              Query.SQL.Add('UPDATE con_catalogodeequipos SET bStatus = 1 where iId = :IdEquipo ');
              //':Existencia WHERE iIdEquipoSeguridad = :Equipo ');
              //Query.Params.ParamByName('Existencia').AsFloat := Existencia;
              Query.Params.ParamByName('IdEquipo').AsInteger := zqryMovimientos.FieldByName('iIdEquipo').AsInteger;
              Query.ExecSQL();

              zqryMovimientos.Delete;
              Equipos.refresh;

              //finalizatransaccion;
            end;
          except
            on e:Evalidaciones do
            begin
              messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
            end;
            on E:Exception do begin
            ShowMessage('Ocurrio un error al Eliminar, intentelo nuevamente mas tarde.' + E.Message);
            //cancelatransaccion;
            frmBarra1.btnCancelClick(Sender);
            end;
          end;
      end;

end;

procedure TfrmSalidadeEquipos.cbxFiltroCategariaClick(Sender: TObject);
var
  texto : String;
begin
  texto := '';
  if cbxFiltroCategaria.Text <> '' then begin
    if length(trim(txtFiltroDescripcion.Text)) <> 0 then begin
      texto := ' AND sNombre LIKE ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
        ' or sClave LIKE ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
        ' or sModelo LIKE ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
        ' or sMarca LIKE ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*');
    end;
    Equipos.Filtered := False;
    Equipos.Filter := 'iId_Categoria = ' + comboCategorias.FieldByName('iId').AsString + texto;
    Equipos.Filtered := True;


//    texto := ' AND iId_Categoria = ' + comboCategorias.FieldByName('iId').AsString;
//    end;
//    Equipos.Filtered := False;
//    Equipos.Filter := 'sNombre LIKE ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
//    ' OR sClave like ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
//    ' OR sModelo like ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') +
//    ' OR sMarca like ' + QuotedStr('*'+txtFiltroDescripcion.Text+'*') + texto;


//    zqEquiposxEmpleado.Active:= false;
//    zqEquiposxEmpleado.ParamByName('IdEquipo').AsInteger := Equipos.FieldByName('iId').AsInteger;
//    zqEquiposxEmpleado.Open;
  end
  else begin
     if length(trim(txtFiltroDescripcion.Text)) <> 0 then begin
      Equipos.Filtered := False;
      Equipos.Filter := 'sDescripcion LIKE '+QuotedStr('*'+txtFiltroDescripcion.Text+'*');
      Equipos.Filtered := True;

//      zqEquiposxEmpleado.Active:= false;
//      zqEquiposxEmpleado.ParamByName('IdEquipo').AsInteger := Equipos.FieldByName('iId').AsInteger;
//      zqEquiposxEmpleado.Open;
    end
    else begin
      Equipos.Filtered := False;
    end;
  end;

end;

procedure TfrmSalidadeEquipos.ckbVigenciaClick(Sender: TObject);
begin

// if (zQEquipos_x_folio.State in [dsEdit, dsInsert]) then
// begin
//    if ckbVigencia.Checked = True then
//      begin
//        fchVigencia.Enabled:= true;
//        fchVigencia.Date:= Date;
//      end else begin
//        fchVigencia.Enabled:= false;
//      end;
// end;


end;









//procedure TfrmSalidadeEquipos.edBusqEquipoKeyUp(Sender: TObject;
//  var Key: Word; Shift: TShiftState);
//begin
// if length(trim(edBusqEquipo.Text)) > 0 then
//        begin
//        equipos.Filtered := False;
//        equipos.Filter := ' sNombre LIKE ' + QuotedStr('*' + edBusqEquipo.Text + '* ') +
//                          ' OR iId LIKE ' + QuotedStr('*' + edBusqEquipo.Text + '*');
//        equipos.Filtered := True;
//        end
//     else
//        begin
//        equipos.Filtered := False;
//        end;
//end;

end.
