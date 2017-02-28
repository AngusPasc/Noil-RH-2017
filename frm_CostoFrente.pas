unit frm_CostoFrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, strUtils,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_connection,
  Global, RxMemDS, Grids, DBGrids, frxClass, frxDBSet;

type
  TFrmCostoFrente = class(TForm)
    cmbMes: TComboBox;
    cmbAnho: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ZPrincipal: TZQuery;
    btnConsultar: TButton;
    rxmTabla: TRxMemoryData;
    rxmTablapartida: TStringField;
    rxmTablacantidad: TFloatField;
    rxmTablaunidad: TStringField;
    rxmTablapaquete: TStringField;
    rxmTablainicio: TDateField;
    rxmTablafin: TDateField;
    rxmTabladia1act: TIntegerField;
    rxmTabladia2act: TIntegerField;
    rxmTabladia3act: TIntegerField;
    rxmTabladia4act: TIntegerField;
    rxmTabladia5act: TIntegerField;
    rxmTabladia6act: TIntegerField;
    rxmTabladia7act: TIntegerField;
    rxmTabladia8act: TIntegerField;
    rxmTabladia9act: TIntegerField;
    rxmTabladia10act: TIntegerField;
    rxmTabladia11act: TIntegerField;
    rxmTabladia12act: TIntegerField;
    rxmTabladia13act: TIntegerField;
    rxmTabladia14act: TIntegerField;
    rxmTabladia15act: TIntegerField;
    rxmTabladia16act: TIntegerField;
    rxmTabladia17act: TIntegerField;
    rxmTabladia18act: TIntegerField;
    rxmTabladia19act: TIntegerField;
    rxmTabladia20act: TIntegerField;
    rxmTabladia21act: TIntegerField;
    rxmTabladia22act: TIntegerField;
    rxmTabladia23act: TIntegerField;
    rxmTabladia24act: TIntegerField;
    rxmTabladia25act: TIntegerField;
    rxmTabladia26act: TIntegerField;
    rxmTabladia27act: TIntegerField;
    rxmTabladia28act: TIntegerField;
    rxmTabladia29act: TIntegerField;
    rxmTabladia30act: TIntegerField;
    rxmTabladia31act: TIntegerField;
    rxmTabladia1dom: TIntegerField;
    rxmTabladia2dom: TIntegerField;
    rxmTabladia3dom: TIntegerField;
    rxmTabladia4dom: TIntegerField;
    rxmTabladia5dom: TIntegerField;
    rxmTabladia6dom: TIntegerField;
    rxmTabladia7dom: TIntegerField;
    rxmTabladia8dom: TIntegerField;
    rxmTabladia9dom: TIntegerField;
    rxmTabladia10dom: TIntegerField;
    rxmTabladia11dom: TIntegerField;
    rxmTabladia12dom: TIntegerField;
    rxmTabladia13dom: TIntegerField;
    rxmTabladia14dom: TIntegerField;
    rxmTabladia15dom: TIntegerField;
    rxmTabladia16dom: TIntegerField;
    rxmTabladia17dom: TIntegerField;
    rxmTabladia18dom: TIntegerField;
    rxmTabladia19dom: TIntegerField;
    rxmTabladia20dom: TIntegerField;
    rxmTabladia21dom: TIntegerField;
    rxmTabladia22dom: TIntegerField;
    rxmTabladia23dom: TIntegerField;
    rxmTabladia24dom: TIntegerField;
    rxmTabladia25dom: TIntegerField;
    rxmTabladia26dom: TIntegerField;
    rxmTabladia27dom: TIntegerField;
    rxmTabladia28dom: TIntegerField;
    rxmTabladia29dom: TIntegerField;
    rxmTabladia30dom: TIntegerField;
    rxmTabladia31dom: TIntegerField;
    lblAviso: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    dsCostoFrente: TfrxDBDataset;
    frxCostoFrente: TfrxReport;
    rxmTablames: TStringField;
    rxmTablaanho: TStringField;
    rxmTablasNumeroOrden: TStringField;
    rxmTablaarea: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sNumeroOrden: string;
    iNivel: integer;
    anhoInicial: integer;
    anhoFinal: integer;
    anho: integer;
    mes: integer;
    procedure fechasContrato;
    procedure calcularNivel;
    procedure generarDatos;
    function dentroDeRango(fechaini, fechafin: TDateTime; dia: integer): boolean;
  end;

var
  FrmCostoFrente: TFrmCostoFrente;

implementation

{$R *.dfm}

