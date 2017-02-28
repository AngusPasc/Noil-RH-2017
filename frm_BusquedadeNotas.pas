unit frm_BusquedadeNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  ADODB, Mask, Grids, DBGrids, global, Buttons, frxClass, frxDBSet,
  Newpanel, RXDBCtrl, jpeg, utilerias, Menus, ZAbstractRODataset, ZDataset,
  udbgrid, UFunctionsGHH, UnitTBotonesPermisos;

type
  TfrmBuscaComentarios = class(TForm)
    Label2: TLabel;
    tsDescripcion: TEdit;
    ds_Bitacora: TDataSource;
    bdNotas: TfrxDBDataset;
    rNotas: TfrxReport;
    grNotas: tNewGroupBox;
    GridActividades: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btnExit: TBitBtn;
    btnPrinter: TBitBtn;
    Grid_Imagenes: TRxDBGrid;
    tmDescripcion: TMemo;
    GroupBox1: TGroupBox;
    bImagen: TImage;
    ds_ReporteFotografico: TDataSource;
    rDiario: TfrxReport;
    chkAlbum: TCheckBox;
    tsComentarios: TMemo;
    popImage: TPopupMenu;
    Grabar1: TMenuItem;
    SaveImage: TSaveDialog;
    Bitacora: TZReadOnlyQuery;
    ReporteFotografico: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure btnExitClick(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure ReporteFotograficoAfterScroll(DataSet: TDataSet);
    procedure BitacoraAfterScroll(DataSet: TDataSet);
    procedure btnReporteDiarioClick(Sender: TObject);
    procedure rDiarioGetValue(const VarName: String; var Value: Variant);
    procedure GridActividadesKeyPress(Sender: TObject; var Key: Char);
    procedure GridActividadesDblClick(Sender: TObject);
    procedure chkAlbumClick(Sender: TObject);
    procedure sBusca (sTexto : String) ;
    procedure Grabar1Click(Sender: TObject);
    procedure GridActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridActividadesTitleClick(Column: TColumn);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaComentarios: TfrmBuscaComentarios;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmBuscaComentarios.sBusca(sTexto : String) ;
Var
    sDescripcion : String ;
begin
      sDescripcion := '%' + Trim (sTexto) + '%' ;

      If chkAlbum.Checked = False Then
      Begin
          ReporteFotografico.Active := False ;
          ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
          ReporteFotografico.params.ParamByName('contrato').Value := global_contrato ;
          ReporteFotografico.params.ParamByName('Reporte').DataType := ftString ;
          ReporteFotografico.params.ParamByName('Reporte').Value := '' ;
          ReporteFotografico.Open ;

          bImagen.Picture.LoadFromFile('') ;
          tmDescripcion.Text := '' ;

          Bitacora.Active := False ;
          Bitacora.SQL.Clear ;
          Bitacora.SQL.Add('Select b.iIdDiario, b.sNumeroOrden, b.dIdFecha, b.sIdTurno, b.sIdDepartamento, b.mDescripcion, r.sNumeroReporte, r.sIdConvenio from bitacoradeactividades b ' +
                           'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
                           'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = r.sIdTurno) ' +
                           'Where b.sContrato = :contrato And b.mDescripcion LIKE :Actividad order by b.sNumeroOrden, b.dIdFecha') ;
          Bitacora.params.ParamByName('contrato').DataType := ftString ;
          Bitacora.params.ParamByName('contrato').Value := global_contrato ;
          Bitacora.params.ParamByName('Actividad').DataType := ftString ;
          Bitacora.params.ParamByName('Actividad').Value := sDescripcion ;
          Bitacora.Open ;
      End
      Else
      Begin
          ReporteFotografico.Active := False ;
          ReporteFotografico.params.ParamByName('contrato').DataType := ftString ;
          ReporteFotografico.params.ParamByName('contrato').Value := global_contrato ;
          ReporteFotografico.params.ParamByName('Reporte').DataType := ftString ;
          ReporteFotografico.params.ParamByName('Reporte').Value := '' ;
          ReporteFotografico.Open ;

          bImagen.Picture.LoadFromFile('') ;
          tmDescripcion.Text := '' ;

          Bitacora.Active := False ;
          Bitacora.SQL.Clear ;
          Bitacora.SQL.Add('Select r.sNumeroOrden, r.sIdConvenio, r.sIdTurno, r.dIdFecha, b.* from reportefotografico b ' +
                           'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroReporte = b.sNumeroReporte) ' +
                           'Where b.sContrato = :contrato And b.sDescripcion LIKE :Actividad order by r.sNumeroOrden, r.dIdFecha') ;
          Bitacora.params.ParamByName('contrato').DataType := ftString ;
          Bitacora.params.ParamByName('contrato').Value := global_contrato ;
          Bitacora.params.ParamByName('Actividad').DataType := ftString ;
          Bitacora.params.ParamByName('Actividad').Value := sDescripcion ;
          Bitacora.Open ;
      End  ;
End ;

procedure TfrmBuscaComentarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  action := cafree ;
end;

procedure TfrmBuscaComentarios.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'qComentarios');
 	BotonPermiso.permisosBotones2(nil,nil,nil,btnPrinter);
  connection.configuracion.Refresh;
  Bitacora.Active := False ;
  tsDescripcion.SetFocus
end;

procedure TfrmBuscaComentarios.tsDescripcionExit(Sender: TObject);
begin
  If tsDescripcion.Text <> '' then
      sBusca (tsDescripcion.Text) ;
    tsDescripcion.Color := global_color_salidaPU

end;

