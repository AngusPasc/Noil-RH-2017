object frm_NuevoProveedor: Tfrm_NuevoProveedor
  Left = 0
  Top = 0
  BorderIcons = [biHelp]
  Caption = 'Registro de Proveedores'
  ClientHeight = 406
  ClientWidth = 510
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
    Top = 0
    Width = 50
    Height = 14
    Caption = 'Proveedor'
    FocusControl = tsIdProveedor
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 20
    Height = 14
    Caption = 'RFC'
    FocusControl = tsRFC
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 63
    Height = 14
    Caption = 'Razon Social'
    FocusControl = tsRazonSocial
  end
  object Label4: TLabel
    Left = 8
    Top = 124
    Width = 41
    Height = 14
    Caption = 'Domicilio'
    FocusControl = tsDomicilio
  end
  object Label5: TLabel
    Left = 8
    Top = 164
    Width = 33
    Height = 14
    Caption = 'Ciudad'
    FocusControl = tsCiudad
  end
  object Label6: TLabel
    Left = 8
    Top = 204
    Width = 13
    Height = 14
    Caption = 'CP'
    FocusControl = tsCP
  end
  object Label7: TLabel
    Left = 8
    Top = 248
    Width = 33
    Height = 14
    Caption = 'Estado'
    FocusControl = tsEstado
  end
  object Label8: TLabel
    Left = 8
    Top = 288
    Width = 41
    Height = 14
    Caption = 'Telefono'
    FocusControl = tsTelefono
  end
  object Label9: TLabel
    Left = 8
    Top = 328
    Width = 81
    Height = 14
    Caption = 'Monto de Credito'
    Color = 13683905
    FocusControl = tdMontoCredito
    ParentColor = False
  end
  object btnGrabar: TButton
    Left = 178
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 9
    OnClick = btnGrabarClick
  end
  object btnSalir: TButton
    Left = 252
    Top = 373
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Salir'
    ModalResult = 3
    TabOrder = 10
    OnClick = btnSalirClick
  end
  object tsIdProveedor: TDBEdit
    Left = 8
    Top = 16
    Width = 116
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sIdProveedor'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 0
  end
  object tsRFC: TDBEdit
    Left = 8
    Top = 56
    Width = 214
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sRFC'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 1
  end
  object tsRazonSocial: TDBEdit
    Left = 8
    Top = 96
    Width = 500
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sRazonSocial'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 2
  end
  object tsDomicilio: TDBEdit
    Left = 8
    Top = 140
    Width = 424
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sDomicilio'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 3
  end
  object tsCiudad: TDBEdit
    Left = 8
    Top = 180
    Width = 424
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sCiudad'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 4
  end
  object tsCP: TDBEdit
    Left = 8
    Top = 220
    Width = 74
    Height = 22
    Color = 11009259
    DataField = 'sCP'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 5
  end
  object tsEstado: TDBEdit
    Left = 8
    Top = 264
    Width = 424
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sEstado'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 6
  end
  object tsTelefono: TDBEdit
    Left = 8
    Top = 304
    Width = 424
    Height = 22
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sTelefono'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 7
  end
  object tdMontoCredito: TDBEdit
    Left = 8
    Top = 344
    Width = 144
    Height = 22
    Color = 11009259
    DataField = 'dMontoCredito'
    DataSource = dszQCatalogodeUsuarios
    TabOrder = 8
  end
  object dszQCatalogodeUsuarios: TDataSource
    DataSet = zQProveedores
    Left = 443
    Top = 57
  end
  object zQProveedores: TZQuery
    Connection = connection.zConnection
    AfterInsert = zQProveedoresAfterInsert
    SQL.Strings = (
      'select * from proveedores'
      'where sIdProveedor = :Proveedor')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    Left = 408
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    object zQProveedoressIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zQProveedoressRFC: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object zQProveedoressRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zQProveedoressDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zQProveedoressCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object zQProveedoressCP: TStringField
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object zQProveedoressEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object zQProveedoressTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 30
    end
    object zQProveedoresdMontoCredito: TFloatField
      FieldName = 'dMontoCredito'
      Required = True
      currency = True
    end
    object zQProveedoreslStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 8
    end
  end
  object zqCommand: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 320
    Top = 183
  end
end