procedure TFrmCostoFrente.btnConsultarClick(Sender: TObject);
begin
  if cmbAnho.Text = '0' then
  begin
    ShowMessage('No hay actividades en el frente');
    exit;
  end;
  lblAviso.Visible := true;
  mes := cmbMes.ItemIndex + 1;
  anho := StrToInt(cmbAnho.Text);
  ZPrincipal.Active := false;
  ZPrincipal.ParamByName('contrato').AsString := GLOBAL_CONTRATO;
  ZPrincipal.ParamByName('convenio').AsString := GLOBAL_CONVENIO;
  ZPrincipal.ParamByName('orden').AsString := sNumeroOrden;
  ZPrincipal.ParamByName('nivel').AsInteger := iNivel;
  ZPrincipal.Open;
  if ZPrincipal.RecordCount > 0 then
  begin
    generarDatos;
  end;
  lblAviso.Visible := false;

  //Mostrar Reporte
  frxCostoFrente.LoadFromFile (global_files + 'CostiFrente.fr3') ;
  frxCostoFrente.PreviewOptions.MDIChild := False ;
  frxCostoFrente.PreviewOptions.Modal := True ;
  frxCostoFrente.PreviewOptions.Maximized := true ;
  frxCostoFrente.PreviewOptions.ShowCaptions := False ;
  frxCostoFrente.Previewoptions.ZoomMode := zmPageWidth ;
  frxCostoFrente.ShowReport;
  //frxCostoFrente.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
end;

procedure TFrmCostoFrente.calcularNivel;
var
  sSQL: string;
begin
  sSQL :=
  'SELECT max(iNivel) AS nivel ' +
  'FROM actividadesxorden ' +
  'WHERE sContrato = :contrato ' +
  'AND sIdConvenio = :convenio ' +
  'AND sNumeroOrden = :orden ' +
  'AND sTipoActividad = "ACTIVIDAD"';
  connection.QryBusca.Active := false;
  connection.QryBusca.Filtered := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add(sSQL);
  connection.QryBusca.ParamByName('contrato').AsString := GLOBAL_CONTRATO;
  connection.QryBusca.ParamByName('convenio').AsString := GLOBAL_CONVENIO;
  connection.QryBusca.ParamByName('orden').AsString := sNumeroOrden;
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then
  begin
    iNivel := connection.QryBusca.FieldByName('nivel').AsInteger;
  end
  else
  begin
    ShowMessage('No hay partidas en el programa de trabajo');
    anhoInicial := 0;
    anhoFinal := 0;
  end;
end;

function TFrmCostoFrente.dentroDeRango(fechaini, fechafin: TDateTime;
  dia: integer): boolean;
var
  fecha: tDateTime;
begin
  result := true;
  fecha := EncodeDate(anho, mes, dia);
  if (fecha > fechafin) or (fecha < fechaini) then
    result := false;
end;

procedure TFrmCostoFrente.fechasContrato;
var
  sSQL: string;
begin
  sSQL :=
  'SELECT MIN(dFechaInicio) AS inicial, MAX(dFechaFinal) AS final ' +
  'FROM actividadesxorden ' +
  'WHERE sContrato = :contrato ' +
  'AND sIdConvenio =  :convenio ' +
  'AND sNumeroOrden =  :orden ' +
  'AND sTipoActividad = "ACTIVIDAD"  ' +
  'AND iNivel = :nivel ';
  connection.QryBusca.Active := false;
  connection.QryBusca.Filtered := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add(sSQL);
  connection.QryBusca.ParamByName('contrato').AsString := GLOBAL_CONTRATO;
  connection.QryBusca.ParamByName('convenio').AsString := GLOBAL_CONVENIO;
  connection.QryBusca.ParamByName('orden').AsString := sNumeroOrden;
  connection.QryBusca.ParamByName('nivel').AsInteger := iNivel;
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then
  begin
    anhoInicial := StrToInt(RightStr(connection.QryBusca.FieldByName('inicial').AsString, 4));
    anhoFinal := StrToInt(RightStr(connection.QryBusca.FieldByName('final').AsString, 4));
  end
  else
  begin
    anhoInicial := 0;
    anhoFinal := 0;
  end;
end;

procedure TFrmCostoFrente.FormShow(Sender: TObject);
var
  ii: integer;
begin
  calcularNivel;
  fechasContrato;
  for ii := anhoInicial to anhoFinal do
  begin
    cmbAnho.Items.Add(IntToStr(ii));
  end;
  cmbAnho.ItemIndex := 0;
end;

procedure TFrmCostoFrente.generarDatos;
var
  sWbsAnterior: string;
  ii: integer;