procedure TfrmBuscaComentarios.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsDescripcion.SetFocus
end;

procedure TfrmBuscaComentarios.btnExitClick(Sender: TObject);
begin
  close
end;

procedure TfrmBuscaComentarios.tsDescripcionEnter(Sender: TObject);
begin
    tsComentarios.Text := '' ;
    Bitacora.Active := False ;
    tsDescripcion.Color := global_color_salidaPU
end;

procedure TfrmBuscaComentarios.btnPrinterClick(Sender: TObject);
begin
    if (Bitacora.Active) and (Bitacora.RecordCount > 0) then
    begin
        rNotas.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    end
    else begin
        showmessage('No hay datos para imprimir');
    end;
end;

procedure TfrmBuscaComentarios.ReporteFotograficoAfterScroll(
  DataSet: TDataSet);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
   If ReporteFotografico.RecordCount > 0 then
   Begin
       BlobField := ReporteFotografico.FieldByName('bImagen') ;
       BS := ReporteFotografico.CreateBlobStream ( BlobField , bmRead ) ;
       If bs.Size > 1 Then
       Begin
           try
               Pic:=TJpegImage.Create;
               try
                  Pic.LoadFromStream(bS);
                  bImagen.Picture.Graphic := Pic;
               finally
                  Pic.Free;
               end;
           finally
                bS.Free
           End
       End
       Else
           bImagen.Picture.LoadFromFile('') ;
       tmDescripcion.Text := ReporteFotografico.FieldValues['sDescripcion'] ;
   End
   Else
   Begin
        bImagen.Picture.LoadFromFile('') ;
        tmDescripcion.Text := '' ;
   End
end;

procedure TfrmBuscaComentarios.BitacoraAfterScroll(DataSet: TDataSet);
begin
    If Bitacora.RecordCount > 0 Then
    Begin
        If chkAlbum.Checked Then
            tsComentarios.Text := Bitacora.FieldValues['sDescripcion'] 
        Else
            tsComentarios.Text := Bitacora.FieldValues['mDescripcion'] ;
        ReporteFotografico.Active := False ;
        ReporteFotografico.params.ParamByName('contrato').DataType := ftString ;
        ReporteFotografico.params.ParamByName('contrato').Value := global_contrato ;
        ReporteFotografico.params.ParamByName('Reporte').DataType := ftString ;
        ReporteFotografico.params.ParamByName('Reporte').Value := Bitacora.FieldValues['sNumeroReporte'] ;
        ReporteFotografico.Open ;
    End
    Else
    Begin
        ReporteFotografico.Active := False ;
        ReporteFotografico.params.ParamByName('contrato').DataType := ftString ;
        ReporteFotografico.params.ParamByName('contrato').Value := global_contrato ;
        ReporteFotografico.params.ParamByName('Reporte').DataType := ftString ;
        ReporteFotografico.params.ParamByName('Reporte').Value := '' ;
        ReporteFotografico.Open ;
    End
end;

procedure TfrmBuscaComentarios.btnReporteDiarioClick(Sender: TObject);
begin
 If Bitacora.RecordCount > 0 Then
   // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'] , Bitacora.FieldValues['dIdFecha'], '' , frmBuscaComentarios, rDiario.OnGetValue )

end;

procedure TfrmBuscaComentarios.rDiarioGetValue(const VarName: String;
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
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;

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

procedure TfrmBuscaComentarios.GridActividadesKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
       If Bitacora.RecordCount > 0 Then
           // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'] , Bitacora.FieldValues['dIdFecha'], '' , frmBuscaComentarios, rDiario.OnGetValue )

end;

procedure TfrmBuscaComentarios.GridActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if gridactividades.Focused=true then
    begin
      if gridactividades.datasource.DataSet.IsEmpty=false  then
      if gridactividades.DataSource.DataSet.RecordCount>0 then
    end;
end;

procedure TfrmBuscaComentarios.GridActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if gridactividades.Focused=true then
    begin
      if gridactividades.datasource.DataSet.IsEmpty=false  then
      if gridactividades.DataSource.DataSet.RecordCount>0 then
    end;

end;

procedure TfrmBuscaComentarios.GridActividadesTitleClick(Column: TColumn);
begin
  if gridactividades.Focused=true then
    begin
      if gridactividades.datasource.DataSet.IsEmpty=false  then
      if gridactividades.DataSource.DataSet.RecordCount>0 then
    end;

end;

procedure TfrmBuscaComentarios.GridActividadesDblClick(Sender: TObject);
begin
    If Bitacora.RecordCount > 0 Then
       // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'] , Bitacora.FieldValues['dIdFecha'], '' , frmBuscaComentarios, rDiario.OnGetValue )
end;

procedure TfrmBuscaComentarios.chkAlbumClick(Sender: TObject);
begin
    bImagen.Picture.LoadFromFile('') ;
    tsComentarios.Text := '' ;
    If tsDescripcion.Text <> '' then
        sBusca (tsDescripcion.Text) ;
    btnPrinter.Enabled := NOT chkAlbum.Checked;
    BotonPermiso.permisosBotones2(nil,nil,nil,btnPrinter);
end;

procedure TfrmBuscaComentarios.Grabar1Click(Sender: TObject);
begin
   If ReporteFotografico.RecordCount > 0 Then
   Begin
       SaveImage.Title := 'Respaldar Imagen';
       SaveImage.FileName := Bitacora.FieldValues['sNumeroReporte'] + '-' + ReporteFotografico.FieldByName('iImagen').AsString ;
       If SaveImage.Execute Then
           bImagen.Picture.SaveToFile(SaveImage.FileName)
   End
end;

end.
