object frm_graficabarrasxmesIngresos: Tfrm_graficabarrasxmesIngresos
  Left = 0
  Top = 0
  Caption = 'Grafica'
  ClientHeight = 925
  ClientWidth = 1914
  Color = 13683905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object grChart: TDBChart
    Left = 0
    Top = 0
    Width = 1914
    Height = 925
    Foot.Text.Strings = (
      'FFFF')
    Foot.Visible = False
    SubFoot.Text.Strings = (
      'DDDDD')
    SubFoot.Visible = False
    SubTitle.Text.Strings = (
      'INTEL-CODE S.A. DE C.V')
    Title.Font.Height = -19
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'GASTOS POR RANGO FECHAS')
    AxisBehind = False
    BottomAxis.ExactDateTime = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.LabelsMultiLine = True
    Chart3DPercent = 35
    LeftAxis.AxisValuesFormat = '$###,###,##0.0#'
    LeftAxis.LabelsAlign = alOpposite
    LeftAxis.LabelsMultiLine = True
    LeftAxis.LabelsSeparation = 40
    Legend.Alignment = laBottom
    Legend.CheckBoxesStyle = cbsRadio
    Legend.TextStyle = ltsPlain
    Legend.Title.TextAlignment = taCenter
    Legend.TopPos = 0
    View3DOptions.Elevation = 315
    View3DOptions.OrthoAngle = 60
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Zoom.Allow = False
    Align = alClient
    TabOrder = 0
    PrintMargins = (
      15
      24
      15
      24)
    object Series1: TBarSeries
      BarBrush.Color = clWhite
      ColorEachPoint = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = zGraficab
      PercentFormat = '#'
      ValueFormat = '$#,##0.#.0'
      XLabelsSource = 'dIdFecha'
      Gradient.Direction = gdTopBottom
      MultiBar = mbNone
      StackGroup = 2
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Order = loNone
      XValues.ValueSource = 'dIdFecha'
      YValues.Name = 'Bar'
      YValues.Order = loAscending
      YValues.ValueSource = 'dImporte'
    end
  end
  object zGraficab: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select te.dIdFecha, substr(e.mDescripcion, 1, 100) as sDescripci' +
        'on, sum(te.dImporte) as dImporte'
      
        'From tesoreriapegresos te inner join catalogodeegresos e on (te.' +
        'sIdEgreso = e.sIdEgreso)'
      
        'where te.dIdFecha >= "2012-11-01" and te.dIdFecha <= "2012-11-28' +
        '" Group By te.dIdFecha')
    Params = <>
    Left = 32
    Top = 32
    object zGraficabsDescripcion: TStringField
      FieldName = 'sDescripcion'
      ReadOnly = True
      Size = 100
    end
    object zGraficabdImporte: TFloatField
      FieldName = 'dImporte'
      ReadOnly = True
    end
    object zGraficabdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
  end
  object dsGrafica: TDataSource
    DataSet = zGraficab
    Left = 72
    Top = 32
  end
  object frGrafica: TfrxDBDataset
    UserName = 'frGrafica'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdEgreso=sIdEgreso'
      'sDescripcion=sDescripcion'
      'dImporte=dImporte')
    DataSet = zGraficab
    BCDToCurrency = False
    Left = 160
    Top = 32
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
    ReportOptions.LastChange = 40558.336637256900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 40
    Datasets = <
      item
        DataSet = frmSetup.frConfiguracion
        DataSetName = 'frConfiguracion'
      end
      item
        DataSet = frGrafica
        DataSetName = 'frGrafica'
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
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = frGrafica
        DataSetName = 'frGrafica'
        RowCount = 0
        Stretched = True
        object frGraficasIdEgreso: TfrxMemoView
          Left = 71.811070000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frGrafica
          DataSetName = 'frGrafica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frGrafica."mDescripcion"]')
          ParentFont = False
        end
        object frGraficadImporte: TfrxMemoView
          Left = 657.638220000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dImporte'
          DataSet = frGrafica
          DataSetName = 'frGrafica'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frGrafica."dImporte"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          HAlign = haRight
          Memo.UTF8 = (
            '[Line].-')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 120.944947800000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        Stretched = True
        object frConfiguracionsNombre: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 551.811380000000000000
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
            '[frConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 185.196970000000000000
          Top = 30.236240000000000000
          Width = 551.811380000000000000
          Height = 71.811070000000000000
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
            '[frConfiguracion."sRfc"]'
            '[frConfiguracion."sDireccion1"]'
            '[frConfiguracion."sDireccion2"]'
            '[frConfiguracion."sDireccion3"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 5.559060000000000000
          Top = 3.000000000000000000
          Width = 173.858380000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          HightQuality = False
        end
        object Memo11: TfrxMemoView
          Left = 253.228510000000000000
          Top = 105.826840000000000000
          Width = 483.779840000000000000
          Height = 15.118107800000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frPrinter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 86.929190000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        object frConfiguracionsSlogan: TfrxMemoView
          Left = 26.102350000000000000
          Top = 68.031540000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sSlogan'
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 287.244280000000000000
          Top = 45.354360000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTesorerom"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTitTesorerom"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 502.677490000000000000
          Top = 3.779530000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sPresidente"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 502.677490000000000000
          Top = 22.677180000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTitPresidente"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        Condition = 'frGrafica."sIdEgreso"'
        KeepTogether = True
        ReprintOnNewPage = True
        OutlineText = 'frGrafica."sDescripcion"'
        Stretched = True
        object frGraficasDescripcion: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 687.874460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sDescripcion'
          DataSet = frGrafica
          DataSetName = 'frGrafica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Memo.UTF8 = (
            '[frGrafica."sDescripcion"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 657.638220000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frGrafica."dImporte">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = -34.015770000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frTmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL > > > >')
          ParentFont = False
        end
      end
    end
  end
end
