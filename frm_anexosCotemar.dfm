object frmAnexosCotemar: TfrmAnexosCotemar
  Left = 368
  Top = 213
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Catalogos Maestros'
  ClientHeight = 523
  ClientWidth = 997
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = pm1
  Position = poDesktopCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 88
    Top = 32
    Width = 32
    Height = 14
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 104
    Top = 48
    Width = 3
    Height = 14
  end
  object Progress: TProgressBar
    Left = 0
    Top = 506
    Width = 997
    Height = 17
    Align = alBottom
    TabOrder = 0
  end
  object btnOk: TBitBtn
    Left = 290
    Top = 455
    Width = 110
    Height = 39
    Hint = 'Iniciar Proceso'
    Caption = '&Proceso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnOkClick
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
  object btnExit: TBitBtn
    Left = 424
    Top = 455
    Width = 110
    Height = 37
    Hint = 'Salir'
    Caption = '&Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
  object pgCatalogos: TsPageControl
    Left = 0
    Top = 5
    Width = 989
    Height = 444
    ActivePage = pgMaterial
    TabOrder = 3
    OnChange = pgCatalogosChange
    SkinData.SkinSection = 'PAGECONTROL'
    object pgPersonal: TsTabSheet
      Caption = 'Personal '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 444
      object btnAsigna: TBitBtn
        Left = 915
        Top = 106
        Width = 57
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAsignaClick
        Kind = bkOK
      end
      object btnBorra: TBitBtn
        Left = 921
        Top = 311
        Width = 57
        Height = 23
        Caption = 'Borrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnBorraClick
        Kind = bkCancel
      end
      object bntTodo: TBitBtn
        Left = 914
        Top = 148
        Width = 58
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bntTodoClick
        Kind = bkAll
      end
      object grid_personal: TcxGrid
        Left = 4
        Top = 2
        Width = 904
        Height = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object grDetalle: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Personal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_Grid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Personal'
            DataBinding.FieldName = 'sIdPersonal'
            Width = 86
          end
          object Grid_Grid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'tipo'
            Width = 175
          end
          object Grid_Grid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 404
          end
          object Grid_Grid1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
          end
          object Grid_Grid1DBTableView1Column5: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_Grid1DBTableView1Column6: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbgDetalle2: TcxGridLevel
          GridView = grDetalle
        end
      end
      object grid_personal_2: TcxGrid
        Left = 3
        Top = 208
        Width = 905
        Height = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object g1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Personal_2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_2: TcxGridDBColumn
            Caption = 'Personal'
            DataBinding.FieldName = 'sIdPersonal'
            Width = 86
          end
          object Grid_3: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'tipo'
            Width = 175
          end
          object Grid_4: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 404
          end
          object Grid_5: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
          end
          object Grid_6: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_7: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg1: TcxGridLevel
          GridView = g1
        end
      end
    end
    object pgEquipo: TsTabSheet
      Caption = 'Equipo '
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 444
      object btnAsigna2: TBitBtn
        Left = 913
        Top = 95
        Width = 65
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAsigna2Click
        Kind = bkOK
      end
      object btnBorra2: TBitBtn
        Left = 913
        Top = 356
        Width = 65
        Height = 23
        Caption = 'Borrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnBorra2Click
        Kind = bkCancel
      end
      object btnTodo2: TBitBtn
        Left = 913
        Top = 153
        Width = 65
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnTodo2Click
        Kind = bkAll
      end
      object Grid_Equipo: TcxGrid
        Left = 4
        Top = 3
        Width = 903
        Height = 229
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object gE1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Equipo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_8: TcxGridDBColumn
            Caption = 'Equipo'
            DataBinding.FieldName = 'iItemOrden'
            Width = 86
          end
          object Grid_9: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'tipo'
            Width = 175
          end
          object Grid_10: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 404
          end
          object Grid_11: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
          end
          object Grid_12: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_13: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg2: TcxGridLevel
          GridView = gE1
        end
      end
      object Grid_Equipo_2: TcxGrid
        Left = 3
        Top = 238
        Width = 903
        Height = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object gE2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Equipo_2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_1: TcxGridDBColumn
            Caption = 'Equipo'
            DataBinding.FieldName = 'iItemOrden'
            Width = 86
          end
          object Grid_14: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'tipo'
            Width = 175
          end
          object Grid_15: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 404
          end
          object Grid_16: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidad'
          end
          object Grid_17: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_18: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg3: TcxGridLevel
          GridView = gE2
        end
      end
    end
    object pgMaterial: TsTabSheet
      Caption = 'Materiales '
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object btnAsigna3: TBitBtn
        Left = 908
        Top = 131
        Width = 57
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAsigna3Click
        Kind = bkOK
      end
      object btnBorra3: TBitBtn
        Left = 908
        Top = 315
        Width = 65
        Height = 23
        Caption = 'Borrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnBorra3Click
        Kind = bkCancel
      end
      object btnTodo3: TBitBtn
        Left = 908
        Top = 171
        Width = 57
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnTodo3Click
        Kind = bkAll
      end
      object Grid_Material: TcxGrid
        Left = 3
        Top = 3
        Width = 877
        Height = 222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object gm1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Material
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_19: TcxGridDBColumn
            Caption = 'Material'
            DataBinding.FieldName = 'sIdInsumo'
            Width = 86
          end
          object Grid_20: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'sTipoActividad'
            Width = 175
          end
          object Grid_21: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 617
          end
        end
        object dbg4: TcxGridLevel
          GridView = gm1
        end
      end
      object Grid_Material_2: TcxGrid
        Left = 3
        Top = 238
        Width = 877
        Height = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object gm2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Material_2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_22: TcxGridDBColumn
            Caption = 'Material'
            DataBinding.FieldName = 'iItemOrden'
            Width = 86
          end
          object Grid_23: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'sTipoActividad'
            Width = 175
          end
          object Grid_24: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 617
          end
        end
        object dbg5: TcxGridLevel
          GridView = gm2
        end
      end
    end
    object pgAnexo: TsTabSheet
      Caption = 'Anexos '
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 444
      object btnAsigna4: TBitBtn
        Left = 892
        Top = 79
        Width = 65
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAsigna4Click
        Kind = bkOK
      end
      object btnBorra4: TBitBtn
        Left = 892
        Top = 300
        Width = 65
        Height = 23
        Caption = 'Borrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnBorra4Click
        Kind = bkCancel
      end
      object btnTodo4: TBitBtn
        Left = 892
        Top = 124
        Width = 65
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnTodo4Click
        Kind = bkAll
      end
      object grid_25: TcxGrid
        Left = 3
        Top = 3
        Width = 883
        Height = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object dbgM1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Anexo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_26: TcxGridDBColumn
            Caption = 'Anexo'
            DataBinding.FieldName = 'sAnexo'
            PropertiesClassName = 'TcxComboBoxProperties'
            Width = 86
          end
          object Grid_27: TcxGridDBColumn
            Caption = 'Concepto'
            DataBinding.FieldName = 'sNumeroActividad'
            Width = 64
          end
          object Grid_dbg6Column1: TcxGridDBColumn
            Caption = 'Fase'
            DataBinding.FieldName = 'sIdFase'
            Width = 69
          end
          object Grid_28: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 276
          end
          object Grid_dbg6Column2: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidadAnexo'
          end
          object Grid_dbg6Column3: TcxGridDBColumn
            Caption = 'Medida'
            DataBinding.FieldName = 'sMedida'
          end
          object Grid_dbg6Column4: TcxGridDBColumn
            Caption = 'Fecha Inicio'
            DataBinding.FieldName = 'dFechaInicio'
          end
          object Grid_dbg6Column5: TcxGridDBColumn
            Caption = 'Fecha Final'
            DataBinding.FieldName = 'dFechaFinal'
          end
          object Grid_dbg6Column6: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_dbg6Column7: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg7: TcxGridLevel
          GridView = dbgM1
        end
      end
      object grid_29: TcxGrid
        Left = 3
        Top = 209
        Width = 883
        Height = 194
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object dbgM2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Anexo_2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_30: TcxGridDBColumn
            Caption = 'Anexo'
            DataBinding.FieldName = 'sAnexo'
            PropertiesClassName = 'TcxComboBoxProperties'
            Width = 86
          end
          object Grid_31: TcxGridDBColumn
            Caption = 'Concepto'
            DataBinding.FieldName = 'sNumeroActividad'
            Width = 64
          end
          object Grid_32: TcxGridDBColumn
            Caption = 'Fase'
            DataBinding.FieldName = 'sIdFase'
            Width = 69
          end
          object Grid_33: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 276
          end
          object Grid_34: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'dCantidadAnexo'
          end
          object Grid_35: TcxGridDBColumn
            Caption = 'Medida'
            DataBinding.FieldName = 'sMedida'
          end
          object Grid_36: TcxGridDBColumn
            Caption = 'Fecha Inicio'
            DataBinding.FieldName = 'dFechaInicio'
          end
          object Grid_37: TcxGridDBColumn
            Caption = 'Fecha Final'
            DataBinding.FieldName = 'dFechaFinal'
          end
          object Grid_38: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_39: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg8: TcxGridLevel
          GridView = dbgM2
        end
      end
    end
    object pgHerramienta: TsTabSheet
      Caption = 'Herramientas'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 444
      object btnAsigna5: TBitBtn
        Left = 839
        Top = 131
        Width = 65
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAsigna5Click
        Kind = bkOK
      end
      object btnBorra5: TBitBtn
        Left = 840
        Top = 300
        Width = 65
        Height = 23
        Caption = 'Borrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnBorra5Click
        Kind = bkCancel
      end
      object btnTodo5: TBitBtn
        Left = 839
        Top = 189
        Width = 65
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnTodo5Click
        Kind = bkAll
      end
      object grid_Herramienta: TcxGrid
        Left = 3
        Top = 3
        Width = 830
        Height = 198
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object dbgHerramienta: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Herramienta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_41: TcxGridDBColumn
            Caption = 'Herramienta'
            DataBinding.FieldName = 'sIdHerramientas'
            Width = 86
          end
          object Grid_44: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 526
          end
          object Grid_46: TcxGridDBColumn
            Caption = 'Medida'
            DataBinding.FieldName = 'sMedida'
          end
          object Grid_49: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_50: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg9: TcxGridLevel
          GridView = dbgHerramienta
        end
      end
      object grid_Herramienta_2: TcxGrid
        Left = 4
        Top = 207
        Width = 830
        Height = 205
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object dbgHerramienta2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Herramienta2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_42: TcxGridDBColumn
            Caption = 'Herramienta'
            DataBinding.FieldName = 'sIdHerramientas'
            Width = 86
          end
          object Grid_43: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 526
          end
          object Grid_45: TcxGridDBColumn
            Caption = 'Medida'
            DataBinding.FieldName = 'sMedida'
          end
          object Grid_47: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_48: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg10: TcxGridLevel
          GridView = dbgHerramienta2
        end
      end
    end
    object pgBasicos: TsTabSheet
      Caption = 'Basicos'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 444
      object btnAsigna6: TBitBtn
        Left = 885
        Top = 95
        Width = 65
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAsigna6Click
        Kind = bkOK
      end
      object btnBorrar6: TBitBtn
        Left = 885
        Top = 308
        Width = 65
        Height = 23
        Caption = 'Borrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnBorrar6Click
        Kind = bkCancel
      end
      object btnTodos6: TBitBtn
        Left = 885
        Top = 132
        Width = 65
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnTodos6Click
        Kind = bkAll
      end
      object grid_Basico: TcxGrid
        Left = 3
        Top = 3
        Width = 830
        Height = 198
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object dbgBasico: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_basicos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_51: TcxGridDBColumn
            Caption = 'Basico'
            DataBinding.FieldName = 'sIdBasico'
            Width = 86
          end
          object Grid_52: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 526
          end
          object Grid_53: TcxGridDBColumn
            Caption = 'Medida'
            DataBinding.FieldName = 'sMedida'
          end
          object Grid_54: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_55: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg11: TcxGridLevel
          GridView = dbgBasico
        end
      end
      object grid_Basico_2: TcxGrid
        Left = 3
        Top = 207
        Width = 830
        Height = 198
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object dbgBasico2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_basicos2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object Grid_56: TcxGridDBColumn
            Caption = 'Basico'
            DataBinding.FieldName = 'sIdBasico'
            Width = 86
          end
          object Grid_57: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            Width = 526
          end
          object Grid_58: TcxGridDBColumn
            Caption = 'Medida'
            DataBinding.FieldName = 'sMedida'
          end
          object Grid_59: TcxGridDBColumn
            Caption = 'Venta MN'
            DataBinding.FieldName = 'dVentaMN'
          end
          object Grid_60: TcxGridDBColumn
            Caption = 'Venta DLL'
            DataBinding.FieldName = 'dVentaDLL'
          end
        end
        object dbg12: TcxGridLevel
          GridView = dbgBasico2
        end
      end
    end
  end
  object rxPersonal: TRxMemoryData
    FieldDefs = <>
    Left = 16
    Top = 96
  end
  object ds_Personal_2: TDataSource
    DataSet = rxPersonal_2
    OnDataChange = ds_Personal_2DataChange
    Left = 46
    Top = 128
  end
  object rxPersonal_2: TRxMemoryData
    FieldDefs = <>
    Left = 16
    Top = 128
  end
  object ds_Personal: TDataSource
    DataSet = rxPersonal
    Left = 48
    Top = 94
  end
  object Q_Insertar: TZQuery
    Connection = connection.zConnection
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 385
    Top = 367
  end
  object ds_Insertar: TDataSource
    DataSet = Q_Insertar
    OnDataChange = ds_Personal_2DataChange
    Left = 416
    Top = 368
  end
  object rxEquipo: TRxMemoryData
    FieldDefs = <>
    Left = 96
    Top = 128
  end
  object ds_Equipo: TDataSource
    DataSet = rxEquipo
    Left = 128
    Top = 126
  end
  object rxEquipo_2: TRxMemoryData
    FieldDefs = <>
    Left = 96
    Top = 168
  end
  object ds_Equipo_2: TDataSource
    DataSet = rxEquipo_2
    OnDataChange = ds_Personal_2DataChange
    Left = 134
    Top = 168
  end
  object rxMaterial: TRxMemoryData
    FieldDefs = <>
    Left = 216
    Top = 168
  end
  object ds_Material: TDataSource
    DataSet = rxMaterial
    Left = 248
    Top = 174
  end
  object rxMaterial_2: TRxMemoryData
    FieldDefs = <>
    Left = 216
    Top = 208
  end
  object ds_Material_2: TDataSource
    DataSet = rxMaterial_2
    OnDataChange = ds_Personal_2DataChange
    Left = 254
    Top = 208
  end
  object rxAnexo: TRxMemoryData
    FieldDefs = <>
    Left = 328
    Top = 184
  end
  object ds_Anexo: TDataSource
    DataSet = rxAnexo
    Left = 360
    Top = 182
  end
  object rxAnexo_2: TRxMemoryData
    FieldDefs = <>
    Left = 328
    Top = 224
  end
  object ds_Anexo_2: TDataSource
    DataSet = rxAnexo_2
    Left = 366
    Top = 224
  end
  object rxHerramienta: TRxMemoryData
    FieldDefs = <>
    Left = 456
    Top = 216
  end
  object ds_Herramienta: TDataSource
    DataSet = rxHerramienta
    Left = 496
    Top = 214
  end
  object rxHerramienta2: TRxMemoryData
    FieldDefs = <>
    Left = 456
    Top = 248
  end
  object ds_Herramienta2: TDataSource
    DataSet = rxHerramienta2
    OnDataChange = ds_Personal_2DataChange
    Left = 494
    Top = 248
  end
  object rxBasicos: TRxMemoryData
    FieldDefs = <>
    Left = 592
    Top = 248
  end
  object ds_basicos: TDataSource
    DataSet = rxBasicos
    Left = 632
    Top = 246
  end
  object rxBasicos2: TRxMemoryData
    FieldDefs = <>
    Left = 592
    Top = 280
  end
  object ds_basicos2: TDataSource
    DataSet = rxBasicos2
    OnDataChange = ds_Personal_2DataChange
    Left = 630
    Top = 280
  end
  object Zanexo: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 480
    Top = 368
  end
  object pm1: TPopupMenu
    Images = connection.IconosBarra
    Left = 464
    Top = 304
    object mniProceso1: TMenuItem
      Caption = '&Proceso'
      ImageIndex = 2
      OnClick = mniProceso1Click
    end
    object mniSalir1: TMenuItem
      Caption = '&Salir'
      ImageIndex = 7
      OnClick = mniSalir1Click
    end
  end
end