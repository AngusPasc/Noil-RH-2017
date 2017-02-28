object frm_Nomina_Pruebas: Tfrm_Nomina_Pruebas
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Reporte de N'#243'minas'
  ClientHeight = 394
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object NextGrid1: TNextGrid
    Left = 8
    Top = 8
    Width = 874
    Height = 273
    TabOrder = 0
    TabStop = True
    OnCellFormating = NextGrid1CellFormating
    object NxTreeColumn1: TNxTreeColumn
      DefaultWidth = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Pos'
      Position = 0
      SortType = stAlphabetic
      Width = 40
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Nombre'
      Position = 1
      SortType = stAlphabetic
      Width = 300
    end
  end
  object Button1: TButton
    Left = 8
    Top = 287
    Width = 874
    Height = 99
    Caption = 'Button1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnFace
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
end
