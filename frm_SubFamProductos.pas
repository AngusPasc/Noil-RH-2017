unit frm_SubFamProductos;

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
  TfrmSubFamProductos = class(TForm)
    Label2: TLabel;
    Label9: TLabel;
    frmBarra1: TfrmBarra;
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
    N3: TMenuItem;
    Salir1: TMenuItem;
    qrysubFamilias: TZQuery;
    ds_subFamilias: TDataSource;
    cbFamilia: TDBLookupComboBox;
    qryFamilias: TZQuery;
    ds_Familias: TDataSource;
    qryFamiliassIdFamilia: TStringField;
    qryFamiliassDescripcion: TStringField;
    qrysubFamiliasiIdSubfamilia: TIntegerField;
    qrysubFamiliassDescripcion: TStringField;
    qrysubFamiliassIdFamilia: TStringField;
    qrysubFamiliasfamilia: TStringField;
    grid_Subfamilia: TcxGrid;
    grid_SubfamiliaDBTableView1: TcxGridDBTableView;
    grid_SubfamiliaDBTableView1Column1: TcxGridDBColumn;
    grid_SubfamiliaDBTableView1Column2: TcxGridDBColumn;
    grid_SubfamiliaLevel1: TcxGridLevel;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    CatalogosdeFamilias1: TMenuItem;
    btn1: TButton;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_SubfamiliaCellClick(Column: TColumn);
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
    procedure grid_SubfamiliaEnter(Sender: TObject);
    procedure grid_SubfamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_SubfamiliaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure cbFamiliaEnter(Sender: TObject);
    procedure cbFamiliaExit(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Char);
    procedure CatalogosdeFamilias1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubFamProductos : TfrmSubFamProductos;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles, frm_grupofamilias, frm_detallesubfamilias ;
{$R *.dfm}

procedure TfrmSubFamProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmSubFamProductos.FormShow(Sender: TObject);
begin

  qryFamilias.active := False;
  qryFamilias.open;

   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qrysubFamilias.Active := False ;
   qrysubFamilias.Open ;

   grid_Subfamilia.SetFocus;

   if global_frmActivo = 'detallesubfamilias' then
   begin
       cbFamilia.KeyValue := frmdetallesubfamilias.dbcbxFamilia.KeyValue ;
   end;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

   try
      if frmConsumibles.Active then
         frmBarra1.btnAdd.Click;
   Except
   end;
end;
procedure TfrmSubFamProductos.grid_SubfamiliaCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmSubFamProductos.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmSubFamProductos.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   qrysubFamilias.Append ;
   qrysubFamilias.FieldValues['sIdFamilia']      := '' ;
   qrysubFamilias.FieldValues['sDescripcion']    := '' ;   

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_Subfamilia.Enabled := False;

end;

procedure TfrmSubFamProductos.frmBarra1btnEditClick(Sender: TObject);
var
    lBloquea : boolean;
begin
    If qrysubFamilias.RecordCount > 0 Then
    Begin
        try
        frmBarra1.btnEditClick(Sender);
        Insertar1.Enabled := False ;
        Editar1.Enabled := False ;
        Registrar1.Enabled := True ;
        Can1.Enabled := True ;
        Eliminar1.Enabled := False ;
        Refresh1.Enabled := False ;
        salir1.Enabled := False ;
        sOpcion := 'Edit';
        sOldId := qrysubFamilias.FieldValues['sIdFamilia'];
        qrysubFamilias.Edit ;
        grid_Subfamilia.Enabled := False;

        //Verificamos si esta subfamilia ya está siendo usada por un insumo.. si es así no permitir editar su familia.
        lBloquea := BuscaDatosInsumos( qrysubFamilias.FieldByName('iIdSubfamilia').AsInteger,'','insumos','iIdSubfamilia');
        cbFamilia.Enabled := not (lbloquea);

        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmSubFamProductos.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  IdGrupo, IdSubFamilia  : string;
