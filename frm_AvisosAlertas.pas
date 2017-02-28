unit frm_AvisosAlertas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, frm_connection , global, StdCtrls,
  DBCtrls, Mask, DB, Menus, ZAbstractRODataset,
  ZDataset, rxToolEdit, rxCurrEdit, unitexcepciones, udbgrid, UnitValidacion,
  unittbotonespermisos, ZAbstractDataset, UnitValidaTexto, unitactivapop,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls;
type
  TfrmAvisosAlertas = class(TForm)
    frmBarra1: TfrmBarra;
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
    dsAvisosAlertas: TDataSource;
    QryAvisosAlertas: TZQuery;
    QryAvisosAlertassAutor: TStringField;
    QryAvisosAlertaslVisible: TStringField;
    QryAvisosAlertasiMessage: TIntegerField;
    QryAvisosAlertasmDescripcion: TMemoField;
    QryAvisosAlertassTipo: TStringField;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    tsTipo: TComboBox;
    tmDescripcion: TDBMemo;
    tiMessage: TDBEdit;
    tsAutor: TDBEdit;
    lVisible: TDBCheckBox;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_avisos: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure QryAvisosAlertasAfterScroll(DataSet: TDataSet);
    procedure tsTipoEnter(Sender: TObject);
    procedure tsTipoExit(Sender: TObject);
    procedure tsTipoKeyPress(Sender: TObject; var Key: Char);
    procedure wEnter(Sender: TObject);
    procedure wExit(Sender: TObject);
    procedure wKeyPress(Sender: TObject; var Key: Char);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tsAutorEnter(Sender: TObject);
    procedure tsAutorExit(Sender: TObject);
    procedure tsAutorKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tiMessageKeyPress(Sender: TObject; var Key: Char);
    procedure lVisibleKeyPress(Sender: TObject; var Key: Char);
    procedure tiMessageEnter(Sender: TObject);
    procedure tiMessageExit(Sender: TObject);
    procedure grid_avisosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_avisosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_avisosTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure grid_avisosCellClick(Column: TColumn);
    procedure QryAvisosAlertasiMessageSetText(Sender: TField;
      const Text: string);
    procedure tiMessageChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAvisosAlertas: TfrmAvisosAlertas;
  Opcion : String ;
  Registro_Actual : String ;
  utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;

implementation

{$R *.dfm}

procedure TfrmAvisosAlertas.frmBarra1btnAddClick(Sender: TObject);
begin
   //activapop(frmAvisosAlertas, popupprincipal);
   frmBarra1.btnAddClick(Sender);
   tsTipo.Enabled         := True ;
   tiMessage.ReadOnly     := False ;
   tmDescripcion.ReadOnly := False ;
   tsAutor.ReadOnly       := False ;
   lVisible.Enabled       := True ;
   QryAvisosAlertas.Append;
   QryAvisosAlertas.FieldValues['mDescripcion'] := '';
   QryAvisosAlertas.FieldValues['sAutor']       := global_Usuario;
   QryAvisosAlertas.FieldValues['lVisible']     := 'Si';
   tsTipo.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   Grid_avisos.Enabled := False;
end;

procedure TfrmAvisosAlertas.frmBarra1btnEditClick(Sender: TObject);
begin
    If QryAvisosAlertas.RecordCount > 0 Then
    begin
       frmBarra1.btnEditClick(Sender);
       Insertar1.Enabled  := False ;
       Editar1.Enabled    := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled       := True ;
       Eliminar1.Enabled  := False ;
       Refresh1.Enabled   := False ;
       Salir1.Enabled     := False ;
       //activapop(frmAvisosAlertas, popupprincipal);
       QryAvisosAlertas.Edit;
       tsTipo.SetFocus;
       Opcion := 'Edit';
    End;
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
end  ;

procedure TfrmAvisosAlertas.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Message');      nombres.Add('Descripcion');      nombres.Add('Autor');
    cadenas.Add(tiMessage.Text); cadenas.Add(tmDescripcion.Text); cadenas.Add(tsAutor.Text);
    if not validaTexto(nombres, cadenas, '','') then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
    try
        //desactivapop(popupprincipal);
        QryAvisosAlertas.FieldValues['sTipo'] := tsTipo.Text ;
        QryAvisosAlertas.Post;
        frmBarra1.btnPostClick(Sender) ;
    except
      on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registro de Avisos y Alertas', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
      end;
    end;

   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmAvisosAlertas.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  //desactivapop(popupprincipal);
  QryAvisosAlertas.Cancel;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  Grid_avisos.Enabled := True;
end;

procedure TfrmAvisosAlertas.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adAvisos', PopupPrincipal);
   //UtGrid:=TicdbGrid.create(grid_avisos);
   OpcButton := '' ;

  // Procedimiento para insertar los warning predeterminados ....
   QryAvisosAlertas.Active := False ;
   QryAvisosAlertas.Open ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmAvisosAlertas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If QryAvisosAlertas.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'DELETE FROM inteligent_message Where sTipo = :Tipo And iMessage = :Message') ;
          connection.zCommand.params.ParamByName('Tipo').DataType := ftString ;
          connection.zCommand.params.ParamByName('Tipo').Value := QryAvisosAlertas.FieldValues['sTipo'] ;
          connection.zCommand.params.ParamByName('Message').DataType := ftInteger ;
          connection.zCommand.params.ParamByName('Message').Value := QryAvisosAlertas.FieldValues['iMessage'] ;
          connection.zCommand.ExecSQL ;
          QryAvisosAlertas.Active := False ;
          QryAvisosAlertas.Open ;
      except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registro de Avisos y Alertas', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmAvisosAlertas.frmBarra1btnRefreshClick(Sender: TObject);
