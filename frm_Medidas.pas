unit frm_Medidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, unittbotonespermisos, UnitValidaTexto, unitActivaPop,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxContainer, cxDBEdit, masUtilerias, FormAutoScaler ;

type
  TfrmMedidas = class(TForm)
    Label2: TLabel;
    Label9: TLabel;
    frmBarra1: TfrmBarra;
    tsIdMedida: TDBEdit;
    tsMedida: TDBEdit;
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
    Salir1: TMenuItem;
    zqMedidas: TZQuery;
    dsMedidas: TDataSource;
    grid_GruposIsometrico: TcxGrid;
    grid_GruposIsometricoDBTableView1: TcxGridDBTableView;
    grid_GruposIsometricoDBTableView1Column1: TcxGridDBColumn;
    grid_GruposIsometricoDBTableView1Column2: TcxGridDBColumn;
    grid_GruposIsometricoLevel1: TcxGridLevel;
    Pegar1: TMenuItem;
    Copiar1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_GruposIsometricoCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_GruposIsometricoEnter(Sender: TObject);
    procedure grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdMedidaEnter(Sender: TObject);
    procedure tsIdMedidaExit(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Char);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tsMedidaExit(Sender: TObject);
    procedure tsMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure tlFaseKeyPress(Sender: TObject; var Key: Char);
    procedure Copy1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMedidas : TfrmMedidas;
  //utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_inteligent, frm_Consumibles;
{$R *.dfm}

procedure TfrmMedidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if frmConsumibles.Active then
    begin
      frmConsumibles.zqMedidas.Refresh;
      frmConsumibles.tsMedida.KeyValue:=zqMedidas.FieldValues['iIdMedida'];
    end;
  Except
  end;
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;    
end;

procedure TfrmMedidas.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuMarcaSubF', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   zqMedidas.Open ;

   Grid_GruposIsometrico.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   tsIdMedida.Enabled := False ;
   tsMedida.Enabled := False ;
end;
procedure TfrmMedidas.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmMedidas.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   zqMedidas.Append ;
   zqMedidas.FieldValues['sNombre']   := '' ;
   BloquearItemsPopup(PopupPrincipal, True );
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_gruposisometrico.Enabled := False;
   tsIdMedida.Enabled := True ;
   tsMedida.Enabled := True;
   tsMedida.SetFocus;
end;

procedure TfrmMedidas.frmBarra1btnEditClick(Sender: TObject);
begin
    If zqMedidas.RecordCount > 0 Then
    Begin
        try
         frmBarra1.btnEditClick(Sender);
         Insertar1.Enabled := False ;
         Editar1.Enabled := False ;
         Registrar1.Enabled := True ;
         Can1.Enabled := True ;
         Eliminar1.Enabled := False ;
         Refresh1.Enabled := False ;
         Salir1.Enabled := False ;
         sOpcion := 'Edit';
         sOldId := zqMedidas.FieldValues['sNombre'];
         zqMedidas.Edit ;
         grid_gruposisometrico.Enabled := False;
         tsIdMedida.Enabled := True ;
         tsMedida.Enabled := True ;
         tsMedida.SetFocus;
         BloquearItemsPopup(PopupPrincipal, True );

        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Unidades de Medida', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmMedidas.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  Clave  : string;
  confirmacion : word;
  SavePace : tBookMark;
