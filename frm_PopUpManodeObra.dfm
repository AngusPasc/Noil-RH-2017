object FrmPopUpManodeObra: TFrmPopUpManodeObra
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Flujo de Efectivo'
  ClientHeight = 133
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
    Left = 5
    Top = 5
    Width = 288
    Height = 16
    AutoSize = False
    Caption = #191'De donde desea obtener la Mano de Obra?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmdCancel: TBitBtn
    Left = 159
    Top = 94
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkCancel
  end
  object cmdOk: TBitBtn
    Left = 63
    Top = 94
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = cmdOkClick
    Kind = bkOK
  end
  object chkExcel: TCheckBox
    Left = 36
    Top = 36
    Width = 230
    Height = 17
    Caption = 'Lista de Asistencia'
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
    Left = 36
    Top = 59
    Width = 230
    Height = 17
    Caption = 'Bitacora de Personal'
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
