object FrmPopUpImportacion: TFrmPopUpImportacion
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Importacion de Datos de Anexo C'
  ClientHeight = 169
  ClientWidth = 236
  Color = 16697018
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 0
    Width = 197
    Height = 16
    Caption = 'Elija que datos desea importar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 34
    Top = 15
    Width = 154
    Height = 16
    Caption = 'del cat'#225'logo de anexos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn2: TBitBtn
    Left = 117
    Top = 137
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkCancel
  end
  object BitBtn1: TBitBtn
    Left = 36
    Top = 137
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object chkDescripcion: TCheckBox
    Left = 14
    Top = 37
    Width = 97
    Height = 17
    Caption = 'Descripcion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object chkPreciosMN: TCheckBox
    Left = 14
    Top = 60
    Width = 97
    Height = 17
    Caption = 'Precios MN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object chkMedida: TCheckBox
    Left = 14
    Top = 105
    Width = 129
    Height = 17
    Caption = 'Unidad de Medida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object chkCantidad: TCheckBox
    Left = 128
    Top = 83
    Width = 73
    Height = 17
    Caption = 'Cantidad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object chkPreciosDLL: TCheckBox
    Left = 14
    Top = 83
    Width = 97
    Height = 17
    Caption = 'Precios DLL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object chkFechaIni: TCheckBox
    Left = 128
    Top = 37
    Width = 89
    Height = 17
    Caption = 'Fecha Inicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object chkFechaFin: TCheckBox
    Left = 128
    Top = 60
    Width = 104
    Height = 17
    Caption = 'Fecha Termino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
end
