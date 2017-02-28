object frm_Companias: Tfrm_Companias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Catalogo de Clientes'
  ClientHeight = 517
  ClientWidth = 1276
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    1276
    517)
  PixelsPerInch = 96
  TextHeight = 15
  object Datos: TcxPageControl
    Left = 84
    Top = 5
    Width = 1185
    Height = 504
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.ShowFrame = True
    ClientRectBottom = 502
    ClientRectLeft = 2
    ClientRectRight = 1183
    ClientRectTop = 2
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      DesignSize = (
        1181
        500)
      object cxgrd1: TcxGrid
        Left = -3
        Top = 80
        Width = 1176
        Height = 454
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object dbgrd_catClientes: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsCompanias
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'De un clic para definir el filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsBehavior.CellHints = True
          OptionsBehavior.IncSearch = True
          object ID_catClientessIdCompania1: TcxGridDBColumn
            DataBinding.FieldName = 'sIdCompania'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 83
          end
          object ID_catClientessRFC1: TcxGridDBColumn
            DataBinding.FieldName = 'sRFC'
            Options.Editing = False
          end
          object ID_catClientessRazonSocial1: TcxGridDBColumn
            DataBinding.FieldName = 'sRazonSocial'
            Options.Editing = False
            Width = 342
          end
          object ID_catClientessDomicilio1: TcxGridDBColumn
            DataBinding.FieldName = 'sDomicilio'
            Options.Editing = False
            Width = 521
          end
          object ID_catClientessCP1: TcxGridDBColumn
            DataBinding.FieldName = 'sCP'
            Options.Editing = False
            Width = 45
          end
          object ID_catClientessEstado1: TcxGridDBColumn
            DataBinding.FieldName = 'sEstado'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Width = 128
          end
          object ID_catClientessTelefono1: TcxGridDBColumn
            DataBinding.FieldName = 'sTelefono'
            Options.Editing = False
            Width = 204
          end
          object ID_catClientesdMontoCredito1: TcxGridDBColumn
            DataBinding.FieldName = 'dMontoCredito'
            Options.Editing = False
          end
          object ID_catClienteslStatus1: TcxGridDBColumn
            DataBinding.FieldName = 'lStatus'
            Options.Editing = False
          end
          object ID_catClientessNumeroProveedor1: TcxGridDBColumn
            DataBinding.FieldName = 'sNumeroProveedor'
            Options.Editing = False
            Width = 100
          end
          object ID_catClientessMail1: TcxGridDBColumn
            DataBinding.FieldName = 'sMail'
            Options.Editing = False
            Width = 174
          end
          object ID_catClientessTelefono21: TcxGridDBColumn
            DataBinding.FieldName = 'sTelefono2'
            Options.Editing = False
            Width = 148
          end
          object ID_catClientessContacto1: TcxGridDBColumn
            DataBinding.FieldName = 'sContacto'
            Options.Editing = False
            Width = 152
          end
          object dbgrd_catClientessTipo: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'lTipo'
            Width = 100
          end
          object dbgrd_catClientesColumn1: TcxGridDBColumn
            Caption = 'Certificado (.cer)'
            DataBinding.FieldName = 'sCertificados_Certificado'
            Width = 150
          end
          object dbgrd_catClientesColumn2: TcxGridDBColumn
            Caption = 'Llave (.key)'
            DataBinding.FieldName = 'sCertificados_Llave'
            Width = 150
          end
          object dbgrd_catClientesColumn3: TcxGridDBColumn
            Caption = 'Contrase'#241'a'
            DataBinding.FieldName = 'sCertificados_Contrasena'
            Width = 150
          end
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = dbgrd_catClientes
        end
      end
      object lbVerTipos: TcxLabel
        Left = 10
        Top = 10
        Caption = 'Filtrar por &tipo'
        FocusControl = TiposClientes
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object TiposClientes: TcxComboBox
        Left = 95
        Top = 8
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.OnCloseUp = TiposClientesPropertiesCloseUp
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        OnClick = TiposClientesClick
        Width = 145
      end
      object pnlImprimirCompanias: TPanel
        Left = 804
        Top = 337
        Width = 213
        Height = 190
        TabOrder = 2
        Visible = False
        object NxHeaderPanel1: TNxHeaderPanel
          Left = 1
          Top = 1
          Width = 211
          Height = 188
          Align = alClient
          Caption = 'Seleccione los clientes que desea imprimir'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Arial'
          HeaderFont.Style = []
          HeaderSize = 25
          ParentHeaderFont = False
          TabOrder = 0
          FullWidth = 211
          object W7Panel1: TW7Panel
            AlignWithMargins = True
            Left = 9
            Top = 129
            Width = 192
            Height = 31
            Margins.Left = 0
            Margins.Right = 0
            Margins.Bottom = 2
            Version = '1.0.1.2'
            Caption = 'W7Panel1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            SolidColor = clBlack
            OuterBorderColor = clWhite
            InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
            OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
            Style = wpsCustom
            FillStyle = pfsGradient
            ColorA = clWhite
            ColorC = clBlack
            ColorD = clBlack
            Align = alBottom
            DoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            object btnDistribucionImprimir: TcxButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 25
              Align = alClient
              Caption = 'Imprimir'
              TabOrder = 0
              OnClick = btnDistribucionImprimirClick
            end
            object btnDistribucionCancelar: TcxButton
              AlignWithMargins = True
              Left = 103
              Top = 3
              Width = 86
              Height = 25
              Align = alRight
              Caption = 'Salir'
              ModalResult = 1
              TabOrder = 1
            end
          end
          object prgImprimirComp: TAdvSmoothProgressBar
            AlignWithMargins = True
            Left = 12
            Top = 162
            Width = 186
            Height = 17
            Margins.Top = 0
            Step = 10.000000000000000000
            Maximum = 100.000000000000000000
            Appearance.Shadows = False
            Appearance.BackGroundFill.Color = 16643823
            Appearance.BackGroundFill.ColorTo = 15784647
            Appearance.BackGroundFill.ColorMirror = clNone
            Appearance.BackGroundFill.ColorMirrorTo = clNone
            Appearance.BackGroundFill.GradientType = gtVertical
            Appearance.BackGroundFill.GradientMirrorType = gtSolid
            Appearance.BackGroundFill.BorderColor = 13087391
            Appearance.BackGroundFill.Rounding = 0
            Appearance.BackGroundFill.ShadowOffset = 0
            Appearance.BackGroundFill.Glow = gmNone
            Appearance.ProgressFill.Color = 15588301
            Appearance.ProgressFill.ColorTo = clNone
            Appearance.ProgressFill.ColorMirror = clNone
            Appearance.ProgressFill.ColorMirrorTo = clNone
            Appearance.ProgressFill.GradientType = gtVertical
            Appearance.ProgressFill.GradientMirrorType = gtVertical
            Appearance.ProgressFill.BorderColor = 5978398
            Appearance.ProgressFill.Rounding = 0
            Appearance.ProgressFill.ShadowOffset = 0
            Appearance.ProgressFill.Glow = gmNone
            Appearance.Font.Charset = DEFAULT_CHARSET
            Appearance.Font.Color = clWindowText
            Appearance.Font.Height = -11
            Appearance.Font.Name = 'Tahoma'
            Appearance.Font.Style = []
            Appearance.ProgressFont.Charset = DEFAULT_CHARSET
            Appearance.ProgressFont.Color = clWindowText
            Appearance.ProgressFont.Height = -11
            Appearance.ProgressFont.Name = 'Tahoma'
            Appearance.ProgressFont.Style = []
            Appearance.ValueFormat = '%.0f%%'
            Version = '1.7.0.0'
            Align = alBottom
          end
          object chklstCompanias: TsCheckListBox
            Left = 9
            Top = 30
            Width = 176
            Height = 96
            Align = alLeft
            BorderStyle = bsSingle
            ItemHeight = 16
            TabOrder = 3
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'EDIT'
          end
          object grpchkImprimir: TcxRadioGroup
            AlignWithMargins = True
            Left = 72
            Top = 33
            Margins.Bottom = 150
            Align = alRight
            Anchors = [akTop, akRight]
            Caption = 'Tipo de Impresion'
            ParentFont = False
            Properties.Items = <
              item
                Caption = 'Excel'
              end
              item
                Caption = 'Pdf'
              end>
            Properties.ReadOnly = False
            Style.Shadow = False
            TabOrder = 2
            Height = 0
            Width = 126
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      ImageIndex = 1
      object lbl16: TLabel
        Left = 16
        Top = 25
        Width = 76
        Height = 15
        Caption = 'Compa'#241'ia(Id)'
        FocusControl = dbIdCompania
      end
      object lbl17: TLabel
        Left = 16
        Top = 53
        Width = 25
        Height = 15
        Caption = 'RFC'
        FocusControl = dbRFC
      end
      object lbl18: TLabel
        Left = 16
        Top = 76
        Width = 35
        Height = 30
        Caption = 'Raz'#243'n'#13#10'Social'
        FocusControl = dbRazon
      end
      object lbl19: TLabel
        Left = 16
        Top = 112
        Width = 52
        Height = 15
        Caption = 'Domicilio'
        FocusControl = dbDomicilio
      end
      object lbl20: TLabel
        Left = 16
        Top = 135
        Width = 45
        Height = 30
        Caption = 'Numero'#13#10'Exterior'
        FocusControl = dbNumExt
      end
      object lbl21: TLabel
        Left = 218
        Top = 136
        Width = 45
        Height = 30
        Caption = 'Numero'#13#10'Interior'
        FocusControl = dbNumInt
      end
      object lbl22: TLabel
        Left = 16
        Top = 174
        Width = 54
        Height = 15
        Caption = 'Localidad'
        FocusControl = dbLocalidad
      end
      object lbl23: TLabel
        Left = 16
        Top = 203
        Width = 52
        Height = 15
        Caption = 'Municipio'
        FocusControl = dbMunicipio
      end
      object lbl24: TLabel
        Left = 16
        Top = 233
        Width = 40
        Height = 15
        Caption = 'Ciudad'
        FocusControl = dbCuidad
      end
      object lbl25: TLabel
        Left = 16
        Top = 262
        Width = 39
        Height = 15
        Caption = 'Estado'
        FocusControl = dbEstado
      end
      object lbl26: TLabel
        Left = 218
        Top = 262
        Width = 17
        Height = 15
        Caption = 'CP'
        FocusControl = dbCP
      end
      object lbl27: TLabel
        Left = 16
        Top = 293
        Width = 43
        Height = 15
        Caption = 'Colonia'
        FocusControl = dbColonia
      end
      object lbl28: TLabel
        Left = 16
        Top = 322
        Width = 47
        Height = 15
        Caption = 'Tel'#233'fono'
        FocusControl = dbTelefono
      end
      object lbl29: TLabel
        Left = 16
        Top = 351
        Width = 57
        Height = 30
        Caption = 'Monto'#13#10'de Cr'#233'dito'
        FocusControl = dbMonto
      end
      object lbl30: TLabel
        Left = 480
        Top = 29
        Width = 62
        Height = 30
        Caption = 'N'#250'mero de'#13#10'Cliente'
        FocusControl = dbNumProv
      end
      object lbl31: TLabel
        Left = 480
        Top = 66
        Width = 38
        Height = 15
        Caption = 'Correo'
        FocusControl = dbCorreo
      end
      object lbl32: TLabel
        Left = 480
        Top = 95
        Width = 49
        Height = 15
        Caption = 'Contacto'
        FocusControl = dbContacto
      end
      object lbl33: TLabel
        Left = 480
        Top = 155
        Width = 57
        Height = 15
        Caption = 'Tel'#233'fono 2'
        FocusControl = dbTelefono2
      end
      object Label1: TLabel
        Left = 480
        Top = 122
        Width = 39
        Height = 15
        Caption = 'Puesto'
        FocusControl = dbPuesto
      end
      object lbStatus: TcxLabel
        Left = 480
        Top = 180
        Caption = '&Status'
        FocusControl = dbStatus
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        Transparent = True
      end
      object dbStatus: TcxDBComboBox
        Tag = 9
        Left = 552
        Top = 179
        DataBinding.DataField = 'lStatus'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ReadOnly = False
        Properties.Revertable = True
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 20
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 121
      end
      object dbIdCompania: TcxDBTextEdit
        Left = 96
        Top = 24
        DataBinding.DataField = 'sIdCompania'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 1
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        OnKeyPress = dbIdCompaniaKeyPress
        Width = 294
      end
      object dbRFC: TcxDBTextEdit
        Left = 96
        Top = 51
        DataBinding.DataField = 'sRFC'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 2
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        OnKeyPress = dbRFCKeyPress
        Width = 294
      end
      object dbRazon: TcxDBTextEdit
        Left = 96
        Top = 79
        DataBinding.DataField = 'sRazonSocial'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 3
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        OnKeyPress = dbRazonKeyPress
        Width = 294
      end
      object dbDomicilio: TcxDBTextEdit
        Left = 96
        Top = 110
        DataBinding.DataField = 'sDomicilio'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 4
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        OnKeyPress = dbDomicilioKeyPress
        Width = 294
      end
      object dbNumExt: TcxDBTextEdit
        Left = 96
        Top = 139
        DataBinding.DataField = 'sNumeroExterior'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 5
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        OnKeyPress = dbNumExtKeyPress
        Width = 116
      end
      object dbNumInt: TcxDBTextEdit
        Left = 269
        Top = 139
        DataBinding.DataField = 'sNumeroInterior'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 6
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        OnKeyPress = dbNumIntKeyPress
        Width = 121
      end
      object dbLocalidad: TcxDBTextEdit
        Left = 96
        Top = 171
        DataBinding.DataField = 'sLocalidad'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 7
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        OnKeyPress = dbLocalidadKeyPress
        Width = 294
      end
      object dbMunicipio: TcxDBTextEdit
        Left = 96
        Top = 200
        DataBinding.DataField = 'sMunicipio'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 8
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 294
      end
      object dbCuidad: TcxDBTextEdit
        Left = 96
        Top = 230
        DataBinding.DataField = 'sCiudad'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 9
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 294
      end
      object dbEstado: TcxDBTextEdit
        Left = 96
        Top = 259
        DataBinding.DataField = 'sEstado'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 10
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 105
      end
      object dbCP: TcxDBTextEdit
        Left = 252
        Top = 259
        DataBinding.DataField = 'sCP'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 11
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 138
      end
      object dbColonia: TcxDBTextEdit
        Left = 96
        Top = 290
        DataBinding.DataField = 'sColonia'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 12
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 294
      end
      object dbTelefono: TcxDBTextEdit
        Left = 96
        Top = 319
        DataBinding.DataField = 'sTelefono'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 13
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 294
      end
      object dbMonto: TcxDBCalcEdit
        Left = 96
        Top = 348
        DataBinding.DataField = 'dMontoCredito'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 14
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 167
      end
      object dbNumProv: TcxDBTextEdit
        Left = 552
        Top = 31
        DataBinding.DataField = 'sNumeroProveedor'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 15
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 209
      end
      object dbCorreo: TcxDBTextEdit
        Left = 552
        Top = 63
        DataBinding.DataField = 'sMail'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 16
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 209
      end
      object dbContacto: TcxDBTextEdit
        Left = 552
        Top = 92
        DataBinding.DataField = 'sContacto'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 17
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 209
      end
      object dbTelefono2: TcxDBTextEdit
        Left = 552
        Top = 151
        DataBinding.DataField = 'sTelefono2'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 19
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 153
      end
      object dbPuesto: TcxDBTextEdit
        Left = 552
        Top = 119
        DataBinding.DataField = 'sPuesto'
        DataBinding.DataSource = dsCompanias
        ParentFont = False
        TabOrder = 18
        OnEnter = dbIdCompaniaEnter
        OnExit = dbIdCompaniaExit
        Width = 121
      end
    end
  end
  inline frmBarra1: TfrmBarra
    Left = 8
    Top = 7
    Width = 70
    Height = 291
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alCustom
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 7
    ExplicitWidth = 70
    ExplicitHeight = 291
    inherited AdvPanel1: TAdvPanel
      Width = 70
      Height = 291
      ExplicitWidth = 70
      ExplicitHeight = 291
      FullHeight = 0
      inherited btnEdit: TcxButton
        Left = 2
        Top = 25
        TabStop = False
        OnClick = frmBarra1btnEditClick
        ExplicitLeft = 2
        ExplicitTop = 25
      end
      inherited btnPost: TcxButton
        Left = 2
        Top = 49
        TabStop = False
        OnClick = frmBarra1btnPostClick
        ExplicitLeft = 2
        ExplicitTop = 49
      end
      inherited btnCancel: TcxButton
        Left = 2
        Top = 73
        TabStop = False
        OnClick = frmBarra1btnCancelClick
        ExplicitLeft = 2
        ExplicitTop = 73
      end
      inherited btnDelete: TcxButton
        Left = 2
        Top = 97
        Height = 26
        TabStop = False
        OnClick = frmBarra1btnDeleteClick
        ExplicitLeft = 2
        ExplicitTop = 97
        ExplicitHeight = 26
      end
      inherited btnPrinter: TcxButton
        Left = 2
        TabStop = False
        OnClick = frmBarra1btnPrinterClick
        ExplicitLeft = 2
      end
      inherited btnRefresh: TcxButton
        Left = 2
        Top = 242
        Hint = 'Refrescar datos'
        TabStop = False
        OnClick = frmBarra1btnRefreshClick
        ExplicitLeft = 2
        ExplicitTop = 242
      end
      inherited btnExit: TcxButton
        Left = 2
        Top = 266
        Hint = 'Salir'
        TabStop = False
        OnClick = frmBarra1btnExitClick
        ExplicitLeft = 2
        ExplicitTop = 266
      end
      inherited btnAdd: TcxButton
        Left = 2
        Top = 1
        TabStop = False
        OnClick = frmBarra1btnAddClick
        ExplicitLeft = 2
        ExplicitTop = 1
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
    inherited ImgBtns: TImageList
      Bitmap = {
        494C0101080009003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
        0000000000003600000028000000400000003000000001002000000000000030
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000008F8F8F001C1C
        1C00262626002626260026262600262626002626260026262600262626002626
        26001C1C1C009F9F9F0000000000000000000000000000000000000000000000
        000000000000F4F7FB00A0B6D900000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EFF0FC00303E
        D600CFD2F500000000000000000000000000000000000000000000000000CFCF
        F4003030CE00EFEFFB00000000000000000000000000303030001C1C1C005757
        5700000000000000000000000000F9F9F900F2F2F200E5E5E500DFDFDF00D8D8
        D800555555001C1C1C0030303000000000000000000000000000000000000000
        000000000000F4F4F6002F69BC001B7DF000165EC000D5DCEB00000000000000
        00000000000000000000000000000000000053575500B3B9B700BAC0BE00BDC3
        C100BEC4C200BFC5C300BFC5C300BFC5C300BFC5C300BFC5C300BDC2C0000000
        00000000000000000000000000000000000000000000EFF0FC003042D600144B
        EC00101ECD00CFD2F50000000000000000000000000000000000CFD0F4001010
        C7000000E9003030CE00EFEFFB0000000000BFBFBF0094949400B7B7B700CACA
        CA00F6F6F600F6F6F600F6F6F600F5F5F500EFEFEF00E3E3E300DDDDDD00D6D6
        D600CACACA00AAAAAA0094949400BFBFBF000000000000000000000000000000
        000085A0CF00306DC100166BD200228AFF00238CFF001761C500648AC500E2E8
        F4000000000000000000000000000000000053575500AEAEAE00B0B1B100AFB5
        B300CACFCE00D1D5D400D3D7D500D3D7D600D3D7D600D3D7D600CFD4D2000000
        000000000000000000000000000000000000000000003045DA001C59ED003371
        FE001246EB00101ECD00CFD2F5000000000000000000CFD0F4001013C8000000
        E9000000FE000000E9003030CE000000000050505000B8B8B8008A8A8A000000
        00008E8E8E0096969600969696009696960095959500909090008D8D8D008A8A
        8A000000000082828200B8B8B80060606000000000000000000000000000CDD6
        E9001A7DEB00228FFF00248FFF00278FFF001E8DFF0078BAFF00245DB200CFD7
        EB000000000000000000000000000000000053575500ABABAB00ABABAB00ABAB
        AB00999A9900AFB1B100DADDDC00E4E6E600E5E8E700E5E8E700E0E2E2000000
        00000000000000000000000000000000000000000000CFD5F700102BD4001E5E
        EE003371FE002B68FE001246EB00CFD2F500CFD1F500031CEA000219FE00000A
        FE000000E9001010C700CFCFF4000000000020202000CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC00CCCCCC002020200000000000F4F5F900346DBD00218E
        FD0061B1FF00549DEF002668C000B4E2FF0096C7F700D6DAEC00000000000000
        00000000000000000000000000000000000053575500ABABAB00AAAAAA00A4A4
        A4009C9C9C009B9B9B0096969600C5C6C600F1F2F200F2F3F200DFE0DF00E7E7
        E7000A0AA900E8E8E800F7F7F700000000000000000000000000CFD5F700102B
        D4003B7AFE003371FE002B68FE00101ECD00101DCC000B34FE000628FE000219
        FE001013C800CFD0F40000000000000000001F1F1F00D6D6D600D6D6D600D6D6
        D600D9D9D900DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DBDBDB00D9D9
        D900D6D6D600D6D6D600D6D6D6001F1F1F00000000008AA4D000197CE800369E
        FF00337ED7006488C400B9BEDC0094C7F800396EBA000000000000000000F4F7
        FB00D3DAEA00D1DAEA00EBEFF7000000000053575500ABABAB00AAAAAA00A1A1
        A100989898009090900096969600C5C5C500F7F7F700E7E7E700D0D1D1000A0A
        A8003535D300CCCCCC00DDDDDD00EFEFEF00000000000000000000000000CFD5
        F7001E5EEE003B7AFE003371FE00144AEE001042EE00103FFE000B34FE00031C
        EA00CFD0F4000000000000000000000000001D1D1D00E5E5E500E9E9E900ECEC
        EC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
        ED00EDEDED00E9E9E900E5E5E5001D1D1D00000000002F6CBF002898FF0064B9
        FF006F8DC60000000000FBFBFC003B71BC00E9EBF4000000000000000000B5C5
        E1001565D1000D5BCD006188C6000000000053575500ABABAB00A8A8A8009F9F
        9F00959595008A8A8A0091919100EFF0F000FCFCFC00EBEBEB000909A8003030
        D6003A3AD8004242D9004646DA000303A5000000000000000000000000000000
        0000CFD5F700102BD4002464F1003371FE002B68FE001042EE00101DCC00CFD1
        F5000000000000000000000000000000000050505000D5EDD50032A13200B5D2
        B500FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
        FC00FCFCFC00FCFCFC00FCFCFC005050500000000000177BE7004FB7FF0078BB
        F60000000000000000000000000000000000000000000000000000000000D4DA
        EA00258FFF001D7EFF004477C4000000000053575500ABABAB00A5A5A5009C9C
        9C0093939300BFBFBF0085858500EEEFEF00FCFCFC000C0CAB002D2DD5000000
        CC000000CC000000CC000000CC000303A6000000000000000000000000000000
        0000CFD5F700102ED600296BF1003B7AFE003371FE00144AEE00101ECD00CFD2
        F500000000000000000000000000000000009F9F9F00E5ECE500D7EBD700EDF4
        ED00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000F5F5F5009F9F9F00000000001882EF0055C0FF007FB8
        ED0000000000000000000000000000000000000000000000000000000000AEBE
        DC00238BFF001A7AFC005782C5000000000053575500ABABAB00A3A3A3009A9A
        9A009191910094949400A9A9A900EEEFEF00E5E5F4004040CB003737D7003A3A
        D8004040D9003939D7003D3DD8000303A600000000000000000000000000CFD8
        F800347CF00065A0FE005E9AFE00296BF1002464F1003371FE002B68FE001246
        EB00CFD2F50000000000000000000000000000000000BFBFBF00505050003F3F
        3F00000000000000000000000000F9F9F900F1F1F100E3E3E300DBDBDB00D4D4
        D4003838380050505000BFBFBF000000000000000000376FBA005184C5003E75
        BE00000000000000000000000000497EC000177BD20000000000869FCD001B7E
        DA003F93FF001D61C500D3DAEA000000000053575500AAAAAA00A0A0A0009797
        97008E8E8E0076767600BBBBBB00EEEEEE00FCFCFC00E6E7F5005151CD005656
        DE005858DD005B5BDE005555DD000303A6000000000000000000CFD9F900103E
        E00077ADFE006FA7FE0065A0FE00102ED600102BD4003B7AFE003371FE002B68
        FE00101ECD00CFD2F50000000000000000000000000000000000EFEFEF001919
        1900636363007B7B7B0078787800727272006F6F6F0068686800656565004949
        490019191900EFEFEF00000000000000000000000000F8F8FA00F7F7F900F7F7
        FA000000000000000000E8E9F40030B0F4002EACF200618EC9001D83DB002497
        FF005197F6005A83C300000000000000000053575500A8A8A8009E9E9E009595
        95008C8C8C00AAAAAA008E8E8E00EDEEEE00FCFCFC00FCFCFC00E6E7F3005959
        CF00A5A5EC000E0EAB000E0EAB002929B40000000000CFDAFA001044E400448F
        F3007FB3FE0077ADFE00347CF000CFD5F700CFD5F7001E5EEE003B7AFE003371
        FE001246EB00101ECD00CFD2F500000000000000000000000000000000009F9F
        9F00C5C5C500FAFAFA00F4F4F400E8E8E800E2E2E200D5D5D500CFCFCF007979
        79009F9F9F000000000000000000000000000000000000000000000000000000
        000000000000DFE2F0003473BC003BC7FF0033B3F80029A4FB00279CFF004C9F
        FF003068BD00DEE2EF00000000000000000053575500A6A6A6009B9B9B009292
        9200898989007F7F7F0083838300EDEEEE00FCFCFC00FCFCFC00F8F9F900F1F1
        FA005858CC00000000000000000000000000000000003066EC004F9CF600A1CB
        FE00448FF300103EE000CFD8F8000000000000000000CFD5F700102BD4001E5E
        EE003371FE00144BEC00303ED600000000000000000000000000000000000000
        0000BCBCBC000000000000000000F4F4F400EEEEEE00E2E2E200DBDBDB007272
        7200000000000000000000000000000000000000000000000000000000000000
        00002A61B10031B3F40046DBFF0034C2FF005FC8FF008ECBFE00659DE3004374
        BD000000000000000000000000000000000053575500A3A3A300979797008989
        890080808000767676007B7B7B00EBECEC00FCFCFC00FCFCFC00F8F9F9000000
        0000F5F5FB0000000000000000000000000000000000EFF3FE003066EC004F9C
        F6001044E400CFD9F90000000000000000000000000000000000CFD5F700102B
        D4001C59ED003042D600EFF0FC00000000000000000000000000000000000000
        0000B7B7B7000000000000000000FAFAFA00F4F4F400E8E8E800E2E2E2006F6F
        6F00000000000000000000000000000000000000000000000000000000000000
        0000C0CFE7005283C300247DC70065D7FF0090E0FF004C79BD009EB0D700F6F6
        F90000000000000000000000000000000000535755009A9A9A008A8A8A007E7E
        7E00747474006C6C6C0072727200E8E9E900FBFCFC00FCFCFC00F8F8F8000000
        0000000000000000000000000000000000000000000000000000EFF3FE003066
        EC00CFDAFA00000000000000000000000000000000000000000000000000CFD5
        F7003045DA00EFF0FC0000000000000000000000000000000000000000000000
        0000B2B2B200000000000000000000000000FAFAFA00EEEEEE00E8E8E8006C6C
        6C00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C8CFE600367DC3008FCEF900C8CCE500000000000000
        0000000000000000000000000000000000005357550090909000818181007676
        76006B6B6B006363630067676700E1E3E300F7F8F800F8F9F900F5F6F6000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000181818001818180018181800181818001818180018181800181818001212
        1200000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000F3F6FA00000000000000
        000000000000000000000000000000000000A8AAA90053575500535755005357
        55005357550053575500565A5800676A680074777600757977006D706E000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000084777300847773008477
        7300847773008477730084777300847773008477730084777300847773008477
        7300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000ECEAEAFFE2DDDCFFE3DFDFFF00000000000000000000
        000000000000000000000000000000000000DED3CF00FAF7F500FAF7F500FAF7
        F500EDE9E700ECE7E500ECE7E500E8E0DE00F1EAE800F1E9E700F0E8E600EEE6
        E300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000534B4AFF262626FF1D1D1DFFE4E0DFFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F7005E70A800E2DDDB00E1DBD900E0D8D600E0D8D600EAE2E000F1E9E700F0E7
        E500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFF5EF00005A
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000BAD0E200DAE9F60000000000000000000000000000000000000000000000
        000000000000000000007F7978FF565656FF303030FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F700818BA2006680C000E1DBD900E0D8D600E0D8D600DCD3D100DED5D300E6DD
        DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000009FC19F00006C
        0000609860000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EAF0F400186D
        B4002399F7002194F400B5D3ED00000000000000000000000000000000000000
        00000000000000000000595453FF383838FF404040FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F700C9E7FE00A5E1FE0088C9F800E0D8D600E0D8D600DCD3D100DBD2D000DAD0
        CF00E8E6E600E8E6E600EDECEC00FFFFFF0000000000000000001065100000BA
        000000C0000000760000307A3000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000E6ECF200356B99001052
        8B00218EE5002297F70053A1E100000000000000000000000000000000000000
        00000000000000000000837E7CFF676767FF3E3E3EFFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F70076E2FE0059D4FE0060CBFE00AFB0CD00E0D9D700DBD2D000DAD1CF00D8CF
        CD00E8E6E600E8E6E600E8E6E600EAE9E90000000000AFCDAF000075000000D1
        000000D1000000D10000008A0000EFF5EF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B2C6D700104C
        800012558E00259BF800249AF800000000000000000000000000FCFCFCFFFCFB
        FBFFFCFBFBFFFCFBFBFF747171FF606060FF565656FFD1CBCAFFFAFAFAFFFAFA
        FAFFFAFAFAFFFDFDFDFF0000000000000000DED3CF00FAF8F600FAF8F600FAF8
        F60061EFFE0050D1FE004DCBFE00688BD200F4EDEB00E0D8D600DAD0CF00DAD0
        CF00E8E6E600E8E6E600E8E6E600E8E6E6000000000070AA700000A0000000DA
        000000DA000000DA000000DA000010711000CFE3CF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FBFCFD00104C
        8000104D8300279DF800269BF8000000000000000000CAB5B2FF242424FF1B1B
        1BFF202020FF1F1F1FFF555555FF626262FF686868FF201F1FFF1F1F1FFF2020
        20FF262626FF3B3635FFFBFBFBFF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF0038C0F90040E7FE0036C4FE0044A4FE005C77C200EDE4E100EDE4E100EBE2
        DF00F5F4F400EAE9E900E8E6E600FAFAFA0000000000007B000000EC000000EC
        000000D6000000E5000000EC000000EC000000BF00009FCB9F00000000000000
        000000000000000000000000000000000000000000003869930014578D003CB3
        FA003AB1F90035A1E700429FDE0000000000000000000000000000000000104C
        8000115289002AA0F800299FF8000000000000000000C2B3B0FF7F7F7FFF6B6B
        6BFF676767FF797979FF646464FF666666FF696969FF6F6F6FFF7F7F7FFF7979
        79FF7F7F7FFF525252FFF5F4F4FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF009FD2F9002EE2FD002ECFFE0035A4FE002971DC00ECE3E000EBE2DF00E9DF
        DC00FFFFFF00FFFFFF00F8F7F700FFFFFF000000000000A8000000F6000000F6
        0000108210000081000000B7000000F6000000F60000008200009FCD9F000000
        000000000000000000000000000000000000000000000F4A7C00155A91003DB4
        FA003CB3FA0039ADF5007FB5DD0000000000000000000000000000000000104C
        8000196AAA002CA2F8002BA1F8000000000000000000EBD9D6FFD2D2D2FFD2D2
        D2FFCACACAFFC4C4C4FFACACACFF9E9E9EFFB1B1B1FFCCCCCCFFC5C5C5FFC7C7
        C7FFD3D3D3FFC1C0C0FFFAF9F9FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF007FC5F70019E7FE0017B4FE002392FE00E3D9D500E3D7D400E2D6
        D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8EF002AF72A0017D31700108F
        100000000000000000000000000060B46000028E020027F827002AF72A000B9D
        0B0000000000000000000000000000000000000000000F4A7C001860960040B7
        FA003FB6FA003DB4FA0045A7E4000000000000000000000000008AA8C2002689
        D00031A8F9002FA5F900399AE3000000000000000000FCFBFBFFEAE8E7FFEAE8
        E8FFEAE8E8FFEAE8E8FFC2BDBCFFB0B0B0FF999999FFD1CBCAFFEBE9E9FFEBE9
        E9FFEBE9E9FFF4F3F3FF0000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EEF6FC0008B6F70011B0FE00149EFE008992BF00DCD0CC00DBCF
        CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFDCAF0035D5350010941000CFE9
        CF0000000000000000000000000000000000DFF0DF000594050028C728004FF1
        4F0040AA4000EFF8EF000000000000000000000000000F4A7C001A649B003CAE
        EF0040B7F9003EB6FA003DB4FA005EABDF009EC9E7009EC3DF002376B40034AB
        F90033AAF90031A7F80090C0E400000000000000000000000000000000000000
        00000000000000000000C3BDBCFF9D9D9DFFB3B3B3FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FEFEFD005EB0F2000BB1FE000AAAFE001F51C400DACDC900D9CC
        C800FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BC6000109B1000CFEACF000000
        00000000000000000000000000000000000000000000DFF1DF0060BC6000089B
        08002DB52D0030A83000EFF8EF0000000000000000000F4A7C00276799001157
        9300125894003FB5F60040B7FA003EB5FA003DB4FA003BB2FA0039B0FA0037AE
        F90036ADF900DAEAF50000000000000000000000000000000000000000000000
        00000000000000000000D4CFCEFFCDCDCDFFB1B1B1FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FDFCFB00FBF9F80000DFFE0002A6FE000E73FE003F6CD200C8B6
        B100FFFFFF00FFFFFF00FFFFFF00FFFFFF0040B8410000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000DFF3DF0060C4600000A10300CFEED000000000006F92B000E6ECF2002B6B
        A100125A98001969A800339BDC003FB7FA003EB6FA003CB3FA003BB2FA0038AD
        F60056A5DC000000000000000000000000000000000000000000000000000000
        00000000000000000000E4E0DFFFDDDDDDFFBEBEBEFFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FDFCFB00FBF8F70000C5F80000BEFE000587FE000959E400BFC7
        E600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DFF4E10010B326000000000000000000000000000000
        0000000000007AA5CA003879B1001461A3001964A50084ADD000DDEAF4000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000E2D3D0FFF6E2DDFFF3DEDAFFFCFCFBFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FEFEFD00FBF9F800F9F5F30037ADE80000DBFE000AA0FE002E8CFE006584
        D100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F3F7FA00F7F9FC0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DDD1CD00DED3CF00DED3CF00DED3
        CF00DED3CF00DACEC900D5C8C300C8B6B1002088DF004D77CA009FAAD900FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000424D3E000000000000003E000000
        2800000040000000300000000100010000000000800100000000000000000000
        000000000000000000000000FFFFFF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000FFFFC003F9FFFFFFC7E38E01F83F001F
        83C10000F00F001F81810000E00F001F80010000803F0001C003000080610000
        E007000084610000F00F00008FE10000F00F0FFC8FE10000E0078E018E410000
        C003C0038C0300008001E007F80300078181F60FF00F001783C1F60FF00F001F
        C7E3F70FFC3F001FFFFFF00FFFBF001FFFFF8000FFFFFFFFFC7F0000FFFFFFFF
        FC3F0000CFFFFFF3FC3F0000C7FFFFC1FC3F0000C1FFFF81FC3F000080FFFFC1
        C0030000807FFFC180010000803F81E180010000801F81E1800100000E0F81C1
        800300000F038001FC3F00001F818003FC3F00007FF08007FC3F0000FFFCF81F
        FC3F0000FFFFFE7FFFFF0000FFFFFFFF00000000000000000000000000000000
        000000000000}
    end
  end
  object pnlMapa: TPanel
    Left = 833
    Top = 348
    Width = 48
    Height = 27
    TabOrder = 3
    Visible = False
    object PanelHeader: TPanel
      Left = 1
      Top = 1
      Width = 46
      Height = 140
      Align = alTop
      TabOrder = 0
      object LabelAddress: TcxLabel
        Left = 10
        Top = 0
        Caption = 'Direccion'
        ParentFont = False
        Transparent = True
      end
      object CheckBoxTraffic: TcxCheckBox
        Left = 79
        Top = 103
        Caption = 'Trafico'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Transparent = True
        OnClick = CheckBoxTrafficClick
        Width = 58
      end
      object CheckBoxBicycling: TcxCheckBox
        Left = 143
        Top = 103
        Caption = 'Bicicleta'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Transparent = True
        OnClick = CheckBoxBicyclingClick
        Width = 58
      end
      object CheckBoxStreeView: TcxCheckBox
        Left = 207
        Top = 104
        Caption = 'Vista de la calle'
        ParentColor = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Transparent = True
        OnClick = CheckBoxStreeViewClick
        Width = 97
      end
      object btnSalir: TcxButton
        Left = 615
        Top = 74
        Width = 58
        Height = 31
        Caption = '&Cerrar'
        TabOrder = 3
        OnClick = btnSalirClick
      end
      object MemoAddress: TcxMemo
        Left = 22
        Top = 23
        ParentFont = False
        TabOrder = 4
        Height = 74
        Width = 579
      end
      object ButtonGotoAddress: TcxButton
        Left = 615
        Top = 15
        Width = 99
        Height = 40
        Caption = 'Mostrar Ubicacion'
        TabOrder = 5
        OnClick = ButtonGotoAddressClick
      end
    end
  end
  object btnPrintPer: TcxButton
    Left = 10
    Top = 153
    Width = 67
    Height = 25
    Hint = 'Impresion personalizada de clientes'
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    OnClick = btnPrintPerClick
    OptionsImage.ImageIndex = 14
    OptionsImage.Images = frmBarra2.IconosBarra
  end
  object btnContactos: TcxButton
    Left = 10
    Top = 177
    Width = 67
    Height = 25
    Hint = 'Directorio de contactos'
    TabOrder = 6
    TabStop = False
    OnClick = btnContactosClick
    OptionsImage.ImageIndex = 13
    OptionsImage.Images = frmBarra2.IconosBarra
  end
  object cxButton1: TcxButton
    Left = 10
    Top = 201
    Width = 67
    Height = 25
    Hint = 'Detalles del cliente'
    TabOrder = 7
    TabStop = False
    OnClick = dxVerDetallesClick
    OptionsImage.ImageIndex = 16
    OptionsImage.Images = frmBarra2.IconosBarra
  end
  object btnDetallesProspecto: TcxButton
    Left = 10
    Top = 225
    Width = 67
    Height = 25
    Hint = 'Imprimir detalles de prospectos'
    TabOrder = 8
    TabStop = False
    OnClick = btnDetallesProspectoClick
    OptionsImage.ImageIndex = 10
    OptionsImage.Images = frmBarra2.IconosBarra
  end
  object pnlContactosxCompania: TNxHeaderPanel
    Left = 391
    Top = 104
    Width = 493
    Height = 342
    Caption = 
      'De                                          al                  ' +
      '                         Contactos'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 5
    Visible = False
    FullWidth = 493
    object pnlInformacionContactos: TW7Panel
      AlignWithMargins = True
      Left = 225
      Top = 35
      Width = 50
      Height = 298
      Version = '1.0.1.2'
      Caption = 'W7Panel2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      SolidColor = clBlack
      OuterBorderColor = clWhite
      InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
      OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
      Style = wpsCustom
      FillStyle = pfsGradient
      ColorA = clWhite
      ColorC = clBlack
      ColorD = clBlack
      Align = alClient
      DoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      object btnAceptarContactos: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 270
        Width = 44
        Height = 25
        Align = alBottom
        Caption = 'Aceptar'
        ModalResult = 1
        TabOrder = 0
      end
      object pnlControlesC2: TW7Panel
        AlignWithMargins = True
        Left = 314
        Top = 3
        Width = 344
        Height = 261
        Version = '1.0.1.2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorA = clWhite
        ColorC = clBlack
        ColorD = clBlack
        Align = alClient
        DoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        object pgContacto: TcxPageControl
          Left = 0
          Top = 0
          Width = 344
          Height = 261
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = pnlControlesC
          Properties.CustomButtons.Buttons = <>
          Properties.Images = iconos
          Properties.Style = 9
          Properties.TabHeight = 25
          Properties.TabSlants.Kind = skCutCorner
          TabSlants.Kind = skCutCorner
          ClientRectBottom = 261
          ClientRectRight = 344
          ClientRectTop = 38
          object pnlControlesC: TcxTabSheet
            Caption = 'Informaci'#243'n'
            ImageIndex = 0
            object lbl10: TLabel
              Left = 16
              Top = 214
              Width = 38
              Height = 15
              Caption = 'Cuidad'
            end
            object lbl11: TLabel
              Left = 16
              Top = 246
              Width = 36
              Height = 15
              Caption = 'Puesto'
              FocusControl = dbPuestoContacto
            end
            object lbl12: TLabel
              Left = 16
              Top = 18
              Width = 55
              Height = 15
              Caption = 'Compania'
            end
            object lbl13: TLabel
              Left = 15
              Top = 275
              Width = 21
              Height = 15
              Caption = 'RFC'
              FocusControl = dbRFCContacto
            end
            object lbl14: TLabel
              Left = 15
              Top = 303
              Width = 37
              Height = 15
              Caption = 'Estatus'
            end
            object lbl15: TLabel
              Left = 15
              Top = 333
              Width = 77
              Height = 15
              Caption = 'Fecha de visita'
            end
            object lbl5: TLabel
              Left = 16
              Top = 43
              Width = 44
              Height = 15
              Caption = 'Nombre'
            end
            object lbl6: TLabel
              Left = 15
              Top = 72
              Width = 46
              Height = 15
              Caption = 'Telefono'
              FocusControl = dbTelfContacto
            end
            object lbl7: TLabel
              Left = 16
              Top = 103
              Width = 30
              Height = 15
              Caption = 'Movil'
              FocusControl = dbMovilContacto
            end
            object lbl8: TLabel
              Left = 16
              Top = 131
              Width = 51
              Height = 15
              Caption = 'Domicilio'
            end
            object lbl9: TLabel
              Left = 15
              Top = 186
              Width = 36
              Height = 15
              Caption = 'Correo'
              FocusControl = dbCorreoContacto
            end
            object cbClientes: TcxComboBox
              Tag = 1
              Left = 104
              Top = 14
              ParentFont = False
              Properties.Sorted = True
              Style.Color = clWindow
              TabOrder = 0
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = cbClientesKeyPress
              Width = 258
            end
            object dbCorreoContacto: TcxDBTextEdit
              Tag = 6
              Left = 104
              Top = 183
              DataBinding.DataField = 'sCorreo'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              TabOrder = 1
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbCorreoContactoKeyPress
              Width = 300
            end
            object dbCuidadContacto: TcxDBTextEdit
              Tag = 6
              Left = 104
              Top = 210
              DataBinding.DataField = 'sCuidad'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              TabOrder = 2
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbCorreoContactoKeyPress
              Width = 299
            end
            object dbDomicilioContacto: TcxDBMemo
              Tag = 5
              Left = 104
              Top = 128
              DataBinding.DataField = 'sDomicilio'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              TabOrder = 3
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbDomicilioContactoKeyPress
              Height = 48
              Width = 300
            end
            object dbMovilContacto: TcxDBTextEdit
              Tag = 4
              Left = 104
              Top = 99
              DataBinding.DataField = 'sTelefonoMovil'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              TabOrder = 4
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbMovilContactoKeyPress
              Width = 300
            end
            object dbNombreContacto: TcxDBTextEdit
              Tag = 2
              Left = 104
              Top = 41
              DataBinding.DataField = 'sNombre'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              Style.Color = clWindow
              TabOrder = 5
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbNombreContactoKeyPress
              Width = 300
            end
            object dbPuestoContacto: TcxDBTextEdit
              Tag = 8
              Left = 104
              Top = 241
              DataBinding.DataField = 'sPuesto'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              TabOrder = 6
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbPuestoContactoKeyPress
              Width = 300
            end
            object dbRFCContacto: TcxDBTextEdit
              Tag = 9
              Left = 104
              Top = 273
              DataBinding.DataField = 'sRFC'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              TabOrder = 7
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbRFCContactoKeyPress
              Width = 300
            end
            object dbStatusContacto: TcxDBComboBox
              Tag = 10
              Left = 104
              Top = 301
              DataBinding.DataField = 'eStatus'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              Properties.Items.Strings = (
                'Activo'
                'Prospecto'
                'Inactivo')
              TabOrder = 8
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbStatusContactoKeyPress
              Width = 113
            end
            object dbTelfContacto: TcxDBTextEdit
              Tag = 3
              Left = 104
              Top = 72
              DataBinding.DataField = 'sTelefono'
              DataBinding.DataSource = dsContactos
              ParentFont = False
              TabOrder = 9
              OnEnter = dbNombreContactoEnter
              OnExit = dbNombreContactoExit
              OnKeyPress = dbTelfContactoKeyPress
              Width = 300
            end
            object tdContactoFecha: TDateTimePicker
              Left = 104
              Top = 331
              Width = 113
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
              TabOrder = 10
              TabStop = False
              OnKeyPress = tdContactoFechaKeyPress
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = 'Imagenes'
            ImageIndex = 1
            object GroupBox4: TGroupBox
              Left = 19
              Top = 10
              Width = 150
              Height = 164
              Caption = 'Fotografia del contacto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object bFotografica: TImage
                Left = 2
                Top = 17
                Width = 146
                Height = 145
                Align = alClient
                Stretch = True
                OnClick = bFotograficaClick
                ExplicitLeft = 1
                ExplicitTop = 16
                ExplicitWidth = 346
                ExplicitHeight = 332
              end
            end
            object GroupBox1: TGroupBox
              Left = 24
              Top = 186
              Width = 334
              Height = 166
              Caption = 'Targeta del contacto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object bTargeta: TImage
                Left = 2
                Top = 17
                Width = 330
                Height = 147
                Align = alClient
                Stretch = True
                OnClick = bTargetaClick
                ExplicitLeft = 3
                ExplicitTop = 15
                ExplicitWidth = 362
                ExplicitHeight = 169
              end
            end
          end
        end
      end
      object cxGridContactos: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 230
        Height = 261
        Align = alLeft
        TabOrder = 2
        object grid_contactos: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsContactos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grid_contactosColumn1: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'sNombre'
            Width = 217
          end
        end
        object nivel_contactos: TcxGridLevel
          GridView = grid_contactos
        end
      end
      inline frmBarra2: TfrmBarra
        AlignWithMargins = True
        Left = 239
        Top = 3
        Width = 67
        Height = 101
        Margins.Right = 5
        Margins.Bottom = 163
        VertScrollBar.Style = ssHotTrack
        Align = alLeft
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        ExplicitLeft = 239
        ExplicitTop = 3
        ExplicitWidth = 67
        ExplicitHeight = 101
        inherited AdvPanel1: TAdvPanel
          Width = 67
          Height = 101
          ExplicitWidth = 67
          ExplicitHeight = 101
          FullHeight = 0
          inherited btnEdit: TcxButton
            Left = 0
            Top = 24
            OnClick = frmBarra2btnEditClick
            ExplicitLeft = 0
            ExplicitTop = 24
          end
          inherited btnPost: TcxButton
            Left = 0
            Top = 48
            OnClick = frmBarra2btnPostClick
            ExplicitLeft = 0
            ExplicitTop = 48
          end
          inherited btnCancel: TcxButton
            Left = 0
            Top = 72
            OnClick = frmBarra2btnCancelClick
            ExplicitLeft = 0
            ExplicitTop = 72
          end
          inherited btnDelete: TcxButton
            Left = 0
            Top = 96
            Height = 26
            OnClick = frmBarra2btnDeleteClick
            ExplicitLeft = 0
            ExplicitTop = 96
            ExplicitHeight = 26
          end
          inherited btnPrinter: TcxButton
            Left = 0
            OnClick = frmBarra2btnPrinterClick
            ExplicitLeft = 0
          end
          inherited btnRefresh: TcxButton
            Left = 0
            Top = 145
            OnClick = frmBarra2btnRefreshClick
            ExplicitLeft = 0
            ExplicitTop = 145
          end
          inherited btnExit: TcxButton
            Left = 0
            Top = 169
            OnClick = frmBarra2btnExitClick
            ExplicitLeft = 0
            ExplicitTop = 169
          end
          inherited btnAdd: TcxButton
            Left = 0
            Top = 1
            OnClick = frmBarra2btnAddClick
            ExplicitLeft = 0
            ExplicitTop = 1
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
        inherited ImgBtns: TImageList
          Bitmap = {
            494C0101080009003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
            0000000000003600000028000000400000003000000001002000000000000030
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000008F8F8F001C1C
            1C00262626002626260026262600262626002626260026262600262626002626
            26001C1C1C009F9F9F0000000000000000000000000000000000000000000000
            000000000000F4F7FB00A0B6D900000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000EFF0FC00303E
            D600CFD2F500000000000000000000000000000000000000000000000000CFCF
            F4003030CE00EFEFFB00000000000000000000000000303030001C1C1C005757
            5700000000000000000000000000F9F9F900F2F2F200E5E5E500DFDFDF00D8D8
            D800555555001C1C1C0030303000000000000000000000000000000000000000
            000000000000F4F4F6002F69BC001B7DF000165EC000D5DCEB00000000000000
            00000000000000000000000000000000000053575500B3B9B700BAC0BE00BDC3
            C100BEC4C200BFC5C300BFC5C300BFC5C300BFC5C300BFC5C300BDC2C0000000
            00000000000000000000000000000000000000000000EFF0FC003042D600144B
            EC00101ECD00CFD2F50000000000000000000000000000000000CFD0F4001010
            C7000000E9003030CE00EFEFFB0000000000BFBFBF0094949400B7B7B700CACA
            CA00F6F6F600F6F6F600F6F6F600F5F5F500EFEFEF00E3E3E300DDDDDD00D6D6
            D600CACACA00AAAAAA0094949400BFBFBF000000000000000000000000000000
            000085A0CF00306DC100166BD200228AFF00238CFF001761C500648AC500E2E8
            F4000000000000000000000000000000000053575500AEAEAE00B0B1B100AFB5
            B300CACFCE00D1D5D400D3D7D500D3D7D600D3D7D600D3D7D600CFD4D2000000
            000000000000000000000000000000000000000000003045DA001C59ED003371
            FE001246EB00101ECD00CFD2F5000000000000000000CFD0F4001013C8000000
            E9000000FE000000E9003030CE000000000050505000B8B8B8008A8A8A000000
            00008E8E8E0096969600969696009696960095959500909090008D8D8D008A8A
            8A000000000082828200B8B8B80060606000000000000000000000000000CDD6
            E9001A7DEB00228FFF00248FFF00278FFF001E8DFF0078BAFF00245DB200CFD7
            EB000000000000000000000000000000000053575500ABABAB00ABABAB00ABAB
            AB00999A9900AFB1B100DADDDC00E4E6E600E5E8E700E5E8E700E0E2E2000000
            00000000000000000000000000000000000000000000CFD5F700102BD4001E5E
            EE003371FE002B68FE001246EB00CFD2F500CFD1F500031CEA000219FE00000A
            FE000000E9001010C700CFCFF4000000000020202000CCCCCC00CCCCCC00CCCC
            CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
            CC00CCCCCC00CCCCCC00CCCCCC002020200000000000F4F5F900346DBD00218E
            FD0061B1FF00549DEF002668C000B4E2FF0096C7F700D6DAEC00000000000000
            00000000000000000000000000000000000053575500ABABAB00AAAAAA00A4A4
            A4009C9C9C009B9B9B0096969600C5C6C600F1F2F200F2F3F200DFE0DF00E7E7
            E7000A0AA900E8E8E800F7F7F700000000000000000000000000CFD5F700102B
            D4003B7AFE003371FE002B68FE00101ECD00101DCC000B34FE000628FE000219
            FE001013C800CFD0F40000000000000000001F1F1F00D6D6D600D6D6D600D6D6
            D600D9D9D900DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DBDBDB00D9D9
            D900D6D6D600D6D6D600D6D6D6001F1F1F00000000008AA4D000197CE800369E
            FF00337ED7006488C400B9BEDC0094C7F800396EBA000000000000000000F4F7
            FB00D3DAEA00D1DAEA00EBEFF7000000000053575500ABABAB00AAAAAA00A1A1
            A100989898009090900096969600C5C5C500F7F7F700E7E7E700D0D1D1000A0A
            A8003535D300CCCCCC00DDDDDD00EFEFEF00000000000000000000000000CFD5
            F7001E5EEE003B7AFE003371FE00144AEE001042EE00103FFE000B34FE00031C
            EA00CFD0F4000000000000000000000000001D1D1D00E5E5E500E9E9E900ECEC
            EC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
            ED00EDEDED00E9E9E900E5E5E5001D1D1D00000000002F6CBF002898FF0064B9
            FF006F8DC60000000000FBFBFC003B71BC00E9EBF4000000000000000000B5C5
            E1001565D1000D5BCD006188C6000000000053575500ABABAB00A8A8A8009F9F
            9F00959595008A8A8A0091919100EFF0F000FCFCFC00EBEBEB000909A8003030
            D6003A3AD8004242D9004646DA000303A5000000000000000000000000000000
            0000CFD5F700102BD4002464F1003371FE002B68FE001042EE00101DCC00CFD1
            F5000000000000000000000000000000000050505000D5EDD50032A13200B5D2
            B500FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
            FC00FCFCFC00FCFCFC00FCFCFC005050500000000000177BE7004FB7FF0078BB
            F60000000000000000000000000000000000000000000000000000000000D4DA
            EA00258FFF001D7EFF004477C4000000000053575500ABABAB00A5A5A5009C9C
            9C0093939300BFBFBF0085858500EEEFEF00FCFCFC000C0CAB002D2DD5000000
            CC000000CC000000CC000000CC000303A6000000000000000000000000000000
            0000CFD5F700102ED600296BF1003B7AFE003371FE00144AEE00101ECD00CFD2
            F500000000000000000000000000000000009F9F9F00E5ECE500D7EBD700EDF4
            ED00000000000000000000000000000000000000000000000000000000000000
            00000000000000000000F5F5F5009F9F9F00000000001882EF0055C0FF007FB8
            ED0000000000000000000000000000000000000000000000000000000000AEBE
            DC00238BFF001A7AFC005782C5000000000053575500ABABAB00A3A3A3009A9A
            9A009191910094949400A9A9A900EEEFEF00E5E5F4004040CB003737D7003A3A
            D8004040D9003939D7003D3DD8000303A600000000000000000000000000CFD8
            F800347CF00065A0FE005E9AFE00296BF1002464F1003371FE002B68FE001246
            EB00CFD2F50000000000000000000000000000000000BFBFBF00505050003F3F
            3F00000000000000000000000000F9F9F900F1F1F100E3E3E300DBDBDB00D4D4
            D4003838380050505000BFBFBF000000000000000000376FBA005184C5003E75
            BE00000000000000000000000000497EC000177BD20000000000869FCD001B7E
            DA003F93FF001D61C500D3DAEA000000000053575500AAAAAA00A0A0A0009797
            97008E8E8E0076767600BBBBBB00EEEEEE00FCFCFC00E6E7F5005151CD005656
            DE005858DD005B5BDE005555DD000303A6000000000000000000CFD9F900103E
            E00077ADFE006FA7FE0065A0FE00102ED600102BD4003B7AFE003371FE002B68
            FE00101ECD00CFD2F50000000000000000000000000000000000EFEFEF001919
            1900636363007B7B7B0078787800727272006F6F6F0068686800656565004949
            490019191900EFEFEF00000000000000000000000000F8F8FA00F7F7F900F7F7
            FA000000000000000000E8E9F40030B0F4002EACF200618EC9001D83DB002497
            FF005197F6005A83C300000000000000000053575500A8A8A8009E9E9E009595
            95008C8C8C00AAAAAA008E8E8E00EDEEEE00FCFCFC00FCFCFC00E6E7F3005959
            CF00A5A5EC000E0EAB000E0EAB002929B40000000000CFDAFA001044E400448F
            F3007FB3FE0077ADFE00347CF000CFD5F700CFD5F7001E5EEE003B7AFE003371
            FE001246EB00101ECD00CFD2F500000000000000000000000000000000009F9F
            9F00C5C5C500FAFAFA00F4F4F400E8E8E800E2E2E200D5D5D500CFCFCF007979
            79009F9F9F000000000000000000000000000000000000000000000000000000
            000000000000DFE2F0003473BC003BC7FF0033B3F80029A4FB00279CFF004C9F
            FF003068BD00DEE2EF00000000000000000053575500A6A6A6009B9B9B009292
            9200898989007F7F7F0083838300EDEEEE00FCFCFC00FCFCFC00F8F9F900F1F1
            FA005858CC00000000000000000000000000000000003066EC004F9CF600A1CB
            FE00448FF300103EE000CFD8F8000000000000000000CFD5F700102BD4001E5E
            EE003371FE00144BEC00303ED600000000000000000000000000000000000000
            0000BCBCBC000000000000000000F4F4F400EEEEEE00E2E2E200DBDBDB007272
            7200000000000000000000000000000000000000000000000000000000000000
            00002A61B10031B3F40046DBFF0034C2FF005FC8FF008ECBFE00659DE3004374
            BD000000000000000000000000000000000053575500A3A3A300979797008989
            890080808000767676007B7B7B00EBECEC00FCFCFC00FCFCFC00F8F9F9000000
            0000F5F5FB0000000000000000000000000000000000EFF3FE003066EC004F9C
            F6001044E400CFD9F90000000000000000000000000000000000CFD5F700102B
            D4001C59ED003042D600EFF0FC00000000000000000000000000000000000000
            0000B7B7B7000000000000000000FAFAFA00F4F4F400E8E8E800E2E2E2006F6F
            6F00000000000000000000000000000000000000000000000000000000000000
            0000C0CFE7005283C300247DC70065D7FF0090E0FF004C79BD009EB0D700F6F6
            F90000000000000000000000000000000000535755009A9A9A008A8A8A007E7E
            7E00747474006C6C6C0072727200E8E9E900FBFCFC00FCFCFC00F8F8F8000000
            0000000000000000000000000000000000000000000000000000EFF3FE003066
            EC00CFDAFA00000000000000000000000000000000000000000000000000CFD5
            F7003045DA00EFF0FC0000000000000000000000000000000000000000000000
            0000B2B2B200000000000000000000000000FAFAFA00EEEEEE00E8E8E8006C6C
            6C00000000000000000000000000000000000000000000000000000000000000
            00000000000000000000C8CFE600367DC3008FCEF900C8CCE500000000000000
            0000000000000000000000000000000000005357550090909000818181007676
            76006B6B6B006363630067676700E1E3E300F7F8F800F8F9F900F5F6F6000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000181818001818180018181800181818001818180018181800181818001212
            1200000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000F3F6FA00000000000000
            000000000000000000000000000000000000A8AAA90053575500535755005357
            55005357550053575500565A5800676A680074777600757977006D706E000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000084777300847773008477
            7300847773008477730084777300847773008477730084777300847773008477
            7300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000ECEAEAFFE2DDDCFFE3DFDFFF00000000000000000000
            000000000000000000000000000000000000DED3CF00FAF7F500FAF7F500FAF7
            F500EDE9E700ECE7E500ECE7E500E8E0DE00F1EAE800F1E9E700F0E8E600EEE6
            E300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000534B4AFF262626FF1D1D1DFFE4E0DFFF000000000000
            000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
            F7005E70A800E2DDDB00E1DBD900E0D8D600E0D8D600EAE2E000F1E9E700F0E7
            E500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFF5EF00005A
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000BAD0E200DAE9F60000000000000000000000000000000000000000000000
            000000000000000000007F7978FF565656FF303030FFE4DFDEFF000000000000
            000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
            F700818BA2006680C000E1DBD900E0D8D600E0D8D600DCD3D100DED5D300E6DD
            DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000009FC19F00006C
            0000609860000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000EAF0F400186D
            B4002399F7002194F400B5D3ED00000000000000000000000000000000000000
            00000000000000000000595453FF383838FF404040FFE4DFDEFF000000000000
            000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
            F700C9E7FE00A5E1FE0088C9F800E0D8D600E0D8D600DCD3D100DBD2D000DAD0
            CF00E8E6E600E8E6E600EDECEC00FFFFFF0000000000000000001065100000BA
            000000C0000000760000307A3000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000E6ECF200356B99001052
            8B00218EE5002297F70053A1E100000000000000000000000000000000000000
            00000000000000000000837E7CFF676767FF3E3E3EFFE4DFDEFF000000000000
            000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
            F70076E2FE0059D4FE0060CBFE00AFB0CD00E0D9D700DBD2D000DAD1CF00D8CF
            CD00E8E6E600E8E6E600E8E6E600EAE9E90000000000AFCDAF000075000000D1
            000000D1000000D10000008A0000EFF5EF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000B2C6D700104C
            800012558E00259BF800249AF800000000000000000000000000FCFCFCFFFCFB
            FBFFFCFBFBFFFCFBFBFF747171FF606060FF565656FFD1CBCAFFFAFAFAFFFAFA
            FAFFFAFAFAFFFDFDFDFF0000000000000000DED3CF00FAF8F600FAF8F600FAF8
            F60061EFFE0050D1FE004DCBFE00688BD200F4EDEB00E0D8D600DAD0CF00DAD0
            CF00E8E6E600E8E6E600E8E6E600E8E6E6000000000070AA700000A0000000DA
            000000DA000000DA000000DA000010711000CFE3CF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FBFCFD00104C
            8000104D8300279DF800269BF8000000000000000000CAB5B2FF242424FF1B1B
            1BFF202020FF1F1F1FFF555555FF626262FF686868FF201F1FFF1F1F1FFF2020
            20FF262626FF3B3635FFFBFBFBFF00000000DED3CF00FFFFFF00FFFFFF00FFFF
            FF0038C0F90040E7FE0036C4FE0044A4FE005C77C200EDE4E100EDE4E100EBE2
            DF00F5F4F400EAE9E900E8E6E600FAFAFA0000000000007B000000EC000000EC
            000000D6000000E5000000EC000000EC000000BF00009FCB9F00000000000000
            000000000000000000000000000000000000000000003869930014578D003CB3
            FA003AB1F90035A1E700429FDE0000000000000000000000000000000000104C
            8000115289002AA0F800299FF8000000000000000000C2B3B0FF7F7F7FFF6B6B
            6BFF676767FF797979FF646464FF666666FF696969FF6F6F6FFF7F7F7FFF7979
            79FF7F7F7FFF525252FFF5F4F4FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
            FF009FD2F9002EE2FD002ECFFE0035A4FE002971DC00ECE3E000EBE2DF00E9DF
            DC00FFFFFF00FFFFFF00F8F7F700FFFFFF000000000000A8000000F6000000F6
            0000108210000081000000B7000000F6000000F60000008200009FCD9F000000
            000000000000000000000000000000000000000000000F4A7C00155A91003DB4
            FA003CB3FA0039ADF5007FB5DD0000000000000000000000000000000000104C
            8000196AAA002CA2F8002BA1F8000000000000000000EBD9D6FFD2D2D2FFD2D2
            D2FFCACACAFFC4C4C4FFACACACFF9E9E9EFFB1B1B1FFCCCCCCFFC5C5C5FFC7C7
            C7FFD3D3D3FFC1C0C0FFFAF9F9FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF007FC5F70019E7FE0017B4FE002392FE00E3D9D500E3D7D400E2D6
            D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8EF002AF72A0017D31700108F
            100000000000000000000000000060B46000028E020027F827002AF72A000B9D
            0B0000000000000000000000000000000000000000000F4A7C001860960040B7
            FA003FB6FA003DB4FA0045A7E4000000000000000000000000008AA8C2002689
            D00031A8F9002FA5F900399AE3000000000000000000FCFBFBFFEAE8E7FFEAE8
            E8FFEAE8E8FFEAE8E8FFC2BDBCFFB0B0B0FF999999FFD1CBCAFFEBE9E9FFEBE9
            E9FFEBE9E9FFF4F3F3FF0000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00EEF6FC0008B6F70011B0FE00149EFE008992BF00DCD0CC00DBCF
            CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFDCAF0035D5350010941000CFE9
            CF0000000000000000000000000000000000DFF0DF000594050028C728004FF1
            4F0040AA4000EFF8EF000000000000000000000000000F4A7C001A649B003CAE
            EF0040B7F9003EB6FA003DB4FA005EABDF009EC9E7009EC3DF002376B40034AB
            F90033AAF90031A7F80090C0E400000000000000000000000000000000000000
            00000000000000000000C3BDBCFF9D9D9DFFB3B3B3FFE4DFDEFF000000000000
            000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FEFEFD005EB0F2000BB1FE000AAAFE001F51C400DACDC900D9CC
            C800FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BC6000109B1000CFEACF000000
            00000000000000000000000000000000000000000000DFF1DF0060BC6000089B
            08002DB52D0030A83000EFF8EF0000000000000000000F4A7C00276799001157
            9300125894003FB5F60040B7FA003EB5FA003DB4FA003BB2FA0039B0FA0037AE
            F90036ADF900DAEAF50000000000000000000000000000000000000000000000
            00000000000000000000D4CFCEFFCDCDCDFFB1B1B1FFE4DFDEFF000000000000
            000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FDFCFB00FBF9F80000DFFE0002A6FE000E73FE003F6CD200C8B6
            B100FFFFFF00FFFFFF00FFFFFF00FFFFFF0040B8410000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000DFF3DF0060C4600000A10300CFEED000000000006F92B000E6ECF2002B6B
            A100125A98001969A800339BDC003FB7FA003EB6FA003CB3FA003BB2FA0038AD
            F60056A5DC000000000000000000000000000000000000000000000000000000
            00000000000000000000E4E0DFFFDDDDDDFFBEBEBEFFE4DFDEFF000000000000
            000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FDFCFB00FBF8F70000C5F80000BEFE000587FE000959E400BFC7
            E600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000DFF4E10010B326000000000000000000000000000000
            0000000000007AA5CA003879B1001461A3001964A50084ADD000DDEAF4000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000E2D3D0FFF6E2DDFFF3DEDAFFFCFCFBFF000000000000
            000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
            FF00FEFEFD00FBF9F800F9F5F30037ADE80000DBFE000AA0FE002E8CFE006584
            D100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000F3F7FA00F7F9FC0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000DDD1CD00DED3CF00DED3CF00DED3
            CF00DED3CF00DACEC900D5C8C300C8B6B1002088DF004D77CA009FAAD900FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000424D3E000000000000003E000000
            2800000040000000300000000100010000000000800100000000000000000000
            000000000000000000000000FFFFFF0000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000FFFFC003F9FFFFFFC7E38E01F83F001F
            83C10000F00F001F81810000E00F001F80010000803F0001C003000080610000
            E007000084610000F00F00008FE10000F00F0FFC8FE10000E0078E018E410000
            C003C0038C0300008001E007F80300078181F60FF00F001783C1F60FF00F001F
            C7E3F70FFC3F001FFFFFF00FFFBF001FFFFF8000FFFFFFFFFC7F0000FFFFFFFF
            FC3F0000CFFFFFF3FC3F0000C7FFFFC1FC3F0000C1FFFF81FC3F000080FFFFC1
            C0030000807FFFC180010000803F81E180010000801F81E1800100000E0F81C1
            800300000F038001FC3F00001F818003FC3F00007FF08007FC3F0000FFFCF81F
            FC3F0000FFFFFE7FFFFF0000FFFFFFFF00000000000000000000000000000000
            000000000000}
        end
      end
    end
    object pnlImprimirContactos: TNxHeaderPanel
      AlignWithMargins = True
      Left = 281
      Top = 35
      Width = 199
      Height = 298
      Align = alRight
      Caption = 'Imprimir informe de contactos'
      ColorScheme = csSilver2010
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -12
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      HeaderSize = 20
      ParentHeaderFont = False
      TabOrder = 1
      Visible = False
      FullWidth = 199
      object W7Panel2: TW7Panel
        AlignWithMargins = True
        Left = 9
        Top = 260
        Width = 180
        Height = 29
        Margins.Left = 0
        Margins.Right = 0
        Version = '1.0.1.2'
        Caption = 'W7Panel2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        OuterBorderColor = clWhite
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorA = clWhite
        ColorC = clBlack
        ColorD = clBlack
        Align = alBottom
        DoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        object btnImprimirContactos: TcxButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 41
          Height = 23
          Align = alClient
          Caption = 'Imprimir'
          TabOrder = 0
          OnClick = btnImprimirContactosClick
        end
        object btnCancelarContactos: TcxButton
          AlignWithMargins = True
          Left = 50
          Top = 3
          Width = 127
          Height = 23
          Align = alRight
          Caption = 'Aceptar'
          TabOrder = 1
          OnClick = btnCancelarContactosClick
        end
      end
      object pgrImprimirContactos: TAdvSmoothProgressBar
        Left = 9
        Top = 240
        Width = 180
        Height = 17
        Step = 10.000000000000000000
        Maximum = 100.000000000000000000
        Appearance.BackGroundFill.Color = clWhite
        Appearance.BackGroundFill.ColorTo = 15590880
        Appearance.BackGroundFill.ColorMirror = clNone
        Appearance.BackGroundFill.ColorMirrorTo = clNone
        Appearance.BackGroundFill.GradientType = gtVertical
        Appearance.BackGroundFill.GradientMirrorType = gtSolid
        Appearance.BackGroundFill.BorderColor = 13815240
        Appearance.BackGroundFill.Rounding = 0
        Appearance.BackGroundFill.ShadowOffset = 0
        Appearance.BackGroundFill.Glow = gmNone
        Appearance.ProgressFill.Color = 15591909
        Appearance.ProgressFill.ColorTo = clNone
        Appearance.ProgressFill.ColorMirror = clNone
        Appearance.ProgressFill.ColorMirrorTo = clNone
        Appearance.ProgressFill.GradientType = gtVertical
        Appearance.ProgressFill.GradientMirrorType = gtVertical
        Appearance.ProgressFill.BorderColor = 8154470
        Appearance.ProgressFill.Rounding = 0
        Appearance.ProgressFill.ShadowOffset = 0
        Appearance.ProgressFill.Glow = gmNone
        Appearance.Font.Charset = DEFAULT_CHARSET
        Appearance.Font.Color = clWindowText
        Appearance.Font.Height = -11
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = []
        Appearance.ProgressFont.Charset = DEFAULT_CHARSET
        Appearance.ProgressFont.Color = clWindowText
        Appearance.ProgressFont.Height = -11
        Appearance.ProgressFont.Name = 'Tahoma'
        Appearance.ProgressFont.Style = []
        Appearance.ValueFormat = '%.0f%%'
        Version = '1.7.0.0'
        Align = alBottom
      end
      object lstchkContactos: TcxCheckListBox
        Left = 9
        Top = 25
        Width = 294
        Height = 215
        Align = alLeft
        Items = <>
        ParentFont = False
        TabOrder = 2
      end
      object W7Panel3: TW7Panel
        Left = 303
        Top = 25
        Width = 138
        Height = 215
        Version = '1.0.1.2'
        Caption = 'W7Panel3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        SolidColor = clBlack
        OuterBorderColor = clWhite
        InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
        Style = wpsCustom
        FillStyle = pfsGradient
        ColorA = clWhite
        ColorC = clBlack
        ColorD = clBlack
        Align = alLeft
        DoubleBuffered = False
        ParentFont = False
        TabOrder = 3
        object grpImprimirContactos: TcxRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 3
          Align = alTop
          Caption = 'Tipo de impresi'#243'n'
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'Excel'
            end
            item
              Caption = 'Pdf'
            end>
          Style.BorderColor = clWindowFrame
          TabOrder = 0
          Height = 90
          Width = 132
        end
        object grpOrdenContactos: TcxRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 99
          Align = alTop
          Caption = 'Tipo de Orden'
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'Vendedor'
            end
            item
              Caption = 'Estatus'
            end
            item
              Caption = 'Cuidad'
            end
            item
              Caption = 'Fecha de registro'
            end
            item
              Caption = 'Compa'#241'ia'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2010Silver'
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
          TabOrder = 1
          Height = 150
          Width = 132
        end
        object chkTodosContactos: TcxCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 255
          Align = alTop
          Caption = 'Todos'
          ParentFont = False
          TabOrder = 2
          OnClick = chkTodosContactosClick
          Width = 132
        end
      end
    end
    object tdFechaContactosInicio: TDateTimePicker
      Left = 30
      Top = 3
      Width = 100
      Height = 20
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
      OnChange = tdFechaContactosInicioChange
    end
    object tdFechaContactosFinal: TDateTimePicker
      Left = 178
      Top = 3
      Width = 100
      Height = 20
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
      OnChange = tdFechaContactosInicioChange
    end
    object GridCompaniasCont: TcxGrid
      AlignWithMargins = True
      Left = 14
      Top = 37
      Width = 203
      Height = 294
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      TabOrder = 4
      object Grid_CompaniasCont: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsContactosCompanias
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object Grid_CompaniasContColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'sIdCompania'
        end
      end
      object GridCompaniasContLevel1: TcxGridLevel
        GridView = Grid_CompaniasCont
      end
    end
    object chkMostrarContactos: TcxCheckBox
      Left = 442
      Top = 5
      Caption = 'Mostrar todos los contactos'
      ParentFont = False
      TabOrder = 5
      Transparent = True
      OnClick = chkMostrarContactosClick
      Width = 164
    end
  end
  object pnlImpresionGrafica: TNxHeaderPanel
    Left = 143
    Top = 115
    Width = 233
    Height = 119
    HeaderColor = 10930928
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    HeaderSize = 0
    ParentHeaderFont = False
    TabOrder = 13
    Visible = False
    DesignSize = (
      231
      117)
    FullWidth = 233
    object lblImpresionGraficas: TLabel
      Left = 47
      Top = 11
      Width = 125
      Height = 15
      Anchors = [akTop]
      Caption = 'Graficas de Efectividad'
      ExplicitLeft = 102
    end
    object lblInicio: TLabel
      Left = 21
      Top = 246
      Width = 32
      Height = 15
      Caption = 'Inicio:'
    end
    object lblFinal: TLabel
      Left = 192
      Top = 245
      Width = 20
      Height = 15
      Caption = 'Fin:'
    end
    object btnEfecPorTipoVisita: TcxButton
      Left = 22
      Top = 32
      Width = 185
      Height = 25
      Anchors = [akTop]
      Caption = 'Empresa Actual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnEfecPorTipoVisitaClick
    end
    object btnEfecGeneral: TcxButton
      Left = 22
      Top = 99
      Width = 185
      Height = 25
      Anchors = [akTop]
      Caption = 'General'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnEfecGeneralClick
    end
    object btnEfecPorResponsable: TcxButton
      Left = 22
      Top = 67
      Width = 185
      Height = 25
      Anchors = [akTop]
      Caption = 'Todas las Empresas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnEfecPorResponsableClick
    end
    object btnEfecVendedores: TcxButton
      Left = 22
      Top = 194
      Width = 185
      Height = 25
      Anchors = [akTop]
      Caption = 'Vendedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = btnEfecVendedoresClick
    end
    object btnEfecVendedorActual: TcxButton
      Left = 22
      Top = 163
      Width = 185
      Height = 25
      Anchors = [akTop]
      Caption = 'Vendedor Seleccionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnEfecVendedorActualClick
    end
    object btnResumenCompanias: TcxButton
      Left = 22
      Top = 131
      Width = 185
      Height = 25
      Anchors = [akTop]
      Caption = 'Resumen Compa'#241'ias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnResumenCompaniasClick
    end
    object dtpInicio: TDateTimePicker
      Left = 55
      Top = 324
      Width = 122
      Height = 23
      Date = 41930.461080219910000000
      Time = 41930.461080219910000000
      TabOrder = 6
      Visible = False
    end
    object dtpFinal: TDateTimePicker
      Left = 202
      Top = 327
      Width = 122
      Height = 23
      Date = 41930.461313333330000000
      Time = 41930.461313333330000000
      TabOrder = 7
      Visible = False
    end
    object btnEfecVendedorPorFecha: TcxButton
      Left = 18
      Top = 273
      Width = 188
      Height = 25
      Anchors = [akTop]
      Caption = 'Vendedores X rango de Fechas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btnEfecVendedorPorFechaClick
    end
    object cxdtdtInicio: TcxDateEdit
      Left = 56
      Top = 241
      ParentFont = False
      TabOrder = 9
      OnEnter = cxdtdtInicioEnter
      OnExit = cxdtdtInicioExit
      Width = 121
    end
    object cxdtdtFin: TcxDateEdit
      Left = 216
      Top = 241
      ParentFont = False
      TabOrder = 10
      OnEnter = cxdtdtFinEnter
      OnExit = cxdtdtFinExit
      Width = 121
    end
  end
  object Panel: TPanel
    Left = 98
    Top = 87
    Width = 29
    Height = 9
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    object lbl34: TLabel
      Left = 626
      Top = 311
      Width = 79
      Height = 15
      Caption = 'Tipo de Visita:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl35: TLabel
      Left = 626
      Top = 352
      Width = 57
      Height = 15
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxdbfltrcntrl1: TcxDBFilterControl
      Left = 653
      Top = 98
      Width = 53
      Height = 51
      Items = <>
      TabOrder = 0
      Visible = False
    end
    object lbl1: TcxLabel
      Left = 86
      Top = 262
      Caption = '&Responsable:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl2: TcxLabel
      Left = 366
      Top = 262
      Caption = '&Fecha de Registro:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl3: TcxLabel
      Left = 86
      Top = 288
      Caption = 'R&esumen'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl4: TcxLabel
      Left = 389
      Top = 290
      Caption = '&Asunto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    inline frmbr1: TfrmBarra
      Left = 1
      Top = 11
      Width = 74
      Height = 201
      Margins.Right = 5
      VertScrollBar.Style = ssHotTrack
      Align = alCustom
      Color = 13683905
      ParentBackground = False
      ParentColor = False
      TabOrder = 8
      ExplicitLeft = 1
      ExplicitTop = 11
      ExplicitWidth = 74
      ExplicitHeight = 201
      inherited AdvPanel1: TAdvPanel
        Width = 74
        Height = 201
        ExplicitWidth = 74
        ExplicitHeight = 201
        FullHeight = 0
        inherited btnEdit: TcxButton
          Top = 26
          OnClick = btnEditClick
          ExplicitTop = 26
        end
        inherited btnPost: TcxButton
          Top = 51
          OnClick = btnPostClick
          ExplicitTop = 51
        end
        inherited btnCancel: TcxButton
          OnClick = btnCancelClick
        end
        inherited btnDelete: TcxButton
          Top = 100
          OnClick = btnDeleteClick
          ExplicitTop = 100
        end
        inherited btnPrinter: TcxButton
          Top = 125
          OnClick = btnPrinterClick
          ExplicitTop = 125
        end
        inherited btnRefresh: TcxButton
          Top = 150
          OnClick = btnRefreshClick
          ExplicitTop = 150
        end
        inherited btnExit: TcxButton
          Top = 173
          OnClick = btnExitClick
          ExplicitTop = 173
        end
        inherited btnAdd: TcxButton
          Top = 1
          OnClick = btnAddClick
          ExplicitTop = 1
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
      inherited ImgBtns: TImageList
        Bitmap = {
          494C0101080009003C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
          0000000000003600000028000000400000003000000001002000000000000030
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000008F8F8F001C1C
          1C00262626002626260026262600262626002626260026262600262626002626
          26001C1C1C009F9F9F0000000000000000000000000000000000000000000000
          000000000000F4F7FB00A0B6D900000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000EFF0FC00303E
          D600CFD2F500000000000000000000000000000000000000000000000000CFCF
          F4003030CE00EFEFFB00000000000000000000000000303030001C1C1C005757
          5700000000000000000000000000F9F9F900F2F2F200E5E5E500DFDFDF00D8D8
          D800555555001C1C1C0030303000000000000000000000000000000000000000
          000000000000F4F4F6002F69BC001B7DF000165EC000D5DCEB00000000000000
          00000000000000000000000000000000000053575500B3B9B700BAC0BE00BDC3
          C100BEC4C200BFC5C300BFC5C300BFC5C300BFC5C300BFC5C300BDC2C0000000
          00000000000000000000000000000000000000000000EFF0FC003042D600144B
          EC00101ECD00CFD2F50000000000000000000000000000000000CFD0F4001010
          C7000000E9003030CE00EFEFFB0000000000BFBFBF0094949400B7B7B700CACA
          CA00F6F6F600F6F6F600F6F6F600F5F5F500EFEFEF00E3E3E300DDDDDD00D6D6
          D600CACACA00AAAAAA0094949400BFBFBF000000000000000000000000000000
          000085A0CF00306DC100166BD200228AFF00238CFF001761C500648AC500E2E8
          F4000000000000000000000000000000000053575500AEAEAE00B0B1B100AFB5
          B300CACFCE00D1D5D400D3D7D500D3D7D600D3D7D600D3D7D600CFD4D2000000
          000000000000000000000000000000000000000000003045DA001C59ED003371
          FE001246EB00101ECD00CFD2F5000000000000000000CFD0F4001013C8000000
          E9000000FE000000E9003030CE000000000050505000B8B8B8008A8A8A000000
          00008E8E8E0096969600969696009696960095959500909090008D8D8D008A8A
          8A000000000082828200B8B8B80060606000000000000000000000000000CDD6
          E9001A7DEB00228FFF00248FFF00278FFF001E8DFF0078BAFF00245DB200CFD7
          EB000000000000000000000000000000000053575500ABABAB00ABABAB00ABAB
          AB00999A9900AFB1B100DADDDC00E4E6E600E5E8E700E5E8E700E0E2E2000000
          00000000000000000000000000000000000000000000CFD5F700102BD4001E5E
          EE003371FE002B68FE001246EB00CFD2F500CFD1F500031CEA000219FE00000A
          FE000000E9001010C700CFCFF4000000000020202000CCCCCC00CCCCCC00CCCC
          CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC00CCCCCC00CCCCCC002020200000000000F4F5F900346DBD00218E
          FD0061B1FF00549DEF002668C000B4E2FF0096C7F700D6DAEC00000000000000
          00000000000000000000000000000000000053575500ABABAB00AAAAAA00A4A4
          A4009C9C9C009B9B9B0096969600C5C6C600F1F2F200F2F3F200DFE0DF00E7E7
          E7000A0AA900E8E8E800F7F7F700000000000000000000000000CFD5F700102B
          D4003B7AFE003371FE002B68FE00101ECD00101DCC000B34FE000628FE000219
          FE001013C800CFD0F40000000000000000001F1F1F00D6D6D600D6D6D600D6D6
          D600D9D9D900DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DBDBDB00D9D9
          D900D6D6D600D6D6D600D6D6D6001F1F1F00000000008AA4D000197CE800369E
          FF00337ED7006488C400B9BEDC0094C7F800396EBA000000000000000000F4F7
          FB00D3DAEA00D1DAEA00EBEFF7000000000053575500ABABAB00AAAAAA00A1A1
          A100989898009090900096969600C5C5C500F7F7F700E7E7E700D0D1D1000A0A
          A8003535D300CCCCCC00DDDDDD00EFEFEF00000000000000000000000000CFD5
          F7001E5EEE003B7AFE003371FE00144AEE001042EE00103FFE000B34FE00031C
          EA00CFD0F4000000000000000000000000001D1D1D00E5E5E500E9E9E900ECEC
          EC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00E9E9E900E5E5E5001D1D1D00000000002F6CBF002898FF0064B9
          FF006F8DC60000000000FBFBFC003B71BC00E9EBF4000000000000000000B5C5
          E1001565D1000D5BCD006188C6000000000053575500ABABAB00A8A8A8009F9F
          9F00959595008A8A8A0091919100EFF0F000FCFCFC00EBEBEB000909A8003030
          D6003A3AD8004242D9004646DA000303A5000000000000000000000000000000
          0000CFD5F700102BD4002464F1003371FE002B68FE001042EE00101DCC00CFD1
          F5000000000000000000000000000000000050505000D5EDD50032A13200B5D2
          B500FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
          FC00FCFCFC00FCFCFC00FCFCFC005050500000000000177BE7004FB7FF0078BB
          F60000000000000000000000000000000000000000000000000000000000D4DA
          EA00258FFF001D7EFF004477C4000000000053575500ABABAB00A5A5A5009C9C
          9C0093939300BFBFBF0085858500EEEFEF00FCFCFC000C0CAB002D2DD5000000
          CC000000CC000000CC000000CC000303A6000000000000000000000000000000
          0000CFD5F700102ED600296BF1003B7AFE003371FE00144AEE00101ECD00CFD2
          F500000000000000000000000000000000009F9F9F00E5ECE500D7EBD700EDF4
          ED00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000F5F5F5009F9F9F00000000001882EF0055C0FF007FB8
          ED0000000000000000000000000000000000000000000000000000000000AEBE
          DC00238BFF001A7AFC005782C5000000000053575500ABABAB00A3A3A3009A9A
          9A009191910094949400A9A9A900EEEFEF00E5E5F4004040CB003737D7003A3A
          D8004040D9003939D7003D3DD8000303A600000000000000000000000000CFD8
          F800347CF00065A0FE005E9AFE00296BF1002464F1003371FE002B68FE001246
          EB00CFD2F50000000000000000000000000000000000BFBFBF00505050003F3F
          3F00000000000000000000000000F9F9F900F1F1F100E3E3E300DBDBDB00D4D4
          D4003838380050505000BFBFBF000000000000000000376FBA005184C5003E75
          BE00000000000000000000000000497EC000177BD20000000000869FCD001B7E
          DA003F93FF001D61C500D3DAEA000000000053575500AAAAAA00A0A0A0009797
          97008E8E8E0076767600BBBBBB00EEEEEE00FCFCFC00E6E7F5005151CD005656
          DE005858DD005B5BDE005555DD000303A6000000000000000000CFD9F900103E
          E00077ADFE006FA7FE0065A0FE00102ED600102BD4003B7AFE003371FE002B68
          FE00101ECD00CFD2F50000000000000000000000000000000000EFEFEF001919
          1900636363007B7B7B0078787800727272006F6F6F0068686800656565004949
          490019191900EFEFEF00000000000000000000000000F8F8FA00F7F7F900F7F7
          FA000000000000000000E8E9F40030B0F4002EACF200618EC9001D83DB002497
          FF005197F6005A83C300000000000000000053575500A8A8A8009E9E9E009595
          95008C8C8C00AAAAAA008E8E8E00EDEEEE00FCFCFC00FCFCFC00E6E7F3005959
          CF00A5A5EC000E0EAB000E0EAB002929B40000000000CFDAFA001044E400448F
          F3007FB3FE0077ADFE00347CF000CFD5F700CFD5F7001E5EEE003B7AFE003371
          FE001246EB00101ECD00CFD2F500000000000000000000000000000000009F9F
          9F00C5C5C500FAFAFA00F4F4F400E8E8E800E2E2E200D5D5D500CFCFCF007979
          79009F9F9F000000000000000000000000000000000000000000000000000000
          000000000000DFE2F0003473BC003BC7FF0033B3F80029A4FB00279CFF004C9F
          FF003068BD00DEE2EF00000000000000000053575500A6A6A6009B9B9B009292
          9200898989007F7F7F0083838300EDEEEE00FCFCFC00FCFCFC00F8F9F900F1F1
          FA005858CC00000000000000000000000000000000003066EC004F9CF600A1CB
          FE00448FF300103EE000CFD8F8000000000000000000CFD5F700102BD4001E5E
          EE003371FE00144BEC00303ED600000000000000000000000000000000000000
          0000BCBCBC000000000000000000F4F4F400EEEEEE00E2E2E200DBDBDB007272
          7200000000000000000000000000000000000000000000000000000000000000
          00002A61B10031B3F40046DBFF0034C2FF005FC8FF008ECBFE00659DE3004374
          BD000000000000000000000000000000000053575500A3A3A300979797008989
          890080808000767676007B7B7B00EBECEC00FCFCFC00FCFCFC00F8F9F9000000
          0000F5F5FB0000000000000000000000000000000000EFF3FE003066EC004F9C
          F6001044E400CFD9F90000000000000000000000000000000000CFD5F700102B
          D4001C59ED003042D600EFF0FC00000000000000000000000000000000000000
          0000B7B7B7000000000000000000FAFAFA00F4F4F400E8E8E800E2E2E2006F6F
          6F00000000000000000000000000000000000000000000000000000000000000
          0000C0CFE7005283C300247DC70065D7FF0090E0FF004C79BD009EB0D700F6F6
          F90000000000000000000000000000000000535755009A9A9A008A8A8A007E7E
          7E00747474006C6C6C0072727200E8E9E900FBFCFC00FCFCFC00F8F8F8000000
          0000000000000000000000000000000000000000000000000000EFF3FE003066
          EC00CFDAFA00000000000000000000000000000000000000000000000000CFD5
          F7003045DA00EFF0FC0000000000000000000000000000000000000000000000
          0000B2B2B200000000000000000000000000FAFAFA00EEEEEE00E8E8E8006C6C
          6C00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C8CFE600367DC3008FCEF900C8CCE500000000000000
          0000000000000000000000000000000000005357550090909000818181007676
          76006B6B6B006363630067676700E1E3E300F7F8F800F8F9F900F5F6F6000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000181818001818180018181800181818001818180018181800181818001212
          1200000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F3F6FA00000000000000
          000000000000000000000000000000000000A8AAA90053575500535755005357
          55005357550053575500565A5800676A680074777600757977006D706E000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084777300847773008477
          7300847773008477730084777300847773008477730084777300847773008477
          7300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000ECEAEAFFE2DDDCFFE3DFDFFF00000000000000000000
          000000000000000000000000000000000000DED3CF00FAF7F500FAF7F500FAF7
          F500EDE9E700ECE7E500ECE7E500E8E0DE00F1EAE800F1E9E700F0E8E600EEE6
          E300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000534B4AFF262626FF1D1D1DFFE4E0DFFF000000000000
          000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
          F7005E70A800E2DDDB00E1DBD900E0D8D600E0D8D600EAE2E000F1E9E700F0E7
          E500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFF5EF00005A
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000BAD0E200DAE9F60000000000000000000000000000000000000000000000
          000000000000000000007F7978FF565656FF303030FFE4DFDEFF000000000000
          000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
          F700818BA2006680C000E1DBD900E0D8D600E0D8D600DCD3D100DED5D300E6DD
          DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000009FC19F00006C
          0000609860000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000EAF0F400186D
          B4002399F7002194F400B5D3ED00000000000000000000000000000000000000
          00000000000000000000595453FF383838FF404040FFE4DFDEFF000000000000
          000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
          F700C9E7FE00A5E1FE0088C9F800E0D8D600E0D8D600DCD3D100DBD2D000DAD0
          CF00E8E6E600E8E6E600EDECEC00FFFFFF0000000000000000001065100000BA
          000000C0000000760000307A3000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000E6ECF200356B99001052
          8B00218EE5002297F70053A1E100000000000000000000000000000000000000
          00000000000000000000837E7CFF676767FF3E3E3EFFE4DFDEFF000000000000
          000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
          F70076E2FE0059D4FE0060CBFE00AFB0CD00E0D9D700DBD2D000DAD1CF00D8CF
          CD00E8E6E600E8E6E600E8E6E600EAE9E90000000000AFCDAF000075000000D1
          000000D1000000D10000008A0000EFF5EF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B2C6D700104C
          800012558E00259BF800249AF800000000000000000000000000FCFCFCFFFCFB
          FBFFFCFBFBFFFCFBFBFF747171FF606060FF565656FFD1CBCAFFFAFAFAFFFAFA
          FAFFFAFAFAFFFDFDFDFF0000000000000000DED3CF00FAF8F600FAF8F600FAF8
          F60061EFFE0050D1FE004DCBFE00688BD200F4EDEB00E0D8D600DAD0CF00DAD0
          CF00E8E6E600E8E6E600E8E6E600E8E6E6000000000070AA700000A0000000DA
          000000DA000000DA000000DA000010711000CFE3CF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FBFCFD00104C
          8000104D8300279DF800269BF8000000000000000000CAB5B2FF242424FF1B1B
          1BFF202020FF1F1F1FFF555555FF626262FF686868FF201F1FFF1F1F1FFF2020
          20FF262626FF3B3635FFFBFBFBFF00000000DED3CF00FFFFFF00FFFFFF00FFFF
          FF0038C0F90040E7FE0036C4FE0044A4FE005C77C200EDE4E100EDE4E100EBE2
          DF00F5F4F400EAE9E900E8E6E600FAFAFA0000000000007B000000EC000000EC
          000000D6000000E5000000EC000000EC000000BF00009FCB9F00000000000000
          000000000000000000000000000000000000000000003869930014578D003CB3
          FA003AB1F90035A1E700429FDE0000000000000000000000000000000000104C
          8000115289002AA0F800299FF8000000000000000000C2B3B0FF7F7F7FFF6B6B
          6BFF676767FF797979FF646464FF666666FF696969FF6F6F6FFF7F7F7FFF7979
          79FF7F7F7FFF525252FFF5F4F4FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
          FF009FD2F9002EE2FD002ECFFE0035A4FE002971DC00ECE3E000EBE2DF00E9DF
          DC00FFFFFF00FFFFFF00F8F7F700FFFFFF000000000000A8000000F6000000F6
          0000108210000081000000B7000000F6000000F60000008200009FCD9F000000
          000000000000000000000000000000000000000000000F4A7C00155A91003DB4
          FA003CB3FA0039ADF5007FB5DD0000000000000000000000000000000000104C
          8000196AAA002CA2F8002BA1F8000000000000000000EBD9D6FFD2D2D2FFD2D2
          D2FFCACACAFFC4C4C4FFACACACFF9E9E9EFFB1B1B1FFCCCCCCFFC5C5C5FFC7C7
          C7FFD3D3D3FFC1C0C0FFFAF9F9FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF007FC5F70019E7FE0017B4FE002392FE00E3D9D500E3D7D400E2D6
          D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8EF002AF72A0017D31700108F
          100000000000000000000000000060B46000028E020027F827002AF72A000B9D
          0B0000000000000000000000000000000000000000000F4A7C001860960040B7
          FA003FB6FA003DB4FA0045A7E4000000000000000000000000008AA8C2002689
          D00031A8F9002FA5F900399AE3000000000000000000FCFBFBFFEAE8E7FFEAE8
          E8FFEAE8E8FFEAE8E8FFC2BDBCFFB0B0B0FF999999FFD1CBCAFFEBE9E9FFEBE9
          E9FFEBE9E9FFF4F3F3FF0000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00EEF6FC0008B6F70011B0FE00149EFE008992BF00DCD0CC00DBCF
          CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFDCAF0035D5350010941000CFE9
          CF0000000000000000000000000000000000DFF0DF000594050028C728004FF1
          4F0040AA4000EFF8EF000000000000000000000000000F4A7C001A649B003CAE
          EF0040B7F9003EB6FA003DB4FA005EABDF009EC9E7009EC3DF002376B40034AB
          F90033AAF90031A7F80090C0E400000000000000000000000000000000000000
          00000000000000000000C3BDBCFF9D9D9DFFB3B3B3FFE4DFDEFF000000000000
          000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FEFEFD005EB0F2000BB1FE000AAAFE001F51C400DACDC900D9CC
          C800FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BC6000109B1000CFEACF000000
          00000000000000000000000000000000000000000000DFF1DF0060BC6000089B
          08002DB52D0030A83000EFF8EF0000000000000000000F4A7C00276799001157
          9300125894003FB5F60040B7FA003EB5FA003DB4FA003BB2FA0039B0FA0037AE
          F90036ADF900DAEAF50000000000000000000000000000000000000000000000
          00000000000000000000D4CFCEFFCDCDCDFFB1B1B1FFE4DFDEFF000000000000
          000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FDFCFB00FBF9F80000DFFE0002A6FE000E73FE003F6CD200C8B6
          B100FFFFFF00FFFFFF00FFFFFF00FFFFFF0040B8410000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DFF3DF0060C4600000A10300CFEED000000000006F92B000E6ECF2002B6B
          A100125A98001969A800339BDC003FB7FA003EB6FA003CB3FA003BB2FA0038AD
          F60056A5DC000000000000000000000000000000000000000000000000000000
          00000000000000000000E4E0DFFFDDDDDDFFBEBEBEFFE4DFDEFF000000000000
          000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FDFCFB00FBF8F70000C5F80000BEFE000587FE000959E400BFC7
          E600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000DFF4E10010B326000000000000000000000000000000
          0000000000007AA5CA003879B1001461A3001964A50084ADD000DDEAF4000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000E2D3D0FFF6E2DDFFF3DEDAFFFCFCFBFF000000000000
          000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
          FF00FEFEFD00FBF9F800F9F5F30037ADE80000DBFE000AA0FE002E8CFE006584
          D100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000F3F7FA00F7F9FC0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000DDD1CD00DED3CF00DED3CF00DED3
          CF00DED3CF00DACEC900D5C8C300C8B6B1002088DF004D77CA009FAAD900FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000424D3E000000000000003E000000
          2800000040000000300000000100010000000000800100000000000000000000
          000000000000000000000000FFFFFF0000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FFFFC003F9FFFFFFC7E38E01F83F001F
          83C10000F00F001F81810000E00F001F80010000803F0001C003000080610000
          E007000084610000F00F00008FE10000F00F0FFC8FE10000E0078E018E410000
          C003C0038C0300008001E007F80300078181F60FF00F001783C1F60FF00F001F
          C7E3F70FFC3F001FFFFFF00FFFBF001FFFFF8000FFFFFFFFFC7F0000FFFFFFFF
          FC3F0000CFFFFFF3FC3F0000C7FFFFC1FC3F0000C1FFFF81FC3F000080FFFFC1
          C0030000807FFFC180010000803F81E180010000801F81E1800100000E0F81C1
          800300000F038001FC3F00001F818003FC3F00007FF08007FC3F0000FFFCF81F
          FC3F0000FFFFFE7FFFFF0000FFFFFFFF00000000000000000000000000000000
          000000000000}
      end
    end
    object TDBFecha: TDBDateTimePicker
      Left = 477
      Top = 260
      Width = 134
      Height = 23
      Date = 41511.000000000000000000
      Time = 41511.000000000000000000
      Checked = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = TDBFechaEnter
      OnExit = TDBFechaExit
      OnKeyPress = TDBFechaKeyPress
      DataField = 'dIdFecha'
      Datasource = dsBitacoravtas
    end
    object pnl2: TPanel
      Left = 86
      Top = 13
      Width = 894
      Height = 243
      TabOrder = 14
      object cxgrd2: TcxGrid
        Left = 1
        Top = 1
        Width = 892
        Height = 241
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object dbgrdGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Visible = True
          OnCellClick = dbgrdGrid1DBTableView1CellClick
          DataController.DataSource = dsBitacoravtas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          object IDGrid1DBTableView1iid1: TcxGridDBColumn
            DataBinding.FieldName = 'iid'
            Visible = False
            Options.Editing = False
            Width = 74
          end
          object IDGrid1DBTableView1sIdCompania1: TcxGridDBColumn
            DataBinding.FieldName = 'sIdCompania'
            Visible = False
            Options.Editing = False
            Width = 109
          end
          object IDGrid1DBTableView1dIdFecha1: TcxGridDBColumn
            DataBinding.FieldName = 'dIdFecha'
            Options.Editing = False
            Width = 69
          end
          object IDGrid1DBTableView1mResumen1: TcxGridDBColumn
            DataBinding.FieldName = 'mResumen'
            Options.Editing = False
            Width = 143
          end
          object IDGrid1DBTableView1mAsunto1: TcxGridDBColumn
            DataBinding.FieldName = 'mAsunto'
            Options.Editing = False
            Width = 113
          end
          object IDGrid1DBTableView1sResponsable1: TcxGridDBColumn
            DataBinding.FieldName = 'sResponsable'
            Options.Editing = False
            Width = 226
          end
          object nombre: TcxGridDBColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'nombre'
            Width = 212
          end
          object Descripcion: TcxGridDBColumn
            Caption = 'Tipo de Visita'
            DataBinding.FieldName = 'sDescripcion'
            Width = 127
          end
        end
        object cxgrdlvlGrid1Level2: TcxGridLevel
          GridView = dbgrdGrid1DBTableView1
        end
      end
    end
    object cbbTipoVisita: TDBLookupComboBox
      Left = 711
      Top = 306
      Width = 244
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      KeyField = 'iIdTipoVisita'
      ListField = 'sDescripcion'
      ListSource = dsTipoDeVisitas
      ParentFont = False
      TabOrder = 5
      OnEnter = cbbTipoVisitaEnter
      OnExit = cbbTipoVisitaExit
      OnKeyPress = cbbTipoVisitaKeyPress
    end
    object btnCatalogoTipoVisita: TButton
      Left = 958
      Top = 306
      Width = 22
      Height = 23
      Caption = '...'
      TabOrder = 15
      OnClick = btnCatalogoTipoVisitaClick
    end
    object cbbVendedor: TDBLookupComboBox
      Left = 711
      Top = 347
      Width = 244
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      KeyField = 'iIdVendedor'
      ListField = 'sNombre'
      ListSource = ds_CatVendedores
      ParentFont = False
      TabOrder = 6
      OnEnter = cbbVendedorEnter
      OnExit = cbbVendedorExit
      OnKeyPress = cbbVendedorKeyPress
    end
    object btnCatalogoVendedores: TButton
      Left = 958
      Top = 347
      Width = 22
      Height = 23
      Caption = '...'
      TabOrder = 16
      OnClick = btnCatalogoVendedoresClick
    end
    object mResumen: TMemo
      Left = 86
      Top = 306
      Width = 254
      Height = 147
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = mResumenEnter
      OnExit = mResumenExit
    end
    object mAsunto: TMemo
      Left = 345
      Top = 306
      Width = 266
      Height = 145
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnEnter = mAsuntoEnter
      OnExit = mAsuntoExit
    end
    object cxSResponsable: TEdit
      Left = 173
      Top = 260
      Width = 176
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = cxSResponsableEnter
      OnExit = cxSResponsableExit
      OnKeyPress = cxSResponsableKeyPress
    end
    object btnGraficaEfectividad: TcxButton
      Left = 799
      Top = 395
      Width = 170
      Height = 36
      Caption = 'Grafica de Efectividad'
      TabOrder = 7
      OnClick = btnGraficaEfectividadClick
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000300000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000300000005000000090000000C000000100000001200000014000000140000
        0012000000100000000D00000009000000050000000300000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000050000
        000B000000120A081D4719154A90272070CE282276D72B5AA5FF2957A3FF1F45
        84D71B417CCE1129509106101F48000000130000000B00000006000000030000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000030000000800000011120F
        31662E277FE039339CFF4445B1FF4A52C3FF4750BDFF72AEEBFF64A5E9FF5897
        DCFF5591D7FF427BC4FF2E5FABFF1E4587E00B1A346700000012000000090000
        0004000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000040000000B070612312C2675CD3F3C
        A4FF5159C6FF5564D3FF4E5AD0FF4755CEFF3F4DC2FF65A6E8FF599EE5FF5C9F
        E6FF5C9FE6FF5EA2E7FF63A4E8FF5794D9FF366AB4FF1B407CCE040913320000
        000C000000040000000100000001000000000000000000000000000000000000
        00000000000000000001000000040000000B0F0D2650393290F05054BCFF5966
        D5FF4B59CFFF4453CDFF4452CCFF4351CDFF3C4BC1FF6BACE9FF5FA2E7FF5EA2
        E6FF5DA0E7FF5B9FE6FF5A9EE6FF5DA1E6FF66A7E8FF5089CEFF255098F00914
        27530000000D0000000400000001000000000000000000000000000000000000
        000000000000000000030000000A100E2750413B9CFA5A61C7FF5462D2FF4856
        CFFF4755CDFF4755CDFF4654CEFF4654CEFF3E4DC2FF73B0EAFF67A8E8FF65A7
        E8FF64A6E8FF62A5E7FF61A4E7FF60A3E7FF5FA2E7FF66A5E8FF74A6DDFF4B4F
        80FA25140B520000000B00000003000000000000000000000000000000000000
        000000000002000000070A0917343F3B96ED5D65C9FF5462D3FF4C5AD0FF4B59
        CFFF4A59CEFF4957CFFF4856CEFF4856CEFF404FC3FF7BB6ECFF6EAEEAFF6DAC
        EAFF6CABE9FF6AABE9FF68A9E9FF67A8E9FF66A7E8FF82BAEEFF83988FFFC89A
        68FF8A4D2EED150C073700000008000000020000000000000000000000000000
        0001000000040000000E37337DCA5D61C2FF5E6BD6FF4E5DD1FF4E5CD0FF4E5B
        D0FF4C5BCFFF4C5ACFFF4B5AD0FF4B59CFFF4252C4FF81BBEEFF76B3ECFF74B2
        EBFF73B2EAFF72B0EBFF6FB0EBFF6EAFEAFF8AC0EFFF83978EFFD4A56AFFD7AB
        72FFBF8D60FF754127CD00000010000000050000000100000000000000000000
        000200000008191737625351B0FF6E7ADAFF5260D2FF525FD1FF515FD1FF505F
        D1FF4F5ED1FF4E5DD1FF4E5CD1FF4D5BD0FF4455C5FF89C1EFFF7EBAEDFF7CB8
        EDFF7BB8ECFF79B6ECFF77B6ECFF92C5F0FF869A90FFD5A76DFFD5A76DFFD5A7
        6CFFDBB37EFFA86C47FF321D11640000000A0000000200000000000000010000
        00040000000D434091DC6C73CFFF606ED6FF5563D3FF5463D3FF5462D3FF5262
        D2FF5260D2FF5160D1FF515FD1FF505ED1FF4757C7FF91C6F1FF86C0EEFF84BF
        EEFF83BEEEFF81BCEDFF9ACBF2FF899D92FFD6AA71FFD6AA71FFD7AA70FFD6A9
        6FFFD8AC75FFCDA173FF834B2FDD0000000F0000000500000001000000010000
        000615142B4D5B5AB4FF7885DFFF5967D4FF5867D4FF5765D4FF5664D3FF5665
        D3FF5563D3FF5462D2FF5462D2FF5262D2FF485BC9FF98CCF2FF8DC5F0FF8BC5
        F0FF8BC3F0FFA2D0F3FF8CA095FFD8AD75FFD8AC75FFD7AD74FFD7AC74FFD7AC
        73FFD7AB73FFDEB887FFAB704CFF29180F520000000700000002000000020000
        00082F2D5E916F73C8FF717EDCFF5C6AD5FF5B6AD5FF5A69D5FF5A68D5FF5967
        D4FF5867D4FF5766D3FF5765D3FF5664D3FF4B5DCAFF9FD1F2FF94CBF2FF93CA
        F2FFAAD6F5FF90A497FFD9B07AFFDAB079FFD9B079FFD9AF78FFD9AF78FFD8AE
        78FFD8AE76FFDDB682FFC3946BFF543220930000000A00000002000000020000
        000A444488C67C83D5FF6C79DAFF606DD6FF5E6DD6FF5E6CD6FF5D6BD5FF5C6A
        D5FF5B6AD5FF5B69D4FF5A68D4FF5968D4FF4D61CCFFA5D6F4FF9CD0F3FFB1DB
        F6FF93A799FFDBB37FFFDBB37EFFDBB37EFFDAB27DFFDBB27CFFDBB17CFFDBB1
        7BFFDAB07AFFDCB581FFD2A97FFF794A30C70000000C00000003000000030000
        000B5855A9EC8690DEFF6B77D9FF6271D7FF6270D8FF616FD6FF606ED7FF5F6D
        D7FF5F6DD6FF5E6CD6FF5D6BD5FF5C6BD5FF5063CDFFABDAF5FFB7DFF7FF96AA
        9CFFDCB683FFDDB682FFDDB582FFDCB582FFDCB481FFDBB480FFDCB480FFDBB4
        7FFFDBB37FFFDCB481FFDEBC92FF965D3CEC0000000D00000003000000030000
        000B605FB5FA8F99E2FF6A78DAFF6674D8FF6573D9FF6472D8FF6372D8FF6371
        D8FF6270D7FF6573D8FF6877D9FF6B7ADAFF6073D4FFC5E7F9FFA5B7A9FFE1C0
        92FFE1C091FFE0BD8EFFDFBA89FFDEB886FFDDB885FFDDB784FFDEB784FFDCB6
        83FFDDB682FFDDB583FFE3C69DFFA16643FA0000000E00000004000000030000
        000B6463B9FA939DE4FF6D7CDBFF6977DAFF6877D9FF6876D9FF6876D9FF6E7D
        DBFF7582DDFF7684DEFF7583DDFF7582DEFF6D6DCEFF86B2CEFFEBD3B1FFE4C5
        9BFFE4C59AFFE4C49AFFE3C499FFE3C397FFE1BE90FFDFB989FFDEB988FFDEB9
        87FFDEB887FFDDB987FFE6CAA3FFA36947FA0000000D00000003000000020000
        000A6161B1EC969FE3FF7483DDFF6D7BDBFF6C7ADBFF717FDDFF7B88DFFF7D8A
        E0FF7C88DFFF7B88DFFF7A88DFFF7A87DEFF7986DEFF7B76D4FFAFA7BFFFEDD5
        B4FFE6C89FFFE6C89EFFE6C79EFFE6C79DFFE5C79DFFE4C69BFFE2C092FFDFBC
        8CFFDFBB8BFFE0BD8DFFE2C7A2FF9C6544EC0000000C00000003000000020000
        0008525293C5969DDFFF7E8CE0FF6F7EDCFF7A88DFFF8390E1FF838FE1FF838F
        E1FF818EE1FF808DE1FF808CE1FF808CE1FF7E8BE0FF7D8AE0FF7F79D6FFB2AA
        C2FFEED8B9FFE7CBA4FFE8CCA4FFE7CAA4FFE7CBA3FFE7CAA2FFE7C9A2FFE4C4
        98FFE1BE8FFFE3C296FFDBBC9AFF81543AC60000000A00000002000000010000
        00063B3C698F8B8FD7FF8D9AE4FF818FE1FF8997E4FF8996E4FF8895E3FF8894
        E3FF8793E3FF8693E3FF8592E2FF8491E1FF8390E1FF8390E1FF828FE1FF837E
        D7FFB6AFC6FFEEDABCFFE9CEA8FFE9CEA8FFE9CEA8FFE9CEA7FFE8CDA7FFE8CD
        A7FFE7C99FFFE7CAA2FFCEA787FF5C3D2A900000000800000002000000010000
        00041D1D31487A7DCCFFADB8EEFF8F9BE5FF8F9BE5FF8D9AE5FF8C99E5FF8C98
        E4FF8B98E4FF8B98E4FF8A97E4FF8A96E4FF8995E4FF8895E4FF8794E3FF8793
        E3FF8682D8FFB9B2C8FFF0DCC0FFEBD1ACFFEAD1ACFFEAD1ABFFEAD1ABFFE9D0
        ABFFEAD0ABFFEEDBBEFFBB8765FF2C1D144A0000000500000001000000000000
        0002000000086465ACDBAAB1E5FFA2ADEAFF93A0E6FF92A0E6FF929FE6FF919E
        E6FF909DE6FF8F9CE6FF8F9BE5FF8E9AE5FF8E9AE4FF8D9AE4FF8D99E4FF8C98
        E4FF8B97E4FF8A86DAFFBCB6CCFFF0DEC3FFEBD3B1FFECD3B1FFEBD3B1FFEBD3
        B1FFEDD7B7FFE1C7AEFF976747DB0000000A0000000300000001000000000000
        0001000000052728435C8286D1FFC0C7F2FF99A5E8FF97A4E8FF96A3E7FF96A2
        E7FF96A2E7FF95A1E7FF94A1E7FF94A0E6FF939FE6FF929FE6FF919DE6FF909D
        E5FF909CE5FF8F9CE5FF8E89DCFFBFB9CEFFF2E0C6FFEDD6B5FFEDD6B5FFEDD6
        B4FFF2E4CEFFC0916FFF3B281C5D000000060000000100000000000000000000
        000000000002000000075D5F9EC6A2A7E1FFB6C0EFFF9CA8E9FF9BA8E9FF9AA7
        E8FF99A6E8FF99A5E8FF99A5E7FF98A4E7FF98A4E8FF97A4E7FF96A3E7FF95A2
        E7FF95A1E7FF95A0E7FF949FE7FF938DDCFFC1BDD0FFF3E2C9FFEED8B8FFF2E1
        C8FFD7B89EFF8A6044C700000009000000030000000100000000000000000000
        0000000000010000000310101B297175BFEBB4BAE9FFB3BDEFFFA0ACEAFF9FAB
        EAFF9FABEAFF9EAAEAFF9DA9E9FF9CA8EAFF9CA8EAFF9BA8E9FF9AA6E8FF9AA6
        E8FF99A5E9FF99A4E8FF98A4E8FF97A3E8FF9591DDFFC4BFD2FFF5E9D4FFE4CD
        B8FFA97655EC18110C2B00000004000000010000000000000000000000000000
        00000000000000000001000000041F2034467D81CEF9B7BCEAFFC0C8F2FFA4AF
        EBFFA3AEEBFFA2AEEBFFA1ADEBFFA1ACEBFFA0ACEAFF9FACEAFF9FABEAFF9FAA
        EAFF9EAAE9FF9DA9E9FF9CA8E9FF9CA7E8FF9CA7E8FFB0ABE6FFCFC6D3FFB684
        61F92D2017480000000500000002000000000000000000000000000000000000
        00000000000000000000000000010000000420213446777AC4EEA9ADE4FFCFD6
        F5FFB8C3F0FFA5B2ECFFA5B1ECFFA5B0ECFFA4B0EBFFA3B0EBFFA3AFEBFFA3AE
        EBFFA2AEEBFFA1ADEBFFA1ACEBFFB1BBEFFFC9D0F5FFA7ADE3FF7176BFEE261F
        2547000000050000000200000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000040F1019246468A6C98D92
        D9FFBABFEBFFD4DCF6FFC8D1F4FFBBC3F0FFB3BDEFFFB0BAEFFFAEB9EFFFB2BB
        EFFFB7C1EFFFC4CCF3FFD1D8F6FFB8BEEAFF8B90D7FF6063A2C90F0F19260000
        0005000000020000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000010000000300000005292B
        44576E73B4DA898DD9FFA3A8E2FFBCC1ECFFC7CEF1FFCCD2F3FFCDD3F3FFC6CD
        F1FFBBC1ECFFA3A8E2FF878CD6FF6C70B3DA2A2B455B00000006000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000051718263341446A836468A5C6696DABCE8085D3FC8085D3FC686B
        ABCE6366A4C64042698317182634000000060000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000400000003000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OptionsImage.Images = frmrepositorio.IconosTodos24
    end
    object pnl1: TPanel
      Left = 536
      Top = 76
      Width = 129
      Height = 93
      TabOrder = 13
      Visible = False
      object lbl36: TLabel
        Left = 9
        Top = 28
        Width = 33
        Height = 15
        Caption = 'Inicio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl37: TLabel
        Left = 153
        Top = 28
        Width = 19
        Height = 15
        Caption = 'Fin:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn1: TcxButton
        Left = 14
        Top = 111
        Width = 245
        Height = 25
        Caption = 'Imprimir &Todo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btn1Click
      end
      object btn2: TcxButton
        Left = 14
        Top = 148
        Width = 245
        Height = 25
        Caption = 'Imprimir empresa &seleccionada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btn2Click
      end
      object btnImprimirTodo: TcxButton
        Left = 14
        Top = 72
        Width = 245
        Height = 25
        Caption = 'Imprimir todas las empresas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnImprimirTodoClick
      end
      object cxdtdtInicio2: TcxDateEdit
        Left = 48
        Top = 23
        ParentFont = False
        TabOrder = 3
        OnEnter = cxdtdtInicio2Enter
        OnExit = cxdtdtInicio2Exit
        Width = 89
      end
      object cxdtdtFin2: TcxDateEdit
        Left = 176
        Top = 23
        ParentFont = False
        TabOrder = 4
        OnEnter = cxdtdtFin2Enter
        OnExit = cxdtdtFin2Exit
        Width = 89
      end
    end
  end
  object dsCompanias: TDataSource
    AutoEdit = False
    DataSet = zQCompanias
    Left = 136
    Top = 341
  end
  object zQCompanias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select * from con_companias where sIdCompaniaConf = :compania or' +
        'der by sIdCompania')
    Params = <
      item
        DataType = ftUnknown
        Name = 'compania'
        ParamType = ptUnknown
      end>
    Left = 72
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'compania'
        ParamType = ptUnknown
      end>
    object zQCompaniassIdCompania: TStringField
      DisplayLabel = 'Compa'#241'ia'
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object zQCompaniassRFC: TStringField
      DisplayLabel = 'RFC'
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object zQCompaniassRazonSocial: TStringField
      DisplayLabel = 'Raz'#243'n Social'
      FieldName = 'sRazonSocial'
      Size = 255
    end
    object zQCompaniassDomicilio: TStringField
      DisplayLabel = ' Domicilio'
      DisplayWidth = 255
      FieldName = 'sDomicilio'
      Size = 255
    end
    object zQCompaniassCiudad: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'sCiudad'
      Size = 50
    end
    object zQCompaniassCP: TStringField
      DisplayLabel = 'CP'
      FieldName = 'sCP'
      Size = 5
    end
    object zQCompaniassEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'sEstado'
      Size = 30
    end
    object zQCompaniassTelefono: TStringField
      DisplayLabel = 'Tel'#233'fono 1'
      FieldName = 'sTelefono'
      Size = 10
    end
    object zQCompaniasdMontoCredito: TFloatField
      DisplayLabel = 'Monto Cr'#233'dito'
      FieldName = 'dMontoCredito'
    end
    object zQCompaniaslStatus: TStringField
      DisplayLabel = 'Estatus'
      DisplayWidth = 16
      FieldName = 'lStatus'
    end
    object zQCompaniassNumeroProveedor: TStringField
      DisplayLabel = 'N'#250'mero Proveedor'
      FieldName = 'sNumeroProveedor'
      Size = 30
    end
    object zQCompaniassMail: TStringField
      DisplayLabel = 'Mail'
      DisplayWidth = 60
      FieldName = 'sMail'
      Size = 30
    end
    object zQCompaniassTelefono2: TStringField
      DisplayLabel = 'Tel'#233'fono 2'
      FieldName = 'sTelefono2'
      Size = 10
    end
    object zQCompaniassContacto: TStringField
      DisplayLabel = 'Contacto'
      FieldName = 'sContacto'
      Size = 100
    end
    object zQCompaniassNumeroInterior: TStringField
      FieldName = 'sNumeroInterior'
      Size = 10
    end
    object zQCompaniassNumeroExterior: TStringField
      FieldName = 'sNumeroExterior'
      Size = 10
    end
    object zQCompaniassLocalidad: TStringField
      FieldName = 'sLocalidad'
      Size = 50
    end
    object zQCompaniassMunicipio: TStringField
      FieldName = 'sMunicipio'
      Size = 50
    end
    object zQCompaniassColonia: TStringField
      FieldName = 'sColonia'
      Size = 50
    end
    object zQCompaniassIdCompaniaConf: TStringField
      FieldName = 'sIdCompaniaConf'
    end
    object zQCompaniassPuesto: TStringField
      FieldName = 'sPuesto'
      Size = 35
    end
  end
  object qrybitacoraventas: TZQuery
    Connection = connection.zConnection
    AfterScroll = qrybitacoraventasAfterScroll
    AfterInsert = qrybitacoraventasAfterInsert
    SQL.Strings = (
      'select '
      'bita.*,'
      'vend.sNombre as nombre,'
      'tipo.sDescripcion'
      ''
      'from vta_bitacoradeactividades bita'
      'inner join vta_catvendedores vend'
      'on bita.iIdVendedor = vend.iIdVendedor'
      ''
      'inner join vta_tipovisita tipo'
      'on bita.iIdTipoVisita = tipo.iIdTipoVisita'
      ''
      'where vend.sIdCompania = :sIdCompania'
      
        'OR (vend.sIdCompania = :sIdCompania2) and (DATE(bita.dIdFecha) B' +
        'ETWEEN :fechaInicio and :fechaFinal)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sIdCompania'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdCompania2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaFinal'
        ParamType = ptUnknown
      end>
    Left = 41
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sIdCompania'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdCompania2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaFinal'
        ParamType = ptUnknown
      end>
    object intgrfldqrybitacoraventasiid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'iid'
      Visible = False
    end
    object strngfldIdCompania: TStringField
      DisplayLabel = 'Compa'#241'ia'
      FieldName = 'sIdCompania'
      Size = 15
    end
    object qrybitacoraventasdIdFecha: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'dIdFecha'
      Required = True
    end
    object qrybitacoraventasmResumen: TMemoField
      DisplayLabel = 'Resumen'
      FieldName = 'mResumen'
      BlobType = ftMemo
    end
    object qrybitacoraventasmAsunto: TMemoField
      DisplayLabel = 'Asunto'
      FieldName = 'mAsunto'
      BlobType = ftMemo
    end
    object qrybitacoraventassResponsable: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'sResponsable'
      Required = True
      Size = 100
    end
    object intgrfldIdTipoVisita: TIntegerField
      FieldName = 'iIdTipoVisita'
    end
    object strngfldqrybitacoraventasnombre: TStringField
      FieldName = 'nombre'
      Size = 50
    end
    object strngfldDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 150
    end
    object intgrfldIdVendedor: TIntegerField
      FieldName = 'iIdVendedor'
    end
  end
  object dsBitacoravtas: TDataSource
    AutoEdit = False
    DataSet = qrybitacoraventas
    Left = 41
    Top = 342
  end
  object ZQTiposClientes: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from tiposclientes')
    Params = <>
    Left = 136
    Top = 369
    object ZQTiposClientesstipo: TStringField
      FieldName = 'stipo'
      Size = 15
    end
  end
  object dsTiposClientes: TDataSource
    AutoEdit = False
    DataSet = ZQTiposClientes
    Left = 104
    Top = 341
  end
  object frxBitacora: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41527.491314618100000000
    ReportOptions.LastChange = 41764.855620092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 72
    Top = 425
    Datasets = <
      item
        DataSet = DSBitacora1
        DataSetName = 'DTBitacora1'
      end
      item
        DataSet = connection.frxDBConfiguracionVta
        DataSetName = 'frConfiguracionVta'
      end
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
      end
      item
        DataSet = frxdbContactos
        DataSetName = 'frxdbContactos'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 279.400000000000000000
      PaperHeight = 431.800000000000000000
      PaperSize = 3
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Duplex = dmVertical
      object PageHeader1: TfrxPageHeader
        Height = 147.842610000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Top = 125.165430000000000000
          Width = 978.898270000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.ShadowWidth = 1.000000000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              'Ciudad del Carmen,  [FormatDateTime('#39'dd'#39',Now)] de  [FormatDateTi' +
              'me('#39'mmmm'#39',Now)] del [FormatDateTime('#39'yyyy'#39',Now)]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 8.338590000000000000
          Top = 8.779530000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          HightQuality = False
        end
        object frConfiguracionsNombre: TfrxMemoView
          Left = 239.992270000000000000
          Top = 7.338590000000000000
          Width = 517.795610000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 277.787570000000000000
          Top = 36.354360000000000000
          Width = 442.205010000000000000
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
            '[frConfiguracionVta."sRfc"]'
            '[frConfiguracionVta."sDireccion1"]'
            '[frConfiguracionVta."sDireccion2"]'
            '[frConfiguracionVta."sTelefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 321.252165000000000000
          Top = 94.692950000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
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
            '[frConfiguracionVta."sWeb"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 226.771800000000000000
        Width = 980.410082000000000000
        Condition = 'frxdbContactos."sOrden"'
        object Memo2: TfrxMemoView
          Top = 34.015770000000000000
          Width = 218.456783230000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Nombre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 217.661483230000000000
          Top = 34.015770000000000000
          Width = 83.905401970000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Compa'#195#177'ia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 301.653465200000000000
          Top = 34.015770000000000000
          Width = 90.708595510000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'RFC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 391.700650710000000000
          Top = 34.015770000000000000
          Width = 192.755951890000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Domicilio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 9.118120000000000000
          Width = 415.748300000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbContactos."sOrden"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 584.354252600000000000
          Top = 34.015770000000000000
          Width = 135.307086610000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Vendedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 719.701300000000000000
          Top = 34.015770000000000000
          Width = 93.732256610000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Telefono')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 813.378480000000000000
          Top = 34.015748030000000000
          Width = 93.732256610000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Email')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 907.087200000000000000
          Top = 34.015770000000000000
          Width = 73.322834650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Estatus')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 302.362400000000000000
        Width = 980.410082000000000000
        DataSet = frxdbContactos
        DataSetName = 'frxdbContactos'
        RowCount = 0
        Stretched = True
        object frxdbContactossNombre: TfrxMemoView
          Align = baBottom
          Width = 218.456692910000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sNombre"]')
          ParentFont = False
        end
        object frxdbContactossIdCompania: TfrxMemoView
          Align = baBottom
          Left = 218.700787400000000000
          Width = 83.905511810000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sIdCompania'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sIdCompania"]')
          ParentFont = False
        end
        object frxdbContactossRFC: TfrxMemoView
          Align = baBottom
          Left = 302.606299210000000000
          Width = 88.818897637795300000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sRFC'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sRFC"]')
          ParentFont = False
        end
        object frxdbContactossDomicilio: TfrxMemoView
          Align = baBottom
          Left = 391.559055120000000000
          Width = 192.755905510000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sDomicilio'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sDomicilio"]')
          ParentFont = False
        end
        object frxdbContactossContacto: TfrxMemoView
          Align = baBottom
          Left = 584.314960629921000000
          Width = 135.307086610000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sContacto'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sContacto"]')
          ParentFont = False
        end
        object frxdbContactossTelefono: TfrxMemoView
          Align = baBottom
          Left = 719.622047240000000000
          Width = 93.732283460000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sTelefono"]'
            '[frxdbContactos."sTelefonoMovil"]')
          ParentFont = False
        end
        object frxdbContactossCorreo: TfrxMemoView
          Align = baBottom
          Left = 813.354330710000000000
          Width = 93.732283460000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sCorreo'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sCorreo"]')
          ParentFont = False
        end
        object frxdbContactoseStatus: TfrxMemoView
          Align = baBottom
          Left = 907.086614170000000000
          Width = 73.322834650000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'eStatus'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."eStatus"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 97.267780000000000000
        ParentFont = False
        Top = 419.527830000000000000
        Width = 980.410082000000000000
        object Memo14: TfrxMemoView
          Align = baRight
          Left = 923.717132000000000000
          Top = 77.811070000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
          ParentFont = False
        end
        object frConfiguracionVtasRepresentante: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.338590000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'sRepresentante'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sRepresentante"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frConfiguracionVtasSlogan: TfrxMemoView
          Left = 211.653692200000000000
          Top = 78.370130000000000000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sSlogan'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracionVta."sSlogan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frConfiguracionVtasPuestoRepresentante: TfrxMemoView
          Left = 3.779530000000000000
          Top = 35.913420000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'sPuestoRepresentante'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoRepresentante"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 254.567112200000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sFirmante1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 254.567112200000000000
          Top = 35.574830000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoFirmante1"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 506.457032200000000000
          Top = 1.000000000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sFirmante2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 506.457032200000000000
          Top = 36.574830000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoFirmante2"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 359.055350000000000000
        Width = 980.410082000000000000
      end
    end
  end
  object frxDTBitacora: TfrxDBDataset
    UserName = 'frxDTBitacora'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iid=iid'
      'sIdCompania=sIdCompania'
      'dIdFecha=dIdFecha'
      'mResumen=mResumen'
      'mAsunto=mAsunto'
      'sResponsable=sResponsable')
    DataSet = qrybitacoraventas
    BCDToCurrency = False
    Left = 136
    Top = 397
  end
  object ZQResult: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select bta.*, ccp.sIdCompaniaConf from vta_bitacoradeactividades' +
        ' bta'
      
        'inner join con_companias  ccp on (bta.sIdCompania = ccp.sIdCompa' +
        'nia) order by ccp.sIdCompaniaConf, bta.iid')
    Params = <>
    Left = 104
    Top = 369
    object intgrfld1: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'iid'
      Visible = False
    end
    object strngfld1: TStringField
      DisplayLabel = 'Compa'#241'ia'
      FieldName = 'sIdCompania'
      Size = 15
    end
    object dtfld1: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'dIdFecha'
      Required = True
    end
    object mfld1: TMemoField
      DisplayLabel = 'Resumen'
      FieldName = 'mResumen'
      BlobType = ftMemo
    end
    object mfld2: TMemoField
      DisplayLabel = 'Asunto'
      FieldName = 'mAsunto'
      BlobType = ftMemo
    end
    object strngfld2: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'sResponsable'
      Required = True
      Size = 100
    end
    object ZQResultsIdCompaniaConf: TStringField
      FieldName = 'sIdCompaniaConf'
    end
  end
  object dsResult: TDataSource
    AutoEdit = False
    DataSet = ZQResult
    Left = 72
    Top = 341
  end
  object DSCompaniasC: TfrxDBDataset
    UserName = 'frxDSCompanias'
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
      'sMail=sMail'
      'sTelefono2=sTelefono2'
      'sContacto=sContacto')
    DataSet = zQCompanias
    BCDToCurrency = False
    Left = 72
    Top = 397
  end
  object frxClientes1: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41134.804896064800000000
    ReportOptions.LastChange = 41737.565466261600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 104
    Top = 425
    Datasets = <
      item
        DataSet = connection.frxDBConfiguracionVta
        DataSetName = 'frConfiguracionVta'
      end
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
      end
      item
        DataSet = DSCompaniasC
        DataSetName = 'frxDSCompanias'
      end>
    Variables = <>
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
      object PageHeader1: TfrxPageHeader
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Top = 113.385900000000000000
          Width = 963.780150000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.ShadowWidth = 1.000000000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              'Ciudad del Carmen,  [FormatDateTime('#39'dd'#39',Now)] de  [FormatDateTi' +
              'me('#39'mmmm'#39',Now)] del [FormatDateTime('#39'yyyy'#39',Now)]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 24.456710000000000000
          Top = 3.000000000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          HightQuality = False
        end
        object frConfiguracionsNombre: TfrxMemoView
          Left = 192.756030000000000000
          Top = 3.559060000000000000
          Width = 600.945270000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 226.771800000000000000
          Top = 36.354360000000000000
          Width = 525.354670000000000000
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
            '[frConfiguracionVta."sRfc"]'
            '[frConfiguracionVta."sDireccion1"]'
            '[frConfiguracionVta."sDireccion2"]'
            '[frConfiguracionVta."sTelefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 271.260050000000000000
          Top = 94.692950000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
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
            '[frConfiguracionVta."sWeb"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 328.819110000000000000
        Width = 980.410082000000000000
        DataSet = DSCompaniasC
        DataSetName = 'frxDSCompanias'
        RowCount = 0
        Stretched = True
        object Rich1: TfrxRichView
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E22734964436F6D70616E
            6961225D5C7061720D0A7D0D0A00}
        end
        object Rich2: TfrxRichView
          Left = 75.590600000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E2273524643225D5C7061
            720D0A7D0D0A00}
        end
        object Rich3: TfrxRichView
          Left = 166.299320000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E227352617A6F6E536F63
            69616C225D5C7061720D0A7D0D0A00}
        end
        object Rich4: TfrxRichView
          Left = 279.685220000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E2273446F6D6963696C69
            6F225D5C7061720D0A7D0D0A00}
        end
        object Rich5: TfrxRichView
          Left = 411.968770000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E2273436975646164225D
            5C7061720D0A7D0D0A00}
        end
        object Rich6: TfrxRichView
          Left = 529.134200000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E227345737461646F225D
            5C7061720D0A7D0D0A00}
        end
        object Rich7: TfrxRichView
          Left = 642.520100000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E22734350225D5C706172
            0D0A7D0D0A00}
        end
        object Rich8: TfrxRichView
          Left = 687.874460000000000000
          Width = 136.063080000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E227354656C65666F6E6F
            225D5C7061720D0A5B6672784453436F6D70616E6961732E227354656C65666F
            6E6F32225D5C7061720D0A7D0D0A00}
        end
        object Rich9: TfrxRichView
          Left = 823.937540000000000000
          Width = 154.960730000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6630
            5C66733136205B6672784453436F6D70616E6961732E22734D61696C225D5C70
            61720D0A7D0D0A00}
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 980.410082000000000000
        Condition = 'frxDBConfiguracionRH."sNombre"'
        ReprintOnNewPage = True
        StartNewPage = True
        object Memo5: TfrxMemoView
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
            'COMPA'#195#8216'IA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 75.590600000000000000
          Width = 90.708720000000000000
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
            'RFC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 166.299320000000000000
          Width = 113.385900000000000000
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
            'RAZON SOCIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 279.685220000000000000
          Width = 132.283550000000000000
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
            'DOMICILIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 411.968770000000000000
          Width = 117.165430000000000000
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
            'CIUDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 642.520100000000000000
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
            'CODIGO POSTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 686.992580000000000000
          Width = 136.063080000000000000
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
            'TELEFONO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 529.134200000000000000
          Width = 113.385900000000000000
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
        object Memo6: TfrxMemoView
          Left = 823.937540000000000000
          Width = 154.960730000000000000
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
            'MAIL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 30.236240000000000000
        Top = 230.551330000000000000
        Width = 980.410082000000000000
        object Memo3: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLIENTES')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 117.165430000000000000
        Top = 419.527830000000000000
        Width = 980.410082000000000000
        object frConfiguracionVtasRepresentante: TfrxMemoView
          Left = 18.897637800000000000
          Top = 5.118120000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'sRepresentante'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sRepresentante"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frConfiguracionVtasSlogan: TfrxMemoView
          Left = 464.882190000000000000
          Top = 94.488250000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sSlogan'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracionVta."sSlogan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frConfiguracionVtasPuestoRepresentante: TfrxMemoView
          Left = 18.897637800000000000
          Top = 40.692950000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'sPuestoRepresentante'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoRepresentante"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 359.055350000000000000
          Top = 4.779530000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sFirmante1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 359.055350000000000000
          Top = 40.354360000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoFirmante1"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 699.213050000000000000
          Top = 5.779530000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sFirmante2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 699.213050000000000000
          Top = 41.354360000000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoFirmante2"]')
          ParentFont = False
        end
      end
    end
  end
  object DSBitacora1: TfrxDBDataset
    Description = 'DSBitacora'
    UserName = 'DTBitacora1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iid=iid'
      'sIdCompania=sIdCompania'
      'dIdFecha=dIdFecha'
      'mResumen=mResumen'
      'mAsunto=mAsunto'
      'sResponsable=sResponsable'
      'sIdCompaniaConf=sIdCompaniaConf')
    DataSet = ZQResult
    BCDToCurrency = False
    Left = 104
    Top = 397
  end
  object frxBitacoraCompleta: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41527.491314618100000000
    ReportOptions.LastChange = 41745.440050775460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 136
    Top = 425
    Datasets = <
      item
        DataSet = DSBitacora1
        DataSetName = 'DTBitacora1'
      end
      item
        DataSet = connection.frxDBConfiguracionVta
        DataSetName = 'frConfiguracionVta'
      end
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
      end
      item
        DataSet = frxdbContactos
        DataSetName = 'frxdbContactos'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 279.400000000000000000
      PaperHeight = 431.800000000000000000
      PaperSize = 3
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Duplex = dmVertical
      object PageHeader1: TfrxPageHeader
        Height = 147.842610000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Top = 125.165430000000000000
          Width = 978.898270000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.ShadowWidth = 1.000000000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              'Ciudad del Carmen,  [FormatDateTime('#39'dd'#39',Now)] de  [FormatDateTi' +
              'me('#39'mmmm'#39',Now)] del [FormatDateTime('#39'yyyy'#39',Now)]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 8.338590000000000000
          Top = 8.779530000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          HightQuality = False
        end
        object frConfiguracionsNombre: TfrxMemoView
          Left = 239.992270000000000000
          Top = 7.338590000000000000
          Width = 517.795610000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 277.787570000000000000
          Top = 36.354360000000000000
          Width = 442.205010000000000000
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
            '[frConfiguracionVta."sRfc"]'
            '[frConfiguracionVta."sDireccion1"]'
            '[frConfiguracionVta."sDireccion2"]'
            '[frConfiguracionVta."sTelefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 321.252165000000000000
          Top = 94.692950000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
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
            '[frConfiguracionVta."sWeb"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 226.771800000000000000
        Width = 980.410082000000000000
        Condition = 'frxdbContactos."sOrden"'
        object Memo2: TfrxMemoView
          Top = 34.015770000000000000
          Width = 218.456783230000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Nombre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 217.661483230000000000
          Top = 34.015770000000000000
          Width = 83.905401970000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Compa'#195#177'ia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 301.653465200000000000
          Top = 34.015770000000000000
          Width = 90.708595510000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'RFC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 391.700650710000000000
          Top = 34.015770000000000000
          Width = 192.755951890000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Domicilio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 9.118120000000000000
          Width = 918.425790000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbContactos."sIdCompania"] - [frxdbContactos."sOrden"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 584.354252600000000000
          Top = 34.015770000000000000
          Width = 135.307086610000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Vendedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 719.701300000000000000
          Top = 34.015770000000000000
          Width = 93.732256610000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Telefono')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 813.378480000000000000
          Top = 34.015748030000000000
          Width = 93.732256610000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Email')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 907.087200000000000000
          Top = 34.015770000000000000
          Width = 73.322834650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16764057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Color = clOlive
          HAlign = haCenter
          Memo.UTF8 = (
            'Estatus')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 302.362400000000000000
        Width = 980.410082000000000000
        DataSet = frxdbContactos
        DataSetName = 'frxdbContactos'
        RowCount = 0
        Stretched = True
        object frxdbContactossNombre: TfrxMemoView
          Width = 218.456692910000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sNombre"]')
          ParentFont = False
        end
        object frxdbContactossIdCompania: TfrxMemoView
          Left = 218.700787400000000000
          Width = 83.905511810000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sIdCompania'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sIdCompania"]')
          ParentFont = False
        end
        object frxdbContactossRFC: TfrxMemoView
          Left = 302.606299210000000000
          Width = 88.818897637795300000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sRFC'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sRFC"]')
          ParentFont = False
        end
        object frxdbContactossDomicilio: TfrxMemoView
          Left = 391.559055120000000000
          Width = 192.755905510000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sDomicilio'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sDomicilio"]')
          ParentFont = False
        end
        object frxdbContactossContacto: TfrxMemoView
          Left = 584.314960629921000000
          Width = 135.307086610000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sContacto'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sContacto"]')
          ParentFont = False
        end
        object frxdbContactossTelefono: TfrxMemoView
          Left = 719.622047240000000000
          Width = 93.732283460000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sTelefono"]'
            '[frxdbContactos."sTelefonoMovil"]')
          ParentFont = False
        end
        object frxdbContactossCorreo: TfrxMemoView
          Left = 813.354330710000000000
          Width = 93.732283460000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'sCorreo'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."sCorreo"]')
          ParentFont = False
        end
        object frxdbContactoseStatus: TfrxMemoView
          Left = 907.086614170000000000
          Width = 73.322834650000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'eStatus'
          DataSet = frxdbContactos
          DataSetName = 'frxdbContactos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbContactos."eStatus"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 97.267780000000000000
        ParentFont = False
        Top = 427.086890000000000000
        Width = 980.410082000000000000
        object Memo14: TfrxMemoView
          Align = baRight
          Left = 923.717132000000000000
          Top = 77.811070000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#]')
          ParentFont = False
        end
        object frConfiguracionVtasRepresentante: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.338590000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'sRepresentante'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sRepresentante"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frConfiguracionVtasSlogan: TfrxMemoView
          Left = 211.653692200000000000
          Top = 78.370130000000000000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sSlogan'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracionVta."sSlogan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frConfiguracionVtasPuestoRepresentante: TfrxMemoView
          Left = 3.779530000000000000
          Top = 35.913420000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'sPuestoRepresentante'
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoRepresentante"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 254.567112200000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sFirmante1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 254.567112200000000000
          Top = 35.574830000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoFirmante1"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 506.457032200000000000
          Top = 1.000000000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sFirmante2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 506.457032200000000000
          Top = 36.574830000000000000
          Width = 222.992270000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionVta
          DataSetName = 'frConfiguracionVta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionVta."sPuestoFirmante2"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 366.614410000000000000
        Width = 980.410082000000000000
      end
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
      'Radial2')
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
    ImageOptions.LargeImages = frmrepositorio.IconosTodos32
    PopupMenuLinks = <
      item
        Control = Datos
        PopupMenu = radioMenu2
      end
      item
        Control = pnl2
        PopupMenu = radioMenu1
      end>
    ShowShortCutInHint = True
    Style = bmsStandard
    UseSystemFont = False
    Left = 72
    Top = 453
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Caption = 'Imprimir todo'
      Category = 0
      Hint = 'Imprimir todo'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Imprimir seleccion'
      Category = 0
      Hint = 'Imprimir seleccion'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      ImageIndex = 127
    end
    object dxVerDetalles: TdxBarButton
      Caption = 'Ver detalle del cliente'
      Category = 0
      Hint = 'Ver detalle del cliente'
      Visible = ivAlways
      ImageIndex = 785
      OnClick = dxVerDetallesClick
    end
    object VerUbicacion: TdxBarButton
      Caption = 'Ver ubicaci'#243'n del cliente'
      Category = 0
      Hint = 'Ver ubicaci'#243'n del cliente'
      Visible = ivAlways
      ImageIndex = 785
      OnClick = cxButton1Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Pers. Impresion'
      Category = 0
      Hint = 'Pers. Impresion'
      Visible = ivAlways
      ImageIndex = 463
    end
    object dxEditar1: TdxBarButton
      Caption = 'Editar'
      Category = 1
      Hint = 'Editar registro (CTRL + E)'
      Visible = ivAlways
      ImageIndex = 299
      ShortCut = 16453
      OnClick = dxEditar1Click
    end
    object dxGuardar1: TdxBarButton
      Caption = 'Guardar'
      Category = 1
      Enabled = False
      Hint = 'Salvar cambios (F10)'
      Visible = ivAlways
      ImageIndex = 54
      ShortCut = 121
      OnClick = dxGuardar1Click
    end
    object dxCancelar1: TdxBarButton
      Caption = 'Cancelar'
      Category = 1
      Enabled = False
      Hint = 'Cancelar cambios (F12)'
      Visible = ivAlways
      ImageIndex = 127
      ShortCut = 123
      OnClick = dxCancelar1Click
    end
    object dxEliminar1: TdxBarButton
      Caption = 'Eliminar'
      Category = 1
      Hint = 'Eliminar registro (CTRL + D)'
      Visible = ivAlways
      ImageIndex = 306
      ShortCut = 16452
      OnClick = dxEliminar1Click
    end
    object dxSalir1: TdxBarButton
      Caption = 'Salir'
      Category = 1
      Hint = 'Salir (CTRL + F4)'
      Visible = ivAlways
      ImageIndex = 701
      ShortCut = 16499
      OnClick = dxSalir1Click
    end
    object dxRefrescar1: TdxBarButton
      Caption = 'Refrescar'
      Category = 1
      Hint = 'Refresh datos (F5)'
      Visible = ivAlways
      ImageIndex = 637
      ShortCut = 116
      OnClick = dxRefrescar1Click
    end
    object dxImprimir1: TdxBarButton
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir (CTRL + P)'
      Visible = ivAlways
      ImageIndex = 463
      ShortCut = 16464
      OnClick = dxImprimir1Click
    end
    object dxInsertar2: TdxBarButton
      Caption = 'Insertar'
      Category = 1
      Hint = 'Nuevo registro (CTRL + Insert)'
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 8237
      OnClick = dxInsertar2Click
    end
    object dxImprimir2: TdxBarButton
      Caption = 'Imprimir'
      Category = 2
      Hint = 'Imprimir (CTRL + P)'
      Visible = ivAlways
      ImageIndex = 463
      ShortCut = 16464
      OnClick = dxImprimir2Click
    end
    object dxInsertar1: TdxBarButton
      Caption = 'Insertar'
      Category = 2
      Hint = 'Nuevo registro (CTRL + Insert)'
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 8237
      OnClick = dxInsertar1Click
    end
    object dxRefrescar2: TdxBarButton
      Caption = 'Refrescar'
      Category = 2
      Hint = 'Refresh datos (F5)'
      Visible = ivAlways
      ImageIndex = 637
      ShortCut = 116
      OnClick = dxRefrescar2Click
    end
    object dxEditar2: TdxBarButton
      Caption = 'Editar'
      Category = 2
      Hint = 'Editar registro (CTRL + E)'
      Visible = ivAlways
      ImageIndex = 299
      ShortCut = 16453
      OnClick = dxEditar2Click
    end
    object dxEliminar2: TdxBarButton
      Caption = 'Eliminar'
      Category = 2
      Hint = 'Eliminar registro (CTRL + D)'
      Visible = ivAlways
      ImageIndex = 306
      ShortCut = 16452
      OnClick = dxEliminar2Click
    end
    object dxGuardar2: TdxBarButton
      Caption = 'Guardar'
      Category = 2
      Enabled = False
      Hint = 'Salvar cambios (F10)'
      Visible = ivAlways
      ImageIndex = 54
      ShortCut = 121
      OnClick = dxGuardar2Click
    end
    object dxCancelar2: TdxBarButton
      Caption = 'Cancelar'
      Category = 2
      Enabled = False
      Hint = 'Cancelar cambios (F12)'
      Visible = ivAlways
      ImageIndex = 127
      ShortCut = 123
      OnClick = dxCancelar2Click
    end
    object dxSalir2: TdxBarButton
      Caption = 'Salir'
      Category = 2
      Hint = 'Salir (CTRL + F4)'
      Visible = ivAlways
      ImageIndex = 701
      ShortCut = 16499
      OnClick = dxSalir2Click
    end
  end
  object radioMenu1: TdxRibbonRadialMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxInsertar1'
      end
      item
        Visible = True
        ItemName = 'dxEditar1'
      end
      item
        Visible = True
        ItemName = 'dxGuardar1'
      end
      item
        Visible = True
        ItemName = 'dxCancelar1'
      end
      item
        Visible = True
        ItemName = 'dxEliminar1'
      end
      item
        Visible = True
        ItemName = 'dxImprimir1'
      end
      item
        Visible = True
        ItemName = 'dxRefrescar1'
      end
      item
        Visible = True
        ItemName = 'dxSalir1'
      end>
    Ribbon = frmInteligent.mInteligent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    UseOwnFont = True
    Left = 40
    Top = 425
  end
  object radioMenu2: TdxRibbonRadialMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxVerDetalles'
      end
      item
        Visible = True
        ItemName = 'VerUbicacion'
      end
      item
        Visible = True
        ItemName = 'dxInsertar2'
      end
      item
        Visible = True
        ItemName = 'dxEditar2'
      end
      item
        Visible = True
        ItemName = 'dxGuardar2'
      end
      item
        Visible = True
        ItemName = 'dxCancelar2'
      end
      item
        Visible = True
        ItemName = 'dxEliminar2'
      end
      item
        Visible = True
        ItemName = 'dxImprimir2'
      end
      item
        Visible = True
        ItemName = 'dxRefrescar2'
      end
      item
        Visible = True
        ItemName = 'dxSalir2'
      end>
    Ribbon = frmInteligent.mInteligent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    UseOwnFont = True
    Left = 9
    Top = 425
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Certificados|*.cer'
    Left = 9
    Top = 397
  end
  object rxClientes: TRxMemoryData
    FieldDefs = <>
    Left = 40
    Top = 452
    object rxClientessIdCompania: TStringField
      DisplayLabel = 'Compa'#241'ia'
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object rxClientessRFC: TStringField
      DisplayLabel = 'RFC'
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object rxClientessRazonSocial: TStringField
      DisplayLabel = 'Raz'#243'n Social'
      FieldName = 'sRazonSocial'
      Size = 255
    end
    object rxClientessDomicilio: TStringField
      DisplayLabel = ' Domicilio'
      DisplayWidth = 255
      FieldName = 'sDomicilio'
      Size = 255
    end
    object rxClientessCiudad: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'sCiudad'
      Size = 50
    end
    object rxClientessCP: TStringField
      DisplayLabel = 'CP'
      FieldName = 'sCP'
      Size = 5
    end
    object rxClientessEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'sEstado'
      Size = 30
    end
    object rxClientessTelefono: TStringField
      DisplayLabel = 'Tel'#233'fono 1'
      FieldName = 'sTelefono'
      Size = 100
    end
    object fltfldClientesdMontoCredito: TFloatField
      DisplayLabel = 'Monto Cr'#233'dito'
      FieldName = 'dMontoCredito'
    end
    object rxClienteslStatus: TStringField
      DisplayLabel = 'Estatus'
      DisplayWidth = 16
      FieldName = 'lStatus'
    end
    object rxClientessNumeroProveedor: TStringField
      DisplayLabel = 'N'#250'mero Proveedor'
      FieldName = 'sNumeroProveedor'
      Size = 100
    end
    object rxClientessMail: TStringField
      DisplayLabel = 'Mail'
      DisplayWidth = 60
      FieldName = 'sMail'
      Size = 100
    end
    object rxClientessTelefono2: TStringField
      DisplayLabel = 'Tel'#233'fono 2'
      FieldName = 'sTelefono2'
      Size = 100
    end
    object rxClientessContacto: TStringField
      DisplayLabel = 'Contacto'
      FieldName = 'sContacto'
      Size = 100
    end
  end
  object dsContactos: TDataSource
    DataSet = qrContactos
    Left = 9
    Top = 342
  end
  object qrContactos: TZQuery
    Connection = connection.zConnection
    AfterScroll = qrContactosAfterScroll
    SQL.Strings = (
      'select * from vta_contactosxcompania'
      'where sIdCompaniaConf = :contrato'
      'and sIdCompania = :compania'
      'and (dIdFecha >= :fechaI and dIdFecha <= :fechaF)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'compania'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaF'
        ParamType = ptUnknown
      end>
    Left = 9
    Top = 370
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'compania'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaF'
        ParamType = ptUnknown
      end>
    object qrContactossNombre: TStringField
      FieldName = 'sNombre'
      Required = True
      Size = 200
    end
    object qrContactossIdContacto: TStringField
      FieldName = 'sIdContacto'
      Required = True
    end
    object qrContactossIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
    end
    object qrContactossTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
    end
    object qrContactossTelefonoMovil: TStringField
      FieldName = 'sTelefonoMovil'
    end
    object qrContactossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Size = 255
    end
    object qrContactossCorreo: TStringField
      FieldName = 'sCorreo'
      Size = 50
    end
    object qrContactossCuidad: TStringField
      FieldName = 'sCuidad'
      Size = 50
    end
    object qrContactossPuesto: TStringField
      FieldName = 'sPuesto'
      Size = 50
    end
    object qrContactossContacto: TStringField
      FieldName = 'sContacto'
      Size = 50
    end
    object qrContactossRFC: TStringField
      FieldName = 'sRFC'
      Size = 50
    end
    object dtfldContactosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object qrContactossIdCompaniaConf: TStringField
      FieldName = 'sIdCompaniaConf'
      Required = True
      Size = 255
    end
    object intgrfldContactosiOrden: TIntegerField
      FieldName = 'iOrden'
    end
    object qrContactoseStatus: TStringField
      FieldName = 'eStatus'
      Required = True
      Size = 9
    end
    object qrContactosbTargeta: TBlobField
      FieldName = 'bTargeta'
    end
    object qrContactosbImagenContacto: TBlobField
      FieldName = 'bImagenContacto'
    end
  end
  object rxContactos: TRxMemoryData
    FieldDefs = <>
    Left = 9
    Top = 453
    object rxContactossNombre: TStringField
      FieldName = 'sNombre'
      Required = True
      Size = 200
    end
    object rxContactossIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
    end
    object rxContactossTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
    end
    object rxContactossTelefonoMovil: TStringField
      FieldName = 'sTelefonoMovil'
    end
    object rxContactossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Size = 255
    end
    object rxContactossCorreo: TStringField
      FieldName = 'sCorreo'
      Size = 50
    end
    object rxContactossCuidad: TStringField
      FieldName = 'sCuidad'
      Size = 50
    end
    object rxContactossPuesto: TStringField
      FieldName = 'sPuesto'
      Size = 50
    end
    object rxContactossContacto: TStringField
      FieldName = 'sContacto'
    end
    object rxContactossRFC: TStringField
      FieldName = 'sRFC'
      Size = 50
    end
    object dtfldContactosdIdFecha1: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object rxContactoseStatus: TStringField
      FieldName = 'eStatus'
      Required = True
      Size = 9
    end
    object rxContactossOrden: TStringField
      DisplayWidth = 200
      FieldName = 'sOrden'
      Size = 200
    end
    object rxContactosbTargeta: TBlobField
      FieldName = 'bTargeta'
    end
    object rxContactosbImagenContacto: TBlobField
      FieldName = 'bImagenContacto'
    end
  end
  object frxdbContactos: TfrxDBDataset
    UserName = 'frxdbContactos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNombre=sNombre'
      'sIdCompania=sIdCompania'
      'sTelefono=sTelefono'
      'sTelefonoMovil=sTelefonoMovil'
      'sDomicilio=sDomicilio'
      'sCorreo=sCorreo'
      'sCuidad=sCuidad'
      'sPuesto=sPuesto'
      'sContacto=sContacto'
      'sRFC=sRFC'
      'dIdFecha=dIdFecha'
      'eStatus=eStatus'
      'sOrden=sOrden')
    DataSet = rxContactos
    BCDToCurrency = False
    Left = 41
    Top = 398
  end
  object iconos: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 29884519
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0006000000090000000B0000000E0000000F0000001000000010000000100000
          000F0000000E0000000D0000000B000000080000000600000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000050000000F0000001C000000250000002F000000380000
          00430000004E01010259040303630705036A0C080571100B0675120E0877110C
          06760D08046F070503670402025D0101015100000144000000380000002E0000
          00260000001B0000000F00000006000000000000000000000000000000000000
          0002000000120000012B0000003C0000004B0806036D21180D903F2E17B06448
          24CA7F5C2CD9976E35E7A47638EFAD7B39F6B57F3AFBB77F39FEB67E37FEB278
          32FEA86F2BFB9C6526F68E5B21EE794C1AE25D3912D13B230BB61A0F06900402
          0268000001490000013E0000002A000000120000000300000000000000000000
          000300000015000000270B090557695130C1B48749F1D0984AFFD79E4DFFD89E
          4EFFD69D4DFFD29A4BFFCD9648FFC99145FFC48B41FFBF863DFFBA8039FFB37A
          33FFAD732EFFA96E2AFFA66A26FFA56721FFA6641EFFA6611AFF9F5C15FF7F47
          0EEC371F07AA030201460000002A000000140000000300000000000000000000
          000000000000030302169D7C4DD2EBC288FFDAAD6DFFD09B4FFFD09B4EFFD19D
          50FFD19C50FFD09B4FFFCE984DFFCB964AFFC89246FFC58F43FFC1893FFFBC83
          3AFFB77D34FFB1752EFFA96E29FFA06523FF995D1DFF925617FF905313FF9553
          10FFA2570BFF4426099D00000002000000000000000000000000000000000000
          0000000000004033224EE2BB85FFE6CCA7FFDBB379FFD3A154FFD5A154FFD5A3
          55FFD5A356FFD5A254FFD3A052FFD19C4FFFCE984CFFCB9448FFC78F44FFC38A
          3FFFBF853AFFBA7F35FFB6792FFFB0722AFFA76923FF9A5D1BFF8F5314FF8B4E
          10FF904E0CFF854709D604020008000000000000000000000000000000000000
          0000000000004034234ADEBB8AFFEAD2AFFFE0BC83FFD7A75BFFD9A859FFDBA9
          5CFFDBA95CFFD9A95AFFD7A558FFD4A155FFD19D50FFCE994CFFCA9347FFC68D
          42FFC1883DFFBD8238FFB87C32FFB4762DFFAF7028FFA76720FF965817FF8C4F
          12FF904D0BFF744414BD01000001000000000000000000000000000000000000
          00000000000015120E18C8A674E7EAD1ACFFE6C593FFDDAF65FFDDAD5EFFE0B0
          61FFE0B062FFDEAE5FFFDCAB5DFFD9A75AFFD4A154FFCD994CFFC79044FFC289
          3DFFBD8339FFBA7F36FFB77B32FFB4772DFFB07228FFAB6B23FF9A5C19FF8E51
          13FF93500CFF5233148000000000000000000000000000000000000000000000
          00000000000000000000876F4B9CE7C89AFFEBCFA3FFE3B975FFE2B365FFE3B6
          67FFE4B668FFE3B466FFDFAF5FFFD5A04FFFC8903DFFBF822FFFB77925FFB374
          21FFB17121FFAE6F21FFAF7127FFAF7028FFAE6F26FFAA6A23FF995C1BFF9253
          14FF915111F11D12082C00000000000000000000000000000000000000000000
          000000000000000000002B251B31D5B077F1EDD3A8FFE9C68DFFE7BA6FFFEABC
          6CFFEBBE6EFFE0AE5CFFCE9849FFCA9754FFCDA067FFCDA36DFFC89A60FFBE86
          41FFB06F1CFFA96710FFA76513FFA8661CFFAA6921FFA4651EFF985B1AFF9857
          13FF553615830000000000000000000000000000000000000000000000000000
          000000000000000000000000000069573D76E8C58FFFEED1A1FFEBC582FFEEC3
          74FFE4B463FFD9AF75FFEED8BEFFF9F0E4FFFDF9F5FFFFFBF7FFFEF9F2FFFCEF
          DFFFECCFAAFFC08943FFA7630DFFA4610FFFA5641CFF9F601BFF9C5C17FF764A
          1BB5060402080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007C68498AEAC991FFEFCE97FFEBC2
          79FFE6C28DFFF6F2E9FFDCEAF3FFD6E7F4FFDFECF7FFE7F1F9FFE3EEF6FFD9E8
          F3FFE5EFF3FFF9EAD3FFC08A41FFA35D06FFA26016FFA2611BFF7C4C17C00F0A
          0516000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000061523A6ADABA84EDE9C1
          7EFFFBE7C4FFC9DEEDFFA7CFF1FFC2DEF5FFD3E7F9FFD7EAF9FFD1E7F9FFBFDC
          F5FFA7CEF0FFD8E7EFFFE8C38DFFA66008FFA7681FFC6741179A0B0703100000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F1B13227D67
          418BD0AF78DDB6CAD3FEA1CDF3FFACCEEBFF9ABAD9FF90B0D0FFA1C1DEFFB1D2
          EFFF9FCCF5FFB8C7CAFFBA8945E36D47199C281B0B3900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000005040205545752767FB5E7FF7299C2FF819EBFFF8FA8C5FF7A9ABEFF76A0
          CAFF89C0F2FF4C49407307040209000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000017202832789FC8FAC3D4E5FFEEF6FBFFF2FAFFFFDEECF8FFA6C1
          DEFF6C9BCAF6131A202600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000404C5763D3E4F2FFEEF8FFFFE4F0FAFFDDECF8FFD5E7F7FFC7DF
          F5FFA4C7E6FF2F38414900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000282F353AC6D7E8F1E5F1FBFFDEECF9FFD4E6F7FFCFE4F6FFCDE2F6FFBFD9
          F1FFA9CCECFF92B1CDDF1B1F2225000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B0C
          0E109DB3C6D0E0EDF9FFDFEDF9FFCBE1F5FFC3DDF3FFC4DDF4FFC4DDF4FFBEDA
          F3FFAACDEDFF94C0E7FF7590A8B7000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004B58
          6590DDF0FFFFE3EFFAFFCDE2F5FFB8D7F1FFB7D7F1FFB8D7F2FFB8D7F2FFB6D6
          F1FFACCFEEFF93BFE7FF8DBFEAFF353E48650000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002B313A7BA7BE
          D5FFEDF8FFFFDBEBF8FFB8D6F1FFAACFEFFFACD1EFFFAED0EFFFADD1EFFFABD0
          EFFFA6CCEEFF93C0E8FF87BCEBFF6586A7EF1B1B1D3500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001517192B4A5A72F1CFE3
          F4FFEBF4FCFFCBE2F5FFA7CDEEFF9FC9ECFFA2CAEDFFA3CBEDFFA2CAEDFFA0C9
          EDFF9CC7EDFF8FBEE7FF81B8E8FF6C9BC6FF313541B800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000282D378033415BFFBCCC
          DCFFECF7FFFFBEDBF3FF98C5EBFF94C3EBFF97C5EBFF97C5EAFF97C4EBFF96C4
          ECFF93C4EDFF8ABFECFF7FBAEDFF75ACDCFF2F384BFB15161836000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000333D4FBA212C46FF6170
          86FFD2E2F0FFB6D8F5FF8CBFEAFF89BCE8FF8CBEE9FF8FC3EFFF91C6F2FF8CC0
          ECFF83B5E0FF76A7D2FF6B9AC6FF5C82A8FF292F42FF1B1C226C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000003030409313F58D62B3650FF2B38
          52FF5C6F8AFF88ABCBFF85BBE9FF81B9E8FF86BFEEFF74A3CEFF58789CFF465E
          7EFF3C506FFF34435FFF303C55FF2A3247FF272B3CFF17182182000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000203030732425AD328354EFF292F
          42FF28324AFF344664FF5D83A9FF81BCEDFF577BA0FF31405CFF2E3B56FF2C37
          50FF2C354AFF2A3245FF293146FF293043FF262A3BFF1E1F2466000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000333E52AF273754FF2C37
          4FFF292E3FFF2C364EFF384C6AFF577A9FFF313E5BFF313E59FF2E374DFF2E38
          4FFF303C55FF2F3951FF2A3850FF2B374FFF2B3040F917171930000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002B313C69293C5CFF2E40
          5FFF2D3951FF2A3143FF344461FF354561FF33425EFF33405BFF313F59FF2F39
          50FF2D354AFF2A344BFF2A3954FF253048FF2C2F39B600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B0C0D133A4B65D62C41
          64FF2E405FFF2B354CFF303C55FF33425FFF354562FF2F3A53FF2A3347FF2A32
          46FF29344CFF2A3A55FF273650FF2A3244F31B1C1E3900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001F22283C364B
          6CEB2E4366FF2B3A56FF2D3952FF344360FF2F3B55FF2C3952FF2E3E59FF2D3F
          5CFF2E405FFF2A3B57FF283349FD2A2B30640000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001215
          192A2F3B50A331415CE5303F59FA2E3F5CFF2E3F5CFF304261FF314362FF2D3F
          5DFF2B3B57FF2E384CE821232857000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000060708100E11162E242D3B81303F56D02C3C57E92C3A53E92F39
          4DCE242934840A0B0D1D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          031312110F5618171575181715761312105D0504041B00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000303020F22211D9B3634
          2EFD36342EFF36342EFF36342EFF36342EFF37352FFE22211EA6040303230000
          000B000000020000000000000000000000000000000000000000000000000000
          00040000001000000016000000190000001C0000001C0000001C0000001C0000
          001C0000001C0000001C0000001C0000001C0606053C35332EE836342EFF3634
          2EFF383630FF43413CFF43413CFF37352FFF36342EFF36342EFF35332EEC0808
          0753000000290000001D000000110000000500000000000000000000000D0000
          001D0B0B0B63181818B0272727E5303130F6313131F4262626E4171717AC0909
          09660000003B0000003B0000003B02020245363530EC36342EFF37352FFF4949
          46FF565655FF4F4F4EFF585857FF6C6B6BFF595855FF37352FFF36342EFF3433
          2EF003030358000000430000002F0000001F0000000F00000000000000181616
          16A2444645FF6C6F6DFE6E7270FF696C6BFF636665FF606361FF565856FE3738
          38FF131313A70303036503030365282725BF36342EFF36342EFF434241FF2727
          27FF2A2A2AFF3C3C3CFF474747FF494949FF575757FF656462FF36342EFF3634
          2EFF262521C50303036A0101014C0000002E0000001B00000008000000183536
          36FD747776FF555957FF535755FF515553FF4A4E4CFF434644FF3D413FFF5255
          53FF424443FC3C3D3CEF3C3D3DEF403F3AFE36342EFF363532FF1F1F1FFF1F1F
          1FFF363636FF515151FF656565FF606060FF9B9B9BFF5B5B5AFF4C4A46FF3634
          2EFF3B3933FF404241EE383939EC1A1A1A9D0000001A000000070000000B3C3D
          3DFD6D706EFF535755FF535755FF515553FF4A4E4CFF434644FF3B3F3DFF3639
          37FF404442FF434645FF4A4C4AFF36342EFF36342EFF2C2C2BFF0B0B0BFF2323
          23FF4D4D4DFF888888FF999999FF8D8D8DFF5B5B5BFF464646FF5E5E5DFF3634
          2EFF36342EFF606461FF717574FF373737E60000000E00000000000000003D3D
          3DFD6D706EFF535755FF535755FF515553FF4A4E4CFF434644FF3B3F3DFF3437
          35FF333635FF363938FF4B4B49FF36342EFF36342EFF212120FF090909FF4C4C
          4CFFC6C6C6FFD3D3D3FF9A9A9AFF959595FF575757FF3F3F3FFF575756FF3634
          2EFF36342EFF6A6B69FF6E7371FF3C3C3CE40000000100000000000000003F40
          3FFD6D716FFF535755FF535755FF515553FF4A4E4CFF434644FF3B3F3DFF3437
          35FF333635FF363938FF50504CFF36342EFF36342EFF1B1A1AFF121212FF6D6D
          6DFFC1C1C1FFE4E4E4FFBDBDBDFF818181FF444444FF333333FF50504FFF3634
          2EFF36342EFF636360FF898C8BFF3C3D3DE40000000100000000000000004040
          40FC6D716FFF535755FF535755FF515553FF4A4E4CFF434644FF3B3F3DFF3437
          35FF333534FF363938FF50504DFF37352FFF36342EFF181816FF131313FF9191
          91FFA3A3A3FFC0C0C0FF9E9E9EFF444444FF2F2F2FFF292929FF454442FF3634
          2EFF36342EFF595C58FF949695FF3D3E3EE40000000100000000000000004141
          41FC6D716FFF535755FF535755FF515553FF4A4E4CFF434644FF3B3F3DFF3437
          35FF333635FF363938FF464743FF4B4A45FF36342EFF2B2A25FF0E0E0DFF4D4D
          4DFF777777FF5B5B5BFF252525FF1E1E1EFF1A1A1AFF373736FF383631FF3634
          2EFF44423DFF888988FF7B7F7EFF3E3F3FE40000000100000000000000004344
          43FC6D716FFF535755FF535755FF515553FF4A4E4CFF434644FF3B3F3DFF3437
          35FF323634FF363938FF40413FFF6D6B67FF36342EFF383631FF20201CFF0C0C
          0BFF020202FF000000FF050505FF0C0C0CFF272726FF35332FFF36342EFF3634
          2EFF585552FF696D6CFF6E7371FF3F4040E40000000100000000000000004344
          44FC6D716FFF535755FF535755FF515553FF4A4E4CFF434644FF3B3F3DFF3437
          35FF333635FF363938FF3F4241FF68655EFF6A6864FF53524FFF555450FF2D2B
          27FF161614FF141413FF191918FF252423FF35332EFF474642FF36342EFF5251
          4DFF50504CFF646967FF6F7472FF404040E40000000100000000000000004545
          45FC6D716FFF535755FF535755FF515553FF4A4E4CFF434644FF3B3F3DFF3437
          35FF333635FF363938FF3B3E3DFF5E5F5BFF87837CFF797772FF4F4D4AFF6463
          62FF555451FF494843FF4A4945FF555451FF646362FF494844FF555450FF4E4C
          48FF626664FF646967FF707472FF404141E40000000100000000000000004748
          48FB6D716FFF676B69FF8F9290FFA0A3A1FF9C9F9DFF828583FF454A47FF3437
          35FF333635FF363938FF3B3E3DFF5C605EFF6A6760FF979187FFAAA9A1FF6663
          5EFF4A4944FF4E4D4AFF4E4D49FF464541FF4F4D49FF666562FF484640FF5E61
          5DFF686C6AFF646967FF707573FF424343E40000000100000000000000004849
          49FB969996FF949895FF898D8CFF878C8AFF848987FF868B89FF999C9AFF5356
          54FF333635FF393C3BFF494B4AFF4F5050FF676A68FF6F6E66FF918B7EFF9491
          86FF92908BFF82807CFF757470FF6F6E6AFF58554FFF3F3D35FF585B57FF777B
          79FF646967FF646967FF717574FF434444E50000000100000000000000005658
          58FB9CA19FFF858A88FF858A88FF7C827FFF525554FF393B3AFF5B5F5DFF989D
          9BFF333635FF4F5150FFABABABFFB0B0B0FF616161FF535756FF5B5D59FF6E6D
          65FF6F6C62FF666257FF5B574DFF515047FF53544FFF616663FF7F8481FF686D
          6BFF656766FF5B5B5BFF6E7170FF444444E50000000100000000000000002D2D
          2DE89DA19FFF9EA2A0FF8C918FFF828885FF5B5D5BFF494B4AFF6F7371FF8A8F
          8CFF848886FF636363FFF6F6F6FFFDFDFDFF656565FF848985FF505553FF565A
          58FF5B605EFF606563FF646967FF646967FF646967FF717673FF7E8380FF6469
          67FF737674FF707271FF777B7AFF444545E50000000100000000000000000202
          02101F1F1FC3555655FA8A8C8BFF9CA09FFFA5A9A7FFA0A4A3FF999D9CFF9297
          95FF8C908FFF6D6F6EFF8B8C8CFF8F8F8FFF626362FF8D908EFFA1A6A2FFA2A6
          A2FFA2A6A2FFA2A7A3FFA3A7A3FFA3A7A3FFA3A7A3FF9A9E9BFF696E6CFF6B6F
          6EFF6C716FFF797D7BFF7C7F7EFE2F3030DA0000000000000000000000000000
          000000000000010101090A0A0A4118181890232323C13A3C3CD9555656E96C6D
          6DF17D7E7DF68A8D8BF9888B8AFC8C8F8EFE8A8F8AFF727673FF616663FF666A
          67FF6A6F6CFF6E7370FF717673FF717673FF717673FF696C6AFF777A79FD686A
          69F7616463EF3E3F3EDE212121A6030303140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          010805050522080808330A0A0A41171717856F7170F78F9390FF535856FF565A
          58FF5B605EFF606563FF646967FF646967FF6E7471FF5E6160FE252525D10B0B
          0B44080808360000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F0F0F591C1E1DFC656866FF7779
          78FF7A7C7BFF7A7D7CFF7C7E7DFF7B7D7DFF595959FE151615FC020202180000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000121413DB141615F20D0E
          0E590D0D0D550D0D0D550D0D0D550D0D0D57141615E8111312D3000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000202120A4313332FF191A
          19811011115510111155101111551819197F313332FF1D1E1D96000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000023252475696D6BFF9FA1
          A0FFA1A2A2FFA1A2A2FFA1A2A2FF9C9E9DFF5F6361FF1C1D1C5D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000017181845C6C6C6FFCECE
          CEFFCDCDCDFFCDCDCDFFCDCDCDFFCECECEFFBDBEBDFF0B0C0B22000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000009090917C2C2C2FFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFB8B9B9FB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009B9B9BE5CFCF
          CFF8D3D3D3F9D3D3D3F9D3D3D3F9CBCCCBF68B8C8BD000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000808080D2929
          29402B2B2B442B2B2B442B2B2B442727273D0404040600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 168
    Top = 455
  end
  object OpenPicture_1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 136
    Top = 455
  end
  object qrCatVendedores: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from vta_catvendedores where sIdCompania = :compania')
    Params = <
      item
        DataType = ftUnknown
        Name = 'compania'
        ParamType = ptUnknown
      end>
    Left = 8
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'compania'
        ParamType = ptUnknown
      end>
    object intgrfldCatVendedoresiIdVendedor: TIntegerField
      FieldName = 'iIdVendedor'
    end
    object qrCatVendedoressIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
    end
    object qrCatVendedoressNombre: TStringField
      FieldName = 'sNombre'
      Required = True
      Size = 50
    end
    object qrCatVendedoressEmail: TStringField
      FieldName = 'sEmail'
      Size = 40
    end
    object qrCatVendedoressIdDepartamento: TStringField
      FieldName = 'sIdDepartamento'
      Required = True
      Size = 30
    end
    object qrCatVendedoressGenero: TStringField
      FieldName = 'sGenero'
    end
    object qrCatVendedoressTelefonoOf: TStringField
      FieldName = 'sTelefonoOf'
    end
    object qrCatVendedoressTelefonoCel: TStringField
      FieldName = 'sTelefonoCel'
      Size = 15
    end
  end
  object ds_CatVendedores: TDataSource
    DataSet = qrCatVendedores
    Left = 8
    Top = 488
  end
  object zqryTiposDeVisitas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from vta_tipovisita')
    Params = <>
    Left = 40
    Top = 520
  end
  object dsTipoDeVisitas: TDataSource
    DataSet = zqryTiposDeVisitas
    Left = 40
    Top = 488
  end
  object dsContactosCompanias: TDataSource
    DataSet = zQContactosCompanias
    Left = 168
    Top = 341
  end
  object zQContactosCompanias: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQContactosCompaniasAfterScroll
    SQL.Strings = (
      
        'select * from con_companias where sIdCompaniaConf = :compania or' +
        'der by sIdCompania')
    Params = <
      item
        DataType = ftUnknown
        Name = 'compania'
        ParamType = ptUnknown
      end>
    Left = 168
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'compania'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      DisplayLabel = 'Compa'#241'ia'
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object StringField2: TStringField
      DisplayLabel = 'RFC'
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object StringField3: TStringField
      DisplayLabel = 'Raz'#243'n Social'
      FieldName = 'sRazonSocial'
      Size = 255
    end
    object StringField4: TStringField
      DisplayLabel = ' Domicilio'
      DisplayWidth = 255
      FieldName = 'sDomicilio'
      Size = 255
    end
    object StringField5: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'sCiudad'
      Size = 50
    end
    object StringField6: TStringField
      DisplayLabel = 'CP'
      FieldName = 'sCP'
      Size = 5
    end
    object StringField7: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'sEstado'
      Size = 30
    end
    object StringField8: TStringField
      DisplayLabel = 'Tel'#233'fono 1'
      FieldName = 'sTelefono'
      Size = 10
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Monto Cr'#233'dito'
      FieldName = 'dMontoCredito'
    end
    object StringField9: TStringField
      DisplayLabel = 'Estatus'
      DisplayWidth = 16
      FieldName = 'lStatus'
    end
    object StringField10: TStringField
      DisplayLabel = 'N'#250'mero Proveedor'
      FieldName = 'sNumeroProveedor'
      Size = 30
    end
    object StringField11: TStringField
      DisplayLabel = 'Mail'
      DisplayWidth = 60
      FieldName = 'sMail'
      Size = 30
    end
    object StringField12: TStringField
      DisplayLabel = 'Tel'#233'fono 2'
      FieldName = 'sTelefono2'
      Size = 10
    end
    object StringField13: TStringField
      DisplayLabel = 'Contacto'
      FieldName = 'sContacto'
      Size = 100
    end
    object StringField14: TStringField
      FieldName = 'sNumeroInterior'
      Size = 10
    end
    object StringField15: TStringField
      FieldName = 'sNumeroExterior'
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'sLocalidad'
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'sMunicipio'
      Size = 50
    end
    object StringField18: TStringField
      FieldName = 'sColonia'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'sIdCompaniaConf'
    end
    object StringField20: TStringField
      FieldName = 'sPuesto'
      Size = 35
    end
  end
end
