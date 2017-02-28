unit frm_SubContratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ComCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, frm_connection, DateUtils, frm_barra, Global,
  Menus, jpeg, ExtCtrls, ExtDlgs,  RXDBCtrl, RxLookup,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RXDice,
  Newpanel, frxClass, frxDBSet, utilerias, rxSpeedbar, sSkinProvider, unitexcepciones,
  udbgrid, UnitValidaTexto, UFunctionsGHH ;

type
  TfrmSubContratos = class(TForm)
    OpenPicture: TOpenPictureDialog;
    ds_contratos: TDataSource;
    contratos: TZQuery;
    contratossSubContrato: TStringField;
    contratossCodigo: TStringField;
    contratosmDescripcion: TMemoField;
    contratossProveedor: TStringField;
    contratossRFC: TStringField;
    contratossDomicilio1: TStringField;
    contratossDomicilio2: TStringField;
    contratossCiudad: TStringField;
    contratossCP: TStringField;
    contratossTelefono: TStringField;
    contratossFax: TStringField;
    contratossEmail: TStringField;
    contratosmComentarios: TMemoField;
    contratoslStatus: TStringField;
    SpeedBar1: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    sNuevo: TSpeedItem;
    sEdit: TSpeedItem;
    sGrabar: TSpeedItem;
    sCancelar: TSpeedItem;
    sEliminar: TSpeedItem;
    sNext: TSpeedItem;
    sPrevius: TSpeedItem;
    pgControl: TPageControl;
    TabSubContratos: TTabSheet;
    tNewGroupBox1: tNewGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    tsSubContrato: TDBEdit;
    tsCodigo: TDBEdit;
    tmDescripcion: TDBMemo;
    tlEstatus: TDBCheckBox;
    tmComentarios: TDBMemo;
    tNewGroupBox2: tNewGroupBox;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    tsProveedor: TDBEdit;
    tsRFC: TDBEdit;
    tsDomicilio1: TDBEdit;
    tsDomicilio2: TDBEdit;
    tsCiudad: TDBEdit;
    tsCP: TDBEdit;
    tsTelefono: TDBEdit;
    tsFax: TDBEdit;
    tsEmail: TDBEdit;
    pgAnticipos: TTabSheet;
    Anticipos: TZQuery;
    dsAnticipos: TDataSource;
    tNewGroupBox3: tNewGroupBox;
    tNewGroupBox4: tNewGroupBox;
    GridAnticipos: TDBGrid;
    AnticipossSubContrato: TStringField;
    AnticiposdIdFecha: TDateField;
    AnticiposdMontoMN: TFloatField;
    AnticiposdPorcAmortiza: TFloatField;
    contratossContrato: TStringField;
    AnticipossContrato: TStringField;
    Grid_Estimaciones: TDBGrid;
    ds_estimaciones: TDataSource;
    Estimaciones: TZReadOnlyQuery;
    EstimacionessContrato: TStringField;
    EstimacionesiConsecutivo: TIntegerField;
    EstimacionesdFechaInicio: TDateField;
    EstimacionesdFechaFinal: TDateField;
    EstimacionesmComentarios: TMemoField;
    EstimacioneslStatus: TStringField;
    EstimacionesdMontoMN: TFloatField;
    EstimacionesdMontoDLL: TFloatField;
    EstimacionessIdUsuario: TStringField;
    EstimacionessIdUsuarioAutoriza: TStringField;
    EstimacionessSubContrato: TStringField;
    EstimacionesdAmortizacionMN: TFloatField;
    sAutoriza: TSpeedItem;
    sAmortiza: TSpeedItem;
    sImpresion: TSpeedItem;
    frxSubContratos: TfrxDBDataset;
    frxAnticipos: TfrxDBDataset;
    frxEstimaciones: TfrxDBDataset;
    EstimacionesiNumeroEstimacion: TStringField;
    frReporte: TfrxReport;
    sSkinProvider1: TsSkinProvider;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sNuevoClick(Sender: TObject);
    procedure sEditClick(Sender: TObject);
    procedure sGrabarClick(Sender: TObject);
    procedure sCancelarClick(Sender: TObject);
    procedure sNextClick(Sender: TObject);
    procedure sPreviusClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tsColorEntrada(Sender: TObject);
    procedure tsColorSalida(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure contratosAfterScroll(DataSet: TDataSet);
    procedure sEliminarClick(Sender: TObject);
    procedure AnticiposAfterInsert(DataSet: TDataSet);
    procedure sAutorizaClick(Sender: TObject);
    procedure sAmortizaClick(Sender: TObject);
    procedure sImpresionClick(Sender: TObject);
    procedure tsEmailKeyPress(Sender: TObject; var Key: Char);
    procedure GridAnticiposMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EstimacionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridAnticiposMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EstimacionesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridAnticiposTitleClick(Column: TColumn);
    procedure Grid_EstimacionesTitleClick(Column: TColumn);

  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  iPausa = 1000 ;

var
  frmSubContratos: TfrmSubContratos;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
implementation

//uses dlg_Contratos;

{$R *.dfm}

procedure TfrmSubContratos.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  contratos.Active := False ;
  contratos.Params.ParamByName('contrato').DataType := ftString ;
  contratos.Params.ParamByName('contrato').Value := global_contrato ;
  contratos.Open ;

  PgControl.ActivePageIndex := 0 ;

  sNuevo.Enabled := True ;
  sEdit.Enabled := True ;
  sGrabar.Enabled := False ;
  sCancelar.Enabled := False ;
  sEliminar.Enabled := True ;
  sNext.Enabled := True ;
  sPrevius.Enabled := True ;
 UtGrid:=TicdbGrid.create(gridanticipos);
  UtGrid2:=TicdbGrid.create(grid_estimaciones);

end;

procedure TfrmSubContratos.GridAnticiposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    if gridanticipos.FieldCount>0 then
   UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmSubContratos.GridAnticiposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if gridanticipos.FieldCount>0 then
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmSubContratos.GridAnticiposTitleClick(Column: TColumn);
begin
  if gridanticipos.FieldCount>0 then
   UtGrid.DbGridTitleClick(Column);
 end;

procedure TfrmSubContratos.Grid_EstimacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmSubContratos.Grid_EstimacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmSubContratos.Grid_EstimacionesTitleClick(Column: TColumn);
begin
   UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmSubContratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  contratos.Cancel ;
  action := cafree ;
    utgrid.Destroy;
  utgrid2.destroy;
end;

procedure TfrmSubContratos.sNuevoClick(Sender: TObject);
begin
    sNuevo.Enabled := False ;
    sEdit.Enabled := False ;
    sGrabar.Enabled := True ;
    sCancelar.Enabled := True ;
    sEliminar.Enabled := False ;
    sNext.Enabled := False ;
    sPrevius.Enabled := False ;

    pgControl.ActivePageIndex := 0 ;
    contratos.Append ;
    contratos.FieldValues['sContrato'] := global_contrato ;
    contratos.FieldValues['sSubContrato'] := '*' ;
    contratos.FieldValues['sCodigo'] := '*' ;
    contratos.FieldValues['mDescripcion'] := '*' ;
    contratos.FieldValues['sProveedor'] := '*' ;
    contratos.FieldValues['sRFC'] := '*' ;
    contratos.FieldValues['sDomicilio1'] := '*' ;
    contratos.FieldValues['sDomicilio2'] := '*' ;
    contratos.FieldValues['sCiudad'] := '*' ;
    contratos.FieldValues['sCP'] := '*' ;
    contratos.FieldValues['sTelefono'] := '*' ;
    contratos.FieldValues['sFax'] := '*' ;
    contratos.FieldValues['sEmail'] := '*' ;
    contratos.FieldValues['mComentarios'] := '*' ;
    contratos.FieldValues['lStatus'] := 'Activo' ;
    tsSubContrato.SetFocus ;
end;

procedure TfrmSubContratos.sEditClick(Sender: TObject);
begin
    sNuevo.Enabled := False ;
    sEdit.Enabled := False ;
    sGrabar.Enabled := True ;
    sCancelar.Enabled := True ;
    sEliminar.Enabled := False ;
    sNext.Enabled := False ;
    sPrevius.Enabled := False ;

    pgControl.ActivePageIndex := 0 ;
    try
        contratos.Edit ;
    except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'SubContratos', 'Al editar registro', 0);
        sCancelar.Click ;
       end;
    end ;
    tsSubContrato.SetFocus ;

