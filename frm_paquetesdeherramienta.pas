unit frm_paquetesdeherramienta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids, frm_barra,
  Menus, global, ExtCtrls, ImgList, ComCtrls, frxClass, frxDBSet, RXDBCtrl,
  RxLookup, ZAbstractDataset, ZDataset, ZAbstractRODataset, Newpanel, rxToolEdit,
  rxCurrEdit, UnitExcepciones,UdbGrid, frm_ActividadesAnexo2,
  unittbotonespermisos, UnitValidaTexto, unitactivapop,unitvalidacion,
  FormAutoScaler, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmPaqueteherramientas = class(TForm)
    frmBarra1: TfrmBarra;
    ds_QryHerramienta: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tsDescripcion: TEdit;
    tsMedida: TEdit;
    Label7: TLabel;
    tsIdPersonal: TDBEdit;
    tsNumeroPaquete: TEdit;
    tdCantidad: TDBEdit;
    ds_buscaobjeto: TDataSource;
    Panel_Grupos: TListView;
    ImageGrupos: TImageList;
    ds_paquetes_p: TDataSource;
    Label8: TLabel;
    tdTotalPersonal: TCurrencyEdit;
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
    QryHerramienta: TZQuery;
    QryHerramientasContrato: TStringField;
    QryHerramientasNumeroPaquete: TStringField;
    QryHerramientadCantidad: TFloatField;
    QryHerramientasDescripcion: TStringField;
    QryHerramientasMedida: TStringField;
    SumHerramienta: TZReadOnlyQuery;
    Paquetes_P: TZQuery;
    Panel: tNewGroupBox;
    ListaObjeto: TRxDBGrid;
    Label10: TLabel;
    edDescripcion: TMemo;
    Borrar1: TMenuItem;
    QryHerramientasIdHerramientas: TStringField;
    InsertarCuadrillasCatalogoMaestro1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    dbgcxGrid1DBTableView1: TcxGridDBTableView;
    dbgcxGrid1Level1: TcxGridLevel;
    Grid_Paquetes: TcxGrid;
    Col_herramienta: TcxGridDBColumn;
    Col_Descripcion: TcxGridDBColumn;
    Col_Medida: TcxGridDBColumn;
    Col_Cantidad: TcxGridDBColumn;
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
    procedure Panel_GruposClick(Sender: TObject);
    procedure tsNumeroPaqueteEnter(Sender: TObject);
    procedure grid_paquetesEnter(Sender: TObject);
    procedure QryHerramientaAfterScroll(DataSet: TDataSet);
    procedure QryHerramientaCalcFields(DataSet: TDataSet);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure Copiar1Click(Sender: TObject);
    procedure tsIdPersonalEnter(Sender: TObject);

    procedure edDescripcion1KeyPress(Sender: TObject; var Key: Char);
    procedure edDescripcion1Enter(Sender: TObject);
    procedure edDescripcion1Exit(Sender: TObject);
    procedure edDescripcionEnter(Sender: TObject);
    procedure edDescripcionExit(Sender: TObject);
    procedure edDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_PaquetesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_PaquetesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_PaquetesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure QryHerramientadCantidadSetText(Sender: TField; const Text: string);
    procedure tdCantidadChange(Sender: TObject);
    procedure InsertarCuadrillasCatalogoMaestro1Click(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tsMedidaExit(Sender: TObject);
    procedure tdTotalPersonalEnter(Sender: TObject);
    procedure tdTotalPersonalExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaqueteherramientas: TfrmPaqueteherramientas;
  sNumeroPaquete : String ;
  UtGrid:TicDbGrid;
  botonpermiso: tbotonespermisos;
  banderaagregar:boolean;
implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmPaqueteherramientas.tsNumeroPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
         edDescripcion.SetFocus ;
end;

procedure TfrmPaqueteherramientas.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmPaqueteherramientas.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP
end;

procedure TfrmPaqueteherramientas.tsIdEquipoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmPaqueteherramientas.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdCantidad,key) then
      key:=#0;
    If Key = #13 then
        tsIdPersonal.SetFocus
end;

procedure TfrmPaqueteherramientas.tdTotalPersonalEnter(Sender: TObject);
begin
  tdTotalPersonal.Color := global_color_entradaERP
end;

procedure TfrmPaqueteherramientas.tdTotalPersonalExit(Sender: TObject);
begin
  tdTotalPersonal.Color := global_color_salidaERP
