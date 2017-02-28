object frm_CatalogodePrestaciones: Tfrm_CatalogodePrestaciones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de Percepciones'
  ClientHeight = 331
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    676
    331)
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 80
    Top = 245
    Width = 43
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'C'#243'digo:'
    FocusControl = tsCodigo
    Transparent = True
  end
  object Label2: TLabel
    Left = 80
    Top = 274
    Width = 65
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Percepcion:'
    FocusControl = tsNombre
    Transparent = True
  end
  object Label3: TLabel
    Left = 80
    Top = 303
    Width = 42
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'Importe'
    FocusControl = tsNombre
    Transparent = True
  end
  object Label4: TLabel
    Left = 80
    Top = 216
    Width = 38
    Height = 15
    Anchors = [akLeft, akBottom]
    Caption = 'ID SAT:'
    FocusControl = DBEdit1
    Transparent = True
  end
  inline frmBarra1: TfrmBarra
    Left = 4
    Top = 3
    Width = 69
    Height = 166
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alCustom
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    ExplicitLeft = 4
    ExplicitTop = 3
    ExplicitHeight = 166
    inherited AdvPanel1: TAdvPanel
      Height = 166
      ExplicitHeight = 166
      FullHeight = 0
      inherited btnEdit: TcxButton
        Left = 1
        Top = 23
        OnClick = frmBarra1btnEditClick
        ExplicitLeft = 1
        ExplicitTop = 23
      end
      inherited btnPost: TcxButton
        Left = 1
        Top = 46
        OnClick = frmBarra1btnPostClick
        ExplicitLeft = 1
        ExplicitTop = 46
      end
      inherited btnCancel: TcxButton
        Left = 1
        Top = 69
        OnClick = frmBarra1btnCancelClick
        ExplicitLeft = 1
        ExplicitTop = 69
      end
      inherited btnDelete: TcxButton
        Left = 1
        Top = 92
        OnClick = frmBarra1btnDeleteClick
        ExplicitLeft = 1
        ExplicitTop = 92
      end
      inherited btnPrinter: TcxButton
        Left = 200
        ExplicitLeft = 200
      end
      inherited btnRefresh: TcxButton
        Left = 1
        Top = 115
        OnClick = frmBarra1btnRefreshClick
        ExplicitLeft = 1
        ExplicitTop = 115
      end
      inherited btnExit: TcxButton
        Left = 1
        Top = 138
        OnClick = frmBarra1btnExitClick
        ExplicitLeft = 1
        ExplicitTop = 138
      end
      inherited btnAdd: TcxButton
        Left = 1
        Top = 0
        OnClick = frmBarra1btnAddClick
        ExplicitLeft = 1
        ExplicitTop = 0
      end
    end
    inherited IconosBarra: TcxImageList
      FormatVersion = 1
    end
    inherited dxbrmngrPrincipal: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        0)
    end
  end
  object grid_Comunidades: TDBGrid
    Left = 77
    Top = 0
    Width = 597
    Height = 207
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Ctl3D = False
    DataSource = ds_CatalogodePrestaciones
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnMouseMove = grid_ComunidadesMouseMove
    OnMouseUp = grid_ComunidadesMouseUp
    OnTitleClick = grid_ComunidadesTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'sCodigo'
        Title.Caption = 'C'#243'digo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sNombre'
        Title.Caption = 'Descripci'#243'n'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dQty'
        Title.Caption = 'Cant.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FormaDeIngreso'
        Title.Caption = 'Tipo'
        Width = 50
        Visible = True
      end>
  end
  object tsCodigo: TDBEdit
    Left = 173
    Top = 242
    Width = 280
    Height = 23
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sCodigo'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 0
    OnKeyPress = SiguienteCajon
  end
  object tsNombre: TDBEdit
    Left = 173
    Top = 271
    Width = 280
    Height = 23
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sNombre'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 1
    OnKeyPress = SiguienteCajon
  end
  object DBCheckBox1: TDBCheckBox
    Left = 471
    Top = 296
    Width = 97
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = '%'
    DataField = 'lForma'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 3
    ValueChecked = 'Porcentaje'
    ValueUnchecked = 'Directo'
    ExplicitTop = 262
  end
  object tdQty: TDBEdit
    Left = 173
    Top = 300
    Width = 280
    Height = 23
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'dQty'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 2
    OnKeyPress = SiguienteCajon
  end
  object DBCheckBox2: TDBCheckBox
    Left = 471
    Top = 242
    Width = 154
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir en Reportes'
    DataField = 'lImprime'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 6
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ExplicitTop = 208
  end
  object chkMostrar: TDBCheckBox
    Left = 471
    Top = 265
    Width = 194
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Mostrar en Catalogo de Empleados'
    DataField = 'lMostrar'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 7
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ExplicitTop = 231
  end
  object DBEdit1: TDBEdit
    Left = 173
    Top = 213
    Width = 280
    Height = 23
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'iCodigoSAT'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 8
    OnKeyPress = SiguienteCajon
  end
  object ds_CatalogodePrestaciones: TDataSource
    AutoEdit = False
    DataSet = zq_CatalogoDePrestaciones
    Left = 523
    Top = 73
  end
  object zq_CatalogoDePrestaciones: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zq_CatalogoDePrestacionesCalcFields
    SQL.Strings = (
      'SELECT * FROM nom_catalogodeprestaciones ORDER BY sCodigo DESC;')
    Params = <>
    Left = 488
    Top = 72
    object zq_CatalogoDePrestacionesiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_CatalogoDePrestacionessCodigo: TStringField
      FieldName = 'sCodigo'
      Size = 50
    end
    object zq_CatalogoDePrestacionessNombre: TStringField
      FieldName = 'sNombre'
      Size = 100
    end
    object zq_CatalogoDePrestacionesFormaDeIngreso: TStringField
      FieldKind = fkCalculated
      FieldName = 'FormaDeIngreso'
      Size = 1
      Calculated = True
    end
    object zq_CatalogoDePrestacionesdQty: TFloatField
      FieldName = 'dQty'
    end
    object zq_CatalogoDePrestacioneslForma: TStringField
      FieldName = 'lForma'
      Size = 10
    end
    object zq_CatalogoDePrestacioneslImprime: TStringField
      FieldName = 'lImprime'
      Size = 5
    end
    object zq_CatalogoDePrestacioneslMostrar: TStringField
      FieldName = 'lMostrar'
    end
    object zq_CatalogoDePrestacionesiCodigoSAT: TIntegerField
      FieldName = 'iCodigoSAT'
    end
  end
end
