unit frm_ConsultadeActividades3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  Mask, Grids, DBGrids, global, Buttons, frxClass, frxDBSet, ToolWin,
  Menus,  RXDBCtrl, RxLookup, utilerias,UnitTBotonesPermisos,
  ZAbstractRODataset, ZDataset, rxToolEdit, rxCurrEdit, unitexcepciones, udbgrid;

type
  TfrmConsultaActividad3 = class(TForm)
    ds_Partidas: TDataSource;
    Grid_Resumen: TDBGrid;
    ds_Resumen: TDataSource;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    tmDescripcion: TDBMemo;
    PopupPrincipal1: TPopupMenu;
    ComentariosAdicionales: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    imgNotas: TImage;
    ds_Historico: TDataSource;
    PanelHistorico: TGroupBox;
    Label9: TLabel;
    Grid_Historico: TRxDBGrid;
    tdSuministro: TCurrencyEdit;
    Group_Generado: TGroupBox;
    LabelGenerador: TLabel;
    tmComentarios: TDBMemo;
    Label2: TLabel;
    tsNumeroActividad: TRxDBLookupCombo;
    ds_generado: TDataSource;
    tdTotalGenerado: TCurrencyEdit;
    mnFichaTecnica: TMenuItem;
    frGenerador: TfrxReport;
    QryPartidas: TZReadOnlyQuery;
    QrySuministro: TZReadOnlyQuery;
    Historico: TZReadOnlyQuery;
    ResumendeAlcances: TZReadOnlyQuery;
    ResumendeAlcancesifase: TIntegerField;
    ResumendeAlcancesdponderado: TFloatField;
    ResumendeAlcancessdescripcion: TStringField;
    ResumendeAlcancesdcantidad: TFloatField;
    TotalGenerado: TZReadOnlyQuery;
    Generado: TZReadOnlyQuery;
    grid_Generado: TRxDBGrid;
    pnlFase: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure mnFichaTecnicaClick(Sender: TObject);
    procedure Grid_GeneradoDblClick(Sender: TObject);
    procedure frGeneradorGetValue(const VarName: String;
      var Value: Variant);
    procedure grid_GeneradoGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure pnlFaseMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_HistoricoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_GeneradoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlFaseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_HistoricoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_GeneradoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ResumenMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ResumenMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ResumenTitleClick(Column: TColumn);
    procedure Grid_HistoricoTitleClick(Column: TColumn);
    procedure grid_GeneradoTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaActividad3: TfrmConsultaActividad3;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  utgrid3:ticdbgrid;
  BotonPermiso: TBotonesPermisos;
implementation

uses frm_comentariosxanexo;

{$R *.dfm}

procedure TfrmConsultaActividad3.Cut1Click(Sender: TObject);
begin
  if grid_resumen.Focused=true then
    begin
      if grid_resumen.datasource.DataSet.IsEmpty=false  then
      if grid_resumen.DataSource.DataSet.RecordCount>0 then
      UtGrid.CopyRowsToClip;
    end;
  if grid_historico.Focused=true then
    begin
      if grid_historico.datasource.DataSet.IsEmpty=false  then
      if grid_historico.DataSource.DataSet.RecordCount>0 then
      UtGrid2.CopyRowsToClip;
    end;
  if grid_generado.Focused=true then
    begin
      if grid_generado.datasource.DataSet.IsEmpty=false  then
      if grid_generado.DataSource.DataSet.RecordCount>0 then
      UtGrid3.CopyRowsToClip;
    end;
end;

procedure TfrmConsultaActividad3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  utgrid.Destroy;
  utgrid2.Destroy;
  utgrid3.Destroy;
  action := cafree ;
end;

procedure TfrmConsultaActividad3.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cConsulta5',PopupPrincipal1);
  BotonPermiso.permisosBotones(nil);
  try
    UtGrid:=TicdbGrid.create(grid_resumen);
    UtGrid2:=TicdbGrid.create(grid_historico);
    UtGrid3:=TicdbGrid.create(grid_generado);
    QryPartidas.Active := False ;
    QryPartidas.Params.ParamByName('Contrato').DataType := ftString ;
    QryPartidas.Params.ParamByName('Contrato').Value := global_contrato ;
    QryPartidas.Params.ParamByName('Convenio').DataType := ftString ;
    QryPartidas.Params.ParamByName('Convenio').Value := global_convenio ;
    QryPartidas.Open ;
    If QryPartidas.RecordCount > 0 Then
        tsNumeroActividad.KeyValue := QryPartidas.FieldValues['sNumeroActividad'] ;
    tsNumeroActividad.SetFocus
  except
  on e : exception do
   begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al ejecutar las consultas de inicio', 0);
   end;
  end;