begin

   if Length( Trim( tsMedida.Text ) ) = 0 then
      raise Exception.Create( 'Existen datos vacios: "Descripcion".' );
    {Continua insercion de datos..}
  ////////////////////

   lEdicion := zqMedidas.state = dsEdit;//capturar la bandera para usarla luego del post
    Try
       //BUSCAMOS EL MAXIMO
      if not lEdicion then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select max(iIdMedida) as Folio FROM medidas');
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
           zqMedidas.FieldByName('iIdMedida').AsInteger := Connection.zCommand.FieldByName('Folio').AsInteger + 1
        else
           zqMedidas.FieldByName('iIdMedida').AsInteger := 1;
      end;

       Clave := zqMedidas.FieldValues['iIdMedida'];
       zqMedidas.Post ;

       Insertar1.Enabled  := True ;
       Editar1.Enabled    := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled       := False ;
       Eliminar1.Enabled  := True ;
       Refresh1.Enabled   := True ;
       Salir1.Enabled     := True ;


       frmBarra1.btnPostClick(Sender);
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Unidades de Medida', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
         lEdicion := false;
       end;
    end;

    if (lEdicion) and (sOldId <> zqMedidas.FieldValues['sNombre']) then
    begin
        //El registro fue editado y su ID cambio, es necesario actualizar este ID en tablas dependientes
        Connection.zCommand.Active := False ;
        Connection.zCommand.SQL.Clear ;
        Connection.zCommand.SQL.Add('UPDATE insumos SET sMedida = :nuevo WHERE sMedida = :viejo');
        Connection.zCommand.Params.ParamByName('nuevo').value := zqMedidas.FieldValues['sNombre'];
        Connection.zCommand.Params.ParamByName('viejo').value := sOldId;
        try
           Connection.zCommand.ExecSQL;
        except
           MessageDlg('Ocurrio un error al actualizar los registros de la tabla dependiente "medidas".', mtInformation, [mbOk], 0);
        end;
    end;

    try  //frmConsumibles
//        SavePlace := frmconsumibles.grid_embarcacionesDBTableView1.DataController.DataSource.DataSet.GetBookmark;
//        frm_consumibles.frmConsumibles.insumos.Refresh;
//        try
//            frmconsumibles.grid_embarcacionesDBTableView1.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
//        Except
//            frmconsumibles.grid_embarcacionesDBTableView1.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
//        end;

        frm_consumibles.frmConsumibles.zqMedidas.Refresh;
        frm_consumibles.frmConsumibles.zqMedidas.Locate('sNombre', zqMedidas.FieldValues['sNombre'],[]);
        frm_consumibles.frmConsumibles.tsMedida.KeyValue:= Clave;
        frm_consumibles.frmConsumibles.tsMedida.SetFocus;
    except
    end;

    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;
    grid_gruposisometrico.Enabled := True;
    if sOpcion = 'Edit' then
    begin
         grid_gruposisometrico.Enabled := True;
         sOpcion := '';
    end;
end;

procedure TfrmMedidas.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   zqMedidas.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_gruposisometrico.Enabled := True;
   sOpcion := '';
end;

procedure TfrmMedidas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   zqMedidas.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sMedida from insumos Where sMedida =:medida');
          Connection.QryBusca.Params.ParamByName('medida').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('medida').Value    := zqMedidas.FieldValues['sNombre'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then
             MessageDlg('No se puede Borrar el Registro por que esta asignado a un Material en la tabla Insumos', mtInformation, [mbOk], 0)
          Else
            zqMedidas.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Unidades de Medida', 'Al eliminar registro', 0);
         end;
      end

    end

end;

procedure TfrmMedidas.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zqMedidas.refresh ;
end;

procedure TfrmMedidas.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmMedidas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmMedidas.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmMedidas.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmMedidas.Copy1Click(Sender: TObject);
begin
  ModificarPortapapeles( Self.ActiveControl, ftPegar );
end;

procedure TfrmMedidas.Cut1Click(Sender: TObject);
begin
  ModificarPortapapeles( Self.ActiveControl, ftCopiar );
end;

procedure TfrmMedidas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmMedidas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmMedidas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmMedidas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmMedidas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmMedidas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmMedidas.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmMedidas.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmMedidas.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmMedidas.tsIdMedidaEnter(Sender: TObject);
begin
    tsIdMedida.Color := global_color_entradaERP;
end;

procedure TfrmMedidas.tsIdMedidaExit(Sender: TObject);
begin
    tsIdMedida.Color := global_color_salidaERP;
end;

procedure TfrmMedidas.GlobalKeyUp(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsMedida.SetFocus
end;

procedure TfrmMedidas.tsMedidaEnter(Sender: TObject);
begin
    tsMedida.Color := global_color_entradaERP;
end;

procedure TfrmMedidas.tsMedidaExit(Sender: TObject);
begin
    tsMedida.Color := global_color_salidaERP;
end;

procedure TfrmMedidas.tsMedidaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsIdMedida.SetFocus
end;

procedure TfrmMedidas.tlFaseKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsIdMedida.SetFocus
end;

end.
