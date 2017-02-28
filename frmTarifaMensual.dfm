object frm_TarifaMensual: Tfrm_TarifaMensual
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tarifa Mensual'
  ClientHeight = 348
  ClientWidth = 534
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
    534
    348)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 77
    Top = 256
    Width = 66
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'L'#237'mite Inferior'
    FocusControl = txtLimiteInferior
  end
  object Label2: TLabel
    Left = 77
    Top = 279
    Width = 70
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'L'#237'mite Superior'
    FocusControl = txtLimiteSuperior
  end
  object Label3: TLabel
    Left = 77
    Top = 302
    Width = 49
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Cuota Fija'
    FocusControl = txtCuotaFija
  end
  object Label6: TLabel
    Left = 77
    Top = 324
    Width = 52
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Porcentaje'
    FocusControl = txtPorcentaje
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
    TabOrder = 5
    ExplicitWidth = 75
    ExplicitHeight = 210
    inherited AdvPanel1: TAdvPanel
      Width = 75
      Height = 210
      ExplicitWidth = 75
      ExplicitHeight = 210
      FullHeight = 0
      inherited btnEdit: TcxButton
        TabOrder = 1
        OnClick = frmBarra1btnEditClick
      end
      inherited btnPost: TcxButton
        TabOrder = 2
        OnClick = frmBarra1btnPostClick
      end
      inherited btnCancel: TcxButton
        TabOrder = 3
        OnClick = frmBarra1btnCancelClick
      end
      inherited btnDelete: TcxButton
        TabOrder = 4
        OnClick = frmBarra1btnDeleteClick
      end
      inherited btnPrinter: TcxButton
        TabOrder = 5
        OnClick = frmBarra1btnPrinterClick
      end
      inherited btnRefresh: TcxButton
        TabOrder = 6
        OnClick = frmBarra1btnRefreshClick
      end
      inherited btnExit: TcxButton
        TabOrder = 7
        OnClick = frmBarra1btnExitClick
      end
      inherited btnAdd: TcxButton
        TabOrder = 0
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
    Top = 8
    Width = 449
    Height = 239
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Ctl3D = False
    DataSource = dsTarifaMensual
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
        FieldName = 'fLimiteInferior'
        Title.Caption = 'L'#237'mite Inferior'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fLimiteSuperior'
        Title.Caption = 'L'#237'mite Superior'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fCuotaFija'
        Title.Caption = 'Cuota Fija'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fPorcentaje'
        Title.Caption = 'Porcentaje'
        Width = 100
        Visible = True
      end>
  end
  object txtLimiteInferior: TDBEdit
    Left = 153
    Top = 253
    Width = 373
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'fLimiteInferior'
    DataSource = dsTarifaMensual
    TabOrder = 0
    OnKeyPress = txtLimiteInferiorKeyPress
  end
  object txtLimiteSuperior: TDBEdit
    Left = 153
    Top = 276
    Width = 373
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'fLimiteSuperior'
    DataSource = dsTarifaMensual
    TabOrder = 1
    OnKeyPress = txtLimiteSuperiorKeyPress
  end
  object txtCuotaFija: TDBEdit
    Left = 153
    Top = 299
    Width = 373
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'fCuotaFija'
    DataSource = dsTarifaMensual
    TabOrder = 2
    OnKeyPress = txtCuotaFijaKeyPress
  end
  object txtPorcentaje: TDBEdit
    Left = 153
    Top = 321
    Width = 373
    Height = 21
    Anchors = [akLeft, akBottom]
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'fPorcentaje'
    DataSource = dsTarifaMensual
    TabOrder = 3
    OnKeyPress = txtPorcentajeKeyPress
  end
  object dsTarifaMensual: TDataSource
    AutoEdit = False
    DataSet = qryTarifaMensual
    Left = 523
    Top = 73
  end
  object qryTarifaMensual: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from nom_tarifamensual order by iIdTarifaMensual')
    Params = <>
    Left = 432
    Top = 64
    object qryTarifaMensualiIdTarifaMensual: TIntegerField
      FieldName = 'iIdTarifaMensual'
    end
    object qryTarifaMensualfLimiteInferior: TFloatField
      FieldName = 'fLimiteInferior'
    end
    object qryTarifaMensualfLimiteSuperior: TFloatField
      FieldName = 'fLimiteSuperior'
    end
    object qryTarifaMensualfCuotaFija: TFloatField
      FieldName = 'fCuotaFija'
    end
    object qryTarifaMensualfPorcentaje: TFloatField
      FieldName = 'fPorcentaje'
    end
  end
end
