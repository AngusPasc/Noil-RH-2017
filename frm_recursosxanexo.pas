unit frm_recursosxanexo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, global, frm_barra, db, Grids, DBGrids, frm_Connection, StdCtrls,
  DBCtrls, ComCtrls, Mask, Utilerias, StrUtils, Menus, ImgList,UnitTBotonesPermisos,
  ExtCtrls, DateUtils, frxClass, frxDBSet,  RXDBCtrl, RxLookup, Math,
  Newpanel, Buttons, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  RxMemDS, udbgrid,UnitExcepciones, UFunctionsGHH;
procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
type
  TfrmRecursosxAnexo = class(TForm)
    PopupPrincipal: TPopupMenu;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    N5: TMenuItem;
    BuscarPartida1: TMenuItem;
    PagePrograma: TPageControl;
    pg_personal: TTabSheet;
    pg_equipo: TTabSheet;
    TabMateriales: TTabSheet;
    Grid_Personal: TDBGrid;
    Grid_Equipos: TDBGrid;
    ds_personal: TDataSource;
    ds_buscaobjeto: TDataSource;
    ds_equipos: TDataSource;
    ds_Inventario: TDataSource;
    Grid_Actividades: TRxDBGrid;
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
    PersonaldCostoMN: TFloatField;
    PersonaldCostoDLL: TFloatField;
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
    Panel: tNewGroupBox;
    ActividadesxAnexodExcedente: TFloatField;
    dateFI: TDateTimePicker;
    dateFF: TDateTimePicker;
    dsMuestraInsumos: TDataSource;
    dsBDReporte: TfrxDBDataset;
    rReporte: TfrxReport;
    RecursosInsumos: TZQuery;
    RecursosInsumossContrato: TStringField;
    RecursosInsumossWbs: TStringField;
    RecursosInsumossNumeroActividad: TStringField;
    RecursosInsumossIdInsumo: TStringField;
    RecursosInsumosdCantidad: TFloatField;
    RecursosInsumosdCostoMN: TFloatField;
    RecursosInsumosdCantidadAnexo: TFloatField;
    RecursosInsumosdescribir: TMemoField;
    RecursosInsumosMedidaAnexo: TStringField;
    RecursosInsumosdFechaInicio: TDateField;
    RecursosInsumosdFechaFinal: TDateField;
    RecursosInsumossTipoActividad: TStringField;
    RecursosInsumosmDescripcion: TMemoField;
    RecursosInsumosCantidadInsumo: TFloatField;
    RecursosInsumossMedida: TStringField;
    RecursosInsumosdCantPU: TFloatField;
    RecursosInsumostotal: TFloatField;
    lblFechaF: TLabel;
    lblFechaI: TLabel;
    ImprimirInsumosTotales1: TMenuItem;
    InsumosxActividadReportada1: TMenuItem;
    tabBasico: TTabSheet;
    basicos: TZReadOnlyQuery;
    dsBasicos: TDataSource;
    Grid_Basicos: TDBGrid;
    basicossContrato: TStringField;
    basicossNumeroActividad: TStringField;
    basicossIdBasico: TStringField;
    basicosdCantidad: TFloatField;
    basicosdCostoMN: TFloatField;
    basicosdCostoDLL: TFloatField;
    basicossDescripcion: TStringField;
    ComparativoAnalisisPrecios1: TMenuItem;
    rxComparativo: TRxMemoryData;
    rxComparativosContrato: TStringField;
    rxComparativosNumeroActividad: TStringField;
    rxComparativoDescripcionAnexo: TStringField;
    rxComparativoCantidadAnexo: TFloatField;
    rxComparativoMedidaAnexo: TStringField;
    rxComparativoCostoMNAnexo: TFloatField;
    rxComparativoCostoDLLAnexo: TFloatField;
    rxComparativoTipo: TStringField;
    rxComparativoId: TStringField;
    rxComparativoDescripcion: TStringField;
    rxComparativoUnidad: TStringField;
    rxComparativoCantidad: TFloatField;
    rxComparativoCostoMN: TFloatField;
    rxComparativoCostoDLL: TFloatField;
    rxComparativoTotal: TFloatField;
    rxComparativoId_2: TStringField;
    rxComparativoDescripcion_2: TStringField;
    rxComparativoUnidad_2: TStringField;
    rxComparativoCostoMN_2: TFloatField;
    rxComparativoCantidad_2: TFloatField;
    rxComparativoCostoDLL_2: TFloatField;
    rxComparativoTotal_2: TFloatField;
    rxComparativoclasifica: TIntegerField;
    comparativos: TfrxDBDataset;
    BuscaObjeto: TZReadOnlyQuery;
    BuscaObjetoencontrar: TStringField;
    BuscaObjetoStringField1campo: TStringField;
    BuscaObjetoFloatField3Campo: TFloatField;
    BuscaObjetoFloatField4Campo: TFloatField;
    BuscaObjetosDescripcion: TStringField;
    ListaObjeto: TRxDBGrid;
    Grid_Inventario: TDBGrid;
    inventario: TZQuery;
    inventariosContrato: TStringField;
    inventariosWbs: TStringField;
    inventariosNumeroActividad: TStringField;
    inventariosIdInventario: TStringField;
    inventariodCantidad: TFloatField;
    inventariosDescripcion: TStringField;
    inventariodCostoMN: TFloatField;
    inventariodCostoDLL: TFloatField;
    ImprimirComparativoAnalisisPreciosxPartida1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure BuscarPartida1Click(Sender: TObject);
    procedure PersonalAfterInsert(DataSet: TDataSet);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoExit(Sender: TObject);
    procedure equiposAfterInsert(DataSet: TDataSet);
    procedure inventarioAfterInsert(DataSet: TDataSet);
    procedure ActividadesxAnexoAfterScroll(DataSet: TDataSet);
    procedure Grid_ActividadesDblClick(Sender: TObject);
    procedure Grid_ActividadesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ActividadesxAnexoCalcFields(DataSet: TDataSet);
    procedure inventarioBeforePost(DataSet: TDataSet);
    procedure equiposBeforePost(DataSet: TDataSet);
    procedure PersonalBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PersonalCalcFields(DataSet: TDataSet);
    procedure equiposCalcFields(DataSet: TDataSet);
    procedure inventarioCalcFields(DataSet: TDataSet);
    procedure cmdImprimeClick(Sender: TObject);
    procedure ImprimirInsumosTotales1Click(Sender: TObject);
    procedure InsumosxActividadReportada1Click(Sender: TObject);
    procedure basicosCalcFields(DataSet: TDataSet);
    procedure BuscaObjetoCalcFields(DataSet: TDataSet);
    procedure ListaObjetoColEnter(Sender: TObject);
    procedure ComparativoAnalisisPrecios1Click(Sender: TObject);
    procedure PersonalsIdPersonalChange(Sender: TField);
    procedure equipossIdEquipoChange(Sender: TField);
    procedure inventariosIdInventarioChange(Sender: TField);
    procedure eliminarinsertar() ;
    procedure ImprimirComparativoAnalisisPreciosxPartida1Click(Sender: TObject);
    procedure dateFIKeyPress(Sender: TObject; var Key: Char);
    procedure dateFFKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_ActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_PersonalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EquiposMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_InventarioMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_BasicosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_PersonalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EquiposMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_InventarioMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_BasicosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ActividadesTitleClick(Column: TColumn);
    procedure Grid_PersonalTitleClick(Column: TColumn);
    procedure Grid_EquiposTitleClick(Column: TColumn);
    procedure Grid_InventarioTitleClick(Column: TColumn);
    procedure Grid_BasicosTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure dateFIEnter(Sender: TObject);
    procedure dateFIExit(Sender: TObject);
    procedure dateFFEnter(Sender: TObject);
    procedure dateFFExit(Sender: TObject);
    procedure PersonalPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PersonalDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure equiposPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure equiposDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure inventarioPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure inventarioDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmRecursosxAnexo: TfrmRecursosxAnexo;
  sIdPlataforma : String ;
  sIdPernocta   : String ;
  sNumeroOrden  : String ;
  sPaquete      : String ;
  iItemOrden    : Integer ;
  iActividad    : Integer ;
  sTipoAnterior : String ;
  iNivel        : Integer ;
  sFiltro, sTipo       : String ;
  bandera : byte ;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  utgrid3:ticdbgrid;
  utgrid4:ticdbgrid;
  utgrid5:ticdbgrid;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
  BotonPermiso2: TBotonesPermisos;
  BotonPermiso3: TBotonesPermisos;
  BotonPermiso4: TbotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmRecursosxAnexo.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cRecursos', Personal);
  BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cRecursos', equipos);
  BotonPermiso2 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cRecursos', inventario);
  BotonPermiso3 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cRecursos', basicos);
  BotonPermiso4 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cRecursos', PopupPrincipal);

 try
  sMenuP:=stMenu;
  UtGrid:=TicdbGrid.create(grid_actividades);
  UtGrid2:=TicdbGrid.create(grid_personal);
  UtGrid3:=TicdbGrid.create(grid_equipos);
  UtGrid4:=TicdbGrid.create(grid_inventario);
  UtGrid5:=TicdbGrid.create(grid_basicos);
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
  Grid_Actividades.SetFocus;
  BotonPermiso4.permisosBotones(nil);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al iniciar el formulario', 0);
  end;
 end;
