unit utileriascadmvo;

interface
uses
Windows, DateUtils, StrUtils, Dialogs, SysUtils, Math, Controls, adoDB, RxMemDS, DB, ShellAPI,
  frm_connection, frxClass, frxDBSet, Classes, global, variants, Graphics, ZDataset,
  DBCtrls, Forms, StdCtrls, RXDBCtrl, IdAttachmentFile, IdSSLOpenSSL, ZDbcIntfs, ComCtrls,
  JPEG, cxtextEdit, cxDBEdit, cxMaskEdit, ExtCtrls;



  procedure rptEgresoxFolio (ParamFecha : tDate; ParamFolio : Integer) ;
  procedure procReporteGasto ;
  procedure rptEgresos (ParamFechaInicio, ParamFechaFinal : tDate) ;
  procedure rptEgresos2 (ParamFechaInicio, ParamFechaFinal : string) ;
  procedure rptEgresosxProveedor (ParamFechaInicio, ParamFechaFinal : tDate) ;
  procedure rptEgresosxTipoMovimiento (ParamFechaInicio, ParamFechaFinal : tDate) ;
  procedure procCostoOperativo (sParamOrden: string);

implementation


procedure rptEgresoxFolio (ParamFecha : tDate; ParamFolio : Integer) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
    Connection.configuracion.refresh ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('select te.dIdFecha, te.iIdFolio, te.sIdNumeroCuenta, cb.sNombreCuenta, te.sReferencia, ' +
                      'te.sIdProveedor, te.sRazonSocial, te.sRFC, te.sDomicilio, te.sCiudad, te.sEstado, te.sCP, te.dImporteTotal, te.dIva, ' +
                      'tp.sIdEgreso, ce.mDescripcion, tp.sTipoEgreso, tp.sIdProveedor as sIdProveedor2, ' +
                      'tp.sRazonSocial as sRazonSocial2, tp.sIdFactura, tp.mDescripcion, tp.dImporte from con_tesoreriaegresos te ' +
                      'inner join con_tesoreriapegresos tp on (te.iIdFolio = tp.iIdFolio and tp.idorganizacion =:organizacion) ' +
                      'inner join con_catalogodeegresos ce on (ce.sIdEgreso = tp.sIdEgreso) ' +
                      'inner join con_cuentasbancarias cb on (te.sIdNumeroCuenta = cb.sIdNumeroCuenta) ' +
                      'where te.iIdFolio = :Folio and ((te.sTipoMovimiento ="GASTOS") Or (te.sTipoMovimiento ="CHEQUE")) Order By tp.sTipoEgreso, tp.sIdEgreso') ;
    zTmpQuery.Params.ParamByName('Folio').DataType    := ftInteger ;
    zTmpQuery.Params.ParamByName('Folio').Value       := ParamFolio ;
    zTmpQuery.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);
    if zTmpQuery.RecordCount > 0 then
      begin
         rptReporte.LoadFromFile(global_files+ global_miReporte + '_frComprobacionCheque.fr3') ;
         rptReporte.ShowReport() ;
           if not FileExists(global_files + global_miReporte + '_frComprobacionCheque.fr3') then
        begin
            showmessage('El archivo de reporte '+global_Mireporte+'_frComprobacionCheque.fr3 no existe, notifique al administrador del sistema');
         exit;
          end;


      end;
    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;



