unit frm_paquetesdeequipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids, frm_barra,
  Menus, global, ExtCtrls, ImgList, ComCtrls, frxClass, frxDBSet, RxLookup,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, RXDBCtrl, Newpanel, frm_PopUpPaquetes_e,
  UnitExcepciones, UnitTBotonesPermisos, udbgrid, UnitValidaTexto,
  unitactivapop, UnitValidacion, FormAutoScaler, cxGraphics, cxControls,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmPaqueteEquipo = class(TForm)
    frmBarra1: TfrmBarra;
    ds_QryEquipos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    tsIdEquipo: TDBEdit;
    Label3: TLabel;
    tdCantidad: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    tsDescripcion: TEdit;
    tsMedida: TEdit;
    tiJornada: TEdit;
    TsNumeroPaquete: TEdit;
    ds_buscaobjeto: TDataSource;
    Panel_Grupos: TListView;
    ImageGrupos: TImageList;
    ds_paquetes_p: TDataSource;
    ds_pernoctan: TDataSource;
    Label9: TLabel;
    tsIdPernocta: TRxDBLookupCombo;
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
    Pernoctan: TZReadOnlyQuery;
    QryEquipos: TZQuery;
    QryEquipossContrato: TStringField;
    QryEquipossNumeroPaquete: TStringField;
    QryEquipossIdEquipo: TStringField;
    QryEquiposdCantidad: TFloatField;
    QryEquipossDescripcion: TStringField;
    QryEquiposiJornada: TIntegerField;
    QryEquipossMedida: TStringField;
    BuscaObjeto: TZReadOnlyQuery;
    grupos: TZReadOnlyQuery;
    Paquetes_E: TZQuery;
    Panel: tNewGroupBox;
    ListaObjeto: TRxDBGrid;
    Borrar1: TMenuItem;
    Editar2: TMenuItem;
    InsertarCuadrillasCatalogoMaestro1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    dbgcxGrid1DBTableView1: TcxGridDBTableView;
    dbgcxGrid1Level1: TcxGridLevel;
    Grid_1: TcxGrid;
    Col_equipo: TcxGridDBColumn;
    Col_descripcion: TcxGridDBColumn;
    Col_medida: TcxGridDBColumn;
    Col_jornada: TcxGridDBColumn;
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
    procedure tsIdEquipoExit(Sender: TObject);
    function  lExisteEquipo ( sEquipo : String ) : Boolean ;
    procedure TsNumeroPaqueteExit(Sender: TObject);
    procedure tsIdEquipoEnter(Sender: TObject);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoKeyPress(Sender: TObject; var Key: Char);
    procedure ListaObjetoExit(Sender: TObject);
    procedure Panel_GruposClick(Sender: TObject);
    procedure TsNumeroPaqueteEnter(Sender: TObject);
    procedure tsIdPernoctaEnter(Sender: TObject);
    procedure tsIdPernoctaExit(Sender: TObject);
    procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure QryEquiposAfterScroll(DataSet: TDataSet);
    procedure QryEquiposCalcFields(DataSet: TDataSet);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure grid_paquetesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure grid_paquetesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_paquetesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_paquetesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure Editar2Click(Sender: TObject);
    procedure QryEquiposdCantidadSetText(Sender: TField; const Text: string);
    procedure QryEquiposiJornadaSetText(Sender: TField; const Text: string);
    procedure tiJornadaKeyPress(Sender: TObject; var Key: Char);
    procedure tiJornadaEnter(Sender: TObject);
    procedure tiJornadaExit(Sender: TObject);
    procedure tiJornadaChange(Sender: TObject);
    procedure tdCantidadChange(Sender: TObject);
    procedure InsertarCuadrillasCatalogoMaestro1Click(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tsMedidaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaqueteEquipo: TfrmPaqueteEquipo;
  sNumeroPaquete : String ;
  BotonesPermisos: TBotonesPermisos; 
  UtGrid:TicDbGrid;
  banderaAgregar:boolean;
implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmPaqueteEquipo.tsNumeroPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsIdPernocta.SetFocus 
end;

procedure TfrmPaqueteEquipo.tsIdEquipoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmPaqueteEquipo.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not keyFiltroTdbedit(tdCantidad, key)  then
      key:=#0;
    If Key = #13 then
       tsIdEquipo.SetFocus
end;

procedure TfrmPaqueteEquipo.tiJornadaChange(Sender: TObject);
begin
  teditchangef(tiJornada, 'Jornada')
end;

procedure TfrmPaqueteEquipo.tiJornadaEnter(Sender: TObject);
begin
  tiJornada.Color:=global_color_entradaERP
end;

procedure TfrmPaqueteEquipo.tiJornadaExit(Sender: TObject);
begin
tiJornada.Color:=global_color_salidaPU;
end;

procedure TfrmPaqueteEquipo.tiJornadaKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTedit(tiJornada, key) then
  key:=#0;
  if key=#13 then
    tdCantidad.SetFocus
end;

procedure TfrmPaqueteEquipo.frmBarra1btnAddClick(Sender: TObject);
begin
   activapop(frmPaqueteEquipo, popupprincipal);
   If (tsNumeroPaquete.Text <> '') And (QryEquipos.Active)  and (trim(tsIdPernocta.text)<>'') Then
   Begin

       banderaAgregar:=true;
       frmBarra1.btnAddClick(Sender);
       frmBarra1.btnPrinter.Enabled := False;
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       QryEquipos.Append ;
       QryEquipos.FieldValues [ 'sContrato' ]  := Global_Contrato ;
       tsDescripcion.Text := '' ;
       tsMedida.Text := '' ;
       tiJornada.Text := '' ;
       tsIdEquipo.SetFocus
   End
   Else
   begin
       tsNumeroPaquete.SetFocus;
       messageDLG('Para continuar Favor de LLenar los datos del Paquete.', mtInformation, [mbOk], 0);
   end;
   BotonesPermisos.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;

end;

procedure TfrmPaqueteEquipo.frmBarra1btnEditClick(Sender: TObject);
begin

  banderaagregar:=false;
   If tsNumeroPaquete.Text <> '' Then
   Begin
       activapop(frmPaqueteEquipo, popupprincipal);
       frmBarra1.btnEditClick(Sender);
       frmBarra1.btnPrinter.Enabled := False;
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       try
           QryEquipos.Edit ;
       except
           on e : exception do begin
               UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquetes de Equipo', 'Al editar registro', 0);
               frmbarra1.btnCancel.Click ;
           end;
       end ;
       tsIdEquipo.SetFocus
   End;
   BotonesPermisos.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
  
end;

procedure TfrmPaqueteEquipo.frmBarra1btnPostClick(Sender: TObject);
Var
    ListItem: TListItem;
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');nombres.Add('Medidas');
  nombres.Add('Jornada');nombres.Add('Cantidad');
  cadenas.Add(tsDescripcion.Text);cadenas.Add(tsMedida.Text);
  cadenas.Add(tiJornada.Text);cadenas.Add(tdCantidad.Text);
  if not validaTexto(nombres, cadenas, 'Equipo', tsIdEquipo.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos
  Try
       QryEquipos.FieldValues [ 'sNumeroPaquete' ]  := tsNumeroPaquete.Text ;
       QryEquipos.Post ;
       QryEquipos.Refresh ;
       If Paquetes_E.RecordCount > 0 Then
       Begin
          Paquetes_E.Edit ;
          Paquetes_E.FieldValues['sIdPernocta'] := tsIdPernocta.KeyValue ;
          Paquetes_E.Post
       End
       Else
       Begin
          Paquetes_E.Append ;
          Paquetes_E.FieldValues['sContrato'] := global_contrato ;
          Paquetes_E.FieldValues['sNumeroPaquete'] := tsNumeroPaquete.Text ;
          Paquetes_E.FieldValues['sIdPernocta'] := tsIdPernocta.KeyValue ;
          Paquetes_E.FieldValues['sDescripcion']  := '' ;
          Paquetes_E.Post
       End ;

       Grupos.refresh ;
       Panel_Grupos.Items.Clear ;
       If Grupos.RecordCount > 0 Then
       Begin
          with Panel_Grupos do
          begin
              Grupos.First ;
              While NOT Grupos.Eof Do
              Begin
                  ListItem := Items.Add;
                  ListItem.Caption := Grupos.FieldValues['sNumeroPaquete'] ;
                  ListItem.ImageIndex := 0;
                  Grupos.Next
              End
           End
       End ;

       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       frmBarra1.btnPostClick(Sender);
       frmBarra1.btnPrinter.Enabled := False;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquetes de Equipo', 'Al salvar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
  end;
  desactivapop(popupprincipal);
  BotonesPermisos.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;

  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmPaqueteEquipo.frmBarra1btnCancelClick(Sender: TObject);
begin
   desactivapop(popupprincipal);
   tsDescripcion.Text := '' ;
   tsMedida.Text := '' ;
   tiJornada.Text := '' ;
   frmBarra1.btnCancelClick(Sender);
   frmBarra1.btnPrinter.Enabled := False;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   QryEquipos.Cancel ;
   BotonesPermisos.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
  
end;

procedure TfrmPaqueteEquipo.frmBarra1btnDeleteClick(Sender: TObject);
begin
try
  If QryEquipos.RecordCount  > 0 then
    If MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        QryEquipos.Delete
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquetes de Equipo', 'Al eliminar registro', 0);
          frmbarra1.btnCancel.Click ;
        end;
      end
    end;
except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquetes de Equipo', 'Al eliminar registro', 0);

        end;
end;
end;

procedure TfrmPaqueteEquipo.frmBarra1btnRefreshClick(Sender: TObject);
Var
    ListItem: TListItem;
begin
 try
  QryEquipos.refresh ;
  Grupos.refresh ;
  Panel_Grupos.Items.Clear ;
  If Grupos.RecordCount > 0 Then
  Begin
      with Panel_Grupos do
      begin
          Grupos.First ;
          While NOT Grupos.Eof Do
          Begin
              ListItem := Items.Add;
              ListItem.Caption := Grupos.FieldValues['sNumeroPaquete'] ;
              ListItem.ImageIndex := 0;
              Grupos.Next
          End
       End
  End ;
 except
 on e : exception do begin
 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquetes de Equipo', 'Al actualizar registro', 0);
 end;

 end;
end;

procedure TfrmPaqueteEquipo.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmPaqueteEquipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonesPermisos.Free;
  QryEquipos.Cancel ;
  action := cafree ;

end;

procedure TfrmPaqueteEquipo.FormCreate(Sender: TObject);
begin
  BotonesPermisos := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPaquetesEq', PopupPrincipal);
end;

procedure TfrmPaqueteEquipo.FormShow(Sender: TObject);
Var
    ListItem: TListItem;
begin

  OpcButton := '' ;
  sNumeroPaquete := '' ;
  tsDescripcion.Text := '' ;
  tsMedida.Text := '' ;
  tiJornada.Text := '' ;
  frmbarra1.btnCancel.Click ;
  frmBarra1.btnPrinter.Enabled := False;

  Pernoctan.Active := False ;
  Pernoctan.Open ;

  Grupos.Active := False ;
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
              ListItem.Caption := Grupos.FieldValues['sNumeroPaquete'] ;
              ListItem.ImageIndex := 0;
              Grupos.Next
          End
       End
  End ;
  QryEquipos.Active := False ;
  tsNumeroPaquete.SetFocus;

  BotonesPermisos.permisosBotones(frmBarra1);

  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmPaqueteEquipo.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click;
end;

procedure TfrmPaqueteEquipo.InsertarCuadrillasCatalogoMaestro1Click(
  Sender: TObject);
begin
    //Primero buscamos los paquetess de equipo existentes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from paquetes_e where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        try
           //Ahora insertamos los paquetes de equipo del maestro..
           connection.QryBusca.Active := False;
           connection.QryBusca.SQL.Clear;
           connection.QryBusca.SQL.Add('insert into paquetes_e (sContrato, sNumeroPaquete, sDescripcion, sIdPernocta) '+
                                       'values (:Contrato, :Paquete, :Descripcion, :Pernocta)');
           connection.QryBusca.ParamByName('Contrato').AsString    := global_contrato;
           connection.QryBusca.ParamByName('Paquete').AsString     := connection.zCommand.FieldValues['sNumeroPaquete'];
           connection.QryBusca.ParamByName('Descripcion').AsString := connection.zCommand.FieldValues['sDescripcion'];
           connection.QryBusca.ParamByName('Pernocta').AsString    := connection.zCommand.FieldValues['sIdPernocta'];
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
    connection.zCommand.SQL.Add('select distinct sIdEquipo from paquetesdeequipo where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sIdEquipo from equipos where sContrato =:Contrato and sIdEquipo =:Equipo ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Equipo').AsString := connection.zCommand.FieldValues['sIdEquipo'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount = 0 then
        begin
            messageDLG('No Existen Categorias de Equipo en la Orden "'+global_contrato+'" Favor de Importarlas del Catalogo Maestro!', mtInformation, [mbOk], 0);
            exit;
        end;
        connection.zCommand.Next;
    end;


    //Primero buscamos los paquetess de equipo existentes..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from paquetesdeequipo where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := connection.contrato.FieldValues['sCodigo'];
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        try
           //Ahora insertamos los paquetes de equipo del maestro..
           connection.QryBusca.Active := False;
           connection.QryBusca.SQL.Clear;
           connection.QryBusca.SQL.Add('insert into paquetesdeequipo (sContrato, sNumeroPaquete, sIdEquipo, dCantidad) '+
                                       'values (:Contrato, :Paquete, :Equipo, :Cantidad)');
           connection.QryBusca.ParamByName('Contrato').AsString  := global_contrato;
           connection.QryBusca.ParamByName('Paquete').AsString   := connection.zCommand.FieldValues['sNumeroPaquete'];
           connection.QryBusca.ParamByName('Equipo').AsString    := connection.zCommand.FieldValues['sIdEquipo'];
           connection.QryBusca.ParamByName('Cantidad').AsFloat   := connection.zCommand.FieldValues['dCantidad'];
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

procedure TfrmPaqueteEquipo.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click;
end;

procedure TfrmPaqueteEquipo.Editar2Click(Sender: TObject);
var
  sNumeroPaquete1, sNumeroPaquete2: String;
  popUp: TfrmPopUpPaquetes_e;
begin
  If Panel_Grupos.ItemIndex >= 0 Then
  Begin
    sNumeroPaquete1 := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption;

    connection.qryBusca.Active := False ;
    connection.qryBusca.SQL.Clear ;
    connection.qryBusca.SQL.Add('Select * From paquetes_e Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Paquete').Value := sNumeroPaquete1 ;
    connection.qryBusca.Open ;

    if connection.qryBusca.RecordCount > 0 then
    begin
      popUp := TfrmPopUpPaquetes_e.Create(self);
      popUp.tsNumeroPaquete.Text := sNumeroPaquete1;
      popUp.tsIdPernocta.Value := connection.qryBusca.FieldByName('sIdPernocta').AsString;
      if popUp.ShowModal = mrOk then
      begin
        sNumeroPaquete2 := popUp.tsNumeroPaquete.Text;

        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('Select sContrato From paquetes_e Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
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
            connection.zCommand.SQL.Add('UPDATE paquetes_e SET sNumeroPaquete = :nuevoNombre, ' +
                                        'sIdPernocta = :IdPernocta ' +
                                        'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
            connection.zCommand.ParamByName('nuevoNombre').Value := sNumeroPaquete2 ;
            connection.zCommand.ParamByName('IdPernocta').Value := popUp.tsIdPernocta.Value ;
            connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
            connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete1 ;
            connection.zCommand.ExecSQL ;

            if sNumeroPaquete1 <> sNumeroPaquete2 then //cambio el ID
            begin
              //impactar tabla dependiente
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add('UPDATE paquetesdeequipo SET sNumeroPaquete = :nuevoNombre Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
              connection.zCommand.Params.ParamByName('nuevoNombre').DataType := ftString ;
              connection.zCommand.Params.ParamByName('nuevoNombre').Value := sNumeroPaquete2 ;
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
              connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Paquete').Value := sNumeroPaquete1 ;
              connection.zCommand.ExecSQL ;
              Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption := sNumeroPaquete2;
            end;

          except
            on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquetes de Equipo', 'Al editar datos de cuadrilla', 0);
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

procedure TfrmPaqueteEquipo.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click;
end;

procedure TfrmPaqueteEquipo.Borrar1Click(Sender: TObject);
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
        connection.zCommand.SQL.Add('DELETE FROM paquetes_e ' +
                                    'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.zCommand.ExecSQL ;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('DELETE FROM paquetesdeequipo ' +
                                    'Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        connection.zCommand.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.ParamByName('Paquete').Value := sNumeroPaquete ;
        connection.zCommand.ExecSQL ;

        Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Delete;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquetes de Equipo', 'Al eliminar cuadrilla', 0);
        end;
      end;
      Panel_Gruposclick(nil);//refrescar datos
      frmBarra1btnRefreshClick(nil);
    end;
  End;
end;

procedure TfrmPaqueteEquipo.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click;
end;

procedure TfrmPaqueteEquipo.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click;
end;

procedure TfrmPaqueteEquipo.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click;
end;

procedure TfrmPaqueteEquipo.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click;
end;

procedure TfrmPaqueteEquipo.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click;
end;

procedure TfrmPaqueteEquipo.tsIdEquipoExit(Sender: TObject);
Var
  sDescripcion : String ;
begin
  tsIdEquipo.Color := global_color_salidaPU ;
  If NOT QryEquipos.FieldByName('sIdEquipo').IsNull Then
  Begin
      tsDescripcion.Text := '' ;
          If Trim(QryEquipos.FieldValues['sIdEquipo'])  <> '' then
             If Not lExisteEquipo( QryEquipos.FieldValues['sIdEquipo'] ) then
             Begin
                sDescripcion := '%' + Trim (QryEquipos.FieldValues['sIdEquipo']) + '%' ;
                ListaObjeto.Columns.Clear ;
                ListaObjeto.Columns.Add ;
                ListaObjeto.Columns[0].FieldName := 'sDescripcion' ;

                BuscaObjeto.Active := False ;
                BuscaObjeto.SQL.Clear ;
                BuscaObjeto.SQL.Add('Select sIdEquipo, sDescripcion, sMedida, iJornada from equipos Where ' +
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


function TfrmPaqueteEquipo.lExisteEquipo ( sEquipo : String ) : Boolean ;
Begin
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('select sDescripcion, sMedida, iJornada from equipos where sContrato = :Contrato and sIdEquipo = :Equipo' ) ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Equipo').Value := sEquipo ;
  Connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString ;
  Connection.qryBusca.Open ;
  if Connection.qryBusca.RecordCount > 0 then
  Begin
      tsDescripcion.Text := Connection.qryBusca.FieldValues['sDescripcion'] ;
      tsMedida.Text := Connection.qryBusca.FieldValues['sMedida'] ;
      tiJornada.Text := Connection.qryBusca.FieldValues['iJornada'] ;
      lExisteEquipo := True
  End
  else
  Begin
      tsDescripcion.Text := '' ;
      tsMedida.Text := '' ;
      tiJornada.Text := '' ;
      lExisteEquipo := False
  end
End ;

procedure TfrmPaqueteEquipo.TsNumeroPaqueteExit(Sender: TObject);
begin
  tsNumeroPaquete.Color := global_color_salidaPU ;
  QryEquipos.Active := False ;
  QryEquipos.Params.ParamByName('Contrato').DataType := ftString ;
  QryEquipos.Params.ParamByName('Contrato').Value := Global_Contrato ;
  QryEquipos.Params.ParamByName('Paquete').DataType := ftString ;
  QryEquipos.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  QryEquipos.Open ;

  Paquetes_E.Active := False ;
  Paquetes_E.Params.ParamByName('Contrato').DataType := ftString ;
  Paquetes_E.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Paquetes_E.Params.ParamByName('Paquete').DataType := ftString ;
  Paquetes_E.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
  Paquetes_E.Open ;
  If Paquetes_E.RecordCount > 0 Then
      tsIdPernocta.KeyValue := Paquetes_E.FieldValues['sIdPernocta']

end;

procedure TfrmPaqueteEquipo.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmPaqueteEquipo.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaPU;
end;

procedure TfrmPaqueteEquipo.tsIdEquipoEnter(Sender: TObject);
begin
    tsIdEquipo.Color := global_color_entradaERP
end;

procedure TfrmPaqueteEquipo.ListaObjetoDblClick(Sender: TObject);
begin
    tsIdEquipo.SetFocus
end;

procedure TfrmPaqueteEquipo.ListaObjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdEquipo.SetFocus
end;

procedure TfrmPaqueteEquipo.ListaObjetoExit(Sender: TObject);
begin
    If Panel.Visible = True Then
    Begin
        If BuscaObjeto.RecordCount > 0 Then
        Begin
            if (QryEquipos.State = dsEdit) or (QryEquipos.State = dsInsert) then begin
                QryEquipos.FieldValues['sIdEquipo'] := BuscaObjeto.FieldValues['sIdEquipo'] ;
                tsDescripcion.Text := BuscaObjeto.FieldValues['sDescripcion'] ;
                tsMedida.Text := BuscaObjeto.FieldValues['sMedida'] ;
                tiJornada.Text := BuscaObjeto.FieldValues['iJornada'] ;
            end;
            tdCantidad.SetFocus ;
        End ;
        Panel.Visible := False ;
    End
end;

procedure TfrmPaqueteEquipo.Panel_GruposClick(Sender: TObject);
Var
    ListItem: TListItem;
begin
    If Panel_Grupos.ItemIndex >= 0 Then
    Begin
        frmBarra1.btnCancel.Click ;
        tsNumeroPaquete.Text := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
        QryEquipos.Active := False ;
        QryEquipos.Params.ParamByName('Contrato').DataType := ftString ;
        QryEquipos.Params.ParamByName('Contrato').Value := Global_Contrato ;
        QryEquipos.Params.ParamByName('Paquete').DataType := ftString ;
        QryEquipos.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
        QryEquipos.Open ;

        Paquetes_E.Active := False ;
        Paquetes_E.Params.ParamByName('Contrato').DataType := ftString ;
        Paquetes_E.Params.ParamByName('Contrato').Value := Global_Contrato ;
        Paquetes_E.Params.ParamByName('Paquete').DataType := ftString ;
        PaQuetes_E.Params.ParamByName('Paquete').Value := tsNumeroPaquete.Text ;
        Paquetes_E.Open ;

        If Paquetes_E.RecordCount > 0 Then
            If QryEquipos.RecordCount = 0 then
            Begin
                Paquetes_E.Delete ;
                Grupos.refresh ;
                Panel_Grupos.Items.Clear ;
                If Grupos.RecordCount > 0 Then
                Begin
                    with Panel_Grupos do
                    begin
                        Grupos.First ;
                        While NOT Grupos.Eof Do
                        Begin
                            ListItem := Items.Add;
                            ListItem.Caption := Grupos.FieldValues['sNumeroPaquete'] ;
                            ListItem.ImageIndex := 0;
                            Grupos.Next
                        End
                    End
                End
            End
            Else
                If Paquetes_E.RecordCount > 0 Then
                  tsIdPernocta.KeyValue := Paquetes_E.FieldValues['sIdPernocta'] ;
        
    End
End ;

procedure TfrmPaqueteEquipo.Paste1Click(Sender: TObject);
begin
try
utGrid.AddRowsFromClip;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Paquetes de Equipo', 'Al pegar registro', 0);
end;
end;
end;

procedure TfrmPaqueteEquipo.TsNumeroPaqueteEnter(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;
    tsNumeroPaquete.Color := global_color_entradaPU;
end;
procedure TfrmPaqueteEquipo.tsIdPernoctaEnter(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;
    tsIdPernocta.Color := global_color_entradaPU;
end;

procedure TfrmPaqueteEquipo.tsIdPernoctaExit(Sender: TObject);
begin
    tsIdPernocta.Color := global_color_salidaPU;
end;

procedure TfrmPaqueteEquipo.tsIdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        frmBarra1.btnAdd.SetFocus
end;

procedure TfrmPaqueteEquipo.tsMedidaEnter(Sender: TObject);
begin
  tsMedida.Color := global_color_entradaPU;
end;

procedure TfrmPaqueteEquipo.tsMedidaExit(Sender: TObject);
begin
  tsMedida.Color := global_color_salidaPU;
end;

procedure TfrmPaqueteEquipo.QryEquiposAfterScroll(DataSet: TDataSet);
begin
  If frmBarra1.btnCancel.Enabled = False Then
      If QryEquipos.RecordCount > 0 then
      Begin
           tsDescripcion.Text := QryEquipos.FieldValues ['sDescripcion'] ;
           tsMedida.Text :=  QryEquipos.FieldValues ['sMedida'] ;
           tiJornada.Text :=  QryEquipos.FieldValues ['iJornada'] ;
      End
      Else
      Begin
          tsDescripcion.Text := '' ;
          tsMedida.Text := '' ;
          tiJornada.Text := '' ;
      End
end;

procedure TfrmPaqueteEquipo.QryEquiposCalcFields(DataSet: TDataSet);
begin
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('select sDescripcion, sMedida, iJornada from equipos where sContrato = :Contrato and sIdEquipo = :Equipos' ) ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca.Params.ParamByName('Equipos').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Equipos').Value := QryEquipossIdEquipo.Text ;
  Connection.qryBusca.Open ;
  if Connection.qryBusca.RecordCount > 0 then
  Begin
      QryEquipossDescripcion.Text := Connection.qryBusca.FieldValues['sDescripcion'] ;
      QryEquipossMedida.Text := Connection.qryBusca.FieldValues['sMedida'] ;
      QryEquiposiJornada.Value := Connection.qryBusca.FieldValues['iJornada'] ;
  End
  else
  Begin
      QryEquipossDescripcion.Text := '' ;
      QryEquipossMedida.Text := '' ;
      QryEquiposiJornada.Value := 0 ;
  end

end;

procedure TfrmPaqueteEquipo.QryEquiposdCantidadSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmPaqueteEquipo.QryEquiposiJornadaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmPaqueteEquipo.tdCantidadChange(Sender: TObject);
begin
  tdbeditchangef(tdCantidad, 'Cantidad');  
end;

procedure TfrmPaqueteEquipo.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaPU;
end;

procedure TfrmPaqueteEquipo.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaPU;
end;

procedure TfrmPaqueteEquipo.Copiar1Click(Sender: TObject);
Var
    sNumeroPaquete : String ;
    ListItem: TListItem;
begin
    If Panel_Grupos.ItemIndex >= 0 Then
    Begin
        frmBarra1.btnCancel.Click ;
        sNumeroPaquete := UPPERCASE(InputBox('Inteligent','Nombre del nuevo paquete?', '')) ;
        if sNumeroPaquete = '' then
          exit;
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sContrato From paquetes_e Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Paquete').Value := sNumeroPaquete ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount = 0 Then
        Begin
            Paquetes_E.Cancel;
            Paquetes_E.Append ;
            Paquetes_E.FieldValues['sContrato'] := global_contrato ;
            Paquetes_E.FieldValues['sNumeroPaquete'] := sNumeroPaquete ;
            If tsIdPernocta.Text <> '' Then
                Paquetes_E.FieldValues['sIdPernocta'] := tsIdPernocta.KeyValue ;
            Paquetes_E.FieldValues['sDescripcion']  := '' ;
            try
                Paquetes_E.Post ;
            except
                MessageDlg('Ocurrio un error al intentar copiar el paquete.'+#10+
                'Asegurse de que se tiene elegido un paquete.', mtInformation, [mbOk], 0);
                exit;
            end;

            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select * From paquetesdeequipo Where sContrato = :Contrato And sNumeroPaquete = :Paquete') ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Paquete').Value := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
            Connection.qryBusca.Open ;
            While NOT Connection.qryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'INSERT INTO paquetesdeequipo ( sContrato, sNumeroPaquete, sIdEquipo, dCantidad) ' +
                                              ' VALUES (:contrato, :Paquete, :Equipo, :Cantidad)') ;
                Connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                Connection.zCommand.Params.ParamByName('Paquete').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('Paquete').value := sNumeroPaquete ;
                Connection.zCommand.Params.ParamByName('Equipo').DataType := ftString ;
                Connection.zCommand.Params.ParamByName('Equipo').value := Connection.qryBusca.FieldValues['sIdEquipo'] ;
                Connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                Connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues['dCantidad'] ;
                connection.zCommand.ExecSQL ;
                Connection.qryBusca.Next
            End ;
           Grupos.refresh ;
           Panel_Grupos.Items.Clear ;
           If Grupos.RecordCount > 0 Then
           Begin
              with Panel_Grupos do
              begin
                  Grupos.First ;
                  While NOT Grupos.Eof Do
                  Begin
                      ListItem := Items.Add;
                      ListItem.Caption := Grupos.FieldValues['sNumeroPaquete'] ;
                      ListItem.ImageIndex := 0;
                      Grupos.Next
                  End
               End
           End
        End
        Else
          MessageDlg('El nombre del paquete seleccionado existe, seleccione otro nombre al paquete.', mtWarning, [mbOk], 0);

    End;
end;

procedure TfrmPaqueteEquipo.Copy1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmPaqueteEquipo.grid_paquetesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = False Then
      If QryEquipos.RecordCount > 0 then
      Begin
           tsDescripcion.Text := QryEquipos.FieldValues ['sDescripcion'] ;
           tsMedida.Text :=  QryEquipos.FieldValues ['sMedida'] ;
           tiJornada.Text :=  QryEquipos.FieldValues ['iJornada'] ;
      End
      Else
      Begin
          tsDescripcion.Text := '' ;
          tsMedida.Text := '' ;
          tiJornada.Text := '' ;
      End
end;

procedure TfrmPaqueteEquipo.grid_paquetesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPaqueteEquipo.grid_paquetesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPaqueteEquipo.grid_paquetesTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

end.
