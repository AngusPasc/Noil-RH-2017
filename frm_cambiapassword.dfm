object frmcambiopassword: Tfrmcambiopassword
  Left = 644
  Top = 187
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cambio de Password'
  ClientHeight = 129
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 6
    Top = 11
    Width = 42
    Height = 14
    Caption = 'Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 6
    Top = 33
    Width = 113
    Height = 14
    Caption = 'Contrase'#241'a Anterior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 6
    Top = 55
    Width = 100
    Height = 14
    Caption = 'Nueva Contrase'#241'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 6
    Top = 77
    Width = 159
    Height = 14
    Caption = 'Confirmar Nueva Contrase'#241'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object tsIdUsuario: TEdit
    Left = 168
    Top = 6
    Width = 121
    Height = 22
    CharCase = ecUpperCase
    Color = 16697018
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = tsIdUsuarioKeyPress
  end
  object tsPassword: TEdit
    Left = 168
    Top = 28
    Width = 121
    Height = 22
    Hint = 'Ingrese la contrase'#241'a que tiene ahora.'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 1
    OnEnter = tsPasswordEnter
    OnExit = tsPasswordExit
    OnKeyPress = tsPasswordKeyPress
  end
  object btnAdelante: TBitBtn
    Left = 33
    Top = 100
    Width = 110
    Height = 25
    Caption = 'OK'
    TabOrder = 4
    OnClick = btnAdelanteClick
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
    NumGlyphs = 2
  end
  object btnAbortar: TBitBtn
    Left = 143
    Top = 100
    Width = 110
    Height = 25
    Cancel = True
    Caption = 'Abort'
    ModalResult = 3
    TabOrder = 5
    OnClick = btnAbortarClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object tsPassword1: TEdit
    Left = 168
    Top = 50
    Width = 121
    Height = 22
    Hint = 'Ingrese la contrase'#241'a nueva que quiere tener.'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 2
    OnEnter = tsPassword1Enter
    OnExit = tsPassword1Exit
    OnKeyPress = tsPassword1KeyPress
  end
  object tsPassword2: TEdit
    Left = 168
    Top = 72
    Width = 121
    Height = 22
    Hint = 'Ingrese de nuevo la contrase'#241'a que quiere tener.'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 3
    OnEnter = tsPassword2Enter
    OnExit = tsPassword2Exit
    OnKeyPress = tsPassword2KeyPress
  end
  object usuarios: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 136
    Top = 64
  end
end
