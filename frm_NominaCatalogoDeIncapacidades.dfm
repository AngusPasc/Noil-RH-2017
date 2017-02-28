object frmNominaCatalogoDeIncapacidades: TfrmNominaCatalogoDeIncapacidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Incapacidades'
  ClientHeight = 246
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    478
    246)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 81
    Top = 189
    Width = 37
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'ID SAT:'
    FocusControl = tsRazonSocial
  end
  object Label2: TLabel
    Left = 81
    Top = 217
    Width = 69
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'DESCRIPCION'
    FocusControl = tsRegistroPatronal
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 75
    Height = 238
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alCustom
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 75
    ExplicitHeight = 238
    inherited AdvPanel1: TAdvPanel
      Width = 75
      Height = 238
      ExplicitWidth = 75
      ExplicitHeight = 238
      FullHeight = 0
      inherited btnEdit: TcxButton
        OnClick = frmBarra1btnEditClick
      end
      inherited btnPost: TcxButton
        Top = 55
        OnClick = frmBarra1btnPostClick
        ExplicitTop = 55
      end
      inherited btnCancel: TcxButton
        Top = 78
        OnClick = frmBarra1btnCancelClick
        ExplicitTop = 78
      end
      inherited btnDelete: TcxButton
        Top = 102
        OnClick = frmBarra1btnDeleteClick
        ExplicitTop = 102
      end
      inherited btnPrinter: TcxButton
        Left = 200
        ExplicitLeft = 200
      end
      inherited btnRefresh: TcxButton
        Top = 126
        OnClick = frmBarra1btnRefreshClick
        ExplicitTop = 126
      end
      inherited btnExit: TcxButton
        Top = 149
        OnClick = frmBarra1btnExitClick
        ExplicitTop = 149
      end
      inherited btnAdd: TcxButton
        OnClick = frmBarra1btnAddClick
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
    Width = 396
    Height = 180
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Ctl3D = False
    DataSource = ds_CatalogosDeIncapacidades
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDblClick = grid_ComunidadesDblClick
    OnMouseMove = grid_ComunidadesMouseMove
    OnMouseUp = grid_ComunidadesMouseUp
    OnTitleClick = grid_ComunidadesTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'iCodigoSAT'
        Title.Caption = 'ID SAT'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sDescripcion'
        Title.Caption = 'INCAPACIDAD'
        Width = 300
        Visible = True
      end>
  end
  object tsRazonSocial: TDBEdit
    Left = 170
    Top = 186
    Width = 303
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'iCodigoSAT'
    DataSource = ds_CatalogosDeIncapacidades
    TabOrder = 2
    OnEnter = tsRazonSocialEnter
    OnExit = tsRazonSocialExit
    OnKeyPress = tsRazonSocialKeyPress
  end
  object tsRegistroPatronal: TDBEdit
    Left = 170
    Top = 214
    Width = 303
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sDescripcion'
    DataSource = ds_CatalogosDeIncapacidades
    TabOrder = 3
    OnKeyPress = tsRegistroPatronalKeyPress
  end
  object ds_CatalogosDeIncapacidades: TDataSource
    AutoEdit = False
    DataSet = zq_CatalogoDeIncapacidades
    Left = 115
    Top = 49
  end
  object zq_CatalogoDeIncapacidades: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM nom_catalogodeincapacidades;')
    Params = <>
    Left = 80
    Top = 48
    object zq_CatalogoDeIncapacidadesiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_CatalogoDeIncapacidadesiCodigoSAT: TIntegerField
      FieldName = 'iCodigoSAT'
    end
    object zq_CatalogoDeIncapacidadessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 255
    end
  end
end
