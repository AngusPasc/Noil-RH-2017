object frm_CatalogoIngresos: Tfrm_CatalogoIngresos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Catalogo de Ingresos'
  ClientHeight = 457
  ClientWidth = 723
  Color = 13683905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    723
    457)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 1
    Top = 306
    Width = 54
    Height = 13
    Caption = 'Descripcion'
    FocusControl = tdbmDescripcion
  end
  object Label4: TLabel
    Left = 1
    Top = 399
    Width = 49
    Height = 13
    Caption = 'Imp. Insc.'
    FocusControl = tdbdImporte
  end
  object Label5: TLabel
    Left = 1
    Top = 420
    Width = 49
    Height = 13
    Caption = 'Periocidad'
    FocusControl = tdbsPeriocidad
  end
  object Label2: TLabel
    Left = 4
    Top = 37
    Width = 39
    Height = 13
    Caption = 'Ejercicio'
  end
  object Label6: TLabel
    Left = 1
    Top = 287
    Width = 36
    Height = 13
    Caption = 'Articulo'
    FocusControl = tdbsIdArticulo
  end
  object Label1: TLabel
    Left = 172
    Top = 287
    Width = 55
    Height = 13
    Caption = 'Item Orden'
    FocusControl = tdbiOrden
  end
  object Label7: TLabel
    Left = 1
    Top = 441
    Width = 43
    Height = 13
    Caption = 'Imprime?'
    FocusControl = tdbsPeriocidad
  end
  object Label8: TLabel
    Left = 172
    Top = 419
    Width = 35
    Height = 13
    Caption = 'Cuenta'
    FocusControl = tdbiOrden
  end
  object Label9: TLabel
    Left = 174
    Top = 401
    Width = 50
    Height = 13
    Caption = 'Imp. Refr.'
    FocusControl = DBEdit1
  end
  object tdbmDescripcion: TDBMemo
    Left = 58
    Top = 302
    Width = 664
    Height = 89
    Anchors = [akLeft, akTop, akRight]
    Color = 11009259
    DataField = 'mDescripcion'
    DataSource = dszQCatalogodeIngresos
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object tdbdImporte: TDBEdit
    Left = 58
    Top = 391
    Width = 108
    Height = 21
    Color = 11009259
    DataField = 'dImporte'
    DataSource = dszQCatalogodeIngresos
    TabOrder = 5
  end
  inline frmBarra1: TfrmBarra
    Left = 1
    Top = 2
    Width = 729
    Height = 30
    VertScrollBar.Style = ssHotTrack
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 2
    ExplicitWidth = 729
    ExplicitHeight = 30
    inherited btnAdd: TBitBtn
      OnClick = frmBarra1btnAddClick
    end
    inherited btnEdit: TBitBtn
      OnClick = frmBarra1btnEditClick
    end
    inherited btnDelete: TBitBtn
      Top = -1
      OnClick = frmBarra1btnDeleteClick
      ExplicitTop = -1
    end
    inherited btnPrinter: TBitBtn
      OnClick = frmBarra1btnPrinterClick
    end
    inherited btnExit: TBitBtn
      OnClick = frmBarra1btnExitClick
    end
    inherited btnRefresh: TBitBtn
      OnClick = frmBarra1btnRefreshClick
    end
    inherited btnPost: TBitBtn
      OnClick = frmBarra1btnPostClick
    end
    inherited btnCancel: TBitBtn
      OnClick = frmBarra1btnCancelClick
    end
  end
  object tdbsPeriocidad: TDBEdit
    Left = 58
    Top = 412
    Width = 108
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sPeriocidad'
    DataSource = dszQCatalogodeIngresos
    TabOrder = 6
  end
  object tiEjercicio: TComboBox
    Left = 58
    Top = 30
    Width = 73
    Height = 21
    Style = csDropDownList
    Color = 11009259
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    OnExit = tiEjercicioExit
    Items.Strings = (
      '2008'
      '2009'
      '2010'
      '2011'
      '2012'
      '2013'
      '2014'
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020')
  end
  object tdbsIdArticulo: TDBEdit
    Left = 58
    Top = 281
    Width = 108
    Height = 21
    Color = 11009259
    DataField = 'sIdArticulo'
    DataSource = dszQCatalogodeIngresos
    TabOrder = 2
  end
  object tdbiOrden: TDBEdit
    Left = 237
    Top = 281
    Width = 102
    Height = 21
    Color = 11009259
    DataField = 'iOrden'
    DataSource = dszQCatalogodeIngresos
    TabOrder = 3
  end
  object tsImprimeRecibo: TDBComboBox
    Left = 58
    Top = 433
    Width = 51
    Height = 21
    Style = csDropDownList
    Color = 11009259
    DataField = 'sImprimeRecibo'
    DataSource = dszQCatalogodeIngresos
    ItemHeight = 13
    Items.Strings = (
      'Si'
      'No')
    TabOrder = 7
  end
  object Grid_catIngresos: TRxDBGrid
    Left = 8
    Top = 56
    Width = 707
    Height = 219
    DataSource = dszQCatalogodeIngresos
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnGetCellParams = Grid_catIngresosGetCellParams
    Columns = <
      item
        Expanded = False
        FieldName = 'iOrden'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sIdArticulo'
        Title.Caption = 'Articulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sDescripcion'
        Title.Caption = 'Descripcion'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 358
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dImporte'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sPeriocidad'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sNumeroCuenta'
        Title.Caption = 'Numero Cuenta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end>
  end
  object tsIdArticulo: TDBLookupComboBox
    Left = 231
    Top = 415
    Width = 432
    Height = 22
    Color = 11009259
    DataField = 'sNumeroCuenta'
    DataSource = dszQCatalogodeIngresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sNumeroCuenta'
    ListField = 'sNombre'
    ListSource = dsQCatalogodecuentas
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit1: TDBEdit
    Left = 231
    Top = 394
    Width = 108
    Height = 21
    Color = 11009259
    DataField = 'dImporteref'
    DataSource = dszQCatalogodeIngresos
    TabOrder = 10
  end
  object dszQCatalogodeIngresos: TDataSource
    AutoEdit = False
    DataSet = zQCatalogodeIngresos
    Left = 115
    Top = 101
  end
  object zQCatalogodeIngresos: TZQuery
    Connection = frm_Principal.ZConnection
    OnCalcFields = zQCatalogodeIngresosCalcFields
    AfterInsert = zQCatalogodeIngresosAfterInsert
    BeforeDelete = zQCatalogodeIngresosBeforeDelete
    SQL.Strings = (
      'select * from catalogodeingresos where iAnno = :Anno '
      'order by iOrden, sIdArticulo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Anno'
        ParamType = ptUnknown
      end>
    Left = 88
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Anno'
        ParamType = ptUnknown
      end>
    object zQCatalogodeIngresosiAnno: TIntegerField
      DisplayLabel = 'Ejercicio'
      DisplayWidth = 13
      FieldName = 'iAnno'
      Required = True
    end
    object zQCatalogodeIngresosmDescripcion: TMemoField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 13
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object zQCatalogodeIngresosdImporte: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 21
      FieldName = 'dImporte'
      Required = True
      currency = True
    end
    object zQCatalogodeIngresossPeriocidad: TStringField
      DisplayLabel = 'Periocidad'
      DisplayWidth = 27
      FieldName = 'sPeriocidad'
      Size = 15
    end
    object zQCatalogodeIngresossDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 254
      Calculated = True
    end
    object zQCatalogodeIngresosiOrden: TIntegerField
      DisplayLabel = 'Item Orden'
      FieldName = 'iOrden'
    end
    object zQCatalogodeIngresossIdArticulo: TStringField
      FieldName = 'sIdArticulo'
      Size = 15
    end
    object zQCatalogodeIngresossImprimeRecibo: TStringField
      FieldName = 'sImprimeRecibo'
      Size = 2
    end
    object zQCatalogodeIngresossNumeroCuenta: TStringField
      FieldName = 'sNumeroCuenta'
      Required = True
      Size = 31
    end
    object zQCatalogodeIngresosdImporteref: TLargeintField
      FieldName = 'dImporteref'
      Required = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 124
    object CopiarCatalogoAnualAnterior1: TMenuItem
      Caption = 'Copiar Catalogo Anual Anterior'
      OnClick = CopiarCatalogoAnualAnterior1Click
    end
  end
  object zQCatalogoAnterior: TZQuery
    Connection = frm_Principal.ZConnection
    SQL.Strings = (
      'select * from catalogodeingresos Where iAnno = :Anno')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Anno'
        ParamType = ptUnknown
      end>
    Left = 372
    Top = 221
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Anno'
        ParamType = ptUnknown
      end>
  end
  object reporte: TfrxReport
    Version = '4.6.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39813.804003356500000000
    ReportOptions.LastChange = 40567.789817974540000000
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
      'end.')
    Left = 344
    Top = 40
    Datasets = <
      item
        DataSet = frm_Principal.frConfiguracion
        DataSetName = 'frConfiguracion'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'ingresos'
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
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'ingresos'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 1.559060000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ingresos."sIdArticulo"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 151.929190000000000000
          Top = 2.000000000000000000
          Width = 495.118430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ingresos."sDescripcion"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 646.299630000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ingresos."dImporte"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Left = 177.637910000000000000
          Top = 11.338590000000000000
          Width = 355.275820000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sNombre"]'
            ''
            '[frConfiguracion."sDireccion1"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = frm_Principal.frConfiguracion
          DataSetName = 'frConfiguracion'
          HightQuality = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 98.267780000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 49.559060000000000000
          Width = 343.937230000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '     [frConfiguracion."sPresidente"]'
            ''
            ''
            '                              ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = -7.559060000000000000
          Top = 68.456710000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTitPresidente"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 415.748300000000000000
          Top = 51.102350000000000000
          Width = 321.260050000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTesorerom"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 415.748300000000000000
          Top = 70.000000000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTitTesorerom"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 27.677180000000000000
        Top = 166.299320000000000000
        Width = 740.409927000000000000
        Condition = '<ingresos."iAnno">'
        object Memo2: TfrxMemoView
          Top = 7.559060000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frm_Ingresos.frPrinter
          DataSetName = 'frPrinter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cuenta.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 147.401670000000000000
          Top = 7.559060000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frm_Ingresos.frPrinter
          DataSetName = 'frPrinter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 642.520100000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frm_Ingresos.frPrinter
          DataSetName = 'frPrinter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'ingresos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iAnno=iAnno'
      'mDescripcion=mDescripcion'
      'dImporte=dImporte'
      'sPeriocidad=sPeriocidad'
      'sDescripcion=sDescripcion'
      'iOrden=iOrden'
      'sIdArticulo=sIdArticulo'
      'sImprimeRecibo=sImprimeRecibo')
    DataSet = zQCatalogodeIngresos
    Left = 392
    Top = 40
  end
  object dsQCatalogodecuentas: TDataSource
    AutoEdit = False
    DataSet = qryCuentas
    Left = 504
    Top = 404
  end
  object qryCuentas: TZReadOnlyQuery
    Connection = frm_Principal.ZConnection
    SQL.Strings = (
      'select sNumeroCuenta,'
      'sNombre from catalogodecuentas'
      'where sTipodeCuenta = "Auxiliar"'
      'Order by sNumeroCuenta'
      '')
    Params = <>
    Left = 464
    Top = 404
  end
end
