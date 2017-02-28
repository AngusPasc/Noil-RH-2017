unit frm_ReportesAlmacen2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dblookup, sRadioButton, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frm_connection, DBCtrls, global, frxClass,
  frxDBSet, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvExControls, JvLabel;

type
  TfrmReportesAlmacen2 = class(TForm)
    GroupBox1: TGroupBox;
    rMateriales: TRadioButton;
    rMaterialesFoto: TRadioButton;
    rStockMinimo: TRadioButton;
    rStockMaximo: TRadioButton;
    rMaterialesPerecederos: TRadioButton;
    rMaterialesUbicacion: TRadioButton;
    Label1: TLabel;
    btnImprime: TBitBtn;
    qryAlmacenes: TZQuery;
    dsalmacenes: TDataSource;
    cboAlmacen: TDBLookupComboBox;
    cboFamilia: TDBLookupComboBox;
    Label2: TLabel;
    qryfamilias: TZQuery;
    dsFamilias: TDataSource;
    Imp_Insumos: TZQuery;
    frxInsumos: TfrxReport;
    rAnexoF: TRadioButton;
    rAnexoDMA: TRadioButton;
    frxReport1: TfrxReport;
    DBTotalesxCategoria: TfrxDBDataset;
    frxAnexoDMA: TfrxReport;
    DBAnexoDMA: TfrxDBDataset;
    qryAnexoDMA: TZReadOnlyQuery;
    rRecepciondeMateriales: TRadioButton;
    Label3: TLabel;
    Label4: TLabel;
    FechaI: TJvDatePickerEdit;
    FechaF: TJvDatePickerEdit;
    frxRecepcionDeMateriales: TfrxReport;
    zq_historialdemateriales: TZQuery;
    frx_historialdemateriales: TfrxDBDataset;
    zq_historialdemateriales_detalles: TZQuery;
    frx_historialdemateriales_detalles: TfrxDBDataset;
    zq_historialdematerialesiId: TIntegerField;
    zq_historialdematerialessContrato: TStringField;
    zq_historialdematerialessFolio: TStringField;
    zq_historialdematerialessTipoMovimiento: TStringField;
    zq_historialdematerialesdFechaRecepcion: TDateField;
    zq_historialdematerialessIdAlmacen: TStringField;
    zq_historialdematerialesmNotas: TMemoField;
    zq_historialdematerialessStatus: TStringField;
    zq_historialdematerialesEstado: TStringField;
    zq_historialdematerialesQuienValida: TStringField;
    zq_historialdemateriales_detallesiId: TIntegerField;
    zq_historialdemateriales_detallesiId_recepcion: TIntegerField;
    zq_historialdemateriales_detallessIdInsumo: TStringField;
    zq_historialdemateriales_detallesdCantidad: TFloatField;
    zq_historialdemateriales_detallesmDescripcion: TMemoField;
    zq_historialdemateriales_detallessMedida: TStringField;
    zq_historialdemateriales_detallessDescripcion: TStringField;
    zq_historialdemateriales_detallesdFechaRecepcion: TDateField;
    ImprimirTodasLasFamilias: TCheckBox;
    smaterial: TRadioButton;
    frxListado: TfrxDBDataset;
    frxmaterial: TfrxReport;
    Zmaterial: TZReadOnlyQuery;
    Zglobales: TZReadOnlyQuery;
    frxglobales: TfrxDBDataset;
    Zbitacora: TZReadOnlyQuery;
    frxbitacora: TfrxDBDataset;
    Zoordentrabajo: TZReadOnlyQuery;
    ordentrabajo: TDataSource;
    sordentrabajo: TDBLookupComboBox;
    JvLabel1: TJvLabel;
    Zordentrabajo: TZReadOnlyQuery;
    frxzordentrabajo: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure frxInsumosGetValue(const VarName: string; var Value: Variant);
    procedure rStockMinimoClick(Sender: TObject);
    procedure rStockMaximoClick(Sender: TObject);
    procedure rMaterialesPerecederosClick(Sender: TObject);
    procedure rMaterialesUbicacionClick(Sender: TObject);
    procedure rAnexoFClick(Sender: TObject);
    procedure rAnexoDMAClick(Sender: TObject);
    procedure rMaterialesFotoClick(Sender: TObject);
    procedure rMaterialesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rRecepciondeMaterialesClick(Sender: TObject);
    procedure ImprimirTodasLasFamiliasClick(Sender: TObject);
    procedure smaterialClick(Sender: TObject);
    procedure frxmaterialGetValue(const VarName: string; var Value: Variant);
    procedure frxInsumosClosePreview(Sender: TObject);
    procedure frxReport1ClosePreview(Sender: TObject);
    procedure frxAnexoDMAClosePreview(Sender: TObject);
    procedure frxRecepcionDeMaterialesClosePreview(Sender: TObject);
    procedure frxmaterialClosePreview(Sender: TObject);
    procedure cboAlmacenKeyPress(Sender: TObject; var Key: Char);
    procedure cboFamiliaKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirTodasLasFamiliasKeyPress(Sender: TObject; var Key: Char);
    procedure FechaIKeyPress(Sender: TObject; var Key: Char);
    procedure FechaFKeyPress(Sender: TObject; var Key: Char);
    procedure sordentrabajoKeyPress(Sender: TObject; var Key: Char);
    procedure FormContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    procedure Materiales;
    procedure MaterialesConFoto;
    procedure MaterialesInstalado;
    procedure MaterialesSetockMinimo;
    procedure MaterialesStockMaximo;
    procedure MaterialesPerecederos;
    procedure MaterialesUbicacion;
    procedure AnexoDMA;
    procedure AnexoF;
    procedure Seguimiento;
    procedure RecepcionDeMateriales;
    procedure blockFechas(lParam : boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportesAlmacen2: TfrmReportesAlmacen2;
  stock: string;
  AplicaFamilia: String;

implementation

{$R *.dfm}

procedure TfrmReportesAlmacen2.FechaFKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       if sordentrabajo.Visible = True then
          sordentrabajo.SetFocus
       else
          btnImprime.SetFocus;
end;

procedure TfrmReportesAlmacen2.FechaIKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       FechaF.SetFocus
end;

procedure TfrmReportesAlmacen2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  

end;

procedure TfrmReportesAlmacen2.FormContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
   Handled := True;
end;

procedure TfrmReportesAlmacen2.FormShow(Sender: TObject);
begin
  try
    Zoordentrabajo.Active := false;
     Zoordentrabajo.ParamByName('contrato').AsString := global_contrato;
    Zoordentrabajo.Open;

    qryAlmacenes.Active := false;
    qryAlmacenes.Open;
    try
      cboAlmacen.KeyValue := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
    except
    end;

    qryfamilias.Active := false;
    qryfamilias.Open;
    try
      cboFamilia.KeyValue := qryfamilias.FieldByName('sIdFamilia').AsString;
    except
    end;
  except
  end;
  blockFechas(False);
  
end;

procedure TfrmReportesAlmacen2.frxAnexoDMAClosePreview(Sender: TObject);
begin
    frmReportesAlmacen2.Visible := True;
end;

procedure TfrmReportesAlmacen2.frxInsumosClosePreview(Sender: TObject);
begin
    frmReportesAlmacen2.Visible := True;
end;

procedure TfrmReportesAlmacen2.frxInsumosGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'sStock') = 0 then
    Value := stock;
