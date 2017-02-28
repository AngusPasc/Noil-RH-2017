unit frm_detallesubfamilias;

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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxButtons, ClipBrd,masUtilerias,
  FormAutoScaler ;

type
  Tfrmdetallesubfamilias = class(TForm)
    Label2: TLabel;
    Label9: TLabel;
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
    Salir1: TMenuItem;
    qryDetallesSubFamilias: TZQuery;
    dsDetalleSubFamilia: TDataSource;
    dbeTipo: TDBEdit;
    qrySubFamilias: TZQuery;
    qryFamilias: TZQuery;
    qryFamiliassIdFamilia: TStringField;
    qryFamiliassDescripcion: TStringField;
    Label1: TLabel;
    dsSubFamilia: TDataSource;
    dsFamilia: TDataSource;
    dbcbxFamilia: TDBLookupComboBox;
    dbcbxSubFamilia: TDBLookupComboBox;
    qryDetallesSubFamiliasiIdTipoSubFamilia: TIntegerField;
    qryDetallesSubFamiliasiIdSubFamilia: TIntegerField;
    qryDetallesSubFamiliassTipo: TStringField;
    qryDetallesSubFamiliasSubFamilia: TStringField;
    qrySubFamiliasiIdSubfamilia: TIntegerField;
    qrySubFamiliassIdFamilia: TStringField;
    qrySubFamiliassDescripcion: TStringField;
    qrySubFamilia2: TZQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    dsSubFamilia2: TDataSource;
    gridTipoSubFamilia: TcxGrid;
    gridTipoSubFamiliaDBTableView1: TcxGridDBTableView;
    gridTipoSubFamiliaDBTableView1Column1: TcxGridDBColumn;
    gridTipoSubFamiliaDBTableView1Column2: TcxGridDBColumn;
    gridTipoSubFamiliaLevel1: TcxGridLevel;
    btnSubFamilias: TcxButton;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gridTipoSubFamiliaCellClick(Column: TColumn);
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
    procedure gridTipoSubFamiliaEnter(Sender: TObject);
    procedure gridTipoSubFamiliaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcbxFamiliaEnter(Sender: TObject);
    procedure dbcbxFamiliaExit(Sender: TObject);
    procedure dbcbxSubFamiliaEnter(Sender: TObject);
    procedure dbcbxSubFamiliaExit(Sender: TObject);
    procedure dbeTipoEnter(Sender: TObject);
    procedure dbeTipoExit(Sender: TObject);
    procedure dbcbxSubFamiliaClick(Sender: TObject);
    procedure btnSubFamiliasClick(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure globalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryDetallesSubFamiliasAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdetallesubfamilias : Tfrmdetallesubfamilias;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;
  qryInserta       : TZquery;
  subfamilia       : string;
  tipo             : string;

  implementation
uses
    frm_consumibles,
    frm_grupofamilias,
    frm_SubFamProductos ;
{$R *.dfm}

procedure Tfrmdetallesubfamilias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if frmConsumibles.Active then
    begin
      frmConsumibles.qryTipoSubFamilia.Refresh;
      frmConsumibles.dbTipo.KeyValue:=qryDetallesSubFamilias.FieldValues['iIdTipoSubFamilia'];
    end;
  Except
  end;
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;
end;

procedure Tfrmdetallesubfamilias.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnPrinter.Enabled := False;
   frmbarra1.btnCancel.Click ;

   qryFamilias.Active := False ;
   qryFamilias.Open ;

   qrySubFamilias.Active := False ;
   qrySubFamilias.Open ;

//   qrySubFamilias.Filtered := False;
//   qrySubFamilias.Filter   := 'sIdFamilia = '+ qryFamilias.FieldByName('sIdFamilia').AsString;
//   qrySubFamilias.Filtered := True;

   qrySubFamilia2.Active := False ;
   qrySubFamilia2.Open ;

   qryDetallesSubFamilias.Active := False ;
   qryDetallesSubFamilias.Open ;

   gridTipoSubFamilia.SetFocus;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;


procedure Tfrmdetallesubfamilias.globalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure Tfrmdetallesubfamilias.gridTipoSubFamiliaCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmdetallesubfamilias.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;

   qrySubFamilias.Filtered := False;
   qrySubFamilias.Filter   := 'sIdFamilia = '+QuotedStr(dbcbxFamilia.KeyValue);
   qrySubFamilias.filtered := True;

   qryDetallesSubFamilias.Append;
   qryDetallesSubFamilias.FieldValues['sTipo'] := '' ;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;

procedure Tfrmdetallesubfamilias.frmBarra1btnEditClick(Sender: TObject);
var
    lBloquea : boolean;
begin
    If qryDetallesSubFamilias.RecordCount > 0 Then
    Begin
        try
          gridTipoSubFamilia.Enabled := False;

          frmBarra1.btnEditClick(Sender);
          Insertar1.Enabled  := False ;
          Editar1.Enabled    := False ;
          Registrar1.Enabled := True ;
          Can1.Enabled       := True ;
          Eliminar1.Enabled  := False ;
          Refresh1.Enabled   := False ;
          Salir1.Enabled     := False ;
          sOpcion            := 'Edit';
          qryDetallesSubFamilias.Edit ;
          dbcbxFamilia.SetFocus;

          qrySubFamilias.Filtered := False;
          qrySubFamilias.Filter   := 'sIdFamilia = '+QuotedStr(dbcbxFamilia.KeyValue);
          qrySubFamilias.filtered := True;

          //Verificamos si esta subfamilia ya está siendo usada por un insumo.. si es así no permitir editar su familia.
          lBloquea := BuscaDatosInsumos( qryDetallesSubFamilias.FieldByName('iIdTipoSubfamilia').AsInteger,'','insumos','iIdTipoSubfamilia');
          dbcbxFamilia.Enabled    := not (lbloquea);
          dbcbxSubFamilia.Enabled := not (lbloquea);   

        except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Tipo de SubFamilia', 'Al agregar registro', 0);
          end;
        end;
    End;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;
end;

procedure Tfrmdetallesubfamilias.frmBarra1btnPostClick(Sender: TObject);
begin
    {Validaciones de campos}
    if dbcbxFamilia.Text = '' then
    begin
        ShowMessage('Seleccione la Familia');
        dbcbxFamilia.SetFocus;
        exit;
    end;
    if dbcbxSubFamilia.Text = '' then
    begin
        ShowMessage('Seleccione la SubFamilia');
        dbcbxSubFamilia.SetFocus;
        exit;
    end;
    if length(trim(dbeTipo.Text)) = 0 then
    begin
        ShowMessage('Introduzca el Tipo');
        dbeTipo.SetFocus;
        exit;
    end;

    Try
       qryDetallesSubFamilias.FieldByName('iIdSubFamilia').AsInteger := dbcbxSubFamilia.KeyValue;
       qryDetallesSubFamilias.Post;
       qryDetallesSubFamilias.Open;      

       Insertar1.Enabled  := True ;
       Editar1.Enabled    := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled       := False ;
       Eliminar1.Enabled  := True ;
       Refresh1.Enabled   := True ;
       Salir1.Enabled     := True ;

       gridTipoSubFamilia.Enabled := True;
       dbcbxFamilia.Enabled := True;

       frmBarra1.btnPostClick(Sender);

       qrySubfamilias.SQL.Text := 'SELECT * FROM subfamilia';
       qrySubFamilias.Open;

       qrySubFamilias.Filtered := False;
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Tipo de SubFamilia', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
       end;
    end;

    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;

end;

procedure Tfrmdetallesubfamilias.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   qryDetallesSubFamilias.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   dbcbxFamilia.Enabled    := True;
   dbcbxSubFamilia.Enabled := True;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   qryFamilias.Open;
   sOpcion := '';

   gridTipoSubFamilia.Enabled := True;
end;

procedure Tfrmdetallesubfamilias.frmBarra1btnDeleteClick(Sender: TObject);
var
   lBloquea : boolean;
   sCadena  : string;
begin
  If qryDetallesSubFamilias.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        sCadena := '';
        //Verificamos si esta Subfamilia ya está siendo usada por un insumo..
        lBloquea := BuscaDatosInsumos(qryDetallesSubFamilias.FieldValues['iIdTipoSubFamilia'],'','insumos','iIdTipoSubFamilia');
        If lBloquea Then
           sCadena := sCadena + 'Insumos ';

        if sCadena <> '' then
           MessageDlg('No se puede Borrar el Registro la SubFamilia se guardó en ['+sCadena+']', mtInformation, [mbOk], 0)
        Else
           qryDetallesSubFamilias.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Tipo de SubFamilia', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure Tfrmdetallesubfamilias.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryDetallesSubFamilias.refresh ;
end;

procedure Tfrmdetallesubfamilias.frmBarra1btnExitClick(Sender: TObject);
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

procedure Tfrmdetallesubfamilias.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure Tfrmdetallesubfamilias.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure Tfrmdetallesubfamilias.qryDetallesSubFamiliasAfterScroll(
  DataSet: TDataSet);
begin
    if qryDetallessubfamilias.RecordCount > 0 then
    begin
        dbcbxFamilia.KeyValue   := qrySubfamilias.FieldByName('sIdFamilia').AsString;            
    end;
end;

procedure Tfrmdetallesubfamilias.dbcbxFamiliaEnter(Sender: TObject);
begin
   dbcbxFamilia.Color := global_color_entradaERP;
end;

procedure Tfrmdetallesubfamilias.dbcbxFamiliaExit(Sender: TObject);
begin
    dbcbxFamilia.Color := global_color_salidaERP;

    if (qryDetallesSubfamilias.State = dsEdit) or (qryDetallesSubfamilias.State = dsInsert)  then
    begin
        qrySubFamilias.Filtered := False;
        qrySubFamilias.Filter   := 'sIdFamilia = '+ QuotedStr(qryFamilias.FieldByName('sIdFamilia').AsString);
        qrySubFamilias.filtered := True;
    end;
end;

procedure Tfrmdetallesubfamilias.dbcbxSubFamiliaClick(Sender: TObject);
begin
    dbeTipo.SetFocus;
end;

procedure Tfrmdetallesubfamilias.dbcbxSubFamiliaEnter(Sender: TObject);
begin
    dbcbxSubFamilia.Color := global_color_entradaERP;
end;

procedure Tfrmdetallesubfamilias.dbcbxSubFamiliaExit(Sender: TObject);
begin
    dbcbxSubFamilia.Color := global_color_salidaERP;
end;

procedure Tfrmdetallesubfamilias.dbeTipoEnter(Sender: TObject);
begin
  dbeTipo.color := global_color_entradaERP;
end;

procedure Tfrmdetallesubfamilias.dbeTipoExit(Sender: TObject);
begin
  dbeTipo.color := global_color_salidaERP;
end;

procedure Tfrmdetallesubfamilias.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure Tfrmdetallesubfamilias.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure Tfrmdetallesubfamilias.btnSubFamiliasClick(Sender: TObject);
begin
  global_frmActivo := 'detallesubfamilias';
  Application.CreateForm(TfrmSubFamProductos, frmSubFamProductos);
  frmSubFamProductos.ShowModal;
end;

procedure Tfrmdetallesubfamilias.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure Tfrmdetallesubfamilias.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure Tfrmdetallesubfamilias.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure Tfrmdetallesubfamilias.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure Tfrmdetallesubfamilias.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure Tfrmdetallesubfamilias.gridTipoSubFamiliaEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmdetallesubfamilias.gridTipoSubFamiliaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

end.
