object frm_ReportesIngresoscias: Tfrm_ReportesIngresoscias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reportes de Ingresos de Clientes'
  ClientHeight = 418
  ClientWidth = 923
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lblRecord: TLabel
    Left = 630
    Top = 484
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 8
    Width = 92
    Height = 15
    Caption = 'Cuenta Bancaria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 29
    Width = 94
    Height = 15
    Caption = 'Consulta Fechas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object cxfacturas: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 917
    Height = 355
    Margins.Top = 60
    Align = alClient
    PopupMenu = popup_principal
    TabOrder = 7
    object grid_facturas: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dszQIngresos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = grid_facturasStylesGetContentStyle
      Styles.Header = cxstylBlackStrong
      object grid_facturasdFechaFactura1: TcxGridDBColumn
        Caption = 'Exp. Factura'
        DataBinding.FieldName = 'dFechaFactura'
        Width = 96
      end
      object grid_facturasdIdFecha1: TcxGridDBColumn
        Caption = 'Pago Fecha'
        DataBinding.FieldName = 'dIdFecha'
        Width = 108
      end
      object grid_facturasiFolio1: TcxGridDBColumn
        Caption = 'Factura'
        DataBinding.FieldName = 'iFolio'
        Width = 57
      end
      object grid_facturassIdNumeroCuenta1: TcxGridDBColumn
        Caption = 'N'#250'mero Cuenta'
        DataBinding.FieldName = 'sIdNumeroCuenta'
        Width = 80
      end
      object grid_facturassReferencia1: TcxGridDBColumn
        Caption = 'Referencia'
        DataBinding.FieldName = 'sReferencia'
        Width = 58
      end
      object grid_facturassIdCompania1: TcxGridDBColumn
        Caption = 'Compania'
        DataBinding.FieldName = 'sIdCompania'
        Width = 80
      end
      object grid_facturasdImporteTotal1: TcxGridDBColumn
        Caption = 'Subtotal'
        DataBinding.FieldName = 'dImporteTotal'
        Width = 46
      end
      object grid_facturasdIva1: TcxGridDBColumn
        Caption = 'Iva'
        DataBinding.FieldName = 'dIva'
        Width = 34
      end
      object grid_facturasTotal1: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 37
      end
      object grid_facturassCompanya1: TcxGridDBColumn
        Caption = 'Compania'
        DataBinding.FieldName = 'sCompanya'
        Width = 54
      end
      object grid_facturassStatus1: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'sStatus'
        Width = 69
      end
      object grid_facturasdParcialidad1: TcxGridDBColumn
        Caption = 'Parcialidad'
        DataBinding.FieldName = 'dParcialidad'
        Width = 92
      end
      object grid_facturassProyecto1: TcxGridDBColumn
        Caption = 'Proyecto'
        DataBinding.FieldName = 'sProyecto'
        Width = 104
      end
    end
    object cxfacturasLevel1: TcxGridLevel
      GridView = grid_facturas
    end
  end
  object tdFechaFinal: TDateTimePicker
    Left = 204
    Top = 29
    Width = 90
    Height = 23
    Date = 39765.594495983790000000
    Time = 39765.594495983790000000
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TabStop = False
    OnExit = tdFechaFinalExit
  end
  object chkPago: TCheckBox
    Left = 300
    Top = 32
    Width = 93
    Height = 17
    Caption = 'Fecha Pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = chkPagoClick
  end
  object chkExpedida: TCheckBox
    Left = 399
    Top = 32
    Width = 123
    Height = 17
    Caption = 'Fecha Expedida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = chkExpedidaClick
  end
  object chkTotal: TCheckBox
    Left = 515
    Top = 32
    Width = 118
    Height = 17
    Caption = 'Total / General'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = chkTotalClick
  end
  object chkAgrupado: TCheckBox
    Left = 625
    Top = 32
    Width = 124
    Height = 17
    Caption = 'Reporte Agrupado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object tsIdCuentaBancaria: TDBLookupComboBox
    Left = 108
    Top = 3
    Width = 641
    Height = 23
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sIdNumeroCuenta'
    ListField = 'sNombreCuenta'
    ListSource = dszQCuentasBancarias
    ParentFont = False
    TabOrder = 0
    OnCloseUp = tsIdCuentaBancariaCloseUp
  end
  object tdFechaInicio: TDateTimePicker
    Left = 108
    Top = 29
    Width = 90
    Height = 23
    Date = 0.594495983787055600
    Time = 0.594495983787055600
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    OnExit = tdFechaInicioExit
  end
  object dszQIngresos: TDataSource
    DataSet = zQIngresos
    Left = 727
    Top = 202
  end
  object zQIngresos: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zQIngresosCalcFields
    BeforeInsert = zQIngresosBeforeInsert
    SQL.Strings = (
      'select * from con_tesoreriaegresos'
      
        'where sTipoMovimiento = "Deposito" And sIdNumeroCuenta = :Cuenta' +
        ' '
      'and dFechaFactura >=:Fecha1'
      'And dFechaFactura <=:Fecha2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha2'
        ParamType = ptUnknown
      end>
    Left = 772
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha2'
        ParamType = ptUnknown
      end>
    object zQIngresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zQIngresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQIngresossTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Required = True
      OnChange = zQIngresossTipoMovimientoChange
      Size = 8
    end
    object zQIngresossIdArea: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object zQIngresossIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zQIngresossReferencia: TStringField
      FieldName = 'sReferencia'
      Required = True
      Size = 30
    end
    object zQIngresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zQIngresossRFC: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object zQIngresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 50
    end
    object zQIngresossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zQIngresossCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 30
    end
    object zQIngresossCP: TStringField
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object zQIngresossEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object zQIngresossTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
    end
    object zQIngresosdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      Required = True
      currency = True
    end
    object zQIngresoslComprobado: TStringField
      FieldName = 'lComprobado'
      Required = True
      Size = 2
    end
    object zQIngresosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zQIngresossIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object zQIngresosdIva: TFloatField
      FieldName = 'dIva'
      Required = True
      currency = True
    end
    object zQIngresosdFechaFactura: TDateField
      FieldName = 'dFechaFactura'
      Required = True
    end
    object zQIngresosTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      currency = True
      Calculated = True
    end
    object zQIngresosiFolio: TIntegerField
      FieldName = 'iFolio'
    end
    object zQIngresosiIdStatus: TIntegerField
      FieldName = 'iIdStatus'
    end
    object zQIngresossStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'sStatus'
      LookupDataSet = zq_statusfacturas
      LookupKeyFields = 'iId'
      LookupResultField = 'sNombre'
      KeyFields = 'iIdStatus'
      Size = 100
      Lookup = True
    end
    object zQIngresossCompanya: TStringField
      DisplayLabel = 'sIdCompania'
      FieldKind = fkLookup
      FieldName = 'sCompanya'
      LookupDataSet = qryCompanias
      LookupKeyFields = 'sIdCompania'
      LookupResultField = 'sRazonSocial'
      KeyFields = 'sIdCompania'
      Lookup = True
    end
    object zQIngresossTipoPago: TStringField
      FieldName = 'sTipoPago'
      Size = 13
    end
    object zQIngresossNumeroDeCuenta: TStringField
      FieldName = 'sNumeroDeCuenta'
      Size = 50
    end
    object zQIngresossNumeroPedido: TStringField
      FieldName = 'sNumeroPedido'
      Size = 50
    end
    object zQIngresosiImprimeProveedor: TIntegerField
      FieldName = 'iImprimeProveedor'
    end
    object zQIngresossMes: TStringField
      FieldName = 'sMes'
      Required = True
      Size = 15
    end
    object zQIngresosdFechaRecepcion: TDateField
      FieldName = 'dFechaRecepcion'
      Required = True
    end
    object zQIngresoslAplicaPagoParcial: TStringField
      FieldName = 'lAplicaPagoParcial'
      Required = True
      Size = 2
    end
    object zQIngresosdParcialidad: TFloatField
      FieldName = 'dParcialidad'
      Required = True
      currency = True
    end
    object zQIngresossProyecto: TStringField
      FieldName = 'sProyecto'
      Required = True
      Size = 35
    end
    object intgrfldQEgresossFormaPago: TIntegerField
      FieldName = 'sFormaPago'
    end
  end
  object dszQCuentasBancarias: TDataSource
    DataSet = zQCuentasBancarias
    Left = 729
    Top = 164
  end
  object zQCuentasBancarias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_cuentasbancarias order by sNombreCuenta')
    Params = <>
    Left = 772
    Top = 165
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
  object zCommand: TZQuery
    Connection = connection.zConnection
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 818
    Top = 193
  end
  object zQProveedores: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from proveedores'
      'where sIdProveedor = :Proveedor')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 852
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    object zQProveedoressIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zQProveedoressRFC: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object zQProveedoressRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 50
    end
    object zQProveedoressDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 30
    end
    object zQProveedoressCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 30
    end
    object zQProveedoressCP: TStringField
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object zQProveedoressEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object zQProveedoressTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 30
    end
    object zQProveedoresdMontoCredito: TFloatField
      FieldName = 'dMontoCredito'
      Required = True
    end
    object zQProveedoreslStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 8
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 772
    Top = 295
  end
  object ReporteFotografico: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * From con_facturasfotografico'
      ' Where dIdFecha = :Fecha '
      'And ildFolio = :Folio Order By iImagen')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end>
    Left = 889
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end>
  end
  object ds_ReporteFotografico: TDataSource
    AutoEdit = False
    DataSet = ReporteFotografico
    Left = 729
    Top = 328
  end
  object dsCompanias: TDataSource
    DataSet = qryCompanias
    Left = 728
    Top = 297
  end
  object qryCompanias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_companias Where lstatus= "Activo"'
      'order by sRazonSocial')
    Params = <>
    Left = 852
    Top = 161
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
  end
  object qryConsulta: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select  te.dIdFecha, c.sIdCompania, c.sRazonSocial, te.sReferenc' +
        'ia,'
      ' te.mDescripcion, te.dImporteTotal, te.dIva'
      ' from con_tesoreriaegresos te'
      'inner join con_companias c On (te.sIdCompania=c.sIdCompania )'
      'and te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2'
      'and sTipoMovimiento="DEPOSITO"'
      'order by te.sIdCompania, te.dIdFecha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha2'
        ParamType = ptUnknown
      end>
    Left = 818
    Top = 161
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha2'
        ParamType = ptUnknown
      end>
  end
  object frReporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39813.804003356500000000
    ReportOptions.LastChange = 41620.962826817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      
        '   sMes : Array [1..12] of String ;                             ' +
        '                                                     '
      'begin'
      '   sMes[1] := '#39'ENERO'#39' ;'
      '   sMes[2] := '#39'FEBRERO'#39' ;  '
      '   sMes[3] := '#39'MARZO'#39' ;'
      '   sMes[4] := '#39'ABRIL'#39' ;  '
      '   sMes[5] := '#39'MAYO'#39' ;'
      '   sMes[6] := '#39'JUNIO'#39' ;  '
      '   sMes[7] := '#39'JULIO'#39' ;'
      '   sMes[8] := '#39'AGOSTO'#39' ;  '
      '   sMes[9] := '#39'SEPTIEMBRE'#39' ;'
      '   sMes[10] := '#39'OCTUBRE'#39' ;  '
      '   sMes[11] := '#39'NOVIEMBRE'#39' ;'
      '   sMes[12] := '#39'DICIEMBRE'#39' ;                      '
      'end.')
    OnGetValue = frReporteGetValue
    Left = 820
    Top = 297
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frxCompania
        DataSetName = 'frxCompania'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
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
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        DataSet = frxCompania
        DataSetName = 'frxCompania'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 1.559060000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCompania."dIdFecha"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 598.590910000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxCompania
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCompania."dImporteTotal"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 81.929190000000000000
          Top = 2.000000000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sRazonSocial'
          DataSet = frxCompania
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCompania."sRazonSocial"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 212.433210000000000000
          Top = 2.000000000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frxCompania
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxCompania."mDescripcion"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 517.795610000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'dIva'
          DataSet = frxCompania
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCompania."dIva"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 672.756340000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxCompania
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxCompania."dImporteTotal">+'
            '<frxCompania."dIva">]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
        object Memo35: TfrxMemoView
          Left = 455.323130000000000000
          Top = 143.622140000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha del Reporte 2')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 627.401980000000000000
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Now]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 166.299320000000000000
          Top = 49.133890000000000000
          Width = 551.811380000000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frm_ConfiguracionCont.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sRfc"]'
            '[frConfiguracionCont."sDireccion1"]'
            '[frConfiguracionCont."sDireccion2"]'
            '[frConfiguracionCont."sDireccion3"]')
          ParentFont = False
        end
        object frConfiguracionsNombre: TfrxMemoView
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 476.220780000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frm_ConfiguracionCont.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sNombre"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 98.267780000000000000
        Top = 502.677490000000000000
        Width = 740.409927000000000000
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 343.937230000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '     [frConfiguracionCont."sPresidente"]'
            ''
            ''
            '                              ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = -7.559060000000000000
          Top = 26.456710000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sTitPresidente"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 415.748300000000000000
          Top = 9.102350000000000000
          Width = 321.260050000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sTesorerom"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 415.748300000000000000
          Top = 28.000000000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sTitTesorerom"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 287.244280000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 253.228510000000000000
        Width = 740.409927000000000000
        Condition = 'MonthOf(<frxCompania."dIdFecha">)'
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Top = 19.338590000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'MMMM'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxCompania."dIdFecha"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 521.575140000000000000
          Top = 15.118120000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'IVA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 668.976810000000000000
          Top = 18.897650000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 370.393940000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 600.709030000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[SUM(<frxCompania."dImporteTotal">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 517.795610000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[SUM(<frxCompania."dIva">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 676.535870000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[SUM(<frxCompania."dIva">,MasterData1)+'
            'SUM(<frxCompania."dImporteTotal">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 740.409927000000000000
        Condition = '<frxCompania."sIdCompania">'
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 740.409927000000000000
      end
      object Memo21: TfrxMemoView
        Left = 589.606680000000000000
        Top = 415.748300000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '[SUM(<frxCompania."dIva">,MasterData1)+'
          'SUM(<frxCompania."dImporteTotal">,MasterData1)]')
        ParentFont = False
      end
    end
  end
  object frxCompania: TfrxDBDataset
    UserName = 'frxCompania'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dIdFecha=dIdFecha'
      'sIdCompania=sIdCompania'
      'sRazonSocial=sRazonSocial'
      'sReferencia=sReferencia'
      'mDescripcion=mDescripcion'
      'dImporteTotal=dImporteTotal'
      'dIva=dIva')
    DataSet = qryConsulta
    BCDToCurrency = False
    Left = 852
    Top = 233
  end
  object zq_statusfacturas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zQIngresosCalcFields
    BeforeInsert = zQIngresosBeforeInsert
    SQL.Strings = (
      'SELECT * FROM con_facturas_status;')
    Params = <>
    Left = 772
    Top = 233
    object zq_statusfacturasiId: TIntegerField
      FieldName = 'iId'
    end
    object zq_statusfacturassNombre: TStringField
      FieldName = 'sNombre'
      Size = 100
    end
  end
  object ds_statusfacturas: TDataSource
    AutoEdit = False
    DataSet = zq_statusfacturas
    Left = 727
    Top = 234
  end
  object Print_Factura: TfrxDBDataset
    UserName = 'Print_Factura'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dIdFecha=dIdFecha'
      'iIdFolio=iIdFolio'
      'sTipoMovimiento=sTipoMovimiento'
      'sIdArea=sIdArea'
      'sIdNumeroCuenta=sIdNumeroCuenta'
      'sReferencia=sReferencia'
      'sIdProveedor=sIdProveedor'
      'sRFC=sRFC'
      'sRazonSocial=sRazonSocial'
      'sDomicilio=sDomicilio'
      'sCiudad=sCiudad'
      'sCP=sCP'
      'sEstado=sEstado'
      'sTelefono=sTelefono'
      'dImporteTotal=dImporteTotal'
      'lComprobado=lComprobado'
      'mDescripcion=mDescripcion'
      'sIdCompania=sIdCompania'
      'dIva=dIva'
      'dFechaFactura=dFechaFactura'
      'Total=Total'
      'iFolio=iFolio'
      'iIdStatus=iIdStatus'
      'sStatus=sStatus'
      'sCompanya=sCompanya'
      'sTipoPago=sTipoPago'
      'sFormaPago=sFormaPago'
      'sNumeroDeCuenta=sNumeroDeCuenta'
      'sNumeroPedido=sNumeroPedido'
      'iImprimeProveedor=iImprimeProveedor')
    DataSource = dszQIngresos
    BCDToCurrency = False
    Left = 892
    Top = 329
  end
  object Print_InfoCliente: TfrxDBDataset
    UserName = 'Print_InfoCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdCompania=sIdCompania'
      'sRFC=sRFC'
      'sRazonSocial=sRazonSocial'
      'sDomicilio=sDomicilio'
      'sCiudad=sCiudad'
      'sCP=sCP'
      'sEstado=sEstado'
      'sTelefono=sTelefono'
      'dMontoCredito=dMontoCredito'
      'lStatus=lStatus'
      'sNumeroProveedor=sNumeroProveedor')
    DataSource = dsCompanias
    BCDToCurrency = False
    Left = 892
    Top = 265
  end
  object zq_DetallesFacturas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT *, SUBSTR(sDescripcion, 1, 100) '
      
        'AS strDesc FROM con_facturas_detalles WHERE iId_Factura = :Factu' +
        'ra;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Factura'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 772
    Top = 265
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Factura'
        ParamType = ptUnknown
      end>
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
    object zq_DetallesFacturasstrDesc: TStringField
      FieldName = 'strDesc'
      Size = 500
    end
    object zq_DetallesFacturassMedida: TStringField
      FieldName = 'sMedida'
      Size = 500
    end
    object zq_DetallesFacturassDescripcion: TMemoField
      FieldName = 'sDescripcion'
      BlobType = ftMemo
    end
  end
  object ds_DetallesFacturas: TDataSource
    DataSet = zq_DetallesFacturas
    Left = 728
    Top = 265
  end
  object Print_DetallesdeFactura: TfrxDBDataset
    UserName = 'Print_DetallesdeFactura'
    CloseDataSource = False
    DataSource = ds_DetallesFacturas
    BCDToCurrency = False
    Left = 892
    Top = 297
  end
  object ZQuery1: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT SUM(dCantidad * dImporte) AS dCantidadporConcepto '
      'FROM con_facturas_detalles WHERE iId_Factura = :Factura'
      ' AND iId = :Detalle;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Factura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Detalle'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 884
    Top = 197
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Factura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Detalle'
        ParamType = ptUnknown
      end>
    object ZQuery1dCantidadporConcepto: TFloatField
      FieldName = 'dCantidadporConcepto'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 820
    Top = 325
  end
  object frxEgresos: TfrxDBDataset
    UserName = 'frxEgresos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dIdFecha=dIdFecha'
      'iIdFolio=iIdFolio'
      'sTipoMovimiento=sTipoMovimiento'
      'sIdArea=sIdArea'
      'sIdNumeroCuenta=sIdNumeroCuenta'
      'sReferencia=sReferencia'
      'sIdProveedor=sIdProveedor'
      'sRFC=sRFC'
      'sRazonSocial=sRazonSocial'
      'sDomicilio=sDomicilio'
      'sCiudad=sCiudad'
      'sCP=sCP'
      'sEstado=sEstado'
      'sTelefono=sTelefono'
      'dImporteTotal=dImporteTotal'
      'lComprobado=lComprobado'
      'mDescripcion=mDescripcion'
      'sIdCompania=sIdCompania'
      'dIva=dIva'
      'dFechaFactura=dFechaFactura'
      'Total=Total'
      'iFolio=iFolio'
      'iIdStatus=iIdStatus'
      'sStatus=sStatus'
      'sCompanya=sCompanya'
      'sTipoPago=sTipoPago'
      'sFormaPago=sFormaPago'
      'sNumeroDeCuenta=sNumeroDeCuenta')
    DataSource = dszQIngresos
    BCDToCurrency = False
    Left = 916
    Top = 137
  end
  object qryFotografico: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_facturasfotografico Where ildFolio =:Folio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end>
    Left = 886
    Top = 163
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end>
    object qryFotograficoildFolio: TIntegerField
      FieldName = 'ildFolio'
      Required = True
    end
    object qryFotograficodIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object qryFotograficoiImagen: TIntegerField
      FieldName = 'iImagen'
    end
    object qryFotograficobImagen: TBlobField
      FieldName = 'bImagen'
      Required = True
    end
  end
  object frxfotografia: TfrxDBDataset
    UserName = 'frxfotografia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ildFolio=ildFolio'
      'dIdFecha=dIdFecha'
      'iImagen=iImagen'
      'bImagen=bImagen')
    DataSet = qryFotografico
    BCDToCurrency = False
    Left = 822
    Top = 267
  end
  object qryAuxiliar: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      ''
      
        'select o.sIdFolio, o.sNumeroOrden, o.sDescripcioncorta, o.sIdCom' +
        'pania, c.sRazonSocial,'
      ' SUM(t.dImporteTotal+ t.dIva) as total from ordenesdetrabajo o'
      'inner join `con_tesoreriaegresos` t '
      
        'On (o.sNumeroOrden=t.sProyecto And o.`sIdCompania`=t.sIdCompania' +
        ')'
      'inner join con_companias c'
      'On (o.`sIdCompania`=c.sIdCompania)'
      'Where t.`iIdStatus`=4'
      'Group by o.sIdCompania, o.`sNumeroOrden`'
      'order by o.sIdCompania')
    Params = <>
    Left = 854
    Top = 195
  end
  object dsConsultaf: TfrxDBDataset
    UserName = 'dsConsultaf'
    CloseDataSource = False
    DataSet = qryConsultaf
    BCDToCurrency = False
    Left = 852
    Top = 265
  end
  object qryConsultaf: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 818
    Top = 129
  end
  object qryParcPagos: TZQuery
    Connection = connection.zConnection
    OnCalcFields = qryParcPagosCalcFields
    BeforePost = qryParcPagosBeforePost
    SQL.Strings = (
      'select * from con_parcfacturas where iIdFolio =:idFactura '
      'Order By iConsecutivo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idFactura'
        ParamType = ptUnknown
      end>
    Left = 886
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idFactura'
        ParamType = ptUnknown
      end>
    object qryParcPagosdImporte: TFloatField
      FieldName = 'dImporte'
      Required = True
      currency = True
    end
    object qryParcPagosdIva: TFloatField
      FieldName = 'dIva'
      Required = True
      currency = True
    end
    object qryParcPagostotalp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totalp'
      currency = True
      Calculated = True
    end
    object qryParcPagosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object qryParcPagossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 150
    end
    object qryParcPagoslPago: TStringField
      FieldName = 'lPago'
      Required = True
      Size = 2
    end
    object qryParcPagosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object qryParcPagossTipo: TStringField
      FieldName = 'sTipo'
      Required = True
    end
  end
  object dsParcPagos: TDataSource
    DataSet = qryParcPagos
    Left = 775
    Top = 330
  end
  object zQProyectos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select  sNumeroOrden, sDescripcionCorta from ordenesdetrabajo'
      'Where sIdCompania =:Proyecto Order by sDescripcionCorta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Proyecto'
        ParamType = ptUnknown
      end>
    Left = 772
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proyecto'
        ParamType = ptUnknown
      end>
    object zQProyectossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object zQProyectossDescripcionCorta: TStringField
      FieldName = 'sDescripcionCorta'
      Required = True
      Size = 50
    end
  end
  object dszQProyectos: TDataSource
    DataSet = zQProyectos
    Left = 729
    Top = 124
  end
  object frxProyecto: TfrxDBDataset
    UserName = 'frxProyecto'#13#10
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdFolio=sIdFolio'
      'sNumeroOrden=sNumeroOrden'
      'sDescripcioncorta=sDescripcioncorta'
      'sIdCompania=sIdCompania'
      'sRazonSocial=sRazonSocial'
      'total=total')
    DataSet = qryAuxiliar
    BCDToCurrency = False
    Left = 820
    Top = 233
  end
  object styleGrid: TcxStyleRepository
    Left = 808
    PixelsPerInch = 96
    object cxstylBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
    object cxstylRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxstylBlack: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstylGreen: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clGreen
    end
    object cxstylMaroon: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxstylBlackStrong: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstylPurple: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = 16711808
    end
  end
  object dxbrmngr1: TdxBarManager
    AllowReset = False
    AlwaysSaveText = True
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'popIzquierdo')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.ImageListBkColor = clMoneyGreen
    ImageOptions.Images = frmrepositorio.IconosTodos16
    ImageOptions.LargeImages = frmrepositorio.IconosTodos32
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsStandard
    UseSystemFont = False
    Left = 760
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbExcel: TdxBarButton
      Caption = 'Exportar a Excel'
      Category = 0
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = dxbExcelClick
    end
    object Porcompaias1: TdxBarButton
      Caption = 'Imprimir Por compa'#241'ias'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      OnClick = Porcompaias1Click
    end
    object PorFechas1: TdxBarButton
      Caption = 'Imprimir Facturas pagadas x Fechas'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      OnClick = PorFechas1Click
    end
    object ImprimirReporte1: TdxBarButton
      Caption = 'Imprimir Reporte'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      OnClick = ImprimirReporte1Click
    end
    object mnureportet: TdxBarSubItem
      Caption = 'Reporte Total'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Pagadas1'
        end
        item
          Visible = True
          ItemName = 'Canceladas1'
        end
        item
          Visible = True
          ItemName = 'Pendientes1'
        end
        item
          Visible = True
          ItemName = 'otal1'
        end
        item
          Visible = True
          ItemName = 'PorProyecto1'
        end>
    end
    object Pagadas1: TdxBarButton
      Caption = 'Pagadas'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      OnClick = Pagadas1Click
    end
    object Canceladas1: TdxBarButton
      Caption = 'Canceladas'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      OnClick = Canceladas1Click
    end
    object Pendientes1: TdxBarButton
      Caption = 'Pendientes'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      OnClick = Pendientes1Click
    end
    object otal1: TdxBarButton
      Caption = 'Total'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      OnClick = otal1Click
    end
    object PorProyecto1: TdxBarButton
      Caption = 'Por Proyecto'
      Category = 1
      Visible = ivAlways
      ImageIndex = 397
      OnClick = PorProyecto1Click
    end
    object Graficas1: TdxBarSubItem
      Caption = 'Graficas'
      Category = 1
      Visible = ivAlways
      ImageIndex = 416
      ItemLinks = <
        item
          Visible = True
          ItemName = 'IngresosxCia1'
        end>
    end
    object IngresosxCia1: TdxBarButton
      Caption = 'Ingresos x Cia.'
      Category = 1
      Visible = ivAlways
      ImageIndex = 825
      OnClick = IngresosxCia1Click
    end
    object ReporteXMesFacturado1: TdxBarSubItem
      Caption = 'Reporte X Mes Facturado'
      Category = 1
      Visible = ivAlways
      ImageIndex = 226
      ItemLinks = <
        item
          Visible = True
          ItemName = 'ENERO1'
        end>
    end
    object ENERO1: TdxBarButton
      Caption = 'Cobro del Mes'
      Category = 1
      Visible = ivAlways
      ImageIndex = 814
      OnClick = ENERO1Click
    end
  end
  object popup_principal: TdxRibbonPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Porcompaias1'
      end
      item
        Visible = True
        ItemName = 'dxbExcel'
      end
      item
        Visible = True
        ItemName = 'PorFechas1'
      end
      item
        Visible = True
        ItemName = 'ImprimirReporte1'
      end
      item
        Visible = True
        ItemName = 'mnureportet'
      end
      item
        Visible = True
        ItemName = 'Graficas1'
      end
      item
        Visible = True
        ItemName = 'ReporteXMesFacturado1'
      end>
    UseOwnFont = False
    Left = 808
    Top = 32
  end
  object dlgSave1: TSaveDialog
    Left = 64
    Top = 192
  end
end
