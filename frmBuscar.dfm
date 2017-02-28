object frm_Buscar: Tfrm_Buscar
  Left = 0
  Top = 0
  BorderIcons = [biHelp]
  Caption = 'Busqueda'
  ClientHeight = 338
  ClientWidth = 771
  Color = 13683905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label9: TLabel
    Left = 10
    Top = 10
    Width = 39
    Height = 15
    Caption = 'Buscar'
    Transparent = True
  end
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
  object tsBuscar: TEdit
    Left = 56
    Top = 6
    Width = 481
    Height = 23
    Hint = 'Criterio'
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 0
    OnChange = tsBuscarChange
    OnKeyPress = tsBuscarKeyPress
  end
  object cbBusqueda: TComboBox
    Left = 540
    Top = 6
    Width = 230
    Height = 22
    Hint = 'Buscar por nomble completo'
    Style = csOwnerDrawFixed
    Color = clWhite
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 1
    Text = 'Buscar por Nombre Completo'
    OnChange = cbBusquedaChange
    Items.Strings = (
      'Buscar por Nombre Completo'
      'Buscar por A. Paterno'
      'Buscar por A. Materno'
      'Buscar por Domicilio')
  end
  object GridClientes: TDBGrid
    Left = 1
    Top = 31
    Width = 769
    Height = 269
    Hint = 'CTRL + SUPR para seleccionar un usuario'
    TabStop = False
    Align = alCustom
    Color = clWhite
    Ctl3D = True
    DataSource = ds_buscaobjeto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDblClick = GridClientesDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'iIdUsuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sNombre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sAP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sAM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sDomicilio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sTelefono'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sCP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sIdComunidad'
        Visible = True
      end>
  end
  object btnSeleccionar: TButton
    Left = 336
    Top = 305
    Width = 104
    Height = 25
    Hint = 'Selecciona un registro'
    Caption = '&Seleccionar'
    Default = True
    TabOrder = 3
    OnClick = btnSeleccionarClick
  end
  object btnSalir: TButton
    Left = 446
    Top = 305
    Width = 104
    Height = 25
    Hint = 'Cerrar la ventana'
    Cancel = True
    Caption = 'Salir'
    ModalResult = 2
    TabOrder = 4
    OnClick = btnSalirClick
  end
  object BuscaObjeto: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select * from con_catalogodeusuarios where sDomicilio Like :Para' +
        'metro '
      'Order By sNombreCompleto, sDomicilio')
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
    object BuscaObjetoiIdUsuario: TIntegerField
      DisplayLabel = 'Id. Usuario'
      FieldName = 'iIdUsuario'
    end
    object BuscaObjetosNombre: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 34
      FieldName = 'sNombre'
      Required = True
      Size = 50
    end
    object BuscaObjetosAP: TStringField
      DisplayLabel = 'A. Paterno'
      DisplayWidth = 36
      FieldName = 'sAP'
      Required = True
      Size = 50
    end
    object BuscaObjetosAM: TStringField
      DisplayLabel = 'A. Materno'
      DisplayWidth = 31
      FieldName = 'sAM'
      Required = True
      Size = 50
    end
    object BuscaObjetosDomicilio: TStringField
      DisplayLabel = 'Domicilio'
      DisplayWidth = 48
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object BuscaObjetosTelefono: TStringField
      DisplayLabel = 'Telefono'
      DisplayWidth = 24
      FieldName = 'sTelefono'
      Required = True
    end
    object BuscaObjetosCP: TStringField
      DisplayLabel = 'C.P.'
      DisplayWidth = 6
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object BuscaObjetosIdComunidad: TStringField
      DisplayLabel = 'Comunidad'
      FieldName = 'sIdComunidad'
      ReadOnly = True
      Size = 8
    end
    object BuscaObjetosNombreCompleto: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 60
    end
  end
  object ds_buscaobjeto: TDataSource
    AutoEdit = False
    DataSet = BuscaObjeto
    Left = 484
    Top = 244
  end
end
