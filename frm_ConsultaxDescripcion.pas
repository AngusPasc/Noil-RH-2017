unit frm_ConsultaxDescripcion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  Mask, Grids, DBGrids, global, Buttons, RXDBCtrl, frxClass,UnitTBotonesPermisos,
  frxDBSet, ZAbstractRODataset, ZDataset, Newpanel, masUtilerias, Utilerias, strUtils,
  udbgrid, unitexcepciones, UFunctionsGHH;

type
  TfrmConsultaxDescripcion = class(TForm)
    Label2: TLabel;
    tsDescripcion: TEdit;
    ds_bitacora: TDataSource;
    ds_actividadesxAnexo: TDataSource;
    btnSalir: TBitBtn;
    btnSabana: TBitBtn;
    AnexoC: TfrxReport;
    ActividadesxAnexo: TZReadOnlyQuery;
    ActividadesxAnexosContrato: TStringField;
    ActividadesxAnexosEspecificacion: TStringField;
    ActividadesxAnexosWbs: TStringField;
    ActividadesxAnexosNumeroActividad: TStringField;
    ActividadesxAnexomDescripcion: TMemoField;
    ActividadesxAnexosMedida: TStringField;
    ActividadesxAnexodVentaMN: TFloatField;
    ActividadesxAnexodFechaInicio: TDateField;
    ActividadesxAnexodFechaFinal: TDateField;
    ActividadesxAnexodInstalado: TFloatField;
    ActividadesxAnexodExcedente: TFloatField;
    ActividadesxAnexodAvance: TFloatField;
    ActividadesxAnexodPendiente: TFloatField;
    ActividadesxAnexosWbsSpace: TStringField;
    ActividadesxAnexosSimbolo: TStringField;
    ActividadesxAnexoiColor: TIntegerField;
    ActividadesxAnexoiNivel: TIntegerField;
    ActividadesxAnexodMontoMN: TCurrencyField;
    ActividadesxAnexodCantidadAnexo: TFloatField;
    ActividadesxAnexodPonderado: TFloatField;
    tNewGroupBox1: tNewGroupBox;
    grid_bitacora: TDBGrid;
    Grid_Actividades: TRxDBGrid;
    Bitacora: TZReadOnlyQuery;
    AvGeneral: TZReadOnlyQuery;
    ActividadesxAnexosTipoActividad: TStringField;
    ActividadesxAnexosIdConvenio: TStringField;
    dbActividadesxAnexo: TfrxDBDataset;
    ActividadesxAnexosWbsAnterior: TStringField;
    rDiario: TfrxReport;
    ActividadesxAnexoiItemOrden: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure ActividadesxAnexoCalcFields(DataSet: TDataSet);
    procedure ActividadesxAnexoAfterScroll(DataSet: TDataSet);
    procedure Grid_ActividadesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btnSalirClick(Sender: TObject);
    procedure btnSabanaClick(Sender: TObject);
    procedure Grid_ActividadesDblClick(Sender: TObject);
    procedure Grid_ActividadesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure grid_bitacoraDblClick(Sender: TObject);
    procedure grid_bitacoraKeyPress(Sender: TObject; var Key: Char);
    procedure rDiarioGetValue(const VarName: String; var Value: Variant);
    procedure grid_bitacoraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_bitacoraMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_bitacoraTitleClick(Column: TColumn);
  private
  sMenuP: String;
      { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaxDescripcion: TfrmConsultaxDescripcion;
  sFiltro       : String ;
  SavePlace  : TBookmark;
  UtGrid:TicDbGrid;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmConsultaxDescripcion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  UtGrid.Destroy;
  action := cafree ;
end;

procedure TfrmConsultaxDescripcion.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cConsulta6');
  BotonPermiso.permisosBotones2(nil,nil, nil,btnSabana);
  sMenuP:=stMenu;
  UtGrid:=TicdbGrid.create(grid_bitacora);
  connection.configuracion.refresh ;
  Bitacora.Active := False ;
end;

procedure TfrmConsultaxDescripcion.tsNumeroOrdenExit(Sender: TObject);
begin
  tsDescripcion.Text := '' ;
  Bitacora.Active := False ;
end;

procedure TfrmConsultaxDescripcion.tsDescripcionExit(Sender: TObject);
var
    sSelect : String ;
    Primercaracter, Ultimocaracter     : String ;
begin
  If tsDescripcion.Text <> '' then
  Begin
   (*try
      connection.zCommand.Active := False ;
      connection.zCommand.SQL.Clear ;
      connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio And sTipoActividad = "Paquete"') ;
      connection.zcommand.params.ParamByName('Contrato').DataType := ftString ;
      connection.zcommand.params.ParamByName('Contrato').Value := global_contrato ;
      connection.zcommand.params.ParamByName('Convenio').DataType := ftString ;
      connection.zcommand.params.ParamByName('Convenio').Value := global_convenio ;
      connection.zCommand.ExecSQL;
    except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultaxDescripcion', 'Al realizar modificacion a la tabla actividadesxanexo', 0);
     end;
   end; *)

      //sFiltro := 'And mDescripcion LIKE "%' + Trim (tSdescripcion.Text) + '';
    (*
      Primercaracter  := MidStr(tsDescripcion.text,1,1) ;
      UltimoCaracter  := AnsiMidStr(tsDescripcion.text, Length(tsDescripcion.text)-1, 1 );
      If Primercaracter ='*' Then
           sFiltro := 'And mDescripcion LIKE "+' + Trim (tSdescripcion.Text) + '';

      If Ultimocaracter ='*' Then
           sFiltro := 'And mDescripcion LIKE "' + Trim (tsDescripcion.Text) + '%"' ;

      If (Primercaracter ='*') And (UltimoCaracter = '*') Then*)
           sFiltro := 'And mDescripcion LIKE "%' + Trim (tsDescripcion.Text) + '%"' ;

    try
      sSelect := 'Select sContrato, sIdConvenio, sEspecificacion, sSimbolo, sWbsAnterior, sWbs, sTipoActividad, sNumeroActividad, iItemOrden, iColor, iNivel, ' +
                 'mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dFechaInicio, dFechaFinal, dInstalado, dExcedente ' +
                 'from actividadesxanexo Where sContrato = :contrato and (sMedida<>"PAQUETE" and dCantidadAnexo<>100)and sIdConvenio = :Convenio ' + sFiltro + ' order by iItemOrden, sNumeroActividad' ;
      ActividadesxAnexo.Active := False ;
      ActividadesxAnexo.SQL.Clear ;
      ActividadesxAnexo.SQL.Add(sSelect) ;
      ActividadesxAnexo.Params.ParamByName('contrato').DataType := ftString ;
      ActividadesxAnexo.Params.ParamByName('contrato').Value := global_contrato ;
      ActividadesxAnexo.Params.ParamByName('convenio').DataType := ftString ;
      ActividadesxAnexo.Params.ParamByName('convenio').Value := global_convenio ;
      ActividadesxAnexo.Open ;
    except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultaxDescripcion', 'Al realizar consulta a la tabla actividadesxanexo', 0);
     end;
    end;

  End  ;
  tsDescripcion.Color := global_color_salidaPU;
end;

procedure TfrmConsultaxDescripcion.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsDescripcion.SetFocus
end;

procedure TfrmConsultaxDescripcion.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      grid_Actividades.SetFocus
end;


procedure TfrmConsultaxDescripcion.tsDescripcionEnter(Sender: TObject);
Var
  sSelect  : String ;
begin
  try
   sSelect := 'Select sContrato, sIdConvenio, sEspecificacion, sSimbolo, sWbsAnterior, sWbs, sTipoActividad, sNumeroActividad, iItemOrden, iColor, iNivel, ' +
              'mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dFechaInicio, dFechaFinal, dInstalado, dExcedente ' +
              'from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio' ;
   ActividadesxAnexo.Active := False ;
   ActividadesxAnexo.SQL.Clear ;
   ActividadesxAnexo.SQL.Add(sSelect) ;
   ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Contrato').Value := '' ;
   ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Convenio').Value := '' ;
   ActividadesxAnexo.Open ;
   tsDescripcion.Color := global_color_entradaPU;
  except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultaxDescripcion', 'Al realizar consulta a la tabla actividadesxanexo', 0);
     end;
  end;
end;

procedure TfrmConsultaxDescripcion.ActividadesxAnexoCalcFields(
  DataSet: TDataSet);
Var
    dAvance : Real ;
begin
    ActividadesxAnexodMontoMN.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaMN.Value ;
     If ActividadesxAnexo.FieldValues['sWbs'] <> Null Then
        ActividadesxAnexosWbsSpace.Text := espaces (ActividadesxAnexo.FieldValues['iNivel']) + ActividadesxAnexo.FieldValues['sWbs'] ;

    If ActividadesxAnexo.FieldValues['dCantidadAnexo'] >= ActividadesxAnexo.FieldValues['dInstalado'] Then
        ActividadesxAnexodPendiente.Value := ActividadesxAnexo.FieldValues['dCantidadAnexo'] - ActividadesxAnexo.FieldValues['dInstalado']
    Else
        ActividadesxAnexodPendiente.Value := 0 ;

    AvGeneral.Active := False ;
    AvGeneral.Params.ParamByName('contrato').DataType := ftString ;
    AvGeneral.Params.ParamByName('contrato').Value := global_contrato ;
    AvGeneral.Params.ParamByName('Convenio').DataType := ftString ;
    AvGeneral.Params.ParamByName('Convenio').Value := Global_Convenio ;
    AvGeneral.Params.ParamByName('Actividad').DataType := ftString ;
    AvGeneral.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
    AvGeneral.Open ;
    dAvance := 0 ;
    While NOT AvGeneral.Eof Do
    Begin
        dAvance := dAvance + (AvGeneral.FieldValues['dAvance'] * AvGeneral.FieldValues['dCantidad']) / AvGeneral.FieldValues['dCantidadAnexo'] ;
        AvGeneral.Next ;
    End ;
    ActividadesxAnexodAvance.value := dAvance ;
end;

procedure TfrmConsultaxDescripcion.ActividadesxAnexoAfterScroll(
  DataSet: TDataSet);
begin
    If ActividadesxAnexo.RecordCount > 0 Then
    Begin
         Grid_Actividades.Hint := ActividadesxAnexo.FieldValues['mDescripcion'] ;
         Bitacora.Active := False ;
         Bitacora.Params.ParamByName('Contrato').DataType := ftString ;
         Bitacora.Params.ParamByName('Contrato').Value := global_contrato ;
         Bitacora.Params.ParamByName('Actividad').DataType := ftString ;
         If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
             Bitacora.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad']
         Else
             Bitacora.Params.ParamByName('Actividad').Value := '' ;
         Bitacora.Open ;
    End

end;

procedure TfrmConsultaxDescripcion.Grid_ActividadesTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
Var
  sCampo,
  sSelect  : String ;
begin
if length(tsdescripcion.Text)>0 then
  begin
   sCampo  := Field.FieldName ;
   sSelect := 'Select sContrato, sIdConvenio, sEspecificacion, sSimbolo, sWbsAnterior, sWbs, sTipoActividad, sNumeroActividad, iItemOrden, iColor, iNivel, ' +
              'mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dFechaInicio, dFechaFinal, dInstalado, dExcedente ' +
              'from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio ' + sFiltro + ' order by :ordenado' ;
   ActividadesxAnexo.Active := False ;
   ActividadesxAnexo.SQL.Clear ;
   ActividadesxAnexo.SQL.Add(sSelect) ;
   ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
   ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('Convenio').Value := global_convenio ;
   ActividadesxAnexo.Params.ParamByName('ordenado').DataType := ftString ;
   ActividadesxAnexo.Params.ParamByName('ordenado').Value := sCampo ;
   ActividadesxAnexo.Open ;
   Try
        grid_actividades.DataSource.DataSet.GotoBookmark(SavePlace);
   Except
   Else
        grid_actividades.DataSource.DataSet.FreeBookmark(SavePlace);
   End ;
  end;


end;

procedure TfrmConsultaxDescripcion.btnSalirClick(Sender: TObject);
begin
  close
end;

procedure TfrmConsultaxDescripcion.btnSabanaClick(Sender: TObject);
begin
try
  if not FileExists(global_files + global_miReporte + '_AnexoC.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_AnexoC.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;

  if grid_Actividades.DataSource.DataSet.IsEmpty=false then
  begin
      AnexoC.LoadFromFile (global_files +  global_miReporte + '_AnexoC.fr3') ;
      AnexoC.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
  end
except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultaxDescripcion', 'Al imprimir', 0);
     end;
end;
end;

procedure TfrmConsultaxDescripcion.Grid_ActividadesDblClick(
  Sender: TObject);
var
   sCondicion : String ;
   sSelect    : String ;
begin
try
if length(tsdescripcion.text)>0 then
 begin
   sCondicion := ' And sWbs NOT Like "' + Trim(ActividadesxAnexo.FieldValues['sWbs']) + '.%"' ;
   SavePlace := grid_actividades.DataSource.DataSet.GetBookmark ;
   If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' Then
      If ActividadesxAnexo.FieldValues['sSimbolo'] = '-' Then
      begin


          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "+" Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :wbs And sTipoActividad = "Paquete"') ;
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
          connection.zCommand.SQL.Add ( 'update actividadesxanexo SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sWbs = :wbs And sTipoActividad = "Paquete"') ;
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

   sSelect := 'Select sContrato, sIdConvenio, sEspecificacion, sSimbolo, sWbsAnterior, sWbs, sTipoActividad, sNumeroActividad, iItemOrden, iColor, iNivel, ' +
              'mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dFechaInicio, dFechaFinal, dInstalado, dExcedente ' +
              'from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio ' + sFiltro + ' order by iItemOrden, sNumeroActividad' ;
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
   Else
        grid_actividades.DataSource.DataSet.FreeBookmark(SavePlace);
   End ;
 end;
except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultaxDescripcion', 'Al trabajar con la tabla actividadesxanexo', 0);
     end;
end;


end;

procedure TfrmConsultaxDescripcion.Grid_ActividadesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    try
        If (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse Then
            If ActividadesxAnexo.RecordCount > 0 Then
            Begin
                AFont.Color := esColor (ActividadesxAnexo.FieldValues['iColor']) ;
                If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
                    Afont.Style := [fsBold]
                Else
                    If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
                    Begin
                        Afont.Style := [fsBold,fsItalic] ;
                        AFont.Color := clRed ;
                    End
            End ;
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ConsultaxDescripcion', 'Al cambiar de resistro en cuadricula superior', 0);
        end;
    end;
end;

procedure TfrmConsultaxDescripcion.grid_bitacoraDblClick(Sender: TObject);
begin
// if bitacora.DataSource.DataSet.IsEmpty=false then
// If Bitacora.RecordCount > 0 Then
   // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'], Bitacora.FieldValues['dIdFecha'], '' , frmConsultaxDescripcion, rDiario.OnGetValue )
end;

procedure TfrmConsultaxDescripcion.grid_bitacoraKeyPress(Sender: TObject;
  var Key: Char);
begin

    If Key = #13 Then
 if bitacora.DataSource.DataSet.IsEmpty=false then
       If Bitacora.RecordCount > 0 Then
         // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'], Bitacora.FieldValues['dIdFecha'], '' , frmConsultaxDescripcion, rDiario.OnGetValue )

end;

procedure TfrmConsultaxDescripcion.grid_bitacoraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if grid_bitacora.datasource.DataSet.IsEmpty=false  then
if grid_bitacora.DataSource.DataSet.RecordCount>0 then
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaxDescripcion.grid_bitacoraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if grid_bitacora.datasource.DataSet.IsEmpty=false  then
if grid_bitacora.DataSource.DataSet.RecordCount>0 then
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaxDescripcion.grid_bitacoraTitleClick(Column: TColumn);
begin


if grid_bitacora.datasource.DataSet.IsEmpty=false  then
if grid_bitacora.DataSource.DataSet.RecordCount>0 then
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmConsultaxDescripcion.rDiarioGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSuperIntendente
      Else
          Value := sPuestoSuperIntendentePatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisor
      Else
          Value := sPuestoSupervisorPatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If Bitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisorTierra
      Else
          Value := sPuestoResidente ;
  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;
  If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := sPlataformaOrden  ;
  If CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
      Value := sJornadasSuspendidas  ;
  If CompareText(VarName, 'TURNO') = 0 then
      Value := sDescripcionTurno ;

  If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := dRealGlobalAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := dRealGlobalActual ;
  If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := dRealGlobalAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := dProgramadoGlobalAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := dProgramadoGlobalActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := dProgramadoGlobalAcumulado;


  If CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
      Value := dRealOrdenAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
      Value := dRealOrdenActual ;
  If CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
      Value := dRealOrdenAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
      Value := dProgramadoOrdenActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAcumulado ;

end;

end.
