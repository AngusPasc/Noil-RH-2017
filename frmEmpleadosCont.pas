unit frmEmpleadosCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, StrUtils, frm_barra, ZAbstractRODataset, NxDBColumns,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractDataset, NxCustomGridControl,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGrid, NxPageControl, Jpeg,
  NxDBGrid, NxColumns, global, StdCtrls, Mask, rxToolEdit, Menus,
  frxClass, frxDBSet, RXDBCtrl, NxGrid, Buttons,  ExtDlgs;

type
  Tfrm_EmpleadosCont = class(TForm)
    dszQEmpleados: TDataSource;
    zQEmpleados: TZQuery;
    grid_catIngresos: TDBGrid;
    frmBarra1: TfrmBarra;
    zQEmpleadossIdEmpleado: TStringField;
    zQEmpleadossDomicilio: TStringField;
    zQEmpleadossCiudad: TStringField;
    zQEmpleadossIdArea: TStringField;
    zQEmpleadossTelefono: TStringField;
    zQEmpleadosdSueldo: TFloatField;
    zQEmpleadossPuesto: TStringField;
    zQAreas: TZReadOnlyQuery;
    dszQAreas: TDataSource;
    zQEmpleadosseMail: TStringField;
    zQEmpleadossNombreCompleto: TStringField;
    zQAreassIdArea: TStringField;
    zQAreassDescripcion: TStringField;
    zQAreassMascara: TStringField;
    zQEmpleadossCuenta: TStringField;
    zQEmpleadoslLabora: TStringField;
    rptReporte: TfrxReport;
    frx_ReporteEmpleados: TfrxDBDataset;
    qryEmpleados: TZReadOnlyQuery;
    qryEmpleadossIdEmpleado: TStringField;
    qryEmpleadossNombreCompleto: TStringField;
    qryEmpleadossRfc: TStringField;
    qryEmpleadossDomicilio: TStringField;
    qryEmpleadossCiudad: TStringField;
    qryEmpleadossPuesto: TStringField;
    qryEmpleadossIdArea: TStringField;
    qryEmpleadossTelefono: TStringField;
    qryEmpleadosseMail: TStringField;
    qryEmpleadosdSueldo: TFloatField;
    qryEmpleadossStatus: TStringField;
    qryEmpleadossCuenta: TStringField;
    qryEmpleadoslLabora: TStringField;
    qryEmpleadossIdArea_1: TStringField;
    qryEmpleadossDescripcion: TStringField;
    qryEmpleadossMascara: TStringField;
    qryEmpleadossTipoArea: TStringField;
    zQEmpleadossBanco: TStringField;
    zQEmpleadossCuentaInterbancaria: TStringField;
    zQEmpleadossCurp: TStringField;
    zQEmpleadossImss: TStringField;
    zQEmpleadossRfc: TStringField;
    zQEmpleadossNacionalidad: TStringField;
    zQEmpleadossEstadoCivil: TStringField;
    zQEmpleadosdFechaNacimiento: TDateField;
    zq_EquiposPorEmpleado: TZQuery;
    ds_EquiposPorEmpleado: TDataSource;
    zq_EquiposPorEmpleadoiId: TIntegerField;
    zq_EquiposPorEmpleadoiIdEquipo: TIntegerField;
    zq_EquiposPorEmpleadosIdEmpleado: TStringField;
    zq_EquiposPorEmpleadodFecha_Recepcion: TDateField;
    zq_EquiposPorEmpleadodFecha_Remocion: TDateField;
    zqEquipos: TZQuery;
    zqEquiposiId: TIntegerField;
    zqEquiposiId_Categoria: TIntegerField;
    zqEquipossClave: TStringField;
    zqEquipossNombre: TStringField;
    zqEquipossModelo: TStringField;
    zqEquipossDescripcion: TStringField;
    dsEquipos: TDataSource;
    zq_EquiposPorEmpleadosEquipo: TStringField;
    frx_EquiposPorEmpleado: TfrxDBDataset;
    zq_EquiposPorEmpleadosStatus_Recepcion: TStringField;
    zq_EquiposPorEmpleadosStatus_Entrega: TStringField;
    zq_EquiposPorEmpleadosEmpleado: TStringField;
    zQEmpleadosdFechaInicioLabores: TDateField;
    PopupMenu1: TPopupMenu;
    Imprimircartaresponsiva1: TMenuItem;
    frxEquipos: TfrxDBDataset;
    zqEquipossMarca: TStringField;
    zqEquipossNumeroSerie: TStringField;
    zqEquipossIdProveedor: TStringField;
    zqEquiposdFechaCompra: TDateField;
    zq_Puestos: TZQuery;
    ds_Puestos: TDataSource;
    zq_PuestosiId: TIntegerField;
    zq_PuestossPuesto: TStringField;
    zq_PuestossDescripcion: TStringField;
    zQEmpleadosiId_Puesto: TIntegerField;
    zQEmpleadossPuestoLabora: TStringField;
    qryEmpleadosiId_Puesto: TIntegerField;
    qryEmpleadosPuestoEmpleado: TStringField;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    tsIdEmpleado: TDBEdit;
    tsNombre: TDBEdit;
    tsDomicilio: TDBEdit;
    tsCiudad: TDBEdit;
    tsTelefono: TDBEdit;
    tdSueldo: TDBEdit;
    tsIdArea: TDBLookupComboBox;
    MAIL: TDBEdit;
    CUENTA: TDBEdit;
    BANCO: TDBEdit;
    INTERBANCARIA: TDBEdit;
    CURP: TDBEdit;
    IMSS: TDBEdit;
    RFC: TDBEdit;
    NACIONALIDAD: TDBEdit;
    ESTADOCIV: TDBEdit;
    NACIMIENTO: TDBDateEdit;
    INICIOLAB: TDBDateEdit;
    dbPuesto: TDBLookupComboBox;
    Label4: TLabel;
    dbLabora: TDBCheckBox;
    NxTabSheet2: TNxTabSheet;
    NxTabSheet3: TNxTabSheet;
    DBGrid1: TDBGrid;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    btnPrinter: TBitBtn;
    bImagen: TImage;
    btnPreview: TBitBtn;
    ReporteFotografico: TZQuery;
    OpenPicture: TOpenPictureDialog;
    lblRecord: TLabel;
    ds_ReporteFotografico: TDataSource;
    frxReport1: TfrxReport;
    qryEmpleadossCuentaInterbancaria: TStringField;
    Label20: TLabel;
    sLibretaMar: TDBEdit;
    zQEmpleadossLibretaMar: TStringField;
    Label22: TLabel;
    CARTILLA: TDBEdit;
    zQEmpleadossCartilla: TStringField;
    Label23: TLabel;
    CEDULA: TDBEdit;
    zQEmpleadossCedulaProfesional: TStringField;
    Popempleados: TPopupMenu;
    IMPRESIONEMPLEADOS1: TMenuItem;
    qryEmpleadossEstadoCivil: TStringField;
    qryEmpleadossLibretaMar: TStringField;
    qryEmpleadossCartilla: TStringField;
    qryEmpleadossCedulaProfesional: TStringField;
    qryEmpleadosdFechaNacimiento: TDateField;
    qryEmpleadossCurp: TStringField;
    qryEmpleadossImss: TStringField;
    Label24: TLabel;
    LNACIMIENTO: TDBEdit;
    Label25: TLabel;
    zQEmpleadossCarrera: TStringField;
    qryEmpleadossCarrera: TStringField;
    IMPRESIONSUELDOS1: TMenuItem;
    CARRERA: TDBEdit;
    zQEmpleadossLugarNacimiento: TStringField;
    qryEmpleadossLugarNacimiento: TStringField;
    MostrarSoportesEmpleados1: TMenuItem;
    frxFotografia: TfrxDBDataset;
    TERMINOLAB: TDBDateEdit;
    qryEmpleadosdFechaTerminoLabores: TDateField;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    zQEmpleadosdFechaTerminoLabores: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zQEmpleadosAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsIdEmpleadoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure tsDomicilioKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdAreaKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure tdSueldoKeyPress(Sender: TObject; var Key: Char);
    procedure tsPuestoKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure zQEmpleadossIdAreaChange(Sender: TField);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure zQEmpleadosAfterScroll(DataSet: TDataSet);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure Imprimircartaresponsiva1Click(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure ReporteFotograficoAfterCancel(DataSet: TDataSet);
    procedure ReporteFotograficoAfterDelete(DataSet: TDataSet);
    procedure ReporteFotograficoAfterEdit(DataSet: TDataSet);
    procedure ReporteFotograficoBeforeInsert(DataSet: TDataSet);
    procedure ReporteFotograficoAfterScroll(DataSet: TDataSet);
    procedure ReporteFotograficoBeforeDelete(DataSet: TDataSet);
    procedure ReporteFotograficoBeforeEdit(DataSet: TDataSet);
    procedure ReporteFotograficoBeforePost(DataSet: TDataSet);
    procedure ReporteFotograficoAfterInsert(DataSet: TDataSet);
    procedure zq_EquiposPorEmpleadoAfterScroll(DataSet: TDataSet);
    procedure IMPRESIONEMPLEADOS1Click(Sender: TObject);
    procedure IMPRESIONSUELDOS1Click(Sender: TObject);
    procedure tsCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure dbPuestoKeyPress(Sender: TObject; var Key: Char);
    procedure CUENTAKeyPress(Sender: TObject; var Key: Char);
    procedure BANCOKeyPress(Sender: TObject; var Key: Char);
    procedure INTERBANCARIAKeyPress(Sender: TObject; var Key: Char);
    procedure dbLaboraKeyPress(Sender: TObject; var Key: Char);
    procedure LNACIMIENTOKeyPress(Sender: TObject; var Key: Char);
    procedure CARRERAKeyPress(Sender: TObject; var Key: Char);
    procedure MAILKeyPress(Sender: TObject; var Key: Char);
    procedure CURPKeyPress(Sender: TObject; var Key: Char);
    procedure IMSSKeyPress(Sender: TObject; var Key: Char);
    procedure RFCKeyPress(Sender: TObject; var Key: Char);
    procedure NACIONALIDADKeyPress(Sender: TObject; var Key: Char);
    procedure ESTADOCIVKeyPress(Sender: TObject; var Key: Char);
    procedure NACIMIENTOKeyPress(Sender: TObject; var Key: Char);
    procedure INICIOLABKeyPress(Sender: TObject; var Key: Char);
    procedure sLibretaMarKeyPress(Sender: TObject; var Key: Char);
    procedure CARTILLAKeyPress(Sender: TObject; var Key: Char);
    procedure MostrarSoportesEmpleados1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_EmpleadosCont: Tfrm_EmpleadosCont;
  sArchivo: String;

Function Tamanyo(Archivo : String): Real;

implementation
Uses frmEquiposPorEmpleado, frmEquiposPorEmpleadoQuitar, frm_connection;

{$R *.dfm}

Function Tamanyo(Archivo : String): Real;
Var
   Busca : TsearchRec;
Begin
   if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
      Result := Busca.size / 1024
   Else
      Result:=0;
End;

procedure Tfrm_EmpleadosCont.BANCOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        INTERBANCARIA.SetFocus
end;

procedure Tfrm_EmpleadosCont.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_EquiposPorEmpleado, frm_EquiposPorEmpleado);
  zq_EquiposPorEmpleado.Append;
  frm_EquiposPorEmpleado.ShowModal;
