unit masUtilerias;

interface
uses Controls, Classes, frm_connection, DB, SysUtils, utilerias, ZDataset, dialogs, Math, Forms, UnitExcepciones,
  sTrUtils, StdCtrls, DBCtrls, RXDBCtrl, global, DBGrids, NxCollection, Clipbrd, cxDbEdit, Menus, RxLookup, cxDBLookupComboBox,rxCurrEdit ;

type
  TFtOperacionClipboard = ( ftCopiar = 0, ftPegar = 1 );

function ifnJornadaDia(sParamContrato: string; dParamFecha: tDate; tOrigen: TComponent): Integer;
function ifnJornadaTotal(sParamContrato: string; dParamFInicio, dParamFFinal: tDate; tOrigen: TComponent): Integer;
procedure procInicializaJornadas(sParamContrato, sParamOrden, sParamTurno, sParamJornada: string; dParamFecha: tDate; tOrigen: TComponent);
procedure procActualizaJornadas(sParamContrato, sParamOrden: string; dParamFecha: tDate; tOrigen: TComponent);
function sfnFechaFinal(iParamMes, iParamAnno: Integer): string;
function esMes(iParamMes: Integer): string;
procedure procAjustaContrato(sParamContrato, sParamConvenio: string; dParamFecha: tDate; tOrigen: TComponent);
procedure ProcIntroduceRegistro(sParamWbsRaiz, sParamItemOrden, sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamActividad, sParamTipo: string;
  iParamNivel: Byte; sParamCantidad, sParamFechaInicio, sParamFechaFinal, sParamActAnt, sParamAnexo: string);
function lVerificaPaquetes(sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamActividad: string; dParamCantidad: Double; tOrigen: tComponent): Boolean;
procedure ProcRegeneraMontos(sParamContrato, sParamConvenio, sParamOrden, sParamWbs: string);
procedure ProcGeneraWindows(tzDataSourceTemp: tDataSource; sParamComentarios: string; lParamVisualiza: Boolean);
procedure VisualizaObjetoGrid(tzDataSourceTemp: tDataSource; sParamComentarios: string);

{Item Orden..}
function sfnNewItem(sNumeroActividad: string): string;
function sfnNewItemString(sNumeroActividad: string; dParamTamanio: integer): string;
function sFnBuscaItem(sNumeroActividad, dParamWbsAnt, dParamPrimerItem, dParamTipo, dParamOrden, dParamTabla: string; iParamNivel: Byte): string;
function sfnGeneraItem(dParamConsecutivo: integer): string;
function sFnInsertaItem(sNumeroActividad, dParamWbsAnt, dParamPrimerItem, dParamTipo, dParamTabla, dParamOrden, dParamAnexo: string; iParamNivel: Byte): string;
procedure ActualizaItems(sParamWbs, sParamActividad, sParamTipo, sParamItem, sParamItemOrden, dParamOrden, dParamTabla: string; dParamNivel: Integer);

{Items..}
function NumItems(const cadena: string; const separador: char): integer;
function TraerItem(const cadena: string; const separador: char; const posicion: integer): string;

{Busquedas de partidas, dsitribuciones y avances..}
function AntesEliminarAnexo(dParamActividad, dParamWbs, dParamTipo: string): string;
function AntesEliminarFrente(dParamActividad, dParamWbs, dParamOrden, dParamTipo: string): string;
procedure DistribucionesAnexo(sParamsWbs, sParamsTipoActividad: string; iParamsNivel: integer);
procedure DistribucionesFrente(sParamsFrente, sParamsWbs, sParamsTipoActividad: string; iParamsNivel: integer);
procedure EliminaAvances(sParamsFrente: string);
procedure ActualizaConfiguraciones(sParamContrato :string);

{Buasca Datos en el covenio}
function AntesEliminarConvenio(dParamConvenio: string): string;

{Busca datos en materiales}
function BuscaDatosInsumos(iParamId : integer; sParamId, sParamTabla, sParamCampo : string) : boolean;
procedure InsertaRecursosAnexo(sParamContrato, sParamConvenio, sParamFrente, sParamWbs, sParamTipo, sParamId : string);
procedure DistribuyerecursosPeEqMaHeIn(sMes, sAnio, sIdRecurso, sIdTabla, sNombreTabla, sCatalogo : string; dCantidad, dCantidadTotal : double);

{Mas funciones y procedimientos}
procedure ActualizaDisponibilidadSitio(sParamContrato, sParamOrden, sParamTurno : string; dParamFecha :tDate; dParamCantidad :double);

procedure ModificarPortapapeles( const Control : TWinControl; Accion : TFtOperacionClipboard );


procedure Crear_Formulario(panel:TNxHeaderPanel;Formlario:Tform; Titulo:String;arriba,Derecha,Ancho,Largo:Integer; Botones:TBorderIcons);//Sam

function validarPonderadoXConvenio(sParamContrato, sParamConvenio, sParamOrden: string; eParamFecha: Extended): boolean; //********BRITO 23-03-11**************
procedure BloquearItemsPopup( var Menu : TPopupMenu; BloquearTag_1 : Boolean );

type
  TEventHandlers = class // create a dummy class
    procedure ButtonClick(Sender: TObject);
  end;

{Nominas:}
function MultiStringReplace(const S : string; OldPattern, NewPattern : array of string; Flags: TReplaceFlags): string;

var
  LocalItem: string;

implementation

function MultiStringReplace(const S : string; OldPattern, NewPattern : array of string;
  Flags : TReplaceFlags): string;
var
  i : Integer;
begin
  Assert(Length(OldPattern) = Length(NewPattern), 'Pattern array lengths differ');
  Result := S;
  for i := Low(OldPattern) to High(OldPattern) do
    Result := StringReplace(Result, OldPattern[i], NewPattern[i], Flags);
end;

procedure TEventHandlers.ButtonClick(Sender: TObject);
begin
  global_opcion_window := 'Si';
end;

procedure VisualizaObjetoGrid(tzDataSourceTemp: tDataSource; sParamComentarios: string);
var
  myForm: TForm;
  myGrid: TRxDBGrid;
begin
  myForm := TForm.Create(nil);
  try
    myForm.Position := poDesktopCenter;
    myForm.Caption := sParamComentarios;
    MyForm.BorderIcons := [biSystemMenu];
    MyForm.Width := 900;
    MyForm.Height := 400;
    MyForm.BorderStyle := bsSingle;
    MyForm.Color := $00FEC6BA;

    myGrid := TRxDBGrid.Create(MyForm);
    with myGrid do
    begin
      Parent := myForm;
      Visible := True;
      Align := alCustom;
      Width := MyForm.Width;
      Height := MyForm.Height - 70;
      Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
      TitleButtons := True;
      DataSource := tzDataSourceTemp;
      Anchors := [akLeft, akTop, akRight, akBottom];
      ParentColor := True;
      Ctl3D := False;
    end;

    with TButton.Create(nil) do
    begin
      Left := 10;
      Top := MyForm.Height - 70;
      Width := 120;
      Height := 35;
      ModalResult := mrOk;
      Default := True;
      Parent := MyForm;
      Caption := 'Seleccionar'
    end;

    myForm.ShowModal;
  finally
    MyGrid.Free;
    myForm.Free;
  end;

end;

procedure ProcGeneraWindows(tzDataSourceTemp: tDataSource; sParamComentarios: string; lParamVisualiza: Boolean);
var
  myForm: TForm;
  iValorMax,
    Registro: Integer;
  EvHandler: TEventHandlers;
  iCountRegistros: Integer;
begin
    // Identificamos el tamano maximo de los registros ...
  iValorMax := 0;
  global_opcion_window := 'No';
  iCountRegistros := 0;
  for registro := 1 to tzDataSourceTemp.DataSet.fieldcount do
  begin
    if lParamVisualiza then
      if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftMemo then
      begin
        if 300 > iValorMax then
          iValorMax := 700;
        iCountRegistros := iCountRegistros + 7
      end
      else
        iCountRegistros := iCountRegistros + 1
    else
      if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
        if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftMemo then
        begin
          if 300 > iValorMax then
            iValorMax := 700;
          iCountRegistros := iCountRegistros + 7
        end
        else
          iCountRegistros := iCountRegistros + 1
  end;

  myForm := TForm.Create(nil);
  try
    myForm.Position := poDesktopCenter;
    myForm.Caption := sParamComentarios;
    MyForm.BorderIcons := [];
    MyForm.Width := iValorMax + 120;
    MyForm.Height := iCountRegistros * 22 + 80;
    MyForm.BorderStyle := bsSingle;
    MyForm.Color := $00FEC6BA;

    iCountRegistros := 0;
    for registro := 1 to tzDataSourceTemp.DataSet.fieldcount do
    begin
      if lParamVisualiza then
        with TLabel.Create(nil) do
        begin
          Left := 10;
          Top := iCountRegistros * 22 + 5;
          Width := 100;
          Height := 22;
          Parent := MyForm;
          Caption := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayLabel;
          Anchors := [akLeft, akTop];
        end
      else
        if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
          with TLabel.Create(nil) do
          begin
            Left := 10;
            Top := iCountRegistros * 22 + 5;
            Width := 100;
            Height := 22;
            Parent := MyForm;
            Caption := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayLabel;
            Anchors := [akLeft, akTop];
          end;


      if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftMemo then
      begin
        if lParamVisualiza then
          with TDBMemo.Create(nil) do
          begin
            Left := 110;
            Top := iCountRegistros * 22 + 5;
            Width := 700;
            Height := 22 * 7;
            Parent := MyForm;
            DataSource := tzDataSourceTemp;
            DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
            Anchors := [akLeft, akTop];
            Color := $00E6FEFF;
            Font.Name := 'Arial';
            Font.Style := [];
            ScrollBars := ssVertical;
            iCountRegistros := iCountRegistros + 7;

            if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
              Enabled := False
            else
              Enabled := True
          end
        else
          if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
            with TDBMemo.Create(nil) do
            begin
              Left := 110;
              Top := iCountRegistros * 22 + 5;
              Width := 700;
              Height := 22 * 7;
              Parent := MyForm;
              DataSource := tzDataSourceTemp;
              DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
              Anchors := [akLeft, akTop];
              Color := $00E6FEFF;
              Font.Name := 'Arial';
              Font.Style := [];
              ScrollBars := ssVertical;
              iCountRegistros := iCountRegistros + 7;

              if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                Enabled := False
              else
                Enabled := True
            end
      end
      else
        if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftDate then
        begin
          if lParamVisualiza then
            with TDBDateEdit.Create(nil) do
            begin
              Left := 110;
              Top := iCountRegistros * 22 + 5;
              Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * 9;
              Height := 22;
              Parent := MyForm;
              DataSource := tzDataSourceTemp;
              DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
              Anchors := [akLeft, akTop];
              Color := $00E6FEFF;
              Font.Name := 'Arial';
              Font.Style := [];
              iCountRegistros := iCountRegistros + 1;
              if tzDataSourceTemp.DataSet.State = dsInsert then
                tzDataSourceTemp.DataSet.Fields[registro - 1].Value := Date;

              if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                Enabled := False
              else
                Enabled := True
            end
          else
            if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
              with TDBDateEdit.Create(nil) do
              begin
                Left := 110;
                Top := iCountRegistros * 22 + 5;
                Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * 9;
                Height := 22;
                Parent := MyForm;
                DataSource := tzDataSourceTemp;
                DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
                Anchors := [akLeft, akTop];
                Color := $00E6FEFF;
                Font.Name := 'Arial';
                Font.Style := [];
                iCountRegistros := iCountRegistros + 1;
                if tzDataSourceTemp.DataSet.State = dsInsert then
                  tzDataSourceTemp.DataSet.Fields[registro - 1].Value := Date;

                if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                  Enabled := False
                else
                  Enabled := True
              end
        end
        else
        begin
          if lParamVisualiza then
            with TDBEdit.Create(nil) do
            begin
              Left := 110;
              Top := iCountRegistros * 22 + 5;
              Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * 9;
              Height := 22;
              Parent := MyForm;
              DataSource := tzDataSourceTemp;
              DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
              Anchors := [akLeft, akTop];
              Color := $00E6FEFF;
              Font.Name := 'Arial';
              Font.Style := [];
              iCountRegistros := iCountRegistros + 1;

              if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                Enabled := False
              else
                Enabled := True
            end
          else
            if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
              with TDBEdit.Create(nil) do
              begin
                Left := 110;
                Top := iCountRegistros * 22 + 5;
                Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * 9;
                Height := 22;
                Parent := MyForm;
                DataSource := tzDataSourceTemp;
                DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
                Anchors := [akLeft, akTop];
                Color := $00E6FEFF;
                Font.Name := 'Arial';
                Font.Style := [];
                iCountRegistros := iCountRegistros + 1;

                if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                  Enabled := False
                else
                  Enabled := True
              end
        end;
    end;

    with TButton.Create(nil) do
    begin
      Left := 5;
      Top := MyForm.Height - 70;
      Width := 120;
      Height := 35;
      ModalResult := mrOk;
      Default := False;
      Parent := MyForm;
      OnClick := EvHandler.ButtonClick;
      Caption := '&Grabar'
    end;
    with TButton.Create(nil) do
    begin
      Left := 125;
      Top := MyForm.Height - 70;
      Width := 120;
      Height := 35;
      ModalResult := mrCancel;
      Cancel := True;
      Parent := MyForm;
      Caption := '&Cancelar'
    end;
    myForm.ShowModal;
  finally

    myForm.Free;
  end;
end;

procedure ProcRegeneraMontos(sParamContrato, sParamConvenio, sParamOrden, sParamWbs: string);
var
  zQryPaquetes,
    zQryMaximos,
    zExecute: tzReadOnlyQuery;
begin
  zQryPaquetes := tzReadOnlyQuery.Create(nil);
  zQryMaximos := tzReadOnlyQuery.Create(nil);
  zExecute := tzReadOnlyQuery.Create(nil);
  zQryPaquetes.Connection := connection.zConnection;
  zQryMaximos.Connection := connection.zConnection;
  zExecute.Connection := connection.zConnection;

  zQryPaquetes.Active := False;
  zQryPaquetes.SQL.Clear;
  zQryPaquetes.SQL.Add('Select Distinct sWBS From actividadesxorden ' +
    'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And ' +
    ':Wbs Like concat(sWbs,".%") And sTipoActividad = "Paquete" Order By iNivel DESC');
  zQryPaquetes.Params.ParamByName('Contrato').DataType := ftString;
  zQryPaquetes.Params.ParamByName('Contrato').Value := sParamContrato;
  zQryPaquetes.Params.ParamByName('Orden').DataType := ftString;
  zQryPaquetes.Params.ParamByName('Orden').Value := sParamOrden;
  zQryPaquetes.Params.ParamByName('Convenio').DataType := ftString;
  zQryPaquetes.Params.ParamByName('Convenio').Value := sParamConvenio;
  zQryPaquetes.Params.ParamByName('Wbs').DataType := ftString;
  zQryPaquetes.Params.ParamByName('Wbs').Value := sParamWbs + '.';
  zQryPaquetes.Open;
  while not zQryPaquetes.Eof do
  begin
    zQryMaximos.Active := False;
    zQryMaximos.SQL.Clear;
    zQryMaximos.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
      'sum(dCantidad * dVentaMN) as dMontoMN, sum(dCantidad * dVentaDLL) as dMontoDLL, ' +
      'sum(dCantidad * dCostoMN) as dMontoCostoMN, sum(dCantidad * dCostoDLL) as dMontoCostoDLL From actividadesxorden ' +
      'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sWBSAnterior = :WbsAnterior And lCalculo="Si" Group By sWBSAnterior');
    zQryMaximos.Params.ParamByName('Contrato').DataType := ftString;
    zQryMaximos.Params.ParamByName('Contrato').Value := sParamContrato;
    zQryMaximos.Params.ParamByName('Orden').DataType := ftString;
    zQryMaximos.Params.ParamByName('Orden').Value := sParamOrden;
    zQryMaximos.Params.ParamByName('Convenio').DataType := ftString;
    zQryMaximos.Params.ParamByName('Convenio').Value := sParamConvenio;
    zQryMaximos.Params.ParamByName('WbsAnterior').DataType := ftString;
    zQryMaximos.Params.ParamByName('WbsAnterior').Value := zQryPaquetes.FieldValues['sWBS'];
    zQryMaximos.Open;
    if zQryMaximos.RecordCount > 0 then
      if (not zQryMaximos.FieldByName('dFechaInicio').IsNull) and (not zQryMaximos.FieldByName('dFechaFinal').IsNull) then
      begin
        zExecute.Active := False;
        zExecute.SQL.Clear;
        zExecute.SQL.Add('Update actividadesxorden SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, ' +
          'dCostoMN = :MontoCostoMN, dCostoDLL = :MontoCostoDLL, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
          'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And ' +
          'sWBS = :WbsAnterior And sTipoActividad = "Paquete"');
        zExecute.Params.ParamByName('Contrato').DataType := ftString;
        zExecute.Params.ParamByName('Contrato').Value := sParamContrato;
        zExecute.Params.ParamByName('Orden').DataType := ftString;
        zExecute.Params.ParamByName('Orden').Value := sParamOrden;
        zExecute.Params.ParamByName('Convenio').DataType := ftString;
        zExecute.Params.ParamByName('Convenio').Value := sParamConvenio;
        zExecute.Params.ParamByName('WbsAnterior').DataType := ftString;
        zExecute.Params.ParamByName('WbsAnterior').Value := zQryPaquetes.FieldValues['sWBS'];
        zExecute.Params.ParamByName('Inicio').DataType := ftDate;
        zExecute.Params.ParamByName('Inicio').Value := zQryMaximos.FieldValues['dFechaInicio'];
        zExecute.Params.ParamByName('Final').DataType := ftDate;
        zExecute.Params.ParamByName('Final').Value := zQryMaximos.FieldValues['dFechaFinal'];
        zExecute.Params.ParamByName('Ponderado').DataType := ftFloat;
        if roundTo(zQryMaximos.FieldValues['dPonderado'], -2) >= 100 then
          zExecute.Params.ParamByName('Ponderado').Value := 100
        else
          zExecute.Params.ParamByName('Ponderado').Value := zQryMaximos.FieldValues['dPonderado'];
        zExecute.Params.ParamByName('MontoMN').DataType := ftFloat;
        zExecute.Params.ParamByName('MontoMN').Value := zQryMaximos.FieldValues['dMontoMN'];
        zExecute.Params.ParamByName('MontoDLL').DataType := ftFloat;
        zExecute.Params.ParamByName('MontoDLL').Value := zQryMaximos.FieldValues['dMontoDLL'];
        zExecute.Params.ParamByName('MontoCostoMN').DataType := ftFloat;
        zExecute.Params.ParamByName('MontoCostoMN').Value := zQryMaximos.FieldValues['dMontoCostoMN'];
        zExecute.Params.ParamByName('MontoCostoDLL').DataType := ftFloat;
        zExecute.Params.ParamByName('MontoCostoDLL').Value := zQryMaximos.FieldValues['dMontoCostoDLL'];
        zExecute.ExecSQL;
      end;
    zQryPaquetes.Next
  end;

  zQryPaquetes.Destroy;
  zQryMaximos.Destroy;
  zExecute.Destroy;
