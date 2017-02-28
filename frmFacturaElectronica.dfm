object frm_Depositoscias: Tfrm_Depositoscias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Depositos Companias'
  ClientHeight = 588
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    966
    588)
  PixelsPerInch = 96
  TextHeight = 15
  object Label9: TLabel
    Left = 77
    Top = 8
    Width = 92
    Height = 15
    Caption = 'Cuenta Bancaria'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblRecord: TLabel
    Left = 630
    Top = 378
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 79
    Top = 32
    Width = 94
    Height = 15
    Caption = 'Consulta Fechas'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  inline frmBarra1: TfrmBarra
    Left = 5
    Top = 8
    Width = 69
    Height = 209
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alCustom
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitLeft = 5
    ExplicitTop = 8
    ExplicitHeight = 209
    inherited AdvPanel1: TAdvPanel
      Height = 209
      ExplicitHeight = 209
      FullHeight = 0
      inherited btnEdit: TcxButton
        Left = 0
        Top = 26
        OnClick = frmBarra1btnEditClick
        ExplicitLeft = 0
        ExplicitTop = 26
      end
      inherited btnPost: TcxButton
        Left = 0
        Top = 52
        OnClick = frmBarra1btnPostClick
        ExplicitLeft = 0
        ExplicitTop = 52
      end
      inherited btnCancel: TcxButton
        Left = 0
        Top = 78
        OnClick = frmBarra1btnCancelClick
        ExplicitLeft = 0
        ExplicitTop = 78
      end
      inherited btnDelete: TcxButton
        Left = 0
        Top = 105
        OnClick = frmBarra1btnDeleteClick
        ExplicitLeft = 0
        ExplicitTop = 105
      end
      inherited btnPrinter: TcxButton
        Left = 0
        Top = 131
        OnClick = frmBarra1btnPrinterClick
        ExplicitLeft = 0
        ExplicitTop = 131
      end
      inherited btnRefresh: TcxButton
        Left = 0
        Top = 157
        OnClick = frmBarra1btnRefreshClick
        ExplicitLeft = 0
        ExplicitTop = 157
      end
      inherited btnExit: TcxButton
        Left = 0
        Top = 184
        OnClick = frmBarra1btnExitClick
        ExplicitLeft = 0
        ExplicitTop = 184
      end
      inherited btnAdd: TcxButton
        Left = 0
        Top = 0
        OnClick = frmBarra1btnAddClick
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
    inherited IconosBarra: TcxImageList
      FormatVersion = 1
    end
    inherited dxbrmngrPrincipal: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        0)
    end
  end
  object tsIdCuentaBancaria: TDBLookupComboBox
    Left = 191
    Top = 4
    Width = 730
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
    OnExit = tsIdCuentaBancariaExit
  end
  object tdFechaInicio: TDateTimePicker
    Left = 191
    Top = 28
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
    TabOrder = 2
    TabStop = False
    OnExit = tdFechaInicioExit
  end
  object tdFechaFinal: TDateTimePicker
    Left = 292
    Top = 28
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
    TabOrder = 3
    TabStop = False
    OnExit = tdFechaFinalExit
  end
  object chkPago: TCheckBox
    Left = 387
    Top = 31
    Width = 94
    Height = 17
    Caption = 'Fecha Pago'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    OnClick = chkPagoClick
  end
  object chkExpedida: TCheckBox
    Left = 487
    Top = 31
    Width = 124
    Height = 17
    Caption = 'Fecha Expedida'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    OnClick = chkExpedidaClick
  end
  object chkTotal: TCheckBox
    Left = 617
    Top = 31
    Width = 118
    Height = 17
    Caption = 'Total / General'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    OnClick = chkTotalClick
  end
  object chkAgrupado: TCheckBox
    Left = 733
    Top = 31
    Width = 125
    Height = 17
    Caption = 'Reporte Agrupado'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 7
  end
  object Panel: tNewGroupBox
    Left = 387
    Top = 191
    Width = 68
    Height = 34
    Align = alCustom
    Caption = 'Facturas Pagadas en Parcialidades'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    Visible = False
    HighLightColor = clBlue
    ShadowColor = 7847370
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 652
    Title.HighLightColor = 7847370
    Title.ShadowColor = clWindow
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 0
    Title.Bevel = bnRaisedLine
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 20
    Title.BkColor = clBlack
    TransparentMode = False
    Border = True
    Shape = tsRect
    object DBText1: TDBText
      Left = 295
      Top = 231
      Width = 105
      Height = 17
      DataField = 'Total'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 221
      Top = 231
      Width = 73
      Height = 15
      Caption = 'Total Factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 376
      Top = 229
      Width = 89
      Height = 15
      Caption = 'Pendiente Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPendiente: TLabel
      Left = 475
      Top = 229
      Width = 24
      Height = 15
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grid_factpag: TDBGrid
      Left = 3
      Top = 26
      Width = 566
      Height = 192
      Hint = 'Presione la tecla Esc si desea salir.'
      Color = clBtnFace
      Ctl3D = False
      DataSource = dsParcPagos
      FixedColor = 13675935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Color = 15138559
          Expanded = False
          FieldName = 'dIdFecha'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sDescripcion'
          Title.Caption = 'Descripcion'
          Width = 288
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dImporte'
          Title.Alignment = taRightJustify
          Title.Caption = 'SubTotal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dIva'
          Title.Caption = 'Iva'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'totalp'
          Title.Caption = 'Total'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lPago'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pagada'
          Width = 44
          Visible = True
        end>
    end
    object btAplicar: TButton
      Left = 13
      Top = 227
      Width = 75
      Height = 25
      Caption = 'Aplicar Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btAplicarClick
    end
    object btCancelar: TButton
      Left = 133
      Top = 227
      Width = 75
      Height = 25
      Caption = 'Cancelar Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btCancelarClick
    end
  end
  object chkAplicaCuadre: TCheckBox
    Left = 695
    Top = 433
    Width = 108
    Height = 15
    Caption = 'Aplicar Cuadre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object cxscrlbxSecundario: TcxScrollBox
    Left = 82
    Top = 410
    Width = 877
    Height = 186
    Anchors = [akLeft, akBottom]
    TabOrder = 10
    DesignSize = (
      858
      184)
    object Label1: TLabel
      Left = 649
      Top = 176
      Width = 3
      Height = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 671
      Top = 47
      Width = 48
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'SubTotal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 684
      Top = 69
      Width = 15
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Iva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 682
      Top = 100
      Width = 26
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object txtIva: TEdit
      Left = 720
      Top = 64
      Width = 135
      Height = 23
      Anchors = [akTop, akRight]
      Color = clWhite
      TabOrder = 0
    end
    object txtTotal: TEdit
      Left = 720
      Top = 91
      Width = 135
      Height = 23
      Anchors = [akTop, akRight]
      Color = clWhite
      TabOrder = 1
    end
    object txtSubtotal: TEdit
      Left = 720
      Top = 40
      Width = 135
      Height = 23
      Anchors = [akTop, akRight]
      Color = clWhite
      TabOrder = 2
    end
    object NxPageControl1: TNxPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 635
      Height = 185
      Margins.Right = 220
      ActivePage = NxTabSheet4
      ActivePageIndex = 3
      Align = alClient
      TabOrder = 3
      OnChange = NxPageControl1Change
      BackgroundColor = clSilver
      BackgroundKind = bkSolid
      Margin = 0
      Options = [pgBoldActiveTab, pgTopBorder]
      Spacing = 0
      TabHeight = 17
      object NxTabSheet1: TNxTabSheet
        Caption = 'Factura'
        PageIndex = 0
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -12
        TabFont.Name = 'Arial'
        TabFont.Style = []
        object Label11: TLabel
          Left = 10
          Top = 7
          Width = 71
          Height = 15
          Caption = '&Folio/Factura'
          FocusControl = dbiFolio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 10
          Top = 32
          Width = 67
          Height = 15
          Caption = 'Exp. Factura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 356
          Top = 7
          Width = 58
          Height = 15
          Caption = 'Compa'#241'ia'
          FocusControl = tdImporteTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 98
          Width = 66
          Height = 15
          Caption = 'Descripcion'
          FocusControl = tmDescripcion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 506
          Top = 55
          Width = 60
          Height = 15
          Caption = 'Referencia'
          FocusControl = tsReferencia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 10
          Top = 78
          Width = 66
          Height = 15
          Caption = 'Fecha Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 808
          Top = 3
          Width = 42
          Height = 15
          Caption = 'Estado:'
        end
        object Label13: TLabel
          Left = 356
          Top = 60
          Width = 25
          Height = 15
          Caption = 'I.V.A.'
          FocusControl = tsReferencia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 356
          Top = 81
          Width = 60
          Height = 15
          Caption = 'Mes/Cobro'
          FocusControl = tmDescripcion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 10
          Top = 55
          Width = 76
          Height = 15
          Caption = 'Fecha Recep.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 248
          Top = 81
          Width = 93
          Height = 15
          Caption = 'Pagos Parciales'
          FocusControl = tsReferencia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = Label25Click
        end
        object Label27: TLabel
          Left = 356
          Top = 33
          Width = 47
          Height = 15
          Caption = 'Proyecto'
          FocusControl = tdImporteTotal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object tmDescripcion: TDBMemo
          Left = 86
          Top = 98
          Width = 686
          Height = 53
          Color = 15138559
          DataField = 'mDescripcion'
          DataSource = dszQEgresos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 9
        end
        object dbiFolio: TDBEdit
          Left = 86
          Top = 4
          Width = 145
          Height = 23
          Color = 15138559
          DataField = 'iFolio'
          DataSource = dszQEgresos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = dbiFolioEnter
          OnExit = dbiFolioExit
        end
        object tdFechaExp: TDBDateEdit
          Left = 86
          Top = 28
          Width = 145
          Height = 23
          Margins.Left = 4
          Margins.Top = 1
          DateAutoBetween = False
          DataField = 'dFechaFactura'
          DataSource = dszQEgresos
          Color = 15138559
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
        object dbIva: TDBEdit
          Left = 423
          Top = 52
          Width = 82
          Height = 23
          Color = 15138559
          DataField = 'dIva'
          DataSource = dszQEgresos
          Enabled = False
          TabOrder = 6
        end
        object dbCompania: TDBLookupComboBox
          Left = 423
          Top = 4
          Width = 349
          Height = 23
          Color = 15138559
          DataField = 'sIdCompania'
          DataSource = dszQEgresos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'sIdCompania'
          ListField = 'sRazonSocial'
          ListSource = dsCompanias
          ParentFont = False
          TabOrder = 4
          OnExit = dbCompaniaExit
        end
        object tdFecha: TDBDateEdit
          Left = 86
          Top = 75
          Width = 145
          Height = 23
          Margins.Left = 4
          Margins.Top = 1
          DateAutoBetween = False
          DataField = 'dIdFecha'
          DataSource = dszQEgresos
          Color = 15138559
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
        end
        object tdImporteTotal: TDBEdit
          Left = 10
          Top = 119
          Width = 68
          Height = 23
          Color = 11009259
          DataField = 'dImporteTotal'
          DataSource = dszQEgresos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Visible = False
          OnExit = tdImporteTotalExit
        end
        object tsReferencia: TDBEdit
          Left = 572
          Top = 52
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          Color = 15138559
          DataField = 'sReferencia'
          DataSource = dszQEgresos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dbEstado: TDBLookupListBox
          Left = 781
          Top = 27
          Width = 103
          Height = 94
          Color = 11009259
          DataField = 'iIdStatus'
          DataSource = dszQEgresos
          KeyField = 'iId'
          ListField = 'sNombre'
          ListSource = ds_statusfacturas
          TabOrder = 11
        end
        object BitBtn1: TBitBtn
          Left = 884
          Top = 124
          Width = 27
          Height = 24
          Hint = 'Sumar conceptos registrados'
          Enabled = False
          TabOrder = 12
          Visible = False
          OnClick = BitBtn1Click
          Glyph.Data = {
            42040000424D4204000000000000420000002800000010000000100000000100
            20000300000000040000120B0000120B00000000000000000000000000FF0000
            FF0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00EDC6B500D9835E00FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00F1D2C400F1D2C500DD906E00C84E1600EEC8B600FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1D2C400D5784F00C8
            4C1500C84E1600C94F1800CA511900CA521900CE5E2800FCF4F100FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EABBA700C74B1500C84D1600C9
            4F1800CA521900CB531B00CC551C00CD561D00CD571E00DD8C6500FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00F1D2C400C74C1500D0643400E19D7D00EE
            C9B700E9B49B00D6774800CE5A1F00CF5B2000D05D2200D05E2200F9EBE300FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00D9845E00E7B19900FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00DF906700D15F2300D2612400E39C7700F9EBE400FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00F8E9E200FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00D9764000E9B19200FCF5F100FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FC
            F6F200FCF6F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9EBE400E49F7900D9
            723800FCF6F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAE7DA00FBEFE700FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00F6E0D500E29B7600D3632600D6682A00DF
            885500FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4CAAB00EA9D6400FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00D2652E00D2612400D5662800D76C2C00DF
            834B00EEBB9A00F0BE9C00EFB99300E9965900E78B4300F8DBC400FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00EBB89E00D3632600D6692A00D96F2F00DC
            753300DF7B3800E3813C00E6884100E88D4500F7D5BA00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DF8C5E00D76B2C00DA713000DE
            783500E17F3A00E5863F00EFAF7F00FAE3D100FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAECE400DA753A00E69E7200FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEC0A400EFC1A500FF
            FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
            FFFF00FFFFFF}
        end
        object a: TMemo
          Left = 893
          Top = 24
          Width = 18
          Height = 15
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'a')
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object e: TMemo
          Left = 893
          Top = 39
          Width = 18
          Height = 15
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'e')
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object i: TMemo
          Left = 893
          Top = 54
          Width = 18
          Height = 15
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'i')
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object o: TMemo
          Left = 893
          Top = 69
          Width = 18
          Height = 15
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'o')
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object u: TMemo
          Left = 893
          Top = 85
          Width = 18
          Height = 16
          Color = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'u')
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object dbFechaRecepcion: TDBDateEdit
          Left = 86
          Top = 52
          Width = 145
          Height = 23
          Margins.Left = 4
          Margins.Top = 1
          DateAutoBetween = False
          DataField = 'dFechaRecepcion'
          DataSource = dszQEgresos
          Color = 15138559
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
        end
        object cmbmeses: TDBComboBox
          Left = 423
          Top = 75
          Width = 349
          Height = 23
          Color = 15138559
          DataField = 'sMes'
          DataSource = dszQEgresos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 15
          Items.Strings = (
            'ENERO'
            'FEBRERO'
            'MARZO'
            'ABRIL'
            'MAYO'
            'JUNIO'
            'JULIO'
            'AGOSTO'
            'SEPTIEMBRE'
            'OCTUBRE'
            'NOVIEMBRE'
            'DICIEMBRE')
          ParentFont = False
          TabOrder = 8
        end
        object dbPagosparciales: TDBCheckBox
          Left = 232
          Top = 81
          Width = 17
          Height = 17
          DataField = 'lAplicaPagoParcial'
          DataSource = dszQEgresos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          ValueChecked = 'SI'
          ValueUnchecked = 'NO'
          OnEnter = dbPagosparcialesEnter
        end
        object dbProyecto: TDBLookupComboBox
          Left = 423
          Top = 28
          Width = 349
          Height = 23
          Color = 15138559
          DataField = 'sProyecto'
          DataSource = dszQEgresos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'sNumeroOrden'
          ListField = 'sDescripcionCorta'
          ListSource = dszQProyectos
          ParentFont = False
          TabOrder = 5
        end
      end
      object NxTabSheet2: TNxTabSheet
        Caption = 'Conceptos'
        PageIndex = 1
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -12
        TabFont.Name = 'Arial'
        TabFont.Style = []
        ExplicitTop = 0
        DesignSize = (
          635
          164)
        object Label14: TLabel
          Left = 549
          Top = 11
          Width = 66
          Height = 15
          Caption = 'Descripci'#243'n'
        end
        object Label15: TLabel
          Left = 494
          Top = 110
          Width = 50
          Height = 15
          Caption = 'Cantidad'
        end
        object Label16: TLabel
          Left = 662
          Top = 110
          Width = 42
          Height = 15
          Caption = 'Importe'
        end
        object Label18: TLabel
          Left = 659
          Top = 135
          Width = 35
          Height = 16
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBLabelEdit1: TDBLabelEdit
          Left = 710
          Top = 135
          Width = 101
          Height = 17
          DataField = 'dCantidadporConcepto'
          DataSource = DataSource1
          EditStyle.BorderStyle = bsSingle
          EditStyle.Font.Charset = DEFAULT_CHARSET
          EditStyle.Font.Color = clWindowText
          EditStyle.Font.Height = -11
          EditStyle.Font.Name = 'Tahoma'
          EditStyle.Font.Style = []
          EditStyle.MaxLength = 0
          Caption = 'DBLabelEdit1'
          ShowAccelChar = False
        end
        object Label21: TLabel
          Left = 494
          Top = 134
          Width = 43
          Height = 15
          Caption = 'Unidad:'
        end
        object btnAdd: TBitBtn
          Left = 3
          Top = 1
          Width = 70
          Height = 25
          Hint = 'Nuevo registro (CTRL + Insert)'
          Align = alCustom
          Caption = 'Nuevo'
          TabOrder = 4
          OnClick = btnAddClick
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000F0000000E0000000100
            04000000000070000000130B0000130B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8880888888888888888088888888888888808888880008888880888888070888
            8880888888070888888088800007000088808880777777708880888000070000
            8880888888070888888088888807088888808888880008888880888888888888
            88808888888888888880}
        end
        object btnEdit: TBitBtn
          Left = 74
          Top = 1
          Width = 69
          Height = 25
          Hint = 'Editar registro (CTRL + E)'
          Align = alCustom
          Caption = 'Editar'
          TabOrder = 5
          OnClick = btnEditClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000C40E0000C40E00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000000
            00008888880FFFFFFFF000800000FF0F00F0E00BBBBB0FFFFFF0E0BBBB000FFF
            F0F0E0BBBBBBB0F00FF0E0BBBB00000C0FF0E0BBBBBBBBB0FFF0E0BB0000000F
            FFF0000BBB00C0FF00F08880000C0FFFFFF0888880C0FFFF000088880C0FF00F
            0FF08880C00FFFFF0F08880C080FFFFF00888880880000000888}
        end
        object btnPost: TBitBtn
          Left = 142
          Top = 1
          Width = 85
          Height = 25
          Hint = 'Salvar cambios (F10)'
          Align = alCustom
          Caption = 'Grabar'
          Enabled = False
          TabOrder = 6
          OnClick = btnPostClick
          Glyph.Data = {
            36010000424D3601000000000000760000002800000011000000100000000100
            040000000000C0000000C40E0000C40E00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888800000008888888888888888800000008888890888888888800000008888
            9990888888888000000088889990888888888000000088899999088888888000
            0000889999990888888880000000899908999088888880000000990888899088
            8888800000008888888999088888800000008888888899088888800000008888
            8888899088888000000088888888889908888000000088888888888990888000
            0000888888888888899080000000888888888888888880000000}
        end
        object btnCancel: TBitBtn
          Left = 227
          Top = 1
          Width = 87
          Height = 25
          Hint = 'Cancelar cambios (F12)'
          Align = alCustom
          Caption = 'Cancelar'
          Enabled = False
          TabOrder = 7
          OnClick = btnCancelClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888887488888444448888847888844448888888488884448888888
            8488884484888888848888488844888847888888888844447888888888888888
            8888888888888888888888888888888888888888888888888888}
        end
        object btnDelete: TBitBtn
          Left = 313
          Top = 1
          Width = 75
          Height = 25
          Hint = 'Eliminar registro (CTRL + D)'
          Align = alCustom
          Caption = 'Eliminar'
          TabOrder = 8
          OnClick = btnDeleteClick
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000130B0000130B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888888888888888881F88881F8888888888888991F8888889F8888191F888881
            F888888199F88891F8888888191F819F88888888819199F88888888888919F88
            88888888891911F888888888191F89F88888889191F88819F88881919F888881
            9F88891F8888888819F88888888888888888}
        end
        object DBMemo2: TDBMemo
          Left = 494
          Top = 32
          Width = 341
          Height = 74
          Color = 11009259
          DataField = 'sDescripcion'
          DataSource = ds_DetallesFacturas
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 550
          Top = 107
          Width = 103
          Height = 23
          Color = 11009259
          DataField = 'dCantidad'
          DataSource = ds_DetallesFacturas
          TabOrder = 1
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 710
          Top = 107
          Width = 125
          Height = 23
          Color = 11009259
          DataField = 'dImporte'
          DataSource = ds_DetallesFacturas
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 549
          Top = 134
          Width = 104
          Height = 23
          Color = 11009259
          DataField = 'sMedida'
          DataSource = ds_DetallesFacturas
          TabOrder = 3
        end
        object cxGrid1: TcxGrid
          Left = 3
          Top = 33
          Width = 485
          Height = 125
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 9
          object DBGrid1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_DetallesFacturas
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object DBGrid1dCantidad1: TcxGridDBColumn
              Caption = 'Cantidad'
              DataBinding.FieldName = 'dCantidad'
            end
            object DBGrid1strDesc1: TcxGridDBColumn
              Caption = 'Concepto'
              DataBinding.FieldName = 'strDesc'
              Width = 200
            end
            object DBGrid1dImporte1: TcxGridDBColumn
              Caption = 'PU'
              DataBinding.FieldName = 'dImporte'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = DBGrid1
          end
        end
      end
      object NxTabSheet3: TNxTabSheet
        Caption = 'Otros'
        PageIndex = 2
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -12
        TabFont.Name = 'Arial'
        TabFont.Style = []
        object Label19: TLabel
          Left = 236
          Top = 62
          Width = 76
          Height = 15
          Caption = 'Tipo de Pago:'
        end
        object Label20: TLabel
          Left = 236
          Top = 92
          Width = 108
          Height = 15
          Caption = 'N'#250'mero de Cuenta:'
        end
        object Label28: TLabel
          Left = 236
          Top = 32
          Width = 107
          Height = 15
          Caption = 'N'#250'mero de Pedido:'
        end
        object DBEdit4: TDBEdit
          Left = 350
          Top = 58
          Width = 200
          Height = 23
          Color = 11009259
          DataField = 'sFormaPago'
          DataSource = dszQEgresos
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 350
          Top = 87
          Width = 200
          Height = 23
          Color = 11009259
          DataField = 'sNumeroDeCuenta'
          DataSource = dszQEgresos
          TabOrder = 1
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 24
          Top = 3
          Width = 190
          Height = 105
          Caption = '     Tipo de Pago          '
          DataField = 'sTipoPago'
          DataSource = dszQEgresos
          Items.Strings = (
            'Pago en una sola exhibici'#243'n'
            'Pago en parcialidades')
          ParentBackground = True
          TabOrder = 2
          Values.Strings = (
            'Una'
            'Parcialidades')
        end
        object DBCheckBox1: TDBCheckBox
          Left = 236
          Top = 9
          Width = 252
          Height = 17
          Caption = 'Imprime proveedor y n'#250'mero de pedido'
          DataField = 'iImprimeProveedor'
          DataSource = dszQEgresos
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit7: TDBEdit
          Left = 350
          Top = 29
          Width = 200
          Height = 23
          Color = 11009259
          DataField = 'sNumeroPedido'
          DataSource = dszQEgresos
          TabOrder = 4
        end
      end
      object NxTabSheet4: TNxTabSheet
        Caption = 'Imagen'
        PageIndex = 3
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -12
        TabFont.Name = 'Arial'
        TabFont.Style = []
        ExplicitTop = 0
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 635
          Height = 164
          Align = alClient
          Caption = 'Imagen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            635
            164)
          object bImagen: TImage
            Left = 2
            Top = 17
            Width = 631
            Height = 145
            Align = alClient
            Stretch = True
            ExplicitTop = 16
            ExplicitWidth = 656
            ExplicitHeight = 123
          end
          object lblRecord1: TLabel
            Left = 366
            Top = 435
            Width = 3
            Height = 15
          end
          object btnPreview: TBitBtn
            Left = 537
            Top = 137
            Width = 76
            Height = 23
            Anchors = [akRight, akBottom]
            Caption = '&Preview'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnPreviewClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000C40E0000C40E00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888800000888800000880F00088880F000880F00088880F0008800000088000
              0008800F000000F00008800F000800F00008800F000800F00008880000000000
              00888880F00880F008888880000880000888888800088000888888880F0880F0
              8888888800088000888888888888888888888888888888888888}
          end
        end
      end
    end
    object tNewGroupBox1: tNewGroupBox
      Left = 669
      Top = 4
      Width = 80
      Height = 30
      Align = alCustom
      Caption = 'Facturas Pagadas en Parcialidades'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Visible = False
      HighLightColor = clBlue
      ShadowColor = 7847370
      Arc = 15
      Bevel = bnRaisedLine
      Title.Offset = 0
      Title.Width = 652
      Title.HighLightColor = 7847370
      Title.ShadowColor = clWindow
      Title.Arc = 15
      Title.Shape = tsRect
      Title.Separation = 0
      Title.Bevel = bnRaisedLine
      Title.Border = True
      Title.TextAlign = ttCenter
      Title.Align = taTop
      Title.Height = 20
      Title.BkColor = clBlack
      TransparentMode = False
      Border = True
      Shape = tsRect
      object DBText2: TDBText
        Left = 295
        Top = 231
        Width = 105
        Height = 17
        DataField = 'Total'
        DataSource = dszQEgresos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 221
        Top = 231
        Width = 73
        Height = 15
        Caption = 'Total Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 376
        Top = 229
        Width = 89
        Height = 15
        Caption = 'Pendiente Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 475
        Top = 229
        Width = 24
        Height = 15
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 26
        Width = 566
        Height = 192
        Hint = 'Presione la tecla Esc si desea salir.'
        Color = clBtnFace
        Ctl3D = False
        DataSource = dsParcPagos
        FixedColor = 13675935
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Color = 15138559
            Expanded = False
            FieldName = 'dIdFecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripcion'
            Width = 288
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dImporte'
            Title.Alignment = taRightJustify
            Title.Caption = 'SubTotal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dIva'
            Title.Caption = 'Iva'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalp'
            Title.Caption = 'Total'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lPago'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pagada'
            Width = 44
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 13
        Top = 227
        Width = 75
        Height = 25
        Caption = 'Aplicar Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btAplicarClick
      end
      object Button2: TButton
        Left = 133
        Top = 227
        Width = 75
        Height = 25
        Caption = 'Cancelar Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btCancelarClick
      end
    end
    object CheckBox1: TCheckBox
      Left = 733
      Top = 10
      Width = 108
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Aplicar Cuadre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 82
    Top = 53
    Width = 876
    Height = 352
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel1'
    TabOrder = 15
    object gridPrincipal: TcxGrid
      Left = 1
      Top = 1
      Width = 874
      Height = 350
      Align = alClient
      TabOrder = 0
      object Grid_facturas: TcxGridDBTableView
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
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        Styles.OnGetContentStyle = Grid_facturasStylesGetContentStyle
        object Grid_facturasdFechaFactura1: TcxGridDBColumn
          Caption = 'Exp. Fecha'
          DataBinding.FieldName = 'dFechaFactura'
          Width = 71
        end
        object Grid_facturasdIdFecha1: TcxGridDBColumn
          Caption = 'Pago Fecha'
          DataBinding.FieldName = 'dIdFecha'
          Width = 75
        end
        object Grid_facturasiIdFolio1: TcxGridDBColumn
          Caption = 'Factura'
          DataBinding.FieldName = 'iIdFolio'
          Width = 57
        end
        object Grid_facturassIdNumeroCuenta1: TcxGridDBColumn
          Caption = 'N'#250'mero Cuenta'
          DataBinding.FieldName = 'sIdNumeroCuenta'
          Width = 110
        end
        object Grid_facturassReferencia1: TcxGridDBColumn
          Caption = 'Referencia'
          DataBinding.FieldName = 'sReferencia'
          Width = 114
        end
        object Grid_facturasdImporteTotal1: TcxGridDBColumn
          Caption = 'Subtotal'
          DataBinding.FieldName = 'dImporteTotal'
          Width = 65
        end
        object Grid_facturasdIva1: TcxGridDBColumn
          Caption = 'Iva'
          DataBinding.FieldName = 'dIva'
          Width = 66
        end
        object Grid_facturasTotal1: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Width = 63
        end
        object grdColumCompania: TcxGridDBColumn
          DataBinding.FieldName = 'Compania'
          Width = 78
        end
        object Grid_facturassStatus1: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'sStatus'
          Width = 85
        end
        object Grid_facturasdParcialidad1: TcxGridDBColumn
          Caption = 'Parcialidad'
          DataBinding.FieldName = 'dParcialidad'
          Width = 57
        end
      end
      object gridPrincipalLevel1: TcxGridLevel
        GridView = Grid_facturas
      end
    end
  end
  object dszQEgresos: TDataSource
    DataSet = zQEgresos
    Left = 535
    Top = 177
  end
  object zQEgresos: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQEgresosAfterScroll
    OnCalcFields = zQEgresosCalcFields
    BeforeInsert = zQEgresosBeforeInsert
    AfterInsert = zQEgresosAfterInsert
    SQL.Strings = (
      'select * from con_tesoreriaegresos'
      
        'where sTipoMovimiento = "Deposito" And sIdNumeroCuenta = :Cuenta' +
        ' ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end>
    Left = 580
    Top = 176
    ParamData = <
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
    object zQEgresossFormaPago: TStringField
      FieldName = 'sFormaPago'
      Size = 50
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
    object strngfldQEgresossIdCompaniaConf: TStringField
      FieldName = 'sIdCompaniaConf'
      Required = True
      Size = 15
    end
  end
  object dszQCuentasBancarias: TDataSource
    DataSet = zQCuentasBancarias
    Left = 537
    Top = 139
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
    Left = 580
    Top = 140
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
    object zQCuentasBancariasiFolioCheque: TIntegerField
      FieldName = 'iFolioCheque'
      ReadOnly = True
    end
  end
  object zCommand: TZQuery
    Connection = connection.zConnection
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 260
    Top = 216
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
    Left = 292
    Top = 217
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
    Left = 764
    Top = 174
  end
  object ReporteFotografico: TZQuery
    Connection = connection.zConnection
    AfterScroll = ReporteFotograficoAfterScroll
    BeforeInsert = ReporteFotograficoBeforeInsert
    AfterInsert = ReporteFotograficoAfterInsert
    BeforeEdit = ReporteFotograficoBeforeEdit
    AfterEdit = ReporteFotograficoAfterEdit
    BeforePost = ReporteFotograficoBeforePost
    AfterCancel = ReporteFotograficoAfterCancel
    BeforeDelete = ReporteFotograficoBeforeDelete
    AfterDelete = ReporteFotograficoAfterDelete
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
    Left = 929
    Top = 343
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
    Left = 929
    Top = 383
  end
  object dsCompanias: TDataSource
    DataSet = qryCompanias
    Left = 96
    Top = 193
  end
  object qryCompanias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_companias Where lstatus= "Activo"'
      'order by sRazonSocial')
    Params = <>
    Left = 340
    Top = 216
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
    Left = 220
    Top = 216
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
    ReportOptions.LastChange = 41621.005231770830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      '       Total_Cancelado: Real;            '
      '       Total_Pendiente: Real;'
      '       Total_Pagado: Real;               '
      'procedure frPrinterdSueldoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       //;                          '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       if <frxEgresos."sStatus"> = '#39'PAGADA'#39' then begin'
      
        '               Total_Pagado := Total_Pagado + (<frxEgresos."dImp' +
        'orteTotal"> + <frxEgresos."dIva">)'
      '       end;'
      
        '       if (<frxEgresos."sStatus"> = '#39'PENDIENTE'#39') OR (<frxEgresos' +
        '."sStatus"> = '#39'ENTREGADA'#39') then begin'
      
        '               Total_Pendiente := Total_Pendiente + (<frxEgresos' +
        '."dImporteTotal"> + <frxEgresos."dIva">)'
      '       end;'
      '       if <frxEgresos."sStatus"> = '#39'CANCELADA'#39' then begin'
      
        '               Total_Cancelado := Total_Cancelado + (<frxEgresos' +
        '."dImporteTotal"> + <frxEgresos."dIva">)'
      '       end;  '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       Total_Cancelado:= 0;              '
      '       Total_Pendiente:= 0;  '
      '       Total_Pagado:= 0;       '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 732
    Top = 168
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frxEgresos
        DataSetName = 'frxEgresos'
      end>
    Variables = <
      item
        Name = ' Totales'
        Value = Null
      end
      item
        Name = 'PendientedePagar'
        Value = '<frTmpQuery."dTotal"> - <frTmpQuery."dPagado">'
      end>
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
      object GroupFooter1: TfrxGroupFooter
        Height = 45.354360000000000000
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo9: TfrxMemoView
          Left = 241.889920000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PENDIENTE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 24.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clRed
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL CANCELADO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 355.275820000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
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
          Memo.UTF8 = (
            '[Total_Pendiente]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 113.385900000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
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
          Memo.UTF8 = (
            '[Total_Cancelado]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 491.338900000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 42107
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PAGADO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 604.724800000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
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
          Memo.UTF8 = (
            '[Total_Pagado]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.007874020000000000
        Top = 294.803340000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxEgresos
        DataSetName = 'frxEgresos'
        RowCount = 0
        Stretched = True
        object frPrintersNombreCompleto: TfrxMemoView
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaFactura'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."dFechaFactura"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersCategoria: TfrxMemoView
          Left = 68.031540000000000000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iFolio'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."iFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrinteriDiasTrabajados: TfrxMemoView
          Left = 582.047620000000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dIdFecha'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrinterdSueldo: TfrxMemoView
          Left = 504.457020000000000000
          Top = 0.307050000000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          OnAfterPrint = 'frPrinterdSueldoOnAfterPrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxEgresos."dImporteTotal"> + <frxEgresos."dIva">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sStatus'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."sStatus"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 113.385900000000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sCompanya'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEgresos."sCompanya"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 257.008040000000000000
          Top = 0.543290000000000000
          Width = 245.669450000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 442.205010000000000000
        Width = 740.409927000000000000
        object frConfiguracionsSlogan: TfrxMemoView
          Left = 257.008040000000000000
          Top = 22.677180000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracionCont."sSlogan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 294.803340000000000000
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
        Height = 52.913420000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        Condition = 'frxEgresos."sIdCompania"'
        ReprintOnNewPage = True
        OutlineText = 'frxEgresos."sIdCompania"'
        StartNewPage = True
        object Memo8: TfrxMemoView
          Left = 582.047620000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA DE PAGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 502.677490000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA EXP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 68.031540000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '# FACT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 657.638220000000000000
          Top = 30.236240000000000000
          Width = 82.393700787401600000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 18.897650000000000000
          Top = 5.559060000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxEgresos."sCompanya"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 257.008040000000000000
          Top = 30.236240000000000000
          Width = 245.669450000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
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
      end
      object PageHeader1: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object frConfiguracionsNombre: TfrxMemoView
          Left = 147.401670000000000000
          Top = 3.779530000000000000
          Width = 438.425480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
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
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 41.574830000000000000
          Width = 438.425480000000000000
          Height = 52.913420000000000000
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
          Left = 5.559060000000000000
          Top = 3.000000000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          HightQuality = False
        end
        object Memo16: TfrxMemoView
          Top = 120.944960000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'CONCENTRADO DE ESTADOS DE FACTURAS POR COMPA'#195#8216#195#141'A DE [FECHA_INIC' +
              'IAL] A [FECHA_FINAL]')
          ParentFont = False
          VAlign = vaCenter
        end
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
    Left = 764
    Top = 208
  end
  object zq_statusfacturas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zQEgresosCalcFields
    BeforeInsert = zQEgresosBeforeInsert
    AfterInsert = zQEgresosAfterInsert
    SQL.Strings = (
      'SELECT * FROM con_facturas_status;')
    Params = <>
    Left = 580
    Top = 208
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
    Left = 535
    Top = 209
  end
  object frxReport1: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39813.804003356500000000
    ReportOptions.LastChange = 41621.006385856480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      '       Total_Cancelado: Real;            '
      '       Total_Pendiente: Real;'
      '       Total_Pagado: Real;               '
      'procedure frPrinterdSueldoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       //;                          '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       if <frxEgresos."sStatus"> = '#39'PAGADA'#39' then begin'
      
        '               Total_Pagado := Total_Pagado + (<frxEgresos."dImp' +
        'orteTotal"> + <frxEgresos."dIva">)'
      '       end;'
      
        '       if (<frxEgresos."sStatus"> = '#39'PENDIENTE'#39') OR (<frxEgresos' +
        '."sStatus"> = '#39'ENTREGADA'#39') then begin'
      
        '               Total_Pendiente := Total_Pendiente + (<frxEgresos' +
        '."dImporteTotal"> + <frxEgresos."dIva">)'
      '       end;'
      '       if <frxEgresos."sStatus"> = '#39'CANCELADA'#39' then begin'
      
        '               Total_Cancelado := Total_Cancelado + (<frxEgresos' +
        '."dImporteTotal"> + <frxEgresos."dIva">)'
      '       end;  '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       Total_Cancelado:= 0;              '
      '       Total_Pendiente:= 0;  '
      '       Total_Pagado:= 0;       '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 348
    Top = 160
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frxEgresos
        DataSetName = 'frxEgresos'
      end>
    Variables = <
      item
        Name = ' Totales'
        Value = Null
      end
      item
        Name = 'PendientedePagar'
        Value = '<frTmpQuery."dTotal"> - <frTmpQuery."dPagado">'
      end>
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
      object GroupFooter1: TfrxGroupFooter
        Height = 45.354360000000000000
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo9: TfrxMemoView
          Left = 241.889920000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PENDIENTE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 24.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clRed
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL CANCELADO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 355.275820000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
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
          Memo.UTF8 = (
            '[Total_Pendiente]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 113.385900000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
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
          Memo.UTF8 = (
            '[Total_Cancelado]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 491.338900000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 42107
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PAGADO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 604.724800000000000000
          Top = 24.897650000000000000
          Width = 113.385900000000000000
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
          Memo.UTF8 = (
            '[Total_Pagado]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.007874020000000000
        Top = 294.803340000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxEgresos
        DataSetName = 'frxEgresos'
        RowCount = 0
        Stretched = True
        object frPrintersNombreCompleto: TfrxMemoView
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaFactura'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."dFechaFactura"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersCategoria: TfrxMemoView
          Left = 68.031540000000000000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iFolio'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."iFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrinteriDiasTrabajados: TfrxMemoView
          Left = 582.047620000000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dIdFecha'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrinterdSueldo: TfrxMemoView
          Left = 504.457020000000000000
          Top = 0.307050000000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          OnAfterPrint = 'frPrinterdSueldoOnAfterPrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxEgresos."dImporteTotal"> + <frxEgresos."dIva">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sStatus'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."sStatus"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 113.385900000000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sCompanya'
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEgresos."sCompanya"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 257.008040000000000000
          Top = 0.543290000000000000
          Width = 245.669450000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEgresos."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 442.205010000000000000
        Width = 740.409927000000000000
        object frConfiguracionsSlogan: TfrxMemoView
          Left = 257.008040000000000000
          Top = 22.677180000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracionCont."sSlogan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 294.803340000000000000
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
        Height = 52.913420000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        Condition = 'frxEgresos."sIdCompania"'
        ReprintOnNewPage = True
        OutlineText = 'frxEgresos."sIdCompania"'
        StartNewPage = True
        object Memo8: TfrxMemoView
          Left = 582.047620000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA DE PAGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 502.677490000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA EXP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 68.031540000000000000
          Top = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '# FACT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 657.638220000000000000
          Top = 30.236240000000000000
          Width = 82.393700787401600000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 18.897650000000000000
          Top = 5.559060000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxEgresos."sCompanya"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 257.008040000000000000
          Top = 30.236240000000000000
          Width = 245.669450000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
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
      end
      object PageHeader1: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object frConfiguracionsNombre: TfrxMemoView
          Left = 147.401670000000000000
          Top = 3.779530000000000000
          Width = 438.425480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
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
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 41.574830000000000000
          Width = 438.425480000000000000
          Height = 52.913420000000000000
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
        object Memo16: TfrxMemoView
          Top = 120.944960000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'CONCENTRADO DE ESTADOS DE FACTURAS POR COMPA'#195#8216#195#141'A DE [FECHA_INIC' +
              'IAL] A [FECHA_FINAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
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
      end
    end
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
    DataSource = dszQEgresos
    BCDToCurrency = False
    Left = 476
    Top = 168
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
    Left = 476
    Top = 200
  end
  object zq_DetallesFacturas: TZQuery
    Connection = connection.zConnection
    AfterScroll = zq_DetallesFacturasAfterScroll
    BeforePost = zq_DetallesFacturasBeforePost
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
    Left = 580
    Top = 240
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
    Left = 532
    Top = 240
  end
  object Print_DetallesdeFactura: TfrxDBDataset
    UserName = 'Print_DetallesdeFactura'
    CloseDataSource = False
    DataSource = ds_DetallesFacturas
    BCDToCurrency = False
    Left = 476
    Top = 232
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
    Left = 700
    Top = 268
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
    Left = 668
    Top = 268
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
    DataSource = dszQEgresos
    BCDToCurrency = False
    Left = 476
    Top = 136
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
    Left = 118
    Top = 298
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
    Left = 622
    Top = 202
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
    Top = 106
  end
  object dsConsultaf: TfrxDBDataset
    UserName = 'dsConsultaf'
    CloseDataSource = False
    DataSet = qryConsultaf
    BCDToCurrency = False
    Left = 820
    Top = 416
  end
  object qryConsultaf: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 188
    Top = 216
  end
  object qryParcPagos: TZQuery
    Connection = connection.zConnection
    OnCalcFields = qryParcPagosCalcFields
    AfterInsert = qryParcPagosAfterInsert
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
    Left = 478
    Top = 274
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
    Left = 527
    Top = 273
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
    Left = 580
    Top = 100
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
    Left = 537
    Top = 99
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
    Top = 112
  end
  object styleGrid: TcxStyleRepository
    Left = 784
    Top = 32
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
      'Radial1'
      'popIzquierdo')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.ImageListBkColor = clMoneyGreen
    ImageOptions.Images = frmrepositorio.IconosTodos16
    ImageOptions.LargeImages = frmrepositorio.IconosTodos24
    PopupMenuLinks = <
      item
        Control = Panel1
        PopupMenu = PopupPrincipal
      end>
    ShowShortCutInHint = True
    Style = bmsStandard
    UseSystemFont = False
    Left = 16
    Top = 336
    DockControlHeights = (
      0
      0
      0
      0)
    object ImprimirFormato1: TdxBarSubItem
      Caption = 'Imprimir Formato'
      Category = 0
      Visible = ivAlways
      ImageIndex = 463
      ItemLinks = <
        item
          Visible = True
          ItemName = 'ImprimirFactura1'
        end
        item
          Visible = True
          ItemName = 'ImprimirFacturaATechnology1'
        end>
    end
    object Reporte1: TdxBarSubItem
      Caption = 'Reporte'
      Category = 0
      Visible = ivAlways
      ImageIndex = 463
      ItemLinks = <
        item
          Visible = True
          ItemName = 'ImprimirReporte1'
        end
        item
          Visible = True
          ItemName = 'ReporteXMesFacturado1'
        end
        item
          Visible = True
          ItemName = 'mnureportet'
        end>
    end
    object Editar1: TdxBarButton
      Caption = 'Editar'
      Category = 1
      Hint = 'Editar registro (CTRL + E)'
      Visible = ivAlways
      ImageIndex = 299
      ShortCut = 16453
      OnClick = frmBarra1btnEditClick
    end
    object Registrar1: TdxBarButton
      Caption = 'Guardar'
      Category = 1
      Enabled = False
      Hint = 'Salvar cambios (CTRL + G)'
      Visible = ivAlways
      ImageIndex = 54
      ShortCut = 16505
      OnClick = frmBarra1btnPostClick
    end
    object Can1: TdxBarButton
      Caption = 'Cancelar'
      Category = 1
      Enabled = False
      Hint = 'Cancelar cambios (CTRL + C)'
      Visible = ivAlways
      ImageIndex = 127
      ShortCut = 16507
      OnClick = frmBarra1btnCancelClick
    end
    object Eliminar1: TdxBarButton
      Caption = 'Eliminar'
      Category = 1
      Hint = 'Eliminar registro (CTRL + D)'
      Visible = ivAlways
      ImageIndex = 306
      ShortCut = 16452
      OnClick = frmBarra1btnDeleteClick
    end
    object Salir1: TdxBarButton
      Caption = 'Salir'
      Category = 1
      Hint = 'Salir (CTRL + F4)'
      Visible = ivAlways
      ImageIndex = 701
      ShortCut = 16499
      OnClick = frmBarra1btnExitClick
    end
    object Refresh1: TdxBarButton
      Caption = 'Refrescar'
      Category = 1
      Hint = 'Refresh datos (F5)'
      Visible = ivAlways
      ImageIndex = 637
      ShortCut = 16500
      OnClick = frmBarra1btnRefreshClick
    end
    object Insertar1: TdxBarButton
      Caption = 'Insertar'
      Category = 1
      Hint = 'Nuevo registro (Ctrl+Ins)'
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 16429
      OnClick = frmBarra1btnAddClick
    end
    object Imprimir1: TdxBarSubItem
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir (CTRL + P)'
      Visible = ivAlways
      ImageIndex = 463
      OnClick = frmBarra1btnPrinterClick
      ItemLinks = <
        item
          Visible = True
          ItemName = 'ImprimirFormato1'
        end
        item
          Visible = True
          ItemName = 'Porcompaias1'
        end
        item
          Visible = True
          ItemName = 'PorFechas1'
        end
        item
          Visible = True
          ItemName = 'ImprimirfacturaOriginal1'
        end
        item
          Visible = True
          ItemName = 'Graficas1'
        end
        item
          Visible = True
          ItemName = 'Reporte1'
        end>
    end
    object ImprimirFactura1: TdxBarButton
      Caption = 'Factura A'
      Category = 2
      Hint = 'Factura A'
      Visible = ivAlways
      ImageIndex = 463
      OnClick = ImprimirFactura1Click
    end
    object ImprimirFacturaATechnology1: TdxBarButton
      Caption = 'Factura B'
      Category = 2
      Hint = 'Factura B'
      Visible = ivAlways
      ImageIndex = 463
      OnClick = ImprimirFacturaATechnology1Click
    end
    object Porcompaias1: TdxBarButton
      Caption = 'Imprimir Por compa'#241'ias'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = Porcompaias1Click
    end
    object PorFechas1: TdxBarButton
      Caption = 'Imprimir Facturas pagadas x Fechas'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = PorFechas1Click
    end
    object ImprimirReporte1: TdxBarButton
      Caption = 'Imprimir Reporte'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = ImprimirReporte1Click
    end
    object ImprimirfacturaOriginal1: TdxBarButton
      Caption = 'Imprimir factura Original'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = ImprimirfacturaOriginal1Click
    end
    object mnureportet: TdxBarSubItem
      Caption = 'Reporte Total'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
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
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = Pagadas1Click
    end
    object Canceladas1: TdxBarButton
      Caption = 'Canceladas'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = Canceladas1Click
    end
    object Pendientes1: TdxBarButton
      Caption = 'Pendientes'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = Pendientes1Click
    end
    object otal1: TdxBarButton
      Caption = 'Total'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = otal1Click
    end
    object PorProyecto1: TdxBarButton
      Caption = 'Por Proyecto'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = PorProyecto1Click
    end
    object Graficas1: TdxBarSubItem
      Caption = 'Graficas'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      ItemLinks = <
        item
          Visible = True
          ItemName = 'IngresosxCia1'
        end
        item
          Visible = True
          ItemName = 'Ventasx1'
        end>
    end
    object IngresosxCia1: TdxBarButton
      Caption = 'Ingresos x Cia.'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = IngresosxCia1Click
    end
    object Ventasx1: TdxBarButton
      Caption = 'Ventas X Mes'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = Ventasx1Click
    end
    object ReporteXMesFacturado1: TdxBarSubItem
      Caption = 'Reporte X Mes Facturado'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      ItemLinks = <
        item
          Visible = True
          ItemName = 'ENERO1'
        end>
    end
    object ENERO1: TdxBarButton
      Caption = 'Cobro del Mes'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = ENERO1Click
    end
  end
  object PopupPrincipal: TdxRibbonRadialMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Insertar1'
      end
      item
        Visible = True
        ItemName = 'Editar1'
      end
      item
        Visible = True
        ItemName = 'Registrar1'
      end
      item
        Visible = True
        ItemName = 'Can1'
      end
      item
        Visible = True
        ItemName = 'Eliminar1'
      end
      item
        Visible = True
        ItemName = 'Imprimir1'
      end
      item
        Visible = True
        ItemName = 'Refresh1'
      end
      item
        Visible = True
        ItemName = 'Salir1'
      end>
    Ribbon = frmInteligent.mInteligent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    UseOwnFont = True
    Left = 24
    Top = 384
  end
end