end;

procedure TfrmConsultaActividad3.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaPU  ;
end;

procedure TfrmConsultaActividad3.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsNumeroActividad.SetFocus
end;

procedure TfrmConsultaActividad3.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tmDescripcion.SetFocus
end;

procedure TfrmConsultaActividad3.tsNumeroActividadEnter(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad3.ComentariosAdicionalesClick(
  Sender: TObject);
begin
if Grid_Historico.DataSource.DataSet.IsEmpty=true then
    begin
       ShowMessage('No existen registros para generar comentarios adicionales');
     exit;
    end;
    If Grid_Historico.DataSource.DataSet.RecordCount > 0 Then
    Begin
    global_partida := tsNumeroActividad.Text ;
    Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
    frmComentariosxAnexo.show ;
    End

end;

procedure TfrmConsultaActividad3.imgNotasDblClick(Sender: TObject);
begin
    ComentariosAdicionales.Click
end;

procedure TfrmConsultaActividad3.tsNumeroActividadChange(Sender: TObject);
begin
 try
  frmConsultaActividad3.hint := QryPartidas.FieldValues['mDescripcion'] ;
  TotalGenerado.Active := False ;
  TotalGenerado.Params.ParamByName('Contrato').DataType := ftString ;
  TotalGenerado.Params.ParamByName('Contrato').Value := global_contrato ;
  TotalGenerado.Params.ParamByName('Actividad').DataType := ftString ;
  TotalGenerado.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
  TotalGenerado.Open ;
  tdTotalGenerado.Value := 0 ;
  If TotalGenerado.RecordCount > 0 Then
      tdTotalGenerado.Value := TotalGenerado.FieldValues['dCantidad'] ;


  Generado.Active := False ;
  Generado.Params.ParamByName('Contrato').DataType := ftString ;
  Generado.Params.ParamByName('Contrato').Value := global_contrato ;
  Generado.Params.ParamByName('Actividad').DataType := ftString ;
  Generado.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
  Generado.Open ;

  Historico.Active := False ;
  Historico.Params.ParamByName('Contrato').DataType := ftString ;
  Historico.Params.ParamByName('Contrato').Value := global_contrato ;
  Historico.Params.ParamByName('Actividad').DataType := ftString ;
  Historico.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
  Historico.Open ;

  QrySuministro.Active := False ;
  QrySuministro.Params.ParamByName('Contrato').DataType := ftString ;
  QrySuministro.Params.ParamByName('Contrato').Value := Global_Contrato ;
  QrySuministro.Params.ParamByName('Actividad').DataType := ftString ;
  QrySuministro.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
  QrySuministro.Open ;
  tdSuministro.Value := 0.00 ;
  If QrySuministro.RecordCount > 0 Then
      tdSuministro.Value := QrySuministro.FieldValues['dCantidad'] ;

  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
  connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text ;
  Connection.qryBusca.Open ;
  If Connection.qryBusca.RecordCount > 0 Then
      imgNotas.Visible := True ;

  ResumendeAlcances.Active := False ;
  ResumendeAlcances.Params.ParamByName('contrato').DataType := ftString ;
  ResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato ;
  ResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString ;
  ResumendeAlcances.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
  ResumendeAlcances.Open ;

  if ResumendeAlcances.recordcount=0 then
    pnlfase.Visible:=true
  else
      pnlfase.Visible:=false;

 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al seleccionar número de partida', 0);
  end;
 end;

end;

procedure TfrmConsultaActividad3.mnFichaTecnicaClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_rFichaTecnica.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_rFichaTecnica.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;
  try
    if Grid_Historico.DataSource.DataSet.IsEmpty then
    begin
      ShowMessage('No existen registros para generar ficha técnica');
      exit;
    end;
    If Grid_Historico.DataSource.DataSet.RecordCount > 0 Then
      procFichaTecnica (global_contrato, global_convenio, tsNumeroActividad.Text , frmConsultaActividad3) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al imprimir ficha tecnica', 0);
    end;
  end;
end;

procedure TfrmConsultaActividad3.pnlFaseMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaActividad3.pnlFaseMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaActividad3.Grid_GeneradoDblClick(Sender: TObject);
begin
  try
    If lfnValidaGenerador (global_contrato, global_convenio, Generado.FieldValues['sNumeroOrden'], Generado.FieldValues['sNumeroGenerador'] , frmConsultaActividad3 ) Then
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sContrato From ordenesdetrabajo where sContrato = :Contrato') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 1 Then
            procCaratulaGenerador (0, global_contrato, Generado.FieldValues['iNumeroEstimacion'] , Generado.FieldValues['sNumeroOrden'] , Generado.FieldValues['sNumeroGenerador'] , global_convenio, frmConsultaActividad3, frGenerador.OnGetValue, True)
        Else
            procCaratulaGenerador (0, global_contrato, Generado.FieldValues['iNumeroEstimacion'] , Generado.FieldValues['sNumeroOrden'] , Generado.FieldValues['sNumeroGenerador'] , global_convenio, frmConsultaActividad3, frGenerador.OnGetValue, False)
    End
    Else
          MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [mbOk], 0) ;
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al doble click en la cuadricula generado', 0);
    end;
  end;
