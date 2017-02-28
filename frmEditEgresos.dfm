object frm_EditEgresos: Tfrm_EditEgresos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Editar Caratula de Egresos'
  ClientHeight = 406
  ClientWidth = 823
  Color = 15000804
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label14: TLabel
    Left = 362
    Top = 331
    Width = 39
    Height = 15
    Caption = 'Estado'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 8
    Top = 358
    Width = 39
    Height = 15
    Caption = 'Ciudad'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 8
    Top = 162
    Width = 44
    Height = 15
    Caption = 'Importe'
    FocusControl = tdImporteTotal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 4
    Top = 29
    Width = 34
    Height = 15
    Caption = '(Folio)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 4
    Top = 109
    Width = 62
    Height = 15
    Caption = 'Referencia'
    FocusControl = tdbsReferencia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 4
    Top = 76
    Width = 44
    Height = 15
    Caption = 'Cargo a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object btnBusca: TSpeedButton
    Left = 222
    Top = 105
    Width = 33
    Height = 23
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888800000888800000880F00088880F000880F00088880F0008800000088000
      0008800F000000F00008800F000800F00008800F000800F00008880000000000
      00888880F00880F008888880000880000888888800088000888888880F0880F0
      8888888800088000888888888888888888888888888888888888}
    OnClick = btnBuscaClick
  end
  object Label9: TLabel
    Left = 362
    Top = 59
    Width = 94
    Height = 15
    Caption = 'Cuenta Bancaria'
    FocusControl = tdbsReferencia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 8
    Top = 134
    Width = 59
    Height = 15
    Caption = 'Proveedor'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 362
    Top = 111
    Width = 22
    Height = 15
    Caption = 'RFC'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 8
    Top = 331
    Width = 73
    Height = 15
    Caption = 'Razon Social'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 362
    Top = 273
    Width = 52
    Height = 15
    Caption = 'Domicilio'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 8
    Top = 379
    Width = 16
    Height = 15
    Caption = 'CP'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 362
    Top = 363
    Width = 48
    Height = 15
    Caption = 'Telefono'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 8
    Top = 270
    Width = 68
    Height = 15
    Caption = 'Descripci'#243'n'
    FocusControl = tmDescripcion
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 362
    Top = 79
    Width = 73
    Height = 15
    Caption = 'No. de Orden'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 116
    Top = 29
    Width = 34
    Height = 15
    Caption = 'Fecha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object tdbiIdFolio: TDBEdit
    Left = 4
    Top = 3
    Width = 90
    Height = 23
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'iIdFolio'
    DataSource = dszQEgresos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object tdbsReferencia: TDBEdit
    Left = 71
    Top = 76
    Width = 184
    Height = 23
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sReferencia'
    DataSource = dszQEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object tdbsIdArea: TDBLookupComboBox
    Left = 4
    Top = 50
    Width = 285
    Height = 23
    Color = clWhite
    DataField = 'sIdArea'
    DataSource = dszQEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sIdArea'
    ListField = 'sDescripcion'
    ListSource = dszQAreas
    ParentFont = False
    TabOrder = 1
  end
  object tsIdCuentaBancaria: TDBLookupComboBox
    Left = 480
    Top = 51
    Width = 340
    Height = 23
    Color = clWhite
    DataField = 'sIdNumeroCuenta'
    DataSource = dszQEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sIdNumeroCuenta'
    ListField = 'sNombreCuenta'
    ListSource = dszQCuentasBancarias
    ParentFont = False
    TabOrder = 2
  end
  object tdImporteTotal: TDBEdit
    Left = 73
    Top = 134
    Width = 151
    Height = 23
    Color = clWhite
    DataField = 'dImporteTotal'
    DataSource = dszQEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit1: TDBEdit
    Left = 71
    Top = 105
    Width = 145
    Height = 23
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sIdProveedor'
    DataSource = dszQEgresos
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 480
    Top = 108
    Width = 194
    Height = 23
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sRFC'
    DataSource = dszQEgresos
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 82
    Top = 270
    Width = 255
    Height = 23
    Color = clWhite
    DataField = 'sRazonSocial'
    DataSource = dszQEgresos
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 420
    Top = 270
    Width = 352
    Height = 23
    Color = clWhite
    DataField = 'sDomicilio'
    DataSource = dszQEgresos
    TabOrder = 9
  end
  object DBEdit5: TDBEdit
    Left = 87
    Top = 327
    Width = 250
    Height = 23
    Color = clWhite
    DataField = 'sCiudad'
    DataSource = dszQEgresos
    TabOrder = 10
  end
  object DBEdit6: TDBEdit
    Left = 87
    Top = 355
    Width = 79
    Height = 23
    Color = clWhite
    DataField = 'sCP'
    DataSource = dszQEgresos
    TabOrder = 13
  end
  object DBEdit7: TDBEdit
    Left = 420
    Top = 327
    Width = 352
    Height = 23
    Color = clWhite
    DataField = 'sEstado'
    DataSource = dszQEgresos
    TabOrder = 11
  end
  object DBEdit8: TDBEdit
    Left = 420
    Top = 356
    Width = 352
    Height = 23
    Color = clWhite
    DataField = 'sTelefono'
    DataSource = dszQEgresos
    TabOrder = 12
  end
  object tmDescripcion: TDBMemo
    Left = 8
    Top = 183
    Width = 817
    Height = 81
    Color = clWhite
    DataField = 'mDescripcion'
    DataSource = dszQEgresos
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object dbNumeroOrden: TDBLookupComboBox
    Left = 480
    Top = 80
    Width = 285
    Height = 23
    Color = clWhite
    DataField = 'sNumeroOrden'
    DataSource = dszQEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sIdArea'
    ListField = 'sDescripcion'
    ListSource = dszQAreas
    ParentFont = False
    TabOrder = 14
  end
  object dszQEgresos: TDataSource
    DataSet = zQEgresos
    Left = 483
    Top = 14
  end
  object zQEgresos: TZQuery
    Connection = connection.zConnection
    BeforePost = zQEgresosBeforePost
    SQL.Strings = (
      
        'select * from con_tesoreriaegresos where dIdFecha = :Fecha And i' +
        'IdFolio = :Folio '
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end>
    Left = 456
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end>
    object zQEgresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zQEgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQEgresossTipoMovimiento: TStringField
      DisplayLabel = 'Movimiento'
      FieldName = 'sTipoMovimiento'
      Size = 8
    end
    object zQEgresossIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
    end
    object zQEgresossReferencia: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'sReferencia'
      Required = True
      Size = 15
    end
    object zQEgresossIdArea: TStringField
      FieldName = 'sIdArea'
      Size = 8
    end
    object zQEgresosdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      Required = True
      currency = True
    end
    object zQEgresossIdProveedor: TStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'sIdProveedor'
      OnChange = zQEgresossIdProveedorChange
      Size = 8
    end
    object zQEgresossRFC: TStringField
      DisplayLabel = 'RFC'
      FieldName = 'sRFC'
      ReadOnly = True
      Size = 15
    end
    object zQEgresossRazonSocial: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'sRazonSocial'
      ReadOnly = True
      Size = 255
    end
    object zQEgresossDomicilio: TStringField
      DisplayLabel = 'Domicilio'
      FieldName = 'sDomicilio'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object zQEgresossCiudad: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'sCiudad'
      ReadOnly = True
      Size = 50
    end
    object zQEgresossCP: TStringField
      DisplayLabel = 'CP'
      FieldName = 'sCP'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object zQEgresossEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'sEstado'
      ReadOnly = True
      Size = 30
    end
    object zQEgresossTelefono: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'sTelefono'
      ReadOnly = True
      Required = True
    end
    object zQEgresoslComprobado: TStringField
      FieldName = 'lComprobado'
      Required = True
      Size = 2
    end
    object zQEgresossStatus: TStringField
      FieldName = 'sStatus'
      Size = 9
    end
    object zQEgresosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zQEgresossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 60
    end
  end
  object zQAreas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_areas order by sDescripcion')
    Params = <>
    Left = 600
    Top = 13
    object zQAreassIdArea: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object zQAreassDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object zQAreassMascara: TStringField
      FieldName = 'sMascara'
      Required = True
      Size = 4
    end
    object zQAreassTipoArea: TStringField
      FieldName = 'sTipoArea'
      Required = True
      Size = 12
    end
  end
  object dszQAreas: TDataSource
    AutoEdit = False
    DataSet = zQAreas
    Left = 632
    Top = 5
  end
  object dszQCuentasBancarias: TDataSource
    DataSet = zQCuentasBancarias
    Left = 560
    Top = 12
  end
  object zQCuentasBancarias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_cuentasbancarias order by sNombreCuenta')
    Params = <>
    Left = 528
    Top = 15
    object zQCuentasBancariassIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zQCuentasBancariassNombreCuenta: TStringField
      FieldName = 'sNombreCuenta'
      Required = True
      Size = 50
    end
    object zQCuentasBancariassFirmanCuenta: TStringField
      FieldName = 'sFirmanCuenta'
      Required = True
      Size = 100
    end
    object strngfldQCuentasBancariassFolioCheque: TStringField
      FieldName = 'sFolioCheque'
      Size = 12
    end
    object strngfldQCuentasBancariassFolioSinCheque: TStringField
      FieldName = 'sFolioSinCheque'
      Size = 12
    end
  end
  object zQProveedores: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from proveedores'
      'where sIdProveedor = :Proveedor')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 403
    Top = 7
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
    end
    object zQProveedoreslStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 8
    end
  end
  object dszQOrdenesdeTrabajo: TDataSource
    DataSet = zQOrdenesdeTrabajo
    Left = 341
    Top = 13
  end
  object zQOrdenesdeTrabajo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sDescripcionCorta, sNumeroOrden'
      'from ordenesdetrabajo Order By sDescripcionCorta')
    Params = <>
    Left = 309
    Top = 13
  end
  object zCommand: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sum(dImporte) as dPagado '
      'from tesoreriapegresos '
      
        'where dIdFecha = :Fecha and iIdFolio = :folio group by dIdFecha,' +
        ' iIdFolio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    Left = 244
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
  end
end
