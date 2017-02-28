unit frm_isometricos_grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  unitexcepciones, udbgrid, unittbotonespermisos,UnitValidaTexto
  ,unitactivapop, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  TfrmIsometricosGrupos = class(TForm)
    frmBarra1: TfrmBarra;
    ds_GruposIsometrico: TDataSource;
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
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    GruposIsometrico: TZQuery;
    GruposIsometricosContrato: TStringField;
    GruposIsometricosIdGrupo: TStringField;
    GruposIsometricosDescripcion: TStringField;
    mnGeneraGrupos: TMenuItem;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_GruposIsometrico: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    tsIdGrupo: TDBEdit;
    tsDescripcion: TDBEdit;
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
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tlFaseKeyPress(Sender: TObject; var Key: Char);
    procedure Imprimir1Click(Sender: TObject);
    procedure mnGeneraGruposClick(Sender: TObject);
    procedure grid_GruposIsometricoTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIsometricosGrupos : TfrmIsometricosGrupos;
  sOldId: string;
 // utgrid: ticdbgrid;
  botonpermiso: tbotonespermisos;
implementation

{$R *.dfm}

procedure TfrmIsometricosGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  botonpermiso.Free;
 // utgrid.Destroy;
end;

procedure TfrmIsometricosGrupos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cGruposIsom', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_gruposisometrico);
  OpcButton := '' ;
  sOldId := '';
  frmbarra1.btnCancel.Click ;

  GruposIsometrico.Active := False ;
  GruposIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
  GruposIsometrico.Params.ParamByName('Contrato').Value := Global_Contrato ;
  GruposIsometrico.Open ;
  Grid_GruposIsometrico.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;
procedure TfrmIsometricosGrupos.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricosGrupos.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmIsometricosGrupos.frmBarra1btnAddClick(Sender: TObject);
begin
 try
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  GruposIsometrico.Append ;
  GruposIsometrico.FieldValues['sIdGrupo'] := '' ;
  GruposIsometrico.FieldValues['sDescripcion'] := '' ;
  tsIdGrupo.SetFocus ;
  //activapop(frmIsometricosGrupos,popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de insumos e Isometricos', 'Al agregar registro', 0);
  end;
 end;
end;

procedure TfrmIsometricosGrupos.frmBarra1btnEditClick(Sender: TObject);
begin
  MessageDlg('Este catalogo es maestro, los cambios hechos ' + #10 +
  'en el afectarán otros módulos del sistema', mtWarning, [mbOk], 0);
  try
    If GruposIsometrico.RecordCount > 0 Then
    Begin
       frmBarra1.btnEditClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       sOldId := GruposIsometrico.FieldValues['sIdGrupo'];
       GruposIsometrico.Edit ;
       //activapop(frmIsometricosGrupos,popupprincipal);
       tsIdGrupo.SetFocus
    End;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled:=false;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de insumos e Isometricos', 'Al editar registro', 0);
  end;
  end;
end;