end;

procedure TfrmConsultaActividad3.frGeneradorGetValue(const VarName: String;
  var Value: Variant);
Var
  sIsometricos : String ;
begin
  If CompareText(VarName, 'ISOMETRICOS') = 0 then
  Begin
      sIsometricos := '' ;
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select distinct sIsometrico, sPrefijo From estimacionxpartida Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
                                      'sNumeroGenerador = :Generador And sNumeroActividad = :Actividad And sIsometricoReferencia = :Referencia') ;
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Orden').Value := QryGenerador.FieldValues['sNumeroOrden'] ;
      connection.qryBusca.Params.ParamByName('Generador').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Generador').Value := QryGenerador.FieldValues['sNumeroGenerador'] ;
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'] ;
      connection.qryBusca.Params.ParamByName('Referencia').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Referencia').Value := QryGenerador.FieldValues['sIsometricoReferencia'] ;
      Connection.qryBusca.Open ;
      While NOT Connection.qryBusca.Eof Do
      Begin
          If sIsometricos <> '' Then
              sIsometricos := sIsometricos + ', ' ;
          sIsometricos := sIsometricos + Connection.qryBusca.FieldValues['sIsometrico'] + ' ' + Connection.qryBusca.FieldValues['sPrefijo'] ;
          Connection.qryBusca.Next
      End ;
      Value := sIsometricos ;
  End ;

  If CompareText(VarName, 'ANEXO') = 0 then
  Begin
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select sAnexo From convenios Where sContrato = :Contrato And sIdConvenio = :convenio') ;
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio ;
      Connection.qryBusca.Open ;
      If Connection.qryBusca.RecordCount > 0 Then
          Value := Connection.qryBusca.FieldValues ['sAnexo']
      Else
          Value := '' ;
  End ;
  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisorGenerador ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;
  If CompareText(VarName, 'SUPERVISOR_RESIDENTE') = 0 then
      Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisorGenerador ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_RESIDENTE') = 0 then
      Value := sPuestoResidente ;
end;

procedure TfrmConsultaActividad3.grid_GeneradoGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lEstima').AsString = 'No' then
        Background := clSilver ;

    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString <> 'Autorizado' then
        Background := clGradientActiveCaption

end;

procedure TfrmConsultaActividad3.grid_GeneradoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if grid_generado.datasource.DataSet.IsEmpty=false  then
if grid_generado.DataSource.DataSet.RecordCount>0 then
UtGrid3.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaActividad3.grid_GeneradoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if grid_generado.datasource.DataSet.IsEmpty=false  then
if grid_generado.DataSource.DataSet.RecordCount>0 then
UtGrid3.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaActividad3.grid_GeneradoTitleClick(Column: TColumn);
begin
if grid_generado.datasource.DataSet.IsEmpty=false  then
if grid_generado.DataSource.DataSet.RecordCount>0 then
 UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad3.Grid_HistoricoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if grid_historico.datasource.DataSet.IsEmpty=false  then
if grid_historico.DataSource.DataSet.RecordCount>0 then
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaActividad3.Grid_HistoricoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if grid_historico.datasource.DataSet.IsEmpty=false  then
if grid_historico.DataSource.DataSet.RecordCount>0 then
UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaActividad3.Grid_HistoricoTitleClick(Column: TColumn);
begin
if grid_historico.datasource.DataSet.IsEmpty=false  then
if grid_historico.DataSource.DataSet.RecordCount>0 then
 UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad3.Grid_ResumenMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if grid_resumen.datasource.DataSet.IsEmpty=false  then
if grid_resumen.DataSource.DataSet.RecordCount>0 then
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaActividad3.Grid_ResumenMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if grid_resumen.datasource.DataSet.IsEmpty=false  then
if grid_resumen.DataSource.DataSet.RecordCount>0 then
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaActividad3.Grid_ResumenTitleClick(Column: TColumn);
begin
if grid_resumen.datasource.DataSet.IsEmpty=false  then
if grid_resumen.DataSource.DataSet.RecordCount>0 then
 UtGrid.DbGridTitleClick(Column);
end;

End.