end;

procedure TfrmReportesAlmacen2.frxmaterialClosePreview(Sender: TObject);
begin
    frmReportesAlmacen2.Visible := True;
end;

procedure TfrmReportesAlmacen2.frxmaterialGetValue(const VarName: string;
  var Value: Variant);
begin
if CompareText(VarName, 'FechaFinal') = 0 then
    Value := DateToStr(FechaF.date) ;
end;

procedure TfrmReportesAlmacen2.frxRecepcionDeMaterialesClosePreview(
  Sender: TObject);
begin
   frmReportesAlmacen2.Visible := True;
end;

procedure TfrmReportesAlmacen2.frxReport1ClosePreview(Sender: TObject);
begin
    frmReportesAlmacen2.Visible := True;
end;

procedure TfrmReportesAlmacen2.btnImprimeClick(Sender: TObject);
begin
  if Not ImprimirTodasLasFamilias.Checked then begin
    AplicaFamilia := 'AND i.sIdGrupo = ' + QuotedStr(qryFamilias.FieldByName('sIdFamilia').AsString);
  end else begin
    AplicaFamilia := '';
  end;
  if smaterial.Checked then
  begin
    MaterialesInstalado;
  end;
  if rMateriales.Checked then
  begin
    Materiales;
  end;
  if rMaterialesFoto.Checked then
  begin
    MaterialesConFoto;
  end;
  if rStockMinimo.Checked then
  begin
    MaterialesSetockMinimo;
  end;
  if rStockMaximo.Checked then
  begin
    MaterialesStockMaximo;
  end;
  if rMaterialesPerecederos.Checked then
  begin
    MaterialesPerecederos;
  end;
  if rMaterialesUbicacion.Checked then
  begin
    MaterialesUbicacion;
  end;
  if rAnexoF.Checked then
  begin
    AnexoF;
  end;
  if rAnexoDMA.Checked then
  begin
    AnexoDMA;
  end;
  if rRecepciondeMateriales.Checked then begin
    RecepcionDeMateriales;
  end;
  
  
