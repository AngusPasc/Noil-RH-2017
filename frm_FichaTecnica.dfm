object frmFichaTecnica: TfrmFichaTecnica
  Left = 309
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ficha Tecnica'
  ClientHeight = 474
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 3
    Top = 337
    Width = 53
    Height = 14
    Caption = 'Referencia'
  end
  object Label2: TLabel
    Left = 3
    Top = 273
    Width = 19
    Height = 14
    Caption = 'Link'
  end
  object Label3: TLabel
    Left = 3
    Top = 381
    Width = 57
    Height = 14
    Caption = 'Descripci'#243'n'
  end
  object Label4: TLabel
    Left = 3
    Top = 12
    Width = 52
    Height = 14
    Caption = 'No. Partida'
  end
  object Label5: TLabel
    Left = 3
    Top = 358
    Width = 19
    Height = 14
    Caption = 'Link'
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 119
    Width = 297
    Height = 212
    Caption = 'Imagen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object bImagen: TImage
      Left = 1
      Top = 17
      Width = 290
      Height = 191
      Enabled = False
      Stretch = True
      OnDblClick = bImagenDblClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 302
    Top = 119
    Width = 297
    Height = 212
    Caption = 'Imagen'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    object bImagenAux: TImage
      Left = 5
      Top = 17
      Width = 291
      Height = 191
      Enabled = False
      Stretch = True
      OnDblClick = bImagenAuxDblClick
    end
  end
  object tmComentarios: TMemo
    Left = 73
    Top = 379
    Width = 537
    Height = 86
    Hint = 'Descripci'#243'n general.'
    ParentShowHint = False
    ReadOnly = True
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 12
    OnEnter = tmComentariosEnter
    OnExit = tmComentariosExit
  end
  object tsLink: TEdit
    Left = 73
    Top = 355
    Width = 537
    Height = 23
    Hint = 'Link.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsUnderline]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 11
    OnEnter = tsLinkEnter
    OnExit = tsLinkExit
    OnKeyPress = tsLinkKeyPress
  end
  object tsReferencia: TEdit
    Left = 73
    Top = 333
    Width = 120
    Height = 22
    Hint = 'Referencia.'
    CharCase = ecUpperCase
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 10
    OnEnter = tsReferenciaEnter
    OnExit = tsReferenciaExit
    OnKeyPress = tsReferenciaKeyPress
  end
  object tsNumeroActividad: TEdit
    Left = 71
    Top = 3
    Width = 97
    Height = 22
    Hint = 'N'#250'mero de partida.'
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnChange = tsNumeroActividadChange
    OnEnter = tsNumeroActividadEnter
    OnExit = tsNumeroActividadExit
    OnKeyPress = tsNumeroActividadKeyPress
  end
  object btnSave: TBitBtn
    Left = 252
    Top = 2
    Width = 40
    Height = 25
    Enabled = False
    ModalResult = 1
    TabOrder = 4
    OnClick = btnSaveClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object btnCancel: TBitBtn
    Left = 292
    Top = 2
    Width = 41
    Height = 25
    Cancel = True
    Enabled = False
    ModalResult = 2
    TabOrder = 5
    OnClick = btnCancelClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888888888888888888888888888888888888888888888888
      8888888888888887488888444448888847888844448888888488884448888888
      8488884484888888848888488844888847888888888844447888888888888888
      8888888888888888888888888888888888888888888888888888}
    Layout = blGlyphTop
  end
  object btnPrinter: TBitBtn
    Left = 333
    Top = 2
    Width = 42
    Height = 25
    Cancel = True
    Enabled = False
    ModalResult = 2
    TabOrder = 6
    OnClick = btnPrinterClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF0000000000FF00FF0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FF
      FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084848400848484008484
      8400FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0000000000FF00FF000000000000000000FF00FF00FF00
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FF00FF0000000000FF00FF0000000000FF00FF00FF00
      FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
  end
  object btnNew: TBitBtn
    Left = 173
    Top = 2
    Width = 41
    Height = 25
    TabOrder = 2
    OnClick = btnNewClick
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000F0000000E0000000100
      04000000000070000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8880888888888888888088888888888888808888880008888880888888070888
      8880888888070888888088800007000088808880777777708880888000070000
      8880888888070888888088888807088888808888880008888880888888888888
      88808888888888888880}
    Layout = blGlyphBottom
  end
  object btnEdit: TBitBtn
    Left = 212
    Top = 2
    Width = 42
    Height = 25
    TabOrder = 3
    OnClick = btnEditClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000000
      00008888880FFFFFFFF000800000FF0F00F0E00BBBBB0FFFFFF0E0BBBB000FFF
      F0F0E0BBBBBBB0F00FF0E0BBBB00000C0FF0E0BBBBBBBBB0FFF0E0BB0000000F
      FFF0000BBB00C0FF00F08880000C0FFFFFF0888880C0FFFF000088880C0FF00F
      0FF08880C00FFFFF0F08880C080FFFFF00888880880000000888}
    Layout = blGlyphBottom
  end
  object tmDescripcion: TMemo
    Left = 71
    Top = 27
    Width = 541
    Height = 94
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnDelete: TBitBtn
    Left = 375
    Top = 2
    Width = 41
    Height = 25
    Cancel = True
    ModalResult = 2
    TabOrder = 7
    OnClick = btnDeleteClick
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888888888888888881F88881F8888888888888991F8888889F8888191F888881
      F888888199F88891F8888888191F819F88888888819199F88888888888919F88
      88888888891911F888888888191F89F88888889191F88819F88881919F888881
      9F88891F8888888819F88888888888888888}
    Layout = blGlyphTop
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 144
    Top = 287
  end
  object OpenPictureAux: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 368
    Top = 287
  end
end
