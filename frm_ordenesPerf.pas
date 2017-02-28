unit frm_ordenesPerf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, global, db, frm_connection, frm_barra, ComCtrls,
  DBCtrls, StdCtrls, Mask, Menus, ADODB, RXDBCtrl, ZDataset,UnitValidacion,
  ZAbstractRODataset, ZAbstractDataset, rxToolEdit, sSkinProvider,
  udbgrid, unitexcepciones,UnitValidaTexto, DBDateTimePicker;
type
  TfrmOrdenesPerf = class(TForm)
    grid_ordenes: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    tsNumeroOrden: TDBEdit;
    tmDescripcion: TDBMemo;
    tsIdPlataforma: TDBLookupComboBox;
    tsApoyo: TDBComboBox;
    tsIdPernocta: TDBLookupComboBox;
    tcIdStatus: TDBLookupComboBox;
    tmComentarios: TDBMemo;
    frmBarra1: TfrmBarra;
    tsIdTipoOrden: TDBLookupComboBox;
    ds_estatus: TDataSource;
    ds_tiposdeorden: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    Label13: TLabel;
    tsDescripcionCorta: TDBEdit;
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
    N4: TMenuItem;
    Salir1: TMenuItem;
    gpIndividual: TGroupBox;
    Label11: TLabel;
    tsFormato: TDBEdit;
    Label14: TLabel;
    tiJornada: TDBEdit;
    Label12: TLabel;
    tiConsecutivo: TDBEdit;
    Label15: TLabel;
    tiConsecutivoTierra: TDBEdit;
    OrdenesdeTrabajo: TZQuery;
    TiposdeOrden: TZReadOnlyQuery;
    Estatus: TZReadOnlyQuery;
    ds_Plataformas: TDataSource;
    Plataformas: TZReadOnlyQuery;
    ds_Pernoctan: TDataSource;
    pernoctan: TZReadOnlyQuery;
    tsIdFolio: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    pozos: TZReadOnlyQuery;
    ds_pozos: TDataSource;
    Label18: TLabel;
    Label19: TLabel;
    dbEquipo: TDBLookupComboBox;
    dbPozos: TDBLookupComboBox;
    Label20: TLabel;
    Label21: TLabel;
    dbDptoSolic: TDBEdit;
    dbPuesto: TDBEdit;
    dbNomRep: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    dbPuestocia: TDBEdit;
    dbSupcia: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    sSkinProvider1: TsSkinProvider;
    dbInicioT: TDBDateTimePicker;
    tdFechaInicio: TDBDateTimePicker;
    dbSitioMuelle: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    dtElaboracion: TDBDateTimePicker;
    OrdenesdeTrabajosContrato: TStringField;
    OrdenesdeTrabajosIdFolio: TStringField;
    OrdenesdeTrabajosNumeroOrden: TStringField;
    OrdenesdeTrabajosDescripcionCorta: TStringField;
    OrdenesdeTrabajosOficioAutorizacion: TStringField;
    OrdenesdeTrabajomDescripcion: TMemoField;
    OrdenesdeTrabajosIdTipoOrden: TStringField;
    OrdenesdeTrabajosApoyo: TStringField;
    OrdenesdeTrabajosIdPlataforma: TStringField;
    OrdenesdeTrabajosIdPernocta: TStringField;
    OrdenesdeTrabajodFiProgramado: TDateField;
    OrdenesdeTrabajodFfProgramado: TDateField;
    OrdenesdeTrabajocIdStatus: TStringField;
    OrdenesdeTrabajomComentarios: TMemoField;
    OrdenesdeTrabajosFormato: TStringField;
    OrdenesdeTrabajoiConsecutivo: TIntegerField;
    OrdenesdeTrabajoiConsecutivoTierra: TIntegerField;
    OrdenesdeTrabajoiJornada: TIntegerField;
    OrdenesdeTrabajolGeneraAnexo: TStringField;
    OrdenesdeTrabajolGeneraConsumibles: TStringField;
    OrdenesdeTrabajolGeneraPersonal: TStringField;
    OrdenesdeTrabajolGeneraEquipo: TStringField;
    OrdenesdeTrabajosDepsolicitante: TStringField;
    OrdenesdeTrabajodFechaInicioT: TDateField;
    OrdenesdeTrabajodFechaSitioM: TDateField;
    OrdenesdeTrabajosEquipo: TStringField;
    OrdenesdeTrabajosPozo: TStringField;
    OrdenesdeTrabajodFechaElaboracion: TDateField;
    OrdenesdeTrabajosPuestoPep: TStringField;
    OrdenesdeTrabajosFirmantePep: TStringField;
    OrdenesdeTrabajosPuestocia: TStringField;
    OrdenesdeTrabajosFirmantecia: TStringField;
    OrdenesdeTrabajolMostrarAvanceProgramado: TStringField;
    OrdenesdeTrabajosTipoOrden: TStringField;
    OrdenesdeTrabajobAvanceFrente: TStringField;
    OrdenesdeTrabajobAvanceContrato: TStringField;
    OrdenesdeTrabajobComentarios: TStringField;
    OrdenesdeTrabajobPermisos: TStringField;
    OrdenesdeTrabajobTipoAdmon: TStringField;
    OrdenesdeTrabajobCostaFuera: TStringField;
    OrdenesdeTrabajosTipoPrograma: TStringField;
    OrdenesdeTrabajosTipoImpresionActividad: TStringField;
    OrdenesdeTrabajosTipoAvanceAdmon: TStringField;
    OrdenesdeTrabajoiDecimales: TIntegerField;
    OrdenesdeTrabajoiNiveles: TIntegerField;
    OrdenesdeTrabajolImprimeProgramado: TStringField;
    OrdenesdeTrabajolImprimeFisico: TStringField;
    OrdenesdeTrabajolImprimePlaticas: TStringField;
    OrdenesdeTrabajolMostrarPartidasReportes: TStringField;
    OrdenesdeTrabajolMostrarPartidasGeneradores: TStringField;
    OrdenesdeTrabajodFechaIniPReportes: TDateField;
    OrdenesdeTrabajodFechaFinPReportes: TDateField;
    OrdenesdeTrabajodFechaIniPGeneradores: TDateField;
    OrdenesdeTrabajodFechaFinPGeneradores: TDateField;
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure torden_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsApoyoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure tcIdStatusKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_ordenesEnter(Sender: TObject);
    procedure grid_ordenesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ordenesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ordenesCellClick(Column: TColumn);
    procedure tsIdTipoOrdenKeyPress(Sender: TObject; var Key: Char);
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
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tsIdTipoOrdenEnter(Sender: TObject);
    procedure tsIdTipoOrdenExit(Sender: TObject);
    procedure tsApoyoEnter(Sender: TObject);
    procedure tsApoyoExit(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tsIdPlataformaEnter(Sender: TObject);
    procedure tsIdPlataformaExit(Sender: TObject);
    procedure tsIdPernoctaEnter(Sender: TObject);
    procedure tsIdPernoctaExit(Sender: TObject);
    procedure tcIdStatusEnter(Sender: TObject);
    procedure tcIdStatusExit(Sender: TObject);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure tsFormatoKeyPress(Sender: TObject; var Key: Char);
    procedure tsFormatoEnter(Sender: TObject);
    procedure tsFormatoExit(Sender: TObject);
    procedure tsDescripcionCortaEnter(Sender: TObject);
    procedure tsDescripcionCortaExit(Sender: TObject);
    procedure tsDescripcionCortaKeyPress(Sender: TObject; var Key: Char);
    procedure tiJornadaEnter(Sender: TObject);
    procedure tiJornadaExit(Sender: TObject);
    procedure tiJornadaKeyPress(Sender: TObject; var Key: Char);
    procedure tiConsecutivoEnter(Sender: TObject);
    procedure tiConsecutivoExit(Sender: TObject);
    procedure tiConsecutivoKeyPress(Sender: TObject; var Key: Char);
    procedure tiConsecutivoTierraEnter(Sender: TObject);
    procedure tiConsecutivoTierraExit(Sender: TObject);
    procedure tiConsecutivoTierraKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdFolioEnter(Sender: TObject);
    procedure tsIdFolioExit(Sender: TObject);
    procedure tsIdFolioKeyPress(Sender: TObject; var Key: Char);
    procedure dbInicioTEnter(Sender: TObject);
    procedure dbSitioMuelleEnter(Sender: TObject);
    procedure dbInicioTExit(Sender: TObject);
    procedure dbSitioMuelleExit(Sender: TObject);
    procedure dbInicioTKeyPress(Sender: TObject; var Key: Char);
    procedure dbPozosKeyPress(Sender: TObject; var Key: Char);
    procedure dbEquipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEquipoEnter(Sender: TObject);
    procedure dbPozosEnter(Sender: TObject);
    procedure dbEquipoExit(Sender: TObject);
    procedure dbPozosExit(Sender: TObject);
    procedure dtElaboracionKeyPress(Sender: TObject; var Key: Char);
    procedure dbPuaestoEnter(Sender: TObject);
    procedure dbPuestoExit(Sender: TObject);
    procedure dbPuestoKeyPress(Sender: TObject; var Key: Char);
    procedure dbNomRepEnter(Sender: TObject);
    procedure dbNomRepExit(Sender: TObject);
    procedure dbNomRepKeyPress(Sender: TObject; var Key: Char);
    procedure dbPuestociaEnter(Sender: TObject);
    procedure dbPuestociaExit(Sender: TObject);
    procedure dbPuestociaKeyPress(Sender: TObject; var Key: Char);
    procedure dbSupciaEnter(Sender: TObject);
    procedure dbSupciaExit(Sender: TObject);
    procedure dtElaboracionEnter(Sender: TObject);
    procedure dtElaboracionExit(Sender: TObject);
    procedure dbDptoSolicEnter(Sender: TObject);
    procedure dbDptoSolicExit(Sender: TObject);
    procedure dbDptoSolicKeyPress(Sender: TObject; var Key: Char);
    procedure dbSupciaKeyPress(Sender: TObject; var Key: Char);
    procedure grid_ordenesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_ordenesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ordenesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure dbSitioMuelleKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tiJornadaChange(Sender: TObject);
    procedure tiConsecutivoChange(Sender: TObject);
    procedure tiConsecutivoTierraChange(Sender: TObject);
    procedure OrdenesdeTrabajoiJornadaSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
      const Text: string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdenesPerf: TfrmOrdenesPerf;
  Opcion : String ;
  sTipo, sPlataforma, sPernocta : String ;
   utgrid:ticdbgrid;
implementation

{$R *.dfm}

procedure TfrmOrdenesPerf.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    tsIdFolio.SetFocus 
end;



procedure TfrmOrdenesPerf.torden_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsIdPlataforma.SetFocus
end;

procedure TfrmOrdenesPerf.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdPernocta.SetFocus
end;


procedure TfrmOrdenesPerf.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdFechaFinal.SetFocus
end;

procedure TfrmOrdenesPerf.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdPlataforma.SetFocus 
end;

procedure TfrmOrdenesPerf.tsApoyoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbInicioT.SetFocus
end;

procedure TfrmOrdenesPerf.tsIdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
    dbEquipo.SetFocus
end;

procedure TfrmOrdenesPerf.tcIdStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
   If key = #13 then
    dbPuestocia.SetFocus ;   
end;


procedure TfrmOrdenesPerf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  utgrid.Destroy;
  ordenesdetrabajo.Cancel ;
  action := cafree ;
end;

procedure TfrmOrdenesPerf.FormShow(Sender: TObject);
begin
 try
  UtGrid:=TicdbGrid.create(grid_ordenes);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.SQL.Clear ;
  OrdenesdeTrabajo.SQL.Add('select * from ordenesdetrabajo where sContrato = :Contrato order by sIdFolio, sNumeroOrden' ) ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  OrdenesdeTrabajo.Open ;

  Plataformas.Active := False ;
  Plataformas.Open ;

  Pernoctan.Active := False ;
  Pernoctan.Open ;

  TiposdeOrden.Active := False ;
  TiposdeOrden.Open ;

  Estatus.Active := False ;
  Estatus.Open ;

  pozos.Active := False ;
  Pozos.Open ;

  sTipo := '' ;
  sPlataforma := '' ;
  sPernocta := '' ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesPerf', 'Al iniciar el formulario', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmOrdenesPerf.grid_ordenesEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  If Ordenesdetrabajo.RecordCount > 0 then
  begin
      tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
      tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
  end
end;

procedure TfrmOrdenesPerf.grid_ordenesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  If Ordenesdetrabajo.RecordCount > 0 then
  begin
      tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
      tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
  end
end;

procedure TfrmOrdenesPerf.grid_ordenesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  If Ordenesdetrabajo.RecordCount > 0 then
  begin
      tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
      tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
  end
end;

procedure TfrmOrdenesPerf.grid_ordenesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmOrdenesPerf.grid_ordenesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmOrdenesPerf.grid_ordenesTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmOrdenesPerf.grid_ordenesCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  If Ordenesdetrabajo.RecordCount > 0 then
  begin
      tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
      tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
  end
end;

procedure TfrmOrdenesPerf.tsIdTipoOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsApoyo.SetFocus
end;

procedure TfrmOrdenesPerf.frmBarra1btnAddClick(Sender: TObject);
begin
  try
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   OrdenesdeTrabajo.Append ;
   OrdenesdeTrabajo.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   OrdenesdeTrabajo.FieldValues['dFiProgramado'] := Date ;
   OrdenesdeTrabajo.FieldValues['dFfProgramado'] := Date ;
   OrdenesdeTrabajo.FieldValues['dFechaInicioT'] := Date ;
   OrdenesdeTrabajo.FieldValues['dFechaSitioM'] := Date ;
   OrdenesdeTrabajo.FieldValues['sIdPlataforma'] := sPlataforma ;
   OrdenesdeTrabajo.FieldValues['sIdPernocta'] := sPernocta ;
   OrdenesdeTrabajo.FieldValues['sIdTipoOrden'] := sTipo ;
   OrdenesdeTrabajo.FieldValues['sIdFolio'] := '' ;
   OrdenesdeTrabajo.FieldValues ['sFormato' ] := '' ;
   OrdenesdeTrabajo.FieldValues ['iJornada' ] := 0 ;
   OrdenesdeTrabajo.FieldValues ['iConsecutivo' ] := 1 ;
   OrdenesdeTrabajo.FieldValues ['iConsecutivoTierra' ] := 0 ;
   OrdenesdeTrabajo.FieldValues ['mComentarios' ] := '*' ;
   OrdenesdeTrabajo.FieldValues ['sDescripcionCorta' ] := '*' ;
   OrdenesdeTrabajo.FieldValues ['lGeneraAnexo' ] := 'No' ;
   OrdenesdeTrabajo.FieldValues ['lGeneraConsumibles' ] := 'No' ;
   OrdenesdeTrabajo.FieldValues ['lGeneraPersonal' ] := 'No' ;
   OrdenesdeTrabajo.FieldValues ['lGeneraEquipo' ] := 'No' ;
   OrdenesdeTrabajo.FieldValues ['sApoyo' ] := 'Cuadrillas' ;
   dbPuesto.Text    := 'SUPERVISOR DE PEMEX' ;
   dbNomRep.Text    := 'ING. RICARDO HERNANDEZ HERNANDEZ ' ;
   dbPuestocia.Text := 'SUPERINTENDENTE DE CONSTRUCCION DE LA CONTRATISTA' ;
   dbSupcia.Text    := 'ING. ROBERTO SMITH BIRAGHI' ;
   dbdptoSolic.Text := 'UNIDAD OPERATIVA NORESTE' ;

   If Not Connection.configuracion.FieldByName('cStatusProceso').IsNull then
       OrdenesdeTrabajo.FieldValues ['cIdStatus'] := connection.configuracion.FieldValues ['cStatusProceso'] ;
   tsNumeroOrden.SetFocus ;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesPerf', 'Al agregar registro', 0);
  end;
  end;
  frmbarra1.btnPrinter.Enabled:=false;
  grid_ordenes.Enabled:=false;
end;

procedure TfrmOrdenesPerf.frmBarra1btnEditClick(Sender: TObject);
begin
 try
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
       OrdenesdeTrabajo.Edit ;
   except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesperf', 'Al editar registro', 0);
    frmBarra1.btnCancel.Click ;
    end;
   end ;
   tsNumeroOrden.SetFocus
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesPerf', 'Al editar registro', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
 grid_ordenes.Enabled:=false;
end;

procedure TfrmOrdenesPerf.frmBarra1btnPostClick(Sender: TObject);
var cadena : string;
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Orden de Trabajo');nombres.Add('Folio');
  nombres.Add('Descripción Corta');
  nombres.Add('Tipo');nombres.Add('Apoyo');
  nombres.Add('Municipio/Plataforma');nombres.Add('Personal Pernocta en');
  nombres.Add('Equipo');nombres.Add('Pozo');
  nombres.Add('Puesto PEP');nombres.Add('Nombre Rep PEP');


  cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsIdFolio.Text);
  cadenas.Add(tsDescripcionCorta.Text);
  cadenas.Add(tsIdTipoOrden.Text);cadenas.Add(tsApoyo.Text);
  cadenas.Add(tsIdPlataforma.Text);cadenas.Add(tsIdPernocta.Text);
  cadenas.Add(dbEquipo.Text);cadenas.Add(dbPozos.Text);
  cadenas.Add(dbPuesto.Text);cadenas.Add(dbNomRep.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

   //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicio.Date then
   begin
   showmessage('la fecha de fin de operaciones es menor a la fecha de inicio de operaciones' );
   tdFechaFinal.SetFocus;
   exit;
   end;

//continuainserccion de datos
  OrdenesdeTrabajo.FieldValues ['dFechaInicioT' ] :=dbInicioT.date;
  OrdenesdeTrabajo.FieldValues ['dFechaSitioM' ] :=dbSitioMuelle.date;
  OrdenesdeTrabajo.FieldValues ['dFiProgramado' ] :=tdFechaInicio.date;
  OrdenesdeTrabajo.FieldValues ['dFfProgramado' ] :=tdFechaFinal.date;
  OrdenesdeTrabajo.FieldValues ['dFechaElaboracion' ] :=dtElaboracion.date;
  try
      If (OrdenesdeTrabajo.FieldValues ['sFormato' ] = Null) OR (OrdenesdeTrabajo.FieldValues ['sFormato' ] = '') Then
          OrdenesdeTrabajo.FieldValues ['sFormato' ] := OrdenesdeTrabajo.FieldValues ['sNumeroOrden' ] + '-' ;

      sTipo := OrdenesdeTrabajo.FieldValues ['sIdTipoOrden' ] ;
      sPlataforma := OrdenesdeTrabajo.FieldValues ['sIdPlataforma' ] ;
      sPernocta := OrdenesdeTrabajo.FieldValues ['sIdPernocta' ] ;

      OrdenesdeTrabajo.Post ;
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
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesperf', 'Al salvar registro', 0);
    end;
  end;
  frmbarra1.btnPrinter.Enabled:=false;
  grid_ordenes.Enabled:=TRUE;
end;

procedure TfrmOrdenesPerf.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  OrdenesdeTrabajo.Cancel ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesPerf', 'Al cancelar', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
 grid_ordenes.Enabled:=true;
end;

procedure TfrmOrdenesPerf.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If OrdenesdeTrabajo.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
           OrdenesdeTrabajo.Delete ;
      except
       on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesperf', 'Al eliminar registro', 0);
       end;
      end
    end
end;

procedure TfrmOrdenesPerf.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  OrdenesdeTrabajo.Active ;
  OrdenesdeTrabajo.Open ;
  Plataformas.Active := False ;
  Plataformas.Open ;
  Pernoctan.Active := False ;
  Pernoctan.Open ;
  pozos.Active     := False ;
  pozos.Open ;
  TiposdeOrden.Active := False ;
  TiposdeOrden.Open ;
  Estatus.Active := False ;
  Estatus.Open ;
  TiposdeOrden.Active := False ;
  TiposdeOrden.Open ;
  Estatus.Active := False ;
  Estatus.Open ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesPerf', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmOrdenesPerf.frmBarra1btnExitClick(Sender: TObject);
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


procedure TfrmOrdenesPerf.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.click 
end;

procedure TfrmOrdenesPerf.OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
  const Text: string);