end;

function lVerificaPaquetes(sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamActividad: string; dParamCantidad: Double; tOrigen: tComponent): Boolean;
var
  qryPaquete: tzReadOnlyQuery;
  qryVerifica: tzReadOnlyQuery;
  QryPartidas: tzReadOnlyQuery;
  sParametro: string;
  registro: Integer;
begin
    // Esta funcion se encargara de dar de alta conceptos del contrato que no existan en la orden de trabajo
  QryVerifica := tzReadOnlyQuery.Create(tOrigen);
  QryVerifica.Connection := connection.zConnection;
  QryPaquete := tzReadOnlyQuery.Create(tOrigen);
  QryPaquete.Connection := connection.zConnection;
  QryPartidas := tzReadOnlyQuery.Create(tOrigen);
  QryPartidas.Connection := connection.zConnection;

    // 1. Existe la partida ??
  QryVerifica.Active := False;
  QryVerifica.SQL.Clear;
  QryVerifica.SQL.Add('select sContrato from actividadesxorden ' +
    'Where sContrato = :contrato and sIdConvenio = :Convenio and sNumeroOrden = :Orden And sWbs = :Wbs and sNumeroActividad = :Actividad and sTipoActividad = :Tipo');
  QryVerifica.Active := False;
  QryVerifica.Params.ParamByName('contrato').DataType := ftString;
  QryVerifica.Params.ParamByName('contrato').Value := sParamContrato;
  QryVerifica.Params.ParamByName('convenio').DataType := ftString;
  QryVerifica.Params.ParamByName('convenio').Value := sParamConvenio;
  QryVerifica.Params.ParamByName('Orden').DataType := ftString;
  QryVerifica.Params.ParamByName('Orden').Value := sParamOrden;
  QryVerifica.Params.ParamByName('Wbs').DataType := ftString;
  QryVerifica.Params.ParamByName('Wbs').Value := sParamWbs;
  QryVerifica.Params.ParamByName('Actividad').DataType := ftString;
  QryVerifica.Params.ParamByName('Actividad').Value := sParamActividad;
  QryVerifica.Params.ParamByName('Tipo').DataType := ftString;
  QryVerifica.Params.ParamByName('Tipo').Value := 'Actividad';
  QryVerifica.Open;
  if QryVerifica.RecordCount = 0 then
  begin
        // Saco una copia de la partida anexo ...
    QryPaquete.Active := False;
    QryPaquete.SQL.Clear;
    QryPaquete.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
      'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, ' +
      '0.00, iColor, dFechaInicio, dFechaFinal, dDuracion, 0 as dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
      'dVentaDLL from actividadesxanexo ' +
      'Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :Wbs And sNumeroActividad = :Actividad and sTipoActividad = "Actividad"');
    QryPaquete.Params.ParamByName('contrato').DataType := ftString;
    QryPaquete.Params.ParamByName('contrato').Value := sParamContrato;
    QryPaquete.Params.ParamByName('convenio').DataType := ftString;
    QryPaquete.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPaquete.Params.ParamByName('Wbs').DataType := ftString;
    QryPaquete.Params.ParamByName('Wbs').Value := sParamWbs;
    QryPaquete.Params.ParamByName('Actividad').DataType := ftString;
    QryPaquete.Params.ParamByName('Actividad').Value := sParamActividad;
    QryPaquete.Open;
    if QryPaquete.RecordCount > 0 then
    begin
      QryPartidas.Active := False;
      QryPartidas.SQL.Clear;
      QryPartidas.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
        'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, ' +
        'dCantidad, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
        'dVentaDLL, sNumeroOrden from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :convenio');
      QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
      QryPartidas.Params.ParamByName('Contrato').Value := '';
      QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
      QryPartidas.Params.ParamByName('Convenio').Value := '';
      QryPartidas.Open;

      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add(funcsql(QryPartidas, 'actividadesxorden'));
      Connection.zCommand.Active := False;
      sparametro := 'param' + trim(inttostr(qryPaquete.fieldcount + 1));
      connection.zCommand.Params.parambyname(sparametro).datatype := ftString;
      connection.zCommand.Params.parambyname(sparametro).value := sParamOrden;
      for registro := 1 to qryPaquete.fieldcount do
      begin
        sparametro := 'param' + trim(inttostr(registro));
        connection.zCommand.Params.parambyname(sparametro).datatype := qryPaquete.fields[registro - 1].datatype;
        if QryPartidas.fields[registro - 1].DisplayName = 'dCantidad' then
          connection.zCommand.Params.parambyname(sparametro).value := dParamCantidad
        else
          connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fields[registro - 1].value;
      end;
      connection.zCommand.ExecSQL;
    end;
        // Ahora los paquetes ...
    QryPaquete.Active := False;
    QryPaquete.SQL.Clear;
    QryPaquete.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
      'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, ' +
      'dCantidadAnexo, iColor, dFechaInicio, dFechaFinal, dDuracion, 0 as dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
      'dVentaDLL from actividadesxanexo ' +
      'Where sContrato = :contrato and sIdConvenio = :convenio and :wbs Like concat(sWbs, ".%") and sTipoActividad = "Paquete" order by iItemOrden DESC');
    QryPaquete.Params.ParamByName('contrato').DataType := ftString;
    QryPaquete.Params.ParamByName('contrato').Value := sParamContrato;
    QryPaquete.Params.ParamByName('convenio').DataType := ftString;
    QryPaquete.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPaquete.Params.ParamByName('Wbs').DataType := ftString;
    QryPaquete.Params.ParamByName('Wbs').Value := sParamWbs;
    QryPaquete.Open;
    if QryPaquete.RecordCount > 0 then
    begin
      QryVerifica.Active := False;
      QryVerifica.Params.ParamByName('contrato').DataType := ftString;
      QryVerifica.Params.ParamByName('contrato').Value := sParamContrato;
      QryVerifica.Params.ParamByName('convenio').DataType := ftString;
      QryVerifica.Params.ParamByName('convenio').Value := sParamConvenio;
      QryVerifica.Params.ParamByName('Orden').DataType := ftString;
      QryVerifica.Params.ParamByName('Orden').Value := sParamOrden;
      QryVerifica.Params.ParamByName('Wbs').DataType := ftString;
      QryVerifica.Params.ParamByName('Wbs').Value := QryPaquete.FieldValues['sWbs'];
      QryVerifica.Params.ParamByName('Actividad').DataType := ftString;
      QryVerifica.Params.ParamByName('Actividad').Value := QryPaquete.FieldValues['sNumeroActividad'];
      QryVerifica.Params.ParamByName('Tipo').DataType := ftString;
      QryVerifica.Params.ParamByName('Tipo').Value := QryPaquete.FieldValues['sTipoActividad'];
      QryVerifica.Open;
      if QryVerifica.RecordCount = 0 then
      begin
                // No se encontro el paquete anterior, quiere decir que no existen los niveles superiores ...
        QryPartidas.Active := False;
        QryPartidas.SQL.Clear;
        QryPartidas.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
          'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, ' +
          'dCantidad, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
          'dVentaDLL, sNumeroOrden from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :convenio');
        QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
        QryPartidas.Params.ParamByName('Contrato').Value := '';
        QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
        QryPartidas.Params.ParamByName('Convenio').Value := '';
        QryPartidas.Open;
        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add(funcsql(QryPartidas, 'actividadesxorden'));
        qryPaquete.First;
        while not qryPaquete.Eof do
        begin
          Connection.zCommand.Active := False;
          sparametro := 'param' + trim(inttostr(qryPaquete.fieldcount + 1));
          connection.zCommand.Params.parambyname(sparametro).datatype := ftString;
          connection.zCommand.Params.parambyname(sparametro).value := sParamOrden;
          for registro := 1 to qryPaquete.fieldcount do
          begin
            sparametro := 'param' + trim(inttostr(registro));
            connection.zCommand.Params.parambyname(sparametro).datatype := qryPaquete.fields[registro - 1].datatype;
            connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fields[registro - 1].value;
          end;
          try
            connection.zCommand.ExecSQL;
          except

          end;
          qryPaquete.Next
        end
      end
    end
  end;
  QryVerifica.Destroy;
  QryPaquete.Destroy;
  QryPartidas.Destroy;
end;

procedure ProcIntroduceRegistro(sParamWbsRaiz, sParamItemOrden, sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamActividad,
  sParamTipo: string; iParamNivel: Byte; sParamCantidad, sParamFechaInicio, sParamFechaFinal, sParamActAnt, sParamAnexo: string);
var
  qryPaquete: tzReadOnlyQuery;
  qryVerifica: tzReadOnlyQuery;
  QryPartidas: tzReadOnlyQuery;
  sParametro: string;
  registro: Integer;
begin
    // Esta funcion se encargara de dar de alta conceptos del contrato que no existan en la orden de trabajo
  QryVerifica := tzReadOnlyQuery.Create(nil);
  QryVerifica.Connection := connection.zConnection;
  QryPaquete := tzReadOnlyQuery.Create(nil);
  QryPaquete.Connection := connection.zConnection;
  QryPartidas := tzReadOnlyQuery.Create(nil);
  QryPartidas.Connection := connection.zConnection;

    // 1. Existe la partida ??
  QryVerifica.Active := False;
  QryVerifica.SQL.Clear;
  QryVerifica.SQL.Add('select sContrato from actividadesxorden ' +
    'Where sContrato = :contrato and sIdConvenio = :Convenio and sNumeroOrden = :Orden And sWbsContrato = :Wbs and sNumeroActividad = :Actividad and sTipoActividad = :Tipo');
  QryVerifica.Active := False;
  QryVerifica.Params.ParamByName('contrato').DataType := ftString;
  QryVerifica.Params.ParamByName('contrato').Value := sParamContrato;
  QryVerifica.Params.ParamByName('convenio').DataType := ftString;
  QryVerifica.Params.ParamByName('convenio').Value := sParamConvenio;
  QryVerifica.Params.ParamByName('Orden').DataType := ftString;
  QryVerifica.Params.ParamByName('Orden').Value := sParamOrden;
  QryVerifica.Params.ParamByName('Wbs').DataType := ftString;
  QryVerifica.Params.ParamByName('Wbs').Value := sParamWbsRaiz + '.' + sParamAnexo + '.' + Trim(sParamActividad);
  QryVerifica.Params.ParamByName('Actividad').DataType := ftString;
  QryVerifica.Params.ParamByName('Actividad').Value := sParamActividad;
  QryVerifica.Params.ParamByName('Tipo').DataType := ftString;
  QryVerifica.Params.ParamByName('Tipo').Value := sParamTipo;
  QryVerifica.Open;
  if QryVerifica.RecordCount = 0 then
  begin
        // Saco una copia de la partida anexo ...
    QryPaquete.Active := False;
    QryPaquete.SQL.Clear;
    QryPaquete.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
      'sNumeroActividad, sTipoActividad, sTipoAnexo, iItemOrden, mDescripcion, sMedida, ' +
      'dCantidadAnexo, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
      'dVentaDLL, "*", sWbs as sWbsContrato, sActividadAnterior, sAnexo from actividadesxanexo ' +
      'Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :Wbs And sNumeroActividad = :Actividad and sTipoActividad = :Tipo');
    QryPaquete.Params.ParamByName('contrato').DataType := ftString;
    QryPaquete.Params.ParamByName('contrato').Value := sParamContrato;
    QryPaquete.Params.ParamByName('convenio').DataType := ftString;
    QryPaquete.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPaquete.Params.ParamByName('Wbs').DataType := ftString;
    QryPaquete.Params.ParamByName('Wbs').Value := sParamWbs;
    QryPaquete.Params.ParamByName('Actividad').DataType := ftString;
    QryPaquete.Params.ParamByName('Actividad').Value := sParamActividad;
    QryPaquete.Params.ParamByName('Tipo').DataType := ftString;
    QryPaquete.Params.ParamByName('Tipo').Value := sParamTipo;
    QryPaquete.Open;
    if QryPaquete.RecordCount > 0 then
    begin
      QryPartidas.Active := False;
      QryPartidas.SQL.Clear;
      QryPartidas.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
        'sNumeroActividad, sTipoActividad, sTipoAnexo, iItemOrden, mDescripcion, sMedida, ' +
        'dCantidad, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
        'dVentaDLL, mComentarios, sWbsContrato, sActividadAnterior, sAnexo, sNumeroOrden from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :convenio');
      QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
      QryPartidas.Params.ParamByName('Contrato').Value := '';
      QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
      QryPartidas.Params.ParamByName('Convenio').Value := '';
      QryPartidas.Open;

      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add(funcsql(QryPartidas, 'actividadesxorden'));
      Connection.zCommand.Active := False;
      sparametro := 'param' + trim(inttostr(qryPaquete.fieldcount + 1));
      connection.zCommand.Params.parambyname(sparametro).datatype := ftString;
      connection.zCommand.Params.parambyname(sparametro).value := sParamOrden;
      for registro := 1 to qryPaquete.fieldcount do
      begin
        sparametro := 'param' + trim(inttostr(registro));
        connection.zCommand.Params.parambyname(sparametro).datatype := qryPaquete.fields[registro - 1].datatype;
        if (QryPartidas.fields[registro - 1].DisplayName = 'sWbs') and (sParamWbsRaiz <> '') then
          connection.zCommand.Params.parambyname(sparametro).value := sParamWbsRaiz + '.' + qryPaquete.fieldValues['sNumeroActividad']
        else
          if (QryPartidas.fields[registro - 1].DisplayName = 'sWbsContrato') and (sParamWbsRaiz <> '') then
            connection.zCommand.Params.parambyname(sparametro).value := sParamWbs
          else
            if (QryPartidas.fields[registro - 1].DisplayName = 'sWbsAnterior') and (sParamWbsRaiz <> '') then
              connection.zCommand.Params.parambyname(sparametro).value := sParamWbsRaiz
            else
              if (QryPartidas.fields[registro - 1].DisplayName = 'iItemOrden') and (sParamWbsRaiz <> '') then
                connection.zCommand.Params.parambyname(sparametro).value := sParamItemOrden + sfnItem(qryPaquete.fieldValues['sNumeroActividad'], qryPaquete.FieldValues['sTipoActividad'], iParamNivel)
              else
                if (QryPartidas.fields[registro - 1].DisplayName = 'dCantidad') and (sParamCantidad <> '') then
                  connection.zCommand.Params.parambyname(sparametro).value := sParamCantidad
                else
                  if (QryPartidas.fields[registro - 1].DisplayName = 'dFechaInicio') and (sParamFechaInicio <> '') then
                    connection.zCommand.Params.parambyname(sparametro).value := StrToDate(sParamFechaInicio)
                  else
                    if (QryPartidas.fields[registro - 1].DisplayName = 'dFechaFinal') and (sParamFechaFinal <> '') then
                      connection.zCommand.Params.parambyname(sparametro).value := StrToDate(sParamFechaFinal)
                    else
                      if (QryPartidas.fields[registro - 1].DisplayName = 'dDuracion') and (sParamFechaInicio <> '') and (sParamFechaFinal <> '') then
                        connection.zCommand.Params.parambyname(sparametro).value := StrToDate(sParamFechaFinal) - StrToDate(sParamFechaInicio) + 1
                      else
                        if (QryPartidas.fields[registro - 1].DisplayName = 'iNivel') and (sParamWbsRaiz <> '') then
                          connection.zCommand.Params.parambyname(sparametro).value := iParamNivel
                        else
                          if (QryPartidas.fields[registro - 1].DisplayName = 'sActividadAnterior') and (sParamWbsRaiz <> '') then
                            connection.zCommand.Params.parambyname(sparametro).value := sParamActAnt
                          else
                            if (QryPartidas.fields[registro - 1].DisplayName = 'sAnexo') and (sParamWbsRaiz <> '') then
                              connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fieldValues['sAnexo']
                            else
                               if (QryPartidas.fields[registro - 1].DisplayName = 'sTipoAnexo') and (sParamWbsRaiz <> '') then
                                  connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fieldValues['sTipoAnexo']
                               else
                                  connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fields[registro - 1].value;
      end;
      connection.zCommand.ExecSQL;
    end;

    //Se insertan los recursos de Personal, equipo y materiales.

    if sParamWbsRaiz = '' then
    begin
            // Ahora los paquetes ...
      QryPaquete.Active := False;
      QryPaquete.SQL.Clear;
      QryPaquete.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
        'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, ' +
        'dCantidadAnexo, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
        'dVentaDLL, "*", sWbs as sWbsContrato from actividadesxanexo ' +
        'Where sContrato = :contrato and sIdConvenio = :convenio and :wbs Like concat(sWbs, ".%") and sTipoActividad = "Paquete" order by iItemOrden DESC');
      QryPaquete.Params.ParamByName('contrato').DataType := ftString;
      QryPaquete.Params.ParamByName('contrato').Value := sParamContrato;
      QryPaquete.Params.ParamByName('convenio').DataType := ftString;
      QryPaquete.Params.ParamByName('convenio').Value := sParamConvenio;
      QryPaquete.Params.ParamByName('Wbs').DataType := ftString;
      QryPaquete.Params.ParamByName('Wbs').Value := sParamWbs;
      QryPaquete.Open;
      if QryPaquete.RecordCount > 0 then
      begin
        QryVerifica.Active := False;
        QryVerifica.Params.ParamByName('contrato').DataType := ftString;
        QryVerifica.Params.ParamByName('contrato').Value := sParamContrato;
        QryVerifica.Params.ParamByName('convenio').DataType := ftString;
        QryVerifica.Params.ParamByName('convenio').Value := sParamConvenio;
        QryVerifica.Params.ParamByName('Orden').DataType := ftString;
        QryVerifica.Params.ParamByName('Orden').Value := sParamOrden;
        QryVerifica.Params.ParamByName('Wbs').DataType := ftString;
        QryVerifica.Params.ParamByName('Wbs').Value := QryPaquete.FieldValues['sWbs'];
        QryVerifica.Params.ParamByName('Actividad').DataType := ftString;
        QryVerifica.Params.ParamByName('Actividad').Value := QryPaquete.FieldValues['sNumeroActividad'];
        QryVerifica.Params.ParamByName('Tipo').DataType := ftString;
        QryVerifica.Params.ParamByName('Tipo').Value := QryPaquete.FieldValues['sTipoActividad'];
        QryVerifica.Open;
        if QryVerifica.RecordCount = 0 then
        begin
                    // No se encontro el paquete anterior, quiere decir que no existen los niveles superiores ...
          QryPartidas.Active := False;
          QryPartidas.SQL.Clear;
          QryPartidas.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
            'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, ' +
            'dCantidad, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
            'dVentaDLL, mComentarios, sWbsContrato, sNumeroOrden from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :convenio');
          QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
          QryPartidas.Params.ParamByName('Contrato').Value := '';
          QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
          QryPartidas.Params.ParamByName('Convenio').Value := '';
          QryPartidas.Open;
          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add(funcsql(QryPartidas, 'actividadesxorden'));
          qryPaquete.First;
          while not qryPaquete.Eof do
          begin
            Connection.zCommand.Active := False;
            sparametro := 'param' + trim(inttostr(qryPaquete.fieldcount + 1));
            connection.zCommand.Params.parambyname(sparametro).datatype := ftString;
            connection.zCommand.Params.parambyname(sparametro).value := sParamOrden;
            for registro := 1 to qryPaquete.fieldcount do
            begin
              sparametro := 'param' + trim(inttostr(registro));
              connection.zCommand.Params.parambyname(sparametro).datatype := qryPaquete.fields[registro - 1].datatype;
              connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fields[registro - 1].value;
            end;
            try
              connection.zCommand.ExecSQL;
            except

            end;
            qryPaquete.Next
          end
        end
      end
    end
  end;
  QryVerifica.Destroy;
  QryPaquete.Destroy;
  QryPartidas.Destroy;
