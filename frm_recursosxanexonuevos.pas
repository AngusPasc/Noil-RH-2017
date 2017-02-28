unit frm_recursosxanexonuevos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, global, frm_barra, db, Grids, DBGrids, frm_Connection, StdCtrls,
  DBCtrls, ComCtrls, Mask, Utilerias, StrUtils, Menus, ImgList,
  ExtCtrls, DateUtils, frxClass, frxDBSet,  RXDBCtrl, RxLookup, Math,
  Newpanel, Buttons, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  sSkinProvider, RxMemDS, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmRecursosxAnexonuevos = class(TForm)
    PopupPrincipal: TPopupMenu;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    N5: TMenuItem;
    BuscarPartida1: TMenuItem;
    PagePrograma: TPageControl;
    pg_personal: TTabSheet;
    pg_equipo: TTabSheet;
    TabMateriales: TTabSheet;
    ds_personal: TDataSource;
    ds_buscaobjeto: TDataSource;
    ds_equipos: TDataSource;
    ds_Inventario: TDataSource;
    ds_actividadesxanexo: TDataSource;
    ActividadesxAnexo: TZReadOnlyQuery;
    ActividadesxAnexosContrato: TStringField;
    ActividadesxAnexosIdConvenio: TStringField;
    ActividadesxAnexoiNivel: TIntegerField;
    ActividadesxAnexosSimbolo: TStringField;
    ActividadesxAnexosWbs: TStringField;
    ActividadesxAnexosWbsAnterior: TStringField;
    ActividadesxAnexosNumeroActividad: TStringField;
    ActividadesxAnexosTipoActividad: TStringField;
    ActividadesxAnexomDescripcion: TMemoField;
    ActividadesxAnexodFechaInicio: TDateField;
    ActividadesxAnexodDuracion: TFloatField;
    ActividadesxAnexodFechaFinal: TDateField;
    ActividadesxAnexodPonderado: TFloatField;
    ActividadesxAnexodVentaMN: TFloatField;
    ActividadesxAnexodVentaDLL: TFloatField;
    ActividadesxAnexolCalculo: TStringField;
    ActividadesxAnexosMedida: TStringField;
    ActividadesxAnexodCantidadAnexo: TFloatField;
    ActividadesxAnexoiColor: TIntegerField;
    ActividadesxAnexosWbsSpace: TStringField;
    ActividadesxAnexodMontoMN: TCurrencyField;
    ActividadesxAnexodMontoDLL: TCurrencyField;
    Refresh1: TMenuItem;
    Personal: TZQuery;
    PersonalsContrato: TStringField;
    PersonalsWbs: TStringField;
    PersonalsNumeroActividad: TStringField;
    PersonalsIdPersonal: TStringField;
    PersonaldCantidad: TFloatField;
    PersonalsDescripcion: TStringField;
    equipos: TZQuery;
    equipossContrato: TStringField;
    equipossWbs: TStringField;
    equipossNumeroActividad: TStringField;
    equipossIdEquipo: TStringField;
    equiposdCantidad: TFloatField;
    equiposdCostoMN: TFloatField;
    equiposdCostoDLL: TFloatField;
    equipossDescripcion: TStringField;
    inventario: TZQuery;
    inventariosContrato: TStringField;
    inventariosWbs: TStringField;
    inventariosNumeroActividad: TStringField;
    inventariosIdInventario: TStringField;
    inventariodCantidad: TFloatField;
    inventariosDescripcion: TStringField;
    Panel: tNewGroupBox;
    ListaObjeto: TRxDBGrid;
    ActividadesxAnexodExcedente: TFloatField;
    BuscaObjeto: TZReadOnlyQuery;
    sSkinProvider1: TsSkinProvider;
    recursosanexos: TfrxDBDataset;
    recursosequipos: TfrxDBDataset;
    recursospersonal: TfrxDBDataset;
    ranexosc: TZReadOnlyQuery;
    anexoc: TfrxDBDataset;
    rpersonal: TZReadOnlyQuery;
    requipos: TZReadOnlyQuery;
    StringField6: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField7: TStringField;
    rpersonalsNumeroActividad: TStringField;
    rpersonalsIdPersonal: TStringField;
    rpersonalsDescripcion: TStringField;
    rpersonalsMedida: TStringField;
    rpersonaldCantidad: TFloatField;
    rpersonaldCostoMN: TFloatField;
    requipossIdEquipo: TStringField;
    requipossDescripcion: TStringField;
    frxht: TfrxReport;
    rConfiguracion: TZReadOnlyQuery;
    dbconfiguracion: TfrxDBDataset;
    InsertarFichaTecnica1: TMenuItem;
    ranexoscsNumeroActividad: TStringField;
    ranexoscsIdInsumo: TStringField;
    ranexoscmDescripcion: TMemoField;
    ranexoscsmedida: TStringField;
    ranexoscdCantidad: TFloatField;
    TabSheet1: TTabSheet;
    dsBasicos: TDataSource;
    rendimientop: TZReadOnlyQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    rendimientoe: TZReadOnlyQuery;
    StringField8: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    rendimientopersonal: TfrxDBDataset;
    rendimientoequipos: TfrxDBDataset;
    rendimientoesIdEquipo: TStringField;
    rbasicos: TZReadOnlyQuery;
    StringField2: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    frxBasicos: TfrxDBDataset;
    rbasicossIdbasico: TStringField;
    PersonaldCostoMN: TFloatField;
    PersonaldCostoDLL: TFloatField;
    basicos: TZQuery;
    basicossContrato: TStringField;
    basicossNumeroActividad: TStringField;
    basicossIdBasico: TStringField;
    basicosdCantidad: TFloatField;
    basicossDescripcion: TStringField;
    basicosdCostoMN: TFloatField;
    basicosdCostoDLL: TFloatField;
    rbasicossSimbolo: TStringField;
    inventariodCostoMN: TFloatField;
    inventariodCostoDLL: TFloatField;
    ranexoscdCostoMN: TFloatField;
    ranexoscdCostoDLL: TFloatField;
    basicossWbs: TStringField;
    BuscaObjetoencontrar: TStringField;
    BuscaObjetoStringField1campo: TStringField;
    BuscaObjetoFloatField3Campo: TFloatField;
    BuscaObjetoFloatField4Campo: TFloatField;
    BuscaObjetosDescripcion: TStringField;
    ds_herramientas: TDataSource;
    herramientas: TZQuery;
    herramientassContrato: TStringField;
    herramientassWbs: TStringField;
    herramientassNumeroActividad: TStringField;
    herramientassIdHerramientas: TStringField;
    herramientasdCantidad: TFloatField;
    pg_herramientas: TTabSheet;
    herramientassDescripcion: TStringField;
    ImprimirComparativo1: TMenuItem;
    rxComparativo: TRxMemoryData;
    frxDBDataset1: TfrxDBDataset;
    rxComparativosContrato: TStringField;
    rxComparativosNumeroActividad: TStringField;
    rxComparativoCantidadAnexo: TFloatField;
    rxComparativoMedidaAnexo: TStringField;
    rxComparativoTipo: TStringField;
    rxComparativoId: TStringField;
    rxComparativoDescripcionAnexo: TStringField;
    rxComparativoDescripcion: TStringField;
    rxComparativoUnidad: TStringField;
    rxComparativoCantidad: TFloatField;
    rxComparativoCostoMN: TFloatField;
    rxComparativoCostoDLL: TFloatField;
    rxComparativoTotal: TFloatField;
    rxComparativoId_2: TStringField;
    rxComparativoDescripcion_2: TStringField;
    rxComparativoCantidad_2: TFloatField;
    rxComparativoCostoMN_2: TFloatField;
    rxComparativoCostoDLL_2: TFloatField;
    rxComparativoTotal_2: TFloatField;
    rxComparativoUnidad_2: TStringField;
    rxComparativoCostoDLLAnexo: TFloatField;
    rxComparativoCostoMNAnexo: TFloatField;
    rxComparativoclasifica: TIntegerField;
    herramientasdCostoMN: TFloatField;
    herramientasdCostoDLL: TFloatField;
    herramientasfila: TIntegerField;
    ActividadesxAnexosDescripcion: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_Actividades: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    grid_personal: TcxGrid;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    grid_Equipos: TcxGrid;
    cxgrdbtblvwGrid1DBTableView3: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView3Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column5: TcxGridDBColumn;
    cxgrdlvlGrid1Level3: TcxGridLevel;
    grid_Inventario: TcxGrid;
    cxgrdbtblvwGrid1DBTableView4: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView4Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column5: TcxGridDBColumn;
    cxgrdlvlGrid1Level4: TcxGridLevel;
    grid_basicos: TcxGrid;
    cxgrdbtblvwGrid1DBTableView5: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView5Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView5Column5: TcxGridDBColumn;
    cxgrdlvlGrid1Level5: TcxGridLevel;
    grid_Herramientas: TcxGrid;
    cxgrdbtblvwGrid1DBTableView6: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView6Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView6Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView6Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView6Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView6Column5: TcxGridDBColumn;
    cxgrdlvlGrid1Level6: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure BuscarPartida1Click(Sender: TObject);
    procedure PersonalAfterInsert(DataSet: TDataSet);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoKeyPress(Sender: TObject; var Key: Char);
    procedure ListaObjetoExit(Sender: TObject);
    procedure equiposAfterInsert(DataSet: TDataSet);
    procedure inventarioAfterInsert(DataSet: TDataSet);
    procedure ActividadesxAnexoAfterScroll(DataSet: TDataSet);
    procedure Grid_ActividadeDblClick(Sender: TObject);
    procedure Grid_ActividadeGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ActividadesxAnexoCalcFields(DataSet: TDataSet);
    procedure PersonalsIdPersonalChange(Sender: TField);
    procedure equipossIdEquipoChange(Sender: TField);
    procedure inventariosIdInventarioChange(Sender: TField);
    procedure inventarioBeforePost(DataSet: TDataSet);
    procedure equiposBeforePost(DataSet: TDataSet);
    procedure PersonalBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PersonalCalcFields(DataSet: TDataSet);
    procedure equiposCalcFields(DataSet: TDataSet);
    procedure inventarioCalcFields(DataSet: TDataSet);
    procedure Imprimir1Click(Sender: TObject);
    procedure InsertarFichaTecnica1Click(Sender: TObject);
    procedure basicosCalcFields(DataSet: TDataSet);
    procedure BuscaObjetoCalcFields(DataSet: TDataSet);
    procedure frxhtGetValue(const VarName: string; var Value: Variant);
    procedure basicosAfterInsert(DataSet: TDataSet);
    procedure basicosBeforePost(DataSet: TDataSet);
    procedure basicossIdBasicoChange(Sender: TField);
    procedure herramientasCalcFields(DataSet: TDataSet);
    procedure herramientasBeforePost(DataSet: TDataSet);
    procedure herramientasAfterInsert(DataSet: TDataSet);
    procedure herramientassIdHerramientasChange(Sender: TField);
    procedure ImprimirComparativo1Click(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmRecursosxAnexonuevos: TfrmRecursosxAnexonuevos;
  sIdPlataforma, sIdPernocta, sNumeroOrden, sPaquete,  sTipoAnterior, sFiltro : String ;
  iItemOrden, iActividad, iNivel : Integer ;
  bandera : byte ;

implementation

{$R *.dfm}

procedure TfrmRecursosxAnexonuevos.FormShow(Sender: TObject);
begin
  connection.configuracion.refresh ;

  connection.zCommand.Active := False ;
  connection.zCommand.SQL.Clear ;
  connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sTipoActividad = "Paquete"') ;
  connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
  connection.zcommand.params.ParamByName('Contrato').Value := global_contrato ;
  connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
  connection.zcommand.params.ParamByName('Convenio').Value := global_convenio ;
  connection.zCommand.ExecSQL;

  ActividadesxAnexo.Active := False ;
  ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
  ActividadesxAnexo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
  ActividadesxAnexo.Params.ParamByName('Convenio').Value := Global_Convenio ;
  ActividadesxAnexo.Open ;

  Grid_Actividades.SetFocus
end;


procedure TfrmRecursosxAnexonuevos.frxhtGetValue(const VarName: string;
  var Value: Variant);
// var
//  rp : Double ;
 begin
   { if rendimientop.recordcount = 1 then
      if rConfiguracion.FieldValues['sSimbolo']= '/' Then
          begin
              rp := 1 / rendimientop.FieldValues['dCantidad'] ;
             if CompareText( VarName, 'OPERACION1' ) = 0 then
                Value := rp;
            end;

      if rConfiguracion.FieldValues['sSimbolo']= '*' Then
          begin
              rp :=  0 ;
             if CompareText( VarName, 'OPERACION1' ) = 0 then
                Value := rp;
            end;}
 end;

procedure TfrmRecursosxAnexonuevos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmRecursosxAnexonuevos.Refresh1Click(Sender: TObject);
Var
    sSelect        : String ;
begin
    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sTipoActividad = "Paquete"') ;
    connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
    connection.zcommand.params.ParamByName('Contrato').Value := global_contrato ;
    connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
    connection.zcommand.params.ParamByName('Convenio').Value := global_convenio ;
    connection.zCommand.ExecSQL;

    sSelect := 'Select *, SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio order by iItemOrden, sNumeroActividad' ;
    ActividadesxAnexo.Active := False ;
    ActividadesxAnexo.SQL.Clear ;
    ActividadesxAnexo.SQL.Add(sSelect) ;
    ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
    ActividadesxAnexo.Params.ParamByName('Contrato').Value    := global_contrato ;
    ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
    ActividadesxAnexo.Params.ParamByName('Convenio').Value    := global_convenio ;
    ActividadesxAnexo.Open ;
    sFiltro  := '' ;
    connection.configuracion.Refresh ;
end;

procedure TfrmRecursosxAnexonuevos.Salir1Click(Sender: TObject);
begin
    close
end;

procedure TfrmRecursosxAnexonuevos.BuscaObjetoCalcFields(DataSet: TDataSet);
begin
   if BuscaObjeto.RecordCount > 0 then
    begin
     //  If Bandera = 5 Then
     //      BuscaObjetoencontrar.Text := BuscaObjeto.FieldValues['mDescripcion']
     //   Else
           BuscaObjetoencontrar.Text := BuscaObjeto.FieldValues['sDescripcion'] ;
    end;
end;

procedure TfrmRecursosxAnexonuevos.BuscarPartida1Click(Sender: TObject);
Var
    sNumeroPartida : String ;
begin
    If ActividadesxAnexo.RecordCount > 0 Then
    Begin
        sNumeroPartida := UPPERCASE(InputBox('Inteligent','Numero de Partida a buscar?', ActividadesxAnexo.FieldValues['sWBS'])) ;
        ActividadesxAnexo.Locate('sNumeroActividad', sNumeroPartida, [loCaseInsensitive])
    End
end;

procedure TfrmRecursosxAnexonuevos.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
  var
   sCondicion : String ;
   sSelect    : String ;
   SavePlace  : TBookmark;
begin

   sCondicion := ' And sWbs NOT Like "' + Trim(ActividadesxAnexo.FieldValues['sWbs']) + '.%"' ;
   SavePlace := TcxGridDBTableView(grid_Actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark ;
   If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' Then
      If ActividadesxAnexo.FieldValues['sSimbolo'] = '-' Then
      begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "+" Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :wbs') ;
          connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zcommand.params.ParamByName('Contrato').Value := ActividadesxAnexo.FieldValues['sContrato'] ;
          connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
          connection.zcommand.params.ParamByName('Convenio').Value := ActividadesxAnexo.FieldValues['sIdConvenio'] ;
          connection.zcommand.params.ParamByName('wbs').DataType := ftString ;
          connection.zcommand.params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL;
          If Pos(sCondicion , sFiltro) = 0 Then
              If sFiltro <> '' Then
                  sFiltro := sFiltro + sCondicion
              Else
                  sFiltro := sCondicion ;
      End
      Else
      begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :wbs') ;
          connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zcommand.params.ParamByName('Contrato').Value := ActividadesxAnexo.FieldValues['sContrato'] ;
          connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
          connection.zcommand.params.ParamByName('Convenio').Value := ActividadesxAnexo.FieldValues['sIdConvenio'] ;
          connection.zcommand.params.ParamByName('wbs').DataType := ftString ;
          connection.zcommand.params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL;
          If Pos(sCondicion , sFiltro) > 0 Then
              sFiltro  := MidStr( sFiltro , 1 , Pos(sCondicion , sFiltro) - 1 ) + MidStr ( sFiltro , Pos(sCondicion , sFiltro) + Length(sCondicion) , Length(sFiltro)) ;
      end ;
   sSelect := 'Select *, SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio ' + sFiltro + ' order by iItemOrden, round(sNumeroActividad)' ;
   ActividadesxAnexo.Active := False ;
   ActividadesxAnexo.SQL.Clear ;
   ActividadesxAnexo.SQL.Add(sSelect) ;
   ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
   ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Convenio').Value := global_convenio ;
   ActividadesxAnexo.Open ;
   Try
        TcxGridDBTableView(grid_Actividades.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
   Except
   End ;
end;

procedure TfrmRecursosxAnexonuevos.PersonalAfterInsert(DataSet: TDataSet);
begin
  If ActividadesxAnexo.RecordCount > 0 Then
    If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        personal.FieldValues['sContrato'] := global_contrato ;
        personal.FieldValues['sWbs'] := actividadesxanexo.FieldValues['sWbs']  ;
        personal.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad']  ;
    end
    else
        personal.Cancel
  else
    personal.Cancel
end;

procedure TfrmRecursosxAnexonuevos.ListaObjetoDblClick(Sender: TObject);
begin
    If PagePrograma.ActivePageIndex = 0 Then
        Grid_Personal.SetFocus
    Else
        If PagePrograma.ActivePageIndex = 1 Then
            Grid_Equipos.SetFocus
        Else
            If PagePrograma.ActivePageIndex = 2 Then
                Grid_Inventario.SetFocus
            Else
                If PagePrograma.ActivePageIndex = 3 Then
                    Grid_Basicos.SetFocus
                Else
                    If PagePrograma.ActivePageIndex = 4 Then
                        Grid_Herramientas.SetFocus
end;

procedure TfrmRecursosxAnexonuevos.ListaObjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Panel.Visible = True Then
        If Key = #13 Then
            If PagePrograma.ActivePageIndex = 0 Then
                Grid_Personal.SetFocus
            Else
                If PagePrograma.ActivePageIndex = 1 Then
                    Grid_Equipos.SetFocus
                Else
                    If PagePrograma.ActivePageIndex = 2 Then
                        Grid_Inventario.SetFocus
                    Else
                       If PagePrograma.ActivePageIndex = 3 Then
                          Grid_Basicos.SetFocus
                       Else
                           If PagePrograma.ActivePageIndex = 4 Then
                               Grid_Herramientas.SetFocus
end ;

procedure TfrmRecursosxAnexonuevos.ListaObjetoExit(Sender: TObject);
begin
    If Panel.Visible = True Then
    Begin
        Panel.Visible := False ;
        If BuscaObjeto.RecordCount > 0 Then
        Begin
            If PagePrograma.ActivePageIndex = 0 Then
            begin
                If (Personal.State = dsInsert) OR (Personal.State = dsEdit) Then
                begin
                    personal.FieldValues['sIdPersonal'] := BuscaObjeto.FieldValues['1campo'] ;
                    personal.FieldValues['dCostoMN']    := BuscaObjeto.FieldValues['3campo'] ;
                    personal.FieldValues['dCostoDLL']   := BuscaObjeto.FieldValues['4campo']
                End
            end
            Else
                If PagePrograma.ActivePageIndex = 1 Then
                begin
                    If (Equipos.State = dsInsert) OR (Equipos.State = dsEdit) Then
                    begin
                        Equipos.FieldValues['sIdEquipo'] := BuscaObjeto.FieldValues['1campo'] ;
                        Equipos.FieldValues['dCostoMN']  := BuscaObjeto.FieldValues['3campo'] ;
                        Equipos.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['4campo']
                    end
                end
                Else
                    If PagePrograma.ActivePageIndex = 2 Then
                    begin
                        If (inventario.State = dsInsert) OR (inventario.State = dsEdit) Then
                        begin
                            inventario.FieldValues['sIdInsumo'] := BuscaObjeto.FieldValues['1campo'] ;
                            inventario.FieldValues['dCostoMN']  := BuscaObjeto.FieldValues['3campo'] ;
                            inventario.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['4campo']
                        end
                    end
                Else
                    If PagePrograma.ActivePageIndex = 3 Then
                    begin
                        If (basicos.State = dsInsert) OR (basicos.State = dsEdit) Then
                        begin
                            basicos.FieldValues['sIdBasico'] := BuscaObjeto.FieldValues['1campo'] ;
                            basicos.FieldValues['dCostoMN']  := BuscaObjeto.FieldValues['3campo'] ;
                            basicos.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['4campo']
                        end
                    end
                Else
                    If PagePrograma.ActivePageIndex = 4 Then
                    begin
                        If (herramientas.State = dsInsert) OR (herramientas.State = dsEdit) Then
                        begin
                            herramientas.FieldValues['sIdHerramientas'] := BuscaObjeto.FieldValues['1campo'] ;
                            herramientas.FieldValues['dCostoMN']  := BuscaObjeto.FieldValues['3campo'] ;
                            herramientas.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['4campo']
                        end
                    end
            end
    end
end;

procedure TfrmRecursosxAnexonuevos.equiposAfterInsert(DataSet: TDataSet);
begin
  If ActividadesxAnexo.RecordCount > 0 Then
    If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        equipos.FieldValues['sContrato']        := global_contrato ;
        equipos.FieldValues['sWbs']             := actividadesxanexo.FieldValues['sWbs']  ;
        equipos.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad']  ;
    end
    else
        equipos.Cancel
  else
    equipos.Cancel
end;

procedure TfrmRecursosxAnexonuevos.inventarioAfterInsert(
  DataSet: TDataSet);
begin
  If ActividadesxAnexo.RecordCount > 0 Then
    If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        inventario.FieldValues['sContrato']        := global_contrato ;
        inventario.FieldValues['sWbs']             := actividadesxanexo.FieldValues['sWbs']  ;
        inventario.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad']  ;
    end
    else
        inventario.Cancel
  else
    inventario.Cancel
end;




procedure TfrmRecursosxAnexonuevos.ActividadesxAnexoAfterScroll(
  DataSet: TDataSet);
begin
    If ActividadesxAnexo.RecordCount > 0 Then
    begin
            Grid_Actividades.Hint := ActividadesxAnexo.FieldValues['mDescripcion'] ;
            personal.Active := False ;
            personal.Params.ParamByName('contrato').DataType   := ftString ;
            personal.Params.ParamByName('contrato').Value      := global_contrato ;
            personal.Params.ParamByName('wbs').DataType        := ftString ;
            personal.Params.ParamByName('wbs').Value           := ActividadesxAnexo.FieldValues['sWbs'] ;
            personal.Params.ParamByName('actividad').DataType  := ftString ;
            personal.Params.ParamByName('actividad').Value     := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            personal.Open ;

            equipos.Active := False ;
            equipos.Params.ParamByName('contrato').DataType  := ftString ;
            equipos.Params.ParamByName('contrato').Value     := global_contrato ;
            equipos.Params.ParamByName('wbs').DataType       := ftString ;
            equipos.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
            equipos.Params.ParamByName('actividad').DataType := ftString ;
            equipos.Params.ParamByName('actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            equipos.Open ;

            inventario.Active := False ;
            inventario.Params.ParamByName('contrato').DataType  := ftString ;
            inventario.Params.ParamByName('contrato').Value     := global_contrato ;
            inventario.Params.ParamByName('wbs').DataType       := ftString ;
            inventario.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
            inventario.Params.ParamByName('actividad').DataType := ftString ;
            inventario.Params.ParamByName('actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            inventario.Open ;

            basicos.Active := False ;
            basicos.Params.ParamByName('contrato').DataType  := ftString ;
            basicos.Params.ParamByName('contrato').Value     := global_contrato ;
            basicos.Params.ParamByName('wbs').DataType       := ftString ;
            basicos.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
            basicos.Params.ParamByName('actividad').DataType := ftString ;
            basicos.Params.ParamByName('actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            basicos.Open ;

            herramientas.Active := False ;
            herramientas.Params.ParamByName('contrato').DataType  := ftString ;
            herramientas.Params.ParamByName('contrato').Value     := global_contrato ;
            herramientas.Params.ParamByName('wbs').DataType       := ftString ;
            herramientas.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
            herramientas.Params.ParamByName('actividad').DataType := ftString ;
            herramientas.Params.ParamByName('actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            herramientas.Open ;
    end
    Else
    Begin

        personal.Active := False ;
        personal.Params.ParamByName('contrato').DataType  := ftString ;
        personal.Params.ParamByName('contrato').Value     := global_contrato ;
        personal.Params.ParamByName('wbs').DataType       := ftString ;
        personal.Params.ParamByName('wbs').Value          := '' ;
        personal.Params.ParamByName('actividad').DataType := ftString ;
        personal.Params.ParamByName('actividad').Value    := '' ;
        personal.Open ;

        equipos.Active := False ;
        equipos.Params.ParamByName('contrato').DataType  := ftString ;
        equipos.Params.ParamByName('contrato').Value     := global_contrato ;
        equipos.Params.ParamByName('wbs').DataType       := ftString ;
        equipos.Params.ParamByName('wbs').Value          := '' ;
        equipos.Params.ParamByName('actividad').DataType := ftString ;
        equipos.Params.ParamByName('actividad').Value    := '' ;
        equipos.Open ;

        inventario.Active := False ;
        inventario.Params.ParamByName('contrato').DataType  := ftString ;
        inventario.Params.ParamByName('contrato').Value     := global_contrato ;
        inventario.Params.ParamByName('wbs').DataType       := ftString ;
        inventario.Params.ParamByName('wbs').Value          := '' ;
        inventario.Params.ParamByName('actividad').DataType := ftString ;
        inventario.Params.ParamByName('actividad').Value    := '' ;
        inventario.Open ;

        basicos.Active := False ;
        basicos.Params.ParamByName('contrato').DataType  := ftString ;
        basicos.Params.ParamByName('contrato').Value     := global_contrato ;
        basicos.Params.ParamByName('wbs').DataType       := ftString ;
        basicos.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
        basicos.Params.ParamByName('actividad').DataType := ftString ;
        basicos.Params.ParamByName('actividad').Value    := '' ;
        basicos.Open ;

        herramientas.Active := False ;
        herramientas.Params.ParamByName('contrato').DataType  := ftString ;
        herramientas.Params.ParamByName('contrato').Value     := global_contrato ;
        herramientas.Params.ParamByName('wbs').DataType       := ftString ;
        herramientas.Params.ParamByName('wbs').Value          := '' ;
        herramientas.Params.ParamByName('actividad').DataType := ftString ;
        herramientas.Params.ParamByName('actividad').Value    := '' ;
        herramientas.Open ;
    End
end;

procedure TfrmRecursosxAnexonuevos.Grid_ActividadeDblClick(
  Sender: TObject);
var
   sCondicion : String ;
   sSelect    : String ;
   SavePlace  : TBookmark;
begin
   sCondicion := ' And sWbs NOT Like "' + Trim(ActividadesxAnexo.FieldValues['sWbs']) + '.%"' ;
   SavePlace := TcxGridDBTableView(grid_Actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark ;
   If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' Then
      If ActividadesxAnexo.FieldValues['sSimbolo'] = '-' Then
      begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "+" Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :wbs') ;
          connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zcommand.params.ParamByName('Contrato').Value := ActividadesxAnexo.FieldValues['sContrato'] ;
          connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
          connection.zcommand.params.ParamByName('Convenio').Value := ActividadesxAnexo.FieldValues['sIdConvenio'] ;
          connection.zcommand.params.ParamByName('wbs').DataType := ftString ;
          connection.zcommand.params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL;
          If Pos(sCondicion , sFiltro) = 0 Then
              If sFiltro <> '' Then
                  sFiltro := sFiltro + sCondicion
              Else
                  sFiltro := sCondicion ;
      End
      Else
      begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :wbs') ;
          connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zcommand.params.ParamByName('Contrato').Value := ActividadesxAnexo.FieldValues['sContrato'] ;
          connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
          connection.zcommand.params.ParamByName('Convenio').Value := ActividadesxAnexo.FieldValues['sIdConvenio'] ;
          connection.zcommand.params.ParamByName('wbs').DataType := ftString ;
          connection.zcommand.params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL;
          If Pos(sCondicion , sFiltro) > 0 Then
              sFiltro  := MidStr( sFiltro , 1 , Pos(sCondicion , sFiltro) - 1 ) + MidStr ( sFiltro , Pos(sCondicion , sFiltro) + Length(sCondicion) , Length(sFiltro)) ;
      end ;
   sSelect := 'Select *, SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio ' + sFiltro + ' order by iItemOrden, round(sNumeroActividad)' ;
   ActividadesxAnexo.Active := False ;
   ActividadesxAnexo.SQL.Clear ;
   ActividadesxAnexo.SQL.Add(sSelect) ;
   ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
   ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Convenio').Value := global_convenio ;
   ActividadesxAnexo.Open ;
   Try
      // TcxGridDBTableView(grid_Actividades.ActiveView).DataSource.DataSet.GotoBookmark(SavePlace);
   Except
   End ;
end;

procedure TfrmRecursosxAnexonuevos.Grid_ActividadeGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if (ActividadesxAnexo.FieldValues['iColor'] <> null) then
  begin
    AFont.Color := esColor (ActividadesxAnexo.FieldValues['iColor']) ;
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
        Afont.Style := [fsBold]
    Else
    If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
    Begin
        Afont.Style := [fsBold,fsItalic] ;
        AFont.Color := clRed ;
    End
  end;
end;

procedure TfrmRecursosxAnexonuevos.herramientasAfterInsert(DataSet: TDataSet);
begin
  If ActividadesxAnexo.RecordCount > 0 Then
    If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        herramientas.FieldValues['sContrato'] := global_contrato ;
        herramientas.FieldValues['sWbs'] := actividadesxanexo.FieldValues['sWbs']  ;
        herramientas.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad']  ;
    end
    else
        herramientas.Cancel
  else
    herramientas.Cancel
end;

procedure TfrmRecursosxAnexonuevos.herramientasBeforePost(DataSet: TDataSet);
begin
    If (herramientas.FieldValues['sIdHerramientas'] = Null) Then
         abort
end;

procedure TfrmRecursosxAnexonuevos.herramientasCalcFields(DataSet: TDataSet);
begin
    If NOT herramientas.FieldByName('sIdHerramientas').IsNull Then
    begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('select sDescripcion, dCostoMN, dCostoDLL from herramientas where sContrato = :contrato And sIdHerramientas = :herramientas') ;
        connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca2.Params.ParamByName('herramientas').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('herramientas').Value := herramientas.FieldValues['sIdHerramientas'] ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 Then
          begin
            herramientassDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'] ;
          end;
    End
end;

procedure TfrmRecursosxAnexonuevos.herramientassIdHerramientasChange(
  Sender: TField);
Var
    sDescripcion : String ;
begin
    If NOT herramientas.FieldByName('sIdHerramientas').IsNull Then
    begin
        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('select sDescripcion, dCostoMN, dCostoDLL from herramientas where sContrato = :contrato And sIdHerramientas = :herramientas') ;
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('herramientas').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('herramientas').Value := herramientas.FieldValues['sIdHerramientas'] ;
        connection.qryBusca.Open ;
        If connection.qryBusca.RecordCount > 0 Then
        begin
            herramientassDescripcion.Text         := connection.qryBusca.FieldValues['sDescripcion'] ;
            herramientas.FieldValues['dCostoMN']  := connection.qryBusca.FieldValues['dCostoMN'] ;
            herramientas.FieldValues['dCostoDLL'] := connection.qryBusca.FieldValues['dCostoDLL']
        end
        Else
            If (herramientas.State = dsInsert) OR (herramientas.State = dsEdit) Then
              If Trim(herramientas.FieldValues['sIdHerramientas'])  <> '' then
              Begin
                  bandera := 4 ;
                  sDescripcion := '%' + Trim (UpperCase(herramientas.FieldValues['sIdHerramientas'])) + '%' ;
                  BuscaObjeto.Active := False ;
                  ListaObjeto.Columns.Clear ;
                  ListaObjeto.Columns.Add ;
                  ListaObjeto.Columns[0].FieldName := 'encontrar' ;
                  BuscaObjeto.SQL.Clear ;
                  BuscaObjeto.SQL.Add('Select sDescripcion, sIdHerramientas as 1campo, dCostoMN as 3campo, dCostoDLL as 4campo from herramientas ' +
                                      'Where sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion') ;
                  BuscaObjeto.Params.ParamByName('Contrato').DataType    := ftString ;
                  BuscaObjeto.Params.ParamByName('Contrato').Value       := global_contrato ;
                  BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString ;
                  BuscaObjeto.Params.ParamByName('Descripcion').Value    := sDescripcion ;
                  BuscaObjeto.Open ;
                  Panel.Visible := True ;
                  ListaObjeto.SetFocus
              End
    End ;
end;

procedure TfrmRecursosxAnexonuevos.ActividadesxAnexoCalcFields(
  DataSet: TDataSet);
begin
    If (ActividadesxAnexo.State <> dsInsert) And (ActividadesxAnexo.State <> dsEdit) Then
    begin
        ActividadesxAnexodMontoMN.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaMN.Value ;
        ActividadesxAnexodMontoDLL.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaDLL.Value ;
        ActividadesxAnexosWbsSpace.Text := espaces (ActividadesxAnexo.FieldValues['iNivel']) + ActividadesxAnexo.FieldValues['sWbs'] ;
    End
end;

procedure TfrmRecursosxAnexonuevos.basicosAfterInsert(DataSet: TDataSet);
begin
//    If basicos.RecordCount > 0 Then
    If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        basicos.FieldValues['sContrato']        := global_contrato ;
        basicos.FieldValues['sWbs']             := actividadesxanexo.FieldValues['sWbs']  ;
        basicos.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad']  ;
    end
    else
        basicos.Cancel
  //else
 //   basicos.Cancel
end;

procedure TfrmRecursosxAnexonuevos.basicosBeforePost(DataSet: TDataSet);
begin
 If (basicos.FieldValues['sIdBasico'] = Null) Then
         abort   ;


end;

procedure TfrmRecursosxAnexonuevos.basicosCalcFields(DataSet: TDataSet);
begin
   If NOT Basicos.FieldByName('sIdBasico').IsNull Then
      begin
         connection.qryBusca2.Active := False ;
         connection.qryBusca2.SQL.Clear ;
         connection.qryBusca2.SQL.Add('select sDescripcion, dCostoMN, dCostoDLL from basicos where sContrato = :contrato And sIdBasico = :basico') ;
         connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString ;
         connection.qryBusca2.Params.ParamByName('contrato').Value    := global_contrato ;
         connection.qryBusca2.Params.ParamByName('basico').DataType   := ftString ;
         connection.qryBusca2.Params.ParamByName('basico').Value      := basicos.FieldValues['sIdBasico'] ;
         connection.qryBusca2.Open ;
         If connection.qryBusca2.RecordCount > 0 Then
           begin
             BasicossDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'] ;
             BasicosdCostoMN.Text     := connection.qryBusca2.FieldValues['dCostoMN'] ;
             BasicosdCostoDLL.Text    := connection.qryBusca2.FieldValues['dCostoDLL'] ;
           end;

      end
end;



procedure TfrmRecursosxAnexonuevos.inventariosIdInventarioChange(Sender: TField);
Var
    sDescripcion : String ;
begin
    If NOT inventario.FieldByName('sIdInsumo').IsNull Then
    begin
        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('select sIdInsumo, substr(mDescripcion,1,255) as sDescripcion, dCostoMN, dCostoDLL from insumos where sIdInsumo = :inventario') ;
        connection.qryBusca.Params.ParamByName('inventario').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('inventario').Value := inventario.FieldValues['sIdInsumo'] ;
        connection.qryBusca.Open ;
        If connection.qryBusca.RecordCount > 0 Then
        begin
            inventariosDescripcion.Text := MidStr(connection.qryBusca.FieldValues['sDescripcion'],1,255) ;
            inventariodCostoMN.Text     := connection.qryBusca.FieldValues['dCostoMN'] ;
            inventariodCostoDLL.Text    := connection.qryBusca.FieldValues['dCostoDLL']
        End
        Else
            If (inventario.State = dsInsert) OR (inventario.State = dsEdit) Then
                If Trim(inventario.FieldValues['sIdInsumo'])  <> '' then
                Begin
                    bandera := 5 ;
                    sDescripcion := '%' + Trim (UpperCase(inventario.FieldValues['sIdInsumo'])) + '%' ;
                    BuscaObjeto.Active := False ;
                    ListaObjeto.Columns.Clear ;
                    ListaObjeto.Columns.Add ;
                    ListaObjeto.Columns[0].FieldName := 'sDescripcion' ;
                    BuscaObjeto.SQL.Clear ;
                    BuscaObjeto.SQL.Add('Select sIdInsumo as 1Campo, substr(mDescripcion,1,255) as sDescripcion, dCostoMN as 3Campo, ' +
                                        'dCostoDLL as 4Campo from insumos Where ' +
                                        'mDescripcion Like :Descripcion Order by sDescripcion') ;
                    BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString ;
                    BuscaObjeto.Params.ParamByName('Descripcion').Value    := sDescripcion ;
                    BuscaObjeto.Open ;
                    Panel.Visible := True ;
                    ListaObjeto.SetFocus
                End
    End
end;




procedure TfrmRecursosxAnexonuevos.basicossIdBasicoChange(Sender: TField);
Var
    sDescripcion : String ;
begin
   If NOT basicos.FieldByName('sIdBasico').IsNull Then
    begin
        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('select sDescripcion, dCostoMN, dCostoDLL from basicos where sContrato = :contrato And sIdBasico = :basico') ;
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('contrato').Value    := global_contrato ;
        connection.qryBusca.Params.ParamByName('basico').DataType   := ftString ;
        connection.qryBusca.Params.ParamByName('basico').Value      := basicos.FieldValues['sIdBasico'] ;
        connection.qryBusca.Open ;
        If connection.qryBusca.RecordCount > 0 Then
        begin
            basicossDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'] ;
            basicosdCostoMN.Text     := connection.qryBusca.FieldValues['dCostoMN'] ;
            basicosdCostoDLL.Text    := connection.qryBusca.FieldValues['dCostoDLL'] ;
        end
        Else
            If (basicos.State = dsInsert) OR (basicos.State = dsEdit) Then
              If Trim(basicos.FieldValues['sIdBasico'])  <> '' then
              Begin
                  bandera := 4 ;
                  sDescripcion := '%' + Trim (UpperCase(basicos.FieldValues['sIdBasico'])) + '%' ;
                  BuscaObjeto.Active := False ;
                  ListaObjeto.Columns.Clear ;
                  ListaObjeto.Columns.Add ;
                  ListaObjeto.Columns[0].FieldName := 'sDescripcion' ;
                  BuscaObjeto.SQL.Clear ;
                  BuscaObjeto.SQL.Add('Select sIdBasico as 1Campo, sDescripcion , dCostoMN as 3Campo, dCostoDLL as 4Campo from basicos Where ' +
                                      'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion') ;
                  BuscaObjeto.Params.ParamByName('Contrato').DataType    := ftString ;
                  BuscaObjeto.Params.ParamByName('Contrato').Value       := global_contrato ;
                  BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString ;
                  BuscaObjeto.Params.ParamByName('Descripcion').Value    := sDescripcion ;
                  BuscaObjeto.Open ;
                  Panel.Visible := True ;
                  ListaObjeto.SetFocus
              End
    End ;
end;



procedure TfrmRecursosxAnexonuevos.PersonalsIdPersonalChange(Sender: TField);
Var
    sDescripcion : String ;
begin
    If NOT Personal.FieldByName('sIdPersonal').IsNull Then
    begin
        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('select sDescripcion, dCostoMN, dCostoDLL from personal where sContrato = :contrato And sIdPersonal = :personal') ;
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('personal').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('personal').Value := personal.FieldValues['sIdPersonal'] ;
        connection.qryBusca.Open ;
        If connection.qryBusca.RecordCount > 0 Then
        begin
            PersonalsDescripcion.Text         := connection.qryBusca.FieldValues['sDescripcion'] ;
            personal.FieldValues['dCostoMN']  := connection.qryBusca.FieldValues['dCostoMN'] ;
            personal.FieldValues['dCostoDLL'] := connection.qryBusca.FieldValues['dCostoDLL']
            //personaldCostoMN.Text     := connection.qryBusca.FieldValues['dCostoMN'] ;
            //personaldCostoDLL.Text    := connection.qryBusca.FieldValues['dCostoDLL'] ;
        end
        Else
            If (Personal.State = dsInsert) OR (Personal.State = dsEdit) Then
              If Trim(Personal.FieldValues['sIdPersonal'])  <> '' then
              Begin
                  bandera := 4 ;
                  sDescripcion := '%' + Trim (UpperCase(Personal.FieldValues['sIdPersonal'])) + '%' ;
                  BuscaObjeto.Active := False ;
                  ListaObjeto.Columns.Clear ;
                  ListaObjeto.Columns.Add ;
                  ListaObjeto.Columns[0].FieldName := 'encontrar' ;
                  BuscaObjeto.SQL.Clear ;
                  BuscaObjeto.SQL.Add('Select sDescripcion, sIdPersonal as 1campo, dCostoMN as 3campo, dCostoDLL as 4campo from personal ' +
                                      'Where sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion') ;
                  BuscaObjeto.Params.ParamByName('Contrato').DataType    := ftString ;
                  BuscaObjeto.Params.ParamByName('Contrato').Value       := global_contrato ;
                  BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString ;
                  BuscaObjeto.Params.ParamByName('Descripcion').Value    := sDescripcion ;
                  BuscaObjeto.Open ;
                  Panel.Visible := True ;
                  ListaObjeto.SetFocus
              End
    End ;
end;

procedure TfrmRecursosxAnexonuevos.equipossIdEquipoChange(Sender: TField);
Var
    sDescripcion : String ;
begin
    If NOT equipos.FieldByName('sIdEquipo').IsNull Then
    Begin
        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('select sDescripcion, dCostoMN, dCostoDLL from equipos where sContrato = :contrato And sIdEquipo = :equipo') ;
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('equipo').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('equipo').Value := equipos.FieldValues['sIdEquipo'] ;
        connection.qryBusca.Open ;
        If connection.qryBusca.RecordCount > 0 Then
        Begin
            equipossDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'] ;
            equipos.FieldValues['dCostoMN'] := connection.qryBusca.FieldValues['dCostoMN'] ;
            equipos.FieldValues['dCostoDLL'] := connection.qryBusca.FieldValues['dCostoDLL']
        End
        Else
            If (equipos.State = dsInsert) OR (equipos.State = dsEdit) Then
                If Trim(equipos.FieldValues['sIdEquipo'])  <> '' then
                Begin
                    bandera := 4 ;
                    sDescripcion := '%' + Trim (UpperCase(equipos.FieldValues['sIdEquipo'])) + '%' ;
                    BuscaObjeto.Active := False ;
                    ListaObjeto.Columns.Clear ;
                    ListaObjeto.Columns.Add ;
                    ListaObjeto.Columns[0].FieldName := 'sDescripcion' ;

                    BuscaObjeto.SQL.Clear ;
                    BuscaObjeto.SQL.Add('Select sIdEquipo as 1Campo, sDescripcion, dCostoMN as 3Campo, dCostoDLL as 4Campo from equipos Where ' +
                                        'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion') ;
                    BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString ;
                    BuscaObjeto.Params.ParamByName('Contrato').Value := global_contrato ;
                    BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString ;
                    BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion ;
                    BuscaObjeto.Open ;
                    Panel.Visible := True ;
                    ListaObjeto.SetFocus
                End
    End ;
end;

procedure TfrmRecursosxAnexonuevos.inventarioBeforePost(DataSet: TDataSet);
begin
    If (inventario.FieldValues['sIdInsumo'] = Null) Then
         abort   ;

   If (inventario.FieldValues['sIdInsumo'] <> Null) Then
         inventario.FieldValues['dCostoDLL'] := 0 ;

end;

procedure TfrmRecursosxAnexonuevos.equiposBeforePost(DataSet: TDataSet);
begin
    If (equipos.FieldValues['sIdEquipo'] = Null) Then
         abort

end;

procedure TfrmRecursosxAnexonuevos.PersonalBeforePost(DataSet: TDataSet);
begin
    If (personal.FieldValues['sIdPersonal'] = Null) Then
         abort
end;

procedure TfrmRecursosxAnexonuevos.FormKeyPress(Sender: TObject; var Key: Char);
{ Manejador del evento OnKeyPress del Form }
{ También hay que establecer la propiedad KeyPreview del Form a True }
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
      if (ActiveControl is TrxDBGrid) then   { si es un TrxDBGrid }
           Key := #0                           { nos comemos la tecla }
      Else
          if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
              with TDBGrid(ActiveControl) do
                  if selectedindex < (fieldcount -1) then
                      selectedindex := selectedindex +1
                  else
                      selectedindex := 0;
end;

procedure TfrmRecursosxAnexonuevos.PersonalCalcFields(DataSet: TDataSet);
begin
    If NOT Personal.FieldByName('sIdPersonal').IsNull Then
    begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('select sDescripcion, dCostoMN, dCostoDLL from personal where sContrato = :contrato And sIdPersonal = :personal') ;
        connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca2.Params.ParamByName('personal').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('personal').Value := personal.FieldValues['sIdPersonal'] ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 Then
          begin
            PersonalsDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'] ;
           // personaldCostoMN.Text     := connection.qryBusca2.FieldValues['dCostoMN'] ;
           // personaldCostoDLL.Text    := connection.qryBusca2.FieldValues['dCostoDLL'] ;
          end;
    End
end;

procedure TfrmRecursosxAnexonuevos.equiposCalcFields(DataSet: TDataSet);
begin
    If NOT Equipos.FieldByName('sIdEquipo').IsNull Then
    begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('select sDescripcion from equipos where sContrato = :contrato And sIdEquipo = :equipo') ;
        connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca2.Params.ParamByName('equipo').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('equipo').Value := equipos.FieldValues['sIdEquipo'] ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 Then
            EquipossDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'] ;
    End
end;

procedure TfrmRecursosxAnexonuevos.inventarioCalcFields(DataSet: TDataSet);
begin
    If NOT inventario.FieldByName('sIdInsumo').IsNull Then
    begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('select substr(mDescripcion,1,255) as sDescripcion, dCostoMN, dCostoDLL from insumos where sIdInsumo = :inventario') ;
        connection.qryBusca2.Params.ParamByName('inventario').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('inventario').Value := inventario.FieldValues['sIdInsumo'] ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 Then
          begin
            inventariosDescripcion.Text  := MidStr(connection.qryBusca2.FieldValues['sDescripcion'],1,255) ;
            inventariodCostoMN.Text      := connection.qryBusca2.FieldValues['dCostoMN'] ;
            inventariodCostoDLL.Text     := connection.qryBusca2.FieldValues['dCostoDLL']  ;
          end;
    End
end;

procedure TfrmRecursosxAnexonuevos.Imprimir1Click(Sender: TObject);
begin
    if not FileExists(global_files + global_miReporte + '_ht.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_ht.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

    ranexosc.Active  := False ;
    ranexosc.params.ParamByName('Contrato').DataType  := ftString ;
    ranexosc.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    ranexosc.params.ParamByName('Actividad').DataType := ftString ;
    ranexosc.Params.ParamByName('Actividad').Value    := inventario.fieldValues['sNumeroActividad'];
    ranexosc.params.ParamByName('Convenio').DataType  := ftString ;
    ranexosc.Params.ParamByName('Convenio').Value     := Global_Convenio ;
    ranexosc.Open ;

    rpersonal.Active  := False ;
    rpersonal.params.ParamByName('Contrato').DataType  := ftString ;
    rpersonal.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    rpersonal.params.ParamByName('Actividad').DataType := ftString ;
    rpersonal.Params.ParamByName('Actividad').Value    := inventario.fieldValues['sNumeroActividad'];
    rpersonal.params.ParamByName('Convenio').DataType  := ftString ;
    rpersonal.Params.ParamByName('Convenio').Value     := Global_Convenio ;
    rpersonal.Open ;

    requipos.Active  := False ;
    requipos.params.ParamByName('Contrato').DataType  := ftString ;
    requipos.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    requipos.params.ParamByName('Actividad').DataType := ftString ;
    requipos.Params.ParamByName('Actividad').Value    := inventario.fieldValues['sNumeroActividad'];
    requipos.params.ParamByName('Convenio').DataType  := ftString ;
    requipos.Params.ParamByName('Convenio').Value     := Global_Convenio ;
    requipos.Open ;

    rConfiguracion.Active  := False ;
    rConfiguracion.params.ParamByName('Contrato').DataType := ftString ;
    rConfiguracion.Params.ParamByName('Contrato').Value    := Global_Contrato ;
    rConfiguracion.Open ;

    rendimientop.Active  := False ;
    rendimientop.params.ParamByName('Contrato').DataType  := ftString ;
    rendimientop.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    rendimientop.params.ParamByName('Actividad').DataType := ftString ;
    rendimientop.Params.ParamByName('Actividad').Value    := inventario.fieldValues['sNumeroActividad'];
    rendimientop.params.ParamByName('Convenio').DataType  := ftString ;
    rendimientop.Params.ParamByName('Convenio').Value     := Global_Convenio ;
    rendimientop.Open ;
    
    rendimientoe.Active  := False ;
    rendimientoe.params.ParamByName('Contrato').DataType  := ftString ;
    rendimientoe.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    rendimientoe.params.ParamByName('Actividad').DataType := ftString ;
    rendimientoe.Params.ParamByName('Actividad').Value    := inventario.fieldValues['sNumeroActividad'];
    rendimientoe.params.ParamByName('Convenio').DataType  := ftString ;
    rendimientoe.Params.ParamByName('Convenio').Value     := Global_Convenio ;
    rendimientoe.Open ;

    rbasicos.Active  := False ;
    rbasicos.params.ParamByName('Contrato').DataType  := ftString ;
    rbasicos.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    rbasicos.params.ParamByName('Actividad').DataType := ftString ;
    rbasicos.Params.ParamByName('Actividad').Value    := inventario.fieldValues['sNumeroActividad'];
    rbasicos.params.ParamByName('Convenio').DataType  := ftString ;
    rbasicos.Params.ParamByName('Convenio').Value     := Global_Convenio ;
    rbasicos.Open ;


    frxht.PreviewOptions.MDIChild := False ;
    frxht.PreviewOptions.Modal := True ;
    frxht.PreviewOptions.Maximized := lCheckMaximized () ;
    frxht.PreviewOptions.ShowCaptions := False ;
    frxht.Previewoptions.ZoomMode := zmPageWidth ;
    frxht.LoadFromFile (global_files + global_miReporte + '_ht.fr3') ;
    frxht.ShowReport ;
end;

procedure TfrmRecursosxAnexonuevos.ImprimirComparativo1Click(Sender: TObject);
var
   x, y, z     : integer;
   almacen,
   linea      : string;
   descripcion : string;
   t1, t2,
   mayor       : integer;
begin
    if not FileExists(global_files + global_miReporte + '_seguimiento_recursosanexo.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_seguimiento_recursosanexo.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sContrato, sNumeroActividad, sWbs, mDescripcion, sMedida, dCantidadAnexo, dVentaMN, dVentaDLL '+
                                'from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad" '+
                                'order by iItemOrden ');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
         rxComparativo.Active := True;
         rxComparativo.EmptyTable;
         while not connection.zCommand.Eof do
         begin
              for x := 1 to 5 do
              begin
                  linea   := '';
                  almacen := '';
                  descripcion := 'sDescripcion';
                  if tipo[x]= 'MATERIAL' then
                  begin
                     almacen     := 'and i.sIdAlmacen = ""';
                     descripcion := 'mDescripcion';
                  end;
                  if tipo[x]= 'PERSONAL' then
                     linea      := 'and i.sIdPersonal <> "CUADRILLAS"';


                  connection.QryBusca.Active := False;
                  connection.QryBusca.SQL.Clear;
                  connection.QryBusca.SQL.Add('select ra.'+folio[x]+' as Id, i.'+Descripcion+' as Descripcion, i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, 1 as clasifica from '+tablas[x]+' ra  '+
                                              'inner join '+catalogo[x]+' i  '+
                                              'on (i.sContrato = ra.sContrato and i.'+folio[x]+' = ra.'+folio[x]+' '+almacen+' ) '+
                                              'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad '+linea+' '+
                                              'union '+
                                              'select ra.'+folio[x]+' as Id, i.'+Descripcion+' as Descripcion, i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, 2 as clasifica from '+tablas_2[x]+' ra '+
                                              'inner join '+catalogo[x]+' i  '+
                                              'on (i.sContrato = ra.sContrato and i.'+folio[x]+' = ra.'+folio[x]+' '+almacen+' ) '+
                                              'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad '+linea+' ');
                  connection.QryBusca.ParamByName('Contrato').AsString  := global_contrato;
                  connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
                  connection.QryBusca.Open;

                  if connection.QryBusca.RecordCount > 0 then
                  begin
                       t1 := 0;
                       t2 := 0;
                       while not connection.QryBusca.Eof do
                       begin
                            if connection.QryBusca.FieldValues['clasifica'] = 1 then
                               t1 := t1 + 1
                            else
                               t2 := t2 + 1;
                            connection.QryBusca.Next;
                       end;
                       //SE GUARDAN LOS DATOS EN MEMORY....
                       if t1 >= t2 then
                       begin
                            mayor := t1 ;
                            connection.QryBusca.First;
                            for y := 1 to mayor  do
                            begin
                                rxComparativo.Append;
                                rxComparativo.FieldValues['sContrato']        := global_contrato;
                                rxComparativo.FieldValues['sNumeroActividad'] := connection.zCommand.FieldValues['sNumeroActividad'];
                                rxComparativo.FieldValues['DescripcionAnexo'] := connection.zCommand.FieldValues['mDescripcion'];
                                rxComparativo.FieldValues['CantidadAnexo']    := connection.zCommand.FieldValues['dCantidadAnexo'];
                                rxComparativo.FieldValues['MedidaAnexo']      := connection.zCommand.FieldValues['sMedida'];
                                rxComparativo.FieldValues['CostoMNAnexo']     := connection.zCommand.FieldValues['dVentaMN'];
                                rxComparativo.FieldValues['CostoDLLAnexo']    := connection.zCommand.FieldValues['dVentaDLL'];
                                rxComparativo.FieldValues['Tipo']             := tipo[x];
                                rxComparativo.FieldValues['Id']               := connection.QryBusca.FieldValues['Id'];
                                rxComparativo.FieldValues['Descripcion']      := connection.QryBusca.FieldValues['Descripcion'];
                                rxComparativo.FieldValues['Unidad']           := connection.QryBusca.FieldValues['sMedida'];
                                rxComparativo.FieldValues['Cantidad']         := connection.QryBusca.FieldValues['dCantidad'];
                                rxComparativo.FieldValues['CostoMN']          := connection.QryBusca.FieldValues['dCostoMN'];
                                rxComparativo.FieldValues['CostoDLL']         := connection.QryBusca.FieldValues['dCostoDLL'];
                                rxComparativo.FieldValues['Total']            := 0;
                                rxComparativo.Post;
                                connection.QryBusca.Next;
                            end;

                            for y := 1 to mayor - 1 do
                                rxComparativo.Prior;

                            for y := 1 to t2 do
                            begin
                                rxComparativo.Edit;
                                rxComparativo.FieldValues['Id_2']             := connection.QryBusca.FieldValues['Id'];
                                rxComparativo.FieldValues['Descripcion_2']    := connection.QryBusca.FieldValues['Descripcion'];
                                rxComparativo.FieldValues['Unidad_2']         := connection.QryBusca.FieldValues['sMedida'];
                                rxComparativo.FieldValues['Cantidad_2']       := connection.QryBusca.FieldValues['dCantidad'];
                                rxComparativo.FieldValues['CostoMN_2']        := connection.QryBusca.FieldValues['dCostoMN'];
                                rxComparativo.FieldValues['CostoDLL_2']       := connection.QryBusca.FieldValues['dCostoDLL'];
                                rxComparativo.FieldValues['Total_2']          := 0;
                                rxComparativo.Post;
                                rxComparativo.Next;
                                connection.QryBusca.Next;
                            end;
                       end;
                       //SE GUARDAN LOS DATOS EN MEMORY..
                       if t2 > t1 then
                       begin
                            mayor := t2 ;
                            connection.QryBusca.First;
                            for y := 1 to mayor  do
                            begin
                                rxComparativo.Append;
                                rxComparativo.FieldValues['sContrato']        := global_contrato;
                                rxComparativo.FieldValues['sNumeroActividad'] := connection.zCommand.FieldValues['sNumeroActividad'];
                                rxComparativo.FieldValues['DescripcionAnexo'] := connection.zCommand.FieldValues['mDescripcion'];
                                rxComparativo.FieldValues['CantidadAnexo']    := connection.zCommand.FieldValues['dCantidadAnexo'];
                                rxComparativo.FieldValues['MedidaAnexo']      := connection.zCommand.FieldValues['sMedida'];
                                rxComparativo.FieldValues['CostoMNAnexo']     := connection.zCommand.FieldValues['dVentaMN'];
                                rxComparativo.FieldValues['CostoDLLAnexo']    := connection.zCommand.FieldValues['dVentaDLL'];
                                rxComparativo.FieldValues['Tipo']             := tipo[x];
                                rxComparativo.FieldValues['Id_2']             := connection.QryBusca.FieldValues['Id'];
                                rxComparativo.FieldValues['Descripcion_2']    := connection.QryBusca.FieldValues['Descripcion'];
                                rxComparativo.FieldValues['Unidad_2']         := connection.QryBusca.FieldValues['sMedida'];
                                rxComparativo.FieldValues['Cantidad_2']       := connection.QryBusca.FieldValues['dCantidad'];
                                rxComparativo.FieldValues['CostoMN_2']        := connection.QryBusca.FieldValues['dCostoMN'];
                                rxComparativo.FieldValues['CostoDLL_2']       := connection.QryBusca.FieldValues['dCostoDLL'];
                                rxComparativo.FieldValues['Total_2']          := 0;
                                rxComparativo.Post;
                                connection.QryBusca.Next;
                            end;

                            for y := 1 to mayor - 1 do
                                rxComparativo.Prior;

                            for y := 1 to t1 do
                            begin
                                rxComparativo.Edit;
                                rxComparativo.FieldValues['Id']             := connection.QryBusca.FieldValues['Id'];
                                rxComparativo.FieldValues['Descripcion']    := connection.QryBusca.FieldValues['Descripcion'];
                                rxComparativo.FieldValues['Unidad']         := connection.QryBusca.FieldValues['sMedida'];
                                rxComparativo.FieldValues['Cantidad']       := connection.QryBusca.FieldValues['dCantidad'];
                                rxComparativo.FieldValues['CostoMN']        := connection.QryBusca.FieldValues['dCostoMN'];
                                rxComparativo.FieldValues['CostoDLL']       := connection.QryBusca.FieldValues['dCostoDLL'];
                                rxComparativo.FieldValues['Total']          := 0 ;
                                rxComparativo.Post;
                                rxComparativo.Next;
                                connection.QryBusca.Next;
                            end;
                       end;
                  end;
              end;
              connection.zCommand.Next;
         end;
    end;

    frxht.PreviewOptions.MDIChild := False ;
    frxht.PreviewOptions.Modal := True ;
    frxht.PreviewOptions.Maximized := lCheckMaximized () ;
    frxht.PreviewOptions.ShowCaptions := False ;
    frxht.Previewoptions.ZoomMode := zmPageWidth ;
    frxht.LoadFromFile (global_files + global_miReporte + '_seguimiento_recursosanexo.fr3') ;
    frxht.ShowReport ;
end;

procedure TfrmRecursosxAnexonuevos.InsertarFichaTecnica1Click(Sender: TObject);
Var
    qryRecursosp, qryRecursose, qryRecursosm  : tzReadOnlyQuery ;
begin
    qryRecursosp := tzReadOnlyQuery.Create(Self) ;
    qryRecursose := tzReadOnlyQuery.Create(Self) ;
    qryRecursosm := tzReadOnlyQuery.Create(Self) ;

    qryRecursosp.Connection := connection.zConnection ;
    qryRecursose.Connection := connection.zConnection ;
    qryRecursosm.Connection := connection.zConnection ;

 // aqui inserto el material
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add('Delete from recursosanexosnuevos Where sContrato =:Contrato') ;
    connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
    connection.zCommand.Params.ParamByName('contrato').value     := Global_Contrato;
    connection.zCommand.ExecSQL ;

    qryRecursosm.Active := False ;
    qryRecursosm.SQL.Clear ;
    qryRecursosm.SQL.Add('select * from recursosanexo Where sContrato =:Contrato') ;
    qryRecursosm.Params.ParamByName('Contrato').DataType := ftString ;
    qryRecursosm.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    qryRecursosm.Open ;
   if qryRecursosm.RecordCount > 0 Then
      begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('insert into recursosanexosnuevos(sContrato,sWbs,sNumeroActividad,sIdInsumo,dCantidad, dCostoMN, dCostoDLL) ' +
                                     'VALUES (:contrato, :Wbs, :Actividad, :Insumo, :Cantidad, :CostoMN, :CostoDLL )') ;
            while qryRecursosm.Eof <> True do
              begin
                   // Inserto Datos a la Tabla .....
                       try
                          connection.zCommand.Active := False;
                          connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
                          connection.zCommand.Params.ParamByName('contrato').value     := Global_Contrato;
                          connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString;
                          connection.zCommand.Params.ParamByName('Wbs').value          := qryRecursosm.FieldValues['sWbs'] ;
                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                          connection.zCommand.Params.ParamByName('Actividad').value    := qryRecursosm.FieldValues['sNumeroActividad'] ;
                          connection.zCommand.Params.ParamByName('Insumo').DataType    := ftString;
                          connection.zCommand.Params.ParamByName('Insumo').value       := qryRecursosm.FieldValues['sIdInsumo'] ;
                          connection.zCommand.Params.ParamByName('Cantidad').DataType  := ftFloat ;
                          connection.zCommand.Params.ParamByName('Cantidad').value     := qryRecursosm.FieldValues['dCantidad'] ;
                          connection.zCommand.Params.ParamByName('CostoMN').DataType   := ftFloat ;
                          connection.zCommand.Params.ParamByName('CostoMN').value      := qryRecursosm.FieldValues['dCostoMN'] ;
                          connection.zCommand.Params.ParamByName('CostoDLL').DataType  := ftFloat;
                          connection.zCommand.Params.ParamByName('CostoDLL').value     := qryRecursosm.FieldValues['dCostoDLL'] ;
                          connection.zCommand.ExecSQL;
                          qryRecursosm.Next ;
//                          ProgressBar1.Max      := ProgressBar1.Max + 1;
//                          ProgressBar1.Position := ProgressBar1.Position + 1 ;
                        except
                           MessageDlg('Ocurrio un  error al tratar de actualizar el Registro ', mtInformation, [mbOk], 0);
                     end;
              end
    end;
     MessageDlg('Proceso Terminado Con Exito Materiales ', mtInformation, [mbOk], 0);



 // aqui inserto el personal
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add('Delete from recursospersonalnuevos Where sContrato =:Contrato') ;
    connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
    connection.zCommand.Params.ParamByName('contrato').value     := Global_Contrato;
    connection.zCommand.ExecSQL ;;

    qryRecursosp.Active := False ;
    qryRecursosp.SQL.Clear ;
    qryRecursosp.SQL.Add('select * from recursospersonal Where sContrato =:Contrato') ;
    qryRecursosp.Params.ParamByName('Contrato').DataType := ftString ;
    qryRecursosp.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    qryRecursosp.Open ;
   if qryRecursosp.RecordCount > 0 Then
      begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('insert into recursospersonalnuevos(sContrato,sWbs,sNumeroActividad,sIdPersonal,dCantidad, dCostoMN, dCostoDLL) ' +
                                     'VALUES (:contrato, :Wbs, :Actividad, :Insumo, :Cantidad, :CostoMN, :CostoDLL )') ;
            while qryRecursosp.Eof <> True do
              begin
                   // Inserto Datos a la Tabla .....
                       try
                          connection.zCommand.Active := False;
                          connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
                          connection.zCommand.Params.ParamByName('contrato').value     := Global_Contrato;
                          connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString;
                          connection.zCommand.Params.ParamByName('Wbs').value          := qryRecursosp.FieldValues['sWbs'] ;
                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                          connection.zCommand.Params.ParamByName('Actividad').value    := qryRecursosp.FieldValues['sNumeroActividad'] ;
                          connection.zCommand.Params.ParamByName('Insumo').DataType    := ftString;
                          connection.zCommand.Params.ParamByName('Insumo').value       := qryRecursosp.FieldValues['sIdPersonal'] ;
                          connection.zCommand.Params.ParamByName('Cantidad').DataType  := ftFloat ;
                          connection.zCommand.Params.ParamByName('Cantidad').value     := qryRecursosp.FieldValues['dCantidad'] ;
                          connection.zCommand.Params.ParamByName('CostoMN').DataType   := ftFloat ;
                          connection.zCommand.Params.ParamByName('CostoMN').value      := qryRecursosp.FieldValues['dCostoMN'] ;
                          connection.zCommand.Params.ParamByName('CostoDLL').DataType  := ftFloat;
                          connection.zCommand.Params.ParamByName('CostoDLL').value     := qryRecursosp.FieldValues['dCostoDLL'] ;
                          connection.zCommand.ExecSQL;
                          qryRecursosp.Next ;
//                          ProgressBar1.Max      := ProgressBar1.Max + 1;
//                          ProgressBar1.Position := ProgressBar1.Position + 1 ;
                        except
                           MessageDlg('Ocurrio un  error al tratar de actualizar el Registro ', mtInformation, [mbOk], 0);
                     end;
              end
    end;
     MessageDlg('Proceso Terminado Con Exito Personal', mtInformation, [mbOk], 0);



 // aqui inserto el equipo
     connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add('Delete from recursosequiposnuevos Where sContrato =:Contrato') ;
    connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
    connection.zCommand.Params.ParamByName('contrato').value     := Global_Contrato;
    connection.zCommand.ExecSQL ;;

    qryRecursose.Active := False ;
    qryRecursose.SQL.Clear ;
    qryRecursose.SQL.Add('select * from recursosequipo Where sContrato =:Contrato') ;
    qryRecursose.Params.ParamByName('Contrato').DataType := ftString ;
    qryRecursose.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    qryRecursose.Open ;
   if qryRecursose.RecordCount > 0 Then
      begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('insert into recursosequiposnuevos(sContrato,sWbs,sNumeroActividad,sIdEquipo,dCantidad, dCostoMN, dCostoDLL) ' +
                                     'VALUES (:contrato, :Wbs, :Actividad, :Insumo, :Cantidad, :CostoMN, :CostoDLL )') ;
            while qryRecursose.Eof <> True do
              begin
                   // Inserto Datos a la Tabla .....
                       try
                          connection.zCommand.Active := False;
                          connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
                          connection.zCommand.Params.ParamByName('contrato').value     := Global_Contrato;
                          connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString;
                          connection.zCommand.Params.ParamByName('Wbs').value          := qryRecursose.FieldValues['sWbs'] ;
                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                          connection.zCommand.Params.ParamByName('Actividad').value    := qryRecursose.FieldValues['sNumeroActividad'] ;
                          connection.zCommand.Params.ParamByName('Insumo').DataType    := ftString;
                          connection.zCommand.Params.ParamByName('Insumo').value       := qryRecursose.FieldValues['sIdEquipo'] ;
                          connection.zCommand.Params.ParamByName('Cantidad').DataType  := ftFloat ;
                          connection.zCommand.Params.ParamByName('Cantidad').value     := qryRecursose.FieldValues['dCantidad'] ;
                          connection.zCommand.Params.ParamByName('CostoMN').DataType   := ftFloat ;
                          connection.zCommand.Params.ParamByName('CostoMN').value      := qryRecursose.FieldValues['dCostoMN'] ;
                          connection.zCommand.Params.ParamByName('CostoDLL').DataType  := ftFloat;
                          connection.zCommand.Params.ParamByName('CostoDLL').value     := qryRecursose.FieldValues['dCostoDLL'] ;
                          connection.zCommand.ExecSQL;
                          qryRecursose.Next ;
//                          ProgressBar1.Max      := ProgressBar1.Max + 1;
//                          ProgressBar1.Position := ProgressBar1.Position + 1 ;
                        except
                           MessageDlg('Ocurrio un  error al tratar de actualizar el Registro ', mtInformation, [mbOk], 0);
                     end;
              end
    end;
     MessageDlg('Proceso Terminado Con Exito Equipo ', mtInformation, [mbOk], 0);


 // aqui inserto las herramientas
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add('Delete from recursosherramientasnuevos Where sContrato =:Contrato') ;
    connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
    connection.zCommand.Params.ParamByName('contrato').value     := Global_Contrato;
    connection.zCommand.ExecSQL ;;

    qryRecursosp.Active := False ;
    qryRecursosp.SQL.Clear ;
    qryRecursosp.SQL.Add('select * from recursosherramientas Where sContrato =:Contrato') ;
    qryRecursosp.Params.ParamByName('Contrato').DataType := ftString ;
    qryRecursosp.Params.ParamByName('Contrato').Value     := Global_Contrato ;
    qryRecursosp.Open ;
   if qryRecursosp.RecordCount > 0 Then
      begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('insert into recursosherramientasnuevos(sContrato,sWbs,sNumeroActividad,sIdHerramientas,dCantidad, dCostoMN, dCostoDLL) ' +
                                     'VALUES (:contrato, :Wbs, :Actividad, :Insumo, :Cantidad, :CostoMN, :CostoDLL )') ;
            while qryRecursosp.Eof <> True do
              begin
                   // Inserto Datos a la Tabla .....
                       try
                          connection.zCommand.Active := False;
                          connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
                          connection.zCommand.Params.ParamByName('contrato').value     := Global_Contrato;
                          connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString;
                          connection.zCommand.Params.ParamByName('Wbs').value          := qryRecursosp.FieldValues['sWbs'] ;
                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                          connection.zCommand.Params.ParamByName('Actividad').value    := qryRecursosp.FieldValues['sNumeroActividad'] ;
                          connection.zCommand.Params.ParamByName('Insumo').DataType    := ftString;
                          connection.zCommand.Params.ParamByName('Insumo').value       := qryRecursosp.FieldValues['sIdHerramientas'] ;
                          connection.zCommand.Params.ParamByName('Cantidad').DataType  := ftFloat ;
                          connection.zCommand.Params.ParamByName('Cantidad').value     := qryRecursosp.FieldValues['dCantidad'] ;
                          connection.zCommand.Params.ParamByName('CostoMN').DataType   := ftFloat ;
                          connection.zCommand.Params.ParamByName('CostoMN').value      := qryRecursosp.FieldValues['dCostoMN'] ;
                          connection.zCommand.Params.ParamByName('CostoDLL').DataType  := ftFloat;
                          connection.zCommand.Params.ParamByName('CostoDLL').value     := qryRecursosp.FieldValues['dCostoDLL'] ;
                          connection.zCommand.ExecSQL;
                          qryRecursosp.Next ;
//                          ProgressBar1.Max      := ProgressBar1.Max + 1;
//                          ProgressBar1.Position := ProgressBar1.Position + 1 ;
                        except
                           MessageDlg('Ocurrio un  error al tratar de actualizar el Registro ', mtInformation, [mbOk], 0);
                     end;
              end
    end;
     MessageDlg('Proceso Terminado Con Exito Herramientas', mtInformation, [mbOk], 0);

end;





End.