begin
Sender.value:=abs(StrToIntDef(text, 0));
end;

procedure TfrmOrdenesPerf.OrdenesdeTrabajoiConsecutivoTierraSetText(
  Sender: TField; const Text: string);
begin
Sender.value:=abs(StrToIntDef(text, 0));
end;

procedure TfrmOrdenesPerf.OrdenesdeTrabajoiJornadaSetText(Sender: TField;
  const Text: string);
begin
Sender.value:=abs(StrToIntDef(text, 0));
end;

procedure TfrmOrdenesPerf.Paste1Click(Sender: TObject);
begin
try
 UtGrid.AddRowsFromClip;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenesperf', 'Al pegar registro', 0);
end;
end;
end;

procedure TfrmOrdenesPerf.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmOrdenesPerf.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmOrdenesPerf.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmOrdenesPerf.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmOrdenesPerf.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmOrdenesPerf.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmOrdenesPerf.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tmDescripcionEnter(Sender: TObject);
begin
    tmDescripcion.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tmDescripcionExit(Sender: TObject);
begin
    tmDescripcion.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tsIdTipoOrdenEnter(Sender: TObject);
begin
    tsIdTipoOrden.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tsIdTipoOrdenExit(Sender: TObject);
begin
    tsIdTipoOrden.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tsApoyoEnter(Sender: TObject);
