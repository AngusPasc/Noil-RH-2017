object frmCatDoctos: TfrmCatDoctos
  Left = 0
  Top = 0
  Caption = 'C O N T R O L    D O C U M E N T A L'
  ClientHeight = 546
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 889
    Top = 0
    Height = 546
    ExplicitLeft = 560
    ExplicitTop = 240
    ExplicitHeight = 100
  end
  object Panel3: TPanel
    Left = 892
    Top = 0
    Width = 136
    Height = 546
    Align = alClient
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 134
      Height = 544
      Align = alClient
      Caption = 'Preview'
      TabOrder = 0
      object PreviewScrollBox: TScrollBox
        Left = 1
        Top = 1
        Width = 132
        Height = 513
        Align = alClient
        TabOrder = 0
        object imgPreview: TImage
          Left = 0
          Top = 0
          Width = 105
          Height = 105
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 514
        Width = 132
        Height = 29
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          132
          29)
        object CxBtnCargar: TcxButton
          Left = 15
          Top = 2
          Width = 35
          Height = 23
          Anchors = [akTop, akRight]
          Caption = '&Cargar'
          Enabled = False
          TabOrder = 0
          OnClick = CxBtnCargarClick
        end
        object CxBtnGuardar: TcxButton
          Left = 51
          Top = 2
          Width = 40
          Height = 23
          Anchors = [akTop, akRight]
          Caption = '&Guardar'
          TabOrder = 1
          OnClick = CxBtnGuardarClick
        end
        object CxBtnLimpiar: TcxButton
          Left = 92
          Top = 2
          Width = 35
          Height = 23
          Anchors = [akTop, akRight]
          Caption = '&Limpiar'
          Enabled = False
          TabOrder = 2
          OnClick = CxBtnLimpiarClick
        end
        object btnViewPrintNextPage: TcxButton
          Left = -2
          Top = 2
          Width = 16
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '>'
          TabOrder = 3
          OnClick = btnViewPrintNextPageClick
        end
        object btnViewPrintPrevPage: TcxButton
          Left = -19
          Top = 2
          Width = 16
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '<'
          TabOrder = 4
          OnClick = btnViewPrintPrevPageClick
        end
        object cmbZoom: TcxComboBox
          Left = -75
          Top = 2
          Anchors = [akTop, akRight]
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            '25%'
            '50%'
            '75%'
            '100%')
          TabOrder = 5
          Width = 55
        end
        object cxButton1: TcxButton
          Left = -119
          Top = 2
          Width = 35
          Height = 23
          Anchors = [akTop, akRight]
          Caption = '&Ver'
          TabOrder = 6
          OnClick = cxButton1Click
        end
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 889
    Height = 546
    Align = alLeft
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 389
      Width = 887
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 226
      ExplicitWidth = 751
    end
    object PnlDatos: TPanel
      Left = 1
      Top = 392
      Width = 887
      Height = 153
      Align = alBottom
      Enabled = False
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 82
        Width = 34
        Height = 13
        Caption = 'Asunto'
      end
      object Label3: TLabel
        Left = 429
        Top = 5
        Width = 73
        Height = 13
        Caption = 'Desc. Proyecto'
      end
      object EdtNFolio: TDBAdvEdit
        Left = 55
        Top = 55
        Width = 185
        Height = 21
        LabelCaption = 'N. de f'#243'lio'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = 11009259
        TabOrder = 4
        Text = 'EdtNFolio'
        Visible = True
        Version = '2.9.3.1'
        DataField = 'sFolio'
        DataSource = DsCtrlDoctos
      end
      object CmbRegion: TAdvDBComboBox
        Left = 55
        Top = 28
        Width = 145
        Height = 21
        Color = 11009259
        Version = '1.0.1.1'
        Visible = True
        DataField = 'lRegion'
        DataSource = DsCtrlDoctos
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        ItemHeight = 13
        Items.Strings = (
          'Interno'
          'Externo')
        Items.StoredStrings = (
          'Interno'
          'Externo')
        LabelCaption = 'Regi'#243'n'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 2
        OnChange = CmbRegionChange
      end
      object CmbTipo: TAdvDBComboBox
        Left = 277
        Top = 28
        Width = 145
        Height = 21
        Color = 11009259
        Version = '1.0.1.1'
        Visible = True
        DataField = 'lTipo'
        DataSource = DsCtrlDoctos
        DropWidth = 0
        Enabled = True
        ItemIndex = 0
        ItemHeight = 13
        Items.Strings = (
          'Enviado'
          'Recibido')
        Items.StoredStrings = (
          'Enviado'
          'Recibido')
        LabelCaption = 'Tipo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 3
        OnChange = CmbTipoChange
      end
      object MAsunto: TDBMemo
        Left = 55
        Top = 82
        Width = 369
        Height = 35
        Color = 11009259
        DataField = 'masunto'
        DataSource = DsCtrlDoctos
        TabOrder = 7
      end
      object ChkAnexo: TDBCheckBox
        Left = 246
        Top = 55
        Width = 50
        Height = 17
        Caption = 'Anexo'
        DataField = 'lAnexo'
        DataSource = DsCtrlDoctos
        TabOrder = 5
        ValueChecked = 'Si'
        ValueUnchecked = 'No'
      end
      object DtSello: TAdvDBDateTimePicker
        Left = 326
        Top = 55
        Width = 98
        Height = 21
        CalColors.BackColor = 11009259
        CalColors.MonthBackColor = 11009259
        Date = 41725.850324074080000000
        Time = 41725.850324074080000000
        Color = 11009259
        Kind = dkDate
        TabOrder = 6
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 41725.850324074080000000
        Version = '1.2.0.1'
        LabelCaption = 'Sello'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        DataField = 'dFechaSello'
        DataSource = DsCtrlDoctos
      end
      object DtTurno: TAdvDBDateTimePicker
        Left = 506
        Top = 43
        Width = 98
        Height = 21
        CalColors.BackColor = 11009259
        CalColors.MonthBackColor = 11009259
        Date = 41725.850324074080000000
        Time = 41725.850324074080000000
        Color = 11009259
        Kind = dkDate
        TabOrder = 10
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 41725.850324074080000000
        Version = '1.2.0.1'
        LabelCaption = 'Turno'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        DataField = 'dFechaTurno'
        DataSource = DsCtrlDoctos
      end
      object MDescProyecto: TDBMemo
        Left = 506
        Top = 6
        Width = 369
        Height = 31
        Color = 11009259
        DataField = 'sdescproyecto'
        DataSource = DsCtrlDoctos
        TabOrder = 14
      end
      object ChkRespuesta: TDBCheckBox
        Left = 44
        Top = 123
        Width = 81
        Height = 17
        Caption = 'Respuesta'
        DataField = 'lRespuesta'
        DataSource = DsCtrlDoctos
        TabOrder = 8
        ValueChecked = 'Si'
        ValueUnchecked = 'No'
      end
      object EdtFRespuesta: TDBAdvEdit
        Left = 182
        Top = 123
        Width = 242
        Height = 21
        LabelCaption = 'Folio'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = 11009259
        TabOrder = 9
        Text = 'DBAdvEdit1'
        Visible = True
        Version = '2.9.3.1'
        DataField = 'sFolioContestacion'
        DataSource = DsCtrlDoctos
      end
      object CmbFirma: TAdvDBComboBox
        Left = 506
        Top = 70
        Width = 135
        Height = 21
        Color = 11009259
        Version = '1.0.1.1'
        Visible = True
        DataField = 'sfirma'
        DataSource = DsCtrlDoctos
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 13
        LabelCaption = 'Firma'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 12
      end
      object CmbTurnado: TAdvDBComboBox
        Left = 672
        Top = 43
        Width = 203
        Height = 21
        Color = 11009259
        Version = '1.0.1.1'
        Visible = True
        DataField = 'sTurnado'
        DataSource = DsCtrlDoctos
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 13
        LabelCaption = 'Turnado a'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 11
      end
      object CmbCreado: TAdvDBComboBox
        Left = 55
        Top = 1
        Width = 145
        Height = 21
        Color = 11009259
        Version = '1.0.1.1'
        Visible = True
        DataField = 'sElabora'
        DataSource = DsCtrlDoctos
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 13
        LabelCaption = 'Elabora'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 0
      end
      object DtElaboracion: TAdvDBDateTimePicker
        Left = 324
        Top = 3
        Width = 98
        Height = 21
        CalColors.BackColor = 11009259
        CalColors.MonthBackColor = 11009259
        Date = 41725.850324074080000000
        Time = 41725.850324074080000000
        Color = 11009259
        Kind = dkDate
        TabOrder = 1
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 41725.850324074080000000
        Version = '1.2.0.1'
        LabelCaption = 'Elaboraci'#243'n'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        DataField = 'dFechaElaboracion'
        DataSource = DsCtrlDoctos
      end
      object CmbDirigido: TAdvDBComboBox
        Left = 506
        Top = 97
        Width = 369
        Height = 21
        Color = 11009259
        Version = '1.0.1.1'
        Visible = True
        DataField = 'sDirigido'
        DataSource = DsCtrlDoctos
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 13
        LabelCaption = 'Dirigido a'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        TabOrder = 13
      end
    end
    inline frmBarra1: TfrmBarra
      Left = 1
      Top = 27
      Width = 81
      Height = 362
      Margins.Right = 5
      VertScrollBar.Style = ssHotTrack
      Align = alLeft
      AutoSize = True
      Color = 7847370
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 27
      ExplicitWidth = 81
      ExplicitHeight = 362
      inherited AdvPanel1: TAdvPanel
        Width = 81
        Height = 362
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitWidth = 81
        ExplicitHeight = 362
        FullHeight = 0
        inherited btnEdit: TcxButton
          Top = 22
          Width = 73
          OnClick = btnEditClick
          ExplicitTop = 22
          ExplicitWidth = 73
        end
        inherited btnPost: TcxButton
          Top = 44
          Width = 73
          OnClick = btnPostClick
          ExplicitTop = 44
          ExplicitWidth = 73
        end
        inherited btnCancel: TcxButton
          Top = 67
          Width = 73
          OnClick = btnCancelClick
          ExplicitTop = 67
          ExplicitWidth = 73
        end
        inherited btnDelete: TcxButton
          Top = 89
          Width = 73
          OnClick = btnDeleteClick
          ExplicitTop = 89
          ExplicitWidth = 73
        end
        inherited btnPrinter: TcxButton
          Top = 112
          Width = 73
          ExplicitTop = 112
          ExplicitWidth = 73
        end
        inherited btnRefresh: TcxButton
          Top = 134
          Width = 73
          ExplicitTop = 134
          ExplicitWidth = 73
        end
        inherited btnExit: TcxButton
          Top = 158
          Width = 73
          ExplicitTop = 158
          ExplicitWidth = 73
        end
        inherited btnAdd: TcxButton
          Top = 0
          Width = 73
          Hint = 'Insertar registro (CTRL + INS)'
          OnClick = btnAddClick
          ExplicitTop = 0
          ExplicitWidth = 73
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
    object gridPrincipal: TcxGrid
      Left = 82
      Top = 27
      Width = 806
      Height = 362
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      object Grid_Documentos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = DsCtrlDoctos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsSelection.CellSelect = False
        OptionsView.Indicator = True
        object Grid_DocumentosColumn1: TcxGridDBColumn
          Caption = 'OT'
          DataBinding.FieldName = 'sContrato'
          Width = 69
        end
        object Grid_DocumentosColumn16: TcxGridDBColumn
          Caption = 'Proyecto/Frente T'
          DataBinding.FieldName = 'snumeroorden'
          Width = 102
        end
        object Grid_DocumentosColumn14: TcxGridDBColumn
          Caption = 'N. Folio'
          DataBinding.FieldName = 'sFolio'
          Width = 54
        end
        object Grid_DocumentosColumn6: TcxGridDBColumn
          Caption = 'Region'
          DataBinding.FieldName = 'lRegion'
          Width = 47
        end
        object Grid_DocumentosColumn8: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'lTipo'
          Width = 54
        end
        object Grid_DocumentosColumn2: TcxGridDBColumn
          Caption = 'F.  de Elaboraci'#243'n'
          DataBinding.FieldName = 'dFechaElaboracion'
          Width = 103
        end
        object Grid_DocumentosColumn12: TcxGridDBColumn
          Caption = 'Elaborado por:'
          DataBinding.FieldName = 'sElabora'
          Width = 87
        end
        object Grid_DocumentosColumn5: TcxGridDBColumn
          Caption = 'Anexo'
          DataBinding.FieldName = 'lAnexo'
          Width = 41
        end
        object Grid_DocumentosColumn3: TcxGridDBColumn
          Caption = 'F. de Sello'
          DataBinding.FieldName = 'dFechaSello'
          Width = 62
        end
        object Grid_DocumentosColumn4: TcxGridDBColumn
          Caption = 'Fecha de turno'
          DataBinding.FieldName = 'dFechaTurno'
          Width = 86
        end
        object Grid_DocumentosColumn17: TcxGridDBColumn
          Caption = 'Turnado a:'
          DataBinding.FieldName = 'sTurnado'
          Width = 65
        end
        object Grid_DocumentosColumn9: TcxGridDBColumn
          Caption = 'Asunto'
          DataBinding.FieldName = 'mAsunto'
          Width = 71
        end
        object Grid_DocumentosColumn10: TcxGridDBColumn
          Caption = 'Descripci'#243'n de proyecto'
          DataBinding.FieldName = 'sDescProyecto'
          Width = 162
        end
        object Grid_DocumentosColumn11: TcxGridDBColumn
          Caption = 'Dirigido a:'
          DataBinding.FieldName = 'sDirigido'
          Width = 64
        end
        object Grid_DocumentosColumn13: TcxGridDBColumn
          Caption = 'Firmado por:'
          DataBinding.FieldName = 'sFirma'
          Width = 79
        end
        object Grid_DocumentosColumn7: TcxGridDBColumn
          Caption = 'Respuesta'
          DataBinding.FieldName = 'lRespuesta'
          MinWidth = 60
          Width = 71
        end
        object Grid_DocumentosColumn15: TcxGridDBColumn
          Caption = 'F. Constestacion'
          DataBinding.FieldName = 'sFolioContestacion'
          Width = 109
        end
      end
      object gridPrincipalLevel1: TcxGridLevel
        GridView = Grid_Documentos
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 887
      Height = 26
      Align = alTop
      TabOrder = 3
      object CmbContrato: TAdvDBLookupComboBox
        Left = 253
        Top = 2
        Width = 187
        Height = 21
        Enabled = True
        LabelCaption = 'Orden de trabajo'
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelAlwaysEnabled = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        LabelWidth = 0
        LookupColumn = 0
        LookupMethod = lmNormal
        LookupLoad = llAlways
        TabOrder = 0
        Columns = <
          item
            FixedColor = clBtnFace
            FixedColorTo = clNone
            GradientDir = gdVertical
            Width = 249
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ListField = 'scontrato'
            Name = 'Column0'
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end>
        DropWidth = 250
        DropStretchColumn = -1
        DropFont.Charset = DEFAULT_CHARSET
        DropFont.Color = clWindowText
        DropFont.Height = -11
        DropFont.Name = 'Tahoma'
        DropFont.Style = []
        KeyField = 'scontrato'
        ListSource = DsOts
        SortUpGlyph.Data = {
          36010000424D3601000000000000360000002800000008000000080000000100
          2000000000000001000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
          8000808080008080800080808000808080008080800080808000808080008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C0008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
          800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
          C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000}
        SortDownGlyph.Data = {
          36010000424D3601000000000000360000002800000008000000080000000100
          2000000000000001000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C0008080
          800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C0008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000808080008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00808080008080
          8000808080008080800080808000808080008080800080808000}
        ShowGridTitleRow = True
        Version = '1.8.2.1'
      end
      object CmbProyecto: TAdvDBLookupComboBox
        Left = 498
        Top = 2
        Width = 250
        Height = 21
        Enabled = True
        LabelCaption = 'Proyecto'
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelAlwaysEnabled = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        LabelWidth = 0
        LookupColumn = 0
        LookupMethod = lmNormal
        LookupLoad = llAlways
        TabOrder = 1
        Columns = <
          item
            FixedColor = clBtnFace
            FixedColorTo = clNone
            GradientDir = gdVertical
            Width = 249
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ListField = 'snumeroorden'
            Name = 'Column0'
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end>
        DropWidth = 250
        DropStretchColumn = -1
        DropFont.Charset = DEFAULT_CHARSET
        DropFont.Color = clWindowText
        DropFont.Height = -11
        DropFont.Name = 'Tahoma'
        DropFont.Style = []
        KeyField = 'snumeroorden'
        ListSource = DsFrentes
        SortUpGlyph.Data = {
          36010000424D3601000000000000360000002800000008000000080000000100
          2000000000000001000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
          8000808080008080800080808000808080008080800080808000808080008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C0008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
          800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
          C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000}
        SortDownGlyph.Data = {
          36010000424D3601000000000000360000002800000008000000080000000100
          2000000000000001000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C0008080
          800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C0008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000808080008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00808080008080
          8000808080008080800080808000808080008080800080808000}
        ShowGridTitleRow = True
        Version = '1.8.2.1'
      end
      object CmbCodigo: TAdvDBLookupComboBox
        Left = 54
        Top = 2
        Width = 91
        Height = 21
        Enabled = True
        LabelCaption = 'Contrato'
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelAlwaysEnabled = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        LabelWidth = 0
        LookupColumn = 0
        LookupMethod = lmNormal
        LookupLoad = llAlways
        TabOrder = 2
        Columns = <
          item
            FixedColor = clBtnFace
            FixedColorTo = clNone
            GradientDir = gdVertical
            Width = 249
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ListField = 'scontrato'
            Name = 'Column0'
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end>
        DropWidth = 250
        DropStretchColumn = -1
        DropFont.Charset = DEFAULT_CHARSET
        DropFont.Color = clWindowText
        DropFont.Height = -11
        DropFont.Name = 'Tahoma'
        DropFont.Style = []
        KeyField = 'scontrato'
        ListSource = DsContratos
        SortUpGlyph.Data = {
          36010000424D3601000000000000360000002800000008000000080000000100
          2000000000000001000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
          8000808080008080800080808000808080008080800080808000808080008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C0008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
          800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
          C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000}
        SortDownGlyph.Data = {
          36010000424D3601000000000000360000002800000008000000080000000100
          2000000000000001000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
          C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C0008080
          800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C0008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000808080008080
          8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00808080008080
          8000808080008080800080808000808080008080800080808000}
        ShowGridTitleRow = True
        Version = '1.8.2.1'
      end
    end
  end
  object ZqContratos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select distinct(scontrato) as scontrato from contratos')
    Params = <>
    Left = 104
  end
  object ZqFrentes: TZQuery
    Connection = connection.zConnection
    AfterScroll = ZqFrentesAfterScroll
    SQL.Strings = (
      
        'select snumeroorden,mdescripcion from ordenesdetrabajo where sco' +
        'ntrato = :contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
  end
  object DsContratos: TDataSource
    AutoEdit = False
    DataSet = ZqContratos
    Left = 128
    Top = 1
  end
  object DsFrentes: TDataSource
    DataSet = ZqFrentes
    Left = 264
    Top = 1
  end
  object ZqCtrlDoctos: TZQuery
    Connection = connection.zConnection
    AfterScroll = ZqCtrlDoctosAfterScroll
    AfterInsert = ZqCtrlDoctosAfterInsert
    AfterEdit = ZqCtrlDoctosAfterEdit
    AfterPost = ZqCtrlDoctosAfterPost
    AfterCancel = ZqCtrlDoctosAfterCancel
    SQL.Strings = (
      
        'Select * from ctrl_documental where scontrato = :ot and snumeroo' +
        'rden = :proyecto ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ot'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'proyecto'
        ParamType = ptUnknown
      end>
    Left = 104
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ot'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'proyecto'
        ParamType = ptUnknown
      end>
    object ZqCtrlDoctosiIdCtrlDocumental: TIntegerField
      FieldName = 'iIdCtrlDocumental'
      Required = True
    end
    object ZqCtrlDoctossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 100
    end
    object ZqCtrlDoctossnumeroorden: TStringField
      FieldName = 'snumeroorden'
      Required = True
      Size = 100
    end
    object ZqCtrlDoctoslRegion: TStringField
      FieldName = 'lRegion'
      Required = True
      Size = 7
    end
    object ZqCtrlDoctoslTipo: TStringField
      FieldName = 'lTipo'
      Required = True
      OnChange = ZqCtrlDoctoslTipoChange
      Size = 8
    end
    object ZqCtrlDoctossFolio: TStringField
      FieldName = 'sFolio'
      Required = True
      Size = 150
    end
    object ZqCtrlDoctosmAsunto: TMemoField
      FieldName = 'mAsunto'
      BlobType = ftMemo
    end
    object ZqCtrlDoctoslAnexo: TStringField
      FieldName = 'lAnexo'
      Required = True
      Size = 2
    end
    object ZqCtrlDoctosdFechaElaboracion: TDateField
      FieldName = 'dFechaElaboracion'
      Required = True
    end
    object ZqCtrlDoctosdFechaSello: TDateField
      FieldName = 'dFechaSello'
    end
    object ZqCtrlDoctossTurnado: TStringField
      FieldName = 'sTurnado'
      Size = 200
    end
    object ZqCtrlDoctosdFechaTurno: TDateField
      FieldName = 'dFechaTurno'
    end
    object ZqCtrlDoctossDescProyecto: TMemoField
      FieldName = 'sDescProyecto'
      BlobType = ftMemo
    end
    object ZqCtrlDoctossFolioContestacion: TStringField
      FieldName = 'sFolioContestacion'
      Size = 150
    end
    object ZqCtrlDoctossElabora: TStringField
      FieldName = 'sElabora'
      Required = True
      Size = 200
    end
    object ZqCtrlDoctossFirma: TStringField
      FieldName = 'sFirma'
      Size = 200
    end
    object ZqCtrlDoctossDirigido: TStringField
      FieldName = 'sDirigido'
      Size = 300
    end
    object ZqCtrlDoctoslRespuesta: TStringField
      FieldName = 'lRespuesta'
      Size = 2
    end
    object ZqCtrlDoctosidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
  end
  object DsCtrlDoctos: TDataSource
    DataSet = ZqCtrlDoctos
    Left = 136
    Top = 40
  end
  object Archivo: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Archivo PDF'
        FileMask = '*.Pdf'
      end>
    Options = []
    Left = 688
    Top = 424
  end
  object FGuardarArchivo: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Archivo PDF'
        FileMask = '*.pdf'
      end>
    Options = []
    Left = 768
    Top = 424
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 152
    object ImprimirConcentrado1: TMenuItem
      Caption = 'Imprimir Concentrado'
      OnClick = ImprimirConcentrado1Click
    end
    object Exportacion1: TMenuItem
      Caption = 'Exportacion'
      OnClick = Exportacion1Click
    end
  end
  object FrReporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41726.579668576400000000
    ReportOptions.LastChange = 41727.562483275460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 432
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'CtrlDocumental'
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
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Memo23: TfrxMemoView
          Left = 124.724490000000000000
          Top = 18.897650000000000000
          Width = 850.394250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Concentrado de documentos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 691.653990000000000000
          Top = 60.472480000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Now]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 980.410082000000000000
        object Memo25: TfrxMemoView
          Left = 773.059251540000000000
          Top = 7.268326920000000000
          Width = 209.327815380000000000
          Height = 8.721992310000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'P'#195#161'gina [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 3.779530000000000000
        Top = 166.299320000000000000
        Width = 980.410082000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 192.756030000000000000
        Width = 980.410082000000000000
        Condition = 'CtrlDocumental."lRegion"'
        StartNewPage = True
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 215.433210000000000000
        Width = 980.410082000000000000
        Condition = 'CtrlDocumental."lTipo"'
        KeepTogether = True
        object Memo10: TfrxMemoView
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Numero de Folio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 94.488250000000000000
          Top = 26.456710000000000000
          Width = 147.401670000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Asunto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 241.889920000000000000
          Top = 26.456710000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Anexo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 283.464750000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha de elaboraci'#195#179'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 377.953000000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha de sello')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 472.441250000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Turnado A:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 566.929500000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha de turno')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 661.417750000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'OT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 755.906000000000000000
          Top = 26.456710000000000000
          Width = 219.212740000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Descripci'#195#179'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Regi'#195#179'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 94.488250000000000000
          Top = 7.559060000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[CtrlDocumental."lRegion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 241.889920000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clGray
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tipo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 336.378170000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[CtrlDocumental."lTipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 980.410082000000000000
        DataSet = frxDBDataset1
        DataSetName = 'CtrlDocumental'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sFolio'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            '[CtrlDocumental."sFolio"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 94.488250000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mAsunto'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[CtrlDocumental."mAsunto"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 241.889920000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'lAnexo'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[CtrlDocumental."lAnexo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaElaboracion'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[CtrlDocumental."dFechaElaboracion"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaSello'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[CtrlDocumental."dFechaSello"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 472.441250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sTurnado'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[CtrlDocumental."sTurnado"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 566.929500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaTurno'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[CtrlDocumental."dFechaTurno"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 661.417750000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sContrato'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[CtrlDocumental."sContrato"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 755.906000000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'sDescProyecto'
          DataSet = frxDBDataset1
          DataSetName = 'CtrlDocumental'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[CtrlDocumental."sDescProyecto"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 328.819110000000000000
        Width = 980.410082000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        Top = 351.496290000000000000
        Width = 980.410082000000000000
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'CtrlDocumental'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iIdCtrlDocumental=iIdCtrlDocumental'
      'sContrato=sContrato'
      'snumeroorden=snumeroorden'
      'lRegion=lRegion'
      'lTipo=lTipo'
      'sFolio=sFolio'
      'mAsunto=mAsunto'
      'lAnexo=lAnexo'
      'dFechaElaboracion=dFechaElaboracion'
      'dFechaSello=dFechaSello'
      'sTurnado=sTurnado'
      'dFechaTurno=dFechaTurno'
      'sDescProyecto=sDescProyecto'
      'sFolioContestacion=sFolioContestacion'
      'sElabora=sElabora'
      'sFirma=sFirma'
      'sDirigido=sDirigido'
      'lRespuesta=lRespuesta'
      'idDocumento=idDocumento')
    DataSet = ZReporte
    BCDToCurrency = False
    Left = 40
    Top = 432
  end
  object ZReporte: TZQuery
    Connection = connection.zConnection
    AfterScroll = ZqCtrlDoctosAfterScroll
    SQL.Strings = (
      'Select * from ctrl_documental ')
    Params = <>
    Left = 72
    Top = 432
    object IntegerField1: TIntegerField
      FieldName = 'iIdCtrlDocumental'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'snumeroorden'
      Required = True
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'lRegion'
      Required = True
      Size = 7
    end
    object StringField4: TStringField
      FieldName = 'lTipo'
      Required = True
      OnChange = ZqCtrlDoctoslTipoChange
      Size = 8
    end
    object StringField5: TStringField
      FieldName = 'sFolio'
      Required = True
      Size = 150
    end
    object MemoField1: TMemoField
      FieldName = 'mAsunto'
      BlobType = ftMemo
    end
    object StringField6: TStringField
      FieldName = 'lAnexo'
      Required = True
      Size = 2
    end
    object DateField1: TDateField
      FieldName = 'dFechaElaboracion'
      Required = True
    end
    object DateField2: TDateField
      FieldName = 'dFechaSello'
    end
    object StringField7: TStringField
      FieldName = 'sTurnado'
      Size = 200
    end
    object DateField3: TDateField
      FieldName = 'dFechaTurno'
    end
    object MemoField2: TMemoField
      FieldName = 'sDescProyecto'
      BlobType = ftMemo
    end
    object StringField8: TStringField
      FieldName = 'sFolioContestacion'
      Size = 150
    end
    object StringField9: TStringField
      FieldName = 'sElabora'
      Required = True
      Size = 200
    end
    object StringField10: TStringField
      FieldName = 'sFirma'
      Size = 200
    end
    object StringField11: TStringField
      FieldName = 'sDirigido'
      Size = 300
    end
    object StringField12: TStringField
      FieldName = 'lRespuesta'
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'idDocumento'
    end
  end
  object ZqOts: TZQuery
    Connection = connection.zConnection
    AfterScroll = ZqOtsAfterScroll
    SQL.Strings = (
      
        'Select scontrato,mdescripcion from contratos where scodigo = :Co' +
        'digo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    Left = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
  end
  object DsOts: TDataSource
    AutoEdit = False
    DataSet = ZqOts
    Left = 192
    Top = 1
  end
  object ZqUsuarios: TZQuery
    Connection = connection.zConnection
    AfterScroll = ZqCtrlDoctosAfterScroll
    SQL.Strings = (
      'select sfirma from usuarios'
      'order by sfirma')
    Params = <>
    Left = 136
    Top = 184
  end
end
