object frmRecursosxAnexonuevos: TfrmRecursosxAnexonuevos
  Left = 277
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recursos por Concepto/Partida Nuevos Precios'
  ClientHeight = 659
  ClientWidth = 1012
  Color = 14145495
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grid_Actividades: TcxGrid
    Left = 0
    Top = 0
    Width = 1012
    Height = 342
    Align = alClient
    TabOrder = 2
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxgrdbtblvwGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_actividadesxanexo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = '*'
        DataBinding.FieldName = 'sSimbolo'
        Width = 50
      end
      object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Wbs'
        DataBinding.FieldName = 'sWbsSpace'
        Width = 50
      end
      object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Partida'
        DataBinding.FieldName = 'sNumeroActividad'
        Width = 70
      end
      object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Descripcion'
        DataBinding.FieldName = 'sDescripcion'
        Width = 177
      end
      object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Unidad'
        DataBinding.FieldName = 'sMedida'
        Width = 109
      end
      object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'C. Anexo'
        DataBinding.FieldName = 'dCantidadAnexo'
        Width = 108
      end
      object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = 'Inicio'
        DataBinding.FieldName = 'dFechaInicio'
        Width = 106
      end
      object cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = 'Termino'
        DataBinding.FieldName = 'dFechaFinal'
        Width = 109
      end
      object cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'dPonderado'
        Width = 111
      end
      object cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = 'P.unitario'
        DataBinding.FieldName = 'dVentaMN'
        Width = 109
      end
      object cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn
        Caption = 'total'
        DataBinding.FieldName = 'dMontoMN'
        Width = 109
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  object PagePrograma: TPageControl
    Left = 0
    Top = 342
    Width = 1012
    Height = 317
    ActivePage = pg_herramientas
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Images = connection.ImageList1
    MultiLine = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object pg_personal: TTabSheet
      Caption = '&Personal'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_personal: TcxGrid
        Left = 0
        Top = 0
        Width = 1005
        Height = 290
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_personal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn
            Caption = 'Personal'
            DataBinding.FieldName = 'sIdPersonal'
            Width = 115
          end
          object cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
            Width = 90
          end
          object cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn
            Caption = 'Costo MN'
            DataBinding.FieldName = 'dCostoMN'
            Width = 106
          end
          object cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn
            Caption = 'Costo DLL'
            DataBinding.FieldName = 'dCostoDLL'
            Width = 111
          end
          object cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 649
          end
        end
        object cxgrdlvlGrid1Level2: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView2
        end
      end
    end
    object pg_equipo: TTabSheet
      Caption = '&Equipo'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_Equipos: TcxGrid
        Left = 0
        Top = 0
        Width = 1005
        Height = 290
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_equipos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxgrdbclmnGrid1DBTableView3Column1: TcxGridDBColumn
            Caption = 'Equipo'
            DataBinding.FieldName = 'sIdEquipo'
            Width = 70
          end
          object cxgrdbclmnGrid1DBTableView3Column2: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
            Width = 98
          end
          object cxgrdbclmnGrid1DBTableView3Column3: TcxGridDBColumn
            Caption = 'Costo M.N'
            DataBinding.FieldName = 'dCostoMN'
            Width = 87
          end
          object cxgrdbclmnGrid1DBTableView3Column4: TcxGridDBColumn
            Caption = 'Costo DLL'
            DataBinding.FieldName = 'dCostoDLL'
            Width = 196
          end
          object cxgrdbclmnGrid1DBTableView3Column5: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 253
          end
        end
        object cxgrdlvlGrid1Level3: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView3
        end
      end
    end
    object TabMateriales: TTabSheet
      Caption = '&Materiales'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_Inventario: TcxGrid
        Left = 0
        Top = 0
        Width = 1005
        Height = 290
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Inventario
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxgrdbclmnGrid1DBTableView4Column1: TcxGridDBColumn
            Caption = 'Material'
            DataBinding.FieldName = 'sIdInsumo'
            Width = 88
          end
          object cxgrdbclmnGrid1DBTableView4Column2: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
            Width = 98
          end
          object cxgrdbclmnGrid1DBTableView4Column3: TcxGridDBColumn
            Caption = 'Costo M.N'
            DataBinding.FieldName = 'dCostoMN'
            Width = 192
          end
          object cxgrdbclmnGrid1DBTableView4Column4: TcxGridDBColumn
            Caption = 'Costo DLL'
            DataBinding.FieldName = 'dCostoDLL'
            Width = 167
          end
          object cxgrdbclmnGrid1DBTableView4Column5: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 342
          end
        end
        object cxgrdlvlGrid1Level4: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView4
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Basicos'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_basicos: TcxGrid
        Left = 0
        Top = 0
        Width = 1005
        Height = 290
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView5: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBasicos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxgrdbclmnGrid1DBTableView5Column1: TcxGridDBColumn
            Caption = 'Basico'
            DataBinding.FieldName = 'sIdBasico'
            Width = 99
          end
          object cxgrdbclmnGrid1DBTableView5Column2: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
            Width = 102
          end
          object cxgrdbclmnGrid1DBTableView5Column3: TcxGridDBColumn
            Caption = 'Costo MN'
            DataBinding.FieldName = 'dCostoMN'
            Width = 103
          end
          object cxgrdbclmnGrid1DBTableView5Column4: TcxGridDBColumn
            Caption = 'Costo DLL'
            DataBinding.FieldName = 'dCostoDLL'
            Width = 98
          end
          object cxgrdbclmnGrid1DBTableView5Column5: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 605
          end
        end
        object cxgrdlvlGrid1Level5: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView5
        end
      end
    end
    object pg_herramientas: TTabSheet
      Caption = 'Herramientas'
      ImageIndex = 10
      object grid_Herramientas: TcxGrid
        Left = 0
        Top = 0
        Width = 1004
        Height = 287
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView6: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_herramientas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxgrdbclmnGrid1DBTableView6Column1: TcxGridDBColumn
            Caption = 'Herramienta'
            DataBinding.FieldName = 'sIdHerramientas'
            Width = 175
          end
          object cxgrdbclmnGrid1DBTableView6Column2: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
            Width = 134
          end
          object cxgrdbclmnGrid1DBTableView6Column3: TcxGridDBColumn
            Caption = 'Costo MN'
            DataBinding.FieldName = 'dCostoMN'
            Width = 125
          end
          object cxgrdbclmnGrid1DBTableView6Column4: TcxGridDBColumn
            Caption = 'Costo DLL'
            DataBinding.FieldName = 'dCostoDLL'
            Width = 141
          end
          object cxgrdbclmnGrid1DBTableView6Column5: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 424
          end
        end
        object cxgrdlvlGrid1Level6: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView6
        end
      end
    end
  end
  object Panel: tNewGroupBox
    Left = 85
    Top = 40
    Width = 700
    Height = 185
    Align = alCustom
    Caption = 'Coincidencias Encontradas'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Visible = False
    HighLightColor = clWindowText
    ShadowColor = clWindowText
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 700
    Title.HighLightColor = clWindowText
    Title.ShadowColor = clWindowText
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaisedLine
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 20
    Title.BkColor = clGray
    TransparentMode = False
    Border = True
    Shape = tsRect
    object ListaObjeto: TRxDBGrid
      Left = 5
      Top = 27
      Width = 692
      Height = 155
      Hint = 'Doble Click para Seleccionar'
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Ctl3D = False
      DataSource = ds_buscaobjeto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = ListaObjetoDblClick
      OnExit = ListaObjetoExit
      OnKeyPress = ListaObjetoKeyPress
      TitleButtons = True
      Columns = <
        item
          Expanded = False
          FieldName = 'encontrar'
          Visible = True
        end>
    end
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.ImageList1
    Left = 337
    Top = 320
    object InsertarFichaTecnica1: TMenuItem
      Caption = 'Insertar Ficha Tecnica'
      ImageIndex = 10
      OnClick = InsertarFichaTecnica1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 13
      OnClick = Refresh1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Im&primir Ficha Tecnica'
      ImageIndex = 14
      ShortCut = 16454
      OnClick = Imprimir1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ImprimirComparativo1: TMenuItem
      Caption = 'Imprimir Comparativo '
      ImageIndex = 14
      ShortCut = 16457
      OnClick = ImprimirComparativo1Click
    end
    object BuscarPartida1: TMenuItem
      Caption = 'Buscar Partida'
      ImageIndex = 8
      ShortCut = 112
      OnClick = BuscarPartida1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 43
      ShortCut = 16472
      OnClick = Salir1Click
    end
  end
  object ds_personal: TDataSource
    DataSet = Personal
    Left = 86
    Top = 313
  end
  object ds_buscaobjeto: TDataSource
    AutoEdit = False
    DataSet = BuscaObjeto
    Left = 196
    Top = 345
  end
  object ds_equipos: TDataSource
    DataSet = equipos
    Left = 78
    Top = 361
  end
  object ds_Inventario: TDataSource
    DataSet = inventario
    Left = 62
    Top = 425
  end
  object ds_actividadesxanexo: TDataSource
    AutoEdit = False
    DataSet = ActividadesxAnexo
    Left = 80
    Top = 32
  end
  object ActividadesxAnexo: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = ActividadesxAnexoAfterScroll
    OnCalcFields = ActividadesxAnexoCalcFields
    SQL.Strings = (
      
        'Select *, SubStr(mDescripcion, 1, 255) as sDescripcion  from act' +
        'ividadesxanexo'
      
        'Where sContrato = :contrato And sIdConvenio = :Convenio Order By' +
        ' iItemOrden, round(sNumeroActividad)')
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
      end>
    Left = 149
    Top = 25
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
      end>
    object ActividadesxAnexosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesxAnexosIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object ActividadesxAnexoiNivel: TIntegerField
      FieldName = 'iNivel'
      Required = True
    end
    object ActividadesxAnexosSimbolo: TStringField
      FieldName = 'sSimbolo'
      Required = True
      Size = 1
    end
    object ActividadesxAnexosWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object ActividadesxAnexosWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 30
    end
    object ActividadesxAnexosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesxAnexosTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Required = True
      Size = 9
    end
    object ActividadesxAnexomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesxAnexodFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object ActividadesxAnexodDuracion: TFloatField
      FieldName = 'dDuracion'
      Required = True
    end
    object ActividadesxAnexodFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object ActividadesxAnexodPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
    end
    object ActividadesxAnexodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object ActividadesxAnexodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      currency = True
    end
    object ActividadesxAnexolCalculo: TStringField
      FieldName = 'lCalculo'
      Required = True
      Size = 2
    end
    object ActividadesxAnexosMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 10
    end
    object ActividadesxAnexodCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
      Required = True
    end
    object ActividadesxAnexoiColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
    object ActividadesxAnexosWbsSpace: TStringField
      FieldKind = fkCalculated
      FieldName = 'sWbsSpace'
      Size = 30
      Calculated = True
    end
    object ActividadesxAnexodMontoMN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoMN'
      Calculated = True
    end
    object ActividadesxAnexodMontoDLL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoDLL'
      Calculated = True
    end
    object ActividadesxAnexodExcedente: TFloatField
      FieldName = 'dExcedente'
      Required = True
    end
    object ActividadesxAnexosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 255
    end
  end
  object Personal: TZQuery
    Connection = connection.zConnection
    OnCalcFields = PersonalCalcFields
    AfterInsert = PersonalAfterInsert
    BeforePost = PersonalBeforePost
    SQL.Strings = (
      'Select * from recursospersonalnuevos Where'
      
        'sContrato = :Contrato And sWbs = :wbs and sNumeroActividad = :ac' +
        'tividad Order By sIdPersonal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 117
    Top = 310
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object PersonalsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object PersonalsWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object PersonalsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 15
    end
    object PersonalsIdPersonal: TStringField
      FieldName = 'sIdPersonal'
      Required = True
      OnChange = PersonalsIdPersonalChange
      Size = 25
    end
    object PersonaldCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object PersonalsDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 250
      Calculated = True
    end
    object PersonaldCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
    end
    object PersonaldCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      Required = True
    end
  end
  object equipos: TZQuery
    Connection = connection.zConnection
    OnCalcFields = equiposCalcFields
    AfterInsert = equiposAfterInsert
    BeforePost = equiposBeforePost
    SQL.Strings = (
      'Select * from recursosequiposnuevos Where'
      
        'sContrato = :Contrato And sWbs = :wbs and sNumeroActividad = :ac' +
        'tividad Order By sIdEquipo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 117
    Top = 358
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object equipossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object equipossWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object equipossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 15
    end
    object equipossIdEquipo: TStringField
      FieldName = 'sIdEquipo'
      Required = True
      OnChange = equipossIdEquipoChange
      Size = 25
    end
    object equiposdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object equiposdCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
      currency = True
    end
    object equiposdCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      Required = True
      currency = True
    end
    object equipossDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 200
      Calculated = True
    end
  end
  object inventario: TZQuery
    Connection = connection.zConnection
    OnCalcFields = inventarioCalcFields
    AfterInsert = inventarioAfterInsert
    BeforePost = inventarioBeforePost
    SQL.Strings = (
      'Select * from recursosanexosnuevos Where sContrato = :Contrato'
      
        'And sWbs = :wbs and sNumeroActividad = :actividad Order By sIdin' +
        'sumo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 77
    Top = 446
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object inventariosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object inventariosWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object inventariosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 25
    end
    object inventariosIdInventario: TStringField
      FieldName = 'sIdInsumo'
      Required = True
      OnChange = inventariosIdInventarioChange
      Size = 25
    end
    object inventariodCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object inventariosDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 200
      Calculated = True
    end
    object inventariodCostoMN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dCostoMN'
      Calculated = True
    end
    object inventariodCostoDLL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dCostoDLL'
      Calculated = True
    end
  end
  object BuscaObjeto: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = BuscaObjetoCalcFields
    SQL.Strings = (
      
        'select sIdPersonal as 1campo, sDescripcion, dCostoMN as 3Campo, ' +
        'dCostoDLL as 4Campo'
      'from personal Where sContrato =:Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 237
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object BuscaObjetoencontrar: TStringField
      FieldKind = fkCalculated
      FieldName = 'encontrar'
      Size = 100
      Calculated = True
    end
    object BuscaObjetoStringField1campo: TStringField
      FieldName = '1campo'
      ReadOnly = True
      Size = 25
    end
    object BuscaObjetoFloatField3Campo: TFloatField
      FieldName = '3Campo'
      ReadOnly = True
    end
    object BuscaObjetoFloatField4Campo: TFloatField
      FieldName = '4Campo'
      ReadOnly = True
    end
    object BuscaObjetosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 250
    end
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    ScreenSnap = True
    TitleButtons = <>
    Left = 10
    Top = 45
  end
  object frxht: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 40367.639064120370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      '            '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '            '
      '       '
      'end;'
      '  '
      ''
      'procedure Memo19OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                                      '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        '                '
      '                        '
      'end;'
      ''
      'begin            '
      ''
      'end.')
    OnGetValue = frxhtGetValue
    Left = 165
    Top = 105
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'Comparativo_Insumos'
      end
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
        Name = ' InformeGeneral'
        Value = Null
      end
      item
        Name = 'Financiero_001'
        Value = '<frxDBReporte."dSuministrado">- Generado.Value'
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
      PaperWidth = 279.400000000000000000
      PaperHeight = 431.800000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      VGuides.Strings = (
        '0')
      object Header1: TfrxHeader
        Height = 26.677170240000000000
        Top = 317.480520000000000000
        Width = 980.410082000000000000
        ReprintOnNewPage = True
        object Memo33: TfrxMemoView
          Left = 23.811040710000000000
          Top = 3.779530000000000000
          Width = 309.921289130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DETALLE EXPLOSION DE INSUMOS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 642.520100000000000000
        Width = 980.410082000000000000
        object Memo35: TfrxMemoView
          Left = 752.126470000000000000
          Width = 166.299320000000000000
          Height = 11.338590000000000000
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
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 173.858380000000000000
        Width = 980.410082000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Width = 942.279225272778000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 97.699321134385700000
          Top = 3.000000000000000000
          Width = 736.593815397089000000
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
            '[Contrato."mCliente"]'
            'CONTRATO No.: [Contrato."sContrato"]'
            'SEGUIMIENTO DE MATERIALES')
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
          Left = 838.407898393366000000
          Top = 3.000000000000000000
          Width = 101.182740355892000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo4: TfrxMemoView
          Left = 837.794934666847000000
          Top = 48.913420000000000000
          Width = 105.302199212554000000
          Height = 24.795300000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
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
      object ReportTitle1: TfrxReportTitle
        Height = 133.614217170000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Shape2: TfrxShapeView
          Left = 1.846511563814060000
          Top = 94.708720000000000000
          Width = 942.279450716186000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo36: TfrxMemoView
          Left = 16.251980710000000000
          Top = 86.929190000000000000
          Width = 385.511889130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'COMPARATIVO REAL/PROGRAMADO EXPLOSION DE INSUMOS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 1.846511563814060000
          Top = 105.267780000000000000
          Width = 942.279450716186000000
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
        object Memo38: TfrxMemoView
          Left = 1.846511563814060000
          Width = 942.279450716186000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo39: TfrxMemoView
          Left = 99.680035808709300000
          Top = 3.000000000000000000
          Width = 737.670417639757000000
          Height = 48.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mCliente"]'
            ''
            'CONTRATO No. [Contrato."sContrato"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 5.669291340000000000
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
          Left = 838.474881439802000000
          Top = 3.000000000000000000
          Width = 101.182740355892000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo40: TfrxMemoView
          Left = 837.795160113123000000
          Top = 48.913420000000000000
          Width = 105.302199212554000000
          Height = 24.795300000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
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
      object GroupHeader1: TfrxGroupHeader
        Height = 38.417790760000000000
        Top = 423.307360000000000000
        Width = 980.410082000000000000
        Condition = 'Comparativo_Insumos."Tipo"'
        object Memo11: TfrxMemoView
          Left = 115.275590550000000000
          Top = 7.559060000000000000
          Width = 428.976377950000000000
          Height = 16.229738310000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."Tipo"] PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 308.464221480000000000
          Top = 24.188981260000000000
          Width = 37.811286580000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MEDIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 392.779659130000000000
          Top = 24.188981260000000000
          Width = 50.320420270000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'COSTO MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 346.960629920000000000
          Top = 24.188981260000000000
          Width = 46.866141732283500000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 443.307360000000000000
          Top = 24.188981260000000000
          Width = 50.320420270000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'COSTO DLL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 494.220780000000000000
          Top = 24.188981260000000000
          Width = 49.889763779527600000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 548.031496060000000000
          Top = 7.559062440000000000
          Width = 430.866141730000000000
          Height = 16.229738310000000000
          ShowHint = False
          Color = 8421440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."Tipo"] REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 742.669231480000000000
          Top = 24.188981260000000000
          Width = 37.811286580000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MEDIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 826.984669130000000000
          Top = 24.188981260000000000
          Width = 50.320420270000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'COSTO MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 613.743266630000000000
          Top = 24.188981259842500000
          Width = 127.853292510000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 781.228346460000000000
          Top = 24.188981260000000000
          Width = 46.540890270000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 877.512370000000000000
          Top = 24.188981260000000000
          Width = 50.320420270000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'COSTO DLL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 928.425790000000000000
          Top = 24.188981260000000000
          Width = 50.320420270000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 548.135766530000000000
          Top = 24.188981260000000000
          Width = 64.838557680000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 180.861076630000000000
          Top = 24.188981260000000000
          Width = 127.853292510000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 115.253576530000000000
          Top = 24.188981259842500000
          Width = 64.629921260000000000
          Height = 14.228809500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 21.787871940000000000
        Top = 483.779840000000000000
        Width = 980.410082000000000000
        DataSet = frxDBDataset1
        DataSetName = 'Comparativo_Insumos'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 308.346101480000000000
          Width = 37.811286580000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'Unidad_2'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."Unidad_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 392.692913390000000000
          Width = 50.267716540000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'CostoMN_2'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[Comparativo_Insumos."CostoMN_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 347.141930000000000000
          Width = 46.866141730000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'Cantidad_2'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."Cantidad_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 443.189240000000000000
          Width = 50.645669290000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'CostoDLL_2'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[Comparativo_Insumos."CostoDLL_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 494.362204720000000000
          Width = 49.889763780000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<Comparativo_Insumos."Cantidad_2"> * <Comparativo_Insumos."Cost' +
              'oMN_2">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 742.551111480000000000
          Top = 0.000002439999999992
          Width = 38.173228350000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'Unidad'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."Unidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 826.866549130000000000
          Top = 0.000002439999999992
          Width = 50.320420270000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'CostoMN'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[Comparativo_Insumos."CostoMN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 613.639350100000000000
          Top = 0.000002439999999992
          Width = 127.853292510000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'Descripcion'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[Comparativo_Insumos."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 781.346940000000000000
          Top = 0.000002439999999992
          Width = 46.540890270000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'Cantidad'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."Cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 877.606299210000000000
          Top = 0.000002439999999992
          Width = 50.320420270000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'CostoDLL'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[Comparativo_Insumos."CostoDLL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 928.307670000000000000
          Top = 0.000002439999999992
          Width = 50.320420270000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<Comparativo_Insumos."Cantidad"> * <Comparativo_Insumos."CostoM' +
              'N">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 548.031850000000000000
          Top = 0.000002439999999992
          Width = 64.677221140000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'Id'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            '[Comparativo_Insumos."Id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 181.039370080000000000
          Width = 127.853292510000000000
          Height = 21.921259840000000000
          ShowHint = False
          DataField = 'Descripcion_2'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[Comparativo_Insumos."Descripcion_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 115.149660000000000000
          Width = 64.677221140000000000
          Height = 21.787869500000000000
          ShowHint = False
          DataField = 'Id_2'
          DataSet = frxDBDataset1
          DataSetName = 'Comparativo_Insumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            '[Comparativo_Insumos."Id_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 574.488560000000000000
        Width = 980.410082000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 35.149618500000000000
        Top = 366.614410000000000000
        Width = 980.410082000000000000
        Condition = 'Comparativo_Insumos."sNumeroActividad"'
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 740.669231480000000000
          Width = 52.475451410000000000
          Height = 17.973117300000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MEDIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 851.905519130000000000
          Width = 62.362202280000000000
          Height = 17.973117300000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'COSTO MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 74.834645670000000000
          Width = 666.903609140000000000
          Height = 17.973117300000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 793.511054880000000000
          Width = 57.031554260000000000
          Height = 17.973117300000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 914.645674170000000000
          Width = 66.056410740000000000
          Height = 17.973117300000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'COSTO DLL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Width = 73.517399140000000000
          Height = 17.973117300000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 740.653555510000000000
          Top = 18.897650000000000000
          Width = 52.475451410000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'dbExplosionInsumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."MedidaAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 852.007129570000000000
          Top = 18.897650000000000000
          Width = 62.276880740000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'dbExplosionInsumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."CostoMNAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 74.834645670000000000
          Top = 18.897650000000000000
          Width = 666.903609140000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'dbExplosionInsumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."DescripcionAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 793.322846850000000000
          Top = 18.897650000000000000
          Width = 57.448818900000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'dbExplosionInsumos'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."CantidadAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 914.571679530000000000
          Top = 18.897650000000000000
          Width = 66.056410740000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'dbExplosionInsumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."CostoDLLAnexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Top = 18.897650000000000000
          Width = 73.517399140000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'dbExplosionInsumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Comparativo_Insumos."sNumeroActividad"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 21.787869500000000000
        Top = 529.134200000000000000
        Width = 980.410082000000000000
        object Memo53: TfrxMemoView
          Left = 494.362204720000000000
          Width = 49.889763780000000000
          Height = 18.008339500000000000
          ShowHint = False
          DataSetName = 'dbExplosionInsumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<Comparativo_Insumos."Cantidad_2"> * <Comparativo_Insumos."' +
              'CostoMN_2"> ,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 442.960629920000000000
          Width = 51.023622050000000000
          Height = 18.008339500000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'dbExplosionInsumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 928.251968500000000000
          Width = 50.267716540000000000
          Height = 18.008339500000000000
          ShowHint = False
          DataSetName = 'dbExplosionInsumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<Comparativo_Insumos."Cantidad"> * <Comparativo_Insumos."Co' +
              'stoMN"> ,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 877.606299210000000000
          Width = 50.267716540000000000
          Height = 18.008339500000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'dbExplosionInsumos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object recursosanexos: TfrxDBDataset
    UserName = 'recursosanexos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'sIdInsumo=sIdInsumo'
      'mDescripcion=mDescripcion'
      'smedida=smedida'
      'dCantidad=dCantidad'
      'dCostoMN=dCostoMN'
      'dCostoDLL=dCostoDLL')
    DataSet = ranexosc
    BCDToCurrency = False
    Left = 389
    Top = 185
  end
  object recursosequipos: TfrxDBDataset
    UserName = 'recursosequipos'
    CloseDataSource = False
    DataSet = requipos
    BCDToCurrency = False
    Left = 485
    Top = 185
  end
  object recursospersonal: TfrxDBDataset
    UserName = 'recursospersonal'
    CloseDataSource = False
    DataSet = rpersonal
    BCDToCurrency = False
    Left = 437
    Top = 185
  end
  object ranexosc: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select  a.sNumeroActividad, ra.sIdInsumo, i.mDescripcion, i.smed' +
        'ida,'
      'ra.dCantidad, i.dCostoMN, i.dCostoDLL'
      'from insumos i'
      'inner join recursosanexosnuevos ra'
      'On (ra.sContrato=i.sContrato and ra.sIdInsumo=i.sIdInsumo)'
      'inner join actividadesxanexo a'
      
        'On (ra.sContrato=a.sContrato And ra.sNumeroActividad=a.sNumeroAc' +
        'tividad And a.sIdConvenio = :Convenio'
      'And a.sTipoActividad="Actividad")'
      'Where ra.sContrato = :Contrato'
      'and ra.sNumeroActividad= :Actividad')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 389
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object ranexoscsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ranexoscsIdInsumo: TStringField
      FieldName = 'sIdInsumo'
      Required = True
    end
    object ranexoscmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ranexoscsmedida: TStringField
      FieldName = 'smedida'
      Required = True
      Size = 8
    end
    object ranexoscdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object ranexoscdCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
    end
    object ranexoscdCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      Required = True
    end
  end
  object anexoc: TfrxDBDataset
    UserName = 'anexoc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sIdConvenio=sIdConvenio'
      'iNivel=iNivel'
      'sSimbolo=sSimbolo'
      'sWbs=sWbs'
      'sWbsAnterior=sWbsAnterior'
      'sNumeroActividad=sNumeroActividad'
      'sTipoActividad=sTipoActividad'
      'mDescripcion=mDescripcion'
      'dFechaInicio=dFechaInicio'
      'dDuracion=dDuracion'
      'dFechaFinal=dFechaFinal'
      'dPonderado=dPonderado'
      'dVentaMN=dVentaMN'
      'dVentaDLL=dVentaDLL'
      'lCalculo=lCalculo'
      'sMedida=sMedida'
      'dCantidadAnexo=dCantidadAnexo'
      'iColor=iColor'
      'sWbsSpace=sWbsSpace'
      'dMontoMN=dMontoMN'
      'dMontoDLL=dMontoDLL'
      'dExcedente=dExcedente')
    DataSet = ActividadesxAnexo
    BCDToCurrency = False
    Left = 189
    Top = 25
  end
  object rpersonal: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      '  a.sNumeroActividad,'
      '  pa.sIdPersonal,'
      '  p.sDescripcion,'
      '  p.sMedida,'
      '  pa.dCantidad,'
      '  pa.dCostoMN'
      'FROM'
      '  personal p'
      
        '  INNER JOIN recursospersonalnuevos pa ON (p.sContrato = pa.sCon' +
        'trato)'
      '  AND (p.sIdPersonal = pa.sIdPersonal)'
      '  INNER JOIN actividadesxanexo a ON (pa.sContrato = a.sContrato)'
      
        '  AND (pa.sNumeroActividad = a.sNumeroActividad And a.sIdConveni' +
        'o= :Convenio And a.sTipoActividad="Actividad")'
      'WHERE'
      
        '  pa.sContrato = :Contrato  AND  pa.sNumeroActividad = :Activida' +
        'd'
      '  AND p.sDescripcion NOT LIKE "%RENDIMIENTO%"'
      '  Order by p.sDescripcion'
      '  ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 437
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object rpersonalsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object rpersonalsIdPersonal: TStringField
      FieldName = 'sIdPersonal'
      Required = True
      Size = 25
    end
    object rpersonalsDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 250
    end
    object rpersonalsMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object rpersonaldCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object rpersonaldCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
    end
  end
  object requipos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      '  a.sNumeroActividad,'
      '  re.sIdEquipo,'
      '  e.sDescripcion,'
      '  e.sMedida,'
      '  re.dCantidad,'
      '  re.dCostoMN'
      'FROM'
      '  equipos e'
      
        '  INNER JOIN recursosequiposnuevos re ON (e.sContrato = re.sCont' +
        'rato)'
      '  AND (e.sIdEquipo = re.sIdEquipo)'
      '  INNER JOIN actividadesxanexo a ON (re.sContrato = a.sContrato)'
      
        '  AND (re.sNumeroActividad = a.sNumeroActividad And a.sIdConveni' +
        'o= :Convenio And a.sTipoActividad="Actividad")'
      'WHERE'
      '  re.sContrato = :Contrato AND re.sNumeroActividad = :Actividad'
      '  AND e.sDescripcion NOT LIKE "%RENDIMIENTO%"'
      '  order by e.sDescripcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 485
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object StringField6: TStringField
      FieldName = 'smedida'
      Required = True
      Size = 8
    end
    object FloatField3: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'dCostoMN'
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object requipossIdEquipo: TStringField
      FieldName = 'sIdEquipo'
      Required = True
      Size = 25
    end
    object requipossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 250
    end
  end
  object rConfiguracion: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      '  dCostoDirecto, dCostoIndirectos, dFinanciamiento, dUtilidad,'
      
        ' dCargosAdicionales, dCargosAdicionales2, dCargosAdicionales3, s' +
        'Simbolo'
      'FROM'
      '  configuracion'
      'where sContrato = :Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 525
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object dbconfiguracion: TfrxDBDataset
    UserName = 'dbconfiguracion'
    CloseDataSource = False
    DataSet = rConfiguracion
    BCDToCurrency = False
    Left = 485
    Top = 105
  end
  object dsBasicos: TDataSource
    DataSet = basicos
    Left = 72
    Top = 456
  end
  object rendimientop: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      '  a.sNumeroActividad,'
      '  pa.sIdPersonal,'
      '  p.sDescripcion,'
      '  p.sMedida,'
      '  pa.dCantidad,'
      '  pa.dCostoMN'
      'FROM'
      '  personal p'
      
        '  INNER JOIN recursospersonalnuevos pa ON (p.sContrato = pa.sCon' +
        'trato)'
      '  AND (p.sIdPersonal = pa.sIdPersonal)'
      '  INNER JOIN actividadesxanexo a ON (pa.sContrato = a.sContrato)'
      
        '  AND (pa.sNumeroActividad = a.sNumeroActividad And a.sIdConveni' +
        'o= :Convenio And a.sTipoActividad="Actividad")'
      'WHERE'
      
        '  pa.sContrato = :Contrato  AND  pa.sNumeroActividad = :Activida' +
        'd'
      '  AND p.sDescripcion LIKE "%RENDIMIENTO%" '
      '  ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 621
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'sIdPersonal'
      Required = True
      Size = 25
    end
    object StringField4: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 250
    end
    object StringField5: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object FloatField1: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'dCostoMN'
      Required = True
    end
  end
  object rendimientoe: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      '  a.sNumeroActividad,'
      '  re.sIdEquipo,'
      '  e.sDescripcion,'
      '  e.sMedida,'
      '  re.dCantidad,'
      '  re.dCostoMN'
      'FROM'
      '  equipos e'
      
        '  INNER JOIN recursosequiposnuevos re ON (e.sContrato = re.sCont' +
        'rato)'
      '  AND (e.sIdEquipo = re.sIdEquipo)'
      '  INNER JOIN actividadesxanexo a ON (re.sContrato = a.sContrato)'
      
        '  AND (re.sNumeroActividad = a.sNumeroActividad And a.sIdConveni' +
        'o= :Convenio And a.sTipoActividad="Actividad")'
      'WHERE'
      '  re.sContrato = :Contrato AND re.sNumeroActividad = :Actividad'
      '  AND e.sDescripcion LIKE "%RENDIMIENTO%" ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 677
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object StringField8: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 250
    end
    object StringField11: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object FloatField5: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object FloatField6: TFloatField
      FieldName = 'dCostoMN'
      Required = True
    end
    object rendimientoesIdEquipo: TStringField
      FieldName = 'sIdEquipo'
      Required = True
      Size = 25
    end
  end
  object rendimientopersonal: TfrxDBDataset
    UserName = 'rendimientop'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'sIdPersonal=sIdPersonal'
      'sDescripcion=sDescripcion'
      'sMedida=sMedida'
      'dCantidad=dCantidad'
      'dCostoMN=dCostoMN')
    DataSet = rendimientop
    BCDToCurrency = False
    Left = 621
    Top = 185
  end
  object rendimientoequipos: TfrxDBDataset
    UserName = 'rendimientoe'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'sDescripcion=sDescripcion'
      'sMedida=sMedida'
      'dCantidad=dCantidad'
      'dCostoMN=dCostoMN'
      'sIdEquipo=sIdEquipo')
    DataSet = rendimientoe
    BCDToCurrency = False
    Left = 677
    Top = 185
  end
  object rbasicos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT'
      '  a.sNumeroActividad,'
      '  b.sIdbasico,'
      '  b.sDescripcion,'
      '  b.sMedida,'
      '  ba.dCantidad,'
      '  b.dCostoMN,'
      '  b.sSimbolo'
      'FROM'
      '  basicos b'
      
        '  INNER JOIN recursosbasicosnuevos ba ON (b.sContrato = ba.sCont' +
        'rato)'
      '  AND (b.sIdBasico = ba.sIdBasico)'
      '  INNER JOIN actividadesxanexo a ON (ba.sContrato = a.sContrato)'
      
        '  AND (ba.sNumeroActividad = a.sNumeroActividad And a.sIdConveni' +
        'o= :Convenio And a.sTipoActividad="Actividad")'
      'WHERE'
      
        '  ba.sContrato = :Contrato  AND  ba.sNumeroActividad = :Activida' +
        'd'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 565
    Top = 145
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object StringField2: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object StringField12: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 250
    end
    object StringField13: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object FloatField7: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object FloatField8: TFloatField
      FieldName = 'dCostoMN'
      Required = True
    end
    object rbasicossIdbasico: TStringField
      FieldName = 'sIdbasico'
      Required = True
    end
    object rbasicossSimbolo: TStringField
      FieldName = 'sSimbolo'
      Required = True
      Size = 2
    end
  end
  object frxBasicos: TfrxDBDataset
    UserName = 'rbasicos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'sDescripcion=sDescripcion'
      'sMedida=sMedida'
      'dCantidad=dCantidad'
      'dCostoMN=dCostoMN'
      'sIdbasico=sIdbasico'
      'sSimbolo=sSimbolo')
    DataSet = rbasicos
    BCDToCurrency = False
    Left = 565
    Top = 185
  end
  object basicos: TZQuery
    Connection = connection.zConnection
    OnCalcFields = basicosCalcFields
    AfterInsert = basicosAfterInsert
    BeforePost = basicosBeforePost
    SQL.Strings = (
      'Select * from recursosbasicosnuevos Where'
      
        'sContrato = :Contrato And sWbs = :Wbs And sNumeroActividad = :ac' +
        'tividad Order By sIdBasico')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 117
    Top = 454
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object basicossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object basicossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object basicossIdBasico: TStringField
      FieldName = 'sIdBasico'
      Required = True
      OnChange = basicossIdBasicoChange
    end
    object basicosdCantidad: TFloatField
      DisplayWidth = 15
      FieldName = 'dCantidad'
      Required = True
    end
    object basicossDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 150
      Calculated = True
    end
    object basicosdCostoMN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dCostoMN'
      Calculated = True
    end
    object basicosdCostoDLL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dCostoDLL'
      Calculated = True
    end
    object basicossWbs: TStringField
      FieldName = 'sWbs'
      ReadOnly = True
      Size = 30
    end
  end
  object ds_herramientas: TDataSource
    DataSet = herramientas
    Left = 78
    Top = 505
  end
  object herramientas: TZQuery
    Connection = connection.zConnection
    OnCalcFields = herramientasCalcFields
    AfterInsert = herramientasAfterInsert
    BeforePost = herramientasBeforePost
    SQL.Strings = (
      'Select * from recursosherramientasnuevos Where'
      
        'sContrato = :Contrato And sWbs = :wbs and sNumeroActividad = :ac' +
        'tividad Order By sIdHerramientas')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 117
    Top = 502
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object herramientassIdHerramientas: TStringField
      FieldName = 'sIdHerramientas'
      Required = True
      OnChange = herramientassIdHerramientasChange
      Size = 25
    end
    object herramientassContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object herramientassWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object herramientassNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 15
    end
    object herramientasdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object herramientassDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Calculated = True
    end
    object herramientasdCostoMN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dCostoMN'
      Calculated = True
    end
    object herramientasdCostoDLL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dCostoDLL'
      Calculated = True
    end
    object herramientasfila: TIntegerField
      FieldName = 'fila'
    end
  end
  object rxComparativo: TRxMemoryData
    FieldDefs = <>
    Left = 448
    Top = 376
    object rxComparativosContrato: TStringField
      FieldName = 'sContrato'
    end
    object rxComparativosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
    end
    object rxComparativoDescripcionAnexo: TStringField
      DisplayWidth = 250
      FieldName = 'DescripcionAnexo'
      Size = 250
    end
    object rxComparativoCantidadAnexo: TFloatField
      FieldName = 'CantidadAnexo'
    end
    object rxComparativoMedidaAnexo: TStringField
      FieldName = 'MedidaAnexo'
    end
    object rxComparativoCostoMNAnexo: TFloatField
      FieldName = 'CostoMNAnexo'
    end
    object rxComparativoCostoDLLAnexo: TFloatField
      FieldName = 'CostoDLLAnexo'
    end
    object rxComparativoTipo: TStringField
      FieldName = 'Tipo'
    end
    object rxComparativoId: TStringField
      FieldName = 'Id'
    end
    object rxComparativoDescripcion: TStringField
      DisplayWidth = 25
      FieldName = 'Descripcion'
      Size = 25
    end
    object rxComparativoUnidad: TStringField
      FieldName = 'Unidad'
    end
    object rxComparativoCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object rxComparativoCostoMN: TFloatField
      FieldName = 'CostoMN'
    end
    object rxComparativoCostoDLL: TFloatField
      FieldName = 'CostoDLL'
    end
    object rxComparativoTotal: TFloatField
      FieldName = 'Total'
    end
    object rxComparativoId_2: TStringField
      DisplayWidth = 20
      FieldName = 'Id_2'
    end
    object rxComparativoDescripcion_2: TStringField
      DisplayWidth = 25
      FieldName = 'Descripcion_2'
      Size = 25
    end
    object rxComparativoUnidad_2: TStringField
      DisplayWidth = 20
      FieldName = 'Unidad_2'
    end
    object rxComparativoCostoMN_2: TFloatField
      FieldName = 'CostoMN_2'
    end
    object rxComparativoCantidad_2: TFloatField
      FieldName = 'Cantidad_2'
    end
    object rxComparativoCostoDLL_2: TFloatField
      FieldName = 'CostoDLL_2'
    end
    object rxComparativoTotal_2: TFloatField
      FieldName = 'Total_2'
    end
    object rxComparativoclasifica: TIntegerField
      FieldName = 'clasifica'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Comparativo_Insumos'
    CloseDataSource = False
    DataSet = rxComparativo
    BCDToCurrency = False
    Left = 485
    Top = 377
  end
end