end;

procedure TfrmReportesAlmacen2.cboAlmacenKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
       cboFamilia.SetFocus;
end;

procedure TfrmReportesAlmacen2.cboFamiliaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       ImprimirTodasLasFamilias.SetFocus;
end;

procedure TfrmReportesAlmacen2.ImprimirTodasLasFamiliasClick(Sender: TObject);
begin
  cboFamilia.Enabled := Not ImprimirTodasLasFamilias.Checked;
end;

procedure TfrmReportesAlmacen2.ImprimirTodasLasFamiliasKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       FechaI.SetFocus
end;

procedure TfrmReportesAlmacen2.MaterialesInstalado;
begin
  Zmaterial.Active := false;
  Zmaterial.SQL.Clear ;
  Zmaterial.SQL.Add('select concat(format(sum(dAvancePonderadoDia),4),"%") as avance '+
                   ' from avancesglobales  where sNumeroOrden = :orden and sIdConvenio = :convenio and scontrato = :contrato  and  dIdFecha <=:fechaF  ; ');
  Zmaterial.ParamByName('orden').AsString   := sordentrabajo.Text ;
  Zmaterial.ParamByName('contrato').AsString   := global_contrato;
  Zmaterial.ParamByName('convenio').AsString  := global_convenio;
  //Zmaterial.ParamByName('FechaI').AsDate := JvDatePickerEdit1.Date;
  Zmaterial.ParamByName('fechaF').AsDate := FechaF.Date;
  Zmaterial.Open;


  Zglobales.Active := false;
  Zglobales.SQL.Clear ;
  Zglobales.SQL.Add('select concat(format(sum(dAvance),4),"%") as avancereal  '+
                    'from avancesglobalesxorden where sNumeroOrden = :orden and sIdConvenio = :convenio and scontrato = :contrato  and  dIdFecha <=:fechaF; ');
  Zglobales.ParamByName('orden').AsString   := sordentrabajo.Text ;
  Zglobales.ParamByName('contrato').AsString   := global_contrato;
  Zglobales.ParamByName('convenio').AsString  := global_convenio;
  //Zmaterial.ParamByName('FechaI').AsDate := JvDatePickerEdit1.Date;
  Zglobales.ParamByName('fechaF').AsDate := FechaF.Date;
  Zglobales.Open;

  Zbitacora.Active := false;
  Zbitacora.SQL.Clear ;
  Zbitacora.SQL.Add('select a.sIdMaterial,a.sDescripcion, b.dExistencia, sum(a.dCantidad)as cantidadinst '+
                    'from bitacorademateriales a inner join insumos b on ((:Principal=-1 or (:Principal<>-1 and b.sContrato = a.sContrato)) and b.sIdInsumo = a.sIdMaterial)  '+
                    'where  a.scontrato = :contrato  and  dIdFecha between :FechaI and :fechaF group by a.sIdMaterial ; ');
  Zbitacora.ParamByName('contrato').AsString   := global_contrato;
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Zbitacora.ParamByName('Principal').AsString  := 'Si'
  else
    Zbitacora.ParamByName('Principal').AsInteger :=-1;
  Zbitacora.ParamByName('FechaI').AsDate := FechaI.Date;
  Zbitacora.ParamByName('fechaF').AsDate := FechaF.Date;
  Zbitacora.Open;

  Zordentrabajo.SQL.Clear ;
  Zordentrabajo.SQL.Add('Select '+
                    ' mDescripcion as descripcionfrente, soficioAutorizacion '+
                    'From ordenesdetrabajo      '+
                    'Where sContrato = :Contrato ');
  Zordentrabajo.ParamByName('Contrato').asString    := global_contrato ;
  Zordentrabajo.Open ;



  frmReportesAlmacen2.Visible := False;
  frxmaterial.LoadFromFile(global_files + global_miReporte+ '_ALMMaterialListado.fr3');
   if not FileExists(global_files + global_miReporte + '_ALMMaterialListado.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMMaterialListado.fr3 no existe, notifique al administrador del sistema');
  frxmaterial.ShowReport();
  FechaI.Date := Date;
  FechaF.Date := Date;