begin
    tsApoyo.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tsApoyoExit(Sender: TObject);
begin
    tsApoyo.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tdFechaFinalChange(Sender: TObject);
begin
  tdFechaFinal.MinDate:=tdFechainicio.Date;
end;

procedure TfrmOrdenesPerf.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tdFechaFinalExit(Sender: TObject);
begin
  if tdFechaFinal.Date<tdFechaInicio.Date then
    tdFechaFinal.date:=tdFechainicio.Date;
  tdFechaFinal.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tsIdPlataformaEnter(Sender: TObject);
begin
    tsIdPlataforma.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tsIdPlataformaExit(Sender: TObject);
begin
    tsIdPlataforma.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tsIdPernoctaEnter(Sender: TObject);
begin
    tsIdPernocta.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tsIdPernoctaExit(Sender: TObject);
begin
    tsIdPernocta.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tcIdStatusEnter(Sender: TObject);
begin
    tcIdStatus.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tcIdStatusExit(Sender: TObject);
begin
    tcIdStatus.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tmComentariosEnter(Sender: TObject);
begin
    tmComentarios.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tmComentariosExit(Sender: TObject);
begin
    tmComentarios.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tsFormatoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    tiJornada.SetFocus 
end;

procedure TfrmOrdenesPerf.tsFormatoEnter(Sender: TObject);
begin
    tsFormato.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tsFormatoExit(Sender: TObject);