end;

function esMes(iParamMes: Integer): string;
begin
  case iParamMes of
    1: result := 'ENERO';
    2: result := 'FEBRERO';
    3: result := 'MARZO';
    4: result := 'ABRIL';
    5: result := 'MAYO';
    6: result := 'JUNIO';
    7: result := 'JULIO';
    8: result := 'AGOSTO';
    9: result := 'SEPTIEMBRE';
    10: result := 'OCTUBRE';
    11: result := 'NOVIEMBRE';
    12: result := 'DICIEMBRE';
  end;
end;


procedure procAjustaContrato(sParamContrato, sParamConvenio: string; dParamFecha: tDate; tOrigen: TComponent);
var
  qryBitacora: tzReadOnlyQuery;
  iRecord: Word;
  dAvanceObra: Currency;
  dAvancePartida: Currency;
begin
  qryBitacora := tzReadOnlyQuery.Create(tOrigen);
  qryBitacora.Connection := connection.zConnection;


    {29/02/2010 : adal , condicion de wbs, HECHO}
  qryBitacora.Active := False;
  qryBitacora.SQL.Clear;
//    qryBitacora.SQL.Add ( 'Select a.sWbs, a.sNumeroActividad, a.dCantidadAnexo, a.dPonderado, Sum(b.dCantidad) as dCantidad From bitacoradeactividades b ' +
//                          'INNER JOIN actividadesxanexo a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
//                          'Where b.sContrato = :contrato and b.dIdFecha = :Fecha And b.lAlcance = "No" group by b.sWbs order by a.iItemOrden' ) ;
//

  qryBitacora.SQL.Add('Select b.sWbs,b.sNumeroActividad, a.dCantidadAnexo, a.dPonderado , Sum(b.dCantidad) as dCantidad ' +
    '  From bitacoradeactividades b ' +
    '  inner join actividadesxorden ao ' +
    '    ON (b.sContrato = ao.sContrato And ao.sIdConvenio = "" and b.sNumeroOrden=ao.sNumeroOrden And b.sNumeroActividad = ao.sNumeroActividad and b.sWbs=ao.sWbs) ' +
    '  INNER JOIN actividadesxanexo a ' +
    '    ON (a.sContrato = ao.sContrato And a.sIdConvenio = ao.sIdConvenio And a.sNumeroActividad = ao.sNumeroActividad and a.sTipoActividad = ao.sTipoActividad   and ao.sWbsContrato=a.sWbs ) ' +
    '  Where b.sContrato =:contrato and b.dIdFecha = :fecha And b.lAlcance = "No" and ao.sTipoActividad = "Actividad" and ao.sIdConvenio=:convenio ' +
    '  group by ao.sWbs ' +
    '  order by ao.iItemOrden');


  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := sParamContrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := sParamConvenio;
  qryBitacora.Params.ParamByName('Fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('Fecha').Value := dParamFecha;
  qryBitacora.Open;
  while not qryBitacora.Eof do
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;  {adal, Modificar consulta, agregar wbs HECHO}
    connection.QryBusca.SQL.Add('Select sum(dCantidad) as dAcumulado From bitacoradeactividades ' +
      'Where sContrato = :contrato And sNumeroActividad = :Actividad and sWbs=:wbs And dIdFecha <= :Fecha Group By sNumeroActividad');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
    connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Actividad').Value := qryBitacora.FieldValues['sNumeroActividad'];
    connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value := qryBitacora.FieldValues['sWbs'];
    connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
    connection.QryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
    connection.QryBusca.Open;
    dAvancePartida := 0;
    if ((connection.QryBusca.FieldValues['dAcumulado'] - qryBitacora.FieldValues['dCantidad']) >= qryBitacora.FieldValues['dCantidadAnexo']) then
      dAvancePartida := 0
    else
      if qryBitacora.FieldValues['dCantidadAnexo'] > 0 then
      begin
        if (connection.QryBusca.FieldValues['dAcumulado'] > qryBitacora.FieldValues['dCantidadAnexo']) then
          dAvancePartida := ((qryBitacora.FieldValues['dCantidadAnexo'] - (connection.QryBusca.FieldValues['dAcumulado'] - qryBitacora.FieldValues['dCantidad'])) * 100) / qryBitacora.FieldValues['dCantidadAnexo']
        else
          dAvancePartida := (qryBitacora.FieldValues['dCantidad'] * 100) / qryBitacora.FieldValues['dCantidadAnexo'];
        dAvanceObra := dAvanceObra + (dAvancePartida * qryBitacora.FieldValues['dPonderado']);
//            dAvanceObra := trunc(dAvanceObra * 100) / 10000 ;
        dAvanceObra := (dAvancePartida * qryBitacora.FieldValues['dPonderado']);
      end;

    try
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance + :Avance  ' +
        'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdConvenio = :convenio And InStr(:wbs, concat(sWbs,".")) > 0');
      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').value := '';
      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('convenio').value := sParamConvenio;
      connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
      connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
      connection.zCommand.Params.ParamByName('wbs').value := QryBitacora.FieldValues['sWbs'];
      connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Avance').value := dAvanceObra;
      connection.zCommand.ExecSQL;
    except
      MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de paquetes', mtWarning, [mbOk], 0);
    end;
    QryBitacora.Next;
  end;

  qryBitacora.Active := False;
  qryBitacora.SQL.Clear;
   {29/02/2010 : adal , condicion de wbs, la uni  con actividadesxorden primero
   para que concuerde el wbs de la orden con el de bitacora, agrupoar por wbs,HECHO}
  qryBitacora.SQL.Add('Select a.sWbs, a.sNumeroActividad, a.dCantidadAnexo, a.dPonderado, b.iFase, Sum(b.dCantidad) as dCantidad From bitacoradealcances b ' +
    'INNER JOIN actividadesxorden ao ON (b.sContrato = ao.sContrato  and b.sNumeroOrden=ao.sNumeroOrden And b.sNumeroActividad = ao.sNumeroActividad and b.sWbs=ao.sWbs) ' +
    'INNER JOIN actividadesxanexo a ON (a.sContrato = ao.sContrato And a.sIdConvenio = ao.sIdConvenio And a.sNumeroActividad = ao.sNumeroActividad and a.sWbs=ao.sWbsContrato) ' +
    'Where b.sContrato = :contrato and b.dIdFecha = :Fecha  And ao.sIdConvenio = :Convenio and ao.sTipoActividad = "Actividad" '+
    'group by b.sNumeroActividad,b.sWbs, b.iFase order by a.iItemOrden, b.iFase');
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := sParamContrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := sParamConvenio;
  qryBitacora.Params.ParamByName('Fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('Fecha').Value := dParamFecha;
  qryBitacora.Open;
  while not QryBitacora.Eof do
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;   {adal, modificar la condicion del wbs tambien aqui HECHO}
    connection.QryBusca.SQL.Add('Select Sum(b.dCantidad) as dCantidad, a.dAvance From bitacoradealcances b ' +
      'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
      'Where b.sContrato = :Contrato and b.sWbs=:wbs And b.sNumeroActividad = :Actividad And b.iFase = :Fase And b.dIdFecha <= :Fecha  Group By b.sNumeroActividad');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
    connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Actividad').Value := qryBitacora.FieldValues['sNumeroActividad'];
    connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value := qryBitacora.FieldValues['sWbs'];
    connection.QryBusca.Params.ParamByName('Fase').DataType := ftInteger;
    connection.QryBusca.Params.ParamByName('Fase').Value := qryBitacora.FieldValues['iFase'];
    connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
    connection.QryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
    connection.QryBusca.Open;
    dAvancePartida := 0;
    if connection.QryBusca.RecordCount > 0 then
    begin
      dAvancePartida := connection.QryBusca.FieldValues['dCantidad'];
      if (dAvancePartida - qryBitacora.FieldValues['dCantidad']) >= qryBitacora.FieldValues['dCantidadAnexo'] then
        dAvancePartida := 0
      else
        if dAvancePartida > qryBitacora.FieldValues['dCantidadAnexo'] then
          dAvancePartida := ((qryBitacora.FieldValues['dCantidadAnexo'] - (dAvancePartida - qryBitacora.FieldValues['dCantidad'])) * connection.QryBusca.FieldValues['dAvance']) / qryBitacora.FieldValues['dCantidadAnexo']
        else
          dAvancePartida := (qryBitacora.FieldValues['dCantidad'] * connection.QryBusca.FieldValues['dAvance']) / qryBitacora.FieldValues['dCantidadAnexo'];
    end;
//       dAvanceObra := dAvanceObra + (dAvancePartida * qryBitacora.FieldValues['dPonderado']) ;
//            dAvanceObra := trunc(dAvanceObra * 100) / 10000 ;
    dAvanceObra := (dAvancePartida * qryBitacora.FieldValues['dPonderado']);
    try
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance + :Avance  ' +
        'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdConvenio = :convenio And InStr(:wbs, concat(sWbs,".")) > 0');
      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').value := '';
      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('convenio').value := sParamConvenio;
      connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
      connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
      connection.zCommand.Params.ParamByName('wbs').value := QryBitacora.FieldValues['sWbs'];
      connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Avance').value := dAvanceObra;
      connection.zCommand.ExecSQL;
    except
      on e:Exception do
      MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de paquetes' + e.Message, mtWarning, [mbOk], 0);
    end;
    qryBitacora.Next
  end;

  QryBitacora.Destroy;
end;



////

function sfnFechaFinal(iParamMes, iParamAnno: Integer): string;
var
  sFechaTermino: string;
begin
  if (iParamMes + 1) <= 9 then
    sFechaTermino := '01/0' + Trim(IntToStr(iParamMes + 1)) + '/' + Trim(IntToStr(iParamAnno))
  else
    if (iParamMes + 1) <= 12 then
      sFechaTermino := '01/' + Trim(IntTostr(iParamMes + 1)) + '/' + Trim(IntToStr(iParamAnno))
    else
      sFechaTermino := '01/01/' + Trim(IntToStr(iParamAnno + 1));
  result := DateToStr(strToDate(sFechaTermino) - 1);
end;


procedure procActualizaJornadas(sParamContrato, sParamOrden: string; dParamFecha: tDate; tOrigen: TComponent);
var
  QryProcPersonal: tzReadOnlyQuery;
  iPersonalTotal: Integer;
  sMuertoReal: string;
begin
    // Actualizo los tiempos muertos de todos las ordenes de trabajo ...
    // Proceso correcto para el calculo de los tiempos muertos ...
    // Tiempos involucrados en todo el contrato
    // Solo reportes diarios con turno diferente a Tierra
    // Total de Personal del Dia por Contrato (Excluye Turnos en Tierra)
  QryProcPersonal := tzReadOnlyQuery.Create(tOrigen);
  QryProcPersonal.Connection := connection.zConnection;

  iPersonalTotal := 0;
  QryProcPersonal.Active := False;
  QryProcPersonal.SQL.Clear;
  QryProcPersonal.SQL.Add('Select SUM(b.dCantidad) as dTotal From bitacoradepersonal b INNER JOIN bitacoradeactividades b2 ON ' +
    '(b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha and b.iIdDiario = b2.iIdDiario) ' +
    'INNER JOIN turnos t ON (b2.sContrato = t.sContrato And b2.sIdTurno = t.sIdTurno And t.sOrigenTierra = "No") ' +
    'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha Group By b2.sContrato');
  QryProcPersonal.Params.ParamByName('Contrato').DataType := ftString;
  QryProcPersonal.Params.ParamByName('Contrato').Value := sParamContrato;
  QryProcPersonal.Params.ParamByName('Fecha').DataType := ftDate;
  QryProcPersonal.Params.ParamByName('Fecha').Value := dParamFecha;
  QryProcPersonal.Open;
  if QryProcPersonal.RecordCount > 0 then
    iPersonalTotal := QryProcPersonal.FieldValues['dTotal'];

  //Diavaz: Tomar la cantidad de personal que incia como caluclo del T.M. by ivan 2012
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('Select sum(dFrente) as dFrente from jornadasdiarias where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sTipo = "Disponibilidad del Sitio" group by sContrato');
  connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Contrato').Value    := sParamContrato;
  connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate;
  connection.QryBusca.Params.ParamByName('Fecha').Value       := dParamFecha;
  connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString;
  connection.QryBusca.Params.ParamByName('Orden').Value       := sParamOrden;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
     iPersonalTotal := connection.QryBusca.FieldValues['dFrente'];

  QryProcPersonal.Active := False;
  QryProcPersonal.SQL.Clear;
  QryProcPersonal.SQL.Add('Select r.sNumeroOrden, r.dIdFecha, r.sIdTurno, r.sTiempoMuerto, r.iPersonal From reportediario r ' +
    'INNER JOIN turnos t ON (r.sContrato = t.sContrato And r.sIdTurno = t.sIdTurno And t.sOrigenTierra = "No") ' +
    'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha');
  QryProcPersonal.Params.ParamByName('Contrato').DataType := ftString;
  QryProcPersonal.Params.ParamByName('Contrato').Value := sParamContrato;
  QryProcPersonal.Params.ParamByName('Fecha').DataType := ftDate;
  QryProcPersonal.Params.ParamByName('Fecha').Value := dParamFecha;
  QryProcPersonal.Open;
  while not QryProcPersonal.Eof do
  begin
    if iPersonalTotal = 0 then
      sMuertoReal := sTiempoMuerto(QryProcPersonal.FieldValues['sTiempoMuerto'], 1, 1, 1)
    else
      sMuertoReal := sTiempoMuerto(QryProcPersonal.FieldValues['sTiempoMuerto'], iPersonalTotal, QryProcPersonal.FieldValues['iPersonal'], 1);

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE reportediario SET sTiempoMuertoReal = :Real ' +
      'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno');
    connection.zCommand.Params.ParamByName('Real').DataType := ftString;
    connection.zCommand.Params.ParamByName('Real').value := sMuertoReal;
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').value := sParamContrato;
    connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
    connection.zCommand.Params.ParamByName('Orden').value := QryProcPersonal.FieldValues['sNumeroOrden'];
    connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
    connection.zCommand.Params.ParamByName('Fecha').value := QryProcPersonal.FieldValues['dIdFecha'];
    connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
    connection.zCommand.Params.ParamByName('Turno').value := QryProcPersonal.FieldValues['sIdTurno'];
    connection.zCommand.ExecSQL;
    QryProcPersonal.Next;
  end;
  QryProcPersonal.Destroy;

