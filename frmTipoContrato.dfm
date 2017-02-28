object frm_TipoContrato: Tfrm_TipoContrato
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Catalogo de Tipos de Contrato'
  ClientHeight = 348
  ClientWidth = 730
  Color = 15000804
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    730
    348)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 89
    Top = 254
    Width = 24
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = '&Tipo'
    FocusControl = tsIdTipo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 211
  end
  object Label2: TLabel
    Left = 89
    Top = 278
    Width = 66
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = '&Descripcion'
    FocusControl = tsDescripcion
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 235
  end
  object Label3: TLabel
    Left = 89
    Top = 303
    Width = 55
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = '&Id. Articulo'
    FocusControl = tsIdArticulo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 260
  end
  object Label4: TLabel
    Left = 89
    Top = 325
    Width = 64
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = '&Automatico:'
    FocusControl = tsAutomatico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 282
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 4
    Width = 73
    Height = 200
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alCustom
    AutoSize = True
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    ExplicitTop = 4
    ExplicitWidth = 73
    ExplicitHeight = 200
    inherited AdvPanel1: TAdvPanel
      Width = 81
      Height = 200
      Align = alNone
      ExplicitWidth = 81
      ExplicitHeight = 200
      FullHeight = 200
      inherited btnEdit: TcxButton
        Top = 26
        Width = 68
        OnClick = frmBarra1btnEditClick
        ExplicitTop = 26
        ExplicitWidth = 68
      end
      inherited btnPost: TcxButton
        Top = 51
        Width = 68
        OnClick = frmBarra1btnPostClick
        ExplicitTop = 51
        ExplicitWidth = 68
      end
      inherited btnCancel: TcxButton
        Width = 68
        OnClick = frmBarra1btnCancelClick
        ExplicitWidth = 68
      end
      inherited btnDelete: TcxButton
        Top = 101
        Width = 68
        OnClick = frmBarra1btnDeleteClick
        ExplicitTop = 101
        ExplicitWidth = 68
      end
      inherited btnPrinter: TcxButton
        Top = 126
        Width = 68
        ExplicitTop = 126
        ExplicitWidth = 68
      end
      inherited btnRefresh: TcxButton
        Top = 151
        Width = 68
        OnClick = frmBarra1btnRefreshClick
        ExplicitTop = 151
        ExplicitWidth = 68
      end
      inherited btnExit: TcxButton
        Top = 176
        Width = 68
        OnClick = frmBarra1btnExitClick
        ExplicitTop = 176
        ExplicitWidth = 68
      end
      inherited btnAdd: TcxButton
        Top = 1
        Width = 68
        OnClick = frmBarra1btnAddClick
        ExplicitTop = 1
        ExplicitWidth = 68
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
  object tsIdTipo: TDBEdit
    Left = 164
    Top = 251
    Width = 134
    Height = 23
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sIdTipo'
    DataSource = dszQTipoContrato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object tsDescripcion: TDBEdit
    Left = 164
    Top = 275
    Width = 432
    Height = 23
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sDescripcion'
    DataSource = dszQTipoContrato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object tsIdArticulo: TDBLookupComboBox
    Left = 164
    Top = 298
    Width = 432
    Height = 23
    Anchors = [akLeft, akBottom]
    Color = clWhite
    DataField = 'sIdArticulo'
    DataSource = dszQTipoContrato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sIdArticulo'
    ListField = 'mDescripcion'
    ListSource = dsQCatalogodeIngresos
    ParentFont = False
    TabOrder = 2
  end
  object tsAutomatico: TDBComboBox
    Left = 164
    Top = 321
    Width = 56
    Height = 23
    Anchors = [akLeft, akBottom]
    Color = clWhite
    DataField = 'sAutomatico'
    DataSource = dszQTipoContrato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 15
    Items.Strings = (
      'Si'
      'No')
    ParentFont = False
    TabOrder = 3
  end
  object pnlContratos: TPanel
    Left = 72
    Top = 4
    Width = 650
    Height = 229
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object grid_Comunidades: TcxGrid
      Left = 1
      Top = 1
      Width = 648
      Height = 227
      Align = alClient
      TabOrder = 0
      object BView_grid_Comunidades: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dszQTipoContrato
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxgrdbclmnGrid1DBTableView1sIdTipo1: TcxGridDBColumn
          DataBinding.FieldName = 'sIdTipo'
          Options.Editing = False
          Width = 111
        end
        object cxgrdbclmnGrid1DBTableView1sDescripcion1: TcxGridDBColumn
          DataBinding.FieldName = 'sDescripcion'
          Options.Editing = False
        end
        object cxgrdbclmnGrid1DBTableView1sIdArticulo1: TcxGridDBColumn
          DataBinding.FieldName = 'sIdArticulo'
          Options.Editing = False
        end
        object cxgrdbclmnGrid1DBTableView1sAutomatico1: TcxGridDBColumn
          DataBinding.FieldName = 'sAutomatico'
          Options.Editing = False
          Width = 74
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = BView_grid_Comunidades
      end
    end
  end
  object dszQTipoContrato: TDataSource
    AutoEdit = False
    DataSet = zQTipoContrato
    Left = 291
    Top = 123
  end
  object zQTipoContrato: TZQuery
    Connection = connection.zConnection
    AfterInsert = zQTipoContratoAfterInsert
    SQL.Strings = (
      'select * from con_tiposdecontrato order by sDescripcion')
    Params = <>
    Left = 216
    Top = 106
    object zQTipoContratosIdTipo: TStringField
      DisplayLabel = 'ID Tipo'
      DisplayWidth = 10
      FieldName = 'sIdTipo'
      Required = True
      Size = 15
    end
    object zQTipoContratosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 44
      FieldName = 'sDescripcion'
      Required = True
      Size = 30
    end
    object zQTipoContratosIdArticulo: TStringField
      DisplayLabel = 'ID Articulo'
      FieldName = 'sIdArticulo'
      Size = 15
    end
    object zQTipoContratosAutomatico: TStringField
      DisplayLabel = 'Automatico'
      FieldName = 'sAutomatico'
      Required = True
      Size = 2
    end
  end
  object zQCatalogodeIngresos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sIdArticulo, substr(mDescripcion,1,255) as mDescripcion'
      'from con_catalogodeingresos'
      'where iAnno = :Anno order by iOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Anno'
        ParamType = ptUnknown
      end>
    Left = 632
    Top = 258
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Anno'
        ParamType = ptUnknown
      end>
    object zQCatalogodeIngresossIdArticulo: TStringField
      DisplayLabel = 'Articulo'
      FieldName = 'sIdArticulo'
      Required = True
      Size = 15
    end
    object zQCatalogodeIngresosmDescripcion: TStringField
      FieldName = 'mDescripcion'
      ReadOnly = True
      Size = 255
    end
  end
  object dsQCatalogodeIngresos: TDataSource
    AutoEdit = False
    DataSet = zQCatalogodeIngresos
    Left = 648
    Top = 202
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
      'Radial1')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.ImageListBkColor = clMoneyGreen
    ImageOptions.Images = frmrepositorio.IconosTodos16
    ImageOptions.LargeImages = frmrepositorio.IconosTodos32
    PopupMenuLinks = <
      item
        Control = pnlContratos
        PopupMenu = PopupPrincipal
      end>
    ShowShortCutInHint = True
    Style = bmsStandard
    UseSystemFont = False
    Left = 16
    Top = 208
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
    object Imprimir1: TdxBarButton
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir (CTRL + P)'
      Visible = ivAlways
      ImageIndex = 463
      ShortCut = 16464
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
    Left = 16
    Top = 240
  end
end