end;

procedure TfrmPaqueteherramientas.frmBarra1btnAddClick(Sender: TObject);
begin
   If (trim(tsNumeroPaquete.Text)<>'') and (trim(edDescripcion.Text)<>'') Then
   Begin
    activapop(frmPaqueteHerramientas, popupprincipal);
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
         QryHerramienta.Append ;
         QryHerramienta.FieldValues [ 'sContrato' ]   := Global_Contrato ;
         QryHerramienta.FieldValues['sNumeroPaquete'] := tsNumeroPaquete.Text ;
         tsDescripcion.Text := '' ;
         tsMedida.Text := '' ;
         tsIdPersonal.SetFocus ;
      except
         on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Categorias de Herramientas', 'Al agregar registro', 0);
         end;
      end;
   End
   Else
   begin
       messageDLG('Para Continuar, Ingrese todos los datos del Paquete de Herramienta', mtInformation, [mbOk], 0);
       tsNumeroPaquete.SetFocus;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_paquetes.Enabled:=false;
end;

procedure TfrmPaqueteherramientas.frmBarra1btnEditClick(Sender: TObject);
begin

   If QryHerramienta.RecordCount > 0 Then
    begin
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
       QryHerramienta.Edit ;
       activapop(frmPaqueteHerramientas,popupprincipal);
       except
           on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Herramientas', 'Al editar registro', 0);
              frmbarra1.btnCancel.Click ;
           end;
       end ;
       tsIdPersonal.SetFocus
    end;
       grid_paquetes.Enabled:=false;

  frmbarra1.btnPrinter.Enabled:=false;
 end;
  //BotonPermiso.permisosBotones(frmBarra1);

procedure TfrmPaqueteherramientas.frmBarra1btnPostClick(Sender: TObject);
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


       SumHerramienta.Active := False ;
       SumHerramienta.Open ;
       If SumHerramienta.RecordCount > 0 Then
           tdTotalPersonal.Value := SumHerramienta.FieldValues['dTotal']
       Else
           tdTotalPersonal.Value := 0 ;

       If Paquetes_P.RecordCount > 0 Then
       Begin
          Paquetes_P.Edit ;
          Paquetes_P.FieldValues['sDescripcion']  := edDescripcion.Text ;
          Paquetes_p.Post
       End
       Else
       Begin
          Paquetes_P.Append ;
          Paquetes_P.FieldValues['sContrato']      := global_contrato ;
          Paquetes_P.FieldValues['sNumeroPaquete'] := tsNumeroPaquete.Text ;
          Paquetes_P.FieldValues['sDescripcion']   := edDescripcion.Text ;
          Paquetes_p.Post
       End ;

       QryHerramienta.Post ;
       qryGrupos := tzReadOnlyQuery.Create(Self) ;
       qryGrupos.Connection := connection.zConnection ;
       qryGrupos.Active := False ;
       qryGrupos.SQL.Clear ;
       qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_h Where sContrato = :contrato order By sNumeroPaquete') ;
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
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Herramientas', 'Al salvar registro', 0);
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

procedure TfrmPaqueteherramientas.frmBarra1btnCancelClick(Sender: TObject);
begin

   tsDescripcion.Text := '' ;
   tsMedida.Text := '' ;
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   QryHerramienta.Cancel ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_paquetes.Enabled:=true;
end;

procedure TfrmPaqueteherramientas.frmBarra1btnDeleteClick(Sender: TObject);
begin

  If QryHerramienta.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from paquetesdeherramienta where sContrato = :Contrato And ' +
                                      'sNumeroPaquete = :Paquete And sIdHerramientas = :Herramienta') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Paquete').Value := QryHerramienta.FieldValues ['sNumeroPaquete'] ;
        connection.zCommand.Params.ParamByName('Herramienta').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Herramienta').Value := QryHerramienta.FieldValues ['sIdHerramientas'] ;
        connection.zCommand.ExecSQL ;

        QryHerramienta.Active := False ;
        QryHerramienta.Open ;

        SumHerramienta.Active := False ;
        SumHerramienta.Open ;

        If SumHerramienta.RecordCount > 0 Then
            tdTotalPersonal.Value := SumHerramienta.FieldValues['dTotal']
        Else
            tdTotalPersonal.Value := 0
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Herramienta', 'Al eliminar registro', 0);
              frmbarra1.btnCancel.Click ;
          end;
      end
    end ;


