object frm_Nomina_ParametrosNomina: Tfrm_Nomina_ParametrosNomina
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Crear Periodo'
  ClientHeight = 183
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 16
    Width = 45
    Height = 13
    Caption = 'Empresa:'
    FocusControl = tsEmpresa
  end
  object Label2: TLabel
    Left = 9
    Top = 65
    Width = 87
    Height = 13
    Caption = 'Registro Patronal:'
  end
  object Label3: TLabel
    Left = 9
    Top = 89
    Width = 83
    Height = 13
    Caption = 'Zona Geogr'#225'fica:'
  end
  object Label6: TLabel
    Left = 9
    Top = 114
    Width = 71
    Height = 13
    Caption = 'Salario M'#237'nimo:'
  end
  object Label9: TLabel
    Left = 9
    Top = 43
    Width = 24
    Height = 13
    Caption = 'RFC:'
    FocusControl = tsEmpresa
  end
  object tsEmpresa: TDBEdit
    Left = 102
    Top = 16
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sNombreEmpresa'
    DataSource = frm_Nomina_NuevoPeriodo.ds_Nominas
    TabOrder = 0
    OnKeyPress = SiguienteCajon
  end
  object tsRFC: TDBEdit
    Left = 102
    Top = 39
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'sRFC'
    DataSource = frm_Nomina_NuevoPeriodo.ds_Nominas
    TabOrder = 1
    OnKeyPress = SiguienteCajon
  end
  object tdSalarioMinimo: TDBEdit
    Left = 102
    Top = 111
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'dSalarioMinimo'
    DataSource = ds_ZonasGeograficas
    TabOrder = 2
    OnKeyPress = SiguienteCajon
  end
  object dbRegistroPatronal: TDBLookupComboBox
    Left = 102
    Top = 63
    Width = 212
    Height = 21
    Color = clWhite
    DataField = 'iId_RegistroPatronal'
    DataSource = frm_Nomina_NuevoPeriodo.ds_Nominas
    DropDownWidth = 500
    KeyField = 'iIdRegistroPatronal'
    ListField = 'sRazonSocial'
    ListSource = ds_RegistrosPatronales
    TabOrder = 3
  end
  object dbZonaGeografica: TDBLookupComboBox
    Left = 102
    Top = 87
    Width = 212
    Height = 21
    Color = clWhite
    DataField = 'iId_ZonaGeografica'
    DataSource = frm_Nomina_NuevoPeriodo.ds_Nominas
    DropDownWidth = 500
    KeyField = 'iId'
    ListField = 'sZona'
    ListSource = ds_ZonasGeograficas
    TabOrder = 4
  end
  object btnGuardar: TcxButton
    Left = 225
    Top = 149
    Width = 88
    Height = 29
    Caption = '&Guardar.'
    TabOrder = 5
    OnClick = btnGuardarClick
    OptionsImage.ImageIndex = 54
  end
  object zq_RegistrosPatronales: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM registrospatronales;')
    Params = <>
    Left = 24
    Top = 64
    object zq_RegistrosPatronalesiId: TIntegerField
      FieldName = 'iIdRegistroPatronal'
      Required = True
    end
    object zq_RegistrosPatronalessRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Size = 100
    end
    object zq_RegistrosPatronalessRegistroPatronal: TStringField
      FieldName = 'sRegistroPatronal'
      Size = 50
    end
  end
  object ds_RegistrosPatronales: TDataSource
    AutoEdit = False
    DataSet = zq_RegistrosPatronales
    Left = 59
    Top = 65
  end
  object zq_ZonasGeograficas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM nom_catalogodezonasgeograficas;')
    Params = <>
    Left = 24
    Top = 104
    object zq_ZonasGeograficasiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_ZonasGeograficassZona: TStringField
      FieldName = 'sZona'
    end
    object zq_ZonasGeograficasdSalarioMinimo: TFloatField
      FieldName = 'dSalarioMinimo'
    end
  end
  object ds_ZonasGeograficas: TDataSource
    AutoEdit = False
    DataSet = zq_ZonasGeograficas
    Left = 59
    Top = 105
  end
end
