unit frm_isometricos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  frxClass, frxDBSet, Buttons,  utilerias,unitactivapop,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel, strUtils,
  rxToolEdit, rxCurrEdit, udbgrid, unitexcepciones,ClipBrd,
  unittbotonespermisos, UnitValidaTexto, UnitTablasImpactadas, UFunctionsGHH, UnitValidacion,
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
  cxGrid;
type          
  TfrmIsometricos = class(TForm)
    frmBarra1: TfrmBarra;
    ds_isometricos: TDataSource;
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
    Imprimir1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    GruposIsometrico: TZReadOnlyQuery;
    isometricos: TZQuery;
    isometricossContrato: TStringField;
    isometricossIsometrico: TStringField;
    isometricossIdGrupo: TStringField;
    isometricosmComentarios: TMemoField;
    isometricossGrupo: TStringField;
    PartidasxIsometrico: TZQuery;
    PartidasxIsometricosContrato: TStringField;
    PartidasxIsometricosIsometrico: TStringField;
    PartidasxIsometricosNumeroActividad: TStringField;
    PartidasxIsometricodCantidad: TFloatField;
    PartidasxIsometricodCantidadAnexo: TFloatField;
    PartidasxIsometricosMedida: TStringField;
    PartidasxIsometricodVentaMN: TCurrencyField;
    PartidasxIsometricosDescripcion: TStringField;
    dsPartidasxIsometrico: TDataSource;
    PartidasxIsometricodMontoMN: TCurrencyField;
    Panel: tNewGroupBox;
    tNewPanel1: tNewPanel;
    tdTotal: TCurrencyEdit;
    Label4: TLabel;
    PartidasConceptos: TMenuItem;
    plataformas: TZReadOnlyQuery;
    ds_Plataformas: TDataSource;
    isometricossIdPlataforma: TStringField;
    frxImpresion: TfrxReport;
    isometricosiRevision: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_planos: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    grid_partida_conceptos: TcxGrid;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column8: TcxGridDBColumn;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    lb5: TLabel;
    tsIdPlataforma: TDBLookupComboBox;
    tsIsometrico: TDBEdit;
    tmComentarios: TDBMemo;
    tsIdGrupo: TDBLookupComboBox;
    tiRevision: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_isometricosCellClick(Column: TColumn);
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
    procedure grid_isometricosEnter(Sender: TObject);
    procedure tsIsometricoEnter(Sender: TObject);
    procedure tsIsometricoExit(Sender: TObject);
    procedure tsIsometricoKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure isometricosAfterScroll(DataSet: TDataSet);
    procedure tiRevisionEnter(Sender: TObject);
    procedure tiRevisionExit(Sender: TObject);
    procedure tiRevisionKeyPress(Sender: TObject; var Key: Char);
    procedure isometricosCalcFields(DataSet: TDataSet);
    procedure PartidasxIsometricoCalcFields(DataSet: TDataSet);
    procedure PartidasxIsometricoAfterInsert(DataSet: TDataSet);
    procedure grid_partidasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PartidasxIsometricoAfterScroll(DataSet: TDataSet);
    procedure PartidasxIsometricoAfterPost(DataSet: TDataSet);
    procedure PartidasxIsometricoAfterDelete(DataSet: TDataSet);
    procedure PartidasConceptosClick(Sender: TObject);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure grid_isometricosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_isometricosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_isometricosTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure grid_partidasDblClick(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure isometricosiRevisionSetText(Sender: TField; const Text: string);
    procedure tsIdPlataformaEnter(Sender: TObject);
    procedure tsIdPlataformaExit(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmIsometricos       : TfrmIsometricos;
   sGrupo               : String ;
   sOpcionPartida       : String ;
   sIsometrico          : String;
   dsIsometricosDetalle,  dsIsometricos : TFrxDBDataset ;
  // utgrid:ticdbgrid;
   botonpermiso:tbotonespermisos;
   sOpcion : string;
   sIdOrig : string;

   //Aqui para activar el copiar y pegar en memos
   lCopiaObjeto : boolean;

implementation
uses
    frm_estimainstalado;

{$R *.dfm}

procedure TfrmIsometricos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  global_frmActivo := 'ninguno';
  botonpermiso.Free;
  action := cafree ;
  //dsIsometricos.Destroy ;
  //dsIsometricosDetalle.Destroy ;
 // utgrid.Destroy;
end;

procedure TfrmIsometricos.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cIsometricos', PopupPrincipal);
  Plataformas.Open ;
  OpcButton := '' ;
  sIdOrig := '';
  frmbarra1.btnCancel.Click ;
  sGrupo := '' ;
  isometricos.Active := False ;
  isometricos.Params.ParamByName('Contrato').DataType := ftString ;
  isometricos.Params.ParamByName('Contrato').Value := Global_Contrato ;
  isometricos.Open ;

  if (global_frmActivo = 'frm_estimainstalado') then
      frmBarra1.btnAdd.Click;

  GruposIsometrico.Active := False ;
  GruposIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
  GruposIsometrico.Params.ParamByName('Contrato').Value := Global_Contrato ;
  GruposIsometrico.Open ;
  //UtGrid:=TicdbGrid.create(grid_planos);
  BotonPermiso.permisosBotones(frmBarra1);
end;
procedure TfrmIsometricos.grid_isometricosCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricos.frmBarra1btnAddClick(Sender: TObject);
begin
     frmBarra1.btnAddClick(Sender);
     Insertar1.Enabled := False ;
     Editar1.Enabled := False ;
     Registrar1.Enabled := True ;
     Can1.Enabled := True ;
     Eliminar1.Enabled := False ;
     Refresh1.Enabled := False ;
     Salir1.Enabled := False ;
     Isometricos.Append ;
     Isometricos.FieldValues['sContrato'] := global_contrato ;
     If sGrupo <> '' Then
        Isometricos.FieldValues['sIdGrupo'] := sGrupo ;
     Isometricos.FieldValues['iRevision'] := 0 ;
     tsIsometrico.SetFocus ;
     lCopiaObjeto := True;
     //activapop(frmIsometricos,popupprincipal);
     BotonPermiso.permisosBotones(frmBarra1);
     grid_planos.Enabled := False;
end;

procedure TfrmIsometricos.frmBarra1btnEditClick(Sender: TObject);
begin
  TRY
    If Isometricos.RecordCount > 0 Then
    Begin
       sIsometrico := tsIsometrico.Text;
       frmBarra1.btnEditClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       sOpcion := 'Edit';
       //activapop(frmIsometricos,popupprincipal);
       sIdOrig := isometricos.FieldByName('sIsometrico').AsString;
       Isometricos.Edit ;
       tsIsometrico.SetFocus
    End
  EXCEPT
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_isometricos', 'Al agregar registro', 0);
    end;
  END;
  BotonPermiso.permisosBotones(frmBarra1);
end;
procedure TfrmIsometricos.frmBarra1btnPostClick(Sender: TObject);
var
   e    :Real;
   resp :String;
   nombres, cadenas: TStringList;
   lEdita: boolean;
   sIdisometrico : string;
begin
  {Validaciones de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Revision');  nombres.Add('Clasificación');
  cadenas.Add(tiRevision.Text); cadenas.Add(tsIdGrupo.Text);

  nombres.Add('Paltaforma');     nombres.Add('Descripción');
  cadenas.Add(tsIdPlataforma.Text); cadenas.Add(tmComentarios.Text);

  if not validaTexto(nombres, cadenas, 'No. de Plano',tsIsometrico.Text) then
  begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
  end;

  {Continua insercion de datos..}
  lEdita := false;
  resp := 'Si';
  if isometricos.State=dsedit then
  begin
    lEdita := true;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add(' Select ep.sIsometricoReferencia'+
                                  ' From estimacionxpartida ep '+
                                  ' inner join estimaciones es on (es.sContrato = ep.sContrato '+
                                  ' and es.sNumeroGenerador = ep.sNumeroGenerador )'+
                                  ' where ep.sContrato = :Contrato And ep.sIsometricoReferencia = :Isometrico and es.lstatus<>"Pendiente"' );
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.qryBusca.Params.ParamByName('Isometrico').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Isometrico').Value := sIsometrico;
      Connection.qryBusca.Open ;

      If Connection.qryBusca.RecordCount > 0 Then
        If MessageDlg('Existen Partidas Validadas y/o Autorizadas con el Isometrico Modificado, Desea actualizar los Registros?'
        +#13 + #10 + 'Si no acepta actualizar los registros, se cancelara la edicion de el actual registro. ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
            resp := 'No';
      Connection.qryBusca.Close;
  end;

  if Resp='Si' then
  begin
    try
      sIdIsometrico := isometricos.FieldValues['sIsometrico'];
      Isometricos.Post ;
      //desactivapop(popupprincipal);

      if (global_frmActivo = 'frm_estimainstalado') then
      begin
           frmEstimaInstalado.isometricos.Refresh ;
           frmEstimaInstalado.tsIsometricoReferencia.KeyValue :=  sIdIsometrico;
           frmEstimaInstalado.tsIsometricoReferencia.SetFocus;
      end;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      frmBarra1.btnPostClick(Sender);
      BotonPermiso.permisosBotones(frmBarra1);

    except
         on e : exception do
         begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_formulario1', 'Al salvar registro', 0);
           frmBarra1.btnCancel.Click ;
           lEdita := false;//cancelar la actualizacion de tablas dependientes
         end;
    end;
    if (lEdita) and (Isometricos.FieldByName('sIsometrico').AsString <> sIdOrig) then
    begin
        tablasDependientes(sIdOrig);
    end;
  end
  else
    frmBarra1.btnCancel.Click ;

  if (global_frmActivo = 'frm_estimainstalado') then
  begin
      global_frmActivo := 'ninguno';
      frmbarra1.btnCancel.Click;
      frmbarra1.btnExit.Click;
  end;

  if sOpcion = 'Edit' then
  begin
      grid_planos.Enabled := True;
      sOpcion := '';
  end;

end;

procedure TfrmIsometricos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Isometricos.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   grid_planos.Enabled := True;
   sOpcion := '';
end;

procedure TfrmIsometricos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Isometricos.RecordCount > 0 then
  Begin
    If MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(Isometricos.FieldByName('sIsometrico').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      try
        Isometricos.Delete ;

        if (global_frmActivo = 'frm_estimainstalado') then
        begin
            frmEstimaInstalado.isometricos.Refresh ;
            frmEstimaInstalado.tsIsometricoReferencia.SetFocus;
        end;
      except
        on e : exception do
        begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_isometricos', 'Al eliminar registro', 0);
        end;
      end;
    end;
  End;

  if (global_frmActivo = 'frm_estimainstalado') then
  begin
       global_frmActivo := 'ninguno';
       frmbarra1.btnCancel.Click;
       frmbarra1.btnExit.Click;
  end;
end;

procedure TfrmIsometricos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Isometricos.refresh ;
  gruposIsometrico.Refresh ;

end;

procedure TfrmIsometricos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmIsometricos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmIsometricos.Copy1Click(Sender: TObject);
 begin
  if lCopiaObjeto then
     tsIsometrico.PasteFromClipboard
  else
    // UtGrid.AddRowsFromClip;
end;

procedure TfrmIsometricos.Cut1Click(Sender: TObject);
begin
  if lCopiaObjeto then
     tsIsometrico.CopyToClipboard
  else
    // UtGrid.CopyRowsToClip;
end;

procedure TfrmIsometricos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmIsometricos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmIsometricos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmIsometricos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmIsometricos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmIsometricos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmIsometricos.grid_isometricosEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmIsometricos.grid_isometricosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   //.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmIsometricos.grid_isometricosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmIsometricos.grid_isometricosTitleClick(Column: TColumn);
begin
 //.DbGridTitleClick(Column);
end;

procedure TfrmIsometricos.tsIsometricoEnter(Sender: TObject);
begin
    tsIsometrico.Color := global_color_entradaERP;
    lCopiaObjeto := True;
end;

procedure TfrmIsometricos.tsIsometricoExit(Sender: TObject);
begin
    tsIsometrico.Color := global_color_salidaERP;
    lCopiaObjeto := False;
end;

procedure TfrmIsometricos.tsIsometricoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tiRevision.SetFocus 
end;


procedure TfrmIsometricos.tmComentariosEnter(Sender: TObject);
begin
    tmComentarios.Color := global_color_entradaERP;
end;

procedure TfrmIsometricos.tmComentariosExit(Sender: TObject);
begin
    tmComentarios.Color := global_color_salidaERP;
end;

procedure TfrmIsometricos.tsIdGrupoEnter(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_entradaERP;
end;

procedure TfrmIsometricos.tsIdGrupoExit(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_salidaERP;
end;

procedure TfrmIsometricos.tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsidplataforma.SetFocus
end;

procedure TfrmIsometricos.tsIdPlataformaEnter(Sender: TObject);
begin
  tsIdPlataforma.Color := global_color_entradaERP;
end;

procedure TfrmIsometricos.tsIdPlataformaExit(Sender: TObject);
begin
  tsIdPlataforma.Color := global_color_salidaERP;
end;

procedure TfrmIsometricos.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tmcomentarios.SetFocus

end;

procedure TfrmIsometricos.frmBarra1btnPrinterClick(Sender: TObject);
begin
   if not FileExists(global_files + global_miReporte + '_IsometricosGeneral.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_IsometricosGeneral.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;

   dsIsometricos          := TfrxDBDataset.Create(Self) ;
   dsIsometricos.DataSet  := Isometricos ;
   dsIsometricos.UserName := 'dsIsometricos' ;

   frxImpresion.DataSets.Add(dsIsometricos) ;

   frxImpresion.PreviewOptions.MDIChild := False ;
   frxImpresion.PreviewOptions.Modal := True ;
   frxImpresion.PreviewOptions.Maximized := lCheckMaximized () ;
   frxImpresion.PreviewOptions.ShowCaptions := False ;
   frxImpresion.Previewoptions.ZoomMode := zmPageWidth ;
   frxImpresion.LoadFromFile(Global_Files + global_miReporte + '_IsometricosGeneral.fr3') ;
   frxImpresion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
end;

procedure TfrmIsometricos.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click;
end;

procedure TfrmIsometricos.isometricosAfterScroll(DataSet: TDataSet);
begin
    If Isometricos.RecordCount > 0 Then
    Begin
        PartidasxIsometrico.Active := False ;
        PartidasxIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
        PartidasxIsometrico.Params.ParamByName('Contrato').Value := global_Contrato ;
        PartidasxIsometrico.Params.ParamByName('Isometrico').DataType := ftString ;
        PartidasxIsometrico.Params.ParamByName('Isometrico').Value := Isometricos.FieldValues['sIsometrico'] ;
        PartidasxIsometrico.Open ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(i.dCantidad * a.dVentaMN) as dTotalMN  From isometricos_partidas i ' +
                                    'INNER JOIN actividadesxanexo a ON (a.sContrato = i.sContrato And a.sNumeroActividad = i.sNumeroActividad And a.sIdConvenio = :convenio) ' +
                                    'Where i.sContrato = :contrato and i.sIsometrico = :Isometrico Group By sIsometrico' ) ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
        Connection.qryBusca.Params.ParamByName('Isometrico').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Isometrico').Value := isometricossIsometrico.Text ;
        Connection.qryBusca.Open ;

        If Connection.qryBusca.RecordCount > 0 Then
            tdTotal.Value := Connection.qryBusca.FieldValues['dTotalMN']
        Else
            tdTotal.Value := 0 ;
    End
end;

function TfrmIsometricos.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sIsometrico');ParamValuesSET.Add(Isometricos.FieldByName('sIsometrico').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIsometrico');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('isometricos',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
  else begin
    ParamNamesSET.Clear;ParamValuesSET.Clear;ParamNamesWHERE.Clear;ParamValuesWHERE.Clear;
    ParamNamesSET.Add('sIsometricoReferencia');ParamValuesSET.Add(Isometricos.FieldByName('sIsometrico').AsString);
    ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
    ParamNamesWHERE.Add('sIsometricoReferencia');ParamValuesWHERE.Add(idOrig);
    if not UnitTablasImpactadas.impactar('isometricos1',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
    begin
      result := false;
      showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
    end;
  end;
end;

function TfrmIsometricos.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIsometrico');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('isometricos',ParamNamesWHERE,ParamValuesWHERE);
  if result then
  begin
    ParamNamesWHERE.Clear;ParamValuesWHERE.Clear;
    ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
    ParamNamesWHERE.Add('sIsometricoReferencia');ParamValuesWHERE.Add(idOrig);
    result := not UnitTablasImpactadas.hayDependientes('isometricos1',ParamNamesWHERE,ParamValuesWHERE);
  end;
end;


procedure TfrmIsometricos.tiRevisionEnter(Sender: TObject);
begin
    tiRevision.Color := global_color_entradaERP;
end;

procedure TfrmIsometricos.tiRevisionExit(Sender: TObject);
begin
    tiRevision.Color := global_color_salidaERP;
end;

procedure TfrmIsometricos.tiRevisionKeyPress(Sender: TObject; var Key: Char);
begin

    If Key = #13 Then
        tsIdGrupo.SetFocus
end;


procedure TfrmIsometricos.isometricosCalcFields(DataSet: TDataSet);
begin
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sDescripcion  From gruposisometrico Where sContrato = :contrato and sIdGrupo = :grupo' ) ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('grupo').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('grupo').Value := isometricos.FieldValues ['sIdGrupo'] ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
        isometricossGrupo.Text := Connection.qryBusca.FieldValues['sDescripcion'] ;

end;


procedure TfrmIsometricos.isometricosiRevisionSetText(Sender: TField;
  const Text: string);
begin
   Sender.Value:=abs(strToIntDef(text, 0));
end;

procedure TfrmIsometricos.PartidasxIsometricoCalcFields(DataSet: TDataSet);
begin
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select mDescripcion, sMedida, dCantidadAnexo, dVentaMN  From actividadesxanexo Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroActividad = :actividad' ) ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio ;
    Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('actividad').Value := PartidasxIsometrico.FieldValues['sNumeroActividad']  ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
    Begin
        PartidasxIsometricodCantidadAnexo.Value := Connection.qryBusca.FieldValues['dCantidadAnexo'] ;
        PartidasxIsometricodVentaMN.Value := Connection.qryBusca.FieldValues['dVentaMN'] ;

        PartidasxIsometricosMedida.Text := Connection.qryBusca.FieldValues['sMedida'] ;
        PartidasxIsometricosDescripcion.Text := MidStr (Connection.qryBusca.FieldValues['mDescripcion'], 1 , 200) ;
        PartidasxIsometricodMontoMN.Value := Connection.qryBusca.FieldValues['dVentaMN'] * PartidasxIsometrico.FieldValues['dCantidad']
    End ;
end;

procedure TfrmIsometricos.PartidasxIsometricoAfterInsert(
  DataSet: TDataSet);
begin
    PartidasxIsometrico.FieldValues['sContrato'] := global_contrato ;
    PartidasxIsometrico.FieldValues['sIsometrico'] := isometricos.FieldValues['sIsometrico'] ;
    PartidasxIsometrico.FieldValues['dCantidad'] := 0 ;
end;

procedure TfrmIsometricos.grid_partidasDblClick(Sender: TObject);
begin
    Panel.Visible := false;
end;

procedure TfrmIsometricos.grid_partidasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    If Key = VK_RETURN	Then
        Key := Ord(VK_TAB)
end;

procedure TfrmIsometricos.PartidasxIsometricoAfterScroll(
  DataSet: TDataSet);
begin
    If PartidasxIsometrico.State = dsBrowse Then
      If PartidasxIsometrico.FieldByName('sDescripcion').AsString <> '' Then
        grid_partida_conceptos.Hint := PartidasxIsometrico.FieldByName('sDescripcion').AsString;

end;

procedure TfrmIsometricos.PartidasxIsometricoAfterPost(DataSet: TDataSet);
begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(i.dCantidad * a.dVentaMN) as dTotalMN  From isometricos_partidas i ' +
                                    'INNER JOIN actividadesxanexo a ON (a.sContrato = i.sContrato And a.sNumeroActividad = i.sNumeroActividad And a.sIdConvenio = :convenio) ' +
                                    'Where i.sContrato = :contrato and i.sIsometrico = :Isometrico Group By sIsometrico' ) ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
        Connection.qryBusca.Params.ParamByName('Isometrico').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Isometrico').Value := isometricossIsometrico.Text ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
            tdTotal.Value := Connection.qryBusca.FieldValues['dTotalMN']
        Else
            tdTotal.Value := 0 ;

end;

procedure TfrmIsometricos.PartidasxIsometricoAfterDelete(
  DataSet: TDataSet);
begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select Sum(i.dCantidad * a.dVentaMN) as dTotalMN  From isometricos_partidas i ' +
                                    'INNER JOIN actividadesxanexo a ON (a.sContrato = i.sContrato And a.sNumeroActividad = i.sNumeroActividad And a.sIdConvenio = :convenio) ' +
                                    'Where i.sContrato = :contrato and i.sIsometrico = :Isometrico Group By sIsometrico' ) ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
        Connection.qryBusca.Params.ParamByName('Isometrico').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Isometrico').Value := isometricossIsometrico.Text ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
            tdTotal.Value := Connection.qryBusca.FieldValues['dTotalMN']
        Else
            tdTotal.Value := 0 ;

end;

procedure TfrmIsometricos.PartidasConceptosClick(Sender: TObject);
begin
   //Panel.Visible := Not Panel.Visible ;
end;

end.
