object frm_Nomina_EmpleadosPorNomina_1: Tfrm_Nomina_EmpleadosPorNomina_1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Crear Periodo'
  ClientHeight = 474
  ClientWidth = 653
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
    Left = 25
    Top = 24
    Width = 50
    Height = 13
    Caption = 'Empleado:'
    FocusControl = tsNombre
  end
  object tsNombre: TDBEdit
    Left = 91
    Top = 21
    Width = 510
    Height = 21
    CharCase = ecUpperCase
    Color = 15138559
    DataField = 'sNomina'
    DataSource = ds_Nominas
    TabOrder = 0
    OnKeyPress = SiguienteCajon
  end
  object Button1: TButton
    Left = 357
    Top = 418
    Width = 141
    Height = 48
    Caption = 'Incidencias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 504
    Top = 418
    Width = 141
    Height = 48
    Caption = 'Reporte de N'#243'mina'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object NextGrid1: TNextGrid
    Left = 91
    Top = 48
    Width = 510
    Height = 64
    TabOrder = 3
    TabStop = True
    object NxTextColumn1: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Visible = False
    end
    object NxCheckBoxColumn1: TNxCheckBoxColumn
      DefaultWidth = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 1
      SortType = stBoolean
      Width = 30
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Nombre de Empleado'
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 400
    end
  end
  object NextGrid2: TNextGrid
    Left = 91
    Top = 144
    Width = 254
    Height = 257
    TabOrder = 4
    TabStop = True
    object NxTextColumn3: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Visible = False
    end
    object NxCheckBoxColumn2: TNxCheckBoxColumn
      DefaultWidth = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 1
      SortType = stBoolean
      Width = 30
    end
    object NxTextColumn4: TNxTextColumn
      DefaultWidth = 150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Percepciones'
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 150
    end
    object NxTextColumn7: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Cant'
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
    end
    object NxTextColumn9: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Bloqueado'
      ParentFont = False
      Position = 4
      SortType = stAlphabetic
    end
  end
  object NextGrid3: TNextGrid
    Left = 347
    Top = 144
    Width = 254
    Height = 257
    TabOrder = 5
    TabStop = True
    object NxTextColumn5: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Visible = False
    end
    object NxCheckBoxColumn3: TNxCheckBoxColumn
      DefaultWidth = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 1
      SortType = stBoolean
      Width = 30
    end
    object NxTextColumn6: TNxTextColumn
      DefaultWidth = 150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Percepciones'
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 150
    end
    object NxTextColumn8: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Cant'
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
    end
    object NxTextColumn10: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Bloqueado'
      ParentFont = False
      Position = 4
      SortType = stAlphabetic
    end
  end
  object ds_Nominas: TDataSource
    AutoEdit = False
    DataSet = zq_Nominas
    Left = 67
    Top = 385
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
    Left = 32
    Top = 384
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
    Left = 32
    Top = 416
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
    Left = 67
    Top = 417
  end
end
