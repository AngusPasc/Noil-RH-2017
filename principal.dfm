object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Sincronizacion de servidores de B.D.'
  ClientHeight = 477
  ClientWidth = 879
  Color = clWindow
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 648
    Top = 392
    Width = 199
    Height = 13
    Caption = 'Actualizacion 18-Agosto-2012 12:53 p.m.'
  end
  object tNewGroupBox1: tNewGroupBox
    Left = -2
    Top = 4
    Width = 238
    Height = 422
    Caption = 'Parametros de Sincronizaci'#243'n '
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    HighLightColor = clBtnHighlight
    ShadowColor = 10928586
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 234
    Title.HighLightColor = 10928586
    Title.ShadowColor = clWhite
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaisedLine
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 20
    Title.BkColor = 8898996
    TransparentMode = True
    Border = True
    Shape = tsRectRound
    object Label2: TLabel
      Left = 4
      Top = 141
      Width = 165
      Height = 14
      Caption = 'Parametros de Sincronizaci'#243'n'
    end
    object Label3: TLabel
      Left = 4
      Top = 102
      Width = 150
      Height = 14
      Caption = 'Periodos de Sincronizaci'#243'n'
    end
    object Label1: TLabel
      Left = 4
      Top = 203
      Width = 59
      Height = 14
      Caption = 'Fecha Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 4
      Top = 223
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
    object Label5: TLabel
      Left = 4
      Top = 63
      Width = 48
      Height = 14
      Caption = 'Contrato'
    end
    object Label9: TLabel
      Left = 4
      Top = 158
      Width = 94
      Height = 14
      Caption = 'Orden de Trabajo'
    end
    object Label10: TLabel
      Left = 16
      Top = 352
      Width = 23
      Height = 14
      Caption = 'BD 1'
    end
    object Label13: TLabel
      Left = 4
      Top = 25
      Width = 134
      Height = 13
      Caption = 'Server Principal Destino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object tsServer: TEdit
      Left = 4
      Top = 39
      Width = 230
      Height = 22
      Color = clWhite
      TabOrder = 0
    end
    object chkReportes: TCheckBox
      Left = 3
      Top = 244
      Width = 109
      Height = 17
      Caption = 'Reportes Diarios'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object chkGeneradores: TCheckBox
      Left = 3
      Top = 282
      Width = 133
      Height = 17
      Caption = 'Generadores de Obra'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object cmbFechas: TComboBox
      Left = 4
      Top = 116
      Width = 230
      Height = 22
      Style = csDropDownList
      Color = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'El Dia Actual'
      Items.Strings = (
        'El Dia Actual'
        '1 Dias hacia Atras'
        '2 Dias Hacia Atras')
    end
    object tdIdFecha: TDateTimePicker
      Left = 76
      Top = 196
      Width = 81
      Height = 22
      Date = 38632.000000000000000000
      Time = 38632.000000000000000000
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object tdFechaFinal: TDateTimePicker
      Left = 76
      Top = 218
      Width = 81
      Height = 22
      Date = 38632.000000000000000000
      Time = 38632.000000000000000000
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object chkConfiguracion: TCheckBox
      Left = 3
      Top = 301
      Width = 213
      Height = 17
      Caption = 'Check a parametros de configuraci'#243'n'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object tsContrato: TEdit
      Left = 4
      Top = 77
      Width = 229
      Height = 22
      Color = clWhite
      TabOrder = 1
    end
    object chkParametros: TCheckBox
      Left = 3
      Top = 321
      Width = 229
      Height = 17
      Caption = 'Exportar Solo Parametros de Configuraci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = chkParametrosClick
    end
    object tsNumeroOrden: TEdit
      Left = 4
      Top = 173
      Width = 229
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 9
      Text = 'XXX'
    end
    object chkFotografias: TCheckBox
      Left = 3
      Top = 263
      Width = 109
      Height = 17
      Caption = 'Solo Fotografias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object chkDesde: TCheckBox
      Left = 64
      Top = 63
      Width = 60
      Height = 14
      Caption = 'Desde'
      TabOrder = 11
    end
    object txtBase1: TEdit
      Left = 48
      Top = 352
      Width = 161
      Height = 22
      TabOrder = 12
      Text = 'cotemar'
    end
  end
  object tsGroup: tNewGroupBox
    Left = 240
    Top = 4
    Width = 239
    Height = 422
    Caption = 'Servidores de Base de Datos Fuente'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    HighLightColor = clBtnHighlight
    ShadowColor = 10928586
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 234
    Title.HighLightColor = 10928586
    Title.ShadowColor = clWhite
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaisedLine
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 20
    Title.BkColor = 8898996
    TransparentMode = True
    Border = True
    Shape = tsRectRound
    DesignSize = (
      239
      422)
    object Label11: TLabel
      Left = 16
      Top = 352
      Width = 23
      Height = 14
      Caption = 'BD 2'
    end
    object ChkServidores: TCheckListBox
      Left = 2
      Top = 24
      Width = 233
      Height = 313
      Anchors = [akLeft, akTop, akRight]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
    end
    object btnAdd: TBitBtn
      Left = 33
      Top = 386
      Width = 40
      Height = 25
      TabOrder = 1
      OnClick = btnAddClick
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000F0000000E0000000100
        04000000000070000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8880888888888888888088888888888888808888880008888880888888070888
        8880888888070888888088800007000088808880777777708880888000070000
        8880888888070888888088888807088888808888880008888880888888888888
        88808888888888888880}
    end
    object btnEdti: TBitBtn
      Left = 73
      Top = 386
      Width = 40
      Height = 25
      TabOrder = 2
      OnClick = btnEdtiClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000000
        00008888880FFFFFFFF000800000FF0F00F0E00BBBBB0FFFFFF0E0BBBB000FFF
        F0F0E0BBBBBBB0F00FF0E0BBBB00000C0FF0E0BBBBBBBBB0FFF0E0BB0000000F
        FFF0000BBB00C0FF00F08880000C0FFFFFF0888880C0FFFF000088880C0FF00F
        0FF08880C00FFFFF0F08880C080FFFFF00888880880000000888}
    end
    object btnEliminar: TBitBtn
      Left = 113
      Top = 386
      Width = 40
      Height = 25
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 3
      OnClick = btnEliminarClick
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888888881F88881F8888888888888991F8888889F8888191F888881
        F888888199F88891F8888888191F819F88888888819199F88888888888919F88
        88888888891911F888888888191F89F88888889191F88819F88881919F888881
        9F88891F8888888819F88888888888888888}
    end
    object txtBase2: TEdit
      Left = 48
      Top = 352
      Width = 161
      Height = 22
      TabOrder = 4
      Text = 'cotemar'
    end
  end
  object tNewGroupBox2: tNewGroupBox
    Left = 481
    Top = 4
    Width = 393
    Height = 374
    Caption = 'Server Log'
    Color = 7847370
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    HighLightColor = clBtnHighlight
    ShadowColor = 10928586
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 390
    Title.HighLightColor = 10928586
    Title.ShadowColor = clWhite
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaisedLine
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 20
    Title.BkColor = 8898996
    TransparentMode = True
    Border = True
    Shape = tsRectRound
    object tiComentarios: TMemo
      Left = 1
      Top = 24
      Width = 388
      Height = 345
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object btnSincroniza: TButton
    Left = 31
    Top = 389
    Width = 157
    Height = 25
    Caption = '&Sincronizaci'#243'n Manual'
    TabOrder = 3
    OnClick = btnSincronizaClick
  end
  object grTablas: tNewGroupBox
    Left = 288
    Top = 72
    Width = 369
    Height = 250
    Caption = 'Tablas a Sincronizar'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    Visible = False
    HighLightColor = clBtnHighlight
    ShadowColor = clWhite
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 365
    Title.HighLightColor = 10928586
    Title.ShadowColor = clWhite
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaisedLine
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 20
    Title.BkColor = clGray
    TransparentMode = False
    Border = True
    Shape = tsRectRound
    object Label7: TLabel
      Left = 172
      Top = 227
      Width = 122
      Height = 14
      Caption = 'Password INTEL-CODE'
    end
    object Label8: TLabel
      Left = 7
      Top = 228
      Width = 52
      Height = 14
      Caption = 'Convenio'
    end
    object tblContratos: TCheckBox
      Left = 8
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Contratos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object tblConfiguracion: TCheckBox
      Left = 8
      Top = 39
      Width = 89
      Height = 17
      Caption = 'Configuraci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tblConvenios: TCheckBox
      Left = 8
      Top = 55
      Width = 73
      Height = 17
      Caption = 'Convenios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object tblAnexosMensuales: TCheckBox
      Left = 8
      Top = 70
      Width = 121
      Height = 17
      Caption = 'Anexos Mensuales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object tblActividadesxAnexo: TCheckBox
      Left = 8
      Top = 85
      Width = 129
      Height = 17
      Caption = 'Actividades x Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object tblOrdenesdeTrabajo: TCheckBox
      Left = 8
      Top = 100
      Width = 121
      Height = 17
      Caption = 'Ordenes de Trabajo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object tblActividadesxOrden: TCheckBox
      Left = 8
      Top = 115
      Width = 121
      Height = 17
      Caption = 'Actividades x Orden'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object tblAvancesProgramados: TCheckBox
      Left = 8
      Top = 130
      Width = 184
      Height = 17
      Caption = 'Avances Globales Programados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object tblAvancesFisicos: TCheckBox
      Left = 8
      Top = 144
      Width = 105
      Height = 17
      Caption = 'Avances Fisicos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object tblDistribuciondeActividades: TCheckBox
      Left = 8
      Top = 160
      Width = 153
      Height = 17
      Caption = 'Distribucion de Actividades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object tblDistribuciondeAnexo: TCheckBox
      Left = 8
      Top = 176
      Width = 129
      Height = 17
      Caption = 'Distribucion de Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object tblAvancesxActividad: TCheckBox
      Left = 195
      Top = 23
      Width = 129
      Height = 17
      Caption = 'Avances x Actividad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object tsPassword: TEdit
      Left = 296
      Top = 220
      Width = 57
      Height = 22
      CharCase = ecUpperCase
      Color = 15138559
      MaxLength = 10
      PasswordChar = '*'
      TabOrder = 12
    end
    object tblTiposdeMovimiento: TCheckBox
      Left = 195
      Top = 54
      Width = 129
      Height = 17
      Caption = 'Tipos de Movimiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object tblTurnos: TCheckBox
      Left = 195
      Top = 69
      Width = 129
      Height = 17
      Caption = 'Turnos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object tblPersonal: TCheckBox
      Left = 195
      Top = 84
      Width = 129
      Height = 17
      Caption = 'Personal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object tblEquipos: TCheckBox
      Left = 195
      Top = 99
      Width = 129
      Height = 17
      Caption = 'Equipos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object tblGrupos: TCheckBox
      Left = 195
      Top = 114
      Width = 137
      Height = 17
      Caption = 'Grupos de Isometricos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object tblIsometricos: TCheckBox
      Left = 195
      Top = 128
      Width = 158
      Height = 17
      Caption = 'Isometricos de Construcci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object tblFirmas: TCheckBox
      Left = 195
      Top = 143
      Width = 158
      Height = 17
      Caption = 'Firmantes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object tblConfiguracionGral: TCheckBox
      Left = 195
      Top = 195
      Width = 158
      Height = 17
      Caption = 'Configuraci'#243'n General'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object tblAlcances: TCheckBox
      Left = 195
      Top = 38
      Width = 166
      Height = 17
      Caption = 'Alcances x Partida Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object tsIdConvenio: TEdit
      Left = 104
      Top = 219
      Width = 57
      Height = 22
      CharCase = ecUpperCase
      Color = 15138559
      TabOrder = 24
      Text = 'XXX'
    end
    object tblTrinomio: TCheckBox
      Left = 195
      Top = 159
      Width = 158
      Height = 17
      Caption = 'Trinomios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object tblOrdenCambio: TCheckBox
      Left = 195
      Top = 176
      Width = 158
      Height = 17
      Caption = 'Ordenes de Cambio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
  end
  object tspass1: TEdit
    Left = 8
    Top = 443
    Width = 159
    Height = 21
    Color = clWhite
    TabOrder = 5
  end
  object tspass2: TEdit
    Left = 242
    Top = 443
    Width = 153
    Height = 21
    Color = clWhite
    TabOrder = 6
  end
  object Timer: TTimer
    Left = 104
    Top = 24
  end
  object adoConexion: TZConnection
    Protocol = 'mysql'
    Left = 706
    Top = 67
  end
  object command: TZReadOnlyQuery
    Connection = adoConexion2
    Params = <>
    Left = 162
    Top = 195
  end
  object adoConsulta2: TZReadOnlyQuery
    Connection = adoConexion2
    Params = <>
    Left = 130
    Top = 187
  end
  object QryDestino: TZReadOnlyQuery
    Connection = adoConexion2
    Params = <>
    Left = 98
    Top = 179
  end
  object ordenesdetrabajo: TZReadOnlyQuery
    Connection = adoConexion
    Params = <>
    Left = 592
    Top = 203
  end
  object adoConexion2: TZConnection
    Protocol = 'mysql'
    Left = 192
    Top = 227
  end
  object QryConfiguracion: TZReadOnlyQuery
    Connection = adoConexion
    SQL.Strings = (
      
        'Select sIdConvenio From Configuracion  Where sContrato = :Contra' +
        'to')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 616
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object QryContratos: TZReadOnlyQuery
    Connection = adoConexion
    SQL.Strings = (
      'Select sContrato From Contratos Order By sContrato')
    Params = <>
    Left = 648
    Top = 203
  end
  object QryReporteDiario: TZReadOnlyQuery
    Connection = adoConexion
    Params = <>
    Left = 600
    Top = 63
  end
  object QryOrigen: TZReadOnlyQuery
    Connection = adoConexion
    Params = <>
    Left = 632
    Top = 67
  end
  object adoConsulta: TZReadOnlyQuery
    Connection = adoConexion
    Params = <>
    Left = 664
    Top = 67
  end
  object cmdExporta: TZQuery
    Connection = adoConexion
    Params = <>
    Left = 560
    Top = 63
  end
end
