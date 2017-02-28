object frmAvancePatio: TfrmAvancePatio
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Registro de avances en patio'
  ClientHeight = 303
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 103
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitTop = 200
    object Label1: TLabel
      Left = 25
      Top = 38
      Width = 94
      Height = 13
      Caption = 'AVANCE EN PATIO:'
    end
    object Label2: TLabel
      Left = 82
      Top = 13
      Width = 37
      Height = 13
      Caption = 'FECHA:'
    end
    object RxDBCalcEdit1: TRxDBCalcEdit
      Left = 126
      Top = 35
      Width = 90
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'dCantidad'
      DataSource = dsAvance
      DecimalPlaces = 4
      DisplayFormat = ',0.####'
      NumGlyphs = 2
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 62
      Width = 303
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Top = 6
      Padding.Right = 6
      Padding.Bottom = 6
      TabOrder = 1
      object BitBtn2: TBitBtn
        Left = 222
        Top = 6
        Width = 75
        Height = 28
        Align = alRight
        TabOrder = 1
        OnClick = BitBtn2Click
        Kind = bkCancel
        ExplicitLeft = 190
        ExplicitTop = 7
      end
      object BitBtn1: TBitBtn
        Left = 147
        Top = 6
        Width = 75
        Height = 28
        Align = alRight
        TabOrder = 0
        OnClick = BitBtn1Click
        Kind = bkOK
        ExplicitTop = 1
        ExplicitHeight = 25
      end
    end
    object DBEdit1: TDBEdit
      Left = 126
      Top = 10
      Width = 90
      Height = 21
      TabStop = False
      DataField = 'dIdFecha'
      DataSource = dsAvance
      ReadOnly = True
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 103
    Width = 305
    Height = 200
    Align = alClient
    DataSource = dsAvances
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dIdFecha'
        Title.Caption = 'Fecha'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dCantidad'
        Title.Alignment = taRightJustify
        Title.Caption = 'Cantidad'
        Width = 94
        Visible = True
      end>
  end
  object qAvance: TZQuery
    Connection = connection.ConnTrx
    SQL.Strings = (
      
        'select * from xtavancesglobalesxorden where scontrato = :contrat' +
        'o and dIdFecha = :fecha for update')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end>
  end
  object roqAvances: TZReadOnlyQuery
    Connection = connection.ConnTrx
    SQL.Strings = (
      
        'select * from xtavancesglobalesxorden where scontrato = :contrat' +
        'o')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
  end
  object dsAvance: TDataSource
    DataSet = qAvance
    Left = 176
    Top = 112
  end
  object dsAvances: TDataSource
    DataSet = roqAvances
    Left = 176
    Top = 144
  end
end
