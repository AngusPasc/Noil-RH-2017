object frm_ReportesFacturas: Tfrm_ReportesFacturas
  Left = 0
  Top = 0
  Caption = 'Listas Facturas'
  ClientHeight = 653
  ClientWidth = 1266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1266
    Height = 106
    Align = alTop
    TabOrder = 0
    object Label9: TLabel
      Left = 35
      Top = 13
      Width = 109
      Height = 17
      Caption = 'Cuenta Bancaria'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 33
      Top = 51
      Width = 111
      Height = 17
      Caption = 'Consulta Fechas'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object tsIdCuentaBancaria: TcxLookupComboBox
      Left = 179
      Top = 10
      ParentFont = False
      Properties.KeyFieldNames = 'sIdNumeroCuenta'
      Properties.ListColumns = <
        item
          FieldName = 'sNombreCuenta'
        end>
      Properties.ListSource = dszQCuentasBancarias
      Properties.OnCloseUp = tsIdCuentaBancariaPropertiesCloseUp
      TabOrder = 0
      Width = 691
    end
    object tdFechaInicio: TDateTimePicker
      Left = 179
      Top = 46
      Width = 131
      Height = 25
      Date = 0.594495983787055600
      Time = 0.594495983787055600
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnCloseUp = tdFechaInicioCloseUp
    end
    object tdFechaFinal: TDateTimePicker
      Left = 318
      Top = 46
      Width = 131
      Height = 25
      Date = 39765.594495983790000000
      Time = 39765.594495983790000000
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnCloseUp = tdFechaFinalCloseUp
    end
    object Memo_Log: TMemo
      Left = 972
      Top = 1
      Width = 293
      Height = 104
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
    end
    object cxrdgrp1: TcxRadioGroup
      Left = 481
      Top = 46
      RepositoryItem = RadioGroupItem1
      Caption = 'Reportes'
      ParentFont = False
      Properties.Items = <>
      Properties.ReadOnly = False
      Properties.OnChange = cxrdgrp1PropertiesChange
      ItemIndex = 1
      TabOrder = 4
      Height = 49
      Width = 483
    end
    object cxButton1: TcxButton
      Left = 877
      Top = 10
      Width = 87
      Height = 28
      Caption = 'Todo'
      TabOrder = 5
      OnClick = cxButton1Click
    end
  end
  object gridPrincipal: TcxGrid
    Left = 0
    Top = 106
    Width = 1266
    Height = 329
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = dxBarPopupMenu1
    TabOrder = 1
    object Grid_facturas: TcxGridDBTableView
      PopupMenu = dxBarPopupMenu1
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dszQEgresos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$0.00'
          Kind = skSum
          FieldName = 'dImporteTotal'
          Column = Grid_facturasdImporteTotal1
        end
        item
          Format = '$0.00'
          Kind = skSum
          FieldName = 'dIva'
          Column = Grid_facturasdIva1
        end
        item
          Format = '$0.00'
          Kind = skSum
          FieldName = 'Total'
          Column = Grid_facturasTotal1
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.Indicator = True
      object Grid_facturasdFechaFactura1: TcxGridDBColumn
        Caption = 'Exp. Fecha'
        DataBinding.FieldName = 'dFechaFactura'
        Width = 77
      end
      object Grid_facturasdIdFecha1: TcxGridDBColumn
        Caption = 'Pago Fecha'
        DataBinding.FieldName = 'dIdFecha'
        Width = 69
      end
      object Grid_facturasiIdFolio1: TcxGridDBColumn
        Caption = 'Factura'
        DataBinding.FieldName = 'iFolio'
        Width = 79
      end
      object Grid_facturassIdNumeroCuenta1: TcxGridDBColumn
        Caption = 'N'#250'mero Cuenta'
        DataBinding.FieldName = 'sIdNumeroCuenta'
        Width = 101
      end
      object Grid_facturasColumn2: TcxGridDBColumn
        Caption = 'Compa'#241'ia'
        DataBinding.FieldName = 'sCompanya'
        Width = 126
      end
      object Grid_facturasColumn4: TcxGridDBColumn
        Caption = 'Moneda'
        DataBinding.FieldName = 'iIdTipoMoneda'
        Width = 59
      end
      object Grid_facturasdImporteTotal1: TcxGridDBColumn
        Caption = 'Subtotal'
        DataBinding.FieldName = 'dImporteTotal'
        Width = 69
      end
      object Grid_facturasdIva1: TcxGridDBColumn
        Caption = 'Iva'
        DataBinding.FieldName = 'dIva'
        Width = 65
      end
      object Grid_facturasTotal1: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 62
      end
      object Grid_facturassStatus1: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'sStatus'
        Width = 56
      end
      object Grid_facturasColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'sUsuario'
        Width = 64
      end
      object Grid_facturasColumn3: TcxGridDBColumn
        Caption = 'Ejercicio'
        DataBinding.FieldName = 'iEjercicio'
        Width = 47
      end
    end
    object gridPrincipalLevel1: TcxGridLevel
      GridView = Grid_facturas
    end
  end
  object cxscrlbxdetalle: TcxScrollBox
    Left = 0
    Top = 435
    Width = 1266
    Height = 218
    Align = alBottom
    TabOrder = 2
    object Grid_Conceptos: TcxGrid
      Left = 0
      Top = 0
      Width = 1264
      Height = 216
      Align = alClient
      TabOrder = 0
      object Grid_Detalle: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_DetallesFacturas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'dCantidad'
            Column = Grid_DetalledImporte1
          end
          item
            Format = '$0.00'
            Kind = skSum
            FieldName = 'dImporte'
            Column = Grid_DetalleColumn1
          end
          item
            Format = '$0.00'
            Kind = skSum
            FieldName = 'dNeto'
            Column = Grid_DetalleColumn2
          end
          item
            Format = '$0.00'
            Kind = skSum
            FieldName = 'dIva'
            Column = Grid_DetalleColumn3
          end
          item
            Format = '$0.00'
            Kind = skSum
            FieldName = 'dTotal'
            Column = Grid_DetalleColumn4
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object Grid_DetalledCantidad1: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'iId'
          Options.Editing = False
        end
        object Grid_DetallestrDesc1: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'sDescripcion'
          Options.Editing = False
          Width = 331
        end
        object Grid_DetalledImporte1: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'dCantidad'
          Options.Editing = False
          Width = 75
        end
        object Grid_DetalleColumn1: TcxGridDBColumn
          Caption = 'Importe'
          DataBinding.FieldName = 'dImporte'
          Width = 75
        end
        object Grid_DetalleColumn2: TcxGridDBColumn
          Caption = 'Neto'
          DataBinding.FieldName = 'dNeto'
          Width = 75
        end
        object Grid_DetalleColumn3: TcxGridDBColumn
          Caption = 'I.V.A.'
          DataBinding.FieldName = 'dIva'
          Width = 75
        end
        object Grid_DetalleColumn4: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'dTotal'
          Width = 75
        end
      end
      object Grid_ConceptosLevel1: TcxGridLevel
        GridView = Grid_Detalle
      end
    end
  end
  object zQEgresos: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQEgresosAfterScroll
    OnCalcFields = zQEgresosCalcFields
    SQL.Strings = (
      'select * from con_tesoreriaegresos'
      'where '
      'dFechaFactura >=:Fecha1 And dFechaFactura <=:Fecha2 and'
      'sTipoMovimiento = "Deposito" And sIdNumeroCuenta = :Cuenta ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end>
    Left = 716
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end>
    object zQEgresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zQEgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQEgresossTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Required = True
      Size = 8
    end
    object zQEgresossIdArea: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object zQEgresossIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zQEgresossReferencia: TStringField
      FieldName = 'sReferencia'
      Required = True
      Size = 30
    end
    object zQEgresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zQEgresossRFC: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object zQEgresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 50
    end
    object zQEgresossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zQEgresossCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 30
    end
    object zQEgresossCP: TStringField
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object zQEgresossEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object zQEgresossTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
    end
    object zQEgresosdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      Required = True
      currency = True
    end
    object zQEgresoslComprobado: TStringField
      FieldName = 'lComprobado'
      Required = True
      Size = 2
    end
    object zQEgresosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zQEgresossIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object zQEgresosdIva: TFloatField
      FieldName = 'dIva'
      Required = True
      currency = True
    end
    object zQEgresosdFechaFactura: TDateField
      FieldName = 'dFechaFactura'
      Required = True
    end
    object zQEgresosTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      currency = True
      Calculated = True
    end
    object zQEgresosiFolio: TIntegerField
      FieldName = 'iFolio'
    end
    object zQEgresosiIdStatus: TIntegerField
      FieldName = 'iIdStatus'
    end
    object zQEgresossStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'sStatus'
      LookupDataSet = zq_statusfacturas
      LookupKeyFields = 'iId'
      LookupResultField = 'sNombre'
      KeyFields = 'iIdStatus'
      Size = 100
      Lookup = True
    end
    object zQEgresossCompanya: TStringField
      DisplayLabel = 'sIdCompania'
      FieldKind = fkLookup
      FieldName = 'sCompanya'
      LookupDataSet = qryCompanias
      LookupKeyFields = 'sIdCompania'
      LookupResultField = 'sRazonSocial'
      KeyFields = 'sIdCompania'
      Lookup = True
    end
    object zQEgresossTipoPago: TStringField
      FieldName = 'sTipoPago'
      Size = 13
    end
    object zQEgresossNumeroDeCuenta: TStringField
      FieldName = 'sNumeroDeCuenta'
      Size = 50
    end
    object zQEgresossNumeroPedido: TStringField
      FieldName = 'sNumeroPedido'
      Size = 50
    end
    object zQEgresosiImprimeProveedor: TIntegerField
      FieldName = 'iImprimeProveedor'
    end
    object zQEgresossMes: TStringField
      FieldName = 'sMes'
      Required = True
      Size = 15
    end
    object zQEgresosdFechaRecepcion: TDateField
      FieldName = 'dFechaRecepcion'
      Required = True
    end
    object zQEgresoslAplicaPagoParcial: TStringField
      FieldName = 'lAplicaPagoParcial'
      Required = True
      Size = 2
    end
    object zQEgresosdParcialidad: TFloatField
      FieldName = 'dParcialidad'
      Required = True
      currency = True
    end
    object zQEgresossProyecto: TStringField
      FieldName = 'sProyecto'
      Required = True
      Size = 35
    end
    object strngfldQEgresossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 60
    end
    object fltfldQEgresosdImporteSubTotal: TFloatField
      FieldName = 'dImporteSubTotal'
    end
    object fltfldQEgresosdIva_Porcentaje: TFloatField
      FieldName = 'dIva_Porcentaje'
    end
    object strngfldQEgresoslAplicaiva: TStringField
      FieldName = 'lAplicaiva'
      Size = 2
    end
    object strngfldQEgresossPoliza: TStringField
      FieldName = 'sPoliza'
      Size = 40
    end
    object strngfldQEgresosCFDI_sTipoDocumento: TStringField
      FieldName = 'CFDI_sTipoDocumento'
      Size = 255
    end
    object strngfldQEgresosCFDI_sUUID: TStringField
      FieldName = 'CFDI_sUUID'
      Size = 255
    end
    object dtmfldQEgresosCFDI_dFechaEmision: TDateTimeField
      FieldName = 'CFDI_dFechaEmision'
    end
    object dtmfldQEgresosCFDI_dFechaTimbrado: TDateTimeField
      FieldName = 'CFDI_dFechaTimbrado'
    end
    object strngfldQEgresosCFDI_sSelloCFD: TStringField
      FieldName = 'CFDI_sSelloCFD'
      Size = 255
    end
    object strngfldQEgresosCFDI_sSelloSAT: TStringField
      FieldName = 'CFDI_sSelloSAT'
      Size = 255
    end
    object strngfldQEgresosCFDI_sCertificadoCFD: TStringField
      FieldName = 'CFDI_sCertificadoCFD'
      Size = 255
    end
    object strngfldQEgresosCFDI_sCertificadoSAT: TStringField
      FieldName = 'CFDI_sCertificadoSAT'
      Size = 255
    end
    object strngfldQEgresosCFDI_sCadenaOriginal: TStringField
      FieldName = 'CFDI_sCadenaOriginal'
      Size = 255
    end
    object blbfldQEgresosCFDI_bbCode: TBlobField
      FieldName = 'CFDI_bbCode'
    end
    object strngfldQEgresosCFDI_sEstado: TStringField
      FieldName = 'CFDI_sEstado'
      Size = 255
    end
    object strngfldQEgresosCFDI_sRegimenFiscal: TStringField
      FieldName = 'CFDI_sRegimenFiscal'
      Size = 255
    end
    object strngfldQEgresosCFDI_sLugarExpedicion: TStringField
      FieldName = 'CFDI_sLugarExpedicion'
      Size = 255
    end
    object strngfldQEgresosCFDI_sFormaDePago: TStringField
      FieldName = 'CFDI_sFormaDePago'
      Size = 255
    end
    object strngfldQEgresosCFDI_sMetodoDePago: TStringField
      FieldName = 'CFDI_sMetodoDePago'
      Size = 255
    end
    object strngfldQEgresosCFDI_sTipoComprobante: TStringField
      FieldName = 'CFDI_sTipoComprobante'
      Size = 255
    end
    object zQEgresossUsuario: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'sUsuario'
    end
    object zQEgresosiEjercicio: TIntegerField
      FieldName = 'iEjercicio'
    end
    object zQEgresosiIdTipoMoneda: TStringField
      FieldName = 'iIdTipoMoneda'
      Size = 11
    end
    object zQEgresosiIdPrecioMoneda: TIntegerField
      FieldName = 'iIdPrecioMoneda'
    end
    object intgrfldQEgresossFormaPago: TIntegerField
      FieldName = 'sFormaPago'
    end
  end
  object dszQEgresos: TDataSource
    DataSet = zQEgresos
    Left = 719
    Top = 191
  end
  object zq_DetallesFacturas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zq_DetallesFacturasCalcFields
    SQL.Strings = (
      'SELECT *  FROM con_facturas_detalles')
    Params = <>
    UpdateMode = umUpdateAll
    Left = 736
    Top = 358
    object zq_DetallesFacturasDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descripcion'
      Size = 200
      Calculated = True
    end
    object zq_DetallesFacturasiId: TIntegerField
      FieldName = 'iId'
    end
    object zq_DetallesFacturasiId_Factura: TIntegerField
      FieldName = 'iId_Factura'
    end
    object zq_DetallesFacturasdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object zq_DetallesFacturasdImporte: TFloatField
      FieldName = 'dImporte'
    end
    object zq_DetallesFacturasdImporte_Unitario: TFloatField
      FieldName = 'dImporte_Unitario'
    end
    object zq_DetallesFacturassMedida: TStringField
      FieldName = 'sMedida'
      Size = 50
    end
    object zq_DetallesFacturaslAplicaIVA: TStringField
      FieldName = 'lAplicaIVA'
      Size = 2
    end
    object zq_DetallesFacturasdNeto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dNeto'
      Calculated = True
    end
    object zq_DetallesFacturasdIva: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dIva'
      Calculated = True
    end
    object zq_DetallesFacturasdTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dTotal'
      Calculated = True
    end
    object zq_DetallesFacturassDescripcion: TMemoField
      FieldName = 'sDescripcion'
      BlobType = ftMemo
    end
  end
  object ds_DetallesFacturas: TDataSource
    DataSet = zq_DetallesFacturas
    Left = 772
    Top = 358
  end
  object zQCuentasBancarias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_cuentasbancarias '
      'Where sIdCompaniaConf = :Compania'
      'order by sNombreCuenta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Compania'
        ParamType = ptUnknown
      end>
    Left = 753
    Top = 157
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Compania'
        ParamType = ptUnknown
      end>
    object zQCuentasBancariassIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zQCuentasBancariassNombreCuenta: TStringField
      FieldName = 'sNombreCuenta'
      Required = True
      Size = 50
    end
    object zQCuentasBancariassFirmanCuenta: TStringField
      FieldName = 'sFirmanCuenta'
      Required = True
      Size = 100
    end
    object strngfldQCuentasBancariassFolioCheque: TStringField
      FieldName = 'sFolioCheque'
      Size = 12
    end
  end
  object dszQCuentasBancarias: TDataSource
    DataSet = zQCuentasBancarias
    Left = 753
    Top = 191
  end
  object ds_statusfacturas: TDataSource
    AutoEdit = False
    DataSet = zq_statusfacturas
    Left = 791
    Top = 191
  end
  object zq_statusfacturas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zQEgresosCalcFields
    SQL.Strings = (
      'SELECT * FROM con_facturas_status;')
    Params = <>
    Left = 789
    Top = 158
    object zq_statusfacturasiId: TIntegerField
      FieldName = 'iId'
    end
    object zq_statusfacturassNombre: TStringField
      FieldName = 'sNombre'
      Size = 100
    end
  end
  object qryCompanias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_companias Where lstatus= "Activo"'
      'order by sRazonSocial')
    Params = <>
    Left = 828
    Top = 158
    object qryCompaniassIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object qryCompaniassRFC: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object qryCompaniassRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object qryCompaniassDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 150
    end
    object qryCompaniassCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object qryCompaniassCP: TStringField
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object qryCompaniassEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object qryCompaniassTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 30
    end
    object qryCompaniasdMontoCredito: TFloatField
      FieldName = 'dMontoCredito'
      Required = True
    end
    object qryCompaniaslStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 8
    end
    object qryCompaniassNumeroProveedor: TStringField
      FieldName = 'sNumeroProveedor'
      Size = 100
    end
    object strngfldCompaniassNumeroInterior: TStringField
      FieldName = 'sNumeroInterior'
      Size = 10
    end
    object strngfldCompaniassNumeroExterior: TStringField
      FieldName = 'sNumeroExterior'
      Size = 10
    end
    object strngfldCompaniassLocalidad: TStringField
      FieldName = 'sLocalidad'
      Size = 50
    end
    object strngfldCompaniassMunicipio: TStringField
      FieldName = 'sMunicipio'
      Size = 50
    end
    object strngfldCompaniassColonia: TStringField
      FieldName = 'sColonia'
      Size = 50
    end
    object qryCompaniassMail: TStringField
      FieldName = 'sMail'
      Size = 100
    end
    object qryCompaniassTelefono2: TStringField
      FieldName = 'sTelefono2'
      Size = 100
    end
    object qryCompaniassContacto: TStringField
      FieldName = 'sContacto'
      Size = 100
    end
    object qryCompaniaslTipo: TStringField
      FieldName = 'lTipo'
      Size = 8
    end
    object qryCompaniassIdCompaniaConf: TStringField
      FieldName = 'sIdCompaniaConf'
      Size = 255
    end
    object qryCompaniassRegistroPatronal: TStringField
      FieldName = 'sRegistroPatronal'
      Size = 50
    end
  end
  object frxReport1: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41725.770823946800000000
    ReportOptions.LastChange = 42103.946225023150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnReportPrint = 'no '
    Left = 676
    Top = 159
    Datasets = <
      item
        DataSet = frxContratos
        DataSetName = 'frxContratos'
      end
      item
        DataSet = frxDetalles
        DataSetName = 'frxDetalles'
      end
      item
        DataSet = frxFacturas
        DataSetName = 'frxFacturas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        DataSet = frxFacturas
        DataSetName = 'frxFacturas'
        RowCount = 0
        object Memo15: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."iFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."sIdNumeroCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 192.756030000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."sIdCompania"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 415.748300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."iIdTipoMoneda"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 461.102660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."dImporteTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 529.134200000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."dIva"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 593.386210000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."sStatus"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 668.976810000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxFacturas."Total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 366.614410000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Cantidad]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 434.645950000000000000
        Width = 740.409927000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 133.078850000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Left = 608.504330000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Hoja [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha: [DATE]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 44.354360000000000000
          Width = 151.181200000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = frxContratos
          DataSetName = 'frxContratos'
          HightQuality = False
        end
        object Memo2: TfrxMemoView
          Left = 154.960730000000000000
          Top = 42.795300000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxContratos."sContrato"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Top = 64.252010000000000000
          Width = 453.543600000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DOCUMENTOS AGRUPADOS POR CLIENTE'
            'ORDENADOS POR FECHA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 154.960730000000000000
          Top = 94.488250000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DEL: [FechaIni] AL: [FechaFnl]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.000000000000000000
          Top = 121.740260000000000000
          Width = 737.008350000000000000
          ShowHint = False
          Frame.Style = fsDouble
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        Condition = 'frxFacturas."sCompanya"'
        object Memo5: TfrxMemoView
          Top = 34.015770000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha P.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 56.692950000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Folio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 90.708720000000000000
          Top = 34.015770000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Numero de Cuenta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 192.756030000000000000
          Top = 34.015770000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Compa'#195#177'ia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 415.748300000000000000
          Top = 34.015770000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Moneda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 461.102660000000000000
          Top = 34.015770000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Importe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 529.134200000000000000
          Top = 34.015770000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'I.V.A.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 593.386210000000000000
          Top = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Estatus')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 668.976810000000000000
          Top = 34.015770000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 366.614410000000000000
          Top = 34.015770000000000000
          Width = 49.133846060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Top = 15.118120000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Compa'#195#177'ia: [frxFacturas."sCompanya"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 45.354360000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        object Memo26: TfrxMemoView
          Left = 192.756030000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Total al : [frxFacturas."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 192.756030000000000000
          Top = 18.897650000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Total de documentos impresos:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 366.614410000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<Cantidad>)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 461.102660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxFacturas."dImporteTotal">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 529.134200000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxFacturas."dIva">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 668.976810000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxFacturas."Total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 366.614410000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxFacturas: TfrxDBDataset
    UserName = 'frxFacturas'
    CloseDataSource = False
    DataSource = dszQEgresos
    BCDToCurrency = False
    Left = 640
    Top = 160
  end
  object frxDetalles: TfrxDBDataset
    UserName = 'frxDetalles'
    CloseDataSource = False
    DataSource = ds_DetallesFacturas
    BCDToCurrency = False
    Left = 640
    Top = 192
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 600
    Top = 160
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton4: TdxBarButton
      Caption = 'Agrupado por cliente y ordenado por fecha'
      Category = 0
      Hint = 'Agrupado por cliente y ordenado por fecha'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Exportar datos a Excel'
      Category = 0
      Hint = 'Exportar datos a Excel'
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Ordenado por fecha de Pago'
      Category = 0
      Hint = 'Ordenado por fecha de Pago'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Ordenado por fecha de Expedici'#243'n'
      Category = 0
      Hint = 'Ordenado por fecha de Expedici'#243'n'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Ordenado por Estado'
      Category = 0
      Hint = 'Ordenado por Estado'
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Auxiliar de movimientos'
      Category = 0
      Hint = 'Auxiliar de movimientos'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Graficas de Estatus de Facturas por Clientes'
      Category = 0
      Hint = 'Graficas de Estatus de Facturas por Clientes'
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end>
    UseOwnFont = False
    Left = 600
    Top = 192
  end
  object zq_contratos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT sContrato, bImagen FROM contratos WHERE sContrato=:sContr' +
        'ato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
    Left = 864
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
    object zq_contratossContrato: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object zq_contratosbImagen: TBlobField
      FieldName = 'bImagen'
    end
  end
  object frxContratos: TfrxDBDataset
    UserName = 'frxContratos'
    CloseDataSource = False
    DataSet = zq_contratos
    BCDToCurrency = False
    Left = 640
    Top = 224
  end
  object cxdtrpstry1: TcxEditRepository
    Left = 600
    Top = 224
    object RadioGroupItem1: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.DefaultValue = True
      Properties.Items = <
        item
          Caption = 'No Detallado'
          Value = True
        end
        item
          Caption = 'Detallado'
          Value = False
        end>
    end
  end
  object zq_Graficas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT te.sIdCompania, co.sRazonSocial, SUM(te.dImporteTotal+te.' +
        'dIva) as Monto, te.iIdStatus, fs.sNombre'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      'INNER JOIN con_companias co on (co.sIdCompania=te.sIdCompania)'
      'INNER JOIN con_facturas_status fs on (fs.iId=te.iIdStatus)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento="DEP' +
        'OSITO" and te.iIdStatus=:estatus) and '
      '(te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF)'
      'GROUP BY te.sIdCompania'
      'ORDER BY te.sIdCompania')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estatus'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 900
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estatus'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
end