begin
    tsFormato.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tsDescripcionCortaEnter(Sender: TObject);
begin
    tsDescripcionCorta.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tsDescripcionCortaExit(Sender: TObject);
begin
    tsDescripcionCorta.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tsDescripcionCortaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tmDescripcion.SetFocus
end;

procedure TfrmOrdenesPerf.tiJornadaChange(Sender: TObject);
begin
  tdbeditchangei(tiJornada,'Jornada');
end;

procedure TfrmOrdenesPerf.tiJornadaEnter(Sender: TObject);
begin
    tiJornada.Color := global_Color_entrada
end;

procedure TfrmOrdenesPerf.tiJornadaExit(Sender: TObject);
begin
    tiJornada.Color := global_Color_salida
end;

procedure TfrmOrdenesPerf.tiJornadaKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJornada,key) then
      key:=#0;
    If Key = #13 Then
        tiConsecutivo.SetFocus 
end;

procedure TfrmOrdenesPerf.tiConsecutivoChange(Sender: TObject);
begin
  tdbeditchangei(tiConsecutivo,'Consecutivo');
end;

procedure TfrmOrdenesPerf.tiConsecutivoEnter(Sender: TObject);
begin
    tiConsecutivo.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tiConsecutivoExit(Sender: TObject);
begin
    tiConsecutivo.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tiConsecutivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiConsecutivo,key) then
      key:=#0;
    If Key = #13 Then
        tiConsecutivoTierra.SetFocus
