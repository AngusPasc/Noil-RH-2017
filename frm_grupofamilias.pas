unit frm_grupofamilias;

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
  TfrmGrupoFamilias = class(TForm)
    Label2: TLabel;
    Label9: TLabel;
    frmBarra1: TfrmBarra;
    tsIdGrupo: TDBEdit;
    tsDescripcion: TDBEdit;
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
    qryGruposFamilias: TZQuery;
    dsgfamilias: TDataSource;
    qryGruposFamiliassIdFamilia: TStringField;
    qryGruposFamiliassDescripcion: TStringField;
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
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tlFaseKeyPress(Sender: TObject; var Key: Char);
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
  frmGrupoFamilias : TfrmGrupoFamilias;

  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles, frm_SubFamProductos, frm_detallesubfamilias;
{$R *.dfm}

procedure TfrmGrupoFamilias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  botonpermiso.Free;
  end;

procedure TfrmGrupoFamilias.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qryGruposFamilias.Active := False ;
   qryGruposFamilias.Open ;

   Grid_GruposIsometrico.SetFocus;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

   try
      if frmConsumibles.Active then
         frmBarra1.btnAdd.Click;
   Except
   end;
end;
procedure TfrmGrupoFamilias.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmGrupoFamilias.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmGrupoFamilias.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   qryGruposFamilias.Append ;
   qryGruposFamilias.FieldValues['sIdFamilia']      := '' ;
   qryGruposFamilias.FieldValues['sDescripcion']    := '' ;
   tsIdGrupo.ReadOnly:=False;
   tsIdGrupo.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_gruposisometrico.Enabled := False;
end;

procedure TfrmGrupoFamilias.frmBarra1btnEditClick(Sender: TObject);
begin
  If qryGruposFamilias.RecordCount > 0 Then
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
      sOldId := qryGruposFamilias.FieldValues['sIdFamilia'];
      qryGruposFamilias.Edit ;
      tsIdGrupo.ReadOnly:=True;
    except
      on e : exception do
      begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al agregar registro', 0);
      end;
    end;
  End;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmGrupoFamilias.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  IdGrupo  : string;
begin
    {Validaciones de campos}
    nombres:=TStringList.Create;
    cadenas:=TStringList.Create;
    nombres.Add('Clave Familia/Grupo');
    nombres.Add('Descripcion');
    cadenas.Add(tsIdGrupo.Text);
    cadenas.Add(tsDescripcion.Text);

    if not validaTexto(nombres, cadenas, '','') then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
    lEdicion := qryGruposFamilias.state = dsEdit;//capturar la bandera para usarla luego del post
    Try
       IdGrupo := QryGruposFamilias.FieldValues['sIdFamilia'];
       qryGruposFamilias.Post ;

       Insertar1.Enabled  := True ;
       Editar1.Enabled    := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled       := False ;
       Eliminar1.Enabled  := True ;
       Refresh1.Enabled   := True ;
       Salir1.Enabled     := True ;

       try //frmConsumibles
          frmConsumibles.grupos.Refresh;
          frmConsumibles.dbGrupos.KeyValue := IdGrupo;
          frmConsumibles.dbGrupos.SetFocus;
       Except
       end;

       frmBarra1.btnPostClick(Sender);
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
         lEdicion := false;
       end;
    end;

    if (lEdicion) and (sOldId <> qryGruposFamilias.FieldValues['sIdFamilia']) then
    begin
        //El registro fue editado y su ID cambio, es necesario actualizar este ID en tablas dependientes
        Connection.zCommand.Active := False ;
        Connection.zCommand.SQL.Clear ;
        Connection.zCommand.SQL.Add('UPDATE insumos SET sIdGrupo = :nuevo WHERE sIdGrupo = :viejo');
        Connection.zCommand.Params.ParamByName('nuevo').value := qryGruposFamilias.FieldValues['sIdFamilia'];
        Connection.zCommand.Params.ParamByName('viejo').value := sOldId;
        try
           Connection.zCommand.ExecSQL;
        except
           MessageDlg('Ocurrio un error al actualizar los registros de la tabla dependiente "insumos".', mtInformation, [mbOk], 0);
        end;
    end;

    try //frmSbFamProductos
        frmSubFamProductos.qryFamilias.Refresh;
        frmSubFamProductos.cbFamilia.KeyValue := IdGrupo;
    Except
    end;

    try //frmdetallesubfamilias
        frmdetallesubfamilias.qryFamilias.Refresh;
        frmdetallesubfamilias.dbcbxFamilia.KeyValue := IdGrupo;
        frmdetallesubfamilias.dbcbxFamilia.SetFocus;
    Except
    end;

    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;
    grid_gruposisometrico.Enabled := True;
    if sOpcion = 'Edit' then
    begin
         grid_gruposisometrico.Enabled := True;
         sOpcion := '';
    end;

    try
        if frmConsumibles.Active then
        begin
            frmbarra1.btnCancel.Click;
        end;
    Except
    end;
    tsIdGrupo.ReadOnly:=False;
    global_frmActivo := '';
end;

procedure TfrmGrupoFamilias.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   qryGruposFamilias.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   tsIdGrupo.ReadOnly:=False;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_gruposisometrico.Enabled := True;
   sOpcion := '';
end;

procedure TfrmGrupoFamilias.frmBarra1btnDeleteClick(Sender: TObject);
var
   lBloquea : boolean;
   sCadena  : string;
begin
  If   qryGruposFamilias.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        sCadena := '';
        //Verificamos si esta familia ya está siendo usada por un insumo..
        lBloquea := BuscaDatosInsumos(-1, qryGruposFamilias.FieldValues['sIdFamilia'],'insumos','sIdGrupo');
        If lBloquea Then
           sCadena := sCadena + 'Insumos, ';

        //Verificamos si esta familia ya está siendo usada por una subfamilia..
        lBloquea := BuscaDatosInsumos(-1, qryGruposFamilias.FieldValues['sIdFamilia'],'subfamilia','sIdfamilia');
        If lBloquea Then
           sCadena := sCadena + 'SubFamilias, ';

        if sCadena <> '' then
           MessageDlg('No se puede Borrar el Registro la Familia se guardó en ['+sCadena+']', mtInformation, [mbOk], 0)
        Else
           qryGruposFamilias.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmGrupoFamilias.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryGruposFamilias.refresh ;
end;

procedure TfrmGrupoFamilias.frmBarra1btnExitClick(Sender: TObject);
begin
  global_familia := qryGruposFamilias.FieldByName('sIdFamilia').AsString;
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

procedure TfrmGrupoFamilias.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmGrupoFamilias.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegaR)
end;

procedure TfrmGrupoFamilias.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmGrupoFamilias.Copy1Click(Sender: TObject);
begin
//UtGrid.AddRowsFromClip;
end;

procedure TfrmGrupoFamilias.Cut1Click(Sender: TObject);
begin
  //UtGrid.CopyRowsToClip;
end;

procedure TfrmGrupoFamilias.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmGrupoFamilias.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmGrupoFamilias.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmGrupoFamilias.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmGrupoFamilias.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmGrupoFamilias.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmGrupoFamilias.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmGrupoFamilias.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmGrupoFamilias.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmGrupoFamilias.tsIdGrupoEnter(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_entradaERP;
end;

procedure TfrmGrupoFamilias.tsIdGrupoExit(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_salida
end;

procedure TfrmGrupoFamilias.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmGrupoFamilias.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmGrupoFamilias.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmGrupoFamilias.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsIdGrupo.SetFocus
end;

procedure TfrmGrupoFamilias.tlFaseKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsIdGrupo.SetFocus
end;

end.
