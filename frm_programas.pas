unit frm_programas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,
  DBGrids, ComCtrls, global, DB, Menus, frxClass, frxDBSet,unitactivapop,
  RXDBCtrl, ZAbstractRODataset, ZAbstractDataset, ZDataset, UnitExcepciones,
  udbgrid, unittbotonespermisos, UnitValidaTexto,
  AdvGlowButton, ExtCtrls, NxCollection, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,  Clipbrd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  CxGridExportLink, ShellApi, FormAutoScaler ;

type
  TfrmProgramas = class(TForm)
    frmBarra1: TfrmBarra;
    ds_programasUnion: TDataSource;
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
    Programastabla: TZQuery;
    ProgramastablasIdPrograma: TStringField;
    ProgramastablasDescripcion: TStringField;
    Label3: TLabel;
    zqIdiomas: TZQuery;
    ds_idiomas: TDataSource;
    cbSelecIdioma: TDBLookupComboBox;
    ProgramastablasIdIdioma: TStringField;
    dbg_ProgramaDBTableView1: TcxGridDBTableView;
    dbg_ProgramaLevel1: TcxGridLevel;
    grid_Programas: TcxGrid;
    Grid__Idprograma: TcxGridDBColumn;
    Grid_Descripcion: TcxGridDBColumn;
    Grid__Idioma: TcxGridDBColumn;
    ExportarExcel1: TMenuItem;
    dlgSave1: TSaveDialog;
    Grid__colModulo: TcxGridDBColumn;
    zqryModulos: TZQuery;
    dsModulos: TDataSource;
    zqryModulosidModulo: TIntegerField;
    zqryModulossDescripcion: TStringField;
    intgrfldProgramasidModulo: TIntegerField;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbl1: TLabel;
    tsIdPrograma: TDBEdit;
    tsDescripcion: TDBEdit;
    cbidioma: TDBLookupComboBox;
    tsdbModulos: TDBLookupComboBox;
    strngfldProgramasscomModulos: TStringField;
    Grid__colcommodulos: TcxGridDBColumn;
    lbl2: TLabel;
    dbedtModulo: TDBEdit;
    zqryUnionGrid: TZQuery;
    dsProgramas: TDataSource;
    zqryUnionGridsComModulos: TStringField;
    zqryUnionGridsIdPrograma: TStringField;
    zqryUnionGridsDescripcion: TStringField;
    zqryUnionGrididModulo: TIntegerField;
    zqryUnionGridDescripModul: TStringField;
    zqryUnionGridsIdidioma: TStringField;
    zqryUnionGridDescripIdioma: TStringField;
    btnModulos: TButton;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_programasEnter(Sender: TObject);
    procedure grid_programasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_programasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grid_programasCellClick(Column: TColumn);
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
    procedure Salir1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure tsIdProgramaEnter(Sender: TObject);
    procedure tsIdProgramaExit(Sender: TObject);
    procedure tsIdProgramaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    function actualizarDependencias(sTabla: string): boolean;

    procedure Copy1Click(Sender: TObject);
    procedure cbSelecIdiomaClick(Sender: TObject);
    procedure cbidiomaEnter(Sender: TObject);
    procedure cbidiomaExit(Sender: TObject);

    procedure cbSelecIdiomaEnter(Sender: TObject);
    procedure cbSelecIdiomaExit(Sender: TObject);
    procedure grid_ProgramaEnter(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure zqryUnionGridAfterOpen(DataSet: TDataSet);
    procedure Paste1Click(Sender: TObject);
    procedure btnModulosClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  pegar : string ;
  frmProgramas: TfrmProgramas;
  Opcion, sOpcion: String ;
  Registro_Actual : String ;
  sOldPrograma : string;  //indica el sIdPrograma anterior para casos de edicion
  //UtGrid:TicDbGrid;
  botonpermiso:tbotonespermisos;
implementation
   uses frm_inteligent, frm_catalogomodulos;
{$R *.dfm}

procedure TfrmProgramas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Programastabla.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmProgramas.grid_programasEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmProgramas.grid_programasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmProgramas.grid_programasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmProgramas.FormShow(Sender: TObject);
var
idioma : string;
begin

  cbSelecIdioma.KeyValue := global_idioma;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adProgramas', PopupPrincipal);
  sOldPrograma := '';
  OpcButton    := '' ;
  frmBarra1.btnCancel.Click ;
  frmBarra1.btnPrinter.Enabled := False;


  Programastabla.Active := False ;
  //Programastabla.Params.ParamByName('Idioma').Value := global_idioma;
  Programastabla.Open ;

  zqryUnionGrid.Active := False ;
  //zqryUnionGrid.Params.ParamByName('Idioma').Value  := global_idioma ;
  zqryUnionGrid.Open ;

  Grid_Programas.SetFocus ;
  BotonPermiso.permisosBotones(frmBarra1);

  zqIdiomas.Active := False;
  zqIdiomas.Open;

  zqryModulos.Active := False ;
  zqryModulos.Open ;
end;

procedure TfrmProgramas.grid_ProgramaEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmProgramas.grid_programasCellClick(Column: TColumn);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmProgramas.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  frmBarra1.btnPrinter.Enabled := False;
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;

  zqryUnionGrid.Append ;
  zqryUnionGrid.FieldValues['sIdPrograma']  := '' ;
  zqryUnionGrid.FieldValues['sDescripcion'] := '' ;
  zqryUnionGrid.FieldValues['sComModulos']  := '' ;

  tsIdPrograma.SetFocus ;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmProgramas.frmBarra1btnEditClick(Sender: TObject);
begin
  if Programastabla.RecordCount > 0 then begin
      sOldPrograma := Programastabla.FieldByName('sIdPrograma').AsString;
      frmBarra1.btnEditClick(Sender);
      frmBarra1.btnPrinter.Enabled := False;
      Insertar1.Enabled := False ;
      Editar1.Enabled := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled := True ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled := False ;
      Salir1.Enabled := False ;
      tsIdPrograma.Enabled := False;
      sOpcion := 'Edit';
      try
          dsProgramas.DataSet := Programastabla ;
          programastabla.Locate('sIdPrograma', zqryUnionGrid.FieldByName('sIdPrograma').AsString,[]) ;
          zqryUnionGrid.Edit ;
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programas', 'Al editar registro', 0);
              frmbarra1.btnCancel.Click ;
          end;
      end ;
      tsDescripcion.SetFocus;
  end;
BotonPermiso.permisosBotones(frmBarra1);
end;


procedure TfrmProgramas.frmBarra1btnPostClick(Sender: TObject);
var
  lContinua : boolean;//bandera para indicar seguir procediendo o no segun excepciones
  nombres, cadenas: TStringList;
  sCampo:string;
  i:Integer;
begin
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Descripcion');cadenas.Add(tsDescripcion.Text);
   if not validaTexto(nombres, cadenas, 'Programa', tsIdPrograma.Text) then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;
   {Continua insercion de datos}
   lContinua := true;
   try
     if zqryUnionGrid.State IN [dsEdit, dsBrowse] Then
       Programastabla.Edit
     else
       Programastabla.Append ;
     for I := 0 to Programastabla.Fields.Count-1 do
     begin
      sCampo:=Programastabla.Fields[I].DisplayName;
      if zqryUnionGrid.FieldDefs.IndexOf(sCampo)>=0 then
        Programastabla.FieldByName(sCampo).Value:=zqryUnionGrid.FieldByName(sCampo).Value;
     end;
      Programastabla.Post ;
      zqryUnionGrid.Cancel;

      zqryUnionGrid.Refresh ;
      zqryUnionGrid.Locate('sIdPrograma', Programastabla.FieldByName('sIdPrograma').AsString,[]) ;
      dsProgramas.DataSet := zqryUnionGrid ;

      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      tsIdPrograma.Enabled := True;
      frmBarra1.btnPostClick(Sender);
   except
       on e : exception do begin
           lContinua := false;
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programas', 'Al salvar registro', 0);
           frmbarra1.btnCancel.Click ;
       end;
   end;

   if sOpcion = 'Edit' then
   begin
     Connection.qryBusca.Active := False;
     Connection.qryBusca.SQL.Clear;
     Connection.qryBusca.SQL.Add('Select sDescripcion From idiomas Where sDescripcion = :Idioma');
     Connection.qryBusca.Params.ParamByName('Idioma').DataType := ftString;
     Connection.qryBusca.Params.ParamByName('Idioma').Value    := cbSelecIdioma.Text;
     Connection.qryBusca.Open;
   end;

   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmProgramas.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  frmBarra1.btnPrinter.Enabled := False;
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;


  Programastabla.Cancel ;
  dsProgramas.DataSet := zqryUnionGrid ;
  tsIdPrograma.Enabled := True;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmProgramas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Programastabla.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if programastabla.Locate('sIdPrograma', zqryUnionGrid.FieldByName('sIdPrograma').AsString,[]) then
       //programastabla.Delete ;

        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select sIdPrograma from gruposxprograma Where sIdPrograma =:programa');
        Connection.QryBusca.Params.ParamByName('Programa').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Programa').Value    := Programastabla.FieldValues['sIdPrograma'] ;
        Connection.QryBusca.Open ;
        if Connection.QryBusca.RecordCount > 0 Then
        Begin
           MessageDlg('No se puede Borrar el Registro por que esta ASIGNADO a uno o mas registros en GRUPOS DE USUARIOS.', mtInformation, [mbOk], 0)
        End
        Else Begin
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sIdPrograma from usuariosxprograma Where sIdPrograma =:programa');
          Connection.QryBusca.Params.ParamByName('Programa').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Programa').Value    := Programastabla.FieldValues['sIdPrograma'] ;
          Connection.QryBusca.Open ;
          if Connection.QryBusca.RecordCount > 0 Then
          Begin
            MessageDlg('No se puede Borrar el Registro por que esta ASIGNADO a uno o mas registros en USUARIOS.', mtInformation, [mbOk], 0)
          End
          Else Begin

            try
              programastabla.Delete ;
            except
              on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programas', 'Al eliminar registro', 0);
                frmbarra1.btnCancel.Click ;
              end;
            end;

          End;
        End;

    end
end;

procedure TfrmProgramas.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zqryUnionGrid.Active := False ;
  zqryUnionGrid.Open ;
end;

procedure TfrmProgramas.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmProgramas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click;
end;

procedure TfrmProgramas.Paste1Click(Sender: TObject);
begin
 if tsIdPrograma.Focused = true  Then
        tsIdPrograma.PasteFromClipboard ;
  if tsDescripcion.Focused = True Then
        tsDescripcion.PasteFromClipboard ;

end;

procedure TfrmProgramas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click;
end;

procedure TfrmProgramas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click;
end;

procedure TfrmProgramas.btnModulosClick(Sender: TObject);
begin
 if zqryUnionGrid.State IN [dsEdit, dsBrowse, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmcatalogoModulos') then
    begin
      Application.CreateForm(TfrmCatalogoModulos, frmCatalogoModulos);
      frmCatalogoModulos.show;
      zqryModulos.Refresh ;
    end;
  end;
end;

procedure TfrmProgramas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click;
end;

procedure TfrmProgramas.cbidiomaEnter(Sender: TObject);
begin
cbidioma.Color := global_color_EntradaERP
end;

procedure TfrmProgramas.cbidiomaExit(Sender: TObject);
begin
cbidioma.Color := global_color_salidaPU
end;

procedure TfrmProgramas.cbSelecIdiomaClick(Sender: TObject);
begin
  Connection.QryBusca.Active := False ;
  Connection.QryBusca.SQL.Clear ;
  Connection.QryBusca.SQL.Add('Select sIdIdioma from idiomas Where sDescripcion = :Idioma');
  Connection.QryBusca.Params.ParamByName('Idioma').DataType := ftString ;
  Connection.QryBusca.Params.ParamByName('Idioma').Value    := cbSelecIdioma.Text ;
  Connection.QryBusca.Open ;

  programastabla.Active := False;
  programastabla.ParamByName('Idioma').DataType := ftString;
  programastabla.Params.ParamByName('Idioma').Value := Connection.QryBusca.FieldValues['sIdIdioma'];
  programastabla.Open;
  programastabla.Refresh;
end;

procedure TfrmProgramas.cbSelecIdiomaEnter(Sender: TObject);
begin
  cbSelecIdioma.Color := global_color_EntradaERP
end;

procedure TfrmProgramas.cbSelecIdiomaExit(Sender: TObject);
begin
  cbSelecIdioma.Color := global_color_salidaPU
end;

procedure TfrmProgramas.Copy1Click(Sender: TObject);
begin
  if tsIdPrograma.Focused = true  Then
        tsIdPrograma.CopyToClipboard ;
  if tsDescripcion.Focused = True Then
        tsDescripcion.CopyToClipboard ;

end;

procedure TfrmProgramas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click;
end;

procedure TfrmProgramas.ExportarExcel1Click(Sender: TObject);
Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, grid_Programas);

  end;

end;

procedure TfrmProgramas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click;
end;


procedure TfrmProgramas.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;


procedure TfrmProgramas.tsIdProgramaEnter(Sender: TObject);
begin
    tsIdPrograma.Color := global_color_EntradaERP
end;

procedure TfrmProgramas.tsIdProgramaExit(Sender: TObject);
begin
    tsIdPrograma.Color := global_color_salidaPU

end;

procedure TfrmProgramas.tsIdProgramaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmProgramas.zqryUnionGridAfterOpen(DataSet: TDataSet);
begin
   dsProgramas.DataSet := zqryUnionGrid ;
end;

procedure TfrmProgramas.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmProgramas.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaPU
end;

procedure TfrmProgramas.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key =  #13 Then
        tsIdPrograma.SetFocus ;
end;

function TfrmProgramas.actualizarDependencias(sTabla: string): boolean;
var
  sUpdate: string;
begin
  result := true;
  if sOldPrograma <> Programastabla.FieldByName('sIdPrograma').AsString  then begin//el ID cambio, actualizar la tabla gruposxprograma
    sUpdate :=
    'UPDATE '+sTabla+' '+
    'SET sIdPrograma = :programa '+
    'WHERE sIdPrograma = :oldPrograma';
    try
      connection.zCommand.Active := false;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add(sUpdate);
      connection.zCommand.ParamByName('programa').Value := Programastabla.FieldByName('sIdPrograma').AsString;
      connection.zCommand.ParamByName('oldPrograma').Value := sOldPrograma;
      connection.zCommand.ExecSQL;
    except
      result := false;
    end;
  end;
end;

End.
