object frm_ProveedoresPendientes: Tfrm_ProveedoresPendientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cheques Pendientes de Comprobar'
  ClientHeight = 538
  ClientWidth = 1518
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object pgCuentas: TPageControl
    Left = 0
    Top = 49
    Width = 1518
    Height = 36
    Hint = 'Cuentas Bancarias'
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    RaggedRight = True
    TabOrder = 0
    OnChange = pgCuentasChange
    OnChanging = pgCuentasChanging
  end
  object tmDescripcion: TDBMemo
    Left = 0
    Top = 437
    Width = 1518
    Height = 101
    Align = alBottom
    Color = clWhite
    DataField = 'mDescripcion'
    DataSource = dszQChequesPendientes
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1518
    Height = 49
    Align = alTop
    TabOrder = 2
    DesignSize = (
      1518
      49)
    object Label4: TLabel
      Left = 24
      Top = 8
      Width = 85
      Height = 16
      Caption = 'Tipo de Gasto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btFiltrar: TSpeedButton
      Left = 496
      Top = 6
      Width = 38
      Height = 26
      Hint = 'Filtrar Gasto'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000888800000880F00088880F000880F00088880F0008800000088000
        0008800F000000F00008800F000800F00008800F000800F00008880000000000
        00888880F00880F008888880000880000888888800088000888888880F0880F0
        8888888800088000888888888888888888888888888888888888}
      OnClick = btFiltrarClick
    end
    object Label1: TLabel
      Left = 580
      Top = 11
      Width = 42
      Height = 16
      Caption = 'Gastos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 661
      Top = 11
      Width = 144
      Height = 16
      Caption = 'Gastos no Comprobados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 849
      Top = 11
      Width = 44
      Height = 16
      Caption = 'Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 952
      Top = 11
      Width = 51
      Height = 16
      Caption = 'Deposito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblInicio: TLabel
      Left = 1029
      Top = 11
      Width = 37
      Height = 17
      Caption = 'Inicio:'
    end
    object lblFinal: TLabel
      Left = 1183
      Top = 9
      Width = 35
      Height = 17
      Caption = 'Final:'
    end
    object ts_Filtrar: TEdit
      Left = 122
      Top = 6
      Width = 372
      Height = 25
      Color = clWhite
      TabOrder = 0
      OnKeyPress = ts_FiltrarKeyPress
    end
    object Memo1: TMemo
      Left = 556
      Top = 11
      Width = 17
      Height = 17
      Color = clBlue
      Lines.Strings = (
        'M'
        'e'
        'm'
        'o'
        '1')
      TabOrder = 1
    end
    object Memo2: TMemo
      Left = 637
      Top = 11
      Width = 17
      Height = 17
      Color = clRed
      Lines.Strings = (
        'M'
        'e'
        'm'
        'o'
        '1')
      TabOrder = 2
    end
    object Memo3: TMemo
      Left = 930
      Top = 11
      Width = 17
      Height = 17
      Color = clPurple
      Lines.Strings = (
        'M'
        'e'
        'm'
        'o'
        '1')
      TabOrder = 3
    end
    object Memo4: TMemo
      Left = 825
      Top = 11
      Width = 17
      Height = 17
      Color = clGreen
      Lines.Strings = (
        'M'
        'e'
        'm'
        'o'
        '1')
      TabOrder = 4
    end
    object chkCheques: TCheckBox
      Left = 1365
      Top = 11
      Width = 109
      Height = 20
      Anchors = [akTop, akRight]
      Caption = 'Solo Cheques'
      TabOrder = 5
      OnClick = chkChequesClick
    end
    object dtpFinal: TDateTimePicker
      Left = 1224
      Top = 6
      Width = 110
      Height = 25
      Date = 41930.579351331020000000
      Time = 41930.579351331020000000
      TabOrder = 6
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 85
    Width = 1518
    Height = 352
    Align = alClient
    PopupMenu = popup_principal
    TabOrder = 3
    object gridPendientes: TcxGridDBTableView
      OnDblClick = GridPendientesDblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dszQChequesPendientes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      Styles.OnGetContentStyle = gridPendientesStylesGetContentStyle
      object gridPendientesdIdFecha1: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'dIdFecha'
        Width = 102
      end
      object gridPendientesiIdFolio1: TcxGridDBColumn
        Caption = 'Folio'
        DataBinding.FieldName = 'iIdFolio'
        Width = 95
      end
      object gridPendientessTipoMovimiento1: TcxGridDBColumn
        Caption = 'Movimiento'
        DataBinding.FieldName = 'sTipoMovimiento'
        Width = 132
      end
      object gridPendientessReferencia1: TcxGridDBColumn
        Caption = 'Referencia'
        DataBinding.FieldName = 'sReferencia'
        Width = 109
      end
      object gridPendientessNumeroOrden1: TcxGridDBColumn
        Caption = 'Frente de Trabajo'
        DataBinding.FieldName = 'sNumeroOrden'
        Width = 239
      end
      object gridPendientessRazonSocial1: TcxGridDBColumn
        Caption = 'Raz'#243'n Social'
        DataBinding.FieldName = 'sRazonSocial'
        Width = 272
      end
      object gridPendientesdImporteTotal1: TcxGridDBColumn
        DataBinding.FieldName = 'dImporteTotal'
        Width = 126
      end
      object grdColumComprobado: TcxGridDBColumn
        Caption = 'Comprobado'
        DataBinding.FieldName = 'lComprobado'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridPendientes
    end
  end
  object dtpInicio: TDateTimePicker
    Left = 1069
    Top = 6
    Width = 101
    Height = 25
    Date = 41930.576082557870000000
    Time = 41930.576082557870000000
    TabOrder = 8
  end
  object dszQChequesPendientes: TDataSource
    DataSet = zQChequesPendientes
    Left = 323
    Top = 213
  end
  object zCommand: TZQuery
    Connection = connection.zConnection
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 585
    Top = 80
  end
  object zQChequesPendientes: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select te.* from con_tesoreriaegresos te'
      
        'inner join con_cuentasbancarias c on (c.sIdNumeroCuenta = te.sId' +
        'NumeroCuenta And c.sNombreCuenta = :Cuenta)'
      
        'where te.sTipoMovimiento <> "DEPOSITO" and te.sStatus = "Aprobad' +
        'o" '
      'order by te.dIdFecha, te.iIdFolio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end>
    Left = 288
    Top = 213
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end>
    object zQChequesPendientesdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zQChequesPendientesiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQChequesPendientessIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zQChequesPendientessReferencia: TStringField
      FieldName = 'sReferencia'
      Required = True
      Size = 30
    end
    object zQChequesPendientessIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zQChequesPendientessRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zQChequesPendientesdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      Required = True
      currency = True
    end
    object zQChequesPendienteslComprobado: TStringField
      FieldName = 'lComprobado'
      Required = True
      Size = 2
    end
    object zQChequesPendientessTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Required = True
      Size = 8
    end
    object zQChequesPendientesmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zQChequesPendientessNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 60
    end
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
    ReportOptions.LastChange = 42104.062597048610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 248
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frmDiarioTurno2.frtmpQuery
        DataSetName = 'frtmpQuery'
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
      object GroupHeader2: TfrxGroupHeader
        Top = 257.008040000000000000
        Width = 980.410082000000000000
        Condition = 'frTmpQuery."iIdFolio"'
        KeepTogether = True
        OutlineText = 'frTmpQuery."iIdFolio"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 321.260050000000000000
        Width = 980.410082000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 857.953310000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frTmpQuery."dImporte">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 604.724800000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL DEL CHEQUE [frTmpQuery."sReferencia"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 370.393940000000000000
        Width = 980.410082000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 857.953310000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frTmpQuery."dImporte">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 604.724800000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL DE LA CUENTA [frTmpQuery."sIdNumeroCuenta"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 279.685220000000000000
        Width = 980.410082000000000000
        DataSet = frmDiarioTurno2.frtmpQuery
        DataSetName = 'frtmpQuery'
        RowCount = 0
        Stretched = True
        object frPrintersIdRecibo: TfrxMemoView
          Left = 52.913420000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iIdFolio'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frtmpQuery."iIdFolio"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object frPrintersNombre: TfrxMemoView
          Left = 173.858380000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sRazonSocial'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frtmpQuery."sRazonSocial"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object frPrintersIdArticulo: TfrxMemoView
          Left = 86.929190000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sReferencia'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frtmpQuery."sReferencia"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object frPrintermDescripcion: TfrxMemoView
          Left = 604.724800000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frtmpQuery."mDescripcion"]')
          ParentFont = False
        end
        object frPrinterdImporteTotal_1: TfrxMemoView
          Left = 907.087200000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dImporte'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frtmpQuery."dImporte"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dIdFecha'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frtmpQuery."dIdFecha"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo14: TfrxMemoView
          Left = 857.953310000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdFactura'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frtmpQuery."sIdFactura"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 385.512060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdEgreso'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frtmpQuery."sIdEgreso"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 449.764070000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sRazonSocial_1'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frtmpQuery."sRazonSocial_1"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 313.700990000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frTmpQuery."dImporteTotal"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 457.323130000000000000
        Width = 980.410082000000000000
        object frConfiguracionsSlogan: TfrxMemoView
          Left = 177.637910000000000000
          Top = 22.677180000000000000
          Width = 801.260360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sSlogan'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracionCont."sSlogan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 423.307360000000000000
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
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 181.417440000000000000
        Width = 980.410082000000000000
        Condition = 'frTmpQuery."sIdNumeroCuenta"'
        KeepTogether = True
        ReprintOnNewPage = True
        OutlineText = 'frTmpQuery."sIdNumeroCuenta"'
        StartNewPage = True
        object Memo3: TfrxMemoView
          Left = 52.913420000000000000
          Top = 26.456710000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id. FOLIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 173.858380000000000000
          Top = 26.456710000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CHEQUE CON CARGO A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 86.929190000000000000
          Top = 26.456710000000000000
          Width = 86.929190000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. DE CUENTA:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 604.724800000000000000
          Top = 26.456710000000000000
          Width = 253.228510000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 11397062
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 907.087200000000000000
          Top = 26.456710000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 11397062
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersReferencia: TfrxMemoView
          Left = 86.929190000000000000
          Top = 7.559060000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'sIdNumeroCuenta'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frtmpQuery."sIdNumeroCuenta"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
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
        object Memo13: TfrxMemoView
          Left = 857.953310000000000000
          Top = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 11397062
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '# FACTURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 385.512060000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 11397062
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id. EGRESO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 449.764070000000000000
          Top = 26.456710000000000000
          Width = 154.960730000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 11397062
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'EMPLEDO/PROVEEDOR/AREA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 313.700990000000000000
          Top = 26.456710000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16629143
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object frConfiguracionsNombre: TfrxMemoView
          Left = 147.401670000000000000
          Top = 3.779530000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sNombre"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 22.677180000000000000
          Width = 665.197280000000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sRfc"]'
            '[frConfiguracionCont."sDireccion1"]'
            '[frConfiguracionCont."sDireccion2"]'
            '[frConfiguracionCont."sDireccion3"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 5.559060000000000000
          Top = 3.000000000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
      end
    end
  end
  object styleGrid: TcxStyleRepository
    Left = 632
    Top = 120
    PixelsPerInch = 120
    object cxstylBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
    object cxstylRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxstylBlack: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstylGreen: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clGreen
    end
    object cxstylMaroon: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxstylBlackStrong: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstylPurple: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = 16711808
    end
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
      'Radial1'
      'mnEgresos')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.ImageListBkColor = clMoneyGreen
    ImageOptions.Images = frmrepositorio.IconosTodos16
    ImageOptions.LargeImages = frmrepositorio.IconosTodos32
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsStandard
    UseSystemFont = False
    Left = 464
    Top = 72
    DockControlHeights = (
      0
      0
      0
      0)
    object btnEgresosPorRangoFecha: TdxBarButton
      Caption = 'Impresion de Egresos por rango de fechas'
      Category = 0
      Hint = 'Impresion de Egresos por rango de fechas'
      Visible = ivAlways
      ImageIndex = 397
      OnClick = btnEgresosPorRangoFechaClick
    end
    object EditarCaratuladeEgreso1: TdxBarButton
      Caption = 'Editar Caratula de Egreso'
      Category = 1
      Visible = ivAlways
      ImageIndex = 266
      ShortCut = 113
      OnClick = EditarCaratuladeEgreso1Click
    end
    object dxbrbtn1: TdxBarButton
      Caption = 'Exportar a Excel'
      Category = 1
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      ImageIndex = 181
      OnClick = dxbrbtn1Click
    end
  end
  object popup_principal: TdxRibbonPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'EditarCaratuladeEgreso1'
      end
      item
        Visible = True
        ItemName = 'dxbrbtn1'
      end>
    UseOwnFont = False
    Left = 520
    Top = 216
  end
  object dlgSave1: TSaveDialog
    Left = 768
    Top = 240
  end
end