begin

    {Validaciones de campos}
    nombres:=TStringList.Create;
    cadenas:=TStringList.Create;
    nombres.Add('Familia');         nombres.Add('Descripcion');
    cadenas.Add(cbFamilia.Text); cadenas.Add(tsDescripcion.Text);

    if not validaTexto(nombres, cadenas, '',cbFamilia.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
    Try
       IdGrupo      := qrysubFamilias.FieldValues['sIdFamilia'];
       qrysubFamilias.FieldByName('sIdFamilia').AsString := cbFamilia.KeyValue;
       qrysubFamilias.Post ;
       IdSubFamilia := qrysubFamilias.FieldValues['iIdSubFamilia'];

       Insertar1.Enabled  := True ;
       Editar1.Enabled    := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled       := False ;
       Eliminar1.Enabled  := True ;
       Refresh1.Enabled   := True ;
       Salir1.Enabled     := True ;
       cbFamilia.Enabled  := True;

       grid_Subfamilia.Enabled := True;

       try //frmConsumibles
          frmConsumibles.qrysubfamilia.Refresh;
          frmConsumibles.dbsubfamilia.KeyValue := IdGrupo;
          frmConsumibles.dbsubfamilia.SetFocus;
       Except
       end;

       try //frmdetallesubfamilias
          frmdetallesubfamilias.qryFamilias.Refresh;
          frmdetallesubfamilias.dbcbxFamilia.KeyValue    := cbFamilia.KeyValue;

          frmdetallesubfamilias.qrySubFamilia2.Refresh;

          frmdetallesubfamilias.qrysubFamilias.Refresh;
          frmdetallesubfamilias.qrySubFamilias.Filtered := False;
          frmdetallesubfamilias.qrySubFamilias.Filter := 'sIdFamilia = '+QuotedStr(cbFamilia.KeyValue);
          frmdetallesubfamilias.qrySubFamilias.filtered := True;
                                                                 
          frmdetallesubfamilias.dbcbxsubFamilia.KeyValue := IdSubFamilia;
          frmdetallesubfamilias.dbcbxsubFamilia.SetFocus;          
       Except                                                       
       end;

       frmBarra1.btnPostClick(Sender);
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de SubFamilia de Materiales', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
         lEdicion := false;
       end;
    end;
end;

procedure TfrmSubFamProductos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   qrysubFamilias.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   cbFamilia.Enabled := True;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_Subfamilia.Enabled := True;
   sOpcion := '';
end;

procedure TfrmSubFamProductos.frmBarra1btnDeleteClick(Sender: TObject);
var
   lBloquea : boolean;
   sCadena  : string;
begin
  if qrysubFamilias.RecordCount > 0 then
  begin
    if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        sCadena := '';
        //Verificamos si esta Subfamilia ya está siendo usada por un insumo..
        lBloquea := BuscaDatosInsumos(qrysubFamilias.FieldValues['iIdSubFamilia'],'','insumos','iIdSubFamilia');
        If lBloquea Then
           sCadena := sCadena + 'Insumos, ';

        //Verificamos si esta Subfamilia ya está siendo usada por un tipo subfamilia..
        lBloquea := BuscaDatosInsumos(qrysubFamilias.FieldValues['iIdSubFamilia'],'','tipo_subfamilia','iIdSubfamilia');
        If lBloquea Then
           sCadena := sCadena + 'Tipos SubFamilias, ';

        if sCadena <> '' then
           MessageDlg('No se puede Borrar el Registro la SubFamilia se guardó en ['+sCadena+']', mtInformation, [mbOk], 0)
        Else
           qrysubFamilias.Delete;
      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Sub familias por Materiales', 'Al eliminar registro', 0);
        end;
      end
    end;
  end;
end;

procedure TfrmSubFamProductos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qrysubFamilias.refresh ;
end;

procedure TfrmSubFamProductos.frmBarra1btnExitClick(Sender: TObject);
begin
  global_subfamilia := qrysubFamilias.fieldByName('iidsubfamilia').asinteger;

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

procedure TfrmSubFamProductos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmSubFamProductos.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmSubFamProductos.CatalogosdeFamilias1Click(Sender: TObject);
begin
application.CreateForm(TfrmGrupoFamilias, frmGrupoFamilias);
frmGrupoFamilias.ShowModal;
end;

procedure TfrmSubFamProductos.cbFamiliaEnter(Sender: TObject);
begin
cbFamilia.Color := global_color_entradaERP;
end;

procedure TfrmSubFamProductos.cbFamiliaExit(Sender: TObject);
begin
  cbFamilia.Color := global_color_salidaERP;
end;

procedure TfrmSubFamProductos.GlobalKeyUp(Sender: TObject; var Key: Char);
begin
if KEY = #13 then
   tsDescripcion.setfocus;
end;

procedure TfrmSubFamProductos.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmSubFamProductos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmSubFamProductos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmSubFamProductos.btn1Click(Sender: TObject);
begin
    global_frmActivo := 'SubFamProductos';
    application.CreateForm(TfrmGrupoFamilias, frmGrupoFamilias);
    frmGrupoFamilias.ShowModal;
end;

procedure TfrmSubFamProductos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmSubFamProductos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmSubFamProductos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmSubFamProductos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmSubFamProductos.grid_SubfamiliaEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmSubFamProductos.grid_SubfamiliaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmSubFamProductos.grid_SubfamiliaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmSubFamProductos.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmSubFamProductos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmSubFamProductos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP
end;

end.
