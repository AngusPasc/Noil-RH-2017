object frm_PrestacionesdeLey: Tfrm_PrestacionesdeLey
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Prestaciones de Ley'
  ClientHeight = 239
  ClientWidth = 487
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 77
    Top = 189
    Width = 54
    Height = 13
    Caption = 'Prestaci'#243'n:'
    FocusControl = tsNombre
  end
  object Label2: TLabel
    Left = 77
    Top = 216
    Width = 108
    Height = 13
    Caption = 'Factor de Integraci'#243'n:'
    FocusControl = tdImporte
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 75
    Height = 180
    VertScrollBar.Style = ssHotTrack
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 75
    ExplicitHeight = 180
    inherited AdvPanel1: TAdvPanel
      Width = 75
      Height = 180
      ExplicitWidth = 75
      ExplicitHeight = 180
      FullHeight = 0
      inherited btnEdit: TcxButton
        OnClick = frmBarra1btnEditClick
      end
      inherited btnPost: TcxButton
        OnClick = frmBarra1btnPostClick
      end
      inherited btnCancel: TcxButton
        OnClick = frmBarra1btnCancelClick
      end
      inherited btnDelete: TcxButton
        OnClick = frmBarra1btnDeleteClick
      end
      inherited btnPrinter: TcxButton
        Left = 200
        ExplicitLeft = 200
      end
      inherited btnRefresh: TcxButton
        Top = 115
        OnClick = frmBarra1btnRefreshClick
        ExplicitTop = 115
      end
      inherited btnExit: TcxButton
        Top = 138
        OnClick = frmBarra1btnExitClick
        ExplicitTop = 138
      end
      inherited btnAdd: TcxButton
        OnClick = frmBarra1btnAddClick
      end
    end
  end
  object grid_Comunidades: TDBGrid
    Left = 77
    Top = 0
    Width = 408
    Height = 180
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Color = 15138559
    Ctl3D = False
    DataSource = ds_CatalogodePrestaciones
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
    OnMouseMove = grid_ComunidadesMouseMove
    OnMouseUp = grid_ComunidadesMouseUp
    OnTitleClick = grid_ComunidadesTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'sNombre'
        Title.Caption = 'Prestaci'#243'n'
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dImporte'
        Title.Caption = 'Importe'
        Width = 100
        Visible = True
      end>
  end
  object tsNombre: TDBEdit
    Left = 191
    Top = 186
    Width = 294
    Height = 21
    CharCase = ecUpperCase
    Color = 15138559
    DataField = 'sNombre'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 2
    OnKeyPress = SiguienteCajon
  end
  object tdImporte: TDBEdit
    Left = 191
    Top = 213
    Width = 294
    Height = 21
    CharCase = ecUpperCase
    Color = 15138559
    DataField = 'dImporte'
    DataSource = ds_CatalogodePrestaciones
    TabOrder = 3
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
    SQL.Strings = (
      'SELECT * FROM nom_prestacionesdeley ORDER BY sNombre ASC;')
    Params = <>
    Left = 488
    Top = 72
  end
end
