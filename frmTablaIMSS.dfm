object frm_TablaIMSS: Tfrm_TablaIMSS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'IMSS'
  ClientHeight = 613
  ClientWidth = 1364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    1364
    613)
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 1149
    Top = 8
    Width = 43
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Vigencia:'
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 75
    Height = 541
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 75
    ExplicitHeight = 541
    inherited AdvPanel1: TAdvPanel
      Width = 75
      Height = 541
      ExplicitWidth = 75
      ExplicitHeight = 541
      FullHeight = 0
      inherited btnEdit: TcxButton
        OnClick = frmBarra1btnEditClick
      end
      inherited btnPost: TcxButton
        OnClick = frmBarra1btnPostClick
      end
      inherited btnCancel: TcxButton
        OnClick = frmBarra1btnCancelClick
      end
      inherited btnDelete: TcxButton
        OnClick = frmBarra1btnDeleteClick
      end
      inherited btnPrinter: TcxButton
        OnClick = frmBarra1btnPrinterClick
      end
      inherited btnRefresh: TcxButton
        OnClick = frmBarra1btnRefreshClick
      end
      inherited btnExit: TcxButton
        OnClick = frmBarra1btnExitClick
      end
      inherited btnAdd: TcxButton
        Top = 7
        OnClick = frmBarra1btnAddClick
        ExplicitTop = 7
      end
    end
    inherited IconosBarra: TcxImageList
      FormatVersion = 1
    end
    inherited dxbrmngrPrincipal: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        0)
    end
  end
  object Grid_catCuentas: TRxDBGrid
    AlignWithMargins = True
    Left = 80
    Top = 30
    Width = 115
    Height = 580
    Cursor = crHandPoint
    Margins.Left = 80
    Margins.Top = 30
    Align = alLeft
    Color = clWhite
    Ctl3D = True
    DataSource = dsTablaImss
    FixedColor = clWhite
    Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnGetCellParams = Grid_catCuentasGetCellParams
    Columns = <
      item
        Expanded = False
        FieldName = 'dVigencia'
        Width = 112
        Visible = True
      end>
  end
  object cxscrlbxMain: TcxScrollBox
    AlignWithMargins = True
    Left = 201
    Top = 30
    Width = 1160
    Height = 580
    Margins.Top = 30
    Align = alClient
    TabOrder = 2
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 25
      Width = 286
      Height = 550
      Margins.Top = 25
      Caption = 'Enfermedades y Maternidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label7: TLabel
        Left = 14
        Top = 24
        Width = 156
        Height = 16
        Caption = 'Prestaciones en Especie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 46
        Width = 56
        Height = 13
        Caption = 'Cuota Fija'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 158
        Width = 59
        Height = 13
        Caption = 'Excedente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 14
        Top = 273
        Width = 150
        Height = 16
        Caption = 'Prestaciones en Dinero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 24
        Top = 295
        Width = 31
        Height = 13
        Caption = 'Unica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 14
        Top = 422
        Width = 168
        Height = 16
        Caption = 'Gas. Medicos Pencionados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 65
        Width = 50
        Height = 13
        Caption = 'Del Patr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 24
        Top = 92
        Width = 70
        Height = 13
        Caption = 'Del Asegurado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 24
        Top = 117
        Width = 24
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 24
        Top = 177
        Width = 50
        Height = 13
        Caption = 'Del Patr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 24
        Top = 204
        Width = 70
        Height = 13
        Caption = 'Del Asegurado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 24
        Top = 229
        Width = 24
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 24
        Top = 316
        Width = 50
        Height = 13
        Caption = 'Del Patr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 24
        Top = 343
        Width = 70
        Height = 13
        Caption = 'Del Asegurado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 24
        Top = 368
        Width = 24
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 24
        Top = 455
        Width = 50
        Height = 13
        Caption = 'Del Patr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 24
        Top = 482
        Width = 70
        Height = 13
        Caption = 'Del Asegurado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 24
        Top = 507
        Width = 24
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtPatronCF: TDBEdit
        Left = 100
        Top = 62
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fPatronCF'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = txtPatronCFKeyPress
      end
      object txtAseguradoCF: TDBEdit
        Left = 100
        Top = 89
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fAseguradoCF'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txtAseguradoCFKeyPress
      end
      object txtTotalCF: TDBEdit
        Left = 100
        Top = 114
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fTotalCF'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = txtTotalCFKeyPress
      end
      object txtTotalEX: TDBEdit
        Left = 100
        Top = 226
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fTotalEX'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = txtTotalEXKeyPress
      end
      object txtAseguradoEX: TDBEdit
        Left = 100
        Top = 201
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fAseguradoEX'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = txtAseguradoEXKeyPress
      end
      object txtPatronEX: TDBEdit
        Left = 100
        Top = 174
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fPatronEX'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = txtPatronEXKeyPress
      end
      object txtTotalUN: TDBEdit
        Left = 100
        Top = 365
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fTotalUN'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = txtTotalUNKeyPress
      end
      object txtAseguradoUN: TDBEdit
        Left = 100
        Top = 340
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fAseguradoUN'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = txtAseguradoUNKeyPress
      end
      object txtPatronUN: TDBEdit
        Left = 100
        Top = 313
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fPatronUN'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = txtPatronUNKeyPress
      end
      object txtTotalGM: TDBEdit
        Left = 100
        Top = 504
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fTotalGM'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnKeyPress = txtTotalGMKeyPress
      end
      object txtAseguradoGM: TDBEdit
        Left = 100
        Top = 479
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fAseguradoGM'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnKeyPress = txtAseguradoGMKeyPress
      end
      object txtPatronGM: TDBEdit
        Left = 100
        Top = 452
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fPatronGM'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyPress = txtPatronGMKeyPress
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 581
      Top = 35
      Width = 280
      Height = 150
      Margins.Top = 25
      Caption = 'Invalides y Vida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label22: TLabel
        Left = 21
        Top = 55
        Width = 50
        Height = 13
        Caption = 'Del Patr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 21
        Top = 82
        Width = 70
        Height = 13
        Caption = 'Del Asegurado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 21
        Top = 107
        Width = 24
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtTotalIV: TDBEdit
        Left = 97
        Top = 104
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fTotalIV'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = txtTotalIVKeyPress
      end
      object txtAseguradoIV: TDBEdit
        Left = 97
        Top = 79
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fAseguradoIV'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txtAseguradoIVKeyPress
      end
      object txtPatronIV: TDBEdit
        Left = 97
        Top = 52
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fPatronIV'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = txtPatronIVKeyPress
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 581
      Top = 193
      Width = 280
      Height = 166
      Margins.Top = 25
      Caption = 'Guar. y Gas. de Prev. Soc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label25: TLabel
        Left = 21
        Top = 49
        Width = 50
        Height = 13
        Caption = 'Del Patr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 21
        Top = 76
        Width = 70
        Height = 13
        Caption = 'Del Asegurado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 21
        Top = 107
        Width = 24
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object txtTotalGG: TDBEdit
        Left = 97
        Top = 99
        Width = 160
        Height = 21
        Color = clWhite
        DataField = 'fTotalGG'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = txtTotalGGKeyPress
      end
      object txtAseguradoGG: TDBEdit
        Left = 97
        Top = 73
        Width = 160
        Height = 21
        Color = clWhite
        DataField = 'fAseguradoGG'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txtAseguradoGGKeyPress
      end
      object txtPatronGG: TDBEdit
        Left = 97
        Top = 46
        Width = 160
        Height = 21
        Color = clWhite
        DataField = 'fPatronGG'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = txtPatronGGKeyPress
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 295
      Top = 26
      Width = 280
      Height = 324
      Margins.Top = 25
      Caption = 'Retiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label1: TLabel
        Left = 15
        Top = 158
        Width = 93
        Height = 13
        Caption = 'Cesantia y Vejez'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 15
        Top = 44
        Width = 35
        Height = 13
        Caption = 'Retiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 21
        Top = 65
        Width = 50
        Height = 13
        Caption = 'Del Patr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 21
        Top = 92
        Width = 70
        Height = 13
        Caption = 'Del Asegurado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 21
        Top = 117
        Width = 24
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 21
        Top = 217
        Width = 50
        Height = 13
        Caption = 'Del Patr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 21
        Top = 244
        Width = 70
        Height = 13
        Caption = 'Del Asegurado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 21
        Top = 269
        Width = 24
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 15
        Top = 298
        Width = 29
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtPatronRT: TDBEdit
        Left = 97
        Top = 62
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fPatronRT'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = txtPatronRTKeyPress
      end
      object txtAseguradoRT: TDBEdit
        Left = 97
        Top = 89
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fAseguradoRT'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txtAseguradoRTKeyPress
      end
      object txtTotalRT: TDBEdit
        Left = 97
        Top = 114
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fTotalRT'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = txtTotalRTKeyPress
      end
      object txtTotalCV: TDBEdit
        Left = 97
        Top = 266
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fTotalCV'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = txtTotalCVKeyPress
      end
      object txtAseguradoCV: TDBEdit
        Left = 97
        Top = 241
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fAseguradoCV'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = txtAseguradoCVKeyPress
      end
      object txtPatronCV: TDBEdit
        Left = 97
        Top = 214
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fPatronCV'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = txtPatronCVKeyPress
      end
      object txtTotalRTCV: TDBEdit
        Left = 97
        Top = 295
        Width = 166
        Height = 21
        Color = clWhite
        DataField = 'fTotal'
        DataSource = dsTablaImss
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = txtTotalRTCVKeyPress
      end
    end
  end
  object dtpVigencia: TDBDateEdit
    Left = 1195
    Top = 6
    Width = 166
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'dVigencia'
    DataSource = dsTablaImss
    Color = clWhite
    Anchors = [akTop, akRight]
    NumGlyphs = 2
    TabOrder = 3
    OnKeyPress = dtpVigenciaKeyPress
  end
  object dsTablaImss: TDataSource
    AutoEdit = False
    DataSet = qryTablaImss
    Left = 559
    Top = 1
  end
  object qryTablaImss: TZQuery
    Connection = connection.zConnection
    AfterInsert = qryTablaImssAfterInsert
    SQL.Strings = (
      'select * from nom_tablaimss'
      'order by dVigencia'
      '')
    Params = <>
    Left = 530
    Top = 1
    object qryTablaImssiIdTablaImss: TIntegerField
      FieldName = 'iIdTablaImss'
    end
    object qryTablaImssdVigencia: TDateField
      FieldName = 'dVigencia'
      Required = True
    end
    object qryTablaImssfPatronCF: TFloatField
      FieldName = 'fPatronCF'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfAseguradoCF: TFloatField
      FieldName = 'fAseguradoCF'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotalCF: TFloatField
      FieldName = 'fTotalCF'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfPatronEX: TFloatField
      FieldName = 'fPatronEX'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfAseguradoEX: TFloatField
      FieldName = 'fAseguradoEX'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotalEX: TFloatField
      FieldName = 'fTotalEX'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfPatronUN: TFloatField
      FieldName = 'fPatronUN'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfAseguradoUN: TFloatField
      FieldName = 'fAseguradoUN'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotalUN: TFloatField
      FieldName = 'fTotalUN'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfPatronGM: TFloatField
      FieldName = 'fPatronGM'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfAseguradoGM: TFloatField
      FieldName = 'fAseguradoGM'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotalGM: TFloatField
      FieldName = 'fTotalGM'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfPatronIV: TFloatField
      FieldName = 'fPatronIV'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfAseguradoIV: TFloatField
      FieldName = 'fAseguradoIV'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotalIV: TFloatField
      FieldName = 'fTotalIV'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfPatronGG: TFloatField
      FieldName = 'fPatronGG'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfAseguradoGG: TFloatField
      FieldName = 'fAseguradoGG'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotalGG: TFloatField
      FieldName = 'fTotalGG'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfPatronRT: TFloatField
      FieldName = 'fPatronRT'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfAseguradoRT: TFloatField
      FieldName = 'fAseguradoRT'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotalRT: TFloatField
      FieldName = 'fTotalRT'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfPatronCV: TFloatField
      FieldName = 'fPatronCV'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfAseguradoCV: TFloatField
      FieldName = 'fAseguradoCV'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotalCV: TFloatField
      FieldName = 'fTotalCV'
      DisplayFormat = '#0.00 %'
    end
    object qryTablaImssfTotal: TFloatField
      FieldName = 'fTotal'
      DisplayFormat = '#0.00 %'
    end
  end
  object reporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39813.804003356500000000
    ReportOptions.LastChange = 40567.789817974540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      
        '   sMes : Array [1..12] of String ;                             ' +
        '                                                     '
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
    Left = 610
    Top = 2
    Datasets = <
      item
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'ingresos'
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
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'ingresos'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 1.559060000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ingresos."sIdArticulo"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 151.929190000000000000
          Top = 2.000000000000000000
          Width = 495.118430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frm_ReportesIngresoscias.frxCompania
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ingresos."sDescripcion"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 646.299630000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frm_ReportesIngresoscias.frxCompania
          DataSetName = 'frxCompania'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ingresos."dImporte"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Left = 177.637910000000000000
          Top = 11.338590000000000000
          Width = 355.275820000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sNombre"]'
            ''
            '[frConfiguracion."sDireccion1"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 98.267780000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 49.559060000000000000
          Width = 343.937230000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '     [frConfiguracion."sPresidente"]'
            ''
            ''
            '                              ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = -7.559060000000000000
          Top = 68.456710000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTitPresidente"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 415.748300000000000000
          Top = 51.102350000000000000
          Width = 321.260050000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTesorerom"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 415.748300000000000000
          Top = 70.000000000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sTitTesorerom"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 27.677180000000000000
        Top = 166.299320000000000000
        Width = 740.409927000000000000
        Condition = '<ingresos."iAnno">'
        object Memo2: TfrxMemoView
          Top = 7.559060000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frPrinter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cuenta.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 147.401670000000000000
          Top = 7.559060000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frPrinter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 642.520100000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frPrinter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'ingresos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iAnno=iAnno'
      'mDescripcion=mDescripcion'
      'dImporte=dImporte'
      'sPeriocidad=sPeriocidad'
      'sDescripcion=sDescripcion'
      'iOrden=iOrden'
      'sIdArticulo=sIdArticulo'
      'sImprimeRecibo=sImprimeRecibo')
    DataSet = qryTablaImss
    BCDToCurrency = False
    Left = 638
    Top = 2
  end
end
