object FrmFiltroIsometricos: TFrmFiltroIsometricos
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Filtro'
  ClientHeight = 220
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox1: TAdvGroupBox
    Left = 0
    Top = 0
    Width = 296
    Height = 65
    BorderStyle = bsDouble
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 10
      Width = 106
      Height = 14
      Caption = 'Filtro Por Volumen:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 170
      Top = 10
      Width = 92
      Height = 14
      Caption = 'No. de Paquetes:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JcmbTipo: TJvComboBox
      Left = 29
      Top = 30
      Width = 106
      Height = 22
      Style = csDropDownList
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
      Text = 'Reportado'
      Items.Strings = (
        'Reportado'
        'Generado')
      ItemIndex = 0
    end
    object SenPaquetes: TAdvSpinEdit
      Left = 170
      Top = 30
      Width = 92
      Height = 22
      Value = 1
      FloatValue = 1.000000000000000000
      TimeValue = 0.041666666666666660
      HexValue = 0
      Enabled = True
      IncrementFloat = 0.100000000000000000
      IncrementFloatPage = 1.000000000000000000
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      MaxValue = 20
      MinValue = 1
      TabOrder = 1
      Visible = True
      Version = '1.4.4.4'
    end
  end
  object AdvGroupBox2: TAdvGroupBox
    Left = 0
    Top = 65
    Width = 296
    Height = 155
    BorderStyle = bsDouble
    Align = alClient
    Caption = 'Parametros '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 266
      Top = 28
      Width = 9
      Height = 14
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 266
      Top = 84
      Width = 9
      Height = 14
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NxBtnAceptar: TNxButton
      Left = 46
      Top = 117
      Width = 75
      Caption = '&Aceptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object NxBtnCancelar: TNxButton
      Left = 170
      Top = 117
      Width = 75
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
    object cmbVfiltro2: TJvComboBox
      Left = 155
      Top = 81
      Width = 104
      Height = 22
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        '0'
        '10'
        '20'
        '30'
        '40'
        '50'
        '75'
        '100')
    end
    object CmbFiltro2: TJvComboBox
      Left = 19
      Top = 81
      Width = 121
      Height = 22
      Style = csDropDownList
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        ''
        'es igual a'
        'no es igual a'
        'es mayor que'
        'es mayor o igual a'
        'es menor que'
        'es menor o igual a')
      ItemIndex = 0
    end
    object RdBtnO: TAdvOfficeRadioButton
      Left = 80
      Top = 53
      Width = 33
      Height = 20
      Alignment = taLeftJustify
      Caption = '&O'
      ReturnIsTab = True
      TabOrder = 4
      Version = '1.1.1.1'
    end
    object RdBtnY: TAdvOfficeRadioButton
      Left = 41
      Top = 53
      Width = 33
      Height = 20
      Alignment = taLeftJustify
      Caption = '&Y'
      Checked = True
      ReturnIsTab = True
      TabOrder = 5
      TabStop = True
      Version = '1.1.1.1'
    end
    object CmbFiltro1: TJvComboBox
      Left = 19
      Top = 25
      Width = 121
      Height = 22
      Style = csDropDownList
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        ''
        'es igual a'
        'no es igual a'
        'es mayor que'
        'es mayor o igual a'
        'es menor que'
        'es menor o igual a')
      ItemIndex = 0
    end
    object cmbVfiltro1: TJvComboBox
      Left = 155
      Top = 25
      Width = 104
      Height = 22
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 7
      Items.Strings = (
        '0'
        '10'
        '20'
        '30'
        '40'
        '50'
        '75'
        '100')
    end
  end
end