end;

procedure procInicializaJornadas(sParamContrato, sParamOrden, sParamTurno, sParamJornada: string; dParamFecha: tDate; tOrigen: TComponent);
var
  QryProcPersonal: tzReadOnlyQuery;
  QryProcJornadas: tzReadOnlyQuery;
  sMuerto,
    sTiempoDisponible,
    sTiempoMuerto1,
    sTiempoMuerto2: string;

  sTiempoEfectivoReal,
    sTiempoMuertoReal,
    sTiempoAdicional,
    sTiempoEfectivo: string;

  iPersonal: Integer;
  dPersonalAfectado: Integer;
begin
  QryProcJornadas := tzReadOnlyQuery.Create(tOrigen);
  QryProcJornadas.Connection := connection.zConnection;

  QryProcPersonal := tzReadOnlyQuery.Create(tOrigen);
  QryProcPersonal.Connection := connection.zConnection;

  iPersonal := 0;

  //Primero el Total de Personal de la Orden (Excluye Turnos en Tierra Y PERSONAL DE PEP)....
  QryProcPersonal.Active := False;
  QryProcPersonal.SQL.Clear;
  QryProcPersonal.SQL.Add('Select SUM(b.dCantidad) as dTotal From bitacoradepersonal b ' +
    'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha ' +
    'and b.iIdDiario = b2.iIdDiario) ' +
    'INNER JOIN reportediario r on (b2.sContrato = r.sContrato and b2.sNumeroOrden = r.sNumeroOrden ' +
    'And b2.dIdFecha = r.dIdFecha And b2.sIdTurno = r.sIdTurno And r.sNumeroOrden = :Orden And r.sIdTurno = :turno)' +
    'INNER JOIN turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno And t.sOrigenTierra = "No") ' +
    'INNER JOIN personal p on (p.sContrato=b.sContrato And ' +
    'p.sIdPersonal=b.sIdPersonal and  p.lAplicaTM="Si" ) ' +
    'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha Group By b2.sContrato');
  QryProcPersonal.Params.ParamByName('Contrato').DataType := ftString;
  QryProcPersonal.Params.ParamByName('Contrato').Value    := sParamContrato;
  QryProcPersonal.Params.ParamByName('Orden').DataType    := ftString;
  QryProcPersonal.Params.ParamByName('Orden').Value       := sParamOrden;
  QryProcPersonal.Params.ParamByName('Turno').DataType    := ftString;
  QryProcPersonal.Params.ParamByName('Turno').Value       := sParamTurno;
  QryProcPersonal.Params.ParamByName('Fecha').DataType    := ftDate;
  QryProcPersonal.Params.ParamByName('Fecha').Value       := dParamFecha;
  QryProcPersonal.Open;

  if QryProcPersonal.RecordCount > 0 then
     iPersonal := QryProcPersonal.FieldValues['dTotal'];

  //Ahora Actualizo las Jornadas del Dia ...
  // Proceso correcto para el calculo de los tiempos muertos ...
  // Tiempos involucrados en la orden de trabajo ...
  sTiempoDisponible := '00:00';
  sTiempoMuerto1    := '00:00';
  sTiempoMuerto2    := '00:00';
  sMuerto           := '00:00';

  QryProcJornadas.Active := False;
  QryProcJornadas.SQL.Clear;
  QryProcJornadas.SQL.Add('Select sContrato, dIdFecha, sNumeroOrden, sIdTurno, sArea, sTipo, sIdTipoMovimiento, ' +
    'sIdPernocta, sHoraSalida, sIdEmbarcacion, sHoraInicio, sHoraFinal, sTiempoComida, ' +
    'dFrente, sJornada From jornadasdiarias Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdTurno = :Turno order by sHoraInicio ');
  QryProcJornadas.Params.ParamByName('Contrato').DataType := ftString;
  QryProcJornadas.Params.ParamByName('Contrato').Value    := sParamContrato;
  QryProcJornadas.Params.ParamByName('Fecha').DataType    := ftDate;
  QryProcJornadas.Params.ParamByName('Fecha').Value       := dParamFecha;
  QryProcJornadas.Params.ParamByName('Orden').DataType    := ftString;
  QryProcJornadas.Params.ParamByName('Orden').Value       := sParamOrden;
  QryProcJornadas.Params.ParamByName('Turno').DataType    := ftString;
  QryProcJornadas.Params.ParamByName('Turno').Value       := sParamTurno;
  QryProcJornadas.Open;

  while not QryProcJornadas.Eof do
  begin
      if QryProcJornadas.FieldValues['sTipo'] = 'Disponibilidad del Sitio' then
        //Diavaz: Tomar la cantidad de personal que incia como caluclo del T.M. by ivan 2012
        iPersonal := QryProcJornadas.FieldValues['dFrente'];

      {Esto es para aplicar configuracion para el calculo de los tiempos muertos.. Nuevo calculo 16 Febrero 2011}
      dPersonalAfectado := QryProcJornadas.FieldValues['dFrente'];

      if connection.configuracion.FieldValues['lTiempoMuertoTurnos'] = 'Si' then
        if QryProcJornadas.FieldValues['sTipo'] = 'Tiempo Inactivo' then
          dPersonalAfectado := QryProcJornadas.FieldValues['dFrente'] * 2;
          {se reemplaza la dPersonalAfectado := QryProcJornadas.FieldValues['dFrente']  por dPersonal Afectado..
           -- termina validacion de configuracion ... 16 Febreron de 2011}
      if iPersonal = 0 then
        if QryProcJornadas.FieldValues['dFrente'] > 0 then
          sMuerto := sTiempoMuerto(QryProcJornadas.FieldValues['sJornada'], dPersonalAfectado, dPersonalAfectado, 1)
        else
          sMuerto := sTiempoMuerto(QryProcJornadas.FieldValues['sJornada'], 1, 1, 1)
      else
        sMuerto := sTiempoMuerto(QryProcJornadas.FieldValues['sJornada'], iPersonal, dPersonalAfectado, 1);

      if QryProcJornadas.FieldValues['sTipo'] <> 'Tiempo Inactivo' then
        sTiempoDisponible := sfnSumaHoras(sTiempoDisponible, sMuerto)
      else
        if QryProcJornadas.FieldValues['sIdTipoMovimiento'] <> 'TMDS' then
            sTiempoMuerto2 := sfnSumaHoras(sTiempoMuerto2, sMuerto)
        else
             sTiempoMuerto1 := sfnSumaHoras(sTiempoMuerto1, sMuerto);

      with connection do
      begin
        try
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear; //loboazul27
          connection.zCommand.SQL.Add('Update jornadasdiarias SET dPersonal = :Personal, sTiempoMuerto = :Muerto Where ' +
            '(sContrato = :Contrato And dIdFecha = :fecha And sNumeroOrden = :orden And sIdTurno = :Turno And ' +
            'sArea = :Area And sTipo = :Tipo And ' +
            '((not :TipoMovto is null and sIdTipoMovimiento = :TipoMovto) or (:TipoMovto is null and sIdTipoMovimiento is null)) And ' +
            '( (not :Pernocta is null and sIdPernocta = :Pernocta) or (:Pernocta is null and sIdPernocta is null)) and sHoraSalida = :Salida And ' +
            '((not :Embarcacion is null and sidembarcacion=:Embarcacion) or (:Embarcacion is null and sidembarcacion is null)) ' +
            'And sHoraInicio = :Inicio And sHoraFinal = :Final)');
          zCommand.Params.ParamByName('Personal').DataType := ftInteger;
          zCommand.Params.ParamByName('Personal').value := iPersonal;
          zCommand.Params.ParamByName('muerto').DataType := ftString;
          zCommand.Params.ParamByName('muerto').value := sMuerto;
          zCommand.Params.ParamByName('contrato').DataType := ftString;
          zCommand.Params.ParamByName('contrato').value := QryProcJornadas.FieldValues['sContrato'];
          zCommand.Params.ParamByName('fecha').DataType := ftDate;
          zCommand.Params.ParamByName('fecha').value := QryProcJornadas.FieldValues['dIdFecha'];
          zCommand.Params.ParamByName('orden').DataType := ftString;
          zCommand.Params.ParamByName('orden').value := QryProcJornadas.FieldValues['sNumeroOrden'];
          zCommand.Params.ParamByName('turno').DataType := ftString;
          zCommand.Params.ParamByName('turno').value := QryProcJornadas.FieldValues['sIdTurno'];
          zCommand.Params.ParamByName('area').DataType := ftString;
          zCommand.Params.ParamByName('area').value := QryProcJornadas.FieldValues['sArea'];
          zCommand.Params.ParamByName('tipo').DataType := ftString;
          zCommand.Params.ParamByName('tipo').value := QryProcJornadas.FieldValues['sTipo'];
          zCommand.Params.ParamByName('tipoMovto').DataType := ftString;
          zCommand.Params.ParamByName('tipoMovto').value := QryProcJornadas.FieldValues['sIdTipoMovimiento'];
          zCommand.Params.ParamByName('Pernocta').DataType := ftString;
          zCommand.Params.ParamByName('Pernocta').value := QryProcJornadas.FieldValues['sIdPernocta'];
          zCommand.Params.ParamByName('Salida').DataType := ftString;
          zCommand.Params.ParamByName('Salida').value := QryProcJornadas.FieldValues['sHoraSalida'];
          zCommand.Params.ParamByName('Embarcacion').DataType := ftString;
          zCommand.Params.ParamByName('Embarcacion').value := QryProcJornadas.FieldValues['sIdEmbarcacion'];
          zCommand.Params.ParamByName('inicio').DataType := ftString;
          zCommand.Params.ParamByName('inicio').value := QryProcJornadas.FieldValues['sHoraInicio'];
          zCommand.Params.ParamByName('Final').DataType := ftString;
          zCommand.Params.ParamByName('Final').value := QryProcJornadas.FieldValues['sHoraFinal'];
          zCommand.ExecSQL;
        except
        end
     end;
     QryProcJornadas.Next;
  end;

  sTiempoEfectivo := '00:00';
  sTiempoEfectivoReal := '00:00';
  sTiempoMuertoReal := '00:00';
  sTiempoAdicional := '00:00';
  sTiempoEfectivo := sParamJornada;

    // Sumo el resultado de los 2 tiempos muertos, por indisponibilidad y los otros tiempos muertos intermedios
  sTiempoMuertoReal := sfnSumaHoras(sTiempoMuerto1, sTiempoMuerto2);
    // Si mi tiempo muerto es mayor que la jornada ( 8 o 12 horas) entonces lo igualo a la jornada
  if sTiempoMuertoReal > sTiempoEfectivo then
    sTiempoMuertoReal := sTiempoEfectivo
  else
    if sTiempoDisponible > sTiempoEfectivo then
    begin
            // Si las horas de disponibilidad de sitio es mayor a la jornada, hay tiempo adicional
            // Calculo el tiempo adicional por disponibilidad del sitio, osea cuando trabajaron mas de el tiempo efectivo
      sTiempoEfectivoReal := sfnRestaHoras(sTiempoDisponible, sTiempoMuertoReal);
      sTiempoAdicional := sfnRestaHoras(sTiempoDisponible, sParamJornada)
    end
    else
      if sTiempoMuertoReal <> '00:00' then
        sTiempoEfectivoReal := sfnRestaHoras(sTiempoEfectivo, sTiempoMuertoReal)
      else
        sTiempoEfectivoReal := sTiempoDisponible;

//
////  If sTiempoEfectivoReal <> '00:00' Then
//  if sTiempoEfectivoReal > sTiempoEfectivo then
//    sTiempoMuertoReal := '00:00'
//  else
//    sTiempoMuertoReal := sfnRestaHoras(sTiempoEfectivo, sTiempoEfectivoReal);

  if sTiempoMuertoReal > sParamJornada then
    sTiempoMuertoReal := sParamJornada;

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Update reportediario SET sTiempoMuerto = :Muerto, ' +
    'sTiempoEfectivo = :Efectivo, sTiempoAdicional = :Adicional, iPersonal = :Personal ' +
    'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
  connection.zCommand.Params.ParamByName('Muerto').DataType := ftString;
  if iPersonal = 0 then
    connection.zCommand.Params.ParamByName('Muerto').value := '00:00'
  else
    connection.zCommand.Params.ParamByName('Muerto').value := sTiempoMuertoReal;

  connection.zCommand.Params.ParamByName('Efectivo').DataType := ftString;
  connection.zCommand.Params.ParamByName('Efectivo').value := sTiempoEfectivoReal;
  connection.zCommand.Params.ParamByName('Adicional').DataType := ftString;
  connection.zCommand.Params.ParamByName('Adicional').value := sTiempoAdicional;
  connection.zCommand.Params.ParamByName('Personal').DataType := ftInteger;
  connection.zCommand.Params.ParamByName('Personal').value := iPersonal;
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
  connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
  connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
  connection.zCommand.Params.ParamByName('Turno').Value := sParamTurno;
  connection.zCommand.ExecSQL;

  QryProcPersonal.Destroy;
  QryProcJornadas.Destroy;

end;

function ifnJornadaTotal(sParamContrato: string; dParamFInicio, dParamFFinal: tDate; tOrigen: TComponent): Integer;
var
  QryJornada: tzReadOnlyQuery;
  sMyDia: string;
  days: array[1..7] of string;
  iJornada: Integer;
  menosDiasInicio: Integer;
  menosDiasFinal: Integer;
  Semanas: Variant;
  iDia: Byte;
begin
  days[1] := 'Domingo';
  days[2] := 'Lunes';
  days[3] := 'Martes';
  days[4] := 'Miercoles';
  days[5] := 'Jueves';
  days[6] := 'Viernes';
  days[7] := 'Sabado';

  if DayOfWeek(dParamFInicio) > 1 then
    menosDiasInicio := 8 - DayOfWeek(dParamFInicio)
  else
    menosDiasInicio := 0;
  if DayOfWeek(dParamFFinal) < 7 then
    menosDiasFinal := DayOfWeek(dParamFFinal)
  else
    menosDiasFinal := 0;
  Semanas := (dParamFFinal - dParamFInicio) + 1;
  Semanas := (Semanas - menosDiasInicio - menosDiasFinal) div 7;
  if Semanas <= 0 then
  begin
    iJornada := 0;
    while dParamFInicio <= dParamFFinal do
    begin
      QryJornada := tzReadOnlyQuery.Create(tOrigen);
      QryJornada.Connection := connection.zConnection;
      QryJornada.Active := False;
      QryJornada.SQL.Clear;
      QryJornada.SQL.Add('Select iJornada from diasespeciales Where sContrato = :Contrato And dIdFecha = :Fecha');
      QryJornada.Params.ParamByName('Contrato').DataType := ftString;
      QryJornada.Params.ParamByName('Contrato').Value := sParamContrato;
      QryJornada.Params.ParamByName('Fecha').DataType := ftDate;
      QryJornada.Params.ParamByName('Fecha').Value := dParamFInicio;
      QryJornada.Open;
      sMyDia := days[DayOfWeek(dParamFInicio)];
      if QryJornada.RecordCount > 0 then
        iJornada := iJornada + QryJornada.FieldValues['iJornada']
      else
        if sMyDia = 'Lunes' then
          iJornada := iJornada + connection.configuracion.FieldValues['iJLunes']
        else
          if sMyDia = 'Martes' then
            iJornada := iJornada + connection.configuracion.FieldValues['iJMartes']
          else
            if sMyDia = 'Miercoles' then
              iJornada := iJornada + connection.configuracion.FieldValues['iJMiercoles']
            else
              if sMyDia = 'Jueves' then
                iJornada := iJornada + connection.configuracion.FieldValues['iJJueves']
              else
                if sMyDia = 'Viernes' then
                  iJornada := iJornada + connection.configuracion.FieldValues['iJViernes']
                else
                  if sMyDia = 'Sabado' then
                    iJornada := iJornada + connection.configuracion.FieldValues['iJSabado']
                  else
                    if sMyDia = 'Domingo' then
                      iJornada := iJornada + connection.configuracion.FieldValues['iJDomingo'];
      dParamFInicio := dParamFInicio + 1
    end;