end;

procedure TfrmOrdenesPerf.tiConsecutivoTierraChange(Sender: TObject);
begin
  tdbeditchangei(tiConsecutivoTierra,'Consecutivo en tierra');
end;

procedure TfrmOrdenesPerf.tiConsecutivoTierraEnter(Sender: TObject);
begin
    tiConsecutivoTierra.Color := global_Color_Entrada
end;

procedure TfrmOrdenesPerf.tiConsecutivoTierraExit(Sender: TObject);
begin
    tiConsecutivoTierra.Color := global_Color_salida
end;

procedure TfrmOrdenesPerf.tiConsecutivoTierraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiConsecutivoTierra,key) then
      key:=#0;
  If Key = #13 Then
      tsFormato.SetFocus
end;

procedure TfrmOrdenesPerf.tsIdFolioEnter(Sender: TObject);
begin
    tsIdFolio.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.tsIdFolioExit(Sender: TObject);
begin
    tsIdFolio.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.tsIdFolioKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    tsDescripcionCorta.SetFocus
end;

procedure TfrmOrdenesPerf.dbInicioTEnter(Sender: TObject);
begin
   dbInicioT.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.dbSitioMuelleEnter(Sender: TObject);
begin
  dbSitioMuelle.Color := global_color_entrada
end;

