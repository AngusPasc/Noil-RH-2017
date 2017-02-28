object frmnivelorganizacion: Tfrmnivelorganizacion
  Left = 406
  Top = 268
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo Nivel Organizaci'#243'n'
  ClientHeight = 412
  ClientWidth = 1039
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 72
    Top = 0
    Width = 967
    Height = 346
    Align = alClient
    TabOrder = 0
    object Grid_Organizacion: TcxGrid
      Left = 1
      Top = 1
      Width = 965
      Height = 344
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxgrdbtblvwBView_Organizacion: TcxGridDBTableView
        PopupMenu = pm1
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = ds_estatus
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsView.ColumnAutoWidth = True
        object cxgrdbclmnGrid_OrganizacionDBTableView1titulonivel1: TcxGridDBColumn
          DataBinding.FieldName = 'titulonivel'
          Width = 407
        end
        object cxgrdbclmnGrid_OrganizacionDBTableView1acceso1: TcxGridDBColumn
          DataBinding.FieldName = 'acceso'
          Width = 173
        end
      end
      object cxgrdlvlGrid_OrganizacionLevel1: TcxGridLevel
        GridView = cxgrdbtblvwBView_Organizacion
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 346
    Width = 1039
    Height = 66
    Align = alBottom
    TabOrder = 1
    object Label2: TLabel
      Left = 81
      Top = 11
      Width = 30
      Height = 15
      Caption = 'Nivel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 81
      Top = 38
      Width = 43
      Height = 15
      Caption = 'Acceso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object tsDescripcion: TDBEdit
      Left = 139
      Top = 7
      Width = 884
      Height = 22
      Hint = 'Ingrese una descripcion general.'
      CharCase = ecUpperCase
      DataField = 'titulonivel'
      DataSource = ds_estatus
      TabOrder = 0
      OnEnter = tsDescripcionEnter
      OnExit = tsDescripcionExit
    end
    object dbPerforacion: TDBComboBox
      Left = 139
      Top = 34
      Width = 450
      Height = 23
      Hint = 'Seleccione un campo.'
      Style = csDropDownList
      DataField = 'acceso'
      DataSource = ds_estatus
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      Items.Strings = (
        'true'
        'false')
      ParentFont = False
      TabOrder = 1
    end
  end
  object qryestatus: TZQuery
    Connection = connection.zConnection
    AfterScroll = qryestatusAfterScroll
    AfterInsert = qryestatusAfterInsert
    SQL.Strings = (
      'SELECT  *'
      'FROM nuc_nivelorganizacion')
    Params = <>
    Left = 80
    Top = 16
    object qryestatusidnivelOrganizacion: TIntegerField
      FieldName = 'idnivelOrganizacion'
    end
    object strngfldqryestatusacceso: TStringField
      DisplayLabel = 'Acceso'
      FieldName = 'acceso'
      Required = True
      Size = 5
    end
    object strngfldqryestatustitulonivel: TStringField
      DisplayLabel = 'Nivel'
      FieldName = 'titulonivel'
      Size = 80
    end
  end
  object ds_estatus: TDataSource
    AutoEdit = False
    DataSet = qryestatus
    Left = 112
    Top = 16
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PopupPrincipal')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = frmrepositorio.IconosBarra
    ImageOptions.LargeImages = frmrepositorio.IconosBarra
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <
      item
        Control = Panel1
      end>
    UseSystemFont = False
    Left = 528
    Top = 320
    DockControlHeights = (
      72
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Personalizado 1'
      CaptionButtons = <>
      DockedDockingStyle = dsLeft
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsLeft
      FloatLeft = 129
      FloatTop = 208
      FloatClientWidth = 68
      FloatClientHeight = 304
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxInsertar'
        end
        item
          Visible = True
          ItemName = 'dxEditar'
        end
        item
          Visible = True
          ItemName = 'dxGuardar'
        end
        item
          Visible = True
          ItemName = 'dxCancelar'
        end
        item
          Visible = True
          ItemName = 'dxEliminar'
        end
        item
          Visible = True
          ItemName = 'dxImprimir'
        end
        item
          Visible = True
          ItemName = 'dxRefrescar'
        end
        item
          Visible = True
          ItemName = 'dxSalir'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxInsertar: TdxBarLargeButton
      Tag = 1
      Caption = '&Insertar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 0
      ShortCut = 16429
      OnClick = frmBarra1btnAddClick
      AutoGrayScale = False
    end
    object dxEditar: TdxBarLargeButton
      Tag = 1
      Caption = '&Editar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 16453
      OnClick = frmBarra1btnEditClick
      AutoGrayScale = False
    end
    object dxGuardar: TdxBarLargeButton
      Tag = 9
      Caption = '&Guardar'
      Category = 1
      Enabled = False
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 121
      OnClick = frmBarra1btnPostClick
      AutoGrayScale = False
    end
    object dxCancelar: TdxBarLargeButton
      Tag = 9
      Caption = '&Cancelar'
      Category = 1
      Enabled = False
      Visible = ivAlways
      LargeImageIndex = 3
      ShortCut = 122
      OnClick = frmBarra1btnCancelClick
      AutoGrayScale = False
    end
    object dxEliminar: TdxBarLargeButton
      Tag = 1
      Caption = 'Eliminar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 16452
      OnClick = frmBarra1btnDeleteClick
      AutoGrayScale = False
    end
    object dxRefrescar: TdxBarLargeButton
      Tag = 1
      Caption = 'Actualizar'
      Category = 1
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 116
      OnClick = dxRefrescarClick
      AutoGrayScale = False
    end
    object dxSalir: TdxBarLargeButton
      Tag = 1
      Caption = 'Salir'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 16472
      OnClick = frmBarra1btnExitClick
      AutoGrayScale = False
    end
    object dxImprimir: TdxBarLargeButton
      Tag = 1
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 5
      AutoGrayScale = False
    end
  end
  object pm1: TdxRibbonPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxInsertar'
      end
      item
        Visible = True
        ItemName = 'dxEditar'
      end
      item
        Visible = True
        ItemName = 'dxGuardar'
      end
      item
        Visible = True
        ItemName = 'dxCancelar'
      end
      item
        Visible = True
        ItemName = 'dxEliminar'
      end
      item
        Visible = True
        ItemName = 'dxImprimir'
      end
      item
        Visible = True
        ItemName = 'dxRefrescar'
      end
      item
        Visible = True
        ItemName = 'dxSalir'
      end>
    UseOwnFont = False
    Left = 192
    Top = 176
  end
end