end;

procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin
if Zeo.FieldValues[Camp]<0 then
 Zeo.FieldValues[Camp]:=Zeo.FieldValues[Camp]*-1;
end;
procedure TfrmRecursosxAnexo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.destroy;
  utgrid2.destroy;
  utgrid3.destroy;
  utgrid4.destroy;
  utgrid5.destroy;
  BotonPermiso.Free;
  BotonPermiso1.Free;
  BotonPermiso2.Free;
  BotonPermiso3.Free;
  BotonPermiso4.Free;
  action := cafree ;
end;

procedure TfrmRecursosxAnexo.Refresh1Click(Sender: TObject);
Var
    sSelect        : String ;
begin
   try
    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sTipoActividad = "Paquete"') ;
    connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
    connection.zcommand.params.ParamByName('Contrato').Value := global_contrato ;
    connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
    connection.zcommand.params.ParamByName('Convenio').Value := global_convenio ;
    connection.zCommand.ExecSQL;

    sSelect := 'Select * from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio order by iItemOrden, sNumeroActividad' ;
    ActividadesxAnexo.Active := False ;
    ActividadesxAnexo.SQL.Clear ;
    ActividadesxAnexo.SQL.Add(sSelect) ;
    ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
    ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
    ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
    ActividadesxAnexo.Params.ParamByName('Convenio').Value := global_convenio ;
    ActividadesxAnexo.Open ;
    sFiltro  := '' ;
    connection.configuracion.Refresh ;
   except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al actualizar', 0);
    end;
   end;
end;

procedure TfrmRecursosxAnexo.Salir1Click(Sender: TObject);
begin
    close
end;

procedure TfrmRecursosxAnexo.BuscaObjetoCalcFields(DataSet: TDataSet);
begin
   if BuscaObjeto.RecordCount > 0 then
      BuscaObjetoencontrar.Text := BuscaObjeto.FieldValues['sDescripcion'] ;
//      BuscaObjetosDescripcion.Text := BuscaObjeto.FieldValues['mDescripcion'] ;
end;

procedure TfrmRecursosxAnexo.BuscarPartida1Click(Sender: TObject);
Var
    sNumeroPartida : String ;
begin
  try
    If ActividadesxAnexo.RecordCount > 0 Then
    Begin
        sNumeroPartida := UPPERCASE(InputBox('Inteligent','Numero de Partida a buscar?', ActividadesxAnexo.FieldValues['sWBS'])) ;
        ActividadesxAnexo.Locate('sNumeroActividad', sNumeroPartida, [loCaseInsensitive])
    End
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al buscar partida', 0);
  end;
  end;
