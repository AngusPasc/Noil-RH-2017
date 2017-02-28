object frmFacturaElectronica_Lista: TfrmFacturaElectronica_Lista
  Left = 0
  Top = 0
  Caption = 'Lista de Facturas Emitidas'
  ClientHeight = 433
  ClientWidth = 1028
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object NxButton3: TcxButton
      Left = 14
      Top = 5
      Width = 131
      Height = 25
      Caption = '&Cancelar Factura'
      TabOrder = 0
      OnClick = NxButton3Click
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = frmrepositorio.IconosBarra
    end
    object cxButton1: TcxButton
      Left = 160
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Actualizar'
      TabOrder = 1
      OnClick = cxButton1Click
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = frmrepositorio.IconosBarra
    end
  end
  object Grid_Facturas: TcxGrid
    Left = 0
    Top = 34
    Width = 1028
    Height = 399
    Align = alClient
    TabOrder = 1
    object cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = ds_ListaFacturas
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.OnGetContentStyle = cxgrdbtblvwGrid2DBTableView1StylesGetContentStyle
      object cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn
        Caption = 'Folio'
        DataBinding.FieldName = 'iFolio'
        Options.Editing = False
        Width = 54
      end
      object cxgrdbclmnGrid2DBTableView1Column2: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'Empresa'
        Options.Editing = False
        Width = 214
      end
      object cxgrdbclmnGrid2DBTableView1Column3: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'CFDI_sEstado'
        Options.Editing = False
        Width = 69
      end
      object cxgrdbclmnGrid2DBTableView1Column4: TcxGridDBColumn
        Caption = 'Folio Fiscal'
        DataBinding.FieldName = 'CFDI_sUUID'
        Options.Editing = False
        Width = 151
      end
      object cxgrdbclmnGrid2DBTableView1Column5: TcxGridDBColumn
        Caption = 'Fecha Emision'
        DataBinding.FieldName = 'CFDI_dFechaEmision'
        Options.Editing = False
        Width = 105
      end
      object cxgrdbclmnGrid2DBTableView1Column6: TcxGridDBColumn
        Caption = 'Subtotal'
        DataBinding.FieldName = 'dImporteTotal'
        Options.Editing = False
        Width = 56
      end
      object cxgrdbclmnGrid2DBTableView1Column7: TcxGridDBColumn
        Caption = 'IVA'
        DataBinding.FieldName = 'dIva'
        Options.Editing = False
        Width = 46
      end
      object cxgrdbclmnGrid2DBTableView1Column8: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Options.Editing = False
        Width = 42
      end
      object cxgrdbclmnGrid2DBTableView1Column9: TcxGridDBColumn
        Caption = 'Ejercicio'
        DataBinding.FieldName = 'iEjercicio'
        Options.Editing = False
        Width = 45
      end
      object cxgrdbclmnGrid2DBTableView1Column10: TcxGridDBColumn
        Caption = 'Nota Credito'
        DataBinding.FieldName = 'lNotaCredito'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Si'
          'No')
        Options.Editing = False
        Width = 59
      end
      object cxgrdbclmnGrid2DBTableView1Column11: TcxGridDBColumn
        Caption = 'Usuario'
        DataBinding.FieldName = 'sUsuario'
        Width = 59
      end
      object cxgrdbclmnGrid2DBTableView1Column12: TcxGridDBColumn
        Caption = 'Moneda'
        DataBinding.FieldName = 'iIdTipoMoneda'
        Width = 47
      end
      object cxgrdbclmnGrid2DBTableView1Column13: TcxGridDBColumn
        Caption = 'Movimiento'
        DataBinding.FieldName = 'sTipoMovimiento'
        Width = 67
      end
    end
    object cxgrdlvlGrid2Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid2DBTableView1
    end
  end
  object zq_listafacturas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zq_listafacturasCalcFields
    UpdateObject = ZUzq_listafacturas
    SQL.Strings = (
      
        'SELECT co.sNombre,ct.*, cp.sRazonSocial as Empresa FROM con_teso' +
        'reriaegresos ct '
      'Inner Join con_companias cp On (cp.sIdCompania = ct.sIdCompania)'
      
        'inner join con_cuentasbancarias cb On (cb.sIdNumeroCuenta=ct.sId' +
        'NumeroCuenta)'
      
        'Inner Join con_configuracion co On (co.sNombreCorto=cb.sidCompan' +
        'iaConf)'
      
        'WHERE ct.CFDI_sTipoDocumento = "FACTURA"  and cb.sidCompaniaConf' +
        ' = :Contrato and ct.CFDI_sEstado = "TIMBRADA" or ct.CFDI_sEstado' +
        ' = "CANCELADA" or lNotaCredito = "Si"'
      'GROUP BY ct.iIdFolio'
      'ORDER BY ct.iEjercicio,ct.iFolio'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 288
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object zq_listafacturasdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zq_listafacturasiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zq_listafacturassTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Size = 8
    end
    object zq_listafacturassIdArea: TStringField
      FieldName = 'sIdArea'
      Size = 8
    end
    object zq_listafacturassIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
    end
    object zq_listafacturassNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 60
    end
    object zq_listafacturassReferencia: TStringField
      FieldName = 'sReferencia'
      Size = 30
    end
    object zq_listafacturassIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Size = 8
    end
    object zq_listafacturassIdCompania: TStringField
      FieldName = 'sIdCompania'
      Size = 8
    end
    object zq_listafacturassRFC: TStringField
      FieldName = 'sRFC'
      Size = 15
    end
    object zq_listafacturassRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Size = 255
    end
    object zq_listafacturassDomicilio: TStringField
      FieldName = 'sDomicilio'
      Size = 50
    end
    object zq_listafacturassCiudad: TStringField
      FieldName = 'sCiudad'
      Size = 30
    end
    object zq_listafacturassCP: TStringField
      FieldName = 'sCP'
      Size = 5
    end
    object zq_listafacturassEstado: TStringField
      FieldName = 'sEstado'
      Size = 30
    end
    object zq_listafacturassTelefono: TStringField
      FieldName = 'sTelefono'
    end
    object zq_listafacturasdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
    end
    object zq_listafacturasdImporteSubTotal: TFloatField
      FieldName = 'dImporteSubTotal'
    end
    object zq_listafacturaslComprobado: TStringField
      FieldName = 'lComprobado'
      Size = 2
    end
    object zq_listafacturassStatus: TStringField
      FieldName = 'sStatus'
      Size = 9
    end
    object zq_listafacturasmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zq_listafacturasdIva: TFloatField
      FieldName = 'dIva'
    end
    object zq_listafacturasdIva_Porcentaje: TFloatField
      FieldName = 'dIva_Porcentaje'
    end
    object zq_listafacturaslAplicaiva: TStringField
      FieldName = 'lAplicaiva'
      Size = 2
    end
    object zq_listafacturassPoliza: TStringField
      FieldName = 'sPoliza'
      Size = 40
    end
    object zq_listafacturasdFechaFactura: TDateField
      FieldName = 'dFechaFactura'
    end
    object zq_listafacturasdFechaRecepcion: TDateField
      FieldName = 'dFechaRecepcion'
    end
    object zq_listafacturasiFolio: TIntegerField
      FieldName = 'iFolio'
    end
    object zq_listafacturasiIdStatus: TIntegerField
      FieldName = 'iIdStatus'
    end
    object zq_listafacturassTipoPago: TStringField
      FieldName = 'sTipoPago'
      Size = 13
    end
    object zq_listafacturassNumeroDeCuenta: TStringField
      FieldName = 'sNumeroDeCuenta'
      Size = 50
    end
    object zq_listafacturassNumeroPedido: TStringField
      FieldName = 'sNumeroPedido'
      Size = 50
    end
    object zq_listafacturasiImprimeProveedor: TIntegerField
      FieldName = 'iImprimeProveedor'
    end
    object zq_listafacturassMes: TStringField
      FieldName = 'sMes'
      Size = 15
    end
    object zq_listafacturaslAplicaPagoParcial: TStringField
      FieldName = 'lAplicaPagoParcial'
      Size = 2
    end
    object zq_listafacturasdParcialidad: TFloatField
      FieldName = 'dParcialidad'
    end
    object zq_listafacturassProyecto: TStringField
      FieldName = 'sProyecto'
      Size = 35
    end
    object zq_listafacturasCFDI_sTipoDocumento: TStringField
      FieldName = 'CFDI_sTipoDocumento'
      Size = 255
    end
    object zq_listafacturasCFDI_sUUID: TStringField
      FieldName = 'CFDI_sUUID'
      Size = 255
    end
    object zq_listafacturasCFDI_dFechaEmision: TDateTimeField
      FieldName = 'CFDI_dFechaEmision'
    end
    object zq_listafacturasCFDI_dFechaTimbrado: TDateTimeField
      FieldName = 'CFDI_dFechaTimbrado'
    end
    object zq_listafacturasCFDI_sSelloCFD: TStringField
      FieldName = 'CFDI_sSelloCFD'
      Size = 255
    end
    object zq_listafacturasCFDI_sSelloSAT: TStringField
      FieldName = 'CFDI_sSelloSAT'
      Size = 255
    end
    object zq_listafacturasCFDI_sCertificadoCFD: TStringField
      FieldName = 'CFDI_sCertificadoCFD'
      Size = 255
    end
    object zq_listafacturasCFDI_sCertificadoSAT: TStringField
      FieldName = 'CFDI_sCertificadoSAT'
      Size = 255
    end
    object zq_listafacturasCFDI_sCadenaOriginal: TStringField
      FieldName = 'CFDI_sCadenaOriginal'
      Size = 255
    end
    object zq_listafacturasCFDI_bbCode: TBlobField
      FieldName = 'CFDI_bbCode'
    end
    object zq_listafacturasCFDI_sEstado: TStringField
      FieldName = 'CFDI_sEstado'
      Size = 255
    end
    object zq_listafacturasCFDI_sRegimenFiscal: TStringField
      FieldName = 'CFDI_sRegimenFiscal'
      Size = 255
    end
    object zq_listafacturasCFDI_sLugarExpedicion: TStringField
      FieldName = 'CFDI_sLugarExpedicion'
      Size = 255
    end
    object zq_listafacturasCFDI_sFormaDePago: TStringField
      FieldName = 'CFDI_sFormaDePago'
      Size = 255
    end
    object zq_listafacturasCFDI_sMetodoDePago: TStringField
      FieldName = 'CFDI_sMetodoDePago'
      Size = 255
    end
    object zq_listafacturasCFDI_sTipoComprobante: TStringField
      FieldName = 'CFDI_sTipoComprobante'
      Size = 255
    end
    object zq_listafacturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 255
    end
    object strngfld_listafacturassNombre: TStringField
      FieldName = 'sNombre'
      Required = True
      Size = 70
    end
    object zq_listafacturassFormaPago: TIntegerField
      FieldName = 'sFormaPago'
    end
    object zq_listafacturasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object strngfld_listafacturassUsuario: TStringField
      FieldName = 'sUsuario'
    end
    object intgrfld_listafacturasiEjercicio: TIntegerField
      FieldName = 'iEjercicio'
      Required = True
    end
    object strngfld_listafacturasiIdTipoMoneda: TStringField
      FieldName = 'iIdTipoMoneda'
      Size = 11
    end
    object intgrfld_listafacturasiIdPrecioMoneda: TIntegerField
      FieldName = 'iIdPrecioMoneda'
    end
    object strngfld_listafacturaslNotaCredito: TStringField
      FieldName = 'lNotaCredito'
      Required = True
      Size = 2
    end
  end
  object ds_ListaFacturas: TDataSource
    AutoEdit = False
    DataSet = zq_listafacturas
    Left = 256
    Top = 120
  end
  object ZUzq_listafacturas: TZUpdateSQL
    ModifySQL.Strings = (
      'UPDATE con_tesoreriaegresos'
      'SET '
      '  CFDI_sEstado = :CFDI_sEstado'
      'WHERE iIdFolio = :iIdFolio')
    UseSequenceFieldForRefreshSQL = False
    Left = 328
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CFDI_sEstado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdFolio'
        ParamType = ptUnknown
      end>
  end
  object cxstylrpstryRepositorio: TcxStyleRepository
    Left = 464
    Top = 104
    PixelsPerInch = 96
    object Timbrada: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object Cancelada: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clRed
    end
    object Seleccion: TcxStyle
      AssignedValues = [svColor]
      Color = clActiveCaption
    end
  end
end
