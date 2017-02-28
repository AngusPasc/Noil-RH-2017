object frm_BuscarProveedor: Tfrm_BuscarProveedor
  Left = 0
  Top = 0
  BorderIcons = [biHelp]
  Caption = 'Busqueda'
  ClientHeight = 338
  ClientWidth = 770
  Color = 13683905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object btnInserta: TSpeedButton
    Left = 226
    Top = 305
    Width = 104
    Height = 25
    Hint = 'Insertar'
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000F0000000E0000000100
      04000000000070000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8880888888888888888088888888888888808888880008888880888888070888
      8880888888070888888088800007000088808880777777708880888000070000
      8880888888070888888088888807088888808888880008888880888888888888
      88808888888888888880}
    OnClick = btnInsertaClick
  end
  object btnSeleccionar: TButton
    Left = 336
    Top = 305
    Width = 104
    Height = 25
    Hint = 'Seleccionar un registro'
    Caption = 'Seleccionar'
    Default = True
    TabOrder = 0
    OnClick = btnSeleccionarClick
  end
  object btnSalir: TButton
    Left = 446
    Top = 305
    Width = 104
    Height = 25
    Hint = 'Cerrar Ventana'
    Cancel = True
    Caption = 'Salir'
    ModalResult = 2
    TabOrder = 1
    OnClick = btnSalirClick
  end
  object GridClientes: TcxGrid
    Left = 0
    Top = -1
    Width = 770
    Height = 300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object GridClientesDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_buscaobjeto
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      object GridClientesDBTableView1Column1: TcxGridDBColumn
        Caption = 'Id Proveedor'
        DataBinding.FieldName = 'sIdProveedor'
        Width = 70
      end
      object GridClientesDBTableView1Column2: TcxGridDBColumn
        Caption = 'RFC'
        DataBinding.FieldName = 'sRFC'
        Width = 113
      end
      object GridClientesDBTableView1Column3: TcxGridDBColumn
        Caption = 'Razon Social'
        DataBinding.FieldName = 'sRazonSocial'
        Width = 148
      end
      object GridClientesDBTableView1Column4: TcxGridDBColumn
        Caption = 'Domicilio'
        DataBinding.FieldName = 'sDomicilio'
        Width = 180
      end
      object GridClientesDBTableView1Column5: TcxGridDBColumn
        Caption = 'Ciudad'
        DataBinding.FieldName = 'sCiudad'
        Width = 105
      end
      object GridClientesDBTableView1Column6: TcxGridDBColumn
        Caption = 'CP'
        DataBinding.FieldName = 'sCP'
        Width = 60
      end
      object GridClientesDBTableView1Column7: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'sEstado'
        Width = 99
      end
      object GridClientesDBTableView1Column8: TcxGridDBColumn
        Caption = 'Telefono'
        DataBinding.FieldName = 'sTelefono'
        Width = 73
      end
      object GridClientesDBTableView1Column9: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'lStatus'
        Width = 77
      end
    end
    object GridClientesLevel1: TcxGridLevel
      GridView = GridClientesDBTableView1
    end
  end
  object BuscaObjeto: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from proveedores where sDomicilio Like :Parametro '
      'Order By sRazonSocial, sDomicilio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Parametro'
        ParamType = ptUnknown
      end>
    Left = 456
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Parametro'
        ParamType = ptUnknown
      end>
    object BuscaObjetosIdProveedor: TStringField
      DisplayWidth = 16
      FieldName = 'sIdProveedor'
      Required = True
      Size = 16
    end
    object BuscaObjetosRFC: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object BuscaObjetosRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 50
    end
    object BuscaObjetosDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 30
    end
    object BuscaObjetosCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 30
    end
    object BuscaObjetosCP: TStringField
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object BuscaObjetosEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object BuscaObjetosTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 30
    end
    object BuscaObjetolStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 8
    end
  end
  object ds_buscaobjeto: TDataSource
    AutoEdit = False
    DataSet = BuscaObjeto
    Left = 484
    Top = 244
  end
end