end;

procedure TfrmRecursosxAnexo.cmdImprimeClick(Sender: TObject);
begin
try
     RecursosInsumos.Active := False ;
     RecursosInsumos.Params.ParamByName('Contrato').DataType := ftString ;
     RecursosInsumos.Params.ParamByName('Contrato').Value := global_contrato ;
     RecursosInsumos.Params.ParamByName('fechaI').DataType := ftDate ;
     RecursosInsumos.Params.ParamByName('fechaI').Value    := dateFI.Date;
     RecursosInsumos.Params.ParamByName('fechaF').DataType := ftDate ;
     RecursosInsumos.Params.ParamByName('fechaF').Value    := dateFF.Date;
     RecursosInsumos.Params.ParamByName('Convenio').DataType := ftString ;
     RecursosInsumos.Params.ParamByName('Convenio').Value := global_convenio ;
     RecursosInsumos.Open ;

     rReporte.LoadFromFile (global_files + 'InsumosxpartdaFecha.fr3') ;
     rReporte.PreviewOptions.MDIChild := False ;
     rReporte.PreviewOptions.Modal := True ;
     rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
     rReporte.PreviewOptions.ShowCaptions := False ;
     rReporte.Previewoptions.ZoomMode := zmPageWidth ;
     //<ROJAS>
     rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
     //
except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al hacer clic en cmdImprime', 0);
    end;
end;
end;

procedure TfrmRecursosxAnexo.ComparativoAnalisisPrecios1Click(Sender: TObject);
var
   x, y, z     : integer;
   almacen,
   linea      : string;
   descripcion : string;
   t1, t2,
   mayor       : integer;
