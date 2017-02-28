object frmdatos: Tfrmdatos
  Left = 206
  Top = 56
  BorderStyle = bsNone
  ClientHeight = 321
  ClientWidth = 385
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object NxPCDatos: TNxPageControl
    Left = 0
    Top = 0
    Width = 385
    Height = 321
    ActivePage = NxTabSheet1
    ActivePageIndex = 0
    Align = alClient
    TabOrder = 0
    BackgroundColor = clSilver
    BackgroundKind = bkSolid
    Margin = 0
    Spacing = 0
    TabHeight = 17
    object NxTabSheet1: TNxTabSheet
      Caption = 'NxTabSheet1'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      object nxpnuevo: TNxPanel
        Left = 0
        Top = 0
        Width = 385
        Height = 300
        Align = alClient
        BorderPen.Color = clWindow
        UseDockManager = False
        InnerMargins.Left = 0
        InnerMargins.Top = 0
        InnerMargins.Bottom = 0
        InnerMargins.Right = 0
        TabOrder = 0
        object NxHeaderPanel4: TNxHeaderPanel
          Left = 0
          Top = 111
          Width = 385
          Height = 189
          Align = alClient
          BorderWidth = 2
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          HeaderSize = 15
          HeaderStyle = psWindowsLive
          InnerMargins.Left = 0
          InnerMargins.Top = 0
          InnerMargins.Bottom = 0
          InnerMargins.Right = 0
          ParentHeaderFont = False
          TabOrder = 1
          FullWidth = 385
          object NxLabel3: TNxLabel
            Left = 55
            Top = 70
            Width = 29
            Height = 13
            Caption = 'User: '
            HorizontalPosition = hpLeft
            InnerHorizontal = True
            InnerVertical = False
            InnerMargins.Horizontal = 0
            InnerMargins.Vertical = 2
            VerticalPosition = vpTop
          end
          object NxLabel4: TNxLabel
            Left = 55
            Top = 97
            Width = 53
            Height = 13
            Caption = 'Password: '
            HorizontalPosition = hpLeft
            InnerHorizontal = True
            InnerVertical = False
            InnerMargins.Horizontal = 0
            InnerMargins.Vertical = 2
            VerticalPosition = vpTop
          end
          object NxLabel5: TNxLabel
            Left = 55
            Top = 33
            Width = 73
            Height = 13
            Caption = 'Base de Datos:'
            HorizontalPosition = hpLeft
            InnerHorizontal = True
            InnerVertical = False
            InnerMargins.Horizontal = 0
            InnerMargins.Vertical = 2
            VerticalPosition = vpTop
          end
          object btnaceptar: TNxButton
            Left = 90
            Top = 140
            Width = 75
            Caption = '&Aceptar'
            Enabled = False
            TabOrder = 3
            OnClick = btnaceptarClick
          end
          object nxedtuser: TNxEdit
            Left = 126
            Top = 67
            Width = 153
            Height = 21
            Enabled = False
            TabOrder = 1
            OnKeyPress = nxedtuserKeyPress
          end
          object nxedtpassword: TNxEdit
            Left = 126
            Top = 94
            Width = 153
            Height = 21
            Enabled = False
            TabOrder = 2
            PasswordChar = '*'
            OnKeyPress = nxedtpasswordKeyPress
          end
          object nxcmbbasedatos: TNxComboBox
            Left = 134
            Top = 28
            Width = 138
            Height = 21
            Cursor = crArrow
            Enabled = False
            TabOrder = 0
            ReadOnly = True
            OnKeyPress = nxcmbbasedatosKeyPress
            HideFocus = False
            Style = dsDropDownList
            AutoCompleteDelay = 0
          end
          object btncancelar: TNxButton
            Left = 222
            Top = 140
            Width = 75
            Caption = '&Cancelar'
            TabOrder = 4
            OnClick = btncancelarClick
          end
        end
        object NxHeaderPanel3: TNxHeaderPanel
          Left = 0
          Top = 0
          Width = 385
          Height = 111
          Align = alTop
          BorderWidth = 2
          Caption = 'Servidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Arial'
          HeaderFont.Style = [fsBold]
          HeaderStyle = psWindowsLive
          InnerMargins.Left = 0
          InnerMargins.Top = 0
          InnerMargins.Bottom = 0
          InnerMargins.Right = 0
          ParentFont = False
          ParentHeaderFont = False
          TabOrder = 0
          OnMouseDown = NxHeaderPanel3MouseDown
          FullWidth = 385
          object NxLabel1: TNxLabel
            Left = 58
            Top = 45
            Width = 47
            Height = 13
            Caption = 'Servidor: '
            HorizontalPosition = hpLeft
            InnerHorizontal = True
            InnerVertical = False
            InnerMargins.Horizontal = 0
            InnerMargins.Vertical = 2
            VerticalPosition = vpTop
          end
          object NxLabel2: TNxLabel
            Left = 58
            Top = 72
            Width = 39
            Height = 13
            Caption = 'Puerto: '
            HorizontalPosition = hpLeft
            InnerHorizontal = True
            InnerVertical = False
            InnerMargins.Horizontal = 0
            InnerMargins.Vertical = 2
            VerticalPosition = vpTop
          end
          object nxedtservidor: TNxEdit
            Left = 122
            Top = 42
            Width = 153
            Height = 21
            TabOrder = 0
            OnChange = nxedtservidorChange
            OnKeyPress = nxedtservidorKeyPress
          end
          object btnconexion: TNxButton
            Left = 201
            Top = 69
            Width = 74
            Caption = 'Conectar....'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000C40E0000C40E00000000000000000000B06F4009AB66
              3CB7A45D38FA9E543406FFFFFF00FFFFFF00FFFFFF00FFFFFF009999990D9595
              95319191912F8C8C8C07FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA7C4AB7BF87
              5CFFB97E56FFA7623AFA9F5735749D644C659D857DB39D9390F2A19F9FFFABAB
              ABFFA7A7A7FF959595FF8D8D8DE78989898A86868616FFFFFF00C4885AFAC692
              68FFCDA280FFC59670FFB67B53FFAB6A46FFA35E3DFF9C5235FFA76B59FFF1EF
              EEFFF4F4F4FFEFEFEFFFE2E2E2FFBABABAFF8A8A8AE786868635CD956A06C68C
              60FAD1A683FFCC9F7BFFCB9E7BFFC79974FFC3926CFFBE8D65FFA86945FFBA97
              8BFFD6D6D6FFC0C0C0FFC9C9C9FFE6E6E6FFC4C4C4FF8B8B8BEAFFFFFF00CE98
              7074D0A17CFFD7AE8FFFC9976FFFC38F66FFBD885CFFC08C64FFBC8861FF8554
              3FFFD3D1D0FFBFBFBFFFB0B0B0FFB3B3B3FFDEDEDEFF909090EAFFFFFF00D7A5
              7F4ED7A682FFDCB699FFD0A17DFFCB9A73FFCFA482FFC79974FF896C58FF8787
              87FF828282FFC0C0C0FFB3B3B3FFB7B7B7FFE0E0E0FF969696EAFFFFFF00E0AE
              8C39DDAE8CFFE2BEA4FFD8AB89FFD9B394FFCF9F7AFFA47A5BFF939393FFA9A9
              A9FF696969FFC3C3C3FFB8B8B8FFBBBBBBFFE1E1E1FF9B9B9BEAFFFFFF00E6B8
              981EE3B493FFE8C6ADFFE3C0A6FFDBB08FFFB58F74FFD9CBC1FF9A9A9AFF7A7A
              7AFFDCDCDCFFC9C9C9FFBDBDBDFFBFBFBFFFE2E2E2FF9E9E9EEAFFFFFF00ECC0
              A104E7BB9CDAE8C0A3FFE5BFA3FFB69E8CFFAEAEAEFFA8A8A8FFE1E1E1FFE5E5
              E5FFE1E1E1FFCDCDCDFFC2C2C2FFC2C2C2FFE3E3E3FFA0A0A0EAFFFFFF00FFFF
              FF00EDC3A509EABE9FAFCDAF9BFEB7B7B7FFBCBCBCFFABABABFFD6D6D6FFD5D5
              D5FFD1D1D1FFC3C3C3FFBCBCBCFFC0C0C0FFE5E5E5FFA3A3A3EAFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00BEB8B4ECC1C1C1FFB6B6B6FFEFEFEFFFF6F6F6FFFBFB
              FBFFFAFAFAFFF0F0F0FFDEDEDEFFC3C3C3FFE6E6E6FFA5A5A5EAFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00B9B9B9EAF8F8F8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFEAEAEAFFA7A7A7EAFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00BABABABFE1E1E1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCFCFCFFFA9A9A9A1FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00BCBCBC2ABBBBBBD1D0D0D0FFE8E8E8FFF3F3F3FFFDFD
              FDFFFCFCFCFFEDEDEDFFE0E0E0FFC2C2C2FFADADADC3ACACAC1BFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00BCBCBC07BBBBBB55BABABAAEB8B8B8D6B7B7
              B7FBB6B6B6F9B4B4B4CDB3B3B3A9B1B1B146AFAFAF03FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            ParentFont = False
            TabOrder = 2
            OnClick = btnconexionClick
          end
          object nxedtpuerto: TNxEdit
            Left = 122
            Top = 69
            Width = 73
            Height = 21
            TabOrder = 1
            Text = '3306'
            OnChange = nxedtservidorChange
            OnKeyPress = nxedtpuertoKeyPress
          end
          object NxGlyphButton1: TNxGlyphButton
            Left = 364
            Top = 0
            Width = 16
            Height = 16
            AutoSize = True
            HoverImage.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF4080FF4080FF4080FF4080FF4080FF4080FF40
              80FF4080FF4080FF4080FF4080FF4080FF4080FF4080FFFFFFFFFFFFFF4080FF
              4080FF4080FF1A20F5CBCBFE0000FFCBCBFE0000FFCBCBFECBCBFE141BF14080
              FF4080FF4080FFFFFFFFFFFFFF4080FF4080FF1D23F9CBCBFE2429F91212F70F
              0FF60C0CF50909F5161BF5FFFFFF141BF14080FF4080FFFFFFFFFFFFFF4080FF
              1F25FACBCBFE4247FBC9C9FD3B3BF91313F71010F63333F7C5C5FDFFFFFFFFFF
              FF141BF24080FFFFFFFFFFFFFF4080FFCBCBFE3237FBCBCBFEF2F2FFEBEBFE3B
              3BF93939F8EAEAFEF1F1FEC5C5FD181DF6CBCBFE4080FFFFFFFFFFFFFF4080FF
              0000FF2828FC4747FCECECFFF2F2FFECECFFECECFEF1F1FFEAEAFE3434F70B0B
              F5CBCBFE4080FFFFFFFFFFFFFF4080FFCBCBFE2C2CFD2929FC4848FCEDEDFFF2
              F2FFF2F2FFECECFE3A3AF91212F70F0FF60000FF4080FFFFFFFFFFFFFF4080FF
              0000FF3030FD2D2DFD4B4BFCEDEDFFF2F2FFF2F2FFECECFF3D3DF91616F81313
              F7CBCBFE4080FFFFFFFFFFFFFF4080FFCBCBFE3333FE5050FDEDEDFFF3F3FFED
              EDFFEDEDFFF2F2FFECECFE3E3EFA1717F80000FF4080FFFFFFFFFFFFFF4080FF
              CBCBFE4347FECFCFFFF3F3FFEDEDFF4C4CFC4A4AFCECECFFF2F2FFCACAFE2A2F
              FACBCBFE4080FFFFFFFFFFFFFF4080FF262BFFFFFFFFFFFFFFCFCFFF5252FE2F
              2FFD2C2CFD4B4BFCCCCCFEFFFFFFFFFFFF1D23F94080FFFFFFFFFFFFFF4080FF
              4080FF262BFFFFFFFF4347FF3434FE3232FE3030FD2D2DFD383CFCFFFFFF1F25
              FA4080FF4080FFFFFFFFFFFFFF4080FF4080FF4080FF262BFFCBCBFE0000FFCB
              CBFE0000FFCBCBFECBCBFE2227FC4080FF4080FF4080FFFFFFFFFFFFFF4080FF
              4080FF4080FF4080FF4080FF4080FF4080FF4080FF4080FF4080FF4080FF4080
              FF4080FF4080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Image.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000F10000F10000F100
              00F10000EF0000EF0000ED0000ED0000FF0000FF0000FFFFFFFFFFFFFF0000FF
              0000FF0000F51A20F53C4CF93A49F83847F83545F83443F73242F7141BF10000
              ED0000FF0000FFFFFFFFFFFFFF0000FF0000F71D23F94453FA2429F91212F70F
              0FF60C0CF50909F5161BF53343F7141BF10000ED0000FFFFFFFFFFFFFF0000F9
              1F25FA4A58FB4247FBC9C9FD3B3BF91313F71010F63333F7C5C5FD3035F73444
              F7141BF20000EDFFFFFFFFFFFF0000FB4F5DFD3237FBCBCBFEF2F2FFEBEBFE3B
              3BF93939F8EAEAFEF1F1FEC5C5FD181DF63343F70000EFFFFFFFFFFFFF0000FD
              525FFD2828FC4747FCECECFFF2F2FFECECFFECECFEF1F1FFEAEAFE3434F70B0B
              F53545F80000EFFFFFFFFFFFFF0000FD5562FE2C2CFD2929FC4848FCEDEDFFF2
              F2FFF2F2FFECECFE3A3AF91212F70F0FF63848F80000F1FFFFFFFFFFFF0000FD
              5764FE3030FD2D2DFD4B4BFCEDEDFFF2F2FFF2F2FFECECFF3D3DF91616F81313
              F73C4BF80000F1FFFFFFFFFFFF0000FF5A67FE3333FE5050FDEDEDFFF3F3FFED
              EDFFEDEDFFF2F2FFECECFE3E3EFA1717F83F4EF90000F1FFFFFFFFFFFF0000FF
              5B68FF4347FECFCFFFF3F3FFEDEDFF4C4CFC4A4AFCECECFFF2F2FFCACAFE2A2F
              FA4251FA0000F3FFFFFFFFFFFF0000FF262BFF5D6AFF585BFFCFCFFF5252FE2F
              2FFD2C2CFD4B4BFCCCCCFE484CFB4957FB1D23F90000F5FFFFFFFFFFFF0000FF
              0000FF262BFF5D6AFF4347FF3434FE3232FE3030FD2D2DFD383CFC4F5DFC1F25
              FA0000F70000FFFFFFFFFFFFFF0000FF0000FF0000FF262BFF5C69FF5B68FF5A
              67FE5865FE5663FE5461FE2227FC0000FB0000FF0000FFFFFFFFFFFFFF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FD0000FD0000FD0000FD0000
              FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Margin = 2
            OnClick = NxGlyphButton1Click
          end
        end
      end
    end
    object NxTabSheet2: TNxTabSheet
      Caption = 'NxTabSheet2'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      object AdvPanel6: TAdvPanel
        Left = 0
        Top = 0
        Width = 385
        Height = 83
        Align = alTop
        Color = 16250871
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UseDockManager = True
        Version = '2.1.0.4'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        FullHeight = 0
        object NxHeaderPanel1: TNxHeaderPanel
          Left = 1
          Top = 1
          Width = 383
          Height = 81
          Align = alClient
          BorderWidth = 2
          Caption = 'Contratos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderColor = clBlack
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Arial'
          HeaderFont.Style = [fsBold]
          HeaderStyle = psWindowsLive
          ParentFont = False
          ParentHeaderFont = False
          TabOrder = 0
          OnMouseDown = NxHeaderPanel1MouseDown
          FullWidth = 383
          object NxCmbContratos: TNxComboBox
            Left = 69
            Top = 41
            Width = 252
            Height = 21
            Cursor = crArrow
            TabOrder = 0
            ReadOnly = True
            OnChange = NxCmbContratosChange
            HideFocus = False
            Style = dsDropDownList
            AutoCompleteDelay = 0
          end
        end
      end
      object AdvPanel4: TAdvPanel
        Left = 0
        Top = 83
        Width = 385
        Height = 217
        Align = alClient
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.1.0.4'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        FullHeight = 0
        object AdvPanel5: TAdvPanel
          Left = 1
          Top = 156
          Width = 383
          Height = 60
          Align = alBottom
          BevelOuter = bvLowered
          Color = 16250871
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Locked = True
          ParentFont = False
          TabOrder = 0
          UseDockManager = True
          Version = '2.1.0.4'
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          FullHeight = 0
          object Progreso: TAdvProgressBar
            Left = 1
            Top = 41
            Width = 381
            Height = 18
            Align = alBottom
            Animated = True
            CompletionSmooth = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Level0Color = clBlack
            Level0ColorTo = 14811105
            Level1ColorTo = 13303807
            Level2Color = 5483007
            Level2ColorTo = 11064319
            Level3ColorTo = 13290239
            Level1Perc = 70
            Level2Perc = 90
            Position = 50
            ShowBorder = True
            Stacked = True
            Version = '1.2.0.2'
            Visible = False
            ExplicitLeft = 0
            ExplicitTop = 47
            ExplicitWidth = 200
          end
          object AdvGlowButton1: TAdvGlowButton
            Left = 9
            Top = 6
            Width = 85
            Height = 28
            AntiAlias = aaAntiAlias
            Caption = '&Agregar Frentes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Trimming = StringTrimmingEllipsisCharacter
            TabOrder = 0
            OnClick = AdvGlowButton1Click
            Appearance.BorderColor = 12631218
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.Color = 14671574
            Appearance.ColorTo = 15000283
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 14144974
            Appearance.ColorMirrorTo = 15197664
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object AdvGlowButton2: TAdvGlowButton
            Left = 121
            Top = 6
            Width = 85
            Height = 28
            AntiAlias = aaAntiAlias
            Caption = '&Salir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Trimming = StringTrimmingEllipsisCharacter
            TabOrder = 1
            OnClick = AdvGlowButton2Click
            Appearance.BorderColor = 12631218
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.Color = 14671574
            Appearance.ColorTo = 15000283
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 14144974
            Appearance.ColorMirrorTo = 15197664
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
        end
        object NxHeaderPanel2: TNxHeaderPanel
          Left = 1
          Top = 1
          Width = 383
          Height = 155
          Align = alClient
          BorderWidth = 2
          Caption = 'Frentes de Trabajo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -13
          HeaderFont.Name = 'Arial'
          HeaderFont.Style = [fsBold]
          HeaderStyle = psWindowsLive
          InnerMargins.Left = 0
          InnerMargins.Top = 0
          InnerMargins.Bottom = 0
          InnerMargins.Right = 0
          ParentFont = False
          ParentHeaderFont = False
          TabOrder = 1
          FullWidth = 383
          object CkLbxFrentes: TJvxCheckListBox
            Left = 0
            Top = 27
            Width = 379
            Height = 124
            Align = alClient
            AutoScroll = False
            Columns = 4
            ItemHeight = 13
            TabOrder = 0
            InternalVersion = 202
          end
        end
      end
    end
  end
end
