object frm_SubcidioEmpleo: Tfrm_SubcidioEmpleo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Subsidio Al Empleado'
  ClientHeight = 295
  ClientWidth = 470
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
    470
    295)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 85
    Top = 222
    Width = 67
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Para Ingresos'
    FocusControl = txtParaIngresos
  end
  object Label2: TLabel
    Left = 85
    Top = 244
    Width = 73
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Hasta Ingresos'
    FocusControl = txtHastaIngresos
  end
  object Label3: TLabel
    Left = 85
    Top = 267
    Width = 84
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Cantidad Subsicio'
    FocusControl = txtCantSubsidio
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 75
    Height = 210
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 75
    ExplicitHeight = 210
    inherited AdvPanel1: TAdvPanel
      Width = 75
      Height = 210
      ExplicitWidth = 75
      ExplicitHeight = 210
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
        OnClick = frmBarra1btnPrinterClick
      end
      inherited btnRefresh: TcxButton
        OnClick = frmBarra1btnRefreshClick
      end
      inherited btnExit: TcxButton
        OnClick = frmBarra1btnExitClick
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
    Width = 385
    Height = 213
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Ctl3D = False
    DataSource = dsSubcidio
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
        FieldName = 'fParaIngresos'
        Title.Caption = 'Para Ingresos'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fHastaIngresos'
        Title.Caption = 'Hasta Ingresos'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fCantidadSubcidio'
        Title.Caption = 'Cantidad de Subsidio'
        Visible = True
      end>
  end
  object txtParaIngresos: TDBEdit
    Left = 177
    Top = 219
    Width = 285
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'fParaIngresos'
    DataSource = dsSubcidio
    TabOrder = 2
    OnKeyPress = txtParaIngresosKeyPress
  end
  object txtHastaIngresos: TDBEdit
    Left = 177
    Top = 241
    Width = 285
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'fHastaIngresos'
    DataSource = dsSubcidio
    TabOrder = 3
    OnKeyPress = txtHastaIngresosKeyPress
  end
  object txtCantSubsidio: TDBEdit
    Left = 177
    Top = 264
    Width = 285
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'fCantidadSubcidio'
    DataSource = dsSubcidio
    TabOrder = 4
  end
  object dsSubcidio: TDataSource
    AutoEdit = False
    DataSet = qrySubcidio
    Left = 523
    Top = 73
  end
  object qrySubcidio: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from nom_subcicioempleado order by iIdSubcidio')
    Params = <>
    Left = 488
    Top = 72
    object qrySubcidioiIdSubcidio: TIntegerField
      FieldName = 'iIdSubcidio'
    end
    object qrySubcidiofParaIngresos: TFloatField
      FieldName = 'fParaIngresos'
    end
    object qrySubcidiofHastaIngresos: TFloatField
      FieldName = 'fHastaIngresos'
    end
    object qrySubcidiofCantidadSubcidio: TFloatField
      FieldName = 'fCantidadSubcidio'
    end
  end
end
