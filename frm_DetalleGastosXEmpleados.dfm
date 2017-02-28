object frmDetalleGastosXEmpleados: TfrmDetalleGastosXEmpleados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '     $ Gastos X Empleados/Proveedores/Egresos'
  ClientHeight = 437
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    772
    437)
  PixelsPerInch = 96
  TextHeight = 13
  object cmdEmpleados: TcxButton
    Left = 16
    Top = 2
    Width = 97
    Height = 33
    Caption = 'Empleados'
    TabOrder = 3
    OnClick = cmdEmpleadosClick
    OptionsImage.Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9C06EC49E20C49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20D9C06FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF6C49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFBF9F1C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFDFAC59F23C49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C4
      9F22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC272C7A42DC49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20D4B85BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFEF1E7C9D5BB62C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20C49E20CBAA3BF7F2E0FFFFFFFFFFFFFFFFFFEFE1DBCEA2
      90BE836BBE836BCEA290EFE0DBFFFFFFE9DAAAC5A023C49E20C49E20C49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20D4B85CFBF8EEFFFFFFFFFFFFFEFDFD
      CC9D8AA24F2DA24E2CBE836CBE836CA24E2CA24F2DCB9C8AFEFDFDE9DCAEC49E
      20C49E20C49E20C49E20C49E20C49E20C49E20C49E20E0CC8BFEFEFCFFFFFFFF
      FFFFFFFFFFC89682A24E2CA24E2CA24E2CE5CDC3E8D4CCA24E2CA24E2CA24E2C
      C89581FFFFFFD7BE69C49E20C49E20C49E20C49E20C49E20C9A631ECE1B9FFFF
      FFFFFFFFFFFFFFFFFFFFE8D3CAA24E2CA24E2CA24E2CD9B6A8FFFFFFFFFFFFD9
      B8AAA24E2CA24E2CA24E2CE8D3CAF5EFD9C49E20C49E20C49E20C49E20C49E20
      FCFAF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0866FA24E2CA24E2CAC6143FFFE
      FED2AA99D2A998FFFEFEAC6143A24E2CA24E2CBF856DFFFFFFCDAE44C49E20C4
      9E20C49E20C49E20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA95A3BA24E2C
      A24E2CA85A3AE1C5BAB26C50D1A796FFFFFFAE6446A24E2CA24E2CA85A3AFFFF
      FFD9C170C49E20C49E20C49E20C49E20EADCAFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA24E2CA24E2CA24E2CA24E2CCFA493FEFEFDFFFFFFDCBCAFA24E2CA24E2C
      A24E2CA24E2CFEFDFDDEC881C49E20C49E20C49E20C49E20CBAA3CFFFEFDFFFF
      FFFFFFFFFFFFFFFFFFFFA75737A24E2CA24E2CAB5F41FEFEFDDBBAADBC8068D4
      AD9DA65534A24E2CA24E2CA65636FFFFFFDCC57AC49E20C49E20C49E20C49E20
      C49E20F2E9CDFFFFFFFFFFFFFFFFFFFFFFFFBC7F66A24E2CA24E2CAF6649FFFF
      FFC89783C79580FFFFFFAF684BA24E2CA24E2CBB7D64FFFFFFD1B452C49E20C4
      9E20C49E20C49E20C49E20E6D59FFFFFFFFFFFFFFFFFFFFFFFFFE1C5BAA24E2C
      A24E2CA24E2CE5CDC3FFFFFFFFFFFFE5CDC3A24E2CA24E2CA24E2CE0C3B8F9F5
      E8C49F22C49E20C49E20C49E20C49E20C49E20D8BF6CECE1B9FFFFFFFFFFFFFF
      FFFFFFFEFEBE836BA24E2CA24E2CA3512FE9D5CDEDDDD6A45130A24E2CA24E2C
      BD826AFFFEFEDDC77FC49E20C49E20C49E20C49E20C49E20C49E20C49E20CDAC
      40FFFFFFFFFFFFFFFFFFFFFFFFFBF7F5BE836CA24E2CA24E2CC79580C89581A2
      4E2CA24E2CBD826AFAF6F4F0E7C8C49F22C49E20C49E20C49E20C49E20C49E20
      C49E20D9C06FFAF7EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3CABFC188
      72B0694CB0694CC18872E2C8BEFFFFFFF6F1DEC7A32CC49E20C49E20C49E20C4
      9E20C49E20C49E20C49E20EADCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F1C7A42DC49E
      20C49E20C49E20C49E20C49E20C49E20C7A42DFCF9F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFECDFB6C49F22C49E20C49E20C49E20C49E20C59F23ECE0B7FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E6C6D3B657C59F23C5A024D3B658F1E8CB
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object cmdProveedores: TcxButton
    Left = 132
    Top = 2
    Width = 97
    Height = 33
    Caption = 'Proveedores'
    TabOrder = 4
    OnClick = cmdProveedoresClick
    OptionsImage.Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFC9A734C49E20C49E20C49E20C49E20C49E20F8F3E3FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFCFB049C49E20C49E20C49E20C49E20C49E20F1E9CBFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFC49E20C49E20C49E20C49E20C49E20C49E20F8F3E3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB049C49E20C49E20C49E20C49E20C49E
      20ECE1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC49E20C49E20C49E20C49E20C4
      9E20C49E20F8F3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB049C49E20C49E20
      C49E20C49E20C49E20ECE1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC49E20C49E
      20C49E20C49E20C49E20C49E20F8F3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
      B049C49E20C49E20C49E20C49E20C49E20ECE1B9FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFC49E21D0B24ED8BF6CD9C170D2B656C5A025F8F3E3FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFCFB049C49E20C49E20C49E20C49E20C49E20ECE1B9FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF9F5E9FFFFFFFFFFFFFFFFFFFFFFFFFCF9F2FDFCF9
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB049C49E20C49E20C49E20C49E20C49E
      20ECE1B9FFFFFFFFFFFFFFFFFFFFFFFFFEFDFDDDBEB1BB7D64AB5F40AA5D3DB7
      765BD5B0A1FCF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB049C49E20C49E20
      C49E20C49E20C49E20ECE1B9FFFFFFFFFFFFFFFFFFF7F0EEB7765CA24E2CA24E
      2CC99884D6B1A1A24E2CA24E2CAE6648F0E3DDFFFFFFFFFFFFFFFFFFFFFFFFCE
      AF46C49E20C49E20C49E20C49E20C49E20ECE1B9FFFFFFFFFFFFFDFCFBB6745A
      A24E2CA24E2CA85939E9D5CDF5ECE8AC6143A24E2CA24E2CAD6244F7F0EDFFFF
      FFFFFFFFF4ECD4C5A025C49E20C49E20C49E20C49E20C49E20ECE1B9FFFFFFFF
      FFFFD9B6A8A24E2CA24E2CA24E2CEBD9D1FCF9F8FAF5F3F4EBE7A65635A24E2C
      A24E2CC99885FFFFFFD0B14CC49E20C49E20C49E20C49E20C49E20C49E20C49E
      20ECE1B9FFFFFFFFFFFFB67359A24E2CA24E2CAB5F41FFFFFFC18A73B57257FF
      FFFFBD8168A24E2CA24E2CA85939FEFCFCDDC880C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20F5EFD9FFFFFFFFFFFFA55332A24E2CA24E2CA24E2CC188
      72D0A593E8D4CCFEFCFCAD6345A24E2CA24E2CA24E2CF2E6E1E6D7A2C49E20C4
      9E20C49E20C49E20C49E20C49E20E3D297FFFFFFFFFFFFFFFFFFA34F2EA24E2C
      A24E2CA24E2CEAD7D0FCFAF9ECDCD5C18972A24E2CA24E2CA24E2CA24E2CF0E3
      DDE9DAABC49E20C49E20C49E20C49E20C49E20E3D196ECDBD4B7765CAD6446B8
      785EAE6648A24E2CA24E2CAC6143FFFFFFC5917CAA5D3DFBF8F7B6755AA24E2C
      A24E2CA3512FFBF7F5E2CF92C49E20C49E20C49E20C49E20E3D196EBD9D1A758
      38A24E2CAC6142F2E6E1CD9F8DA24E2CA24E2CA45130F7F0EDEEDED8E7D2C9FE
      FCFCAD6446A24E2CA24E2CBD8169FFFFFFD3B658C49E20C49E20C49E20E3D196
      EBD9D1A75737A24E2CAB6042F2E6E1FFFFFFF7F0EEA95B3CA24E2CA24E2CB572
      57F3E8E4FAF5F3C0866FA24E2CA24E2CA45130EDDCD6F5EFD9C49E20C49E20C4
      9E20E3D196EBD9D1A55430A24E2CA6562BE2CCA5FFFFFFFFFFFFFFFFFFE9D5CD
      A85939A24E2CA24E2CD7B3A5E8D3CAA24E2CA24E2CA45130DEC0B4FEFEFCD2B5
      55C49E20C49E20E3D196EBD9D1A75838A24E2CA6562BBF9322ECE1B9FFFFFFFF
      FFFFFFFFFFFFFFFFF3E7E3C28A74A45231A45130A65635A34F2EBA7D63ECDAD3
      FEFEFCDBC477C49E20C49E20E3D196EBD9D1A75838A24E2CA7582FBF9322C49E
      20ECE1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F5EDDCD6EBDAD2F9
      F3F1FFFFFFF6EEEBF6EFDBC7A32CC49E20E3D196EBD9D1A75838A24E2CAC6142
      C8A245C49E20C49E20ECE1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFEAD7CFBB7E65A24F2DD3AC9CF4EDD6EBDFB5EBD9D1A75838A2
      4E2CAC6142F2E6E1CFB049C49E20C49E20ECE1B9FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFABF856DA24E2CA24E2CD2A998E8D3
      CAA75838A24E2CAC6142F2E6E1FFFFFFD8BE6AC49E20C5A024F2EACEFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDC38C76
      A24E2CA24E2CA24E2CA24E2CAC6142F2E6E1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFDFDC38C76A24E2CA24E2CAC6142F2E6E1FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDC38D77AD6345F2E6E1FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object cmdEgresos: TcxButton
    Left = 247
    Top = 2
    Width = 97
    Height = 33
    Caption = 'Otros Egresos'
    TabOrder = 5
    OnClick = cmdEgresosClick
    OptionsImage.Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD8BF6CC49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20D8
      BF6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBF5C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20C49E20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F1C49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFBF9F1C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFDFCF7DCC67BD5B95FC6A127C49E20C49E20C49E20C49E
      20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C4
      9E20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFEFFFFFFFDFBF6E4D39A
      C7A32CC49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20C49E20FFFFFFFFFFFFFBF7F6D3AB9BB26D50A3512FA3512FB2
      6C50D3AB9BFBF7F5F6F0DCCCAB3FC49E20C49E20C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20FFFFFFF2E6E1B0684BA24E2CA24E
      2CD4AE9ED5B0A1A24E2CA24E2CB0684BF2E6E1F6F0DDC7A32CC49E20C49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20FBF7F6B0684B
      A24E2CA24E2CAD6446F0E3DEF3E9E5AE6648A24E2CA24E2CB0684BFBF7F5E4D3
      9AC49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C4
      9E20D3AB9BA24E2CA24E2CA55332F3E8E4F5ECE9F5ECE9F4E9E5A55332A24E2C
      A24E2CD3AA9AFDFBF6C6A127C49E20C49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20C49E20B26D50A24E2CA24E2CAF684BFFFFFFB7765BBC8068FF
      FFFFB26C50A24E2CA24E2CB26C50FFFFFFD5BA61C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20A45130A24E2CA24E2CA24E2CBD81
      69DCBDB0F4EAE6F6EDE9A55433A24E2CA24E2CA3512FFFFEFEDCC67CC49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20A45130A24E2C
      A24E2CA55332F5ECE9F4EBE7DCBDB0BD826AA24E2CA24E2CA24E2CA3512FFFFE
      FEDCC67CC49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C4
      9E20B26D50A24E2CA24E2CB26C50FFFFFFBD8168B67359FFFFFFAF684BA24E2C
      A24E2CB26C50FFFFFFD5BA61C49E20C49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20C49E20D3AB9BA24E2CA24E2CA55332F3E8E4F5ECE9F5ECE9F4
      E9E5A55332A24E2CA24E2CD3AA9AFDFBF6C6A127C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20FBF7F6B0684BA24E2CA24E2CAD64
      46F0E3DEF3E9E5AE6648A24E2CA24E2CB0684BFBF7F5E4D39AC49E20C49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20FFFFFFF2E6E1
      B0684BA24E2CA24E2CD4AE9ED5B0A1A24E2CA24E2CB0684BF2E6E1F6F0DDC7A3
      2CC49E20C49E20C49E20D3B657E1CE8FE1CE8FE1CE8FE1CE8FE1CE8FE1CE8FE1
      CE8FFFFFFFFFFFFFFBF7F6D3AB9BB26C50A3512FA3512FB26C50D3AB9BFBF7F5
      F6F0DCCCAB3FC49E20C49E20C49E20C49E20E1CE8FFFFEFEF9F4F2F9F4F2F9F4
      F2F9F4F2F9F4F2F9F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFEFF
      FFFFFDFBF6E4D39AC7A32CC49E20C49E20C49E20C49E20C49E20E1CE8FF9F4F2
      A24E2CA24E2CA24E2CA24E2CA24E2CAB6042FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFDFCF7DCC67BD5B95FC6A127C49E20C49E20C49E20C49E20C49E20C49E20C4
      9E20E1CE8FF9F4F2A24E2CA24E2CA24E2CA24E2CA75838EBD9D1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFBF9F1C49E20C49E20C49E20C49E20C49E20C49E20C49E
      20C49E20C49E20C49E20E1CE8FF9F4F2A24E2CA24E2CA24E2CA75838EBD9D1FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F1C49E20C49E20C49E20C49E20
      C49E20C49E20C49E20C49E20C49E20C49E20E1CE8FF9F4F2A24E2CA24E2CA758
      38EBD9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBF5C49E20C4
      9E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20E1CE8FF9F4F2
      A24E2CA75838EBD9D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFD8BF6CC49E20C49E20C49E20C49E20C49E20C49E20C49E20C49E20C4
      9E20E1CE8FF9F4F2AB6042EBD9D1FFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object Panel2: TPanel
    Left = 466
    Top = 5
    Width = 302
    Height = 439
    Anchors = [akTop, akRight]
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 40
      Width = 84
      Height = 13
      Caption = 'Fecha de Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 87
      Width = 69
      Height = 13
      Caption = 'Fehca de Fin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 85
      Top = 9
      Width = 117
      Height = 26
      Align = alCustom
      Alignment = taCenter
      Caption = 'Impresion de Listas '#13#10'por Rango de Fechas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rbgOpciones: TRadioGroup
      Left = 13
      Top = 139
      Width = 268
      Height = 56
      Caption = 'Tipo de Reporte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object FechaIni: TDateTimePicker
      Left = 15
      Top = 58
      Width = 167
      Height = 22
      Date = 41341.463467465280000000
      Time = 41341.463467465280000000
      Color = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object FechaFin: TDateTimePicker
      Left = 15
      Top = 104
      Width = 167
      Height = 22
      Date = 41341.463467465280000000
      Time = 41341.463467465280000000
      Color = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object rdAgrupado: TRadioButton
      Left = 27
      Top = 153
      Width = 72
      Height = 17
      Caption = 'Agrupado'
      Checked = True
      TabOrder = 3
      TabStop = True
    end
    object rdDetallado: TRadioButton
      Left = 27
      Top = 176
      Width = 72
      Height = 17
      Caption = 'Detallado'
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 231
      Width = 268
      Height = 199
      Caption = 'Tipos de Egresos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object tsListaEgresos: TRxCheckListBox
        Left = 2
        Top = 36
        Width = 264
        Height = 161
        Align = alBottom
        Color = 15138559
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 0
        InternalVersion = 202
      end
      object chxTodos: TCheckBox
        Left = 5
        Top = 18
        Width = 97
        Height = 17
        Caption = 'Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 1
        OnClick = chxTodosClick
      end
    end
  end
  object cmdImprimir: TAdvGlowButton
    Left = 644
    Top = 205
    Width = 101
    Height = 28
    Hint = 'Imprimir'
    Anchors = [akTop, akRight]
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageIndex = 45
    Images = connection.ImageList1
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cmdImprimirClick
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object grid_catIngresos: TcxGrid
    Left = 8
    Top = 42
    Width = 450
    Height = 387
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object BVIew_catIngresos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellClick = BVIew_catIngresosCellClick
      DataController.DataSource = dszQEmpleados
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnHorzSizing = False
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object BVIew_catIngresossIdEmpleado1: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'sIdEmpleado'
        HeaderAlignmentHorz = taCenter
        Width = 84
      end
      object BVIew_catIngresossNombreCompleto1: TcxGridDBColumn
        Caption = 'Nombre Completo'
        DataBinding.FieldName = 'sNombreCompleto'
        Width = 281
      end
    end
    object grid_catIngresosLevel1: TcxGridLevel
      GridView = BVIew_catIngresos
    end
  end
  object dszQEmpleados: TDataSource
    AutoEdit = False
    DataSet = zQEmpleados
    Left = 51
    Top = 205
  end
  object zQEmpleados: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQEmpleadosAfterScroll
    SQL.Strings = (
      
        'select e.sIdEmpleado, ifnull(concat(e.sNombreCompleto," ", e.sAp' +
        'ellidoPaterno, " ", e.sApellidoMaterno),e.sNombreCompleto) as sN' +
        'ombreCompleto, '
      'd.titulodepartamento as sPuesto'
      'from empleados e'
      
        'inner join nuc_departamento d on (d.iddepartamento = e.iddeparta' +
        'mento)'
      'order by sNombreCompleto')
    Params = <>
    Left = 24
    Top = 204
    object zQEmpleadossIdEmpleado: TStringField
      DisplayWidth = 14
      FieldName = 'sIdEmpleado'
      Required = True
    end
    object zQEmpleadossNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object zQEmpleadossPuesto: TStringField
      FieldName = 'sPuesto'
      Required = True
      Size = 50
    end
  end
  object frxrepor: TfrxDBDataset
    UserName = 'frxrepor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdProveedor=sIdProveedor'
      'sRazonSocial=sRazonSocial'
      'mdescripcion=mdescripcion'
      'dimporte=dimporte'
      'sTipoEgreso=sTipoEgreso'
      'sIdEgreso=sIdEgreso'
      'tipo=tipo'
      'dIdFecha=dIdFecha')
    DataSet = zegresos
    BCDToCurrency = False
    Left = 80
    Top = 168
  end
  object frxReport: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39813.804003356500000000
    ReportOptions.LastChange = 42148.406901145830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      
        '   sMes : Array [1..12] of String ;                             ' +
        '                                                     '
      'procedure MasterData2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxrepor."tipo"> = '#39'Detallado'#39' then begin'
      '       Agrupado.Visible  := False;  '
      '       Detallado.Visible := True;'
      '       Detallado.Top     := 0;'
      '       Detallado.Left    := 0;                             '
      '  end'
      '  else begin'
      '       Agrupado.Visible  := True;  '
      '       Detallado.Visible := False;'
      '       Agrupado.Top      := 0;'
      '       Agrupado.Left     := 0;           '
      '  end;            '
      ''
      'end;'
      ''
      'begin'
      '   sMes[1] := '#39'ENERO'#39' ;'
      '   sMes[2] := '#39'FEBRERO'#39' ;  '
      '   sMes[3] := '#39'MARZO'#39' ;'
      '   sMes[4] := '#39'ABRIL'#39' ;  '
      '   sMes[5] := '#39'MAYO'#39' ;'
      '   sMes[6] := '#39'JUNIO'#39' ;  '
      '   sMes[7] := '#39'JULIO'#39' ;'
      '   sMes[8] := '#39'AGOSTO'#39' ;  '
      '   sMes[9] := '#39'SEPTIEMBRE'#39' ;'
      '   sMes[10] := '#39'OCTUBRE'#39' ;  '
      '   sMes[11] := '#39'NOVIEMBRE'#39' ;'
      '   sMes[12] := '#39'DICIEMBRE'#39' ;                      '
      'end.')
    Left = 224
    Top = 88
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frxrepor
        DataSetName = 'frxrepor'
      end
      item
        DataSet = frxreport1
        DataSetName = 'frxreport1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 483.779840000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Left = 294.803340000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 224.881889760000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Left = 108.047310000000000000
          Top = 152.393700790000000000
          Width = 612.283860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxreport1."sIdEmpleado"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 152.480520000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Id Empleado:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 107.385900000000000000
          Top = 171.378170000000000000
          Width = 612.283860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[frxreport1."sNombreCompleto"]')
        end
        object Memo16: TfrxMemoView
          Top = 171.378170000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Nombre:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 107.385900000000000000
          Top = 190.275820000000000000
          Width = 612.283860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8 = (
            '[frxreport1."sPuesto"]')
        end
        object Memo18: TfrxMemoView
          Top = 190.275820000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Puesto:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 128.480520000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Tipo Egreso: [frxrepor."sTipoEgreso"]')
          ParentFont = False
        end
        object frConfiguracionsNombre: TfrxMemoView
          Left = 154.771753500000000000
          Top = 2.322820000000000000
          Width = 566.929500000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frm_ConfiguracionCont.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sNombre"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 153.629978500000000000
          Top = 52.015770000000000000
          Width = 563.149970000000000000
          Height = 64.252010000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          DataSet = frm_ConfiguracionCont.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sDireccion1"]'
            '[frConfiguracionCont."sTelefono"]'
            '[frConfiguracionCont."sWeb"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 5.559060000000000000
          Top = 3.000000000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
        object Memo8: TfrxMemoView
          Left = 154.771753500000000000
          Top = 31.118120000000000000
          Width = 566.929500000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frm_ConfiguracionCont.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'RFC: [frConfiguracionCont."sRfc"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 37.795300000000000000
        Top = 362.834880000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'MasterData2OnAfterPrint'
        DataSet = frxrepor
        DataSetName = 'frxrepor'
        RowCount = 0
        object Agrupado: TfrxSubreport
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Page = frxReport.Page2
        end
        object Detallado: TfrxSubreport
          Top = 18.795300000000000000
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Page = frxReport.Page3
        end
      end
      object GroupHeader4: TfrxGroupHeader
        Height = 34.015770000000000000
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        Condition = 'frConfiguracionCont."sNombre"'
        object Memo19: TfrxMemoView
          Top = 11.590600000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detalle de Salarios Asignados')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter4: TfrxGroupFooter
        Top = 423.307360000000000000
        Width = 740.409927000000000000
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 23.047310000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'true'
        ReprintOnNewPage = True
        object Memo28: TfrxMemoView
          Top = 0.370130000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Egreso')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 608.504330000000000000
          Top = 0.370130000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Importe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 94.488250000000000000
          Top = 0.370130000000000000
          Width = 514.016080000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Descripci'#195#179'n')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897650000000000000
        Top = 64.252010000000000000
        Width = 740.409927000000000000
        DataSet = frxrepor
        DataSetName = 'frxrepor'
        RowCount = 0
        Stretched = True
        object Memo31: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxrepor."sIdEgreso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 94.488250000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxrepor."mdescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxrepor."dimporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 105.826840000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 502.677490000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxrepor."dimporte">,MasterData3,3)]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader2: TfrxGroupHeader
        Height = 23.047310000000000000
        Top = 41.574830000000000000
        Width = 740.409927000000000000
        Condition = 'frxrepor."sIdEgreso"'
        ReprintOnNewPage = True
        object Memo3: TfrxMemoView
          Top = 0.370130000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Egreso')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 608.504330000000000000
          Top = 0.370130000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Importe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 94.488250000000000000
          Top = 0.370130000000000000
          Width = 411.968770000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Descripci'#195#179'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 506.457020000000000000
          Top = 0.377952760000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16629143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        Height = 18.897650000000000000
        Top = 86.929190000000000000
        Width = 740.409927000000000000
        DataSet = frxrepor
        DataSetName = 'frxrepor'
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxrepor."sIdEgreso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 94.488250000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxrepor."mdescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxrepor."dimporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 506.457020000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxrepor
          DataSetName = 'frxrepor'
          DisplayFormat.FormatStr = 'dd/mm/YYYY'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxrepor."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236240000000000000
        Top = 128.504020000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Left = 506.457020000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxrepor."dimporte">,MasterData4)]')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'true'
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        object Memo20: TfrxMemoView
          Left = 506.457020000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxrepor."dimporte">,MasterData4,3)]')
          ParentFont = False
        end
      end
    end
  end
  object zegresos: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 384
    Top = 72
    object zegresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zegresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zegresosmdescripcion: TMemoField
      FieldName = 'mdescripcion'
      Required = True
      BlobType = ftMemo
    end
    object zegresosdimporte: TFloatField
      FieldName = 'dimporte'
      ReadOnly = True
    end
    object zegresossTipoEgreso: TStringField
      FieldName = 'sTipoEgreso'
      Required = True
      Size = 13
    end
    object zegresossIdEgreso: TStringField
      FieldName = 'sIdEgreso'
      Required = True
      Size = 8
    end
    object zegresostipo: TStringField
      FieldName = 'tipo'
    end
    object zegresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
    end
  end
  object imgIteliBarra: TImageList
    Height = 30
    ShareImages = True
    Width = 30
    Left = 44
    Top = 168
    Bitmap = {
      494C01012A002C0010031E001E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000780000004A0100000100200000000000C06A
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010A5DE0010A5DE00109CD600109C
      D6001094D600000000000000000000000000000000000894DE000894D600088C
      D600088CD600088CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010ADE7005ACEEF008CE7F70084E7FF006BDE
      F70042C6E700109CD6001094D6000894D600109CDE004AC6EF0073DEF70073DE
      F70052D6F70039B5E700088CD600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010B5E7008CDEF7009CE7FF0084DEFF007BDE
      FF006BD6F70021ADDE0063D6F70073DEFF0029B5EF007BDEF700B5EFFF00A5EF
      FF008CE7FF0052CEF7000894D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010B5EF00BDF7FF0073DEF7005AD6F70042CE
      F7008CE7FF0010A5DE0042C6F70029B5F70010ADEF00D6F7FF00BDEFFF00ADEF
      FF009CE7FF00ADF7FF000894DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010BDEF00BDEFFF009CE7FF008CDEFF0073DE
      FF0063DEFF0010A5E7005AD6FF0042CEF70010B5F700C6F7FF00CEF7FF00C6F7
      FF00B5EFFF008CE7F700109CE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018BDEF00ADEFFF0073DEFF0063D6F70042CE
      F70063DEFF0010ADE70031C6F70029B5F70018B5F70018B5F70010B5F70010AD
      F70010ADEF0010A5EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018C6F700CEF7FF00C6F7FF00BDEFFF00A5E7
      FF009CEFFF0010B5E7005AD6FF0042CEFF0031C6F70063D6FF0010A5DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018CEF700DEF7FF00D6F7FF00C6F7FF00B5EF
      FF00BDF7FF0010B5EF0039C6F70029BDF70018ADEF0052C6F70010A5DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094E7FF00DEFFFF00D6F7FF00CEF7
      FF00ADEFFF0029C6F70063D6FF004ACEFF0039C6F70063D6FF0010ADE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018CEF70018CEF70018CEF70018C6
      F70018C6F7007BDEFF0039C6F70029BDF70021B5F7006BD6FF0010ADE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00FFFFFF00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018C6F700A5EFFF006BDEFF0052D6FF0039CEF7005ACEF70010B5EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018C6F70084E7FF0039CEF70031C6F70021BDF7005ACEF70010B5EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600FFFFFF00F7F7F700D6D6
      D600BDBDBD00B5B5B500C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018CEF700BDF7FF00ADEFFF00A5EFFF007BDEFF007BDEFF0010BDEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018CEF700D6F7FF00BDEFFF00ADEFFF009CE7FF00A5EFFF0010BDF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7F700D6D6D600BDBDBD00B5B5B500C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018CEF700A5E7FF00D6F7FF00C6F7FF00BDF7FF00A5EFFF0018C6F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018CEFF0018CEF70018CEF70018CEF70018CEF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010215A0010317B001039
      5200215A84004A84BD003984AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000319CDE00319CDE002994D600218CD600218CD6001884
      D6001884D600107BD600107BD600087BD6000873D6000073CE00006BCE00006B
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000319CDE00319CDE002994D600218CD600218CD6001884D6001884D600107B
      D600107BD600087BD6000873D6000073CE00006BCE00006BCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005AA5
      63005AA55A00529C5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000294AA500315AAD002963
      840094C6FF0094CEFF004284CE00216BAD00B5C6CE00D6D6D600D6D6D600CECE
      CE00CECECE00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039A5DE00BDEFFF00BDEFFF00BDEFFF00C6F7FF00CEFF
      FF00D6FFFF00D6FFFF00C6F7FF00BDEFFF00B5E7FF00ADE7FF00ADE7FF000073
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039A5DE00BDEFFF00BDEFFF00BDEFFF00C6F7FF00CEFFFF00D6FFFF00D6FF
      FF00C6F7FF00BDEFFF00B5E7FF00ADE7FF00ADE7FF000073CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BAD6B0063AD
      6B005AA563006BAD6B004A944A00529C52004A9C520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00C6C6CE00BDC6CE00428C
      AD00E7F7FF00529CDE00187BBD004A94C600428CC600BDCED600EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042A5DE00BDEFFF005ACEF70042ADEF004ABDEF005AC6
      EF005AC6EF005AC6EF004AB5EF0031A5E700299CE70031B5EF00B5E7FF000873
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A5DE00BDEFFF005ACEF70042ADEF004ABDEF005AC6EF005AC6EF005AC6
      EF004AB5EF0031A5E700299CE70031B5EF00B5E7FF000873D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BB573007BBD
      8400B5DEBD0063AD6B0073B57B004A945200529C52004A9C5200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000637BB500638CBD001852
      A5007BB5D6008CB5D60052CEE7005ADEF70073D6EF004A9CDE00B5C6CE00E7E7
      E700FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004AADDE00C6EFFF005AD6F7006BDEFF007BE7FF008CEF
      FF0094F7FF0094EFFF007BDEFF005ACEFF0042BDEF0039BDEF00B5E7FF00087B
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004AADDE00C6EFFF005AD6F7006BDEFF007BE7FF008CEFFF0094F7FF0094EF
      FF007BDEFF005ACEFF0042BDEF0039BDEF00B5E7FF00087BD600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073B57B009CCE
      9C006BB573008CC69400ADDEAD0073B57B00529C520073B57B004A9C52004A94
      4A0042944A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00C6C6CE00BDC6CE00214A
      AD00B5D6E70073BDD600C6F7FF0063DEF7005AE7FF007BD6F7004A94DE00B5C6
      CE00E7E7E700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004AB5DE00C6EFFF0063D6FF004AB5EF005ABDEF0094EF
      FF002994DE004A84AD0084E7FF0042ADEF00319CE70042BDEF00B5E7FF00107B
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004AB5DE00C6EFFF0063D6FF004AB5EF005ABDEF0094EFFF002994DE004A84
      AD0084E7FF0042ADEF00319CE70042BDEF00B5E7FF00107BD600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BBD84007BBD7B0073B5
      7B0094CE9400ADDEB5009CD6A500ADDEAD0073B57B005AAD6300ADDEB5008CC6
      94004A944A0042944A0042944200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000637BB5006394C600214A
      AD00FFFFFF00ADD6E70073CEE700C6F7FF005ADEF7005AE7F7007BD6F7004A9C
      DE00ADBDCE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052B5DE00C6F7FF006BDEFF007BE7FF008CEFFF009CEF
      FF00319CDE00528CB5008CE7FF006BD6FF004AC6F70042C6F700B5E7FF001084
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052B5DE00C6F7FF006BDEFF007BE7FF008CEFFF009CEFFF00319CDE00528C
      B5008CE7FF006BD6FF004AC6F70042C6F700B5E7FF001084D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BBD84007BBD840094CE
      9C00ADDEB5006BB5730094D69C009CDEA500ADDEAD0073B57B0073BD7300C6E7
      CE00B5DEB5006BB56B00529C5A0042944200428C420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00C6C6CE00BDC6CE00214A
      B500FFFFFF00FFFFFF00BDE7F7007BD6EF00C6F7FF005ADEF7005AE7F7007BD6
      F7004AA5E700B5C6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052BDDE00C6F7FF006BDEFF0052BDEF0063BDEF009CE7
      FF0031A5E7004AA5E7008CE7FF004AADEF0031A5E7004AC6F700B5EFFF001884
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052BDDE00C6F7FF006BDEFF0052BDEF0063BDEF009CE7FF0031A5E7004AA5
      E7008CE7FF004AADEF0031A5E7004AC6F700B5EFFF001884D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BBD7B008CCE9400ADDE
      B500A5DEA50094D69C0094D69C007BBD840084C68400ADDEAD007BBD7B0063AD
      6300C6E7CE00C6E7C600BDE7BD004A9C520042944A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000637BB5006394C6002152
      B500FFFFFF00FFFFFF00E79C7300ADA594007BD6EF00C6F7FF006BDEF7006BCE
      EF0063A5D60063A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005ABDE700CEF7FF0073DEFF008CE7FF0094E7FF009CE7
      FF00ADEFFF00A5EFFF009CE7FF0073D6FF005ACEF7004ACEF700BDEFFF00218C
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005ABDE700CEF7FF0073DEFF008CE7FF0094E7FF009CE7FF00ADEFFF00A5EF
      FF009CE7FF0073D6FF005ACEF7004ACEF700BDEFFF00218CD600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CCE94007BBD84008CCE
      9400ADE7B500A5DEA5007BC68400A5D6A500DEEFDE007BB58400ADDEB5007BBD
      7B00529C5A00C6E7CE0073B57B004A9C52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00C6C6CE00BDC6CE002152
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5E7F70084D6EF00B5E7FF008CBD
      E700ADD6F700C6E7FF00639CD600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005AC6E700CEF7FF00CEF7FF00D6F7FF00D6F7FF00DEF7
      FF00E7FFFF00DEFFFF00DEF7FF00CEF7FF00C6EFFF00BDEFFF00BDEFFF002994
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AC6E700CEF7FF00CEF7FF00D6F7FF00D6F7FF00DEF7FF00E7FFFF00DEFF
      FF00DEF7FF00319CD600319CD600319CD600BDEFFF002994D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CCE94007BBD
      84008CCE9400ADE7B50084C68C00F7FFFF0094C69400DEEFDE0084C68400ADDE
      B5007BBD7B00529C5A005AA55A00529C52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006384B5006394C6002152
      B500FFFFFF00FFFFFF00E7A57300E79C7300E79C73009CA59C0073BDE700B5D6
      F700E7F7FF00ADD6EF00428CC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063C6E700849CA500949494008C8C8C005ABDDE0052B5
      DE0052B5DE004AB5DE004AADDE0042A5D6007373730073737300637B8C00319C
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063C6E7008C949400949494008C8C8C005ABDDE0052B5DE0052B5DE004AB5
      DE004AADDE0042A5D600319CD600319CD600319CD600319CDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BBD840094CE9400B5E7B500DEF7DE00F7FFFF00A5D6A5007BBD84009CDE
      A500ADDEB5007BBD7B00529C5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00C6C6CE00BDC6CE002152
      B500FFFFFF00FFFFFF00E7A57300EFBDA500EFBDA500EFBDA500ADBDB50052A5
      DE0084B5DE00429CD600186B9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C00C6C6C600949494008C8C8C000000
      00000000000000000000000000007B7B7B007B7B7B00ADADAD00737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400BDBDBD00949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BBD840094CE9400B5E7B50084C68C007BC684009CD69C0094D6
      9C009CDEA500ADDEB5007BBD8400529C5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006384B500639CC600215A
      B500FFFFFF00FFFFFF00E7A57B00E7A57300E7A57300E7A57300E79C7300E79C
      7300F7F7F700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C00C6C6C600A5A5A500949494000000
      0000000000000000000000000000848484008C8C8C00ADADAD007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400BDBDBD00949494000000000000000000000000000000
      00008C8C8C00949494008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084BD840094CE9400B5E7B500A5DEAD009CDEA50073B5
      7300ADDEB50084C68C0063AD6B005AA563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00C6C6CE00BDC6CE00215A
      B500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500BDBDBD00BDBDBD00949494009494
      9400949494008C8C8C008C8C8C0084848400A5A5A5009C9C9C007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400BDBDBD00ADADAD009494940000000000000000008484
      84008C8C8C00A5A5A5007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084BD840094CE9C00B5E7B500A5DEAD00ADE7
      B5008CC694006BB5730063AD6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006384BD00639CC600215A
      B500F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500A5A5A500C6C6C600BDBDBD00A5A5
      A500949494009494940094949400ADADAD00ADADAD0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A500ADADAD00C6C6C600ADADAD0094949400949494009C9C
      9C00B5B5B500949494009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084C6840094CE9C00B5E7B50094CE
      940073B57B006BB5730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00C6C6CE00C6C6CE00215A
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500A5A5A500BDBDBD00CECE
      CE00CECECE00CECECE00C6C6C600ADADAD008C8C8C008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500ADADAD00CECECE00CECECE00CECECE00BDBD
      BD009C9C9C008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084C68C0094CE9C007BBD
      84007BBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000638CC6004A73BD002163
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500A5A5A5009C9C
      9C009C9C9C009C9C9C0094949400949494008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500A5A5A5009C9C9C009C9C9C009494
      9400949494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084C68C0084BD
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000298CC600218CC6002184C6002184C600007B2100007B1800007B
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039843900317B3900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002994
      CE00298CCE00298CCE008CCEEF006BB5E700398CCE000084310042A55A00007B
      1800007B18000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042944A0039844200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000319CCE003194CE003194
      CE0084C6E7002194520018944A00108C4200108C3900399C5A007BC6940042A5
      6300007B2100007B180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420031313100313131004242420042424200424242003939
      3900393939003131310029292900292929002929290029292900292929002929
      2900292929000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004AA5520063AD6B0063AD6300398C42003184
      3900317B310029733100216B2900216321001863210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600CECECE00CECE
      CE0000000000C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B50000000000B5B5B500ADADAD00ADADAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039A5D600399CCE00399CCE007BBDE700C6EF
      FF00CEF7FF00299C5A008CCEAD008CCEA5008CC6A50084C69C006BB5840084C6
      940042A56300007B2900107B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000525252006B6B6B00636363007B7B7B009C9C9C00949494009494
      9400848484005252520039393900636363008C8C8C0073737300636363005A5A
      5A00313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005AB5630073BD7B0094D69C0094CE9C008CCE94008CCE
      940084C68C007BBD840063AD6B004A9452002163290018632100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D60000000000E7E7
      E700CECECE00DEDEDE0000000000000000000000000000000000000000000000
      0000D6D6D600B5B5B500D6D6D60000000000ADADAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039A5D60073BDDE00BDE7F700DEF7FF00C6EF
      FF00A5E7FF00319C630094CEAD006BBD8C006BB58C0063B5840063B57B0063B5
      840084C69400399C5A00007B2100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5A5A007B7B7B008C8C8C00B5A59400CE946300D69C5A00D69C
      6300CE9C6300A59484005A5A5A0042424200949494007B7B7B00424242006363
      6300313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005ABD6B007BC684009CD6A5009CD6A50094D69C0094CE
      9C008CCE940084CE8C007BC684007BC684005AA56300216B2900216321000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600000000000000
      00000000000000000000F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F70000000000000000000000000000000000B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000042A5D600E7FFFF00DEF7FF00C6EFFF00B5EF
      FF00ADEFFF0031A56B0094CEAD0094CEAD0094CEAD008CCEA50073BD8C008CC6
      A50042A56300088431002184C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5A5A0084848400BDBDBD00D6946300DE9C6300DE9C6300DE9C
      6300DE9C6300CE9C63008C8C8C004A4A4A009C9C9C007B7B7B00424242006B6B
      6B00313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063BD6B007BC6840073C6840052AD5A004AA5
      52004A9C520063AD6B0084C68C0084CE8C0084C68C004A945200216B29000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE0000000000C6B5
      9400E7AD6B00FFBD6300FFBD6300F7AD5A00CEAD8400DEDEDE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF0000000000B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000042ADD600E7F7FF00D6F7FF00CEF7FF00BDEF
      FF00B5EFFF0039A56B0031A56B0031A56B00299C630052AD7B0094CEAD004AAD
      7300108C420084C6EF002184C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000636363008C8C8C00C6C6C600D6945A00D69C6300DE9C6B00DE9C
      6B00DE9C6300D69C63009C9C9C004A4A4A009C9C9C00848484004A4A4A006B6B
      6B00313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063BD6B005ABD6B00000000000000
      0000000000004A9C520042944A0084C68C0084CE8C006BB57300297331000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE0000000000D6AD
      7B00EFBD8C00FFBD6300FFA55200FFA55A00E7AD7300DEDEDE00EFEFEF00B5B5
      B500B5B5B500B5B5B500B5B5B50000000000B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000042ADD600E7F7FF00D6F7FF00CEF7FF00CEEF
      FF00BDEFFF0094DEFF0052C6F70042C6FF0039BDF70031A56B005AB584002194
      520042B5E70084CEEF00218CC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630094949400D6D6D600D6945A00DE9C6300DE9C6B00DE9C
      6B00DE9C6300D6945A00A5A5A50052525200A5A5A5008C8C8C00525252007373
      7300393939000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004294
      4A00398C420039843900317B39002973310063C6730063C66B00000000000000
      000000000000000000004AA55200429C4A0042944A0039844200317B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE0000000000FFCE
      8C00CE9C7B00A5B5BD00ADC6C600AD948C00F7BD7300DEDEDE00F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF0000000000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004AADD600E7F7FF00DEF7FF00D6F7FF00BDEF
      FF008CD6F7006BCEF7004AB5EF008CDEFF008CDEFF0031A57300319C630042BD
      EF004ABDEF008CD6F700298CC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000636363009C9C9C00D6D6D600D69C6B00D69C6300D69C6300D69C
      6300D69C5A00D6946300ADADAD005A5A5A00ADADAD00949494005A5A5A007B7B
      7B00393939000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004AA5
      5200429C4A0042944A0039844200317B39000000000000000000000000000000
      0000185A2100185A180052AD5A004AA552004A9C520042944A00398C42000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70000000000FFCE
      8C00B5B5B5009CCEF700A5CEFF00739CBD00FFCE8C00DEDEDE00F7F7F700B5B5
      B500B5B5B500B5B5B500B5B5B50000000000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004AB5D600E7FFFF00D6F7FF00ADE7FF0084CE
      F7007BD6F70073D6F7004AB5E700ADE7FF00B5EFFF009CE7FF0073D6FF0039BD
      F70039B5EF008CD6F700298CCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B00A5A5A500BDBDBD00DEC6B500D69C6B00D6945A00D694
      5A00D6946300C6B5A5009494940073737300ADADAD0094949400636363008484
      8400393939000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000052AD
      5A007BC68C008CCE940084C68C00398C42003184390000000000000000000000
      0000216321001863210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70000000000FFCE
      8C00849CBD004A7BB50029639400214A7300FFCE8C00DEDEDE00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF0000000000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004AB5DE00E7FFFF00CEEFFF0094D6EF0084CE
      EF006BBDE70052B5DE003994CE00CEEFFF00DEF7FF00BDEFFF0094DEFF0073D6
      FF00A5E7FF0084DEFF002994CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B00BDBDBD00A5A5A500BDBDBD00DEDEDE00DEDEDE00D6D6
      D600CECECE00A5A5A5008484840094949400B5B5B5009C9C9C008C8C8C008484
      8400393939000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005AB5
      630073BD7B0094D6A50094CE9C0084C68C005AA5630039843900317B39002973
      31004A8C4A00428C4A0018632100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70000000000FFCE
      8C00EFC68400B59C7300A5947300CEAD7300FFCE8C00DEDEDE00FFFFFF00EFB5
      7300E7AD6B00E7A55A00DE9C520000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004AB5DE004AB5DE00A5DEEF00D6EFF700BDDE
      EF0094CEDE008CC6DE006BB5D6006BBDDE008CD6F7007BCEF7009CDEFF00ADE7
      FF0084CEEF0052A5D6003194CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B00ADADAD00D6D6D600ADADAD00A5A5A5009C9C9C00B5B5
      B500949494009C9C9C00BDBDBD00ADADAD00737373006B6B6B006B6B6B006363
      6300525252000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005ABD
      6B005AB5630084CE8C009CD6A5008CCE940094CE9C008CCE940084CE8C0084C6
      8C007BC684007BC67B00428C4A00216321000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004AB5DE004AB5DE007BC6E700D6EF
      F700F7FFFF00F7FFFF00CEEFFF004AADDE008CD6F700ADE7FF0094D6F70063B5
      DE00399CCE00319CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009494940094949400CECECE00CECECE00C6C6C600C6C6C6007B94
      9C00A5E7FF0042BDF7006B7B8400949494006B6B6B005A5A5A005A5A5A005A5A
      5A005A5A5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063BD6B005ABD63007BC684008CCE940094D69C0094D69C008CCE9C008CCE
      940084CE8C007BC684004A945200216B29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004AB5DE004AB5DE004AB5
      DE0094CEE700E7FFFF00E7F7FF00ADDEF700B5E7F70073BDE70039A5D60039A5
      D600399CCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000949494008C8C8C008C8C8C0084848400848484007373
      7300737373006B6B6B00737373008484840000000000000000005A5A5A005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063BD6B005ABD6B005AB5630052AD5A004AA55A004A9C52004294
      4A005AA563005AA56300317B3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004AB5
      DE004AB5DE004AB5D6009CD6EF0084CEE70042ADD60042ADD60042A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000429C4A0042944A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004AB5DE004AB5DE004AADD60042ADD60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004AA552004A9C520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C5A31008C5A
      31008C5A31008C5A31008C5A31008C5A31008C5A3100946339009C6B4200A573
      4A00AD845A008C5A31008C5A3100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000006B7B00008CBD0000ADD60000BDDE0000D6EF0000EFFF0008F7
      FF0018E7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007373
      73006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000945A3100B58C6B00D6BD
      A500DEC6B500E7D6C600EFDED600F7EFE700FFF7EF00FFFFF700FFFFFF00FFEF
      DE00FFEFE700C69C7B00945A3100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6845A00D6845200CE7B4200E7B59C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000009C
      CE00009CD60000ADDE0000C6F70000DEFF0000E7FF0000E7FF0008E7F70021EF
      FF0021EFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C009C9C9C00ADADAD00BDBDBD00B5B5
      B500A5A5A500848484006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C633100C6A584000000
      0000000000000000000000000000FFFFFF00FFFFF700FFF7F700FFF7F700E7AD
      8400FFEFDE00CEAD94009C633100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DE946300E7B59C00EFBDA500DE9C7300E7B5
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005A7B00007BA500008CBD00009C
      CE0000A5D60000A5D60000ADE70000BDF70000D6F70008DEF70029F7FF0031F7
      FF0018ADCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A5009C9C9C00ADADAD008C8C8C008C8C8C00A5A5A500A5A5
      A5007B7B7B0073737300949494006B6B6B006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C6B39009C6B3900B584
      5A00DEA57B00DE9C6B00D69C6B00DE946300D6945A00D68C5A00D68C5200E79C
      6B00FFE7D600DEBDA5009C6B3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DE9C7300EFC6AD00EFCEB500EFC6AD00DE9C
      7300E7BDA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000526B00005A7B0000739C00008CB5000084AD00008C
      BD000094BD00009CCE0000A5DE0000B5F70000CEF70018DEFF0031D6EF0018A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00B5B5B5000000000000000000949494008C8C8C008484
      84000000000000000000000000009C9494007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A56B3900D6AD
      8C00FFF7E700F7C6A500F7CEAD00FFD6B500FFDEBD00FFDEC600FFE7C600FFE7
      CE00FFF7EF00E7CEBD00A56B3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEA58400DEA57B00EFC6AD00EFCEB500EFC6
      AD00DEA57B00E7BD9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018849C00008CB5000084AD00007BA5000084B5000094
      BD000094C600009CCE0000ADDE0000BDF70000D6FF0021E7FF0039ADCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500BDBDBD00B5B5B500A5A5A5009C9C9C0000000000949494008C8C
      8C0000000000000000007B7B7B00949494009C9C9C006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B584
      5200FFFFFF00FFDEC600FFDEBD00FFDEBD00FFDEBD00FFDEC600FFDEBD00FFDE
      C600FFEFDE00EFDECE00AD733900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEA58400DEA58400EFCEB500EFCE
      B500EFBDA500D68C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002194AD00108CAD0000739400007BA500008CB5000094
      BD000094C600009CCE0000ADDE0000BDF70000D6FF0021E7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B500000000000000000000000000000000009C9C9C009494
      9400000000000000000000000000000000007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD84
      5200FFFFFF00FFDEBD00FFDEBD00FFDEBD00FFDEC600FFDEC600FFDEC600FFDE
      C600FFE7D600F7EFE700B57B4200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C7300E7AD8400EFC6
      AD00DEA57B00BDA59400ADADAD00D6D6D600D6D6D600EFEFEF00FFFFFF00F7F7
      F700F7F7F700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003194AD001094B5000084AD000084B500008CBD000094
      C600009CC60000A5CE0000B5E70000C6F70000E7FF0021E7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD84
      4A00FFFFF700FFDEC600FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      C600FFE7CE00FFFFF700B5844200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7D6C600DEAD
      8C00C6ADA500D6D6D600BDBDBD00A5A5A5009C9C9C008C8C8C00CECECE00F7F7
      F700F7F7F700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000429CB500189CBD000084AD00008CB5000094BD00009C
      C600009CCE0000ADDE0000BDF70000D6F70000E7FF0018DEEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A5009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD84
      4A00FFF7F700FFDEC600FFDEBD00FFDEBD00FFDEC600FFDEC600FFDEC600FFDE
      C600FFE7CE00FFFFFF00C68C5200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00ADADAD00CECECE00D6D6D600CECECE00D6D6D600C6C6C6008C8C8C00EFEF
      EF00EFEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000219CBD00008CAD000094BD00009CCE0000A5
      D60000A5DE0000BDEF0000B5E70008D6F70000CEF70018DEEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500B5B5B500B5B5B500B5B5
      B500A5A5A5009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C68C
      4A00F7E7DE00FFE7D600FFDEBD00FFDEBD00FFDEBD00FFDEC600FFDEC600FFDE
      C600FFE7CE00FFFFFF00CE945200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00DEDEDE00B5B5B500D6D6D6009C9C9C0094949400BDBDBD008C8C8C00EFEF
      EF00E7E7E700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002994B500009CC600009CCE0000ADD60000AD
      DE0000ADDE0000A5CE0000B5DE00009CD60008C6EF0018DEEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600BDBDBD00B5B5B500C6C6C600C6C6
      C600A5A5A500A5A5A5009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE94
      5200F7DEC600FFEFE700FFDEBD00FFDEC600FFDEC600FFE7C600FFE7CE00FFE7
      CE00FFE7D600FFFFFF00CE8C5A00CE9452000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00DEDEDE00B5B5B500E7E7E7009C9C9C00ADADAD00ADADAD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018A5C60000ADDE0000A5D600009C
      CE000094BD000094BD000084B5000094C60008A5CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00B5B5B500B5B5
      B500ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D69C
      5200EFD6B500FFF7F700FFE7CE00FFE7CE00FFE7D600FFE7D600FFEFD600FFEF
      DE00FFEFDE00FFFFFF00D69C7300EFDEC600D69C520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700EFEFEF00A5A5A500E7E7E700D6D6D600B5B5B500EFEFEF00FFFFFF00F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000094BD00008CBD00007B
      9C0000739C0000739C00088CB50010A5C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D69C
      5200EFCEA500FFFFFF00FFEFD600FFEFDE00FFEFDE00FFEFDE00FFF7E700FFF7
      E700FFF7E70000000000E79C6B00FFFFFF00DEB5840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700F7F7F700D6D6D600A5A5A5009C9C9C00BDBDBD00EFEFEF00FFFFFF00E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087B9C002194
      B500188CB50018B5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00000000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      5A00EFC69C0000000000FFEFE700FFF7E700FFF7EF00FFF7EF00FFFFF700FFFF
      F700FFFFFF0000000000FFFFF700F7DEBD00DEA55A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00C6C6
      C600BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      5A00EFBD8C0000000000000000000000000000000000FFFFF700FFF7EF00FFEF
      DE00FFE7D600F7DEC600EFCEA500DEA55A00DEA55A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7AD
      5A00E7AD5A00EFBD8400EFB57300E7B56B00E7AD6300E7AD5A00E7AD5A00E7AD
      5A00E7AD5A00E7AD5A00E7AD5A00E7AD5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002984FF002984FF00217BFF00187BFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010395200215A84004A84BD00428CBD002973
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003994FF0063A5FF0094C6FF0094BDFF005294FF00187BFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002963840094C6FF0094CEFF004284CE001863
      AD00297BBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A94FF009CC6FF0084B5FF007BB5FF0094C6FF00529CFF00217B
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      5200C68C6300BD8C6300BD846300428CAD00E7F7FF00529CDE00187BBD004A94
      C6003984B5009C7B6B00AD735200AD735200AD735200AD735200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002929290029292900292929002929
      2900292929002929290029292900000000000000000000000000292929002929
      2900292929002929290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000529CFF00A5CEFF008CBDFF0073ADFF007BB5FF0094C6FF00529C
      FF00217BFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE94
      6B00E7E7E700E7E7E700E7E7E70094B5CE007BB5D6008CB5D60052CEE7005ADE
      F70073D6EF004A9CDE00CEDEE700E7E7E700E7E7E700AD735200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029292900636363006B6B6B002929
      29006B6B6B005A5A5A0029292900000000000000000000000000292929006363
      63005A5A5A002929290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005AA5FF007BB5FF00A5CEFF008CBDFF007BB5FF0084B5FF009CC6
      FF00529CFF00217BFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE94
      6B00E7E7E700EFE7E700E7E7E700E7E7E700A5C6D60073B5D600C6F7FF0063DE
      F7005AE7FF007BD6F7004A9CDE00E7F7FF00E7E7E700AD735200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000294252002942520029425200293952002139
      520021394A0021394A0021394A0021394A0021394A0052392900523929004A31
      21004A3121004A31210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005AA5FF007BB5FF00A5CEFF008CBDFF007BB5FF0084B5
      FF009CC6FF005A9CFF002984FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE94
      6B00EFEFEF00D6845200D6845200D6845200EFEFEF008CADBD0073CEE700C6F7
      FF005ADEF7005AE7F7007BD6F7004A9CDE00C6D6E700AD735200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000427BB50094BDDE008CBDDE008CBDDE0084B5
      DE0084B5D6007BB5D6007BADD60073ADD60073ADD600AD633100EFD6BD00EFD6
      BD00EFD6BD009C52210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063A5FF007BB5FF00A5CEFF008CBDFF008CBD
      FF009CCEFF0063A5FF003184FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D69C
      7300EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00C6C6C60094BDCE007BD6
      EF00C6F7FF005ADEF7005AE7F7007BD6F7004A9CE7009C7B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00C6C6C600EFEFEF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A84BD009CC6E7007BADD60073ADD6006BA5
      D60063A5CE00639CCE005A9CCE00529CCE007BADD600AD6B3100EFDEC600E7BD
      9C00EFD6BD009C5A210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063A5FF007BB5FF00ADCEFF00A5CE
      FF006BADFF005A9CEF0084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D69C
      7300EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00B5DE
      EF007BD6EF00C6F7FF006BDEF7006BCEEF0063A5D600639CCE005294CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700EFEFEF00EFEFEF00E7E7E700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000528CC600A5CEE70084B5DE007BB5D60073AD
      D60073ADD6006BA5D60063A5CE005A9CCE007BB5D600B5733900EFDECE00EFDE
      CE00FFF7EF00A563290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063ADFF0084B5FF007BB5
      FF006BA5F700D6D6D600B5B5B5008C8C8C008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D69C
      7300F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C600000000000000
      0000B5E7F70084D6EF00B5E7FF008CBDE700ADD6F700C6E7FF00639CD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A8CCE00DEB57B00D69C5200CE945200CE8C
      4A00CE844A00C6844200C67B4200BD733900CE8C6300BD7B3900EFD6BD00FFF7
      E700FFF7F700AD63310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BADFF0063A5
      F70094949400C6C6C600CECECE00C6C6C600C6C6C600C6C6C600BDBDBD008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      7B00F7F7F700D6845200D6845200D6845200F7F7F700C6C6C600000000000000
      000000000000B5E7F70073BDE700B5D6F700E7F7FF00ADD6EF00428CC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00F7F7F700F7F7F700FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00FFFFFF00F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006394CE000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7B4200EFD6C600EFD6
      BD00E7BDA500AD6B310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009494940094949400D6D6D600CECECE00BDBDBD00BDBDBD00C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      7B00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60094BDCE0052A5DE0084B5DE00429CD6002994D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEF
      EF00FFFFFF00E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006394D600B5D6EF0094C6E70094C6E7008CBD
      DE008CBDDE0084B5DE007BB5DE007BADD60094BDDE00C6844200BD7B4200BD7B
      4200B5733900B573390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400DEDEDE00C6C6C6008C8C8C008C8C8C00ADADAD00D6D6
      D600848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      7B00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700BD846300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B9CD600B5D6EF00B5D6EF00B5D6EF00ADD6
      E700ADCEE700A5CEE700A5CEE7009CC6E7009CC6E7003173AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700CECECE0094949400000000008C8C8C008C8C
      8C008C8C8C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      7B00DEA57B00DEA57B00DEA57B00DEA57B00DEA57B00DEA57B00DEA57B00DEA5
      7B00DEA57B00DEA57B00DEA57B00DEA57B00DEA57B00BD8C6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B9CD6006B9CD6006B9CD6006394CE006394
      CE005A8CCE00528CC6005284BD004A84BD00427BB500397BB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00E7E7E700E7E7E700BDBDBD0094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8400EFBD9400EFBD9400EFBD9400EFBD9400EFBD9400EFBD9400EFBD9400EFBD
      9400EFBD9400EFBD9400EFBD9400EFBD9400EFBD9400C68C6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00E7E7E700EFEFEF0094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      5200DEB58C00DEA57B00DEA57B00DEA57B00DEA57B00D69C7300D69C7300D69C
      7300CE9C7300CE9C6B00CE946B00CE946B00C69C7B00AD735200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500CECECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700C6C6C600E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600B5B5B500F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600E7E7E700DEDE
      DE00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600BDBDBD00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600E7E7E700E7E7
      E700BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD00CECECE009494
      94009C9C9C00B5B5B500A5A5A500C6C6C600ADADAD00ADADAD00B5B5B500B5B5
      B500ADADAD00B5B5B5009C9C9C00B5B5B500D6D6D600D6D6D600CECECE00C6C6
      C600BDBDBD00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00E7E7E700E7E7
      E70094949400C6C6C600A5A5A500ADADAD00B5B5B5009C9C9C0094949400A5A5
      A500B5B5B5009C9C9C00A5A5A5009C9C9C0094949400B5B5B5009C9C9C00C6C6
      C600949494009C9C9C00949494008C8C8C00D6D6D600D6D6D600D6D6D600CECE
      CE00C6C6C600F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00EFEFEF00EFEF
      EF00D6D6D600D6D6D600C6C6C600BDBDBD00C6C6C600DEDEDE00D6D6D600CECE
      CE00DEDEDE00D6D6D600D6D6D600C6C6C600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00C6C6C600CECECE00D6D6D600D6D6D600D6D6D600CECE
      CE00C6C6C600F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00EFEFEF00EFEF
      EF00A5A5A500B5B5B500BDBDBD009C9C9C00D6D6D600BDBDBD00ADADAD00A5A5
      A500B5B5B5009C9C9C00CECECE00ADADAD00A5A5A500A5A5A500ADADAD00C6C6
      C600A5A5A500ADADAD00A5A5A500ADADAD00BDBDBD00C6C6C600DEDEDE00D6D6
      D600C6C6C600F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005252520042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD521800CE6B3100D67B4200D6733900C6632100C6520800B531
      0000AD2900000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700F7F7F700F7F7
      F700CECECE00F7F7F700EFEFEF00EFEFEF00F7F7F700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700E7E7E700EFEFEF00E7E7E700E7E7E700DEDE
      DE00CECECE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00EFEFEF00EFEFEF009C9C9C005252
      5200D6D6D600949494007B7B7B00C6C6C6004A4A4A0073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B531
      0000CE520800DE946B00F7D6BD00F7D6C600F7D6C600F7CEB500EFC6AD00EFBD
      9C00CE734200C64A000073000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700F7F7F700F7F7
      F700FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700FFFFFF00FFFFF700FFFFFF00FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7EF00F7F7EF00F7F7EF00EFEFEF00E7E7E700DEDE
      DE00CECECE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700C6C6C600A5A5A500A5A5A500ADADAD00A5A5A5007B7B7B00BDBD
      BD009C9C9C00C6C6C600BDBDBD009C9C9C00BDBDBD0052525200FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE7B
      4200EFBDA500EFC6B500F7D6BD00F7D6BD00F7D6BD00EFC6AD00EFC6A500EFBD
      9C00E7B59C00DE9C7300A5310000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700F7F7F700FFFF
      FF00BDBDBD00B5B5B500BDBDBD00ADADAD00B5B5B500A5A5A500ADADAD00ADAD
      AD00EFEFEF00F7F7F700C6CECE00181829002129420018182900101010002129
      420042528400425A9400738CCE00738CBD006384C600E7EFEF00E7E7E700DEDE
      DE00D6D6D600F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700ADADAD00CECECE00EFEFEF00F7F7F700F7F7F700EFEFEF00B5B5B500C6C6
      C600B5B5B5008484840084848400ADADAD00BDBDBD009C9C9C00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DE94
      6300F7DEC600EFBDA500F7D6BD00F7D6C600F7D6BD00F7CEB500EFC6AD00EFB5
      9C00DE9C7B00EFBDA500B5420800000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700FFFFFF00FFFF
      FF00D6D6D600EFEFEF00E7E7E700EFEFEF00F7F7F700DEDEDE00E7E7E700F7F7
      F700FFFFFF00FFFFFF00C6C6CE00000010000810310010183900101831004263
      A5004A639C006B94CE006384C6007B9CDE006B8CCE00E7E7E700EFEFEF00E7E7
      E700D6D6D600F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00DEDEDE00F7F7F700DEDEDE00D6D6D600DEDEDE007B7B7B00ADADAD00DEDE
      DE008C8C8C00C6C6C600949494008C8C8C00D6D6D6008C8C8C004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E79C
      6B00F7DECE00EFBDA500F7D6BD00F7DEC600F7DEC600F7D6BD00EFC6AD00EFB5
      9C00DE9C8400E7BDA500B5420800000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00BDBDBD00CECECE00B5B5B500EFEFEF00D6D6D600BDBDBD00B5B5B500DEDE
      DE00FFFFFF00FFFFFF00C6CED6000818420029427B00314A730039528C004A6B
      A5006B8CC6008CADE7007B9CCE0042639400395A8C00EFF7F700EFEFEF00E7E7
      E700D6D6D600F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000DE9C6B00DE946B00DE946B00DE946300DE8C6300D68C
      6300D68C5A00D6845A00D6845A00D6845A00D6845200FFFFFF00FFFFFF00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500F7F7F700DEDEDE00D6D6D600D6D6D600DEDEDE008C8C8C00BDBDBD00E7E7
      E70073737300DEDEDE009C9C9C008C8C8C00DEDEDE00ADADAD00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DE8C
      6300F7DEC600F7D6BD00F7D6C600F7DECE00F7DECE00F7D6BD00EFCEB500EFBD
      9C00E7AD8C00E7BDA500A5390000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00C6C6C600D6D6D600C6C6C600D6D6D600B5B5B500A5A5A500CECECE00FFFF
      FF00FFFFFF00FFFFFF00C6CED6000810390018315200212952004A6BA5007B9C
      DE008CADE7006B8CBD0021315A00314A7B00314A8400EFEFF700EFEFEF00EFEF
      EF00DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000DE9C7300E7B59400E7B59400E7AD8C00E7AD8C00E7AD
      8C00E7A58400DEA58400DEA58400DEA58400D6845A00FFFFFF00FFFFFF00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500F7F7F700E7E7E700DEDEDE00D6D6D600DEDEDE00DEDEDE00ADADAD00CECE
      CE00A5A5A500737373007B7B7B00ADADAD00C6C6C600ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C673
      3900F7CEB500F7E7D600F7D6C600F7DECE00F7DECE00F7D6C600F7CEB500EFBD
      9C00EFCEB500DEAD84008C290000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7
      F700F7F7F700FFFFFF00CECED60008103100182142001829520039527B00425A
      8400314A7300314A7300314A6B0042638C00395A8400EFEFF700F7F7F700EFEF
      EF00DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000E7A57B00E7B59400E7B59400E7B59400E7AD8C00E7AD
      8C00E7AD8C00E7AD8C00E7A58400DEA58400D6845A00FFFFFF00FFFFFF00D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500F7F7F700E7E7E700DEDEDE00DEDEDE00E7E7E700DEDEDE0094949400CECE
      CE00B5B5B500D6D6D600D6D6D600ADADAD00C6C6C6006B6B6B00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD63
      2900DE9C6B00F7DEC600FFE7D600F7DECE00F7DECE00F7DEC600F7D6BD00EFD6
      C600EFC6AD00B55A21006B000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00CECECE00DEDEDE00D6D6D600D6D6D600DEDEDE00DEDEDE00E7E7E700CECE
      CE00C6C6C600FFFFFF00C6C6CE00000010000808210008081800101029001821
      39001821420029314A0039425A0039425A0039425200EFEFF700F7F7F700EFEF
      EF00DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000E7A57B00EFBD9C00E7B59C00E7B59400E7B59400E7B5
      9400E7AD8C00E7AD8C00E7AD8C00E7A58400D68C6300FFFFFF00FFFFFF00D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500F7F7F700EFEFEF00E7E7E700DEDEDE00E7E7E700DEDEDE00A5A5A5008C8C
      8C00B5B5B500ADADAD00ADADAD00DEDEDE008C8C8C00ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C66B3100DE9C6B00DEB5A500E7BDA500E7AD8400E7A58400DEAD9400D6AD
      9400C67339008418000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00DEDEDE00CECECE00DEDEDE00CECECE00E7E7E700CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00EFEFEF00A59C94004A4A520042424A0042424A005A5A
      6B00A5A5AD00BDB5B500B5B5B50084737B00635A5A00FFF7FF00FFFFFF00F7F7
      F700DEDEDE00F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000E7AD8400EFBD9C00EFBD9C00EFBD9C00E7B59400E7B5
      9400E7B59400E7AD8C00E7AD8C00E7AD8C00DE8C6300DEDEDE00DEDEDE00D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700CECECE00C6C6
      C600C6C6C6008C8C8C0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A54A0800D68C5A00F7D6C600F7CEB500F7CEAD00F7D6BD00C66B
      31006B1000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700EFE7DE00A59C9C005252520052525200B5B5
      B500F7FFF700F7FFF700FFFFFF00DEDEDE008C8C8C00FFFFFF00FFFFFF00F7F7
      F700E7E7E700F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000E7AD8400EFBDA500EFBD9C00EFBD9C00EFBD9C00E7B5
      9C00E7B59400E7B59400E7B59400E7AD8C00DE946B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00F7F7F700EFEFEF00DEDEDE00D6D6D600D6D6D600D6D6D600C6C6C600BDBD
      BD00BDBDBD00E7E7E700ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE845200F7D6BD00F7DECE00F7D6BD00F7CEB500F7DEC600F7C6
      AD00A54208000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00E7E7E700E7E7E700E7E7E700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700EFDECE00A59C94005A5A5A009C949400DED6
      CE00F7EFE700F7EFE700F7F7EF00FFF7EF00FFFFF700FFFFFF00FFFFFF00FFFF
      FF00E7E7E700F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000E7B58C00EFC6A500EFC6A500EFBD9C00EFBD9C00EFBD
      9C00EFBD9C00E7B59400E7B59400E7B59400DE946B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00F7F7F700E7E7E700EFEFEF00F7F7F700FFFFFF00FFFFFF00F7F7F700DEDE
      DE00C6C6C600E7E7E700ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFAD8400FFDED600F7DECE00F7D6C600F7D6BD00F7D6BD00F7D6
      C600D6844A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00EFEFEF00DEDEDE00DEDE
      DE00DEDEDE00EFEFEF00FFF7F700DECEBD00DECEBD00DED6C600EFDECE00EFDE
      D600EFE7D600F7E7DE00F7EFDE00F7EFE700F7EFE700FFFFFF00FFFFFF00FFFF
      FF00E7E7E700F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000E7B58C00EFC6A500EFC6A500EFC6A500EFBDA500EFBD
      9C00EFBD9C00EFBD9C00E7B59C00E7B59400DE9C730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00EFEFEF00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFAD8C00FFE7D600F7DECE00F7DECE00F7D6C600F7D6BD00F7DE
      C600D68C52000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7EF00DECEB500E7CEBD00E7D6C600E7D6C600EFDE
      CE00EFDECE00EFDED600F7E7D600F7E7D600F7E7D600FFFFFF00FFFFFF00FFFF
      FF00E7E7E700F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000E7B58C00E7B58C00E7B58C00E7B58C00E7AD8400E7AD
      8400E7AD8400E7AD7B00E7A57B00E7A57B00DE9C730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00E7E7E700FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00CECECE00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7A57300F7DECE00FFE7DE00F7DECE00F7DECE00F7E7D600F7D6
      BD00BD6B31000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700EFDED600EFE7D600EFE7DE00EFE7DE00F7E7
      DE00F7EFDE00F7EFDE00F7EFE700F7EFE700F7EFE700FFFFFF00FFFFFF00FFFF
      FF00E7E7E700F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700C6C6C600D6D6D600EFEFEF00F7F7F700FFFFFF00FFFFFF00EFEFEF00E7E7
      E700C6C6C600C6C6C600F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6844A00EFB58C00F7DECE00FFE7D600FFE7D600F7D6C600DE94
      6300943900000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00F7F7F700EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7EF00F7F7F700E7E7E700EFEFEF00E7E7E700E7E7
      E700E7E7E700FFFFFF00DEDEDE00E7E7E700DEDEDE00EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00EFEFEF00CECECE00C6C6C600B5B5B500B5B5B500C6C6C600CECE
      CE00EFEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6844A00E7A57300EFB58C00EFAD8400D68C5A00AD52
      1800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700EFEFEF00F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF7
      EF00FFDEB500FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFE7BD00FFE7BD00FFDEBD00FFE7BD00FFE7B500FFE7
      C600FFF7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CECECE0094949400CECE
      CE00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD004242420010212100182929002142
      520073A5C600CEE7EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      C60008BDFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000C6FF0000C6FF0000C6FF0000BDFF0042B5EF00FFEF
      DE00F7C6A500FFDEB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7009C9C9C00FFFFFF009C9C
      9C0094949400E7E7E700FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000183131001831310018313100294A4A0031525A00396B
      73004AA5C6005ACEFF005ABDEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      C60008C6FF0000D6FF0000DEFF0008DEFF0008DEFF0008DEFF0000DEFF0000D6
      FF0000D6FF0000D6FF0000D6FF0000CEFF0000CEFF0000C6FF0039BDEF00FFEF
      DE00EFC6A500FFD6AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D600CECECE00F7F7F700F7F7
      F7009C9C9C0084848400BDBDBD00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0018313100294A4A002139390008101000101821002142
      520052B5D60063D6FF005AC6F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      C60008CEFF0000DEFF0018DEFF0031E7FF0039E7FF0029E7FF0008DEFF0000DE
      FF0000DEFF0000D6FF0000D6FF0000D6FF0000CEFF0000C6FF0042BDEF00FFEF
      DE00EFC69C00FFD6AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F70094949400E7EFEF00F7F7F700F7F7
      F700FFFFFF00ADADAD009C9C9C0094949400DEDEDE00F7F7F700EFEFEF00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700A5ADAD0010292900102121002952520063BDBD006BCEC6006BC6
      CE0052B5D60052C6FF0063D6FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD006363630000000000000000000000
      0000000808001021290031525A00A5BDC600EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      C60021D6FF0029E7FF005AEFFF009CF7FF009CF7FF008CF7FF0042EFFF0018E7
      FF0000DEFF0000DEFF0000DEFF0000D6FF0000CEFF0000CEFF0042C6EF00FFEF
      D600EFBD9C00FFCEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00ADB5B500E7E7E700EFEFEF00EFEF
      EF00DEDEDE00CECECE00949494008C8C8C00848484008C8C8C00ADADAD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF009CA5
      A500CEDEDE00CECECE007BFFFF0084FFFF0084FFFF00299CB500007BAD001094
      C6005AD6E70094FFFF008CFFFF00524A4A00525A63007394A500E7EFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B50010212100426363005A848400426B6B00395A5A003152
      5200396B730042848C00529CAD004AA5BD00399CBD004AA5DE00C6D6DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      C60029D6FF0042EFFF0073F7FF00D6FFFF00DEFFFF00B5FFFF0052EFFF0029E7
      FF0008E7FF0000DEFF0000DEFF0000D6FF0000D6FF0000CEFF0042C6EF00FFEF
      D600E7BD9C00FFCEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700DEDEDE0084848400A5A5A500ADADAD00ADADAD00B5B5
      B500BDBDBD00C6C6C600CECECE00C6C6C600B5B5B500BDBDBD00B5B5B500B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CED6D6008C949400DEE7
      E700A5ADAD007B84840073FFFF007BFFFF007BFFFF00318C9C00006BA500189C
      C60084FFFF0084FFFF0094FFFF0021424200295A6300428CA5006BD6F700BDDE
      EF00000000000000000000000000000000000000000000000000000000000000
      0000D6CED60018181800527B7B00294242000008000000000000000000000000
      00000000080000102100103952004A9CB5005AC6D6005AC6E7005AADDE00B5C6
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      CE0031D6FF004AEFFF0084F7FF00F7FFFF00FFFFFF00CEFFFF005AF7FF0029EF
      FF0008E7FF0000DEFF0000DEFF0000DEFF0000D6FF0000CEFF0042C6EF00FFEF
      D600E7BD9400F7CEA50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700BDBD
      BD00B5B5B500C6C6C600C6C6C600BDBDBD00C6C6C600C6C6C600CECECE00D6D6
      D600C6C6C600BDBDBD00BDBDBD00BDBDBD00B5B5B500CECECE00D6D6D600C6C6
      C600EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADB5B500949C9C00C6D6D6007B84
      8C009CA5A500FFFFFF005AEFEF0073FFFF0073FFFF0010738C00007BAD0042C6
      D6007BFFFF0084FFFF0084FFFF001021290018424A0031738C0063E7FF0052B5
      CE00EFEFEF00000000000000000000000000000000000000000000000000FFFF
      FF005A6363004A7373000000000000000000183131004A84840052949400529C
      94004A949C00428C9400317B8C00296B94003184B50052B5DE0052BDEF00427B
      9C00D6D6DE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      CE0021DEFF0031F7FF005AF7FF00A5FFFF00A5FFFF0094FFFF0042F7FF0018EF
      FF0000EFFF0000E7FF0000E7FF0000DEFF0000D6FF0000D6FF0042CEEF00FFEF
      D600E7B59400F7C69C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00DEDEDE00BDBDBD00DEDE
      DE00D6D6D600ADADAD00BDBDBD00B5B5B500BDBDBD00BDBDBD00BDBDBD00ADAD
      AD00B5B5B500BDBDBD00B5B5B500B5B5B500B5B5B500CECECE00DEDEDE00D6D6
      D600E7E7E700EFEFEF00A5A5A500E7E7E700FFFFFF0000000000000000000000
      00000000000000000000CED6D6009CADAD00CED6DE00848C8C009C9C9C000000
      0000F7FFFF00FFFFFF00DEFFFF0073E7FF004AD6F70031BDD60021A5BD005AE7
      E70052B5B500429C9C0031737300214A4A0031636B004294AD0063DEFF005ACE
      EF00C6D6D600000000000000000000000000000000000000000000000000D6DE
      DE0021293100426B6B0042737300101818000000000000000000000000000000
      000000081000002131001042630042A5BD0063CEE7006BDEF70042ADE70052A5
      CE00315A6B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      CE0018DEFF0018F7FF0039F7FF006BFFFF006BFFFF005AFFFF0029F7FF0008EF
      FF0000EFFF0000E7FF0000E7FF0000DEFF0000DEFF0000D6FF0042CEEF00FFEF
      D600E7B59400F7C69C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00EFEFEF00DEDEDE00D6D6
      D600DEDEDE00ADADAD00A5A5A500C6C6C600C6C6C600B5B5B500C6C6C600D6D6
      D600E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDE
      DE00CECECE00D6D6D600FFFFFF00C6C6C600BDBDBD00F7F7F700000000000000
      000000000000EFEFEF00ADBDBD00D6E7E7007B848C00CED6D60000000000F7FF
      FF00FFFFFF00DEE7E700BDBDBD00EFFFF700CEF7FF0084C6D60073B5B5006BA5
      A500184A4A00103131000810100010313100295A6300428CA50063DEFF0063E7
      FF00425A6300527B8C007BBDDE00BDE7F700000000000000000000000000949C
      9C00528C940052848400000000000000000010182100315A5A00396B6B003973
      7300316B7B00296B7B0029637B002973A500398CC6004AB5E7006BDEFF00398C
      B50031637B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      CE005ADEFF0008F7FF0008F7FF0031FFFF0031FFFF0029FFFF0000F7FF0000EF
      FF0000EFFF0000E7FF0000E7FF0000DEFF0000D6FF0000CEFF005ACEE700FFEF
      D600DEB58C00F7C69C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D600E7E7E700DEDEDE00C6C6
      C600DEDEDE00B5B5B500B5B5B500B5B5B500F7F7F700EFEFEF00EFEFEF00F7F7
      F700FFFFF700FFFFFF00F7F7F700CECED600C6CEDE00A5B5D600C6CEE700EFEF
      EF00F7F7FF00DEDEDE00C6C6C600F7F7F700FFFFFF00A5A5A500E7E7E700FFFF
      FF0000000000D6DEDE00E7EFEF00848C9400BDCEBD00EFFFF700FFFFFF00FFFF
      FF00C6CED6004A525A0039394200737B7B00FFFFFF0000000000000000000000
      0000000000002963630052BDBD0073FFFF006BF7F70031A5BD0073F7FF005AD6
      F700214A4A0021526B0042A5DE0063F7FF0000000000000000000000000094C6
      BD00395A5A00000000004A8484006BCECE0084FFFF0084FFFF0084FFFF0084FF
      FF0084FFFF0084FFFF0073F7F7005AC6D6004AADD60042A5DE005ACEF70063CE
      E700215A6B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF7
      E700FFEFB500FFE7B500FFE7B500FFEFB500FFEFBD00FFEFB500FFF7BD00FFF7
      BD00FFF7BD00FFFFBD00FFFFBD00FFFFBD00FFFFC600FFFFC600FFFFC600FFF7
      EF00E7BD9C00EFBD940000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00EFEFEF00D6D6D600ADAD
      AD00DEDEDE00F7F7F700F7F7F700FFFFFF00F7F7F700E7E7E700F7F7F700BDBD
      BD0039424A0010101800182952004A63A5006384C6006B94D6008CA5CE00F7F7
      EF00E7EFEF00F7F7F700DEDEDE00BDBDBD00DEDEDE00FFFFFF00DEDEDE00EFEF
      EF0000000000BDC6C6004A525200636B630000000000DEE7E700BDCEBD000000
      0000ADADB5003939420039394200737B8400F7FFFF00F7FFFF00FFFFFF000000
      00004ACEFF00218CBD0029A5CE0000638C00087BAD0031B5DE0039BDEF0052C6
      D60039B5DE0042BDEF005ADEFF0063E7FF00DEE7EF0000000000000000003152
      520063CECE0084FFFF0073FFFF007BFFFF0031949C002184940029849C00298C
      9C003194A5003194A500399CAD0039A5B5006BEFF7007BFFFF006BE7FF00398C
      BD00397B94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFCE00FFE7BD00FFDEBD00F7DEBD00F7DEBD00FFE7C600FFE7C600FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFE7D600FFE7D600FFE7D600FFE7D600FFFF
      FF00F7EFE700F7C6AD0000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000EFEFEF00F7F7F700E7E7E700ADAD
      AD00E7E7E700C6C6C600C6C6C600CECECE00BDBDBD00BDBDBD00FFFFFF00B5BD
      C6000818390029396B00526BAD0084ADE7007394BD00294273005A739C00FFFF
      FF00D6D6D600E7E7E700DEDEDE00D6D6D600ADADAD00CECECE00D6D6D6000000
      00000000000000000000C6CECE009CA5A5009CADA50000000000BDD6C600F7FF
      FF00FFFFFF00BDBDC600A5B5B500F7F7F700FFFFFF00FFFFFF00E7EFEF00CECE
      CE0042B5F70039B5EF00007BAD0042BDF7005AD6FF005AD6FF004294AD004AA5
      CE00187BAD0042BDFF005AD6FF0052CEFF00E7F7F70000000000000000007BDE
      DE007BFFFF006BFFFF0073FFFF007BFFFF004AB5BD0039A5BD00399CB500319C
      B5003194B500399CB5003194AD0010738C006BEFEF007BFFFF007BFFFF0073E7
      EF0018526B00949C9C00848484005A5A63006B848C0094ADB500ADCEDE00F7F7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFF7CE00E7C6A500947B6300AD947B00CEB59C00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00FFD6B500CEAD9400CEAD9400D6B59C00FFE7
      D600FFF7F700FFFFEF00000000000000000000000000D6C6B500C6B59C00D6BD
      A50000000000000000000000000000000000FFFFFF00F7F7F700EFEFEF00B5B5
      B500EFEFEF00BDBDBD00CECECE00DEDEDE00C6C6C600DEDEDE00FFFFFF00EFEF
      EF000810390021315A005A73A500394A7B0029395A0031426300425A7300FFFF
      FF00CECECE00D6D6D600CECECE00BDBDBD00B5B5B5008C8C9400B5B5B5000000
      0000000000000000000000000000BDC6C60063636300BDC6C60000000000BDD6
      C600F7FFFF00000000000000000000000000FFFFFF008C9C9C005A636B004A4A
      5200527B940052ADDE0042ADE7003994C600317BA500427B9C00399CD6004ABD
      EF002994C60039A5DE004294CE004A84A50000000000000000000000000073FF
      FF006BFFFF0073FFFF006BFFFF006BFFFF0073FFFF0073F7FF003194A5003194
      AD0039A5C600218CAD0052CEDE0052D6DE0073FFFF0073FFFF0073FFFF0084FF
      FF005ABDC600000000000000000000081000184A6300296B8C00398CBD0073CE
      F700BDE7F700FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00F7E7DE00C6AD9C00C6AD9400CEB59C00F7EF
      E700FFF7EF00FFFFFF00000000000000000000000000C6AD8C00A5846B00A584
      6B0000000000000000000000000000000000FFFFFF00E7E7E700FFFFFF00CECE
      CE00DEDEDE00DEDEDE00D6D6D600E7E7E700CECECE00D6D6D600CECECE00FFFF
      FF000808210010182900212131005A5A6B009C9CA500BDB5BD006B636300FFFF
      FF00C6C6C600CECECE00B5B5B500ADADAD009C9C9C0073737300F7F7F7000000
      000000000000000000000000000000000000BDC6C6008C9494006B7373000000
      0000B5CEB500BDD6C600DEE7E700849494007B8C8C005A5A63004A5252003942
      4A009CA5AD00D6E7E700D6E7E700C6D6D600B5BDC6007B848400D6DED600BDBD
      BD00000000000000000000000000000000000000000000000000000000004AAD
      B5006BD6DE006BFFFF006BFFFF006BFFFF006BFFFF007BFFFF00399CAD00217B
      9400319CB500107B940063EFEF0073FFFF0073FFFF0073FFFF0073FFFF0073FF
      FF007BFFFF0021313100081010000000080008314A00215A73003184AD005ACE
      F70063E7FF005ACEEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7EF00CEB5A500C6AD9C00D6BDA5000000
      00000000000000000000000000000000000000000000C6AD9400B5947B00AD8C
      6B000000000000000000000000000000000000000000DEDEDE00FFFFFF00D6D6
      D600D6D6D600E7E7E700DEDEDE00E7E7E700DEDEDE00D6D6D600DEDEDE00FFFF
      FF00EFE7DE006B6B6B005A525200FFFFF700FFF7F700FFFFF700FFF7EF00FFFF
      FF00BDBDBD00B5B5B500B5B5B500A5A5A50073737300EFEFEF00000000000000
      00000000000000000000000000000000000000000000BDC6C600848C8C00BDC6
      C60000000000B5C6B50084949C0094A5AD00636B7300424A4A004A5252006373
      7300A5ADB500A5ADB5008494940094A5A500B5C6C6008C949400C6D6D600B5BD
      BD00DEDEDE000000000000000000000000000000000000000000000000006BD6
      D600428C940073FFFF006BFFFF006BFFFF006BFFFF007BFFFF0042ADB5001873
      8C002994B500107B940063EFF70073FFFF0073FFFF0073FFFF0073FFFF007BFF
      FF006BEFEF00000808001829290029424200316B840039849C00429CB5004ABD
      F70052D6FF0063DEFF00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7EFEF00CEBDAD00C6B59C00D6BDAD000000
      00000000000000000000000000000000000000000000CEAD9C00BD9C8400B594
      7B000000000000000000000000000000000000000000CECECE00FFFFFF00CECE
      CE00C6C6C600EFEFEF00DEDEDE00DEDEDE00E7E7E700FFFFFF00FFFFFF00FFFF
      FF00F7E7DE00BDADA500CEBDB500EFE7D600EFE7D600F7E7D600F7E7DE00FFFF
      F700BDBDBD00A5A5A500A5A5A50073737300E7E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000CED6CE00737B
      7B00C6CECE00000000007B848C006B737300525A5A004A4A5200949CA500B5BD
      C6009CA5AD009CA5A500848C8C00293131005A6B6B00525A6300525A5A00DEEF
      EF00A5ADAD00000000000000000000000000000000000000000000000000B5FF
      FF004294A5004AB5C6006BFFFF006BFFFF006BF7FF0073F7FF004AB5BD001873
      8C002994AD0010849C006BF7F7006BFFFF0073FFFF006BFFFF007BFFFF0063CE
      CE0063C6C600314A4A00314A4A0029394200295A6B00397B8C004294B5005AD6
      F70063E7FF0063DEFF00DEDEE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7EF00D6C6BD00CEBDAD00DEC6B5000000
      00000000000000000000000000000000000000000000CEB5A500BDA58C00B59C
      84000000000000000000000000000000000000000000CECECE00FFFFFF00FFFF
      FF00D6D6D600F7F7F700E7E7E700EFEFEF00EFEFEF00EFEFEF00E7E7E700EFEF
      EF00EFE7DE00E7CEBD00EFDECE00EFE7D600F7EFDE00F7EFE700EFEFE700EFEF
      EF00C6C6C600948C8C0073737300D6D6D6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDC6
      C6004A524A0031313100525A6300636B6B0094A5A500A5B5B5009CA5AD00C6D6
      D600ADB5BD008C949400636B730018212100525A6300949C9C00212929002931
      3100BDCECE00D6D6DE000000000000000000000000000000000000000000FFFF
      F700424A4A004A949C0052C6EF005ADEFF006BEFFF0039A5BD0031A5B500218C
      AD001884A500107B9C006BF7FF0073FFFF007BFFFF0073FFFF00396B6B0063B5
      AD0021424200426363004A8484005294940052B5BD005AC6CE005ACEDE0063DE
      F70063DEFF005AE7FF0084ADB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7EF00DECEC600D6C6B500DECEBD000000
      00000000000000000000000000000000000000000000D6BDAD00BDA59400BD9C
      84000000000000000000000000000000000000000000D6D6D600F7F7F700EFEF
      EF00DEDEDE00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00F7F7
      F700EFEFEF00EFEFEF00F7F7F700EFEFEF00F7F7F700EFEFEF00F7F7F700FFFF
      FF00CECECE0063636B00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6CECE004A525A0084949400C6D6D600DEEFEF006B73730052636300CED6
      DE005A636300424A4A002929310052525A006B737300C6CED6007B8484001818
      18004A525200A5B5B500F7F7F70000000000000000000000000000000000DEDE
      DE00100808000000000063DEF7005AD6FF005AD6F7005AD6EF0063DEEF0063E7
      EF0042BDCE004AC6D60073F7F7005AC6C6004A949400396B6B006BBDBD004A84
      8400426B6B0031524A00183131001029290018526300297394003994BD0063DE
      FF0063EFFF006BF7FF0052849400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7EF00E7D6CE00DECEBD00E7D6C6000000
      00000000000000000000000000000000000000000000D6C6B500C6AD9C00C6AD
      94000000000000000000000000000000000000000000CECECE00EFEFEF00F7F7
      F700EFEFEF00FFFFFF00F7F7F700F7F7F700F7F7F700EFEFEF00F7F7F700EFEF
      EF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEF
      EF00DEDEDE00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6008C9C9C00BDCECE00DEEFEF00ADB5BD00ADB5BD006B73
      73004A52520031313100393942008C949400B5BDC60000000000F7F7F700525A
      5A0018181800DEEFEF00B5BDBD00000000000000000000000000000000009C94
      9400214252005AADCE0063DEF70042ADBD00318CA50052BDDE0042ADC6003994
      AD00397B8400396B7300315A630039636B004A7B7B004A737B0031525A001821
      21000000000000000000000000000000000018425A00296B8C003184AD004AB5
      F70052CEFF005AE7FF0063BDCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700EFE7DE00E7D6CE00EFDED6000000
      00000000000000000000000000000000000000000000DECEBD00D6BDAD00CEB5
      A50000000000000000000000000000000000FFFFFF009C9C9C00F7F7F700F7F7
      F700F7F7F700FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6CECE007B848C008C9C9C00848C94006B737B007B84
      8C008C9C9C009CA5A500BDBDC60000000000F7FFFF00C6D6CE00FFFFFF000000
      0000A5ADAD0039424200D6DEE700B5BDBD000000000000000000000000007BC6
      E70052B5EF0052B5EF002184AD00319CC6001884A5001894AD0031ADCE0052C6
      EF0063DEFF005ADEFF005ADEFF005ACEEF0029424A000000000029525A005AAD
      B5006BE7EF006BFFFF006BFFFF0063FFFF004AB5C600186B8400218CA50063EF
      FF0063EFFF005AE7FF0031739400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700F7EFE700E7DED600F7E7DE000000
      00000000000000000000000000000000000000000000E7D6C600D6C6B500CEBD
      AD0000000000000000000000000000000000EFEFEF0039393900F7F7F700FFFF
      FF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700EFEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDC6C600525A5A00A5ADB500C6CECE00B5C6
      C600D6DEDE00F7FFFF0000000000EFF7FF00BDCECE00E7EFEF00EFF7F700FFFF
      FF0000000000181818006B737300E7F7F7000000000000000000000000009CCE
      E7003973A50052ADEF0052BDFF0052C6FF004AB5EF00107BA50018849C00188C
      AD004AC6F7005ACEFF0052CEFF0063D6FF00214252001021290073EFFF006BEF
      FF0063E7FF0063E7FF0063E7FF0063E7FF003994AD00186B7B00107B9C002194
      AD004AC6E7005ADEFF005ABDDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF7F700F7EFEF00EFE7DE00F7EFDE000000
      00000000000000000000000000000000000000000000E7D6CE00DECEBD00D6C6
      B50000000000000000000000000000000000B5B5B50052525200E7E7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700DEDEDE008C8C8C007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDC6C6004A525200EFF7F7000000
      0000FFFFFF00FFFFFF00DEE7E700BDC6C600B5B5B500BDC6C600D6DEDE00E7EF
      EF00BDCEBD0052525A00182121009CA5A500EFEFEF000000000000000000F7FF
      FF008CB5CE003994BD004AADEF004AADEF004AB5F70042A5D600106B8C000873
      9400188CAD0039B5E7005ACEFF005294BD004A738C005AC6E7005AD6FF0052CE
      EF005AD6FF005AD6FF004AADD60029849C0010637300106B8C00107B9C00107B
      940000738C0039ADDE0052B5DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFF700FFF7F700F7EFEF00FFF7EF000000
      00000000000000000000000000000000000000000000EFE7DE00E7DECE00DED6
      C60000000000000000000000000000000000B5B5B500BDBDBD00DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEFEF00E7E7
      E700DEDEDE00D6D6D600CECECE00BDC6C600B5B5B5007B7B8400CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDC6C600394242004A52
      520000000000F7FFFF00FFFFFF00949C9C00949C9C00A5ADAD00F7FFFF00CED6
      D600CEDEDE009CBD9C0084948C0021212100D6DEDE0000000000000000000000
      00000000000000000000D6EFF700A5D6EF0084BDDE004A84AD0039738C00395A
      7300526B7B007B849400B5C6CE0000000000B5DEF700428CBD004AADE700218C
      B500107B9C00106B8400107B9C002194BD004AB5EF0052BDFF0052BDFF005AC6
      FF004AA5D600214A6B00BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00F7F7EF00F7EFE7000000
      000000000000000000000000000000000000F7EFEF00EFE7DE00EFDED600E7D6
      CE000000000000000000000000000000000000000000CECECE00C6C6C600E7E7
      E700DEDEDE00CECECE00C6C6C600BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B500ADADB500ADADAD00ADADAD00ADA5A5007B7B7B007B7B7B00E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDC6C600424A
      4200F7F7F700FFFFFF00F7FFFF00BDCECE00D6DEDE00EFF7F700FFFFFF00F7FF
      F700F7FFFF00A5C6A500B5CEBD0063636B00C6CECE0000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00F7F7F700F7F7
      F70000000000000000000000000000000000FFFFFF0094C6DE0052C6FF0052BD
      F7002994C600319CC60042ADE70052B5EF0052B5EF004AA5DE004294C6003152
      6B00394A6300738C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFF7F700F7EFEF00EFE7
      DE00FFF7F700FFFFFF00FFF7F700EFEFE700DECEBD00EFE7E700EFE7E700EFDE
      CE00000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600ADADAD00848484008C8C8C008C8C8C00ADADAD00A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE006B737300EFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF000000
      0000FFFFFF00C6CECE00ADB5B500C6CECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094CEEF006BC6
      EF006BC6FF004294CE00317BAD0021638C0031526B00314A5A00394A5A009CAD
      B500E7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE7E700FFFFFF00FFFFFF00FFF7
      F700F7EFEF00EFE7DE00EFE7DE00F7EFEF00F7F7EF00F7F7EF00EFDECE00DED6
      C600000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700EFEFEF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00F7F7
      F7009C9C9C007373730094949400A5A5A500B5B5B500C6C6C600D6D6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6CECE00848C8400848C8C0000000000FFFFFF00EFF7F700B5BDBD00BDC6
      C600E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700F7EFE700FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFDECE00DED6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700D6D6D600E7E7E700FFFFFF00F7F7F700FFFFFF00A5A5
      A500737373008C8C8C00A5A5A500B5B5B500C6C6C600CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6CECE007B848400CED6D600CED6D600ADB5B500F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700F7EFE700EFE7
      DE00F7EFE700F7EFE700EFEFE700EFE7DE00E7D6CE00EFDED600FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00DEDEDE00DEDEDE00C6C6C6008C8C
      8C0094949400A5A5A500ADADAD00BDBDBD00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6CECE00A5ADAD00E7E7E700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700ADADAD00ADADAD00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500CECECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE0000000000000000000000
      0000000000000000000000000000FFEFDE00FFDEBD00FFDEB500FFDEB500FFE7
      B500FFE7B500FFE7B500FFE7B500FFE7B500FFE7B500FFE7B500FFE7BD00FFE7
      BD00FFE7BD00FFE7BD00FFE7BD00FFDEB500FFEFDE0000000000000000000000
      000000000000000000000000000000000000F7F7F700C6C6C600E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600B5B5B500F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700C6C6C600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600B5B5B500F7F7F700000000000000
      0000000000000000000000000000FFD6A500BDCEC60000C6FF0000CEFF0000C6
      FF0000C6FF0000C6FF0000C6FF0000C6FF0000C6FF0000C6FF0000BDFF0000BD
      FF0000BDFF0000B5FF0029B5F700F7DEB500F7CEAD00F7D6BD00000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CED6
      D600CED6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600BDBDBD00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700D6D6D600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600BDBDBD00F7F7F700000000000000
      0000000000000000000000000000FFD6AD00ADC6CE0000D6FF0000D6FF0000DE
      FF0000DEFF0000DEFF0000DEFF0000D6FF0000D6FF0000D6FF0000D6FF0000CE
      FF0000CEFF0000CEFF0018C6FF00E7D6BD00F7CEAD00F7CEAD00000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600E7E7E700E7E7
      E700DEDEDE00DEDEDE00DEDEDE009494BD007B7BA500D6D6CE00DEDEDE00DEDE
      DE00D6D6D600D6C6C600D6A5A500D6848400D64A4A00D6101000D6101000D618
      1800B54242009C949400D6D6D600D6D6D600D6D6D600D6D6D600CECECE00C6C6
      C600BDBDBD00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700D6D6D600E7E7E700E7E7E700DEDEDE00CECEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6DE00D6DEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00C6C6C600BDBDBD00F7F7F700000000000000
      0000000000000000000000000000FFDEAD00ADC6CE0000DEFF0010DEFF0018DE
      FF0021E7FF0021DEFF0010DEFF0000DEFF0000D6FF0000D6FF0000D6FF0000D6
      FF0000CEFF0000CEFF0018C6F700E7DEB500EFCEAD00F7CEA500000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00E7E7E700E7E7
      E700DEDEDE00DEDEDE00E7E7DE000000DE000800DE0073739C00D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D68C8C00D621
      2100D6000000D6000000A5ADAD00D6D6D600D6D6D600D6D6D600D6D6D600CECE
      CE00C6C6C600F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700DEDEDE00E7E7E700E7E7E700DED6CE00C6C6CE00DED6CE00DED6
      CE00D6D6CE00D6D6CE00D6D6CE00D6D6CE00D6CECE00D6CECE00D6D6CE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CEC600D6CEC600D6CEC600D6CE
      C600D6CEC600D6CEC600D6CECE00CECECE00C6C6C600F7F7F700000000000000
      0000000000000000000000000000FFDEAD00B5CECE0029E7FF0052EFFF006BEF
      FF007BF7FF006BEFFF0052EFFF0010E7FF0000DEFF0000DEFF0000D6FF0000D6
      FF0000D6FF0000CEFF0018C6F700E7DEBD00EFCEAD00EFC6A500000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00EFEFEF00EFEF
      EF00E7E7E700EFEFE7007373CE000808E7000808E7000800DE007B7B9C00DEDE
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEE7
      E700DE9C9C00DE080800C60808009C949400D6DEDE00DEDEDE00D6D6D600CECE
      CE00C6C6C600F7F7F70000000000FFFFFF00CECECE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00B5B5B500F7F7F7000000
      0000F7F7F700DEDEDE00EFEFEF00EFEFEF00E7E7E700CECEE700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700DEDEE700DEDEE700DEDEE700DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600CECECE00C6C6C600F7F7F700000000000000
      0000000000000000000000000000FFDEAD00B5CECE0042EFFF006BEFFF0094F7
      FF00B5F7FF0094F7FF0073EFFF0021E7FF0000E7FF0000DEFF0000DEFF0000D6
      FF0000D6FF0000CEFF0018CEF700E7DEBD00EFC6A500EFC69C00000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00EFEFEF00EFEF
      EF00EFEFEF00A5A5D6000000E7001008E7001008E7000808E7000800E7008484
      A500E7E7DE00E7E7E700E7E7E700E7E7E700DEDED600E7E7E700E7E7E700E7E7
      E700E7E7E700E7DEDE00DE000000D6000000A5949400DEDEDE00DEDEDE00D6D6
      D600C6C6C600F7F7F70000000000BDBDBD00DEDEDE00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7E700848484000000
      0000F7F7F700DEDEDE00EFEFEF00EFEFEF00E7DED600CECEDE00E7DED600E7DE
      D600E7DED600E7DED600E7DED600E7DED600DEDED600DEDED600DEDED600DEDE
      D600DEDED600DEDED600DEDED600DED6D600DED6D600DED6D600DED6D600DED6
      D600DED6D600DED6CE00DED6D600D6D6D600C6C6C600F7F7F700000000000000
      0000000000000000000000000000FFDEAD00B5CECE0052EFFF0084F7FF00B5FF
      FF00E7FFFF00B5FFFF0084F7FF0029EFFF0008E7FF0000E7FF0000DEFF0000DE
      FF0000D6FF0000CEFF0018CEF700E7DEBD00EFC6A500EFC69C00000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700F7F7F700F7F7
      F7006B6BE7000800EF001008EF006363EF000000EF001008EF001008EF001008
      EF000808E7009494AD00DEDED6002121E7004239CE00EFEFE700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFE7E700E7000000EF000000B5424200DEDEDE00DEDE
      DE00CECECE00F7F7F70000000000B5B5B500F7F7F700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6CEC600CEC6C600DED6
      D600D6CECE00DEE7E700C6ADA500D6CECE00DEDEDE00F7F7F700B5B5B500FFFF
      FF00F7F7F700E7E7E700F7F7F700F7F7F700F7F7F700DEDEF700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFF7F700EFF7F700EFF7F700EFEFF700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7EFEF00E7E7E700DEDEDE00CECECE00F7F7F700000000000000
      0000000000000000000000000000FFDEAD00B5D6CE004AF7FF007BF7FF00A5FF
      FF00C6FFFF00ADFFFF007BF7FF0021EFFF0008E7FF0000E7FF0000DEFF0000DE
      FF0000DEFF0000D6FF0018CEF700E7E7BD00EFC6A500E7BD9C00000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700F7F7F700EFEF
      EF000800F7001008F7000800EF00FFFFF7009C9CF7000000F7001008F7001008
      F7001008F7001008E7002121D6000800F7004242D600F7F7EF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFF7F700EF949400EF000000E7000000CECECE00DEDE
      DE00CECECE00F7F7F70000000000B5B5B500F7F7F700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700BDA59400D6CE
      C600D6CEC600CEBDB500CEC6BD00DED6D600E7E7E700F7F7F700B5B5B500FFFF
      FF00F7F7F700E7E7E700F7F7F700F7F7EF00F7EFE700DED6E700EFEFE700EFEF
      E700EFEFE700CE948C00D6A5A500BD6B6B00D69C9C00ADA5A500EFE7DE00EFE7
      E700EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7
      DE00EFE7DE00EFE7DE00E7DEDE00DEDEDE00CECECE00F7F7F700000000000000
      0000000000000000000000000000FFDEAD00B5D6CE0039F7FF005AF7FF007BF7
      FF0094FFFF0084FFFF0063F7FF0018EFFF0000EFFF0000E7FF0000E7FF0000DE
      FF0000DEFF0000D6FF0018CEF700E7E7BD00E7C6A500E7BD9400000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700FFFFF700B5B5
      F7000800F7000800FF00847BDE00F7F7F700FFFFF700ADADF7000000F7001008
      F7001008F7001008F7000808F7000800F7004A42D600F7F7EF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7FFFF00EF000000EF000000E7A5A500DEE7
      E700D6D6D600F7F7F70000000000B5B5B500F7F7F700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700D6C6B500D6C6
      BD00F7F7F700E7DEDE00E7D6CE00EFEFEF00EFEFEF00F7F7F700B5B5B500FFFF
      FF00F7F7F700E7E7E700F7F7F700F7F7F700FFFFFF00E7E7FF00FFFFFF00F7F7
      F700F7FFFF00E7CECE00E7CECE00DEADAD00DEADAD00CECECE0073737300D6CE
      CE00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700E7E7E700DEDEDE00D6D6D600F7F7F700000000000000
      0000000000000000000000000000FFDEAD00ADCECE0021F7FF0039F7FF0052F7
      FF0063FFFF0052FFFF0039F7FF0008EFFF0000EFFF0000EFFF0000E7FF0000DE
      FF0000DEFF0000D6FF0018CEFF00E7E7BD00E7BDA500E7BD9400000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700FFFFFF00B5B5
      FF000800FF001008F700F7F7EF00FFFFFF00FFFFFF00FFFFFF00B5B5FF000808
      FF001008FF001008FF001008F7000800FF004A42D600FFFFF700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7FFFF00F7525200F7000000EFA5A500E7E7
      E700D6D6D600F7F7F70000000000B5B5B500FFFFFF00B5BDC6009CA5B500949C
      B500737BC6002131420031424A00394A5200394A5200B5BDBD00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700DECECE00EFEF
      EF00EFEFEF00F7F7F700D6C6B500EFEFE700F7F7F700F7F7F700B5B5B500FFFF
      FF00F7F7F700E7E7E700FFFFFF00FFF7F700F7EFE700E7DEEF00F7EFEF00F7EF
      EF00F7F7EF00DEA5A500C6737300EFDED600C67B7B00EFD6CE008C8C8C007373
      7300BDBDB500FFF7EF00F7EFE700F7EFE700F7EFE700F7EFE700F7EFE700F7EF
      E700EFEFE700F7EFE700EFE7E700E7E7E700D6D6D600F7F7F700000000000000
      0000000000000000000000000000FFEFBD00FFDEAD0094DED6009CDED600A5DE
      D600A5E7D600A5E7D6009CE7D6009CE7D6009CE7D6009CDED60094DED60094DE
      D60094DED60094DED600DEE7BD00FFF7AD00E7BD9C00E7B59400000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00BDBD
      FF000800FF005A5ADE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF7003931
      EF000808FF001008FF001008FF000800FF004A42DE00FFFFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7949400F7000000EFA5A500E7EF
      EF00D6D6D600F7F7F70000000000B5B5B500FFFFFF00A5ADBD009CA5B500848C
      D600B5C6DE004252630031424A0042525A004A5A6300BDBDC600F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700E7D6CE00EFE7DE00E7DED600F7F7
      F700DECEC600F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700B5B5B500FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00E7E7FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFFFF00DEDEDE009C9C
      9C00212929008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFFF00EFEFEF00E7E7E700D6D6D600F7F7F700000000000000
      0000000000000000000000000000FFEFDE00FFEFC600FFE7B500FFE7B500FFE7
      B500FFEFB500FFEFBD00FFEFBD00FFF7BD00FFF7BD00FFF7BD00FFFFC600FFFF
      C600FFFFC600FFFFC600FFFFC600FFFFCE00EFCEBD00DEAD8C00000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00CEC6
      FF004A42FF00ADADE700FFFFFF00FFFFFF00FFFFFF00FFFFFF006B6BEF000000
      FF000800FF000800FF000800FF000800FF004A42DE00FFFFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7B5B500FF000000EFA5A500EFEF
      EF00DEDEDE00F7F7F70000000000B5B5B500FFFFFF00949CB500848CCE00BDD6
      E700A5BDD600A5ADC6008494AD00394A520042525A00BDC6C600F7F7F700EFEF
      EF00E7E7E700E7E7E700EFEFEF00EFEFEF00E7E7E700E7DEDE00EFEFEF00E7E7
      E700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00B5B5B500FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFF7F700E7E7F700FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00B5AD
      AD003931310008080800A59C9C00FFFFF700F7F7EF00F7F7EF00F7EFEF00F7EF
      EF00F7EFEF00F7F7EF00EFEFEF00EFEFEF00DEDEDE00F7F7F700000000000000
      000000000000000000000000000000000000FFF7EF00FFDEBD00FFDEBD00FFE7
      C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7CE00FFE7CE00FFE7CE00FFE7
      D600FFEFD600FFEFDE00FFEFDE00FFEFDE00FFF7F700E7B59400000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00CECE
      FF00524AFF00D6D6E700FFFFFF00FFFFFF00FFFFFF00DEDEFF004239FF004A42
      FF004A42FF004A42FF004A4AFF004A42FF008484F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC6C600FF000000F7ADAD00EFEF
      EF00DEDEDE00F7F7F70000000000B5B5B500FFFFFF006B738400849CBD00ADC6
      DE00A5B5CE00B5C6DE00949CCE006B7B940042526300B5BDBD00FFFFFF00ADAD
      AD009C9C9C00949494009C9C9C009C9C9C0094949400A5A5A50073737300A5A5
      A5009C9C9C00FFFFFF00F7F7F700F7F7F700F7F7F700FFFFFF00B5B5B500FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00EFEFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700A5A5A5003131310008080800BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00DEDEDE00F7F7F700000000000000
      00000000000000000000000000000000000000000000FFEFD600DEBDA500BDA5
      8C00BDA58C00B59C8C00DEBDA500FFE7BD00FFE7BD00FFE7BD00FFE7BD00FFDE
      B500BDA58400B5947B00AD947B00B59C8400FFE7CE00F7EFE700000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00D6CE
      FF00635AFF00E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFF700F7FFF700F7F7F700EFF7F700EFF7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFBDBD00FF000000F7ADAD00EFF7
      F700DEDEDE00F7F7F70000000000B5B5B500FFFFFF005A6B84006B7B94009CB5
      CE00A5BDD600ADBDD600BDCEE700A5B5D60063738400DEDEDE00F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700FFFFFF00B5B5B500FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFF7F700EFEFF700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00EFE7DE00949494003131310008080800C6BDB500FFFFF700FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00F7F7EF00EFEFEF00DEDEDE00F7F7F700000000000000
      00000000000000000000000000000000000000000000FFFFFF00D6C6AD00CEB5
      9C00C6A59400CEB5A500E7DED600FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7EF
      DE00CEAD9C00B59C7B00BD9C8400C6AD9C00FFF7E700FFFFFF00000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00D6D6
      FF00736BFF00EFEFE700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EF848400E7636300E7636300E7636300DE5A5A00DE5A5A00DE5A
      5A00F7EFEF00FFFFFF00FFFFFF00FFFFFF00FFBDBD00FF313100F7BDBD00F7F7
      F700DEDEDE00F7F7F70000000000B5B5B500FFFFFF0052637B006B7B9400ADBD
      DE00A5B5D600CED6EF00BDCEE700B5C6DE007B849400DEDEE700FFFFFF00CECE
      CE00C6C6C600ADADAD009C9C9C00C6C6C600C6C6C600CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600DEDEDE00C6C6C600E7E7E700FFFFFF00B5B5B500FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00EFEFEF00848484003131310010101000D6DEDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700DEDEDE00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000D6C6BD00D6BD
      AD00C6AD9400D6C6AD00FFFFFF0000000000000000000000000000000000FFFF
      F700CEB5A500B59C8400BD9C8400CEBDAD000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00DEDE
      FF00847BFF00E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF737300FF525200FF525200FF525200FF525200FF4A4A00F7C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9C9C00FF393900FFBDBD00F7FF
      FF00E7E7E700F7F7F70000000000B5B5B500FFFFFF005A6B8400A5ADCE00A5B5
      D600ADBDDE00ADB5D600ADBDDE00ADBDD6007B849400CECECE00FFFFFF00BDBD
      BD00CECECE00B5B5B5009C9C9C00C6C6C600C6C6C600B5B5B500C6C6C600C6C6
      C600B5B5B500B5B5B500DEDEDE00BDBDBD00D6D6D600FFFFFF00BDBDBD00FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFF700F7EFF700FFFFF700FFFF
      F700FFFFF700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFFFF700EFEFE700EFE7E700737373003129290010101000FFFFF700FFF7
      F700FFF7F700FFF7F700FFF7F700F7F7F700E7E7E700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000DECEC600DECE
      BD00CEB5A500D6C6B500FFFFFF0000000000000000000000000000000000FFF7
      F700D6BDAD00BD9C8400BDA58400CEBDAD000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00DEDE
      FF009494FF00D6D6E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF848400FF636300FF636300FF636300FF5A5A00E7949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF737300FF424200FFC6C600FFFF
      FF00E7E7E700F7F7F70000000000B5B5B500FFFFFF00636B84007B84A5007B8C
      9C00A5B5CE00ADB5D600949CBD00BDCEE700848CA500BDBDC600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFF700F7F7FF00FFFFF700FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFF7F700E7E7DE00EFEFE70063635A0029292900EFEFEF00FFFF
      F700FFF7F700FFF7F700FFF7F700FFFFFF00E7E7E700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000DECEC600DECE
      C600D6BDAD00D6C6BD000000000000000000000000000000000000000000FFF7
      F700D6BDAD00BD9C8400BDA58400CEBDAD000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00E7E7
      FF00A5A5FF00C6C6EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C8C00FF737300FF737300FF737300FF737300F7737300D6C6
      C600FFFFFF00FFFFFF00FFFFFF00F7EFEF00FF5A5A00FF5A5A00FFC6C600FFFF
      FF00E7E7E700F7F7F70000000000B5B5B500FFFFFF005A6B8C00212939004A52
      63007B8C9C00CEDEEF00C6D6EF00BDCEEF008C9CAD00BDBDC600FFFFFF00ADAD
      AD00A5A5A500A5A5A5009C9C9C00ADADAD008C8C8C00B5B5B500A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F7005A52520029292900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000DED6C600E7D6
      CE00D6C6B500DECEBD000000000000000000000000000000000000000000FFF7
      F700D6C6B500BDA58C00BDA58C00CEBDAD000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00E7E7
      FF00B5B5FF00BDBDF700FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF9C9C00FF848400FF848400FF848400FF848400FF7B7B00FF7B
      7B00DEC6C600FFFFFF00FFFFFF00F79C9C00FF6B6B00FF6B6B00FFCECE00FFFF
      FF00E7E7E700F7F7F70000000000B5B5B500FFFFFF0063738C00213142003139
      4A004A526300BDD6EF00BDD6EF009CADC600636B7B00DEDEE700FFFFFF00CECE
      CE00FFFFFF00D6D6D600EFEFEF00EFEFEF00DEDEDE00F7F7F700DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFF700FFFFF700EFEFEF00E7DEDE00F7F7EF00292121003939
      3900FFFFFF00FFFFF700FFFFFF00FFFFFF00E7E7E700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000E7DECE00EFE7
      DE00E7D6C600DED6CE000000000000000000000000000000000000000000FFF7
      F700DECEBD00C6B59C00CEB59C00D6BDAD000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00EFEF
      FF00C6C6FF00BDBDFF00E7E7EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFADAD00FF949400FFB5B500FF949400FF949400FF8C8C00FF8C
      8C00FF8C8C00DECECE00EFC6C600FF7B7B00FF7B7B00FF7B7B00F7F7F700FFFF
      FF00E7E7E700F7F7F70000000000B5B5B500FFFFFF007B8C9C004A6373001821
      29002121310063738C004A4A5A003142520073849400E7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEDEDE00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7E7E700525252004242
      42004A4A4A00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000E7DED600F7EF
      E700E7DECE00E7D6CE000000000000000000000000000000000000000000FFF7
      F700DECEBD00CEBDA500CEB5A500D6BDAD000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00D6D6FF00CECEFF00CECEF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFB5B500FFC6C600FFFFFF00FFE7E700FF9C9C00FFA5A500FF9C
      9C00FF9C9C00FF9C9C00FF949400FF949400FF8C8C00F7BDBD00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000B5B5B500FFFFFF0063738C0029425A003142
      6300213142002129390039526B00395273006B7B8C00E7E7EF00FFFFFF008C8C
      8C00848484009C9C9C007B7B7B008C8C8C00B5B5B50073737300848484009494
      94009C9C9C00848484009C9C9C0094949400FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7F700E7DEDE00E7E7E7008C8C
      8C005A5A5A00635A5A00FFFFFF00FFFFFF00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000E7DED600F7EF
      E700EFDED600E7DED6000000000000000000000000000000000000000000FFF7
      F700DECEBD00D6BDAD00D6BDAD00D6C6AD000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00F7F7FF00DEDEFF00E7E7F700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFE7E700FFBD
      BD00FFB5B500FFB5B500FFB5B500FFADAD00FFEFEF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B5000000
      0000F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7DE00FFFF
      FF00DED6D600CECECE0063636300C6C6C600EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000EFE7E700FFF7
      F700EFE7E700EFE7D600FFFFFF0000000000000000000000000000000000F7EF
      EF00DECEBD00DECEBD00DEC6BD00DECEBD000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7FF00E7E7FF00EFF7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFEF
      EF00FFC6C600FFC6C600FFBDBD00FFE7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F7000000000000000000EFEFEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700000000000000
      0000F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700EFEF
      EF00FFFFFF00EFEFEF00C6C6C6006B6B6B00BDBDBD00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000F7EFEF00FFFF
      F700EFE7E700F7E7DE00F7F7EF0000000000000000000000000000000000DED6
      C600DECEC600DED6C600DEC6B500E7D6CE000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFFF00E7E7FF00E7E7FF00E7E7FF00EFEF
      F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFEFEF00FFCECE00FFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7
      DE00F7F7F700FFFFFF00E7E7E700ADA5A5007B7B7B00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000FFF7F700FFFF
      F700F7EFEF00F7EFE700E7DED600000000000000000000000000E7DED600D6BD
      AD00E7DED600E7DECE00DEC6B500F7EFE7000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7FF00EFEFFF00EFEF
      FF00EFEFFF00EFEFFF00F7F7F700F7F7F700F7F7FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00EFEFEF00FFFFFF00FFFFFF00CECECE0021292100CECECE00000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      EF00FFF7F700F7F7EF00F7F7EF00F7F7EF00F7EFE700F7EFE700EFE7DE00EFEF
      E700EFE7E700E7D6C600EFEFE700000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFF7EF00F7F7EF00F7F7F700F7F7F700F7F7EF00F7F7EF00F7EFEF00F7EF
      EF00EFE7DE00EFDED60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFE700EFE7DE00EFE7DE00F7EFE700F7EFE700EFEFE700EFE7DE00E7D6
      CE00DECEBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00E7E7E700BDC6CE00B5BD
      C600B5BDC600B5BDC600B5BDC600B5BDC600B5BDBD00B5BDC600B5BDC600B5BD
      C600B5B5C600B5B5BD00B5BDBD00B5BDC600B5BDC600B5BDBD00B5BDBD00B5BD
      BD00B5BDBD00B5BDBD00B5BDC600B5BDC600C6CECE00E7E7EF00000000000000
      00000000000000000000FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00EFEFEF00D6D6DE00CED6DE00CECE
      DE00CECED600CED6DE00CED6DE00CECEDE00CED6DE00CED6DE00CECEDE00CED6
      DE00CED6DE00CED6DE00CED6DE00CECEDE00CED6DE00CED6DE00CED6DE00CED6
      DE00CECED600CED6D600CECED600CED6D600CECED600C6CECE00F7F7F7000000
      000000000000CECECE00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE0000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00EFEFF700EFF7F700EFEFF700EFEFF700EFEF
      F700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEF
      F700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEF
      F700EFEFF700EFEFF700EFEFF700EFEFF700E7EFEF00EFF7F700CED6D600D6DE
      DE00F7F7F700C6C6C600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600B5B5B500F7F7F700000000000000
      00000000000000000000FFFFFF00E7E7E700CECECE00F7F7F700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00EFEFF700E7EFF700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFF700E7EFEF00E7EFEF00EFEFEF00E7EFEF00EFEFF700F7F7
      FF00F7F7FF00F7F7FF00F7F7FF00EFEFF700EFEFF700E7EFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7EFEF00E7EFEF00E7EFEF00E7EFEF00DEE7EF00C6CE
      CE00F7F7F700D6D6D600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600BDBDBD00F7F7F700000000000000
      00000000000000000000F7F7F7009494940063636300A5A5A500CECECE00EFEF
      EF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00E7EFEF00E7EFEF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7EFEF00E7EFEF00EFEFF700EFF7F700CECE
      CE00B5B5B500ADADB500DEDEDE00EFEFF700F7F7F700E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7EFEF00E7EFEF00E7EFEF00E7EFEF00E7EFEF00C6CE
      CE00F7F7F700D6D6D600E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00C6C6C600BDBDBD00F7F7F700000000000000
      00000000000000000000DEDEDE00737373009C9C9C006B6B6B00636363008C8C
      8C00BDBDBD00E7E7E700F7F7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700C6C6C6009494940042737B0029738400217B8C00316B73004A5A5A007B7B
      7B00FFFFFF0000000000E7EFEF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7
      E700DEE7E700DEE7E700DEE7E700E7E7EF00BDBDC6006B6B6B00212129000808
      08001010100018101000080808001010100042424200DEDEE700EFEFF700E7E7
      EF00E7E7EF00E7E7EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7EF00CED6
      D600F7F7F700DEDEDE00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00C6C6C600F7F7F700000000000000
      000000000000FFFFFF00B5B5B50094949400B5943100847B7B00847B7B007B7B
      7B005A5A5A0073737300A5A5A500CECECE00EFEFEF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600ADADAD005273
      7B002973840010849C0000D6F70000E7FF0000EFFF0008E7FF0018CEEF003184
      8C00D6D6D60000000000E7E7EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7
      E700DEE7E700DEE7E700E7EFEF00E7E7EF003939420008080800080808001818
      1800181818001818180018101800101010000008080073737300CECED600E7EF
      F700DEE7E700DEE7E700DEDEE700DEE7E700DEE7E700DEE7E700DEE7E700CECE
      D600F7F7F700DEDEDE00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600CECECE00C6C6C600F7F7F700000000000000
      000000000000EFEFEF0084848400A5A5A50094948C005A5A52005A5A52006363
      5A007B7B7B007B7B7B006B6B6B00636363008C8C8C00BDBDBD00E7E7E700F7F7
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00E7E7E700C6C6C6006B7B7B00396B7B0018738C0000AD
      CE0008C6E70008D6F70000E7FF0000DEF70000E7F70010E7F70010E7FF0018E7
      FF00A5A5A50000000000E7E7EF00DEDEE700DEDEE700DEDEE700DEDEE700DEDE
      E700DEDEE700E7E7EF00E7E7EF00949C9C000000000008080800101818001010
      18001818180018181800181818001818180010101800080808005A5A6300CECE
      D600DEDEE700DEDEE700DEDEE700DEDEE700DEDEE700DEDEE700DEDEE700CECE
      D600F7F7F700DEDEDE00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700C6C6
      C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00C6C6C600E7E7E700E7E7E700DEDEDE00E7E7E700DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600C6C6C600F7F7F700000000000000
      0000FFFFFF00CECECE008C8C8C008C8C8C00A5A5A5005A5252005A5252005A52
      52005A5252005A5252006B6B63007B7373007B7B7B006363630073737300A5A5
      A500D6D6D600EFEFEF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700A5A5A500737B
      7B0039737B00007BA5000094C60000ADDE0000C6F70000CEFF0000D6FF0000DE
      F70000DEF70000DEF70000E7F70008E7F70010E7F70018E7F70021EFFF0021DE
      FF00E7E7E70000000000DEE7E700D6DEE700D6DEE700D6DEDE00D6DEDE00D6DE
      DE00D6DEE700ADADB500313131000000000094949C00D6D6DE00EFEFF7002121
      290008081000181818005A5A6300D6D6DE00E7E7EF0063636B00101018000008
      0800D6D6DE00DEE7E700D6DEDE00D6DEDE00D6DEDE00D6DEDE00D6DEDE00C6CE
      CE00F7F7F700E7E7E700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEF
      EF00F7F7F700F7F7F700EFEFEF00D6D6D600B5B5BD00BDBDC600DEDEDE00EFEF
      EF00F7F7F7008C8C8C00C6C6C600EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7
      E700EFEFEF00E7E7E700E7E7E700DEDEDE00CECECE00F7F7F700000000000000
      0000E7E7E70073737300949494009C9C9C0073737300524A4A00524A4A00524A
      4A00524A4A00524A4A00524A4A00524A4A004A4A42004A4A4200524A4A00635A
      5A00736B6B0073737300636363007B7B7B00D6D6D600EFEFEF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6D6D600A5A5A5006B7B8400107B9C00008C
      B50000A5D60000B5E70000BDF70000C6FF0000CEFF0000CEF70000D6F70000DE
      F70000DEF70000DEF70008E7F70010E7F70018E7F70029E7F70031EFFF0010B5
      DE000000000000000000DEDEE700D6D6DE00D6D6DE00D6DEDE00D6DEDE00D6DE
      DE00DEE7E7005A5A63000000000031313100E7E7EF00DEE7E700E7E7EF004A4A
      520008081000080810008C8C9400E7E7E700DEE7E700D6D6DE006B6B73000008
      08009C9CA500DEDEE700DEDEDE00D6D6DE00D6D6DE00D6D6DE00D6DEDE00C6CE
      CE00F7F7F700E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00F7F7F700EFEFEF00D6D6D600C6C6BD002121E7004242DE00CECEC600E7E7
      E700F7F7F7008C8C8C00CECECE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700DEDEDE00CECECE00F7F7F70000000000FFFF
      FF00B5B5B50073737300848484008C8C8C00524A4A0039393900393939004242
      39004A4242004242390018181800080808001010100029292900393931004242
      39004A4242004A4A420063636300737373006B6B6B0094949400C6C6C600E7E7
      E700F7F7F700FFFFFF0000000000000000000000000000000000000000000000
      000000000000EFEFEF00BDBDBD00427B8C00107B9C000094BD00009CD600009C
      CE00009CD60000A5D600009CD60000A5D60000ADE70000BDEF0000C6F70000DE
      F70000DEF70000DEF70010E7F70018E7F70021E7F70031F7FF0018DEFF0063A5
      BD000000000000000000DEDEE700D6D6DE00D6D6DE00D6D6DE00D6D6DE00D6D6
      DE00DEDEE7007B7B840052525A0094949C00DEDEE700CED6DE00DEDEE700636B
      6B000810100000000800ADB5B500DEE7EF00D6D6DE00E7E7EF00C6C6CE006B6B
      7300A5ADB500D6D6DE00D6D6E700D6D6DE00D6D6DE00D6D6DE00D6D6DE00C6CE
      CE00F7F7F700E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEDEDE00CECEC6003939E7000000F7000000F7008C8CCE00D6D6
      D600F7F7F7008C8C8C00CECECE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700EFEFEF00F7F7F700E7E7E700DEDEDE00D6D6D600F7F7F70000000000EFEF
      EF007B7B7B007B7B7B007B7B7B006B6B6B004242390031313100313131003131
      3100313129001010180010002900180839001000210010101000101010002929
      2900423939004242390042423900424239006B63630073737300636363007B7B
      7B00ADADAD00D6D6D600F7F7F700FFFFFF00000000000000000000000000CECE
      CE0010526300004A6300004A6B0000739C00006B9400007BA5000084B500008C
      BD00008CBD000094C600009CC600009CCE0000A5DE0000ADE70000B5F70000CE
      F70000CEF70008D6F70031E7F70039EFFF0039F7FF008CB5CE00000000000000
      00000000000000000000DEDEDE00CED6D600CED6D600CECEDE00CECEDE00CECE
      DE00CECEDE00D6D6DE00D6D6E700D6D6DE00CECEDE00CECEDE00D6D6E7006B73
      7B001010180000000800B5BDBD00DEDEE700CED6D600CED6DE00CED6DE00D6D6
      DE00D6D6DE00CECEDE00CECEDE00CECEDE00CECEDE00CECEDE00CED6DE00C6C6
      CE00F7F7F700E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700E7E7E700D6D6CE005A5AE7000000FF000000FF000000FF000000F700BDBD
      C600E7E7E70094949400CECECE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00E7E7E700D6D6D600F7F7F700FFFFFF00D6D6
      D6006363630073737300737373004A4A42003939310031292900312929002929
      2900181829001808420021084A0018084A001808420008081000080808001818
      10002929210039313100393931003939390039393900423939005A5A5A006B6B
      6B006B6B6B006B6B6B00ADADAD00F7F7F7000000000000000000B5B5B5002963
      730000526B00006B84000084AD000094C600007BAD00007BAD00008CBD00008C
      BD000094BD000094C600009CCE00009CCE0000ADDE0000B5E70000BDF70000CE
      F70000D6F70010D6F70031DEF70029CEEF0052ADC60000000000000000000000
      00000000000000000000D6DEDE00CED6D600CED6D600CECED600CECED600CECE
      D600CECED600CECEDE00CED6DE00CECED600CECEDE00CECEDE00D6D6DE006B73
      73001010180000000800B5B5BD00DEDEE700CED6D600CECEDE00CECEDE00CECE
      DE00CECEDE00CED6DE00CECEDE00CECEDE00CECEDE00CECEDE00CED6DE00BDC6
      CE00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00DEDED6008484EF000000FF000000FF003939FF000000FF000000FF003131
      EF00DEDECE008C8C8C00D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700EFEFEF00E7E7E700D6D6D600F7F7F700F7F7F7009494
      94006B6B6B006B6B6B006B6B6B00313131003131310029292900212121001010
      180000004A000800520008006300080063001008630008081000080808001818
      1800101010002121210029292900313129003131310039313100393131003931
      3100393939005A5A52007B7B7B00F7F7F70000000000C6CECE00216B84000873
      9400008CAD00008CB5000084AD000094C600008CBD00007BA500008CBD000094
      BD000094BD00009CCE00009CCE0000A5CE0000ADDE0000B5EF0000BDF70000CE
      F70000D6F70010DEF70039B5D6008CA5B5000000000000000000000000000000
      00000000000000000000D6DEDE00CECED600CECED600CECED600CECED600CECE
      D600CECED600CECED600CECED600CECED600CED6D600CECED600D6D6DE006B73
      73001010180000000800B5B5BD00DEDEE700CECED600C6CED600C6CED600C6CE
      D600C6CED600C6CEDE00C6CED600C6CED600C6CED600C6CED600CECED600BDC6
      C600F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      EF00ADADF7000000FF003131FF00EFEFFF00FFFFFF003939FF000000FF000000
      FF007B7BDE007B7B7B00D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00DEDEDE00F7F7F700E7E7E7006B6B
      6B00636363006363630052524A00393931003931310029292100101010000808
      29000000630000086B0000006B00001073001021730010101000212121002929
      2900080808001010100018181800211818002921210029292900312929002929
      210021212100292121005A5A5200E7E7DE0000000000297B9400187B9C00218C
      A5000094B5000094BD00006B8C00005A7B0000739C000084B500008CBD000094
      BD000094C600009CC600009CCE0000A5D60000ADE70000B5EF0000BDF70000D6
      F70008D6F70010DEF70052A5B500CECECE000000000000000000000000000000
      00000000000000000000D6D6DE00C6CED600C6CED600C6CED600C6CED600C6CE
      D600C6CED600C6CED600C6CED600C6CED600C6CED600C6CED600CECEDE006B6B
      73001010180000000800ADB5B500D6DEDE00C6CED600C6CED600C6CED600C6CE
      D600C6CED600C6CED600C6CED600C6CED600C6CED600C6CED600C6CED600BDBD
      C600F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      FF000808FF009494FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001818FF000000
      FF000000FF0063637B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00DEDEDE00F7F7F700BDBDBD005A5A
      5A005A5A5A0063636300524A4A004A4A4A004A4A420029292100080808000808
      2900001884000010840000218C00294A9C00182139004A4A4A00181818002929
      2900000000000808080010101000080808004A4A4A0021181800212121002118
      1800212118004A424200ADADAD000000000000000000186B840018849C00188C
      A500088CB50000638400005A7B000084AD000084AD00008CB500008CBD000094
      BD000094C600009CC600009CCE0000A5D60000ADE70000B5EF0000BDF70000D6
      F70008DEF70010DEF70052ADB500CECECE000000000000000000000000000000
      00000000000000000000D6D6DE00C6CECE00C6CED600C6CED600C6CED600C6CE
      D600C6CED600C6CECE00C6C6CE00C6CECE00CED6DE00CECEDE00D6D6DE006B73
      7B001010180000000000B5B5BD00DEE7E700CED6D600CED6DE00C6CED600BDCE
      CE00BDCED600BDCED600BDCECE00BDCED600BDCED600BDCED600C6CED600BDBD
      C600F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      FF00EFEFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7FF000808
      FF000000FF000000CE00B5B5AD00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00DEDEDE00F7F7F700848484005252
      520052525200636363006363630063636300635A5A0031292900080808001810
      100052639C004A73C6004A639400212939008484840039393900101010002121
      2100080808000808080021212100101010003939390029292900181010001818
      1800393131008C8C8C00FFFFFF000000000000000000215A6B0018849C002194
      AD001084A500007B9C000084A5000084AD000084B500008CB500008CBD000094
      C6000094C600009CCE00009CCE0000A5D60000ADE70000BDEF0000BDF70000DE
      F70008DEF70018DEF70052ADB500D6D6D6000000000000000000000000000000
      00000000000000000000D6D6DE00C6C6CE00C6C6CE00C6C6CE00C6C6CE00C6C6
      CE00C6C6CE00BDC6CE00C6CED600C6CECE00ADB5BD00B5B5BD00B5BDC6006363
      6B0010101800000008009C9CA500BDC6CE00B5BDBD00ADB5BD00BDC6CE00BDC6
      CE00BDC6CE00BDC6CE00BDC6CE00C6C6CE00C6C6CE00C6C6CE00C6CECE00B5BD
      C600F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      FF004242FF003939FF008C8CE700E7E7DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700DEDEDE00F7F7F7006B6B6B004242
      4200424242005A5A5A00636363006B6B6B006B6B630031313100181810001818
      18001818100021211800181818004A4A4A004A4A4A0008080800212121001010
      1000080808000808080031313100080808002121210031313100212121002929
      290073736B00F7F7F70000000000000000000000000000000000ADD6DE0039A5
      C600088CAD000084AD000084AD000084AD00008CB500008CBD000094BD000094
      C600009CC600009CCE0000A5CE0000A5D60000B5EF0000BDF70000C6F70008E7
      F70000DEF70010DEF7005AADB500E7E7E7000000000000000000000000000000
      00000000000000000000D6D6DE00C6CED600C6CED600CECED600CECED600CECE
      D600CECED600CECED600D6D6DE00C6C6CE000000080010101800101018001010
      18001810180018181800101018001010100008101800181821008C949C00CED6
      DE00CECED600CECED600CECED600CECED600CECED600CECED600CECED600BDC6
      C600F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00C6C6EF004A4AFF004A4AFF00C6C6DE00EFEFEF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7E700F7F7F700EFEFEF00B5B5
      B5006B6B6B004A4A4A00525252006B6B6B006B6B6B0031313100181818001818
      1800212121001818180021212100292929001818180031313100212121001010
      10001010100029292900212121000808080018181800212121004A4A4A005A5A
      5A00EFE7E7000000000000000000000000000000000000000000D6E7EF0039A5
      BD00088CAD00008CAD000084AD00008CB500008CB500008CBD000094C600009C
      C600009CCE00009CCE0000A5D60000A5DE0000BDF70000C6F70000CEF70008E7
      F70000E7F70010DEF7006BADB500F7F7F7000000000000000000000000000000
      00000000000000000000D6DEDE00CED6D600CED6D600CECED600CECEDE00CECE
      DE00CECEDE00CECEDE00CED6DE00CECED6007B848C008484940084848C006B6B
      730021212100080810008C8C8C008C8C940084848C00848C9400B5B5C600D6D6
      DE00CECEDE00CECEDE00CECEDE00CECEDE00CECEDE00CECEDE00CED6DE00BDC6
      CE00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAD
      AD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A5009C9C9C009C9C
      9C00A5A59C008C8CC6005A5AFF006B6BFF00E7E7DE00F7F7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700000000000000
      0000FFFFFF00E7E7DE00ADADAD007B7B7B007373730031313100181818001010
      1000101010001818180021212100313131002929290029292900292929001818
      18001010100039393900080808000808080008080800212121004A4A4A00D6D6
      D600000000000000000000000000000000000000000000000000F7FFFF004AA5
      BD00108CAD00008CAD000084AD00008CB500008CBD000094BD00009CC600009C
      CE00009CCE0000A5CE0000A5D60000ADE70000CEF70000CEF70000D6F70000EF
      F70000DEF70008C6EF0084ADB500FFFFFF000000000000000000000000000000
      00000000000000000000DEDEDE00CED6DE00CED6DE00CED6DE00CED6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00D6DEE700D6DEE700DEE7E7008C8C
      94001818210000000800C6C6CE00E7E7EF00DEDEE700D6DEE700D6D6DE00CED6
      DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00CED6DE00C6C6
      CE00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5FF006363FF009C9CF700EFEFE700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700000000000000
      00000000000000000000FFFFFF00F7F7F700CECECE0042424200292121001010
      1000313131001818180018181800101010001818180021212100292929002929
      29005252520031313100181818001010100000000000212121005A5A5A000000
      000000000000000000000000000000000000000000000000000000000000BDDE
      E7001094B500008CAD00008CAD000094BD000094C600009CC60000A5CE0000A5
      D60000A5D60000ADDE0000B5E70000BDF70000A5D60000ADDE0010EFF70000BD
      E700009CCE0021FFFF00E7E7E700000000000000000000000000000000000000
      00000000000000000000DEE7E700D6DEE700D6DEE700D6DEDE00D6DEDE00D6DE
      DE00D6DEDE00D6DEDE00D6DEDE00D6DEDE00DEDEE700DEE7EF009C9CA5001821
      2100737B7B0094949C00080810005A5A6300CECED600D6DEDE00D6DEDE00D6DE
      DE00D6DEDE00D6DEDE00D6DEDE00D6DEDE00D6DEDE00D6DEDE00DEDEDE00C6CE
      CE00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A5A5FF007373FF00CECEEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700000000000000
      000000000000000000000000000000000000FFFFFF00C6C6C600525252002121
      2100393939000808080008080800101010001818180018181800292929004A4A
      4A00212121002929290018181800181818000808080029292900424242000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF00189CBD00088CAD00008CB5000094C600009CC600009CCE0000A5D60000A5
      DE0000ADDE0000ADE70000B5EF0000BDF7000094C60000CEF70000D6FF00007B
      B50010D6EF0029FFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700DEDEE700DEDEE700DEDEE700DEDEE700DEDE
      E700DEDEE700DEDEE700DEDEE700DEDEE700E7E7EF00D6DEDE005A6363007B84
      8C00E7EFEF00F7F7F7003139390018212100ADB5B500DEDEE700DEDEE700DEDE
      E700DEDEE700DEDEE700DEDEE700DEDEE700DEDEE700DEDEE700DEDEE700CECE
      D600F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5FF008C8CFF00F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700CECE
      CE00424242000808080000000000080808001818180039393900292929000808
      0800080808001010100018181800181818002121210052525200525252000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029A5C600088CAD000094B500009CC600009CCE0000A5D60000A5DE0000AD
      DE0000ADDE0000B5E70000B5E7000094C60000C6EF0000CEFF0000B5EF0000A5
      CE0010F7FF0029C6DE0000000000000000000000000000000000000000000000
      00000000000000000000E7E7EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7
      E700DEE7E700DEE7E700DEE7E700DEE7E700EFEFF700D6D6DE004A4A5200B5B5
      B500FFFFFF00F7F7FF005A5A630010101800A5A5A500DEE7E700DEE7E700DEE7
      E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700CECE
      D600F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5FF00F7F7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525252001010100008080800080808000000000008080800080808000808
      0800080808000808080021212100101010002929290052525200949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6EFEF0031A5C60010A5C60000A5D60000ADD60000ADDE0000ADDE0000A5
      D600009CCE00007BA500008CB50000C6E7000084BD00005A8C00006B9C0000AD
      DE006BB5CE00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700E7EFEF00E7EFEF00E7EFEF00E7EFEF00E7EF
      EF00E7EFEF00E7EFEF00E7EFEF00E7EFEF00EFEFF700F7F7FF00ADB5B5001018
      18006B6B6B0084848C00080808006B6B7300DEE7E700E7EFEF00E7EFEF00E7EF
      EF00E7EFEF00E7EFEF00E7EFEF00E7EFEF00E7EFEF00E7EFEF00EFEFEF00D6D6
      DE00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADFF00F7F7
      F700F7F7F700FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7006B6B6B0029292900181818000808080029292900212121001010
      100021212100424242001818180010101000ADADAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5DEE70029A5C60000A5CE0000A5CE0000A5CE000094BD000084
      AD00007BA50000A5CE0000B5D6000084B50000527B0000739C0000BDDE006BB5
      CE00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700EFEFF700EFEFF700EFEFF700EFEFF700EFEF
      F700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700F7F7FF00EFF7F7003139
      390008101000080810006B6B6B00D6D6DE00F7FFFF00EFEFF700EFEFF700EFEF
      F700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFF7F700D6DE
      DE00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFFF00C6C6
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00ADADAD00737373002121210018181800212121002929
      290031313100393939005252520039393900EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5D6DE00008CB500008CB5000084AD000084AD00008C
      B5000894BD000084A500005A8400004A73000084B50008BDE700189CBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7FFFF00F7F7F700EFF7F700EFF7F700EFF7F700EFF7
      F700EFF7F700EFF7F700EFF7F700EFF7F700EFF7F700EFF7F700F7FFFF00CECE
      D6009C9CA50094949400E7E7EF00FFFFFF00F7F7FF00EFF7F700EFF7F700EFF7
      F700EFF7F700EFF7F700EFF7F700EFF7F700EFF7F700EFF7F700F7F7F700D6DE
      DE00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      FF00E7E7FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00CECECE009494
      9400737373006B6B6B008C8C8C00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7FFFF00C6E7EF004AA5BD00006B94000063
      8C0000638C000884AD0031ADCE0073DEF700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00F7FFFF00F7F7FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7FF00FFFFFF00FFFFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00E7EF
      EF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5DEEF0094D6
      E70094D6E700D6FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F7FFFF00F7FF
      FF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F7F7F700E7DEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00EFEFEF00F7F7F700FFFFFF00000000000000
      00000000000000000000F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFF
      FF0000000000000000000000000000000000FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00000000000000
      00000000000000000000FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFF000000000000000000000000000000
      0000FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF00000000000000000000000000CECECE00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500CECECE000000000000000000CECECE00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE000000
      000000000000CECECE00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE000000000000000000CECE
      CE00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500CECECE0000000000F7F7F700C6C6C600E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600B5B5B500F7F7F700F7F7F700C6C6C600E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600B5B5B500F7F7
      F700F7F7F700C6C6C600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600B5B5B500F7F7F700F7F7F700C6C6
      C600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600B5B5B500F7F7F700F7F7F700D6D6D600E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600BDBDBD00F7F7F700F7F7F700D6D6D600E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600BDBDBD00F7F7
      F700F7F7F700D6D6D600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600BDBDBD00F7F7F700F7F7F700D6D6
      D600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600BDBDBD00F7F7F700F7F7F700D6D6D600E7E7E700E7E7
      E700DEDEDE00DEDEDE00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00C6C6C600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00D6D6D600D6D6D600CECECE00D6D6D600CECECE00CECECE00C6C6
      C600BDBDBD00F7F7F700F7F7F700D6D6D600E7E7E700E7E7E700DEDEDE00DEDE
      DE00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6C600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00D6D6
      D600D6D6D600CECECE00D6D6D600CECECE00CECECE00C6C6C600BDBDBD00F7F7
      F700F7F7F700D6D6D600E7E7E700E7E7E700CECECE00BDBDBD00C6C6C600B5B5
      B500ADADAD00C6C6C600B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500CECE
      CE00B5B5B500BDBDBD00B5B5B500BDBDBD00B5B5B500D6D6D600A5A5A500BDBD
      BD00ADADAD00C6C6C600CECECE00C6C6C600BDBDBD00F7F7F700F7F7F700D6D6
      D600E7E7E700E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600CECECE00C6C6C600BDBDBD00F7F7F700F7F7F700DEDEDE00E7E7E700E7E7
      E700DEDEDE00DEDEDE00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6
      C600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECE
      CE00C6C6C600F7F7F700F7F7F700DEDEDE00E7E7E700E7E7E700DEDEDE00DEDE
      DE00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6C600DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00C6C6C600F7F7
      F700F7F7F700DEDEDE00E7E7E700E7E7E700B5B5B500C6C6C600CECECE00B5B5
      B500C6C6C600B5B5B500CECECE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6
      C600ADADAD00C6C6C600B5B5B500B5B5B500BDBDBD00C6C6C600B5B5B500B5B5
      B500B5B5B500ADADAD00D6D6D600CECECE00C6C6C600F7F7F700F7F7F700DEDE
      DE00E7E7E700E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600CECECE00CECECE00C6C6C600F7F7F700F7F7F700DEDEDE00EFEFEF00EFEF
      EF00E7E7E700E7E7E700A5A5A500B5B5B50094949400BDBDBD00B5B5B500BDBD
      BD00BDBDBD009C9C9C00ADADAD00B5B5B500B5B5B500B5B5B500B5B5B500ADAD
      AD00B5B5B50094949400B5B5B500B5B5B500B5B5B50094949400CECECE00CECE
      CE00C6C6C600F7F7F700F7F7F700DEDEDE00EFEFEF00EFEFEF00E7E7E700E7E7
      E700A5A5A500B5B5B50094949400BDBDBD00B5B5B500BDBDBD00BDBDBD009C9C
      9C00ADADAD00B5B5B500B5B5B500B5B5B500B5B5B500ADADAD00B5B5B5009494
      9400B5B5B500B5B5B500B5B5B50094949400CECECE00CECECE00C6C6C600F7F7
      F700F7F7F700DEDEDE00EFEFEF00EFEFEF00A5A5A5009C9C9C00B5B5B500ADAD
      AD00A5A5A500B5B5B500ADADAD009C9C9C00A5A5A5008C8C8C00CECECE00E7E7
      E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600CECECE00C6C6C600F7F7F700F7F7F700DEDE
      DE00EFEFEF00E7E7E700D6D6D600D6D6D600D6D6D600CECED600CED6D600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00C6C6C600F7F7F700F7F7F700DEDEDE00EFEFEF00EFEF
      EF00E7E7E700EFEFEF00B5B5B500BDBDBD00B5B5B500D6D6D600C6C6C600B5B5
      B500CECECE00B5B5B500A5A5A500ADADAD00ADADAD009C9C9C00BDBDBD00BDBD
      BD00BDBDBD00B5B5B500CECECE00CECECE00CECECE00B5B5B500C6C6C600D6D6
      D600C6C6C600F7F7F700F7F7F700DEDEDE00EFEFEF00EFEFEF00E7E7E700EFEF
      EF00B5B5B500BDBDBD00B5B5B500D6D6D600C6C6C600B5B5B500CECECE00B5B5
      B500A5A5A500ADADAD00ADADAD009C9C9C00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500CECECE00CECECE00CECECE00B5B5B500C6C6C600D6D6D600C6C6C600F7F7
      F700F7F7F700DEDEDE00EFEFEF00EFEFEF00CECECE00BDBDBD00CECECE00C6C6
      C600BDBDBD00C6C6C600BDBDBD00C6C6C600CECECE00B5B5B500B5B5B500CECE
      CE00BDBDBD00BDBDBD00CECECE00C6C6C600CECECE00BDBDBD00BDBDBD00B5B5
      B500BDBDBD00B5B5B500DEDEDE00D6D6D600C6C6C600F7F7F700F7F7F700DEDE
      DE00EFEFEF00E7E7E700D6D6D600D6CEC600D6C6C600CEBDB500CEBDAD00CEBD
      B500CEBDB500CEC6BD00CEBDB500CEBDB500CEBDB500CEBDAD00CEBDB500CEBD
      B500CEB5AD00CEBDB500CEBDB500CEBDBD00CEBDB500CEBDB500CEBDB500CEBD
      BD00D6D6CE00D6D6D600C6C6C600F7F7F700F7F7F700E7E7E700F7F7F700F7F7
      F700F7F7F700F7F7F700BDBDBD00DEDEDE00BDBDBD00CECECE00ADADAD00B5B5
      B500C6C6C600E7E7E700C6C6C600DEDEDE00EFEFEF0063636300DEDEDE00C6C6
      C600DEDEDE00D6D6D600D6D6D600DEDEDE00EFEFEF00DEDEDE00D6D6D600DEDE
      DE00CECECE00F7F7F700F7F7F700E7E7E700F7F7F700F7F7F700F7F7F700F7F7
      F700BDBDBD00DEDEDE00BDBDBD00CECECE00ADADAD00ADADAD00A5A5A500B5B5
      B50094949400A5A5A500BDBDBD005A5A5A00D6D6D600C6C6C600DEDEDE00D6D6
      D600D6D6D600DEDEDE00EFEFEF00DEDEDE00D6D6D600DEDEDE00CECECE00F7F7
      F700F7F7F700E7E7E700F7F7F700F7F7F700A5A5A500B5B5B500BDBDBD00A5A5
      A500C6C6C600A5A5A500CECECE00ADADAD00A5A5A500ADADAD00ADADAD009494
      9400ADADAD00B5B5B5008C8C8C009C9C9C00C6C6C600ADADAD00ADADAD00A5A5
      A500C6C6C600EFEFEF00E7E7E700DEDEDE00CECECE00F7F7F700F7F7F700E7E7
      E700F7F7F700EFDEE700D6B5C600D6B5C600D6BDC600D6BDBD00D6B5AD00D6C6
      BD00DEC6C600DECEB500A5947B00A5948400A59C8C00A59C8C00A59C8C00A59C
      8C00A59C8C00A59C9400A59C8C00A5948C00AD9C84009C949400AD948400C6A5
      A500DED6D600DEDEDE00CECECE00F7F7F700F7F7F700E7E7E700F7F7F700F7F7
      F700F7F7F700F7F7F700C6C6C600E7E7E700BDBDBD00B5B5B500A5A5A500ADAD
      AD00CECECE009C9C9C00CECECE00CECECE00CECECE0073737300CECECE00B5B5
      B500CECECE00CECECE00D6D6D600B5B5B500EFEFEF00E7E7E700D6D6D600DEDE
      DE00CECECE00F7F7F700F7F7F700E7E7E700F7F7F700F7F7F700F7F7F700F7F7
      F700C6C6C600E7E7E700BDBDBD00ADADAD00949494007B7B7B00A5A5A5006B6B
      6B007B7B7B007BD6CE008CBDBD00635A5A00A59C9C00A5A5A500CECECE00CECE
      CE00D6D6D600B5B5B500EFEFEF00E7E7E700D6D6D600DEDEDE00CECECE00F7F7
      F700F7F7F700E7E7E700F7F7F700F7F7F700D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00D6D6D600C6C6C600D6D6D600DEDEDE00D6D6D600DEDEDE00C6C6
      C600C6C6C600CECECE00B5B5B500BDBDBD00D6D6D600C6C6C600CECECE00CECE
      CE00C6C6C600DEDEDE00E7E7E700DEDEDE00CECECE00F7F7F700F7F7F700E7E7
      E700F7F7F700EFE7E700D6C6B500DEC6B500D6BDAD00F7EFE700F7F7F700F7F7
      F700F7F7F700F7EFD600A5A5A5008C8C94008C9494008C9494008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C94008C8C8C008C8C8C008C8C8C00BDB5AD00D6B5
      9400DED6D600DEDEDE00CECECE00F7F7F700F7F7F700E7E7E700F7F7F700F7F7
      F700F7F7F700FFFFFF00C6C6C600E7E7E700DEDEDE00D6D6D600C6C6C600ADAD
      AD00CECECE00A5A5A500FFFFFF00F7F7F700D6D6D60073737300E7E7E700C6C6
      C600F7F7F700EFEFEF00DEDEDE00BDBDBD00F7F7F700E7E7E700D6D6D600E7E7
      E700D6D6D600F7F7F700F7F7F700E7E7E700F7F7F700F7F7F700F7F7F700FFFF
      FF00C6C6C600E7E7E700DEDEDE00BDBDBD00949494007B7B7B00424242002929
      2900424A4A0042FFFF0039F7EF0029CECE00ADDED6009C949400E7E7E700EFEF
      EF00DEDEDE00BDBDBD00F7F7F700E7E7E700D6D6D600E7E7E700D6D6D600F7F7
      F700F7F7F700E7E7E700F7F7F700F7F7F700DEDEDE00D6D6D600D6D6D600D6D6
      D600DEDEDE00E7E7E700DEDEDE00D6D6D600D6D6D600E7E7E700E7E7E700DEDE
      DE00D6D6D600CECECE00D6D6D600D6D6D600CECECE00D6D6D600D6D6D600CECE
      CE00CECECE00DEDEDE00E7E7E700DEDEDE00D6D6D600F7F7F700F7F7F700E7E7
      E700F7F7F700F7EFEF00E7DEDE00E7DEDE00E7DEDE00EFEFEF00F7F7F700F7F7
      F700F7F7F700F7EFDE00C6C6C600949494009494940094949400949494009494
      9400949494009494940094949400949494008C8C8C00A5A5A500DED6D600DECE
      BD00E7DEDE00DEE7E700D6D6D600F7F7F700F7F7F700E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600E7E7E700FFFFFF00E7E7E700BDBDBD009C9C
      9C00CECECE00A5A5A500FFFFFF00FFFFFF00C6C6C6005A5A5A00D6D6D600BDBD
      BD00DEDEDE00D6D6D600ADADAD00C6C6C600F7F7F700EFEFEF00C6C6C600E7E7
      E700D6D6D600F7F7F700F7F7F700E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600E7E7E700EFEFEF00ADADAD008C8C8C0021212100393939003131
      31004A4A4A004AFFFF0039EFE70018CECE0039F7EF008CBDBD00BDB5B500CECE
      CE00ADADAD00C6C6C600F7F7F700EFEFEF00C6C6C600E7E7E700D6D6D600F7F7
      F700F7F7F700E7E7E700FFFFFF00FFFFFF00C6C6C600B5B5B500CECECE009C9C
      9C00A5A5A500D6D6D600ADADAD00ADADAD00C6C6C6009C9C9C00ADADAD00A5A5
      A500A5A5A500C6C6C600C6C6C600ADADAD00A5A5A500D6D6D600F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00E7E7E700D6D6D600F7F7F700F7F7F700E7E7
      E700FFFFFF00F7F7F700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700FFFF
      FF00FFFFFF00F7F7EF00E7E7E700949494009494940094949400949494009494
      94009494940094949400949494009494940094949400DEDEDE00E7E7E700DEDE
      D600E7E7E700E7E7E700D6D6D600F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00EFEFEF00D6D6D600FFFFFF00CECECE00ADAD
      AD00FFFFFF00E7E7E700FFFFFF00FFFFFF00B5B5B5006B6B6B00EFEFEF00DEDE
      DE00DEDEDE00DEDEDE00CECECE00C6C6C600FFFFFF00F7F7F700E7E7E700E7E7
      E700D6D6D600F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE00EFEFEF00BDBDBD00CECECE0039393900313131004A4A4A004242
      42004A4A4A004AFFFF0031EFE70021D6CE0042FFF70042FFF700BDC6C600CECE
      CE00CECECE00C6C6C600FFFFFF00F7F7F700E7E7E700E7E7E700D6D6D600F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00D6D6D600C6C6C600C6C6C600B5B5
      B500C6C6C600BDBDBD00C6C6C600F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700EFEFEF00E7E7E700D6D6D600F7F7F700F7F7F700EFEF
      EF00FFFFFF00F7F7F700EFEFEF00EFEFEF00E7EFEF00EFEFEF00E7E7E700FFFF
      FF00FFFFFF00F7F7EF00FFFFFF009C9C9C009494940094949400949494009494
      940094949400949494009494940094949400C6C6C600E7E7E700E7E7E700E7DE
      D600E7E7EF00E7E7E700D6D6D600F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00BDBDBD00D6D6D600FFFFFF00C6C6C600ADAD
      AD00FFFFFF00FFFFFF00B5B5B500CECECE00D6D6D6007B7B7B00CECECE00BDBD
      BD00DEDEDE00C6C6C600CECECE00CECECE00FFFFFF00FFFFFF00E7E7E700EFEF
      EF00DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE00BDBDBD00ADADAD009494940031313100313131004A4A4A004A4A
      4A003139390039FFF70039F7EF0021D6D60039EFEF0031EFE70094E7DE00ADAD
      AD00CECECE00CECECE00FFFFFF00FFFFFF00E7E7E700EFEFEF00DEDEDE00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00DEDEDE00DEDEDE00D6D6D600DEDE
      DE00CECECE00D6D6D600CECECE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00DEDEDE00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F700FFFFFF00FFF7EF00FFFFFF00BDBDBD0094949400949494009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0094949400EFEFEF00E7E7E700E7E7EF00E7DE
      CE00EFEFEF00EFEFEF00DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEDEDE00CECECE00F7F7F700FFFFFF00EFEFEF00DEDE
      DE00FFFFFF00FFFFFF00BDBDBD00BDBDBD00B5B5B5007B7B7B00EFEFEF00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00F7F7F700EFEF
      EF00DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00C6C6C600CECECE0063636B003942420039394200424A4A00424A
      4A003131390031F7EF0029EFE70018DED60039FFF70039FFF7007BFFFF00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00DEDEDE00F7F7F700EFEFEF00DEDEDE00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00DEDEDE00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7
      E700FFFFFF00FFF7E700FFFFF700DEDEDE00949494009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0094949400EFEFEF00EFEFEF00EFEFEF00EFE7
      CE00EFEFEF00EFEFEF00DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00EFEFEF00D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00FFFFFF00EFEFEF00C6C6C600BDBDBD0094949400CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6D600F7F7F700EFEF
      EF00DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00EFEFEF00EFEF
      EF00D6D6D600FFFFFF00DEDEE700C6A56300B59C4A00BD9C5200B5944A00BD9C
      4A00B5944A00A584F700A584E7009473DE00AD84EF00AD84EF00B59CE700B5BD
      B500CECECE00CECECE00CECECE00D6D6D600F7F7F700EFEFEF00DEDEDE00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00DEDEDE00EFEFEF00D6D6D600EFEF
      EF00E7E7E700EFEFEF00E7E7E700D6D6D600E7E7E700D6D6D600E7E7E700D6D6
      D600E7E7E700DEDEDE00DEDEDE00D6D6D600E7E7E700D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00DEDEDE00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00EFEFEF00FFF7EF00FFFFF700FFFFFF009C9C9C009C9C9C009C9C9C009C9C
      9C00949494009484840094949400BDBDBD00E7E7E700EFEFEF00EFEFEF00EFE7
      DE00EFEFEF00EFEFEF00DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEDEDE00EFEFEF00EFEFEF00F7F7F700FFFFFF00F7F7
      F700DEDEDE00FFFFFF00EFEFEF00EFEFEF00F7F7F700D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00BDBDBD00D6D6D600D6D6D600EFEFEF00FFFFFF00F7F7
      F700DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00E7E7E700C6CECE00FFD66B00FFD64A00FFCE4200F7C64200FFD6
      4A00FFCE4A00FF39FF00FF42FF00F739F700F739EF00F731EF00EF73EF00BDBD
      BD00BDBDBD00D6D6D600D6D6D600EFEFEF00FFFFFF00F7F7F700DEDEDE00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00EFEFEF00F7F7F700EFEFEF00E7E7
      E700EFEFEF00F7F7F700DEDEDE00EFEFEF00E7E7E700EFEFEF00E7E7E700EFEF
      EF00EFEFEF00EFEFEF00DEDEDE00DEDEDE00E7E7E700DEDEDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700DEDEDE00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700EFE7E700DEBD
      BD00F7F7F700F7F7EF00FFFFFF00FFFFFF00C6C6C600B5B5B500B5B5B500B5B5
      B500ADA5A500B5949400B5B5B500E7DEE700DED6D600EFF7F700EFEFEF00EFEF
      E700F7F7F700F7F7F700DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700FFFFFF00F7F7F700FFFFFF00FFFFFF00F7F7
      F700DEDEDE00E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00DEDEE700F7DEA500FFCE4200FFCE4A00F7C64200F7C6
      4200FFCE4A00FF42FF00FF4AFF00FF4AFF00FF4AFF00FF42FF00F7C6F700E7EF
      E700C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7E700F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00E7E7E700D6D6D600E7E7E700CECE
      CE00CECECE00D6D6D600CECECE00DEDEDE00C6C6C600CECECE00DEDEDE00DEDE
      DE00D6D6D600C6C6C600DEDEDE00D6D6D600C6C6C600C6C6C600BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7E700F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7EFEF00FFFFF700FFFFFF00DEDEDE00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00B5B5B500E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      E700F7F7F700F7F7F700E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700FFFFFF00EFEFEF00FFFFFF00FFFFFF00F7F7
      F700E7E7E700C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00E7E7E700EFEFEF00FFD65A00FFCE4200F7C64200EFBD
      3900FFCE4A00FF42FF00FF4AFF00FF4AFF00FF4AFF00FF6BFF00EFF7EF00F7F7
      F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00EFEFEF00F7F7F700EFEFEF00F7F7
      F700EFEFEF00F7F7F700EFEFEF00EFEFEF00E7E7E700F7F7F700EFEFEF00EFEF
      EF00E7E7E700EFEFEF00E7E7E700DEDEDE00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7EFEF00FFFFFF00F7F7F700BDBDBD00C6C6C600BDBD
      BD00BDBDBD00CECECE00F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7EF
      DE00F7F7F700FFFFFF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00E7E7E700D6D6D600F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00DEDEDE00EFEFEF00EFEFEF00F7F7F700FFFFFF00FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700FFFFFF00F7F7F700EFE7D600F7CE4A00F7C63900F7C6
      3900FFCE4A00FF42FF00FF42F700FF42FF00FF52F700E7DEE700E7E7E700EFEF
      EF00DEDEDE00EFEFEF00EFEFEF00F7F7F700FFFFFF00FFFFFF00E7E7E700F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700FFFF
      FF00EFEFEF00F7F7F700EFEFEF00F7F7F700E7E7E700FFFFFF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700EFEFEF00E7E7E700F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7EFE700F7F7F700FFFFFF00CECECE00C6C6C600C6C6
      C600C6C6C600F7F7F700F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7EF
      DE00FFFFFF00FFFFFF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700FFFFFF00F7F7F700E7E7E700F7F7F700F7F7
      F700F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700EFEFEF00F7F7F700F7F7F700E7E7E700EFEFEF00F7F7F700FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00F7F7F700E7E7E700E7E7EF00E7E7E700FFDE8C00FFCE
      4A00FFC64200FF31FF00F74AF700EF94EF00DEDEDE00DEDEDE00E7E7E700EFEF
      EF00F7F7F700F7F7F700E7E7E700EFEFEF00F7F7F700FFFFFF00E7E7E700F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00E7E7E700EFEFEF00E7E7E700DEDE
      DE00DEDEDE00EFEFEF00DEDEDE00E7E7E700DEDEDE00EFEFEF00DEDEDE00D6D6
      D600DEDEDE00EFEFEF00D6D6D600DEDEDE00D6D6D600D6D6D600E7E7E700DEDE
      DE00D6D6D600F7F7F700FFFFFF00FFFFFF00E7E7E700F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7EF00F7F7F700FFFFFF00E7E7E700CECECE00CECE
      CE00E7E7E700F7F7F700F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7EF
      E700FFFFFF00FFFFFF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700E7E7E700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00FFFFFF00FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF00F7F7F700E7E7E700F7F7F700EFEFEF00E7E7EF00E7EF
      EF00EFE7DE00EFE7EF00E7F7EF00EFEFEF00EFEFEF00F7F7F700EFEFEF00E7E7
      E700E7E7E700E7E7E700E7E7E700DEDEDE00FFFFFF00FFFFFF00E7E7E700F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00EFEFEF00F7F7F700EFEFEF00EFEFEF00EFEFEF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFF
      FF00FFFFFF00FFF7FF00F7F7EF00F7F7F700F7F7F700F7F7F700D6D6D600DEDE
      DE00FFFFFF00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      EF00FFFFFF00FFFFFF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00F7F7F700F7F7F700FFFFFF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700F7F7
      F700FFFFFF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00EFEFEF00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700FFFFFF00F7F7F700F7F7F700F7F7F700FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFFFF00DEDEDE00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      EF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFFFF00F7F7F700F7F7F700F7F7
      F700FFFFFF00F7F7F700F7F7F700FFFFFF00F7F7F700F7F7F700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFF
      F700FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00FFFFFF00FFFFFF00F7FF
      FF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700FFFFFF00F7F7F700F7F7F700FFFFFF00EFEFEF00F7F7F700FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700FFFF
      FF00F7F7F700F7F7F700FFFFFF00EFEFEF00F7F7F700FFFFFF00EFEFEF00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFFFF00FFFFFF00F7F7F700F7F7
      F700FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700FFFFFF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700F7F7F700FFFFFF00FFFFFF00EFEFEF00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7
      F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7F700F7F7F700EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00F7F7F70000000000D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D6000000000000000000D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D6000000
      000000000000D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D6000000000000000000D6D6
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D6D6D600000000000000000000000000F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F70000000000000000000000000000000000F7F7F700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700000000000000
      00000000000000000000F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F7F7F7000000000000000000000000000000
      0000F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00F7F7F70000000000000000000000000000000000FFFFFF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFF
      FF0000000000000000000000000000000000FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500CECECE000000000000000000CECECE00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00CECECE0094949400CECECE00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700C6C6C600E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600B5B5B500F7F7F700F7F7F700C6C6C600E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600B5B5B500F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F7009C9C9C00FFFFFF009C9C9C0094949400E7E7
      E700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700848C8C009C9C9C00E7E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600BDBDBD00F7F7F700F7F7F700D6D6D600E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600BDBDBD00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D6D600CECECE00F7F7F700F7F7F7009C9C9C008484
      8400BDBDBD00F7F7F70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E7008C9CA50063849C003984A500316373005A63630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700D6D6D600E7E7E700C6C6
      C600393939004242420042424200424242004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004242420042424200393939003939390031313100B5B5B500CECE
      CE00BDBDBD00F7F7F700F7F7F700D6D6D600E7E7E700CECECE00525252006363
      63006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B007373
      7300737373007373730073737300737373006363630063636300636363006363
      630063636300636363005A5A5A004A4A4A00B5B5B500CECECE00BDBDBD00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0094949400EFEFEF00F7F7F700F7F7F700FFFFFF00ADAD
      AD009C9C9C0094949400DEDEDE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008CBD
      D600529CBD0052ADD6004294B5004294BD00397B9400B5B5B500FFFFFF000000
      00000000000000000000000000000000000000000000EFEFEF00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00EFEFEF00ADAD
      AD00212121002929290029292900313131003131310039393900393939003939
      3900393939003939390039393900393939003939390039393900393939003939
      39003939390031313100313131002929290029292900212121009C9C9C00CECE
      CE00C6C6C600F7F7F700F7F7F700DEDEDE00EFEFEF00B5B5B500313131004242
      420052525200525252004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A006B6B
      6B006B6B6B006363630063636300636363004242420042424200424242004242
      42004A4A4A004A4A4A0039393900292929009C9C9C00CECECE00C6C6C600F7F7
      F700000000000000000000000000FFFFFF00EFEFEF00EFEFEF00EFEFEF00DEDE
      DE00DEDEDE00BDBDBD0094949400BDBDBD00C6C6C600CECECE00CECECE00D6D6
      D6009C9C9C008C8C8C008C8C8C009C9C9C00CECECE00DEDEDE00EFEFEF00EFEF
      EF00000000000000000000000000000000000000000000000000000000005AA5
      C6005AA5BD0052849C004294BD00429CBD004A9CBD00E7EFF700000000000000
      000000000000F7F7F700C6C6C6007B73730052525200524A4A005A5A5A00F7F7
      F70000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00EFEFEF00B5B5
      B500292929003131310031313100393939003939390042424200424242004242
      42004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00424242004242
      4200424242003939390031313100313131003131310021212100A5A5A500D6D6
      D600C6C6C600F7F7F700F7F7F700DEDEDE00EFEFEF00CECECE00BDBDBD00F7F7
      F700CECECE00ADADAD00FFFFFF00DEDEDE009494940052525200424242006363
      63007373730073737300636363006B6B6B004A4A4A006B6B6B00CECECE00F7F7
      F70084848400BDBDBD00FFFFFF00CECECE00C6C6C600CECECE00C6C6C600F7F7
      F7000000000000000000000000009C9C9C00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00C6C6C600BDBDBD00BDBDBD00E7E7E700EFEF
      EF00CECECE00000000000000000000000000000000000000000000000000639C
      AD004A94B500316B84004A9CBD00A5CEDE00EFF7FF0000000000000000000000
      0000ADADAD00848484006B6363003939390029212100211821005A525200EFEF
      EF00E7E7E7007B73730073737300949C9C00FFFFFF0000000000000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00EFEFEF00B5B5
      B500292929003131310039393900424242004A4A4A004A4A4A00424242004A4A
      4A004A4A4A005A5A5A00525252005252520052525200525252004A4A4A004A4A
      4A004A4A4A004242420039393900393939003131310029292900A5A5A500D6D6
      D600C6C6C600F7F7F700F7F7F700DEDEDE00EFEFEF00DEDEDE00E7E7E700FFFF
      FF00CECECE00A5A5A500FFFFFF00E7E7E700ADADAD006363630084848400FFFF
      FF00EFEFEF00B5B5B50084848400B5B5B5008C8C8C009C9C9C00F7F7F700FFFF
      FF007B7B7B00B5B5B500FFFFFF00DEDEDE00CECECE00D6D6D600C6C6C600F7F7
      F7000000000000000000EFEFEF00FFFFFF00EFEFEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7DE
      D600EFEFEF00EFEFEF00E7DEDE00DED6CE00E7DEDE00F7F7F700ADADAD00DEDE
      DE00DEDEDE00000000000000000000000000000000000000000000000000398C
      A5001052730029638400D6E7E7000000000000000000F7F7F700C6C6C6009C9C
      9400635A5A004A4A420029292100313131003931390039393900635A6300ADAD
      AD004A4242001810100010101000181818007B7B7B00BDBDBD00EFEFEF000000
      000000000000000000000000000000000000F7F7F700E7E7E700F7F7F700BDBD
      BD00313131003939390042424200848484006B6B6B004A4A4A00B5B5B500B5B5
      B50063636300D6D6D600848484005A5A5A00CECECE007B7B7B005A5A5A005A5A
      5A005A5A5A00525252004A4A4A00424242003939390031313100ADADAD00DEDE
      DE00CECECE00F7F7F700F7F7F700E7E7E700F7F7F700CECECE008C8C8C00B5B5
      B500A5A5A50094949400C6C6C600ADADAD007B7B7B0052525200A5A5A500E7E7
      E700D6D6D600BDBDBD00ADADAD00BDBDBD00949494005A5A5A009C9C9C00B5B5
      B5007B7B7B009C9C9C00C6C6C600A5A5A500C6C6C600DEDEDE00CECECE00F7F7
      F7000000000000000000F7F7F700F7F7F700E7E7E700DEE7E700D6D6E700C6CE
      CE00C6CECE00D6D6D600F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      E700DECEC600DED6CE00EFEFEF00DED6C600EFEFEF00F7F7F700EFEFEF00D6D6
      D600B5B5B500E7E7E700FFFFFF00000000000000000000000000D6E7EF008CAD
      BD0073ADC6003984AD00FFFFFF0000000000DEDEDE004A424200313129002121
      1800424242004242420039393900313131002929290010080800525252002118
      1800292929002929290031313900313131001010100008080800080808004242
      42007B7B7B00BDBDBD000000000000000000F7F7F700E7E7E700F7F7F700BDBD
      BD0039393900424242004A4A4A0084848400DEDEDE0094949400C6C6C600DEDE
      DE00DEDEDE00D6D6D600BDBDBD00C6C6C600CECECE0063636300525252005A5A
      5A005A5A5A005A5A5A004A4A4A00424242004242420031313100ADADAD00DEDE
      DE00CECECE00F7F7F700F7F7F700E7E7E700F7F7F700DEDEDE00E7E7E700FFFF
      FF00CECECE00A5A5A500FFFFFF00E7E7E700ADADAD0063636300636363007B7B
      7B008C8C8C008C8C8C00848484008C8C8C00737373009C9C9C00F7F7F700FFFF
      FF007B7B7B00B5B5B500FFFFFF00DEDEDE00D6D6D600DEDEDE00CECECE00F7F7
      F7000000000000000000F7F7F700FFFFFF00A5ADB500949CB500949CD6002131
      3900394A52007B8C8C00F7F7F700F7F7F700F7F7F700F7F7F700F7EFEF00F7F7
      EF00E7E7DE00E7DED600E7DEDE00E7DEDE00F7EFF700F7F7F700EFEFEF00CECE
      CE00EFEFEF00C6C6C600BDBDBD00F7F7F700000000000000000000000000638C
      9C003984A5007BB5CE00F7F7F70000000000F7F7F70029292100424239004A4A
      4200393939003131310021212100000000001010100008080800000000002121
      2100423939001018180018212100181818003131310031313100212118000808
      00000810080029312900BDBDBD0000000000F7F7F700E7E7E700FFFFFF00BDBD
      BD0039393900424242005252520052525200C6C6C600E7E7E700DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00B5B5B50073737300B5B5B5009494
      9400636363005A5A5A00525252004A4A4A004242420039393900B5B5B500E7E7
      E700D6D6D600F7F7F700F7F7F700E7E7E700FFFFFF00DEDEDE00DEDEDE00EFEF
      EF00C6C6C600B5B5B500E7E7E700DEDEDE00ADADAD006363630094949400FFFF
      FF00EFEFEF00B5B5B5007B7B7B00ADADAD00949494009C9C9C00E7E7E700EFEF
      EF00A5A5A500BDBDBD00E7E7E700D6D6D600D6D6D600E7E7E700D6D6D600F7F7
      F7000000000000000000F7F7F700FFFFFF00949CB5009CADDE00ADBDD6007B8C
      A50039425200848C9400FFFFFF00DEDEDE00E7E7E700E7E7E700D6D6D600D6CE
      CE00E7E7E700E7E7E700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700CECE
      CE00CECECE00F7F7F700FFFFFF00A5A5A500E7E7E700FFFFFF0000000000BDC6
      C60063ADCE005A9CB500EFEFEF0000000000000000005A635A00525252004A4A
      4200313131002121210031313100393939000808080000080800101818001821
      2100211818002121180008080800000000000808080018181800293129002929
      290018181000000000004A4A4200D6D6D600F7F7F700E7E7E700FFFFFF00C6C6
      C600393939004A4A4A009C9C9C00BDBDBD00DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600CECECE00E7E7E700E7E7E700E7E7E700EFEFEF00CECECE007373
      73006B6B6B00636363005A5A5A00525252004A4A4A0039393900B5B5B500E7E7
      E700D6D6D600F7F7F700F7F7F700E7E7E700FFFFFF00D6D6D6006B6B6B007B7B
      7B008C8C8C008C8C8C008C8C8C007B7B7B0073737300737373009C9C9C00FFFF
      FF00EFEFEF00ADADAD007B7B7B00ADADAD009C9C9C0073737300737373007B7B
      7B00848484008C8C8C008C8C8C0073737300C6C6C600E7E7E700D6D6D600F7F7
      F7000000000000000000F7F7F700FFFFFF005A6B84009CB5D600A5BDD600ADB5
      DE006B849C0084848C00FFFFFF00BDBDBD00C6C6C600BDBDBD00C6C6C600BDBD
      BD00BDBDBD00DEDEDE00CECECE00F7F7F700F7F7F700F7F7F700F7F7F700D6D6
      D600D6D6D600BDBDBD00DEDEDE00FFFFFF00DEDEDE00EFEFEF0000000000529C
      BD005A9CB5003994B500D6D6D60000000000F7F7F700FFFFFF00000000000000
      000052524A003939310008080800212121001818180010101000000000000000
      0000000000000000000010293100215A73000810180008080800100808004239
      39000808080039424200000000007B7B7B00F7F7F700EFEFEF00FFFFFF00CECE
      CE00424242004A4A4A0052525200E7E7E700E7E7E700EFEFEF00B5B5B5007B7B
      7B007B7B7B0084848400A5A5A500E7E7E700E7E7E700E7E7E7006B6B6B005A5A
      5A00636363006B6B6B005A5A5A00525252004A4A4A0039393900B5B5B500EFEF
      EF00D6D6D600F7F7F700F7F7F700EFEFEF00FFFFFF00DEDEDE00DEDEDE00FFFF
      FF00CECECE00A5A5A500FFFFFF00E7E7E700A5A5A50052525200B5B5B500E7E7
      E700CECECE00BDBDBD00ADADAD00BDBDBD00ADADAD007B7B7B00EFEFEF00FFFF
      FF0084848400B5B5B500FFFFFF00DEDEDE00D6D6D600E7E7E700D6D6D600F7F7
      F7000000000000000000F7F7F700FFFFFF0042526300A5BDD600A5B5D600BDCE
      E700ADBDD600A5ADB500FFFFFF00D6D6D600D6D6D600CECECE00DEDEDE00E7E7
      E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00F7F7F700F7F7F700CECE
      CE00D6D6D600D6D6D600ADADAD00CECECE00D6D6D600000000000000000052A5
      C6005294AD004294BD00C6C6C600000000000000000000000000000000000000
      0000424242004A4A4200313129008C8C8C008C8484005A5A5A00000000001010
      0800080808001008080018293100429CC6004294B50031739400214A5A001818
      1000181818003131290008080800BDBDBD00F7F7F700EFEFEF00FFFFFF00D6D6
      D600737373006B6B6B006B6B6B00EFEFEF00EFEFEF00D6D6D600737373007B7B
      7B007B7B7B008484840084848400BDBDBD00EFEFEF00EFEFEF00E7E7E700E7E7
      E700ADADAD006B6B6B005A5A5A00525252004A4A4A0042424200BDBDBD00EFEF
      EF00DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00EFEFEF00EFEFEF00FFFF
      FF00CECECE00A5A5A500FFFFFF00E7E7E700ADADAD0063636300525252006B6B
      6B007B7B7B00848484007B7B7B0084848400636363009C9C9C00F7F7F700FFFF
      FF0084848400B5B5B500FFFFFF00DEDEDE00DEDEDE00EFEFEF00DEDEDE00F7F7
      F7000000000000000000F7F7F700FFFFFF0063738C00BDCEEF00A5B5D600A5B5
      D6009CA5C6009C9CAD00FFFFFF00BDBDBD00C6C6C600BDBDBD00CECECE00C6C6
      C600CECECE00CECECE00BDBDBD00D6D6D600C6C6C600F7F7F700F7F7F700CECE
      CE00CECECE00B5B5B500B5B5B5008C8C9400B5B5B500000000000000000052AD
      CE005294AD004294BD00B5B5B500000000000000000000000000000000000000
      0000CECECE007B73730042393100081821004263730052525A00181810002121
      1800181010001010080008080800182931003184A500428CAD004AA5CE002952
      6B002121180039393100ADADAD0000000000F7F7F700EFEFEF00FFFFFF00D6D6
      D6007B7B7B00ADADAD00F7F7F700F7F7F700F7F7F700B5B5B500737373007B7B
      7B008484840084848400848484009C9C9C00F7F7F700F7F7F700D6D6D600A5A5
      A5007B7B7B006B6B6B00636363005A5A5A004A4A4A0042424200BDBDBD00EFEF
      EF00DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00EFEFEF00CECECE00C6C6
      C600C6C6C600BDBDBD00B5B5B500ADADAD00A5A5A5007B7B7B008C8C8C00FFFF
      FF00EFEFEF00B5B5B5007B7B7B00ADADAD009494940094949400B5B5B500ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00DEDEDE00EFEFEF00DEDEDE00F7F7
      F7000000000000000000F7F7F700FFFFFF004A526B00525A73008CA5BD00ADBD
      D600B5CEE7009C9CA500FFFFFF00DEDEDE00DEDEDE00D6D6D600D6D6D600DEDE
      DE00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700C6CE
      CE00BDBDBD00ADADAD009C9C9C0073737300F7F7F700000000000000000052B5
      DE004284AD003994B5009C9CA500000000000000000000000000000000000000
      000000000000000000007BC6DE0063ADCE006394AD0000102900183139002121
      18004A4A4A00423939001010100018211800213139004A9CC600428CAD007384
      8C009C9CA500000000000000000000000000F7F7F700EFEFEF00FFFFFF00DEDE
      DE008C8C8C009494940094949400FFFFFF00FFFFFF00D6D6D600949494009494
      9400949494008C8C8C00848484009C9C9C00FFFFFF00FFFFFF00C6C6C6006363
      63006B6B6B006B6B6B005A5A5A00525252004A4A4A0042424200BDBDBD00F7F7
      F700DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00DEDEDE00848484008484
      84007B7B7B007B7B7B0073737300737373006B6B6B0063636300BDBDBD00FFFF
      FF00EFEFEF00ADADAD007B7B7B00ADADAD00BDBDBD0039393900313131003939
      390039393900393939003939390039393900BDBDBD00F7F7F700DEDEDE00F7F7
      F7000000000000000000F7F7F700FFFFFF0052637B00293139004A526300C6D6
      F7008494AD00ADADB500FFFFFF00C6C6C600CECECE00D6D6D600CECECE00DEDE
      DE00E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700C6C6
      C600BDBDBD00A5A5A50073737300EFEFEF000000000000000000000000005AB5
      E7003984AD003984A50094949C00000000000000000000000000000000000000
      0000000000000000000094CEE7006BA5BD008CA5B50000103100103142004242
      42008484840042424200101010002121210018080800213139004AA5CE007B73
      730094949400000000000000000000000000F7F7F700EFEFEF00FFFFFF00DEDE
      DE00949494009C9C9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00A5A5A500A5A5
      A500ADADAD00A5A5A50094949400E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADADAD00848484007B7B7B007B7B7B007B7B7B006B6B6B00CECECE00F7F7
      F700DEDEDE00F7F7F700F7F7F700EFEFEF00FFFFFF00E7E7E700ADADAD00A5A5
      A5009C9C9C00949494009C9C9C00A5A5A50094949400B5B5B500E7E7E700EFEF
      EF00E7E7E700D6D6D600C6C6C600CECECE00EFEFEF00E7E7E700A5A5A5007B7B
      7B0063636300737373007B7B7B007B7B7B00D6D6D600F7F7F700DEDEDE00F7F7
      F7000000000000000000F7F7F700FFFFFF006B7B8C0029395200181821003139
      4A0039526B00BDBDC600FFFFFF00C6C6C600CECECE00C6C6C600D6D6D600CECE
      CE00CECECE00BDBDBD00D6D6D600B5B5B500DEDEDE00FFFFFF00F7F7F700BDBD
      BD00B5B5B50073737300E7E7E700000000000000000000000000000000005ABD
      EF003994BD00398CAD00848C9400000000000000000000000000000000000000
      00000000000000000000A5D6EF0052ADCE0052ADCE0008214200082131004A42
      4A008C8C8C004A4A4A001008080018211800292929001810080039525A004A5A
      5A009C949400000000000000000000000000F7F7F700EFEFEF00FFFFFF00E7E7
      E700A5A5A500A5A5A500EFEFEF00EFEFEF00FFFFFF00FFFFFF00F7F7F700BDBD
      BD00A5A5A500ADADAD00E7E7E700FFFFFF00FFFFFF00E7E7E700A5A5A500A5A5
      A500DEDEDE00BDBDBD00ADADAD00848484007B7B7B0073737300CECECE00FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00E7E7E700C6C6C600CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00B5B5B500ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500ADAD
      AD00B5B5B500C6C6C600B5B5B500A5A5A500D6D6D600FFFFFF00E7E7E700F7F7
      F7000000000000000000F7F7F700FFFFFF009CADB5008C94A5008C9CAD009CAD
      BD0094A5B500D6D6DE00FFFFFF00DEDEDE00EFEFEF00EFEFEF00E7E7E700DEDE
      DE00EFEFEF00F7F7F700E7E7E700E7E7E700EFEFEF00FFFFFF00F7F7F700BDBD
      BD0094949400D6D6D600000000000000000000000000000000000000000063C6
      E700317BA5004294B5006B848C00F7F7F7000000000000000000000000000000
      00000000000000000000EFFFFF0039ADD60039BDEF0052BDEF00102129001821
      2100181818001810100008000000212121002121210029292900313131007394
      A500BDC6CE00000000000000000000000000F7F7F700EFEFEF00FFFFFF00E7E7
      E700ADADAD00B5B5B500B5B5B500BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600E7E7
      E700FFFFFF00FFFFFF00ADADAD0084848400848484007B7B7B00D6D6D600FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00EFEFEF00C6C6C600D6D6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE009C9C9C00848484007B7B
      7B007B7B7B00737373007373730073737300737373006B6B6B006B6B6B007B7B
      7B00CECECE00C6C6C600BDBDBD00A5A5A500DEDEDE00FFFFFF00E7E7E700F7F7
      F700000000000000000000000000E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700F7F7F700FFFFFF00F7F7F700F7F7F700F7F7F700FFFF
      FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700A5A5
      A500C6C6C60000000000000000000000000000000000000000000000000063BD
      DE002173A5004294B5005A7B8C00EFEFEF000000000000000000000000000000
      000000000000000000000000000052A5CE0052CEFF0042C6EF00080810001018
      210010182900182929000008080039393900393939001818180031393100637B
      8400CECECE00000000000000000000000000F7F7F700EFEFEF00FFFFFF00E7E7
      E700BDBDBD00BDBDBD00BDBDBD00FFFFFF00F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600DEDEDE00F7F7F700FFFF
      FF00FFFFFF00E7E7E700F7F7F700C6C6C6008C8C8C0084848400D6D6D600FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00EFEFEF00CECECE00DEDE
      DE00DEDEDE00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600C6C6C600BDBDBD00B5B5B500B5B5B500B5B5B500C6C6C600D6D6D600DEDE
      DE00D6D6D600CECECE00BDBDBD00ADADAD00DEDEDE00FFFFFF00E7E7E700F7F7
      F700000000000000000000000000EFEFEF004A4A4A00DEDEDE00DEDEDE00D6D6
      D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      E700E7E7E700DEDEDE00E7E7E700E7E7E700DEE7E700DEDEDE00D6D6D600ADAD
      AD000000000000000000000000000000000000000000000000000000000073C6
      DE0073B5D6004294B50052738400E7E7E7000000000000000000000000000000
      00000000000000000000000000008C9C9C0084CEE7004AB5DE00213939001818
      21001839520018425A0000101000292929005A5A5A001010100052525200526B
      7300CECECE00000000000000000000000000F7F7F700EFEFEF00FFFFFF00EFEF
      EF00C6C6C600C6C6C600C6C6C600E7E7E700C6C6C600D6D6D600FFFFFF00E7E7
      E700FFFFFF00F7F7F700DEDEDE00FFFFFF00C6C6C600B5B5B500EFEFEF00FFFF
      FF00F7F7F700C6C6C600E7E7E700A5A5A5009C9C9C0094949400DEDEDE00FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00EFEFEF00D6D6D600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600C6C6C600B5B5B500E7E7E700FFFFFF00E7E7E700F7F7
      F7000000000000000000FFFFFF00A5A5A5004A4A4A006B6B6B00737373006363
      630052525200525A5A005A5A6300636363006B6B6B006B6B6B0073737300737B
      7B0073737300737373007373730073737300636363006B6B6B00949494000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      CE00318CAD00429CBD004A7B8C006B7B840073737300F7F7F700000000000000
      000000000000000000000000000000000000CEE7EF003984A500082131002129
      2900425A6B00DEE7E70031313100182118009C9C9C0073737300424242004A6B
      7B00CECECE00000000000000000000000000F7F7F700EFEFEF00FFFFFF00EFEF
      EF00CECECE00D6D6D600CECECE00CECECE00CECECE00E7E7E700F7F7F700CECE
      CE00EFEFEF00EFEFEF00C6C6C600E7E7E700DEDEDE00C6C6C600C6C6C600E7E7
      E700FFFFFF00FFFFFF00F7F7F700ADADAD00A5A5A5009C9C9C00DEDEDE00FFFF
      FF00E7E7E700F7F7F700F7F7F700EFEFEF00FFFFFF00F7F7F700DEDEDE00E7E7
      E700EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00E7E7E700DEDEDE00DEDE
      DE00DEDEDE00D6D6D600CECECE00BDBDBD00E7E7E700FFFFFF00E7E7E700F7F7
      F7000000000000000000EFEFEF00424242008484840084848400848484008C8C
      8C0094949400848484007B7B7B00737373006B6B6B0073737300737373007373
      73006B6B73006B6B73006B6B6B00636363006363630063636300000000000000
      000000000000000000000000000000000000000000000000000000000000EFF7
      F70039849C00429CBD005A8494008CCEE700397B9C0073737300ADADAD00E7E7
      E70000000000000000000000000000000000C6EFFF005A94B500082939004A52
      520084949C00DEDEDE004A4A4A00101008009C9CA50073737300424A4A00395A
      6300CECECE00000000000000000000000000F7F7F700EFEFEF00FFFFFF00F7F7
      F700DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600DEDEDE00D6D6D600CECE
      CE00E7E7E700E7E7E700CECECE00CECECE00CECECE00C6C6C600C6C6C600EFEF
      EF00E7E7E700FFFFFF00C6C6C600B5B5B500ADADAD00A5A5A500E7E7E700FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00F7F7F700E7E7E700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE00DEDEDE00D6D6D600C6C6C600EFEFEF00FFFFFF00EFEFEF00F7F7
      F7000000000000000000B5B5B5005A5A5A009494940094949400949494009494
      940094949C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009494
      94008C9494008C8C8C0084848400848C8C008C9494007B7B7B00000000000000
      000000000000000000000000000000000000000000000000000000000000EFFF
      FF00429CB500429CBD00429CC6004AA5CE003194B500427B9C00425263005A6B
      7300CECECE00FFFFFF000000000000000000DEE7E7006B848C00214A63003139
      39008C8C8C004A4A4A0031292900181010004A4A4A0039393900394242004263
      7300CECECE00000000000000000000000000F7F7F700EFEFEF00FFFFFF00F7F7
      F700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00C6C6C600C6C6C600C6C6C600BDBDBD00E7E7E700FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00DEDEDE00CECECE00EFEFEF00FFFFFF00EFEFEF00F7F7
      F7000000000000000000B5B5B500C6C6C600C6C6C600C6C6C600BDBDBD00B5B5
      B500B5B5B500B5B5B500ADADAD00ADADAD00ADADAD00A5A5AD00A5A5A500A5A5
      A500A5A59C00949494009C9C9C0073737300CECECE0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFF7
      FF004A9CB5006BB5D600CECECE00E7E7E700E7EFEF0073C6DE0052A5C600427B
      9400429CC6003984A500426B7B005A849400638CA50039739400105A7B006B84
      8C00737373009CA5A500CEDEE700C6E7EF00A5CED600ADBDBD007B8484009CBD
      C600FFFFFF00000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00C6C6C600EFEFEF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00DEDEDE00D6D6D600EFEFEF00FFFFFF00EFEFEF00F7F7
      F700000000000000000000000000CECECE00C6C6C600DEDEDE00D6D6D600CECE
      CE00CECECE00CEC6C600C6C6C600BDBDBD00BDBDBD00B5B5B500B5B5B500B5B5
      B500ADADAD00ADADAD00848484007B7B7B00E7E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5D6DE00A5CEDE00E7E7EF00C6CECE009CADB5009C9CA500A5BDCE0073BD
      DE00318CB5003994B500429CC6002984AD00297B9C00317B9C0021638400CECE
      CE0000000000CECECE00BDC6CE00CEDEE700CEF7FF00DEF7FF00E7F7F7000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00EFEFEF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00DEDEDE00D6D6D600EFEFEF00FFFFFF00EFEFEF00F7F7
      F70000000000000000000000000000000000FFFFFF00CECECE00E7E7E700E7E7
      E700E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600ADAD
      AD00848484008C8C8C008C8C8C00ADADAD00A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDEFFF005AA5C600638C9C007B94
      9C007BADCE004A94BD003184AD003994B500398CAD003984A5006B8C9C00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00F7F7F700FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700E7E7E700FFFFFF00FFFFFF00EFEFEF00F7F7
      F700000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00F7F7F7009C9C9C007373
      730094949400A5A5A500B5B5B500C6C6C600D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5F7FF0073CEE7004AB5DE007BADC60084BDD600A5CEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00F7F7F700F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00F7F7
      F70000000000000000000000000000000000000000000000000000000000F7F7
      F700D6D6D600E7E7E700FFFFFF00F7F7F700FFFFFF00A5A5A500737373008C8C
      8C00A5A5A500B5B5B500C6C6C600CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D6000000000000000000D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00DEDEDE00DEDEDE00C6C6C6008C8C8C0094949400A5A5
      A500ADADAD00BDBDBD00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F70000000000000000000000000000000000F7F7F700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700ADAD
      AD00ADADAD00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000780000004A0100000100010000000000A01400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFF00000000000000000
      FFFFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFFFF00000000000000000
      FFFFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFFFF00000000000000000
      FFFFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFFFF00000000000000000
      FF0783FFFFFFFFF00000000000000000FE0001FFFFF00FF00000000000000000
      FE0001FFFFF00FF00000000000000000FE0001FFFF800FF00000000000000000
      FE0001FFFF800FF00000000000000000FE0003FFFC000FF00000000000000000
      FE001FFFFC000FF00000000000000000FE001FFFFC000FF00000000000000000
      FF001FFFFC000FF00000000000000000FF001FFFFC001FF00000000000000000
      FFF01FFFFC003FF00000000000000000FFF01FFFFC00FFF00000000000000000
      FFF01FFFFC01FFF00000000000000000FFF01FFFFC07FFF00000000000000000
      FFF01FFFFC0FFFF00000000000000000FFF83FFFFFFFFFF00000000000000000
      FFFFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFFFF00000000000000000
      FFFFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFFFF00000000000000000
      FFFFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFFFF00000000000000000
      FFFFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FF81FFFFFC000FFFF0003FFFE3FFFF00FF8003FFFC000FFFF0003FFFC07FFF00
      FF001FFFFC000FFFF0003FFFC03FFF00FF8003FFFC000FFFF0003FFFC007FF00
      FF0003FFFC000FFFF0003FFF8001FF00FF8003FFFC000FFFF0003FFF80007F00
      FF0003FFFC000FFFF0003FFF80007F00FF8003FFFC000FFFF0003FFF8000FF00
      FF0001FFFC000FFFF0003FFFC000FF00FF8001FFFC000FFFF0003FFFF001FF00
      FF0001FFFE1E1FFFF8FFFFFFF800FF00FF8003FFFE1E1FFFF8F1FFFFFC00FF00
      FF0003FFFE001FFFF861FFFFFE01FF00FF8003FFFE001FFFF801FFFFFF03FF00
      FF0003FFFF003FFFFC03FFFFFF87FF00FF8FFFFFFF807FFFFE07FFFFFFCFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFF80FFFFFFFFFFFFF3FFFFFFFFFFF00FFE007FFFFFFFFFFFF3FFFFFFFFFFF00
      FF8003FFF80007FFFE007FFF88047F00FE0001FFF80007FFFC003FFFA3F17F00
      FE0001FFF80007FFFC001FFFBC0F7F00FE0001FFF80007FFFE001FFFA0017F00
      FE0001FFF80007FFFF381FFFA0017F00FE0001FFF80007FFE03C1FFFA0017F00
      FE0001FFF80007FFE0F01FFFA0017F00FE0001FFF80007FFE073FFFFA0017F00
      FE0001FFF80007FFE001FFFFA0017F00FE0001FFF80007FFE000FFFF80007F00
      FF0003FFF80007FFF000FFFF80007F00FF8007FFFC00CFFFF801FFFFFFFFFF00
      FFE01FFFFFFFFFFFFFF3FFFFFFFFFF00FFF87FFFFFFFFFFFFFF3FFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFC001FF00FFC003FFFFF807FFFF87FFFF8001FF00
      FE0003FFFFE007FFFE01FFFF9E01FF00FE0003FFFF0007FFF8007FFF8001FF00
      FE0003FFFC000FFFF98E7FFFC001FF00FE0003FFFC001FFFF04C3FFFE001FF00
      FF0003FFFC003FFFFBCF7FFFE001FF00FF8003FFFC003FFFFFCFFFFFE001FF00
      FFC003FFFC003FFFFFCFFFFFE001FF00FFC003FFFE003FFFFF03FFFFE001FF00
      FFC003FFFE003FFFFE01FFFFE000FF00FFC003FFFF007FFFFF87FFFFE0007F00
      FFC007FFFF80FFFFFFB7FFFFE0047F00FFC00FFFFFC3FFFFFFB7FFFFE4047F00
      FFC01FFFFFFFFFFFFFC7FFFFE7807F00FFFFFFFFFFFFFFFFFFFFFFFFE000FF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFC3FFFFFFE0FFFFFFFFFFF00FFFFFFFFF81FFFFFFE07FFFFC000FF00
      FFFFFFFFF80FFFFFE0003FFFC000FF00FF01C3FFF807FFFFE0003FFFC000FF00
      FF01C3FFF803FFFFE0003FFFC000FF00FE0003FFFC01FFFFE0003FFFC000FF00
      FE0003FFFE01FFFFE0003FFFC000FF00FE0003FFFF00FFFFE0001FFFC000FF00
      FE0003FFFF800FFFE0301FFFC000FF00FE0003FFFFC007FFE0381FFFC001FF00
      FEFF83FFFFF007FFE0001FFFC003FF00FE0003FFFFF807FFE0003FFFC007FF00
      FE003FFFFFF847FFE0003FFFFFFFFF00FE003FFFFFF83FFFE0003FFFFFFFFF00
      FFFFFFFFFFF83FFFE0003FFFFFFFFF00FFFFFFFFFFFC3FFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C000000FFFFFFFFFFFFFFFFFFFFFFF00
      80000007FFFFFFFFFFFFFFFFFFFFFF0000000003FFFFFFFFFFFFFFFFFFFFFF00
      00000003FFFFFFFFFFFFFFFFFFFFFF0000000003FFFFFFFFFFFFFFFFFFFFFF00
      00000003FFFFFFFFFFFFFFFFFFFFFF0000000003FFFFFFFFFFFFFFFFFFFFFF00
      00000003FFFFFFFFFFF9FFFFF807FF0000000003FFFFFFFFFE003FFFE001FF00
      00000003FFC00FFFF0001FFFE001FF0000000003FFC00FFFE0001FFFE001FF00
      00000003FFC00FFFE0001FFFE001FF0000000003FC000FFFE0001FFFE001FF00
      00000003FC000FFFE0003FFFE001FF0000000003FC000FFFE0001FFFE001FF00
      00000003FC000FFFE0003FFFF003FF0000000003FC000FFFE001FFFFF807FF00
      00000003FC007FFFE001FFFFF807FF0000000003FC007FFFE001FFFFF807FF00
      00000003FC007FFFE3F1FFFFF807FF0000000003FC007FFFE3F1FFFFF807FF00
      00000003FFFFFFFFE001FFFFF807FF0000000003FFFFFFFFF003FFFFFC0FFF00
      00000003FFFFFFFFFFFFFFFFFFFFFF0000000003FFFFFFFFFFFFFFFFFFFFFF00
      00000003FFFFFFFFFFFFFFFFFFFFFF0000000003FFFFFFFFFFFFFFFFFFFFFF00
      00000003FFFFFFFFFFFFFFFFFFFFFF0080000007FFFFFFFFFFFFFFFFFFFFFF00
      C000000FFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF9FFFFFFFFFFFFFFFFFFF00
      E00007FFFF07FFFFFE03FFFFFFFFFF00E00003FFFF01FFFFFC01FFFFFFFFFF00
      E00003FFFF00FFFFF801FFFFFFFFFF00E00003FFFE000FFFF001FFFE007FFF00
      E00003FFFE000FFFC0001FF8001FFF00E00003FFF8000FFF80000FF0000FFF00
      E00003FFC00007FF000007E00007FF00E00003FF0000007C100007E00007FF00
      E00003FF00000038200000E00007FF00E00003FF00000008007000E00007FF00
      E00003FF00000008901000600007FF00F00003DF0000001C4000006000000F00
      F000038F0000001E270000E000000300FC00038F0000001F10000FE000000300
      FFFE1F8F8000003F880007E000000100FFFE1F8F8000007FC40007E000000100
      FFFE1F8F800000FFE00003E000000100FFFE1F8F800001FFF00001E000000100
      FFFE1F8F800003FFF80041E000000100FFFE1F8F000003FFFC0110E000000100
      FFFE1F8F000003FFFE0208E000000100FFFE1F8F00000FFFFF10006000000100
      FFFE1F8F00001FFFFF88007C01000100FFFE1F0F80001FFFFFC0007F8F000300
      FFFF800FC0001FFFFFE010FFFFC00700FFFF000FF0001FFFFFF107FFFFFFFF00
      FFFF000FF8003FFFFFF81FFFFFFFFF00FFFF801FFE007FFFFFFC3FFFFFFFFF00
      FFFFFFFFFFF0FFFFFFFFFFFFFFFFFF00C000000FFFFFFFFC000000FFFFFFFF00
      80000007FFFFFFF80000007E00007F0000000003FFFFFFF00000003E00003F00
      00000003FFFFFFF00000003E00003F0000000003FFFFFFF00000003E00003F00
      00000003FFFFFFF00000003E00003F0000000002000000100000003E00003F00
      00000002000000100000003E00003F0000000002000000000000003E00003F00
      00000002000000000000003E00003F0000000002000000000000003E00003F00
      00000002000000000000003E00003F0000000002000000000000003E00003F00
      00000002000000000000003F00003F0000000002000000000000003F80003F00
      00000002000000000000003F80003F0000000002000000000000003FC1E0FF00
      00000002000000000000003FC1E0FF0000000002000000000000003FC3E0FF00
      00000002000000000000003FC3E0FF0000000002000000000000003FC3E0FF00
      00000002000000000000003FC3E0FF0000000002000000000000003FC3E0FF00
      00000002000000100000003FC1E0FF0000000003000000300000003FC1E0FF00
      00000003FFFFFFF00000003FC1C0FF0000000003FFFFFFF00000003FE001FF00
      00000003FFFFFFF00000003FE003FF0080000007FFFFFFF80000007FF007FF00
      C000000FFFFFFFFC000000FFFFFFFF00FFFFFFFF0000003C000000FFFFFFFF00
      FFFFFFFE000000180000007E7FFFFF00FFFFFFFC000000000000003C1FFFFF00
      FFFFFFFC000000000000003C07FFFF00FFFFFFFC000000000000003C00FFFF00
      FFFFE0040000000000000038003FFF00FFFF000400000000000000380007FF00
      FFF8000400000000000000300001FF00FF800004000000000000003000001F00
      FE00000C000000000000002000000300F800000C000000000000002000000000
      E000003C000000000000000000000000C000007C000000000000000000000000
      800000FC000000000000000000000000800000FC000000000000000000000100
      800000FC000000000000000000000100800000FC000000000000000000000300
      C00000FC000000000000000000000700C00000FC000000000000003000000F00
      C00000FC000000000000003C00001F00E00001FC000000000000003F00001F00
      E00003FC000000000000003FC0001F00F00003FC000000000000003FF0001F00
      F00003FC000000000000003FF0007F00F80007FC000000000000003FF8007F00
      FC001FFC000000000000003FFF00FF00FE007FFE000000000000003FFFFFFF00
      FFC3FFFD000000400000003FFFFFFF00FFFFFFFECFFFFE980000007FFFFFFF00
      FFFFFFFF0000003C000000FFFFFFFF00C000000F0000003C000000F000000300
      8000000600000018000000600000010000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000006000000180000006000000100
      C000000F0000003C000000F000000300C000000F0000003FFE7FFFFFFFFFFF00
      800000060000001FFC1FFFFFFFFFFF00000000000000000FFC07FFF87FFFFF00
      000000000000000FFC03FFE07FFFFF00000000000000000FF800FFE01F9FFF00
      000000000000000E00000FE03809FF00000000000000000E000007E070007F00
      000000000000000C000007E180001F00000000000000000C000001C100000300
      000000000000000C000000E100000100000000000000000C0000002180000000
      000000000000000C0000002130000000000000000000000C00000061F0000000
      000000000000000C00000061F0000100000000000000000C00000061FC000700
      000000000000000C000000E1FC000700000000000000000C000001E1FC000700
      000000000000000C000003E0FC000700000000000000000E000007E0FE000700
      000000000000000E00000FE0FE000700000000000000000C00001FE03F000700
      000000000000000C00003FE00F000700000000000000000C00003FE003000700
      000000000000000C00007FE000000700000000000000000E00007FF000081F00
      000000000000000F00007FFF000FFF00000000000000000FC0007FFFF03FFF00
      000000000000000FE000FFFFFCFFFF00800000060000001FF801FFFFFFFFFF00
      C000000F0000003FFFC3FFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  object frxreport1: TfrxDBDataset
    UserName = 'frxreport1'
    CloseDataSource = False
    DataSet = zQEmpleados
    BCDToCurrency = False
    Left = 24
    Top = 240
  end
  object zQEgresosEmpleado: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT b.sIdEgreso AS iId, b.mDescripcion AS egreso'
      'FROM con_tesoreriapegresos AS a'
      
        'INNER JOIN con_catalogodeegresos AS b ON (a.sIdEgreso = b.sIdEgr' +
        'eso)'
      'WHERE a.sIdProveedor = :Empleado'
      'GROUP BY a.sIdEgreso'
      'ORDER BY a.sIdEgreso')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
    Left = 312
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
  end
  object dsEgresosEmpleado: TDataSource
    AutoEdit = False
    DataSet = zQEgresosEmpleado
    Left = 360
    Top = 376
  end
end
