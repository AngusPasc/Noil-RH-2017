object frmPrecioDivisas: TfrmPrecioDivisas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Precio Divisas'
  ClientHeight = 428
  ClientWidth = 777
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlPrincipal: TPanel
    Left = 72
    Top = 0
    Width = 705
    Height = 405
    Align = alClient
    TabOrder = 0
    object PnlGrid: TPanel
      Left = 1
      Top = 105
      Width = 703
      Height = 299
      Align = alClient
      TabOrder = 0
      object Grid_Precio: TcxGrid
        Left = 1
        Top = 1
        Width = 701
        Height = 297
        Align = alClient
        TabOrder = 0
        object BView_Precio: TcxGridDBTableView
          PopupMenu = pm1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsZQPrecioDivisas
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object BView_PrecioColumn3: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'iIdDivisa'
            Options.Editing = False
            Options.IncSearch = False
            Width = 60
          end
          object BView_PrecioColumn1: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'dFecha'
            Options.Editing = False
            Options.IncSearch = False
            Width = 290
          end
          object BView_PrecioColumn2: TcxGridDBColumn
            Caption = 'Precio'
            DataBinding.FieldName = 'dPrecio'
            Options.Editing = False
            Options.IncSearch = False
            Width = 337
          end
        end
        object Grid_PrecioLevel1: TcxGridLevel
          GridView = BView_Precio
        end
      end
    end
    object PnlDatos: TPanel
      Left = 1
      Top = 1
      Width = 703
      Height = 104
      Align = alTop
      TabOrder = 1
      object cxLabel1: TcxLabel
        Left = 24
        Top = 15
        Caption = 'Divisa'
        ParentFont = False
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 24
        Top = 41
        Caption = 'Fecha'
        ParentFont = False
        Transparent = True
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 66
        Top = 41
        DataBinding.DataField = 'dFecha'
        DataBinding.DataSource = dsZQPrecioDivisas
        ParentFont = False
        Properties.ImmediatePost = True
        Style.TextColor = clWindowText
        TabOrder = 2
        Width = 122
      end
      object cxLabel3: TcxLabel
        Left = 24
        Top = 68
        Caption = 'Precio'
        ParentFont = False
        Transparent = True
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 67
        Top = 68
        DataBinding.DataField = 'dPrecio'
        DataBinding.DataSource = dsZQPrecioDivisas
        ParentFont = False
        Properties.ImmediatePost = True
        Style.TextColor = clWindowText
        TabOrder = 4
        Width = 121
      end
      object dDivisa: TcxDBLookupComboBox
        Left = 67
        Top = 14
        DataBinding.DataField = 'iIdDivisa'
        DataBinding.DataSource = dsZQPrecioDivisas
        ParentFont = False
        Properties.KeyFieldNames = 'sIdMoneda'
        Properties.ListColumns = <
          item
            FieldName = 'sDescripcionCorta'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_moneda
        TabOrder = 5
        Width = 121
      end
    end
  end
  object StatusBar: TdxRibbonStatusBar
    Left = 0
    Top = 405
    Width = 777
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Estatus'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'En Proceso'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
        Control = PnlGrid
      end>
    UseSystemFont = False
    Left = 552
    Top = 344
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
      OnClick = dxInsertarClick
      AutoGrayScale = False
    end
    object dxEditar: TdxBarLargeButton
      Tag = 1
      Caption = '&Editar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 16453
      OnClick = dxEditarClick
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
      OnClick = dxGuardarClick
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
      OnClick = dxCancelarClick
      AutoGrayScale = False
    end
    object dxImprimir: TdxBarLargeButton
      Tag = 1
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = dxImprimirClick
      AutoGrayScale = False
    end
    object dxEliminar: TdxBarLargeButton
      Tag = 1
      Caption = 'Eliminar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 16452
      OnClick = dxEliminarClick
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
      OnClick = dxSalirClick
      AutoGrayScale = False
    end
  end
  object dsZQPrecioDivisas: TDataSource
    AutoEdit = False
    DataSet = ZQPrecioDivisas
    Left = 600
    Top = 40
  end
  object ZQPrecioDivisas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_preciodivisas')
    Params = <>
    Left = 632
    Top = 40
  end
  object dbdivisas: TfrxDBDataset
    UserName = 'dbdivisas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iIdPrecio=iIdPrecio'
      'iIdDivisa=iIdDivisa'
      'dFecha=dFecha'
      'dPrecio=dPrecio')
    DataSet = ZQPrecioDivisas
    BCDToCurrency = False
    Left = 392
    Top = 48
  end
  object frxDivisas: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 41914.549130729170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 48
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dbdivisas
        DataSetName = 'dbdivisas'
      end
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end>
    Variables = <
      item
        Name = ' Financiero'
        Value = Null
      end
      item
        Name = 'EquipoTotalMN'
        Value = 
          '<TotalEquipo>*IIF(<DBOrdenesdeTrabajo."lGeneraEquipo"> = '#39'Si'#39',<D' +
          'BEquipos."dVentaMN">,0)'
      end
      item
        Name = 'EquipoTotalDLL'
        Value = 
          '<TotalEquipo>*IIF(<DBOrdenesdeTrabajo."lGeneraEquipo"> = '#39'Si'#39',<D' +
          'BEquipos."dVentaDLL">,0)'
      end
      item
        Name = 'PersonalTotalMN'
        Value = 
          '<TotalPersonal>*IIF(<DBOrdenesdeTrabajo."lGeneraPersonal"> = '#39'Si' +
          #39',<BDPersonal."dVentaMN">,0)'
      end
      item
        Name = 'PersonalTotalDLL'
        Value = 
          '<TotalPersonal>*IIF(<DBOrdenesdeTrabajo."lGeneraPersonal"> = '#39'Si' +
          #39',<BDPersonal."dVentaDLL">,0)'
      end
      item
        Name = 'ConsumiblesTotalMN'
        Value = 
          '<TotalConsumuble>*IIF(<DBOrdenesdeTrabajo."lGeneraConsumibles"> ' +
          '= '#39'Si'#39',<DBComsumibles."dVentaMN">,0)'
      end
      item
        Name = 'ConsumiblesTotalDLL'
        Value = 
          '<TotalConsumuble>*IIF(<DBOrdenesdeTrabajo."lGeneraConsumibles"> ' +
          '= '#39'Si'#39',<DBComsumibles."dVentaDLL">,0)'
      end
      item
        Name = 'TotalEquipo'
        Value = '<DBEquipos."dCantidad">*<DBEquipos."iJornada">'
      end
      item
        Name = 'TotalPersonal'
        Value = '<BDPersonal."dCantidad">*<BDPersonal."iJornada">'
      end
      item
        Name = 'TotalConsumuble'
        Value = '<DBComsumibles."dCantidad">*<DBComsumibles."iJornada">'
      end>
    Style = <
      item
        Name = 'Title'
        Color = clNavy
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
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object PageHeader1: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 2.000000000000000000
          Top = 0.102350000000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 157.299320000000000000
          Top = 3.102350000000000000
          Width = 579.047620000000000000
          Height = 40.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
        object Picture1: TfrxPictureView
          Left = 4.000000000000000000
          Top = 3.102350000000000000
          Width = 153.299320000000000000
          Height = 77.149660000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
        object Memo46: TfrxMemoView
          Left = 2.000000000000000000
          Top = 83.251956300000000000
          Width = 275.173470000000000000
          Height = 52.157480310000000000
          ShowHint = False
          Color = 9810380
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'LISTADO DE DIVISAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 271.173470000000000000
          Top = 83.251956300000000000
          Width = 470.953000000000000000
          Height = 52.157480310000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[Contrato."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 158.740260000000000000
          Top = 42.677180000000000000
          Width = 579.047620000000000000
          Height = 17.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sRfc"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 158.740260000000000000
          Top = 54.015770000000000000
          Width = 579.047620000000000000
          Height = 25.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sDireccion1"]'
            '[frConfiguracionCont."sDireccion2"]')
          ParentFont = False
        end
      end
      object MasterData: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 15.677180000000000000
        ParentFont = False
        Top = 260.787570000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = dbdivisas
        DataSetName = 'dbdivisas'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo16: TfrxMemoView
          Left = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 11.897650000000000000
          ShowHint = False
          DataField = 'iIdDivisa'
          DataSet = dbdivisas
          DataSetName = 'dbdivisas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbdivisas."iIdDivisa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 139.842610000000000000
          Width = 122.567100000000000000
          Height = 11.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iIdPrecio'
          DataSet = dbdivisas
          DataSetName = 'dbdivisas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbdivisas."iIdPrecio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 11.897650000000000000
          ShowHint = False
          DataSet = frm_BancosGral.dbResidencias
          DataSetName = 'dbBancos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 260.787570000000000000
          Top = 1.000000000000000000
          Width = 122.567100000000000000
          Height = 11.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFecha'
          DataSet = dbdivisas
          DataSetName = 'dbdivisas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbdivisas."dFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        ReprintOnNewPage = True
        Stretched = True
        object Memo33: TfrxMemoView
          Left = 139.842610000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PRECIOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '#')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 264.567100000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 10667178
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
      end
      object PageFooter1: TfrxPageFooter
        Height = 33.338590000000000000
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 449.764070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracionCont."sSlogan"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frConfiguracionCont."sWeb"]'
            '[frConfiguracionCont."sEmail"]')
          ParentFont = False
        end
      end
    end
  end
  object ds_moneda: TDataSource
    AutoEdit = False
    DataSet = Moneda
    Left = 600
    Top = 9
  end
  object Moneda: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from tiposdemoneda')
    Params = <>
    Left = 632
    Top = 9
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
        ItemName = 'dxSalir'
      end
      item
        Visible = True
        ItemName = 'dxImprimir'
      end
      item
        Visible = True
        ItemName = 'dxRefrescar'
      end>
    UseOwnFont = False
    Left = 360
    Top = 280
  end
end
