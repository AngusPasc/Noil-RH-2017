object frm_Nomina_AbrirNomina: Tfrm_Nomina_AbrirNomina
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'N'#243'minas'
  ClientHeight = 261
  ClientWidth = 608
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
    608
    261)
  PixelsPerInch = 96
  TextHeight = 13
  object tsNombre: TDBEdit
    Left = 900
    Top = 217
    Width = 159
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sNomina'
    DataSource = ds_Nominas
    TabOrder = 0
    Visible = False
  end
  object JvDBDatePickerEdit1: TJvDBDatePickerEdit
    Left = 900
    Top = 244
    Width = 159
    Height = 21
    AllowNoDate = True
    Color = 11009259
    DataField = 'dFechaInicial'
    DataSource = ds_Nominas
    TabOrder = 1
    Visible = False
  end
  object JvDBDatePickerEdit2: TJvDBDatePickerEdit
    Left = 900
    Top = 271
    Width = 159
    Height = 21
    AllowNoDate = True
    Color = 11009259
    DataField = 'dFechaFinal'
    DataSource = ds_Nominas
    TabOrder = 2
    Visible = False
  end
  inline frmBarra1: TfrmBarra
    Left = 800
    Top = 0
    Width = 74
    Height = 211
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    Visible = False
    ExplicitLeft = 800
    ExplicitWidth = 74
    ExplicitHeight = 211
    inherited AdvPanel1: TAdvPanel
      Width = 74
      Height = 211
      ExplicitWidth = 74
      ExplicitHeight = 211
      FullHeight = 0
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
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 900
    Top = 298
    Width = 159
    Height = 21
    Color = 11009259
    DataField = 'iIdEgreso'
    DataSource = ds_Nominas
    DropDownWidth = 500
    KeyField = 'iIdFolio'
    ListField = 'sEgreso'
    TabOrder = 5
    Visible = False
  end
  object grid_Comunidades: TDBGrid
    Left = 3
    Top = 4
    Width = 599
    Height = 205
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Ctl3D = False
    DataSource = ds_Nominas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
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
        FieldName = 'sNomina'
        Title.Caption = 'N'#243'mina'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dFechaInicial'
        Title.Caption = 'Fecha Inicial'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dFechaFinal'
        Title.Caption = 'Fecha Final'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIAS'
        Title.Caption = 'D'#237'as Totales'
        Visible = True
      end>
  end
  object btnAbrirNomina: TcxButton
    Left = 477
    Top = 215
    Width = 123
    Height = 38
    Anchors = [akRight, akBottom]
    Caption = '&Abrir N'#243'mina.'
    TabOrder = 6
    OnClick = btnAbrirNominaClick
    OptionsImage.ImageIndex = 364
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object ds_Nominas: TDataSource
    AutoEdit = False
    DataSet = zq_Nominas
    Left = 571
    Top = 49
  end
  object zq_Nominas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'nom.*, '
      #9'DATEDIFF(nom.dFechaFinal, nom.dFechaInicial) + 1 AS DIAS, '
      #9'SUM(en.dImporte) AS dTotal '
      'FROM nom_nominas AS nom '
      
        #9'LEFT JOIN nom_empleadospornomina AS en ON (en.iId_Nomina = nom.' +
        'iId) '
      'WHERE nom.iProcesada = 2  '
      'GROUP BY nom.iId '
      'ORDER BY iId DESC;')
    Params = <>
    Left = 528
    Top = 48
    object zq_NominasiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_NominassNomina: TStringField
      FieldName = 'sNomina'
      Size = 50
    end
    object zq_NominasdFechaInicial: TDateField
      FieldName = 'dFechaInicial'
    end
    object zq_NominasdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object zq_NominasdTotal: TFloatField
      FieldName = 'dTotal'
      ReadOnly = True
      DisplayFormat = '$ ###,###0.00'
    end
    object zq_NominasiIdEgreso: TIntegerField
      FieldName = 'iIdEgreso'
    end
    object zq_NominasdTotalRestante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dTotalRestante'
      Calculated = True
    end
    object zq_NominasdDias: TFloatField
      FieldName = 'dDias'
    end
    object zq_NominasiProcesada: TIntegerField
      FieldName = 'iProcesada'
    end
    object zq_NominasDIAS: TIntegerField
      FieldName = 'DIAS'
      ReadOnly = True
    end
  end
end
