object frmAlmacenesPorUsuario: TfrmAlmacenesPorUsuario
  Left = 192
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asignaci'#243'n de Almacenes a Usuarios'
  ClientHeight = 446
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
    Left = 376
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
    Left = 376
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
  object grContratos: TGroupBox
    Left = 196
    Top = 0
    Width = 181
    Height = 438
    Caption = 'Listado de Almacenes '
    TabOrder = 2
    object grid_almacenes: TcxGrid
      Left = 5
      Top = 16
      Width = 171
      Height = 419
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
        object Grid__colalmacen: TcxGridDBColumn
          Caption = 'Almacenes'
          DataBinding.FieldName = 'sDescripcion'
          Width = 163
        end
      end
      object grid_almacenesLevel1: TcxGridLevel
        GridView = grid_almacenesDBTableView1
      end
    end
  end
  object grUsuarios: TGroupBox
    Left = 473
    Top = 0
    Width = 264
    Height = 438
    Caption = 'Almacenes Asignados '
    TabOrder = 3
    object grid_UsuariosXOrdenes: TcxGrid
      Left = 3
      Top = 16
      Width = 258
      Height = 432
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object grid_UsuariosXOrdenesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_AlmacenesPorUsuario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        object grid_UsuariosXOrdenesDBTableView1Column1: TcxGridDBColumn
          Caption = 'Almacenes'
          DataBinding.FieldName = 'sNombreAlmacen'
        end
      end
      object grid_UsuariosXOrdenesLevel1: TcxGridLevel
        GridView = grid_UsuariosXOrdenesDBTableView1
      end
    end
  end
  object TreeUsuarios: TTreeView
    Left = 1
    Top = 0
    Width = 192
    Height = 438
    Hint = 'Usuarios'
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
    OnClick = TreeUsuariosClick
  end
  object grDerechos: TGroupBox
    Left = 378
    Top = 290
    Width = 88
    Height = 41
    Caption = 'Derechos'
    TabOrder = 5
    Visible = False
    object chEscritura: TCheckBox
      Left = 13
      Top = 18
      Width = 65
      Height = 17
      Caption = 'Escritura'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
  end
  object chkTodos: TCheckBox
    Left = 393
    Top = 88
    Width = 68
    Height = 17
    Caption = 'Todos'
    TabOrder = 6
  end
  object ds_Almacenes: TDataSource
    AutoEdit = False
    DataSet = Almacenes
    Left = 211
    Top = 72
  end
  object ds_AlmacenesPorUsuario: TDataSource
    AutoEdit = False
    DataSet = AlmacenesPorUsuario
    Left = 395
    Top = 16
  end
  object Almacenes: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM almacenes;')
    Params = <>
    Left = 248
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
  object AlmacenesPorUsuario: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM almacenesporusuario WHERE sIdUsuario = :Usuario;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 432
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
    object AlmacenesPorUsuarioiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object AlmacenesPorUsuariosIdUsuario: TStringField
      FieldName = 'sIdUsuario'
      Size = 100
    end
    object AlmacenesPorUsuariosIdAlmacen: TStringField
      FieldName = 'sIdAlmacen'
      Size = 100
    end
    object AlmacenesPorUsuariosNombreAlmacen: TStringField
      FieldKind = fkLookup
      FieldName = 'sNombreAlmacen'
      LookupDataSet = Almacenes
      LookupKeyFields = 'sIdAlmacen'
      LookupResultField = 'sDescripcion'
      KeyFields = 'sIdAlmacen'
      Size = 50
      Lookup = True
    end
  end
end
