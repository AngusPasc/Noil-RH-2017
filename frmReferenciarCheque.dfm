object frm_ReferenciarCheque: Tfrm_ReferenciarCheque
  Left = 51
  Top = 169
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Referenciar Cheque'
  ClientHeight = 563
  ClientWidth = 982
  Color = 14802905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopReferencia
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    982
    563)
  PixelsPerInch = 96
  TextHeight = 14
  object pgEgresos: TPageControl
    AlignWithMargins = True
    Left = -3
    Top = 32
    Width = 977
    Height = 371
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    HotTrack = True
    MultiLine = True
    ParentFont = False
    TabOrder = 1
    OnChange = pgEgresosChange
    OnChanging = pgEgresosChanging
  end
  object GridConceptos: TDBGrid
    Left = 0
    Top = 33
    Width = 974
    Height = 365
    Align = alCustom
    Color = 15526630
    Ctl3D = False
    DataSource = dsQPEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnCellClick = GridConceptosCellClick
    OnKeyPress = GridConceptosKeyPress
    Columns = <
      item
        Color = 11009259
        Expanded = False
        FieldName = 'sIdEgreso'
        Width = 69
        Visible = True
      end
      item
        Color = 11009259
        Expanded = False
        FieldName = 'dIdFecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sIdProveedor'
        ReadOnly = True
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sRazonSocial'
        ReadOnly = True
        Width = 307
        Visible = True
      end
      item
        Color = 11009259
        Expanded = False
        FieldName = 'dImporte'
        Title.Alignment = taRightJustify
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object grComentarios: TGroupBox
    Left = -2
    Top = 404
    Width = 639
    Height = 158
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Descripcion del Evento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DBMemo1: TDBMemo
      Left = 3
      Top = 13
      Width = 633
      Height = 142
      Align = alCustom
      Anchors = [akLeft, akTop, akBottom]
      Color = 12451312
      DataField = 'mDescripcion'
      DataSource = dsQPEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnExit = DBMemo1Exit
    end
  end
  object GroupBox2: TGroupBox
    Left = 638
    Top = 404
    Width = 339
    Height = 158
    Anchors = [akRight, akBottom]
    Caption = 'Descripcion del Evento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 5
      Top = 65
      Width = 86
      Height = 14
      Caption = 'Efectivo Pagado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 23
      Width = 101
      Height = 14
      Caption = 'Monto del Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 106
      Width = 103
      Height = 14
      Caption = 'Importe Pendiente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnReferencia: TSpeedButton
      Left = 160
      Top = 82
      Width = 153
      Height = 32
      Caption = 'Comprobar'
      Glyph.Data = {
        06080000424D060800000000000036000000280000001A000000190000000100
        180000000000D0070000C40E0000C40E00000000000000000000B8B8E8B8B8E8
        B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8
        E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8
        B8E8B8B8E8B8B8E80000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000B8B8E898A0D0
        98A0D0B8B8E8B8B8E898A0D098A0D0B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8
        E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E8B8B8E098A0D0A89098B8
        B8E0B8B8E8B8B8E80000FFFFFFD8B8B88818008080804878A828588828588898
        A0D06880A0D8E0E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF8F0F0781810600000680000C8A0A0FFFFFFFFFFFF0000FFFFFFFFF8F8
        80302878A8E0E0E8F088B8F06898D85878D04078B8285888A8B8C8E0E8F0E0E8
        F0B8B8E098A0D06080A06880A0B8B8E0E0E0B8F0E8E8781810600000700808A8
        7070FFFFFFFFFFFF0000FFFFFFFFFFFFC0A0A06080A0D8E0E890C8F890C8F890
        C0F880B8F078A8E86898D84078B84078B85088D85890E06098E05890E00060C0
        D8D8B0F8F8E8802828700800802018803028FFFFFFFFFFFF0000B8B8E85068B8
        4868B07038605848805068B85878D06898E080A0E87890E07090D87890E07088
        D87088D86080D86080D86078D84878D8A8B8C8B8B8E880588878386088507078
        4068B8B8E0B8B8E80000FFFFFF4878A86098E0584880A83800D09858B0885840
        002020508880B8F090C0F878B0E870A8E068A0E06898E06098E06098E02080E0
        D8D8B0FFFFFFA87070881808B85838A03828E0E0E0FFFFFF0000FFFFFF6080A0
        70A8E85890E0604040A83800E0E080E078507008080060C06898D890C8F880B8
        E878A8E870A8E868A0E078A8E02080E0A8B8C8FFFFFFD8B8B8982800C86040C8
        6040C8A0A0FFFFFF0000FFFFFFA8B8C86898D870A8E84078B8680800B85838E0
        E0B8C860404000200060C04878D888C0E888B8E878B0E878A8E870A8E05890E0
        6898C8FFFFFFF0E8E8902818E07850E88058B07878FFFFFF0000B8B8E8B8B8E8
        5068B87898E06088E0385098783860A06880C0A0A09858584020804878D87088
        D88098E07890E07890E07088D86888D86880D8B8B8E0B8B8E8885070B88888B8
        8898886088B8B8E80000FFFFFFFFFFFF98A0D088B8E888B8F04878D820206088
        1800F89060E8C07860806020A0FF90C8F890C8F888B8F088C0E890C0F890C8F8
        4058A8C0A0A0F8F8F8A06860F89060E88058904848FFFFFF0000FFFFFFFFFFFF
        E8E8F06898C890C8F85890E02080E0400020982800A8B8C860E0E02860906880
        A090C8F888B8E890C8F890C8F8286098E0E0E0FFFFFFFFFFFFF0E8E8B89090E8
        D8D8FFF8F8FFFFFF0000FFFFFFFFFFFFF0F0F84878A890C8F888B8F078A8E858
        90E02080E060E0E090C8F8B0885888180880B8F090C8F890C8F8305880F0F0F8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C0C0E8C0C0E8
        C0C0E898A0D05878D07898E080A0E87898E06088E058488088506068A0E0A870
        707838606098E05068B8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0
        C0E8C0C0E8C0C0E80000FFFFFFFFFFFFFFFFFFFFFFFFE8E8F098A0D04878A868
        98C878A8E86090D8881808A0686060E0E0A85028604040FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E8F06898C84078B83850988818008080
        8060E0E0A85028B88888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF0F8F8F0F0F8D8B8B89828006898C878A8E0982800E8D8D8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C0C0E8C0C0E8
        C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8A890
        988048586098E06880A0886088C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0
        C0E8C0C0E8C0C0E80000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8707088403860E0E0806060F0E8E8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD8B8B8804858983820B89090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0B07878E0C0C0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C0C0E8C0C0E8
        C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0
        E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0C0E8C0
        C0E8C0C0E8C0C0E80000}
      OnClick = btnReferenciaClick
    end
    object btnPrinter: TSpeedButton
      Left = 160
      Top = 114
      Width = 153
      Height = 32
      Caption = 'Imprimir'
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
      OnClick = btnPrinterClick
    end
    object tMonto: TCurrencyEdit
      Left = 5
      Top = 41
      Width = 121
      Height = 22
      Margins.Left = 1
      Margins.Top = 1
      TabOrder = 0
    end
    object tPagado: TCurrencyEdit
      Left = 5
      Top = 83
      Width = 121
      Height = 22
      Margins.Left = 1
      Margins.Top = 1
      TabOrder = 1
    end
    object tPendiente: TCurrencyEdit
      Left = 5
      Top = 124
      Width = 121
      Height = 22
      Margins.Left = 1
      Margins.Top = 1
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 1
    Width = 977
    Height = 33
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object Label4: TLabel
      Left = 1
      Top = 11
      Width = 79
      Height = 14
      Caption = 'Tipo de Gasto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btFiltrar: TSpeedButton
      Left = 446
      Top = 4
      Width = 33
      Height = 23
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
    object ts_Filtrar: TEdit
      Left = 108
      Top = 5
      Width = 328
      Height = 22
      Color = 12451312
      TabOrder = 0
      OnKeyPress = ts_FiltrarKeyPress
    end
  end
  object dsQPEgresos: TDataSource
    DataSet = zQPEgresos
    Left = 126
    Top = 37
  end
  object zQPEgresos: TZQuery
    Connection = connection.zConnection
    BeforeInsert = zQPEgresosBeforeInsert
    AfterInsert = zQPEgresosAfterInsert
    BeforeEdit = zQPEgresosBeforeEdit
    BeforePost = zQPEgresosBeforePost
    AfterPost = zQPEgresosAfterPost
    AfterDelete = zQPEgresosAfterDelete
    SQL.Strings = (
      
        'select * from con_tesoreriapegresos where iIdFolio = :folio orde' +
        'r by sIdEgreso')
    Params = <
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    Left = 155
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    object zQPEgresosdIdFecha: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'dIdFecha'
      ReadOnly = True
      Required = True
    end
    object zQPEgresosiIdFolio: TIntegerField
      DisplayLabel = 'Folio'
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQPEgresossIdEgreso: TStringField
      DisplayLabel = 'Id. Egreso'
      FieldName = 'sIdEgreso'
      Required = True
      OnChange = zQPEgresossIdEgresoChange
      Size = 8
    end
    object zQPEgresossRazonSocial: TStringField
      DisplayLabel = 'Empleado/Razon Social'
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zQPEgresossIdFactura: TStringField
      DisplayLabel = '# Factura'
      FieldName = 'sIdFactura'
      Size = 10
    end
    object zQPEgresosmDescripcion: TMemoField
      DisplayLabel = 'Descripcion'
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object zQPEgresosdImporte: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'dImporte'
      Required = True
      currency = True
    end
    object zQPEgresossTipoEgreso: TStringField
      FieldName = 'sTipoEgreso'
      Required = True
      Size = 13
    end
    object p: TStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'sIdProveedor'
    end
    object zQPEgresosidorganizacion: TIntegerField
      FieldName = 'idorganizacion'
    end
  end
  object zQCatalogodeEgresos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select ce.sIdEgreso, ce.mDescripcion from con_catalogodeegresos ' +
        'ce'
      
        'inner join grupodeegresos g on (ce.sIdGrupo = g.sIdGrupo and g.s' +
        'Descripcion = :Grupo)'
      'order by ce.sIdEgreso')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Grupo'
        ParamType = ptUnknown
      end>
    Left = 75
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Grupo'
        ParamType = ptUnknown
      end>
  end
  object zQPagado: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sum(dImporte) as dPagado '
      'from con_tesoreriapegresos '
      'where iIdFolio = :folio group by dIdFecha, iIdFolio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    Left = 564
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
  end
  object PopReferencia: TPopupMenu
    Left = 194
    Top = 420
    object mnReferenciar: TMenuItem
      Caption = 'Referenciar'
      ShortCut = 114
      OnClick = mnReferenciarClick
    end
  end
  object zCommand: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sum(dImporte) as dPagado '
      'from con_tesoreriapegresos '
      
        'where dIdFecha = :Fecha and iIdFolio = :folio group by dIdFecha,' +
        ' iIdFolio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    Left = 492
    Top = 195
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
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
    ReportOptions.LastChange = 41732.867840567130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      
        '   sMes : Array [1..12] of String ;                             ' +
        '                                                     '
      'begin'
      '   sMes[1] := '#39'ENERO'#39' ;'
      '   sMes[2] := '#39'FEBRERO'#39' ;  '
      '   sMes[3] := '#39'MARZO'#39' ;'
      '   sMes[4] := '#39'ABRIL'#39' ;  '
      '   sMes[5] := '#39'MAYO'#39' ;'
      '   sMes[6] := '#39'JUNIO'#39' ;  '
      '   sMes[7] := '#39'JULIO'#39' ;'
      '   sMes[8] := '#39'AGOSTO'#39' ;  '
      '   sMes[9] := '#39'SEPTIEMBRE'#39' ;'
      '   sMes[10] := '#39'OCTUBRE'#39' ;  '
      '   sMes[11] := '#39'NOVIEMBRE'#39' ;'
      '   sMes[12] := '#39'DICIEMBRE'#39' ;                      '
      'end.'
      '  ')
    Left = 408
    Top = 232
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
      Frame.Color = clBlue
      Frame.Width = 1.500000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 377.953000000000000000
        Width = 980.410082000000000000
        DataSet = frmDiarioTurno2.frtmpQuery
        DataSetName = 'frtmpQuery'
        RowCount = 0
        Stretched = True
        object frPrintersIdEgreso: TfrxMemoView
          Left = 75.590600000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdEgreso'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frtmpQuery."sIdEgreso"]')
          ParentFont = False
        end
        object frPrintermDescripcion: TfrxMemoView
          Left = 147.401670000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frtmpQuery."mDescripcion"]')
          ParentFont = False
        end
        object frPrintersTipoEgreso: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sTipoEgreso'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            '[frtmpQuery."sTipoEgreso"]')
          ParentFont = False
        end
        object frPrintersRazonSocial2: TfrxMemoView
          Left = 408.189240000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sRazonSocial2'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frtmpQuery."sRazonSocial2"]')
          ParentFont = False
        end
        object frPrintersIdFactura: TfrxMemoView
          Left = 642.520100000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdFactura'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frtmpQuery."sIdFactura"]')
          ParentFont = False
        end
        object frPrintermDescripcion_1: TfrxMemoView
          Left = 710.551640000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion_1'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frtmpQuery."mDescripcion_1"]')
          ParentFont = False
        end
        object frPrinterdImporte: TfrxMemoView
          Left = 907.087200000000000000
          Width = 68.031540000000000000
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
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frtmpQuery."dImporte"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 536.693260000000000000
          Top = 7.559060000000000000
          Width = 438.425480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[frConfiguracionCont."sDireccion3"] A [DayOf(<frTmpQuery."dIdFec' +
              'ha">)] DE [sMes[MonthOf(<frTmpQuery."dIdFecha">)]] DE [YearOf(<f' +
              'rTmpQuery."dIdFecha">)]')
          ParentFont = False
        end
        object frTmpQuerydIdFecha: TfrxMemoView
          Left = 827.717070000000000000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'BUENO POR')
          ParentFont = False
        end
        object frTmpQuerydMontoTotal: TfrxMemoView
          Left = 895.748610000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frTmpQuery."dImporteTotal"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 200.315090000000000000
          Top = 26.456710000000000000
          Width = 438.425480000000000000
          Height = 52.913420000000000000
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
            '[frConfiguracionCont."sRfc"]'
            '[frConfiguracionCont."sDireccion1"]'
            '[frConfiguracionCont."sDireccion2"]'
            '[frConfiguracionCont."sDireccion3"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 136.063080000000000000
          Height = 109.606370000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 151.181182910000000000
        Top = 204.094620000000000000
        Width = 980.410082000000000000
        AllowSplit = True
        ReprintOnNewPage = True
        Stretched = True
        object frPrinteriIdFolio: TfrxMemoView
          Left = 98.267780000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frTmpQuery."iIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersIdNumeroCuenta: TfrxMemoView
          Left = 98.267780000000000000
          Top = 18.897650000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sIdNumeroCuenta'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sIdNumeroCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersNombreCuenta: TfrxMemoView
          Left = 359.055350000000000000
          Top = 18.897650000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sNombreCuenta'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sNombreCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersReferencia: TfrxMemoView
          Left = 98.267780000000000000
          Top = 37.795300000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sReferencia'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sReferencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersIdProveedor: TfrxMemoView
          Left = 98.267780000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sIdProveedor'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sIdProveedor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersRazonSocial: TfrxMemoView
          Left = 359.055350000000000000
          Top = 56.692950000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sRazonSocial'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sRazonSocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersRFC: TfrxMemoView
          Left = 98.267780000000000000
          Top = 75.590600000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sRFC'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sRFC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersDomicilio: TfrxMemoView
          Left = 98.267780000000000000
          Top = 94.488250000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sDomicilio'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sDomicilio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersCiudad: TfrxMemoView
          Left = 472.441250000000000000
          Top = 94.488250000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sCiudad'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sCiudad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frPrintersEstado: TfrxMemoView
          Left = 699.213050000000000000
          Top = 94.488250000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sEstado'
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[frtmpQuery."sEstado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'FOLIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'No. DE CUENTA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'REFERENCIA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'A FAVOR DE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'RFC:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'DOMICILIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 124.724490000000000000
          Width = 75.590551180000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 7000063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIPO DE EGRESO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 75.590600000000000000
          Top = 124.724490000000000000
          Width = 71.811021180000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 7000063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIPO DE MOV.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 147.401670000000000000
          Top = 124.724490000000000000
          Width = 260.787521180000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 7000063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 408.189240000000000000
          Top = 124.724490000000000000
          Width = 234.330811180000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 7000063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CARGO A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 642.520100000000000000
          Top = 124.724490000000000000
          Width = 68.031491180000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 7000063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. DE FACT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 710.551640000000000000
          Top = 124.724490000000000000
          Width = 196.535511180000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 7000063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION DEL GASTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 907.087200000000000000
          Top = 124.724490000000000000
          Width = 68.031491180000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 7000063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 260.787570000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'NOMBRE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 260.787570000000000000
          Top = 56.692950000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'RAZON SOCIAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 408.189240000000000000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CIUDAD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 634.961040000000000000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'ESTADO:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 980.410082000000000000
        object Memo16: TfrxMemoView
          Left = 880.630490000000000000
          Top = 3.779530000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frTmpQuery."dImporte">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 740.787880000000000000
          Top = 3.779530000000020000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL COMPROBADO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 94.488250000000000000
        Top = 502.677490000000000000
        Width = 980.410082000000000000
        object frConfiguracionsSlogan: TfrxMemoView
          Left = 264.212740000000000000
          Top = 75.590600000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracionCont."sSlogan"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'COMPROBO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 279.685073540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[FrConfiguracionCont."sTesorerom"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 279.685073540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sTitTesorerom"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 695.433520000000000000
          Top = 22.677180000000000000
          Width = 279.685039370000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[FrConfiguracionCont."sPresidente"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 695.433520000000000000
          Top = 45.354360000000000000
          Width = 279.685039370000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.frtmpQuery
          DataSetName = 'frtmpQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sTitPresidente"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 793.701300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Vo.Bo.')
          ParentFont = False
        end
      end
      object Memo27: TfrxMemoView
        Left = 200.315090000000000000
        Top = 7.559060000000000000
        Width = 438.425480000000000000
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
          '[frConfiguracionCont."sNombre"]')
        ParentFont = False
      end
    end
  end
  object zTmpQuery: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select '
      
        'te.dIdFecha, te.iIdFolio, te.sIdNumeroCuenta, cb.sNombreCuenta, ' +
        'te.sReferencia, '
      
        'te.sIdProveedor, te.sRazonSocial, te.sRFC, te.sDomicilio, te.sCi' +
        'udad, te.sEstado, te.sCP, te.dImporteTotal, '
      
        'tp.sIdEgreso, ce.mDescripcion, tp.sTipoEgreso, tp.sIdProveedor a' +
        's sIdProveedor2, '
      
        'tp.sRazonSocial as sRazonSocial2, tp.sIdFactura, tp.mDescripcion' +
        ', tp.dImporte '
      'from con_tesoreriaegresos te'
      
        'inner join con_tesoreriapegresos tp on (te.dIdFecha = tp.dIdFech' +
        'a and te.iIdFolio = tp.iIdFolio) '
      
        'inner join con_catalogodeegresos ce on (ce.sIdEgreso = tp.sIdEgr' +
        'eso) '
      
        'inner join con_cuentasbancarias cb on (te.sIdNumeroCuenta = cb.s' +
        'IdNumeroCuenta) '
      
        'Where te.dIdFecha = "2009-01-19" And te.iIdFolio = 18 Order By t' +
        'p.sTipoEgreso, tp.sIdEgreso')
    Params = <>
    Left = 404
    Top = 283
  end
  object fsc_RefCheque: TFormAutoScaler
    Left = 512
    Top = 72
    DesignDPI = 96
    DesignHeight = 563
    DesignWidth = 982
    DesignTextHeight = 14
  end
  object WSocketMensaje: TWSocket
    LineMode = False
    LineLimit = 65536
    LineEnd = #13#10
    LineEcho = False
    LineEdit = False
    SocketFamily = sfIPv4
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalPort = '0'
    MultiThreaded = False
    MultiCast = False
    MultiCastIpTTL = 1
    FlushTimeout = 60
    SendFlags = wsSendNormal
    LingerOnOff = wsLingerOn
    LingerTimeout = 0
    KeepAliveOnOff = wsKeepAliveOff
    KeepAliveTime = 0
    KeepAliveInterval = 0
    SocksLevel = '5'
    SocksAuthentication = socksNoAuthentication
    LastError = 0
    ReuseAddr = False
    ComponentOptions = []
    ListenBacklog = 5
    ReqVerLow = 2
    ReqVerHigh = 2
    Left = 584
    Top = 256
  end
end