begin
  ZPrincipal.First;
  rxmTabla.Active := false;
  rxmTabla.EmptyTable;
  rxmTabla.Active := true;

  //primer registro
  sWbsAnterior := ZPrincipal.FieldByName('sWbsAnterior').AsString;
  rxmTabla.Append;
  rxmTabla.FieldByName('unidad').AsString := ZPrincipal.FieldByName('sMedida').AsString;
  rxmTabla.FieldByName('paquete').AsString := ZPrincipal.FieldByName('paquete').AsString;
  rxmTabla.FieldByName('inicio').AsDateTime := ZPrincipal.FieldByName('inicial').AsDateTime;
  rxmTabla.FieldByName('fin').AsDateTime := ZPrincipal.FieldByName('final').AsDateTime;
  rxmTabla.FieldByName('mes').AsString := LeftStr(cmbMes.Text, 3);
  rxmTabla.FieldByName('anho').AsString := RightStr(cmbAnho.Text, 2);
  rxmTabla.FieldByName('sNumeroOrden').AsString := ZPrincipal.FieldByName('sNumeroOrden').AsString;
  rxmTabla.FieldByName('area').AsString := ZPrincipal.FieldByName('area').AsString;

  //iniciar en cero todos las casillas de actividad y domingos
  for ii := 1 to 31 do
  begin
    rxmTabla.FieldByName('dia' + inttostr(ii) + 'act').AsInteger := 0;
    rxmTabla.FieldByName('dia' + inttostr(ii) + 'dom').AsInteger := 0;
  end;
  rxmTabla.Post;

  //recorrer el dataset
  while not ZPrincipal.Eof do
  begin
    if sWbsAnterior <> ZPrincipal.FieldByName('sWbsAnterior').AsString then
    begin
      //cambio de paquete, agregar registro
      sWbsAnterior := ZPrincipal.FieldByName('sWbsAnterior').AsString;
      rxmTabla.Append;
      rxmTabla.FieldByName('unidad').AsString := ZPrincipal.FieldByName('sMedida').AsString;
      rxmTabla.FieldByName('paquete').AsString := ZPrincipal.FieldByName('paquete').AsString;
      rxmTabla.FieldByName('inicio').AsDateTime := ZPrincipal.FieldByName('inicial').AsDateTime;
      rxmTabla.FieldByName('fin').AsDateTime := ZPrincipal.FieldByName('final').AsDateTime;
      rxmTabla.FieldByName('mes').AsString := LeftStr(cmbMes.Text, 3);
      rxmTabla.FieldByName('anho').AsString := RightStr(cmbAnho.Text, 2);
      rxmTabla.FieldByName('sNumeroOrden').AsString := ZPrincipal.FieldByName('sNumeroOrden').AsString;
      rxmTabla.FieldByName('area').AsString := ZPrincipal.FieldByName('area').AsString;
      //iniciar en cero todos las casillas de actividad y domingos
      for ii := 1 to 31 do
      begin
        rxmTabla.FieldByName('dia' + inttostr(ii) + 'act').AsInteger := 0;
        rxmTabla.FieldByName('dia' + inttostr(ii) + 'dom').AsInteger := 0;
      end;
      rxmTabla.Post;
    end;
    //verificar las fechas por cada linea del dataset
    //iniciar la edicion
    rxmTabla.Edit;
    
    //dias del 1 al 28
    for ii := 1 to 28 do
    begin
      //si esta dentro del rango es un dia activo
      if dentroDeRango(ZPrincipal.FieldByName('dFechaInicio').AsDateTime, ZPrincipal.FieldByName('dFechaFinal').AsDateTime, ii) then
      begin
        rxmTabla.FieldByName('dia' + inttostr(ii) + 'act').AsInteger := 1;
      end;
      //verificar si es domingo
      if DayOfWeek(EncodeDate(anho, mes, ii)) = 1 then
      begin
        rxmTabla.FieldByName('dia' + inttostr(ii) + 'dom').AsInteger := 1;
      end;
    end;

    //meses de 30 días, todos menos febrero
    if (mes <> 2) then
    begin
      for ii := 29 to 30 do
      begin
        //si esta dentro del rango es un dia activo
        if dentroDeRango(ZPrincipal.FieldByName('dFechaInicio').AsDateTime, ZPrincipal.FieldByName('dFechaFinal').AsDateTime, ii) then
        begin
          rxmTabla.FieldByName('dia' + inttostr(ii) + 'act').AsInteger := 1;
        end;
        //verificar si es domingo
        if DayOfWeek(EncodeDate(anho, mes, ii)) = 1 then
        begin
          rxmTabla.FieldByName('dia' + inttostr(ii) + 'dom').AsInteger := 1;
        end;
      end;
    end;

    //meses de 31 días
    if (mes = 1) or (mes = 3) or (mes = 5) or (mes = 7) or (mes = 8) or (mes = 10) or (mes = 12) then
    begin
      ii := 31;
      //si esta dentro del rango es un dia activo
      if dentroDeRango(ZPrincipal.FieldByName('dFechaInicio').AsDateTime, ZPrincipal.FieldByName('dFechaFinal').AsDateTime, ii) then
      begin
        rxmTabla.FieldByName('dia' + inttostr(ii) + 'act').AsInteger := 1;
      end;
      //verificar si es domingo
      if DayOfWeek(EncodeDate(anho, mes, ii)) = 1 then
      begin
        rxmTabla.FieldByName('dia' + inttostr(ii) + 'dom').AsInteger := 1;
      end;
    end;

    //grabar
    rxmTabla.Post;
    ZPrincipal.Next;
  end;
end;

end.
