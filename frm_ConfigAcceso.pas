unit frm_ConfigAcceso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, frm_barra, StdCtrls, DBCtrls,
  Mask, ExtCtrls, jpeg, ExtDlgs, DB, Global, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UdbGrid, iniFiles, strUtils,
  UnitExcepciones, unittbotonespermisos, UnitValidaTexto, unitactivapop, UFunctionsGHH;

type
  TfrmConfigAcceso = class(TForm)
   grid_cofigIdioma: TDBGrid;
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
    zQidiomas: TZQuery;
    ds_Idiomas: TDataSource;
    frmBarra1: TfrmBarra;
    lbServidor: TLabel;
    lbUsurio: TLabel;
    lbPuerto: TLabel;
    ldPassw: TLabel;
    lbSelecBD: TLabel;
    lbAcceso: TLabel;
    lbSalir: TLabel;
    tsServidorBd: TDBEdit;
    tsUsuario: TDBEdit;
    tsPass: TDBEdit;
    tsSelectBD: TDBEdit;
    tsAcceso: TDBEdit;
    tsSalir: TDBEdit;
    tsPuerto: TDBEdit;
    Label1: TLabel;
    zQidiomassIdIdioma: TStringField;
    zQidiomassDescripcion: TStringField;
    zQidiomaslDefault: TStringField;
    zQidiomassServidorBd: TStringField;
    zQidiomassUsuario: TStringField;
    zQidiomassContrasena: TStringField;
    zQidiomassSelecBd: TStringField;
    zQidiomassPuerto: TStringField;
    zQidiomassLenguaje: TStringField;
    zQidiomassBtnAcceso: TStringField;
    zQidiomassBtnSalir: TStringField;
    tsLenguje: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsIdIdiomaMenuKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure grid_cofigIdiomaCellClick(Column: TColumn);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure cBidiomaEnter(Sender: TObject);
    procedure cBidiomaExit(Sender: TObject);
    procedure cBidiomaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsIdIdiomaMenuEnter(Sender: TObject);
    procedure tsIdIdiomaMenuExit(Sender: TObject);
    procedure grid_cofigIdiomaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_cofigIdiomaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_cofigIdiomaTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    //function estaEnJornadas(sIdPlataforma: string): boolean;
    procedure cbEnter(Sender: TObject);
    procedure cbExit(Sender: TObject);
    procedure tsUsuarioEnter(Sender: TObject);
    procedure tsUsuarioExit(Sender: TObject);
    procedure tsServidorBdEnter(Sender: TObject);
    procedure tsServidorBdExit(Sender: TObject);
    procedure tsPassEnter(Sender: TObject);
    procedure tsPassExit(Sender: TObject);
    procedure tsSelectBDEnter(Sender: TObject);
    procedure tsSelectBDExit(Sender: TObject);
    procedure tsPuertoEnter(Sender: TObject);
    procedure tsPuertoExit(Sender: TObject);
    procedure tsAccesoEnter(Sender: TObject);
    procedure tsAccesoExit(Sender: TObject);
    procedure tsSalirEnter(Sender: TObject);
    procedure tsSalirExit(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tsServidorBdKeyPress(Sender: TObject; var Key: Char);
    procedure tsUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure tsPassKeyPress(Sender: TObject; var Key: Char);
    procedure tsSelectBDKeyPress(Sender: TObject; var Key: Char);
    procedure tsPuertoKeyPress(Sender: TObject; var Key: Char);
    procedure tsAccesoKeyPress(Sender: TObject; var Key: Char);
    procedure tsSalirKeyPress(Sender: TObject; var Key: Char);
    procedure tsLengujeEnter(Sender: TObject);
    procedure tsLengujeExit(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
  dace : string;
    { Public declarations }
  end;

var
  frmConfigAcceso: TfrmConfigAcceso;
   UtGrid:TicDbGrid;
   botonpermiso: tbotonespermisos;
   sOpcion, lStatusOrig: string;
   dace : string;
     Archidioma: string;
    FileText: TextFile;
  appINI : TIniFile;
  usuariodioma : string;
implementation

uses frm_plataformas, frm_NuevoIdioma ;

{$R *.dfm}

procedure TfrmConfigAcceso.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPlataformas', PopupPrincipal);
  OpcButton := '' ;
  frmBarra1.btnEdit.Click;


  zQidiomas.active := false ;
  zQidiomas.Params.ParamByName('idIdioma').Value := idIdioma;
  zQidiomas.Open;



  UtGrid:=TicdbGrid.create(grid_cofigIdioma);
  BotonPermiso.permisosBotones(frmBarra1);
  zQidiomas.Edit;
end;

procedure TfrmConfigAcceso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmConfigAcceso.tsIdIdiomaMenuEnter(Sender: TObject);
begin
  //tsIdIdiomaMenu.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsIdIdiomaMenuExit(Sender: TObject);
begin
  //tsIdIdiomaMenu.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsIdIdiomaMenuKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    //tsDescripcion.SetFocus
end;

procedure TfrmConfigAcceso.tsLengujeEnter(Sender: TObject);
begin
    tsLenguje.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsLengujeExit(Sender: TObject);
begin
      tsLenguje.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsPassEnter(Sender: TObject);
begin
   tsPass.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsPassExit(Sender: TObject);
begin
    tsPass.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsPassKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    tsSelectBD.SetFocus
end;

procedure TfrmConfigAcceso.tsPuertoEnter(Sender: TObject);
begin
  tsPuerto.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsPuertoExit(Sender: TObject);
begin
   tsPuerto.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsPuertoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    tsAcceso.SetFocus

end;

procedure TfrmConfigAcceso.tsSalirEnter(Sender: TObject);
begin
   tsSalir.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsSalirExit(Sender: TObject);
begin
  tsSalir.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsSalirKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    tsServidorBd.SetFocus
end;

procedure TfrmConfigAcceso.tsSelectBDEnter(Sender: TObject);
begin
    tsSelectBD.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsSelectBDExit(Sender: TObject);
begin
   tsSelectBD.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsSelectBDKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
tsPuerto.SetFocus

end;

procedure TfrmConfigAcceso.tsServidorBdEnter(Sender: TObject);
begin
       tsServidorBd.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsServidorBdExit(Sender: TObject);
begin
    tsServidorBd.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsServidorBdKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    tsUsuario.SetFocus
end;

procedure TfrmConfigAcceso.tsUsuarioEnter(Sender: TObject);
begin
  tsUsuario.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsUsuarioExit(Sender: TObject);
begin
tsUsuario.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  tsPass.SetFocus
end;

procedure TfrmConfigAcceso.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    //tsDescripcion.SetFocus
end;

procedure TfrmConfigAcceso.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  wCadena: WideString;
  FilePath, sValor, sIdioma: string;
  iVector, iVector2, iPos: Byte;
  vSeccion, ldVector : array[1..100] of string;
  i: integer;
  lNoEncuentraIdioma: boolean;
  memoIni, memoIni2 : tMemo;

begin
    memoIni := TMemo.Create(Self);
    memoIni.Parent:=self;
    memoIni.Visible := False;
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Salir');      nombres.Add('Usuario');      nombres.Add('Contraseña');  nombres.Add('Selec. BD');
    nombres.Add('Puerto');      nombres.Add('Boton Acceso');      nombres.Add('Boton Salir');
    cadenas.Add(tsSalir.Text); cadenas.Add(tsUsuario.Text); cadenas.Add(tsPass.Text); cadenas.Add(tsSelectBD.Text);
    cadenas.Add(tsPuerto.Text); cadenas.Add(tsAcceso.Text);
    zQidiomas.Post ;

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('SELECT * FROM idiomas WHERE sIdIdioma = :idIdioma');
    Connection.qryBusca.Params.ParamByName('idIdioma').Value := idIdioma;
    Connection.qryBusca.Open;

    Archidioma := extractfilepath(application.exename) + 'inteligentlogini.ini';
    if fileExists(Archidioma) then
    begin

         FilePath := Archidioma;
         AssignFile(FileText, Archidioma);
         Reset(FileText);

         while not Eof(FileText) do
         begin
             ReadLn(FileText, wCadena);
             if (MidStr(wCadena, 1, 1) <> '#') then
                 memoIni.Lines.Add(wCadena);
             if MidStr(wCadena, 1, 1) = '$' then
             begin
                 ldVector[iVector] := MidStr(wCadena, 2, Pos('=', wCadena)-2);

                 //Ahora consultamos si el Id existe para insertar datos actualizados..
                 Connection.qryBusca2.Active := False;
                 Connection.qryBusca2.SQL.Clear;
                 Connection.qryBusca2.SQL.Add('SELECT * FROM idiomas WHERE sIdIdioma = :idIdioma');
                 Connection.qryBusca2.Params.ParamByName('idIdioma').Value := ldVector[iVector];
                 Connection.qryBusca2.Open;

                 if connection.QryBusca2.RecordCount > 0 then
                 begin
                     memoIni.Lines.Add('#lbServidorbd:='+ Connection.qryBusca2.FieldValues['sServidorBd']);
                     memoIni.Lines.Add('#lbUsuario:='+ Connection.qryBusca2.FieldValues['sUsuario']);
                     memoIni.Lines.Add('#lbPassword:='+ Connection.qryBusca2.FieldValues['sContrasena']);
                     memoIni.Lines.Add('#lblBase:='+ Connection.qryBusca2.FieldValues['sSelecBd']);
                     memoIni.Lines.Add('#lbPuerto:='+ Connection.qryBusca2.FieldValues['sPuerto']);
                     memoIni.Lines.Add('#lbIdioma:='+ Connection.qryBusca2.FieldValues['sLenguaje']);
                     memoIni.Lines.Add('#btnAbortar:='+ Connection.qryBusca2.FieldValues['sBtnSalir']);
                     memoIni.Lines.Add('#btnAdelante:='+ Connection.qryBusca2.FieldValues['sBtnAcceso']);
                 end;
                 iVector := iVector + 1;
             end;

//             if (MidStr(wCadena, 1, 1) <> '#') then
//                memoIni.Lines.Add(wCadena);

         end;

         for i := 0 to iVector do
         begin
             if ldVector[i] =  idIdioma then
             begin
                 lNoEncuentraIdioma := False;
                 break;
             end
             else
                 lNoEncuentraIdioma := True;
         end;
         CloseFile(FileText);

       if lNoEncuentraIdioma then
       begin
           DeleteFile(PChar(Archidioma));
           appINI := TIniFile.Create(ChangeFileExt(Application.ExeName,'logini.ini'));
           appINI.WriteString ('IDIOMA', '$'+Connection.qryBusca.FieldByName('sIdIdioma').AsString, Connection.qryBusca.FieldByName('sDescripcion').AsString);
           appINI.WriteString ('IDIOMA', '#lbServidorbd:', tsServidorBd.Text);
           appINI.WriteString ('IDIOMA', '#lbUsuario:', tsUsuario.Text);
           appINI.WriteString ('IDIOMA', '#lbPassword:', tsPass.Text);
           appINI.WriteString ('IDIOMA', '#lblBase:', tsSelectBD.Text);
           appINI.WriteString ('IDIOMA', '#lbPuerto:', tsPuerto.Text);
           appINI.WriteString('IDIOMA',  '#lbIdioma:',tsLenguje.Text);
           appINI.WriteString ('IDIOMA', '#btnAbortar:', tsSalir.Text);
           appINI.WriteString ('IDIOMA', '#btnAdelante:', tsAcceso.Text);

           FilePath := Archidioma;
           AssignFile(FileText, Archidioma);
           Reset(FileText);

           while not Eof(FileText) do
           begin
               ReadLn(FileText, wCadena);

               if MidStr(wCadena, 1, 1) = '$' then
                  memoIni.Lines.Add(wCadena);

               if MidStr(wCadena, 1, 1) = '#' then
                  memoIni.Lines.Add(wCadena);
           end;
            CloseFile(FileText);
           memoIni.Lines.SaveToFile(Archidioma);
       end
       else
       begin
           DeleteFile(PChar(Archidioma));
           appINI := TIniFile.Create(ChangeFileExt(Application.ExeName,'logini.ini'));
           memoIni.Lines.SaveToFile(Archidioma);
       end;
    end;
    
    Insertar1.Enabled := False ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ;
    frmBarra1.btnAddClick(Sender);
    close
end;

procedure TfrmConfigAcceso.frmBarra1btnPrinterClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
end;

procedure TfrmConfigAcceso.frmBarra1btnAddClick(Sender: TObject);
begin
  //frmBarra1.btnAddClick(Sender);
      Insertar1.Enabled := False ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;

end;

procedure TfrmConfigAcceso.frmBarra1btnCancelClick(Sender: TObject);
begin
   desactivapop(popupprincipal);
   zQidiomas.Cancel;
   //frmBarra1.btnCancelClick(Sender);
   frmbarra1.btnPost.Enabled   := False;
   frmbarra1.btnCancel.Enabled := False;
   frmbarra1.btnExit.Enabled   := True;
   Insertar1.Enabled := False ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_cofigIdioma.Enabled := True;
   sOpcion := '';
end;

procedure TfrmConfigAcceso.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zQidiomas.refresh ;
end;

procedure TfrmConfigAcceso.frmBarra1btnEditClick(Sender: TObject);
begin
  //frmBarra1.btnEditClick(Sender);
    frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := True ;
   sOpcion := 'Edit';

end;

procedure TfrmConfigAcceso.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True;
   close
end;


procedure TfrmConfigAcceso.grid_cofigIdiomaCellClick(Column: TColumn);
begin
  if frmbarra1.btnCancel.Enabled = True then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmConfigAcceso.grid_cofigIdiomaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConfigAcceso.grid_cofigIdiomaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConfigAcceso.grid_cofigIdiomaTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmConfigAcceso.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click;
end;

procedure TfrmConfigAcceso.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmConfigAcceso.Paste1Click(Sender: TObject);
begin
   UtGrid.AddRowsFromClip;
end;

procedure TfrmConfigAcceso.Copy1Click(Sender: TObject);
begin
    UtGrid.CopyRowsToClip;
end;

procedure TfrmConfigAcceso.cbEnter(Sender: TObject);
begin
 //cBidioma.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.cbExit(Sender: TObject);
begin
//cBidioma.Color := global_color_salida
end;

procedure TfrmConfigAcceso.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmConfigAcceso.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmConfigAcceso.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmConfigAcceso.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmConfigAcceso.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmConfigAcceso.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmConfigAcceso.cBidiomaEnter(Sender: TObject);
begin
   // cBidioma.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.cBidiomaExit(Sender: TObject);
begin
   // cBidioma.Color := global_color_salida
end;

procedure TfrmConfigAcceso.cBidiomaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
       // tsIdIdiomaMenu.SetFocus
end;

procedure TfrmConfigAcceso.tsAccesoEnter(Sender: TObject);
begin
    tsAcceso.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsAccesoExit(Sender: TObject);
begin
   tsAcceso.color := global_color_salida
end;

procedure TfrmConfigAcceso.tsAccesoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
tsSalir.SetFocus
end;

procedure TfrmConfigAcceso.tsDescripcionEnter(Sender: TObject);
begin
   // tsDescripcion.Color := global_color_entrada
end;

procedure TfrmConfigAcceso.tsDescripcionExit(Sender: TObject);
begin
   // tsDescripcion.Color := global_color_salida
end;

end.