end;


procedure TfrmReportesAlmacen2.Materiales;
begin

  Imp_Insumos.Active := False;
  Imp_Insumos.SQL.Clear;
  Imp_Insumos.SQL.Add(' select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
    ' i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
    ' i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
    ' f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
    ' left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
    ' left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
    ' where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato = :Contrato)) and i.sIdAlmacen =:Almacen '+AplicaFamilia+' ' +
    ' order by i.sIdGrupo, a.sDescripcion, i.sIdinsumo ');
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Imp_Insumos.ParamByName('contrato').AsString  := global_contrato
  else
    Imp_Insumos.ParamByName('Contrato').AsInteger :=-1;
  Imp_Insumos.Params.ParamByName('Almacen').AsString := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  Imp_Insumos.Open;



  frmReportesAlmacen2.Visible := False;
  frxinsumos.LoadFromFile(global_files + global_miReporte+ '_ALMinsumos.fr3');
   if not FileExists(global_files + global_miReporte + '_ALMinsumos.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMinsumos.fr3 no existe, notifique al administrador del sistema');
  frxinsumos.ShowReport();
end;

procedure TfrmReportesAlmacen2.RecepcionDeMateriales;
begin
  zq_historialdemateriales_detalles.Active := False;
  zq_historialdemateriales_detalles.Params.ParamByName('FechaInicio').AsDate := FechaI.Date;
  zq_historialdemateriales_detalles.Params.ParamByName('FechaTermino').AsDate := FechaF.Date;
  zq_historialdemateriales_detalles.Params.ParamByName('Contrato').AsString := Global_Contrato;
  zq_historialdemateriales_detalles.Params.ParamByName('Almacen').AsString := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  zq_historialdemateriales_detalles.Open;



  frmReportesAlmacen2.Visible := False;

  frxRecepcionDeMateriales.LoadFromFile(global_files + global_miReporte + '_ALMrHistorialDeRecepcionDeMateriales.fr3');
   if not FileExists(global_files + global_miReporte + '_ALMrHistorialDeRecepcionDeMateriales.fr3') then
      showmessage('El archivo de reporte '+global_Mireporte+'_ALMrHistorialDeRecepcionDeMateriales.fr3 no existe, notifique al administrador del sistema');
  frxRecepcionDeMateriales.ShowReport();
  FechaI.Date := Date;
  FechaF.Date := Date;
end;

procedure TfrmReportesAlmacen2.MaterialesConFoto;
begin
  Imp_Insumos.Active := False;
  Imp_Insumos.SQL.Clear;
  Imp_Insumos.SQL.Add('select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
    'i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
    'i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, i.bImagen, ' +
    'f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
    'left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
    'left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
    'where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato = :Contrato)) and i.sIdAlmacen =:Almacen '+AplicaFamilia+' order by i.sIdGrupo, a.sDescripcion, i.sIdinsumo ');
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Imp_Insumos.ParamByName('contrato').AsString  := global_contrato
  else
    Imp_Insumos.ParamByName('Contrato').AsInteger :=-1;
  Imp_Insumos.Params.ParamByName('Almacen').DataType := ftString;
  Imp_Insumos.Params.ParamByName('Almacen').AsString := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  Imp_Insumos.Open;



  frmReportesAlmacen2.Visible := False;

  frxinsumos.LoadFromFile(global_files + global_MiReporte + '_ALMinsumos_fotos.fr3');
  if not FileExists(global_files + global_miReporte + '_ALMinsumos_fotos.fr3') then
      showmessage('El archivo de reporte '+global_Mireporte+'_ALMinsumos_fotos.fr3 no existe, notifique al administrador del sistema');
  frxinsumos.ShowReport();
  FechaI.Date := Date;
  FechaF.Date := Date;