end;

procedure TfrmSubContratos.sGrabarClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Codigo');nombres.Add('Descripcion');nombres.Add('Comentarios');nombres.Add('Proveedor');
  cadenas.Add(tsCodigo.Text);cadenas.Add(tmDescripcion.Text);cadenas.Add(tmComentarios.Text);cadenas.Add(tsProveedor.Text);
  if not validaTexto(nombres, cadenas, 'SubContrato', tsSubContrato.Text) then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
  {Continua insercion de datos}
  Try
      contratos.Post ;

      pgControl.ActivePageIndex := 0 ;
      sNuevo.Enabled := True ;
      sEdit.Enabled := True ;
      sGrabar.Enabled := False ;
      sCancelar.Enabled := False ;
      sEliminar.Enabled := True ;
      sNext.Enabled := True ;
      sPrevius.Enabled := True ;
  except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'SubContratos', 'Al salvar registro', 0);
     end;
  end
end;

procedure TfrmSubContratos.sCancelarClick(Sender: TObject);
begin
  pgControl.ActivePageIndex := 0 ;
  sNuevo.Enabled := True ;
  sEdit.Enabled := True ;
  sGrabar.Enabled := False ;
  sCancelar.Enabled := False ;
  sEliminar.Enabled := True ;
  sNext.Enabled := True ;
  sPrevius.Enabled := True ;

  contratos.Cancel
