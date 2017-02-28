unit frm_GruposUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ADODB, ZAbstractRODataset,unitActivaPop,
  ZAbstractDataset, ZDataset, IdSSLOpenSSL, UNITEXCEPCIONES,
  UDBGRID, unittbotonespermisos, UnitValidaTexto, cxGraphics, cxControls,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, CxGridExportLink, ShellApi;

type
  TfrmGrupos = class(TForm)
    frmBarra1: TfrmBarra;
    ds_grupos: TDataSource;
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
    Grupos: TZQuery;
    Panel2: TPanel;
    Label1: TLabel;
    tsIdGrupo: TDBEdit;
    tsDescripcion: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    sMail: TDBEdit;
    sPassword: TDBEdit;
    Label4: TLabel;
    grid_fases: TcxGrid;
    dbg_fasesDBTableView1: TcxGridDBTableView;
    Grid__fase1: TcxGridDBColumn;
    Grid__fases2: TcxGridDBColumn;
    Grid__fases3: TcxGridDBColumn;
    dbg_fasesLevel1: TcxGridLevel;
    ExportarExcel1: TMenuItem;
    dlgSave1: TSaveDialog;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure sMailEnter(Sender: TObject);
    procedure sMailExit(Sender: TObject);
    procedure sPasswordEnter(Sender: TObject);
    procedure sPasswordExit(Sender: TObject);
    procedure sPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure sMailKeyPress(Sender: TObject; var Key: Char);
    procedure grid_fasesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_fasesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_fasesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupos: TfrmGrupos;
  MiConexion : boolean;
  //utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
implementation

uses UInteliDialog;

{$R *.dfm}

procedure TfrmGrupos.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmGrupos.tsIdGrupoEnter(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_entradaERP
end;

procedure TfrmGrupos.tsIdGrupoExit(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_salidaPU
end;

procedure TfrmGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Grupos.Cancel ;
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmGrupos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adGrupos', PopupPrincipal);
  OpcButton := '' ;
  frmbarra1.btnCancel.Click ;
  Grupos.Active := False ;
  Grupos.Open ;
  MiConexion := True;
  //UtGrid:=TicdbGrid.create(grid_fases);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmGrupos.grid_fasesMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmGrupos.grid_fasesMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmGrupos.grid_fasesTitleClick(Column: TColumn);
begin
 //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmGrupos.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  //activapop(frmGrupos,popupprincipal);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  Grupos.Append ;
  Grupos.FieldValues['sIdGrupo']     := '' ;
  Grupos.FieldValues['sDescripcion'] := '' ;
  Grupos.FieldValues['sMail']        := '' ;
  Grupos.FieldValues['sPassword']    := '' ;
  MiConexion := True;
  tsIdGrupo.SetFocus ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  grid_fases.Enabled := False;
end;

procedure TfrmGrupos.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   //activapop(frmGrupos,popupprincipal);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   MiConexion := True;
   try
      Grupos.Edit ;
   except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Grupos', 'Al editar registro', 0);
        frmbarra1.btnCancel.Click ;
      end;
   end ;
   tsIdGrupo.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_fases.Enabled := False;
end;

procedure TfrmGrupos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');cadenas.Add(tsDescripcion.Text);
  if not validaTexto(nombres, cadenas, 'Grupo', tsIdGrupo.Text) then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
  {Continua insercion de datos}
  try
      if (sMail.Text <> '') and (sPassword.Text <> '') then
      begin
            if MiConexion  then
               messageDLG('Se comproborá Mail y password, esto puede tardar unos segundos...', mtInformation, [mbOk], 0);
            connection.idMessage.FromList.EMailAddresses   := sMail.Text;
            if sPassword.Text <> '' then
            begin
    	          connection.idSMTP.Username := sMail.Text ;
                connection.idSMTP.Password := sPassword.Text;
                try
                    try
                        if not connection.idsmtp.Connected then
                        begin
                            connection.idsmtp.Connect;
                            if connection.idsmtp.Connected then
                                messageDLG('Mail y Password Correctos!', mtInformation, [mbOk], 0)
                            else
                            begin
                                messageDLG('Mail y Password Incorrectos!, Favor de Verificar datos o si tiene conexión a internet.', mtInformation, [mbOk], 0);
                                Grupos.Cancel ;
                                exit;
                            end;
                        end;
                    except
                    on e:eidosslcouldnotloadssllibrary do
                    begin
                        MiConexion := False;
                        frmGrupos.frmBarra1.btnPost.Click;
                    end;
                end;
                finally
                    connection.idsmtp.Disconnect(true);
                end;
            end;
      end;

      Grupos.Post ;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      frmBarra1.btnCancelClick(Sender);
      //desactivapop(popupprincipal);
      BotonPermiso.permisosBotones(frmBarra1);
      //frmBarra1.btnPostClick(Sender);
      frmBarra1.btnPrinter.Enabled := False;
  except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Grupos', 'Al salvar registro', 0);
        frmbarra1.btnCancel.Click ;
      end;
  end;
  nombres.free;cadenas.free;
  grid_fases.Enabled := True;
end;

procedure TfrmGrupos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Grupos.Cancel ;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   grid_fases.Enabled := True;
end;

procedure TfrmGrupos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Grupos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        Grupos.Delete ;
      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Grupos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmGrupos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Grupos.Active := False ;
  Grupos.Open 
end;

procedure TfrmGrupos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmGrupos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmGrupos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaPU
end;

procedure TfrmGrupos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    sMail.SetFocus
end;

procedure TfrmGrupos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmGrupos.Paste1Click(Sender: TObject);
begin
//UtGrid.AddRowsFromClip;
end;

procedure TfrmGrupos.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure TfrmGrupos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmGrupos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmGrupos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmGrupos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmGrupos.ExportarExcel1Click(Sender: TObject);
 Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, grid_fases);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure TfrmGrupos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmGrupos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmGrupos.sMailEnter(Sender: TObject);
begin
    sMail.Color := global_color_entradaERP
end;

procedure TfrmGrupos.sMailExit(Sender: TObject);
begin
      if (pos('#',sMail.Text) > 0) or (pos('/',sMail.Text) > 0) or (pos(';',sMail.Text) > 0) or (pos(',',sMail.Text) > 0) then
      begin
          messageDLG('Mail incorrecto, Favor de veriifcar!', mtInformation, [mbOk], 0);
          sMail.SetFocus;
      end
      else
          sMail.Color := global_color_salidaPU
end;

procedure TfrmGrupos.sMailKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        sPassword.SetFocus
end;

procedure TfrmGrupos.sPasswordEnter(Sender: TObject);
begin
      sPassword.Color := global_color_entradaERP
end;

procedure TfrmGrupos.sPasswordExit(Sender: TObject);
begin
     sPassword.Color := global_color_salidaPU
end;

procedure TfrmGrupos.sPasswordKeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
          tsIdGrupo.SetFocus
end;

end.
