object frmModificaDescripcion: TfrmModificaDescripcion
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Modificaci'#243'n de Descripci'#243'n/Comentarios de actividades diarias'
  ClientHeight = 335
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 300
    Width = 628
    Height = 35
    Align = alBottom
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 473
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 548
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object DescNotas: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 300
    Align = alClient
    TabOrder = 2
    Visible = False
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 626
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 6
      TabOrder = 0
      object Label3: TLabel
        Left = 6
        Top = 0
        Width = 620
        Height = 16
        Align = alClient
        Caption = 'Descripci'#243'n de la Nota/Comentario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 199
        ExplicitHeight = 13
      end
    end
    object DBMemo3: TDBMemo
      Left = 1
      Top = 17
      Width = 626
      Height = 282
      TabStop = False
      Align = alClient
      DataField = 'mDescripcion'
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object DescFotos: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 300
    Align = alClient
    TabOrder = 3
    Visible = False
    object Splitter2: TSplitter
      Left = 218
      Top = 17
      Height = 282
      ExplicitLeft = 226
      ExplicitTop = 24
    end
    object DBMemo4: TDBMemo
      Left = 221
      Top = 17
      Width = 406
      Height = 282
      TabStop = False
      Align = alClient
      DataField = 'sDescripcion'
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 626
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 6
      TabOrder = 1
      object Label4: TLabel
        Left = 6
        Top = 0
        Width = 620
        Height = 16
        Align = alClient
        Caption = 'Descripci'#243'n de pi'#233' de p'#225'gina de fotograf'#237'as:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 245
        ExplicitHeight = 13
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 17
      Width = 217
      Height = 282
      Align = alLeft
      Padding.Top = 60
      Padding.Bottom = 60
      TabOrder = 2
      ExplicitLeft = -2
      ExplicitTop = 23
      object JvDBImage1: TJvDBImage
        Left = 1
        Top = 61
        Width = 215
        Height = 160
        Align = alClient
        DataField = 'bImagen'
        Stretch = True
        TabOrder = 0
        OnDblClick = JvDBImage1DblClick
      end
    end
  end
  object DescActividad: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 300
    Align = alClient
    TabOrder = 0
    Visible = False
    object Splitter1: TSplitter
      Left = 1
      Top = 150
      Width = 626
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 136
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 626
      Height = 149
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBMemo1: TDBMemo
        Left = 1
        Top = 17
        Width = 624
        Height = 131
        TabStop = False
        Align = alClient
        DataField = 'mDescripcion'
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 624
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 6
        TabOrder = 1
        object Label1: TLabel
          Left = 6
          Top = 0
          Width = 618
          Height = 16
          Align = alClient
          Caption = 'Descripci'#243'n de actividad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 140
          ExplicitHeight = 13
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 153
      Width = 626
      Height = 146
      Align = alBottom
      TabOrder = 1
      object DBMemo2: TDBMemo
        Left = 1
        Top = 17
        Width = 624
        Height = 128
        Align = alClient
        DataField = 'mNotas'
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 624
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 6
        TabOrder = 1
        object Label2: TLabel
          Left = 6
          Top = 0
          Width = 618
          Height = 16
          Align = alClient
          Caption = 'Comentarios de la actividad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 160
          ExplicitHeight = 13
        end
      end
    end
  end
  object qDatos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      '')
    Params = <>
    Left = 416
    Top = 104
  end
  object dsDatos: TDataSource
    DataSet = qDatos
    Left = 448
    Top = 104
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 320
    Top = 168
  end
end