end;

procedure TfrmReportesAlmacen2.MaterialesSetockMinimo;
begin
  Imp_Insumos.Active := False;
  Imp_Insumos.SQL.Clear;
  Imp_Insumos.SQL.Add(' select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
    ' i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
    ' i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
    ' f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
    ' left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
    ' left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
    ' where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato = :Contrato)) and i.sIdAlmacen =:Almacen  ' +
    ' and i.dExistencia <= i.dStockMin '+AplicaFamilia+' order by f.sDescripcion, i.sIdinsumo');
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Imp_Insumos.ParamByName('contrato').AsString  := global_contrato
  else
    Imp_Insumos.ParamByName('Contrato').AsInteger :=-1;
  Imp_Insumos.Params.ParamByName('Almacen').AsString := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  Imp_Insumos.Open;



  stock := 'MINIMO';
  frmReportesAlmacen2.Visible := False;

  frxinsumos.LoadFromFile(global_files + global_miReporte  +'_ALMinsumos_stockMin.fr3');

    if not FileExists(global_files + global_miReporte + '_ALMinsumos_stockMin.fr3') then
      showmessage('El archivo de reporte '+global_Mireporte+'_ALMinsumos_stockMin.fr3 no existe, notifique al administrador del sistema');

  frxinsumos.ShowReport();
  FechaI.Date := Date;
  FechaF.Date := Date;

end;

procedure TfrmReportesAlmacen2.MaterialesStockMaximo;
begin
  Imp_Insumos.Active := False;
  Imp_Insumos.SQL.Clear;
  Imp_Insumos.SQL.Add(' select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
    ' i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
    ' i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
    ' f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
    ' left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
    ' left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
    ' where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato = :Contrato)) and i.sIdAlmacen =:Almacen '+AplicaFamilia+' ' +
    ' and i.dExistencia >= i.dStockMax and i.dStockMax > 0 order by f.sDescripcion, i.sIdinsumo ');
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Imp_Insumos.ParamByName('contrato').AsString  := global_contrato
  else
    Imp_Insumos.ParamByName('Contrato').AsInteger :=-1;
  Imp_Insumos.Params.ParamByName('Almacen').AsString := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  Imp_Insumos.Open;




  stock := 'MAXIMO';
  frmReportesAlmacen2.Visible := False;

  frxinsumos.LoadFromFile(global_files + global_miReporte + '_ALMinsumos_stockMin.fr3');
   if not FileExists(global_files + global_miReporte + '_ALMinsumos_stockMin.fr3') then
      showmessage('El archivo de reporte '+global_Mireporte+'_ALMinsumos_stockMin.fr3 no existe, notifique al administrador del sistema');
  frxinsumos.ShowReport();
   FechaI.Date := Date;
  FechaF.Date := Date;

end;

