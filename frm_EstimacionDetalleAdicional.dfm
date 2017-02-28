object frmEstimacionDetalleAdicional: TfrmEstimacionDetalleAdicional
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Estimaciones Adicionales Detalles'
  ClientHeight = 519
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 387
    Top = 468
    Width = 32
    Height = 13
    Caption = '$ M.N.'
  end
  object Label2: TLabel
    Left = 391
    Top = 492
    Width = 26
    Height = 13
    Caption = '$ DLL'
  end
  object Label3: TLabel
    Left = 552
    Top = 468
    Width = 65
    Height = 13
    Caption = '$ Acum. M.N.'
  end
  object Label4: TLabel
    Left = 555
    Top = 494
    Width = 59
    Height = 13
    Caption = '$ Acum. DLL'
  end
  object CmdCancel: TButton
    Left = 770
    Top = 468
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cerrar'
    ModalResult = 2
    TabOrder = 0
  end
  object Grid_Partidas: TRxDBGrid
    Left = -2
    Top = 29
    Width = 859
    Height = 433
    Hint = 'Doble click para ver los detalles'
    Align = alCustom
    Color = 15138559
    Ctl3D = False
    DataSource = ds_ActividadesxEstimacion
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    TitleButtons = True
    Columns = <
      item
        Expanded = False
        FieldName = 'sSimbolo'
        Title.Caption = '*'
        Width = 12
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sAnexo'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Anexo'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sNumeroActividad'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Concepto'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dCantidadAnexo'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Cant. x Cont.'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sMedida'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Medida'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dVentaMN'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Title.Caption = 'P. U.'
        Width = 68
        Visible = True
      end
      item
        Color = clInactiveCaptionText
        Expanded = False
        FieldName = 'dCantidad'
        Title.Alignment = taRightJustify
        Title.Caption = 'Cantidad'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAcumuladoActual'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Title.Caption = 'Acumulado'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dMontoMN'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Title.Caption = 'Importe MN'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dMontoAcumuladoMN'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Title.Caption = 'Importe Acum. MN'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dMontoDLL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Monto DLL'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dMontoAcumuladoDLL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Importe Acum. DLL'
        Width = 97
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 1
    Top = 464
    Width = 384
    Height = 47
    Color = clInfoBk
    DataField = 'mDescripcion'
    DataSource = ds_ActividadesxEstimacion
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object tdMontoMN: TRxDBCalcEdit
    Left = 420
    Top = 464
    Width = 125
    Height = 22
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'dMontoMN'
    DataSource = ds_montos
    Color = 15138559
    DisplayFormat = ',0.0#'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    ZeroEmpty = False
  end
  object tdMontoDLL: TRxDBCalcEdit
    Left = 420
    Top = 489
    Width = 125
    Height = 22
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'dMontoDLL'
    DataSource = ds_montos
    Color = 15138559
    DisplayFormat = ',0.0#'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    ZeroEmpty = False
  end
  object tdMontoAcumMN: TRxDBCalcEdit
    Left = 620
    Top = 464
    Width = 125
    Height = 22
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'dMontoAcumuladoMN'
    DataSource = ds_montos
    Color = 15138559
    DisplayFormat = ',0.0#'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
    ZeroEmpty = False
  end
  object tdMontoAcumDLL: TRxDBCalcEdit
    Left = 620
    Top = 489
    Width = 125
    Height = 22
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'dMontoAcumuladoDLL'
    DataSource = ds_montos
    Color = 15138559
    DisplayFormat = ',0.0#'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
    ZeroEmpty = False
  end
  object SpeedBar1: TSpeedBar
    Left = 0
    Top = 0
    Width = 860
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [sbAllowDrag, sbFlatBtns, sbGrayedBtns, sbTransparentBtns]
    BtnOffsetHorz = 3
    BtnOffsetVert = 3
    BtnWidth = 24
    BtnHeight = 23
    Images = connection.ImageList1
    TabOrder = 7
    InternalVer = 1
    object lblDatos: TLabel
      Left = 387
      Top = 9
      Width = 446
      Height = 14
      AutoSize = False
      Caption = 'Tipo Estimacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SpeedbarSection1: TSpeedbarSection
      Caption = 'Estimaciones'
    end
  end
  object ds_ActividadesxEstimacion: TDataSource
    DataSet = ActividadesxEstimacion
    Left = 43
    Top = 429
  end
  object ActividadesxEstimacion: TZQuery
    Connection = connection.zConnection
    AfterScroll = ActividadesxEstimacionAfterScroll
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 72
    Top = 432
    object ActividadesxEstimacionsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesxEstimacioniNumeroEstimacion: TStringField
      FieldName = 'iNumeroEstimacion'
      Required = True
      Size = 10
    end
    object ActividadesxEstimacioniNumeroEstimacionSub: TStringField
      FieldName = 'iNumeroEstimacionSub'
    end
    object ActividadesxEstimacionsWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object ActividadesxEstimacionsWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 30
    end
    object ActividadesxEstimacionsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesxEstimacionsTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Required = True
      Size = 9
    end
    object ActividadesxEstimacionmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesxEstimaciondCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondCostoDll: TFloatField
      FieldName = 'dCostoDll'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      currency = True
    end
    object ActividadesxEstimacionsMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object ActividadesxEstimaciondCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxEstimaciondAcumuladoAnterior: TFloatField
      FieldName = 'dAcumuladoAnterior'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxEstimaciondCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '###,###,##0.0###'
      EditFormat = '########0.0###'
    end
    object ActividadesxEstimaciondAcumuladoActual: TFloatField
      FieldName = 'dAcumuladoActual'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxEstimaciondMontoAcumuladoAnteriorMN: TFloatField
      FieldName = 'dMontoAcumuladoAnteriorMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondMontoAcumuladoAnteriorDLL: TFloatField
      FieldName = 'dMontoAcumuladoAnteriorDLL'
      Required = True
      currency = True
    end
    object ActividadesxEstimacionsWbsSpace: TStringField
      FieldKind = fkCalculated
      FieldName = 'sWbsSpace'
      Size = 30
      Calculated = True
    end
    object ActividadesxEstimaciondMontoMN: TFloatField
      FieldName = 'dMontoMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondMontoDLL: TFloatField
      FieldName = 'dMontoDLL'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondMontoAcumuladoMN: TFloatField
      FieldName = 'dMontoAcumuladoMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondMontoAcumuladoDLL: TFloatField
      FieldName = 'dMontoAcumuladoDLL'
      Required = True
      currency = True
    end
    object ActividadesxEstimacioniItemOrden: TStringField
      FieldName = 'iItemOrden'
      Required = True
      Size = 48
    end
    object ActividadesxEstimacionsAnexo: TStringField
      FieldName = 'sAnexo'
    end
    object ActividadesxEstimacionsIdTipoEstimacion: TStringField
      FieldName = 'sIdTipoEstimacion'
    end
    object ActividadesxEstimaciondCantidadRestante: TFloatField
      FieldName = 'dCantidadRestante'
    end
    object ActividadesxEstimaciondCantidadExcedente: TFloatField
      FieldName = 'dCantidadExcedente'
    end
    object ActividadesxEstimaciondCantidadPT: TFloatField
      FieldName = 'dCantidadPT'
    end
    object ActividadesxEstimacioniConsecutivo: TIntegerField
      FieldName = 'iConsecutivo'
    end
  end
  object ds_montos: TDataSource
    DataSet = Montos
    Left = 691
    Top = 421
  end
  object Montos: TZQuery
    Connection = connection.zConnection
    AfterScroll = ActividadesxEstimacionAfterScroll
    SQL.Strings = (
      
        'Select sum(dMontoAcumuladoMN) as dMontoAcumuladoMN, sum(dMontoAc' +
        'umuladoDLL) as dMontoAcumuladoDLL, '#10
      
        'Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From esti' +
        'macion_actividades'#10
      
        'Where iNumeroEstimacion = :Estimacion and iNumeroEstimacionSub =' +
        ':EstimacionSub and sIdTipoEstimacion =:Tipo '
      
        'and sContrato =:Contrato And sTipoActividad = "Actividad" Group ' +
        'By sContrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Estimacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EstimacionSub'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 720
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Estimacion'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EstimacionSub'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object FloatField11: TFloatField
      FieldName = 'dMontoMN'
      Required = True
      currency = True
    end
    object FloatField12: TFloatField
      FieldName = 'dMontoDLL'
      Required = True
      currency = True
    end
    object FloatField13: TFloatField
      FieldName = 'dMontoAcumuladoMN'
      Required = True
      currency = True
    end
    object FloatField14: TFloatField
      FieldName = 'dMontoAcumuladoDLL'
      Required = True
      currency = True
    end
  end
end
