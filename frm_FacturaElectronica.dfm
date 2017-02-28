object frmFacturaElectronica: TfrmFacturaElectronica
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Facturaci'#243'n Electronica'
  ClientHeight = 615
  ClientWidth = 966
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel_Datos: TPanel
    Left = 0
    Top = 0
    Width = 966
    Height = 277
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lNodosFactura: TLabel
      Left = 9
      Top = 236
      Width = 101
      Height = 15
      Caption = 'Nodos de Factura:'
    end
    object lCantidad: TJvLabel
      Left = 9
      Top = 256
      Width = 52
      Height = 15
      Alignment = taCenter
      Caption = 'Cantidad'
      FrameColor = clGradientActiveCaption
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lUnidad: TJvLabel
      Left = 64
      Top = 256
      Width = 42
      Height = 15
      Alignment = taCenter
      Caption = 'Unidad'
      FrameColor = clGradientActiveCaption
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lDescripcion: TJvLabel
      Left = 130
      Top = 256
      Width = 68
      Height = 15
      Caption = 'Descripci'#243'n'
      FrameColor = clGradientActiveCaption
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lPU: TJvLabel
      Left = 455
      Top = 256
      Width = 22
      Height = 15
      Alignment = taCenter
      Caption = 'P/U'
      FrameColor = clGradientActiveCaption
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lItemsTotal: TJvLabel
      Left = 521
      Top = 256
      Width = 28
      Height = 15
      Alignment = taCenter
      Caption = 'Total'
      FrameColor = clGradientActiveCaption
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lItemsIVA: TJvLabel
      Left = 584
      Top = 256
      Width = 18
      Height = 15
      Alignment = taCenter
      Caption = 'IVA'
      FrameColor = clGradientActiveCaption
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 92
      Height = 15
      Caption = 'Cuenta de Pago:'
    end
    object Grupo_Emisor: TGroupBox
      Left = 9
      Top = 29
      Width = 297
      Height = 58
      Caption = 'Factura'
      TabOrder = 0
      object lEmisor: TLabel
        Left = 16
        Top = 24
        Width = 43
        Height = 15
        Caption = 'Emisor:'
      end
      object tsIdFactura: TEdit
        Left = 15
        Top = 44
        Width = 181
        Height = 22
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '1'
        Visible = False
      end
      object cmbEmisor: TNxComboBox
        Left = 61
        Top = 21
        Width = 228
        Height = 23
        TabOrder = 1
        OnChange = cmbEmisorChange
        HideFocus = False
        AutoCompleteDelay = 0
        DisplayMode = dmValueList
      end
    end
    object Grupo_DatosReceptor: TGroupBox
      Left = 9
      Top = 93
      Width = 601
      Height = 137
      Caption = 'Datos del Receptor: '
      TabOrder = 1
      object lCalle: TLabel
        Left = 16
        Top = 24
        Width = 32
        Height = 15
        Caption = 'Calle:'
      end
      object lNumero: TLabel
        Left = 304
        Top = 24
        Width = 48
        Height = 15
        Caption = 'N'#250'mero:'
      end
      object lInterior: TLabel
        Left = 446
        Top = 24
        Width = 41
        Height = 15
        Caption = 'Interior:'
      end
      object lColonia: TLabel
        Left = 16
        Top = 52
        Width = 46
        Height = 15
        Caption = 'Colonia:'
      end
      object lLocalidad: TLabel
        Left = 304
        Top = 52
        Width = 57
        Height = 15
        Caption = 'Localidad:'
      end
      object lMunicipio: TLabel
        Left = 16
        Top = 80
        Width = 55
        Height = 15
        Caption = 'Municipio:'
      end
      object lEstado: TLabel
        Left = 304
        Top = 80
        Width = 42
        Height = 15
        Caption = 'Estado:'
      end
      object lCP: TLabel
        Left = 16
        Top = 108
        Width = 27
        Height = 15
        Caption = 'C.P.: '
      end
      object lRFC: TLabel
        Left = 304
        Top = 108
        Width = 28
        Height = 15
        Caption = 'RFC:'
      end
      object tsCalle: TEdit
        Left = 92
        Top = 21
        Width = 181
        Height = 23
        TabOrder = 0
        Text = '40'
      end
      object tsNumeroExterior: TEdit
        Left = 380
        Top = 21
        Width = 60
        Height = 23
        TabOrder = 1
        Text = '100'
      end
      object tsNumeroInterior: TEdit
        Left = 501
        Top = 21
        Width = 60
        Height = 23
        TabOrder = 2
      end
      object tsColonia: TEdit
        Left = 92
        Top = 49
        Width = 181
        Height = 23
        TabOrder = 3
        Text = 'TECOLUTLA'
      end
      object tsLocalidad: TEdit
        Left = 380
        Top = 49
        Width = 181
        Height = 23
        TabOrder = 4
        Text = 'CD. DEL CARMEN'
      end
      object tsMunicipio: TEdit
        Left = 92
        Top = 77
        Width = 181
        Height = 23
        TabOrder = 5
        Text = 'CD. DEL CARMEN'
      end
      object tsEstado: TEdit
        Left = 380
        Top = 77
        Width = 181
        Height = 23
        TabOrder = 6
        Text = 'CAMPECHE'
      end
      object tsCP: TEdit
        Left = 92
        Top = 105
        Width = 181
        Height = 23
        TabOrder = 7
        Text = '85500'
      end
      object tsRFC: TEdit
        Left = 380
        Top = 106
        Width = 181
        Height = 23
        TabOrder = 8
        Text = 'PWD090210DR5'
      end
    end
    object Grupo_Receptor: TGroupBox
      Left = 311
      Top = 29
      Width = 297
      Height = 58
      Caption = 'Selecciona el receptor: '
      TabOrder = 2
      object cmbReceptor: TNxComboBox
        Left = 16
        Top = 21
        Width = 265
        Height = 23
        TabOrder = 0
        OnChange = cmbReceptorChange
        HideFocus = False
        AutoCompleteDelay = 0
        DisplayMode = dmValueList
      end
    end
    object btnAgregar: TNxButton
      Left = 116
      Top = 233
      Width = 25
      Color = clBtnFace
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000B0000003D0000003D0000
        000B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000050000000D0000000FC000000FF000000FF0000
        00FC000000D00000005000000000000000000000000000000000000000000000
        00000000000F000000A5000000FE0000009A0000004C00000019000000190000
        004C0000009A000000FE000000A50000000F0000000000000000000000000000
        0000000000A5000000E500000040000000000000000000000000000000000000
        00000000000000000040000000E5000000A50000000000000000000000000000
        0050000000FE000000400000000000000000000000000000000E0000000E0000
        0000000000000000000000000040000000FE0000005000000000000000000000
        00D00000009A0000000000000000000000000000000000000099000000990000
        00000000000000000000000000000000009A000000D0000000000000000B0000
        00FC0000004C00000000000000000000000000000000000000A8000000A80000
        00000000000000000000000000000000004C000000FC0000000B0000003D0000
        00FF00000019000000000000000E00000099000000A8000000E1000000E10000
        00A8000000990000000E0000000000000019000000FF0000003D0000003D0000
        00FF00000019000000000000000E00000099000000A8000000E1000000E10000
        00A8000000990000000E0000000000000019000000FF0000003D0000000B0000
        00FC0000004C00000000000000000000000000000000000000A8000000A80000
        00000000000000000000000000000000004C000000FC0000000B000000000000
        00D00000009A0000000000000000000000000000000000000099000000990000
        00000000000000000000000000000000009A000000D000000000000000000000
        0050000000FE000000400000000000000000000000000000000E0000000E0000
        0000000000000000000000000040000000FE0000005000000000000000000000
        0000000000A5000000E500000040000000000000000000000000000000000000
        00000000000000000040000000E5000000A50000000000000000000000000000
        00000000000F000000A5000000FE0000009A0000004C00000019000000190000
        004C0000009A000000FE000000A50000000F0000000000000000000000000000
        0000000000000000000000000050000000D0000000FC000000FF000000FF0000
        00FC000000D00000005000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000B0000003D0000003D0000
        000B000000000000000000000000000000000000000000000000}
      ParentColor = False
      TabOrder = 3
      OnClick = btnAgregarClick
    end
    object Panel_Espera: TPanel
      Left = 204
      Top = 122
      Width = 241
      Height = 113
      Caption = 'EMITIENDO CFDI...'
      TabOrder = 4
      Visible = False
    end
    object cmbCuentasBancarias: TNxComboBox
      Left = 107
      Top = 5
      Width = 501
      Height = 23
      Cursor = crArrow
      TabOrder = 5
      ReadOnly = True
      OnChange = cmbReceptorChange
      HideFocus = False
      Style = dsDropDownList
      AutoCompleteDelay = 0
      DisplayMode = dmValueList
    end
  end
  object sb_CajaConceptos: TScrollBox
    Left = 0
    Top = 277
    Width = 966
    Height = 164
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 1
    object tUnidad_0: TEdit
      Left = 64
      Top = 0
      Width = 60
      Height = 23
      TabOrder = 0
      Text = 'Unidad'
      OnEnter = tCantidad_0Enter
    end
    object tDescripcion_0: TEdit
      Left = 130
      Top = 0
      Width = 319
      Height = 23
      TabOrder = 1
      Text = 'Descripci'#243'n...'
      OnEnter = tCantidad_0Enter
    end
    object tPu_0: TEdit
      Left = 455
      Top = 0
      Width = 60
      Height = 23
      TabOrder = 2
      Text = '0.00'
      OnEnter = tCantidad_0Enter
      OnKeyPress = tCantidad_0KeyPress
    end
    object tTotal_0: TEdit
      Left = 521
      Top = -1
      Width = 60
      Height = 23
      Hint = 'Total'
      TabOrder = 3
      Text = '0.00'
      OnChange = tTotal_0Change
      OnEnter = tCantidad_0Enter
      OnKeyPress = tCantidad_0KeyPress
    end
    object tCantidad_0: TEdit
      Left = 9
      Top = 0
      Width = 49
      Height = 23
      TabOrder = 4
      Text = '1'
      OnEnter = tCantidad_0Enter
      OnKeyPress = tCantidad_0KeyPress
    end
    object tIVA_0: TCheckBox
      Left = 587
      Top = 3
      Width = 21
      Height = 17
      TabOrder = 5
      OnClick = tIVA_0Click
    end
  end
  object Panel_Totales: TPanel
    Left = 0
    Top = 497
    Width = 966
    Height = 118
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object lIva: TLabel
      Left = 450
      Top = 34
      Width = 19
      Height = 15
      Caption = 'IVA:'
    end
    object lSubtotal: TLabel
      Left = 480
      Top = 6
      Width = 48
      Height = 15
      Caption = 'Subtotal:'
    end
    object lTotal: TLabel
      Left = 480
      Top = 62
      Width = 29
      Height = 15
      Caption = 'Total:'
    end
    object lTipoPago: TLabel
      Left = 9
      Top = 6
      Width = 76
      Height = 15
      Caption = 'Tipo de Pago:'
    end
    object lPago: TLabel
      Left = 9
      Top = 34
      Width = 32
      Height = 15
      Caption = 'Pago:'
    end
    object lCorreo: TLabel
      Left = 210
      Top = 84
      Width = 4
      Height = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14138726
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object tsIva: TEdit
      Left = 480
      Top = 31
      Width = 60
      Height = 23
      TabOrder = 0
      Text = '16.00'
    end
    object tsIvaImporte: TEdit
      Left = 546
      Top = 31
      Width = 60
      Height = 23
      TabOrder = 1
      Text = '0.00'
      OnChange = tsIvaImporteChange
      OnKeyPress = tCantidad_0KeyPress
    end
    object tsSubtotal: TEdit
      Left = 546
      Top = 3
      Width = 60
      Height = 23
      TabOrder = 2
      Text = '0.00'
      OnChange = tsSubtotalChange
      OnKeyPress = tCantidad_0KeyPress
    end
    object tsTotal: TEdit
      Left = 546
      Top = 59
      Width = 60
      Height = 23
      TabOrder = 3
      Text = '0.00'
      OnKeyPress = tCantidad_0KeyPress
    end
    object tsTipoPago: TEdit
      Left = 92
      Top = 3
      Width = 333
      Height = 23
      TabOrder = 4
      Text = 'EN UNA SOLA EXHIBICION'
    end
    object tsFormaPago: TEdit
      Left = 92
      Top = 31
      Width = 333
      Height = 23
      TabOrder = 5
      Text = 'TRANSFERENCIA ELECTRONICA'
    end
    object btnGenerar: TButton
      Left = 9
      Top = 83
      Width = 216
      Height = 25
      Caption = 'Generar Factura Electr'#243'nica (CFDI)'
      TabOrder = 6
      OnClick = btnGenerarClick
    end
    object cb_Timbrar: TCheckBox
      Left = 9
      Top = 60
      Width = 69
      Height = 17
      Caption = 'Timbrar'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object cb_EnviarMail: TCheckBox
      Left = 90
      Top = 60
      Width = 120
      Height = 17
      Caption = 'Enviar por Correo'
      TabOrder = 8
      Visible = False
    end
  end
  object Panel_Log: TPanel
    Left = 0
    Top = 441
    Width = 966
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    object Memo_Log: TMemo
      Left = 0
      Top = 0
      Width = 966
      Height = 56
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Memoria_Conceptos: TJvMemoryData
    FieldDefs = <>
    Left = 280
    Top = 344
    object Memoria_ConceptosdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object Memoria_ConceptossUnidad: TStringField
      FieldName = 'sUnidad'
      Size = 50
    end
    object Memoria_ConceptossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 255
    end
    object Memoria_ConceptosdValorUnitario: TFloatField
      FieldName = 'dValorUnitario'
    end
    object Memoria_ConceptosdTotal: TFloatField
      FieldName = 'dTotal'
    end
  end
  object Memoria_Factura: TJvMemoryData
    FieldDefs = <>
    Left = 248
    Top = 344
    object Memoria_FacturasFolioFactura: TStringField
      FieldName = 'sFolioFactura'
    end
    object Memoria_FacturasFolioFiscal: TStringField
      FieldName = 'sFolioFiscal'
      Size = 150
    end
    object Memoria_FacturasSerieCSD: TStringField
      FieldName = 'sSerieCSD'
      Size = 100
    end
    object Memoria_FacturasRFC: TStringField
      FieldName = 'sRFC'
      Size = 50
    end
    object Memoria_FacturasRegimenFiscal: TStringField
      FieldName = 'sRegimenFiscal'
      Size = 255
    end
    object Memoria_FacturasLugarFechaExpedicion: TStringField
      FieldName = 'sLugarFechaExpedicion'
      Size = 100
    end
    object Memoria_FacturasRFC_Receptor: TStringField
      FieldName = 'sRFC_Receptor'
      Size = 50
    end
    object Memoria_FacturasTotal: TStringField
      FieldName = 'sTotal'
      Size = 100
    end
    object Memoria_FacturadSubTotal: TFloatField
      FieldName = 'dSubTotal'
    end
    object Memoria_FacturadIva: TFloatField
      FieldName = 'dIva'
    end
    object Memoria_FacturadTotal: TFloatField
      FieldName = 'dTotal'
    end
    object Memoria_FacturasSelloDigital: TStringField
      FieldName = 'sSelloDigital'
      Size = 500
    end
    object Memoria_FacturasSelloSAT: TStringField
      FieldName = 'sSelloSAT'
      Size = 500
    end
    object Memoria_FacturasCadenaOriginal: TStringField
      FieldName = 'sCadenaOriginal'
      Size = 500
    end
    object Memoria_FacturasSerieCertificado: TStringField
      FieldName = 'sSerieCertificado'
      Size = 100
    end
    object Memoria_FacturasFecha_Hora: TStringField
      FieldName = 'sFecha_Hora'
      Size = 50
    end
    object Memoria_FacturabBBCode: TBlobField
      FieldName = 'bBBCode'
    end
    object Memoria_FacturasTipoPago: TStringField
      FieldName = 'sTipoPago'
      Size = 150
    end
    object Memoria_FacturasFormaPago: TStringField
      FieldName = 'sFormaPago'
      Size = 150
    end
    object Memoria_FacturadFechaEmision: TDateTimeField
      FieldName = 'dFechaEmision'
    end
    object Memoria_FacturabLogoEmpresa: TBlobField
      FieldName = 'bLogoEmpresa'
    end
  end
  object frxDS_Factura: TfrxDBDataset
    UserName = 'frxDS_Factura'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sFolioFactura=sFolioFactura'
      'sFolioFiscal=sFolioFiscal'
      'sSerieCSD=sSerieCSD'
      'sRFC=sRFC'
      'sRegimenFiscal=sRegimenFiscal'
      'sLugarFechaExpedicion=sLugarFechaExpedicion'
      'sRFC_Receptor=sRFC_Receptor'
      'sTotal=sTotal'
      'dSubTotal=dSubTotal'
      'dIva=dIva'
      'dTotal=dTotal'
      'sSelloDigital=sSelloDigital'
      'sSelloSAT=sSelloSAT'
      'sCadenaOriginal=sCadenaOriginal'
      'sSerieCertificado=sSerieCertificado'
      'sFecha_Hora=sFecha_Hora'
      'bBBCode=bBBCode'
      'sTipoPago=sTipoPago'
      'sFormaPago=sFormaPago'
      'dFechaEmision=dFechaEmision'
      'bLogoEmpresa=bLogoEmpresa')
    DataSet = Memoria_Factura
    BCDToCurrency = False
    Left = 264
    Top = 384
  end
  object frxDS_Conceptos: TfrxDBDataset
    UserName = 'frxDS_Conceptos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dCantidad=dCantidad'
      'sUnidad=sUnidad'
      'sDescripcion=sDescripcion'
      'dValorUnitario=dValorUnitario'
      'dTotal=dTotal')
    DataSet = Memoria_Conceptos
    BCDToCurrency = False
    Left = 296
    Top = 384
  end
  object frx_Reporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41619.509353888900000000
    ReportOptions.LastChange = 41670.684043831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 384
    Datasets = <
      item
        DataSet = frxDS_Conceptos
        DataSetName = 'frxDS_Conceptos'
      end
      item
        DataSet = frxDS_Factura
        DataSetName = 'frxDS_Factura'
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
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 740.409927000000000000
        DataSet = frxDS_Conceptos
        DataSetName = 'frxDS_Conceptos'
        RowCount = 0
        object Memo17: TfrxMemoView
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'dCantidad'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'sUnidad'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."sUnidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 188.976500000000000000
          Width = 374.173470000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'sDescripcion'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Conceptos."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 563.149970000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'dValorUnitario'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dValorUnitario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 638.740570000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'dTotal'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 264.567100000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Width = 377.953000000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'FACTURA ELECTRONICA (CFDI)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 377.953000000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Folio Fiscal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 132.283550000000000000
          Width = 226.771800000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RFC: [frxDS_Factura."sRFC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 377.953000000000000000
          Top = 56.692950000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sLugarFechaExpedicion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 170.078850000000000000
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'RFC Receptor:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 188.976500000000000000
          Width = 740.787880000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RFC: [frxDS_Factura."sRFC_Receptor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 226.771800000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 75.590600000000000000
          Top = 226.771800000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Unidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 188.976500000000000000
          Top = 226.771800000000000000
          Width = 374.173470000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Descripci'#195#179'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 563.149970000000000000
          Top = 226.771800000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'P/U')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 638.740570000000000000
          Top = 226.771800000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 226.771800000000000000
          Top = 113.385900000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 52376
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'R'#195#169'gimen Fiscal:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Top = 18.897650000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sFolioFiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Top = 37.795300000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Lugar, Fecha y Hora de expedici'#195#179'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 377.953000000000000000
          Top = 94.488250000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sSerieCSD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 377.953000000000000000
          Top = 75.590600000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'No de Serie del Certificado del CSD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 226.771800000000000000
          Top = 132.283550000000000000
          Width = 514.016080000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDS_Factura."sRegimenFiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Top = 113.385900000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 52376
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'RFC:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Width = 377.953000000000000000
          Height = 113.385900000000000000
          ShowHint = False
          DataField = 'bLogoEmpresa'
          DataSetName = 'frxDBDataset1'
          KeepAspectRatio = False
          HightQuality = True
        end
      end
      object Footer1: TfrxFooter
        Height = 472.441250000000000000
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        object Shape1: TfrxShapeView
          Width = 740.787880000000000000
          Height = 124.724490000000000000
          ShowHint = False
          Color = 15790320
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
        end
        object Memo22: TfrxMemoView
          Left = 37.795300000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TOTAL CON LETRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 563.149970000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 16316664
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'SUBTOTAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 563.149970000000000000
          Top = 18.897650000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 16316664
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDS_Factura."dSubTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 563.149970000000000000
          Top = 37.795300000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 16316664
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'IVA (16%)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 563.149970000000000000
          Top = 56.692950000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 16316664
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDS_Factura."dIva"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 563.149970000000000000
          Top = 75.590600000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 16316664
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TOTAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 634.961040000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 16316664
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."dTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 37.795300000000000000
          Top = 30.236240000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 37.795300000000000000
          Top = 75.590600000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sTipoPago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 37.795300000000000000
          Top = 98.267780000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sFormaPago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Top = 124.724490000000000000
          Width = 740.787880000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Color = 16763904
          Frame.Color = clNone
        end
        object Memo32: TfrxMemoView
          Left = 37.795300000000000000
          Top = 143.622140000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'SELLO DIGITAL DEL CFDI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 37.795300000000000000
          Top = 162.519790000000000000
          Width = 680.315400000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sSelloDigital"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 37.795300000000000000
          Top = 200.315090000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'SELLO DEL SAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 37.795300000000000000
          Top = 219.212740000000000000
          Width = 680.315400000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sSelloSAT"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 257.008040000000000000
          Width = 170.078850000000000000
          Height = 151.181200000000000000
          ShowHint = False
          DataField = 'bBBCode'
          DataSet = frxDS_Factura
          DataSetName = 'frxDS_Factura'
          HightQuality = False
        end
        object Memo36: TfrxMemoView
          Left = 170.078850000000000000
          Top = 257.008040000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            
              'CADENA ORIGINAL DEL COMPLEMENTO DE CERTIFICACI'#195#8220'N DIGITAL DEL SA' +
              'T')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 170.078850000000000000
          Top = 275.905690000000000000
          Width = 680.315400000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sCadenaOriginal"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 170.078850000000000000
          Top = 332.598640000000000000
          Width = 283.464750000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15790320
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'NUMERO DE SERIE DEL CERTIFICADO DEL SAT:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 170.078850000000000000
          Top = 377.953000000000000000
          Width = 283.464750000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15790320
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'FECHA Y HORA DE CERTIFICACI'#195#8220'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 453.543600000000000000
          Top = 332.598640000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sSerieCertificado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 453.543600000000000000
          Top = 377.953000000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clNone
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sFecha_Hora"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Top = 427.086890000000000000
          Width = 740.787880000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTE DOCUMENTO ES UNA REPRESENTACI'#195#8220'N IMPRESA DE UN CFDI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frx_ExportaPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 328
    Top = 344
  end
end