//        QryJornada.Destroy ;
  end
  else
  begin
    iJornada := 0;
    if menosDiasInicio > 0 then
      for iDia := DayOfWeek(dParamFInicio) to 7 do
      begin
        sMyDia := days[iDia];
        if sMyDia = 'Lunes' then
          iJornada := iJornada + connection.configuracion.FieldValues['iJLunes']
        else
          if sMyDia = 'Martes' then
            iJornada := iJornada + connection.configuracion.FieldValues['iJMartes']
          else
            if sMyDia = 'Miercoles' then
              iJornada := iJornada + connection.configuracion.FieldValues['iJMiercoles']
            else
              if sMyDia = 'Jueves' then
                iJornada := iJornada + connection.configuracion.FieldValues['iJJueves']
              else
                if sMyDia = 'Viernes' then
                  iJornada := iJornada + connection.configuracion.FieldValues['iJViernes']
                else
                  if sMyDia = 'Sabado' then
                    iJornada := iJornada + connection.configuracion.FieldValues['iJSabado']
                  else
                    if sMyDia = 'Domingo' then
                      iJornada := iJornada + connection.configuracion.FieldValues['iJDomingo'];
      end;

    if menosDiasFinal > 0 then
      for iDia := 1 to DayOfWeek(dParamFFinal) do
      begin
        sMyDia := days[iDia];
        if sMyDia = 'Lunes' then
          iJornada := iJornada + connection.configuracion.FieldValues['iJLunes']
        else
          if sMyDia = 'Martes' then
            iJornada := iJornada + connection.configuracion.FieldValues['iJMartes']
          else
            if sMyDia = 'Miercoles' then
              iJornada := iJornada + connection.configuracion.FieldValues['iJMiercoles']
            else
              if sMyDia = 'Jueves' then
                iJornada := iJornada + connection.configuracion.FieldValues['iJJueves']
              else
                if sMyDia = 'Viernes' then
                  iJornada := iJornada + connection.configuracion.FieldValues['iJViernes']
                else
                  if sMyDia = 'Sabado' then
                    iJornada := iJornada + connection.configuracion.FieldValues['iJSabado']
                  else
                    if sMyDia = 'Domingo' then
                      iJornada := iJornada + connection.configuracion.FieldValues['iJDomingo'];
      end;

    iJornada := iJornada + (connection.configuracion.FieldValues['iJLunes'] * Semanas);
    iJornada := iJornada + (connection.configuracion.FieldValues['iJMartes'] * Semanas);
    iJornada := iJornada + (connection.configuracion.FieldValues['iJMiercoles'] * Semanas);
    iJornada := iJornada + (connection.configuracion.FieldValues['iJJueves'] * Semanas);
    iJornada := iJornada + (connection.configuracion.FieldValues['iJViernes'] * Semanas);
    iJornada := iJornada + (connection.configuracion.FieldValues['iJSabado'] * Semanas);
    iJornada := iJornada + (connection.configuracion.FieldValues['iJDomingo'] * Semanas);
  end;
  result := iJornada;

end;


function ifnJornadaDia(sParamContrato: string; dParamFecha: tDate; tOrigen: TComponent): Integer;
var
  QryJornada: tzReadOnlyQuery;
  sMyDia: string;
  days: array[1..7] of string;
  iJornada: Integer;
begin
  days[1] := 'Domingo';
  days[2] := 'Lunes';
  days[3] := 'Martes';
  days[4] := 'Miercoles';
  days[5] := 'Jueves';
  days[6] := 'Viernes';
  days[7] := 'Sabado';

  QryJornada := tzReadOnlyQuery.Create(tOrigen);
  QryJornada.Connection := connection.zConnection;
  QryJornada.Active := False;
  QryJornada.SQL.Clear;
  QryJornada.SQL.Add('Select iJornada from diasespeciales Where sContrato = :Contrato And dIdFecha = :Fecha');
  QryJornada.Params.ParamByName('Contrato').DataType := ftString;
  QryJornada.Params.ParamByName('Contrato').Value := sParamContrato;
  QryJornada.Params.ParamByName('Fecha').DataType := ftDate;
  QryJornada.Params.ParamByName('Fecha').Value := dParamFecha;
  QryJornada.Open;
  iJornada := 12;
  sMyDia := days[DayOfWeek(dParamFecha)];
  if QryJornada.RecordCount > 0 then
    iJornada := QryJornada.FieldValues['iJornada']
  else
    if sMyDia = 'Lunes' then
      iJornada := connection.configuracion.FieldValues['iJLunes']
    else
      if sMyDia = 'Martes' then
        iJornada := connection.configuracion.FieldValues['iJMartes']
      else
        if sMyDia = 'Miercoles' then
          iJornada := connection.configuracion.FieldValues['iJMiercoles']
        else
          if sMyDia = 'Jueves' then
            iJornada := connection.configuracion.FieldValues['iJJueves']
          else
            if sMyDia = 'Viernes' then
              iJornada := connection.configuracion.FieldValues['iJViernes']
            else
              if sMyDia = 'Sabado' then
                iJornada := connection.configuracion.FieldValues['iJSabado']
              else
                if sMyDia = 'Domingo' then
                  iJornada := connection.configuracion.FieldValues['iJDomingo'];
  result := iJornada;
  QryJornada.Destroy;
end;

//Funcion que determina si es numero o Cadena... Generando el numero como cadena..

function sfnNewItem(sNumeroActividad: string): string;
var
  cad,
    cadnum,
    cadItem: string;
  x, i, num, numero,
    iNum: integer;
  numItem: longint;
  lNumero, lSimbolo: boolean;
  Multiplo: array[1..5] of Integer;
begin
     //Inicializamos el Array con los Multiplos..
  Multiplo[1] := 1000;
  Multiplo[2] := 100;
  Multiplo[3] := 10;
  Multiplo[4] := 1;

     //Primero verificamos la actividad para saber si es un numero o una cadena...
  cad := Trim(sNumeroActividad);
  i := length(cad);
  x := 1;
  iNum := 1;
  cadnum := '';
  lSimbolo := false;
  cadItem := '';
  numItem := 0;
  while x <= i do
  begin
    try
      numero := StrToInt(copy(cad, x, 1));
      lNumero := True;
      lSimbolo := True;
    except
      lNumero := False;
    end;

    if lNumero then
      cadnum := cadnum + copy(cad, x, 1)
    else
    begin
      if cadnum <> '' then
      begin
        numItem := numItem + (STrToInt(cadnum) * Multiplo[iNum]);
        cadItem := IntToStr(numItem);
        cadnum := '';
        lSimbolo := True;

        if iNum < 4 then
          inc(iNum);
      end;
    end;

    Inc(x);
  end;

  if (cadnum <> '') and (lSimbolo) then
    numItem := numItem + (STrToInt(cadnum) * Multiplo[iNum]);

     //Ahora se intenta convertir a numero la cadena obtenida..
  try
    if lSimbolo then
    begin
      cad := IntToStr(numItem);
      num := StrToInt(cad);
    end
    else
      num := StrToInt(cad);

    lNumero := True;
  except
    lNumero := False;
  end;

  if lNumero = False then
    sfnNewItem := cad
  else
    sfnNewItem := cad;
end;

//Funcion genera un numero de ordenmiento para la cadena,.

function sfnNewItemString(sNumeroActividad: string; dParamTamanio: integer): string;
var
  cad,
    cadItem: string;
  x, i, iNum: integer;
  caracter: char;
  numero: integer;
begin
    //Obetenos la logitud de la cadena...
  cad := sNumeroActividad;
  i := dParamTamanio;
  x := 1;
  while x <= i do
  begin
    caracter := cad[x];
    numero := numero + Integer(caracter);
    Inc(x);
  end;

  sfnNewItemString := IntToStr(numero);
end;


function sfnGeneraItem(dParamConsecutivo: longint): string;
var
  cad: string;
  numero: longint;
begin
     //Vamos a agregar los ceros a la cadena..
  numero := dParamConsecutivo;
  if numero < 10 then
    cad := '0000000' + IntToStr(numero);

  if (numero >= 10) and (numero < 100) then
    cad := '000000' + IntToStr(numero);

  if (numero >= 100) and (numero < 1000) then
    cad := '00000' + IntToStr(numero);

  if (numero >= 1000) and (numero < 10000) then
    cad := '0000' + IntToStr(numero);

  if (numero >= 10000) and (numero < 100000) then
    cad := '000' + IntToStr(numero);

  if (numero >= 100000) and (numero < 1000000) then
    cad := '00' + IntToStr(numero);

  if (numero >= 1000000) and (numero < 10000000) then
    cad := '0' + IntToStr(numero);

  if (numero >= 10000000) and (numero < 100000000) then
    cad := IntToStr(numero);

  sfnGeneraItem := cad;
end;

function sFnBuscaItem(sNumeroActividad, dParamWbsAnt, dParamPrimerItem, dParamTipo, dParamOrden, dParamTabla: string; iParamNivel: Byte): string;
var
  cad, cadnum, letra, partida, NuevaPartida, aux: string;
  x, i, y, NuevoNum, NuevoNumString, Numero, item,
    tAct, tPaq: integer;
  EsNumeroNuevo, EsNumero, lEntra: boolean;

   //Creacion de dos arreglos para la ordenacion de los items..
  MatrizNum: array of array of string;
  MatrizCad: array of array of string;
  indiceN, indiceC: integer;
  lineas: string;
begin
     {Hacemos el ItemOrden..}
  NuevaPartida := sfnNewItem(sNumeroActividad);

  if dParamTabla = 'actividadesxorden' then
    lineas := ' and sNumeroOrden =:Orden '
  else
    lineas := '';

     //Hacemos la busqueda del los items dependiendo el nivel..
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select sNumeroActividad, iItemOrden, sTipoActividad, sWbs from ' + dParamTabla + ' where sContrato =:Contrato and sIdConvenio =:Convenio ' + lineas + 'and iNivel =:Nivel and sWbsAnterior =:WbsAnt order by iItemOrden ');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').value := global_contrato;
  connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
  connection.zCommand.Params.ParamByName('Convenio').value := global_convenio;
  connection.zCommand.Params.ParamByName('WbsAnt').DataType := ftString;
  connection.zCommand.Params.ParamByName('WbsAnt').value := dParamWbsAnt;
  connection.zCommand.Params.ParamByName('Nivel').DataType := ftInteger;
  connection.zCommand.Params.ParamByName('Nivel').value := iParamNivel;
  if dParamTabla = 'actividadesxorden' then
  begin
    connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
    connection.zCommand.Params.ParamByName('Orden').value := dParamOrden;
  end;
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
  begin
         //Asignacion de tamaño a arreglos..
    setlength(MatrizNum, connection.zCommand.RecordCount + 1, 5);
    setlength(MatrizCad, connection.zCommand.RecordCount + 1, 5);

    indiceN := 0;
    indiceC := 0;

         {Primero checamos si contiene numeros la cadena procesada...}
    try
      NuevoNum := StrToInt(NuevaPartida);
      EsNumeroNuevo := True;
    except
      EsNumeroNuevo := False;
    end;

         //Obtenemos la cadena minima para ordenar...
    if dParamTipo = 'Actividad' then
    begin
      i := length(NuevaPartida);
      while not connection.zCommand.Eof do
      begin
        try
          NuevoNum := StrToInt(sfnNewItem(connection.zCommand.FieldValues['sNumeroActividad']))
        except
          if i > length(connection.zCommand.FieldValues['sNumeroActividad']) then
            i := length(connection.zCommand.FieldValues['sNumeroActividad']);
        end;
        connection.zCommand.Next;
      end;
    end
    else
      i := length(NuevaPartida);

    if EsNumeroNuevo then
    begin
      MatrizNum[indiceN, 1] := NuevaPartida;
      MatrizNum[indiceN, 2] := dParamTipo;
      inc(indiceN);
    end
    else
    begin
      cadnum := sfnNewItemString(NuevaPartida, i);
      MatrizCad[indiceC, 1] := cadnum;
      MatrizCad[indiceC, 2] := dParamTipo;
      inc(indiceC);
    end;

    lEntra := False;
    connection.zCommand.First;
    while not connection.zCommand.Eof do
    begin
      cad := connection.zCommand.FieldValues['iItemOrden'];
      partida := sfnNewItem(connection.zCommand.FieldValues['sNumeroActividad']);
      try
        Numero := StrToInt(partida);
        EsNumero := True;
      except
        EsNumero := False;
        if dParamTipo = 'Paquete' then
          i := length(partida);

        cadnum := sfnNewItemString(partida, i);
      end;

      if length(connection.zCommand.FieldValues['iItemOrden']) >= (9 * iParamNivel) then
      begin
        letra := copy(cad, (9 * iParamNivel) + 1, 8);

        if EsNumero then
        begin
          MatrizNum[indiceN, 0] := connection.zCommand.FieldValues['sWbs'];
          MatrizNum[indiceN, 1] := IntToStr(Numero);
          MatrizNum[indiceN, 2] := connection.zCommand.FieldValues['sTipoActividad'];
          MatrizNum[indiceN, 3] := letra;
          MatrizNum[indiceN, 4] := connection.zCommand.FieldValues['iItemOrden'];
          inc(indiceN);
        end
        else
        begin
          MatrizCad[indiceC, 0] := connection.zCommand.FieldValues['sWbs'];
          MatrizCad[indiceC, 1] := cadnum;
          MatrizCad[indiceC, 2] := connection.zCommand.FieldValues['sTipoActividad'];
          MatrizCad[indiceC, 3] := letra;
          MatrizCad[indiceC, 4] := connection.zCommand.FieldValues['iItemOrden'];
          inc(indiceC);
        end;
      end;
      connection.zCommand.Next;
    end;

        // O R D E N A M I E N T O  D E  I T E M S.......
        //ordenamiento de los vectores primero actividades luego paquetes..  primero para numeros,,
    for i := 0 to indiceN - 1 do
    begin
      for x := 0 to indiceN - 2 do
      begin
        for y := 0 to 4 do
        begin
          if y = 2 then
          begin
            if MatrizNum[x, y] > MatrizNum[x + 1, y] then
            begin
                            //Wbs
              aux := MatrizNum[x, y - 2];
              MatrizNum[x, y - 2] := MatrizNum[x + 1, y - 2];
              MatrizNum[x + 1, y - 2] := aux;
                            //Actividad
              aux := MatrizNum[x, y - 1];
              MatrizNum[x, y - 1] := MatrizNum[x + 1, y - 1];
              MatrizNum[x + 1, y - 1] := aux;
                            //Tipo
              aux := MatrizNum[x, y];
              MatrizNum[x, y] := MatrizNum[x + 1, y];
              MatrizNum[x + 1, y] := aux;
                            //ItemPart
              aux := MatrizNum[x, y + 1];
              MatrizNum[x, y + 1] := MatrizNum[x + 1, y + 1];
              MatrizNum[x + 1, y + 1] := aux;
                            //ItemOrden
              aux := MatrizNum[x, y + 2];
              MatrizNum[x, y + 2] := MatrizNum[x + 1, y + 2];
              MatrizNum[x + 1, y + 2] := aux;
            end;
          end;
        end;
      end;
    end;

    tAct := 0;
        //sacamos el total de actividades..
    for x := 0 to indiceN - 1 do
    begin
      if MatrizNum[x, 2] = 'Actividad' then
        Inc(tAct);
    end;

    tPaq := 0;
        //sacamos el total de paquetes..
    for x := 0 to indiceN - 1 do
    begin
      if MatrizNum[x, 2] = 'Paquete' then
        Inc(tPaq);
    end;

        //Ahora viene el subordenamiento primero de actividades..
    for i := 0 to tAct - 1 do
    begin
      for x := 0 to tAct - 2 do
      begin
        for y := 0 to 4 do
        begin
          if y = 1 then
          begin
            if StrToInt(MatrizNum[x, y]) > StrToInt(MatrizNum[x + 1, y]) then
            begin
                            //Wbs
              aux := MatrizNum[x, y - 1];
              MatrizNum[x, y - 1] := MatrizNum[x + 1, y - 1];
              MatrizNum[x + 1, y - 1] := aux;
                            //Actividad
              aux := MatrizNum[x, y];
              MatrizNum[x, y] := MatrizNum[x + 1, y];
              MatrizNum[x + 1, y] := aux;
                            //Tipo
              aux := MatrizNum[x, y + 1];
              MatrizNum[x, y + 1] := MatrizNum[x + 1, y + 1];
              MatrizNum[x + 1, y + 1] := aux;
                            //ItemPart
              aux := MatrizNum[x, y + 2];
              MatrizNum[x, y + 2] := MatrizNum[x + 1, y + 2];
              MatrizNum[x + 1, y + 2] := aux;
                            //ItemOrden
              aux := MatrizNum[x, y + 3];
              MatrizNum[x, y + 3] := MatrizNum[x + 1, y + 3];
              MatrizNum[x + 1, y + 3] := aux;
            end;
          end;
        end;
      end;
    end;

        //Ahora vien el subordenamiento por los paquetes..
    for i := tAct to tPaq - 1 do
    begin
      for x := tAct + 1 to tPaq - 2 do
      begin
        for y := 0 to 4 do
        begin
          if y = 1 then
          begin
            if StrToInt(MatrizNum[x, y]) > StrToInt(MatrizNum[x + 1, y]) then
            begin
                            //Wbs
              aux := MatrizNum[x, y - 1];
              MatrizNum[x, y - 1] := MatrizNum[x + 1, y - 1];
              MatrizNum[x + 1, y - 1] := aux;
                            //Actividad
              aux := MatrizNum[x, y];
              MatrizNum[x, y] := MatrizNum[x + 1, y];
              MatrizNum[x + 1, y] := aux;
                            //Tipo
              aux := MatrizNum[x, y + 1];
              MatrizNum[x, y + 1] := MatrizNum[x + 1, y + 1];
              MatrizNum[x + 1, y + 1] := aux;
                            //ItemPart
              aux := MatrizNum[x, y + 2];
              MatrizNum[x, y + 2] := MatrizNum[x + 1, y + 2];
              MatrizNum[x + 1, y + 2] := aux;
                            //ItemOrden
              aux := MatrizNum[x, y + 3];
              MatrizNum[x, y + 3] := MatrizNum[x + 1, y + 3];
              MatrizNum[x + 1, y + 3] := aux;
            end;
          end;
        end;
      end;
    end;

        // S I G U I E N T E   V E C T O R ....
        // ordenamiento de los vectores primero actividades luego paquetes..  primero para letras,,
    for i := 0 to indiceC - 1 do
    begin
      for x := 0 to indiceC - 2 do
      begin
        for y := 0 to 4 do
        begin
          if y = 2 then
          begin
            if MatrizCad[x, y] > MatrizCad[x + 1, y] then
            begin
                            //Wbs
              aux := MatrizCad[x, y - 2];
              MatrizCad[x, y - 2] := MatrizCad[x + 1, y - 2];
              MatrizCad[x + 1, y - 2] := aux;
                            //Actividad
              aux := MatrizCad[x, y - 1];
              MatrizCad[x, y - 1] := MatrizCad[x + 1, y - 1];
              MatrizCad[x + 1, y - 1] := aux;
                            //Tipo
              aux := MatrizCad[x, y];
              MatrizCad[x, y] := MatrizCad[x + 1, y];
              MatrizCad[x + 1, y] := aux;
                            //ItemPart
              aux := MatrizCad[x, y + 1];
              MatrizCad[x, y + 1] := MatrizCad[x + 1, y + 1];
              MatrizCad[x + 1, y + 1] := aux;
                            //ItemOrden
              aux := MatrizCad[x, y + 2];
              MatrizCad[x, y + 2] := MatrizCad[x + 1, y + 2];
              MatrizCad[x + 1, y + 2] := aux;
            end;
          end;
        end;
      end;
    end;

    tAct := 0;
        //sacamos el total de actividades..
    for x := 0 to indiceC - 1 do
    begin
      if MatrizCad[x, 2] = 'Actividad' then
        Inc(tAct);
    end;

    tPaq := 0;
        //sacamos el total de paquetes..
    for x := 0 to indiceC - 1 do
    begin
      if MatrizCad[x, 2] = 'Paquete' then
        Inc(tPaq);
    end;

        //Ahora viene el subordenamiento primero de actividades..
    for i := 0 to tAct - 1 do
    begin
      for x := 0 to tAct - 2 do
      begin
        for y := 0 to 4 do
        begin
          if y = 1 then
          begin
            if MatrizCad[x, y] > MatrizCad[x + 1, y] then
            begin
                            //Wbs
              aux := MatrizCad[x, y - 1];
              MatrizCad[x, y - 1] := MatrizCad[x + 1, y - 1];
              MatrizCad[x + 1, y - 1] := aux;
                            //Actividad
              aux := MatrizCad[x, y];
              MatrizCad[x, y] := MatrizCad[x + 1, y];
              MatrizCad[x + 1, y] := aux;
                            //Tipo
              aux := MatrizCad[x, y + 1];
              MatrizCad[x, y + 1] := MatrizCad[x + 1, y + 1];
              MatrizCad[x + 1, y + 1] := aux;
                            //ItemPart
              aux := MatrizCad[x, y + 2];
              MatrizCad[x, y + 2] := MatrizCad[x + 1, y + 2];
              MatrizCad[x + 1, y + 2] := aux;
                            //ItemOrden
              aux := MatrizCad[x, y + 3];
              MatrizCad[x, y + 3] := MatrizCad[x + 1, y + 3];
              MatrizCad[x + 1, y + 3] := aux;
            end;
          end;
        end;
      end;
    end;

        //Ahora vien el subordenamiento por los paquetes..
    for i := tAct + 1 to tPaq - 1 do
    begin
      for x := tAct + 1 to tPaq - 2 do
      begin
        for y := 0 to 4 do
        begin
          if y = 1 then
          begin
            if MatrizCad[x, y] > MatrizCad[x + 1, y] then
            begin
                            //Wbs
              aux := MatrizCad[x, y - 1];
              MatrizCad[x, y - 1] := MatrizCad[x + 1, y - 1];
              MatrizCad[x + 1, y - 1] := aux;
                            //Actividad
              aux := MatrizCad[x, y];
              MatrizCad[x, y] := MatrizCad[x + 1, y];
              MatrizCad[x + 1, y] := aux;
                            //Tipo
              aux := MatrizCad[x, y + 1];
              MatrizCad[x, y + 1] := MatrizCad[x + 1, y + 1];
              MatrizCad[x + 1, y + 1] := aux;
                            //ItemPart
              aux := MatrizCad[x, y + 2];
              MatrizCad[x, y + 2] := MatrizCad[x + 1, y + 2];
              MatrizCad[x + 1, y + 2] := aux;
                            //ItemOrden
              aux := MatrizCad[x, y + 3];
              MatrizCad[x, y + 3] := MatrizCad[x + 1, y + 3];
              MatrizCad[x + 1, y + 3] := aux;
            end;
          end;
        end;
      end;
    end;

        ////// AHORA SE GENERAN LOS CONSECUTIVOS DE ITEMS...
    for x := 0 to indiceN - 1 do
      MatrizNum[x, 3] := sfnGeneraItem(StrToInt(MatrizNum[x, 1]));

    Inc(x);
    for y := 0 to indiceC - 1 do
      MatrizCad[y, 3] := sfnGeneraItem(StrToInt(MatrizCad[y, 1]));

        // SE ACTUALIZAN LOS ITEMS EN LA BASE DE DATOS..
    for x := 0 to indiceN - 1 do
      ActualizaItems(MatrizNum[x, 0], MatrizNum[x, 1], MatrizNum[x, 2], MatrizNum[x, 3], MatrizNum[x, 4], dParamOrden, dParamTabla, iParamNivel);

    for x := 0 to indiceC - 1 do
      ActualizaItems(MatrizCad[x, 0], MatrizCad[x, 1], MatrizCad[x, 2], MatrizCad[x, 3], MatrizCad[x, 4], dParamOrden, dParamTabla, iParamNivel);

        //busca que ordenamiento le tocoo..
    sFnBuscaItem := LocalItem;
  end
  else
  begin
    if iParamNivel = 0 then
      cad := '00000001'
    else
    begin
      try
        Numero := StrToInt(NuevaPartida);
        cad := '.' + sfnGeneraItem(Numero);
      except
        Numero := StrToInt(sfnNewItemString(NuevaPartida, length(NuevaPartida)));
        cad := '.' + sfnGeneraItem(Numero);
      end;
    end;

    sFnBuscaItem := cad;
  end;