end;

procedure TfrmSubContratos.sNextClick(Sender: TObject);
begin
    If NOT Contratos.Eof Then
        Contratos.Next
end;

procedure TfrmSubContratos.sPreviusClick(Sender: TObject);
begin
    If NOT Contratos.Bof Then
        Contratos.Prior

end;

procedure TfrmSubContratos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if (ActiveControl is TDBEdit) then
    begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
    end
    Else
        if (ActiveControl is TDBMemo) then
             Key := #0
        Else
           If (ActiveControl is TDBGrid) then   { si es un TDBGrid }
              with TDBGrid(ActiveControl) do
                 if selectedindex < (fieldcount -1) then
                    selectedindex := selectedindex +1
                 else
                    selectedindex := 0

end;

procedure TfrmSubContratos.tsColorEntrada(Sender: TObject);
begin
    If Sender is tdbEdit Then
        (Sender as tDBEdit).Color := global_color_entrada
    Else
        If Sender is tdbMemo Then
            (Sender as tDBMemo).Color := global_color_entrada
end;

procedure TfrmSubContratos.tsColorSalida(Sender: TObject);
begin
    If Sender is tdbEdit Then
        (Sender as tDBEdit).Color := global_color_salida
    Else
        If Sender is tdbMemo Then
            (Sender as tDBMemo).Color := global_color_salida

end;

procedure TfrmSubContratos.tsEmailKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    tsPROVEEDOR.SetFocus
end;

procedure TfrmSubContratos.pgControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
      AllowChange := sNuevo.Enabled
end;

procedure TfrmSubContratos.contratosAfterScroll(DataSet: TDataSet);
begin
      Anticipos.Active := False ;
      Anticipos.Params.ParamByName('contrato').DataType := ftString ;
      Anticipos.Params.ParamByName('contrato').Value := contratos.FieldValues ['sContrato'] ;
      Anticipos.Params.ParamByName('Subcontrato').DataType := ftString ;
      Anticipos.Params.ParamByName('Subcontrato').Value := contratos.FieldValues ['sSubContrato'] ;
      Anticipos.Open ;

      Estimaciones.Active := False ;
      Estimaciones.Params.ParamByName('contrato').DataType := ftString ;
      Estimaciones.Params.ParamByName('contrato').Value := contratos.FieldValues ['sContrato'] ;
      Estimaciones.Params.ParamByName('Subcontrato').DataType := ftString ;
      Estimaciones.Params.ParamByName('Subcontrato').Value := contratos.FieldValues ['sSubContrato'] ;
      Estimaciones.Open ;

end;

procedure TfrmSubContratos.sEliminarClick(Sender: TObject);
begin
    If Contratos.RecordCount > 0 Then
        If Anticipos.RecordCount = 0 Then
            If MessageDlg('Desea Elminar el SubContrato Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                  try
                   Contratos.Delete;
                  except
                     on e : exception do begin
                     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'SubContratos', 'Al eliminar registro', 0);
                     end;
                  end;
               end;
end;

