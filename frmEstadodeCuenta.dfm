object frm_EstadodeCuenta: Tfrm_EstadodeCuenta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Estado de Cuenta Bancario'
  ClientHeight = 495
  ClientWidth = 1124
  Color = 13683905
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pgEgresos: TPageControl
    Left = 0
    Top = 48
    Width = 1124
    Height = 279
    Hint = 'Detalle de Gastos Generales'
    Align = alClient
    TabOrder = 1
    OnChange = pgEgresosChange
    OnChanging = pgEgresosChanging
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 384
    Width = 1124
    Height = 111
    Align = alBottom
    TabOrder = 3
    object Label3: TLabel
      Left = 6
      Top = 17
      Width = 102
      Height = 15
      Caption = 'TOTAL INGRESOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 479
      Top = 17
      Width = 76
      Height = 15
      Caption = 'SALDO FINAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 244
      Top = 17
      Width = 98
      Height = 15
      Caption = 'TOTAL EGRESOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 2
      Top = 36
      Width = 1120
      Height = 73
      Align = alBottom
      DataField = 'mDescripcion'
      DataSource = dszqtesoreriaegresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object tMonto: TCurrencyEdit
      Left = 112
      Top = 11
      Width = 93
      Height = 23
      Margins.Left = 4
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object tdMontoFinal: TCurrencyEdit
      Left = 343
      Top = 11
      Width = 117
      Height = 23
      Margins.Left = 4
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tdSaldo: TCurrencyEdit
      Left = 562
      Top = 7
      Width = 117
      Height = 23
      Margins.Left = 4
      Margins.Top = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 1124
    Height = 48
    Align = alTop
    Caption = 'Opciones de Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 22
      Width = 83
      Height = 15
      Caption = 'Fecha de Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 206
      Top = 22
      Width = 99
      Height = 15
      Caption = 'Fecha de Termino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 447
      Top = 18
      Width = 126
      Height = 15
      Caption = 'Gasto no Comprobado'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 608
      Top = 18
      Width = 109
      Height = 15
      Caption = 'Gasto Comprobado'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 754
      Top = 18
      Width = 50
      Height = 15
      Caption = 'Deposito'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object tdFechaInicio: TDateTimePicker
      Left = 109
      Top = 17
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
      TabOrder = 0
      TabStop = False
      OnExit = tdFechaInicioExit
    end
    object tdFechaFinal: TDateTimePicker
      Left = 311
      Top = 17
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
      TabOrder = 1
      TabStop = False
      OnExit = tdFechaFinalExit
    end
    object Memo1: TMemo
      Left = 426
      Top = 18
      Width = 15
      Height = 15
      Color = clRed
      Lines.Strings = (
        'M'
        'e'
        'm'
        'o'
        '1')
      ReadOnly = True
      TabOrder = 2
    end
    object Memo2: TMemo
      Left = 587
      Top = 18
      Width = 15
      Height = 15
      Color = clBlue
      Lines.Strings = (
        'M'
        'e'
        'm'
        'o'
        '1')
      ReadOnly = True
      TabOrder = 3
    end
    object Memo3: TMemo
      Left = 733
      Top = 18
      Width = 15
      Height = 15
      Color = clGreen
      Lines.Strings = (
        'M'
        'e'
        'm'
        'o'
        '1')
      ReadOnly = True
      TabOrder = 4
    end
  end
  object cxDBGridConceptos: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 73
    Width = 1118
    Height = 251
    Margins.Top = 25
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = popup_principal
    TabOrder = 2
    object GridConceptos: TcxGridDBTableView
      Navigator.Buttons.OnButtonClick = GridConceptosNavigatorButtonsButtonClick
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <
        item
          ImageIndex = 0
        end>
      Navigator.Buttons.Images = cxImageList1
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dszqtesoreriaegresos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$0.00'
          Kind = skSum
          FieldName = 'dImporteTotal'
          Column = Col__ImporteTotal
        end
        item
          Format = '$0.00'
          Kind = skSum
          FieldName = 'total'
          Column = Col__total
        end
        item
          Format = '$0.00'
          Kind = skSum
          FieldName = 'saldo'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      Styles.OnGetContentStyle = GridConceptosStylesGetContentStyle
      object col_fecha1: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'dIdFecha'
        Width = 79
      end
      object Col__fechaExp: TcxGridDBColumn
        Caption = 'Fecha Exp.'
        DataBinding.FieldName = 'dFechaFactura'
      end
      object Col_Folio: TcxGridDBColumn
        Caption = 'Folio'
        DataBinding.FieldName = 'iFolio'
      end
      object Col_factura: TcxGridDBColumn
        Caption = 'Factura'
        DataBinding.FieldName = 'iIdFolio'
        Width = 98
      end
      object Col__tipomovimiento: TcxGridDBColumn
        Caption = 'Movimiento'
        DataBinding.FieldName = 'sTipoMovimiento'
        Width = 124
      end
      object Col__Nombre: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'sNombre'
        Width = 155
      end
      object Col__Comprobado: TcxGridDBColumn
        Caption = 'Comprobado'
        DataBinding.FieldName = 'lComprobado'
        Width = 92
      end
      object Col__Referencia: TcxGridDBColumn
        Caption = 'Referencia'
        DataBinding.FieldName = 'sReferencia'
        Width = 127
      end
      object Col__NumeroOrden: TcxGridDBColumn
        Caption = 'Numero Orden'
        DataBinding.FieldName = 'sNumeroOrden'
        Width = 160
      end
      object Col__RazonSocial: TcxGridDBColumn
        Caption = 'Raz'#243'n Social'
        DataBinding.FieldName = 'sRazonSocial'
        Width = 142
      end
      object Col__NumeroCuenta: TcxGridDBColumn
        DataBinding.FieldName = 'sIdNumeroCuenta'
        Width = 126
      end
      object Col__ImporteTotal: TcxGridDBColumn
        Caption = 'Importe'
        DataBinding.FieldName = 'dImporteTotal'
        Width = 86
      end
      object Col__Iva: TcxGridDBColumn
        Caption = 'Iva'
        DataBinding.FieldName = 'dIva'
      end
      object Col__IvaRet: TcxGridDBColumn
        Caption = 'Iva Ret'
        DataBinding.FieldName = 'dIvaRet'
      end
      object Col__isrRet: TcxGridDBColumn
        Caption = 'Isr Ret'
        DataBinding.FieldName = 'dIsrRet'
      end
      object Col__total: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'total2'
        Width = 80
      end
      object Col__saldo: TcxGridDBColumn
        DataBinding.FieldName = 'saldo'
        Width = 80
      end
    end
    object CxGridNivelGrid1Level1: TcxGridLevel
      GridView = GridConceptos
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 327
    Width = 1124
    Height = 57
    Align = alBottom
    TabOrder = 8
    Visible = False
    object Label9: TLabel
      Left = 6
      Top = 5
      Width = 149
      Height = 15
      Caption = 'Exportando Datos a Excel...'
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 23
      Width = 1122
      Height = 33
      Align = alBottom
      TabOrder = 0
    end
  end
  object zQCuentasBancarias: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sIdNumeroCuenta from con_cuentasbancarias order by sIdNum' +
        'eroCuenta')
    Params = <>
    Left = 592
    Top = 152
  end
  object zQTesoreriaEgresos: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = zQTesoreriaEgresosCalcFields
    SQL.Strings = (
      
        'select f.sNombre, te.*, (te.dImporteTotal+te.dIva)as total from ' +
        'con_tesoreriaegresos te'
      'inner Join con_facturas_status f On (f. iId=te.iIdStatus)'
      
        'where te.sIdNumeroCuenta = :Cuenta And te.dIdFecha >= :FechaI An' +
        'd '
      'te.dIdFecha <= :FechaF Order By te.dIdfecha, te.sReferencia')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
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
    Left = 624
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
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
    object zQTesoreriaEgresossNombre: TStringField
      FieldName = 'sNombre'
      Size = 100
    end
    object zQTesoreriaEgresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zQTesoreriaEgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQTesoreriaEgresossTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Size = 8
    end
    object zQTesoreriaEgresossIdArea: TStringField
      FieldName = 'sIdArea'
      Size = 8
    end
    object zQTesoreriaEgresossIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
    end
    object zQTesoreriaEgresossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 60
    end
    object zQTesoreriaEgresossReferencia: TStringField
      FieldName = 'sReferencia'
      Size = 30
    end
    object zQTesoreriaEgresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
    end
    object zQTesoreriaEgresossIdCompania: TStringField
      FieldName = 'sIdCompania'
      Size = 8
    end
    object zQTesoreriaEgresossRFC: TStringField
      FieldName = 'sRFC'
      Size = 15
    end
    object zQTesoreriaEgresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Size = 255
    end
    object zQTesoreriaEgresossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Size = 50
    end
    object zQTesoreriaEgresossCiudad: TStringField
      FieldName = 'sCiudad'
      Size = 30
    end
    object zQTesoreriaEgresossCP: TStringField
      FieldName = 'sCP'
      Size = 5
    end
    object zQTesoreriaEgresossEstado: TStringField
      FieldName = 'sEstado'
      Size = 30
    end
    object zQTesoreriaEgresossTelefono: TStringField
      FieldName = 'sTelefono'
    end
    object zQTesoreriaEgresosdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      currency = True
    end
    object zQTesoreriaEgresosdImporteSubTotal: TFloatField
      FieldName = 'dImporteSubTotal'
      currency = True
    end
    object zQTesoreriaEgresoslComprobado: TStringField
      FieldName = 'lComprobado'
      Size = 2
    end
    object zQTesoreriaEgresossStatus: TStringField
      FieldName = 'sStatus'
      Size = 9
    end
    object zQTesoreriaEgresosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zQTesoreriaEgresosdIva: TFloatField
      FieldName = 'dIva'
      currency = True
    end
    object zQTesoreriaEgresosdIva_Porcentaje: TFloatField
      FieldName = 'dIva_Porcentaje'
    end
    object zQTesoreriaEgresoslAplicaiva: TStringField
      FieldName = 'lAplicaiva'
      Size = 2
    end
    object zQTesoreriaEgresossPoliza: TStringField
      FieldName = 'sPoliza'
      Size = 40
    end
    object zQTesoreriaEgresosdFechaFactura: TDateField
      FieldName = 'dFechaFactura'
    end
    object zQTesoreriaEgresosdFechaRecepcion: TDateField
      FieldName = 'dFechaRecepcion'
    end
    object zQTesoreriaEgresosiFolio: TIntegerField
      FieldName = 'iFolio'
      Required = True
    end
    object zQTesoreriaEgresosiIdStatus: TIntegerField
      FieldName = 'iIdStatus'
    end
    object zQTesoreriaEgresossTipoPago: TStringField
      FieldName = 'sTipoPago'
      Size = 13
    end
    object zQTesoreriaEgresossFormaPago: TIntegerField
      FieldName = 'sFormaPago'
    end
    object zQTesoreriaEgresossNumeroDeCuenta: TStringField
      FieldName = 'sNumeroDeCuenta'
      Size = 50
    end
    object zQTesoreriaEgresossNumeroPedido: TStringField
      FieldName = 'sNumeroPedido'
      Size = 50
    end
    object zQTesoreriaEgresosiImprimeProveedor: TIntegerField
      FieldName = 'iImprimeProveedor'
    end
    object zQTesoreriaEgresossMes: TStringField
      FieldName = 'sMes'
      Size = 15
    end
    object zQTesoreriaEgresoslAplicaPagoParcial: TStringField
      FieldName = 'lAplicaPagoParcial'
      Size = 2
    end
    object zQTesoreriaEgresosdParcialidad: TFloatField
      FieldName = 'dParcialidad'
    end
    object zQTesoreriaEgresossProyecto: TStringField
      FieldName = 'sProyecto'
      Size = 35
    end
    object zQTesoreriaEgresosCFDI_sTipoDocumento: TStringField
      FieldName = 'CFDI_sTipoDocumento'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sUUID: TStringField
      FieldName = 'CFDI_sUUID'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_dFechaEmision: TDateTimeField
      FieldName = 'CFDI_dFechaEmision'
    end
    object zQTesoreriaEgresosCFDI_dFechaTimbrado: TDateTimeField
      FieldName = 'CFDI_dFechaTimbrado'
    end
    object zQTesoreriaEgresosCFDI_sSelloCFD: TStringField
      FieldName = 'CFDI_sSelloCFD'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sSelloSAT: TStringField
      FieldName = 'CFDI_sSelloSAT'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sCertificadoCFD: TStringField
      FieldName = 'CFDI_sCertificadoCFD'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sCertificadoSAT: TStringField
      FieldName = 'CFDI_sCertificadoSAT'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sCadenaOriginal: TStringField
      FieldName = 'CFDI_sCadenaOriginal'
      Size = 300
    end
    object zQTesoreriaEgresosCFDI_bbCode: TBlobField
      FieldName = 'CFDI_bbCode'
    end
    object zQTesoreriaEgresosCFDI_sEstado: TStringField
      FieldName = 'CFDI_sEstado'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sRegimenFiscal: TStringField
      FieldName = 'CFDI_sRegimenFiscal'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sLugarExpedicion: TStringField
      FieldName = 'CFDI_sLugarExpedicion'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sFormaDePago: TStringField
      FieldName = 'CFDI_sFormaDePago'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sMetodoDePago: TStringField
      FieldName = 'CFDI_sMetodoDePago'
      Size = 255
    end
    object zQTesoreriaEgresosCFDI_sTipoComprobante: TStringField
      FieldName = 'CFDI_sTipoComprobante'
      Size = 255
    end
    object zQTesoreriaEgresossUsuario: TStringField
      FieldName = 'sUsuario'
    end
    object zQTesoreriaEgresosiEjercicio: TIntegerField
      FieldName = 'iEjercicio'
      Required = True
    end
    object zQTesoreriaEgresosiIdTipoMoneda: TStringField
      FieldName = 'iIdTipoMoneda'
      Size = 11
    end
    object zQTesoreriaEgresosiIdPrecioMoneda: TIntegerField
      FieldName = 'iIdPrecioMoneda'
    end
    object zQTesoreriaEgresostotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
    object zQTesoreriaEgresosSaldo: TFloatField
      FieldName = 'Saldo'
      ReadOnly = True
      currency = True
    end
    object zQTesoreriaEgresostotal2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total2'
      currency = True
      Calculated = True
    end
    object zQTesoreriaEgresoslNotaCredito: TStringField
      FieldName = 'lNotaCredito'
      Size = 2
    end
    object zQTesoreriaEgresossaldo2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo2'
      currency = True
      Calculated = True
    end
    object strngfldQTesoreriaEgresossNombreCuenta: TStringField
      FieldName = 'sNombreCuenta'
      Size = 50
    end
    object zQTesoreriaEgresosdIvaRet: TFloatField
      FieldName = 'dIvaRet'
      currency = True
    end
    object zQTesoreriaEgresosdIsrRet: TFloatField
      FieldName = 'dIsrRet'
      currency = True
    end
  end
  object dszqtesoreriaegresos: TDataSource
    DataSet = zQTesoreriaEgresos
    Left = 544
    Top = 115
  end
  object frxEgresos: TfrxDBDataset
    UserName = 'frxEstadosCuentas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dIdFecha=dIdFecha'
      'iIdFolio=iIdFolio'
      'sTipoMovimiento=sTipoMovimiento'
      'sReferencia=sReferencia'
      'sNumeroOrden=sNumeroOrden'
      'sRazonSocial=sRazonSocial'
      'lComprobado=lComprobado'
      'sIdNumeroCuenta=sIdNumeroCuenta'
      'sIdProveedor=sIdProveedor'
      'mDescripcion=mDescripcion'
      'dImporteTotal=dImporteTotal'
      'dIva=dIva'
      'total=total'
      'iFolio=iFolio'
      'iIdStatus=iIdStatus'
      'sNombre=sNombre'
      'saldo=saldo'
      'sStatus=sStatus'
      'sNombreCuenta=sNombreCuenta')
    DataSet = zQTesoreriaEgresos
    BCDToCurrency = False
    Left = 464
    Top = 96
  end
  object rDiario: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39813.804003356500000000
    ReportOptions.LastChange = 41983.825963136600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      ' Gastos,Ingresos,Saldos:String;                                 '
      'begin'
      ''
      'end.          ')
    OnGetValue = rDiarioGetValue
    Left = 512
    Top = 112
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frxEgresos
        DataSetName = 'frxEstadosCuentas'
      end>
    Variables = <
      item
        Name = ' EdoCuenta'
        Value = Null
      end
      item
        Name = 'Abono'
        Value = 
          'IIF(<frxEgresos."sTipoMovimiento"> = '#39'DEPOSITO'#39', <frxEgresos."dI' +
          'mporteTotal"> , 0 )'
      end
      item
        Name = 'Retiro'
        Value = 
          'IIF(<frxEgresos."sTipoMovimiento"> = '#39'CHEQUE'#39', <frxEgresos."dImp' +
          'orteTotal">, 0 )'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupFooter2: TfrxGroupFooter
        Height = 68.031540000000000000
        Top = 317.480520000000000000
        Width = 980.410082000000000000
        object Memo4: TfrxMemoView
          Top = 30.236240000000000000
          Width = 204.094505280000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SALDO ACTUAL')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 204.094620000000000000
          Top = 30.236240000000000000
          Width = 136.062965280000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SaldoActual]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentassNombreCuenta: TfrxMemoView
          Top = 11.338590000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16629143
          DataField = 'sNombreCuenta'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."sNombreCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118110240000000000
        Top = 279.685220000000000000
        Width = 980.410082000000000000
        DataSet = frxEgresos
        DataSetName = 'frxEstadosCuentas'
        RowCount = 0
        Stretched = True
        object frPrintersIdRecibo: TfrxMemoView
          Left = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iIdFolio'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."iIdFolio"]')
          ParentFont = False
        end
        object frPrintersNombre: TfrxMemoView
          Left = 452.189240000000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sRazonSocial'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEstadosCuentas."sRazonSocial"]')
          ParentFont = False
        end
        object frPrintersIdArticulo: TfrxMemoView
          Left = 142.724490000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sReferencia'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEstadosCuentas."sReferencia"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dIdFecha'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxEstadosCuentas."dIdFecha"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 837.055660000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dImporteTotal'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxEstadosCuentas."dImporteTotal"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 584.472790000000000000
          Width = 253.228510000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxEstadosCuentas."mDescripcion"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 226.212740000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdNumeroCuenta'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEstadosCuentas."sIdNumeroCuenta"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 380.496290000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sTipoMovimiento'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEstadosCuentas."sTipoMovimiento"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iIdFolio'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."iIdFolio"]')
          ParentFont = False
        end
        object frxEstadosCuentassStatus: TfrxMemoView
          Left = 308.921460000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sStatus'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEstadosCuentas."sStatus"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 916.425790000000000000
          Width = 60.472450710000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dIva'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxEstadosCuentas."dIva"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 445.984540000000000000
        Width = 980.410082000000000000
        object Memo10: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000020000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 52.913405350000000000
        Top = 204.094620000000000000
        Width = 980.410082000000000000
        Condition = 'frxEstadosCuentas."sIdNumeroCuenta"'
        ReprintOnNewPage = True
        OutlineText = 'frxEstadosCuentas."sIdNumeroCuenta"'
        StartNewPage = True
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
          Top = 30.236240000000000000
          Width = 34.015770000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id. FOLIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 452.189240000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CHEQUE CON CARGO A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 139.944960000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 476.866420000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'No. DE CUENTA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersReferencia: TfrxMemoView
          Left = 582.693260000000000000
          Top = 7.559060000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'sIdNumeroCuenta'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxEstadosCuentas."sIdNumeroCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 22.677165354330700000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 837.055660000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DEPOSITO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 584.472790000000000000
          Top = 30.236240000000000000
          Width = 253.228510000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 226.212740000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ORDEN No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 380.496290000000000000
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 308.921460000000000000
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 90.708720000000000000
          Top = 30.236240000000000000
          Width = 52.913420000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '# FACTURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 916.205320000000000000
          Top = 30.236240000000000000
          Width = 60.472450710000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frm_Depositoscias.frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IVA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object frConfiguracionsNombre: TfrxMemoView
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 634.961040000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sNombre"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 207.874150000000000000
          Top = 34.015770000000000000
          Width = 634.961040000000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
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
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
        object Memo11: TfrxMemoView
          Printable = False
          ShiftMode = smDontShift
          Left = 340.157700000000000000
          Top = 83.149660000000000000
          Width = 631.181510000000000000
          Height = 15.118107800000000000
          ShowHint = False
          AllowExpressions = False
          DataField = 'dIdFecha'
          DataSet = frxEgresos
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxEstadosCuentas."dIdFecha"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object styleGrid: TcxStyleRepository
    Left = 544
    Top = 144
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
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PopReportes')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = frmrepositorio.IconosTodos16
    ImageOptions.LargeImages = frmrepositorio.IconosTodos24
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 680
    Top = 48
    DockControlHeights = (
      0
      0
      0
      0)
    object CostoOperativo1: TdxBarButton
      Caption = 'Costo Operativo'
      Category = 1
      Visible = ivNever
      ImageIndex = 825
      OnClick = CostoOperativo1Click
    end
    object mnEditarCaratula: TdxBarButton
      Caption = 'Editar Caratula de Egreso'
      Category = 1
      Visible = ivNever
      ImageIndex = 817
      ShortCut = 113
      OnClick = mnEditarCaratulaClick
    end
    object mnImprimirEdoCuenta: TdxBarButton
      Caption = 'Imprimir Estado de Cuenta Bancario'
      Category = 1
      Visible = ivAlways
      ImageIndex = 829
      OnClick = mnImprimirEdoCuentaClick
    end
    object GraficasdeBancos1: TdxBarButton
      Caption = 'Graficas de Bancos'
      Category = 1
      Visible = ivAlways
      ImageIndex = 172
      OnClick = GraficasdeBancos1Click
    end
    object IngresosVSGastosGenerales1: TdxBarButton
      Caption = 'Graficas Ingresos VS Gastos Generales'
      Category = 1
      Visible = ivAlways
      ImageIndex = 194
      OnClick = IngresosVSGastosGenerales1Click
    end
    object GraficadeIngresosvsEgresosporCuentas1: TdxBarButton
      Caption = 'Grafica de Ingresos vs Egresos por Cuentas'
      Category = 1
      Visible = ivAlways
      ImageIndex = 190
      OnClick = GraficadeIngresosvsEgresosporCuentas1Click
    end
    object ExportaraExcel: TdxBarButton
      Caption = 'Exportar a Excel'
      Category = 1
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      ImageIndex = 347
      OnClick = ExportaraExcelClick
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 4194912
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FEFEFEFFBA7C
          62FFB7765CFF6363636314141414000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B06A4DFFA14C
          2AFF9D4522FFBC7F67FF969493990C0C0C0C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B06A4DFF9F49
          27FFA2502EFF9B431EFFBD8269FF7E7D7C800F0F0F0F00000000000000000000
          0000000000000000000000000000000000000000000000000000F5ECE9FFBD83
          6BFF9B421EFFA35230FF9C431FFFBC8068FF8A89878D2F2F2F2F1B1B1B1B2525
          25253B3B3B3B4545454538383838030303030000000000000000111111113C3B
          3B3DBC8169FF9C431FFFA45331FF9B421EFFBD836BFFEBDAD3FFD8B6A8FFC592
          7EFFC4907BFFD4AD9EFFEDDDD7FF6C6C6C6C0202020200000000000000000202
          02023D3C3C3EBC8069FF9B421EFFA34F2EFF9F4926FFA24E2CFF983C16FF983D
          17FF993E19FF963913FFA14F2DFFCDA18FFF6363626307070707000000000000
          0000050505052F2F2E30BD826BFF9F4927FFA3502EFF9D4623FFB47257FFCC9F
          8DFFCFA593FFBA7D64FF9F4A27FF993E1AFFC99A87FF8A8A8A8A000000000000
          00000000000000000000EBDCD6FDA14D2BFF9E4623FFC79580FF767574780000
          00000000000019191919D4AE9EFFA14D2AFF9E4624FFECDCD5FF000000000000
          00000000000000000000D0AEA0F5983C17FFB47156FF787676791D1D1D1D0000
          000000000000020202024B4B4B4BBF866EFF9B411DFFBF866FFF000000000000
          00000000000001010101B38572E8983C17FFCDA18EFF18181818000000000000
          0000000000000000000004040404DEC0B3FF9E4724FFA65736FF000000000000
          00000000000004040404AC7E6BE0993E19FFD0A695FF18181818000000000000
          0000000000000000000004040404DFC4B9FF9E4723FFA45332FF000000000000
          00000000000007070707BA9789E0963913FFBA7C63FF5B5B5B5B070707070000
          0000000000000101010159595959C79480FF9C431EFFB8795FFF000000000000
          00000000000007070707CDC0BADDA24E2CFFA04A27FFD4AE9FFF6D6D6D6D2727
          27272727272790909090E0C6BBFFA45232FF9B421EFFCCB7AFE4000000000000
          000000000000000000005B5A5A5BCDA18FFF993F19FFA04B29FFBE866FFFDEBF
          B4FFDFC4B9FFC6937EFFA35130FF983B15FFBF866FFF1F1F1F1F000000000000
          00000000000000000000272727279C9C9B9ECA9B87FFA24F2EFF9D4522FF9E47
          24FF9E4724FF9D4522FFA04A28FFC08771FFF7F1EEFF1F1F1F1F030303030000
          0000000000000000000000000000242424247B7B7B7BD9B8AAFFB7775DFFA554
          34FFA35231FFB26E53FFD2AA9AFF3F3F3F400000000000000000}
      end>
  end
  object popup_principal: TdxRibbonPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'CostoOperativo1'
      end
      item
        Visible = True
        ItemName = 'mnEditarCaratula'
      end
      item
        Visible = True
        ItemName = 'mnImprimirEdoCuenta'
      end
      item
        Visible = True
        ItemName = 'GraficasdeBancos1'
      end
      item
        Visible = True
        ItemName = 'IngresosVSGastosGenerales1'
      end
      item
        Visible = True
        ItemName = 'GraficadeIngresosvsEgresosporCuentas1'
      end
      item
        Visible = True
        ItemName = 'ExportaraExcel'
      end>
    UseOwnFont = False
    Left = 496
    Top = 176
  end
end
