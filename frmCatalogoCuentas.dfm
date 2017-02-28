object frm_Catalogocuentasc: Tfrm_Catalogocuentasc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Catalogo de Cuentas'
  ClientHeight = 491
  ClientWidth = 750
  Color = clBtnFace
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 236
    Width = 750
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 780
  end
  object Panel2: TPanel
    Left = 0
    Top = 239
    Width = 750
    Height = 252
    Align = alClient
    TabOrder = 0
    DesignSize = (
      750
      252)
    object Label3: TLabel
      Left = 10
      Top = 141
      Width = 58
      Height = 13
      Caption = 'Descripcion:'
      FocusControl = tdbmDescripcion
    end
    object Label4: TLabel
      Left = 476
      Top = 60
      Width = 62
      Height = 13
      Caption = 'Tipo Cuenta:'
    end
    object Label6: TLabel
      Left = 10
      Top = 29
      Width = 39
      Height = 13
      Caption = 'Cuenta:'
      FocusControl = tdbsIdArticulo
    end
    object Label5: TLabel
      Left = 476
      Top = 30
      Width = 81
      Height = 13
      Caption = 'Deudor/Acreed:.'
    end
    object Label1: TLabel
      Left = 10
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Debe:'
    end
    object Label7: TLabel
      Left = 10
      Top = 85
      Width = 33
      Height = 13
      Caption = 'Haber:'
    end
    object Label8: TLabel
      Left = 10
      Top = 111
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object CuentaContable: TLabel
      Left = 10
      Top = 6
      Width = 99
      Height = 13
      Caption = 'Cuenta Contable: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tdbmDescripcion: TDBMemo
      Left = 74
      Top = 137
      Width = 621
      Height = 83
      Anchors = [akLeft, akTop, akRight]
      Color = 11009259
      DataField = 'sNombre'
      DataSource = dszQCatalogodeCuentas
      ScrollBars = ssBoth
      TabOrder = 0
      OnEnter = tdbmDescripcionEnter
      OnExit = tdbmDescripcionExit
      OnKeyPress = tdbmDescripcionKeyPress
    end
    object tdbsIdArticulo: TDBEdit
      Left = 75
      Top = 25
      Width = 145
      Height = 21
      Color = 11009259
      DataField = 'sNumeroCuenta'
      DataSource = dszQCatalogodeCuentas
      TabOrder = 1
      OnEnter = tdbsIdArticuloEnter
      OnExit = tdbsIdArticuloExit
      OnKeyPress = tdbsIdArticuloKeyPress
    end
    object tsImprimeRecibo: TDBComboBox
      Left = 559
      Top = 54
      Width = 136
      Height = 21
      Style = csDropDownList
      Color = 11009259
      DataField = 'sTipodeCuenta'
      DataSource = dszQCatalogodeCuentas
      ItemHeight = 13
      Items.Strings = (
        'Mayor'
        'Enlace'
        'Auxiliar')
      TabOrder = 2
      OnEnter = tsImprimeReciboEnter
      OnExit = tsImprimeReciboExit
      OnKeyPress = tsImprimeReciboKeyPress
    end
    object dbDeudor: TDBComboBox
      Left = 559
      Top = 25
      Width = 136
      Height = 21
      Style = csDropDownList
      Color = 11009259
      DataField = 'sSaldoCuenta'
      DataSource = dszQCatalogodeCuentas
      ItemHeight = 13
      Items.Strings = (
        'Acreedor'
        'Deudor')
      TabOrder = 3
      OnEnter = dbDeudorEnter
      OnExit = dbDeudorExit
      OnKeyPress = dbDeudorKeyPress
    end
    object txtDebe: TDBEdit
      Left = 74
      Top = 53
      Width = 146
      Height = 21
      Color = 11009259
      DataField = 'dDebe'
      DataSource = dszQCatalogodeCuentas
      TabOrder = 4
      OnEnter = txtDebeEnter
      OnExit = txtDebeExit
      OnKeyPress = txtDebeKeyPress
    end
    object txtHaber: TDBEdit
      Left = 74
      Top = 81
      Width = 146
      Height = 21
      Color = 11009259
      DataField = 'dHaber'
      DataSource = dszQCatalogodeCuentas
      TabOrder = 5
      OnEnter = txtHaberEnter
      OnExit = txtHaberExit
      OnKeyPress = txtHaberKeyPress
    end
    object txtSaldo: TDBEdit
      Left = 74
      Top = 108
      Width = 146
      Height = 21
      Color = 11009259
      DataField = 'dSaldo'
      DataSource = dszQCatalogodeCuentas
      TabOrder = 6
      OnEnter = txtSaldoEnter
      OnExit = txtSaldoExit
      OnKeyPress = txtSaldoKeyPress
    end
    object btnAceptar: TAdvGlowButton
      Left = 509
      Top = 226
      Width = 225
      Height = 25
      Hint = 'Aceptar'
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Visible = False
      OnClick = btnAceptarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 236
    Align = alTop
    TabOrder = 1
    inline frmBarra1: TfrmBarra
      Left = 1
      Top = 1
      Width = 75
      Height = 234
      Margins.Right = 5
      VertScrollBar.Style = ssHotTrack
      Align = alLeft
      Color = 13683905
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 75
      ExplicitHeight = 234
      inherited AdvPanel1: TAdvPanel
        Width = 75
        Height = 234
        ExplicitWidth = 75
        ExplicitHeight = 234
        FullHeight = 0
        inherited btnEdit: TcxButton
          Top = 25
          OnClick = frmBarra1btnEditClick
          ExplicitTop = 25
        end
        inherited btnPost: TcxButton
          Top = 49
          OnClick = frmBarra1btnPostClick
          ExplicitTop = 49
        end
        inherited btnCancel: TcxButton
          Top = 73
          OnClick = frmBarra1btnCancelClick
          ExplicitTop = 73
        end
        inherited btnDelete: TcxButton
          Top = 97
          OnClick = frmBarra1btnDeleteClick
          ExplicitTop = 97
        end
        inherited btnPrinter: TcxButton
          OnClick = frmBarra1btnPrinterClick
        end
        inherited btnRefresh: TcxButton
          Top = 145
          OnClick = frmBarra1btnRefreshClick
          ExplicitTop = 145
        end
        inherited btnExit: TcxButton
          Top = 169
          OnClick = frmBarra1btnExitClick
          ExplicitTop = 169
        end
        inherited btnAdd: TcxButton
          Top = 1
          OnClick = frmBarra1btnAddClick
          ExplicitTop = 1
        end
      end
      inherited IconosBarra: TcxImageList
        FormatVersion = 1
      end
      inherited dxbrmngrPrincipal: TdxBarManager
        DockControlHeights = (
          0
          0
          0
          0)
      end
    end
    object Panel1: TPanel
      Left = 76
      Top = 1
      Width = 673
      Height = 234
      Align = alClient
      TabOrder = 1
      object nxgCuentasCont: TNextGrid
        Left = 1
        Top = 1
        Width = 671
        Height = 232
        Align = alClient
        Color = 15138559
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HeaderStyle = hsFlatBorders
        Options = [goGrid, goHeader, goSelectFullRow]
        RowSize = 20
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnDblClick = nxgCuentasContDblClick
        OnSelectCell = nxgCuentasContSelectCell
        OnCellFormating = nxgCuentasContCellFormating
        object NxTreeColumn1: TNxTreeColumn
          DefaultWidth = 100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Pos'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing]
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 100
          HighlightButton = True
        end
        object NxTextColumn1: TNxTextColumn
          DefaultWidth = 200
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Numero Cuenta'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 200
        end
        object NxTextColumn3: TNxTextColumn
          DefaultWidth = 400
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Nombre'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 400
        end
        object NxTextColumn2: TNxTextColumn
          DefaultWidth = 100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Tipo Cuenta'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 100
        end
        object NxTextColumn9: TNxTextColumn
          DefaultWidth = 100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Saldo de Cuenta'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 100
        end
        object NxTextColumn6: TNxTextColumn
          DefaultWidth = 50
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Debe'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 5
          SortType = stAlphabetic
          Width = 50
        end
        object NxTextColumn7: TNxTextColumn
          DefaultWidth = 50
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Haber'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 6
          SortType = stAlphabetic
          Width = 50
        end
        object NxTextColumn8: TNxTextColumn
          DefaultWidth = 50
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Saldo'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 7
          SortType = stAlphabetic
          Width = 50
        end
        object NxTextColumn4: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Padre'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 8
          SortType = stAlphabetic
          Visible = False
        end
        object NxTextColumn5: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Id'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 9
          SortType = stAlphabetic
          Visible = False
        end
      end
    end
  end
  object dszQCatalogodeCuentas: TDataSource
    AutoEdit = False
    DataSet = zQCatalogodeCuentas
    Left = 403
    Top = 245
  end
  object zQCatalogodeCuentas: TZQuery
    Connection = connection.zConnection
    AfterInsert = zQCatalogodeCuentasAfterInsert
    SQL.Strings = (
      'select * '
      'from con_catalogodecuentas'
      'order by sNumeroCuenta'
      '')
    Params = <>
    Left = 432
    Top = 244
    object zQCatalogodeCuentasIid_NumeroDeCuenta: TIntegerField
      FieldName = 'Iid_NumeroDeCuenta'
    end
    object zQCatalogodeCuentassNumeroCuenta: TStringField
      FieldName = 'sNumeroCuenta'
      Required = True
      Size = 31
    end
    object zQCatalogodeCuentassTipodeCuenta: TStringField
      FieldName = 'sTipodeCuenta'
      Required = True
      Size = 8
    end
    object zQCatalogodeCuentassSaldoCuenta: TStringField
      FieldName = 'sSaldoCuenta'
      Required = True
      Size = 8
    end
    object zQCatalogodeCuentassNombre: TStringField
      FieldName = 'sNombre'
      Required = True
      Size = 100
    end
    object zQCatalogodeCuentasiPadre: TIntegerField
      FieldName = 'iPadre'
      Required = True
    end
    object zQCatalogodeCuentasdDebe: TFloatField
      FieldName = 'dDebe'
      Required = True
    end
    object zQCatalogodeCuentasdHaber: TFloatField
      FieldName = 'dHaber'
      Required = True
    end
    object zQCatalogodeCuentasdSaldo: TFloatField
      FieldName = 'dSaldo'
      Required = True
    end
    object zQCatalogodeCuentassOrdenador: TStringField
      FieldName = 'sOrdenador'
      Required = True
      Size = 60
    end
  end
  object reporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 41890.704007986110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 40
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = dbFrxIngresos
        DataSetName = 'ingresos'
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
        Height = 173.858380000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 2.000000000000000000
          Top = 3.102350000000000000
          Width = 736.008350000000000000
          Height = 113.385900000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 157.299320000000000000
          Top = 63.574830000000000000
          Width = 492.118430000000000000
          Height = 48.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
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
        object Memo46: TfrxMemoView
          Left = 2.000000000000000000
          Top = 122.251956300000000000
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
            'LISTADO DE CUENTAS CONTABLES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 271.173470000000000000
          Top = 122.251956300000000000
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
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 136.063080000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
        object Memo8: TfrxMemoView
          Left = 154.960730000000000000
          Top = 18.897650000000000000
          Width = 492.118430000000000000
          Height = 40.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sNombre"]')
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
        Top = 294.803340000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = dbFrxIngresos
        DataSetName = 'ingresos'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 11.897650000000000000
          ShowHint = False
          DataField = 'sNumeroCuenta'
          DataSet = dbFrxIngresos
          DataSetName = 'ingresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[ingresos."sNumeroCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 265.480520000000000000
          Width = 130.126160000000000000
          Height = 11.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sTipodeCuenta'
          DataSet = dbFrxIngresos
          DataSetName = 'ingresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[ingresos."sTipodeCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 396.850650000000000000
          Width = 341.779840000000000000
          Height = 11.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNombre'
          DataSet = dbFrxIngresos
          DataSetName = 'ingresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[ingresos."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 109.606370000000000000
          Width = 37.795300000000000000
          Height = 11.897650000000000000
          ShowHint = False
          DataField = 'iPadre'
          DataSet = dbFrxIngresos
          DataSetName = 'ingresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[ingresos."iPadre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 147.401670000000000000
          Width = 118.787570000000000000
          Height = 11.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sOrdenador'
          DataSet = dbFrxIngresos
          DataSetName = 'ingresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[ingresos."sOrdenador"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 18.897650000000000000
        Top = 253.228510000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        ReprintOnNewPage = True
        Stretched = True
        object Memo33: TfrxMemoView
          Left = 267.480520000000000000
          Width = 128.504020000000000000
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
            'TIPO DE CUENTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 3.779530000000000000
          Width = 264.567100000000000000
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
            'NUMERO CUENTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 395.984540000000000000
          Width = 343.937230000000000000
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
            'NOMBRE DE LA CUENTA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 33.338590000000000000
        Top = 370.393940000000000000
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
  object dbFrxIngresos: TfrxDBDataset
    UserName = 'ingresos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Iid_NumeroDeCuenta=Iid_NumeroDeCuenta'
      'sNumeroCuenta=sNumeroCuenta'
      'sTipodeCuenta=sTipodeCuenta'
      'sSaldoCuenta=sSaldoCuenta'
      'sNombre=sNombre'
      'iPadre=iPadre'
      'dDebe=dDebe'
      'dHaber=dHaber'
      'dSaldo=dSaldo'
      'sOrdenador=sOrdenador')
    DataSet = zQCatalogodeCuentas
    BCDToCurrency = False
    Left = 392
    Top = 40
  end
  object popmenuAgregar: TAdvPopupMenu
    Version = '2.5.4.0'
    Left = 128
    Top = 80
    object MismoNivel1: TMenuItem
      Caption = 'Mismo Nivel'
      OnClick = MismoNivel1Click
    end
    object Hijo1: TMenuItem
      Caption = 'Hijo'
      OnClick = Hijo1Click
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
      'Radial1')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.ImageListBkColor = clMoneyGreen
    ImageOptions.Images = frmrepositorio.IconosTodos16
    ImageOptions.LargeImages = frmrepositorio.IconosTodos32
    PopupMenuLinks = <
      item
        Control = nxgCuentasCont
        PopupMenu = PopupPrincipal
      end>
    ShowShortCutInHint = True
    Style = bmsStandard
    UseSystemFont = False
    Left = 88
    Top = 32
    DockControlHeights = (
      0
      0
      0
      0)
    object Editar1: TdxBarButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar registro (CTRL + E)'
      Visible = ivAlways
      ImageIndex = 299
      ShortCut = 16453
      OnClick = frmBarra1btnEditClick
    end
    object Registrar1: TdxBarButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Salvar cambios (CTRL + G)'
      Visible = ivAlways
      ImageIndex = 54
      ShortCut = 16505
      OnClick = frmBarra1btnPostClick
    end
    object Can1: TdxBarButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancelar cambios (CTRL + C)'
      Visible = ivAlways
      ImageIndex = 127
      ShortCut = 16507
      OnClick = frmBarra1btnCancelClick
    end
    object Eliminar1: TdxBarButton
      Caption = 'Eliminar'
      Category = 0
      Hint = 'Eliminar registro (CTRL + D)'
      Visible = ivAlways
      ImageIndex = 306
      ShortCut = 16452
      OnClick = frmBarra1btnDeleteClick
    end
    object Salir1: TdxBarButton
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir (CTRL + F4)'
      Visible = ivAlways
      ImageIndex = 701
      ShortCut = 16499
      OnClick = frmBarra1btnExitClick
    end
    object Refresh1: TdxBarButton
      Caption = 'Refrescar'
      Category = 0
      Hint = 'Refresh datos (F5)'
      Visible = ivAlways
      ImageIndex = 637
      ShortCut = 16500
      OnClick = frmBarra1btnRefreshClick
    end
    object Imprimir1: TdxBarButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir (CTRL + P)'
      Visible = ivAlways
      ImageIndex = 463
      ShortCut = 16464
      OnClick = frmBarra1btnPrinterClick
    end
    object Insertar1: TdxBarButton
      Caption = 'Insertar'
      Category = 0
      Hint = 'Nuevo registro (Ctrl+Ins)'
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 16429
      OnClick = frmBarra1btnAddClick
    end
  end
  object PopupPrincipal: TdxRibbonRadialMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Insertar1'
      end
      item
        Visible = True
        ItemName = 'Editar1'
      end
      item
        Visible = True
        ItemName = 'Registrar1'
      end
      item
        Visible = True
        ItemName = 'Can1'
      end
      item
        Visible = True
        ItemName = 'Eliminar1'
      end
      item
        Visible = True
        ItemName = 'Imprimir1'
      end
      item
        Visible = True
        ItemName = 'Refresh1'
      end
      item
        Visible = True
        ItemName = 'Salir1'
      end>
    Ribbon = frmInteligent.mInteligent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    UseOwnFont = True
    Left = 88
    Top = 64
  end
end
