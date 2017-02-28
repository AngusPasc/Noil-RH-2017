object frm_Nomina_NuevoPeriodo: Tfrm_Nomina_NuevoPeriodo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Crear Periodo'
  ClientHeight = 167
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 20
    Width = 35
    Height = 13
    Caption = 'N'#243'mina'
    FocusControl = tsNombre
  end
  object Label2: TLabel
    Left = 9
    Top = 74
    Width = 63
    Height = 13
    Caption = 'Fecha Inicial:'
  end
  object Label3: TLabel
    Left = 9
    Top = 101
    Width = 58
    Height = 13
    Caption = 'Fecha Final:'
  end
  object Label9: TLabel
    Left = 9
    Top = 47
    Width = 40
    Height = 13
    Caption = 'Periodo:'
    FocusControl = tsNombre
  end
  object HTMLabel1: THTMLabel
    Left = 25
    Top = 129
    Width = 86
    Height = 17
    Cursor = crHandPoint
    HTMLText.Strings = (
      
        '<FONT face="Arial Narrow"><FONT color="#000000">[</FONT><FONT co' +
        'lor="#0080FF"><B>Par'#225'metros</B></FONT><FONT color="#000000">]</F' +
        'ONT></FONT>')
    Transparent = True
    OnClick = HTMLabel1Click
    Version = '1.8.4.0'
  end
  object tsNombre: TDBEdit
    Left = 72
    Top = 17
    Width = 251
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sNomina'
    DataSource = ds_Nominas
    TabOrder = 0
    OnKeyPress = SiguienteCajon
  end
  object JvDBDatePickerEdit1: TJvDBDatePickerEdit
    Left = 72
    Top = 71
    Width = 251
    Height = 21
    AllowNoDate = True
    Color = clWhite
    DataField = 'dFechaInicial'
    DataSource = ds_Nominas
    TabOrder = 2
  end
  object JvDBDatePickerEdit2: TJvDBDatePickerEdit
    Left = 73
    Top = 98
    Width = 250
    Height = 21
    AllowNoDate = True
    Color = clWhite
    DataField = 'dFechaFinal'
    DataSource = ds_Nominas
    TabOrder = 3
  end
  object Button1: TButton
    Left = 459
    Top = 209
    Width = 141
    Height = 48
    Caption = 'Incidencias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Button2: TButton
    Left = 459
    Top = 263
    Width = 141
    Height = 48
    Caption = 'Reporte de N'#243'mina'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object cmbPeriodo: TComboBox
    Left = 72
    Top = 44
    Width = 251
    Height = 21
    Style = csDropDownList
    CharCase = ecUpperCase
    Color = clWhite
    ItemHeight = 13
    ItemIndex = 3
    TabOrder = 1
    Text = 'QUINCENAL'
    Items.Strings = (
      'SEMANAL'
      'DECENAL'
      'CATORCENAL'
      'QUINCENAL'
      'MENSUAL')
  end
  object btnGuardar: TcxButton
    Left = 139
    Top = 129
    Width = 88
    Height = 29
    Caption = '&Guardar.'
    TabOrder = 4
    OnClick = btnGuardarClick
    OptionsImage.ImageIndex = 54
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object btnCancelar: TcxButton
    Left = 235
    Top = 130
    Width = 88
    Height = 29
    Caption = '&Cancelar'
    TabOrder = 5
    OnClick = btnCancelarClick
    OptionsImage.ImageIndex = 306
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object ds_Nominas: TDataSource
    AutoEdit = False
    DataSet = zq_Nominas
    Left = 35
    Top = 5
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
      'GROUP BY nom.iId '
      'ORDER BY iId DESC;')
    Params = <>
    Left = 8
    Top = 9
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
    object zq_NominasDIAS: TIntegerField
      FieldName = 'DIAS'
      ReadOnly = True
    end
    object zq_NominasiIdEgreso: TIntegerField
      FieldName = 'iIdEgreso'
      OnChange = zq_NominasiIdEgresoChange
    end
    object zq_NominasdTotalRestante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dTotalRestante'
      Calculated = True
    end
    object zq_NominasdDias: TFloatField
      FieldName = 'dDias'
    end
    object zq_NominassNombreEmpresa: TStringField
      FieldName = 'sNombreEmpresa'
      Size = 100
    end
    object zq_NominassRFC: TStringField
      FieldName = 'sRFC'
      Size = 100
    end
    object zq_NominasiId_RegistroPatronal: TIntegerField
      FieldName = 'iId_RegistroPatronal'
    end
    object zq_NominasiId_ZonaGeografica: TIntegerField
      FieldName = 'iId_ZonaGeografica'
    end
    object zq_NominasdSalarioMinimo: TFloatField
      FieldName = 'dSalarioMinimo'
    end
    object zq_NominasdSalarioMinimoDF: TFloatField
      FieldName = 'dSalarioMinimoDF'
    end
    object zq_NominasiProcesada: TIntegerField
      FieldName = 'iProcesada'
    end
  end
  object ZQuery1: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'nom.*, '
      #9'DATEDIFF(nom.dFechaFinal, nom.dFechaInicial) + 1 AS DIAS, '
      #9'SUM(en.dImporte) AS dTotal '
      'FROM nom_nominas AS nom '
      
        #9'LEFT JOIN nom_empleadospornomina AS en ON (en.iId_Nomina = nom.' +
        'iId) '
      'GROUP BY nom.iId '
      'ORDER BY iId DESC;')
    Params = <>
    Left = 24
    Top = 184
    object IntegerField1: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'sNomina'
      Size = 50
    end
    object DateField1: TDateField
      FieldName = 'dFechaInicial'
    end
    object DateField2: TDateField
      FieldName = 'dFechaFinal'
    end
    object FloatField1: TFloatField
      FieldName = 'dTotal'
      ReadOnly = True
      DisplayFormat = '$ ###,###0.00'
    end
    object IntegerField2: TIntegerField
      FieldName = 'DIAS'
      ReadOnly = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'iIdEgreso'
      OnChange = zq_NominasiIdEgresoChange
    end
    object FloatField2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dTotalRestante'
      Calculated = True
    end
    object FloatField3: TFloatField
      FieldName = 'dDias'
    end
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = ZQuery1
    Left = 59
    Top = 185
  end
end