procedure TfrmSubContratos.AnticiposAfterInsert(DataSet: TDataSet);
begin
    Anticipos.FieldValues['sContrato'] := contratos.FieldValues['sContrato'] ;
    Anticipos.FieldValues['sSubContrato'] := contratos.FieldValues['sSubContrato'] ;
    Anticipos.FieldValues['dIdFecha'] := Date
end;

procedure TfrmSubContratos.sAutorizaClick(Sender: TObject);
Var
    iGrid         : Integer ;
    SavePlace     : TBookmark;
    dMontoMN, dMontoDLL : Double ;
begin
     SavePlace := Grid_Estimaciones.DataSource.DataSet.GetBookmark ;
     with Grid_Estimaciones.DataSource.DataSet do
         for iGrid := 0 To Grid_Estimaciones.SelectedRows.Count-1 do
         Begin
              GotoBookmark(pointer(Grid_Estimaciones.SelectedRows.Items[iGrid]));

              // Cierro el Generador ....
              Connection.qryBusca.Active := False ;
              Connection.qryBusca.SQL.Clear ;
              Connection.qryBusca.SQL.Add('Select Sum(g.dCantidad * a.dCostoMNMN) as dMontoMN, Sum(g.dCantidad * a.dCostoDLL) as dMontoDLL From estimacionxpartidaprov g ' +
                                          'INNER JOIN actividadesxorden a ON (g.sContrato = a.sContrato And a.sIdConvenio = :Convenio And g.sNumeroOrden = a.sNumeroOrden And ' +
                                          'g.sWbs = a.sWbs And g.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                          'Where g.sContrato = :Contrato And g.sNumeroOrden = :Orden And g.sSubContrato = :SubContrato And g.sNumeroGenerador = :Generador ' +
                                          'Group By g.sNumeroGenerador' ) ;
              Connection.qryBusca.Active := False ;
              connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
              connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato ;
              connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
              connection.qryBusca.Params.ParamByName('Convenio').Value := Global_Convenio ;
              connection.qryBusca.Params.ParamByName('SubContrato').DataType := ftString ;
              connection.qryBusca.Params.ParamByName('SubContrato').Value := FieldValues['sSubContrato'] ;
              connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
              connection.qryBusca.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'] ;
              connection.qryBusca.Params.ParamByName('Generador').DataType := ftString ;
              connection.qryBusca.Params.ParamByName('Generador').Value := FieldValues['sNumeroGenerador'] ;
              Connection.qryBusca.Open ;
              dMontoMN := 0 ;
              dMontoDLL := 0 ;
              If Connection.qryBusca.RecordCount > 0 Then
              Begin
                  dMontoMN := Connection.qryBusca.FieldValues['dMontoMN'] ;
                  dMontoDLL := Connection.qryBusca.FieldValues['dMontoDLL'] ;
              End ;

              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'Update estimacionxproveedor SET lStatus = :Status, ' +
                                            'dMontoMN = :MontoMN, dMontoDLL = :MontoDLL, sIdUsuarioAutoriza = :Valida ' +
                                            'Where sContrato = :Contrato And sNumeroOrden = :Orden And sSubContrato = :SubContrato And sNumeroGenerador = :Generador') ;
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'] ;
              connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('SubContrato').Value := FieldValues['sSubContrato'] ;
              connection.zCommand.Params.ParamByName('Generador').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Generador').Value := FieldValues['sNumeroGenerador'] ;
              connection.zCommand.Params.ParamByName('Status').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Status').Value := 'Autorizado' ;
              connection.zCommand.Params.ParamByName('MontoMN').DataType := ftCurrency ;
              connection.zCommand.Params.ParamByName('MontoMN').Value := dMontoMN ;
              connection.zCommand.Params.ParamByName('MontoDLL').DataType := ftCurrency ;
              connection.zCommand.Params.ParamByName('MontoDLL').Value := dMontoDLL ;
              connection.zCommand.Params.ParamByName('Valida').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Valida').Value := global_usuario ;
              connection.zCommand.ExecSQL () ;

              // Actualizo Kardex del Sistema ....
              Sleep(iPausa) ;
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                            'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
              connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
              connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
              connection.zCommand.Params.ParamByName('Fecha').Value := Date ;
              connection.zCommand.Params.ParamByName('Hora').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
              connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Descripcion').Value := 'SubContrato' + FieldValues['sSubContrato'] + '. Validación del Generador No. [' +  FieldValues ['sNumeroGenerador']  + '] de la Orden [' + FieldValues ['sNumeroOrden']  + ']. VALIDA ' + global_usuario ;
              connection.zCommand.Params.ParamByName('Origen').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Origen').Value := 'Generadores' ;
              connection.zCommand.ExecSQL () ;
         End ;
     Estimaciones.Active := False ;
     Estimaciones.Open ;
     Try
         Grid_Estimaciones.DataSource.DataSet.GotoBookmark(SavePlace);
     Except
     Else
         Grid_Estimaciones.DataSource.DataSet.FreeBookmark(SavePlace);
     End ;