end;

procedure TfrmPaqueteherramientas.frmBarra1btnRefreshClick(Sender: TObject);
Var
  ListItem  : TListItem;
  qryGrupos : tzReadOnlyQuery ;
begin
 try

  QryHerramienta.Active := False ;
  QryHerramienta.Open ;

  SumHerramienta.Active := False ;
  SumHerramienta.Open ;
  If SumHerramienta.RecordCount > 0 Then
      tdTotalPersonal.Value := SumHerramienta.FieldValues['dTotal']
  Else
      tdTotalPersonal.Value := 0 ;

  qryGrupos := tzReadOnlyQuery.Create(Self) ;
  qryGrupos.Connection := connection.zConnection ;
  qryGrupos.Active := False ;
  qryGrupos.SQL.Clear ;
  qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_h Where sContrato = :contrato order By sNumeroPaquete') ;
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
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Herramientas', 'Al actualizar el Grid', 0);
  end;
 end;
end;

procedure TfrmPaqueteherramientas.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);

   close;
   try
      frmActividadesAnexo2.ActualizaSentencias;
      frmActividadesAnexo2.WindowState := wsMaximized;
   Except

   end;
end;

procedure TfrmPaqueteherramientas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryHerramienta.Cancel ;
  action := cafree ;

  botonpermiso.Free;
end;

procedure TfrmPaqueteherramientas.FormShow(Sender: TObject);
Var
    ListItem: TListItem;
    qryGrupos : tzReadOnlyQuery ;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'subHerramientas', PopupPrincipal);
  frmbarra1.btnPrinter.Enabled:=false;

  sNumeroPaquete  := '' ;
  OpcButton := '' ;
  tsDescripcion.Text := '' ;
  tsMedida.Text := '' ;
  frmbarra1.btnCancel.Click ;

  qryGrupos := tzReadOnlyQuery.Create(Self) ;
  qryGrupos.Connection := connection.zConnection ;
  qryGrupos.Active := False ;
  qryGrupos.SQL.Clear ;
  qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_h Where sContrato = :contrato order By sNumeroPaquete') ;
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

  QryHerramienta.Active := False ;
  tsNumeroPaquete.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmPaqueteherramientas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmPaqueteherramientas.InsertarCuadrillasCatalogoMaestro1Click(
  Sender: TObject);
