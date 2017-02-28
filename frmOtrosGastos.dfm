object frm_otrosgastos: Tfrm_otrosgastos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de Otros Ingresos'
  ClientHeight = 416
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 325
    Width = 835
    Height = 0
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 435
  end
  object Panel1: TPanel
    Left = 0
    Top = 325
    Width = 835
    Height = 91
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 79
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Fecha:'
    end
    object Label2: TLabel
      Left = 79
      Top = 37
      Width = 32
      Height = 13
      Caption = 'Turno:'
    end
    object Label4: TLabel
      Left = 79
      Top = 65
      Width = 70
      Height = 13
      Caption = 'Monto de Mto.'
    end
    object lbl2: TLabel
      Left = 335
      Top = 37
      Width = 64
      Height = 13
      Caption = 'Comentarios:'
    end
    object lbl3: TLabel
      Left = 335
      Top = 10
      Width = 79
      Height = 13
      Caption = 'Tipo de Ingreso:'
    end
    object cxDBFecha: TcxDBDateEdit
      Left = 164
      Top = 7
      DataBinding.DataField = 'dFecha'
      DataBinding.DataSource = dsOtrosIngresos
      ParentFont = False
      TabOrder = 0
      OnEnter = cxDBFechaEnter
      OnExit = cxDBFechaExit
      OnKeyPress = cxDBFechaKeyPress
      Width = 145
    end
    object cxDBTurno: TcxDBComboBox
      Left = 164
      Top = 34
      DataBinding.DataField = 'sTurno'
      DataBinding.DataSource = dsOtrosIngresos
      ParentFont = False
      Properties.Items.Strings = (
        'Sin Turno'
        'Matutino'
        'Vespertino'
        'Nocturno')
      TabOrder = 1
      OnEnter = cxDBTurnoEnter
      OnExit = cxDBTurnoExit
      OnKeyPress = cxDBTurnoKeyPress
      Width = 145
    end
    object cxDBMonto: TcxDBCalcEdit
      Left = 164
      Top = 61
      DataBinding.DataField = 'fMonto'
      DataBinding.DataSource = dsOtrosIngresos
      ParentFont = False
      TabOrder = 2
      OnEnter = cxDBMontoEnter
      OnExit = cxDBMontoExit
      OnKeyPress = cxDBMontoKeyPress
      Width = 145
    end
    object cxDBComentarios: TcxDBMemo
      Left = 420
      Top = 33
      DataBinding.DataField = 'sComentarios'
      DataBinding.DataSource = dsOtrosIngresos
      ParentFont = False
      TabOrder = 3
      OnEnter = cxDBComentariosEnter
      OnExit = cxDBComentariosExit
      Height = 50
      Width = 350
    end
    object cxDBTipo: TcxDBLookupComboBox
      Left = 420
      Top = 7
      DataBinding.DataField = 'iTipo'
      DataBinding.DataSource = dsOtrosIngresos
      ParentFont = False
      Properties.KeyFieldNames = 'iId'
      Properties.ListColumns = <
        item
          FieldName = 'sDescripcion'
        end>
      Properties.ListSource = dsTipoMov
      TabOrder = 4
      OnEnter = cxDBTipoEnter
      OnExit = cxDBTipoExit
      OnKeyPress = cxDBTipoKeyPress
      Width = 145
    end
    object cxButton1: TcxButton
      Left = 572
      Top = 6
      Width = 25
      Height = 21
      Caption = '...'
      TabOrder = 5
      OnClick = cxButton1Click
    end
  end
  object Panel2: TPanel
    Left = 72
    Top = 0
    Width = 432
    Height = 325
    Align = alClient
    TabOrder = 1
    object Grid_OtrosIngresos: TcxGrid
      Left = 1
      Top = 1
      Width = 430
      Height = 323
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object BView_OtrosIngresos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsOtrosIngresos
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object BView_OtrosIngresoscodigodepartamento1: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'dFecha'
          Options.Editing = False
          Width = 94
        end
        object BView_OtrosIngresostitulodepartamento1: TcxGridDBColumn
          Caption = 'Turno'
          DataBinding.FieldName = 'sTurno'
          Options.Editing = False
          Width = 138
        end
        object BView_OtrosIngresosdescripcion1: TcxGridDBColumn
          Caption = 'Monto de Mto.'
          DataBinding.FieldName = 'fMonto'
          PropertiesClassName = 'TcxMemoProperties'
          Options.Editing = False
          Width = 112
        end
        object BView_OtrosIngresossTipoArea1: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'tipo'
          Options.Editing = False
          Width = 108
        end
        object BView_OtrosIngresosactivo1: TcxGridDBColumn
          Caption = 'Comentario'
          DataBinding.FieldName = 'sComentarios'
          PropertiesClassName = 'TcxMemoProperties'
          Options.Editing = False
          Width = 222
        end
        object BView_OtrosIngresosColumn1: TcxGridDBColumn
          Caption = 'Movimiento'
          DataBinding.FieldName = 'sMovimiento'
          Options.Editing = False
          Width = 73
        end
      end
      object Grid_OtrosIngresosLevel1: TcxGridLevel
        GridView = BView_OtrosIngresos
      end
    end
  end
  object Panel3: TPanel
    Left = 504
    Top = 0
    Width = 331
    Height = 325
    Align = alRight
    Caption = 'Panel3'
    TabOrder = 6
    Visible = False
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Opciones'
      ParentFont = False
      TabOrder = 0
      Height = 56
      Width = 329
      object cxButton2: TcxButton
        Left = 4
        Top = 18
        Width = 90
        Height = 25
        Caption = 'Exportar a Excel'
        TabOrder = 0
        OnClick = cxButton2Click
      end
      object cxButton3: TcxButton
        Left = 100
        Top = 18
        Width = 90
        Height = 25
        Caption = 'Grafica en Excel'
        TabOrder = 1
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 196
        Top = 18
        Width = 50
        Height = 25
        Caption = 'Ocultar'
        TabOrder = 2
        OnClick = cxButton4Click
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 57
      Align = alClient
      Caption = 'Datos de la Grafica'
      ParentFont = False
      TabOrder = 1
      Height = 267
      Width = 329
      object cxGrid1: TcxGrid
        Left = 3
        Top = 15
        Width = 323
        Height = 242
        Align = alClient
        TabOrder = 0
        object BViewGrafica: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsGrafica
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$0.00'
              Kind = skSum
              FieldName = 'Ingreso'
              Column = BViewGraficaColumn2
            end
            item
              Format = '$0.00'
              Kind = skSum
              FieldName = 'Egreso'
              Column = BViewGraficaColumn3
            end
            item
              Format = '$0.00'
              Kind = skSum
              Column = BViewGraficaColumn4
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object BViewGraficaColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Width = 68
          end
          object BViewGraficaColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Ingreso'
            Options.Editing = False
            Options.Filtering = False
            Width = 76
          end
          object BViewGraficaColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Egreso'
            Options.Editing = False
            Options.Filtering = False
            Width = 79
          end
          object BViewGraficaColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo'
            Width = 72
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = BViewGrafica
        end
      end
    end
  end
  object dsOtrosIngresos: TDataSource
    AutoEdit = False
    DataSet = zqOtrosIngresos
    Left = 231
    Top = 143
  end
  object zqOtrosIngresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT oi.*, (SELECT tm.sDescripcion FROM con_tipodemov tm WHERE' +
        ' tm.iId=oi.iTipo) as tipo'
      'FROM con_otrosingresos oi'
      'WHERE oi.sContrato=:sContrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
    Left = 164
    Top = 142
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PopupPrincipal')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = frmrepositorio.IconosBarra
    ImageOptions.LargeImages = frmrepositorio.IconosBarra
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <
      item
        Control = Panel1
        PopupMenu = PopupMenu
      end>
    UseSystemFont = False
    Left = 496
    Top = 112
    DockControlHeights = (
      72
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Personalizado 1'
      CaptionButtons = <>
      DockedDockingStyle = dsLeft
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsLeft
      FloatLeft = 629
      FloatTop = 323
      FloatClientWidth = 68
      FloatClientHeight = 304
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxInsertar'
        end
        item
          Visible = True
          ItemName = 'dxEditar'
        end
        item
          Visible = True
          ItemName = 'dxGuardar'
        end
        item
          Visible = True
          ItemName = 'dxCancelar'
        end
        item
          Visible = True
          ItemName = 'dxEliminar'
        end
        item
          Visible = True
          ItemName = 'dxImprimir'
        end
        item
          Visible = True
          ItemName = 'dxRefrescar'
        end
        item
          Visible = True
          ItemName = 'dxSalir'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxInsertar: TdxBarLargeButton
      Tag = 1
      Caption = '&Insertar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 0
      ShortCut = 16457
      OnClick = frmBarra1btnAddClick
      AutoGrayScale = False
    end
    object dxEditar: TdxBarLargeButton
      Tag = 2
      Caption = '&Editar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 16453
      OnClick = frmBarra1btnEditClick
      AutoGrayScale = False
    end
    object dxGuardar: TdxBarLargeButton
      Tag = 9
      Caption = '&Guardar'
      Category = 1
      Enabled = False
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 121
      OnClick = frmBarra1btnPostClick
      AutoGrayScale = False
    end
    object dxCancelar: TdxBarLargeButton
      Tag = 9
      Caption = '&Cancelar'
      Category = 1
      Enabled = False
      Visible = ivAlways
      LargeImageIndex = 3
      ShortCut = 122
      OnClick = frmBarra1btnCancelClick
      AutoGrayScale = False
    end
    object dxEliminar: TdxBarLargeButton
      Tag = 3
      Caption = 'Eliminar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 16452
      OnClick = frmBarra1btnDeleteClick
      AutoGrayScale = False
    end
    object dxRefrescar: TdxBarLargeButton
      Caption = 'Actualizar'
      Category = 1
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 116
      OnClick = frmBarra1btnRefreshClick
      AutoGrayScale = False
    end
    object dxSalir: TdxBarLargeButton
      Caption = 'Salir'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 16472
      OnClick = frmBarra1btnExitClick
      AutoGrayScale = False
    end
    object dxImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = dxImprimirClick
      AutoGrayScale = False
    end
  end
  object PopupMenu: TdxRibbonRadialMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxInsertar'
      end
      item
        Visible = True
        ItemName = 'dxEditar'
      end
      item
        Visible = True
        ItemName = 'dxGuardar'
      end
      item
        Visible = True
        ItemName = 'dxCancelar'
      end
      item
        Visible = True
        ItemName = 'dxEliminar'
      end
      item
        Visible = True
        ItemName = 'dxImprimir'
      end
      item
        Visible = True
        ItemName = 'dxRefrescar'
      end
      item
        Visible = True
        ItemName = 'dxSalir'
      end>
    Ribbon = frmInteligent.mInteligent
    UseOwnFont = False
    Left = 536
    Top = 112
  end
  object zqTipoMov: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_tipodemov order by iId')
    Params = <>
    Left = 620
    Top = 326
  end
  object dsTipoMov: TDataSource
    AutoEdit = False
    DataSet = zqTipoMov
    Left = 663
    Top = 327
  end
  object zq_contratos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT sContrato, bImagen FROM contratos WHERE sContrato=:sContr' +
        'ato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
  end
  object zqGrafica: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select oi.dfecha as Fecha, '
      
        '(select sum(oi2.fMonto) from con_otrosingresos oi2 where oi.dFec' +
        'ha=oi2.dFecha and sMovimiento='#39'Ingreso'#39') as Ingreso,'
      
        '(select sum(oi2.fMonto) from con_otrosingresos oi2 where oi.dFec' +
        'ha=oi2.dFecha and sMovimiento='#39'Egreso'#39') as Egreso,'
      
        '(IFNULL((select sum(oi2.fMonto) from con_otrosingresos oi2 where' +
        ' oi.dFecha=oi2.dFecha and sMovimiento='#39'Ingreso'#39'),0)-'
      
        'IFNULL((select sum(oi2.fMonto) from con_otrosingresos oi2 where ' +
        'oi.dFecha=oi2.dFecha and sMovimiento='#39'Egreso'#39'),0)) as Saldo'
      'from con_otrosingresos oi'
      'GROUP BY oi.dFecha'
      'ORDER BY oi.dFecha')
    Params = <>
    Left = 164
    Top = 176
  end
  object dsGrafica: TDataSource
    DataSet = zqGrafica
    Left = 230
    Top = 176
  end
end
