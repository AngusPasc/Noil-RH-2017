object frmMontarRespaldo: TfrmMontarRespaldo
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'MONTAR RESPALDO DE BASE DE DATOS'
  ClientHeight = 269
  ClientWidth = 413
  Color = cl3DLight
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 413
    Height = 269
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 281
    object txtOrigenDir: TcxTextEdit
      Left = 130
      Top = 14
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 231
    end
    object SpeedButton2: TcxButton
      Left = 369
      Top = 14
      Width = 30
      Height = 25
      TabOrder = 1
      OnClick = SpeedButton2Click
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
        82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
        59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
        45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
        44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
        D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
        3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
        3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
        5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
    end
    object edtHost: TcxTextEdit
      Left = 130
      Top = 47
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 231
    end
    object edtUser: TcxTextEdit
      Left = 130
      Top = 76
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 299
    end
    object edtBD: TcxTextEdit
      Left = 130
      Top = 134
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object edtPass: TcxTextEdit
      Left = 130
      Top = 105
      ParentFont = False
      Properties.PasswordChar = '*'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object CmdImportar: TcxButton
      Left = 216
      Top = 173
      Width = 151
      Height = 25
      Caption = 'Importar'
      TabOrder = 7
      OnClick = CmdImportarClick
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0001000000040000000B00000011000000160000001A0000001B0000001C0000
        001C00000018000000150000000E000000050000000100000000000000000000
        000504091032122749931A386AC61C417DE2214B95FF1F4893FF1E4692FF1C44
        91FF17397AE6122D63CA0D20479E03070F390000000700000000000000000000
        000F2A558EE8619CC8FFA6C6E0FFD2E0EFFFA7E7FAFF6CD1F1FF44BDE6FF3F98
        D9FF2565B8FF2966B7FF3174BBFF1E427DE20000001500000000000000000000
        00133365A6FF9FE2F7FFDBF6FDFFF3FCFFFFABE9FAFF71D4F2FF49C0E8FF449D
        DAFF296DC1FF2E74C6FF419DE1FF275298FF0000001B00000000000000000000
        0012396CAAFFADE7F9FFE3F8FDFFF7FCFFFFC1EFFBFF8FDFF6FF67CEEDFF5EAF
        E2FF3B7ECAFF3A80CCFF49A3E4FF29579BFF0000001B00000000000000000000
        00114277B1FF91CBE7FFAECDE3FFB8C9E0FF6FADD6FF469BCEFF2E8BC5FF2B6F
        B9FF2155ABFF2662B4FF3B8AD2FF2D5B9DFF0000001A00000000000000000000
        000B2C5588CE89C6E4FFCAE4F2FFE8F2F9FFB6EDFCFF80DAF4FF59C9ECFF54A9
        E0FF3374C4FF3274C3FF3C8BD2FF21467CCE0000001100000000000000000000
        000E437CB6FFB3E9F9FFE3F8FDFFF7FCFFFFBAEDFCFF86DCF5FF5FCCECFF59AD
        E2FF3C82CDFF4288D1FF56ADE7FF3366A6FF0000001700000000000000000000
        000D4984BCFFC0EDFAFFEAFAFDFFF9FCFFFFCDF3FDFFA1E5F7FF7DD8F1FF73BD
        E8FF4F92D5FF4E95D7FF5FB3EAFF386BAAFF0000001600000000000000000000
        000C528EC2FFA1D0E9FFB5CEE3FFBAC9E0FF7BB2D7FF54A2D1FF3B95CAFF387C
        C0FF2C65B5FF3470BEFF4C99D8FF3A70AEFF0000001400000000000000000000
        000A366795CE98CBE7FFD0E6F3FFEBF3F9FFC4F0FCFF94E1F6FF6FD4EFFF69B8
        E7FF4587CEFF4486CCFF4C99D8FF2C5689CE0000000E00000000000000000000
        00095394C8FFC2EEFAFFE8F9FEFFF8FDFFFFC6F1FCFF97E3F7FF73D5F0FF6EBB
        E8FF4F94D6FF559BDAFF6BBBECFF437DB7FF0000001100000000000000000000
        0008569ACBFFC6EFFBFFE9FAFEFFF8FDFFFFC9F2FCFF9CE4F7FF78D7F1FF73BE
        E9FF5498D8FF5A9FDCFF70BEEDFF4883BBFF0000001000000000000000000000
        00075A9FD0FFE3F8FCFFF3FCFEFFF3FDFEFFEFFBFEFFE8F9FEFFE1F7FDFFDAF4
        FDFFC5E9FAFFB2DFF7FFA4DDF6FF4B89BFFF0000000E00000000000000000000
        00045291BAE3A4CDE7FFC3DFEFFFCFE9F5FFE2F8FDFFD8F5FDFFCEF1FDFFC2ED
        FBFFA5D8F2FF97CEECFF81BBE1FF4277A4DB0000000A00000000000000000000
        00010910141D2D4F647E417191B34B83A9D05BA0D0FC5AA1D1FF5A9FD0FF579B
        CCFC467CA4D23C6A8DBA2A4B648A091015270000000300000000}
    end
    object NxButton8: TcxButton
      Left = 299
      Top = 216
      Width = 100
      Height = 25
      Caption = 'Salir'
      TabOrder = 8
      OnClick = NxButton8Click
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
        76E4120852AD06031B4D0000000E000000030000000000000000000000000000
        000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
        C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
        03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
        D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
        5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
        BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
        A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
        CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
        BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
        CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
        D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
        D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
        DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
        DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
        D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
        A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
        79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
        BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
        050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
        EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
        000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
        EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
        000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
        B5D040437D951212223000000004000000010000000000000000}
    end
    object cxButton1: TcxButton
      Left = 45
      Top = 173
      Width = 163
      Height = 25
      Caption = 'Probar Conexion'
      TabOrder = 6
      OnClick = cxButton1Click
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000001000000050000000D0000000F00000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A170F093B72472CC3A1643DFF00000010000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00060604031955382594AB754CF9D5A670FFA56942FF00000022000000110000
        000D000000080000000300000000000000000000000000000000000000053525
        195F9A6A48E5CB9C6DFFE8C089FFE8C189FFA86F48FF88512EFC724125E4532E
        17B92F1A0D7B090502270000000700000001000000000000000000000008BD8D
        64FFECD4B3FFF1D8ACFFEBCA95FFEAC68FFFE7CBA4FFF2DBB9FFE1C39EFFC59D
        74FFA16F47FF512C16BE1B0E065200000008000000010000000000000004392C
        1F59A8815EE2DBBB97FFF3DFBDFFF0D4A6FFC69C74FFBB8B62FFC49870FFD3AE
        89FFE0C29BFFB78A60FF5C351CCB120A043E0000000400000000000000010000
        000407050415614B378CC39D76F9E7CEADFFC1936AFF060503242B21174E644A
        359AB48F6BECD7B891FFAB7E56FF3C2110970000000A00000000000000020000
        00080000000B0000000F1A140F328A6C4FBBC79A70FF0000000C000000040000
        000C56412F86D2AD87FFD8BD9DFF60351CD50000000F00000000000000062379
        49F9237B4AFF247A4AFF030A06220000000900000009000000060000000A0000
        000B100C0927C5996FFFC4986EFFAE7C57F90000000D0000000000000005246E
        49CE5BC49EFF308E62FF0D311C7E00000008000000030000000A247B4AFF0A37
        1ABF020B053900000015000000110000000D000000030000000000000003194B
        32885BB691FF6DC3A6FF2F7A54EA103B229107190F470104021C267F4DFF34A5
        78FF17633BF9092B169101030218000000060000000100000000000000010919
        112F2C7451C07AC8AAFF8BD7BFFF56A886FF33875DFF207345FF3A976AFF6ADA
        BBFF4BC89FFF30966AFF145530E5061D0F5F0000000600000000000000000000
        00020E251A41266C4BB263BB96FF8AD3BAFFA8E7D6FFBAF3E7FFA4E4D2FF89EA
        D5FF77E1C6FF75DDBDFF80D7BCFF278551FF0000000A00000000000000000000
        000000000002050D091A17412D6A276D4CAD338E64DF3AA06FFB3AA271FF9EF0
        E0FFB4F1E5FF6EC5A3FF348B60E1102E1F5A0000000500000000000000000000
        000000000000000000010000000200000004000000050000000C3EA977FF9AE0
        C9FF4CAC82F81E52398902060415000000040000000100000000000000000000
        000000000000000000000000000000000000000000000000000541AF7DFF2D79
        56B70816102B0000000500000001000000000000000000000000}
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Archivo Origen:'
      Control = txtOrigenDir
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = SpeedButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Servidor:'
      Control = edtHost
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Usuario:'
      Control = edtUser
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Base de Datos:'
      Control = edtBD
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Contrase'#241'a:'
      Control = edtPass
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Padding.Bottom = 10
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavTop]
      Control = CmdImportar
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = NxButton8
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Padding.Bottom = 10
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavTop]
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      LayoutDirection = ldHorizontal
      Index = 5
      AutoCreated = True
    end
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Filter = 'Script Sql|*.sql'
    Left = 328
    Top = 104
  end
  object dguardar: TSaveDialog
    DefaultExt = '.sql'
    Filter = 'Script Sql|*.sql'
    Left = 328
  end
  object zPruebaConexion: TZConnection
    Protocol = 'mysql-5'
    Port = 3306
    TransactIsolationLevel = tiSerializable
    Left = 56
    Top = 224
  end
end