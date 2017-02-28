object frmedicionperimetros: Tfrmedicionperimetros
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'EDICION DE PERIMETROS'
  ClientHeight = 201
  ClientWidth = 629
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 0
    Width = 629
    Height = 201
    Align = alClient
    DataSource = dscampos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <
      item
        ControlName = 'DbCmbDescripciones'
        FieldName = 'sDescripcion'
        FitCell = fcCellSize
        LeaveOnEnterKey = True
        LeaveOnUpDownKey = True
      end
      item
        ControlName = 'dbCmbValor'
        FieldName = 'EAplicaValor'
        FitCell = fcCellSize
        LeaveOnEnterKey = True
        LeaveOnUpDownKey = True
      end>
    RowsHeight = 17
    TitleRowHeight = 18
    Columns = <
      item
        Expanded = False
        FieldName = 'sDescripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descripcion'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sValorNominal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Valor Cadena'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dValorPerimetro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Valor Numerico'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sSistemaMedida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'U. Medida'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EAplicaValor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Tipo de Valor Que Aplica'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end>
  end
  object DbCmbDescripciones: TJvDBComboBox
    Left = 40
    Top = 88
    Width = 145
    Height = 21
    Style = csDropDown
    DataField = 'sDescripcion'
    DataSource = dscampos
    EnableValues = False
    ItemHeight = 13
    TabOrder = 1
    Visible = False
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object dbCmbValor: TJvDBComboBox
    Left = 240
    Top = 128
    Width = 145
    Height = 21
    BeepOnError = True
    DataField = 'EAplicaValor'
    DataSource = dscampos
    ItemHeight = 13
    Items.Strings = (
      'Valor Cadena'
      'Valor Numerico')
    TabOrder = 2
    Values.Strings = (
      'sValor'
      'dValor')
    Visible = False
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object dscampos: TDataSource
    DataSet = zcampos
    Left = 312
    Top = 72
  end
  object zcampos: TZQuery
    Connection = connection.zConnection
    AfterInsert = zcamposAfterInsert
    BeforePost = zcamposBeforePost
    AfterPost = zcamposAfterPost
    SQL.Strings = (
      
        'Select *  from perimetros where iidgrupo=:grupo and (iidperimetr' +
        'o=:perimetro or iidperimetroprincipal=:perimetro)'
      'order by iorden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'perimetro'
        ParamType = ptUnknown
      end>
    Left = 344
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'perimetro'
        ParamType = ptUnknown
      end>
    object zcamposiIdPerimetro: TIntegerField
      FieldName = 'iIdPerimetro'
    end
    object zcamposiIdGrupo: TIntegerField
      FieldName = 'iIdGrupo'
      Required = True
    end
    object zcamposiIdPerimetroPrincipal: TIntegerField
      FieldName = 'iIdPerimetroPrincipal'
    end
    object zcampossValorNominal: TStringField
      FieldName = 'sValorNominal'
      Size = 100
    end
    object zcamposdValorPerimetro: TFloatField
      FieldName = 'dValorPerimetro'
      Required = True
    end
    object zcampossSistemaMedida: TStringField
      FieldName = 'sSistemaMedida'
      Required = True
      Size = 50
    end
    object zcampossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 200
    end
    object zcamposEAplicaValor: TStringField
      FieldName = 'EAplicaValor'
      Required = True
      OnGetText = zcamposEAplicaValorGetText
      Size = 6
    end
    object zcamposiOrden: TIntegerField
      FieldName = 'iOrden'
      Required = True
    end
  end
end
