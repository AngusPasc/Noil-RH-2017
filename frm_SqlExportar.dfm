object frmSqlExportar: TfrmSqlExportar
  Left = 334
  Top = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sql Inteligent'
  ClientHeight = 236
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object btnExit: TBitBtn
    Left = 185
    Top = 192
    Width = 110
    Height = 40
    Hint = 'Salir'
    Caption = '&Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnExitClick
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00C0C0C000C0C0
      C000FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000FFFFFF0000000000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFF
      FF00C0C0C000C0C0C000FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FFFF
      FF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00C0C0C00000000000FFFF0000FFFF00008080000000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FF00FF00C0C0C000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFF
      FF00FFFFFF0000000000FFFF0000FFFF0000808000008080000000000000C0C0
      C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFF
      FF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000C0C0C00000000000FFFF0000FFFF00008080000080800000808000000000
      0000FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF00008080000080800000808000008080
      000000000000FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000FFFFFF0000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00C0C0C00000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000C0C0C000FFFF
      FF00FFFFFF0000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000C0C0C00000000000808080008080800080808000808080008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000C0C0C00000000000808080008080800080808000808080008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000808000000000000000000000808080008080800080808000808080008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000808000008080000000000000808080008080800080808000808080008080
      80008080800000000000FFFF0000FFFF00008080000000000000000000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000FFFF00008080000080800000000000008080800080808000808080008080
      80008080800000000000FFFF0000FFFF00000000000080808000000000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000FFFF0000FFFF000080800000808000000000000080808000808080008080
      80008080800000000000FFFF0000FFFF000000000000FFFFFF00000000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000808000008080000000000000808080008080
      80008080800000000000FFFF0000FFFF00008080000000000000000000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF000000
      0000808000008080000080800000808000008080000080800000808000008080
      0000FFFF0000FFFF0000FFFF0000FFFF00008080000080800000000000008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080800000808000000000
      00008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFF0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF0000808000000000
      00008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFFF00FFFF0000FFFF000080800000000000008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFFFF00FFFF0000FFFF00008080000000000000808080008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFF0000FFFF0000FFFF0000808000000000000080808000808080008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFF0000FFFF000080800000000000008080800080808000808080008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFF00008080000000000000808080008080800080808000808080008080
      80008080800000000000FFFF0000FFFF00008080000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000808000000000000000000000808080008080800080808000808080008080
      8000808080008080800000000000FFFF0000FFFF000080800000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000808080008080800080808000808080008080
      800080808000808080008080800000000000FFFF0000FFFF0000808000008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000808080008080800080808000808080008080
      80008080800080808000808080008080800000000000FFFF0000FFFF00008080
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000FFFF0000FFFF
      0000808000000000000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800000000000FFFF
      0000FFFF00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
  end
  object btnExport: TBitBtn
    Left = 79
    Top = 193
    Width = 110
    Height = 40
    Hint = 'Exportar Informaci'#243'n'
    Caption = '&Exportar '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnExportClick
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F900F906EC00EC13DD00DD22D000D02FC900C936C800C837CE00
      CE31D900D926E800E817F600F609FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00FE01EE00
      EE11CD00CD32A400A45B7F017D826F0B699E701A5FB26F215BBC6E2159BD6B17
      5CB3690764A0790078879B009B64C200C23DE600E619FD00FD02FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F700F708CA00CA358B01
      8976762163B4915E68DEB7957AF4D0B788FFD6C08EFFD8C28EFFD7C18CFFD4BD
      88FFCBAF7FFEAB866EF1844F5BDB671659B57E007E81BE00BE41F400F40BFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00F100F10EAD00AD527F2C66B9B38F
      77F2DBC48FFFDEC88AFFD3BD79FFCCB46CFFC8B065FFC8AE62FFC9AF64FFCBB2
      68FFCFB870FFD7C07CFFDEC584FFD2B87EFF9D7561EE6C195BB5A100A15EE300
      E31CFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00E900E9169904956C995E6CD8DDC58DFFD3BD
      7AFFC3AA5BFFBEA04BFFBC9F46FFBF9F48FFC0A24BFFC1A54FFFC3A752FFC4A7
      54FFC4A755FFC5A857FFC6AB5DFFCBB268FFD9C078FFCBAD71FE7A3C54D28400
      847BD900D926FE00FE01FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00E000E01F921E8094BC9A78F4D4BC78FFBEA24EFFB798
      3CFFB9993CFFBD9D43FFC1A34CFFC5A855FFC8AD5DFFCBB062FFCCB265FFCCB2
      65FFCCB165FFCBAF61FFC8AC5DFFC6AA58FFC5A958FFCBB061FFD3B66CFFA277
      5AEF7A0F6F9ACC00CC33FC00FC03FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00EB00EB14951F8194D1B57DFFCBB469FFB6973CFFB39231FFB897
      3BFFBEA047FFC4A753FFC9AE5EFFCDB367FFD0B76DFFD2B972FFD3BA74FFD3BA
      75FFD3BA74FFD2B972FFD0B76DFFCDB366FFC9AD5DFFC4A855FFC4A856FFD1B4
      62FFB48D58F87B0F7099D700D728FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FB00FB04A50E9B6DC8A875FBC6AD60FFB29235FFB18E2CFFB79738FFBE9F
      47FFC5A755FFCBAF61FFCFB66BFFD3BA73FFD5BD79FFD7C07DFFD8C281FFD8C2
      81FFD8C281FFD7C07DFFD5BD79FFD3BA73FFCFB66BFFCAAE60FFC4A753FFC0A4
      50FFCBAE57FFA87A51F08F048B77EC00EC13FF00FF00FF00FF00FF00FF00FF00
      FF00CD01CC34B37A6FE0C8AE63FFB09033FFAD8B26FFB49231FFBD9D43FFC3A6
      52FFCAAF61FFCDB366FFD3BA72FFD7C07DFFDAC484FFDCC689FFDDC98DFFDDC9
      8DFFDDC88DFFDCC789FFDAC484FFD7C07DFFD3BB75FFCFB56BFFC8AC5CFFC2A4
      50FFBEA14AFFC9A84DFF8F4D54D5B900B946FC00FC03FF00FF00FF00FF00FB00
      FB04A32F8698CDB067FFB19237FFAB8721FFAF8D29FFB89739FFC1A24BFFC8AC
      5BFFCEB56BFFD9CA9CFFD6C389FFD8C17EFFDEC98CFFE1CD94FFE2CF98FFE2CF
      98FFE2CF97FFE1CD94FFDECA8EFFDBC586FFD7C17EFFD3BA73FFCDB266FFC6A9
      56FFBFA149FFBC9D41FFBC9841FF88167795EA00EA15FF00FF00FF00FF00CB04
      C83ABA8E64EFB79A43FFA88620FFAB8820FFB2912FFFBA9B40FFC4A752FFCCB1
      62FFCFB76FFFEDE7D4FFFAF8F3FFE6DBB9FFE0CF9CFFE2D099FFE7D6A2FFE7D6
      A3FFE7D6A2FFE5D39EFFE2CF97FFDFCB8FFFDBC586FFD6BE7BFFD0B76EFFCAAF
      5FFFC2A44FFFBB9C41FFBD9B36FF9B5F48E0BC00BC43FF00FF00FF00FF00AB31
      8A93C2A34FFFA88724FFA68218FFAD8A24FFB59434FFBE9F45FFC7AB5AFFCEB5
      6AFFD2BA74FFEBE4CEFFFFFFFFFFFEFEFCFFF8F6EEFFEAE0C3FFE7D7A7FFECDC
      ACFFECDCADFFE9D9A8FFE6D4A0FFE1CF98FFDDC98EFFD9C281FFD3BA73FFCDB2
      67FFC5A856FFBD9E44FFB59432FFB8902EFF9617828AF600F609EC00EC13B16D
      65D6B09236FFA48118FFA78219FFAE8B27FFB69536FFBFA149FFC9AE5EFFD0B6
      6DFFD3BC78FFEAE2CBFFFCFBF7FFFAF8F1FFFBF9F4FFFBF9F5FFF1ECDBFFEADD
      B9FFEBDBAEFFECDCADFFE8D8A5FFE4D29CFFE0CC92FFDAC485FFD4BC77FFCFB4
      6AFFC7AB5AFFBEA047FFB69536FFB9942AFF95415AC1E600E619D206CD36B590
      49FAA68624FFA27E12FFA7831AFFAF8C27FFB69637FFC0A149FFC9AE5FFFD0B7
      6EFFD4BC79FFE9E1C7FFFAF8F1FFF8F5EBFFF8F5EBFFF8F5EBFFF9F7EFFFF6F3
      E9FFEDE5CDFFE6D9AFFFE7D5A2FFE5D39DFFE0CC93FFDAC486FFD4BC78FFCFB5
      6BFFC7AC5BFFBFA148FFB79637FFB28F25FFA56B3FE7D001D030BE16AE5FB290
      39FFA17F19FFA17C10FFA7831AFFAF8C27FFB69637FFC0A149FFC9AE5FFFD0B7
      6EFFD4BC79FFE7DEC2FFF7F4E9FFF5F1E4FFF5F1E4FFF5F1E4FFF5F1E4FFF6F2
      E6FFF7F3E9FFF2EDDEFFE6DCBAFFE0CE9AFFDECA8EFFDAC586FFD4BC78FFCFB5
      6BFFC7AC5BFFBFA148FFB79637FFB08D25FFAD832DFCC005BC46B4229A78B18E
      2FFF9D7A11FFA07B0FFFA78219FFAE8B26FFB69536FFBEA048FFC8AD5DFFD0B6
      6DFFD3BB77FFE5DBBDFFF5F0E3FFF3EDDEFFF3EDDEFFF3EDDEFFF3EDDEFFF3ED
      DEFFF3EDDEFFF4EFE0FFF4F0E2FFECE5CEFFDECFA2FFD6C080FFD3BA72FFCEB4
      6AFFC6AA59FFBE9F46FFB69536FFAF8C25FFAE8623FFB80DAE59AA258B85AA86
      23FF9A770CFF9F7A0DFFA68117FFAD8A24FFB49232FFBD9E43FFC6AA57FFCEB3
      68FFD1B973FFE2D7B5FFF2ECDAFFF0E9D5FFF0E9D5FFF0E9D5FFF0E9D5FFF0E9
      D5FFF0E9D5FFF0E9D5FFF0E9D5FFF1ECD9FFF0EAD8FFE8DEC1FFD4C28AFFCAB0
      61FFC4A853FFBC9D42FFB49332FFAE8B23FFAB841DFFB410A761AD228F80A580
      1BFF977307FF9E780BFFA48014FFAB8720FFB2902DFFBA9A3EFFC3A651FFCBB0
      61FFCFB66DFFE0D4AFFFEFE8D2FFEDE5CDFFEDE5CDFFEDE5CDFFEDE5CDFFEDE5
      CDFFEDE5CDFFEDE5CDFFEDE5CDFFEEE6CFFFF0E9D4FFE8DFC4FFD1BD84FFC7AC
      5AFFC1A44DFFBA9A3DFFB2902DFFAC881FFFAA831BFFB90EAD5ABC1DA36BA17B
      16FF937004FF9B7608FFA27D11FFA8841CFFAF8D28FFB79637FFC0A149FFC7AB
      59FFCCB166FFDED0A8FFEDE4CBFFEBE1C6FFEBE1C6FFEBE1C6FFEBE1C6FFEBE1
      C6FFEBE1C6FFEBE2C7FFECE4CBFFE9E0C4FFDBCCA0FFCEB773FFCAAF60FFC5A9
      55FFBD9F45FFB79636FFAF8D28FFA9851AFFAB8020FDC90AC144CB10BE4A9872
      0FFF8F6C00FF987305FFA07A0DFFA68116FFAB8922FFB39230FFBC9C40FFC2A4
      4FFFC7AB5CFFDBCDA1FFEAE1C5FFE8DEC0FFE8DEC0FFE8DEC0FFE8DEC0FFE8DE
      C0FFEAE0C3FFE8DFC2FFDED0A8FFD2BE81FFCFB66DFFCEB467FFC7AB5AFFC0A2
      4BFFBA993CFFB3912EFFAC8922FFA68215FFAD782FF2DF02DD23E803E51C9F69
      28EF8A6800FF967206FFA27F17FFA6831CFFA9861EFFAF8C27FFB69435FFBD9D
      42FFC1A44FFFD7C89AFFE7DDBEFFE5DAB9FFE5DAB9FFE6DAB9FFE7DDBEFFE6DB
      BCFFDFD2ABFFD3C087FFCFB770FFD1B76DFFCEB468FFC8AC5BFFC1A34DFFBC9C
      41FFB89739FFB18F2DFFA8841CFFA6800FFFAC5754C8F700F708FF00FF00A93E
      6BAA8C6800FF94720BFFA68728FFAC8C2EFFB09033FFB39337FFB6973AFFB898
      3CFFBA9B41FFD3C290FFE4D8B6FFE2D6B2FFE3D7B4FFE3D7B5FFD9CA9DFFD0BB
      7EFFCDB46BFFCDB266FFCDB265FFCAAF60FFC8AC5BFFC5A958FFC2A553FFBEA1
      4DFFBA9D46FFB49439FFA48014FFAB8212FFB6249679FF00FF00FF00FF00DE21
      C350926C0CFF8C6A03FFA78A31FFAE9139FFB3963EFFB79B46FFBCA04FFFC0A4
      53FFC1A555FFD7C799FFE6DBBAFFE5D9B7FFE0D3ADFFCFBC82FFC7AD60FFCBB0
      63FFCDB368FFCDB369FFCCB36AFFCCB36CFFCBB36AFFC8AF65FFC4A95CFFBFA4
      53FFBCA04EFFB29337FF9F7A09FFAC732CEDE204DF22FF00FF00FF00FF00FE03
      FB06BB5F5BC7806000FF9F8229FFB39849FFB59A49FFBA9F4EFFBEA355FFC1A7
      5BFFC4AB61FFDDD0A9FFEAE1C6FFDBCDA3FFCFBA7EFFCEB673FFD1BB79FFD1BB
      7BFFD1BB7BFFD1BB7BFFD0B978FFCDB673FFCBB36EFFC7AF67FFC3AA5FFFC1A6
      5AFFBEA457FFA88723FFA37B07FFB4368095FF00FF00FF00FF00FF00FF00FF00
      FF00F030CA52896609FF8A6B0AFFB29A51FFBAA25AFFBDA45BFFC1A860FFC3AB
      63FFC5AE6AFFD6C698FFD2C08AFFCAB472FFCEB877FFCFBA7CFFD0BB7EFFD0BC
      7EFFD0BB7DFFCFBA7BFFCFB979FFCDB675FFCBB472FFC8B16CFFC5AD67FFC4AD
      69FFB89C4AFF9A7603FFAE7031E8E005DC26FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00D45688A27B5C00FF9A7E29FFC0AC6EFFC1AC6CFFC4AE6DFFC7B1
      70FFC9B373FFC9B475FFCBB676FFCEBA7CFFCFBB7FFFD0BC80FFD0BC81FFD0BC
      81FFD0BC81FFD0BC80FFCFBA7FFFCEB97CFFCCB87AFFCAB576FFCAB578FFC4AD
      6BFF9E7D14FFA67C0CFFC021A36CFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FD0BF412C16065C17D5E00FFA2893CFFC7B57FFFC9B780FFCAB7
      7EFFCDBA81FFCEBB84FFCFBD85FFD1BE87FFD2BF89FFD2C08AFFD3C08BFFD3C0
      8BFFD3C08BFFD2C08AFFD2BF89FFD1BE87FFCFBC85FFD0BF89FFC8B476FFA282
      21FF9E7507FFB6368393FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FD07F80CCC5B79B07B5C00FF9E8638FFD1C299FFD3C5
      99FFD1C294FFD2C395FFD4C496FFD6C597FFD6C698FFD7C799FFD7C799FFD7C7
      99FFD7C799FFD7C798FFD6C698FFD6C698FFDACBA1FFCAB77FFF977713FF9870
      08FFB7299181FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FD07F80BDA519396836205FF998133FFCCBE
      93FFDCD1B1FFDACEABFFDACDA7FFD9CCA6FFDACDA6FFDBCDA6FFDBCEA7FFDBCE
      A8FFDBCEA8FFDCCFA9FFDED3B0FFDDD0ACFFC2AE71FF917310FFA16E1CF4E63A
      B76AFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EC39BF6297631DF18468
      0CFFA99655FFD0C49EFFE0D6BAFFE5DCC4FFE5DDC4FFE5DCC1FFE5DCC2FFE7DE
      C5FFE5DBC0FFDDD2B2FFC6B682FF9E8530FF876500FFB7644AD3F822DE37FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FA16E924DA4C
      95909F632BE889690EFF988032FFAB9959FFBBAB76FFC2B383FFC0B17EFFB6A5
      6AFFA59047FF93771EFF8D6907FFB16342D8E742B074FD0AF511FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FC0BF413EF32C756D64C8E94B85A55C59E6129E7996321EEA1662DE9AE60
      40D7C35866B7DE489D86F429D444FE05FA08FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object Group_Exportacion: TGroupBox
    Left = 4
    Top = 8
    Width = 349
    Height = 179
    Caption = 'Parametros de Exportaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object rbtUno: TRadioButton
      Left = 8
      Top = 16
      Width = 185
      Height = 17
      Caption = 'BD del Contrato'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rbnDos: TRadioButton
      Left = 8
      Top = 36
      Width = 313
      Height = 17
      Caption = 'Configuraci'#243'n Actual (Convenio Seleccionado)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object rbtTres: TRadioButton
      Left = 8
      Top = 56
      Width = 265
      Height = 17
      Caption = 'Movimientos por Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Group_Periodo: TGroupBox
      Left = 24
      Top = 73
      Width = 322
      Height = 49
      Caption = 'Periodo de Exportaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label1: TLabel
        Left = 7
        Top = 24
        Width = 57
        Height = 14
        Caption = 'Fecha Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 166
        Top = 24
        Width = 55
        Height = 14
        Caption = 'Fecha Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object tdFechaInicio: TDateTimePicker
        Left = 72
        Top = 18
        Width = 89
        Height = 22
        Hint = 'Seleccione una fecha de inicio.'
        Date = 38638.000000000000000000
        Time = 38638.000000000000000000
        Color = 15138559
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = tdFechaInicioEnter
        OnExit = tdFechaInicioExit
        OnKeyPress = tdFechaInicioKeyPress
      end
      object tdFechaFinal: TDateTimePicker
        Left = 231
        Top = 18
        Width = 89
        Height = 22
        Hint = 'Seleccione una fecha final.'
        Date = 38638.000000000000000000
        Time = 38638.000000000000000000
        Color = 15138559
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = tdFechaFinalEnter
        OnExit = tdFechaFinalExit
        OnKeyPress = tdFechaFinalKeyPress
      end
    end
    object rbtCuatro: TRadioButton
      Left = 8
      Top = 136
      Width = 105
      Height = 17
      Caption = 'Personalizada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object tsTabla: TComboBox
      Left = 118
      Top = 130
      Width = 228
      Height = 22
      Hint = 'Seleccione un valor.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 5
      OnEnter = tsTablaEnter
      OnExit = tsTablaExit
      OnKeyPress = tsTablaKeyPress
      Items.Strings = (
        'actividadesxanexo'#160#160
        'actividadesxgerencial'#160#160
        'actividadesxgrupo'#160#160
        'actividadesxorden'#160#160
        'alcancesxactividad'#160#160
        'almacenes'#160#160
        'anexosmensuales'
        'anexo_requision'
        'anexo_prequisicion'
        'anexo_pedidos'
        'anexo_ppedidos'#160#160
        'asistenciadeempleados'#160#160
        'avancesglobales'#160#160
        'avancesglobalesxorden'#160#160
        'avancesxactividad'#160#160
        'bitacoradeactividades'#160#160
        'bitacoradealcances'#160#160
        'bitacoradeanexo'#160#160
        'bitacoradeequipos'#160#160
        'bitacorademateriales'#160#160
        'bitacoradepaquetes'#160#160
        'bitacoradepersonal'#160#160
        'bitacoradetallexalcance'#160#160
        'bitacoragerencial'#160#160
        'calidad_clasificacion'#160#160
        'calidad_material'#160#160
        'calidad_normas'#160#160
        'calidad_procesos'#160#160
        'categorias'#160#160
        'condicionesclimatologicas'#160#160
        'configuracion'#160#160
        'contratos'#160#160
        'contratosxusuario'#160#160
        'convenios'#160#160
        'costodeembarcacion'#160#160
        'cuentas'#160#160
        'departamentos'#160#160
        'diasespeciales'#160#160
        'distribuciondeactividades'#160#160
        'distribuciondeanexo'#160#160
        'embarcaciones'#160#160
        'empleados'#160#160
        'equipos'#160#160
        'equiposxpersonal'#160#160
        'estatus'#160#160
        'estimaciones'#160#160
        'estimacionperiodo'#160#160
        'estimacionxequipo'#160#160
        'estimacionxpartida'#160#160
        'estimacionxpersonal'#160#160
        'estimaembarcaciones'#160#160
        'estimaequipos'#160#160
        'estimagastos'#160#160
        'estimapersonal'#160#160
        'factordecosto'#160#160
        'fases'#160#160
        'fasesxorden'#160#160
        'fasesxproyecto'#160#160
        'fasesxsoldadura'#160#160
        'firmas'#160#160
        'foliodevolucion'#160#160
        'foliosdetrabajo'#160#160
        'foliosrequisicion'#160#160
        'gastosextras'#160#160
        'grupos'#160#160
        'gruposisometrico'#160#160
        'gruposxprograma'#160#160
        'guardias'#160#160
        'guardiaspersonal'#160#160
        'historicodemateriales'#160#160
        'inspeccionxjuntas'#160#160
        'inspeccionxorden'#160#160
        'inventario'#160#160
        'inventario_entrada'#160#160
        'inventario_fentrada'#160#160
        'inventario_fsalida'#160#160
        'inventario_historico'#160#160
        'inventario_salida'#160#160
        'inventarioxalmacen'#160#160
        'isometricos'#160#160
        'isometricos_partidas'#160#160
        'jornadasespeciales'#160#160
        'juntasxconcentrado'#160#160
        'juntasxfase'#160#160
        'juntasxpiezas'#160#160
        'maquinasdesoldar'#160#160
        'materialesxrequisicion'#160#160
        'movimientosdealmacen'#160#160
        'movimientosdeembarcacion'#160#160
        'movimientosdepersonal'#160#160
        'ordenesdetrabajo'#160#160
        'paquetes_e'#160#160
        'paquetes_p'#160#160
        'paquetesdeequipo'#160#160
        'paquetesdeinventario'#160#160
        'paquetesdepersonal'#160#160
        'pernoctan'#160#160
        'personal'#160#160
        'personalprogramado'#160#160
        'plataformas'#160#160
        'platicasdeseguridad'#160#160
        'pndxjuntas'#160#160
        'pndxorden'#160#160
        'presupuestos'#160#160
        'presupuestosxpartida'#160#160
        'propuestatemporal'#160#160
        'proveedores'#160#160
        'recursosanexo'#160#160
        'recursosequipo'#160#160
        'recursosinventario'#160#160
        'recursospersonal'#160#160
        'reportediario'#160#160
        'residencias'#160#160
        'resultadosxsoldadura'#160#160
        'soldadores'#160#160
        'subactividadesxorden'#160#160
        'subcuentas'#160#160
        'suministros'#160#160
        'tiempomuerto'#160#160
        'tiposdeasistencia'#160#160
        'tiposdeconvenio'#160#160
        'tiposdeembarcacion'#160#160
        'tiposdeequipo'#160#160
        'tiposdeestimacion'#160#160
        'tiposdeinventario'#160#160
        'tiposdemovimiento'#160#160
        'tiposdeorden'#160#160
        'tiposdepermiso'#160#160
        'tiposdepersonal'#160#160
        'tiposdeprueba'#160#160
        'tramitedepermisos'#160#160
        'tripulacion'#160#160
        'tripulaciondiaria'#160#160
        'turnos'#160#160)
    end
    object tsNumeroOrden: TDBLookupComboBox
      Left = 117
      Top = 153
      Width = 228
      Height = 22
      Hint = 'Seleccione una orden de trabajo.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'sNumeroOrden'
      ListField = 'sNumeroOrden'
      ListSource = ds_ordenesdetrabajo
      ParentFont = False
      TabOrder = 6
      OnEnter = tsNumeroOrdenEnter
      OnExit = tsNumeroOrdenExit
      OnKeyPress = tsNumeroOrdenKeyPress
    end
    object rbtOrden: TRadioButton
      Left = 8
      Top = 158
      Width = 105
      Height = 17
      Caption = 'Orden de Trabajo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object ds_Sql: TDataSource
    AutoEdit = False
    DataSet = Sql
    Left = 200
    Top = 64
  end
  object SaveSql: TSaveDialog
    DefaultExt = 'SQL'
    FileName = 'Inteligent'
    Filter = 'Archivo de Consulta|*.SQL'
    Left = 296
    Top = 64
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = ordenesdetrabajo
    Left = 246
    Top = 24
  end
  object ordenesdetrabajo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sNumeroOrden from ordenesdetrabajo where sContrato = :Con' +
        'trato and cIdStatus = :status order by sNumeroOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
    Left = 284
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
  end
  object Sql: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 240
    Top = 64
  end
end
