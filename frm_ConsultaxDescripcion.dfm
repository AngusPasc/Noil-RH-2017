object frmConsultaxDescripcion: TfrmConsultaxDescripcion
  Left = 141
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta x Descripcion'
  ClientHeight = 409
  ClientWidth = 867
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 2
    Top = 14
    Width = 93
    Height = 14
    Caption = 'Texto de Busqueda'
  end
  object tsDescripcion: TEdit
    Left = 100
    Top = 6
    Width = 557
    Height = 22
    Hint = 'Ingrese un texto de b'#250'squeda.'
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnEnter = tsDescripcionEnter
    OnExit = tsDescripcionExit
    OnKeyPress = tsDescripcionKeyPress
  end
  object btnSalir: TBitBtn
    Left = 774
    Top = 4
    Width = 90
    Height = 30
    Caption = '&Salir'
    TabOrder = 1
    OnClick = btnSalirClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888880888
      8888888888800888888888888804088888888888804E08888888000004EE0000
      000088880EEE0770888888880EE00770888888880EE00770888888880EEE0770
      888888880EEE0770888888880EEE0770888888880EEE0770888888880EE40770
      888888880E407770888888880407777088888888000000008888}
  end
  object btnSabana: TBitBtn
    Left = 678
    Top = 2
    Width = 90
    Height = 30
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btnSabanaClick
    Glyph.Data = {
      22010000424D22010000000000004A0000002800000012000000120000000100
      040000000000D8000000120B0000120B000005000000050000000000FF00FFFF
      FF00BFBFBF007F7F7F0000000000222222222222222222004004222444444444
      4422220022222242222222224342220022242444444444444434220022422422
      2222200224442200244424222222222224342200242224444444444444334200
      2422242222222222434342002444224444444444243442002422222424444444
      4243420022442222411111114444220022242222411111111422220022222222
      2411111114222200222222222411111111422200222222222244444444422200
      2222222222222222222222002222222222222222222222002222222222222222
      222222002222}
  end
  object tNewGroupBox1: tNewGroupBox
    Left = 2
    Top = 215
    Width = 865
    Height = 194
    Caption = 'Coincidencias encontradas en los siguientes Reportes Diarios'
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 865
    Title.HighLightColor = clBlack
    Title.ShadowColor = clBlack
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 1
    Title.Bevel = bnRaised
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 18
    Title.BkColor = clSilver
    TransparentMode = False
    Border = True
    Shape = tsRectRound
    object grid_bitacora: TDBGrid
      Left = 2
      Top = 21
      Width = 861
      Height = 171
      Cursor = crHelp
      Hint = 'Bitacora de Movimientos de la Partida'
      Align = alCustom
      Color = 15138559
      Ctl3D = False
      DataSource = ds_bitacora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = grid_bitacoraDblClick
      OnKeyPress = grid_bitacoraKeyPress
      OnMouseMove = grid_bitacoraMouseMove
      OnMouseUp = grid_bitacoraMouseUp
      OnTitleClick = grid_bitacoraTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'dIdFecha'
          Title.Caption = 'Fecha'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'iIdDiario'
          Title.Alignment = taRightJustify
          Title.Caption = '#'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sNumeroReporte'
          Title.Caption = 'No. de Reporte'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sDescripcionTurno'
          Title.Caption = 'Turno'
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sTitulo'
          Title.Caption = 'Movimiento'
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 82
          Visible = True
        end
        item
          Color = cl3DLight
          Expanded = False
          FieldName = 'dAvance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taRightJustify
          Title.Caption = 'Avance'
          Width = 82
          Visible = True
        end>
    end
  end
  object Grid_Actividades: TRxDBGrid
    Left = 2
    Top = 38
    Width = 865
    Height = 171
    Hint = 'Aqu'#237' se reflejan los resultados de las consultas.'
    Color = 15138559
    Ctl3D = False
    DataSource = ds_actividadesxAnexo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDblClick = Grid_ActividadesDblClick
    TitleButtons = True
    OnGetCellParams = Grid_ActividadesGetCellParams
    OnTitleBtnClick = Grid_ActividadesTitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'sSimbolo'
        Title.Caption = '*'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sWbsSpace'
        Title.Caption = 'Wbs'
        Width = 126
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sNumeroActividad'
        Title.Alignment = taCenter
        Title.Caption = 'Concepto'
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sMedida'
        Title.Alignment = taCenter
        Title.Caption = 'Unidad'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dCantidadAnexo'
        Title.Alignment = taRightJustify
        Title.Caption = 'Cantidad'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dInstalado'
        Title.Alignment = taRightJustify
        Title.Caption = 'Instalado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dPendiente'
        Title.Alignment = taRightJustify
        Title.Caption = 'Pendiente'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dExcedente'
        Title.Alignment = taRightJustify
        Title.Caption = 'Excedente'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dPonderado'
        Title.Alignment = taRightJustify
        Title.Caption = 'Ponderado'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAvance'
        Title.Alignment = taRightJustify
        Title.Caption = 'Avance'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dVentaMN'
        Title.Alignment = taRightJustify
        Title.Caption = 'P. Unitario'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dMontoMN'
        Title.Alignment = taRightJustify
        Title.Caption = '$ Total'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dFechaInicio'
        Title.Caption = 'F. Inicio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dFechaFinal'
        Title.Caption = 'F. Final'
        Visible = True
      end>
  end
  object ds_bitacora: TDataSource
    AutoEdit = False
    DataSet = Bitacora
    Left = 440
    Top = 304
  end
  object ds_actividadesxAnexo: TDataSource
    AutoEdit = False
    DataSet = ActividadesxAnexo
    Left = 184
    Top = 104
  end
  object AnexoC: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38413.901132002300000000
    ReportOptions.LastChange = 38812.374937407410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 416
    Top = 120
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' Totales'
        Value = Null
      end
      item
        Name = 'TotalMN'
        Value = '<dbReporte."dCantidadAnexo"> * <dbReporte."dVentaMN">'
      end
      item
        Name = 'TotalDLL'
        Value = '<dbReporte."dCantidadAnexo"> * <dbReporte."dVentaDLL">'
      end>
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
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        DataSet = frmReportePeriodo.dbReporte
        DataSetName = 'dbReporte'
        OutlineText = 'dbReporte."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo30: TfrxMemoView
          Left = 1.889763780000000000
          Width = 39.685039370000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'sNumeroActividad'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbReporte."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 41.574803149606300000
          Width = 347.716535433070800000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'mDescripcion'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbReporte."mDescripcion"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 389.291338580000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'sMedida'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbReporte."sMedida"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 427.086614170000000000
          Width = 49.133858270000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidadAnexo'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbReporte."dCantidadAnexo"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 589.228373310000000000
          Width = 52.913376060000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalMN]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 642.141749370000000000
          Width = 53.669281570000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalDLL]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 695.433520000000000000
          Width = 43.464566929133860000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dPonderado'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbReporte."dPonderado"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 476.220780000000000000
          Width = 56.692918270000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dVentaMN'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbReporte."dVentaMN"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 532.913730000000000000
          Width = 56.692918270000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dVentaDLL'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbReporte."dVentaDLL"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 129.834687170000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo2: TfrxMemoView
          Left = 157.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
          Height = 70.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'CONTRATO No.: [contrato."sContrato"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 562.268090000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo3: TfrxMemoView
          Left = 559.268090000000000000
          Top = 45.133889999999990000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[setup."sNombre"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 94.708720000000000000
          Width = 735.874015750000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 8.692923150000000000
          Top = 86.929190000000000000
          Width = 228.283135040000000000
          Height = 13.220470000000000000
          ShowHint = False
          AutoWidth = True
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DETALLE DE PARTIDAS POR DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 1.889763780000000000
          Top = 105.267780000000000000
          Width = 735.874015750000000000
          Height = 24.566907170000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[Contrato."mDescripcion"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 170.078850000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 1.779530000000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo8: TfrxMemoView
          Left = 157.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
          Height = 74.590600000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'CONTRATO No.: [contrato."sContrato"]'
            'DETALLE DE PARTIDAS POR DESCRIPCI'#195#8220'N')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 562.268090000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo9: TfrxMemoView
          Left = 559.268090000000000000
          Top = 45.133890000000010000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 51.023641570000000000
        ParentFont = False
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        Condition = 'dbReporte."sContrato"'
        ReprintOnNewPage = True
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 19.118119999999980000
          Width = 737.008325590000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo6: TfrxMemoView
          Left = 8.692923150000000000
          Top = 11.338590000000010000
          Width = 164.031125040000000000
          Height = 13.220470000000000000
          ShowHint = False
          AutoWidth = True
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DETALLE DE PARTIDAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 1.889763780000000000
          Top = 30.236240000000010000
          Width = 39.685039370000000000
          Height = 20.787401574803150000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 41.574803150000000000
          Top = 30.236240000000010000
          Width = 347.716535430000000000
          Height = 20.787401570000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 427.086614170000000000
          Top = 30.236240000000010000
          Width = 49.133858270000000000
          Height = 20.787401574803150000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT. ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 389.291338580000000000
          Top = 30.236240000000010000
          Width = 37.795275590000000000
          Height = 20.787401574803150000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 589.228370870000000000
          Top = 30.236240000000010000
          Width = 52.913373620000000000
          Height = 20.787401574803150000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MONTO MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 642.141749370000000000
          Top = 30.236240000000010000
          Width = 53.669279130000000000
          Height = 20.787401574803150000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MONTO DLL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 695.433520000000000000
          Top = 30.236240000000010000
          Width = 43.464566929133860000
          Height = 20.787401574803150000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'POND.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 476.220472440000000000
          Top = 30.236240000000010000
          Width = 56.692918270000000000
          Height = 20.787401574803150000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'P.U. MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 532.913730000000000000
          Top = 30.236240000000010000
          Width = 56.692918270000000000
          Height = 20.787401574803150000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'P.U. MN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 43.425170000000000000
        Top = 491.338900000000000000
        Width = 740.409927000000000000
        object Memo29: TfrxMemoView
          Left = 288.244280000000000000
          Top = 21.086580000000080000
          Width = 449.764070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Setup."sSlogan"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = -0.779530000000000000
          Top = 21.086580000000080000
          Width = 275.905690000000000000
          Height = 22.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 304.244280000000000000
          Top = 3.133579999999995000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'P'#195#161'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 430.866420000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object ActividadesxAnexo: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = ActividadesxAnexoAfterScroll
    OnCalcFields = ActividadesxAnexoCalcFields
    SQL.Strings = (
      
        'Select sContrato, sIdConvenio, sEspecificacion, sSimbolo, sWbsAn' +
        'terior, sWbs, sTipoActividad,  sNumeroActividad, iItemOrden, iCo' +
        'lor, iNivel, '
      'mDescripcion, sMedida, dCantidadAnexo, dPonderado, '
      
        'dVentaMN, dVentaDLL, dFechaInicio, dFechaFinal, dInstalado, dExc' +
        'edente'
      
        'from actividadesxanexo Where sContrato = :contrato And sIdConven' +
        'io = :Convenio And'
      'mDescripcion LIKE :Actividad order by :Ordenado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ordenado'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ordenado'
        ParamType = ptUnknown
      end>
    object ActividadesxAnexosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesxAnexosEspecificacion: TStringField
      FieldName = 'sEspecificacion'
      Required = True
      Size = 15
    end
    object ActividadesxAnexosWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object ActividadesxAnexosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesxAnexomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesxAnexosMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object ActividadesxAnexodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
    end
    object ActividadesxAnexodFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object ActividadesxAnexodFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object ActividadesxAnexodInstalado: TFloatField
      FieldName = 'dInstalado'
      Required = True
    end
    object ActividadesxAnexodExcedente: TFloatField
      FieldName = 'dExcedente'
      Required = True
    end
    object ActividadesxAnexodAvance: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dAvance'
      DisplayFormat = '##0.0### %'
      Calculated = True
    end
    object ActividadesxAnexodPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dPendiente'
      DisplayFormat = '##0.0### %'
      Calculated = True
    end
    object ActividadesxAnexosWbsSpace: TStringField
      FieldKind = fkCalculated
      FieldName = 'sWbsSpace'
      Size = 30
      Calculated = True
    end
    object ActividadesxAnexosSimbolo: TStringField
      FieldName = 'sSimbolo'
      Required = True
      Size = 1
    end
    object ActividadesxAnexoiColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
    object ActividadesxAnexoiNivel: TIntegerField
      FieldName = 'iNivel'
      Required = True
    end
    object ActividadesxAnexodMontoMN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoMN'
      Calculated = True
    end
    object ActividadesxAnexodCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
      Required = True
    end
    object ActividadesxAnexodPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
    end
    object ActividadesxAnexosTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Required = True
      Size = 9
    end
    object ActividadesxAnexosIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object ActividadesxAnexosWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 30
    end
    object ActividadesxAnexoiItemOrden: TStringField
      FieldName = 'iItemOrden'
      Required = True
      Size = 48
    end
  end
  object Bitacora: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select b.sContrato, b.dIdFecha, b.iIdDiario, b.sIdTurno, b.sNume' +
        'roOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance, b.s' +
        'IdTipoMovimiento, b.lAlcance,'
      
        'r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra, tu.sDescripci' +
        'on as sDescripcionTurno from bitacoradeactividades b'
      
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.s' +
        'NumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.s' +
        'IdTurno = b.sIdTurno)'
      
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTur' +
        'no = tu.sIdTurno)'
      
        'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And' +
        ' b.sIdTipoMovimiento = t.sIdTipoMovimiento and t.sClasificacion ' +
        '= '#39'Tiempo en Operacion'#39')'
      'Where b.sContrato = :contrato and b.sNumeroActividad= :Actividad'
      'Order By b.dIdFecha, b.iIdDiario asc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 409
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
  end
  object AvGeneral: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sum(b.dAvance) as dAvance, a.dCantidadAnexo, a2.dCantidad' +
        ' From bitacoradeactividades b'
      
        'INNER JOIN actividadesxorden a2 ON (a2.sContrato = b.sContrato A' +
        'nd a2.sPaquete = b.sPaquete And a2.sNumeroActividad = b.sNumeroA' +
        'ctividad and a2.sWbs=b.sWbs And a2.sIdConvenio = :Convenio And a' +
        '2.sTipoActividad = "Actividad" )'
      
        'INNER JOIN actividadesxanexo a ON (a.sContrato = b.sContrato And' +
        ' a.sNumeroActividad = b.sNumeroActividad and a.sWbs=a2.sWbsContr' +
        'ato  And a.sIdConvenio = a2.sIdConvenio)'
      
        'Where b.sContrato = :contrato And b.sNumeroActividad = :Activida' +
        'd Group By b.sPaquete')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 105
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
  end
  object dbActividadesxAnexo: TfrxDBDataset
    UserName = 'dbActividadesxAnexo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sEspecificacion=sEspecificacion'
      'sWbs=sWbs'
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'sMedida=sMedida'
      'dVentaMN=dVentaMN'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'dInstalado=dInstalado'
      'dExcedente=dExcedente'
      'dAvance=dAvance'
      'dPendiente=dPendiente'
      'sWbsSpace=sWbsSpace'
      'sSimbolo=sSimbolo'
      'iColor=iColor'
      'iNivel=iNivel'
      'dMontoMN=dMontoMN'
      'dCantidadAnexo=dCantidadAnexo'
      'dPonderado=dPonderado'
      'sTipoActividad=sTipoActividad'
      'sIdConvenio=sIdConvenio'
      'sWbsAnterior=sWbsAnterior'
      'iItemOrden=iItemOrden')
    DataSet = ActividadesxAnexo
    BCDToCurrency = False
    Left = 456
    Top = 120
  end
  object rDiario: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 39210.557038483800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function espaces (paramNivel :Integer) : String ;'
      'var'
      '   pos : integer ;'
      '   sCadena : String ;'
      'begin'
      '    sCadena := '#39#39' ;'
      '    for pos := 0 to (paramNivel * 2) do'
      '       sCadena := sCadena + '#39#160#39' ;'
      '    result := sCadena ;'
      'end ;'
      ''
      'function esColor (iColor :Integer) : tColor ;'
      'var'
      '    sColor : tColor ;'
      'begin'
      '  Case iColor Of'
      '        0 : sColor := clBlack ;'
      '        1 : sColor := clMaroon ;'
      '        2 : sColor := clGreen ;'
      '        3 : sColor := clOlive ;'
      '        4 : sColor := clNavy ;'
      '        5 : sColor := clPurple ;'
      '        6 : sColor := clTeal ;'
      '        7 : sColor := clGray ;'
      '        8 : sColor := clSilver ;'
      '        9 : sColor := clRed ;'
      '        10 : sColor := clLime ;'
      '        11 : sColor := clYellow ;'
      '        12 : sColor := clBlue ;'
      '        13 : sColor := clFuchsia ;'
      '        14 : sColor := clAqua ;'
      '        15 : sColor := clWhite ;'
      '    End ;'
      '    result := sColor ;'
      'end ;'
      ''
      'procedure Memo31OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo31.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo10.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo16.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo12.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo14OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo14.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo25OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo25.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo26OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo26.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo27.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo15.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    Left = 32
    Top = 312
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
      end
      item
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' Totales'
        Value = Null
      end
      item
        Name = 'TotalMN'
        Value = 
          'IIF(<dbActividadesxOrden."sTipoActividad"> = '#39'Actividad'#39',<dbActi' +
          'vidadesxOrden."dCantidad"> * <dbActividadesxOrden."dVentaMN">,0)'
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
      object PageFooter1: TfrxPageFooter
        Height = 49.133890000000000000
        Top = 597.165740000000000000
        Width = 740.409927000000000000
        object Memo32: TfrxMemoView
          Left = 188.976500000000000000
          Top = 30.236239999999960000
          Width = 551.811380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Setup."sSlogan"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236239999999960000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 257.008040000000000000
          Top = 7.559059999999817000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.007874020000000000
        Top = 442.205010000000000000
        Width = 740.409927000000000000
        OutlineText = 'dbActividadesxOrden."sWBS"'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 73.700811810000000000
          Width = 308.031444800000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dbActividadesxOrden."mDescripcion"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 427.086890000000000000
          Width = 49.133890000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo12OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaFinal'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dFechaFinal"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 476.220780000000000000
          Width = 49.133890000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dCantidad"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 696.566931570000000000
          Width = 42.330706220000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dPonderado"] %')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 381.732266380000000000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaInicio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dFechaInicio"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 559.370440000000000000
          Width = 65.763786850000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dVentaMN'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dVentaMN"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 625.133853390000000000
          Width = 71.433078190000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dMontoMN'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dMontoMN"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 1.889763780000000000
          Width = 71.811070000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[espaces(<dbActividadesxOrden."iNivel">)] [IIF(<dbActividadesxOr' +
              'den."sTipoActividad"> = '#39'Paquete'#39' , IIF(<dbActividadesxOrden."sW' +
              'bsAnterior"> <> '#39'0'#39', <dbActividadesxOrden."sWbs">, <dbActividade' +
              'sxOrden."sWbs"> )'
            ', <dbActividadesxOrden."sNumeroActividad">)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 525.354670000000000000
          Width = 34.015770000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sMedida'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbActividadesxOrden."sMedida"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 185.417440000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
        end
        object Memo4: TfrxMemoView
          Left = 159.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
          Height = 78.370130000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'ORDEN DE TRABAJO')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 5.779530000000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 77.149660000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 564.268090000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 79.149660000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 87.149660000000000000
          Width = 735.874015750000000000
          Height = 94.488250000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Frame.Width = 1.500000000000000000
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          Left = 9.448823780000000000
          Top = 90.708666300000000000
          Width = 720.755895750000000000
          Height = 82.393720310000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'CONTRATO: [Contrato."sContrato"]'
            'CODIGO: [Contrato."sCodigo"]'
            'NOMBRE DEL PROYECTO: [Contrato."mDescripcion"]'
            'PROGRAMA: [dsOrden."sDescripcion"]'
            'SUBPROGRAMA: [Contrato."sConvenio"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 86.929190000000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
        end
        object Memo5: TfrxMemoView
          Left = 159.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
          Height = 78.370130000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'ORDEN DE TRABAJO')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 5.779530000000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 77.149660000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 564.268090000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 79.149660000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 374.173470000000000000
        Width = 740.409927000000000000
        Condition = 'dbActividadesxOrden."sContrato"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Memo18: TfrxMemoView
          Left = 73.700811810000000000
          Top = 3.779530000000022000
          Width = 308.031444800000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 381.732266380000000000
          Top = 3.779530000000022000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'F. INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 427.086592200000000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'F. TERM.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 476.220780000000000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 696.566931570000000000
          Top = 3.779530000000022000
          Width = 42.330706220000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000022000
          Width = 65.763786850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'P.U. M.N.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 625.133853390000000000
          Top = 3.779530000000022000
          Width = 71.433078190000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL M.N.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 1.889763780000000000
          Top = 3.779530000000022000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONCEPTO/'
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 525.354670000000000000
          Top = 3.779530000000022000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 22.677170240000000000
        Top = 514.016080000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo29: TfrxMemoView
          Left = 349.606523780000000000
          Top = 3.779527560000020000
          Width = 210.519345750000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total General de la Orden de Trabajo')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 574.488193860000000000
          Top = 3.779527560000020000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<TotalMN>,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 691.653990000000000000
          Top = 3.779530000000022000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '100 %')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 419.527830000000000000
        Width = 740.409927000000000000
        Condition = 'dbActividadesxOrden."iItemOrden"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 483.779840000000000000
        Width = 740.409927000000000000
      end
    end
  end
end
