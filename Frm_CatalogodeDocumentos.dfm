object FrmCatalogodeDocumentos: TFrmCatalogodeDocumentos
  Left = 0
  Top = 0
  Caption = 'Catalogo de Documentos'
  ClientHeight = 502
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 249
    Width = 769
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 253
  end
  object TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 249
    Align = alTop
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    object grid_estatus: TDBGrid
      Left = 85
      Top = 11
      Width = 673
      Height = 227
      Hint = 'Aqu'#237' se reflejan los resultados de las consultas.'
      Align = alClient
      Color = 15138559
      Ctl3D = False
      DataSource = DsDocumentos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'SNombreDocumento'
          Width = 450
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STipo'
          Width = 150
          Visible = True
        end>
    end
    inline frmBarra1: TfrmBarra
      Left = 11
      Top = 11
      Width = 74
      Height = 227
      VertScrollBar.Style = ssHotTrack
      Align = alLeft
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ExplicitLeft = 11
      ExplicitTop = 11
      ExplicitWidth = 74
      ExplicitHeight = 227
      inherited AdvPanel1: TAdvPanel
        Width = 74
        Height = 227
        ParentShowHint = False
        ShowHint = True
        ExplicitWidth = 74
        ExplicitHeight = 227
        FullHeight = 0
        inherited btnEdit: TcxButton
          OnClick = frmBarra1btnEditClick
        end
        inherited btnPost: TcxButton
          OnClick = frmBarra1btnPostClick
        end
        inherited btnCancel: TcxButton
          Hint = 'Cancelar cambios (F11)'
          OnClick = frmBarra1btnCancelClick
        end
        inherited btnDelete: TcxButton
          Left = 3
          ExplicitLeft = 3
        end
        inherited btnAdd: TcxButton
          OnClick = frmBarra1btnAddClick
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 252
    Width = 769
    Height = 250
    Align = alClient
    TabOrder = 1
    object NxPageControl1: TNxPageControl
      Left = 1
      Top = 1
      Width = 767
      Height = 248
      ActivePage = NxTabSheet1
      ActivePageIndex = 0
      Align = alClient
      TabOrder = 0
      BackgroundColor = clSilver
      BackgroundKind = bkSolid
      Margin = 0
      Options = [pgBoldActiveTab, pgTopBorder]
      Spacing = 0
      TabHeight = 17
      object NxTabSheet1: TNxTabSheet
        Caption = 'Datos Documento'
        PageIndex = 0
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        DesignSize = (
          767
          227)
        object JvLabel1: TJvLabel
          Left = 8
          Top = 34
          Width = 117
          Height = 13
          Caption = 'Nombre del Documento:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel2: TJvLabel
          Left = 9
          Top = 74
          Width = 100
          Height = 13
          Caption = 'Tipo del Documento:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel3: TJvLabel
          Left = 14
          Top = 114
          Width = 60
          Height = 13
          Caption = 'Descripcion:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object edtNombreDoc: TDBEdit
          Left = 131
          Top = 32
          Width = 605
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SNombreDocumento'
          DataSource = DsDocumentos
          TabOrder = 0
        end
        object DbmDescripcion: TDBMemo
          Left = 131
          Top = 112
          Width = 605
          Height = 89
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'SDescripcion'
          DataSource = DsDocumentos
          TabOrder = 1
        end
        object CmbTipo: TDBComboBox
          Left = 131
          Top = 72
          Width = 605
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'STipo'
          DataSource = DsDocumentos
          ItemHeight = 13
          Items.Strings = (
            'Normal'
            'Profesional'
            'Personal'
            'Caducidad')
          TabOrder = 2
          OnKeyUp = CmbTipoKeyUp
        end
      end
    end
  end
  object ZqDocumentos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select'
      '*'
      'from'
      'rh_documentos')
    Params = <>
    Left = 408
    Top = 176
    object ZqDocumentosIidDocumento: TIntegerField
      FieldName = 'IidDocumento'
    end
    object ZqDocumentosSNombreDocumento: TStringField
      FieldName = 'SNombreDocumento'
      Size = 100
    end
    object ZqDocumentosSDescripcion: TMemoField
      FieldName = 'SDescripcion'
      BlobType = ftMemo
    end
    object ZqDocumentosSActivo: TStringField
      FieldName = 'SActivo'
      Size = 2
    end
    object ZqDocumentosSTipo: TStringField
      FieldName = 'STipo'
      Size = 11
    end
  end
  object DsDocumentos: TDataSource
    DataSet = ZqDocumentos
    Left = 360
    Top = 176
  end
end