end;

procedure ActualizaItems(sParamWbs, sParamActividad, sParamTipo, sParamItem, sParamItemOrden, dParamOrden, dParamTabla: string; dParamNivel: Integer);
var
  cadnum, cad, linea: string;
  item, i: integer;
begin
  cad := sParamItemOrden;
  i := length(cad);
     //cadnum := copy(cad, 1, 8) + copy(cad, 9, ((dParamNivel) * 8)) + '.' + sParamItem + copy(cad, ((dParamNivel + 1 ) * 9), i);
  cadnum := copy(cad, 1, 8) + copy(cad, 9, ((dParamNivel - 1) * 9)) + '.' + sParamItem + copy(cad, ((dParamNivel + 1) * 9), i);

  if sParamWbs = '' then
    LocalItem := cadnum
  else
  begin
    if dParamTabla = 'actividadesxorden' then
      linea := ' and sNumeroOrden =:Orden '
    else
      linea := '';
          //Actulizacion del itemOrden...
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update ' + dParamTabla + ' set iItemOrden =:Item where sContrato =:Contrato ' +
      'and sIdConvenio =:Convenio ' + linea + 'and sWbs =:Wbs and sTipoActividad =:Tipo');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').value := global_contrato;
    connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Convenio').value := global_convenio;
    connection.QryBusca.Params.ParamByName('Wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Wbs').value := sParamWbs;
    connection.QryBusca.Params.ParamByName('Tipo').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Tipo').value := sParamTipo;
    connection.QryBusca.Params.ParamByName('Item').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Item').value := cadnum;
    if dParamTabla = 'actividadesxorden' then
    begin
      connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Orden').value := dParamOrden;
    end;
    connection.QryBusca.ExecSQL;
  end;
end;


function sFnInsertaItem(sNumeroActividad, dParamWbsAnt, dParamPrimerItem, dParamTipo, dParamTabla, dParamOrden, dParamAnexo: string; iParamNivel: Byte): string;
var
  cad, cadnum,
    letra,
    lineas,
    lineaAnexo: string;
  x, i, y, num: integer;
begin
  global_ErrorItem := False;
  if dParamTabla = 'actividadesxorden' then
  begin
    lineas := ' and sNumeroOrden =:Orden ';
    lineaAnexo := '';
  end
  else
  begin
    lineas := '';
    lineaAnexo := ' and sAnexo = :Anexo ';
  end;
     //Hacemos la busqueda del los items dependiendo el nivel..
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select iItemOrden from ' + dParamTabla + ' where sContrato =:Contrato and sIdConvenio =:Convenio ' + lineas + 'and iNivel =:Nivel and sWbsAnterior =:WbsAnt ' + lineaAnexo + ' order by iItemOrden ');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').value := global_contrato;
  connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
  connection.zCommand.Params.ParamByName('Convenio').value := global_convenio;
  connection.zCommand.Params.ParamByName('WbsAnt').DataType := ftString;
  connection.zCommand.Params.ParamByName('WbsAnt').value := dParamWbsAnt;
  connection.zCommand.Params.ParamByName('Nivel').DataType := ftInteger;
  connection.zCommand.Params.ParamByName('Nivel').value := iParamNivel;
  if dParamTabla = 'actividadesxorden' then
  begin
    connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
    connection.zCommand.Params.ParamByName('Orden').value := dParamOrden;
  end;
  if lineaAnexo <> '' then
  begin
    connection.zCommand.Params.ParamByName('Anexo').DataType := ftString;
    connection.zCommand.Params.ParamByName('Anexo').value := dParamAnexo;
  end;
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
  begin
    connection.zCommand.Last;
    cad := connection.zCommand.FieldValues['iItemOrden'];
    letra := copy(cad, (9 * (iParamNivel)) + 1, 8);
    try
      cadnum := sfnGeneraItem(StrToInt(letra) + 1);
    except
      MessageDLG('No se puede continuar, el nivel de la Partida ' + sNumeroActividad + ' no corresponde al Nivel del Paquete Anterior, Favor de Verificar.', mtInformation, [mbOk], 0);
      global_ErrorItem := True;
      exit;
    end;
    sFnInsertaItem := copy(cad, 1, (9 * iParamNivel)) + cadnum;
  end
  else
  begin
    if iParamNivel = 0 then
    begin
            //Buscamos si existen mas niveles ceros para diferenciar los anexos..
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select iItemOrden from ' + dParamTabla + ' where sContrato =:Contrato and sIdConvenio =:Convenio ' + lineas + ' and iNivel =:Nivel ');
      connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
      connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
      connection.zCommand.ParamByName('Nivel').AsInteger := iParamNivel;
      if dParamTabla = 'actividadesxorden' then
        connection.zCommand.ParamByName('Orden').AsString := dParamOrden;
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
        cad := '0000000' + IntToStr(connection.zCommand.RecordCount)
      else
        cad := '00000001';
    end
    else
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select iItemOrden from ' + dParamTabla + ' where sContrato =:Contrato and sIdConvenio =:Convenio ' + lineas + ' and iNivel =:Nivel and sWbs =:Wbs ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').value := global_contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').value := global_convenio;
      connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
      connection.zCommand.Params.ParamByName('Wbs').value := dParamWbsAnt;
      connection.zCommand.Params.ParamByName('Nivel').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Nivel').value := iParamNivel - 1;
      if dParamTabla = 'actividadesxorden' then
      begin
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').value := dParamOrden;
      end;
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
        cad := connection.zCommand.FieldValues['iItemOrden'] + '.00000001'
      else
      begin
                 //Buscamos si existen mas niveles ceros para diferenciar los anexos..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select iItemOrden from ' + dParamTabla + ' where sContrato =:Contrato and sIdConvenio =:Convenio ' + lineas + ' and iNivel =:Nivel ');
        connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
        connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
        connection.zCommand.ParamByName('Nivel').AsInteger := iParamNivel;
        if dParamTabla = 'actividadesxorden' then
          connection.zCommand.ParamByName('Orden').AsString := dParamOrden;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
          cad := '0000000' + IntToStr(connection.zCommand.RecordCount)
        else
          cad := '00000001';
      end;
    end;

    sFnInsertaItem := cad;
  end;

end;


function NumItems(const cadena: string; const separador: char): integer;
var
  res, Npos: integer;
  salir: boolean;
  cadAux: string;
begin
  res := 0;
  salir := false;
  cadAux := cadena;
  if cadaux <> '' then
  begin
    while not salir do
    begin
      Npos := pos(separador, cadAux);
      cadaux := copy(cadaux, Npos + 1, length(cadaux));
      if Npos <> 0 then
        Inc(res)
      else
      begin
        inc(res);
        salir := true;
      end;
    end;
  end;
  result := res;
end;

function TraerItem(const cadena: string; const separador: char; const posicion: integer): string;
var
  Item, CadAux: string;
  Npos, auxPos: integer;
  salir: boolean;
begin
  Item := '';
  cadAux := cadena;
  salir := false;
  auxPos := 0;
  while not salir do
  begin
    Npos := pos(separador, cadaux);
    if Npos <> 0 then
    begin
      item := copy(cadAux, 1, Npos - 1);
      cadaux := copy(cadaux, Npos + 1, length(cadaux));
      inc(auxPos);
      if auxpos = posicion then
        salir := true;
    end
    else
    begin
      inc(auxPos);
      if auxpos = posicion then
        item := cadAux
      else item := '';
      Salir := true;
    end;
  end;
  result := item;
end;

{Busqueda de informacion antes de editar o eliminar partidas en el sistema...}

function AntesEliminarAnexo(dParamActividad, dParamWbs, dParamTipo: string): string;
var x: Integer;
  convenio, cadena, sWbs, tabla, WbsFrente: string;
  datos: array[1..50, 1..2] of string;
  i: Integer;
begin
  AntesEliminarAnexo := '';
    {Asignacion de datos a la tabla}
     {Wbs,Actividad,Tipo,Descripcion,Convenio}
  datos[1][1] := 'actividadesxorden';

     {Wbs,Actividad,Tipo,Descripcion}
  datos[2][1] := 'actividadesxestimacion';
  datos[3][1] := 'estimacion_actividades';

     {Wbs,Actividad,Convenio}{No aplican estos se eliminan al cargar informacion..}
  datos[4][1] := 'anexosmensuales';
  datos[5][1] := 'distribuciondeanexo';

     {Wbs,Actividad}
  datos[6][1] := 'ordendecambio_p';
  datos[7][1] := 'estimacionxpartida';
  datos[8][1] := 'recursosanexo';
  datos[9][1] := 'recursosanexosnuevos';
  datos[10][1] := 'recursosbasicos';
  datos[11][1] := 'recursosbasicosnuevos';
  datos[12][1] := 'recursosequipo';
  datos[13][1] := 'recursosequiposnuevos';
  datos[14][1] := 'recursosherramientas';
  datos[15][1] := 'recursosherramientasnuevos';
  datos[16][1] := 'recursospersonal';
  datos[17][1] := 'recursospersonalnuevos';
  datos[18][1] := 'recursosinventario';

     {Actividad}//Se agrega Wbs  a estas tablas  {Solo aplican algunos...}
  datos[19][1] := 'anexo_psuministro';
  datos[20][1] := 'actividadesxpena';
  datos[21][1] := 'ajustesxmes';
  datos[22][1] := 'ajustesxmes';
  datos[23][1] := 'fichatecnica';
  datos[24][1] := 'isometricos_partidas';
  datos[25][1] := 'rpersonal';

     {Actividad,Descripcion}
  datos[26][1] := 'bitacoradeactividades';
  datos[27][1] := 'bitacoradealcances';

  i := 27;
     // Actualiza todos los registros..
  if i > 1 then
  begin
    for x := 1 to i do
    begin
      tabla := datos[x][1];
      if x = 1 then
      begin
        if dParamTipo = 'Actividad' then
          sWbs := ' and sIdConvenio =:Convenio and sWbsContrato =:Wbs and sNumeroActividad =:Actividad and sTipoActividad =:Tipo '
        else
          sWbs := ' and sIdConvenio =:Convenio and sWbsContrato LIKE :Wbs and sTipoActividad ="Actividad" ';
      end;

      if (x >= 2) and (x <= 3) then
      begin
        if dParamTipo = 'Actividad' then
          sWbs := ' and sWbs =:Wbs and sNumeroActividad =:Actividad and sTipoActividad =:Tipo '
        else
          sWbs := ' and sWbs LIKE :Wbs and sTipoActividad = "Actividad" ';
      end;

      if (x >= 6) and (x <= 19) then
      begin
        if dParamTipo = 'Actividad' then
        begin
          if x = 7 then
            sWbs := ' and sWbsContrato =:Wbs and sNumeroActividad =:Actividad '
          else
            sWbs := ' and sWbs LIKE :Wbs and sNumeroActividad =:Actividad ';
        end
        else
        begin
          if x = 7 then
            sWbs := ' and sWbsContrato LIKE :Wbs '
          else
            sWbs := ' and sWbs LIKE :Wbs ';
        end;
      end;

      if x >= 26 then
      begin
        if dParamTipo = 'Actividad' then
          sWbs := ' and sWbs =:Wbs and sNumeroActividad =:Actividad '
        else
          sWbs := ' and sWbs LIKE :Wbs ';
      end;

      if sWbs <> '' then
      begin
        connection.qryBusca.Active := False;
        Connection.QryBusca.Filtered := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('select sWbs, sNumeroActividad from ' + tabla + ' where sContrato =:Contrato ' + sWbs);
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        if dParamTipo = 'Actividad' then
        begin
          connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Actividad').Value := dParamActividad;
        end;

        if x = 1 then
        begin
          connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
          if dParamTipo = 'Actividad' then
          begin
            connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Tipo').Value := dParamTipo;
          end;
        end;
        if (x >= 2) and (x <= 3) then
        begin
          connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
          if dParamTipo = 'Actividad' then
          begin
            connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Tipo').Value := dParamTipo;
          end;
        end;
        if (x >= 6) and (x <= 19) then
        begin
          connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
        end;
        if x >= 26 then
        begin
          connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Wbs').Value := WbsFrente;
        end;
        connection.qryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          if x = 1 then
          begin
            WbsFrente := connection.QryBusca.FieldValues['sWbs'];
            cadena := cadena + ' » Actividades x Orden (Frentes de Trabajo)' + #13;
          end;

          if (x >= 2) and (x <= 3) then
          begin
            if pos('Estimaciones', cadena) = 0 then
              cadena := cadena + ' » Estimaciones ' + #13;
          end;

          if (x = 6) then
            cadena := cadena + ' » Ordenes de Cambio ' + #13;

          if (x = 7) then
            cadena := cadena + ' » Generadores ' + #13;

          if (x >= 8) and (x <= 18) then
          begin
            if pos('Personal', cadena) = 0 then
              cadena := cadena + ' » Recursos de Personal,Equipo, Materiales, Basicos ' + #13;
          end;

          if (x = 19) then
            cadena := cadena + ' » Avisos de Embarques ' + #13;

          if (x >= 26) then
          begin
            if pos('Reportes Diarios', cadena) = 0 then
              cadena := cadena + ' » Reportes Diarios ';
          end;
        end;
        sWbs := '';
      end;
    end;
  end;
  AntesEliminarAnexo := cadena;
