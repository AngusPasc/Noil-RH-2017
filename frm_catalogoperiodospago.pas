unit frm_catalogoperiodospago;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmCatalogoPeriodosPago = class(TForm)
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
    qryPeriodos: TZQuery;
    ds_horarios: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    tsDescripcion: TDBEdit;
    frmBarra1: TfrmBarra;
    qryPeriodosiIdPeriodo: TIntegerField;
    qryPeriodossDescripcion: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_estatus: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
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
    procedure grid_estatusEnter(Sender: TObject);
    procedure grid_estatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_estatusKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_estatusMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_estatusMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_1TitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_1DblClick(Sender: TObject);
    procedure closeFormulario;
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoPeriodosPago : TfrmCatalogoPeriodosPago;
 // utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles, frmEmpleados;
{$R *.dfm}

procedure TfrmCatalogoPeriodosPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCatalogoPeriodosPago.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qryPeriodos.Active := False ;
   qryPeriodos.Open ;

  // grid_estatus.SetFocus;
   //UtGrid:=TicdbGrid.create(grid_estatus);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;
procedure TfrmCatalogoPeriodosPago.dbgrd_1DblClick(Sender: TObject);
begin
  CloseFormulario;
end;

procedure TfrmCatalogoPeriodosPago.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmCatalogoPeriodosPago.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   qryPeriodos.Append ;
   qryPeriodos.FieldValues['sDescripcion'] := '';
   tsDescripcion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_estatus.Enabled := False;

end;

procedure TfrmCatalogoPeriodosPago.frmBarra1btnEditClick(Sender: TObject);
begin
    If qryPeriodos.RecordCount > 0 Then
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
           tsDescripcion.SetFocus;
           qryPeriodos.Edit;
           grid_estatus.Enabled := False;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Periodos de Pago', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmCatalogoPeriodosPago.frmBarra1btnPostClick(Sender: TObject);
var
    lEdicion : boolean;
begin

    try
          frmBarra1.btnPostClick(Sender);
          if trim(tsDescripcion.Text) = '' then
          begin
             MessageDlg('La descripcion debe tener un valor!', mtInformation, [mbOk], 0);
             exit;
          end;
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('SELECT MAX(iIdPeriodo) AS id FROM rh_periodopagos');
          connection.QryBusca.Open;
          if connection.QryBusca.FieldValues['id'] = null then
          begin
              qryPeriodos.FieldValues['iIdPeriodo'] := 1;
          end
          else
          begin
               qryPeriodos.FieldValues['iIdPeriodo'] := connection.QryBusca.FieldValues['id'] + 1;
          end;
          qryPeriodos.Post ;
          Insertar1.Enabled  := True ;
          Editar1.Enabled    := True ;
          Registrar1.Enabled := False ;
          Can1.Enabled       := False ;
          Eliminar1.Enabled  := True ;
          Refresh1.Enabled   := True ;
          Salir1.Enabled     := True ;
          grid_estatus.Enabled := True;
          desactivapop(popupprincipal);

          //Cuando se de clik en guardar, entonces se debe de moatrar el valor creado en el combo de empleados
          closeFormulario;
    except
        on E:Exception do begin
            ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
        end;
      end;
end;

procedure TfrmCatalogoPeriodosPago.frmBarra1btnCancelClick(Sender: TObject);
begin

   frmBarra1.btnCancelClick(Sender);
   qryPeriodos.Cancel;

   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_estatus.Enabled := True;
   sOpcion := '';
end;

procedure TfrmCatalogoPeriodosPago.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If qryPeriodos.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     try
         qryPeriodos.Delete;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Periodos de Pago', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmCatalogoPeriodosPago.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryPeriodos.refresh ;
end;

procedure TfrmCatalogoPeriodosPago.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmCatalogoPeriodosPago.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogoPeriodosPago.Copy1Click(Sender: TObject);
begin
 //UtGrid.AddRowsFromClip;
end;

procedure TfrmCatalogoPeriodosPago.Cut1Click(Sender: TObject);
begin
  //UtGrid.CopyRowsToClip;
end;

procedure TfrmCatalogoPeriodosPago.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoPeriodosPago.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  CloseFormulario;
end;

procedure TfrmCatalogoPeriodosPago.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmCatalogoPeriodosPago.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmCatalogoPeriodosPago.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmCatalogoPeriodosPago.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmCatalogoPeriodosPago.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmCatalogoPeriodosPago.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmCatalogoPeriodosPago.grid_estatusEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoPeriodosPago.grid_estatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoPeriodosPago.grid_estatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoPeriodosPago.grid_estatusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 // UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmCatalogoPeriodosPago.grid_estatusMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmCatalogoPeriodosPago.dbgrd_1TitleClick(Column: TColumn);
begin
  // UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmCatalogoPeriodosPago.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmCatalogoPeriodosPago.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmCatalogoPeriodosPago.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoPeriodosPago.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if frmbarra1.btnPost.Enabled = True then
       if key =#13 then
          frmBarra1.btnPost.SetFocus;
end;

procedure TfrmCatalogoPeriodosPago.closeFormulario;
begin
    try
       if Assigned(frm_Empleados)then
       begin
           frmEmpleados.frm_Empleados.ZQPeriodo.Refresh;
           frmEmpleados.frm_Empleados.cxNomina.DataBinding.DataSource.DataSet.FieldByName('iIdPeriodo').AsInteger := qryPeriodos.FieldValues['iIdPeriodo'];
           Close;
       end;
    Except
    end;
end;

end.
