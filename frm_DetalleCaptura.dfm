object DetalleCaptura: TDetalleCaptura
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'frmDetalleCaptura'
  ClientHeight = 290
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 391
    Height = 249
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'sReferencia'
        ReadOnly = True
        Title.Caption = 'Referencia'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dCantidad'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Title.Caption = 'Cantidad'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAcumulado'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Title.Caption = 'Acumulado'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dCaptura'
        Title.Alignment = taRightJustify
        Title.Caption = 'Reportado'
        Width = 70
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 249
    Width = 391
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 112
    ExplicitTop = 272
    ExplicitWidth = 185
    object BitBtn1: TBitBtn
      Left = 229
      Top = 6
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 310
      Top = 6
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object DataSource1: TDataSource
    Left = 136
    Top = 72
  end
  object mdDetalle: TRxMemoryData
    FieldDefs = <
      item
        Name = 'iFolio'
        DataType = ftInteger
      end
      item
        Name = 'sReferencia'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dCantidad'
        DataType = ftFloat
      end
      item
        Name = 'dAcumulado'
        DataType = ftFloat
      end
      item
        Name = 'dCaptura'
        DataType = ftFloat
      end>
    Left = 264
    Top = 336
  end
  object mdRespaldo: TRxMemoryData
    FieldDefs = <
      item
        Name = 'iFolio'
        DataType = ftInteger
      end
      item
        Name = 'sReferencia'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dCantidad'
        DataType = ftFloat
      end
      item
        Name = 'dAcumulado'
        DataType = ftFloat
      end
      item
        Name = 'dCaptura'
        DataType = ftFloat
      end>
    Left = 96
    Top = 128
  end
end
