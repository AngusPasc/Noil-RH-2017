object frm_NuevoUsuario: Tfrm_NuevoUsuario
  Left = 0
  Top = 0
  BorderIcons = [biHelp]
  Caption = 'Registro de Usuarios'
  ClientHeight = 367
  ClientWidth = 531
  Color = 13683905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 51
    Height = 14
    Caption = 'Id. Usuario'
    FocusControl = tiIdUSuario
  end
  object Label2: TLabel
    Left = 8
    Top = 128
    Width = 37
    Height = 14
    Caption = 'Nombre'
    FocusControl = tsNombre
  end
  object Label3: TLabel
    Left = 8
    Top = 49
    Width = 51
    Height = 14
    Caption = 'A. Paterno'
    FocusControl = tsAP
  end
  object Label4: TLabel
    Left = 8
    Top = 89
    Width = 53
    Height = 14
    Caption = 'A. Materno'
    FocusControl = tsAM
  end
  object Label5: TLabel
    Left = 8
    Top = 166
    Width = 41
    Height = 14
    Caption = 'Domicilio'
    FocusControl = tsDomicilio
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 41
    Height = 14
    Caption = 'Telefono'
    FocusControl = tsTelefono
  end
  object Label7: TLabel
    Left = 8
    Top = 248
    Width = 18
    Height = 14
    Caption = 'C.P.'
    FocusControl = tsCP
  end
  object Label8: TLabel
    Left = 8
    Top = 288
    Width = 67
    Height = 14
    Caption = 'Id. Comunidad'
  end
  object btnGrabar: TButton
    Left = 82
    Top = 337
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 8
    OnClick = btnGrabarClick
  end
  object btnSalir: TButton
    Left = 156
    Top = 337
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Salir'
    ModalResult = 3
    TabOrder = 9
    OnClick = btnSalirClick
  end
  object tiIdUSuario: TDBEdit
    Left = 8
    Top = 24
    Width = 144
    Height = 22
    Color = 13683905
    DataField = 'iIdUsuario'
    DataSource = dszQCatalogodeUsuarios
    Enabled = False
    TabOrder = 0
  end
  object tsNombre: TDBEdit
    Left = 8
    Top = 144
    Width = 284
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sNombre'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 3
  end
  object tsAP: TDBEdit
    Left = 8
    Top = 61
    Width = 284
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sAP'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 1
  end
  object tsAM: TDBEdit
    Left = 8
    Top = 105
    Width = 284
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sAM'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 2
  end
  object tsDomicilio: TDBEdit
    Left = 8
    Top = 184
    Width = 521
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sDomicilio'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 4
  end
  object tsTelefono: TDBEdit
    Left = 8
    Top = 224
    Width = 284
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sTelefono'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 5
  end
  object tsCP: TDBEdit
    Left = 8
    Top = 264
    Width = 74
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sCP'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 6
  end
  object tdbsLocalidad: TDBLookupComboBox
    Left = 8
    Top = 308
    Width = 521
    Height = 23
    Color = 11009259
    DataField = 'sIdComunidad'
    DataSource = dszQCatalogodeUsuarios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sIdComunidad'
    ListField = 'sNombreComunidad'
    ListSource = dszQLocalidad
    ParentFont = False
    TabOrder = 7
  end
  object btnEliminar: TButton
    Left = 8
    Top = 337
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 10
    OnClick = btnEliminarClick
  end
  object dszQCatalogodeUsuarios: TDataSource
    DataSet = zQCatalogodeUsuarios
    Left = 443
    Top = 57
  end
  object zQCatalogodeUsuarios: TZQuery
    Connection = connection.zConnection
    AfterInsert = zQCatalogodeUsuariosAfterInsert
    SQL.Strings = (
      'select * from catalogodeusuarios '
      'where iIdUsuario = :Usuario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
    Left = 408
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
    object zQCatalogodeUsuariosiIdUsuario: TIntegerField
      DisplayLabel = 'Id. Usuario'
      FieldName = 'iIdUsuario'
    end
    object zQCatalogodeUsuariossNombre: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'sNombre'
      Required = True
    end
    object zQCatalogodeUsuariossAP: TStringField
      DisplayLabel = 'A. Paterno'
      FieldName = 'sAP'
      Required = True
    end
    object zQCatalogodeUsuariossAM: TStringField
      DisplayLabel = 'A. Materno'
      FieldName = 'sAM'
      Required = True
    end
    object zQCatalogodeUsuariossNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 60
    end
    object zQCatalogodeUsuariossDomicilio: TStringField
      DisplayLabel = 'Domicilio'
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zQCatalogodeUsuariossTelefono: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'sTelefono'
      Required = True
    end
    object zQCatalogodeUsuariossCP: TStringField
      DisplayLabel = 'C.P.'
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object zQCatalogodeUsuariossIdComunidad: TStringField
      DisplayLabel = 'Id. Comunidad'
      FieldName = 'sIdComunidad'
      Size = 8
    end
  end
  object dszQLocalidad: TDataSource
    DataSet = zQLocalidad
    Left = 424
    Top = 128
  end
  object zQLocalidad: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sIdComunidad, sNombreComunidad from comunidades order by ' +
        'sNombreComunidad')
    Params = <>
    Left = 392
    Top = 120
    object zQLocalidadsIdComunidad: TStringField
      FieldName = 'sIdComunidad'
      Required = True
      Size = 8
    end
    object zQLocalidadsNombreComunidad: TStringField
      FieldName = 'sNombreComunidad'
      Required = True
      Size = 50
    end
  end
  object zqCommand: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 320
    Top = 183
  end
end