end;

procedure Tfrm_EmpleadosCont.btnDeleteClick(Sender: TObject);
begin
  if zq_EquiposPorEmpleado.RecordCount > 0 then begin
    if zq_EquiposPorEmpleado.FieldByName('dFecha_Remocion').IsNull then begin
      Application.CreateForm(Tfrm_EquiposPorEmpleadoQuitar, frm_EquiposPorEmpleadoQuitar);
      zq_EquiposPorEmpleado.Edit;
      frm_EquiposPorEmpleadoQuitar.ShowModal;
    end else begin
      ShowMessage('Este personal ya no cuenta con este artículo.');
    end;
  end;
end;

procedure Tfrm_EmpleadosCont.btnPreviewClick(Sender: TObject);
var
  BS  : TStream;
  Pic : TJpegImage;
  BlobField : tField ;
begin
  ReporteFotografico.Active := False ;
  ReporteFotografico.Params.ParamByName('Identificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;;
  ReporteFotografico.Open;
    If ReporteFotoGrafico.RecordCount > 0 then
    Begin
        bImagen.Picture.Bitmap := Nil ;
        If  (ReporteFotografico.State <> dsInsert) And
            (ReporteFotografico.State <> dsEdit) Then
            If ReporteFotografico.RecordCount > 0 then
            Begin
                BlobField := reportefotografico.FieldByName('bImagen') ;
                BS := reportefotografico.CreateBlobStream(BlobField, bmRead) ;
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
            End ;
    End
end;

procedure Tfrm_EmpleadosCont.btnPrinterClick(Sender: TObject);
begin
  frxReport1.LoadFromFile(global_files + 'EquiposPorEmpleado.fr3') ;
  frxReport1.ShowReport() ;
end;

procedure Tfrm_EmpleadosCont.CARRERAKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
        tsTelefono.SetFocus
end;

procedure Tfrm_EmpleadosCont.CARTILLAKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
        Cedula.SetFocus
end;

procedure Tfrm_EmpleadosCont.CUENTAKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
        BANCO.SetFocus
end;

procedure Tfrm_EmpleadosCont.CURPKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Imss.SetFocus
end;

procedure Tfrm_EmpleadosCont.dbLaboraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     lNacimiento.setFocus
end;

procedure Tfrm_EmpleadosCont.dbPuestoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     CUENTA.SetFocus
end;

procedure Tfrm_EmpleadosCont.ESTADOCIVKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       Nacimiento.SetFocus
end;

procedure Tfrm_EmpleadosCont.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_EmpleadosCont.FormShow(Sender: TObject);
begin
  NxPageControl1.ActivePage := NxTabSheet1;
    zqEquipos.Active := False;
    zqEquipos.Open;
    
    zQEmpleados.Active := False ;
    zQEmpleados.Open;

    zQAreas.Active := False ;
    zQAreas.Open;

    ReporteFotografico.Active := False ;
    ReporteFotografico.Open ;
end;

procedure Tfrm_EmpleadosCont.frmBarra1btnAddClick(Sender: TObject);
begin
  NxPageControl1.ActivePage := NxTabSheet1;
  frmBarra1.btnAddClick(Sender);
  zQEmpleados.Insert ;
  tsIdArea.SetFocus
end;

procedure Tfrm_EmpleadosCont.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zqEmpleados.Cancel
end;

procedure Tfrm_EmpleadosCont.frmBarra1btnDeleteClick(Sender: TObject);
begin

If zQEmpleados.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
           Connection.QryBusca.Active := False ;
           Connection.qryBusca.SQL.Clear ;
           Connection.QryBusca.SQL.Add('Select sIdProveedor from tesoreriapegresos Where sIdProveedor =:Empleado');
           Connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('Empleado').Value    := zQEmpleados.FieldValues['sIdEmpleado'] ;
           Connection.QryBusca.Open ;
         If Connection.QryBusca.RecordCount > 0 Then
             MessageDlg('NO SE PUEDE BORRAR, EXISTE CON MOVIMIENTOS DE COMPROBACION', mtInformation, [mbOk], 0)
         Else
            zQEmpleados.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end


end;

procedure Tfrm_EmpleadosCont.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zQEmpleados.RecordCount > 0 Then
  begin
      zQEmpleados.Edit ;
      tsIdEmpleado.SetFocus
  end ;
end;

procedure Tfrm_EmpleadosCont.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_EmpleadosCont.frmBarra1btnPostClick(Sender: TObject);
begin
  zQEmpleados.Post ;
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_EmpleadosCont.frmBarra1btnPrinterClick(Sender: TObject);
begin
  qryEmpleados.Active := False;
  qryEmpleados.Open ;
  rptReporte.LoadFromFile(global_files+ 'ReporteEmpleados.fr3') ;
  rptReporte.ShowReport() ;
end;

procedure Tfrm_EmpleadosCont.IMPRESIONEMPLEADOS1Click(Sender: TObject);
begin
   qryEmpleados.Refresh ;
   rptReporte.LoadFromFile(global_files+ 'frEmpleadosFadul.fr3');
   rptReporte.ShowReport();
end;

procedure Tfrm_EmpleadosCont.IMPRESIONSUELDOS1Click(Sender: TObject);
begin
  qryEmpleados.Active := False;
  qryEmpleados.Open ;
  rptReporte.LoadFromFile(global_files+ 'ReporteEmpleados.fr3') ;
  rptReporte.ShowReport() ;
end;

procedure Tfrm_EmpleadosCont.Imprimircartaresponsiva1Click(Sender: TObject);
begin
  rptReporte.LoadFromFile(global_files+ 'ReporteOficioResponsiva.fr3');
  rptReporte.ShowReport();
end;

procedure Tfrm_EmpleadosCont.IMSSKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
        Rfc.SetFocus
end;

procedure Tfrm_EmpleadosCont.INICIOLABKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       sLibretaMar.SetFocus
end;

procedure Tfrm_EmpleadosCont.INTERBANCARIAKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
        tdSueldo.SetFocus
end;

procedure Tfrm_EmpleadosCont.LNACIMIENTOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     carrera.SetFocus
end;

procedure Tfrm_EmpleadosCont.MAILKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
        Curp.SetFocus
end;

procedure Tfrm_EmpleadosCont.MostrarSoportesEmpleados1Click(Sender: TObject);
begin

   frxFotografia.DataSet := ReporteFotografico;
   frxReport1.LoadFromFile(Global_Files + 'Reportesoportedoctos.fr3') ;
   frxReport1.ShowReport() ;

end;

procedure Tfrm_EmpleadosCont.NACIMIENTOKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
       InicioLab.setFocus
end;

procedure Tfrm_EmpleadosCont.NACIONALIDADKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      EstadoCiv.SetFocus
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoAfterCancel(DataSet: TDataSet);
begin
  btnPreview.Enabled := True ;
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoAfterDelete(DataSet: TDataSet);
begin
  bImagen.Picture.Bitmap := Nil ;
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoAfterEdit(DataSet: TDataSet);
Var
    size: Real ;
begin
    btnPreview.Enabled := False ;
    bImagen.Picture.Bitmap := Nil ;

    OpenPicture.Title := 'Inserta Imagen';
    sArchivo := '' ;
    If OpenPicture.Execute then
    begin
        try
            sArchivo := OpenPicture.FileName ;
            size := Tamanyo (sArchivo) ;
            If size <= 300 Then
                bImagen.Picture.LoadFromFile(OpenPicture.FileName)
            Else
                MessageDlg('La imagen a adjuntar no debe ser mayor a 300 kb.', mtInformation, [mbOk], 0);
        except
            bImagen.Picture.LoadFromFile('') ;
        end
    end
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoAfterInsert(DataSet: TDataSet);
Var
   size: Real ;
begin
  reportefotografico.fieldvalues['sIdentificador'] := zqEmpleados.FieldByName('sIdEmpleado').AsString;
  reportefotografico.fieldvalues['sTipo'] := 'DOCUMENTOS_PERSONAL';

  btnPreview.Enabled := False ;
  bImagen.Picture.Bitmap := Nil ;

  OpenPicture.Title := 'Inserta Imagen';
  sArchivo := '' ;
  If OpenPicture.Execute then begin
    Try
      sArchivo := OpenPicture.FileName ;
      size := Tamanyo (sArchivo) ;
      If size <= 300 Then
        bImagen.Picture.LoadFromFile(OpenPicture.FileName)
      Else
        MessageDlg('La imagen a adjuntar no debe ser mayor a 300 kb.', mtInformation, [mbOk], 0);
    except
      bImagen.Picture.LoadFromFile('') ;
    end
  end
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoAfterScroll(DataSet: TDataSet);
var
  BS  : TStream;
  Pic : TJpegImage;
  BlobField : tField ;
begin
  If ReporteFotografico.RecordCount > 0 Then begin
    if (ReporteFotografico.State  <> dsInsert) OR (ReporteFotografico.State  <> dsEdit) then begin
      BlobField := reportefotografico.FieldByName('bImagen') ;
      BS := reportefotografico.CreateBlobStream(BlobField, bmRead) ;
      If bs.Size > 1 Then Begin
        Try
          Pic:=TJpegImage.Create;
          Try
            Pic.LoadFromStream(bS);
            bImagen.Picture.Graphic := Pic;
          Finally
            Pic.Free;
          End;
        Finally
          BS.Free;
        End
      End
    end;

    lblRecord.Caption := IntToStr(ReporteFotografico.Recno) + ' de ' + IntToStr(ReporteFotografico.RecordCount)
  end;
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoBeforeDelete(DataSet: TDataSet);
begin
  if zqEmpleados.RecordCount = 0 then
    abort;
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoBeforeEdit(DataSet: TDataSet);
begin
  if zqEmpleados.RecordCount = 0 then
    abort;
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoBeforeInsert(DataSet: TDataSet);
//Var
//   size: Real ;
begin
//  reportefotografico.fieldvalues['sIdentificador']     := zqEmpleados.FieldByName('sIdEmpleado').AsString;
//
//  btnPreview.Enabled := False ;
//  bImagen.Picture.Bitmap := Nil ;
//
//  OpenPicture.Title := 'Inserta Imagen';
//  sArchivo := '' ;
//  If OpenPicture.Execute then begin
//    Try
//      sArchivo := OpenPicture.FileName ;
//      size := Tamanyo (sArchivo) ;
//      If size <= 300 Then
//        bImagen.Picture.LoadFromFile(OpenPicture.FileName)
//      Else
//        MessageDlg('La imagen a adjuntar no debe ser mayor a 300 kb.', mtInformation, [mbOk], 0);
//    except
//      bImagen.Picture.LoadFromFile('') ;
//    end
//  end
  if zqEmpleados.RecordCount = 0 then
    abort;
end;

procedure Tfrm_EmpleadosCont.ReporteFotograficoBeforePost(DataSet: TDataSet);
begin
  If sArchivo <> '' Then
    TGraphicField(reportefotografico.FieldByName('bImagen')).LoadFromFile(sArchivo);

  btnPreview.Enabled := True ;
end;

procedure Tfrm_EmpleadosCont.RFCKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        Nacionalidad.SetFocus
end;

procedure Tfrm_EmpleadosCont.sLibretaMarKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        Cartilla.SetFocus
end;

procedure Tfrm_EmpleadosCont.tdSueldoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        dbLabora.setfocus
end;

procedure Tfrm_EmpleadosCont.tsCiudadKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        dbPuesto.SetFocus
end;

procedure Tfrm_EmpleadosCont.tsDomicilioKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        tsCiudad.SetFocus
end;

procedure Tfrm_EmpleadosCont.tsIdAreaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        CUENTA.Setfocus
end;

procedure Tfrm_EmpleadosCont.tsIdEmpleadoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        tsNombre.SetFocus
end;

procedure Tfrm_EmpleadosCont.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        tsDomicilio.SetFocus
end;

procedure Tfrm_EmpleadosCont.tsPuestoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13  then
        tsTelefono.SetFocus
end;

procedure Tfrm_EmpleadosCont.tsTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        Mail.SetFocus
end;

procedure Tfrm_EmpleadosCont.zQEmpleadosAfterInsert(
  DataSet: TDataSet);
begin
    zqEmpleados.FieldValues['sIdEmpleado'] := '*' ;
    zqEmpleados.FieldValues['sNombreCompleto'] := '*' ;
    zqEmpleados.FieldValues['sDomicilio'] := '*' ;
    zqEmpleados.FieldValues['sCiudad'] := '*' ;
    zqEmpleados.FieldValues['sPuesto'] := '*' ;
    zqEmpleados.FieldValues['sIdArea'] := '' ;
    zqEmpleados.FieldValues['sTelefono'] := '*' ;
    zqEmpleados.FieldValues['sEmail'] := '*' ;
    zqEmpleados.FieldValues['dSueldo'] := 0 ;
end;

procedure Tfrm_EmpleadosCont.zQEmpleadosAfterScroll(DataSet: TDataSet);
begin
  zq_EquiposPorEmpleado.Active := False;
  zq_EquiposPorEmpleado.Params.ParamByName('Empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
  zq_EquiposPorEmpleado.Open;
  bImagen.Picture.Bitmap := Nil ;
//  ReporteFotografico.Active := False ;
//  ReporteFotografico.Params.ParamByName('Identificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;;
//  ReporteFotografico.Open;
end;

procedure Tfrm_EmpleadosCont.zQEmpleadossIdAreaChange(Sender: TField);
begin
    zqEmpleados.FieldValues['sIdEmpleado'] := zQAreas.FieldValues['sMascara'];
end;

procedure Tfrm_EmpleadosCont.zq_EquiposPorEmpleadoAfterScroll(DataSet: TDataSet);
begin
  zqEquipos.Locate('iId', zq_EquiposPorEmpleado.FieldByName('iIdEquipo').AsString, [])
end;

end.
