unit frm_catalogomodulos;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, AdvGlowButton, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, cxPropertiesStore, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCatalogoModulos = class(TForm)
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
    zqryModulos: TZQuery;
    ds_Modulos: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_estatus: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    lbl1: TLabel;
    cxdNombreMenu: TcxDBTextEdit;
    cxdDescripcion: TcxDBTextEdit;
    lbl2: TLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    Grid_Grid1DBTableView1Column1: TcxGridDBColumn;
    Grid_Grid1DBTableView1Column2: TcxGridDBColumn;
    cbbMenMod: TcxDBComboBox;
    procedure FormShow(Sender: TObject);

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
    procedure grid_estatusEnter(Sender: TObject);
    procedure grid_estatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_estatusKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure closeFormulario;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxdDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure cxdDescripcionEnter(Sender: TObject);
    procedure cxdDescripcionExit(Sender: TObject);
    procedure cxdNombreMenuExit(Sender: TObject);
    procedure cxdNombreMenuEnter(Sender: TObject);
    procedure cxdNombreMenuKeyPress(Sender: TObject; var Key: Char);
    procedure cbbMenModEnter(Sender: TObject);
    procedure cbbMenModExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoModulos : TfrmCatalogoModulos;
 // utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles, frmEmpleados, frm_programas;
{$R *.dfm}

procedure TfrmCatalogoModulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCatalogoModulos.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   zqryModulos.Active := False ;
   zqryModulos.Open ;

   //grid_estatus.SetFocus;
   //UtGrid:=TicdbGrid.create(grid_estatus);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;


procedure TfrmCatalogoModulos.frmBarra1btnAddClick(Sender: TObject);
begin
    frmBarra1.btnAddClick(Sender);
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;
    zqryModulos.Append ;
    zqryModulos.FieldValues['sDescripcion'] := '';
    cxdDescripcion.SetFocus;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;
    grid_estatus.Enabled := False;
end;

procedure TfrmCatalogoModulos.frmBarra1btnEditClick(Sender: TObject);
begin
    If zqryModulos.RecordCount > 0 Then
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
           cxdDescripcion.SetFocus;
           zqryModulos.Edit;
           grid_estatus.Enabled := False;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmCatalogoModulos.frmBarra1btnPostClick(Sender: TObject);
var
    lEdicion : boolean;
begin

    try
          frmBarra1.btnPostClick(Sender);
          if trim(cxdDescripcion.Text) = '' then
          begin
             MessageDlg('La descripcion debe tener un valor!', mtInformation, [mbOk], 0);
             exit;
          end;
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
   
          zqryModulos.Post ;
          Insertar1.Enabled  := True ;
          Editar1.Enabled    := True ;
          Registrar1.Enabled := False ;
          Can1.Enabled       := False ;
          Eliminar1.Enabled  := True ;
          Refresh1.Enabled   := True ;
          Salir1.Enabled     := True ;
          grid_estatus.Enabled := True;
          desactivapop(popupprincipal);

          //Cuando se de click en guardar debe de mostrar el recien creado en el combo del form de empleados
          closeFormulario;
    except
        on E:Exception do begin
            ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
        end;
      end;
end;

procedure TfrmCatalogoModulos.frmBarra1btnCancelClick(Sender: TObject);
begin

   frmBarra1.btnCancelClick(Sender);
   zqryModulos.Cancel;

   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_estatus.Enabled := True;
   sOpcion := '';
end;

procedure TfrmCatalogoModulos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqryModulos.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     try
         zqryModulos.Delete;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Modulos', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmCatalogoModulos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zqryModulos.refresh ;
end;

procedure TfrmCatalogoModulos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmCatalogoModulos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogoModulos.cxdDescripcionEnter(Sender: TObject);
begin
   cxdDescripcion.Style.Color := global_color_entradaERP  ;
end;

procedure TfrmCatalogoModulos.cxdDescripcionExit(Sender: TObject);
begin
   cxdDescripcion.Style.Color := global_color_salidaERP ;
end;

procedure TfrmCatalogoModulos.cxdDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
        cxdNombreMenu.SetFocus ;
end;

procedure TfrmCatalogoModulos.cxdNombreMenuEnter(Sender: TObject);
begin
  cxdNombreMenu.Style.Color :=  global_color_entradaERP ;
end;

procedure TfrmCatalogoModulos.cxdNombreMenuExit(Sender: TObject);
begin
    cxdNombreMenu.Style.Color := global_color_salidaERP ;
end;

procedure TfrmCatalogoModulos.cxdNombreMenuKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13  then
      cbbMenMod.SetFocus ;
end;

procedure TfrmCatalogoModulos.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoModulos.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  CloseFormulario;
end;

procedure TfrmCatalogoModulos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmCatalogoModulos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmCatalogoModulos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmCatalogoModulos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmCatalogoModulos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmCatalogoModulos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmCatalogoModulos.grid_estatusEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoModulos.grid_estatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoModulos.grid_estatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;



procedure TfrmCatalogoModulos.cbbMenModEnter(Sender: TObject);
begin
 cbbMenMod.Style.Color := global_color_entradaERP ;
end;

procedure TfrmCatalogoModulos.cbbMenModExit(Sender: TObject);
begin
   cbbMenMod.Style.Color := global_color_salidaERP  ;
end;

procedure TfrmCatalogoModulos.closeFormulario;
begin
    try
       if Assigned(frmProgramas)then
       begin
          frm_Programas.frmProgramas.zqryModulos.Refresh;
          frm_Programas.frmProgramas.tsdbModulos.KeyValue := zqryModulos.FieldValues['idModulo'];

          Close;
       end;
    Except
    end;
end;

end.
