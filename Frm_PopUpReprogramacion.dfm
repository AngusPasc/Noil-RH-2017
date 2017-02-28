object FrmPopUpReprogramacion: TFrmPopUpReprogramacion
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = []
  Caption = 'Elegir Convenio'
  ClientHeight = 116
  ClientWidth = 156
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 0
    Width = 146
    Height = 14
    Caption = 'Convenio del cual desea'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 19
    Width = 123
    Height = 14
    Caption = 'integrar las partidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 0
    Top = 91
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 81
    Top = 91
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkCancel
  end
  object comboConvenios: TComboBox
    Left = 10
    Top = 49
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object ZConvenios: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT sIdConvenio FROM convenios'
      'WHERE sContrato = :contrato'
      'AND sIdConvenio <> :convenio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'convenio'
        ParamType = ptUnknown
      end>
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'convenio'
        ParamType = ptUnknown
      end>
  end
end