procedure TfrmIsometricosGrupos.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion: boolean;
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');

  cadenas.Add(tsDescripcion.Text);

  if not validaTexto(nombres, cadenas, 'Identificacion', tsIdgrupo.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos



  lEdicion := GruposIsometrico.state = dsEdit;//capturar la bandera para usarla luego del post
  Try
     GruposIsometrico.FieldValues['sContrato'] := global_contrato ;
     GruposIsometrico.Post ;
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
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de Insumos e Isometricos', 'Al actualizar registro', 0);
     frmBarra1.btnCancel.Click ;
     lEdicion := false;
     end;
  end;
  if (lEdicion) and (sOldId <> GruposIsometrico.FieldValues['sIdGrupo']) then begin
    //El registro fue editado y su ID cambio, es necesario actualizar este ID en tablas dependientes
    Connection.zCommand.Active := False ;
    Connection.zCommand.SQL.Clear ;
    Connection.zCommand.SQL.Add('UPDATE isometricos SET sIdGrupo = :nuevo WHERE sIdGrupo = :viejo AND sContrato = :contrato');
    Connection.zCommand.Params.ParamByName('nuevo').value := GruposIsometrico.FieldValues['sIdGrupo'];
    Connection.zCommand.Params.ParamByName('viejo').value := sOldId;
    Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
    try
      Connection.zCommand.ExecSQL;
    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de Insumos e Isometricos', 'Al editar registro', 0);
      end;
    end;
  end;
//desactivapop(popupprincipal);
BotonPermiso.permisosBotones(frmBarra1);
frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmIsometricosGrupos.frmBarra1btnCancelClick(Sender: TObject);
begin
  try
   frmBarra1.btnCancelClick(Sender);
   GruposIsometrico.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   BotonPermiso.permisosBotones(frmBarra1);
   //desactivapop(popupprincipal);
   frmbarra1.btnPrinter.Enabled:=false;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de insumos e Isometricos', 'Al cancelar', 0);
  end;
  end;
end;

procedure TfrmIsometricosGrupos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If GruposIsometrico.RecordCount > 0 then

    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select sIdGrupo from isometricos Where sIdGrupo =:Grupo');
        Connection.QryBusca.Params.ParamByName('Grupo').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Grupo').Value    := GruposIsometrico.FieldValues['sIdGrupo'] ;
        Connection.QryBusca.Open ;
        if Connection.QryBusca.RecordCount > 0 Then
           MessageDlg('No se puede Borrar el Registro por que Existe en ISOMETRICOS.', mtInformation, [mbOk], 0)
        else

        try
          GruposIsometrico.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Grupos de Insumos e Isometricos', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmIsometricosGrupos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  GruposIsometrico.refresh ;
end;

procedure TfrmIsometricosGrupos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmIsometricosGrupos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmIsometricosGrupos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmIsometricosGrupos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmIsometricosGrupos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmIsometricosGrupos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmIsometricosGrupos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmIsometricosGrupos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmIsometricosGrupos.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricosGrupos.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricosGrupos.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricosGrupos.grid_GruposIsometricoTitleClick(
  Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmIsometricosGrupos.tsIdGrupoEnter(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_entradaERP;
end;

procedure TfrmIsometricosGrupos.tsIdGrupoExit(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_salidaERP;
end;

procedure TfrmIsometricosGrupos.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmIsometricosGrupos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmIsometricosGrupos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP
end;

procedure TfrmIsometricosGrupos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsIdGrupo.SetFocus
end;

procedure TfrmIsometricosGrupos.tlFaseKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsIdGrupo.SetFocus
end;

procedure TfrmIsometricosGrupos.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

procedure TfrmIsometricosGrupos.mnGeneraGruposClick(Sender: TObject);
begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sNumeroActividad, mDescripcion from actividadesxanexo ' +
                                'Where sContrato = :Contrato and sIdConvenio = :Convenio and sTipoActividad = "Paquete" and iNivel= 1 Order By iItemOrden') ;
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
    connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('convenio').Value := '' ;
    connection.QryBusca.Open ;
    While NOT connection.QryBusca.Eof Do
    Begin
          Try
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add('insert into gruposisometrico values (:Contrato, :Grupo, :Descripcion)') ;
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
              connection.zCommand.Params.ParamByName('grupo').DataType := ftString ;
              connection.zCommand.Params.ParamByName('grupo').Value := connection.QryBusca.FieldValues['sNumeroActividad'] ;
              connection.zCommand.Params.ParamByName('descripcion').DataType := ftString ;
              connection.zCommand.Params.ParamByName('descripcion').Value := connection.QryBusca.FieldValues['mDescripcion'] ;
              connection.zCommand.ExecSQL ;
          except
          End ;
          connection.QryBusca.Next ;
    End ;
    GruposIsometrico.Active := False ;
    GruposIsometrico.Open ;

end;

end.
