object frm_ConsultadeGastos: Tfrm_ConsultadeGastos
  Left = 49
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Gastos'
  ClientHeight = 524
  ClientWidth = 1036
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
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    1036
    524)
  PixelsPerInch = 120
  TextHeight = 17
  object btnReferencia: TSpeedButton
    Left = 640
    Top = 26
    Width = 118
    Height = 28
    Caption = '&Consultar'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888800000888800000880F00088880F000880F00088880F0008800000088000
      0008800F000000F00008800F000800F00008800F000800F00008880000000000
      00888880F00880F008888880000880000888888800088000888888880F0880F0
      8888888800088000888888888888888888888888888888888888}
    OnClick = btnReferenciaClick
  end
  object Label4: TLabel
    Left = 437
    Top = 11
    Width = 109
    Height = 16
    Caption = 'Grupo de  Egresos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 919
    Top = 11
    Width = 4
    Height = 17
  end
  object Label6: TLabel
    Left = 801
    Top = 11
    Width = 89
    Height = 16
    Caption = 'Tipo de egreso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object pgEgresos: TPageControl
    Left = 9
    Top = 75
    Width = 648
    Height = 33
    Hint = 'Detalle de Gastos Generales'
    Anchors = [akLeft, akTop, akRight]
    HotTrack = True
    TabOrder = 1
    OnChange = pgEgresosChange
    OnChanging = pgEgresosChanging
  end
  object grComentarios: TGroupBox
    AlignWithMargins = True
    Left = 662
    Top = 65
    Width = 371
    Height = 456
    Margins.Top = 65
    Align = alRight
    Caption = 'Descripcion del Evento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBMemo1: TDBMemo
      Left = 3
      Top = 19
      Width = 365
      Height = 423
      Align = alCustom
      Anchors = [akLeft, akTop, akBottom]
      Color = clWhite
      DataField = 'mDescripcion'
      DataSource = dsQPEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 244
    Top = 1
    Width = 187
    Height = 67
    Caption = 'Opciones de Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object rbTipo: TRadioButton
      Left = 25
      Top = 20
      Width = 152
      Height = 20
      Caption = 'por Tipo de Egreso'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbTipoClick
    end
    object rbFecha: TRadioButton
      Left = 25
      Top = 42
      Width = 87
      Height = 19
      Caption = 'por Fecha'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = rbFechaClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 2
    Width = 228
    Height = 71
    Caption = 'Parametros de la Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 19
      Width = 88
      Height = 16
      Caption = 'Fecha de Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 7
      Top = 44
      Width = 103
      Height = 16
      Caption = 'Fecha de Termino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object tdFechaInicio: TDateTimePicker
      Left = 124
      Top = 15
      Width = 102
      Height = 24
      Date = 0.594495983787055600
      Time = 0.594495983787055600
      Color = 11009259
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
    end
    object tdFechaFinal: TDateTimePicker
      Left = 124
      Top = 40
      Width = 102
      Height = 24
      Date = 39765.594495983790000000
      Time = 39765.594495983790000000
      Color = 11009259
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
    end
  end
  object cbxGrupoEgresos: TDBLookupComboBox
    Left = 437
    Top = 28
    Width = 197
    Height = 25
    KeyField = 'sIdGrupo'
    ListField = 'sDescripcion'
    ListSource = dszQGrupodeEgresos
    TabOrder = 4
    OnClick = cbxGrupoEgresosClick
  end
  object grTotales: TGroupBox
    Left = 320
    Top = 479
    Width = 336
    Height = 41
    Anchors = [akRight, akBottom]
    TabOrder = 5
    DesignSize = (
      336
      41)
    object Label3: TLabel
      Left = 11
      Top = 10
      Width = 126
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Total por Clasificacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object tMonto: TCurrencyEdit
      Left = 171
      Top = 8
      Width = 157
      Height = 25
      Margins.Left = 5
      Margins.Top = 1
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 9
    Top = 108
    Width = 646
    Height = 365
    Anchors = [akLeft, akTop, akRight, akBottom]
    PopupMenu = popup_Principal
    TabOrder = 6
    object GridConceptos: TcxGridDBTableView
      OnDblClick = GridConceptosDblClick
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.Filter.Visible = True
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsQPEgresos
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
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      object GridConceptosdIdFecha1: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'dIdFecha'
        Width = 68
      end
      object GridConceptosiIdFolio1: TcxGridDBColumn
        Caption = 'Folio'
        DataBinding.FieldName = 'iIdFolio'
        Width = 68
      end
      object GridConceptossIdEgreso1: TcxGridDBColumn
        Caption = 'Egreso'
        DataBinding.FieldName = 'sIdEgreso'
        Width = 55
      end
      object GridConceptossIdFactura1: TcxGridDBColumn
        Caption = 'Factura'
        DataBinding.FieldName = 'sIdFactura'
        Width = 80
      end
      object GridConceptossIdProveedor1: TcxGridDBColumn
        Caption = 'Proveedor'
        DataBinding.FieldName = 'sIdProveedor'
        Width = 118
      end
      object GridConceptossRazonSocial1: TcxGridDBColumn
        Caption = 'Raz'#243'n Social'
        DataBinding.FieldName = 'sRazonSocial'
        Width = 162
      end
      object GridConceptosdImporte1: TcxGridDBColumn
        Caption = 'Importe'
        DataBinding.FieldName = 'dImporte'
        Width = 112
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = GridConceptos
    end
  end
  object dsQPEgresos: TDataSource
    AutoEdit = False
    DataSet = zQPEgresos
    Left = 340
    Top = 361
  end
  object zQCatalogodeEgresos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      '')
    Params = <>
    Left = 281
    Top = 360
  end
  object zQPEgresos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_tesoreriapegresos'
      'where dIdFecha >= :FechaI And dIdFecha <= :FEchaF '
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FEchaF'
        ParamType = ptUnknown
      end>
    Left = 305
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FEchaF'
        ParamType = ptUnknown
      end>
    object zQPEgresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zQPEgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQPEgresossIdEgreso: TStringField
      FieldName = 'sIdEgreso'
      Required = True
      Size = 8
    end
    object zQPEgresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zQPEgresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 50
    end
    object zQPEgresossIdFactura: TStringField
      FieldName = 'sIdFactura'
      Required = True
      Size = 10
    end
    object zQPEgresosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object zQPEgresosdImporte: TFloatField
      FieldName = 'dImporte'
      Required = True
      currency = True
    end
  end
  object zQPagado: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 385
    Top = 359
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
    Left = 412
    Top = 357
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
  object zQGrupodeEgresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select "*" as sIdGrupo, "TODOS" as sDescripcion from con_grupode' +
        'egresos limit 1 union  '
      'select * from con_grupodeegresos ')
    Params = <>
    Left = 640
    object zQGrupodeEgresossIdGrupo: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 18
      FieldName = 'sIdGrupo'
      Required = True
      Size = 8
    end
    object zQGrupodeEgresossDescripcion: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 87
      FieldName = 'sDescripcion'
      Required = True
      Size = 31
    end
  end
  object dszQGrupodeEgresos: TDataSource
    AutoEdit = False
    DataSet = zQGrupodeEgresos
    Left = 671
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
    Left = 792
    Top = 24
    DockControlHeights = (
      0
      0
      0
      0)
    object Reportes1: TdxBarSubItem
      Caption = 'Reportes'
      Category = 1
      Visible = ivAlways
      ImageIndex = 226
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DetalledeEgresos1'
        end
        item
          Visible = True
          ItemName = 'DetalledeEgresosxCargo1'
        end
        item
          Visible = True
          ItemName = 'DetalledeEgresosxFecha1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DetalledeEgresosx1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnImprimirComprobacion'
        end
        item
          Visible = True
          ItemName = 'Egresos1Periodo'
        end
        item
          Visible = True
          ItemName = 'Egresos2Periodo'
        end
        item
          Visible = True
          ItemName = 'Egresos3Periodo'
        end>
    end
    object DetalledeEgresos1: TdxBarButton
      Caption = 'Detalle de Egresos x Tipo'
      Category = 1
      Visible = ivAlways
      ImageIndex = 200
      OnClick = DetalledeEgresos1Click
    end
    object DetalledeEgresosxCargo1: TdxBarButton
      Caption = 'Detalle de Egresos x Cargo'
      Category = 1
      Visible = ivAlways
      ImageIndex = 200
      OnClick = DetalledeEgresosxCargo1Click
    end
    object DetalledeEgresosxFecha1: TdxBarButton
      Caption = 'Detalle de Egresos x Fecha'
      Category = 1
      Visible = ivAlways
      ImageIndex = 200
      OnClick = DetalledeEgresosxFecha1Click
    end
    object DetalledeEgresosx1: TdxBarButton
      Caption = 'Detalle de Egresos x Concepto Seleccionado'
      Category = 1
      Visible = ivAlways
      ImageIndex = 200
      OnClick = DetalledeEgresosx1Click
    end
    object mnImprimirComprobacion: TdxBarButton
      Caption = 'Imprimir Comprobacion'
      Category = 1
      Visible = ivAlways
      ImageIndex = 472
      OnClick = mnImprimirComprobacionClick
    end
    object Egresos1Periodo: TdxBarButton
      Caption = 'Impresion de Egresos x Fecha'
      Category = 1
      Visible = ivAlways
      ImageIndex = 472
      OnClick = Egresos1PeriodoClick
    end
    object Egresos2Periodo: TdxBarButton
      Caption = 'Impresi'#243'n de Egresos x Proveedor x Fecha'
      Category = 1
      Visible = ivAlways
      ImageIndex = 472
      OnClick = Egresos2PeriodoClick
    end
    object Egresos3Periodo: TdxBarButton
      Caption = 'Impresi'#243'n de Egresos x Tipo de Movimiento x Fecha'
      Category = 1
      Visible = ivAlways
      ImageIndex = 472
      OnClick = Egresos3PeriodoClick
    end
    object Graficar1: TdxBarSubItem
      Caption = 'Graficas'
      Category = 1
      Visible = ivAlways
      ImageIndex = 172
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnGrafica'
        end
        item
          Visible = True
          ItemName = 'GraficaporDepartamento1'
        end
        item
          Visible = True
          ItemName = 'GraficarPorFechaImporte1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'GraficarConceptoSeleccionado1'
        end>
    end
    object mnGrafica: TdxBarButton
      Caption = 'Graficar por Egreso'
      Category = 1
      Visible = ivAlways
      ImageIndex = 172
      ShortCut = 114
      OnClick = mnGraficaClick
    end
    object GraficaporDepartamento1: TdxBarButton
      Caption = 'Grafica por Cargo'
      Category = 1
      Visible = ivAlways
      ImageIndex = 172
      ShortCut = 115
      OnClick = GraficaporDepartamento1Click
    end
    object GraficarPorFechaImporte1: TdxBarButton
      Caption = 'Graficar Por Fecha e Importe'
      Category = 1
      Visible = ivAlways
      ImageIndex = 172
      OnClick = GraficarPorFechaImporte1Click
    end
    object GraficarConceptoSeleccionado1: TdxBarButton
      Caption = 'Graficar Concepto Seleccionado'
      Category = 1
      Visible = ivAlways
      ImageIndex = 172
      ShortCut = 116
      OnClick = GraficarConceptoSeleccionado1Click
    end
    object EditarCaratuladeEgreso1: TdxBarButton
      Caption = 'Editar Caratula de Egreso'
      Category = 1
      Visible = ivAlways
      ImageIndex = 266
      ShortCut = 113
      OnClick = EditarCaratuladeEgreso1Click
    end
  end
  object popup_Principal: TdxRibbonPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Reportes1'
      end
      item
        Visible = True
        ItemName = 'Graficar1'
      end
      item
        Visible = True
        ItemName = 'EditarCaratuladeEgreso1'
      end>
    UseOwnFont = False
    Left = 760
    Top = 24
  end
end
