unit frm_NuevoIdioma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, frm_barra, StdCtrls, DBCtrls,
  Mask, ExtCtrls, jpeg, ExtDlgs, DB, Global, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UdbGrid, strUtils,
  UnitExcepciones, unittbotonespermisos, UnitValidaTexto, unitactivapop, UFunctionsGHH,
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
  TfrmNuevoIdioma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    tsIdIdioma: TDBEdit;
    tsDescripcion: TDBEdit;
    DBPlataformas: TfrxDBDataset;
    frxPlataformas: TfrxReport;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    zqIdiomas: TZQuery;
    ds_Idiomas: TDataSource;
    cbIdiomaDefault: TCheckBox;
    CofigurarAcceso: TMenuItem;
    grid_menuIdiomaDBTableView1: TcxGridDBTableView;
    grid_menuIdiomaLevel1: TcxGridLevel;
    grid_menuIdioma: TcxGrid;
    Grid__colIdioma: TcxGridDBColumn;
    Grid__ColDescripcion: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsIdIdiomaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure grid_menuIdiomaCellClick(Column: TColumn);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure cBidiomaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsIdIdiomaEnter(Sender: TObject);
    procedure tsIdIdiomaExit(Sender: TObject);
    procedure grid_menuIdiomaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_menuIdiomaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_menuIdiomaTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    function estaEnFrentes(sIdPlataforma: string): boolean;
    function estaEnJornadas(sIdPlataforma: string): boolean;
    function estaEnBitacoraDePersonal(sIdPlataforma: string): boolean;
    procedure zqIdiomasAfterScroll(DataSet: TDataSet);
    procedure CofigurarAccesoClick(Sender: TObject);
    procedure cbIdiomaDefaultClick(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNuevoIdioma: TfrmNuevoIdioma;
   //UtGrid:TicDbGrid;
   botonpermiso: tbotonespermisos;
   sOpcion, lStatusOrig, idIdioma: string;
   memoIni : tMemo;

implementation

uses frm_configAcceso;

{$R *.dfm}

procedure TfrmNuevoIdioma.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPlataformas', PopupPrincipal);
  OpcButton := '' ;
  frmbarra1.btnCancel.Click ;

  //UtGrid:=TicdbGrid.create(grid_menuIdioma);
  BotonPermiso.permisosBotones(frmBarra1);

  zqIdiomas.Active := False;
  zqIdiomas.Open;
end;

procedure TfrmNuevoIdioma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmNuevoIdioma.tsIdIdiomaEnter(Sender: TObject);
begin
  tsIdIdioma.Color := global_color_entradaERP

end;

procedure TfrmNuevoIdioma.tsIdIdiomaExit(Sender: TObject);
begin
  tsIdIdioma.color := global_color_salidaPU
end;

procedure TfrmNuevoIdioma.tsIdIdiomaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmNuevoIdioma.zqIdiomasAfterScroll(DataSet: TDataSet);
begin
      connection.QryBusca.Active := false;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT * FROM idiomas WHERE lDefault ="Si" ');
      connection.QryBusca.Open;

       if connection.QryBusca.RecordCount > 0 then
       begin
         if zqIdiomas.FieldByName('sIdIdioma').AsString = connection.QryBusca.FieldByName('sIdIdioma').AsString  then
         begin
         cbIdiomaDefault.Checked := True;
         end
         else
          cbIdiomaDefault.Checked := False;
       end;

      idIdioma := zqIdiomas.FieldByName('sIdIdioma').AsString;
//   frmconfigAcceso.dace := zqIdiomas.FieldByName('sIdIdioma').AsString;

end;

procedure TfrmNuevoIdioma.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
    tsDescripcion.SetFocus
end;

function TfrmNuevoIdioma.estaEnBitacoraDePersonal(
  sIdPlataforma: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT iIdDiario FROM bitacoradepersonal WHERE sIdPlataforma = :sIdPlataforma LIMIT 1');
    ParamByName('sIdPlataforma').Value := sIdPlataforma;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

function TfrmNuevoIdioma.estaEnFrentes(sIdPlataforma: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT sNumeroOrden FROM ordenesdetrabajo WHERE sIdPlataforma = :sIdPlataforma LIMIT 1');
    ParamByName('sIdPlataforma').Value := sIdPlataforma;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

function TfrmNuevoIdioma.estaEnJornadas(sIdPlataforma: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT dIdFecha FROM jornadasdiarias WHERE sIdPlataforma = :sIdPlataforma LIMIT 1');
    ParamByName('sIdPlataforma').Value := sIdPlataforma;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

procedure TfrmNuevoIdioma.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmPlataformas, popupprincipal)
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   cbIdiomaDefault.Enabled := True;
   zqIdiomas.Append;
   zqIdiomas.FieldValues['sIdIdioma'] := '' ;
   zqIdiomas.FieldValues['sDescripcion'] := '' ;
   zqIdiomas.FieldValues['lDefault'] := 'No';
   tsIdIdioma.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_menuIdioma.Enabled := False;
   frmBarra1.btnAddClick(Sender);
end;

procedure TfrmNuevoIdioma.frmBarra1btnEditClick(Sender: TObject);
begin
   //activapop(frmPlataformas, popupprincipal);
   cbIdiomaDefault.Enabled := True;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sOpcion := 'Edit';
   //lStatusOrig := zIdiomaMenu.FieldByName('lStatus').AsString;
   try
    zQidiomas.Edit ;
   except
     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Idiomas ..', 'Al agregar registro', 0);
     frmbarra1.btnCancel.Click ;
     end;
   end ;
   tsIdIdioma.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_menuIdioma.Enabled := False;

end;

procedure TfrmNuevoIdioma.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  resultado : string;
begin
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Nombre Menu');      nombres.Add('Descripcion');
    cadenas.Add(tsIdIdioma.Text); cadenas.Add(tsDescripcion.Text);
    if not validaTexto(nombres, cadenas, 'Identificacion',tsIdIdioma.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;


    if sOpcion = 'Edit' then
      Begin
      connection.QryBusca.Active := false;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT * FROM idiomas WHERE lDefault ="Si" ');
      connection.QryBusca.Open;

       if connection.QryBusca.RecordCount > 0 then
       begin
         connection.QryBusca2.Active := false;
         connection.QryBusca2.SQL.Clear;
         connection.QryBusca2.SQL.Add('UPDATE idiomas SET lDefault="No" WHERE sIdIdioma = :ididioma ');
         connection.QryBusca2.Params.ParamByName('ididioma').Value := connection.QryBusca.FieldByName('sIdIdioma').AsString;
         connection.QryBusca2.ExecSQL;
       end;

          if cbIdiomaDefault.Checked  then
            begin
            connection.QryBusca.Active := false;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('UPDATE idiomas SET lDefault="Si" WHERE sIdIdioma = :ididioma ');
            connection.QryBusca.Params.ParamByName('ididioma').Value := zqIdiomas.FieldByName('sIdIdioma').AsString;
            connection.QryBusca.ExecSQL;
            end;



      connection.QryBusca.Active := false;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT * FROM programas WHERE sIdIdioma = :idioma ');
      connection.QryBusca.Params.ParamByName('idioma').Value := zqIdiomas.FieldByName('sIdIdioma').AsString;;
      connection.QryBusca.Open;

      connection.QryBusca.first;
     while not (connection.QryBusca.Eof) do
     begin
       connection.QryBusca2.Active := false;
       connection.QryBusca2.SQL.Clear;
       connection.QryBusca2.SQL.Add('UPDATE programas SET sIdIdioma = :Nid WHERE sIdIdioma = :Aid');
       connection.QryBusca2.Params.ParamByName('Nid').Value := tsIdIdioma.Text;
       connection.QryBusca2.Params.ParamByName('Aid').Value := zqIdiomas.FieldByName('sIdIdioma').AsString;
       connection.QryBusca2.ExecSQL;
       connection.QryBusca.Next;
     end;
     connection.QryBusca.Refresh;
     sOpcion := '';
     desactivapop(popupprincipal);
     zqIdiomas.Post;
     Insertar1.Enabled := True ;
     Editar1.Enabled := True ;
     Registrar1.Enabled := False ;
     Can1.Enabled := False ;
     Eliminar1.Enabled := True ;
     Refresh1.Enabled := True ;
     Salir1.Enabled := True ;
     cbIdiomaDefault.Enabled := False;
     grid_menuIdioma.Enabled := True;
     frmBarra1.btnPostClick(Sender) ;
     exit;
      End;

    try


     connection.QryBusca.Active := False;
     connection.QryBusca.SQL.Clear;
     connection.QryBusca.SQL.Add('Select sIdPrograma, sDescripcion From programas Where sIdIdioma = "ESP"');
     connection.QryBusca.Open;


     connection.QryBusca.first;
     while not (connection.QryBusca.Eof) do
     begin
       connection.QryBusca2.Active := false;
       connection.QryBusca2.SQL.Clear;
       connection.QryBusca2.SQL.Add('insert into programas (sIdIdioma,sIdPrograma,sDescripcion) values (:ididioma ,:menu ,:Descripcion)');
       connection.QryBusca2.Params.ParamByName('ididioma').Value := tsIdIdioma.Text;
       connection.QryBusca2.Params.ParamByName('menu').Value := connection.QryBusca.FieldByName('sIdPrograma').AsString;
       connection.QryBusca2.Params.ParamByName('Descripcion').Value := connection.QryBusca.FieldByName('sDescripcion').AsString;
       connection.QryBusca2.ExecSQL;
       connection.QryBusca.Next;
     end;

         if sOpcion = 'Edit' then
      Begin
       showMessage(idIdioma);
      connection.QryBusca.Active := false;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT * FROM idiomas WHERE lDefault ="Si" ');
      connection.QryBusca.Open;

       if connection.QryBusca.RecordCount > 0 then
       begin
         connection.QryBusca2.Active := false;
         connection.QryBusca2.SQL.Clear;
         connection.QryBusca2.SQL.Add('UPDATE idiomas SET lDefault="No" WHERE sIdIdioma = :ididioma ');
         connection.QryBusca2.Params.ParamByName('ididioma').Value := connection.QryBusca.FieldByName('sIdIdioma').AsString;
         connection.QryBusca2.ExecSQL;
       end;

          if cbIdiomaDefault.Checked  then
            begin
            connection.QryBusca.Active := false;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('UPDATE idiomas SET lDefault="Si" WHERE sIdIdioma = :ididioma ');
            connection.QryBusca.Params.ParamByName('ididioma').Value := zqIdiomas.FieldByName('sIdIdioma').AsString;
            connection.QryBusca.ExecSQL;
            end;
      End;

     //desactivapop(popupprincipal);
     zqIdiomas.Post;
     Insertar1.Enabled := True ;
     Editar1.Enabled := True ;
     Registrar1.Enabled := False ;
     Can1.Enabled := False ;
     Eliminar1.Enabled := True ;
     Refresh1.Enabled := True ;
     Salir1.Enabled := True ;
     cbIdiomaDefault.Enabled := False;
     grid_menuIdioma.Enabled := True;
     frmBarra1.btnPostClick(Sender) ;

    except
      on e:exception do
      begin
          messagedlg('El id ya ha sido asignado a otro idioma',mterror,[mbok],0);
          zqIdiomas.Cancel;
      end;

    end;
     


    {Continua insercion de datos..}
  {try}


  {except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Municipios/Localidades/Plataformas ..', 'Al salvar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  if sOpcion = 'Edit' then
  begin
      grid_menuIdioma.Enabled := True;
      sOpcion := '';
  end;   }

end;

procedure TfrmNuevoIdioma.frmBarra1btnCancelClick(Sender: TObject);
begin
   //desactivapop(popupprincipal);
   cbIdiomaDefault.Enabled := False;
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   zQidiomas.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_menuIdioma.Enabled := True;
   sOpcion := '';
end;

procedure TfrmNuevoIdioma.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zQidiomas.RecordCount  > 0 then
    if tsIdIdioma.Text <> 'ESP' then
    Begin

      if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Select sIdPrograma, sDescripcion From programas Where sIdIdioma ="ESP"');
        connection.QryBusca.Open;


        connection.QryBusca.first;
        while not (connection.QryBusca.Eof) do
        begin
          connection.QryBusca2.Active := false;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('DELETE FROM programas WHERE  sIdIdioma = :IdIdioma and sIdPrograma = :menu');
          connection.QryBusca2.Params.ParamByName('IdIdioma').Value := tsIdIdioma.Text;
          connection.QryBusca2.Params.ParamByName('menu').Value := connection.QryBusca.FieldByName('sIdPrograma').AsString;
          connection.QryBusca2.ExecSQL;
          connection.QryBusca.Next;
        end;
        zQidiomas.Delete;
        except
          on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Idioma', 'Al eliminar registro', 0);
          end;
        end
      end
    end
    else
    begin
    ShowMessage('No se puede Eliminar el Idioma Español');
    zQidiomas.Cancel;
    end;

end;

procedure TfrmNuevoIdioma.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zQidiomas.refresh ;
end;

procedure TfrmNuevoIdioma.frmBarra1btnExitClick(Sender: TObject);
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


procedure TfrmNuevoIdioma.grid_menuIdiomaCellClick(Column: TColumn);
begin
  if frmbarra1.btnCancel.Enabled = True then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmNuevoIdioma.grid_menuIdiomaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmNuevoIdioma.grid_menuIdiomaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmNuevoIdioma.grid_menuIdiomaTitleClick(Column: TColumn);
begin
  //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmNuevoIdioma.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click;
end;

procedure TfrmNuevoIdioma.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmNuevoIdioma.Paste1Click(Sender: TObject);
begin
   //UtGrid.AddRowsFromClip;
end;

procedure TfrmNuevoIdioma.CofigurarAccesoClick(Sender: TObject);
begin
stMenu := '';
  if Sender is TMenuItem then
    stMenu := (Sender as TMenuItem).Name;
//  if not MostrarFormChild('frmconfAcceso') then

    Application.CreateForm(TfrmconfigAcceso, frmconfigAcceso);
    frmconfigAcceso.show

end;

procedure TfrmNuevoIdioma.Copy1Click(Sender: TObject);
begin
    //UtGrid.CopyRowsToClip;
end;

procedure TfrmNuevoIdioma.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmNuevoIdioma.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmNuevoIdioma.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmNuevoIdioma.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmNuevoIdioma.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmNuevoIdioma.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmNuevoIdioma.frmBarra1btnPrinterClick(Sender: TObject);
begin
//  If zQidiomas.RecordCount > 0 Then
//    frxPlataformas.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
//  else
//     messageDLG('No existen datos para imprimir!', mtInformation, [mbOk], 0);
end;

procedure TfrmNuevoIdioma.cbIdiomaDefaultClick(Sender: TObject);
var
FilePath: string;
wCadena: WideString;
begin
    memoIni := TMemo.Create(Self);
    memoIni.Parent:=self;
    memoIni.Visible := False;

    Archidioma := extractfilepath(application.exename) + 'inteligentlogini.ini';
    Connection.qryBusca2.Active := False;
    Connection.qryBusca2.SQL.Clear;
    Connection.qryBusca2.SQL.Add('SELECT * FROM idiomas WHERE sIdIdioma = :idIdioma');
    Connection.qryBusca2.Params.ParamByName('idIdioma').Value := idIdioma;
    Connection.qryBusca2.Open;

end;

procedure TfrmNuevoIdioma.cBidiomaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsIdIdioma.SetFocus
end;

procedure TfrmNuevoIdioma.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmNuevoIdioma.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaPU
end;

end.