procedure TfrmReportesalmacen2.MaterialesPerecederos;
begin
  Imp_Insumos.Active := False;
  Imp_Insumos.SQL.Clear;
  Imp_Insumos.SQL.Add(' select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
    ' i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
    ' i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
    ' f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
    ' left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
    ' left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
    ' where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato = :Contrato)) and i.sIdAlmacen =:Almacen  ' +
    ' and i.dFechaCaducidad <=:fecha and i.lAplicaFecha = "Si" and sIdGrupo like :grupo order by f.sDescripcion, i.sIdinsumo');
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Imp_Insumos.ParamByName('contrato').AsString  := global_contrato
  else
    Imp_Insumos.ParamByName('Contrato').AsInteger :=-1;
  Imp_Insumos.Params.ParamByName('Almacen').AsString  := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  if ImprimirTodaslasfamilias.Checked then
     Imp_Insumos.Params.ParamByName('Grupo').AsString := '%'
  else
     Imp_Insumos.Params.ParamByName('Grupo').AsString := qryFamilias.FieldByName('sIdFamilia').AsString + '%';
  Imp_Insumos.Params.ParamByName('fecha').AsDate      := fechaF.Date;
  Imp_Insumos.Open;
  frxinsumos.LoadFromFile(global_files + global_miReporte+ '_ALMinsumos_perecederos.fr3');
  if not FileExists(global_files + global_miReporte + '_ALMinsumos_perecederos.fr3') then
      showmessage('El archivo de reporte '+global_Mireporte+'_ALMinsumos_perecederos.fr3 no existe, notifique al administrador del sistema');

  if Imp_Insumos.RecordCount = 0 then
     messagedlg('No se encontraron Materiales Perecederos en las Familias y Fechas Especificados!', mtInformation, [mbOk], 0);
  frmReportesAlmacen2.Visible := False;

  frxinsumos.ShowReport();
   FechaI.Date := Date;
  FechaF.Date := Date;
  
end;

procedure TfrmReportesalmacen2.MaterialesUbicacion;
begin
  Imp_Insumos.Active := False;
  Imp_Insumos.SQL.Clear;
  Imp_Insumos.SQL.Add(' select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
    ' i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
    ' i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
    ' f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
    ' left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
    ' left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
    ' where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato = :Contrato)) and i.sIdAlmacen =:Almacen '+AplicaFamilia+' ' +
    ' order by f.sDescripcion, i.sUbicacion, i.sIdinsumo');
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Imp_Insumos.ParamByName('contrato').AsString  := global_contrato
  else
    Imp_Insumos.ParamByName('Contrato').AsInteger :=-1;
  Imp_Insumos.Params.ParamByName('Almacen').AsString := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  Imp_Insumos.Open;



  frmReportesAlmacen2.Visible := False;

  frxinsumos.LoadFromFile(global_files + global_miReporte+ '_ALMinsumos_ubicacion.fr3');
   if not FileExists(global_files + global_miReporte + '_ALMinsumos_ubicacion.fr3') then
      showmessage('El archivo de reporte '+global_Mireporte+'_ALMinsumos_ubicacion.fr3 no existe, notifique al administrador del sistema');
  frxinsumos.ShowReport();
   FechaI.Date := Date;
  FechaF.Date := Date;
end;

procedure TfrmReportesAlmacen2.rAnexoDMAClick(Sender: TObject);
begin
  cboFamilia.Enabled := not rAnexoDMA.Checked;
  ImprimirTodasLasFamilias.Enabled := False;
  sordentrabajo.Visible := false;
  blockFechas(True);
  ImprimirTodasLasFamilias.Enabled := True;
end;

procedure TfrmReportesAlmacen2.rAnexoFClick(Sender: TObject);
begin
  cboFamilia.Enabled := not rAnexoF.Checked;
  sordentrabajo.Visible := false;
  blockFechas(False);
  ImprimirTodasLasFamilias.Enabled := True;
end;

procedure TfrmReportesAlmacen2.rMaterialesClick(Sender: TObject);
begin
  cboFamilia.Enabled := rMateriales.Checked;
  blockFechas(False);
  sordentrabajo.Visible := false;
  ImprimirTodasLasFamilias.Enabled := True;
end;

procedure TfrmReportesAlmacen2.rMaterialesFotoClick(Sender: TObject);
begin
  cboFamilia.Enabled := rMaterialesFoto.Checked;
  blockFechas(False);
  sordentrabajo.Visible := false;
  ImprimirTodasLasFamilias.Enabled := True;

end;

procedure TfrmReportesAlmacen2.rMaterialesPerecederosClick(Sender: TObject);
begin
  cboFamilia.Enabled := rMaterialesPerecederos.Checked;
  blockFechas(True);
  ImprimirTodasLasFamilias.Enabled := True;
end;

