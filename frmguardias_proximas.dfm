object frm_guardias_proximas: Tfrm_guardias_proximas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Guardias proximas a bajar'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 13
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 640
    Height = 23
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Grid_Guardias: TcxGrid
    Left = 0
    Top = 52
    Width = 640
    Height = 405
    Align = alClient
    TabOrder = 5
    object BView_Guardias: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsZQGuardias_Proximas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsView.ColumnAutoWidth = True
      object BView_GuardiassIdFolio1: TcxGridDBColumn
        DataBinding.FieldName = 'sIdFolio'
        Options.Editing = False
      end
      object BView_GuardiassObservaciones1: TcxGridDBColumn
        DataBinding.FieldName = 'sObservaciones'
        Options.Editing = False
      end
      object BView_GuardiasIDias1: TcxGridDBColumn
        DataBinding.FieldName = 'IDias'
        Visible = False
        Options.Editing = False
      end
      object BView_GuardiasdFecha1: TcxGridDBColumn
        DataBinding.FieldName = 'dFecha'
        Options.Editing = False
      end
    end
    object Grid_GuardiasLevel1: TcxGridLevel
      GridView = BView_Guardias
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = connection.ImageList1
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 568
    Top = 8
    DockControlHeights = (
      0
      0
      52
      0)
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnReporte1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Cerrar Ventana'
      Category = 0
      Hint = 'Cerrar Ventana'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
      SyncImageIndex = False
      ImageIndex = 5
    end
    object dxbrlrgbtnReporte1: TdxBarLargeButton
      Caption = 'General Reporte'
      Category = 0
      Hint = 'General Reporte'
      Visible = ivAlways
      OnClick = dxbrlrgbtnReporte1Click
    end
  end
  object dxSkinController1: TdxSkinController
    Kind = lfOffice11
    NativeStyle = False
    SkinName = 'Office2013White'
    UseImageSet = imsOriginal
    Left = 536
    Top = 8
  end
  object dsZQGuardias_Proximas: TDataSource
    Left = 272
    Top = 240
  end
  object frxdbds1: TfrxDBDataset
    UserName = 'frxdbds1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 312
    Top = 240
  end
  object Reporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41597.445913518500000000
    ReportOptions.LastChange = 41627.044106446760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 240
    Datasets = <
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
      end
      item
        DataSet = frxdbds1
        DataSetName = 'frxdbds1'
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
      object PageHeader1: TfrxPageHeader
        Height = 222.992270000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object frConfiguracionsNombre: TfrxMemoView
          Left = 170.078850000000000000
          Top = 29.574830000000000000
          Width = 510.236550000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sNombre"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 11.338590000000000000
          Top = 120.944960000000000000
          Width = 718.110700000000000000
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
          Frame.Typ = [ftTop]
          Frame.Width = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              'Ciudad del Carmen,  [FormatDateTime('#39'dd'#39',Now)] de  [FormatDateTi' +
              'me('#39'mmmm'#39',Now)] del [FormatDateTime('#39'yyyy'#39',Now)]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 16.897650000000000000
          Top = 10.559060000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionRH
          DataSetName = 'frxDBConfiguracionRH'
          HightQuality = False
        end
        object Memo19: TfrxMemoView
          Left = 170.078850000000000000
          Top = 59.031540000000000000
          Width = 510.236550000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion1"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 170.078850000000000000
          Top = 15.559060000000000000
          Width = 510.236550000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sRfc"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 170.078850000000000000
          Top = 76.149660000000000000
          Width = 510.236550000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sTelefono"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 170.078850000000000000
          Top = 93.267780000000000000
          Width = 510.236550000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sWeb"]')
          ParentFont = False
        end
        object Rich6: TfrxRichView
          Left = -49.133890000000000000
          Top = 162.519790000000000000
          Width = 283.464750000000000000
          Height = 34.015770000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C205461686F6D613B7D7D
            0D0A5C766965776B696E64345C7563315C706172645C71635C625C6673323420
            50726F78696D61204775617264696120612042616A61725C62305C66315C6673
            31365C7061720D0A7D0D0A00}
        end
        object Memo4: TfrxMemoView
          Top = 200.315090000000000000
          Width = 130.423281180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID GUARDIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 128.504020000000000000
          Top = 200.315090000000000000
          Width = 425.226621180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nombre de la Guardia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 551.811380000000000000
          Top = 200.315090000000000000
          Width = 92.627981180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Dias Restantes')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 645.299630000000000000
          Top = 200.315090000000000000
          Width = 88.848451180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha Bajada')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 688.874460000000000000
          Width = 49.133890000000000000
          Height = 18.897637795275600000
          ShowHint = False
          Memo.UTF8 = (
            '[Page#]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 740.409927000000000000
        DataSet = frxdbds1
        DataSetName = 'frxdbds1'
        RowCount = 0
        Stretched = True
        object frxdbds1sIdFolio: TfrxMemoView
          Left = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sIdFolio'
          DataSet = frxdbds1
          DataSetName = 'frxdbds1'
          Memo.UTF8 = (
            '[frxdbds1."sIdFolio"]')
        end
        object frxdbds1sObservaciones: TfrxMemoView
          Left = 128.504020000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sObservaciones'
          DataSet = frxdbds1
          DataSetName = 'frxdbds1'
          Memo.UTF8 = (
            '[frxdbds1."sObservaciones"]')
        end
        object frxdbds1IDias: TfrxMemoView
          Left = 559.370440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IDias'
          DataSet = frxdbds1
          DataSetName = 'frxdbds1'
          Memo.UTF8 = (
            '[frxdbds1."IDias"]')
        end
        object frxdbds1dFecha: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'dFecha'
          DataSet = frxdbds1
          DataSetName = 'frxdbds1'
          Memo.UTF8 = (
            '[frxdbds1."dFecha"]')
        end
      end
    end
  end
  object fsc_guardiasprox: TFormAutoScaler
    Left = 320
    Top = 32
    DesignDPI = 96
    DesignHeight = 480
    DesignWidth = 640
    DesignTextHeight = 13
  end
end
