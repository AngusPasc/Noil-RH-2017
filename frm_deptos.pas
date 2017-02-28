unit frm_deptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, Grids, DBGrids, frm_barra, StdCtrls,unitactivapop,
  Mask, DBCtrls, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxContainer, FormAutoScaler, cxTextEdit, cxDBEdit, ExtCtrls,
  dxLayoutContainer, dxLayoutControl, cxGroupBox, dxLayoutcxEditAdapters,
  cxMaskEdit, cxSpinEdit;

type
  tfrmDeptos = class(TForm)
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
    ds_deptos: TDataSource;
    deptos: TZQuery;
    pnl1: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    TSIDDEPARTAMENTO: TcxDBTextEdit;
    TSJefatura: TcxDBTextEdit;
    frmtsclr1: TFormAutoScaler;
    TSConsecutivo: TcxDBTextEdit;
    TSDescripcion: TcxDBTextEdit;
    TScadTexto: TcxDBTextEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    cxgrid_deptos: TcxGrid;
    dbg_deptoDBTableView1: TcxGridDBTableView;
    Col_Grid__idepto: TcxGridDBColumn;
    Col_Grid__descripcion: TcxGridDBColumn;
    Col_Grid__jefatura: TcxGridDBColumn;
    Col_dbg_deptoCadTexto: TcxGridDBColumn;
    Col_dbg_deptoConsecutivo: TcxGridDBColumn;
    dbg_deptoLevel1: TcxGridLevel;
    GBxContrato: TcxGroupBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    DbTxtEdtMascara: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    DbSpnEdtConsecutivo: TcxDBSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    QrFolio: TZQuery;
    dsFolio: TDataSource;
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsJefaturaKeyPress(Sender: TObject; var Key: Char);
    procedure grid_deptosCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);

    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsJefaturaEnter(Sender: TObject);
    procedure tsJefaturaExit(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure grid_deptosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_deptosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_deptosTitleClick(Column: TColumn);
    procedure cxgrid_deptosEnter(Sender: TObject);
    procedure TSIDDEPARTAMENTOKeyPress(Sender: TObject; var Key: Char);
    procedure TSIDDEPARTAMENTOEnter(Sender: TObject);
    procedure TSIDDEPARTAMENTOExit(Sender: TObject);
    procedure TSConsecutivoKeyPress(Sender: TObject; var Key: Char);
    procedure TSConsecutivoEnter(Sender: TObject);
    procedure TSConsecutivoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure deptosAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeptos: TfrmDeptos;
  //UtGrid:TicDbGrid;
  botonpermiso:tbotonespermisos;
implementation

{$R *.dfm}

procedure tfrmDeptos.TSIDDEPARTAMENTOEnter(Sender: TObject);
begin
  tsIdDepartamento.Style.Color :=  global_color_entradaERP;
end;

procedure tfrmDeptos.TSIDDEPARTAMENTOExit(Sender: TObject);
begin
  tsIdDepartamento.Style.Color :=  global_color_SalidaERP ;
end;

procedure tfrmDeptos.TSIDDEPARTAMENTOKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus  
end;

procedure TfrmDeptos.tsDescripcionKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsJefatura.SetFocus
end;


procedure tfrmDeptos.FormActivate(Sender: TObject);
begin
  if not GBxContrato.Visible then
    If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
    begin
      GBxContrato.Visible:=True;
      QrFolio.Active:=False;
      QrFolio.ParamByName('Contrato').AsString:=global_contrato;
      QrFolio.Open;
      TScadTexto.Enabled:=False;
      TSConsecutivo.Enabled:=False;
    end
    else
      GBxContrato.Visible:=False;

end;

procedure TfrmDeptos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //utgrid.Destroy;
  deptos.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmDeptos.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   deptos.Append ;
   deptos.FieldValues ['sIdDepartamento'] := '' ;
   deptos.FieldValues ['sDescripcion'] := '' ;
   deptos.FieldValues ['sJefatura'] := '' ;
   If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
   begin
    QrFolio.Append;
    QrFolio.FieldByName('sContrato').AsString:=global_contrato;
    QrFolio.FieldByName('sCadenaTexto').AsString:='Folio-';
    QrFolio.FieldByName('nConsecutivo').AsInteger:=1;
   end;

   tsIdDepartamento.SetFocus ;
   //activapop(frmDeptos,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   cxgrid_deptos.Enabled := False;
end;

procedure TfrmDeptos.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
       deptos.Edit ;
       If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
        if QrFolio.Locate('sidDepartamento',deptos.FieldByName('sIdDepartamento').AsString,[]) then
          QrFolio.edit;



   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Departamentos', 'Al editar registro', 0);
       frmBarra1.btnCancel.Click ;
       end;
   end ;
   tsIdDepartamento.SetFocus;
   //activapop(frmDeptos,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   cxgrid_deptos.Enabled := False;
end;

procedure TfrmDeptos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');nombres.Add('Jefatura');cadenas.Add(tsDescripcion.Text);cadenas.Add(tsJefatura.Text);
  if not validaTexto(nombres, cadenas, 'Departamento', tsIdDepartamento.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  try
     If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
     begin
      QrFolio.FieldByName('sIdDepartamento').AsString:=deptos.FieldByName('sIddepartamento').AsString;
      QrFolio.Post;
     end;



    deptos.Post ;
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ;
    frmBarra1.btnPostClick(Sender);
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Departamentos', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
    end;
  end;
  //desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  cxgrid_deptos.Enabled := True;
end;

procedure TfrmDeptos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   deptos.Cancel ;
   If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
    QrFolio.Cancel;
   //desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   cxgrid_deptos.Enabled := True;
end;

procedure TfrmDeptos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If deptos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
          if QrFolio.Locate('sidDepartamento',deptos.FieldByName('sIdDepartamento').AsString,[]) then
            QrFolio.Delete;

        deptos.Delete ;
      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Departamentos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmDeptos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
    QrFolio.Refresh;
  deptos.Refresh
end;

procedure TfrmDeptos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmDeptos.tsJefaturaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsConsecutivo.SetFocus
end;

procedure TfrmDeptos.grid_deptosCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
       frmBarra1.btnCancel.Click ;
end;

procedure tfrmDeptos.cxgrid_deptosEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure tfrmDeptos.deptosAfterScroll(DataSet: TDataSet);
begin
  if deptos.State=dsBrowse then
    If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
      QrFolio.Locate('sidDepartamento',deptos.FieldByName('sIdDepartamento').AsString,[]);
end;

procedure tfrmDeptos.grid_deptosMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure tfrmDeptos.grid_deptosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure tfrmDeptos.grid_deptosTitleClick(Column: TColumn);
begin
 //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmDeptos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adDeptos', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_deptos);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;

  If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'CONTRATOS-DEPTOS' Then
  begin
    GBxContrato.Visible:=True;
    QrFolio.Active:=False;
    QrFolio.ParamByName('Contrato').AsString:=global_contrato;
    QrFolio.Open;

    TScadTexto.Enabled:=False;
    TSConsecutivo.Enabled:=False;
  end
  else
    GBxContrato.Visible:=False;

  
  deptos.Active := False ;
  deptos.SQL.Clear ;
  deptos.SQL.Add('select * from departamentos order by sIdDepartamento' ) ;
  deptos.Open ;




  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure tfrmDeptos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure tfrmDeptos.Paste1Click(Sender: TObject);
begin
//UtGrid.AddRowsFromClip;
end;

procedure tfrmDeptos.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure tfrmDeptos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure tfrmDeptos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure tfrmDeptos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure tfrmDeptos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure tfrmDeptos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure tfrmDeptos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;


procedure tfrmDeptos.TSConsecutivoEnter(Sender: TObject);
begin
  tsConsecutivo.Style.Color := Global_Color_entradaERP;
end;

procedure tfrmDeptos.TSConsecutivoExit(Sender: TObject);
begin
  tsConsecutivo.Style.Color := Global_Color_SalidaERP;
end;

procedure tfrmDeptos.TSConsecutivoKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 Then
      tsCadTexto.SetFocus ;
end;

procedure tfrmDeptos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Style.Color := global_color_entradaERP
end;

procedure tfrmDeptos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Style.Color := global_color_salidaERP;
end;

procedure tfrmDeptos.tsJefaturaEnter(Sender: TObject);
begin
    tsJefatura.Style.Color := global_color_entradaERP;
end;

procedure tfrmDeptos.tsJefaturaExit(Sender: TObject);
begin
    tsJefatura.Style.Color := global_color_salidaERP;
end;

end.