procedure TfrmReportesAlmacen2.rMaterialesUbicacionClick(Sender: TObject);
begin
  //cboFamilia.Enabled := not rMaterialesUbicacion.Checked;
  sordentrabajo.Visible := false;
  blockFechas(False);
  ImprimirTodasLasFamilias.Enabled := True;
end;

procedure TfrmReportesAlmacen2.rRecepciondeMaterialesClick(Sender: TObject);
begin
  FechaI.Enabled := rRecepcionDeMateriales.Checked;
  FechaF.Enabled := rRecepcionDeMateriales.Checked;
  cboFamilia.Enabled := False;
  sordentrabajo.Visible := false;
  blockFechas(True);
  ImprimirTodasLasFamilias.Enabled := True;

end;

procedure TfrmReportesAlmacen2.rStockMaximoClick(Sender: TObject);
begin
  cboFamilia.Enabled := rStockMaximo.Checked;
  sordentrabajo.Visible := false;
  ImprimirTodasLasFamilias.Enabled := True;
  blockFechas(False);
  ImprimirTodasLasFamilias.Enabled := True;
end;

procedure TfrmReportesAlmacen2.rStockMinimoClick(Sender: TObject);
begin
  cboFamilia.Enabled := rStockMinimo.Checked;
  sordentrabajo.Visible := false;
  ImprimirTodasLasFamilias.Enabled := True;
  blockFechas(False);
  ImprimirTodasLasFamilias.Enabled := True;
end;

procedure TfrmReportesalmacen2.AnexoDMA;
begin
  qryAnexoDMA.Active := False;
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    qryAnexoDMA.ParamByName('contrato').AsString  := global_contrato
  else
    qryAnexoDMA.ParamByName('Contrato').AsInteger :=-1;

  qryAnexoDMA.Params.ParamByName('almacen').DataType := ftString;
  qryAnexoDMA.Params.ParamByName('almacen').Value := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  qryAnexoDMA.Open;



  frmReportesAlmacen2.Visible := False;

  if qryAnexoDMA.RecordCount > 0 then
  begin
    frxAnexoDMA.LoadFromFile(Global_Files + global_miReporte+ '_ALMDmaMateriales.fr3');
    if not FileExists(global_files + global_miReporte + '_ALMDmaMateriales.fr3') then
     showmessage('El archivo de reporte '+global_Mireporte+'_ALMDmaMateriales.fr3 no existe, notifique al administrador del sistema');
    frxAnexoDMA.ShowReport();
     FechaI.Date := Date;
      FechaF.Date := Date;
  end
  else
    messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmReportesalmacen2.AnexoF;
begin
  Imp_Insumos.Active := False;
  Imp_Insumos.SQL.Clear;
  Imp_Insumos.SQL.Add(' select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
    ' i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
    ' i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
    ' f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
    ' left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
    ' left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
    ' where (:Contrato=-1 or (:Contrato<>-1 and i.sContrato = :Contrato)) and i.sIdAlmacen =:Almacen '+AplicaFamilia+' ' +
    ' order by f.sDescripcion, i.sIdinsumo');
  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    Imp_Insumos.ParamByName('contrato').AsString  := global_contrato
  else
    Imp_Insumos.ParamByName('Contrato').AsInteger :=-1;
  Imp_Insumos.Params.ParamByName('Almacen').AsString := qryAlmacenes.FieldByName('sIdAlmacen').AsString;
  Imp_Insumos.Open;


  frmReportesAlmacen2.Visible := False;

  frxinsumos.PreviewOptions.MDIChild := False;
  frxinsumos.PreviewOptions.Modal := True;
  frxinsumos.PreviewOptions.ShowCaptions := False;
  frxinsumos.Previewoptions.ZoomMode := zmPageWidth;
  frxinsumos.LoadFromFile(global_files + global_miReporte + '_ALMinsumos_anexo.fr3');
  if not FileExists(global_files + global_miReporte + '_ALMinsumos_anexo.fr3') then
      showmessage('El archivo de reporte '+global_Mireporte+'_ALMinsumos_anexo.fr3 no existe, notifique al administrador del sistema');


  frxinsumos.ShowReport();
   FechaI.Date := Date;
  FechaF.Date := Date;
end;

