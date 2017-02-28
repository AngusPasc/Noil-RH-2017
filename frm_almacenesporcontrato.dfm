object frmAlmacenesPorContrato: TfrmAlmacenesPorContrato
  Left = 192
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asignaci'#243'n de Almacenes a Contratos/Empresas'
  ClientHeight = 452
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object btnAsigna: TBitBtn
    Left = 391
    Top = 127
    Width = 96
    Height = 41
    Caption = '&Asignar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnAsignaClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777777777777777777077777707777777700777770
      7777777700077770777777770000777077777777000007707777777700000070
      7777777700000770777777770000777077777777000777707777777700777770
      7777777707777770777777777777777777777777777777777777}
    Layout = blGlyphTop
  end
  object btnDenegar: TBitBtn
    Left = 391
    Top = 168
    Width = 96
    Height = 41
    Caption = '&Denegar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnDenegarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777777777777777777077777707777777707777700
      7777777707777000777777770777000077777777077000007777777707000000
      7777777707700000777777770777000077777777077770007777777707777700
      7777777707777770777777777777777777777777777777777777}
    Layout = blGlyphTop
  end
  object grAlmacenes: TGroupBox
    Left = 199
    Top = 0
    Width = 192
    Height = 444
    Caption = 'Listado de Almacenes '
    TabOrder = 2
    object grid_almacenes: TcxGrid
      Left = 3
      Top = 16
      Width = 183
      Height = 425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object grid_almacenesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_Almacenes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object Grid_ColAlmacen: TcxGridDBColumn
          Caption = 'Descripcion'
          DataBinding.FieldName = 'sDescripcion'
        end
      end
      object grid_almacenesLevel1: TcxGridLevel
        GridView = grid_almacenesDBTableView1
      end
    end
  end
  object grContratos: TGroupBox
    Left = 488
    Top = 0
    Width = 249
    Height = 444
    Caption = 'Almacenes Asignados '
    TabOrder = 3
    object grid_almacenesxcontrato: TcxGrid
      Left = 5
      Top = 16
      Width = 241
      Height = 425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object grid_almacenesxcontratoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_AlmacenesPorContrato
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object Grid_ColAlmacen1: TcxGridDBColumn
          Caption = 'Almacenes'
          DataBinding.FieldName = 'almacen'
          Width = 227
        end
      end
      object grid_almacenesxcontratoLevel1: TcxGridLevel
        GridView = grid_almacenesxcontratoDBTableView1
      end
    end
  end
  object TreeContratos: TTreeView
    Left = 1
    Top = 0
    Width = 192
    Height = 444
    Hint = 'Contratos'
    Align = alCustom
    AutoExpand = True
    Color = 16697018
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    HideSelection = False
    HotTrack = True
    Indent = 19
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    RightClickSelect = True
    RowSelect = True
    TabOrder = 4
    OnClick = TreeContratosClick
  end
  object chkTodos: TCheckBox
    Left = 405
    Top = 88
    Width = 67
    Height = 17
    Caption = 'Todos'
    TabOrder = 5
  end
  object ds_Almacenes: TDataSource
    AutoEdit = False
    DataSet = Almacenes
    Left = 211
    Top = 72
  end
  object ds_AlmacenesPorContrato: TDataSource
    AutoEdit = False
    DataSet = AlmacenesPorContrato
    Left = 410
    Top = 16
  end
  object Almacenes: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM almacenes;')
    Params = <>
    Left = 256
    Top = 72
    object AlmacenessIdAlmacen: TStringField
      FieldName = 'sIdAlmacen'
      Required = True
    end
    object AlmacenessCiudad: TStringField
      FieldName = 'sCiudad'
      Size = 60
    end
    object AlmacenessCp: TStringField
      FieldName = 'sCp'
      Size = 15
    end
    object AlmacenessTelefono: TStringField
      FieldName = 'sTelefono'
    end
    object AlmacenessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 100
    end
    object AlmacenessDireccion: TStringField
      FieldName = 'sDireccion'
      Size = 200
    end
    object AlmacenessFax: TStringField
      FieldName = 'sFax'
    end
    object AlmacenessComentarios: TStringField
      FieldName = 'sComentarios'
      Required = True
      Size = 200
    end
    object AlmacenessContrato: TStringField
      FieldName = 'sContrato'
      Size = 100
    end
  end
  object AlmacenesPorContrato: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM almacenesxcontratos WHERE sContrato = :Contrato;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 447
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object AlmacenesPorContratosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 255
    end
    object AlmacenesPorContratoalmacen: TStringField
      FieldKind = fkLookup
      FieldName = 'almacen'
      LookupDataSet = Almacenes
      LookupKeyFields = 'sIdAlmacen'
      LookupResultField = 'sDescripcion'
      KeyFields = 'sIdAlmacen'
      Size = 100
      Lookup = True
    end
    object AlmacenesPorContratosIdAlmacen: TStringField
      FieldName = 'sIdAlmacen'
    end
  end
end
