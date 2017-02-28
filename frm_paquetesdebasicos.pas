unit frm_paquetesdebasicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids, frm_barra,
  Menus, global, ExtCtrls, ImgList, ComCtrls, frxClass, frxDBSet, RXDBCtrl,
  RxLookup, ZAbstractDataset, ZDataset, ZAbstractRODataset, Newpanel, rxToolEdit,
  rxCurrEdit, UnitExcepciones,UdbGrid, frm_ActividadesAnexo2,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfrmPaquetebasicos = class(TForm)
    frmBarra1: TfrmBarra;
    ds_QryBasico: TDataSource;
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
    QryBasico: TZQuery;
    QryBasicosContrato: TStringField;
    QryBasicosNumeroPaquete: TStringField;
    QryBasicodCantidad: TFloatField;
    QryBasicosDescripcion: TStringField;
    QryBasicosMedida: TStringField;
    SumBasico: TZReadOnlyQuery;
    Paquetes_P: TZQuery;
    Panel: tNewGroupBox;
    ListaObjeto: TRxDBGrid;
    Label10: TLabel;
    edDescripcion: TMemo;
    Borrar1: TMenuItem;
    QryBasicosIdBasico: TStringField;
    InsetarCuadrillasCatalogoMaestro1: TMenuItem;
    dbgcxGrid1DBTableView1: TcxGridDBTableView;
    dbgcxGrid1Level1: TcxGridLevel;
    Grid_paquetes: TcxGrid;
    Col_basico: TcxGridDBColumn;
    Col_descripcion: TcxGridDBColumn;
    Col_medida: TcxGridDBColumn;
    Col_cantidad: TcxGridDBColumn;
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
    procedure QryBasicoAfterScroll(DataSet: TDataSet);
    procedure QryBasicoCalcFields(DataSet: TDataSet);
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
    procedure QryBasicodCantidadSetText(Sender: TField; const Text: string);
    procedure tdCantidadChange(Sender: TObject);
    procedure InsetarCuadrillasCatalogoMaestro1Click(Sender: TObject);
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
  frmPaquetebasicos: TfrmPaquetebasicos;
  sNumeroPaquete : String ;
  UtGrid:TicDbGrid;
  botonpermiso: tbotonespermisos;
  banderaagregar:boolean;
implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmPaquetebasicos.tsNumeroPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
         edDescripcion.SetFocus ;
end;

procedure TfrmPaquetebasicos.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_entradaPU;
end;

procedure TfrmPaquetebasicos.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaPU;
end;

procedure TfrmPaquetebasicos.tsIdEquipoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmPaquetebasicos.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdCantidad,key) then
      key:=#0;
    If Key = #13 then
        tsIdPersonal.SetFocus
end;

procedure TfrmPaquetebasicos.tdTotalPersonalEnter(Sender: TObject);
begin
  tdTotalPersonal.Color := global_color_entradaPU;
end;

procedure TfrmPaquetebasicos.tdTotalPersonalExit(Sender: TObject);
begin
  tdTotalPersonal.Color := global_color_salidaPU;
end;

procedure TfrmPaquetebasicos.frmBarra1btnAddClick(Sender: TObject);
begin
   If (trim(tsNumeroPaquete.Text)<>'') and (trim(edDescripcion.Text)<>'') Then
   Begin
    activapop(frmPaqueteBasicos, popupprincipal);
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
         QryBasico.Append ;
         QryBasico.FieldValues [ 'sContrato' ]   := Global_Contrato ;
         QryBasico.FieldValues['sNumeroPaquete'] := tsNumeroPaquete.Text ;
         tsDescripcion.Text := '' ;
         tsMedida.Text := '' ;
         tsIdPersonal.SetFocus ;
      except
         on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Categorias de Basicos', 'Al agregar registro', 0);
         end;
      end;
   End
   Else
   begin
       messageDLG('Para Continuar, Ingrese todos los datos del Paquete de Basico', mtInformation, [mbOk], 0);
       tsNumeroPaquete.SetFocus;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;

end;

procedure TfrmPaquetebasicos.frmBarra1btnEditClick(Sender: TObject);
begin

   If QryBasico.RecordCount > 0 Then
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
       QryBasico.Edit ;
       activapop(frmPaqueteBasicos,popupprincipal);
       except
           on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Basicos', 'Al editar registro', 0);
              frmbarra1.btnCancel.Click ;
           end;
       end ;
       tsIdPersonal.SetFocus
   End;
       grid_paquetes.Enabled:=false;
       frmbarra1.btnPrinter.Enabled:=false;
 end;



