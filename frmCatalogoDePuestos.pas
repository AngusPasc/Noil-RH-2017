unit frmCatalogoDePuestos;
{###############################################################################
Esta ventana trabaja con las tablas de puestos de inteligent y la tabla
de cargos del sistema nomina de tres capas, en caso de eliminar un registro
se debe alterar la tabla de tres capas estableciendo el campo activo en no.
al editar o agregr debe afectar las dos tablas al mismo tiempo.
En caso de agregar un elemento se deberá validar que no exista en nuc cargo
ya que no se deberían duplicar cargos.
###############################################################################}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, global,
  JvExMask, JvToolEdit, JvDBControls, UDbGrid, AdvCombo, AdvDBComboBox,
  AdvEdBtn, AdvEdit, DBAdvEd,Utilerias, Menus,StrUtils, ComCtrls, FormAutoScaler, cxCheckBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxDBEdit,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TEntero = class
    Valor:Integer;
  end;

  //Modo de importacion desde nominas
  TModo = (Sustituyendo,Verificando);

  Tfrm_CatalogoDePuestos = class(TForm)
    zq_Puestos: TZQuery;
    ds_Puestos: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label9: TLabel;
    Label6: TLabel;
    tsPuesto: TDBEdit;
    frmBarra1: TfrmBarra;
    dbNivel: TDBAdvEdit;
    DBCheckBox1: TcxDBCheckBox;
    Ds_Organizacion: TDataSource;
    nuc_organizacion: TZQuery;
    GrpSalarios: TGroupBox;
    CmbSalarios: TComboBox;
    CmbRangoSalarios: TComboBox;
    ChkAplicaSalario: TCheckBox;
    LblSalario: TLabel;
    Zq_Salarios: TZQuery;
    Zq_RangoSalario: TZQuery;
    Zq_SalariosIdSalario: TIntegerField;
    Zq_SalariosIdLlave: TIntegerField;
    Zq_SalariosIdOrganizacion: TIntegerField;
    Zq_SalariosIdTipoNomina: TIntegerField;
    Zq_SalariosCodigoSalario: TStringField;
    Zq_SalariosTituloSalario: TStringField;
    Zq_SalariosSalario: TFloatField;
    Zq_SalariosSalarioIntegrado: TFloatField;
    Zq_SalariosVacaciones: TFloatField;
    Zq_SalariosPrimaVacacional: TFloatField;
    Zq_SalariosAguinaldo: TFloatField;
    Zq_SalariosFechaAplicacion: TDateField;
    Zq_SalariosIdMoneda: TIntegerField;
    Zq_Salariosidusuario: TIntegerField;
    Zq_Salariosfecharegistro: TDateTimeField;
    Zq_SalariosFechaModificacion: TDateTimeField;
    Zq_SalariosIdUsuarioModificacion: TIntegerField;
    Zq_SalariosTipoSalario: TStringField;
    Zq_SalariosIdGrupoSalario: TIntegerField;
    Zq_SalariosIdRangoSalarios: TIntegerField;
    Zq_SalariosActivo: TStringField;
    Zq_RangoSalarioIdRangoSalarios: TIntegerField;
    Zq_RangoSalarioIdOrganizacion: TIntegerField;
    Zq_RangoSalarioIdTipoNomina: TIntegerField;
    Zq_RangoSalarioTitulo: TStringField;
    Zq_RangoSalarioImporte: TFloatField;
    Zq_RangoSalarioPeriodo: TIntegerField;
    Zq_RangoSalarioFechaAplicacion: TDateField;
    Zq_RangoSalarioIdMoneda: TIntegerField;
    ChkSalario: TRadioButton;
    ChkRangoSalario: TRadioButton;
    dbEmpresa: TDBLookupComboBox;
    Label1: TLabel;
    nuc_organizacionidnivel: TIntegerField;
    nuc_organizacionpadre: TIntegerField;
    nuc_organizacionidorganizacion: TIntegerField;
    nuc_organizacionwbs: TStringField;
    nuc_organizacioncodigoorganizacion: TStringField;
    nuc_organizacionnombreorganizacion: TStringField;
    nuc_organizaciontituloorganizacion: TStringField;
    nuc_organizacionrfc: TStringField;
    nuc_organizaciondescripcion: TBlobField;
    nuc_organizacionfecha: TDateTimeField;
    nuc_organizacioncomentarios: TBlobField;
    nuc_organizaciontelefono1: TStringField;
    nuc_organizaciontelefono2: TStringField;
    nuc_organizaciontelefono3: TStringField;
    nuc_organizaciontelefono4: TStringField;
    nuc_organizaciontelefono5: TStringField;
    nuc_organizacionimagen: TBlobField;
    nuc_organizacionactivo: TStringField;
    nuc_organizaciondomiciliofiscalorg: TBlobField;
    nuc_organizaciondomicilioorg: TBlobField;
    nuc_organizacionregpatimss: TStringField;
    ZMaxNucCargo: TZQuery;
    LCbbTipodeNomina: TDBLookupComboBox;
    Label2: TLabel;
    Nom_tiponomina: TZQuery;
    ds_tiponomina: TDataSource;
    Nom_tiponominaIdTipoNomina: TIntegerField;
    Nom_tiponominaIdTipoTablaISPT: TIntegerField;
    Nom_tiponominaIdMoneda: TIntegerField;
    Nom_tiponominaTipoCalculo: TStringField;
    Nom_tiponominaTitulo: TStringField;
    Nom_tiponominaDescripcion: TStringField;
    Nom_tiponominaDiasTrabajados: TIntegerField;
    Nom_tiponominaDiasDescanso: TIntegerField;
    Nom_tiponominaAjustar: TStringField;
    Nom_tiponominaSalarioMultiple: TStringField;
    Nom_tiponominaInicioSemana: TStringField;
    PopupMenu1: TPopupMenu;
    Importardesdenominas1: TMenuItem;
    Sustituyendotodo1: TMenuItem;
    verificandoidentificador1: TMenuItem;
    PnlProgreso: TPanel;
    TituloProgreso: TLabel;
    Progreso: TProgressBar;
    fsc_CatPuestos: TFormAutoScaler;
    cbbJornada: TDBComboBox;
    lblJornada: TLabel;
    grid_Comunidades: TcxGrid;
    BView_areas: TcxGridDBTableView;
    codigocargo: TcxGridDBColumn;
    titulocargo: TcxGridDBColumn;
    grid_ComunidadesLevel1: TcxGridLevel;
    tsDescripcion: TDBEdit;
    Label3: TLabel;
    mResponsabilidad: TDBMemo;
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_ComunidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ComunidadesTitleClick(Column: TColumn);
    procedure tsPuestoKeyPress(Sender: TObject; var Key: Char);
    procedure tsPuestoEnter(Sender: TObject);
    procedure tsPuestoExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_ComunidadesDblClick(Sender: TObject);
    procedure ChkSalarioClick(Sender: TObject);
    procedure ChkRangoSalarioClick(Sender: TObject);
    procedure zq_PuestosAfterScroll(DataSet: TDataSet);
    procedure ChkAplicaSalarioClick(Sender: TObject);
    procedure zq_PuestosBeforeInsert(DataSet: TDataSet);
    procedure zq_PuestosBeforeEdit(DataSet: TDataSet);
    procedure zq_PuestosAfterPost(DataSet: TDataSet);
    procedure zq_PuestosAfterCancel(DataSet: TDataSet);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure dbNivelKeyPress(Sender: TObject; var Key: Char);
    procedure ChkAplicaSalarioKeyPress(Sender: TObject; var Key: Char);
    procedure dbEmpresaEnter(Sender: TObject);
    procedure dbEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure dbEmpresaExit(Sender: TObject);
    procedure dbNivelEnter(Sender: TObject);
    procedure dbNivelExit(Sender: TObject);
    procedure Sustituyendotodo1Click(Sender: TObject);
    procedure verificandoidentificador1Click(Sender: TObject);
    procedure LCbbTipodeNominaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbJornadaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbJornadaEnter(Sender: TObject);
    procedure cbbJornadaExit(Sender: TObject);
    procedure ChkAplicaSalarioEnter(Sender: TObject);
    procedure ChkAplicaSalarioExit(Sender: TObject);
    procedure CloseFormulario;
    procedure BView_areasDblClick(Sender: TObject);
    procedure BView_areasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mResponsabilidadEnter(Sender: TObject);
    procedure mResponsabilidadExit(Sender: TObject);
    procedure CmbRangoSalariosKeyPress(Sender: TObject; var Key: Char);
    procedure LCbbTipodeNominaEnter(Sender: TObject);
    procedure LCbbTipodeNominaExit(Sender: TObject);
    procedure CmbRangoSalariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbSalariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbSalariosKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure EstableceIndice(key: integer; Combo: Tcombobox);
    procedure ImportaDNomina(Modo: Tmodo);
    Function MaxCargo(Anterior:Integer=0):Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CatalogoDePuestos: Tfrm_CatalogoDePuestos;
  utgrid:ticdbgrid;
  sOpcion : string;
implementation

uses frmEmpleados,frm_connection, Frm_CatalogoDePostulante;

{$R *.dfm}

Function Tfrm_CatalogodePuestos.MaxCargo(Anterior: Integer= 0):Integer;
var
  QrConsulta:TzReadOnlyQuery;
  IdResult:Integer;
begin
  QrConsulta:=TzReadOnlyQuery.Create(nil);
  try
    QrConsulta.Connection:=Connection.zConnection;
    if Anterior=0 then
    begin
      QrConsulta.sql.text:='select ifnull(Max(iId_Puesto),0)+1 as IdPuesto from con_catalogodepuestos';
      QrConsulta.Open;
      if QrConsulta.RecordCount=1 then
        Anterior:=QrConsulta.FieldByName('IdPuesto').asinteger;
    end;

    QrConsulta.Active:=False;
    QrConsulta.sql.text:='select iId_Puesto from con_catalogodepuestos where iId_Puesto=:Puesto';
    QrConsulta.ParamByName('Puesto').asinteger:=Anterior;

    QrConsulta.Open;
    if QrConsulta.RecordCount=0 then
    begin
      QrConsulta.Active:=false;
      QrConsulta.sql.text:='select idCargo from nuc_cargo where idCargo=:Puesto';
      QrConsulta.ParamByName('Puesto').asinteger:=Anterior;
      QrConsulta.Open;
      if QrConsulta.RecordCount=0 then
        IdResult:=Anterior
      else
        IdResult:=MaxCargo(Anterior+1);
    end
    else
      IdResult:=MaxCargo(Anterior+1);
  finally
    QrConsulta.Destroy;
  end;
  Result:=IdResult;
end;

procedure Tfrm_CatalogoDePuestos.mResponsabilidadEnter(Sender: TObject);
begin
     mResponsabilidad.color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDePuestos.mResponsabilidadExit(Sender: TObject);
begin
    mResponsabilidad.color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.BView_areasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
    if Assigned(FrmCatalogoDePostulante)then
    begin
      FrmCatalogoDePostulante.zq_Puestos.active := false;
      FrmCatalogoDePostulante.zq_Puestos.Open;
      FrmCatalogoDePostulante.dbPuesto.EditValue := zq_puestos.FieldByName('idcargo').AsInteger;
      Close;
    end;
  except
  end;

end;

procedure Tfrm_CatalogoDePuestos.BView_areasDblClick(Sender: TObject);
begin
    CloseFormulario;
end;

procedure Tfrm_CatalogoDePuestos.cbbJornadaEnter(Sender: TObject);
begin
  cbbJornada.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDePuestos.cbbJornadaExit(Sender: TObject);
begin
  cbbJornada.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.cbbJornadaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    dbNivel.SetFocus
end;

procedure Tfrm_CatalogoDePuestos.ChkAplicaSalarioClick(Sender: TObject);
begin
  //GrpSalarios.Visible := ChkAplicaSalario.Checked;
end;

procedure Tfrm_CatalogoDePuestos.ChkAplicaSalarioEnter(Sender: TObject);
begin
  ChkAplicaSalario.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDePuestos.ChkAplicaSalarioExit(Sender: TObject);
begin
  ChkAplicaSalario.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.ChkAplicaSalarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    CmbRangoSalarios.SetFocus
end;

procedure Tfrm_CatalogoDePuestos.ChkRangoSalarioClick(Sender: TObject);
begin
  LblSalario.Caption := 'Rango de Salario:';
  CmbRangoSalarios.Visible := True;
  CmbSalarios.Visible := False;
end;

procedure Tfrm_CatalogoDePuestos.ChkSalarioClick(Sender: TObject);
begin
  LblSalario.Caption := 'Salario:';
  CmbRangoSalarios.Visible := False;
  CmbSalarios.Visible := True;
end;

procedure Tfrm_CatalogoDePuestos.CmbRangoSalariosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
cmbRangoSalarios.color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDePuestos.CmbRangoSalariosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       mResponsabilidad.setfocus;
end;

procedure Tfrm_CatalogoDePuestos.CmbSalariosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
cmbSalarios.color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDePuestos.CmbSalariosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
       mResponsabilidad.setfocus;
end;

procedure Tfrm_CatalogoDePuestos.dbNivelEnter(Sender: TObject);
begin
  DbNivel.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDePuestos.dbNivelExit(Sender: TObject);
begin
  dbNivel.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.dbNivelKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    DBCheckBox1.SetFocus
end;

procedure Tfrm_CatalogoDePuestos.DBCheckBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    ChkAplicaSalario.SetFocus
end;

procedure Tfrm_CatalogoDePuestos.dbEmpresaEnter(Sender: TObject);
  var Key: Char;
begin
  dbEmpresa.Color := global_color_entradaERP;
  if key =#13 then
    LCbbTipodeNomina.SetFocus;
end;

procedure Tfrm_CatalogoDePuestos.dbEmpresaExit(Sender: TObject);
begin
   dbEmpresa.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.dbEmpresaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    tsPuesto.SetFocus
end;

procedure Tfrm_CatalogoDePuestos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrm_CatalogoDePuestos.FormShow(Sender: TObject);
var idsalario,idrangosalario:TEntero;
begin
  nuc_organizacion.Active := False;
  nuc_organizacion.Open;

 // UtGrid:=TicdbGrid.create(grid_Comunidades);
  zq_Puestos.Active := False ;
  zq_Puestos.Open ;

  CmbSalarios.Clear;
  Zq_Salarios.Active := False;
  Zq_Salarios.Open;
  Zq_Salarios.First;
  with Zq_Salarios do
  begin
    while not eof do
    begin
      idsalario := TEntero.Create;
      idsalario.valor := fieldbyname('idsalario').AsInteger;
      CmbSalarios.AddItem(FieldByName('titulosalario').AsString + ' : '+fieldbyname('salario').AsString,idsalario);
      Next;
    end;
  end;

  idrangosalario       := TEntero.Create;
  idrangosalario.Valor := 0;
  CmbRangoSalarios.Clear;
  CmbRangoSalarios.AddItem('<<NO APLICA>>',idrangosalario);
  Zq_RangoSalario.Active := False;
  Zq_RangoSalario.Open;
  Zq_RangoSalario.First;
  with Zq_RangoSalario do
  begin
    while not eof do
    begin
      idrangosalario := TEntero.Create;
      idrangosalario.Valor :=  fieldbyname('idrangosalarios').AsInteger;
      CmbRangoSalarios.AddItem(FieldByName('titulo').AsString + ' : '+fieldbyname('importe').AsString + ' Periodo : '+ fieldbyname('periodo').AsString,idrangosalario);
      Next;
    end;
  end;

  nom_tiponomina.Open;
end;

procedure Tfrm_CatalogoDePuestos.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zq_Puestos.Append ;
  zq_Puestos.FieldValues['codigocargo'] := '';
  zq_puestos.FieldByName('IdTipoNomina').AsInteger := 1;
  zq_puestos.FieldByName('IdSalario').Clear;
  zq_puestos.FieldByName('IdRangoSalarios').Clear;
  zq_puestos.FieldByName('Grupo').asString := '*';
  zq_puestos.FieldByName('Activo').asString := 'Si';
  zq_puestos.FieldByName('CobraFestivos').asString := 'No';
  zq_puestos.FieldByName('jornada').AsInteger := 12;
  ChkAplicaSalario.Checked := False;
  sOpcion := 'New';
  //GrpSalarios.Visible := False;
  dbEmpresa.SetFocus
end;

procedure Tfrm_CatalogoDePuestos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zq_Puestos.Cancel
end;

procedure Tfrm_CatalogoDePuestos.frmBarra1btnDeleteClick(Sender: TObject);
begin
 If zq_Puestos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zq_Puestos.Delete;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_CatalogoDePuestos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zq_Puestos.RecordCount > 0 Then
  begin
      zq_Puestos.Edit ;
      sOpcion := 'Edit';
      tsPuesto.SetFocus
  end ;
end;

procedure Tfrm_CatalogoDePuestos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_CatalogoDePuestos.frmBarra1btnPostClick(Sender: TObject);
Var
  IdMax, idMovto:Integer;
begin
  //Si los campos que son necesarios estan vacios, entonces que mande un error del campo que esta vacio.
  zq_puestos.FieldByName('idorganizacion').AsInteger := dbempresa.KeyValue;
  if tsPuesto.Text = '' then
  begin
    ShowMessage('El campo Puesto esta vacio');
    tsPuesto.SetFocus;
  end else if tsDescripcion.Text = '' then
  begin
    ShowMessage('El campo Descripcion esta vacio');
    tsDescripcion.SetFocus;
  end  else
  try
    ChkAplicaSalario.SetFocus;
    if ChkAplicaSalario.Checked then
    begin
      if ChkSalario.Checked then
      begin
        if CmbSalarios.ItemIndex = -1 then
          raise Exception.Create('Es necesario que seleccione un salario.');
        zq_Puestos.FieldByName('idsalario').AsInteger := TEntero(CmbSalarios.Items.Objects[CmbSalarios.ItemIndex]).valor;
      end;
      if ChkRangoSalario.Checked then
      begin
        if CmbRangoSalarios.ItemIndex = -1 then
          raise Exception.Create('Es necesario que seleccione un rango de salario.');
        zq_Puestos.FieldByName('idrangosalarios').AsInteger := TEntero(CmbRangoSalarios.Items.Objects[CmbRangoSalarios.ItemIndex]).valor;
      end;
    end
    else
    begin
      zq_Puestos.FieldByName('idsalario').Clear;
      zq_Puestos.FieldByName('idrangosalarios').Clear;
    end;

    if sOpcion = 'New' then
    begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select max(idcargo) as maximo from nuc_cargo ');
        connection.QryBusca.Open;
        if (connection.QryBusca.RecordCount) > 0 then
          idMovto := connection.QryBusca.Fieldbyname('maximo').asInteger + 1
        else
          IdMovto := 1;
        zq_puestos.FieldByName('idcargo').AsInteger := IdMovto;
    end;
    zq_Puestos.Post ;
    frmBarra1.btnPostClick(Sender);

    closeFormulario;
  except
    //on e:Exception do
      ShowMessage('Es necesario que seleccione un salario.');
  end;
end;

procedure Tfrm_CatalogoDePuestos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zq_Puestos.Refresh
end;

procedure Tfrm_CatalogoDePuestos.grid_ComunidadesDblClick(Sender: TObject);
begin
    CloseFormulario;
end;

procedure Tfrm_CatalogoDePuestos.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_CatalogoDePuestos.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_CatalogoDePuestos.grid_ComunidadesTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_CatalogoDePuestos.tsDescripcionEnter(Sender: TObject);
begin
   tsDescripcion.color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
  var
    cadena : string;
begin
  if key =#13 then
  begin
    LCbbTipodeNomina.SetFocus
  end;
end;

procedure Tfrm_CatalogoDePuestos.tsPuestoEnter(Sender: TObject);
begin
   tsPuesto.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDePuestos.tsPuestoExit(Sender: TObject);
begin
    tsPuesto.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.tsPuestoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
    tsDescripcion.SetFocus
end;

procedure Tfrm_CatalogoDePuestos.verificandoidentificador1Click(
  Sender: TObject);
begin
  ImportaDNomina(Verificando);
end;

procedure Tfrm_CatalogoDePuestos.zq_PuestosAfterCancel(DataSet: TDataSet);
begin
  ChkAplicaSalario.Enabled := False;
  GrpSalarios.Enabled := False;
end;

procedure Tfrm_CatalogoDePuestos.zq_PuestosAfterPost(DataSet: TDataSet);
begin
  ChkAplicaSalario.Enabled := False;
  GrpSalarios.Enabled := False;
end;

procedure Tfrm_CatalogoDePuestos.zq_PuestosAfterScroll(DataSet: TDataSet);
begin
  ChkAplicaSalario.Checked := (Length(trim(zq_Puestos.FieldByName('idsalario').AsString)) > 0 )
                         or  (Length(trim(zq_Puestos.FieldByName('idrangosalarios').AsString)) > 0);
  ChkAplicaSalarioClick(ChkAplicaSalario);
  if Length(trim(zq_Puestos.FieldByName('idsalario').AsString)) > 0 then
  begin
    ChkSalario.Checked := True;
    EstableceIndice(zq_Puestos.FieldByName('idsalario').AsInteger,CmbSalarios);
    ChkSalarioClick(ChkSalario);
  end;
  if Length(trim(zq_Puestos.FieldByName('idrangosalarios').AsString)) > 0 then
  begin
    ChkRangoSalario.Checked := True;
    EstableceIndice(zq_Puestos.FieldByName('idrangosalarios').AsInteger,CmbRangoSalarios);
    ChkRangoSalarioClick(ChkRangoSalario);
  end
  else
     CmbRangoSalarios.ItemIndex := 0;
end;

procedure Tfrm_CatalogoDePuestos.zq_PuestosBeforeEdit(DataSet: TDataSet);
begin
  ChkAplicaSalario.Enabled := True;
  GrpSalarios.Enabled := True;
end;

procedure Tfrm_CatalogoDePuestos.zq_PuestosBeforeInsert(DataSet: TDataSet);
begin
  ChkAplicaSalario.Enabled := True;
  GrpSalarios.Enabled := True;
end;

procedure Tfrm_CatalogoDePuestos.EstableceIndice(key:integer;Combo:Tcombobox);
var c:Integer;
  Encontrado: Boolean;
begin
  Encontrado := False;
  c := 0;
  while (c < Combo.Items.Count) and (not encontrado) do
  begin
    if (Combo.Items.Objects[c] <> nil) and  (TEntero(Combo.Items.Objects[c]).Valor = Key) then
    begin
      Combo.ItemIndex := c;
      Encontrado := True;
    end;
    c:= C+1;
  end;

end;

procedure Tfrm_CatalogoDePuestos.ImportaDNomina(Modo:Tmodo);
var
  ZqOrigen:TzReadOnlyQuery;
  ZqDestino:TzQuery;
  LstErrores:TStringList;
  CadE:string;
  OldC:TCursor;
  procedure existeId(identificador:integer);
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Text := 'Select iid_puesto,spuesto from con_catalogodepuestos where iid_puesto = :Identificador ';
    connection.QryBusca.ParamByName('Identificador').AsInteger := identificador;
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
      raise exception.Create('El puesto con identificador '+connection.QryBusca.FieldByName('iid_puesto').AsString+' ya existe con el título: '+connection.QryBusca.FieldByName('spuesto').AsString+#10);
  end;

begin
  LstErrores := TStringList.Create;
  try
    try
      ZqOrigen := Tzreadonlyquery.create(nil);
      try
        ZqDestino := TzQuery.Create(nil);
        try
          ZqOrigen.Connection := connection.zConnection;
          ZqDestino.Connection := connection.zConnection;

          ZqOrigen.Active := False;
          ZqDestino.Active := False;

          ZqOrigen.SQL.Clear;
          ZqDestino.SQL.Clear;

          ZqOrigen.SQL.Text := 'SELECT * FROM nuc_cargo;';
          OldC := Screen.Cursor;
          Screen.Cursor := crAppStart;
          PnlProgreso.Visible := True;
          Progreso.Position := 0;
          try
            if Modo = Sustituyendo then
            begin
              //ZqDestino.SQL.Text := 'DELETE FROM con_catalogodepuestos;';
              //porque fregados usé truncate en vez de delete?, porque es más rápido
              //y te pone en 0 los autoincrementables en caso de existir formatenado
              //el status de la tabla
              ZqDestino.SQL.Text := 'TRUNCATE TABLE con_catalogodepuestos;';
              ZqDestino.ExecSQL;
              ZqDestino.SQL.Clear;
              ZqDestino.Active := False;
            end;
            ZqDestino.SQL.Text := 'INSERT INTO con_catalogodepuestos (iId_Puesto,dSueldo,sDescripcion,IdTipoNomina,IdOrganizacion,sPuesto,nivel,IdSalario,Jornada,CobraFestivos,IdRangoSalarios) '+
                                  'VALUES (:iId_Puesto,0,:sDescripcion,:IdTipoNomina,:IdOrganizacion,:sPuesto,:nivel,:IdSalario,:Jornada,:CobraFestivos,:IdRangoSalarios);';

            ZqOrigen.Open;
            Progreso.Max := ZqOrigen.RecordCount;
            ZqOrigen.First;
            while not ZqOrigen.eof do
            begin
              Progreso.Position := ZqOrigen.RecNo;
              try
                if modo = Verificando then
                  existeid(ZqOrigen.FieldByName('idcargo').asinteger);

                ZqDestino.ParamByName('iId_Puesto').AsInteger :=ZqOrigen.FieldByName('idcargo').asinteger;
                ZqDestino.ParamByName('sDescripcion').AsString :=ZqOrigen.FieldByName('codigocargo').AsString;
                ZqDestino.ParamByName('IdTipoNomina').asinteger :=ZqOrigen.FieldByName('idtiponomina').asinteger;
                ZqDestino.ParamByName('IdOrganizacion').asinteger :=ZqOrigen.FieldByName('idorganizacion').asinteger;
                ZqDestino.ParamByName('sPuesto').AsString :=ZqOrigen.FieldByName('codigocargo').AsString;
                ZqDestino.ParamByName('nivel').asinteger :=ZqOrigen.FieldByName('nivel').asinteger;
                ZqDestino.ParamByName('IdSalario').asinteger :=ZqOrigen.FieldByName('idsalario').asinteger;
                ZqDestino.ParamByName('Jornada').asinteger :=ZqOrigen.FieldByName('jornada').asinteger;
                ZqDestino.ParamByName('CobraFestivos').AsString :=ZqOrigen.FieldByName('cobrafestivos').AsString;
                ZqDestino.ParamByName('IdRangoSalarios').asinteger :=ZqOrigen.FieldByName('idrangosalarios').asinteger;
                ZqDestino.ExecSQL;
              except
                on e:Exception do
                  LstErrores.Add('Al guardar el puesto: '+ZqOrigen.FieldByName('codigocargo').AsString+' por lo siguiente: '+e.message+#10);
              end;
              ZqOrigen.Next;
            end;
          finally
            PnlProgreso.Visible := False;
            Progreso.Position := 0;
            Screen.Cursor := OldC;
          end;
        finally
          ZqDestino.Free;
        end;
      finally
        ZqOrigen.Free;
      end;

    finally
      if LstErrores.Count > 0 then
      begin
        CadE := LstErrores.CommaText;
        CadE := ansireplacetext(CadE,'","',' ');
        ShowMessage('Ocurrieron los siguientes errores al importar los datos: '+#10+cade);
      end
      else
        ShowMessage('Datos importados correctamente.');
    end;

  finally
    zq_puestos.Refresh;
    LstErrores.Free;
  end;

end;

procedure Tfrm_CatalogoDePuestos.LCbbTipodeNominaEnter(Sender: TObject);
begin
LCbbTipodeNomina.color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDePuestos.LCbbTipodeNominaExit(Sender: TObject);
begin
LCbbTipodeNomina.color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDePuestos.LCbbTipodeNominaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    cbbJornada.SetFocus
end;

procedure Tfrm_CatalogoDePuestos.Sustituyendotodo1Click(Sender: TObject);
begin
  ImportaDNomina(Sustituyendo);
end;

procedure Tfrm_CatalogoDePuestos.CloseFormulario;
begin
    if Assigned(frm_Empleados)then
    begin
        try
          frm_Empleados.zq_puestos.Refresh;
          frm_Empleados.cxCategoria.DataBinding.DataSource.DataSet.FieldByName('iId_Puesto').AsInteger := zq_puestos.FieldByName('idcargo').AsInteger;
          frm_Empleados.cxCategoria.SetFocus;
          Close;
        Except
        end;
    end;
    if Assigned(frmCatalogoDePostulante)then
    begin
        try
          FrmCatalogoDePostulante.zq_puestos.Refresh;
          FrmCatalogoDePostulante.dbPuesto.EditValue := zq_puestos.FieldByName('idcargo').AsInteger;
          FrmCatalogoDePostulante.dbPuesto.ItemIndex := FrmCatalogoDePostulante.zq_puestos.RecordCount;
          FrmCatalogoDePostulante.dbPuesto.SetFocus;
          Close;
        Except
        end;
    end;
end;

end.