begin
   QryAvisosAlertas.Active := False ;
   QryAvisosAlertas.Open 
end;

procedure TfrmAvisosAlertas.grid_avisosCellClick(Column: TColumn);
begin
  if Opcion = 'Edit' then
  begin
      frmBarra1.btnCancel.Click;
      Opcion := '';
  end;
end;

procedure TfrmAvisosAlertas.grid_avisosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmAvisosAlertas.grid_avisosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmAvisosAlertas.grid_avisosTitleClick(Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmAvisosAlertas.frmBarra1btnExitClick(Sender: TObject);
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


procedure TfrmAvisosAlertas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmAvisosAlertas.lVisibleKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsTIPO.SetFocus
end;

procedure TfrmAvisosAlertas.Paste1Click(Sender: TObject);
begin
 //UtGrid.AddRowsFromClip;
end;

procedure TfrmAvisosAlertas.Copy1Click(Sender: TObject);
begin
 //UtGrid.CopyRowsToClip;
end;

procedure TfrmAvisosAlertas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmAvisosAlertas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmAvisosAlertas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmAvisosAlertas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmAvisosAlertas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmAvisosAlertas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmAvisosAlertas.QryAvisosAlertasAfterScroll(DataSet: TDataSet);
begin
    If QryAvisosAlertas.RecordCount > 0 Then
    Begin
        If QryAvisosAlertas.FieldValues['sTipo'] = 'Tips' Then
            tsTipo.ItemIndex := 1
        Else
            tsTipo.ItemIndex := 0 ;

        tiMessage.Text := QryAvisosAlertas.FieldValues['iMessage'] ;
        tmDescripcion.Text := QryAvisosAlertas.FieldValues['mDescripcion'] ;
        tsAutor.Text := QryAvisosAlertas.FieldValues['sAutor'] ;
        If QryAvisosAlertas.FieldValues['lVisible'] = 'Si' Then
            lVisible.Checked := True
        Else
            lVisible.Checked := False
    End
    Else
    Begin
        tsTipo.Text        := 'Tips' ;
        tiMessage.Text     := '0' ;
        tmDescripcion.Text := '' ;
        tsAutor.Text       := '' ;
        lVisible.Checked  := False
    End
end;
procedure TfrmAvisosAlertas.QryAvisosAlertasiMessageSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmAvisosAlertas.tsTipoEnter(Sender: TObject);
begin
    tsTipo.Color := global_color_entradaERP
end;

procedure TfrmAvisosAlertas.tsTipoExit(Sender: TObject);
begin
    tsTipo.Color := global_color_salidaERP;
end;

procedure TfrmAvisosAlertas.tsTipoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tiMessage.SetFocus 
end;

procedure TfrmAvisosAlertas.wEnter(Sender: TObject);
begin
    tiMessage.Color := global_color_entradaERP;
end;

procedure TfrmAvisosAlertas.wExit(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        If (tsTipo.Text = 'Warning') And (tiMessage.Text <= '10') Then
        begin
            MessageDlg('Existen mensajes predeterminados por el sistema Inteligent, estos mensajes estan en un rango de 1 a 10 de tipo "Warning" y no podran ser utilizados.', mtInformation, [mbOk], 0);
            tiMessage.SetFocus
        End ;
    tiMessage.Color := global_color_salidaERP;
end;

procedure TfrmAvisosAlertas.wKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tmDescripcion.SetFocus 
end;

procedure TfrmAvisosAlertas.tiMessageChange(Sender: TObject);
begin
  tdbeditchangef(tiMessage,'# Message');
end;

procedure TfrmAvisosAlertas.tiMessageEnter(Sender: TObject);
begin
  timessage.Color:= global_color_entradaERP

end;

procedure TfrmAvisosAlertas.tiMessageExit(Sender: TObject);
begin
  timessage.color:= global_color_salidaERP;
end;

procedure TfrmAvisosAlertas.tiMessageKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiMessage,key) then
   key:=#0;
  If Key = #13 then
    tMDESCRIPCION.SetFocus 
end;

procedure TfrmAvisosAlertas.tmDescripcionEnter(Sender: TObject);
begin
    tmDescripcion.Color := global_color_entradaERP
end;

procedure TfrmAvisosAlertas.tmDescripcionExit(Sender: TObject);
begin
    tmDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmAvisosAlertas.tsAutorEnter(Sender: TObject);
begin
    tsAutor.Color := global_color_entradaERP
end;

procedure TfrmAvisosAlertas.tsAutorExit(Sender: TObject);
begin
    tsAutor.Color := global_color_salidaERP;
end;

procedure TfrmAvisosAlertas.tsAutorKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        lVisible.SetFocus
end;

procedure TfrmAvisosAlertas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
  //utgrid.destroy;
  botonpermiso.Free;
end;

end.