begin
  try
   if grid_Actividades.DataSource.DataSet.IsEmpty=false then
   begin
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
                  connection.QryBusca.SQL.Add('select ra.'+folio[x]+' as Id, i.'+Descripcion+' as Descripcion, i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, 1 as clasifica from '+tablas_2[x]+' ra  '+
                                              'inner join '+catalogo[x]+' i  '+
                                              'on (i.sContrato = ra.sContrato and i.'+folio[x]+' = ra.'+folio[x]+' '+almacen+' ) '+
                                              'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad '+linea+' '+
                                              'union '+
                                              'select ra.'+folio[x]+' as Id, i.'+Descripcion+' as Descripcion, i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, 2 as clasifica from '+tablas[x]+' ra '+
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

                            for y := 1 to t2 do
                            begin
                                rxComparativo.Edit;
                                rxComparativo.FieldValues['Id']             := connection.QryBusca.FieldValues['Id'];
                                rxComparativo.FieldValues['Descripcion']    := connection.QryBusca.FieldValues['Descripcion'];
                                rxComparativo.FieldValues['Unidad']         := connection.QryBusca.FieldValues['sMedida'];
                                rxComparativo.FieldValues['Cantidad']       := connection.QryBusca.FieldValues['dCantidad'];
                                rxComparativo.FieldValues['CostoMN']        := connection.QryBusca.FieldValues['dCostoMN'];
                                rxComparativo.FieldValues['CostoDLL']       := connection.QryBusca.FieldValues['dCostoDLL'];
                                rxComparativo.FieldValues['Total']          := 0;
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

                            for y := 1 to t1 do
                            begin
                                rxComparativo.Edit;
                                rxComparativo.FieldValues['Id_2']             := connection.QryBusca.FieldValues['Id'];
                                rxComparativo.FieldValues['Descripcion_2']    := connection.QryBusca.FieldValues['Descripcion'];
                                rxComparativo.FieldValues['Unidad_2']         := connection.QryBusca.FieldValues['sMedida'];
                                rxComparativo.FieldValues['Cantidad_2']       := connection.QryBusca.FieldValues['dCantidad'];
                                rxComparativo.FieldValues['CostoMN_2']        := connection.QryBusca.FieldValues['dCostoMN'];
                                rxComparativo.FieldValues['CostoDLL_2']       := connection.QryBusca.FieldValues['dCostoDLL'];
                                rxComparativo.FieldValues['Total_2']          := 0 ;
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

    rReporte.PreviewOptions.MDIChild := False ;
    rReporte.PreviewOptions.Modal := True ;
    rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
    rReporte.PreviewOptions.ShowCaptions := False ;
    rReporte.Previewoptions.ZoomMode := zmPageWidth ;
    rReporte.LoadFromFile (global_files + 'seguimiento_recursosanexo.fr3') ;
    //<ROJAS>
    rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
    //
     if not FileExists(global_files + 'seguimiento_recursosanexo.fr3') then
     showmessage('El archivo de reporte seguimiento_recursosanexo.fr3 no existe, notifique al administrador del sistema');
   end;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al imprimir analisis precios', 0);
    end;
  end;
end;

procedure TfrmRecursosxAnexo.Copy1Click(Sender: TObject);
begin
UtGrid.CopyRowsToClip;
end;

procedure TfrmRecursosxAnexo.dateFFEnter(Sender: TObject);
begin
dateff.Color:=global_color_entrada;
end;

procedure TfrmRecursosxAnexo.dateFFExit(Sender: TObject);
begin
dateff.color:=global_color_salida
end;

procedure TfrmRecursosxAnexo.dateFFKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        datefi.SetFocus
end;

procedure TfrmRecursosxAnexo.dateFIEnter(Sender: TObject);
begin
datefi.color:=global_color_entrada;
end;

procedure TfrmRecursosxAnexo.dateFIExit(Sender: TObject);
begin
datefi.color:=global_color_salida
end;

procedure TfrmRecursosxAnexo.dateFIKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        dateff.SetFocus
end;

procedure TfrmRecursosxAnexo.Paste1Click(Sender: TObject);
begin
try
 UtGrid.AddRowsFromClip;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al pegar registro', 0);
end;
end;
end;

procedure TfrmRecursosxAnexo.PersonalAfterInsert(DataSet: TDataSet);
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

procedure TfrmRecursosxAnexo.ListaObjetoColEnter(Sender: TObject);
begin
//  If Key = #13 Then
//          begin
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
  //        end;
end;

procedure TfrmRecursosxAnexo.ListaObjetoDblClick(Sender: TObject);
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
end;

procedure TfrmRecursosxAnexo.ListaObjetoExit(Sender: TObject);
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
        End
    End
end;

procedure TfrmRecursosxAnexo.equiposAfterInsert(DataSet: TDataSet);
begin
  If ActividadesxAnexo.RecordCount > 0 Then
    If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        equipos.FieldValues['sContrato'] := global_contrato ;
        equipos.FieldValues['sWbs'] := actividadesxanexo.FieldValues['sWbs']  ;
        equipos.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad']  ;
    end
    else
        equipos.Cancel
  else
    equipos.Cancel
end;

procedure TfrmRecursosxAnexo.inventarioAfterInsert(DataSet: TDataSet);
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

procedure TfrmRecursosxAnexo.ActividadesxAnexoAfterScroll(DataSet: TDataSet);
begin
    If ActividadesxAnexo.RecordCount > 0 Then
    begin
            Grid_Actividades.Hint := ActividadesxAnexo.FieldValues['mDescripcion'] ;
            sTipo :='Personal' ;
            //eliminarinsertar() ;
            personal.Active := False ;
            personal.Params.ParamByName('contrato').DataType  := ftString ;
            personal.Params.ParamByName('contrato').Value     := global_contrato ;
            personal.Params.ParamByName('wbs').DataType       := ftString ;
            personal.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
            personal.Params.ParamByName('actividad').DataType := ftString ;
            personal.Params.ParamByName('actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            personal.Open ;

            sTipo :='Equipo' ;
            //eliminarinsertar() ;
            equipos.Active := False ;
            equipos.Params.ParamByName('contrato').DataType  := ftString ;
            equipos.Params.ParamByName('contrato').Value     := global_contrato ;
            equipos.Params.ParamByName('wbs').DataType       := ftString ;
            equipos.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
            equipos.Params.ParamByName('actividad').DataType := ftString ;
            equipos.Params.ParamByName('actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            equipos.Open ;

            sTipo :='Materiales' ;
            //eliminarinsertar() ;
            inventario.Active := False ;
            inventario.Params.ParamByName('contrato').DataType  := ftString ;
            inventario.Params.ParamByName('contrato').Value     := global_contrato ;
            inventario.Params.ParamByName('wbs').DataType       := ftString ;
            inventario.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
            inventario.Params.ParamByName('actividad').DataType := ftString ;
            inventario.Params.ParamByName('actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            inventario.Open ;

            basicos.Active := False ;
            basicos.Params.ParamByName('contrato').DataType    := ftString ;
            basicos.Params.ParamByName('contrato').Value       := global_contrato ;
            basicos.Params.ParamByName('actividad').DataType   := ftString ;
            basicos.Params.ParamByName('actividad').Value      := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
            basicos.Open ;
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
        inventario.Params.ParamByName('Convenio').DataType  := ftString ;
        inventario.Params.ParamByName('Convenio').Value     := global_convenio ;
        inventario.Params.ParamByName('wbs').DataType       := ftString ;
        inventario.Params.ParamByName('wbs').Value          := '' ;
        inventario.Params.ParamByName('actividad').DataType := ftString ;
        inventario.Params.ParamByName('actividad').Value    := '' ;
        inventario.Open ;

        basicos.Active := False ;
        basicos.Params.ParamByName('contrato').DataType  := ftString ;
        basicos.Params.ParamByName('contrato').Value     := global_contrato ;
        basicos.Params.ParamByName('actividad').DataType := ftString ;
        basicos.Params.ParamByName('actividad').Value    := '' ;
        basicos.Open ;
    End
end;

procedure TfrmRecursosxAnexo.Grid_ActividadesDblClick(Sender: TObject);
var
   sCondicion : String ;
   sSelect    : String ;
   SavePlace  : TBookmark;
begin
    if ActividadesxAnexo.FieldValues['sWbs']<>NULL then
    begin

   sCondicion := ' And sWbs NOT Like "' + Trim(ActividadesxAnexo.FieldValues['sWbs']) + '.%"' ;
   SavePlace := grid_actividades.DataSource.DataSet.GetBookmark ;
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
          connection.zCommand.ExecSQL ;
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
    end;
   sSelect := 'Select * from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio ' + sFiltro + ' order by iItemOrden, round(sNumeroActividad)' ;
   ActividadesxAnexo.Active := False ;
   ActividadesxAnexo.SQL.Clear ;
   ActividadesxAnexo.SQL.Add(sSelect) ;
   ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
   ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Convenio').Value := global_convenio ;
   ActividadesxAnexo.Open ;
   Try
        grid_actividades.DataSource.DataSet.GotoBookmark(SavePlace);
   Except
   End ;
end;

procedure TfrmRecursosxAnexo.Grid_ActividadesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    try
        if ActividadesxAnexo.FieldValues['iColor'] <>NULL then
          AFont.Color := esColor (ActividadesxAnexo.FieldValues['iColor']) ;
        If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
            Afont.Style := [fsBold]
        Else
            If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
            Begin
                Afont.Style := [fsBold,fsItalic] ;
                AFont.Color := clRed ;
            End
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al cambiar de registro en cuadricula superior', 0);
        end;
    end;
end;

procedure TfrmRecursosxAnexo.Grid_ActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmRecursosxAnexo.Grid_ActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmRecursosxAnexo.Grid_ActividadesTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmRecursosxAnexo.Grid_BasicosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid5.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmRecursosxAnexo.Grid_BasicosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid5.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmRecursosxAnexo.Grid_BasicosTitleClick(Column: TColumn);
begin
 UtGrid5.DbGridTitleClick(Column);
end;

procedure TfrmRecursosxAnexo.Grid_EquiposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid3.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmRecursosxAnexo.Grid_EquiposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid3.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmRecursosxAnexo.Grid_EquiposTitleClick(Column: TColumn);
begin
 UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmRecursosxAnexo.Grid_InventarioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid4.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmRecursosxAnexo.Grid_InventarioMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid4.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmRecursosxAnexo.Grid_InventarioTitleClick(Column: TColumn);
begin
 UtGrid4.DbGridTitleClick(Column);
end;

procedure TfrmRecursosxAnexo.Grid_PersonalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmRecursosxAnexo.Grid_PersonalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmRecursosxAnexo.Grid_PersonalTitleClick(Column: TColumn);
begin
 UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmRecursosxAnexo.ImprimirComparativoAnalisisPreciosxPartida1Click(Sender: TObject);
var
   x, y, z     : integer;
   almacen,
   linea       : string;
   descripcion : string;
   t1, t2,
   mayor       : integer;
begin
  try
   if grid_Actividades.DataSource.DataSet.IsEmpty=false then
   begin
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' then
    begin
         messageDLG('Para Imprimir Reporte Seleccione una Partida ', mtInformation, [mbOk], 0);
         exit;
    end;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sContrato, sNumeroActividad, sWbs, mDescripcion, sMedida, dCantidadAnexo, dVentaMN, dVentaDLL '+
                                'from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroActividad =:Actividad and sTipoActividad = "Actividad" '+
                                'order by iItemOrden ');
    connection.zCommand.ParamByName('Contrato').AsString  := global_contrato;
    connection.zCommand.ParamByName('Convenio').AsString  := global_convenio;
    connection.zCommand.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
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
                     almacen     :='';// 'and i.sIdAlmacen = ""';
                     descripcion := 'mDescripcion';
                  end;
                  if tipo[x]= 'PERSONAL' then
                     linea      := 'and i.sIdPersonal <> "CUADRILLAS"';


                  connection.QryBusca.Active := False;
                  connection.QryBusca.SQL.Clear;
                  connection.QryBusca.SQL.Add('select ra.'+folio[x]+' as Id, i.'+Descripcion+' as Descripcion, i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, 1 as clasifica from '+tablas_2[x]+' ra  '+
                                              'inner join '+catalogo[x]+' i  '+
                                              'on (i.sContrato = ra.sContrato and i.'+folio[x]+' = ra.'+folio[x]+' '+almacen+' ) '+
                                              'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad '+linea+' '+
                                              'union '+
                                              'select ra.'+folio[x]+' as Id, i.'+Descripcion+' as Descripcion, i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, 2 as clasifica from '+tablas[x]+' ra '+
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

                            for y := 1 to t2 do
                            begin
                                rxComparativo.Edit;
                                rxComparativo.FieldValues['Id']             := connection.QryBusca.FieldValues['Id'];
                                rxComparativo.FieldValues['Descripcion']    := connection.QryBusca.FieldValues['Descripcion'];
                                rxComparativo.FieldValues['Unidad']         := connection.QryBusca.FieldValues['sMedida'];
                                rxComparativo.FieldValues['Cantidad']       := connection.QryBusca.FieldValues['dCantidad'];
                                rxComparativo.FieldValues['CostoMN']        := connection.QryBusca.FieldValues['dCostoMN'];
                                rxComparativo.FieldValues['CostoDLL']       := connection.QryBusca.FieldValues['dCostoDLL'];
                                rxComparativo.FieldValues['Total']          := 0;
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

                            for y := 1 to t1 do
                            begin
                                rxComparativo.Edit;
                                rxComparativo.FieldValues['Id_2']             := connection.QryBusca.FieldValues['Id'];
                                rxComparativo.FieldValues['Descripcion_2']    := connection.QryBusca.FieldValues['Descripcion'];
                                rxComparativo.FieldValues['Unidad_2']         := connection.QryBusca.FieldValues['sMedida'];
                                rxComparativo.FieldValues['Cantidad_2']       := connection.QryBusca.FieldValues['dCantidad'];
                                rxComparativo.FieldValues['CostoMN_2']        := connection.QryBusca.FieldValues['dCostoMN'];
                                rxComparativo.FieldValues['CostoDLL_2']       := connection.QryBusca.FieldValues['dCostoDLL'];
                                rxComparativo.FieldValues['Total_2']          := 0 ;
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

    rReporte.PreviewOptions.MDIChild := False ;
    rReporte.PreviewOptions.Modal := True ;
    rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
    rReporte.PreviewOptions.ShowCaptions := False ;
    rReporte.Previewoptions.ZoomMode := zmPageWidth ;
    rReporte.LoadFromFile (global_files + 'seguimiento_recursosanexo.fr3') ;
    //<ROJAS>
    rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
    //
     if not FileExists(global_files + 'seguimiento_recursosanexo.fr3') then
     showmessage('El archivo de reporte seguimiento_recursosanexo.fr3 no existe, notifique al administrador del sistema');
   end;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al imprimir Comparativo Analisis Precios x Partida', 0);
    end;
  end;
end;

procedure TfrmRecursosxAnexo.ImprimirInsumosTotales1Click(Sender: TObject);
begin
  try
   if grid_Actividades.DataSource.DataSet.IsEmpty=false then
   begin
     RecursosInsumos.Active := False;
     RecursosInsumos.SQL.Clear;
     RecursosInsumos.SQL.Add('Select r.sContrato, r.sWbs,  r.sNumeroActividad, r.sIdInsumo, r.dCantidad, '+
                     'r.dCostoMN, a.dCantidadAnexo, a.mDescripcion as describir, a.sMedida as MedidaAnexo, '+
                     'a.dFechaInicio, a.dFechaFinal, a.sTipoActividad, i.mDescripcion, i.dCantidad as CantidadInsumo, i.sMedida, '+
                     'r.dCantPU, (i.dCostoMN * r.dCantidad) as total from actividadesxanexo a inner join recursosanexosnuevos r ' +
                     'on (r.sContrato = :Contrato and r.sWbs = a.sWbs and r.sNumeroActividad = a.sNumeroActividad) '+
                     'inner join insumos i on (i.sContrato = :Contrato and i.sIdInsumo = r.sIdInsumo) Where a.sContrato = :Contrato '+
                     'and a.sIdConvenio = :Convenio and a.sTipoActividad = "Actividad" and a.dFechaInicio >= :fechaI '+
                     'and a.dFechaFinal <= :fechaF order by a.iItemOrden');
     RecursosInsumos.Params.ParamByName('Contrato').DataType := ftString ;
     RecursosInsumos.Params.ParamByName('Contrato').Value := global_contrato ;
     RecursosInsumos.Params.ParamByName('fechaI').DataType := ftDate ;
     RecursosInsumos.Params.ParamByName('fechaI').Value    := dateFI.Date;
     RecursosInsumos.Params.ParamByName('fechaF').DataType := ftDate ;
     RecursosInsumos.Params.ParamByName('fechaF').Value    := dateFF.Date;
     RecursosInsumos.Params.ParamByName('Convenio').DataType := ftString ;
     RecursosInsumos.Params.ParamByName('Convenio').Value := global_convenio ;
     RecursosInsumos.Open ;

     rReporte.LoadFromFile (global_files + 'InsumosxpartdaFecha.fr3') ;
     rReporte.PreviewOptions.MDIChild := False ;
     rReporte.PreviewOptions.Modal := True ;
     rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
     rReporte.PreviewOptions.ShowCaptions := False ;
     rReporte.Previewoptions.ZoomMode := zmPageWidth ;
     //<ROJAS>
     rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
     //
     if not FileExists(global_files + 'InsumosxpartdaFecha.fr3') then
     showmessage('El archivo de reporte InsumosxpartdaFecha.fr3 no existe, notifique al administrador del sistema');
   end;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al imprimir insumos', 0);
end;
  end;
end;

procedure TfrmRecursosxAnexo.InsumosxActividadReportada1Click(Sender: TObject);
begin
try
   if grid_Actividades.DataSource.DataSet.IsEmpty=false then
   begin
     RecursosInsumos.Active := False ;
     RecursosInsumos.SQL.Clear;
     RecursosInsumos.SQL.Add('Select r.sContrato, r.sWbs,  r.sNumeroActividad, r.sIdInsumo, r.dCantidad, r.dCostoMN,' +
                             'a.dCantidadAnexo, a.mDescripcion as describir, a.sMedida as MedidaAnexo, a.dFechaInicio,' +
                             'a.dFechaFinal, a.sTipoActividad, i.mDescripcion, i.dCantidad as CantidadInsumo, i.sMedida,' +
                             'r.dCantPU, (i.dCostoMN * r.dCantidad) as total from actividadesxanexo a inner join recursosanexosnuevos r ' +
                             'on (r.sContrato=:Contrato and r.sWbs=a.sWbs and r.sNumeroActividad=a.sNumeroActividad) inner join ' +
                             'insumos i on (i.sContrato=:Contrato and i.sIdInsumo = r.sIdInsumo) ' +
                             'inner join bitacoradeactividades b on (b.sNumeroActividad=r.sNumeroActividad and b.sIdTipoMovimiento="E") ' +
                             'Where a.sContrato=:Contrato and a.sIdConvenio=:Convenio and a.sTipoActividad="Actividad" order by b.sNumeroActividad');
     RecursosInsumos.Params.ParamByName('Contrato').DataType := ftString ;
     RecursosInsumos.Params.ParamByName('Contrato').Value := global_contrato ;
     RecursosInsumos.Params.ParamByName('Convenio').DataType := ftString ;
     RecursosInsumos.Params.ParamByName('Convenio').Value := global_convenio ;
     RecursosInsumos.Open ;

     rReporte.LoadFromFile (global_files + 'InsumosxPartidaReportada.fr3') ;
     rReporte.PreviewOptions.MDIChild := False ;
     rReporte.PreviewOptions.Modal := True ;
     rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
     rReporte.PreviewOptions.ShowCaptions := False ;
     rReporte.Previewoptions.ZoomMode := zmPageWidth ;
     //<ROJAS>
     rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
     //
     if not FileExists(global_files + 'InsumosxPartidaReportada.fr3') then
     showmessage('El archivo de reporte InsumosxPartidaReportada.fr3 no existe, notifique al administrador del sistema');
   end;
   except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al imprimir insumos x partidas reportadas', 0);
    end;
   end;
end;


procedure TfrmRecursosxAnexo.ActividadesxAnexoCalcFields(
  DataSet: TDataSet);
begin
    If (ActividadesxAnexo.State <> dsInsert) And (ActividadesxAnexo.State <> dsEdit) Then
    begin
        ActividadesxAnexodMontoMN.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaMN.Value ;
        ActividadesxAnexodMontoDLL.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaDLL.Value ;
        ActividadesxAnexosWbsSpace.Text := espaces (ActividadesxAnexo.FieldValues['iNivel']) + ActividadesxAnexo.FieldValues['sWbs'] ;
    End
end;



procedure TfrmRecursosxAnexo.basicosCalcFields(DataSet: TDataSet);
begin
    If NOT Basicos.FieldByName('sIdBasico').IsNull Then
    begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('select sDescripcion from basicos where sContrato = :contrato And sIdBasico = :basico') ;
        connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('contrato').Value    := global_contrato ;
        connection.qryBusca2.Params.ParamByName('basico').DataType   := ftString ;
        connection.qryBusca2.Params.ParamByName('basico').Value      := basicos.FieldValues['sIdBasico'] ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 Then
            BasicossDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'] ;
    end
end;



procedure TfrmRecursosxAnexo.inventarioBeforePost(DataSet: TDataSet);
begin
//Procedimiento para no ingresar numero negativos
     PCAbsoluto(inventario,'dCantidad');
     PCAbsoluto(inventario,'dCostoMN');

  If (inventario.FieldValues['sIdInsumo'] = Null) Then
         abort   ;

   If (inventario.FieldValues['sIdInsumo'] <> Null) Then
         inventario.FieldValues['dCostoDLL'] := 0 ;

end;

procedure TfrmRecursosxAnexo.equiposBeforePost(DataSet: TDataSet);
begin
//Procedimiento para no ingresar numero negativos
     PCAbsoluto(equipos,'dCantidad');
     PCAbsoluto(equipos,'dCostoMN');


    If (equipos.FieldValues['sIdEquipo'] = Null) Then
         abort

end;

procedure TfrmRecursosxAnexo.PersonalBeforePost(DataSet: TDataSet);
begin
//Procedimiento para no ingresar numero negativos
     PCAbsoluto(Personal,'dCantidad');
     PCAbsoluto(Personal,'dCostoMN');

    If (personal.FieldValues['sIdPersonal'] = Null) Then
         abort
end;

procedure TfrmRecursosxAnexo.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmRecursosxAnexo.PersonalCalcFields(DataSet: TDataSet);
begin
    If NOT Personal.FieldByName('sIdPersonal').IsNull Then
    begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('select sDescripcion from personal where sContrato = :contrato And sIdPersonal = :personal') ;
        connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca2.Params.ParamByName('personal').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('personal').Value := personal.FieldValues['sIdPersonal'] ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 Then
            PersonalsDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'] ;
    End
end;

procedure TfrmRecursosxAnexo.PersonalDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al eliminar registro de personal', 0);
  abort;
end;

procedure TfrmRecursosxAnexo.PersonalPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al guardar registro de personal', 0);
  abort;
end;

procedure TfrmRecursosxAnexo.PersonalsIdPersonalChange(Sender: TField);
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


End;

procedure TfrmRecursosxAnexo.equiposCalcFields(DataSet: TDataSet);
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
    end
end;

procedure TfrmRecursosxAnexo.equiposDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al eliminar registro de equipos', 0);
  abort;
end;

procedure TfrmRecursosxAnexo.equiposPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al guardar registro de equipos', 0);
  abort;
end;

procedure TfrmRecursosxAnexo.equipossIdEquipoChange(Sender: TField);
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
                end
    end ;
end;

procedure TfrmRecursosxAnexo.inventarioCalcFields(DataSet: TDataSet);
begin

    If NOT inventario.FieldByName('sIdInsumo').IsNull Then
    begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('select substr(mDescripcion,1,255) as sDescripcion, dCostoMN, dCostoDLL from insumos where sContrato =:Contrato and sIdInsumo = :inventario') ;
        connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('contrato').Value    := global_contrato ;
        connection.qryBusca2.Params.ParamByName('inventario').DataType := ftString ;
        connection.qryBusca2.Params.ParamByName('inventario').Value := inventario.FieldValues['sIdInsumo'] ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 Then
          begin
            inventariosDescripcion.Text  := MidStr(connection.qryBusca2.FieldValues['sDescripcion'],1,255) ;
            inventariodCostoMN.Text      := connection.qryBusca2.FieldValues['dCostoMN'] ;
            inventariodCostoDLL.Text     := connection.qryBusca2.FieldValues['dCostoDLL']  ;
          end;
    end
end;

procedure TfrmRecursosxAnexo.inventarioDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al eliminar registro de inventario', 0);
  abort;
end;

procedure TfrmRecursosxAnexo.inventarioPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Recursos por Concepto/Partida', 'Al guardar registro de inventario', 0);
  abort;
end;

procedure TfrmRecursosxAnexo.inventariosIdInventarioChange(Sender: TField);

Var
    sDescripcion : String ;
begin
    If NOT inventario.FieldByName('sIdInsumo').IsNull Then
    begin
        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('select sIdInsumo, substr(mDescripcion,1,255) as sDescripcion, dCostoMN, dCostoDLL from insumos where sContrato =:Contrato and sIdInsumo = :inventario') ;
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('contrato').Value    := global_contrato ;
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
                                        'dCostoDLL as 4Campo from insumos Where sContrato =:Contrato and ' +
                                        'mDescripcion Like :Descripcion Order by sDescripcion') ;
                                        BuscaObjeto.Params.ParamByName('Contrato').DataType    := ftString ;
                    BuscaObjeto.Params.ParamByName('Contrato').Value       := global_contrato ;
                    BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString ;
                    BuscaObjeto.Params.ParamByName('Descripcion').Value    := sDescripcion ;
                    BuscaObjeto.Open ;
                    Panel.Visible := True ;
                    ListaObjeto.SetFocus
                end
        end
end;

procedure TfrmRecursosxAnexo.eliminarinsertar;
Var
   qryLectura  : TzReadOnlyQuery ;
   qryInsertar : TzQuery ;

  begin
      qryLectura             := tzReadOnlyQuery.Create(self);
      qryLectura.Connection  := Connection.zConnection ;
      qryInsertar            := tzQuery.Create(self);
      qryInsertar.Connection := Connection.zConnection ;

      connection.zCommand.Active := False ;
      connection.zCommand.SQL.Clear ;
      if sTipo='Personal' Then
      connection.zCommand.SQL.Add('Delete from recursospersonalnuevos Where sContrato = :Contrato And sWbs = :wbs ' +
                                   ' And sNumeroActividad = :actividad ' ) ;
      if sTipo='Equipo' Then
      connection.zCommand.SQL.Add('Delete from recursosequiposnuevos Where sContrato = :Contrato And sWbs = :wbs ' +
                                   ' And sNumeroActividad = :actividad ' ) ;
      if sTipo='Materiales' Then
      connection.zCommand.SQL.Add('Delete from recursosanexosnuevos Where sContrato = :Contrato And sWbs = :wbs ' +
                                   ' And sNumeroActividad = :actividad ' ) ;

      connection.zcommand.Params.ParamByName('contrato').DataType  := ftString ;
      connection.zcommand.Params.ParamByName('contrato').Value     := global_contrato ;
      connection.zcommand.Params.ParamByName('wbs').DataType       := ftString ;
      connection.zcommand.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'] ;
      connection.zcommand.Params.ParamByName('actividad').DataType := ftString ;
      connection.zcommand.Params.ParamByName('actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
      connection.zCommand.ExecSQL;

      qryInsertar.Active := False ;
      qryInsertar.SQL.Clear ;
      if sTipo='Personal' Then
        qryInsertar.SQL.Add('select * from recursospersonalnuevos Where sContrato = :Contrato ') ;
      if sTipo='Equipo' Then
        qryInsertar.SQL.Add('select * from recursosequiposnuevos Where sContrato = :Contrato ') ;
      if sTipo='Materiales' Then
        qryInsertar.SQL.Add('select * from recursosanexosnuevos Where sContrato = :Contrato ') ;

      qryInsertar.Params.ParamByName('Contrato').DataType  := ftString ;
      qryInsertar.Params.ParamByName('Contrato').Value     := Global_Contrato ;
      qryInsertar.Open ;

      qryLectura.Active := False ;
      qryLectura.SQL.Clear ;
      if sTipo='Personal' Then
           qryLectura.SQL.Add('select a.iIdDiario, p.`sIdPersonal`, s.dCostoMN, s.dCostoDLL, ' +
                         'a.sWbs, a.sNumeroActividad, sum(p.dCantidad) as sump from  bitacoradepersonal p ' +
                         'inner join bitacoradeactividades a ' +
                         'on (p.sContrato=a.sContrato and p.`iIdDiario`=a.iIdDiario ' +
                         'And p.dIdFecha=a.dIdFecha)  ' +
                         'inner join personal s ' +
                         'on (s.sContrato=p.sContrato and s.sIdPersonal=p.sIdPersonal) ' +
                         'Where a.sContrato = :Contrato And a.sNumeroActividad =:Actividad And a.sWbs =:wbs ' +
                         'group by p.sIdPersonal ') ;

         if sTipo='Equipo' Then
            qryLectura.SQL.Add('select a.iIdDiario, p.`sIdEquipo`, s.dCostoMN, s.dCostoDLL, ' +
                         'a.sWbs, a.sNumeroActividad, sum(p.dCantidad) as sump from  bitacoradeequipos p ' +
                         'inner join bitacoradeactividades a ' +
                         'on (p.sContrato=a.sContrato and p.`iIdDiario`=a.iIdDiario ' +
                         'And p.dIdFecha=a.dIdFecha)  ' +
                         'inner join equipos s ' +
                         'on (s.sContrato=p.sContrato and s.sIdEquipo=p.sIdEquipo) ' +
                         'Where a.sContrato = :Contrato And a.sNumeroActividad =:Actividad And a.sWbs =:wbs ' +
                         'group by p.sIdEquipo ') ;

        if sTipo='Materiales' Then
            qryLectura.SQL.Add('select a.iIdDiario, p.`sIdMaterial`, s.dCostoMN, s.dCostoDLL, ' +
                         'a.sWbs, a.sNumeroActividad, sum(p.dCantidad) as sump from  bitacorademateriales p ' +
                         'inner join bitacoradeactividades a ' +
                         'on (p.sContrato=a.sContrato and p.`iIdDiario`=a.iIdDiario ' +
                         'And p.dIdFecha=a.dIdFecha)  ' +
                         'inner join insumos s ' +
                         'on (s.sContrato=p.sContrato and s.sIdInsumo=p.sIdMaterial) ' +
                         'Where a.sContrato = :Contrato And a.sNumeroActividad =:Actividad And a.sWbs =:wbs ' +
                         'group by p.sIdMaterial ') ;
     qryLectura.Params.ParamByName('Contrato').DataType  := ftString ;
     qryLectura.Params.ParamByName('Contrato').Value     := Global_Contrato ;
     qryLectura.Params.ParamByName('Wbs').DataType      := ftString ;
     qryLectura.Params.ParamByName('Wbs').Value         := ActividadesxAnexo.FieldValues['sWbs'] ;
     qryLectura.Params.ParamByName('Actividad').DataType := ftString ;
     qryLectura.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
     qryLectura.Open ;
     if qryLectura.RecordCount  > 0 Then
       begin
         //Vamos a Insertar el Personal, equipo o materiales
            while Not qryLectura.Eof do
             begin
                 qryInsertar.Append ;
                 qryInsertar.FieldValues['sContrato']        := Global_Contrato ;
                 qryInsertar.FieldValues['sWbs']             := ActividadesxAnexo.FieldValues['sWbs'] ;
                 qryInsertar.FieldValues['sNumeroActividad'] := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
                 if sTipo='Personal' Then
                    qryInsertar.FieldValues['sIdPersonal']   := qryLectura.FieldValues['sIdPersonal'] ;
                 if sTipo='Equipo' Then
                    qryInsertar.FieldValues['sIdEquipo']     := qryLectura.FieldValues['sIdEquipo'] ;
                 if sTipo='Materiales' Then
                    qryInsertar.FieldValues['sIdinsumo']     := qryLectura.FieldValues['sIdinsumo'] ;
                 qryInsertar.FieldValues['dCantidad']        := qryLectura.FieldValues['sump'] ;
                 qryInsertar.FieldValues['dCostoMN']         := qryLectura.FieldValues['dCostoMN'] ;
                 qryInsertar.FieldValues['dCostoDLL']        := qryLectura.FieldValues['dCostoDLL'] ;
                 qryInsertar.FieldValues['fila']             := 0 ;
                 qryInsertar.Post ;
                 qryLectura.Next ;
             end;
       end;




 end;


end.