end;

{Busqueda de informacion antes de editar o eliminar partidas del FRente de Trabajo en el sistema...}

function AntesEliminarFrente(dParamActividad, dParamWbs, dParamOrden, dParamTipo: string): string;
var x: Integer;
  convenio, cadena, sWbs, tabla, WbsFrente: string;
  datos: array[1..10, 1..2] of string;
  i: Integer;
begin
  AntesEliminarFrente := '';
     {Convenio,Orden,Wbs,Actividad }
  datos[1][1] := 'comentariosxanexo';

     {Orden,Wbs,Actividad}
  datos[2][1] := 'bitacoradeactividades';
  datos[3][1] := 'estimacionxpartida';
  datos[4][1] := 'anexo_prequisicion';
  datos[5][1] := 'bitacoradesalida';

  i := 5;
     // Actualiza todos los registros..
  if i > 1 then
  begin
    for x := 1 to i do
    begin
      tabla := datos[x][1];
      if (x = 1) then
      begin
        if dParamTipo = 'Actividad' then
          sWbs := ' and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sNumeroActividad =:Actividad '
        else
          sWbs := ' and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs LIKE :Wbs ';
      end;

      if (x >= 2) and (x <= 5) then
      begin
        if dParamTipo = 'Actividad' then
          sWbs := ' and sNumeroOrden =:Orden and sWbs =:Wbs and sNumeroActividad =:Actividad '
        else
          sWbs := ' and sNumeroOrden =:Orden and sWbs LIKE :Wbs ';
      end;

      connection.qryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('select sWbs from ' + tabla + ' where sContrato =:Contrato ' + sWbs);
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
      if dParamTipo = 'Actividad' then
      begin
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Actividad').Value := dParamActividad;
      end;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Orden').Value := dParamOrden;

      if (x = 1) then
      begin
        connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      end;
      connection.qryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        if x = 1 then
          cadena := cadena + ' » Comentarios x Anexo ' + #13;

        if x = 2 then
          cadena := cadena + ' » Reportes Diarios ' + #13;

        if x = 3 then
          cadena := cadena + ' » Generadores de Obra ' + #13;

        if x = 4 then
          cadena := cadena + ' » Requisicion de Materiales ' + #13;

        if x = 5 then
          cadena := cadena + ' » Salidas de Alamacen ' + #13;
      end;

    end;
  end;
  AntesEliminarFrente := cadena;
end;

{Busqueda de informacion antes de eliminar un Convenio ...}

function AntesEliminarConvenio(dParamConvenio: string): string;
var x: Integer;
  convenio, cadena, sWbs, tabla, WbsFrente: string;
  datos: array[1..50, 1..2] of string;
  i: Integer;
begin
  AntesEliminarConvenio := '';
    {Asignacion de datos a la tabla}
     {Wbs,Actividad,Tipo,Descripcion,Convenio}
  datos[1][1] := 'actividadesxorden';
  datos[2][1] := 'actividadesxanexo';
  datos[3][1] := 'equipos_contrato';
  datos[4][1] := 'personal_contrato';
  datos[5][1] := 'cuentas_contrato';
  datos[6][1] := 'movimientos_contrato';
  datos[7][1] := 'estimacion_orden';
  datos[8][1] := 'reportediario';

  i := 8;
     // Actualiza todos los registros..
  if i > 1 then
  begin
    for x := 1 to i do
    begin
      tabla := datos[x][1];
      sWbs := ' and sIdConvenio =:Convenio limit 10 ';

      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('select * from ' + tabla + ' where sContrato =:Contrato ' + sWbs);
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Convenio').Value := dParamConvenio;
      connection.qryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        if x = 1 then
          cadena := cadena + ' » Actividades x Orden (Frentes de Trabajo)' + #13;

        if x = 2 then
          cadena := cadena + ' » Actividades x Anexo (Anexo C)' + #13;

        if (x >= 3) and (x <= 6) then
        begin
          if pos('Recursos PT', cadena) = 0 then
            cadena := cadena + ' » Recursos PT ' + #13;
        end;

        if x = 7 then
          cadena := cadena + ' » Estimaciones Generales ' + #13;

        if x = 8 then
          cadena := cadena + ' » Reportes Diarios ' + #13;

      end;
    end;
  end;
  AntesEliminarConvenio := cadena;
end;


{Validar ponderado convenio...}

function validarPonderadoXConvenio(sParamContrato, sParamConvenio, sParamOrden: string; eParamFecha: Extended): boolean;
var
  sConvenio2, sSQL: string;
begin
  result := true;
  //Encontrar el convenio del reporte diario anterior, siendo este de un convenio diferente al del actual
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select sIdConvenio From reportediario Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio <> :Convenio And dIdFecha < :Fecha Limit 1');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
  Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Convenio').Value := sParamConvenio;
  Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Orden').Value := sParamOrden;
  Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  Connection.QryBusca.Params.ParamByName('Fecha').Value := eParamFecha;
  Connection.QryBusca.Open;
  if (Connection.QryBusca.RecordCount > 0) then begin
    if (not Connection.QryBusca.FieldByName('sIdConvenio').IsNull) then begin
      //este es el convenio anterior
      sConvenio2 := Connection.QryBusca.FieldByName('sIdConvenio').AsString;
      //comparar los ponderados de actividadesxorden de ambos convenios
      sSQL :=
        'SELECT a.dPonderado, b.dPonderado ' +
        'FROM actividadesxorden a ' +
        'INNER JOIN actividadesxorden b ' +
        'ON (a.sContrato = b.sContrato ' +
        'AND a.sNumeroOrden = b.sNumeroOrden ' +
        'AND a.sTipoActividad = b.sTipoActividad ' +
        'AND a.sWbs = b.sWbs ' +
        'AND a.sNumeroActividad = b.sNumeroActividad ' +
        'AND b.sIdConvenio = :convenio2) ' +
        'WHERE a.sContrato = :Contrato ' +
        'AND a.sIdConvenio = :Convenio1 ' +
        'AND a.sNumeroOrden = :Orden ' +
        'AND a.sTipoActividad = "Actividad" ' +
        'AND a.dPonderado <> b.dPonderado ' +
        'ORDER BY b.sWbs ';
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add(sSQL);
      Connection.QryBusca.Params.ParamByName('Convenio2').Value := sConvenio2;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
      Connection.QryBusca.Params.ParamByName('Convenio1').Value := sParamConvenio;
      Connection.QryBusca.Params.ParamByName('Orden').Value := sParamOrden;
      Connection.QryBusca.Open;
      //si la query devolvio algun registro, entonces hay diferencias
      if Connection.QryBusca.RecordCount > 0 then begin
        result := false;
      end;
    end;
  end;
end;

procedure DistribucionesAnexo(sParamsWbs, sParamsTipoActividad: string; iParamsNivel: integer);
var
  tabla, sentencia, sFrente: string;
  i: integer;
  MatrizTablas: array[1..4] of string;
