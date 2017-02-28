object frmOrdenesxUsuario: TfrmOrdenesxUsuario
  Left = 192
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asignaci'#243'n de Frentes de Trabajo a Usuarios'
  ClientHeight = 415
  ClientWidth = 719
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
    Left = 410
    Top = 127
    Width = 93
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
    Left = 410
    Top = 168
    Width = 93
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
    Left = 199
    Top = 8
    Width = 209
    Height = 399
    Caption = 'Listado de Frentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object grid_contratos: TcxGrid
      Left = 3
      Top = 16
      Width = 202
      Height = 393
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object grid_contratosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_Contratos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object Grid__colcontratos: TcxGridDBColumn
          Caption = 'Contrato'
          DataBinding.FieldName = 'sContrato'
          Width = 94
        end
        object Grid__colFrente: TcxGridDBColumn
          Caption = 'Frente'
          DataBinding.FieldName = 'sNumeroOrden'
          Width = 88
        end
      end
      object grid_contratosLevel1: TcxGridLevel
        GridView = grid_contratosDBTableView1
      end
    end
  end
  object grUsuarios: TGroupBox
    Left = 506
    Top = 8
    Width = 209
    Height = 396
    Caption = 'Frentes Asignados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object grid_usuariosxOrdenes: TcxGrid
      Left = 3
      Top = 16
      Width = 250
      Height = 377
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object grid_usuariosxOrdenesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_OrdenesxUsuario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        object Grid__ColContrato: TcxGridDBColumn
          Caption = 'Contratos'
          DataBinding.FieldName = 'sContrato'
          Width = 116
        end
        object Grid__colfrente1: TcxGridDBColumn
          Caption = 'Frentes'
          DataBinding.FieldName = 'sNumeroOrden'
          Width = 85
        end
      end
      object grid_usuariosxOrdenesLevel1: TcxGridLevel
        GridView = grid_usuariosxOrdenesDBTableView1
      end
    end
  end
  object TreeUsuarios: TTreeView
    Left = 1
    Top = 0
    Width = 192
    Height = 417
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
    Left = 413
    Top = 290
    Width = 92
    Height = 41
    Caption = 'Derechos de Asignaci'#243'n'
    TabOrder = 5
    Visible = False
    object chEscritura: TCheckBox
      Left = 24
      Top = 21
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
    Left = 430
    Top = 88
    Width = 64
    Height = 17
    Caption = 'Todos'
    TabOrder = 6
  end
  object ds_Contratos: TDataSource
    AutoEdit = False
    DataSet = Ordenes
    Left = 435
    Top = 224
  end
  object ds_OrdenesxUsuario: TDataSource
    AutoEdit = False
    DataSet = OrdenesxUsuario
    Left = 435
    Top = 48
  end
  object Ordenes: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select sContrato, sNumeroOrden from ordenesdetrabajo '
      'order by sContrato, sNumeroOrden')
    Params = <>
    Left = 464
    Top = 224
  end
  object OrdenesxUsuario: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * From ordenesxusuario '
      'Where sIdUsuario =:usuario Order By sNumeroOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 464
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
  end
end
