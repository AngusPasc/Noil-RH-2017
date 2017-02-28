unit frm_actividadesxgrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids, frm_barra,
  Menus, global, ExtCtrls, ComCtrls, ImgList, Newpanel, ZAbstractRODataset,
  ZDataset, ZAbstractDataset, RXDBCtrl, PanelDown, RxLookup,StrUtils,
  rxToolEdit, rxCurrEdit, UnitTBotonesPermisos, unitexcepciones,
  udbgrid, UnitValidaTexto,unitactivapop, UnitValidacion, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;
type
  TfrmActividadesxGrupo = class(TForm)
    frmBarra1: TfrmBarra;
    ds_ActividadesxGrupo: TDataSource;
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
    ds_ordenesdetrabajo: TDataSource;
    ImageGrupos: TImageList;
    ordenesdetrabajo: TZReadOnlyQuery;
    ActividadesxGrupo: TZQuery;
    ActividadesxGruposContrato: TStringField;
    ActividadesxGruposNumeroOrden: TStringField;
    ActividadesxGruposGrupo: TStringField;
    ActividadesxGruposWbs: TStringField;
    ActividadesxGruposNumeroActividad: TStringField;
    ActividadesxGrupodCantidad: TFloatField;
    ActividadesxGruposDescripcion: TStringField;
    ds_actividadesiguales: TDataSource;
    ds_ParidasEfectivas: TDataSource;
    ActividadesIguales: TZReadOnlyQuery;
    ActividadesIgualessWbsAnterior: TStringField;
    ActividadesIgualessWbs: TStringField;
    ActividadesIgualessNumeroActividad: TStringField;
    ActividadesIgualesmDescripcion: TMemoField;
    ActividadesIgualesdCantidad: TFloatField;
    ActividadesIgualesdInstalado: TFloatField;
    ActividadesIgualesdExcedente: TFloatField;
    ActividadesIgualesdPonderado: TFloatField;
    ActividadesIgualessMedida: TStringField;
    ActividadesIgualesdRestante: TFloatField;
    QryPartidasEfectivas: TZReadOnlyQuery;
    Paquete: TZReadOnlyQuery;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N4: TMenuItem;
    pnl1: TPanel;
    ts1: TLabel;
    tsContrato: TLabel;
    tmDescripcion: TMemo;
    tsNumeroActividad: TRxDBLookupCombo;
    pdPaquete: TPanelDown;
    grid_iguales: TRxDBGrid;
    tdCantidad: TRxDBCalcEdit;
    pnl2: TPanel;
    ts2: TLabel;
    ts3: TLabel;
    tsGrupo: TEdit;
    panel_Grupos: TListView;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_paquetes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    tsNumeroOrden: TDBLookupComboBox;
    procedure tsGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsPaqueteKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsGrupoExit(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tsGrupoEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure panel_GruposClick(Sender: TObject);
    procedure ActividadesxGrupoCalcFields(DataSet: TDataSet);
    procedure grid_igualesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ActividadesIgualesAfterScroll(DataSet: TDataSet);
    procedure ActividadesxGrupoAfterScroll(DataSet: TDataSet);
    procedure dbgrd_1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_igualesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgrd_1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_igualesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_1TitleClick(Column: TColumn);
    procedure grid_igualesTitleClick(Column: TColumn);
    procedure Pegar1Click(Sender: TObject);
    procedure tsNumeroActividadClick(Sender: TObject);
    procedure tdCantidadChange(Sender: TObject);
    procedure ActividadesxGrupodCantidadSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActividadesxGrupo: TfrmActividadesxGrupo;
  sGrupo : String ;
  BotonPermiso: TBotonesPermisos;
 
  utgrid2:ticdbgrid;
  banderaagregar:boolean;
implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmActividadesxGrupo.tsGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsNumeroOrden.SetFocus 
end;

procedure TfrmActividadesxGrupo.tsPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsNumeroActividad.SetFocus
end;

procedure TfrmActividadesxGrupo.frmBarra1btnAddClick(Sender: TObject);
begin

   If (trim(tsGrupo.Text)<>'') and (trim(tsNumeroOrden.text)<>'') then
   Begin
     try
       tsNumeroOrden.SetFocus;
       tsnumeroactividad.SetFocus;
       banderaAgregar:=true;
       frmBarra1.btnAddClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       ActividadesxGrupo.Append ;
       ActividadesxGrupo.FieldValues ['dCantidad'] := 0;
       tsNumeroActividad.SetFocus;
       activapop(frmActividadesxGrupo,popupprincipal);
       grid_paquetes.Enabled:=false
     except
       on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Agrupamiento de Actividades', 'Al agregar registro', 0);
       end;
     end;
   End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;

end;

procedure TfrmActividadesxGrupo.frmBarra1btnEditClick(Sender: TObject);
begin

   If (trim(tsGrupo.Text)<>'') and (trim(tsNumeroOrden.text)<>'') then
   tsnumeroOrden.SetFocus;
   tsNumeroActividad.SetFocus;
   if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.IsEmpty=false then
   if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
   Begin
       banderaAgregar:=false;
       frmBarra1.btnEditClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       try
           ActividadesxGrupo.Edit ;
           grid_paquetes.Enabled:=false;
           activapop(frmActividadesxGrupo,popupprincipal);
       except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Agrupamiento de Actividades', 'Al editar registro', 0);
        frmbarra1.btnCancel.Click ;
        end;
       end ;
       tsNumeroActividad.SetFocus
   End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;

end;

procedure TfrmActividadesxGrupo.frmBarra1btnPostClick(Sender: TObject);
Var
    ListItem: TListItem;
    Grupos : tzReadOnlyQuery ;
    nombres, cadenas: TStringList;
begin
//*****************validacampos
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('No grupo');cadenas.Add(tsGrupo.Text);
  nombres.Add('Frente de T');cadenas.Add(tsNumeroOrden.Text);
  if not validaTexto(nombres, cadenas, 'Numero Concepto', tsNumeroActividad.Text) then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
//*****************************continua el post
  Try
       ActividadesxGrupo.FieldValues [ 'sContrato' ] := global_contrato ;
       ActividadesxGrupo.FieldValues [ 'sGrupo' ] := tsGrupo.Text ;
       ActividadesxGrupo.FieldValues [ 'sNumeroOrden' ] := tsNumeroOrden.Text ;
       ActividadesxGrupo.FieldValues [ 'sWbs' ] := ActividadesIguales.FieldValues['sWbs'] ; 
       ActividadesxGrupo.Post ;

       Panel_Grupos.Items.Clear ;
       Grupos := tzReadOnlyQuery.Create(Self) ;
       Grupos.Connection := connection.zConnection ;
       Grupos.Active := False ;
       Grupos.SQL.Clear ;
       Grupos.SQL.Add('Select Distinct sGrupo from actividadesxgrupo Where sContrato = :Contrato') ;
       Grupos.Params.ParamByName('Contrato').DataType := ftString ;
       Grupos.Params.ParamByName('Contrato').Value := global_contrato ;
       Grupos.Open ;
       desactivapop(popupprincipal);
       If Grupos.RecordCount > 0 Then
       Begin
            with Panel_Grupos do
            begin
                Grupos.First ;
                While NOT Grupos.Eof Do
                Begin
                    ListItem := Items.Add;
                    ListItem.Caption := Grupos.FieldValues['sGrupo'] ;
                    ListItem.ImageIndex := 0;
                    Grupos.Next
                End
             End
       End ;
       grupos.Destroy ;

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
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Agrupamiento de Actividades', 'Al salvar registro', 0);
       frmbarra1.btnCancel.Click ;
       end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;

  frmbarra1.btnCancel.Click;
  grid_paquetes.Enabled:=true;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;

end;

procedure TfrmActividadesxGrupo.frmBarra1btnCancelClick(Sender: TObject);
begin

   tmDescripcion.Text := '' ;
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   ActividadesxGrupo.Cancel ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_paquetes.Enabled:=true; 
end;

procedure TfrmActividadesxGrupo.frmBarra1btnDeleteClick(Sender: TObject);
begin
 try
  If ActividadesxGrupo.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
         ActividadesxGrupo.Delete ;
         Grid_Paquetes.SetFocus
    end
      except
       on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Agrupamiento de Actividades', 'Al eliminar registro', 0);
       end;


 end;

end;

procedure TfrmActividadesxGrupo.frmBarra1btnRefreshClick(Sender: TObject);
Var
  ListItem: TListItem;
  Grupos : tzReadOnlyQuery ;
begin
 try
  OpcButton := '' ;
  sGrupo := '' ;
  Grupos := tzReadOnlyQuery.Create(Self) ;
  Grupos.Connection := connection.zConnection ;
  Grupos.Active := False ;
  Grupos.SQL.Clear ;
  Grupos.SQL.Add('Select Distinct sGrupo, sNumeroActividad from actividadesxgrupo Where sContrato = :Contrato') ;
  Grupos.Params.ParamByName('Contrato').DataType := ftString ;
  Grupos.Params.ParamByName('Contrato').Value := global_contrato ;
  Grupos.Open ;

  Panel_Grupos.Items.Clear ;
  If Grupos.RecordCount > 0 Then
  Begin
      with Panel_Grupos do
      begin
          Grupos.First ;
          While NOT Grupos.Eof Do
          Begin
              ListItem := Items.Add;
              ListItem.Caption := Grupos.FieldValues['sNumeroActividad'] ;
              ListItem.ImageIndex := 0;
              Grupos.Next
          End
       End
  End ;
  Grupos.Destroy ;
  ActividadesxGrupo.Active := False ;
  ActividadesxGrupo.Open ;
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Open ;
  frmbarra1.btnCancel.Click ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_actividadesxgrupo', 'Al actualizar grid', 0);
  end;
 end;

end;

procedure TfrmActividadesxGrupo.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close
end;

procedure TfrmActividadesxGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ActividadesxGrupo.Cancel ;
  action := cafree ;
  BotonPermiso.free;
 // utgrid.Destroy;
  utgrid2.destroy;
end;

procedure TfrmActividadesxGrupo.FormShow(Sender: TObject);
Var
  ListItem: TListItem;
  Grupos : tzReadOnlyQuery ;
begin
  //UtGrid:=TicdbGrid.create(grid_paquetes);
  UtGrid2:=TicdbGrid.create(grid_iguales);
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cOrdenes', PopupPrincipal);
  OpcButton := '' ;
  sGrupo := '' ;
  Panel_Grupos.Items.Clear ;
  frmbarra1.btnCancel.Click ;

  Grupos := tzReadOnlyQuery.Create(Self) ;
  Grupos.Connection := connection.zConnection ;
  Grupos.Active := False ;
  Grupos.SQL.Clear ;
  Grupos.SQL.Add('Select Distinct sGrupo from actividadesxgrupo Where sContrato = :Contrato') ;
  Grupos.Params.ParamByName('Contrato').DataType := ftString ;
  Grupos.Params.ParamByName('Contrato').Value := global_contrato ;
  Grupos.Open ;
  If Grupos.RecordCount > 0 Then
  Begin
      with Panel_Grupos do
      begin
          Grupos.First ;
          While NOT Grupos.Eof Do
          Begin
              ListItem := Items.Add;
              ListItem.Caption := Grupos.FieldValues['sGrupo'] ;
              ListItem.ImageIndex := 0;
              Grupos.Next
          End
       End
  End ;
  grupos.Destroy ;

  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
  ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;
  If OrdenesdeTrabajo.RecordCount > 0 Then
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;

  QryPartidasEfectivas.Active := False ;
  QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString ;
  QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato ;
  QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString ;
  QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio ;
  QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString ;
  QryPartidasEfectivas.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue ;
  QryPartidasEfectivas.Open ;

  tsGrupo.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmActividadesxGrupo.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmActividadesxGrupo.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmActividadesxGrupo.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmActividadesxGrupo.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmActividadesxGrupo.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmActividadesxGrupo.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmActividadesxGrupo.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

procedure TfrmActividadesxGrupo.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmActividadesxGrupo.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdCantidad.SetFocus
end;

procedure TfrmActividadesxGrupo.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
       tsgrupo.SetFocus 
end;

procedure TfrmActividadesxGrupo.tsNumeroOrdenExit(Sender: TObject);
begin
    If (tsNumeroOrden.Text <> '') And (tsGrupo.Text <> '' ) Then
    Begin
       ActividadesxGrupo.Active := False ;
       ActividadesxGrupo.Params.ParamByName('Contrato').DataType := ftString ;
       ActividadesxGrupo.Params.ParamByName('Contrato').Value := Global_Contrato ;
       ActividadesxGrupo.Params.ParamByName('Grupo').DataType := ftString ;
       ActividadesxGrupo.Params.ParamByName('Grupo').Value := tsGrupo.Text ;
       ActividadesxGrupo.Open ;
    End ;
    tsNumeroOrden.Color := global_color_salidaERP;
end;

procedure TfrmActividadesxGrupo.tsGrupoExit(Sender: TObject);
begin
    If (tsNumeroOrden.Text <> '') And (tsGrupo.Text <> '' ) Then
    Begin
       ActividadesxGrupo.Active := False ;
       ActividadesxGrupo.Params.ParamByName('Contrato').DataType := ftString ;
       ActividadesxGrupo.Params.ParamByName('Contrato').Value := Global_Contrato ;
       ActividadesxGrupo.Params.ParamByName('Grupo').DataType := ftString ;
       ActividadesxGrupo.Params.ParamByName('Grupo').Value := tsGrupo.Text ;
       ActividadesxGrupo.Open
    End ;
    tsGrupo.Color := global_color_salidaERP;
end;

procedure TfrmActividadesxGrupo.tsNumeroActividadExit(Sender: TObject);
begin
{    If frmBarra1.btnCancel.Enabled = True Then
      If ActividadesxGrupo.FieldByName('sNumeroActividad').AsString <> '' Then
      Begin
           tmDescripcion.Text := '' ;
           pdPaquete.Caption := '< < Seleccione un Paquete > >' ;
           pdPaquete.Hint := '< < Seleccione un Paquete > >' ;

           ActividadesIguales.Active := False ;
           ActividadesIguales.Params.ParamByName('contrato').DataType := ftString ;
           ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato ;
           ActividadesIguales.Params.ParamByName('convenio').DataType := ftString ;
           ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio ;
           ActividadesIguales.Params.ParamByName('orden').DataType := ftString ;
           ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
           ActividadesIguales.Params.ParamByName('actividad').DataType := ftString ;
           ActividadesIguales.Params.ParamByName('actividad').Value := tsNumeroActividad.Text ;
           ActividadesIguales.Open ;

           Paquete.Active := False ;
           Paquete.Params.ParamByName('contrato').DataType := ftString ;
           Paquete.Params.ParamByName('contrato').Value := global_contrato ;
           Paquete.Params.ParamByName('orden').DataType := ftString ;
           Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
           Paquete.Params.ParamByName('Wbs').DataType := ftString ;
           Paquete.Params.ParamByName('Wbs').Value := ActividadesIguales.FieldValues['sWbsAnterior'] ;
           Paquete.Open ;
           If Paquete.RecordCount > 0 Then
           Begin
                pdPaquete.Caption := Paquete.FieldValues['mDescripcion'] ;
                pdPaquete.Hint := Paquete.FieldValues['mDescripcion']
            End
           Else
           Begin
                pdPaquete.Caption := '< < Seleccione un Paquete > >' ;
                pdPaquete.Hint := '< < Seleccione un Paquete > >' ;
           End
      End
      Else
      Begin
          ActividadesIguales.Active := False ;
          ActividadesIguales.Params.ParamByName('contrato').DataType := ftString ;
          ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato ;
          ActividadesIguales.Params.ParamByName('convenio').DataType := ftString ;
          ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio ;
          ActividadesIguales.Params.ParamByName('orden').DataType := ftString ;
          ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
          ActividadesIguales.Params.ParamByName('actividad').DataType := ftString ;
          ActividadesIguales.Params.ParamByName('actividad').Value := '' ;
          ActividadesIguales.Open ;

          Paquete.Active := False ;
          Paquete.Params.ParamByName('contrato').DataType := ftString ;
          Paquete.Params.ParamByName('contrato').Value := global_contrato ;
          Paquete.Params.ParamByName('orden').DataType := ftString ;
          Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
          Paquete.Params.ParamByName('Wbs').DataType := ftString ;
          Paquete.Params.ParamByName('Wbs').Value := '' ;
          Paquete.Open ;

          pdPaquete.Caption := '< < Seleccione un Paquete > >' ;
          pdPaquete.Hint := '< < Seleccione un Paquete > >' ;
      End ;                                }
      tsNumeroActividad.Color := global_color_salidaERP;
end;

procedure TfrmActividadesxGrupo.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTRxDBCalcEdit(tdCantidad,key) then
   key:=#0;
    If Key = #13 Then
        tsNumeroActividad.SetFocus;
end;

procedure TfrmActividadesxGrupo.tsGrupoEnter(Sender: TObject);
begin
    tsGrupo.Color := global_color_entradaERP;
end;

procedure TfrmActividadesxGrupo.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entradaERP;
end;

procedure TfrmActividadesxGrupo.tsNumeroActividadClick(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
      If ActividadesxGrupo.FieldByName('sNumeroActividad').AsString <> '' Then
      Begin
           tmDescripcion.Text := '' ;
           pdPaquete.Caption := '< < Seleccione un Paquete > >' ;
           pdPaquete.Hint := '< < Seleccione un Paquete > >' ;

           ActividadesIguales.Active := False ;
           ActividadesIguales.Params.ParamByName('contrato').DataType := ftString ;
           ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato ;
           ActividadesIguales.Params.ParamByName('convenio').DataType := ftString ;
           ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio ;
           ActividadesIguales.Params.ParamByName('orden').DataType := ftString ;
           ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
           ActividadesIguales.Params.ParamByName('actividad').DataType := ftString ;
           ActividadesIguales.Params.ParamByName('actividad').Value := tsNumeroActividad.Text ;
           ActividadesIguales.Open ;

           Paquete.Active := False ;
           Paquete.Params.ParamByName('contrato').DataType := ftString ;
           Paquete.Params.ParamByName('contrato').Value := global_contrato ;
           Paquete.Params.ParamByName('orden').DataType := ftString ;
           Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
           Paquete.Params.ParamByName('Wbs').DataType := ftString ;
           Paquete.Params.ParamByName('Wbs').Value := ActividadesIguales.FieldValues['sWbsAnterior'] ;
           Paquete.Open ;
           If Paquete.RecordCount > 0 Then
           Begin
                pdPaquete.Caption := Paquete.FieldValues['mDescripcion'] ;
                pdPaquete.Hint := Paquete.FieldValues['mDescripcion']
            End
           Else
           Begin
                pdPaquete.Caption := '< < Seleccione un Paquete > >' ;
                pdPaquete.Hint := '< < Seleccione un Paquete > >' ;
           End
      End
      Else
      Begin
          ActividadesIguales.Active := False ;
          ActividadesIguales.Params.ParamByName('contrato').DataType := ftString ;
          ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato ;
          ActividadesIguales.Params.ParamByName('convenio').DataType := ftString ;
          ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio ;
          ActividadesIguales.Params.ParamByName('orden').DataType := ftString ;
          ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
          ActividadesIguales.Params.ParamByName('actividad').DataType := ftString ;
          ActividadesIguales.Params.ParamByName('actividad').Value := '' ;
          ActividadesIguales.Open ;

          Paquete.Active := False ;
          Paquete.Params.ParamByName('contrato').DataType := ftString ;
          Paquete.Params.ParamByName('contrato').Value := global_contrato ;
          Paquete.Params.ParamByName('orden').DataType := ftString ;
          Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
          Paquete.Params.ParamByName('Wbs').DataType := ftString ;
          Paquete.Params.ParamByName('Wbs').Value := '' ;
          Paquete.Open ;

          pdPaquete.Caption := '< < Seleccione un Paquete > >' ;
          pdPaquete.Hint := '< < Seleccione un Paquete > >' ;
      End ;
end;

procedure TfrmActividadesxGrupo.tsNumeroActividadEnter(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entradaERP;
end;

procedure TfrmActividadesxGrupo.tdCantidadChange(Sender: TObject);
begin
TRxDBCalcEditChangef(tdCantidad,'Cantidad');
end;

procedure TfrmActividadesxGrupo.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaERP;
end;

procedure TfrmActividadesxGrupo.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaERP;
end;

procedure TfrmActividadesxGrupo.panel_GruposClick(Sender: TObject);
Var
    ListItem: TListItem;
    Grupos : tzReadOnlyQuery ;
begin
    If Panel_Grupos.ItemIndex >= 0 Then
    Begin
        tsGrupo.Text := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
        ActividadesxGrupo.Active := False ;
        ActividadesxGrupo.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxGrupo.Params.ParamByName('Contrato').Value := Global_Contrato ;
        ActividadesxGrupo.Params.ParamByName('Grupo').DataType := ftString ;
        ActividadesxGrupo.Params.ParamByName('Grupo').Value := tsGrupo.Text ;
        ActividadesxGrupo.Open ;
        If ActividadesxGrupo.RecordCount > 0 Then
             tsNumeroOrden.KeyValue := ActividadesxGrupo.FieldValues['sNumeroOrden'] ;

        Panel_Grupos.Items.Clear ;
        Grupos := tzReadOnlyQuery.Create(Self) ;
        Grupos.Connection := connection.zConnection ;
        Grupos.Active := False ;
        Grupos.SQL.Clear ;
        Grupos.SQL.Add('Select Distinct sGrupo from actividadesxgrupo Where sContrato = :Contrato') ;
        Grupos.Params.ParamByName('Contrato').DataType := ftString ;
        Grupos.Params.ParamByName('Contrato').Value := global_contrato ;
        Grupos.Open ;
        If Grupos.RecordCount > 0 Then
        Begin
            with Panel_Grupos do
            begin
                Grupos.First ;
                While NOT Grupos.Eof Do
                Begin
                    ListItem := Items.Add;
                    ListItem.Caption := Grupos.FieldValues['sGrupo'] ;
                    ListItem.ImageIndex := 0;
                    Grupos.Next
                End
             End
        End ;
        grupos.Destroy ;

        tsgrupo.SetFocus
    End
end;

procedure TfrmActividadesxGrupo.Pegar1Click(Sender: TObject);
begin
try
//utgrid.AddRowsFromClip;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_actividadesxgrupo', 'Al pegar registro', 0);
end;
end;
end;

procedure TfrmActividadesxGrupo.ActividadesxGrupoCalcFields(
  DataSet: TDataSet);
begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select mDescripcion from actividadesxorden where sContrato = :Contrato and sIdConvenio = :Convenio and ' +
                                'sNumeroOrden = :Orden and sWbs = :Wbs and sNumeroActividad = :Actividad and sTipoActividad = "Actividad"') ;
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('contrato').Value := ActividadesxGrupo.FieldValues['sContrato'] ;
    connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('orden').Value := ActividadesxGrupo.FieldValues['sNumeroOrden'] ;
    connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio ;
    connection.QryBusca.Params.ParamByName('Wbs').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Wbs').Value := ActividadesxGrupo.FieldValues['sWbs'] ;
    connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Actividad').Value := ActividadesxGrupo.FieldValues['sNumeroActividad'] ;
    connection.QryBusca.Open ;
    If Connection.QryBusca.RecordCount > 0 Then
        ActividadesxGruposDescripcion.Value := MidStr(connection.QryBusca.FieldValues['mDescripcion'], 1, 150 ) ;

end;

procedure TfrmActividadesxGrupo.ActividadesxGrupodCantidadSetText(
  Sender: TField; const Text: string);
begin
  Sender.Value:=(strToFloatDef(text,0));
end;

procedure TfrmActividadesxGrupo.grid_igualesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dCantidad').AsFloat = (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dInstalado').AsFloat Then
        Background := clGradientInactiveCaption
end;

procedure TfrmActividadesxGrupo.grid_igualesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if grid_iguales.datasource.DataSet.IsEmpty=false  then
if grid_iguales.DataSource.DataSet.RecordCount>0 then
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmActividadesxGrupo.grid_igualesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if grid_iguales.datasource.DataSet.IsEmpty=false  then
if grid_iguales.DataSource.DataSet.RecordCount>0 then
UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmActividadesxGrupo.grid_igualesTitleClick(Column: TColumn);
begin
if grid_iguales.datasource.DataSet.IsEmpty=false  then
if grid_iguales.DataSource.DataSet.RecordCount>0 then
 UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmActividadesxGrupo.dbgrd_1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.datasource.DataSet.IsEmpty=false  then
if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then

end;

procedure TfrmActividadesxGrupo.dbgrd_1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.datasource.DataSet.IsEmpty=false  then
if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then

end;

procedure TfrmActividadesxGrupo.dbgrd_1TitleClick(Column: TColumn);
begin
if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.datasource.DataSet.IsEmpty=false  then
if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
 
end;

procedure TfrmActividadesxGrupo.ActividadesIgualesAfterScroll(
  DataSet: TDataSet);
begin
  If ActividadesIguales.State <> dsInactive Then
    If ActividadesxGrupo.State = dsBrowse Then
      If ActividadesIguales.RecordCount > 0 Then
      begin
          tmDescripcion.Text := ActividadesIguales.FieldValues['mDescripcion'] ;
          Grid_Iguales.Hint := ActividadesIguales.FieldValues['mDescripcion'] ;
          Paquete.Active := False ;
          Paquete.Params.ParamByName('contrato').DataType := ftString ;
          Paquete.Params.ParamByName('contrato').Value := global_contrato ;
          Paquete.Params.ParamByName('orden').DataType := ftString ;
          Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.Text  ;
          Paquete.Params.ParamByName('wbs').DataType := ftString ;
          Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbsAnterior'] ;
          Paquete.Open ;
          If Paquete.RecordCount > 0 Then
          Begin
              pdPaquete.Caption := Paquete.FieldValues['mDescripcion'] ;
              pdPaquete.Hint := Paquete.FieldValues['mDescripcion']
          End
          Else
          Begin
              pdPaquete.Caption := '< < Seleccione un Paquete > >' ;
              pdPaquete.Hint := '< < Seleccione un Paquete > >'
          End ;
      end
end;

procedure TfrmActividadesxGrupo.ActividadesxGrupoAfterScroll(
  DataSet: TDataSet);
begin
    If ActividadesxGrupo.RecordCount > 0 Then
    Begin
        ActividadesIguales.Active := False ;
        ActividadesIguales.Params.ParamByName('contrato').DataType := ftString ;
        ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato ;
        ActividadesIguales.Params.ParamByName('convenio').DataType := ftString ;
        ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio ;
        ActividadesIguales.Params.ParamByName('orden').DataType := ftString ;
        ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
        ActividadesIguales.Params.ParamByName('actividad').DataType := ftString ;
        ActividadesIguales.Params.ParamByName('actividad').Value := ActividadesxGrupo.FieldValues ['sNumeroActividad'] ;
        ActividadesIguales.Open ;
        ActividadesIguales.Locate('sWbs', ActividadesxGrupo.FieldValues ['sWbs'] , [loPartialKey]) ;
        tmDescripcion.Text := ActividadesIguales.FieldValues['mDescripcion'] ;
        Paquete.Active := False ;
        Paquete.Params.ParamByName('contrato').DataType := ftString ;
        Paquete.Params.ParamByName('contrato').Value := global_contrato ;
        Paquete.Params.ParamByName('orden').DataType := ftString ;
        Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
        Paquete.Params.ParamByName('wbs').DataType := ftString ;
        Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbsAnterior'] ;
        Paquete.Open ;
        If Paquete.RecordCount > 0 Then
        Begin
            pdPaquete.Caption := Paquete.FieldValues['mDescripcion'] ;
            pdPaquete.Hint:= Paquete.FieldValues['mDescripcion'] ;
        End
        Else
        Begin
            pdPaquete.Caption := '< < Seleccione un Paquete > >' ;
            pdPaquete.Hint := '< < Seleccione un Paquete > >' ;
        End ;
    End
end;
end.
