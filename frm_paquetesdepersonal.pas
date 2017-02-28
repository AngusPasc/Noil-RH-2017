unit frm_paquetesdepersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids, frm_barra,
  Menus, global, ExtCtrls, ImgList, ComCtrls, frxClass, frxDBSet, RXDBCtrl,
  RxLookup, ZAbstractDataset, ZDataset, ZAbstractRODataset, Newpanel, rxToolEdit,
  rxCurrEdit, UnitExcepciones,UdbGrid, frm_PopUpPaquetes_p, frm_ActividadesAnexo2,
  unittbotonespermisos, UnitValidaTexto, unitactivapop,unitvalidacion,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FormAutoScaler;

type
  TfrmPaquetePersonal = class(TForm)
    frmBarra1: TfrmBarra;
    ds_QryPersonal: TDataSource;
    ds_buscaobjeto: TDataSource;
    ImageGrupos: TImageList;
    ds_paquetes_p: TDataSource;
    ds_pernoctan: TDataSource;
    PopupPaquete: TPopupMenu;
    Copiar1: TMenuItem;
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
    BuscaObjeto: TZReadOnlyQuery;
    QryPersonal: TZQuery;
    QryPersonalsContrato: TStringField;
    QryPersonalsNumeroPaquete: TStringField;
    QryPersonalsIdPersonal: TStringField;
    QryPersonaldCantidad: TFloatField;
    QryPersonalsDescripcion: TStringField;
    QryPersonaliJornada: TIntegerField;
    QryPersonalsMedida: TStringField;
    SumPersonal: TZReadOnlyQuery;
    Pernoctan: TZReadOnlyQuery;
    Paquetes_P: TZQuery;
    ds_Plataformas: TDataSource;
    Plataformas: TZReadOnlyQuery;
    Panel: tNewGroupBox;
    ListaObjeto: TRxDBGrid;
    Borrar1: TMenuItem;
    Editardatos1: TMenuItem;
    InsertarCuadrillasCatalogoMAestro1: TMenuItem;
    pnl1: TPanel;
    ts1: TLabel;
    ts2: TLabel;
    ts3: TLabel;
    ts4: TLabel;
    ts5: TLabel;
    ts6: TLabel;
    tsDescripcion: TEdit;
    tsMedida: TEdit;
    tiJornada: TEdit;
    tsIdPersonal: TDBEdit;
    tdCantidad: TDBEdit;
    tdTotalPersonal: TCurrencyEdit;
    pnl2: TPanel;
    ts7: TLabel;
    ts8: TLabel;
    ts9: TLabel;
    ts10: TLabel;
    ts11: TLabel;
    edDescripcion: TMemo;
    tsNumeroPaquete: TEdit;
    panel_Grupos: TListView;
    tsIdPlataforma: TRxDBLookupCombo;
    tsIdPernocta: TRxDBLookupCombo;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_paquetes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    frmtsclr1: TFormAutoScaler;
    procedure tsNumeroPaqueteKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdEquipoKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
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
    function  lExistePersonal ( sPersonal : String ) : Boolean ;
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPersonalExit(Sender: TObject);
    procedure tsNumeroPaqueteExit(Sender: TObject);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoKeyPress(Sender: TObject; var Key: Char);
    procedure ListaObjetoExit(Sender: TObject);
    procedure panel_GruposClick(Sender: TObject);
    procedure tsNumeroPaqueteEnter(Sender: TObject);
    procedure tsIdPernoctaEnter(Sender: TObject);
    procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPernoctaExit(Sender: TObject);
    procedure QryPersonalAfterScroll(DataSet: TDataSet);
    procedure QryPersonalCalcFields(DataSet: TDataSet);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPlataformaEnter(Sender: TObject);
    procedure tsIdPlataformaExit(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure tsIdPersonalEnter(Sender: TObject);

    procedure edDescripcion1KeyPress(Sender: TObject; var Key: Char);
    procedure edDescripcion1Enter(Sender: TObject);
    procedure edDescripcion1Exit(Sender: TObject);
    procedure edDescripcionEnter(Sender: TObject);
    procedure edDescripcionExit(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Editardatos1Click(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure QryPersonaldCantidadSetText(Sender: TField; const Text: string);
    procedure tdCantidadChange(Sender: TObject);
    procedure tiJornadaChange(Sender: TObject);
    procedure tiJornadaKeyPress(Sender: TObject; var Key: Char);
    procedure tiJornadaEnter(Sender: TObject);
    procedure tiJornadaExit(Sender: TObject);
    procedure InsertarCuadrillasCatalogoMAestro1Click(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tsMedidaExit(Sender: TObject);
    procedure tdTotalPersonalEnter(Sender: TObject);
    procedure tdTotalPersonalExit(Sender: TObject);
    procedure grid_paquetesEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaquetePersonal: TfrmPaquetePersonal;
  sNumeroPaquete : String ;

  botonpermiso: tbotonespermisos;
  banderaagregar:boolean;
implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmPaquetePersonal.tsNumeroPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
         tsIdPernocta.SetFocus ;
end;

procedure TfrmPaquetePersonal.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.tsIdEquipoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmPaquetePersonal.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdCantidad,key) then
      key:=#0;
    If Key = #13 then
        tsIdPersonal.SetFocus
end;

procedure TfrmPaquetePersonal.tdTotalPersonalEnter(Sender: TObject);
begin
    tdTotalPersonal.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.tdTotalPersonalExit(Sender: TObject);
begin
    tdTotalPersonal.Color := global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.tiJornadaChange(Sender: TObject);
begin
teditchangei(tiJornada,'Jornada');
end;

procedure TfrmPaquetePersonal.tiJornadaEnter(Sender: TObject);
begin
  tiJornada.Color:=global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.tiJornadaExit(Sender: TObject);
begin
  tiJornada.Color:=global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.tiJornadaKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTedit(tiJornada,key) then
   key:=#0;
  if not keyFiltroTedit(tiJornada,key) then
      key:=#0;
end;

procedure TfrmPaquetePersonal.frmBarra1btnAddClick(Sender: TObject);
begin
   If (trim(tsNumeroPaquete.Text)<>'') and (trim(tsIdPernocta.text)<>'') and
   (trim(tsIdplataforma.Text)<>'') and (trim(edDescripcion.Text)<>'') Then
   Begin
    activapop(frmPaquetePersonal, popupprincipal);
      try
         banderaAgregar:=true;
         frmBarra1.btnAddClick(Sender);
         Insertar1.Enabled := False ;
         Editar1.Enabled := False ;
         Registrar1.Enabled := True ;
         Can1.Enabled := True ;
         Eliminar1.Enabled := False ;
         Refresh1.Enabled := False ;
         Salir1.Enabled := False ;
         QryPersonal.Append ;
         QryPersonal.FieldValues [ 'sContrato' ]   := Global_Contrato ;
         QryPersonal.FieldValues['sNumeroPaquete'] := tsNumeroPaquete.Text ;
         tsDescripcion.Text := '' ;
         tsMedida.Text := '' ;
         tiJornada.Text := '' ;
         tsIdPersonal.SetFocus ;
      except
         on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al agregar registro', 0);
         end;
      end;
   End
   Else
   begin
       messageDLG('Para Continuar, Ingrese todos los datos del Paquete / Cuadrilla', mtInformation, [mbOk], 0);
       tsNumeroPaquete.SetFocus;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_paquetes.Enabled:=false;
end;

procedure TfrmPaquetePersonal.frmBarra1btnEditClick(Sender: TObject);
begin
if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.IsEmpty=false then
 if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
 begin
   If QryPersonal.RecordCount > 0 Then
   Begin
       try
       banderaAgregar:=false;
       frmBarra1.btnEditClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       QryPersonal.Edit ;
       activapop(frmPaquetePersonal,popupprincipal);
       except
           on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al editar registro', 0);
              frmbarra1.btnCancel.Click ;
           end;
       end ;
       tsIdPersonal.SetFocus
   End;
       grid_paquetes.Enabled:=false;
 end;
BotonPermiso.permisosBotones(frmBarra1);
frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmPaquetePersonal.frmBarra1btnPostClick(Sender: TObject);
Var
    ListItem  : TListItem;
    qryGrupos : tzReadOnlyQuery ;
    nombres, cadenas: TStringList;
begin
//*****************validacampos
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Cantidad');cadenas.Add(tdCantidad.Text);
  if not validaTexto(nombres, cadenas, 'Categoria Id', tsIdPersonal.Text) then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
//*****************************continua el post
  Try
       desactivapop(popupprincipal);


       SumPersonal.Active := False ;
       SumPersonal.Open ;
       If SumPersonal.RecordCount > 0 Then
           tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
       Else
           tdTotalPersonal.Value := 0 ;

       If Paquetes_P.RecordCount > 0 Then
       Begin
          Paquetes_P.Edit ;
          Paquetes_P.FieldValues['sIdPernocta']   := tsIdPernocta.KeyValue ;
          Paquetes_P.FieldValues['sIdPlataforma'] := tsIdPlataforma.KeyValue ;
          Paquetes_P.FieldValues['sDescripcion']  := edDescripcion.Text ;
          Paquetes_p.Post
       End
       Else
       Begin
          Paquetes_P.Append ;
          Paquetes_P.FieldValues['sContrato']      := global_contrato ;
          Paquetes_P.FieldValues['sNumeroPaquete'] := tsNumeroPaquete.Text ;
          Paquetes_P.FieldValues['sIdPernocta']    := tsIdPernocta.KeyValue ;
          Paquetes_P.FieldValues['sIdPlataforma']  := tsIdPlataforma.KeyValue ;
          Paquetes_P.FieldValues['sDescripcion']   := edDescripcion.Text ;
          Paquetes_p.Post
       End ;

       QryPersonal.Post ;
       qryGrupos := tzReadOnlyQuery.Create(Self) ;
       qryGrupos.Connection := connection.zConnection ;
       qryGrupos.Active := False ;
       qryGrupos.SQL.Clear ;
       qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order By sNumeroPaquete') ;
       qryGrupos.Params.ParamByName('Contrato').DataType := ftString ;
       qryGrupos.Params.ParamByName('Contrato').Value := global_contrato ;
       qryGrupos.Open ;
       Panel_Grupos.Items.Clear ;
       If qryGrupos.RecordCount > 0 Then
           with Panel_Grupos do
                While NOT qryGrupos.Eof Do
                Begin
                    ListItem := Items.Add;
                    ListItem.Caption := qryGrupos.FieldValues['sNumeroPaquete'] ;
                    ListItem.ImageIndex := 0;
                    qryGrupos.Next
                End ;
       qryGrupos.Destroy ;

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
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al salvar registro', 0);
           frmbarra1.btnCancel.Click ;
       end;
   end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
  grid_paquetes.Enabled:=true;
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmPaquetePersonal.frmBarra1btnCancelClick(Sender: TObject);
begin

   tsDescripcion.Text := '' ;
   tsMedida.Text := '' ;
   tiJornada.Text := '' ;
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   QryPersonal.Cancel ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_paquetes.Enabled:=true;
end;

procedure TfrmPaquetePersonal.frmBarra1btnDeleteClick(Sender: TObject);
begin
if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.IsEmpty=false then
 if TcxGridDBTableView(grid_paquetes.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
 begin
  If QryPersonal.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from PaquetesdePersonal where sContrato = :Contrato And ' +
                                      'sNumeroPaquete = :Paquete And sIdPersonal = :Personal') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Paquete').Value := QryPersonal.FieldValues ['sNumeroPaquete'] ;
        connection.zCommand.Params.ParamByName('Personal').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Personal').Value := QryPersonal.FieldValues ['sIdPersonal'] ;
        connection.zCommand.ExecSQL ;

        QryPersonal.Active := False ;
        QryPersonal.Open ;

        SumPersonal.Active := False ;
        SumPersonal.Open ;

        If SumPersonal.RecordCount > 0 Then
            tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
        Else
            tdTotalPersonal.Value := 0
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al eliminar registro', 0);
              frmbarra1.btnCancel.Click ;
          end;
      end
    end ;
 end;

end;

procedure TfrmPaquetePersonal.frmBarra1btnRefreshClick(Sender: TObject);
Var
  ListItem  : TListItem;
  qryGrupos : tzReadOnlyQuery ;
begin
 try
  Pernoctan.Active := False ;
  Pernoctan.Open ;
  Plataformas.Active := False ;
  Plataformas.Open ;

  QryPersonal.Active := False ;
  QryPersonal.Open ;

  SumPersonal.Active := False ;
  SumPersonal.Open ;
  If SumPersonal.RecordCount > 0 Then
      tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
  Else
      tdTotalPersonal.Value := 0 ;

  qryGrupos := tzReadOnlyQuery.Create(Self) ;
  qryGrupos.Connection := connection.zConnection ;
  qryGrupos.Active := False ;
  qryGrupos.SQL.Clear ;
  qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order By sNumeroPaquete') ;
  qryGrupos.Params.ParamByName('Contrato').DataType := ftString ;
  qryGrupos.Params.ParamByName('Contrato').Value := global_contrato ;
  qryGrupos.Open ;
  Panel_Grupos.Items.Clear ;
  If qryGrupos.RecordCount > 0 Then
      with Panel_Grupos do
           While NOT qryGrupos.Eof Do
           Begin
               ListItem := Items.Add;
               ListItem.Caption := qryGrupos.FieldValues['sNumeroPaquete'] ;
               ListItem.ImageIndex := 0;
               qryGrupos.Next
           End ;
  qryGrupos.Destroy ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al actualizar el Grid', 0);
  end;
 end;
end;

procedure TfrmPaquetePersonal.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close;
   try
      frmActividadesAnexo2.ActualizaSentencias;
      frmActividadesAnexo2.WindowState := wsMaximized;
   Except

   end;
end;

procedure TfrmPaquetePersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryPersonal.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmPaquetePersonal.FormShow(Sender: TObject);
Var
    ListItem: TListItem;
    qryGrupos : tzReadOnlyQuery ;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPaquetesPer', PopupPrincipal);
  frmbarra1.btnPrinter.Enabled:=false;

  sNumeroPaquete  := '' ;
  OpcButton := '' ;
  tsDescripcion.Text := '' ;
  tsMedida.Text := '' ;
  tiJornada.Text := '' ;
  frmbarra1.btnCancel.Click ;

  Pernoctan.Active := False ;
  Pernoctan.Open ;
  Plataformas.Active := False ;
  Plataformas.Open ;

  qryGrupos := tzReadOnlyQuery.Create(Self) ;
  qryGrupos.Connection := connection.zConnection ;
  qryGrupos.Active := False ;
  qryGrupos.SQL.Clear ;
  qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order By sNumeroPaquete') ;
  qryGrupos.Params.ParamByName('Contrato').DataType := ftString ;
  qryGrupos.Params.ParamByName('Contrato').Value := global_contrato ;
  qryGrupos.Open ;
  Panel_Grupos.Items.Clear ;
  If qryGrupos.RecordCount > 0 Then
      with Panel_Grupos do
          While NOT qryGrupos.Eof Do
          Begin
              ListItem := Items.Add;
              ListItem.Caption := qryGrupos.FieldValues['sNumeroPaquete'] ;
              ListItem.ImageIndex := 0;
              qryGrupos.Next
          End ;
  qryGrupos.Destroy ;

  QryPersonal.Active := False ;
  tsNumeroPaquete.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmPaquetePersonal.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmPaquetePersonal.InsertarCuadrillasCatalogoMAestro1Click(Sender: TObject);
begin
    //Primero buscamos los paquetess de personal existentes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from paquetes_p where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        try
           //Ahora insertamos los paquetes de personal del maestro..
           connection.QryBusca.Active := False;
           connection.QryBusca.SQL.Clear;
           connection.QryBusca.SQL.Add('insert into paquetes_p (sContrato, sNumeroPaquete, sDescripcion, sIdPernocta, sIdPlataforma) '+
                                       'values (:Contrato, :Paquete, :Descripcion, :Pernocta, :Plataforma)');
           connection.QryBusca.ParamByName('Contrato').AsString    := global_contrato;
           connection.QryBusca.ParamByName('Paquete').AsString     := connection.zCommand.FieldValues['sNumeroPaquete'];
           connection.QryBusca.ParamByName('Descripcion').AsString := connection.zCommand.FieldValues['sDescripcion'];
           connection.QryBusca.ParamByName('Pernocta').AsString    := connection.zCommand.FieldValues['sIdPernocta'];
           connection.QryBusca.ParamByName('Plataforma').AsString  := connection.zCommand.FieldValues['sIdPlataforma'];
           connection.QryBusca.ExecSQL;
        Except
        end;
        connection.zCommand.Next;
    end;

    if connection.zCommand.RecordCount = 0 then
       messageDLG('No se encontraron cuadrillas en el Catalogo Maestro!', mtInformation, [mbOk], 0);

    //Buscamos si esxisten las categorias antes de insertar...
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select distinct sIdPersonal from paquetesdepersonal where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sIdPersonal from personal where sContrato =:Contrato and sIdPersonal =:Personal ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Personal').AsString := connection.zCommand.FieldValues['sIdPersonal'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount = 0 then
        begin
            messageDLG('No Existen Categorias de Personal en la Orden "'+global_contrato+'" Favor de Importarlas del Catalogo Maestro!', mtInformation, [mbOk], 0);
            exit;
        end;
        connection.zCommand.Next;
    end;


    //Primero buscamos los paquetess de personal existentes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from paquetesdepersonal where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        try
           //Ahora insertamos los paquetes de personal del maestro..
           connection.QryBusca.Active := False;
           connection.QryBusca.SQL.Clear;
           connection.QryBusca.SQL.Add('insert into paquetesdepersonal (sContrato, sNumeroPaquete, sIdPersonal, dCantidad, mComentarios) '+
                                       'values (:Contrato, :Paquete, :Personal, :Cantidad, :Descripcion)');
           connection.QryBusca.ParamByName('Contrato').AsString    := global_contrato;
           connection.QryBusca.ParamByName('Paquete').AsString     := connection.zCommand.FieldValues['sNumeroPaquete'];
           connection.QryBusca.ParamByName('Personal').AsString    := connection.zCommand.FieldValues['sIdPersonal'];
           connection.QryBusca.ParamByName('Cantidad').AsFloat     := connection.zCommand.FieldValues['dCantidad'];
           if connection.zCommand.FieldValues['mComentarios'] = null then
              connection.QryBusca.ParamByName('Descripcion').AsString := ''
           else
              connection.QryBusca.ParamByName('Descripcion').AsString := connection.zCommand.FieldValues['mComentarios'];
           connection.QryBusca.ExecSQL;
        Except
        end;
        connection.zCommand.Next;
    end;

    If connection.zCommand.RecordCount > 0 then
    begin
       frmBarra1.btnRefresh.Click;
       messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0);
    end;

end;

procedure TfrmPaquetePersonal.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmPaquetePersonal.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmPaquetePersonal.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmPaquetePersonal.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmPaquetePersonal.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmPaquetePersonal.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

procedure TfrmPaquetePersonal.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;


function TfrmPaquetePersonal.lExistePersonal ( sPersonal : String ) : Boolean ;
Begin
  connection.qryBusca.Active := False ;
  connection.qryBusca.SQL.Clear ;
  connection.qryBusca.SQL.Add('select sDescripcion, sMedida, iJornada from personal where sContrato = :Contrato and sIdPersonal = :Personal' ) ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Params.ParamByName('Personal').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Personal').Value := sPersonal ;
  connection.qryBusca.Open ;
  if connection.qryBusca.RecordCount > 0 then
  Begin
      tsDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'] ;
      tsMedida.Text := connection.qryBusca.FieldValues['sMedida'] ;
      tiJornada.Text := connection.qryBusca.FieldValues['iJornada'] ;
      lExistePersonal := True
  End
  else
  Begin
      tsDescripcion.Text := '' ;
      tsMedida.Text := '' ;
      tiJornada.Text := '' ;
      lExistePersonal := False
  end
End ;

procedure TfrmPaquetePersonal.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmPaquetePersonal.tsIdPersonalExit(Sender: TObject);
Var
    sDescripcion : String ;
begin
  tsIdPersonal.Color := global_color_salidaERP;
  If NOT QryPersonal.FieldByName('sIdPersonal').IsNull Then
  Begin
      tsDescripcion.Text := '' ;
      If Trim(QryPersonal.FieldValues['sIdPersonal'])  <> '' then
         If Not lExistePersonal( QryPersonal.FieldValues['sIdPersonal'] ) then
         Begin
            sDescripcion := '%' + Trim (QryPersonal.FieldValues['sIdPersonal']) + '%' ;

            ListaObjeto.Columns.Clear ;
            ListaObjeto.Columns.Add ;
            ListaObjeto.Columns[0].FieldName := 'sDescripcion' ;

            BuscaObjeto.Active := False ;
            BuscaObjeto.SQL.Clear ;
            BuscaObjeto.SQL.Add('Select sIdPersonal, sDescripcion, sMedida, iJornada from personal Where ' +
                                'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion') ;
            BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString ;
            BuscaObjeto.Params.ParamByName('Contrato').Value := global_contrato ;
            BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString ;
            BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion ;
            BuscaObjeto.Open ;
            Panel.Visible := True ;
            ListaObjeto.SetFocus
         End
   End ;
end;

procedure TfrmPaquetePersonal.tsNumeroPaqueteExit(Sender: TObject);
begin
  tsNumeroPaquete.Color := global_color_salidaERP;
  QryPersonal.Active := False ;
  QryPersonal.Params.ParamByName('Contrato').DataType := ftString ;
  QryPersonal.Params.ParamByName('Contrato').Value := Global_Contrato ;
  QryPersonal.Params.ParamByName('Paquete').DataType := ftString ;
  QryPersonal.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  QryPersonal.Open ;
  If QryPersonal.RecordCount = 0 Then
      tdTotalPersonal.Value := 0 ;

  SumPersonal.Active := False ;
  SumPersonal.Params.ParamByName('Contrato').DataType := ftString ;
  SumPersonal.Params.ParamByName('Contrato').Value := Global_Contrato ;
  SumPersonal.Params.ParamByName('Paquete').DataType := ftString ;
  SumPersonal.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  SumPersonal.Open ;

  If SumPersonal.RecordCount > 0 Then
      tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
  Else
      tdTotalPersonal.Value := 0 ;

  Paquetes_P.Active := False ;
  Paquetes_P.Params.ParamByName('Contrato').DataType := ftString ;
  Paquetes_P.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Paquetes_P.Params.ParamByName('Paquete').DataType := ftString ;
  Paquetes_P.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  Paquetes_P.Open ;
  If Paquetes_P.RecordCount > 0 Then
  Begin
      tsIdPernocta.KeyValue   := Paquetes_P.FieldValues['sIdPernocta'] ;
      tsIdPlataforma.KeyValue := Paquetes_P.FieldValues['sIdPlataforma'] ;
      edDescripcion.Text      := Paquetes_P.FieldValues['sDescripcion'] ;
  End

end;


procedure TfrmPaquetePersonal.ListaObjetoDblClick(Sender: TObject);
begin
    tsIdPersonal.SetFocus
end;

procedure TfrmPaquetePersonal.ListaObjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdPersonal.SetFocus
end;

procedure TfrmPaquetePersonal.ListaObjetoExit(Sender: TObject);
begin
    If Panel.Visible = True Then
    Begin
        If BuscaObjeto.RecordCount > 0 Then
        Begin
            if (QryPersonal.State = dsEdit) or (QryPersonal.State = dsInsert) then begin
                QryPersonal.FieldValues['sIdPersonal'] := BuscaObjeto.FieldValues['sIdPersonal'] ;
                tsDescripcion.Text := BuscaObjeto.FieldValues['sDescripcion'] ;
                tsMedida.Text := BuscaObjeto.FieldValues['sMedida'] ;
                tiJornada.Text := BuscaObjeto.FieldValues['iJornada'] ;
            end;
            tdCantidad.SetFocus
        End ;
        Panel.Visible := False ;
    End
end;

procedure TfrmPaquetePersonal.panel_GruposClick(Sender: TObject);
Var
    ListItem  : TListItem;
    qryGrupos : tzReadOnlyQuery ;
begin
    If Panel_Grupos.ItemIndex >= 0 Then
    Begin
     try
        frmBarra1.btnCancel.Click ;
        tsNumeroPaquete.Text := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
        QryPersonal.Active := False ;
        QryPersonal.Params.ParamByName('Contrato').DataType := ftString ;
        QryPersonal.Params.ParamByName('Contrato').Value := Global_Contrato ;
        QryPersonal.Params.ParamByName('Paquete').DataType := ftString ;
        QryPersonal.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;

        QryPersonal.Open ;

        SumPersonal.Active := False ;
        SumPersonal.Params.ParamByName('Contrato').DataType := ftString ;
        SumPersonal.Params.ParamByName('Contrato').Value := Global_Contrato ;
        SumPersonal.Params.ParamByName('Paquete').DataType := ftString ;
        SumPersonal.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
        SumPersonal.Open ;

        If SumPersonal.RecordCount > 0 Then
            tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
        Else
            tdTotalPersonal.Value := 0 ;

        Paquetes_P.Active := False ;
        Paquetes_P.Params.ParamByName('Contrato').DataType := ftString ;
        Paquetes_P.Params.ParamByName('Contrato').Value := Global_Contrato ;
        Paquetes_P.Params.ParamByName('Paquete').DataType := ftString ;
        PaQuetes_P.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
        Paquetes_P.Open ;
        If Paquetes_P.RecordCount > 0 Then
        Begin
            tsIdPernocta.KeyValue   := Paquetes_P.FieldValues['sIdPernocta'] ;
            tsIdPlataforma.KeyValue := Paquetes_P.FieldValues['sIdPlataforma'] ;
            edDescripcion.Text      := Paquetes_P.FieldValues['sDescripcion'] ;
            If QryPersonal.RecordCount = 0 then
                Paquetes_P.Delete
        End ;

        qryGrupos := tzReadOnlyQuery.Create(Self) ;
        qryGrupos.Connection := connection.zConnection ;
        qryGrupos.Active := False ;
        qryGrupos.SQL.Clear ;
        qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order By sNumeroPaquete') ;
        qryGrupos.Params.ParamByName('Contrato').DataType := ftString ;
        qryGrupos.Params.ParamByName('Contrato').Value := global_contrato ;
        qryGrupos.Open ;
        Panel_Grupos.Items.Clear ;
        If qryGrupos.RecordCount > 0 Then
            with Panel_Grupos do
                While NOT qryGrupos.Eof Do
                Begin
                    ListItem := Items.Add;
                    ListItem.Caption := qryGrupos.FieldValues['sNumeroPaquete'] ;
                    ListItem.ImageIndex := 0;
                    qryGrupos.Next
                End ;
        qryGrupos.Destroy ;
        grid_paquetes.SetFocus
     except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al manipular el panel.', 0);
       end;
     end;
    End

end;

procedure TfrmPaquetePersonal.Paste1Click(Sender: TObject);
begin
  try
   // UtGrid.AddRowsFromClip;
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al pegar registro', 0);
   end;
  end;
end;

procedure TfrmPaquetePersonal.tsNumeroPaqueteEnter(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;
    tsNumeroPaquete.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.tsIdPernoctaEnter(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;
    tsIdPernocta.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.tsIdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsIdPlataforma.SetFocus
end;

procedure TfrmPaquetePersonal.tsIdPernoctaExit(Sender: TObject);
begin
    tsIdPernocta.Color := global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.grid_paquetesEnter(Sender: TObject);
begin
   If frmBarra1.btnCancel.Enabled = True Then
      frmBarra1.btnCancel.Click ;

  If QryPersonal.RecordCount > 0 then
  Begin
       tsDescripcion.Text := QryPersonal.FieldValues ['sDescripcion'] ;
       tsMedida.Text :=  QryPersonal.FieldValues ['sMedida'] ;
       tiJornada.Text :=  QryPersonal.FieldValues ['iJornada'] ;
  End
  Else
  Begin
       tsDescripcion.Text := '' ;
       tsMedida.Text := '' ;
       tiJornada.Text := '' ;
  End
end;

procedure TfrmPaquetePersonal.QryPersonalAfterScroll(DataSet: TDataSet);
begin
  If frmBarra1.btnCancel.Enabled = False Then
      If QryPersonal.RecordCount > 0 then
      Begin
           tsDescripcion.Text := QryPersonal.FieldValues ['sDescripcion'] ;
           tsMedida.Text :=  QryPersonal.FieldValues ['sMedida'] ;
           tiJornada.Text :=  QryPersonal.FieldValues ['iJornada'] ;
      End
      Else
      Begin
           tsDescripcion.Text := '' ;
           tsMedida.Text := '' ;
           tiJornada.Text := '' ;
      End
end;

procedure TfrmPaquetePersonal.QryPersonalCalcFields(DataSet: TDataSet);
begin
  connection.qryBusca.Active := False ;
  connection.qryBusca.SQL.Clear ;
  connection.qryBusca.SQL.Add('select sDescripcion, sMedida, iJornada from personal where sContrato = :Contrato and sIdPersonal = :Personal' ) ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Params.ParamByName('Personal').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Personal').Value := QryPersonalsIdPersonal.Text ;
  connection.qryBusca.Open ;
  if connection.qryBusca.RecordCount > 0 then
  Begin
      QryPersonalsDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'] ;
      QryPersonalsMedida.Text := connection.qryBusca.FieldValues['sMedida'] ;
      QryPersonaliJornada.Value := connection.qryBusca.FieldValues['iJornada'] ;
  End
  else
  Begin
      QryPersonalsDescripcion.Text := '' ;
      QryPersonalsMedida.Text := '' ;
      QryPersonaliJornada.Value := 0 ;
  end

end;

procedure TfrmPaquetePersonal.QryPersonaldCantidadSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0)); 
end;

procedure TfrmPaquetePersonal.tdCantidadChange(Sender: TObject);
begin
tdbeditchangef(tdCantidad,'Cantidad');
end;

procedure TfrmPaquetePersonal.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      edDescripcion.SetFocus ;
end;

procedure TfrmPaquetePersonal.tsMedidaEnter(Sender: TObject);
begin
  tsMedida.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.tsMedidaExit(Sender: TObject);
begin
  tsMedida.Color := global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.tsIdPlataformaEnter(Sender: TObject);
begin

    frmBarra1.btnCancel.Click ;
    tsIdPlataforma.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.tsIdPlataformaExit(Sender: TObject);
begin
    tsIdPlataforma.Color := global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.Borrar1Click(Sender: TObject);
var
  sNumeroPaquete: string;
begin
  If Panel_Grupos.ItemIndex >= 0 Then
  Begin
    if MessageDlg('Desea eliminar la cuadrilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      sNumeroPaquete := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption;
      try
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('DELETE FROM paquetesdepersonal ' +
                                    'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.zCommand.ExecSQL ;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('DELETE FROM paquetes_p ' +
                                    'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.zCommand.ExecSQL ;        
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al eliminar cuadrilla', 0);
        end;
      end;
      Panel_Gruposclick(nil);//refrescar datos
    end;
  End;
end;

procedure TfrmPaquetePersonal.Editardatos1Click(Sender: TObject);
var
  sNumeroPaquete1, sNumeroPaquete2: String;
  popUp: TfrmPopUpPaquetes_p;
begin
  If Panel_Grupos.ItemIndex >= 0 Then
  Begin
    sNumeroPaquete1 := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption;

    connection.qryBusca.Active := False ;
    connection.qryBusca.SQL.Clear ;
    connection.qryBusca.SQL.Add('Select * From paquetes_p Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Paquete').Value := sNumeroPaquete1 ;
    connection.qryBusca.Open ;

    if connection.qryBusca.RecordCount > 0 then
    begin
      popUp := TfrmPopUpPaquetes_p.Create(self);
      popUp.tsNumeroPaquete.Text := sNumeroPaquete1;
      popUp.edDescripcion.Text := connection.qryBusca.FieldByName('sDescripcion').AsString;
      popUp.tsIdPernocta.Value := connection.qryBusca.FieldByName('sIdPernocta').AsString;
      popUp.tsIdPlataforma.Value := connection.qryBusca.FieldByName('sIdPlataforma').AsString;
      if popUp.ShowModal = mrOk then
      begin
        sNumeroPaquete2 := popUp.tsNumeroPaquete.Text;

        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('Select sContrato From paquetes_p Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Paquete').Value := sNumeroPaquete2 ;
        connection.qryBusca.Open ;
        If connection.qryBusca.RecordCount = 0 Then
        Begin

          try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add('UPDATE paquetes_p SET sNumeroPaquete = :nuevoNombre, ' +
                                        'sDescripcion = :Descripcion, sIdPernocta = :IdPernocta, sIdPlataforma = :IdPlataforma ' +
                                        'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
            connection.zCommand.ParamByName('nuevoNombre').Value := sNumeroPaquete2 ;
            connection.zCommand.ParamByName('Descripcion').Value := popUp.edDescripcion.Text ;
            connection.zCommand.ParamByName('IdPernocta').Value := popUp.tsIdPernocta.Value ;
            connection.zCommand.ParamByName('IdPlataforma').Value := popUp.tsIdPlataforma.Value ;
            connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
            connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete1 ;
            connection.zCommand.ExecSQL ;

            if sNumeroPaquete1 <> sNumeroPaquete2 then //cambio el ID
            begin
              //impactar tabla dependiente
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add('UPDATE paquetesdepersonal SET sNumeroPaquete = :nuevoNombre Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
              connection.zCommand.Params.ParamByName('nuevoNombre').DataType := ftString ;
              connection.zCommand.Params.ParamByName('nuevoNombre').Value := sNumeroPaquete2 ;
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
              connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Paquete').Value := sNumeroPaquete1 ;
              connection.zCommand.ExecSQL ;
              Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption := sNumeroPaquete2;
              //impactar tabla estimapersonal que es dependiente de paquetesdepersonal
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add('UPDATE estimapersonal SET sPaquete = :nuevoNombre Where sContrato = :Contrato And sPaquete = :Paquete') ;
              connection.zCommand.Params.ParamByName('nuevoNombre').DataType := ftString ;
              connection.zCommand.Params.ParamByName('nuevoNombre').Value := sNumeroPaquete2 ;
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
              connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Paquete').Value := sNumeroPaquete1 ;
              connection.zCommand.ExecSQL ;
            end;

          except
            on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cuadrillas / Paquete de Categorias de Personal', 'Al editar datos de cuadrilla', 0);
            end;
          end;
          Panel_Gruposclick(nil);//refrescar datos

        End
        Else
          MessageDlg('El nombre de paquete ya existe, seleccione otro nombre al paquete.', mtWarning, [mbOk], 0);
      end;
      popUp.Free;
    end;
  End;
end;

procedure TfrmPaquetePersonal.Copiar1Click(Sender: TObject);
Var
    sNumeroPaquete : String ;
    ListItem  : TListItem;
    qryGrupos : tzReadOnlyQuery ;
begin
    If Panel_Grupos.ItemIndex >= 0 Then
    Begin
        frmBarra1.btnCancel.Click ;
        sNumeroPaquete := UPPERCASE(InputBox('Inteligent','Nombre del nuevo paquete?', '')) ;
        if sNumeroPaquete = '' then
          exit;
        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('Select sContrato From paquetes_p Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.qryBusca.Open ;
        If connection.qryBusca.RecordCount = 0 Then
        Begin
            Paquetes_P.Cancel;
            Paquetes_P.Append ;
            Paquetes_P.FieldValues['sContrato'] := global_contrato ;
            Paquetes_P.FieldValues['sNumeroPaquete'] := sNumeroPaquete ;
            If tsIdPernocta.Text <> '' Then
                Paquetes_P.FieldValues['sIdPernocta'] := tsIdPernocta.KeyValue ;
            If tsIdPlataforma.Text <> '' Then
                Paquetes_P.FieldValues['sIdPlataforma'] := tsIdPlataforma.KeyValue ;
            Paquetes_P.FieldValues['sDescripcion']  := edDescripcion.Text ;
            try
                Paquetes_p.Post ;
            except
                MessageDlg('Ocurrio un error al intentar copiar el paquete.'+#10+
                'Asegurse de que se tiene elegido un paquete.', mtInformation, [mbOk], 0);
                exit;
            end;

            connection.qryBusca.Active := False ;
            connection.qryBusca.SQL.Clear ;
            connection.qryBusca.SQL.Add('Select * From paquetesdepersonal Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
            connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Paquete').Value := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
            connection.qryBusca.Open ;
            While NOT connection.qryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'INSERT INTO paquetesdepersonal ( sContrato, sNumeroPaquete, sIdPersonal, dCantidad) ' +
                                              ' VALUES (:contrato, :Paquete, :Personal, :Cantidad)') ;
                Connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                Connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('Paquete').value := sNumeroPaquete ;
                Connection.zCommand.Params.ParamByName('Personal').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('Personal').value := connection.qryBusca.FieldValues['sIdPersonal'] ;
                Connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                Connection.zCommand.Params.ParamByName('Cantidad').value := connection.qryBusca.FieldValues['dCantidad'] ;
                connection.zCommand.ExecSQL ;
                connection.qryBusca.Next
            End ;

            qryGrupos := tzReadOnlyQuery.Create(Self) ;
            qryGrupos.Connection := connection.zConnection ;
            qryGrupos.Active := False ;
            qryGrupos.SQL.Clear ;
            qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order By sNumeroPaquete') ;
            qryGrupos.Params.ParamByName('Contrato').DataType := ftString ;
            qryGrupos.Params.ParamByName('Contrato').Value := global_contrato ;
            qryGrupos.Open ;
            Panel_Grupos.Items.Clear ;
            If qryGrupos.RecordCount > 0 Then
                with Panel_Grupos do
                    While NOT qryGrupos.Eof Do
                    Begin
                        ListItem := Items.Add;
                        ListItem.Caption := qryGrupos.FieldValues['sNumeroPaquete'] ;
                        ListItem.ImageIndex := 0;
                        qryGrupos.Next
                    End ;
            qryGrupos.Destroy ;

        End
        Else
            MessageDlg('El nombre del paquete seleccionado existe, seleccione otro nombre al paquete.', mtWarning, [mbOk], 0);

    End;
end;

procedure TfrmPaquetePersonal.edDescripcion1Enter(Sender: TObject);
begin
   edDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.edDescripcion1Exit(Sender: TObject);
begin
  edDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.edDescripcion1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    frmBarra1.btnAdd.SetFocus
end;

procedure TfrmPaquetePersonal.edDescripcionEnter(Sender: TObject);
begin
     edDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmPaquetePersonal.edDescripcionExit(Sender: TObject);
begin
  edDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmPaquetePersonal.tsIdPersonalEnter(Sender: TObject);
begin
    tsIdPersonal.Color := global_color_entradaERP;
end;

end.