begin
    //Primero buscamos los paquetess de personal existentes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from paquetes_h where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        try
           //Ahora insertamos los paquetes de personal del maestro..
           connection.QryBusca.Active := False;
           connection.QryBusca.SQL.Clear;
           connection.QryBusca.SQL.Add('insert into paquetes_h (sContrato, sNumeroPaquete, sDescripcion) '+
                                       'values (:Contrato, :Paquete, :Descripcion)');
           connection.QryBusca.ParamByName('Contrato').AsString    := global_contrato;
           connection.QryBusca.ParamByName('Paquete').AsString     := connection.zCommand.FieldValues['sNumeroPaquete'];
           connection.QryBusca.ParamByName('Descripcion').AsString := connection.zCommand.FieldValues['sDescripcion'];
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
    connection.zCommand.SQL.Add('select distinct sIdHerramientas from paquetesdeherramienta where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sIdHerramientas from herramientas where sContrato =:Contrato and sIdHerramientas =:Herramienta ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Herramienta').AsString := connection.zCommand.FieldValues['sIdHerramientas'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount = 0 then
        begin
            messageDLG('No Existen Categorias de Herramienta en la Orden "'+global_contrato+'" Favor de Importarlas del Catalogo Maestro!', mtInformation, [mbOk], 0);
            exit;
        end;
        connection.zCommand.Next;
    end;


    //Primero buscamos los paquetess de personal existentes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from paquetesdeherramienta where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        try
           //Ahora insertamos los paquetes de personal del maestro..
           connection.QryBusca.Active := False;
           connection.QryBusca.SQL.Clear;
           connection.QryBusca.SQL.Add('insert into paquetesdeherramienta (sContrato, sNumeroPaquete, sIdHerramientas, dCantidad, mComentarios) '+
                                       'values (:Contrato, :Paquete, :Herramienta, :Cantidad, :Descripcion)');
           connection.QryBusca.ParamByName('Contrato').AsString    := global_contrato;
           connection.QryBusca.ParamByName('Paquete').AsString     := connection.zCommand.FieldValues['sNumeroPaquete'];
           connection.QryBusca.ParamByName('Herramienta').AsString    := connection.zCommand.FieldValues['sIdHerramientas'];
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

procedure TfrmPaqueteherramientas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmPaqueteherramientas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmPaqueteherramientas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmPaqueteherramientas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmPaqueteherramientas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmPaqueteherramientas.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

procedure TfrmPaqueteherramientas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;


function TfrmPaqueteherramientas.lExistePersonal ( sPersonal : String ) : Boolean ;
Begin
  connection.qryBusca.Active := False ;
  connection.qryBusca.SQL.Clear ;
  connection.qryBusca.SQL.Add('select sDescripcion, sMedida from herramientas where sContrato = :Contrato and sIdHerramientas = :Herramienta' ) ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Params.ParamByName('Herramienta').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Herramienta').Value := sPersonal ;
  connection.qryBusca.Open ;
  if connection.qryBusca.RecordCount > 0 then
  Begin
      tsDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'] ;
      tsMedida.Text := connection.qryBusca.FieldValues['sMedida'] ;
      lExistePersonal := True
  End
  else
  Begin
      tsDescripcion.Text := '' ;
      tsMedida.Text := '' ;
      lExistePersonal := False
  end
End ;

procedure TfrmPaqueteherramientas.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmPaqueteherramientas.tsIdPersonalExit(Sender: TObject);
Var
    sDescripcion : String ;
begin
  tsIdPersonal.Color := global_color_salidaERP ;
  If NOT QryHerramienta.FieldByName('sIdHerramientas').IsNull Then
  Begin
      tsDescripcion.Text := '' ;
      If Trim(tsIdPersonal.Text)  <> '' then
         If Not lExistePersonal( QryHerramienta.FieldValues['sIdHerramientas'] ) then
         Begin
            sDescripcion := '%' + Trim (QryHerramienta.FieldValues['sIdHerramientas']) + '%' ;

            ListaObjeto.Columns.Clear ;
            ListaObjeto.Columns.Add ;
            ListaObjeto.Columns[0].FieldName := 'sDescripcion' ;

            BuscaObjeto.Active := False ;
            BuscaObjeto.SQL.Clear ;
            BuscaObjeto.SQL.Add('Select sIdHerramientas, sDescripcion, sMedida from herramientas Where ' +
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

procedure TfrmPaqueteherramientas.tsNumeroPaqueteExit(Sender: TObject);
begin
  tsNumeroPaquete.Color := global_color_salidaERP ;
  QryHerramienta.Active := False ;
  QryHerramienta.Params.ParamByName('Contrato').DataType := ftString ;
  QryHerramienta.Params.ParamByName('Contrato').Value := Global_Contrato ;
  QryHerramienta.Params.ParamByName('Paquete').DataType := ftString ;
  QryHerramienta.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  QryHerramienta.Open ;
  If QryHerramienta.RecordCount = 0 Then
      tdTotalPersonal.Value := 0 ;

  SumHerramienta.Active := False ;
  SumHerramienta.Params.ParamByName('Contrato').DataType := ftString ;
  SumHerramienta.Params.ParamByName('Contrato').Value := Global_Contrato ;
  SumHerramienta.Params.ParamByName('Paquete').DataType := ftString ;
  SumHerramienta.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  SumHerramienta.Open ;

  If SumHerramienta.RecordCount > 0 Then
      tdTotalPersonal.Value := SumHerramienta.FieldValues['dTotal']
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
      edDescripcion.Text      := Paquetes_P.FieldValues['sDescripcion'] ;
  End

end;


procedure TfrmPaqueteherramientas.ListaObjetoDblClick(Sender: TObject);
begin
    tsIdPersonal.SetFocus
end;

procedure TfrmPaqueteherramientas.ListaObjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdPersonal.SetFocus
end;

procedure TfrmPaqueteherramientas.ListaObjetoExit(Sender: TObject);
begin
    If Panel.Visible = True Then
    Begin
        If BuscaObjeto.RecordCount > 0 Then
        Begin
            if (QryHerramienta.State = dsEdit) or (QryHerramienta.State = dsInsert) then begin
                QryHerramienta.FieldValues['sIdHerramientas'] := BuscaObjeto.FieldValues['sIdHerramientas'] ;
                tsDescripcion.Text := BuscaObjeto.FieldValues['sDescripcion'] ;
                tsMedida.Text := BuscaObjeto.FieldValues['sMedida'] ;
            end;
            tdCantidad.SetFocus
        End ;
        Panel.Visible := False ;
    End
end;

procedure TfrmPaqueteherramientas.Panel_GruposClick(Sender: TObject);
Var
    ListItem  : TListItem;
    qryGrupos : tzReadOnlyQuery ;
begin
    If Panel_Grupos.ItemIndex >= 0 Then
    Begin
     try
        frmBarra1.btnCancel.Click ;
        tsNumeroPaquete.Text := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
        QryHerramienta.Active := False ;
        QryHerramienta.Params.ParamByName('Contrato').DataType := ftString ;
        QryHerramienta.Params.ParamByName('Contrato').Value := Global_Contrato ;
        QryHerramienta.Params.ParamByName('Paquete').DataType := ftString ;
        QryHerramienta.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;

        QryHerramienta.Open ;

        SumHerramienta.Active := False ;
        SumHerramienta.Params.ParamByName('Contrato').DataType := ftString ;
        SumHerramienta.Params.ParamByName('Contrato').Value := Global_Contrato ;
        SumHerramienta.Params.ParamByName('Paquete').DataType := ftString ;
        SumHerramienta.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
        SumHerramienta.Open ;

        If SumHerramienta.RecordCount > 0 Then
            tdTotalPersonal.Value := SumHerramienta.FieldValues['dTotal']
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
            edDescripcion.Text      := Paquetes_P.FieldValues['sDescripcion'] ;
            If QryHerramienta.RecordCount = 0 then
                Paquetes_P.Delete
        End ;

        qryGrupos := tzReadOnlyQuery.Create(Self) ;
        qryGrupos.Connection := connection.zConnection ;
        qryGrupos.Active := False ;
        qryGrupos.SQL.Clear ;
        qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_h Where sContrato = :contrato order By sNumeroPaquete') ;
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
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Herramientas', 'Al manipular el panel.', 0);
       end;
     end;
    End

end;

procedure TfrmPaqueteherramientas.Paste1Click(Sender: TObject);
begin
  try
    UtGrid.AddRowsFromClip;
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Herramientas', 'Al pegar registro', 0);
   end;
  end;
end;

procedure TfrmPaqueteherramientas.tsNumeroPaqueteEnter(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;
    tsNumeroPaquete.Color := global_color_entradaPU;
end;

procedure TfrmPaqueteherramientas.grid_paquetesEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True Then
      frmBarra1.btnCancel.Click ;

  If QryHerramienta.RecordCount > 0 then
  Begin
       tsDescripcion.Text := QryHerramienta.FieldValues ['sDescripcion'] ;
       tsMedida.Text :=  QryHerramienta.FieldValues ['sMedida'] ;
  End
  Else
  Begin
       tsDescripcion.Text := '' ;
       tsMedida.Text := '' ;
  End
end;

procedure TfrmPaqueteherramientas.Grid_PaquetesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPaqueteherramientas.Grid_PaquetesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPaqueteherramientas.Grid_PaquetesTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column); 
end;

procedure TfrmPaqueteherramientas.QryHerramientaAfterScroll(DataSet: TDataSet);
begin
  If frmBarra1.btnCancel.Enabled = False Then
      If QryHerramienta.RecordCount > 0 then
      Begin
           tsDescripcion.Text := QryHerramienta.FieldValues ['sDescripcion'] ;
           tsMedida.Text :=  QryHerramienta.FieldValues ['sMedida'] ;
      End
      Else
      Begin
           tsDescripcion.Text := '' ;
           tsMedida.Text := '' ;
      End
end;

procedure TfrmPaqueteherramientas.QryHerramientaCalcFields(DataSet: TDataSet);
begin
  connection.qryBusca.Active := False ;
  connection.qryBusca.SQL.Clear ;
  connection.qryBusca.SQL.Add('select sDescripcion, sMedida from herramientas where sContrato = :Contrato and sIdHerramientas = :Herramienta' ) ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Params.ParamByName('Herramienta').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Herramienta').Value := QryHerramientasIdHerramientas.Text ;
  connection.qryBusca.Open ;
  if connection.qryBusca.RecordCount > 0 then
  Begin
      QryHerramientasDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'] ;
      QryHerramientasMedida.Text := connection.qryBusca.FieldValues['sMedida'] ;
  End
  else
  Begin
      QryHerramientasDescripcion.Text := '' ;
      QryHerramientasMedida.Text := '' ;
  end

end;

procedure TfrmPaqueteherramientas.QryHerramientadCantidadSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0)); 
end;