procedure TfrmPaquetebasicos.frmBarra1btnPostClick(Sender: TObject);
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


       SumBasico.Active := False ;
       SumBasico.Open ;
       If SumBasico.RecordCount > 0 Then
           tdTotalPersonal.Value := SumBasico.FieldValues['dTotal']
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

       QryBasico.Post ;
       qryGrupos := tzReadOnlyQuery.Create(Self) ;
       qryGrupos.Connection := connection.zConnection ;
       qryGrupos.Active := False ;
       qryGrupos.SQL.Clear ;
       qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_b Where sContrato = :contrato order By sNumeroPaquete') ;
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
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Basicos', 'Al salvar registro', 0);
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

procedure TfrmPaquetebasicos.frmBarra1btnCancelClick(Sender: TObject);
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
   QryBasico.Cancel ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_paquetes.Enabled:=true;
end;

procedure TfrmPaquetebasicos.frmBarra1btnDeleteClick(Sender: TObject);
begin

  If QryBasico.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from paquetesdeBasico where sContrato = :Contrato And ' +
                                      'sNumeroPaquete = :Paquete And sIdBasico = :Basico') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Paquete').Value := QryBasico.FieldValues ['sNumeroPaquete'] ;
        connection.zCommand.Params.ParamByName('Basico').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Basico').Value := QryBasico.FieldValues ['sIdBasico'] ;
        connection.zCommand.ExecSQL ;

        QryBasico.Active := False ;
        QryBasico.Open ;

        SumBasico.Active := False ;
        SumBasico.Open ;

        If SumBasico.RecordCount > 0 Then
            tdTotalPersonal.Value := SumBasico.FieldValues['dTotal']
        Else
            tdTotalPersonal.Value := 0
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Basico', 'Al eliminar registro', 0);
              frmbarra1.btnCancel.Click ;
          end;
      end
    end ;
 end;


procedure TfrmPaquetebasicos.frmBarra1btnRefreshClick(Sender: TObject);
Var
  ListItem  : TListItem;
  qryGrupos : tzReadOnlyQuery ;
begin
 try

  QryBasico.Active := False ;
  QryBasico.Open ;

  SumBasico.Active := False ;
  SumBasico.Open ;
  If SumBasico.RecordCount > 0 Then
      tdTotalPersonal.Value := SumBasico.FieldValues['dTotal']
  Else
      tdTotalPersonal.Value := 0 ;

  qryGrupos := tzReadOnlyQuery.Create(Self) ;
  qryGrupos.Connection := connection.zConnection ;
  qryGrupos.Active := False ;
  qryGrupos.SQL.Clear ;
  qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_b Where sContrato = :contrato order By sNumeroPaquete') ;
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
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Basicos', 'Al actualizar el Grid', 0);
  end;
 end;
end;

procedure TfrmPaquetebasicos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmPaquetebasicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryBasico.Cancel ;
  action := cafree ;

  botonpermiso.Free;
end;

procedure TfrmPaquetebasicos.FormShow(Sender: TObject);
Var
    ListItem: TListItem;
    qryGrupos : tzReadOnlyQuery ;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'subBasicos', PopupPrincipal);
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
  qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_b Where sContrato = :contrato order By sNumeroPaquete') ;
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

  QryBasico.Active := False ;
  tsNumeroPaquete.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmPaquetebasicos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmPaquetebasicos.InsetarCuadrillasCatalogoMaestro1Click(
  Sender: TObject);
