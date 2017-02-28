object frmGraficaExplosion: TfrmGraficaExplosion
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Grafica de Explosion General del Contrato'
  ClientHeight = 628
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GraficaDLL: TDBChart
    Left = 0
    Top = 0
    Width = 705
    Height = 628
    LeftWall.Pen.Visible = False
    LeftWall.Visible = False
    SubTitle.Font.Color = clBlack
    SubTitle.Font.Style = [fsItalic]
    SubTitle.Text.Strings = (
      'COMPORTAMIENTO DEL CONTRATO')
    Title.Font.Color = clBlack
    Title.Font.Height = -13
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'EXPLOSION DE INSUMOS GENERAL')
    Chart3DPercent = 30
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = -0.500000000000000000
    DepthAxis.Minimum = -0.500000000000000000
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = -0.500000000000000000
    DepthTopAxis.Minimum = -0.500000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    Legend.CustomPosition = True
    Legend.Frame.Width = 2
    Legend.Frame.Visible = False
    Legend.Left = 20
    Legend.ResizeChart = False
    Legend.Symbol.DefaultPen = False
    Legend.TextStyle = ltsValue
    Legend.Title.Text.Strings = (
      'Dolares')
    Legend.Title.TextAlignment = taCenter
    Legend.Top = 70
    Legend.Transparent = True
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.Zoom = 93
    TabOrder = 1
    PrintMargins = (
      15
      6
      15
      6)
    object Label5: TLabel
      Left = 120
      Top = 90
      Width = 38
      Height = 13
      Caption = 'Material'
    end
    object Label6: TLabel
      Left = 120
      Top = 104
      Width = 41
      Height = 13
      Caption = 'Personal'
    end
    object Label7: TLabel
      Left = 120
      Top = 117
      Width = 32
      Height = 13
      Caption = 'Equipo'
    end
    object Label8: TLabel
      Left = 120
      Top = 131
      Width = 59
      Height = 13
      Caption = 'Herramienta'
    end
    object Label9: TLabel
      Left = 120
      Top = 144
      Width = 35
      Height = 13
      Caption = 'Basicos'
    end
    object Button1: TButton
      Left = 624
      Top = 584
      Width = 75
      Height = 25
      Caption = 'MN'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 544
      Top = 584
      Width = 83
      Height = 25
      Caption = 'Guardar PDF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 471
      Top = 584
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button4Click
    end
    object PieSeries2: TPieSeries
      Marks.Callout.Brush.Color = clBlack
      Marks.Font.Height = -13
      Marks.Font.Style = [fsBold]
      Marks.Frame.Visible = False
      Marks.Style = smsPercent
      Marks.Transparent = True
      Marks.Visible = True
      DataSource = Explosion
      ValueFormat = '#,##0.##'
      Gradient.Direction = gdRadial
      OtherSlice.Legend.Visible = False
      PiePen.Visible = False
      PieValues.Name = 'Pie'
      PieValues.Order = loNone
      PieValues.ValueSource = 'totalDLL'
    end
  end
  object GraficaMN: TDBChart
    Left = 0
    Top = 1
    Width = 705
    Height = 625
    LeftWall.Pen.Visible = False
    LeftWall.Visible = False
    SubTitle.Font.Color = clBlack
    SubTitle.Font.Style = [fsItalic]
    SubTitle.Text.Strings = (
      'COMPORTAMIENTO DEL CONTRATO')
    Title.Font.Color = clBlack
    Title.Font.Height = -13
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'EXPLOSION DE INSUMOS GENERAL')
    Chart3DPercent = 30
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = -0.500000000000000000
    DepthAxis.Minimum = -0.500000000000000000
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = -0.500000000000000000
    DepthTopAxis.Minimum = -0.500000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    Legend.CustomPosition = True
    Legend.Frame.Width = 2
    Legend.Frame.Visible = False
    Legend.Left = 20
    Legend.LegendStyle = lsValues
    Legend.ResizeChart = False
    Legend.Symbol.DefaultPen = False
    Legend.TextStyle = ltsValue
    Legend.Title.Text.Strings = (
      'Moneda Nacional')
    Legend.Title.TextAlignment = taCenter
    Legend.Top = 70
    Legend.Transparent = True
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.Zoom = 93
    TabOrder = 0
    PrintMargins = (
      15
      6
      15
      6)
    object Label1: TLabel
      Left = 120
      Top = 90
      Width = 38
      Height = 13
      Caption = 'Material'
    end
    object Label2: TLabel
      Left = 120
      Top = 104
      Width = 41
      Height = 13
      Caption = 'Personal'
    end
    object Label3: TLabel
      Left = 120
      Top = 117
      Width = 32
      Height = 13
      Caption = 'Equipo'
    end
    object Label4: TLabel
      Left = 120
      Top = 131
      Width = 59
      Height = 13
      Caption = 'Herramienta'
    end
    object Basicos: TLabel
      Left = 120
      Top = 144
      Width = 35
      Height = 13
      Caption = 'Basicos'
    end
    object Button2: TButton
      Left = 624
      Top = 583
      Width = 75
      Height = 25
      Caption = 'DLL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button5: TButton
      Left = 544
      Top = 583
      Width = 83
      Height = 25
      Caption = 'Guardar PDF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 471
      Top = 583
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button6Click
    end
    object PieSeries1: TPieSeries
      Marks.Callout.Brush.Color = clBlack
      Marks.Font.Height = -13
      Marks.Font.Style = [fsBold]
      Marks.Frame.Visible = False
      Marks.Style = smsPercent
      Marks.Transparent = True
      Marks.Visible = True
      DataSource = Explosion
      ValueFormat = '#,##0.##'
      XLabelsSource = 'totalMN'
      Gradient.Direction = gdRadial
      OtherSlice.Legend.Visible = False
      PiePen.Visible = False
      PieValues.Name = 'Pie'
      PieValues.Order = loNone
      PieValues.ValueSource = 'totalMN'
    end
  end
  object ds_explosion: TDataSource
    DataSet = Explosion
    Left = 22
    Top = 353
  end
  object Explosion: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCost' +
        'oDLL) as totalDLL from recursosanexosnuevos ran'
      'where sContrato =:Contrato'
      'union'
      
        'select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCost' +
        'oDLL) as totalDLL from recursospersonalnuevos rpn'
      'where sContrato =:Contrato'
      'union'
      
        'select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCost' +
        'oDLL) as totalDLL from recursosequiposnuevos ren'
      'where sContrato =:Contrato'
      'union'
      
        'select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCost' +
        'oDLL) as totalDLL from recursosherramientasnuevos rhn'
      'where sContrato =:Contrato'
      'union'
      
        'select sum(dCantidad* dCostoMN) as totalMN, sum(dCantidad* dCost' +
        'oDLL) as totalDLL from recursosbasicosnuevos rbn'
      'where sContrato =:Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 21
    Top = 382
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object ExplosiontotalMN: TFloatField
      FieldName = 'totalMN'
      ReadOnly = True
    end
    object ExplosiontotalDLL: TFloatField
      FieldName = 'totalDLL'
      ReadOnly = True
    end
  end
  object frxReport1: TfrxReport
    Version = '4.6.91'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40306.686545497700000000
    ReportOptions.LastChange = 40310.814728449080000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '  if <dll>='#39'1'#39' then'
      '      begin '
      '      dolares.Visible:=True;'
      '      mnacional.Visible:=False;  '
      '      end;                '
      '  if <dll>='#39'0'#39' then'
      '      begin              '
      '      dolares.Visible:=False;                                '
      '      mnacional.Visible:=True;'
      '      end;                     '
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 24
    Top = 440
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      object dolares: TfrxChartView
        Left = 22.677180000000000000
        Top = 75.590600000000000000
        Width = 774.803650000000000000
        Height = 665.197280000000000000
        ShowHint = False
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080B4178697356697369626C65080E4368617274334450657263
          656E74021E0D4672616D652E56697369626C6508175669657733444F7074696F
          6E732E456C65766174696F6E033B01185669657733444F7074696F6E732E4F72
          74686F676F6E616C08195669657733444F7074696F6E732E5065727370656374
          6976650200165669657733444F7074696F6E732E526F746174696F6E0368010A
          426576656C4F75746572070662764E6F6E6505436F6C6F720707636C57686974
          65000A545069655365726965730753657269657331194D61726B732E43616C6C
          6F75742E42727573682E436F6C6F720707636C426C61636B0B4D61726B732E53
          74796C65070A736D7350657263656E740D4D61726B732E56697369626C650907
          436972636C656409124772616469656E742E446972656374696F6E0708676452
          616469616C194F74686572536C6963652E4C6567656E642E56697369626C6508
          0E50696550656E2E56697369626C65080E50696556616C7565732E4E616D6506
          035069650F50696556616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 315
        SeriesData = <
          item
            DataType = dtDBData
            DataSet = frxDBDataset1
            DataSetName = 'frxDBDataset1'
            SortOrder = soNone
            TopN = 0
            XType = xtDate
            Source1 = #39'Material;Personal;Equipo;Herramienta;Basicos'#39
            Source2 = 'frxDBDataset1."totalDLL"'
            XSource = #39'Material;Personal;Equipo;Herramienta;Basicos'#39
            YSource = 'frxDBDataset1."totalDLL"'
          end>
      end
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 816.378480000000000000
        object Memo1: TfrxMemoView
          Left = 268.346630000000000000
          Top = 3.779530000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'EXPLOSION DE INSUMOS GENERAL')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 816.378480000000000000
      end
      object Memo2: TfrxMemoView
        Left = 268.346630000000000000
        Top = 49.133890000000000000
        Width = 306.141930000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        HAlign = haCenter
        Memo.UTF8 = (
          'COMPORTAMIENTO DEL CONTRATO')
        ParentFont = False
      end
      object mnacional: TfrxChartView
        Left = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 774.803650000000000000
        Height = 604.724800000000000000
        ShowHint = False
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080B4178697356697369626C65080E4368617274334450657263
          656E74021E0D4672616D652E56697369626C6508175669657733444F7074696F
          6E732E456C65766174696F6E033B01185669657733444F7074696F6E732E4F72
          74686F676F6E616C08195669657733444F7074696F6E732E5065727370656374
          6976650200165669657733444F7074696F6E732E526F746174696F6E0368010A
          426576656C4F75746572070662764E6F6E6505436F6C6F720707636C57686974
          65000A545069655365726965730753657269657331194D61726B732E43616C6C
          6F75742E42727573682E436F6C6F720707636C426C61636B0B4D61726B732E53
          74796C65070A736D7350657263656E740D4D61726B732E56697369626C650907
          436972636C656409124772616469656E742E446972656374696F6E0708676452
          616469616C194F74686572536C6963652E4C6567656E642E56697369626C6508
          0E50696550656E2E56697369626C65080E50696556616C7565732E4E616D6506
          035069650F50696556616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 315
        SeriesData = <
          item
            DataType = dtDBData
            DataSet = frxDBDataset1
            DataSetName = 'frxDBDataset1'
            SortOrder = soNone
            TopN = 0
            XType = xtDate
            Source1 = #39'Material;Personal;Equipo;Herramienta;Basicos'#39
            Source2 = 'frxDBDataset1."totalMN"'
            XSource = #39'Material;Personal;Equipo;Herramienta;Basicos'#39
            YSource = 'frxDBDataset1."totalMN"'
          end>
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = ds_explosion
    Left = 22
    Top = 412
  end
end
