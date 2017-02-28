object frmInformeSincronizacion: TfrmInformeSincronizacion
  Left = 0
  Top = 0
  Caption = 'Informe de Sincronizacion'
  ClientHeight = 370
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    792
    370)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 261
    Top = 342
    Width = 44
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Mostrar :'
  end
  object Label2: TLabel
    Left = 443
    Top = 342
    Width = 49
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Registros.'
  end
  object cmdSalir: TButton
    Left = 709
    Top = 337
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cerrar'
    TabOrder = 0
    OnClick = cmdSalirClick
  end
  object cmdActualizar: TButton
    Left = 8
    Top = 337
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Actualizar'
    TabOrder = 1
    OnClick = cmdActualizarClick
  end
  object NextDBGrid1: TNextDBGrid
    Left = 8
    Top = 8
    Width = 457
    Height = 323
    Anchors = [akLeft, akTop, akBottom]
    AutoScroll = True
    TabOrder = 2
    TabStop = True
    DataSource = dsSMensajes
    object NxDBTextColumn1: TNxDBTextColumn
      DefaultWidth = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Id'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Width = 40
      FieldName = 'iid'
    end
    object NxDBDateColumn1: TNxDBDateColumn
      DefaultValue = '11/03/2012'
      DefaultWidth = 150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Fecha'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 1
      SortType = stDate
      Width = 150
      FieldName = 'dFecha'
      HideWhenEmpty = False
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxDBTextColumn2: TNxDBTextColumn
      DefaultWidth = 130
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Ip Origen'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 130
      FieldName = 'sservidor'
    end
    object NxDBTextColumn3: TNxDBTextColumn
      DefaultWidth = 130
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Base de datos'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      Width = 130
      FieldName = 'sbasedatos'
    end
  end
  object DBMemo1: TDBMemo
    Left = 471
    Top = 8
    Width = 313
    Height = 323
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clMaroon
    DataField = 'mMensajes'
    DataSource = dsSMensajes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Microsoft New Tai Lue'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 87
    Top = 341
    Width = 122
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Refresco Automatico.'
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object txtMaximos: TRxCalcEdit
    Left = 312
    Top = 341
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    Anchors = [akLeft, akBottom]
    MaxValue = 3000.000000000000000000
    MinValue = 100.000000000000000000
    NumGlyphs = 2
    TabOrder = 5
    Value = 100.000000000000000000
  end
  object dsSMensajes: TDataSource
    DataSet = qrySMensajes
    Left = 16
    Top = 128
  end
  object qrySMensajes: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = qrySMensajesAfterScroll
    SQL.Strings = (
      'select '
      '*'
      'from smensajes order by iid desc  limit :limite')
    Params = <
      item
        DataType = ftUnknown
        Name = 'limite'
        ParamType = ptUnknown
      end>
    Left = 104
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'limite'
        ParamType = ptUnknown
      end>
    object qrySMensajesiid: TIntegerField
      FieldName = 'iid'
    end
    object qrySMensajesdFecha: TDateTimeField
      FieldName = 'dFecha'
      Required = True
    end
    object qrySMensajessbasedatos: TStringField
      FieldName = 'sbasedatos'
      Size = 50
    end
    object qrySMensajessservidor: TStringField
      FieldName = 'sservidor'
      Size = 50
    end
    object qrySMensajesmMensajes: TMemoField
      DisplayWidth = 10000
      FieldName = 'mMensajes'
      BlobType = ftMemo
      GraphicHeader = False
    end
  end
  object tRefresco: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = tRefrescoTimer
    Left = 320
    Top = 128
  end
end