procedure rptEgresosxTipoMovimiento(ParamFechaInicio, ParamFechaFinal : tDate) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
    connection.configuracion.refresh ;
    sTitleFecha := 'Impresion de Egresos del ' + DateToStr(ParamFechaInicio) + ' al ' + DateToStr(ParamFechaFinal) + '.'  ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('Select te.*, tp.*, ce.mDescripcion as sDescripionArticulo from con_tesoreriaegresos te ' +
                     'inner join con_tesoreriapegresos tp on (te.dIdFecha = tp.dIdFecha and te.iIdFolio = tp.iIdFolio and tp.idorganizacion =:organizacion) ' +
                     'inner join con_catalogodeegresos ce on (tp.sIdEgreso = ce.sIdEgreso) ' +
                     'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF Order By tp.sIdEgreso, tp.sIdProveedor, te.dIdFecha, te.iIdFolio') ;
    zTmpQuery.Params.ParamByName('FechaI').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaI').Value := ParamFechaInicio ;
    zTmpQuery.Params.ParamByName('FechaF').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaF').Value := ParamFechaFinal ;
    zTmpQuery.Params.ParamByName('Organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);

    rptReporte.LoadFromFile(global_files+ global_miReporte +'_frEgresosxTipo.fr3') ;
    rptReporte.ScriptText.Clear  ;
    rptReporte.ScriptText.Add('Var') ;
    rptReporte.ScriptText.Add('sTitleFecha : String ;') ;
    rptReporte.ScriptText.Add('Begin') ;
    rptReporte.ScriptText.Add('   sTitleFecha :=  ' + chr(39) + sTitleFecha + chr(39)) ;
    rptReporte.ScriptText.Add('End.') ;

    rptReporte.ShowReport() ;

    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;





procedure rptEgresosxProveedor(ParamFechaInicio, ParamFechaFinal : tDate) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
    connection.configuracion.refresh ;
    sTitleFecha := 'Impresion de Ingresos del ' + DateToStr(ParamFechaInicio) + ' al ' + DateToStr(ParamFechaFinal) + '.'  ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('Select te.*, tp.*, ce.mDescripcion as sDescripionArticulo from con_tesoreriaegresos te ' +
                     'inner join con_tesoreriapegresos tp on (te.dIdFecha = tp.dIdFecha and te.iIdFolio = tp.iIdFolio and tp.idorganizacion =:organizacion) ' +
                     'inner join con_catalogodeegresos ce on (tp.sIdEgreso = ce.sIdEgreso) ' +
                     'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF Order By te.sRazonSocial, te.sIdNumeroCuenta, te.dIdFecha, te.iIdFolio') ;
    zTmpQuery.Params.ParamByName('FechaI').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaI').Value := ParamFechaInicio ;
    zTmpQuery.Params.ParamByName('FechaF').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaF').Value := ParamFechaFinal ;
    zTmpQuery.Params.ParamByName('Organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);

    rptReporte.LoadFromFile(global_files+ global_miReporte + '_frEgresosxProveedor.fr3') ;
    rptReporte.ScriptText.Clear  ;
    rptReporte.ScriptText.Add('Var') ;
    rptReporte.ScriptText.Add('sTitleFecha : String ;') ;
    rptReporte.ScriptText.Add('Begin') ;
    rptReporte.ScriptText.Add('   sTitleFecha :=  ' + chr(39) + sTitleFecha + chr(39)) ;
    rptReporte.ScriptText.Add('End.') ;

    rptReporte.ShowReport() ;

    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;



procedure procReporteGasto ;
var
  rDiario: TfrxReport;
  zGrafica: TZReadOnlyQuery;
  frGrafica: TfrxDBDataSet;
  varnomreporte :string ;
begin
  // Creo los abjetos del reporte diario ...
  rDiario := TfrxReport.Create(Nil);
  rDiario.PreviewOptions.MDIChild := False;
  rDiario.PreviewOptions.Modal := True;
  rDiario.PreviewOptions.Maximized := True ;
  rDiario.PreviewOptions.ShowCaptions := False;
  rDiario.Previewoptions.ZoomMode := zmPageWidth;

  zGrafica := TZReadOnlyQuery.Create(Nil);
  zGrafica.Connection := Connection.ZConnection ;

  frGrafica := TfrxDBDataSet.Create(Nil);

  frGrafica.DataSet := zGrafica ;

  frGrafica.UserName := 'frGrafica' ;

  rDiario.DataSets.Clear;
  rDiario.DataSets.Add(frGrafica);

    // svChost.exe
  zGrafica.Active := False;
  zGrafica.SQL.Clear;
  zGrafica.SQL.Add(sParamQuery) ;
  if sParamTipo = 'Simple' then
  begin
      zGrafica.Params.ParamByName('fechaI').DataType    := ftDate ;
      zGrafica.Params.ParamByName('fechaI').Value       := dParamFechaI ;
      zGrafica.Params.ParamByName('fechaF').DataType    := ftDate ;
      zGrafica.Params.ParamByName('fechaF').Value       := dParamFechaF ;
      zGrafica.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
      rDiario.LoadFromFile(global_files + global_miReporte + '_CADfrDetalle1.fr3');
      varnomreporte := '_CADfrDetalle1.fr3' ;
  end
  else
      if sParamTipo = 'Periodo1' then
      begin
          zGrafica.Params.ParamByName('fechaI').DataType    := ftDate ;
          zGrafica.Params.ParamByName('fechaI').Value       := dParamFechaI ;
          zGrafica.Params.ParamByName('fechaF').DataType    := ftDate ;
          zGrafica.Params.ParamByName('fechaF').Value       := dParamFechaF ;
          zGrafica.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
          rDiario.LoadFromFile(global_files + global_miReporte + '_CADfrDetalle2.fr3');
          varnomreporte := '_CADfrDetalle2.fr3' ;
       end
       else
          if sParamTipo = 'Periodo2' then
          begin
              zGrafica.Params.ParamByName('fechaI').DataType    := ftDate ;
              zGrafica.Params.ParamByName('fechaI').Value       := dParamFechaI ;
              zGrafica.Params.ParamByName('fechaF').DataType    := ftDate ;
              zGrafica.Params.ParamByName('fechaF').Value       := dParamFechaF ;
              zGrafica.Params.ParamByName('Egreso').DataType    := ftString ;
              zGrafica.Params.ParamByName('Egreso').Value       := sParamEgreso ;
              zGrafica.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
              rDiario.LoadFromFile(global_files + global_miReporte + '_CADfrDetalle2.fr3');
              varnomreporte := '_CADfrDetalle2.fr3' ;
          end
            else
            if sParamTipo = 'Periodo22' then
            begin
                zGrafica.Params.ParamByName('fechaI').DataType    := ftDate ;
                zGrafica.Params.ParamByName('fechaI').Value       := dParamFechaI ;
                zGrafica.Params.ParamByName('fechaF').DataType    := ftDate ;
                zGrafica.Params.ParamByName('fechaF').Value       := dParamFechaF ;
                zGrafica.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
                rDiario.LoadFromFile(global_files + global_miReporte + '_CADfrDetalle2.fr3');
                varnomreporte := '_CADfrDetalle2.fr3' ;
            end;
          if sParamTipo = 'Periodo4' then
          begin
            zGrafica.Params.ParamByName('fechaI').DataType    := ftDate ;
            zGrafica.Params.ParamByName('fechaI').Value       := dParamFechaI ;
            zGrafica.Params.ParamByName('fechaF').DataType    := ftDate ;
            zGrafica.Params.ParamByName('fechaF').Value       := dParamFechaF ;
            zGrafica.Params.ParamByName('organizacion').Value := iParamOrganizacion ;
            rDiario.LoadFromFile(global_files + global_miReporte + '_CADfrDetalle4.fr3');
            varnomreporte := '_CADfrDetalle4.fr3' ;
          end ;
  zGrafica.Open;

    if not FileExists(global_files + global_miReporte + varnomreporte) then
        showmessage('El archivo de reporte '+global_Mireporte+ varnomreporte + ' no existe, notifique al administrador del sistema')
    else
      rDiario.ShowReport;

  rDiario.Destroy ;

  zGrafica.Destroy ;
  frGrafica.Destroy ;
end;


procedure rptEgresos2(ParamFechaInicio, ParamFechaFinal : string) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
  connection.configuracion.refresh ;
    sTitleFecha := 'Impresion de Ingresos del ' + ParamFechaInicio + ' al ' + ParamFechaFinal + '.'  ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('Select te.*, tp.*, ce.mDescripcion as sDescripionArticulo from con_tesoreriaegresos te ' +
                     'inner join con_tesoreriapegresos tp on (te.dIdFecha = tp.dIdFecha and te.iIdFolio = tp.iIdFolio and tp.idorganizacion=:organizacion) ' +
                     'inner join con_catalogodeegresos ce on (tp.sIdEgreso = ce.sIdEgreso) ' +
                     'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF Order By te.sIdNumeroCuenta, te.dIdFecha, te.iIdFolio') ;
    zTmpQuery.Params.ParamByName('FechaI').DataType    := ftDate ;
    zTmpQuery.Params.ParamByName('FechaI').Value       := ParamFechaInicio ;
    zTmpQuery.Params.ParamByName('FechaF').DataType    := ftDate ;
    zTmpQuery.Params.ParamByName('FechaF').Value       := ParamFechaFinal ;
    zTmpQuery.Params.ParamByName('Organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);

    rptReporte.LoadFromFile(global_files+ global_miReporte + '_frEgresos.fr3') ;
    rptReporte.ScriptText.Clear  ;
    rptReporte.ScriptText.Add('Var') ;
    rptReporte.ScriptText.Add('sTitleFecha : String ;') ;
    rptReporte.ScriptText.Add('Begin') ;
    rptReporte.ScriptText.Add('   sTitleFecha :=  ' + chr(39) + sTitleFecha + chr(39)) ;
    rptReporte.ScriptText.Add('End.') ;

    rptReporte.ShowReport() ;

    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;



procedure rptEgresos(ParamFechaInicio, ParamFechaFinal : tDate) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
    connection.configuracion.refresh ;
    sTitleFecha := 'Impresion de Ingresos del ' + DateToStr(ParamFechaInicio) + ' al ' + DateToStr(ParamFechaFinal) + '.'  ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('Select te.*, tp.*, ce.mDescripcion as sDescripionArticulo from con_tesoreriaegresos te ' +
                     'inner join con_tesoreriapegresos tp on (te.dIdFecha = tp.dIdFecha and te.iIdFolio = tp.iIdFolio and tp.idorganizacion=:organizacion) ' +
                     'inner join con_catalogodeegresos ce on (tp.sIdEgreso = ce.sIdEgreso) ' +
                     'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF Order By te.sIdNumeroCuenta, te.dIdFecha, te.iIdFolio') ;
    zTmpQuery.Params.ParamByName('FechaI').DataType    := ftDate ;
    zTmpQuery.Params.ParamByName('FechaI').Value       := ParamFechaInicio ;
    zTmpQuery.Params.ParamByName('FechaF').DataType    := ftDate ;
    zTmpQuery.Params.ParamByName('FechaF').Value       := ParamFechaFinal ;
    zTmpQuery.Params.ParamByName('Organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);


    rptReporte.ScriptText.Clear  ;
    rptReporte.ScriptText.Add('Var') ;
    rptReporte.ScriptText.Add('sTitleFecha : String ;') ;
    rptReporte.ScriptText.Add('Begin') ;
    rptReporte.ScriptText.Add('   sTitleFecha :=  ' + chr(39) + sTitleFecha + chr(39)) ;
    rptReporte.ScriptText.Add('End.') ;
    rptReporte.LoadFromFile(global_files+ global_miReporte + '_CADfrEgresos.fr3') ;

    if not FileExists(global_files + global_miReporte + '_CADfrEgresos.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_CADfrEgresos.fr3 no existe, notifique al administrador del sistema')
    else
        rptReporte.ShowReport() ;

    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;



procedure procCostoOperativo (sParamOrden: string);
var
  rDiario: TfrxReport;
  QryReporteDiario,
  QryConfiguracion,
  QryReporteFotografico,
  QryBitacoradePersonal,
  QryBitacoradeMateriales,
  QryCheques  : TZReadOnlyQuery;

  dsReporteDiario,
  dsConfiguracion,
  dsReporteFotografico,
  dsBitacoradePersonal,
  dsBitacoradeMateriales,
  dsCheques  : TfrxDBDataSet;
begin
  // Creo los abjetos del reporte diario ...
  rDiario := TfrxReport.Create(Nil);
  rDiario.PreviewOptions.MDIChild := False;
  rDiario.PreviewOptions.Modal := True;
  rDiario.PreviewOptions.Maximized := False ;
  rDiario.PreviewOptions.ShowCaptions := False;
  rDiario.Previewoptions.ZoomMode := zmPageWidth;

  QryReporteDiario := TZReadOnlyQuery.Create(Nil);
  QryReporteDiario.Connection := connection.ZConnection ;

  QryReporteFotografico := TZReadOnlyQuery.Create(Nil);
  QryReporteFotografico.Connection := connection.ZConnection ;

  QryBitacoradePersonal := TZReadOnlyQuery.Create(Nil);
  QryBitacoradePersonal.Connection := connection.ZConnection ;

  QryBitacoradeMateriales := TZReadOnlyQuery.Create(Nil);
  QryBitacoradeMateriales.Connection := connection.ZConnection ;

  QryConfiguracion := TZReadOnlyQuery.Create(Nil);
  QryConfiguracion.Connection := connection.ZConnection ;

  QryCheques := TZReadOnlyQuery.Create(Nil);
  QryCheques.Connection := connection.ZConnection ;

  dsReporteDiario := TfrxDBDataSet.Create(Nil);
  dsConfiguracion := TfrxDBDataSet.Create(Nil);
  dsReporteFotografico := TfrxDBDataSet.Create(Nil);
  dsBitacoradePersonal := TfrxDBDataSet.Create(Nil);
  dsBitacoradeMateriales := TfrxDBDataSet.Create(Nil);
  dsCheques := TfrxDBDataSet.Create(Nil);

  dsReporteDiario.DataSet := QryReporteDiario;
  dsConfiguracion.DataSet := QryConfiguracion;
  dsReporteFotografico.DataSet := QryReporteFotografico;
  dsBitacoradePersonal.DataSet := QryBitacoradePersonal;
  dsBitacoradeMateriales.DataSet := QryBitacoradeMateriales;
  dsCheques.DataSet := QryCheques;

  dsReporteDiario.UserName := 'dsReporteDiario';
  dsConfiguracion.UserName := 'dsConfiguracion';
  dsReporteFotografico.UserName := 'dsReporteFotografico';
  dsBitacoradePersonal.UserName := 'dsBitacoradePersonal';
  dsBitacoradeMateriales.UserName := 'dsBitacoradeMateriales';
  dsCheques.UserName := 'dsCheques';

  rDiario.DataSets.Clear;
  rDiario.DataSets.Add(dsReporteDiario);
  rDiario.DataSets.Add(dsConfiguracion);
  rDiario.DataSets.Add(dsReporteFotografico);
  rDiario.DataSets.Add(dsBitacoradePersonal);
  rDiario.DataSets.Add(dsBitacoradeMateriales);
  rDiario.DataSets.Add(dsCheques);

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  (*QryConfiguracion.SQL.Add('select o.iEjercicio, o.sNumeroOrden, o.sDescripcionCorta, o.sOficioAutorizacion, o.mDescripcion, ' +
                           'o.sIdArea, p.sRazonSocial, co.sNombreComunidad, o.sTipoOrden, o.dFechaInicio, o.dFechaFinal, o.dMontoAsignado, ' +
                           'c.sNombreCorto, c.sRFC, c.sDireccion1, c.sDireccion2, c.sDireccion3, c.sSlogan, c.bImagen, c.sTelefono, ' +
                           'c.sEmail, c.sWeb From configuracion c, ordenesdetrabajo o INNER JOIN comunidades co ON (o.sIdComunidad = co.sIdComunidad) ' +
                           'inner join proveedores p on (o.sIdProveedor = p.sIdProveedor) Where o.sNumeroOrden = :Orden') ;   *)
  QryConfiguracion.SQL.Add('select ' +
                            'o.sNumeroOrden, ' +
                            'o.sDescripcionCorta, ' +
                            'o.sOficioAutorizacion, ' +
                            'o.mDescripcion, ' +
                            'o.sTipoOrden, ' +
                            'o.dFechaInicioT, ' +
                            'c.sNombreCorto, ' +
                            'c.sRFC, ' +
                            'c.sDireccion1, ' +
                            'c.sDireccion2, ' +
                           ' c.sDireccion3, ' +
                            'c.sSlogan, ' +
                            'c.bImagen, ' +
                            'c.sTelefono, ' +
                            'c.sEmail, ' +
                            'c.sWeb ' +
                            'From configuracion c, ordenesdetrabajo o ' +
                            'Where o.sNumeroOrden = :Orden') ;
  QryConfiguracion.Params.ParamByName('Orden').DataType := ftString;
  QryConfiguracion.Params.ParamByName('Orden').Value := sParamOrden;
  QryConfiguracion.Open;

  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  QryReporteDiario.SQL.Add('Select * From reportediario Where sNumeroOrden = :Orden') ;
  QryReporteDiario.Params.ParamByName('orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('orden').Value := sParamOrden;
  QryReporteDiario.Open;

  QryReporteFotografico.Active := False;
  QryReporteFotografico.SQL.Clear;
  QryReporteFotografico.SQL.Add('Select * from  reportefotografico Where sNumeroOrden = :Orden Order By dIdFecha') ;
  QryReporteFotografico.Params.ParamByName('orden').DataType := ftString;
  QryReporteFotografico.Params.ParamByName('orden').Value := sParamOrden;
  QryReporteFotografico.Open;

  (*QryBitacoradePersonal.Active := False;
  QryBitacoradePersonal.SQL.Clear;
  QryBitacoradePersonal.SQL.Add('Select bp.*, rd.sPeriododePago, rd.iNumeroLista, rd.iSemana, rd.mConcepto From bitacoradepersonal bp ' +
                                'INNER JOIN listaderaya rd on (bp.dIdFecha = rd.dIdFecha and bp.sNumeroOrden = rd.sNumeroOrden) ' +
                                'Where bp.sNumeroOrden = :Orden Order by bp.dIdFecha, bp.sCategoria, bp.sNombreCompleto') ;
  QryBitacoradePersonal.Params.ParamByName('orden').DataType := ftString;
  QryBitacoradePersonal.Params.ParamByName('orden').Value := sParamOrden;
  QryBitacoradePersonal.Open;

  QryBitacoradeMateriales.Active := False;
  QryBitacoradeMateriales.SQL.Clear;
  QryBitacoradeMateriales.SQL.Add('Select bm.*, rd.sPeriododePago, rd.iNumeroLista, rd.iSemana, rd.mConcepto From bitacorademateriales bm ' +
                                  'INNER JOIN listaderaya rd on (bm.dIdFecha = rd.dIdFecha and bm.sNumeroOrden = rd.sNumeroOrden) ' +
                                  'Where bm.sNumeroOrden = :Orden Order By bm.dIdFecha, bm.iIdMaterial') ;
  QryBitacoradeMateriales.Params.ParamByName('orden').DataType := ftString;
  QryBitacoradeMateriales.Params.ParamByName('orden').Value := sParamOrden;
  QryBitacoradeMateriales.Open ; *)

  QryCheques.Active := False;
  QryCheques.SQL.Clear;
  QryCheques.SQL.Add('Select * From con_tesoreriaegresos Where sNumeroOrden = :Orden Order By dIdFecha, iIdFolio') ;
  QryCheques.Params.ParamByName('orden').DataType := ftString;
  QryCheques.Params.ParamByName('orden').Value := sParamOrden;
  QryCheques.Open ;

  rDiario.LoadFromFile(global_files + global_miReporte + '_CADfrCostoOperativo.fr3');

//  rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator] ;

  rDiario.ShowReport;

  rDiario.Destroy ;

  QryReporteDiario.Destroy ;

  QryReporteFotografico.Destroy ;

  //QryBitacoradePersonal.Destroy ;

  //QryBitacoradeMateriales.Destroy ;

  QryConfiguracion.Destroy ;

  QryCheques.Destroy ;

  dsReporteDiario.Destroy ;
  dsConfiguracion.Destroy ;
  dsReporteFotografico.Destroy ;
  //dsBitacoradePersonal.Destroy ;
  //dsBitacoradeMateriales.Destroy ;
  dsCheques.Destroy ;
end;

end.