end;

procedure TfrmSubContratos.sAmortizaClick(Sender: TObject);
Var
    iGrid         : Integer ;
    SavePlace     : TBookmark;
    dMontoMN, dMontoDLL : Double ;
    dPorc         : Double ;
    dAmortizado   : Double ;
    dAmortizacionGenerador : Double ;
begin
    Anticipos.First ;
    dPorc := Anticipos.FieldValues['dPorcAmortiza'] ;
    dAmortizado := Anticipos.FieldValues['dMontoMN'] ;
    SavePlace := Grid_Estimaciones.DataSource.DataSet.GetBookmark ;

    Estimaciones.First ;
    for iGrid := 1 To Estimaciones.RecordCount do
    Begin
        If dAmortizado > ( (Estimaciones.fieldValues['dMontoMN'] * dPorc) / 100 ) Then
             dAmortizacionGenerador := ( (Estimaciones.fieldValues['dMontoMN'] * dPorc) / 100 )
        Else
        Begin
             dAmortizacionGenerador := dAmortizado ;
             If NOT Anticipos.Eof Then
             Begin
                  Anticipos.Next ;
                  dPorc := Anticipos.FieldValues['dPorcAmortiza'] ;
                  dAmortizado := Anticipos.FieldValues['dMontoMN'] ;
             End
             Else
             Begin
                  dPorc := 0 ;
                  dAmortizado := 0 ;
             end
        end ;
        dAmortizado := dAmortizado - dAmortizacionGenerador ;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Update estimacionxproveedor SET dAmortizacionMN = :Amortizacion ' +
                                      'Where sContrato = :Contrato And sNumeroOrden = :Orden And sSubContrato = :SubContrato And sNumeroGenerador = :Generador') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Orden').Value := Estimaciones.FieldValues['sNumeroOrden'] ;
        connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('SubContrato').Value := Estimaciones.FieldValues['sSubContrato'] ;
        connection.zCommand.Params.ParamByName('Generador').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Generador').Value := Estimaciones.FieldValues['sNumeroGenerador'] ;
        connection.zCommand.Params.ParamByName('Amortizacion').DataType := ftCurrency ;
        connection.zCommand.Params.ParamByName('Amortizacion').Value := dAmortizacionGenerador ;
        connection.zCommand.ExecSQL () ;

        Estimaciones.Next ;
    End ;
    Estimaciones.Active := False ;
    Estimaciones.Open ;
    Try
         Grid_Estimaciones.DataSource.DataSet.GotoBookmark(SavePlace);
    Except
    Else
         Grid_Estimaciones.DataSource.DataSet.FreeBookmark(SavePlace);
    End ;
end;

procedure TfrmSubContratos.sImpresionClick(Sender: TObject);
begin
try
    if (Anticipos.RecordCount < 1) or (Estimaciones.RecordCount < 1) then
    begin
      MessageDlg('No se encontraron datos para imprimir', mtInformation, [mbOk], 0);
      exit;
    end;
    frReporte.PreviewOptions.Modal := False ;
    frReporte.PreviewOptions.Maximized := lCheckMaximized () ;
    frReporte.PreviewOptions.ShowCaptions := False ;
    frReporte.Previewoptions.ZoomMode := zmPageWidth ;
    frReporte.LoadFromFile (global_files + 'EstatusSubContrato.fr3') ;
    frReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + 'EstatusSubContrato.fr3') then
      ShowMessage('El archivo de reporte EstatusSubContrato.fr3 no existe, notifique al administrador del sistema');
except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'SubContratos', 'Al imprimir Catalogo de SubContratos', 0);
    end;
end;
end;

End.
