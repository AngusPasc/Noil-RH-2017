unit frm_MarcasxSubFam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,masUtilerias,
  FormAutoScaler;

type
  TfrmMarcasxSubFam = class(TForm)
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    tsMarca: TDBEdit;
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
    tzMarcas: TZQuery;
    dsMarcas: TDataSource;
    tzMarcassIdMarca: TStringField;
    tzMarcassMarca: TStringField;
    grid_GruposIsometrico: TcxGrid;
    grid_GruposIsometricoDBTableView1: TcxGridDBTableView;
    grid_GruposIsometricoDBTableView1Column1: TcxGridDBColumn;
    grid_GruposIsometricoDBTableView1Column2: TcxGridDBColumn;
    grid_GruposIsometricoLevel1: TcxGridLevel;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_GruposIsometricoCellClick(Column: TColumn);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
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
    procedure tsIdMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure tsMarcaEnter(Sender: TObject);
    procedure tsMarcaExit(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarcasxSubFam : TfrmMarcasxSubFam;
  //utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_inteligent ;
{$R *.dfm}

procedure TfrmMarcasxSubFam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;
  end;

procedure TfrmMarcasxSubFam.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuMarcaSubF', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   //tzMarcas := False ;
  tzMarcas.Open ;

   Grid_GruposIsometrico.SetFocus;
   //UtGrid:=TicdbGrid.create(grid_gruposisometrico);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   tsMarca.Enabled := False ;


end;
procedure TfrmMarcasxSubFam.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmMarcasxSubFam.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then
//    tsMarca.SetFocus ;
end;

procedure TfrmMarcasxSubFam.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled  := False ;
   Editar1.Enabled    := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled       := True ;
   Eliminar1.Enabled  := False ;
   Refresh1.Enabled   := False ;
   Salir1.Enabled     := False ;
   sOpcion            := 'Insert';
   tzMarcas.Append ;
   tzMarcas.FieldValues['sIdMarca'] := '' ;
   tzMarcas.FieldValues['sMarca']   := '' ;
   //activapop(frmMarcasxSubFam,popupprincipal);
   BloquearItemsPopup(PopupPrincipal, True );
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_gruposisometrico.Enabled := False;
   tsMarca.Enabled := True;
end;

procedure TfrmMarcasxSubFam.frmBarra1btnEditClick(Sender: TObject);
begin
  If tzMarcas.RecordCount > 0 Then
  Begin
    try
      frmBarra1.btnEditClick(Sender);
      Insertar1.Enabled  := False ;
      Editar1.Enabled    := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled       := True ;
      Eliminar1.Enabled  := False ;
      Refresh1.Enabled   := False ;
      Salir1.Enabled     := False ;
      sOpcion            := 'Edit';
      tzMarcas.Edit ;
      grid_gruposisometrico.Enabled := False;
      tsMarca.Enabled := True ;
      tsMarca.SetFocus;
      BloquearItemsPopup(PopupPrincipal, True );

    except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Marcas de Materiales', 'Al agregar registro', 0);
     end;
    end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmMarcasxSubFam.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  Clave  : string;
  confirmacion : word;
  Afirmacion:Word;
  MensajeStr : string;
  Mensaje2 :string ;
  mensaje3 :string;
begin
  {Validaciones de campos}
  nombres:=TStringList.Create;
  cadenas:=TStringList.Create;
  nombres.Add('Descripcion');
  cadenas.Add( tsMarca.Text );


  if (tzMarcas.state in [dsEdit])then
  begin
    MensajeStr:= 'Los Registros Se Modificaron Correctamente.';
    Mensaje2 := 'Desea Editar el Regitro.';
    mensaje3 := '"Este registro de marca ya esta asignada a otros materiales, si desea continuar se actualizaran los materiales registrados con esta marca"';
  end;                                      

  if not validaTexto(nombres, cadenas, '','' ) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

  {Continua insercion de datos..}
  lEdicion := tzMarcas.state = dsEdit;//capturar la bandera para usarla luego del post

  Try
    with connection.qrybusca do
    begin
      Active := False;
      SQL.Text := 'select max( cast( sIdMarca as signed ) + 1 ) as Maximo from marcas;';
      Open;
    end;

    if sOpcion = 'Insert' then
    begin
        tzMarcas.FieldByName( 'sIdMarca' ).AsString := IntToStr( connection.QryBusca.FieldByName( 'Maximo' ).AsInteger );
        Clave := tzMarcas.FieldValues['sIdMarca'];
    end;

    if tzMarcas.State in  [dsedit]then
    begin
      confirmacion:= messagedlg(mensaje2,mtConfirmation,[mbYes ,mbNo] ,0);
      if  confirmacion = mrYes then
      begin
        Afirmacion := Messagedlg(Mensaje3,mtConfirmation,[mbYes , mbNo],0);  
        if afirmacion = mryes then
        begin
          tzMarcas.Post ;
        end
        else if(Afirmacion = mrNo) then
        tzMarcas.Cancel;                                                                  
      end
    end
    else if(confirmacion =mrNo)then
    tzMarcas.Cancel;

    if tzMarcas.State in [dsInsert] then
    begin
      tzMarcas.Post;
    end
    else
    tzMarcas.Cancel;

    Insertar1.Enabled  := True ;
    Editar1.Enabled    := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled       := False ;
    Eliminar1.Enabled  := True ;
    Refresh1.Enabled   := True ;
    Salir1.Enabled     := True ;

    frmBarra1.btnPostClick(Sender);
  except
  on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Marcas de Materiales', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
      lEdicion := false;
    end;
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



procedure TfrmMarcasxSubFam.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   tzMarcas.Cancel ;
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

procedure TfrmMarcasxSubFam.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   tzMarcas.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sIdMarca from insumos Where sIdMarca =:Clave');
          Connection.QryBusca.Params.ParamByName('Clave').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Clave').Value    := tzMarcas.FieldValues['sIdMarca'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then
             MessageDlg('No se puede Borrar el Registro por que esta asignado a un Material en la tabla Insumos', mtInformation, [mbOk], 0)
          Else
            tzMarcas.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Marcas por Materiales', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmMarcasxSubFam.frmBarra1btnRefreshClick(Sender: TObject);
begin
    tzMarcas.refresh ;
end;

procedure TfrmMarcasxSubFam.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmMarcasxSubFam.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmMarcasxSubFam.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmMarcasxSubFam.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmMarcasxSubFam.Copy1Click(Sender: TObject);
begin
//UtGrid.AddRowsFromClip;
end;

procedure TfrmMarcasxSubFam.Cut1Click(Sender: TObject);
begin
  //UtGrid.CopyRowsToClip;
end;

procedure TfrmMarcasxSubFam.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmMarcasxSubFam.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmMarcasxSubFam.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmMarcasxSubFam.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmMarcasxSubFam.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmMarcasxSubFam.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmMarcasxSubFam.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmMarcasxSubFam.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmMarcasxSubFam.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmMarcasxSubFam.tsIdMarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsMarca.SetFocus
end;

procedure TfrmMarcasxSubFam.tsMarcaEnter(Sender: TObject);
begin
    tsMarca.Color := global_color_entradaerp;
end;

procedure TfrmMarcasxSubFam.tsMarcaExit(Sender: TObject);
begin
    tsMarca.Color := global_color_salidaERP;
end;

end.
