object frm_Proveedores: Tfrm_Proveedores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Catalogo de Proveedores'
  ClientHeight = 589
  ClientWidth = 884
  Color = 13683905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 320
    Width = 50
    Height = 13
    Caption = 'Proveedor'
    FocusControl = tsIdProveedor
  end
  object Label2: TLabel
    Left = 3
    Top = 343
    Width = 20
    Height = 13
    Caption = 'RFC'
    FocusControl = tsRFC
  end
  object Label3: TLabel
    Left = 3
    Top = 366
    Width = 60
    Height = 13
    Caption = 'Razon Social'
    FocusControl = tsRazonSocial
  end
  object Label4: TLabel
    Left = 3
    Top = 411
    Width = 40
    Height = 13
    Caption = 'Domicilio'
    FocusControl = tsDomicilio
  end
  object Label5: TLabel
    Left = 3
    Top = 434
    Width = 33
    Height = 13
    Caption = 'Ciudad'
    FocusControl = tsCiudad
  end
  object Label6: TLabel
    Left = 3
    Top = 452
    Width = 13
    Height = 13
    Caption = 'CP'
    FocusControl = tsCP
  end
  object Label7: TLabel
    Left = 3
    Top = 480
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = tsEstado
  end
  object Label8: TLabel
    Left = 3
    Top = 503
    Width = 42
    Height = 13
    Caption = 'Telefono'
    FocusControl = tsTelefono
  end
  object Label9: TLabel
    Left = 3
    Top = 548
    Width = 83
    Height = 13
    Caption = 'Monto de Credito'
    FocusControl = tdMontoCredito
  end
  object Label10: TLabel
    Left = 3
    Top = 567
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label11: TLabel
    Left = 3
    Top = 526
    Width = 67
    Height = 13
    Caption = 'Cuenta Banco'
    FocusControl = DBEdit1
  end
  object Label12: TLabel
    Left = 3
    Top = 385
    Width = 52
    Height = 13
    Caption = 'Propietario'
    FocusControl = tsRazonSocial
  end
  inline frmBarra1: TfrmBarra
    Left = 8
    Top = 3
    Width = 90
    Height = 214
    VertScrollBar.Style = ssHotTrack
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 13
    ExplicitLeft = 8
    ExplicitTop = 3
    ExplicitWidth = 90
    ExplicitHeight = 214
    inherited btnAdd: TBitBtn
      OnClick = frmBarra1btnAddClick
    end
    inherited btnEdit: TBitBtn
      OnClick = frmBarra1btnEditClick
    end
    inherited btnDelete: TBitBtn
      OnClick = frmBarra1btnDeleteClick
    end
    inherited btnExit: TBitBtn
      OnClick = frmBarra1btnExitClick
    end
    inherited btnPost: TBitBtn
      OnClick = frmBarra1btnPostClick
    end
    inherited btnCancel: TBitBtn
      OnClick = frmBarra1btnCancelClick
    end
  end
  object grid_catProveedores: TDBGrid
    Left = 104
    Top = 30
    Width = 876
    Height = 277
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Color = 13038300
    Ctl3D = True
    DataSource = dszQProveedores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'sIdProveedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sRFC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sRazonSocial'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sDomicilio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sCiudad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sCP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sEstado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sTelefono'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dMontoCredito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lStatus'
        Visible = True
      end>
  end
  object tsIdProveedor: TDBEdit
    Left = 91
    Top = 313
    Width = 199
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sIdProveedor'
    DataSource = dszQProveedores
    TabOrder = 0
  end
  object tsRFC: TDBEdit
    Left = 91
    Top = 336
    Width = 199
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sRFC'
    DataSource = dszQProveedores
    TabOrder = 1
  end
  object tsRazonSocial: TDBEdit
    Left = 91
    Top = 358
    Width = 635
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sRazonSocial'
    DataSource = dszQProveedores
    TabOrder = 2
  end
  object tsDomicilio: TDBEdit
    Left = 91
    Top = 403
    Width = 635
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sDomicilio'
    DataSource = dszQProveedores
    TabOrder = 4
  end
  object tsCiudad: TDBEdit
    Left = 91
    Top = 426
    Width = 635
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sCiudad'
    DataSource = dszQProveedores
    TabOrder = 5
  end
  object tsCP: TDBEdit
    Left = 91
    Top = 450
    Width = 199
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sCP'
    DataSource = dszQProveedores
    TabOrder = 6
  end
  object tsEstado: TDBEdit
    Left = 91
    Top = 473
    Width = 635
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sEstado'
    DataSource = dszQProveedores
    TabOrder = 7
  end
  object tsTelefono: TDBEdit
    Left = 91
    Top = 496
    Width = 635
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sTelefono'
    DataSource = dszQProveedores
    TabOrder = 8
  end
  object tdMontoCredito: TDBEdit
    Left = 91
    Top = 541
    Width = 199
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'dMontoCredito'
    DataSource = dszQProveedores
    TabOrder = 10
  end
  object tlStatus: TDBComboBox
    Left = 91
    Top = 564
    Width = 135
    Height = 21
    Color = 11009259
    DataField = 'lStatus'
    DataSource = dszQProveedores
    ItemHeight = 13
    Items.Strings = (
      'Activo'
      'Inactivo')
    TabOrder = 11
  end
  object DBEdit1: TDBEdit
    Left = 91
    Top = 519
    Width = 199
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sCuenta'
    DataSource = dszQProveedores
    TabOrder = 9
  end
  object propietario: TDBEdit
    Left = 91
    Top = 381
    Width = 635
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sPropietario'
    DataSource = dszQProveedores
    TabOrder = 3
  end
  object dszQProveedores: TDataSource
    AutoEdit = False
    DataSet = zQProveedores
    Left = 435
    Top = 193
  end
  object zQProveedores: TZQuery
    Connection = frm_Principal.ZConnection
    AfterInsert = zQProveedoresAfterInsert
    SQL.Strings = (
      'select * from proveedores order by sRazonSocial')
    Params = <>
    Left = 408
    Top = 399
    object zQProveedoressIdProveedor: TStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zQProveedoressRFC: TStringField
      DisplayLabel = 'RFC'
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object zQProveedoressRazonSocial: TStringField
      DisplayLabel = 'Razon Social'
      DisplayWidth = 255
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zQProveedoressDomicilio: TStringField
      DisplayLabel = 'Domicilio'
      DisplayWidth = 50
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zQProveedoressCiudad: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object zQProveedoressCP: TStringField
      DisplayLabel = 'CP'
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object zQProveedoressEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object zQProveedoressTelefono: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'sTelefono'
      Required = True
      Size = 30
    end
    object zQProveedoresdMontoCredito: TFloatField
      DisplayLabel = 'Monto de Credito'
      FieldName = 'dMontoCredito'
      Required = True
      currency = True
    end
    object zQProveedoreslStatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'lStatus'
      Required = True
      Size = 8
    end
    object zQProveedoressCuenta: TStringField
      FieldName = 'sCuenta'
      Required = True
      Size = 30
    end
    object zQProveedoressPropietario: TStringField
      FieldName = 'sPropietario'
      Required = True
      Size = 200
    end
  end
end
