object FrmPopUpImportacionC: TFrmPopUpImportacionC
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Importando Anexo C'
  ClientHeight = 152
  ClientWidth = 293
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
    Left = -4
    Top = 3
    Width = 296
    Height = 16
    AutoSize = False
    Caption = '   Configuracion de Ordenamiento de Partidas    '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 58
    Top = 21
    Width = 166
    Height = 16
    Caption = #191'Como desea ordenarlas?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmdCancel: TBitBtn
    Left = 159
    Top = 110
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkCancel
  end
  object cmdOk: TBitBtn
    Left = 71
    Top = 110
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = cmdOkClick
    Kind = bkOK
  end
  object chkExcel: TCheckBox
    Left = 32
    Top = 46
    Width = 249
    Height = 17
    Caption = 'Ordenar de Acuerdo a Archivo Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = chkExcelClick
  end
  object chkInteligent: TCheckBox
    Left = 32
    Top = 67
    Width = 230
    Height = 17
    Caption = 'Ordenar de Acuerdo a Inteligent'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 3
    OnClick = chkInteligentClick
  end
end