procedure TfrmPaqueteherramientas.tdCantidadChange(Sender: TObject);
begin
tdbeditchangef(tdCantidad,'Cantidad');
end;

procedure TfrmPaqueteherramientas.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaPU;
end;

procedure TfrmPaqueteherramientas.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaPU;
end;

procedure TfrmPaqueteherramientas.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      edDescripcion.SetFocus ;
end;

procedure TfrmPaqueteherramientas.tsMedidaEnter(Sender: TObject);
begin
  tsMedida.Color := global_color_entradaPU;
end;

procedure TfrmPaqueteherramientas.tsMedidaExit(Sender: TObject);
begin
  tsMedida.Color := global_color_salidaPU;
end;

procedure TfrmPaqueteherramientas.Borrar1Click(Sender: TObject);
var
  sNumeroPaquete: string;
begin
  If Panel_Grupos.ItemIndex >= 0 Then
  Begin
    if MessageDlg('Desea eliminar el Paquete Herramienta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      sNumeroPaquete := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption;
      try
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('DELETE FROM paquetesdeherramienta ' +
                                    'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.zCommand.ExecSQL ;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('DELETE FROM paquetes_h ' +
                                    'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.zCommand.ExecSQL ;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Herramientas', 'Al eliminar cuadrilla', 0);
        end;
      end;
      Panel_Gruposclick(nil);//refrescar datos
    end;
  End;
end;

procedure TfrmPaqueteherramientas.Copiar1Click(Sender: TObject);
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
        connection.qryBusca.SQL.Add('Select sContrato From paquetes_h Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
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
            connection.qryBusca.SQL.Add('Select * From paquetesdeherramienta Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
            connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Paquete').Value := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
            connection.qryBusca.Open ;
            While NOT connection.qryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'INSERT INTO paquetesdeherramienta ( sContrato, sNumeroPaquete, sIdHerramientas, dCantidad) ' +
                                              ' VALUES (:contrato, :Paquete, :Herramienta, :Cantidad)') ;
                Connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                Connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('Paquete').value := sNumeroPaquete ;
                Connection.zCommand.Params.ParamByName('Herramienta').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('Herramienta').value := connection.qryBusca.FieldValues['sIdHerramientas'] ;
                Connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                Connection.zCommand.Params.ParamByName('Cantidad').value := connection.qryBusca.FieldValues['dCantidad'] ;
                connection.zCommand.ExecSQL ;
                connection.qryBusca.Next
            End ;

            qryGrupos := tzReadOnlyQuery.Create(Self) ;
            qryGrupos.Connection := connection.zConnection ;
            qryGrupos.Active := False ;
            qryGrupos.SQL.Clear ;
            qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_h Where sContrato = :contrato order By sNumeroPaquete') ;
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

procedure TfrmPaqueteherramientas.Copy1Click(Sender: TObject);
begin
    UtGrid.CopyRowsToClip;
end;

procedure TfrmPaqueteherramientas.edDescripcion1Enter(Sender: TObject);
begin
   edDescripcion.Color := global_color_entradaPU;
end;

procedure TfrmPaqueteherramientas.edDescripcion1Exit(Sender: TObject);
begin
  edDescripcion.Color := global_color_salidaPU;
end;

procedure TfrmPaqueteherramientas.edDescripcion1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    frmBarra1.btnAdd.SetFocus
end;

procedure TfrmPaqueteherramientas.edDescripcionEnter(Sender: TObject);
begin
     edDescripcion.Color := global_color_entradaPU;
end;

procedure TfrmPaqueteherramientas.edDescripcionExit(Sender: TObject);
begin
  edDescripcion.Color := global_color_salidaPU;
end;

procedure TfrmPaqueteherramientas.edDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tsnumeropaquete.SetFocus ;
end;

procedure TfrmPaqueteherramientas.tsIdPersonalEnter(Sender: TObject);
begin
    tsIdPersonal.Color := global_color_entradaPU;
end;

end.
