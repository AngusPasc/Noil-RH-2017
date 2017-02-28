object frm_DepositosciasTraspasos: Tfrm_DepositosciasTraspasos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Traspasos'
  ClientHeight = 626
  ClientWidth = 1323
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
    1323
    626)
  PixelsPerInch = 96
  TextHeight = 15
  object lblRecord: TLabel
    Left = 630
    Top = 341
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  inline frmBarra1: TfrmBarra
    Left = 5
    Top = 12
    Width = 70
    Height = 195
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alCustom
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 12
    ExplicitWidth = 70
    ExplicitHeight = 195
    inherited AdvPanel1: TAdvPanel
      Width = 70
      Height = 195
      ExplicitWidth = 70
      ExplicitHeight = 195
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
        Top = 50
        OnClick = frmBarra1btnPostClick
        ExplicitLeft = 0
        ExplicitTop = 50
      end
      inherited btnCancel: TcxButton
        Left = 0
        Top = 74
        OnClick = frmBarra1btnCancelClick
        ExplicitLeft = 0
        ExplicitTop = 74
      end
      inherited btnDelete: TcxButton
        Left = 0
        OnClick = frmBarra1btnDeleteClick
        ExplicitLeft = 0
      end
      inherited btnPrinter: TcxButton
        Left = 0
        Top = 122
        OnClick = btnPrinterClick
        ExplicitLeft = 0
        ExplicitTop = 122
      end
      inherited btnRefresh: TcxButton
        Left = 0
        Top = 146
        OnClick = frmBarra1btnRefreshClick
        ExplicitLeft = 0
        ExplicitTop = 146
      end
      inherited btnExit: TcxButton
        Left = 0
        Top = 170
        OnClick = frmBarra1btnExitClick
        ExplicitLeft = 0
        ExplicitTop = 170
      end
      inherited btnAdd: TcxButton
        Left = 0
        Top = 2
        OnClick = frmBarra1btnAddClick
        ExplicitLeft = 0
        ExplicitTop = 2
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
  object Panel: tNewGroupBox
    Left = 387
    Top = 154
    Width = 68
    Height = 52
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
    TabOrder = 1
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
    end
  end
  object chkAplicaCuadre: TCheckBox
    Left = 8
    Top = 472
    Width = 108
    Height = 18
    Caption = 'Aplicar Cuadre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object cxscrlbxSecundario: TcxScrollBox
    Left = 93
    Top = 424
    Width = 1223
    Height = 195
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 3
    DesignSize = (
      1221
      193)
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
      Left = 997
      Top = 89
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
      Visible = False
      ExplicitLeft = 1006
    end
    object Label7: TLabel
      Left = 1012
      Top = 113
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
      Visible = False
      ExplicitLeft = 1021
    end
    object Label8: TLabel
      Left = 1011
      Top = 132
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
      Visible = False
      ExplicitLeft = 1020
    end
    object txtIva: TEdit
      Left = 1048
      Top = 109
      Width = 135
      Height = 23
      Anchors = [akTop, akRight]
      Color = clWhite
      TabOrder = 0
      Visible = False
    end
    object txtTotal: TEdit
      Left = 1048
      Top = 132
      Width = 135
      Height = 23
      Anchors = [akTop, akRight]
      Color = clWhite
      TabOrder = 1
      Visible = False
    end
    object txtSubtotal: TEdit
      Left = 1048
      Top = 86
      Width = 135
      Height = 23
      Anchors = [akTop, akRight]
      Color = clWhite
      TabOrder = 2
      Visible = False
    end
    object NxPageControl1: TNxPageControl
      Left = 0
      Top = 0
      Width = 1221
      Height = 193
      Margins.Right = 220
      ActivePage = NxTabSheet1
      ActivePageIndex = 0
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
          Left = 334
          Top = 7
          Width = 42
          Height = 15
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 102
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
        object Label22: TLabel
          Left = 316
          Top = 58
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
        object Label27: TLabel
          Left = 326
          Top = 31
          Width = 50
          Height = 15
          Caption = 'Proyecto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object tmDescripcion: TcxDBMemo
          Left = 88
          Top = 98
          DataBinding.DataField = 'mDescripcion'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Style.Color = 11009259
          TabOrder = 4
          OnEnter = tmDescripcionEnter
          OnExit = tmDescripcionExit
          OnKeyPress = tmDescripcionKeyPress
          Height = 53
          Width = 649
        end
        object dbiFolio: TcxDBTextEdit
          Left = 88
          Top = 4
          DataBinding.DataField = 'iFolio'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Style.Color = 11009259
          TabOrder = 0
          OnEnter = dbiFolioEnter
          OnExit = dbiFolioExit
          Width = 145
        end
        object tdFechaExp: TcxDBDateEdit
          Left = 88
          Top = 28
          Margins.Left = 4
          Margins.Top = 1
          DataBinding.DataField = 'dFechaFactura'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Style.Color = 11009259
          TabOrder = 1
          OnEnter = tdFechaExpEnter
          OnExit = tdFechaExpExit
          OnKeyPress = tdFechaExpKeyPress
          Width = 145
        end
        object dbCompania: TcxDBLookupComboBox
          Left = 380
          Top = 4
          DataBinding.DataField = 'sIdCompania'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'sIdCompania'
          Properties.ListColumns = <
            item
              FieldName = 'sRazonSocial'
            end>
          Properties.ListSource = dsCompanias
          Properties.OnCloseUp = dbCompaniaPropertiesCloseUp
          Style.Color = 11009259
          TabOrder = 5
          OnEnter = dbCompaniaEnter
          OnExit = dbCompaniaExit
          OnKeyPress = dbCompaniaKeyPress
          Width = 357
        end
        object tdFecha: TcxDBDateEdit
          Left = 88
          Top = 76
          Margins.Left = 4
          Margins.Top = 1
          DataBinding.DataField = 'dIdFecha'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Style.Color = 11009259
          TabOrder = 3
          OnEnter = tdFechaEnter
          OnExit = tdFechaExit
          OnKeyPress = tdFechaKeyPress
          Width = 145
        end
        object dbEstado: TDBLookupListBox
          Left = 774
          Top = 24
          Width = 103
          Height = 79
          Color = 11009259
          DataField = 'iIdStatus'
          DataSource = dszQEgresos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'iId'
          ListField = 'sNombre'
          ListSource = ds_statusfacturas
          ParentFont = False
          TabOrder = 16
          OnEnter = dbEstadoEnter
          OnExit = dbEstadoExit
          OnKeyPress = dbEstadoKeyPress
        end
        object a: TMemo
          Left = 883
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
          TabOrder = 8
        end
        object e: TMemo
          Left = 884
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
          TabOrder = 9
        end
        object i: TMemo
          Left = 884
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
          TabOrder = 10
        end
        object o: TMemo
          Left = 884
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
          TabOrder = 11
        end
        object dbFechaRecepcion: TcxDBDateEdit
          Left = 88
          Top = 52
          Margins.Left = 4
          Margins.Top = 1
          DataBinding.DataField = 'dFechaRecepcion'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Style.Color = 11009259
          TabOrder = 2
          OnEnter = dbFechaRecepcionEnter
          OnExit = dbFechaRecepcionExit
          OnKeyPress = dbFechaRecepcionKeyPress
          Width = 145
        end
        object cmbmeses: TcxDBComboBox
          Left = 382
          Top = 55
          DataBinding.DataField = 'sMes'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
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
          Style.Color = 11009259
          TabOrder = 7
          OnEnter = cmbmesesEnter
          OnExit = cmbmesesExit
          OnKeyPress = cmbmesesKeyPress
          Width = 357
        end
        object dbProyecto: TcxDBLookupComboBox
          Left = 380
          Top = 30
          DataBinding.DataField = 'sProyecto'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'sNumeroOrden'
          Properties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end>
          Properties.ListSource = dszQProyectos
          Style.Color = 11009259
          TabOrder = 6
          OnEnter = dbProyectoEnter
          OnExit = dbProyectoExit
          Width = 357
        end
        object IrACompanias: TcxButton
          Left = 743
          Top = 7
          Width = 26
          Height = 20
          Caption = '...'
          TabOrder = 12
          OnClick = IrACompaniasClick
        end
        object IrAProyectos: TcxButton
          Left = 743
          Top = 31
          Width = 25
          Height = 18
          Caption = '...'
          TabOrder = 13
          OnClick = IrAProyectosClick
        end
        object btn1: TBitBtn
          Left = 908
          Top = 24
          Width = 27
          Height = 24
          Hint = 'Sumar conceptos registrados'
          Enabled = False
          TabOrder = 15
          Visible = False
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
        object AplicaPagoParcial: TcxDBCheckBox
          Left = 380
          Top = 78
          Caption = 'Aplica Pago Parcial'
          DataBinding.DataField = 'lAplicaPagoParcial'
          DataBinding.DataSource = dszQEgresos
          Enabled = False
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          TabOrder = 14
          Width = 121
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
        object Abono: TcxLabel
          Left = 711
          Top = 108
          Caption = 'Abono'
          ParentFont = False
        end
        object cxDetalles_Factura: TcxPageControl
          Left = 105
          Top = 3
          Width = 530
          Height = 166
          TabOrder = 1
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          Properties.HideTabs = True
          ClientRectBottom = 165
          ClientRectLeft = 1
          ClientRectRight = 529
          ClientRectTop = 1
          object cxTabSheet1: TcxTabSheet
            Caption = 'cxTabSheet1'
            ImageIndex = 0
            DesignSize = (
              528
              164)
            object cxGrid1: TcxGrid
              Left = 3
              Top = 3
              Width = 516
              Height = 161
              Anchors = [akLeft, akTop, akBottom]
              TabOrder = 0
              object DBGrid1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = ds_DetallesFacturas
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                FilterRow.ApplyChanges = fracImmediately
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                object DBGrid1dCantidad1: TcxGridDBColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'dCantidad'
                  Options.Editing = False
                  Width = 56
                end
                object DBGrid1strDesc1: TcxGridDBColumn
                  Caption = 'Concepto'
                  DataBinding.FieldName = 'Descripcion'
                  PropertiesClassName = 'TcxMemoProperties'
                  Options.Editing = False
                  Width = 315
                end
                object DBGrid1dImporte1: TcxGridDBColumn
                  Caption = 'Precio'
                  DataBinding.FieldName = 'dImporte'
                  Options.Editing = False
                  Width = 67
                end
                object DBGrid1Column1: TcxGridDBColumn
                  Caption = 'Aplica IVA'
                  DataBinding.FieldName = 'lAplicaIVA'
                  Options.Editing = False
                  Width = 71
                end
              end
              object Vista2: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = ds_DetallesFacturas
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.BandHeaders = False
                Bands = <
                  item
                  end>
                object Vista2Column1: TcxGridDBBandedColumn
                  Caption = 'Cantidad'
                  DataBinding.FieldName = 'dCantidad'
                  Options.Editing = False
                  Width = 58
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object Vista2Column2: TcxGridDBBandedColumn
                  Caption = 'Descripci'#243'n'
                  DataBinding.FieldName = 'sDescripcion'
                  PropertiesClassName = 'TcxMemoProperties'
                  Properties.Alignment = taLeftJustify
                  Options.Editing = False
                  Width = 282
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object Vista2Column3: TcxGridDBBandedColumn
                  Caption = 'Precio'
                  DataBinding.FieldName = 'dImporte'
                  Options.Editing = False
                  Width = 79
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object Vista2Column4: TcxGridDBBandedColumn
                  Caption = 'Aplica IVA'
                  DataBinding.FieldName = 'lAplicaIVA'
                  Options.Editing = False
                  Width = 60
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = DBGrid1
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'cxTabSheet2'
            ImageIndex = 1
            object Label14: TLabel
              Left = 9
              Top = 8
              Width = 66
              Height = 15
              Caption = 'Descripci'#243'n'
            end
            object Label15: TLabel
              Left = 9
              Top = 31
              Width = 50
              Height = 15
              Caption = 'Cantidad'
            end
            object Label16: TLabel
              Left = 9
              Top = 55
              Width = 42
              Height = 15
              Caption = 'Importe'
            end
            object Label21: TLabel
              Left = 162
              Top = 31
              Width = 43
              Height = 15
              Caption = 'Unidad:'
            end
            object DBEdit2: TcxDBTextEdit
              Left = 89
              Top = 28
              DataBinding.DataField = 'dCantidad'
              DataBinding.DataSource = ds_DetallesFacturas
              Enabled = False
              ParentFont = False
              Style.Color = 11009259
              TabOrder = 0
              OnEnter = DBEdit2Enter
              OnExit = DBEdit2Exit
              OnKeyPress = DBEdit2KeyPress
              Width = 55
            end
            object DBEdit3: TcxDBTextEdit
              Left = 90
              Top = 53
              DataBinding.DataField = 'dImporte'
              DataBinding.DataSource = ds_DetallesFacturas
              Enabled = False
              ParentFont = False
              Style.Color = 11009259
              TabOrder = 1
              OnEnter = DBEdit3Enter
              OnExit = DBEdit3Exit
              OnKeyPress = DBEdit3KeyPress
              Width = 88
            end
            object DBEdit6: TcxDBTextEdit
              Left = 216
              Top = 28
              DataBinding.DataField = 'sMedida'
              DataBinding.DataSource = ds_DetallesFacturas
              Enabled = False
              ParentFont = False
              Style.Color = 11009259
              TabOrder = 2
              OnKeyPress = DBEdit3KeyPress
              Width = 103
            end
            object DBMemo2: TcxDBExtLookupComboBox
              Left = 89
              Top = 4
              DataBinding.DataField = 'sDescripcion'
              DataBinding.DataSource = ds_DetallesFacturas
              Enabled = False
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.View = frmrepositorio.BView_Medidas
              Properties.KeyFieldNames = 'sidinsumo'
              Properties.ListFieldItem = frmrepositorio.BView_MedidasColumn2
              Properties.OnCloseUp = DBMemo2PropertiesCloseUp
              Style.Color = 11009259
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindowText
              Style.IsFontAssigned = True
              TabOrder = 3
              OnEnter = DBMemo2Enter
              OnExit = DBMemo2Exit
              OnKeyPress = DBMemo2KeyPress
              Width = 421
            end
            object sAplicaIVA: TcxDBCheckBox
              Left = 343
              Top = 29
              Caption = 'Aplica IVA'
              DataBinding.DataField = 'lAplicaIVA'
              DataBinding.DataSource = ds_DetallesFacturas
              Enabled = False
              ParentFont = False
              Properties.ValueChecked = 'Si'
              Properties.ValueUnchecked = 'No'
              TabOrder = 4
              Width = 121
            end
            object cxLabel6: TcxLabel
              Left = 9
              Top = 81
              Caption = 'Observaciones'
              ParentFont = False
            end
            object sObservaciones: TcxDBMemo
              Left = 89
              Top = 78
              DataBinding.DataField = 'sObservaciones'
              DataBinding.DataSource = ds_DetallesFacturas
              ParentFont = False
              Properties.ScrollBars = ssVertical
              Style.Color = 11009259
              TabOrder = 6
              OnEnter = sObservacionesEnter
              OnExit = sObservacionesExit
              Height = 83
              Width = 416
            end
          end
        end
        object btnAdd: TcxButton
          Left = 11
          Top = 16
          Width = 80
          Height = 25
          Hint = 'Nuevo registro (CTRL + Insert)'
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Nuevo'
          ParentBiDiMode = False
          TabOrder = 2
          OnClick = btnAddClick
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = IconosBarra
        end
        object btnCancel: TcxButton
          Left = 11
          Top = 91
          Width = 80
          Height = 25
          Hint = 'Cancelar cambios (F12)'
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Cancelar'
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 3
          OnClick = btnCancelClick
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = IconosBarra
        end
        object btnDelete: TcxButton
          Left = 11
          Top = 116
          Width = 80
          Height = 25
          Hint = 'Eliminar registro (CTRL + D)'
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Eliminar'
          ParentBiDiMode = False
          TabOrder = 4
          OnClick = btnDeleteClick
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = IconosBarra
        end
        object btnEdit: TcxButton
          Left = 11
          Top = 41
          Width = 80
          Height = 25
          Hint = 'Editar registro (CTRL + E)'
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Editar'
          ParentBiDiMode = False
          TabOrder = 5
          OnClick = btnEditClick
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = IconosBarra
        end
        object btnPost: TcxButton
          Left = 11
          Top = 67
          Width = 80
          Height = 25
          Hint = 'Salvar cambios (F10)'
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Grabar'
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 6
          OnClick = btnPostClick
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = IconosBarra
        end
        object cxDBLabel1: TcxDBLabel
          Left = 700
          Top = 66
          DataBinding.DataField = 'Total'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Height = 21
          Width = 80
        end
        object cxDBLabel2: TcxDBLabel
          Left = 700
          Top = 49
          DataBinding.DataField = 'dIva'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Height = 21
          Width = 80
        end
        object cxDBLabel3: TcxDBLabel
          Left = 700
          Top = 33
          DataBinding.DataField = 'dImporteTotal'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Height = 21
          Width = 80
        end
        object cxLabel3: TcxLabel
          Left = 641
          Top = 68
          Caption = 'Total'
          ParentFont = False
        end
        object cxLabel4: TcxLabel
          Left = 641
          Top = 51
          Caption = 'IVA'
          ParentFont = False
        end
        object cxLabel5: TcxLabel
          Left = 641
          Top = 35
          Caption = 'SubTotal'
          ParentFont = False
        end
        object Debe: TcxLabel
          Left = 717
          Top = 128
          Caption = 'Debe'
          ParentFont = False
        end
        object lbAbono: TcxLabel
          Left = 641
          Top = 108
          Caption = 'Parcialidad'
          ParentFont = False
        end
        object LbDebe: TcxLabel
          Left = 641
          Top = 131
          Caption = 'Resta'
          ParentFont = False
        end
      end
      object NxTabSheet3: TNxTabSheet
        Caption = 'Informaci'#243'n Adicional'
        PageIndex = 2
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -12
        TabFont.Name = 'Arial'
        TabFont.Style = []
        object Label19: TLabel
          Left = 404
          Top = 61
          Width = 105
          Height = 15
          Caption = 'Condiciones Pago:'
        end
        object Label20: TLabel
          Left = 20
          Top = 59
          Width = 108
          Height = 15
          Caption = 'N'#250'mero de Cuenta:'
        end
        object Label28: TLabel
          Left = 20
          Top = 32
          Width = 107
          Height = 15
          Caption = 'N'#250'mero de Pedido:'
        end
        object Label10: TLabel
          Left = 437
          Top = 31
          Width = 72
          Height = 15
          Caption = 'Metodo Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit5: TcxDBTextEdit
          Left = 133
          Top = 56
          DataBinding.DataField = 'sNumeroDeCuenta'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Style.Color = 11009259
          TabOrder = 1
          OnEnter = DBEdit5Enter
          OnExit = DBEdit5Exit
          OnKeyPress = DBEdit5KeyPress
          Width = 200
        end
        object DBCheckBox1: TDBCheckBox
          Left = 19
          Top = 4
          Width = 252
          Height = 17
          Caption = 'Imprime proveedor y n'#250'mero de pedido'
          DataField = 'iImprimeProveedor'
          DataSource = dszQEgresos
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit7: TcxDBTextEdit
          Left = 133
          Top = 29
          DataBinding.DataField = 'sNumeroPedido'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Style.Color = 11009259
          TabOrder = 0
          OnEnter = DBEdit7Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit7KeyPress
          Width = 200
        end
        object cxLabel2: TcxLabel
          Left = 20
          Top = 85
          Caption = 'Divisa'
          ParentFont = False
          Transparent = True
        end
        object dDivisa: TcxDBImageComboBox
          Left = 133
          Top = 83
          DataBinding.DataField = 'iIdTipoMoneda'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'PESOS MEXICANO'
              ImageIndex = 0
              Value = 'MXP'
            end
            item
              Description = 'DOLARES'
              Value = 'DLL'
            end>
          Properties.OnCloseUp = dDivisaPropertiesCloseUp
          Style.Color = 11009259
          TabOrder = 2
          OnEnter = dDivisaEnter
          OnExit = dDivisaExit
          OnKeyPress = dDivisaKeyPress
          Width = 200
        end
        object PrecioDivisa: TcxDBExtLookupComboBox
          Left = 133
          Top = 113
          DataBinding.DataField = 'iIdPrecioMoneda'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.View = frmrepositorio.BView_PrecioDivisas
          Properties.KeyFieldNames = 'iIdPrecio'
          Properties.ListFieldItem = frmrepositorio.BView_PrecioDivisasColumn2
          Style.Color = 11009259
          TabOrder = 3
          OnEnter = PrecioDivisaEnter
          OnExit = PrecioDivisaExit
          OnKeyPress = PrecioDivisaKeyPress
          Width = 200
        end
        object cxLabel1: TcxLabel
          Left = 18
          Top = 115
          Caption = 'Precio'
          ParentFont = False
          Transparent = True
        end
        object DBEdit4: TcxDBLookupComboBox
          Left = 515
          Top = 57
          DataBinding.DataField = 'sFormaPago'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'sIdFormaPago'
          Properties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end>
          Properties.ListSource = ds_FormaPago
          Style.Color = 11009259
          TabOrder = 7
          Width = 200
        end
        object cxButton1: TcxButton
          Left = 341
          Top = 114
          Width = 25
          Height = 18
          Caption = '...'
          TabOrder = 8
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 725
          Top = 57
          Width = 25
          Height = 18
          Caption = '...'
          TabOrder = 9
          OnClick = cxButton2Click
        end
        object tsReferencia: TcxDBComboBox
          Left = 515
          Top = 28
          DataBinding.DataField = 'sReferencia'
          DataBinding.DataSource = dszQEgresos
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'TRANSFERENCIA ELECTRONICA'
            'EFECTIVO'
            'CHEQUE'
            'NO IDENTIFICADO')
          Style.Color = 11009259
          TabOrder = 10
          OnEnter = tsReferenciaEnter
          OnExit = tsReferenciaExit
          Width = 200
        end
      end
      object NxTabSheet5: TNxTabSheet
        Caption = 'Addendas'
        PageIndex = 3
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -12
        TabFont.Name = 'Arial'
        TabFont.Style = []
        object NxPageControl2: TNxPageControl
          Left = 0
          Top = 0
          Width = 1221
          Height = 172
          ActivePage = tab_addendas_Pemex_PEP
          ActivePageIndex = 0
          Align = alClient
          Enabled = False
          TabOrder = 0
          BackgroundColor = clSilver
          BackgroundKind = bkSolid
          Margin = 0
          Spacing = 0
          TabHeight = 17
          object tab_addendas_Pemex_PEP: TNxTabSheet
            Caption = 'Pemex PEP'
            PageIndex = 0
            ParentTabFont = False
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = clWindowText
            TabFont.Height = -12
            TabFont.Name = 'Arial'
            TabFont.Style = []
            ExplicitTop = 0
            object Label33: TLabel
              Left = 9
              Top = 12
              Width = 50
              Height = 15
              Caption = 'Contrato:'
            end
            object Label39: TLabel
              Left = 372
              Top = 10
              Width = 59
              Height = 15
              Caption = 'VURegi'#243'n:'
            end
            object Label35: TLabel
              Left = 9
              Top = 39
              Width = 81
              Height = 15
              Caption = 'O. Surtimiento:'
            end
            object Label40: TLabel
              Left = 372
              Top = 39
              Width = 41
              Height = 15
              Caption = 'FichaE:'
            end
            object Label36: TLabel
              Left = 9
              Top = 68
              Width = 80
              Height = 15
              Caption = 'N. Estimaci'#243'n:'
            end
            object Label41: TLabel
              Left = 372
              Top = 68
              Width = 40
              Height = 15
              Caption = 'FichaF:'
            end
            object Label37: TLabel
              Left = 9
              Top = 95
              Width = 52
              Height = 15
              Caption = 'Acreedor:'
            end
            object Label38: TLabel
              Left = 9
              Top = 124
              Width = 46
              Height = 15
              Caption = 'Entrada:'
            end
            object Label42: TLabel
              Left = 372
              Top = 95
              Width = 47
              Height = 15
              Caption = 'Moneda:'
            end
            object Label43: TLabel
              Left = 374
              Top = 124
              Width = 50
              Height = 15
              Caption = 'Ejercicio:'
            end
            object tAddenda_sContrato: TDBEdit
              Left = 111
              Top = 7
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sContrato'
              DataSource = dszqAddendaPemex
              TabOrder = 0
              OnEnter = tAddenda_sContratoEnter
              OnExit = tAddenda_sContratoExit
              OnKeyPress = tAddenda_sContratoKeyPress
            end
            object tAddenda_sVURegion: TDBEdit
              Left = 447
              Top = 7
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sVURegion'
              DataSource = dszqAddendaPemex
              TabOrder = 5
              OnEnter = tAddenda_sVURegionEnter
              OnExit = tAddenda_sVURegionExit
              OnKeyPress = tAddenda_sVURegionKeyPress
            end
            object tAddenda_sOSurtimiento: TDBEdit
              Left = 111
              Top = 36
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sOSurtimiento'
              DataSource = dszqAddendaPemex
              TabOrder = 1
              OnEnter = tAddenda_sOSurtimientoEnter
              OnExit = tAddenda_sOSurtimientoExit
              OnKeyPress = tAddenda_sOSurtimientoKeyPress
            end
            object tAddenda_sFichaE: TDBEdit
              Left = 447
              Top = 36
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sFichaE'
              DataSource = dszqAddendaPemex
              TabOrder = 6
              OnEnter = tAddenda_sFichaEEnter
              OnExit = tAddenda_sFichaEExit
              OnKeyPress = tAddenda_sFichaEKeyPress
            end
            object tAddenda_sNEstimacion: TDBEdit
              Left = 111
              Top = 65
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sNEstimacion'
              DataSource = dszqAddendaPemex
              TabOrder = 2
              OnEnter = tAddenda_sNEstimacionEnter
              OnExit = tAddenda_sNEstimacionExit
              OnKeyPress = tAddenda_sNEstimacionKeyPress
            end
            object tAddenda_sFichaF: TDBEdit
              Left = 447
              Top = 65
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sFichaF'
              DataSource = dszqAddendaPemex
              TabOrder = 7
              OnEnter = tAddenda_sFichaFEnter
              OnExit = tAddenda_sFichaFExit
              OnKeyPress = tAddenda_sFichaFKeyPress
            end
            object tAddenda_sAcreedor: TDBEdit
              Left = 111
              Top = 92
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sNAcreedor'
              DataSource = dszqAddendaPemex
              TabOrder = 3
              OnEnter = tAddenda_sAcreedorEnter
              OnExit = tAddenda_sAcreedorExit
              OnKeyPress = tAddenda_sAcreedorKeyPress
            end
            object tAddenda_sEntrada: TDBEdit
              Left = 111
              Top = 121
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sEntrada'
              DataSource = dszqAddendaPemex
              TabOrder = 4
              OnEnter = tAddenda_sEntradaEnter
              OnExit = tAddenda_sEntradaExit
              OnKeyPress = tAddenda_sEntradaKeyPress
            end
            object tAddenda_sMoneda: TDBEdit
              Left = 447
              Top = 92
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sMoneda'
              DataSource = dszqAddendaPemex
              TabOrder = 8
              OnEnter = tAddenda_sMonedaEnter
              OnExit = tAddenda_sMonedaExit
              OnKeyPress = tAddenda_sMonedaKeyPress
            end
            object tAddenda_sEjercicio: TDBEdit
              Left = 447
              Top = 121
              Width = 204
              Height = 23
              Color = 11009259
              DataField = 'sEjercicio'
              DataSource = dszqAddendaPemex
              TabOrder = 9
              OnEnter = tAddenda_sEjercicioEnter
              OnExit = tAddenda_sEjercicioExit
              OnKeyPress = tAddenda_sEjercicioKeyPress
            end
          end
        end
      end
    end
    object CheckBox1: TCheckBox
      Left = 1061
      Top = 40
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
      TabOrder = 4
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 95
    Top = 76
    Width = 1222
    Height = 341
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel1'
    TabOrder = 4
    object gridPrincipal: TcxGrid
      Left = 1
      Top = 1
      Width = 1220
      Height = 339
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
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
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = Grid_facturasStylesGetContentStyle
        object Grid_facturasdFechaFactura1: TcxGridDBColumn
          Caption = 'Exp. Fecha'
          DataBinding.FieldName = 'dFechaFactura'
          Width = 97
        end
        object Grid_facturasdIdFecha1: TcxGridDBColumn
          Caption = 'Pago Fecha'
          DataBinding.FieldName = 'dIdFecha'
          Width = 69
        end
        object Grid_facturasiIdFolio1: TcxGridDBColumn
          Caption = 'Factura'
          DataBinding.FieldName = 'iFolio'
          Width = 48
        end
        object Grid_facturassIdNumeroCuenta1: TcxGridDBColumn
          Caption = 'N'#250'mero Cuenta'
          DataBinding.FieldName = 'sIdNumeroCuenta'
          Width = 123
        end
        object Grid_facturasdImporteTotal1: TcxGridDBColumn
          Caption = 'Subtotal'
          DataBinding.FieldName = 'dImporteTotal'
          Width = 84
        end
        object Grid_facturasdIva1: TcxGridDBColumn
          Caption = 'IVA'
          DataBinding.FieldName = 'dIva'
          Width = 78
        end
        object Grid_facturasTotal1: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Width = 102
        end
        object Grid_facturassStatus1: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'sStatus'
          Width = 77
        end
        object Grid_facturasColumn2: TcxGridDBColumn
          Caption = 'Compa'#241'ia'
          DataBinding.FieldName = 'sCompanya'
          Width = 176
        end
        object Grid_facturasdParcialidad1: TcxGridDBColumn
          Caption = 'Parcialidad'
          DataBinding.FieldName = 'dParcialidad'
          Width = 82
        end
        object Grid_facturasColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'sUsuario'
          Width = 84
        end
        object tcxstatusGrid_facturasColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'CFDI_sEstado'
          Width = 86
        end
        object Grid_facturasColumn3: TcxGridDBColumn
          Caption = 'Ejercicio'
          DataBinding.FieldName = 'iEjercicio'
          Width = 55
        end
        object Grid_facturasNotaCredito: TcxGridDBColumn
          Caption = 'Nota '#13#10'Credito'
          DataBinding.FieldName = 'lNotaCredito'
          Width = 44
        end
      end
      object gridPrincipalLevel1: TcxGridLevel
        GridView = Grid_facturas
      end
    end
  end
  object Panel_Espera: TPanel
    Left = 620
    Top = 218
    Width = 241
    Height = 132
    Caption = 'EMITIENDO CFDI...'
    TabOrder = 5
    Visible = False
  end
  object Panel_Log: TPanel
    Left = 926
    Top = 8
    Width = 391
    Height = 63
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    BevelEdges = [beLeft, beTop, beRight]
    BevelOuter = bvNone
    TabOrder = 6
    object Memo_Log: TMemo
      Left = 0
      Top = 0
      Width = 391
      Height = 63
      Align = alClient
      TabOrder = 0
    end
  end
  object pnl_Parcialidades: TPanel
    Left = 43
    Top = 397
    Width = 32
    Height = 19
    Align = alCustom
    Caption = 'Facturas Pagadas en Parcialidades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
    object DBText2: TDBText
      Left = 384
      Top = 295
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
      Left = 305
      Top = 296
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
      Left = 495
      Top = 296
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
      Left = 590
      Top = 296
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
    object Button1: TcxButton
      Left = 11
      Top = 291
      Width = 75
      Height = 25
      Caption = 'Aplicar Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btAplicarClick
    end
    object Grid_Pagos: TcxGrid
      Left = 11
      Top = 14
      Width = 678
      Height = 271
      TabOrder = 1
      object cxgrdbtblvwBViewPagos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = IconosBarra
        Navigator.Buttons.Insert.ImageIndex = 0
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.ImageIndex = 4
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Post.ImageIndex = 2
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.ImageIndex = 3
        Navigator.Buttons.Refresh.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsParcPagos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.CancelOnExit = False
        OptionsSelection.HideSelection = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxgrdbclmnGrid2DBTableView1dIdFecha1: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'dIdFecha'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.ImmediatePost = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 81
        end
        object cxgrdbclmnGrid2DBTableView1sDescripcion1: TcxGridDBColumn
          Caption = 'Descripcion'
          DataBinding.FieldName = 'sDescripcion'
          Options.Editing = False
          Width = 338
        end
        object cxgrdbclmnGrid2DBTableView1dImporte1: TcxGridDBColumn
          Caption = 'SubTotal'
          DataBinding.FieldName = 'dImporte'
          PropertiesClassName = 'TcxCalcEditProperties'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 65
        end
        object cxgrdbclmnGrid2DBTableView1dIva1: TcxGridDBColumn
          Caption = 'IVA'
          DataBinding.FieldName = 'dIva'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = False
          Options.Editing = False
          Width = 54
        end
        object cxgrdbclmnGrid2DBTableView1totalp1: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'totalp'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = False
          Options.Editing = False
          Width = 64
        end
        object cxgrdbclmnGrid2DBTableView1lPago1: TcxGridDBColumn
          Caption = 'Pagada'
          DataBinding.FieldName = 'lPago'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'SI'
            'NO')
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 60
        end
      end
      object cxgrdlvlGrid2Level1: TcxGridLevel
        GridView = cxgrdbtblvwBViewPagos
      end
    end
  end
  object Panel2: TPanel
    Left = 94
    Top = 8
    Width = 826
    Height = 64
    TabOrder = 8
    object Label9: TLabel
      Left = 27
      Top = 10
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
    object Label4: TLabel
      Left = 27
      Top = 37
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
    object tsIdCuentaBancaria: TcxLookupComboBox
      Left = 138
      Top = 9
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'sIdNumeroCuenta'
      Properties.ListColumns = <
        item
          FieldName = 'sNombreCuenta'
        end>
      Properties.ListSource = dszQCuentasBancarias
      Properties.OnCloseUp = tsIdCuentaBancariaPropertiesCloseUp
      TabOrder = 0
      Width = 671
    end
    object tdFechaInicio: TcxDateEdit
      Left = 138
      Top = 34
      Margins.Left = 4
      Margins.Top = 1
      TabStop = False
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.OnCloseUp = tdFechaInicioPropertiesCloseUp
      TabOrder = 1
      OnExit = tdFechaInicioExit
      Width = 90
    end
    object tdFechaFinal: TcxDateEdit
      Left = 254
      Top = 34
      Margins.Left = 4
      Margins.Top = 1
      TabStop = False
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.OnCloseUp = tdFechaFinalPropertiesCloseUp
      TabOrder = 2
      OnExit = tdFechaFinalExit
      Width = 90
    end
  end
  object chk_Timbrar: TcxCheckBox
    Left = 8
    Top = 242
    Caption = 'Factura'
    ParentFont = False
    TabOrder = 9
    Transparent = True
    Width = 65
  end
  object chkIntegraAddenda: TcxCheckBox
    Left = 8
    Top = 221
    Caption = 'Addendas'
    ParentFont = False
    TabOrder = 10
    Transparent = True
    Width = 76
  end
  object btnCfdi: TcxButton
    Left = 8
    Top = 272
    Width = 69
    Height = 25
    Caption = 'Timbrar'
    ModalResult = 1
    TabOrder = 11
    OnClick = btnCfdiClick
    OptionsImage.ImageIndex = 856
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object Parcialidades: TcxButton
    Left = 8
    Top = 303
    Width = 75
    Height = 33
    Caption = 'Pagos '#13#10'Parciales'
    TabOrder = 12
    OnClick = ParcialidadesClick
  end
  object chkNotaCredito: TcxCheckBox
    Left = 7
    Top = 342
    Caption = 'Nota Credito'
    ParentFont = False
    TabOrder = 17
    Transparent = True
    Width = 82
  end
  object dszQEgresos: TDataSource
    DataSet = zQEgresos
    Left = 95
    Top = 167
  end
  object zQEgresos: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQEgresosAfterScroll
    OnCalcFields = zQEgresosCalcFields
    UpdateObject = ZUEgresos
    SQL.Strings = (
      'select *'
      'from con_tesoreriaegresos'
      'where dFechaFactura >=:Fecha1'
      'And dFechaFactura <=:Fecha2'
      'and iIdStatus = 5'
      'and (sTipoMovimiento = "Deposito" or lNotaCredito ='#39'Si'#39')'
      'And sIdNumeroCuenta = :Cuenta')
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
    Left = 123
    Top = 167
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
      DisplayWidth = 100
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
    object strngfldQEgresoslAplicaPagoParcial: TStringField
      FieldName = 'lAplicaPagoParcial'
      Size = 2
    end
    object zQEgresoslNotaCredito: TStringField
      FieldName = 'lNotaCredito'
      Size = 2
    end
  end
  object dszQCuentasBancarias: TDataSource
    DataSet = zQCuentasBancarias
    Left = 95
    Top = 256
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
    Left = 123
    Top = 256
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
      DisplayLabel = 'Nombre de la Cuenta'
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
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 316
    Top = 284
  end
  object ReporteFotografico: TZQuery
    Connection = connection.zConnection
    BeforeInsert = ReporteFotograficoBeforeInsert
    BeforeEdit = ReporteFotograficoBeforeEdit
    BeforeDelete = ReporteFotograficoBeforeDelete
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
    Left = 282
    Top = 197
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
    Left = 253
    Top = 197
  end
  object dsCompanias: TDataSource
    DataSet = qryCompanias
    Left = 95
    Top = 196
  end
  object qryCompanias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select * from con_companias Where lstatus= "Activo" and sIdCompa' +
        'niaConf = :sIdCompaniaConf'
      'order by sRazonSocial')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sIdCompaniaConf'
        ParamType = ptUnknown
      end>
    Left = 123
    Top = 196
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sIdCompaniaConf'
        ParamType = ptUnknown
      end>
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
      DisplayLabel = 'Raz'#243'n Social'
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
    Left = 282
    Top = 338
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
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41619.509353888900000000
    ReportOptions.LastChange = 41765.575308298600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo58OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDS_Factura."lNotaCredito"> = '#39'No'#39' then'
      '       memo58.Text := '#39'FACTURA'#39
      '    else            '
      '       memo58.Text := '#39'NOTA DE CREDITO'#39';          '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 316
    Top = 142
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frxDS_Conceptos
        DataSetName = 'frxDS_Conceptos'
      end
      item
        DataSet = frxDS_Factura
        DataSetName = 'frxDS_Factura'
      end
      item
        DataSet = Print_InfoCliente
        DataSetName = 'Print_InfoCliente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 351.496290000000000000
        Width = 740.409927000000000000
        DataSet = frxDS_Conceptos
        DataSetName = 'frxDS_Conceptos'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object Memo17: TfrxMemoView
          Width = 73.700787400000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 73.700787400000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sUnidad'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."sUnidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 187.086614170000000000
          Width = 374.173470000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Conceptos."sDescripcion"]'
            '[frxDS_Conceptos."sObservaciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 561.259842520000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dValorUnitario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 636.850393700000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 23.236225350000000000
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        Condition = 'frxDS_Factura."sFolioFactura"'
        KeepTogether = True
        object Memo12: TfrxMemoView
          Width = 73.700787400000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 73.811070000000000000
          Width = 113.385900000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 187.196970000000000000
          Width = 374.173470000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Descripci'#195#179'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 561.370440000000000000
          Width = 75.590600000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'P/U')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 636.961040000000000000
          Width = 102.047310000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 263.803340000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo43: TfrxMemoView
          Left = 275.260050000000000000
          Top = 82.842610000000000000
          Width = 457.323130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frConfiguracionCont."sRegimen"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 26.795300000000000000
          Top = 0.795300000000000000
          Width = 211.653680000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
        object Memo50: TfrxMemoView
          Top = 244.905690000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'R.F.C:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Top = 150.653680000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIRECCI'#195#8220'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Top = 130.078843900000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'NOMBRE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 75.590600000000000000
          Top = 130.078850000000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[Print_InfoCliente."sRazonSocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 75.590600000000000000
          Top = 151.984391100000000000
          Width = 453.543600000000000000
          Height = 30.236227800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'Calle:[Print_InfoCliente."sDomicilio"] [NumExt]'
            
              'Col.[Print_InfoCliente."sColonia"] C.P:[Print_InfoCliente."sCP"]' +
              ' ')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 75.590600000000000000
          Top = 244.905696100000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sRFC_Receptor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 567.149970000000000000
          Top = 225.008040000000000000
          Width = 170.078735280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 567.149970000000000000
          Top = 243.685220000000000000
          Width = 170.078850000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Fecha]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 567.149970000000000000
          Top = 187.433210000000000000
          Width = 170.078735280000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo58OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FACTURA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 567.149970000000000000
          Top = 206.110390000000000000
          Width = 170.078850000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Folio]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 275.260050000000000000
          Top = 20.031540000000000000
          Width = 457.323130000000000000
          Height = 60.472467800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frConfiguracionCont."sRFC"]'
            
              '[frConfiguracionCont."sDireccion1"] No. [frConfiguracionCont."NE' +
              'xterior"]'
            
              '[frConfiguracionCont."sDireccion2"] C.P. [frConfiguracionCont."s' +
              'CP"]'
            
              '[frConfiguracionCont."sDireccion3"], [frConfiguracionCont."sEsta' +
              'do"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 275.260050000000000000
          Top = 0.779530000000000000
          Width = 457.323130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frConfiguracionCont."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 75.590600000000000000
          Top = 184.771806100000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[Print_InfoCliente."sLocalidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 184.771800000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'LOCALIDAD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 205.228510000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'MUNICIPIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 75.590600000000000000
          Top = 205.228516100000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[Print_InfoCliente."sMunicipio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 225.228510000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'ESTADO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 75.590600000000000000
          Top = 225.228516100000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[Print_InfoCliente."sEstado"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 20.897650000000000000
        Top = 445.984540000000000000
        Width = 740.409927000000000000
        DataSet = frxEgresos
        DataSetName = 'frxEgresos'
        RowCount = 1
        Stretched = True
        object frxEgresosmDescripcion: TfrxMemoView
          Top = 2.000000000000000000
          Width = 738.897637800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."mDescripcion"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 740.409927000000000000
        Condition = '<frxDS_Factura."mDescripcion">'
        object Memo7: TfrxMemoView
          Top = 3.779530000000000000
          Width = 177.637795280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'OBSERVACIONES:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 393.244021260000000000
        Top = 491.338900000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 215.929016690000000000
          Width = 560.503937010000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SELLO DIGITAL DEL CFDI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 230.047124490000000000
          Width = 560.503937010000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sSelloDigital"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 267.519580080000000000
          Width = 560.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SELLO DEL SAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196855280000000000
          Top = 286.842387870000000000
          Width = 560.503937010000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sSelloSAT"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          ShiftMode = smDontShift
          Left = 5.338590000000000000
          Top = 230.535560000000000000
          Width = 170.078850000000000000
          Height = 120.944960000000000000
          ShowHint = False
          DataField = 'bBBCode'
          DataSet = frxDS_Factura
          DataSetName = 'frxDS_Factura'
          HightQuality = False
        end
        object Memo36: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 325.212493460000000000
          Width = 560.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              'CADENA ORIGINAL DEL COMPLEMENTO DE CERTIFICACI'#195#8220'N DIGITAL DEL SA' +
              'T')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 344.110131260000000000
          Width = 560.503937010000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sCadenaOriginal"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 196.929190000000000000
          Width = 560.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Este documento es una representaci'#195#179'n impresa de un CFDI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Width = 177.637795280000000000
          Height = 17.007874015748000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'CONDICIONES DE PAGO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 0.015770000000000000
          Top = 17.897593860000000000
          Width = 177.637795280000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sTipoPago"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 532.913385830000000000
          Width = 205.984251970000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '*EFECTOS FISCALES AL PAGO'
            '*[frxDS_Factura."sTipoPago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 177.637795280000000000
          Width = 177.637795280000000000
          Height = 17.007874015748000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'FORMA DE PAGO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          ShiftMode = smDontShift
          Left = 177.637795280000000000
          Top = 17.897637800000000000
          Width = 177.637795280000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sFormaPago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          ShiftMode = smDontShift
          Left = 355.275590550000000000
          Width = 177.637795280000000000
          Height = 17.007874015748000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'N'#195#353'MERO DE CUENTA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 355.275590550000000000
          Top = 17.897637800000000000
          Width = 177.637795280000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sIdNumeroCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          ShiftMode = smDontShift
          Left = 498.897960000000000000
          Top = 41.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SUBTOTAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 498.897960000000000000
          Top = 60.472480000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'IVA (16%)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Left = 498.897960000000000000
          Top = 79.433044020000000000
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Left = 556.504625350000000000
          Top = 41.795300000000000000
          Width = 182.551181100000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDS_Factura."dSubTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 556.504625350000000000
          Top = 59.811070000000000000
          Width = 182.551181100000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDS_Factura."dIva"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 556.504625350000000000
          Top = 78.771634020000000000
          Width = 182.551181100000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDS_Factura."dTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          ShiftMode = smDontShift
          Top = 41.173162440000000000
          Width = 498.897637800000000000
          Height = 57.448818900000000000
          ShowHint = False
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Left = 397.629923700000000000
          Top = 107.252010000000000000
          Width = 188.976377950000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NUMERO DE SERIE DEL CERTIFICADO DEL SAT:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 586.606680000000000000
          Top = 107.252010000000000000
          Width = 153.070866140000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA Y HORA DE CERTIFICACI'#195#8220'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Left = 397.629923700000000000
          Top = 137.488230470000000000
          Width = 188.976377950000000000
          Height = 52.913390710000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sSerieCertificado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 586.606680000000000000
          Top = 137.488230470000000000
          Width = 153.070866140000000000
          Height = 52.913390710000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sFecha_Hora"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Left = 208.653545750000000000
          Top = 107.252010000000000000
          Width = 188.976377950000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Folio Fiscal')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          ShiftMode = smDontShift
          Left = 208.653545750000000000
          Top = 137.488230470000000000
          Width = 188.976377950000000000
          Height = 52.913390710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sFolioFiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 0.779530000000000000
          Top = 137.488230470000000000
          Width = 207.874015750000000000
          Height = 52.913390710000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sSerieCSD"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 0.779530000000000000
          Top = 107.252010000000000000
          Width = 207.874015750000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No de Serie del Certificado del CSD:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 5.559060000000000000
          Top = 46.133890000000000000
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
        object Memo29: TfrxMemoView
          Left = 5.000000000000000000
          Top = 75.590600000000000000
          Width = 487.559370000000000000
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
    Left = 253
    Top = 338
  end
  object zq_statusfacturas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zQEgresosCalcFields
    SQL.Strings = (
      'SELECT * FROM con_facturas_status'
      'WHERE sNombre = "TRASPASO"')
    Params = <>
    Left = 123
    Top = 286
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
    Left = 95
    Top = 286
  end
  object frxReport1: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41619.509353888900000000
    ReportOptions.LastChange = 41694.807620243050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 316
    Top = 198
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
        object frxMemoView1: TfrxMemoView
          Top = 86.370130000000000000
          Width = 377.953000000000000000
          Height = 26.456710000000000000
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
      object Picture2: TfrxPictureView
        Left = 18.897650000000000000
        Top = 11.338590000000000000
        Width = 291.023810000000000000
        Height = 86.929190000000000000
        ShowHint = False
        Center = True
        DataField = 'bImagen'
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
        HightQuality = False
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
    Left = 211
    Top = 135
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
      'sNumeroProveedor=sNumeroProveedor'
      'sNumeroInterior=sNumeroInterior'
      'sNumeroExterior=sNumeroExterior'
      'sLocalidad=sLocalidad'
      'sMunicipio=sMunicipio'
      'sColonia=sColonia'
      'sMail=sMail'
      'sTelefono2=sTelefono2'
      'sContacto=sContacto'
      'lTipo=lTipo'
      'sIdCompaniaConf=sIdCompaniaConf'
      'sRegistroPatronal=sRegistroPatronal')
    DataSource = dsCompanias
    BCDToCurrency = False
    Left = 153
    Top = 197
  end
  object ds_DetallesFacturas: TDataSource
    DataSet = zq_DetallesFacturas
    Left = 95
    Top = 316
  end
  object Print_DetallesdeFactura: TfrxDBDataset
    UserName = 'Print_DetallesdeFactura'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'iId_Factura=iId_Factura'
      'sDescripcion=sDescripcion'
      'dCantidad=dCantidad'
      'dImporte=dImporte'
      'sMedida=sMedida'
      'dImporte_Unitario=dImporte_Unitario'
      'lAplicaIVA=lAplicaIVA'
      'sObservaciones=sObservaciones'
      'Descripcion=Descripcion')
    DataSource = ds_DetallesFacturas
    BCDToCurrency = False
    Left = 155
    Top = 316
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
    Left = 123
    Top = 226
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
    Left = 95
    Top = 226
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
      'sNumeroDeCuenta=sNumeroDeCuenta'
      'sNumeroPedido=sNumeroPedido'
      'iImprimeProveedor=iImprimeProveedor'
      'sMes=sMes'
      'dFechaRecepcion=dFechaRecepcion'
      'lAplicaPagoParcial=lAplicaPagoParcial'
      'dParcialidad=dParcialidad'
      'sProyecto=sProyecto'
      'sNumeroOrden=sNumeroOrden'
      'dImporteSubTotal=dImporteSubTotal'
      'dIva_Porcentaje=dIva_Porcentaje'
      'lAplicaiva=lAplicaiva'
      'sPoliza=sPoliza'
      'CFDI_sTipoDocumento=CFDI_sTipoDocumento'
      'CFDI_sUUID=CFDI_sUUID'
      'CFDI_dFechaEmision=CFDI_dFechaEmision'
      'CFDI_dFechaTimbrado=CFDI_dFechaTimbrado'
      'CFDI_sSelloCFD=CFDI_sSelloCFD'
      'CFDI_sSelloSAT=CFDI_sSelloSAT'
      'CFDI_sCertificadoCFD=CFDI_sCertificadoCFD'
      'CFDI_sCertificadoSAT=CFDI_sCertificadoSAT'
      'CFDI_sCadenaOriginal=CFDI_sCadenaOriginal'
      'CFDI_bbCode=CFDI_bbCode'
      'CFDI_sEstado=CFDI_sEstado'
      'CFDI_sRegimenFiscal=CFDI_sRegimenFiscal'
      'CFDI_sLugarExpedicion=CFDI_sLugarExpedicion'
      'CFDI_sFormaDePago=CFDI_sFormaDePago'
      'CFDI_sMetodoDePago=CFDI_sMetodoDePago'
      'CFDI_sTipoComprobante=CFDI_sTipoComprobante'
      'sUsuario=sUsuario'
      'iEjercicio=iEjercicio'
      'iIdTipoMoneda=iIdTipoMoneda'
      'iIdPrecioMoneda=iIdPrecioMoneda')
    DataSource = dszQEgresos
    BCDToCurrency = False
    Left = 181
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
    Left = 282
    Top = 225
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
    Left = 253
    Top = 226
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
    Left = 282
    Top = 254
  end
  object dsConsultaf: TfrxDBDataset
    UserName = 'dsConsultaf'
    CloseDataSource = False
    DataSet = qryConsultaf
    BCDToCurrency = False
    Left = 253
    Top = 310
  end
  object qryConsultaf: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 282
    Top = 302
  end
  object qryParcPagos: TZQuery
    Connection = connection.zConnection
    OnCalcFields = qryParcPagosCalcFields
    AfterInsert = qryParcPagosAfterInsert
    AfterEdit = qryParcPagosAfterEdit
    BeforePost = qryParcPagosBeforePost
    AfterPost = qryParcPagosAfterPost
    BeforeCancel = qryParcPagosBeforeCancel
    AfterCancel = qryParcPagosAfterCancel
    SQL.Strings = (
      'select * from con_parcfacturas where iIdFolio =:idFactura '
      'Order By iConsecutivo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idFactura'
        ParamType = ptUnknown
      end>
    Left = 122
    Top = 374
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
    Left = 94
    Top = 374
  end
  object zQProyectos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select  sNumeroOrden, sDescripcionCorta as Descripcion, mDescrip' +
        'cion, sIdCompania '
      'from ordenesdetrabajo '
      'where sContrato = :Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 123
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object dszQProyectos: TDataSource
    DataSet = zQProyectos
    Left = 95
    Top = 344
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
    Left = 253
    Top = 254
  end
  object styleGrid: TcxStyleRepository
    Left = 316
    Top = 256
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
        PopupMenu = dxBarPopupMenu1
      end>
    ShowShortCutInHint = True
    Style = bmsStandard
    UseSystemFont = False
    Left = 40
    Top = 416
    DockControlHeights = (
      0
      0
      0
      0)
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'ImprimirFormato1'
        end
        item
          Visible = True
          ItemName = 'PorFechas1'
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
    object PorFechas1: TdxBarButton
      Caption = 'Imprimir Facturas pagadas x Fechas'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = PorFechas1Click
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
      Hint = 'Total'
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
        end>
    end
    object IngresosxCia1: TdxBarButton
      Caption = 'Ingresos x Cia.'
      Category = 2
      Visible = ivAlways
      ImageIndex = 463
      OnClick = IngresosxCia1Click
    end
    object ImprimirFormato1: TdxBarSubItem
      Caption = 'Imprimir Formato'
      Category = 2
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
    object dxBarButton1: TdxBarButton
      Caption = 'Reimprimir Factura'
      Category = 2
      Hint = 'Reimprimir Factura'
      Visible = ivAlways
      ImageIndex = 463
      OnClick = btnPrinterClick
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
    Left = 316
    Top = 226
  end
  object Memoria_Conceptos: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'dCantidad'
        DataType = ftFloat
      end
      item
        Name = 'sUnidad'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sDescripcion'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'dValorUnitario'
        DataType = ftFloat
      end
      item
        Name = 'dTotal'
        DataType = ftFloat
      end
      item
        Name = 'sObservaciones'
        DataType = ftString
        Size = 2000
      end>
    Left = 282
    Top = 168
    object Memoria_ConceptosdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object Memoria_ConceptossUnidad: TStringField
      FieldName = 'sUnidad'
      Size = 50
    end
    object Memoria_ConceptossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 1000
    end
    object Memoria_ConceptosdValorUnitario: TFloatField
      FieldName = 'dValorUnitario'
    end
    object Memoria_ConceptosdTotal: TFloatField
      FieldName = 'dTotal'
    end
    object strngfldMemoria_ConceptossObservaciones: TStringField
      FieldName = 'sObservaciones'
      Size = 2000
    end
  end
  object Memoria_Factura: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sFolioFactura'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sFolioFiscal'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'sSerieCSD'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sRFC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sRegimenFiscal'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'sLugarFechaExpedicion'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sRFC_Receptor'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sTotal'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'dSubTotal'
        DataType = ftFloat
      end
      item
        Name = 'dIva'
        DataType = ftFloat
      end
      item
        Name = 'dTotal'
        DataType = ftFloat
      end
      item
        Name = 'sSelloDigital'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'sSelloSAT'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'sCadenaOriginal'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'sSerieCertificado'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sFecha_Hora'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'bBBCode'
        DataType = ftBlob
      end
      item
        Name = 'sTipoPago'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'sFormaPago'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'dFechaEmision'
        DataType = ftDateTime
      end
      item
        Name = 'bLogoEmpresa'
        DataType = ftBlob
      end
      item
        Name = 'sIdNumeroCuenta'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'lNotaCredito'
        DataType = ftString
        Size = 2
      end>
    Left = 282
    Top = 140
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
    object Memoria_FacturasIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Size = 50
    end
    object Memoria_FacturamDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object Memoria_FacturalNotaCredito: TStringField
      FieldName = 'lNotaCredito'
      Size = 2
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
      'bLogoEmpresa=bLogoEmpresa'
      'sIdNumeroCuenta=sIdNumeroCuenta'
      'mDescripcion=mDescripcion'
      'lNotaCredito=lNotaCredito')
    DataSet = Memoria_Factura
    BCDToCurrency = False
    Left = 253
    Top = 140
  end
  object frxDS_Conceptos: TfrxDBDataset
    UserName = 'frxDS_Conceptos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dCantidad=dCantidad'
      'sUnidad=sUnidad'
      'sDescripcion=sDescripcion'
      'dValorUnitario=dValorUnitario'
      'dTotal=dTotal'
      'sObservaciones=sObservaciones')
    DataSet = Memoria_Conceptos
    BCDToCurrency = False
    Left = 253
    Top = 168
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
    ReportOptions.LastChange = 41725.745015810190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frx_ReporteGetValue
    Left = 316
    Top = 170
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frxDS_Conceptos
        DataSetName = 'frxDS_Conceptos'
      end
      item
        DataSet = frxDS_Factura
        DataSetName = 'frxDS_Factura'
      end
      item
        DataSet = Print_InfoCliente
        DataSetName = 'Print_InfoCliente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 351.496290000000000000
        Width = 740.409927000000000000
        DataSet = frxDS_Conceptos
        DataSetName = 'frxDS_Conceptos'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object Memo17: TfrxMemoView
          Width = 73.700787400000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 73.700787400000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sUnidad'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."sUnidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 187.086614170000000000
          Width = 374.173470000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sDescripcion'
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Conceptos."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 561.259842520000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dValorUnitario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 636.850393700000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Conceptos."dTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 23.236225350000000000
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        Condition = 'frxDS_Factura."sFolioFactura"'
        KeepTogether = True
        object Memo12: TfrxMemoView
          Width = 73.700787400000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 73.811070000000000000
          Width = 113.385900000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 187.196970000000000000
          Width = 374.173470000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Descripci'#195#179'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 561.370440000000000000
          Width = 75.590600000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'P/U')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 636.961040000000000000
          Width = 102.047310000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 263.803340000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo43: TfrxMemoView
          Left = 275.260050000000000000
          Top = 82.842610000000000000
          Width = 457.323130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8 = (
            '[frConfiguracionCont."sRegimen"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 26.795300000000000000
          Top = 0.795300000000000000
          Width = 211.653680000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
        object Memo50: TfrxMemoView
          Top = 244.905690000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'R.F.C:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Top = 150.653680000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIRECCI'#195#8220'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Top = 130.078843900000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'NOMBRE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 75.590600000000000000
          Top = 130.078850000000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[Print_InfoCliente."sRazonSocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 75.590600000000000000
          Top = 151.984391100000000000
          Width = 453.543600000000000000
          Height = 30.236227800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'Calle:[Print_InfoCliente."sDomicilio"] [NumExt]'
            
              'Col.[Print_InfoCliente."sColonia"] C.P:[Print_InfoCliente."sCP"]' +
              ' ')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 75.590600000000000000
          Top = 244.905696100000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDS_Factura."sRFC_Receptor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 567.149970000000000000
          Top = 225.008040000000000000
          Width = 170.078735280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 567.149970000000000000
          Top = 243.685220000000000000
          Width = 170.078850000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Fecha]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 567.149970000000000000
          Top = 187.433210000000000000
          Width = 170.078735280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FACTURA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 567.149970000000000000
          Top = 206.110390000000000000
          Width = 170.078850000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Folio]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 275.260050000000000000
          Top = 20.031540000000000000
          Width = 457.323130000000000000
          Height = 60.472467800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frConfiguracionCont."sRFC"]'
            
              '[frConfiguracionCont."sDireccion1"] No. [frConfiguracionCont."NE' +
              'xterior"]'
            
              '[frConfiguracionCont."sDireccion2"] C.P. [frConfiguracionCont."s' +
              'CP"]'
            
              '[frConfiguracionCont."sDireccion3"], [frConfiguracionCont."sEsta' +
              'do"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 275.260050000000000000
          Top = 0.779530000000000000
          Width = 457.323130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frConfiguracionCont."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 75.590600000000000000
          Top = 184.771806100000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[Print_InfoCliente."sLocalidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Top = 184.771800000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'LOCALIDAD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 205.228510000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'MUNICIPIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 75.590600000000000000
          Top = 205.228516100000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[Print_InfoCliente."sMunicipio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 225.228510000000000000
          Width = 71.810955280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'ESTADO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 75.590600000000000000
          Top = 225.228516100000000000
          Width = 453.543600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDS_Conceptos
          DataSetName = 'frxDS_Conceptos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = 15790320
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[Print_InfoCliente."sEstado"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 20.897650000000000000
        Top = 445.984540000000000000
        Width = 740.409927000000000000
        DataSet = frxEgresos
        DataSetName = 'frxEgresos'
        RowCount = 1
        Stretched = True
        object frxEgresosmDescripcion: TfrxMemoView
          Top = 2.000000000000000000
          Width = 738.897637800000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxEgresos
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."mDescripcion"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 740.409927000000000000
        Condition = '<frxDS_Factura."mDescripcion">'
        object Memo7: TfrxMemoView
          Top = 3.779530000000000000
          Width = 177.637795280000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'OBSERVACIONES:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 393.244021260000000000
        Top = 491.338900000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 215.929016690000000000
          Width = 560.503937010000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SELLO DIGITAL DEL CFDI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 230.047124490000000000
          Width = 560.503937010000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sSelloDigital"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 267.519580080000000000
          Width = 560.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SELLO DEL SAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196855280000000000
          Top = 286.842387870000000000
          Width = 560.503937010000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sSelloSAT"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          ShiftMode = smDontShift
          Left = 5.338590000000000000
          Top = 230.535560000000000000
          Width = 170.078850000000000000
          Height = 120.944960000000000000
          ShowHint = False
          DataField = 'bBBCode'
          DataSet = frxDS_Factura
          DataSetName = 'frxDS_Factura'
          HightQuality = False
        end
        object Memo36: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 325.212493460000000000
          Width = 560.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              'CADENA ORIGINAL DEL COMPLEMENTO DE CERTIFICACI'#195#8220'N DIGITAL DEL SA' +
              'T')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 344.110131260000000000
          Width = 560.503937010000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sCadenaOriginal"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 179.196970000000000000
          Top = 196.929190000000000000
          Width = 560.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Este documento es una representaci'#195#179'n impresa de un CFDI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Width = 177.637795280000000000
          Height = 17.007874015748000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'CONDICIONES DE PAGO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 0.015770000000000000
          Top = 17.897593860000000000
          Width = 177.637795280000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sTipoPago"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 532.913385830000000000
          Width = 205.984251970000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '*EFECTOS FISCALES AL PAGO'
            '*[frxDS_Factura."sTipoPago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 177.637795280000000000
          Width = 177.637795280000000000
          Height = 17.007874015748000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'FORMA DE PAGO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          ShiftMode = smDontShift
          Left = 177.637795280000000000
          Top = 17.897637800000000000
          Width = 177.637795280000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sFormaPago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          ShiftMode = smDontShift
          Left = 355.275590550000000000
          Width = 177.637795280000000000
          Height = 17.007874015748000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'N'#195#353'MERO DE CUENTA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 355.275590550000000000
          Top = 17.897637800000000000
          Width = 177.637795280000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDS_Factura."sIdNumeroCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          ShiftMode = smDontShift
          Left = 498.897960000000000000
          Top = 41.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SUBTOTAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 498.897960000000000000
          Top = 60.472480000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'IVA (16%)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Left = 498.897960000000000000
          Top = 79.433044020000000000
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Left = 556.504625350000000000
          Top = 41.795300000000000000
          Width = 182.551181100000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDS_Factura."dSubTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 556.504625350000000000
          Top = 59.811070000000000000
          Width = 182.551181100000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDS_Factura."dIva"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 556.504625350000000000
          Top = 78.771634020000000000
          Width = 182.551181100000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDS_Factura."dTotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          ShiftMode = smDontShift
          Top = 41.173162440000000000
          Width = 498.897637800000000000
          Height = 57.448818900000000000
          ShowHint = False
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Left = 397.629923700000000000
          Top = 107.252010000000000000
          Width = 188.976377950000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NUMERO DE SERIE DEL CERTIFICADO DEL SAT:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 586.606680000000000000
          Top = 107.252010000000000000
          Width = 153.070866140000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA Y HORA DE CERTIFICACI'#195#8220'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Left = 397.629923700000000000
          Top = 137.488230470000000000
          Width = 188.976377950000000000
          Height = 52.913390710000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sSerieCertificado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 586.606680000000000000
          Top = 137.488230470000000000
          Width = 153.070866140000000000
          Height = 52.913390710000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sFecha_Hora"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Left = 208.653545750000000000
          Top = 107.252010000000000000
          Width = 188.976377950000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Folio Fiscal')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          ShiftMode = smDontShift
          Left = 208.653545750000000000
          Top = 137.488230470000000000
          Width = 188.976377950000000000
          Height = 52.913390710000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sFolioFiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 0.779530000000000000
          Top = 137.488230470000000000
          Width = 207.874015750000000000
          Height = 52.913390710000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDS_Factura."sSerieCSD"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 0.779530000000000000
          Top = 107.252010000000000000
          Width = 207.874015750000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No de Serie del Certificado del CSD:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 5.559060000000000000
          Top = 46.133890000000000000
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
        object Memo29: TfrxMemoView
          Left = 5.000000000000000000
          Top = 75.590600000000000000
          Width = 487.559370000000000000
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
      end
    end
  end
  object zq_DetallesFacturas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zq_DetallesFacturasCalcFields
    SQL.Strings = (
      'SELECT'
      '  cfd.iId,'
      '  cfd.iId_Factura,'
      '  cfd.sDescripcion,'
      '  cfd.dCantidad,'
      '  cfd.dImporte,'
      '  cfd.sMedida,'
      '  cfd.dImporte_Unitario,'
      '  cfd.lAplicaIVA,'
      '  cfd.sObservaciones'
      'FROM con_facturas_detalles cfd')
    Params = <>
    Left = 123
    Top = 316
    object intgrfld_DetallesFacturasiId: TIntegerField
      FieldName = 'iId'
    end
    object intgrfld_DetallesFacturasiId_Factura: TIntegerField
      FieldName = 'iId_Factura'
    end
    object mfld_DetallesFacturassDescripcion: TMemoField
      FieldName = 'sDescripcion'
      BlobType = ftMemo
    end
    object zq_DetallesFacturasdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object zq_DetallesFacturasdImporte: TFloatField
      FieldName = 'dImporte'
    end
    object strngfld_DetallesFacturassMedida: TStringField
      FieldName = 'sMedida'
      Size = 50
    end
    object zq_DetallesFacturasdImporte_Unitario: TFloatField
      FieldName = 'dImporte_Unitario'
    end
    object strngfld_DetallesFacturaslAplicaIVA: TStringField
      FieldName = 'lAplicaIVA'
      Size = 2
    end
    object mfld_DetallesFacturassObservaciones: TMemoField
      FieldName = 'sObservaciones'
      BlobType = ftMemo
    end
    object strngfld_DetallesFacturasDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descripcion'
      Size = 500
      Calculated = True
    end
  end
  object dszqAddendaPemex: TDataSource
    AutoEdit = False
    DataSet = zqAddendaPemex
    Left = 95
    Top = 136
  end
  object zqAddendaPemex: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQEgresosAfterScroll
    OnCalcFields = zQEgresosCalcFields
    UpdateObject = ZUzqAddendaPemex
    SQL.Strings = (
      'SELECT * FROM addenda_pemex_pep'
      '')
    Params = <>
    Left = 123
    Top = 136
    object zqAddendaPemexiId: TIntegerField
      FieldName = 'iId'
    end
    object zqAddendaPemexiId_Factura: TIntegerField
      FieldName = 'iId_Factura'
    end
    object zqAddendaPemexsCOPADE: TStringField
      FieldName = 'sCOPADE'
      Size = 50
    end
    object zqAddendaPemexsContrato: TStringField
      FieldName = 'sContrato'
      Size = 50
    end
    object zqAddendaPemexsOSurtimiento: TStringField
      FieldName = 'sOSurtimiento'
      Size = 50
    end
    object zqAddendaPemexsNEstimacion: TStringField
      FieldName = 'sNEstimacion'
      Size = 50
    end
    object zqAddendaPemexsNAcreedor: TStringField
      FieldName = 'sNAcreedor'
      Size = 50
    end
    object zqAddendaPemexsEntrada: TStringField
      FieldName = 'sEntrada'
      Size = 50
    end
    object zqAddendaPemexsVURegion: TStringField
      FieldName = 'sVURegion'
      Size = 50
    end
    object zqAddendaPemexsFichaE: TStringField
      FieldName = 'sFichaE'
      Size = 40
    end
    object zqAddendaPemexsFichaF: TStringField
      FieldName = 'sFichaF'
      Size = 40
    end
    object zqAddendaPemexsMoneda: TStringField
      FieldName = 'sMoneda'
      Size = 10
    end
    object zqAddendaPemexsEjercicio: TStringField
      FieldName = 'sEjercicio'
      Size = 4
    end
  end
  object ZUEgresos: TZUpdateSQL
    DeleteSQL.Strings = (
      'delete from con_tesoreriaegresos where iIdFolio = :iIdFolio')
    InsertSQL.Strings = (
      'INSERT INTO con_tesoreriaegresos (dIdFecha, '
      '  iIdFolio, '
      '  sTipoMovimiento, '
      '  sIdArea, '
      '  sIdNumeroCuenta, '
      '  sNumeroOrden, '
      '  sReferencia, '
      '  sIdProveedor, '
      '  sIdCompania, '
      '  sRFC, '
      '  sRazonSocial, '
      '  sDomicilio, '
      '  sCiudad, '
      '  sCP, '
      '  sEstado, '
      '  sTelefono, '
      '  dImporteTotal,'
      '  dImporteSubTotal, '
      '  lComprobado, '
      '  sStatus, '
      '  mDescripcion, '
      '  dIva, '
      '  dIva_Porcentaje, '
      '  lAplicaiva, '
      '  sPoliza, '
      '  dFechaFactura, '
      '  dFechaRecepcion,'
      '  iFolio, '
      '  iIdStatus, '
      '  sTipoPago, '
      '  sFormaPago, '
      '  sNumeroDeCuenta, '
      '  sNumeroPedido, '
      '  iImprimeProveedor, '
      '  sMes, '
      '  lAplicaPagoParcial,'
      '  dParcialidad, '
      '  sProyecto, '
      '  CFDI_sTipoDocumento, '
      '  CFDI_sUUID, '
      '  CFDI_dFechaEmision, '
      '  CFDI_dFechaTimbrado, '
      '  CFDI_sSelloCFD,'
      '  CFDI_sSelloSAT,'
      '  CFDI_sCertificadoCFD, '
      '  CFDI_sCertificadoSAT, '
      '  CFDI_sCadenaOriginal, '
      '  CFDI_bbCode, '
      '  CFDI_sEstado,'
      '  CFDI_sRegimenFiscal, '
      '  CFDI_sLugarExpedicion, '
      '  CFDI_sFormaDePago, '
      '  CFDI_sMetodoDePago, '
      '  CFDI_sTipoComprobante,'
      '  sUsuario, '
      '  iEjercicio, '
      '  iIdTipoMoneda, '
      '  iIdPrecioMoneda, '
      '  lNotaCredito) '
      'Values(:dIdFecha, '
      '  :iIdFolio, '
      '  :sTipoMovimiento, '
      '  :sIdArea, '
      '  :sIdNumeroCuenta, '
      '  :sNumeroOrden, '
      '  :sReferencia, '
      '  :sIdProveedor, '
      '  :sIdCompania, '
      '  :sRFC, '
      '  :sRazonSocial, '
      '  :sDomicilio, '
      '  :sCiudad, '
      '  :sCP, '
      '  :sEstado, '
      '  :sTelefono, '
      '  :dImporteTotal,'
      '  :dImporteSubTotal, '
      '  :lComprobado, '
      '  :sStatus, '
      '  :mDescripcion, '
      '  :dIva, '
      '  :dIva_Porcentaje, '
      '  :lAplicaiva, '
      '  :sPoliza, '
      '  :dFechaFactura, '
      '  :dFechaRecepcion,'
      '  :iFolio, '
      '  :iIdStatus, '
      '  :sTipoPago, '
      '  :sFormaPago, '
      '  :sNumeroDeCuenta, '
      '  :sNumeroPedido, '
      '  :iImprimeProveedor, '
      '  :sMes, '
      '  :lAplicaPagoParcial,'
      '  :dParcialidad, '
      '  :sProyecto, '
      '  :CFDI_sTipoDocumento, '
      '  :CFDI_sUUID, '
      '  :CFDI_dFechaEmision, '
      '  :CFDI_dFechaTimbrado, '
      '  :CFDI_sSelloCFD,'
      '  :CFDI_sSelloSAT, '
      '  :CFDI_sCertificadoCFD, '
      '  :CFDI_sCertificadoSAT, '
      '  :CFDI_sCadenaOriginal, '
      '  :CFDI_bbCode, '
      '  :CFDI_sEstado,'
      '  :CFDI_sRegimenFiscal, '
      '  :CFDI_sLugarExpedicion, '
      '  :CFDI_sFormaDePago, '
      '  :CFDI_sMetodoDePago, '
      '  :CFDI_sTipoComprobante,'
      '  :sUsuario, '
      '  :iEjercicio, '
      '  :iIdTipoMoneda, '
      '  :iIdPrecioMoneda,'
      '  :lNotaCredito)')
    ModifySQL.Strings = (
      'UPDATE con_tesoreriaegresos'
      'SET '
      '  dIdFecha = :dIdFecha, '
      '  sTipoMovimiento = :sTipoMovimiento, '
      '  sIdArea = :sIdArea, '
      '  sIdNumeroCuenta = :sIdNumeroCuenta, '
      '  sNumeroOrden = :sNumeroOrden, '
      '  sReferencia = :sReferencia, '
      '  sIdProveedor = :sIdProveedor, '
      '  sIdCompania = :sIdCompania, '
      '  sRFC = :sRFC, '
      '  sRazonSocial = :sRazonSocial, '
      '  sDomicilio = :sDomicilio, '
      '  sCiudad = :sCiudad, '
      '  sCP = :sCP, '
      '  sEstado = :sEstado, '
      '  sTelefono = :sTelefono, '
      '  dImporteTotal = :dImporteTotal, '
      '  dImporteSubTotal = :dImporteSubTotal, '
      '  lComprobado = :lComprobado, '
      '  sStatus = :sStatus, '
      '  mDescripcion = :mDescripcion, '
      '  dIva = :dIva, '
      '  dIva_Porcentaje = :dIva_Porcentaje, '
      '  lAplicaiva = :lAplicaiva, '
      '  sPoliza = :sPoliza, '
      '  dFechaFactura = :dFechaFactura, '
      '  dFechaRecepcion = :dFechaRecepcion,'
      '  iIdStatus = :iIdStatus, '
      '  sTipoPago = :sTipoPago, '
      '  sFormaPago = :sFormaPago, '
      '  sNumeroDeCuenta = :sNumeroDeCuenta, '
      '  sNumeroPedido = :sNumeroPedido, '
      '  iImprimeProveedor = :iImprimeProveedor, '
      '  sMes = :sMes, '
      '  lAplicaPagoParcial = :lAplicaPagoParcial,'
      '  dParcialidad = :dParcialidad, '
      '  sProyecto = :sProyecto, '
      '  CFDI_sTipoDocumento = :CFDI_sTipoDocumento, '
      '  CFDI_sUUID = :CFDI_sUUID, '
      '  CFDI_dFechaEmision = :CFDI_dFechaEmision, '
      '  CFDI_dFechaTimbrado = :CFDI_dFechaTimbrado, '
      '  CFDI_sSelloCFD = :CFDI_sSelloCFD,'
      '  CFDI_sSelloSAT = :CFDI_sSelloSAT, '
      '  CFDI_sCertificadoCFD = :CFDI_sCertificadoCFD, '
      '  CFDI_sCertificadoSAT =:CFDI_sCertificadoSAT, '
      '  CFDI_sCadenaOriginal = :CFDI_sCadenaOriginal, '
      '  CFDI_bbCode = :CFDI_bbCode, '
      '  CFDI_sEstado = :CFDI_sEstado,'
      '  CFDI_sRegimenFiscal = :CFDI_sRegimenFiscal, '
      '  CFDI_sLugarExpedicion = :CFDI_sLugarExpedicion, '
      '  CFDI_sFormaDePago = :CFDI_sFormaDePago, '
      '  CFDI_sMetodoDePago = :CFDI_sMetodoDePago, '
      '  CFDI_sTipoComprobante = :CFDI_sTipoComprobante,'
      '  sUsuario = :sUsuario, '
      '  iEjercicio = :iEjercicio, '
      '  iIdTipoMoneda = :iIdTipoMoneda, '
      '  iIdPrecioMoneda = :iIdPrecioMoneda,'
      '  lNotaCredito =:lNotaCredito '
      'WHERE iIdFolio = :iIdFolio')
    UseSequenceFieldForRefreshSQL = False
    Left = 151
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dIdFecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sTipoMovimiento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdArea'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdNumeroCuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNumeroOrden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sReferencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdProveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdCompania'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sRFC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sRazonSocial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sDomicilio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sCiudad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEstado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sTelefono'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dImporteTotal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dImporteSubTotal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lComprobado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sStatus'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mDescripcion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dIva'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dIva_Porcentaje'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lAplicaiva'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sPoliza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dFechaFactura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dFechaRecepcion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdStatus'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sTipoPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sFormaPago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNumeroDeCuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNumeroPedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iImprimeProveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sMes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lAplicaPagoParcial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dParcialidad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sProyecto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sTipoDocumento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sUUID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_dFechaEmision'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_dFechaTimbrado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sSelloCFD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sSelloSAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sCertificadoCFD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sCertificadoSAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sCadenaOriginal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_bbCode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sEstado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sRegimenFiscal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sLugarExpedicion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sFormaDePago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sMetodoDePago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFDI_sTipoComprobante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sUsuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iEjercicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdTipoMoneda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdPrecioMoneda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lNotaCredito'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdFolio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iFolio'
        ParamType = ptUnknown
      end>
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxbrmngr1
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
    UseOwnFont = False
    Left = 8
    Top = 416
  end
  object ZUzqAddendaPemex: TZUpdateSQL
    DeleteSQL.Strings = (
      '')
    InsertSQL.Strings = (
      'INSERT INTO addenda_pemex_pep(iId, '
      '  iId_Factura,'
      '  sCOPADE,'
      '  sContrato,'
      '  sOSurtimiento,'
      '  sNEstimacion,'
      '  sNAcreedor,'
      '  sEntrada,'
      '  sVURegion,'
      '  sFichaE,'
      '  sFichaF,'
      '  sMoneda,'
      '  sEjercicio) '
      'Values(:iId, '
      '  :iId_Factura,'
      '  :sCOPADE,'
      '  :sContrato,'
      '  :sOSurtimiento,'
      '  :sNEstimacion,'
      '  :sNAcreedor,'
      '  :sEntrada,'
      '  sVURegion,'
      '  :sFichaE,'
      '  :sFichaF,'
      '  :sMoneda,'
      '  :sEjercicio)')
    ModifySQL.Strings = (
      'UPDATE addenda_pemex_pep'
      'SET '
      '  sCOPADE = :sCOPADE,'
      '  sContrato = :sContrato,'
      '  sOSurtimiento = :sOSurtimiento,'
      '  sNEstimacion = :sNEstimacion,'
      '  sNAcreedor = :sNAcreedor,'
      '  sEntrada = :sEntrada,'
      '  sVURegion = :sVURegion,'
      '  sFichaE = :sFichaE,'
      '  sFichaF = :sFichaF,'
      '  sMoneda = :sMoneda,'
      '  sEjercicio = :sEjercicio'
      'WHERE iId_Factura= :iId_Factura')
    UseSequenceFieldForRefreshSQL = False
    Left = 152
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sCOPADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sOSurtimiento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNEstimacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNAcreedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEntrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sVURegion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sFichaE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sFichaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sMoneda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEjercicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iId_Factura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iId'
        ParamType = ptUnknown
      end>
  end
  object FormaPago: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sIdFormaPago, sDescripcion as Descripcion  from formas_pa' +
        'go')
    Params = <>
    Left = 282
    Top = 282
  end
  object ds_FormaPago: TDataSource
    AutoEdit = False
    DataSet = FormaPago
    Left = 253
    Top = 282
  end
  object IconosBarra: TcxImageList
    FormatVersion = 1
    DesignInfo = 25165832
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FCF8F700DFC1B500C1897200AD634500A4513000A24E2C00A95C
          3C00B97A6000D4AD9D00F8F1EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00BF866E00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A5533200EDDCD500FFFFFF00FFFFFF00FFFFFF00F6EE
          EA00B9795F00A24E2C00A24E2C00A24E2C00A24E2C00AB5E3F00B36D5100A34F
          2D00A24E2C00A24E2C00A24E2C00AE644600EDDCD500FFFFFF00FFFFFF00CB9B
          8800A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00E1C6BB00FFFFFF00B36D
          5100A24E2C00A24E2C00A24E2C00A24E2C00A5533200F8F1EF00F8F1EE00A95C
          3C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00E5CDC400FFFFFF00B675
          5A00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00D4AD9D00D0A59300A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00E5CDC400FFFFFF00B675
          5A00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00B97A6000B0694C00A24E
          2C00A24E2C00AB5E3F00B6755A00B6755A00B6755A00EBD8D100FFFFFF00C693
          7E00B6755A00B6755A00B36D5100A34F2D00A24E2C00A95C3C00A24E2C00A24E
          2C00A24E2C00E1C6BB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00B36D5100A24E2C00A24E2C00A5543300A24E
          2C00A24E2C00CA9A8700E5CDC400E5CDC400E5CDC400F8F1EF00FFFFFF00EBD8
          D100E5CDC400E5CDC400E1C6BB00AB5E3F00A24E2C00A4513000B8785E00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00E5CDC400FFFFFF00B675
          5A00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00AD634500E0C4B800A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00E5CDC400FFFFFF00B675
          5A00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00C18A7300FFFFFF00B069
          4C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00E5CDC400FFFFFF00B675
          5A00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00DFC1B500FFFFFF00DCBC
          AF00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00CA9A8700E1C6BB00AB5E
          3F00A24E2C00A24E2C00A24E2C00A24E2C00BF866E00FCF8F700FFFFFF00FFFF
          FF00CFA39200A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00B9795F00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00DCBCAF00B0694C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A95C3C00CB9B8800F6EEEA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E0C4B800B8785E00A5543300A24E2C00B069
          4C00D0A59300F8F1EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000AA5E3F00AC61
          4300BD806800CD9F8C00DDBDB100EDDCD500FDFAF900FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1897200A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A34F2E00BE836B00E1C7BC00FEFD
          FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2C6BB00A24E
          2C00A24E2C00AB5E3F00D6B1A200CB9C8800BB7D6400AA5C3D00A24E2C00BA7A
          6100F5ECE800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFCFC00A452
          3000A24E2C00E1C5BA00FFFFFF00FFFFFF00FFFFFF00E6D0C700A24E2C00A24E
          2C00A7583800F5ECE800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B46F
          5400A95C3C00FFFDFD00FFFFFF00FEFEFC00FFFFFF00FDFBFA00B6735900A24E
          2C00A24E2C00B7765C00F5ECE800FFFFFF00FFFFFF00FFFFFF00FFFFFF00C48E
          7800A24E2C00F4EAE600FFFFFF00E8D9A700E7D7A400FFFEFD00F2E5E000A34F
          2D00A24E2C00A24E2C00A7583800F5ECE800FFFFFF00FFFFFF00FFFFFF00D4AC
          9C00A24E2C00E4CBC100FFFFFF00F9F5E800C8A42D00CFAF4800ECDFB600D8B4
          A500A34F2D00A24E2C00A24E2C00B7765C00F5ECE800FFFFFF00FFFFFF00E4CB
          C100A24E2C00B9795F00F6EEEA00FFFFFF00E7D7A400C49E2000C49E2000ECDF
          B600DEC0B400A34F2D00A24E2C00A24E2C00A7583800F7EFEC00FFFFFF00F7F0
          ED00A95A3B00A24E2C00A3502E00C0866F00EEDFD800DCC57900C49E2000CAA7
          3400ECDFB600D8B4A500A34F2D00A24E2C00A24E2C00CB9B8800FFFFFF00FFFF
          FF00ECDCD500A5533200A24E2C00A24E2C00A34F2E00EEDFD700D6BB6300C49E
          2000C49E2000ECDFB600DEC0B400A34F2D00A24E2C00AE644600FFFFFF00FFFF
          FF00FFFFFF00DFC3B700A5533200A24E2C00A24E2C00B26C4F00EEDFD700DCC5
          7900C49E2000CAA73400ECDFB600D8B4A500A34F2D00A3502F00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00EBD9D100A5533200A24E2C00A24E2C00A34F2E00EEDF
          D700D6BB6300C49E2000C49E2000ECDFB600DEC0B400A5533200FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00DFC3B700A5533200A24E2C00A24E2C00B26C
          4F00EEDFD700DCC57900C49E2000CAA73400ECDFB600E4CCC100FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBD9D100A5533200A24E2C00A24E
          2C00A34F2E00EEDFD700D6BB6300C49E2000C49E2000EFE4C200FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0C5B900AA5C3D00A24E
          2C00A24E2C00B26C4F00EEDFD700DDC87F00DEC88000FDFBF500FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFBFA00CA99
          8600A6563600A4523100BA7B6200FCF9F800FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FCF8F700DFC1B500C1897200AD634500A4513000A24E2C00A95C
          3C00B97A6000D4AD9D00F8F1EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00BF866E00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A5533200EDDCD500FFFFFF00FFFFFF00FFFFFF00F6EE
          EA00B9795F00A24E2C00A24E2C00A7583800A4523100A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00AE644600EDDCD500FFFFFF00FFFFFF00CB9B
          8800A24E2C00A24E2C00A24E2C00E1C6BB00E9D6CE00A3502F00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A5533200F8F1EF00F8F1EE00A95C
          3C00A24E2C00A34F2D00CB9C8900FEFDFC00FFFFFF00D4AC9C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00D4AD9D00D0A59300A24E
          2C00A24E2C00B97A6000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0877000A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00B97A6000B0694C00A24E
          2C00A24E2C00E8D1C900FFFFFF00D2AA9900C6937E00FAF6F400FDFCFB00BE83
          6B00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A95C3C00A24E2C00A24E
          2C00A24E2C00E6D0C700EEDED800A4512F00A24E2C00CFA49300FFFFFF00F6ED
          EA00A5543300A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A5543300A24E
          2C00A24E2C00A5543300A4512F00A24E2C00A24E2C00A7563600DDBDB000FFFF
          FF00F0E2DC00AE654700A24E2C00A24E2C00A24E2C00A4513000B8785E00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00E6CF
          C600FFFFFF00E1C5BA00A24E2C00A24E2C00A24E2C00AD634500E0C4B800A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00B16A
          4D00F4E9E500FFFEFE00D7B2A300A5543300A24E2C00C18A7300FFFFFF00B069
          4C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A95A3B00F9F2F000FFFFFF00C28B7500A24E2C00DFC1B500FFFFFF00DCBC
          AF00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00BF856D00DFC2B600B0684B00C0866F00FCF8F700FFFFFF00FFFF
          FF00CFA39200A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00B9795F00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00DCBCAF00B0694C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A95C3C00CB9B8800F6EEEA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E0C4B800B8785E00A5543300A24E2C00B069
          4C00D0A59300F8F1EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000CEAF4600C49E
          2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E
          2000C49E2000C49E2000C6A12700F4EDD500FFFFFF00FFFFFF00C49E2000C49E
          2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E
          2000C49E2000C49E2000C49E2000EFE4C000FFFFFF00FFFFFF00C49E2000C49E
          2000F0E6C500FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FBF9F000CEAD4300C49E2000EFE4C000FFFFFF00FFFFFF00C49E2000C49E
          2000FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F5EFDA00E3D19400F4ECD300FFFFFF00FFFFFF00C49E2000C49E
          2000FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCBCAE00C5917B00C591
          7B00C5907A00C8968100D6B0A100F2E6E100FFFFFF00FFFFFF00C49E2000C49E
          2000FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA7C6200A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A7573700EBD8D100FFFFFF00C49E2000C49E
          2000FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECDAD300D9B7A900D9B7
          A900D9B7A900D4AC9B00BB7D6400A34F2D00A4523100E7D1C800C49E2000C49E
          2000FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E8D9A800FDFCF800C48F7A00A24E2C00BF866E00C49E2000C49E
          2000E2CF9000EFE4C000EFE4C000EFE4C000EFE4C000EFE4C000EFE4C000EFE4
          C000ECE0B700CAA83500CCAA3C00E7D3C200A24E2C00AB5F4000C49E2000C49E
          2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E2000C49E
          2000C49E2000C49E2000C49E2000ECDEBA00A24E2C00A24E2C00DDC77E00D2B4
          5200D1B35100D1B35100D1B35100D1B35100D1B35100D1B35100D1B35100D1B3
          5100D1B35100D1B35100D5B95E00EAD9C400A24E2C00A95A3B00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00CFA29000A24E2C00BB7D6400FFFFFF00FFFF
          FF00FFFFFF00FFFEFE00EBD9D200C7947F00A5543300D6B0A100E5CDC400E5CD
          C400E5CDC400E0C3B700C7947F00A5543300A24E2C00E0C4B800FFFFFF00FFFF
          FF00FFFFFF00CC9D8B00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A34F2D00D7B2A300FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E4CBC100BB7D6400A4523000A24E2C00B16A4D00B6755A00B675
          5A00B6755A00BC7F6600CA9A8600E9D4CB00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E5CEC500A85A3A00ECDAD300FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00F9F4F300D5B2AA00B87E7000A45A48009E4F3B009E4F3B00A155
          4200B1706000CA9F9500F3E9E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00B47666009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B00E4CEC800FFFFFF00FFFFFF00FFFFFF00F2E7
          E400B17060009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B00A8604E00E1C8C200FFFFFF00FFFFFF00C391
          85009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B00F3E9E700F0E4E100A155
          42009E4F3B009E4F3B00BF8C7E00E5D1CB00B17060009E4F3B009E4F3B00A860
          4E00DEC3BC00D6B5AC009E4F3B009E4F3B009E4F3B00CB9F9500C39185009E4F
          3B009E4F3B009E4F3B00BC867800FFFFFF00FFFFFF00B17060009E4F3B00E1C8
          C200FFFFFF00DEC3BC009E4F3B009E4F3B009E4F3B00B1706000A45A48009E4F
          3B009E4F3B009E4F3B009E4F3B00C99C9100FFFFFF00F0E4E100E1C8C200FFFF
          FF00E1C8C200A8604E009E4F3B009E4F3B009E4F3B00A15542009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00C3918500FFFFFF00FFFFFF00E1C8
          C2009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B00A8604E00E1C8C200FFFFFF00FFFFFF00F0E4
          E100B17060009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B00AA6554009E4F
          3B009E4F3B009E4F3B009E4F3B00E1C8C200FFFFFF00E1C8C200C3918500FFFF
          FF00FFFFFF00B17060009E4F3B009E4F3B009E4F3B00A45A4800D2ADA4009E4F
          3B009E4F3B009E4F3B00CBA29700FFFFFF00E1C8C200A8604E009E4F3B00C99C
          9100FFFFFF00E6D1CB009E4F3B009E4F3B009E4F3B00B97E7000FFFFFF00A45A
          48009E4F3B009E4F3B00A45A4700CBA297009E4F3B009E4F3B009E4F3B009E4F
          3B00BC867800BF8C7E009E4F3B009E4F3B009E4F3B00D5B2AA00FFFFFF00D4B0
          A7009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00B4766600F9F4F300FFFFFF00FFFF
          FF00C39185009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B00B1706000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D4B0A700A45A48009E4F3B009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B00A1554200C3918500F2E7E400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00D2ADA400AA6554009E4F3B009E4F3B00A45A
          4800C3918500F0E4E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C49E2000CFB04800D3B65800D3B65800D3B65800D3B6
          5800D3B65800C8A42E00FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C49E2000EFE4C000F9F4F200F9F4F200F9F4F200F9F4
          F200FFFEFE00D3B65800FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C49E2000EFE4C000B97A6100B97A6100B97A6100B97A
          6100FBF7F500D3B65800FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAF6
          F400F9F4F200F9F4F200C49E2000EEE3BF00F9F4F200F9F4F200F9F4F200F9F4
          F200FFFEFE00D2B55600F6EEE500F9F4F200F9F4F200FDFBFA00B16B4E00A24E
          2C00A24E2C00A24E2C00C49E2000E3CEA600B97A6100B97A6100B97A6100B97A
          6100FBF7F500C7A03D00A4532B00A24E2C00A24E2C00AA5D3D00A24E2C00A24E
          2C00A24E2C00A24E2C00C49E2000DFC89F00F9F4F200F9F4F200F9F4F200F9F4
          F200F9F4F200C69F3C00A4532B00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A7583700AE654800A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00EDDDD600F6EEEB00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00CDA08D00D8B5A700A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E
          2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00A24E2C00C9988500BA7B
          6100B97A6100B97A6100B97A6100B97A6100B97A6100B97A6100B97A6100B97A
          6100B97A6100B97A6100B97A6100B97A6100B97A6100C28A7300FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FBF9F100FBF9F100FBF9F100FBF9F100FBF9F100FBF9
          F100FBF9F100FBF9F100FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C49E2000C49E2000C49E2000C49E2000C49E2000C49E
          2000C49E2000C49E2000FBF9F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C49E2000C49E2000C49E2000C49E2000C49E2000C49E
          2000C49E2000C49E2000FBF9F100FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00EAD9D400BC867800A45A48009E4F3B00B376
          6600DABDB500FCFAF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00EAD9D500B67B6C00A0523E009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B00AC685700D8B8B000FEFDFC00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F9F4F300A7604E009E4F3B009E4F3B00B67B6C00DBBDB600E7D3CE00C291
          85009E4F3B009E4F3B009E4F3B00D8B8B000FFFFFF00FFFFFF00FFFFFF00F6EF
          ED00AA6554009E4F3B00A7604E00E4CEC800FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F3E9E700C3928500A7604E00DEC3BC00FFFFFF00FFFFFF00FFFFFF00D5B2
          AA009E4F3B00A45A4800F9F4F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9817200A963
          51009E4F3B00A45A4800B67B6C00EDDFDB00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FCFAF900C3918500E7D3CE00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B00A45A4700FCFAF900FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C99C91009E4F3B009E4F3B00F9F4F300FFFFFF00B77C
          6D009E4F3B00A45A4800EAD9D400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E3CBC6009E4F3B009E4F3B009E4F3B00CA9F9400FFFFFF00E4CE
          C8009E4F3B00CCA29700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00B67B6C009E4F3B009E4F3B009E4F3B00A1554100FFFFFF00FEFD
          FC00DEC3BC00F6EFED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E4CEC800AD6B5A009E4F3B00A45A4800DCC0B900FFFFFF00FFFF
          FF00FFFFFF00CCA29700CEA79D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E1C8C2009E4F3B009E4F3B00CEA79D00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A35845009E4F3B00BE897C00E4CEC800F6EFED00F9F4F300ECDC
          D800CFA79D00A65D4B009E4F3B00B87E7000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C99C91009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F
          3B009E4F3B009E4F3B00A45A4700F6EFED00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FEFDFC00E1C8C200BE897C00A45A48009E4F3B009E4F3B00A155
          4200B4766600D5B2AA00FCFAF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FEFDFC00EDDEDA00D6B5AD00F0E4E100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFA
          F900DABDB500AD6B5A009E4F3B009E4F3B00CEA79D00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D3CE00A65D
          4B009E4F3B009E4F3B009E4F3B009E4F3B00B8836100D1B68600D1B68600D1B6
          8600D5BC9000F4EDE100FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00C79B8900EFE6D700EFE6D700E4D4
          B900C19D5E00E8DBC300FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00FFFFFF00FFFFFF00FFFF
          FF00C19D5E00E8DBC300FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00FFFFFF00FFFFFF00FFFF
          FF00C19D5E00E8DBC300FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00FFFFFF00F3E9E700F3E9
          E700DCC5AA00EBDCD000B9817200C99C9100EDDEDA00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00CCA297009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B00C6978B00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00CB9F95009E4F3B009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B009E4F3B00B77B6C00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF009E4F3B00AA655400E7D3CE00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00FFFFFF00FFFFFF00FFFF
          FF00C9AA7200EBE0CB00F0E4E100F9F4F300FFFFFF00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00FFFFFF00FFFFFF00FFFF
          FF00C19D5E00E8DBC300FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00CEA79D00FFFFFF00FFFFFF00FFFF
          FF00C19D5E00D0B48400FBF9F500FFFFFF00FFFFFF00FFFFFF00CEA79D009E4F
          3B009E4F3B009E4F3B009E4F3B009E4F3B00DABDB500FFFFFF00FFFFFF00FFFF
          FF00C19D5E00C19D5E00EFE6D700FFFFFF00FFFFFF00FFFFFF00CEA79D009E4F
          3B009E4F3B00A35A4000B67E6300CEAA9400F0E7D700F0E7D700F0E7D700EADE
          C800C19D5E00C19D5E00EFE6D700FFFFFF00FFFFFF00FFFFFF00E1C8C200AA6A
          4700BA8E5700C19D5E00C19D5E00C19D5E00C19D5E00C19D5E00C19D5E00C19D
          5E00C19D5E00C19D5E00F3EDE100FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00050100000D020100150302011C060402261F13075F20140761201407611F13
          065F060402260302011C020100150100000D0000000400000000000000000000
          000000000002000000040000000606040118AB601AFFAB601AFFAB601AFFAB60
          1AFF070401180000000600000004000000020000000000000000000000000000
          00000000000000000000000000000503000FB26921FFB26921FFB26921FFB269
          21FF0503010F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000503010FBA7328FFBA7328FFBA7328FFBA73
          28FF0603010F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000503010FC27D2FFFC27D2FFFC27D2FFFC27D
          2FFF0604010F0000000000000000000000000000000000000000030200090D09
          041F0D09041F0D09041F0D09041F1C12072DCA8938FFCA8938FFCA8938FFCA89
          38FF1D13082D0D09041F0D09041F0D09041F0D09041F0302000930220F4FD294
          41FFD29441FFD29441FFD29441FFD29441FFD29441FFD29441FFD29441FFD294
          41FFD29441FFD29441FFD29441FFD29441FFD29441FF3425104F3224114FDEAC
          63FFDCA659FFDAA250FFD99F4BFFD99F4AFFD99F4AFFD99F4AFFD99F4AFFD99F
          4AFFD99F4AFFD99F4AFFD99F4AFFD99F4AFFD99F4AFF3627124F3326134FE7BF
          83FFE7BD7EFFE6BB79FFE5B874FFE3B56DFFE2B166FFE1AF61FFE0AD5EFFE0AC
          5BFFE0AB59FFDFAA58FFDFA957FFDFA956FFDFA955FF372A154F3529164FEBC7
          8DFFEBC88EFFEBC78DFFEAC487FFE9C181FFEAC386FFEAC385FFE9C181FFE8BD
          79FFE6B971FFE6B970FFE7BA72FFE6B76CFFE5B568FF392C184F0D0A05165D48
          236F62583A6F66655B6F6154346F69512978EFCE96FFF1D3A0FFF0D19CFFEDC9
          8DFF695129785E4B276F635A426F5F4E2B6F5D46216F0E0B0516000000000000
          00000000000000000000000000000605030FF3D9ABFFF5E0BAFFF5DEB5FFF3D5
          A2FF0706030F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000705030FF7E3BEFFF9EBD0FFF9E9CCFFF7E0
          B6FF0706040F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000706040FFAEACCFFFCF3E1FFFCF1DEFFF9E8
          C6FF0806040F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000706040FFBEDD2FFFDF5E6FFFDF5E4FFFBEC
          CEFF0807040F0000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020106977944A59A7B44A89A7B44A89879
          44A6030201060000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0080010000C0030000F81F0000F81F0000F81F000000000000000000000000
          0000000000000000000000000000F81F0000F81F0000F81F0000F81F0000F81F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000914922BFC4642EFFC7662FFFCA692FFFCD6B
          30FF9B5225BF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C1622DFFF4BD86FFEE9C4EFFEE9640FFF19C
          46FFD06D31FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C1612DFFF4BD87FFE8934EFFE98F40FFF29E
          48FFCF6D31FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C0612DFFF4BD87FFE68F4DFFE88B40FFF29E
          47FFCE6C30FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C0602CFFF4BC86FFE68E4CFFE7893EFFF19C
          45FFCD6B30FF000000000000000000000000000000000000000084401EBFB357
          29FFB6592AFFB95B2AFFBC5D2BFFBE5F2CFFF3BC86FFE48B4AFFE5863CFFEF98
          42FFCB692FFFCD6B30FFCE6C30FFCF6D31FFD06D31FFB65F2BDFAF5428FFF0B9
          8AFFE69352FFE3873FFFE38235FFE38231FFE99348FFE07D39FFE38138FFED94
          3EFFEF9942FFF19C45FFF29E47FFF29E48FFF19D46FFCD6B30FFAE5327FFF0B9
          8AFFDD834BFFD87238FFDA7539FFDB7739FFDC7635FFDB7332FFDE7734FFE381
          38FFE5863CFFE7893FFFE88C40FFEA8F41FFEE9640FFCA692FFFAD5227FFF0B9
          8BFFDF8C59FFDA7D4AFFDC814BFFDE844DFFE0874EFFDD7C41FFDE7D3FFFE286
          43FFE69153FFE79253FFE89454FFEA9855FFEFA156FFC7662FFFAC5127FFEFB9
          8BFFF0B98BFFF1BA8AFFF1BB8BFFF1BC8BFFF2BD8BFFE0874FFFDE7D3EFFEB9D
          56FFF4C08DFFF5C18DFFF5C18DFFF5C18DFFF5C18DFFC4642EFF7F3C1DBFAD51
          27FFAF5327FFB15528FFB35729FFB65929FFF1BC8BFFDE844DFFDC793CFFE68E
          43FFBE5F2CFFC0602CFFC0612DFFC1612DFFC1622DFF7E401DA6000000000000
          0000000000000000000000000000B35729FFF1BB8BFFDC814CFFDA753AFFE58B
          41FFBC5D2BFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B15528FFF1BA8BFFDB7E4AFFD87239FFE389
          41FFB95B2AFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AF5327FFF0BA8BFFDF8C5AFFDD834CFFE694
          52FFB6592AFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AD5127FFF0BA8BFFF0BA8BFFF0BA8BFFF0BA
          8BFFB35729FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000007F3C1DBFAC5127FFAD5227FFAE5327FFAF54
          28FF84401EBF0000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000F81F0000F81F0000F81F0000F81F000000000000000000000000
          0000000000000000000000000000F81F0000F81F0000F81F0000F81F0000F81F
          0000}
      end>
  end
end
