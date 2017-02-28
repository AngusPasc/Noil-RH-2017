object frmFormasPago: TfrmFormasPago
  Left = 0
  Top = 0
  Caption = 'Formas de Pago'
  ClientHeight = 435
  ClientWidth = 695
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
  object pnl_Principal: TPanel
    Left = 72
    Top = 0
    Width = 623
    Height = 435
    Align = alClient
    TabOrder = 4
    object pnl_Grid: TPanel
      Left = 1
      Top = 1
      Width = 621
      Height = 359
      Align = alClient
      TabOrder = 0
      object Grid_FormasPago: TcxGrid
        Left = 1
        Top = 1
        Width = 619
        Height = 357
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwBView_FormasPago: TcxGridDBTableView
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
          DataController.DataSource = ds_FormaPago
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
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'sIdFormaPago'
            Options.Editing = False
            Width = 64
          end
          object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Options.Editing = False
            Width = 383
          end
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrdbtblvwBView_FormasPago
        end
      end
    end
    object pnl_Datos: TPanel
      Left = 1
      Top = 360
      Width = 621
      Height = 74
      Align = alBottom
      TabOrder = 1
      object sId: TcxDBTextEdit
        Left = 72
        Top = 7
        DataBinding.DataField = 'sIdFormaPago'
        DataBinding.DataSource = ds_FormaPago
        Enabled = False
        ParentFont = False
        TabOrder = 0
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 9
        Caption = 'ID'
        ParentFont = False
      end
      object cxLabel3: TcxLabel
        Left = 16
        Top = 35
        Caption = 'Concepto'
        ParentFont = False
      end
      object sConcepto: TcxDBTextEdit
        Left = 72
        Top = 34
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = ds_FormaPago
        Enabled = False
        ParentFont = False
        TabOrder = 3
        Width = 305
      end
    end
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
        Control = pnl_Grid
      end>
    UseSystemFont = False
    Left = 6
    Top = 328
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
          ItemName = 'SalirInsertar'
        end
        item
          Visible = True
          ItemName = 'SalirEditar'
        end
        item
          Visible = True
          ItemName = 'SalirGuardar'
        end
        item
          Visible = True
          ItemName = 'SalirCancelar'
        end
        item
          Visible = True
          ItemName = 'SalirEliminar'
        end
        item
          Visible = True
          ItemName = 'SalirImprimir'
        end
        item
          Visible = True
          ItemName = 'SalirRefrescar'
        end
        item
          Visible = True
          ItemName = 'SalirSalir'
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
    object SalirInsertar: TdxBarLargeButton
      Tag = 1
      Caption = '&Insertar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 0
      ShortCut = 16429
      OnClick = SalirInsertarClick
      AutoGrayScale = False
    end
    object SalirEditar: TdxBarLargeButton
      Tag = 1
      Caption = '&Editar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 16453
      OnClick = SalirEditarClick
      AutoGrayScale = False
    end
    object SalirGuardar: TdxBarLargeButton
      Tag = 9
      Caption = '&Guardar'
      Category = 1
      Enabled = False
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 121
      OnClick = SalirGuardarClick
      AutoGrayScale = False
    end
    object SalirCancelar: TdxBarLargeButton
      Tag = 9
      Caption = '&Cancelar'
      Category = 1
      Enabled = False
      Visible = ivAlways
      LargeImageIndex = 3
      ShortCut = 122
      OnClick = SalirCancelarClick
      AutoGrayScale = False
    end
    object SalirEliminar: TdxBarLargeButton
      Tag = 1
      Caption = 'Eliminar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 16452
      OnClick = SalirEliminarClick
      AutoGrayScale = False
    end
    object SalirRefrescar: TdxBarLargeButton
      Tag = 1
      Caption = 'Actualizar'
      Category = 1
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 116
      OnClick = SalirRefrescarClick
      AutoGrayScale = False
    end
    object SalirSalir: TdxBarLargeButton
      Tag = 1
      Caption = 'Salir'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 16472
      OnClick = SalirSalirClick
      AutoGrayScale = False
    end
    object SalirImprimir: TdxBarLargeButton
      Tag = 1
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = SalirImprimirClick
      AutoGrayScale = False
    end
  end
  object ds_FormaPago: TDataSource
    AutoEdit = False
    DataSet = FormaPago
    Left = 6
    Top = 362
  end
  object FormaPago: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sIdFormaPago, sDescripcion as Descripcion  from formas_pa' +
        'go')
    Params = <>
    Left = 32
    Top = 360
  end
  object frxFormasPagos: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 41914.550630810180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 376
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dbFormasPagos
        DataSetName = 'dbFormasPagos'
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
          Left = 158.519790000000000000
          Top = 3.102350000000000000
          Width = 579.047620000000000000
          Height = 36.795300000000000000
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
            'LISTADO DE FORMAS PAGOS')
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
          Top = 41.677180000000000000
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
          Top = 53.015770000000000000
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
        DataSet = dbFormasPagos
        DataSetName = 'dbFormasPagos'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo16: TfrxMemoView
          Left = 71.811070000000000000
          Width = 113.385900000000000000
          Height = 11.897650000000000000
          ShowHint = False
          DataField = 'sIdFormaPago'
          DataSet = dbFormasPagos
          DataSetName = 'dbFormasPagos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbFormasPagos."sIdFormaPago"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 185.196970000000000000
          Width = 122.567100000000000000
          Height = 11.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = dbFormasPagos
          DataSetName = 'dbFormasPagos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbFormasPagos."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 11.897650000000000000
          ShowHint = False
          DataSetName = 'dbResidencias'
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
      end
      object Header2: TfrxHeader
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        ReprintOnNewPage = True
        Stretched = True
        object Memo33: TfrxMemoView
          Left = 185.196970000000000000
          Width = 309.921460000000000000
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
            'FORMA DE PAGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 71.811070000000000000
          Width = 113.385900000000000000
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
  object dbFormasPagos: TfrxDBDataset
    UserName = 'dbFormasPagos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdFormaPago=sIdFormaPago'
      'Descripcion=Descripcion')
    DataSet = FormaPago
    BCDToCurrency = False
    Left = 416
    Top = 376
  end
  object pm1: TdxRibbonPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'SalirInsertar'
      end
      item
        Visible = True
        ItemName = 'SalirEditar'
      end
      item
        Visible = True
        ItemName = 'SalirGuardar'
      end
      item
        Visible = True
        ItemName = 'SalirCancelar'
      end
      item
        Visible = True
        ItemName = 'SalirEliminar'
      end
      item
        Visible = True
        ItemName = 'SalirRefrescar'
      end
      item
        Visible = True
        ItemName = 'SalirSalir'
      end
      item
        Visible = True
        ItemName = 'SalirImprimir'
      end>
    UseOwnFont = False
    Left = 320
    Top = 240
  end
end