procedure TfrmOrdenesPerf.dbInicioTExit(Sender: TObject);
begin
   dbInicioT.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.dbSitioMuelleExit(Sender: TObject);
begin
   dbSitioMuelle.Color := global_color_salida
end;

procedure TfrmOrdenesPerf.dbSitioMuelleKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tdfechafinal.SetFocus 
end;

procedure TfrmOrdenesPerf.dbInicioTKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
    dbSitioMuelle.SetFocus
end;

procedure TfrmOrdenesPerf.dbPozosKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     dbPuesto.SetFocus ;
end;

procedure TfrmOrdenesPerf.dbEquipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbPozos.SetFocus
end;

procedure TfrmOrdenesPerf.dbEquipoEnter(Sender: TObject);
begin
  dbEquipo.Color  := global_color_entrada ;
end;

procedure TfrmOrdenesPerf.dbPozosEnter(Sender: TObject);
begin
   dbPozos.Color  := Global_Color_Entrada 
end;

procedure TfrmOrdenesPerf.dbEquipoExit(Sender: TObject);
begin
   dbEquipo.Color  := Global_Color_Salida ;
end;

procedure TfrmOrdenesPerf.dbPozosExit(Sender: TObject);
begin
  dbPozos.Color  := Global_Color_Salida ;