begin
  MatrizTablas[1] := 'anexosmensuales';
  MatrizTablas[2] := 'distribuciondeanexo';
  MatrizTablas[3] := 'actividadesxpena';
  MatrizTablas[4] := 'bitacoradepaquetes';

  if sParamsTipoActividad = 'Actividad' then
  begin
        {Problema de integridad de datos tabla actividadesxorden con distrbuciondeactividades 12 Junio 2011..}
        {Problema de integridad de datos tabla actividadesxorden con ordenes_programamensual 12 Junio 2011..}
        //Detallle de integridad referencia avancesxactividad 03 Dic 2011 ivan

    for i := 1 to 4 do
    begin
      if i = 3 then
        sentencia := ''
      else
        sentencia := 'and sIdConvenio = :convenio';

      if i = 4 then
        sFrente := ' and sNumeroOrden = "" '
      else
        sFrente := ' ';

      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('delete from ' + MatrizTablas[i] + ' Where sContrato = :contrato ' + sentencia + sFrente + ' and sWbs =:wbs ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
      if i <> 3 then
      begin
        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
      end;
      connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
      connection.zCommand.Params.ParamByName('wbs').Value := sParamsWbs;
      connection.zCommand.ExecSQL;
    end;
  end;

  if sParamsTipoActividad = 'Paquete' then
  begin
        {Problema de integridad de datos tabla activIdadesxorden con distrbuciondeactividades 12 Junio 2011..}
        {Problema de integridad de datos tabla actividadesxorden con ordenes_programamensual 12 Junio 2011..}
        //Detallle de integridad referencia avancesxactividad 03 Dic 2011 ivan

    Connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('select sWbs from actividadesxanexo Where sContrato = :contrato and sIdConvenio =:Convenio and sWbs LIKE :wbs and iNivel >=:Nivel ');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value := sParamsWbs + '%';
    connection.QryBusca.Params.ParamByName('Nivel').DataType := ftInteger;
    connection.QryBusca.Params.ParamByName('Nivel').Value := iParamsNivel;
    connection.QryBusca.Open;

    for i := 1 to 4 do
    begin
      if i = 3 then
        sentencia := ''
      else
        sentencia := 'and sIdConvenio = :convenio';

      if i = 4 then
        sFrente := ' and sNumeroOrden = "" '
      else
        sFrente := '';

      connection.QryBusca.First;
      while not connection.QryBusca.Eof do
      begin
        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('delete from ' + MatrizTablas[i] + ' Where sContrato = :contrato ' + sentencia + sFrente + ' and sWbs =:wbs ');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
        if i <> 3 then
        begin
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
        end;
        connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('wbs').Value := connection.QryBusca.FieldValues['sWbs'];
        connection.zCommand.ExecSQL;
        connection.QryBusca.Next;
      end;
    end;
  end;
    {Termina elminacion de distribucion..}
end;

procedure DistribucionesFrente(sParamsFrente, sParamsWbs, sParamsTipoActividad: string; iParamsNivel: integer);
var
  tabla, sentencia: string;
  i: integer;
  MatrizTablas: array[1..4] of string;
begin
  sentencia := 'and sIdConvenio = :convenio';
  MatrizTablas[1] := 'distribuciondeactividades';
  MatrizTablas[2] := 'ordenes_programamensual';
  MatrizTablas[3] := 'avancesxactividad';
  MatrizTablas[4] := 'bitacoradepaquetes';

  if sParamsTipoActividad = 'Actividad' then
  begin
        {Problema de integridad de datos tabla actividadesxorden con distrbuciondeactividades 12 Junio 2011..}
        {Problema de integridad de datos tabla actividadesxorden con ordenes_programamensual 12 Junio 2011..}
        //Detallle de integridad referencia avancesxactividad 03 Dic 2011 ivan

    for i := 1 to 4 do
    begin
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('delete from ' + MatrizTablas[i] + ' Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sWbs =:wbs ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := sParamsFrente;
      connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
      connection.zCommand.Params.ParamByName('wbs').Value := sParamsWbs;
      connection.zCommand.ExecSQL;
    end;
  end;

  if sParamsTipoActividad = 'Paquete' then
  begin
        {Problema de integridad de datos tabla activIdadesxorden con distrbuciondeactividades 12 Junio 2011..}
        {Problema de integridad de datos tabla actividadesxorden con ordenes_programamensual 12 Junio 2011..}
        //Detallle de integridad referencia avancesxactividad 03 Dic 2011 ivan
    Connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('select sWbs from actividadesxorden Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sWbs LIKE :wbs and iNivel >=:Nivel ');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Orden').Value := sParamsFrente;
    connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value := sParamsWbs + '%';
    connection.QryBusca.Params.ParamByName('Nivel').DataType := ftInteger;
    connection.QryBusca.Params.ParamByName('Nivel').Value := iParamsNivel;
    connection.QryBusca.Open;

    for i := 1 to 4 do
    begin
      connection.QryBusca.First;
      while not connection.QryBusca.Eof do
      begin
        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('delete from ' + MatrizTablas[i] + ' Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sWbs =:wbs ');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := sParamsFrente;
        connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('wbs').Value := connection.QryBusca.FieldValues['sWbs'];
        connection.zCommand.ExecSQL;
        connection.QryBusca.Next;
      end;
    end;
  end;
    {Termina elminacion de distribucion..}
end;

procedure EliminaAvances(sParamsFrente: string);
var
  tabla, sentencia: string;
  i: integer;
  MatrizTablas: array[1..2] of string;
begin
  sentencia := 'and sIdConvenio = :convenio';
  MatrizTablas[1] := 'avancesglobales';
  MatrizTablas[2] := 'avancesglobalesxorden';

    //Detallle de información basura al elimnar anexo y frentes 08 Dic 2011 ivan
  for i := 1 to 2 do
  begin
    Connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('delete from ' + MatrizTablas[i] + ' Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden ');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
    connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
    connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
    connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
    connection.zCommand.Params.ParamByName('Orden').Value := sParamsFrente;
    connection.zCommand.ExecSQL;
  end;

    {Termina elminacion de avances..}
end;

procedure ActualizaDisponibilidadSitio(sParamContrato, sParamOrden, sParamTurno : string; dParamFecha :tDate; dParamCantidad :double);
var
   StringList : TStrings ;
   nota, sHoraInicio, sHoraFinal : string;
begin
    //Actualizar el personal en Disponibilidad del Sitio,, Diavaz by ivan 2012
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Select sContrato from jornadasdiarias where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sTipo = "Tiempo Inactivo" ');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value    := sParamContrato;
    connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate;
    connection.QryBusca.Params.ParamByName('Fecha').Value       := dParamFecha;
    connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString;
    connection.QryBusca.Params.ParamByName('Orden').Value       := sParamOrden;
    connection.QryBusca.Params.ParamByName('Turno').DataType    := ftString;
    connection.QryBusca.Params.ParamByName('Turno').Value       := sParamTurno;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount = 0 then
    begin
        //Ahora consultamos los horarios
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Select sHoraInicio, sHoraFinal from jornadasdiarias where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sTipo = "Disponibilidad del Sitio" ');
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Contrato').Value    := sParamContrato;
        connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate;
        connection.QryBusca.Params.ParamByName('Fecha').Value       := dParamFecha;
        connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString;
        connection.QryBusca.Params.ParamByName('Orden').Value       := sParamOrden;
        connection.QryBusca.Params.ParamByName('Turno').DataType    := ftString;
        connection.QryBusca.Params.ParamByName('Turno').Value       := sParamTurno;
        connection.QryBusca.Open;

        sHoraInicio := '00:00';
        sHoraFinal  := '00:00';
        if connection.QryBusca.RecordCount > 0 then
        begin
            sHoraInicio := connection.QryBusca.FieldValues['sHoraInicio'];
            sHoraFinal  := connection.QryBusca.FieldValues['sHoraFinal'];
        end;

        StringList := TStringList.Create;
        StringList.Clear ;
        StringList.Add('DISPONIBILIDAD DEL SITIO:') ;
        StringList.Add('INICIO DE ACTIVIDADES: ' + sHoraInicio + ', CIERRE DE ACTVIDADES: ' + sHoraFinal + ', CANT. PERSONAL: ' + FloatToStr(dParamCantidad) ) ;
        nota := StringList.Text;

        //Actualizamos los datos en las jornadas y tiempos..
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Update jornadasdiarias set dFrente =:Cantidad, mDescripcion =:nota where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sTipo = "Disponibilidad del Sitio" ');
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Contrato').Value    := sParamContrato;
        connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate;
        connection.QryBusca.Params.ParamByName('Fecha').Value       := dParamFecha;
        connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString;
        connection.QryBusca.Params.ParamByName('Orden').Value       := sParamOrden;
        connection.QryBusca.Params.ParamByName('Turno').DataType    := ftString;
        connection.QryBusca.Params.ParamByName('Turno').Value       := sParamTurno;
        connection.QryBusca.Params.ParamByName('Cantidad').DataType := ftFloat;
        connection.QryBusca.Params.ParamByName('Cantidad').Value    := dParamCantidad;
        connection.QryBusca.Params.ParamByName('nota').DataType     := ftString;
        connection.QryBusca.Params.ParamByName('nota').Value        := nota;
        connection.QryBusca.ExecSQL;
    end;
end;

procedure ActualizaConfiguraciones(sParamContrato :string);
begin
    //Actualizamos las configuraciones para la impresion de los reportes..
    connection.contrato.Active := False ;
    connection.contrato.Params.ParamByName('Contrato').DataType:= ftString ;
    connection.contrato.Params.ParamByName('Contrato').Value := sParamContrato ;
    connection.contrato.Open ;

    connection.configuracion.Active := False ;
    connection.configuracion.Params.ParamByName('Contrato').DataType:= ftString ;
    connection.configuracion.Params.ParamByName('Contrato').Value := sParamContrato ;
    connection.configuracion.Open ;
end;

procedure Crear_Formulario(panel:TNxHeaderPanel;Formlario:Tform; Titulo:String;arriba,Derecha,Ancho,Largo:Integer; Botones:TBorderIcons);
begin
  panel.Visible         := True;
  panel.Top             := arriba;
  panel.left            := Derecha;
  Formlario             := TForm.Create(nil);
  Formlario.Caption     := Titulo;
  panel.Parent          := Formlario;
  Formlario.Top         := panel.top;
  Formlario.Left        := panel.Left;
  Formlario.Width       := Ancho;
  Formlario.Height      := Largo;
  Formlario.BorderStyle := bsSingle;
  Formlario.Position    := poMainFormCenter;
  Formlario.ShowHint    := True;
  panel.Align           := alClient;
  Formlario.AutoSize    := True;
  Formlario.BorderIcons := botones;
  Formlario.ShowModal;
end;

procedure ModificarPortapapeles( const Control : TWinControl; Accion : TFtOperacionClipboard );
const
  CLASES_EDITS : array[ 0..6 ] of string = (
    'TDBEdit',
    'TDBMemo',
    'TMemo',
    'TDBComboBox',
    'TcxDBTextEdit',
    'TEdit',
    'TCurrencyEdit'
  );

begin

  if Accion = ftCopiar then
  begin

    case AnsiIndexStr( Control.ClassName, CLASES_EDITS ) of
      0: Clipboard.AsText := TDBEdit( Control ).SelText;
      1: Clipboard.AsText := TDBMemo( Control ).SelText;
      2: Clipboard.AsText := TMemo( Control ).SelText;
      3: Clipboard.AsText := TDBComboBox( Control ).SelText;
      4: Clipboard.AsText := TcxDBTextEdit( Control ).SelText;
      5: Clipboard.AsText := TEdit(control).SelText;
      6: Clipboard.AsText := TCurrencyEdit (control).SelText;
     end;

  end;

  if Accion = ftPegar then
  begin
    case AnsiIndexStr( Control.ClassName, CLASES_EDITS ) of
      0: TDBEdit( Control ).SelText := Clipboard.AsText;
      1: TDBMemo( Control ).SelText := Clipboard.AsText;
      2: TMemo( Control ).SelText := Clipboard.AsText;
      3: TDBComboBox( Control ).SelText := Clipboard.AsText;
      4: TcxDBTextEdit( Control ).SelText := Clipboard.AsText;
      5: Tedit( Control ).SelText := Clipboard.AsText;
      6: TCurrencyEdit( Control ).SelText := Clipboard.AsText;
    end;
  end;

end;

procedure BloquearItemsPopup( var Menu : TPopupMenu; BloquearTag_1 : Boolean );
var
  Item : Integer;
begin
  for Item := 0 to Menu.Items.Count - 1 do
  begin
    if Menu.Items[ Item ].Tag = 1 then
      Menu.Items[ Item ].Enabled := not BloquearTag_1
    else
      Menu.Items[ Item ].Enabled := BloquearTag_1;
  end;

end;

function BuscaDatosInsumos(iParamId : integer; sParamId, sParamTabla, sParamCampo : string) : boolean;
begin
    result := False;
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select '+sParamCampo+' from '+sParamTabla+' where '+sParamCampo+' = :Id limit 1 ');
    if iParamId <> -1 then
       connection.zCommand.ParamByName('Id').asInteger := iParamId
    else
       connection.zCommand.ParamByName('Id').asString  := sParamId;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
       result := True;
end;

procedure InsertaRecursosAnexo(sParamContrato, sParamConvenio, sParamFrente, sParamWbs, sParamTipo, sParamId : string);
var
  qryPaquete: tzReadOnlyQuery;
  qryVerifica: tzReadOnlyQuery;
  QryPartidas: tzReadOnlyQuery;
  sParametro: string;
  registro: Integer;
begin
    // Esta funcion se encargara de dar de alta los recuross en el frente de trabajo.
  QryVerifica := tzReadOnlyQuery.Create(nil);
  QryVerifica.Connection := connection.zConnection;
  QryPaquete := tzReadOnlyQuery.Create(nil);
  QryPaquete.Connection := connection.zConnection;
  QryPartidas := tzReadOnlyQuery.Create(nil);
  QryPartidas.Connection := connection.zConnection;

  // 1. Existen recursos en la partida ??
  QryVerifica.Active := False;
  QryVerifica.SQL.Clear;
  QryVerifica.SQL.Add('Select * from detalle_recursos_anexo where sContrato =:Contrato and sIdConvenio =:Convenio  and sNumeroOrden =:Orden and sWbs =:Wbs ');
  QryVerifica.Active := False;
  QryVerifica.Params.ParamByName('contrato').AsString := sParamContrato;
  QryVerifica.Params.ParamByName('convenio').AsString := sParamConvenio;
  QryVerifica.Params.ParamByName('Orden').AsString    := sParamFrente;
  QryVerifica.Params.ParamByName('Wbs').AsString      := sParamWbs ;
  QryVerifica.Open;

  if QryVerifica.RecordCount = 0 then
  begin
        // Saco una copia de la partida anexo ...
    QryPaquete.Active := False;
    QryPaquete.SQL.Clear;
    QryPaquete.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
      'sNumeroActividad, sTipoActividad, sTipoAnexo, iItemOrden, mDescripcion, sMedida, ' +
      'dCantidadAnexo, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
      'dVentaDLL, "*", sWbs as sWbsContrato, sActividadAnterior, sAnexo from actividadesxanexo ' +
      'Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :Wbs And sNumeroActividad = :Actividad and sTipoActividad = :Tipo');
    QryPaquete.Params.ParamByName('contrato').DataType := ftString;
    QryPaquete.Params.ParamByName('contrato').Value := sParamContrato;
    QryPaquete.Params.ParamByName('convenio').DataType := ftString;
    QryPaquete.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPaquete.Params.ParamByName('Wbs').DataType := ftString;
    QryPaquete.Params.ParamByName('Wbs').Value := sParamWbs;
    QryPaquete.Params.ParamByName('Tipo').DataType := ftString;
    QryPaquete.Params.ParamByName('Tipo').Value := sParamTipo;
    QryPaquete.Open;
    if QryPaquete.RecordCount > 0 then
    begin
      QryPartidas.Active := False;
      QryPartidas.SQL.Clear;
      QryPartidas.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
        'sNumeroActividad, sTipoActividad, sTipoAnexo, iItemOrden, mDescripcion, sMedida, ' +
        'dCantidad, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, ' +
        'dVentaDLL, mComentarios, sWbsContrato, sActividadAnterior, sAnexo, sNumeroOrden from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :convenio');
      QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
      QryPartidas.Params.ParamByName('Contrato').Value := '';
      QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
      QryPartidas.Params.ParamByName('Convenio').Value := '';
      QryPartidas.Open;

      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add(funcsql(QryPartidas, 'actividadesxorden'));
      Connection.zCommand.Active := False;
      sparametro := 'param' + trim(inttostr(qryPaquete.fieldcount + 1));
      connection.zCommand.Params.parambyname(sparametro).datatype := ftString;
      connection.zCommand.Params.parambyname(sparametro).value := sParamFrente;
      for registro := 1 to qryPaquete.fieldcount do
      begin
        sparametro := 'param' + trim(inttostr(registro));
        connection.zCommand.Params.parambyname(sparametro).datatype := qryPaquete.fields[registro - 1].datatype;
        if (QryPartidas.fields[registro - 1].DisplayName = 'sWbs') and (sParamWbs <> '') then
          connection.zCommand.Params.parambyname(sparametro).value := sParamWbs + '.' + qryPaquete.fieldValues['sNumeroActividad']
        else
          if (QryPartidas.fields[registro - 1].DisplayName = 'sWbsContrato') and (sParamWbs <> '') then
            connection.zCommand.Params.parambyname(sparametro).value := sParamWbs
          else
            if (QryPartidas.fields[registro - 1].DisplayName = 'sWbsAnterior') and (sParamWbs <> '') then
              connection.zCommand.Params.parambyname(sparametro).value := sParamWbs
            else
//              if (QryPartidas.fields[registro - 1].DisplayName = 'iItemOrden') and (sParamWbs <> '') then
//                connection.zCommand.Params.parambyname(sparametro).value := sParamFrente + sfnItem(qryPaquete.fieldValues['sNumeroActividad'], qryPaquete.FieldValues['sTipoActividad'], sParamWbs)
//              else
//                if (QryPartidas.fields[registro - 1].DisplayName = 'dCantidad') and ('' <> '') then
//                  connection.zCommand.Params.parambyname(sparametro).value := sParam
//                else
//                  if (QryPartidas.fields[registro - 1].DisplayName = 'dFechaInicio') and (sParamFechaInicio <> '') then
//                    connection.zCommand.Params.parambyname(sparametro).value := StrToDate(sParamFechaInicio)
//                  else
//                    if (QryPartidas.fields[registro - 1].DisplayName = 'dFechaFinal') and (sParamFechaFinal <> '') then
//                      connection.zCommand.Params.parambyname(sparametro).value := StrToDate(sParamFechaFinal)
//                    else
//                      if (QryPartidas.fields[registro - 1].DisplayName = 'dDuracion') and (sParamFechaInicio <> '') and (sParamFechaFinal <> '') then
//                        connection.zCommand.Params.parambyname(sparametro).value := StrToDate(sParamFechaFinal) - StrToDate(sParamFechaInicio) + 1
//                      else
//                        if (QryPartidas.fields[registro - 1].DisplayName = 'iNivel') and (sParamWbsRaiz <> '') then
//                          connection.zCommand.Params.parambyname(sparametro).value := iParamNivel
//                        else
//                          if (QryPartidas.fields[registro - 1].DisplayName = 'sActividadAnterior') and (sParamWbsRaiz <> '') then
//                            connection.zCommand.Params.parambyname(sparametro).value := sParamActAnt
//                          else
//                            if (QryPartidas.fields[registro - 1].DisplayName = 'sAnexo') and (sParamWbsRaiz <> '') then
//                              connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fieldValues['sAnexo']
//                            else
//                               if (QryPartidas.fields[registro - 1].DisplayName = 'sTipoAnexo') and (sParamWbsRaiz <> '') then
//                                  connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fieldValues['sTipoAnexo']
//                               else
                                  connection.zCommand.Params.parambyname(sparametro).value := qryPaquete.fields[registro - 1].value;
      end;
      connection.zCommand.ExecSQL;
      end;
  end;

  //Se insertan los recursos de Personal, equipo y materiales.

  QryVerifica.Destroy;
  QryPaquete.Destroy;
  QryPartidas.Destroy;

end;

procedure DistribuyerecursosPeEqMaHeIn(sMes, sAnio, sIdRecurso, sIdTabla, sNombreTabla, sCatalogo : string; dCantidad, dCantidadTotal : double);
Var
    sFecha : String ;
    iMes   : Integer ;
begin
    If sMes = 'ENERO' Then iMes := 1
    Else If sMes = 'FEBRERO' Then iMes := 2
    Else If sMes = 'MARZO' Then iMes := 3
    Else If sMes = 'ABRIL' Then iMes := 4
    Else If sMes = 'MAYO' Then iMes := 5
    Else If sMes = 'JUNIO' Then iMes := 6
    Else If sMes = 'JULIO' Then iMes := 7
    Else If sMes = 'AGOSTO' Then iMes := 8
    Else If sMes = 'SEPTIEMBRE' Then iMes := 9
    Else If sMes = 'OCTUBRE' Then iMes := 10
    Else If sMes = 'NOVIEMBRE' Then iMes := 11
    Else If sMes = 'DICIEMBRE' Then iMes := 12 ;
    If iMes < 9 Then
        sFecha := '01/0' + Trim(IntToStr(iMes + 1)) + '/' + sAnio
    Else
        If iMes < 12 Then
            sFecha := '01/' + Trim(IntTostr(iMes + 1)) + '/' + sAnio
        Else
        Begin
            sAnio := IntToStr(StrToInt(sAnio) + 1 );
            sFecha := '01/01/' + sAnio
        End ;
    connection.qryBusca.Active := False ;
    connection.qryBusca.SQL.Clear ;
    connection.qryBusca.SQL.Add('Select sContrato From '+sNombreTabla+' Where ' +
                                'sContrato = :Contrato and '+sIdTabla+' = :Recurso and dIdFecha = :Fecha') ;
    connection.qryBusca.Params.ParamByName('Contrato').AsString  := global_contrato ;
    connection.qryBusca.Params.ParamByName('Recurso').AsString   := sIdRecurso ;
    connection.qryBusca.Params.ParamByName('Fecha').AsDate       := StrToDate(sFecha) - 1 ;
    connection.qryBusca.Open ;
    If connection.qryBusca.RecordCount > 0 then
    Begin
        try
            //averiguar la suma de todo menos el registro que se estara editando
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sum(dCantidad) as suma From '+sNombreTabla+' ' +
                                        'Where sContrato = :Contrato and '+sIdTabla+' = :Recurso and dIdFecha <> :Fecha') ;
            Connection.QryBusca.ParamByName('Contrato').AsString := global_contrato ;
            Connection.QryBusca.ParamByName('Recurso').AsString  := sIdRecurso ;
            Connection.QryBusca.ParamByName('Fecha').AsDate      := StrToDate(sFecha) - 1 ;
            Connection.QryBusca.Open ;
            if Connection.QryBusca.RecordCount > 0 then
            begin
              if (Connection.QryBusca.FieldByName('suma').AsFloat + dCantidad) > (dCantidadTotal) then
              begin
                  //no es posible distribuir mas de la cantidad asignada a la categoria de personal
                  showmessage('No se puede distribuir más de lo asignado a la categoría de '+sCatalogo);
                  exit;
              end;
            end;

            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'update '+sNombreTabla+' SET dCantidad = :Cantidad ' +
                                          'Where sContrato = :Contrato And '+sIdTabla+' = :Recurso And dIdFecha = :Fecha') ;
            connection.zCommand.Params.ParamByName('Contrato').AsString := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Recurso').AsString  := sIdRecurso ;
            connection.zCommand.Params.ParamByName('Fecha').AsDate      := StrToDate(sFecha) - 1 ;
            connection.zCommand.Params.ParamByName('Cantidad').AsFloat  := dCantidad ;
            connection.zCommand.ExecSQL () ;
          except
              on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de '+sCatalogo, 'Al editar distribucion de '+sCatalogo, 0);
              end;
          end;
    End
    Else
    Begin
        try
            //averiguar la suma de todo
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sum(dCantidad) as suma From '+sNombreTabla+' ' +
                                        'Where sContrato = :Contrato and '+sIdTabla+' = :Recurso') ;
            Connection.QryBusca.ParamByName('Contrato').AsString := global_contrato ;
            Connection.QryBusca.ParamByName('Recurso').AsString  := sIdRecurso ;
            Connection.QryBusca.Open ;
            if Connection.QryBusca.RecordCount > 0 then
            begin
              if (Connection.QryBusca.FieldByName('suma').AsFloat + dCantidad) > (dCantidadTotal) then
              begin
                //no es posible distribuir mas de la cantidad asignada a la categoria de personal
                showmessage('No se puede distribuir más de lo asignado a la categoría de '+sCatalogo);
                exit;
              end;
            end;

            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'INSERT INTO '+sNombreTabla+' (sContrato, '+sIdTabla+', dIdFecha, dCantidad) ' +
                                          'VALUES (:Contrato, :Recurso, :Fecha, :Cantidad)') ;
            connection.zCommand.Params.ParamByName('Contrato').AsString := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Recurso').AsString  := sIdRecurso ;
            connection.zCommand.Params.ParamByName('Fecha').AsDate      := StrToDate(sFecha) - 1 ;
            connection.zCommand.Params.ParamByName('Cantidad').AsFloat  := dCantidad ;
            connection.zCommand.ExecSQL () ;
          except
              on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de '+sCatalogo, 'Al agregar en distribucion de '+sCatalogo, 0);
              end;
          end;
    End ;

end;

end.

