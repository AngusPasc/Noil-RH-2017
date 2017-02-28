object frmModulosxUsuario: TfrmModulosxUsuario
  Left = 198
  Top = 93
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asignaci'#243'n de Modulos A Usuarios'
  ClientHeight = 465
  ClientWidth = 775
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
    Left = 464
    Top = 126
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
    Left = 464
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
    Left = 220
    Top = 0
    Width = 241
    Height = 457
    Caption = 'Listado de Modulos'
    TabOrder = 2
    object grid_modulos: TcxGrid
      Left = 4
      Top = 16
      Width = 250
      Height = 438
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object dbg_modulosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_Modulos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object Grid__colcontrato: TcxGridDBColumn
          Caption = 'Modulos'
          DataBinding.FieldName = 'sDescripcion'
          Width = 218
        end
      end
      object dbg_modulosLevel1: TcxGridLevel
        GridView = dbg_modulosDBTableView1
      end
    end
  end
  object grUsuarios: TGroupBox
    Left = 561
    Top = 0
    Width = 210
    Height = 457
    Caption = 'Modulos Asignados'
    TabOrder = 3
    object grid_ModulosXUsuario: TcxGrid
      Left = 5
      Top = 16
      Width = 202
      Height = 441
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object dbg_ModulosXUsuarioDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_ModulosxUsuario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object Grid__ColModulo: TcxGridDBColumn
          Caption = 'Modulos'
          DataBinding.FieldName = 'sDescripcion'
          Width = 183
        end
      end
      object dbg_ModulosXUsuarioLevel1: TcxGridLevel
        GridView = dbg_ModulosXUsuarioDBTableView1
      end
    end
  end
  object TreeUsuarios: TTreeView
    Left = 1
    Top = 0
    Width = 217
    Height = 457
    Hint = 'Usuarios.'
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
  object chkTodos: TCheckBox
    Left = 485
    Top = 85
    Width = 58
    Height = 24
    Caption = 'Todos'
    TabOrder = 5
  end
  object ds_Modulos: TDataSource
    AutoEdit = False
    DataSet = qrymodulos
    Left = 483
    Top = 264
  end
  object ds_ModulosxUsuario: TDataSource
    AutoEdit = False
    DataSet = qryUnion
    Left = 483
    Top = 304
  end
  object qrymodulos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select idModulo, sDescripcion from nuc_modulos order by sDescrip' +
        'cion')
    Params = <>
    Left = 520
    Top = 264
  end
  object qryModulosxUsuario: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select * From modulosxusuario Where sIdUsuario =:usuario Order B' +
        'y iIdModulo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 520
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
  end
  object qryUnion: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select m.iIdModulo, n.sDescripcion From nuc_modulos n'
      'Inner Join modulosxusuario m On (n.idModulo=m.iIdModulo)'
      
        'Where m.sIdUsuario =:usuario and m.sContrato =:Contrato Order By' +
        ' n.sDescripcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 520
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
end