end;

procedure TfrmOrdenesPerf.dtElaboracionKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key =#13 Then
    tcIdStatus.SetFocus ;
end;

procedure TfrmOrdenesPerf.dbPuaestoEnter(Sender: TObject);
begin
//  dbPuesto.Color := Global_Color_Entrada
end;

procedure TfrmOrdenesPerf.dbPuestoExit(Sender: TObject);
begin
  dbPuesto.Color := Global_Color_Salida ;
end;

procedure TfrmOrdenesPerf.dbPuestoKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then
    dbNomRep.SetFocus ;
end;

procedure TfrmOrdenesPerf.dbNomRepEnter(Sender: TObject);
begin
//  dbNomRep.Color  := Global_Color_Entrada
end;

procedure TfrmOrdenesPerf.dbNomRepExit(Sender: TObject);
begin
  dbNomRep.Color  := Global_Color_Salida ;
end;

procedure TfrmOrdenesPerf.dbNomRepKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then
    dbDptoSolic.SetFocus ;
end;

procedure TfrmOrdenesPerf.dbPuestociaEnter(Sender: TObject);
begin
   dbPuestocia.Color := Global_Color_Entrada ;
end;

procedure TfrmOrdenesPerf.dbPuestociaExit(Sender: TObject);
begin
    dbPuestocia.Color := Global_Color_Salida ;
end;

procedure TfrmOrdenesPerf.dbPuestociaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key=#13 Then
     dbSupcia.SetFocus ;
end;

procedure TfrmOrdenesPerf.dbSupciaEnter(Sender: TObject);
begin
//  dbSupCia.Color := Global_Color_Entrada ;
end;

procedure TfrmOrdenesPerf.dbSupciaExit(Sender: TObject);
begin
  dbSupcia.Color := Global_Color_Salida ;
end;

procedure TfrmOrdenesPerf.dtElaboracionEnter(Sender: TObject);
begin
 dtElaboracion.Color := Global_Color_Entrada ;
end;

procedure TfrmOrdenesPerf.dtElaboracionExit(Sender: TObject);
begin
  dtElaboracion.Color := Global_Color_Salida ;
end;

procedure TfrmOrdenesPerf.Copy1Click(Sender: TObject);
begin
UtGrid.CopyRowsToClip;
end;

procedure TfrmOrdenesPerf.dbDptoSolicEnter(Sender: TObject);
begin
//  dbDptoSolic.Color :=  Global_Color_Entrada ;
end;

procedure TfrmOrdenesPerf.dbDptoSolicExit(Sender: TObject);
begin
  dbDptoSolic.Color := Global_Color_Salida ;
end;

procedure TfrmOrdenesPerf.dbDptoSolicKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key =#13 Then
   tcIdStatus.SetFocus ; 

end;

procedure TfrmOrdenesPerf.dbSupciaKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then
    tmComentarios.SetFocus ;
end;

end.