procedure TfrmReportesalmacen2.Seguimiento;
var
  QryCompras,
    QryRequisiciones: TZReadOnlyQuery;
  dsCompras,
    dsRequisiciones: TfrxDBDataSet;
  tOrigen: TComponent;
begin
  QryCompras := TZReadOnlyQuery.Create(tOrigen);
  QryCompras.Connection := connection.zConnection;

  QryRequisiciones := TZReadOnlyQuery.Create(tOrigen);
  QryRequisiciones.Connection := connection.zConnection;

  dsCompras := TfrxDBDataSet.Create(tOrigen);
  dsCompras.DataSet := QryCompras;
  dsCompras.FieldAliases.Clear;
  dsCompras.UserName := 'dsCompras';

  dsRequisiciones := TfrxDBDataSet.Create(tOrigen);
  dsRequisiciones.DataSet := QryRequisiciones;
  dsRequisiciones.FieldAliases.Clear;
  dsRequisiciones.UserName := 'dsRequisiciones';

  Imp_Insumos.Active := False;
  Imp_Insumos.SQL.Clear;
  Imp_Insumos.SQL.Add('select sIdInsumo, sTipoActividad, mDescripcion, sMedida, dExistencia from insumos where sContrato =:Contrato and sIdInsumo =:Insumo ');
  Imp_Insumos.Params.ParamByName('Contrato').AsString := global_contrato;
 // Imp_Insumos.Params.ParamByName('Insumo').AsString := insumos.FieldValues['sIdInsumo'];
  Imp_Insumos.Open;

  QryCompras.Active := False;
  QryCompras.SQL.Clear;
  QryCompras.SQL.Add('select pp.mDescripcion, pp.sMedida, pp.dCantidad, pp.sNumeroOrden, p.sOrdenCompra ' +
    'from anexo_ppedido pp ' +
    'inner join anexo_pedidos p on (pp.sContrato = p.sContrato and pp.iFolioPedido = p.iFolioPedido) ' +
    'where pp.sContrato =:Contrato and pp.sIdInsumo =:Insumo');
  QryCompras.Params.ParamByName('Contrato').AsString := global_contrato;
//  QryCompras.Params.ParamByName('Insumo').AsString := insumos.FieldValues['sIdInsumo'];
  QryCompras.Open;

  QryRequisiciones.Active := False;
  QryRequisiciones.SQL.Clear;
  QryRequisiciones.SQL.Add('select pp.mDescripcion, pp.sMedida, pp.dCantidad, pp.sNumeroOrden, p.iFolioRequisicion, p.sLugarEntrega ' +
    'from anexo_prequisicion pp ' +
    'inner join anexo_requisicion p on (pp.sContrato = p.sContrato and pp.iFolioRequisicion = p.iFolioRequisicion) ' +
    'where pp.sContrato =:Contrato ' +
    'and pp.sIdInsumo =:Insumo ');
  QryRequisiciones.Params.ParamByName('Contrato').AsString := global_contrato;
//  QryRequisiciones.Params.ParamByName('Insumo').AsString := insumos.FieldValues['sIdInsumo'];
  QryRequisiciones.Open;

  frxInsumos.DataSets.Add(dsCompras);
  frxInsumos.DataSets.Add(dsRequisiciones);

  frxinsumos.LoadFromFile(global_files + global_MiReporte + '_seguimiento_material.fr3');
  frxinsumos.ShowReport();

  QryCompras.Destroy;
  dsCompras.Destroy;
end;
procedure TfrmReportesAlmacen2.smaterialClick(Sender: TObject);
begin
  cboFamilia.Enabled := smaterial.Checked;
  blockFechas(True);
  cboFamilia.Enabled := False;
  sordentrabajo.Visible := true;
  JvLabel1.Visible := true;

end;

procedure TfrmReportesAlmacen2.sordentrabajoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       btnImprime.SetFocus
end;

procedure TfrmReportesAlmacen2.blockFechas(lParam: Boolean);
begin
   FechaI.Visible := lParam;
   FechaF.Visible := lParam;
   FechaI.Enabled := lParam;
   FechaF.Enabled := lParam;
   label3.Visible := lParam;
   label4.Visible := lParam;
end;

end.