begin
    //Primero buscamos los paquetess de basico existentes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from paquetes_b where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        try
           //Ahora insertamos los paquetes de basico del maestro..
           connection.QryBusca.Active := False;
           connection.QryBusca.SQL.Clear;
           connection.QryBusca.SQL.Add('insert into paquetes_b (sContrato, sNumeroPaquete, sDescripcion) '+
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
    connection.zCommand.SQL.Add('select distinct sIdBasico from paquetesdebasico where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sIdBasico from basicos where sContrato =:Contrato and sIdBasico =:Basico ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Basico').AsString   := connection.zCommand.FieldValues['sIdBasico'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount = 0 then
        begin
            messageDLG('No Existen Categorias de Basicos en la Orden "'+global_contrato+'" Favor de Importarlas del Catalogo Maestro!', mtInformation, [mbOk], 0);
            exit;
        end;
        connection.zCommand.Next;
    end;


    //Primero buscamos los paquetess de basicos existentes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from paquetesdebasico where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        try
           //Ahora insertamos los paquetes de basico del maestro..
           connection.QryBusca.Active := False;
           connection.QryBusca.SQL.Clear;
           connection.QryBusca.SQL.Add('insert into paquetesdebasico (sContrato, sNumeroPaquete, sIdBasico, dCantidad, mComentarios) '+
                                       'values (:Contrato, :Paquete, :Basico, :Cantidad, :Descripcion)');
           connection.QryBusca.ParamByName('Contrato').AsString    := global_contrato;
           connection.QryBusca.ParamByName('Paquete').AsString     := connection.zCommand.FieldValues['sNumeroPaquete'];
           connection.QryBusca.ParamByName('Basico').AsString      := connection.zCommand.FieldValues['sIdBasico'];
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

procedure TfrmPaquetebasicos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmPaquetebasicos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmPaquetebasicos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmPaquetebasicos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmPaquetebasicos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmPaquetebasicos.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

procedure TfrmPaquetebasicos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;


function TfrmPaquetebasicos.lExistePersonal ( sPersonal : String ) : Boolean ;
Begin
  connection.qryBusca.Active := False ;
  connection.qryBusca.SQL.Clear ;
  connection.qryBusca.SQL.Add('select sDescripcion, sMedida from Basicos where sContrato = :Contrato and sIdBasico = :Basico' ) ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Params.ParamByName('Basico').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Basico').Value := sPersonal ;
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

procedure TfrmPaquetebasicos.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmPaquetebasicos.tsIdPersonalExit(Sender: TObject);
Var
    sDescripcion : String ;
begin
  tsIdPersonal.Color := global_color_salidaPU;
  If NOT QryBasico.FieldByName('sIdBasico').IsNull Then
  Begin
      tsDescripcion.Text := '' ;
      If Trim(tsIdPersonal.Text)  <> '' then
         If Not lExistePersonal( QryBasico.FieldValues['sIdBasico'] ) then
         Begin
            sDescripcion := '%' + Trim (QryBasico.FieldValues['sIdBasico']) + '%' ;

            ListaObjeto.Columns.Clear ;
            ListaObjeto.Columns.Add ;
            ListaObjeto.Columns[0].FieldName := 'sDescripcion' ;

            BuscaObjeto.Active := False ;
            BuscaObjeto.SQL.Clear ;
            BuscaObjeto.SQL.Add('Select sIdBasico, sDescripcion, sMedida from Basicos Where ' +
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

procedure TfrmPaquetebasicos.tsNumeroPaqueteExit(Sender: TObject);
begin
  tsNumeroPaquete.Color := global_color_salidaPU;
  QryBasico.Active := False ;
  QryBasico.Params.ParamByName('Contrato').DataType := ftString ;
  QryBasico.Params.ParamByName('Contrato').Value := Global_Contrato ;
  QryBasico.Params.ParamByName('Paquete').DataType := ftString ;
  QryBasico.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  QryBasico.Open ;
  If QryBasico.RecordCount = 0 Then
      tdTotalPersonal.Value := 0 ;

  SumBasico.Active := False ;
  SumBasico.Params.ParamByName('Contrato').DataType := ftString ;
  SumBasico.Params.ParamByName('Contrato').Value := Global_Contrato ;
  SumBasico.Params.ParamByName('Paquete').DataType := ftString ;
  SumBasico.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  SumBasico.Open ;

  If SumBasico.RecordCount > 0 Then
      tdTotalPersonal.Value := SumBasico.FieldValues['dTotal']
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


procedure TfrmPaquetebasicos.ListaObjetoDblClick(Sender: TObject);
begin
    tsIdPersonal.SetFocus
end;

procedure TfrmPaquetebasicos.ListaObjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdPersonal.SetFocus
end;

procedure TfrmPaquetebasicos.ListaObjetoExit(Sender: TObject);
begin
    If Panel.Visible = True Then
    Begin
        If BuscaObjeto.RecordCount > 0 Then
        Begin
            if (QryBasico.State = dsEdit) or (QryBasico.State = dsInsert) then begin
                QryBasico.FieldValues['sIdBasico'] := BuscaObjeto.FieldValues['sIdBasico'] ;
                tsDescripcion.Text := BuscaObjeto.FieldValues['sDescripcion'] ;
                tsMedida.Text := BuscaObjeto.FieldValues['sMedida'] ;
            end;
            tdCantidad.SetFocus
        End ;
        Panel.Visible := False ;
    End
end;

procedure TfrmPaquetebasicos.Panel_GruposClick(Sender: TObject);
Var
    ListItem  : TListItem;
    qryGrupos : tzReadOnlyQuery ;
begin
    If Panel_Grupos.ItemIndex >= 0 Then
    Begin
     try
        frmBarra1.btnCancel.Click ;
        tsNumeroPaquete.Text := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
        QryBasico.Active := False ;
        QryBasico.Params.ParamByName('Contrato').DataType := ftString ;
        QryBasico.Params.ParamByName('Contrato').Value := Global_Contrato ;
        QryBasico.Params.ParamByName('Paquete').DataType := ftString ;
        QryBasico.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;

        QryBasico.Open ;

        SumBasico.Active := False ;
        SumBasico.Params.ParamByName('Contrato').DataType := ftString ;
        SumBasico.Params.ParamByName('Contrato').Value := Global_Contrato ;
        SumBasico.Params.ParamByName('Paquete').DataType := ftString ;
        SumBasico.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
        SumBasico.Open ;

        If SumBasico.RecordCount > 0 Then
            tdTotalPersonal.Value := SumBasico.FieldValues['dTotal']
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
            If QryBasico.RecordCount = 0 then
                Paquetes_P.Delete
        End ;

        qryGrupos := tzReadOnlyQuery.Create(Self) ;
        qryGrupos.Connection := connection.zConnection ;
        qryGrupos.Active := False ;
        qryGrupos.SQL.Clear ;
        qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_b Where sContrato = :contrato order By sNumeroPaquete') ;
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
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Basicos', 'Al manipular el panel.', 0);
       end;
     end;
    End

end;

procedure TfrmPaquetebasicos.Paste1Click(Sender: TObject);
begin
  try
    UtGrid.AddRowsFromClip;
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Basicos', 'Al pegar registro', 0);
   end;
  end;
end;

procedure TfrmPaquetebasicos.tsNumeroPaqueteEnter(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;
    tsNumeroPaquete.Color := global_color_entradaPU;
end;

procedure TfrmPaquetebasicos.grid_paquetesEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True Then
      frmBarra1.btnCancel.Click ;

  If QryBasico.RecordCount > 0 then
  Begin
       tsDescripcion.Text := QryBasico.FieldValues ['sDescripcion'] ;
       tsMedida.Text :=  QryBasico.FieldValues ['sMedida'] ;
  End
  Else
  Begin
       tsDescripcion.Text := '' ;
       tsMedida.Text := '' ;
  End
end;

procedure TfrmPaquetebasicos.Grid_PaquetesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPaquetebasicos.Grid_PaquetesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPaquetebasicos.Grid_PaquetesTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column); 
end;

procedure TfrmPaquetebasicos.QryBasicoAfterScroll(DataSet: TDataSet);
begin
  If frmBarra1.btnCancel.Enabled = False Then
      If QryBasico.RecordCount > 0 then
      Begin
           tsDescripcion.Text := QryBasico.FieldValues ['sDescripcion'] ;
           tsMedida.Text :=  QryBasico.FieldValues ['sMedida'] ;
      End
      Else
      Begin
           tsDescripcion.Text := '' ;
           tsMedida.Text := '' ;
      End
end;

procedure TfrmPaquetebasicos.QryBasicoCalcFields(DataSet: TDataSet);
begin
  connection.qryBusca.Active := False ;
  connection.qryBusca.SQL.Clear ;
  connection.qryBusca.SQL.Add('select sDescripcion, sMedida from Basicos where sContrato = :Contrato and sIdBasico = :Basico' ) ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Params.ParamByName('Basico').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Basico').Value := QryBasicosIdBasico.Text ;
  connection.qryBusca.Open ;
  if connection.qryBusca.RecordCount > 0 then
  Begin
      QryBasicosDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'] ;
      QryBasicosMedida.Text := connection.qryBusca.FieldValues['sMedida'] ;
  End
  else
  Begin
      QryBasicosDescripcion.Text := '' ;
      QryBasicosMedida.Text := '' ;
  end

end;

procedure TfrmPaquetebasicos.QryBasicodCantidadSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0)); 
end;

procedure TfrmPaquetebasicos.tdCantidadChange(Sender: TObject);
begin
tdbeditchangef(tdCantidad,'Cantidad');
end;

procedure TfrmPaquetebasicos.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaPU;
end;

procedure TfrmPaquetebasicos.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaPU;
end;

procedure TfrmPaquetebasicos.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      edDescripcion.SetFocus ;
end;

procedure TfrmPaquetebasicos.tsMedidaEnter(Sender: TObject);
begin
  tsMedida.Color := global_color_entradaPU;
end;

procedure TfrmPaquetebasicos.tsMedidaExit(Sender: TObject);
begin
  tsMedida.Color := global_color_salidaPU;
end;

procedure TfrmPaquetebasicos.Borrar1Click(Sender: TObject);
var
  sNumeroPaquete: string;
begin
  If Panel_Grupos.ItemIndex >= 0 Then
  Begin
    if MessageDlg('Desea eliminar el Paquete Basico?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      sNumeroPaquete := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption;
      try
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('DELETE FROM paquetesdebasico ' +
                                    'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.zCommand.ExecSQL ;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('DELETE FROM paquetes_b ' +
                                    'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.zCommand.ExecSQL ;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquete de Basicos', 'Al eliminar cuadrilla', 0);
        end;
      end;
      Panel_Gruposclick(nil);//refrescar datos
    end;
  End;
end;

procedure TfrmPaquetebasicos.Copiar1Click(Sender: TObject);
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
        connection.qryBusca.SQL.Add('Select sContrato From paquetes_b Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
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
            connection.qryBusca.SQL.Add('Select * From paquetesdebasico Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
            connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Paquete').Value := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
            connection.qryBusca.Open ;
            While NOT connection.qryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'INSERT INTO paquetesdebasico ( sContrato, sNumeroPaquete, sIdBasico, dCantidad) ' +
                                              ' VALUES (:contrato, :Paquete, :Basico, :Cantidad)') ;
                Connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                Connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('Paquete').value := sNumeroPaquete ;
                Connection.zCommand.Params.ParamByName('Basico').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('Basico').value := connection.qryBusca.FieldValues['sIdBasico'] ;
                Connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                Connection.zCommand.Params.ParamByName('Cantidad').value := connection.qryBusca.FieldValues['dCantidad'] ;
                connection.zCommand.ExecSQL ;
                connection.qryBusca.Next
            End ;

            qryGrupos := tzReadOnlyQuery.Create(Self) ;
            qryGrupos.Connection := connection.zConnection ;
            qryGrupos.Active := False ;
            qryGrupos.SQL.Clear ;
            qryGrupos.SQL.Add('select sNumeroPaquete from paquetes_b Where sContrato = :contrato order By sNumeroPaquete') ;
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

procedure TfrmPaquetebasicos.Copy1Click(Sender: TObject);
begin
    UtGrid.CopyRowsToClip;
end;

procedure TfrmPaquetebasicos.edDescripcion1Enter(Sender: TObject);
begin
   edDescripcion.Color := global_color_entrada ;
end;

procedure TfrmPaquetebasicos.edDescripcion1Exit(Sender: TObject);
begin
  edDescripcion.Color := global_color_salida ;
end;

procedure TfrmPaquetebasicos.edDescripcion1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    frmBarra1.btnAdd.SetFocus
end;

procedure TfrmPaquetebasicos.edDescripcionEnter(Sender: TObject);
begin
     edDescripcion.Color := global_color_entradaPU ;
end;

procedure TfrmPaquetebasicos.edDescripcionExit(Sender: TObject);
begin
  edDescripcion.Color := global_color_salidaPU;
end;

procedure TfrmPaquetebasicos.edDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tsnumeropaquete.SetFocus ;
end;

procedure TfrmPaquetebasicos.tsIdPersonalEnter(Sender: TObject);
begin
    tsIdPersonal.Color := global_color_entradaPU ;
end;

end.
