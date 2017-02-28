object frmCompara: TfrmCompara
  Left = 320
  Top = 100
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Generaci'#243'n de Informes'
  ClientHeight = 398
  ClientWidth = 545
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label11: TLabel
    Left = 273
    Top = 345
    Width = 244
    Height = 33
    Caption = 
      'Los informes presentados en este modulo son relacionados al conv' +
      'enio con el que fue registrado el reporte diario en la fecha sel' +
      'eccionada.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object GroupBox4: TGroupBox
    Left = 2
    Top = -1
    Width = 534
    Height = 106
    Caption = 'Parametros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 18
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
    object Label4: TLabel
      Left = 6
      Top = 63
      Width = 46
      Height = 14
      Caption = 'Filtrar por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 84
      Width = 67
      Height = 14
      Caption = 'Ordenado por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 40
      Width = 70
      Height = 14
      Caption = 'Frente Trabajo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 173
      Top = 16
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
    object tsFiltro: TComboBox
      Left = 80
      Top = 58
      Width = 252
      Height = 22
      Hint = 'Seleccione el tipo de filtrado'
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 3
      OnEnter = tsFiltroEnter
      OnExit = tsFiltroExit
      OnKeyPress = tsFiltroKeyPress
      Items.Strings = (
        'TODAS LAS PARTIDAS'
        'SOLO REPORTADAS'
        'CON RETRASO'
        'DESFASADAS')
    end
    object tsOrdenado: TComboBox
      Left = 80
      Top = 80
      Width = 252
      Height = 22
      Hint = 'Seleccione el tipo de ordenamiento.'
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 4
      OnEnter = tsOrdenadoEnter
      OnExit = tsOrdenadoExit
      OnKeyPress = tsOrdenadoKeyPress
      Items.Strings = (
        'ANEXO "C"'
        'PONDERADO'
        'PRECIO UNITARIO')
    end
    object tsNumeroOrden: TComboBox
      Left = 80
      Top = 36
      Width = 252
      Height = 22
      Hint = 'Seleccione el frente de trabajo.'
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 2
      OnChange = tsNumeroOrdenChange
      OnEnter = tsNumeroOrdenEnter
      OnExit = tsNumeroOrdenExit
      OnKeyPress = tsNumeroOrdenKeyPress
    end
    object GrupoMoneda: TGroupBox
      Left = 358
      Top = 29
      Width = 162
      Height = 36
      Caption = 'Moneda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object chkMN: TCheckBox
        Left = 90
        Top = 13
        Width = 46
        Height = 17
        Caption = 'M.N.'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
      object chkDLL: TCheckBox
        Left = 15
        Top = 13
        Width = 49
        Height = 17
        Caption = 'DLL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = chkDLLEnter
      end
    end
    object tdIdFecha1: TDBDateTimePicker
      Left = 80
      Top = 12
      Width = 89
      Height = 22
      Hint = 'Seleccione la fecha de inicio.'
      Date = 40721.000000000000000000
      Time = 40721.000000000000000000
      Checked = False
      TabOrder = 0
      OnChange = tdIdFecha1Change
      OnEnter = tdIdFecha1Enter
      OnExit = tdIdFecha1Exit
      OnKeyPress = tdIdFecha1KeyPress
    end
    object tdIdFecha: TDBDateTimePicker
      Left = 234
      Top = 12
      Width = 98
      Height = 22
      Hint = 'Seleccione la fecha final.'
      Date = 40721.000000000000000000
      Time = 40721.000000000000000000
      Checked = False
      TabOrder = 1
      OnChange = tdIdFechaChange
      OnEnter = tdIdFechaEnter
      OnExit = tdIdFechaExit
      OnKeyPress = tdIdFechaKeyPress
    end
    object GroupBox5: TGroupBox
      Left = 358
      Top = 66
      Width = 162
      Height = 35
      Caption = 'Tipo Obra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object chkadmon: TCheckBox
        Left = 90
        Top = 14
        Width = 59
        Height = 17
        Caption = 'ADMON'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 0
        OnEnter = chkadmonEnter
      end
      object chkPu: TCheckBox
        Left = 15
        Top = 14
        Width = 49
        Height = 17
        Caption = 'PU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = chkPuEnter
      end
    end
    object chkPeriodo: TJvCheckBox
      Left = 348
      Top = 13
      Width = 142
      Height = 17
      Caption = 'Aplicar Periodo Actual'
      TabOrder = 7
      LinkedControls = <>
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object gbParametros: tNewGroupBox
    Left = 4
    Top = 111
    Width = 247
    Height = 22
    Caption = 'Reportes de Avance de Obra'
    Color = 14145495
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 244
    Title.HighLightColor = clBlack
    Title.ShadowColor = clBlack
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaised
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 18
    Title.BkColor = 16697018
    TransparentMode = True
    Border = True
    Shape = tsRectRound
  end
  object tNewGroupBox1: tNewGroupBox
    Left = 272
    Top = 111
    Width = 250
    Height = 22
    Caption = 'Reportes de Generaci'#243'n'
    Color = 14145495
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 246
    Title.HighLightColor = clBlack
    Title.ShadowColor = clBlack
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaised
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 18
    Title.BkColor = 16697018
    TransparentMode = True
    Border = True
    Shape = tsRectRound
  end
  object tNewGroupBox4: tNewGroupBox
    Left = 272
    Top = 255
    Width = 250
    Height = 22
    BiDiMode = bdLeftToRight
    Caption = 'Costos de Instalacion (Personal/Equipos)'
    Color = 14145495
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 246
    Title.HighLightColor = clBlack
    Title.ShadowColor = clBlack
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaised
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 18
    Title.BkColor = 16697018
    TransparentMode = True
    Border = True
    Shape = tsRectRound
  end
  object GroupBox1: TGroupBox
    Left = 272
    Top = 276
    Width = 248
    Height = 63
    TabOrder = 5
    object rbCantidad: TRadioButton
      Left = 7
      Top = 6
      Width = 161
      Height = 17
      Caption = 'Cantidad Programada/Real'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object rbCostos: TRadioButton
      Left = 6
      Top = 31
      Width = 161
      Height = 17
      Caption = 'Costos Programado/Real'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btnEquipos: TButton
      Left = 158
      Top = 27
      Width = 80
      Height = 20
      Caption = '&Equipos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnEquiposClick
    end
    object btnPersonal: TButton
      Left = 158
      Top = 5
      Width = 80
      Height = 20
      Caption = '&Personal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnPersonalClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 136
    Width = 245
    Height = 247
    TabOrder = 6
    object Progress: TGauge
      Left = 2
      Top = 226
      Width = 241
      Height = 19
      Align = alBottom
      ForeColor = clBlue
      Progress = 0
      Visible = False
      ExplicitTop = 284
      ExplicitWidth = 219
    end
    object btnStatus: TButton
      Left = 11
      Top = 16
      Width = 222
      Height = 23
      Hint = 
        'Para Generar esta consulta los reportes deben estar Validados y ' +
        'Autorizados'
      Caption = 'Status de Conceptos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnStatusClick
    end
    object btnReportadoVsGenerado: TButton
      Left = 11
      Top = 86
      Width = 222
      Height = 23
      Caption = 'Reportado Vs. Generado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnReportadoVsGeneradoClick
    end
    object btnFiltroAnexo: TButton
      Left = 11
      Top = 85
      Width = 222
      Height = 23
      Caption = 'Cantidad Anexo Vs. Generado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnFiltroAnexoClick
    end
    object btnAnexoVsEstimaciones: TButton
      Left = 11
      Top = 108
      Width = 222
      Height = 23
      Caption = 'Cantidad Anexo Vs. Estimaciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnAnexoVsEstimacionesClick
    end
    object btnSubContratos: TButton
      Left = 11
      Top = 63
      Width = 222
      Height = 23
      Caption = 'Status Ordenes en Proceso (Excel)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnSubContratosClick
    end
    object btnPartidasRetraso: TButton
      Left = 11
      Top = 131
      Width = 222
      Height = 23
      Caption = '&Partidas con Retraso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnPartidasRetrasoClick
    end
    object btnSuministros: TButton
      Left = 11
      Top = 154
      Width = 222
      Height = 23
      Caption = '&Concentrado de Suministros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnSuministrosClick
    end
    object cmdExcedentes: TButton
      Left = 11
      Top = 177
      Width = 222
      Height = 23
      Caption = 'Partidas &Excedidas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = cmdExcedentesClick
    end
    object cmdComparativo: TButton
      Left = 11
      Top = 200
      Width = 222
      Height = 23
      Caption = 'Comparativo Prog. Trabajo Anexo C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = cmdComparativoClick
    end
    object cmdConceptos: TButton
      Left = 11
      Top = 40
      Width = 222
      Height = 23
      Caption = '&Avances x partidas (Excel)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = cmdConceptosClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 274
    Top = 134
    Width = 248
    Height = 118
    TabOrder = 7
    object Label1: TLabel
      Left = 14
      Top = 19
      Width = 88
      Height = 14
      Caption = 'No. de Estimaci'#243'n.'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btnDetalleGeneracion: TButton
      Left = 14
      Top = 36
      Width = 220
      Height = 25
      Caption = 'Detalle Generaci'#243'n por Estimaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = btnDetalleGeneracionClick
    end
    object tsNumeroEstimacion: TDBLookupComboBox
      Left = 107
      Top = 11
      Width = 81
      Height = 22
      Hint = 'Seleccione el n'#250'mero de estimaci'#243'n.'
      Color = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'iNumeroEstimacion'
      ListField = 'iNumeroEstimacion'
      ListSource = connection.ds_estimacionperiodo
      ParentFont = False
      TabOrder = 1
      OnEnter = tsNumeroEstimacionEnter
      OnExit = tsNumeroEstimacionExit
      OnKeyPress = tsNumeroEstimacionKeyPress
    end
    object btnAcumuladoTrinomio: TButton
      Left = 14
      Top = 61
      Width = 220
      Height = 25
      Caption = 'Acumulado de Generaci'#243'n  Trinomio MN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      WordWrap = True
      OnClick = btnAcumuladoTrinomioClick
    end
    object btTrinomiodll: TButton
      Left = 14
      Top = 86
      Width = 220
      Height = 25
      Caption = 'Acumulado de Generaci'#243'n  Trinomio DLL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      OnClick = btTrinomiodllClick
    end
  end
  object btnPanel: TGroupBox
    Left = 258
    Top = 139
    Width = 117
    Height = 173
    Caption = 'Opciones'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnExit = btnPanelExit
    object btnTerminadas: TButton
      Left = 8
      Top = 17
      Width = 100
      Height = 25
      Caption = 'Terminadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnTerminadasClick
    end
    object btnAdicionales: TButton
      Left = 8
      Top = 42
      Width = 100
      Height = 25
      Caption = 'Adicionales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnAdicionalesClick
    end
    object btnPendientes: TButton
      Left = 8
      Top = 91
      Width = 100
      Height = 25
      Caption = 'Sin Terminar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnPendientesClick
    end
    object btnTodas: TButton
      Left = 8
      Top = 67
      Width = 100
      Height = 25
      Caption = 'Generadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnTodasClick
    end
    object btnSinGenerar: TButton
      Left = 8
      Top = 116
      Width = 100
      Height = 25
      Caption = 'Sin Generar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnSinGenerarClick
    end
    object btnSinReportar: TButton
      Left = 8
      Top = 141
      Width = 100
      Height = 25
      Caption = 'Reportadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnSinReportarClick
    end
  end
  object PanelProgress: TPanel
    Left = 92
    Top = 353
    Width = 380
    Height = 41
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object Label15: TLabel
      Left = 10
      Top = 2
      Width = 134
      Height = 16
      Caption = 'Procesando espere...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 199
      Top = 4
      Width = 78
      Height = 14
      Caption = 'Transcurridos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label14: TLabel
      Left = 327
      Top = 4
      Width = 49
      Height = 14
      Caption = 'minutos.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label19: TLabel
      Left = 284
      Top = 4
      Width = 12
      Height = 14
      Caption = '....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object BarraEstado: TProgressBar
      Left = 8
      Top = 19
      Width = 366
      Height = 17
      TabOrder = 0
    end
  end
  object dsInforme: TfrxDBDataset
    UserName = 'dsInforme'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroOrden=sNumeroOrden'
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'sMedida=sMedida'
      'dCantidadAnexo=dCantidadAnexo'
      'dPonderado=dPonderado'
      'dVentaMN=dVentaMN'
      'sReferencia=sReferencia'
      'dCantidad=dCantidad'
      'dGenerado=dGenerado'
      'dPGenerar=dPGenerar'
      'dPReportar=dPReportar'
      'dPSuministrar=dPSuministrar')
    DataSet = rxSuministroAnexo
    BCDToCurrency = False
    Left = 433
    Top = 170
  end
  object rxPartidasAvance: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'sWbs'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'sMedida'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'dPonderado'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadAnexo'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadProgramada'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceProgramado'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadReal'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceReal'
        DataType = ftFloat
      end
      item
        Name = 'dFechaInicio'
        DataType = ftDate
      end
      item
        Name = 'dFechaFinal'
        DataType = ftDate
      end
      item
        Name = 'iRetraso'
        DataType = ftInteger
      end
      item
        Name = 'dVentaMN'
        DataType = ftCurrency
      end
      item
        Name = 'dVentaDLL'
        DataType = ftCurrency
      end
      item
        Name = 'iNivel'
        DataType = ftInteger
      end
      item
        Name = 'sWbsAnterior'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'sNumeroActividad'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'sTipoActividad'
        DataType = ftString
        Size = 9
      end>
    Left = 335
    Top = 248
    object rxPartidasAvancesContrato: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object StringField8: TStringField
      DisplayWidth = 30
      FieldName = 'sWbs'
      Size = 30
    end
    object rxPartidasAvancemDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object StringField9: TStringField
      FieldName = 'sMedida'
      Size = 8
    end
    object rxPartidasAvancedPonderado: TFloatField
      FieldName = 'dPonderado'
    end
    object rxPartidasAvancedCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
    end
    object rxPartidasAvancedCantidadProgramada: TFloatField
      FieldName = 'dCantidadProgramada'
    end
    object rxPartidasAvancedAvanceProgramado: TFloatField
      FieldName = 'dAvanceProgramado'
    end
    object rxPartidasAvancedCantidadReal: TFloatField
      FieldName = 'dCantidadReal'
    end
    object rxPartidasAvancedAvanceReal: TFloatField
      FieldName = 'dAvanceReal'
    end
    object rxPartidasAvancedFechaInicio: TDateField
      FieldName = 'dFechaInicio'
    end
    object rxPartidasAvancedFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object rxPartidasAvanceiRetraso: TIntegerField
      FieldName = 'iRetraso'
    end
    object rxPartidasAvancedVentaMN: TCurrencyField
      FieldName = 'dVentaMN'
    end
    object rxPartidasAvancedVentaDLL: TCurrencyField
      FieldName = 'dVentaDLL'
    end
    object rxPartidasAvanceiNivel: TIntegerField
      FieldName = 'iNivel'
    end
    object rxPartidasAvancesWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Size = 30
    end
    object rxPartidasAvancesNumeroActividad: TStringField
      DisplayWidth = 10
      FieldName = 'sNumeroActividad'
      Size = 10
    end
    object rxPartidasAvancesTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Size = 9
    end
  end
  object rxCantProgramada: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'iItemOrden'
        DataType = ftInteger
      end
      item
        Name = 'sIdClave'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'sDescripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'sMedida'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'iAnno'
        DataType = ftInteger
      end
      item
        Name = 'iMes'
        DataType = ftInteger
      end
      item
        Name = 'sRenglon'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dCantidad'
        DataType = ftFloat
      end>
    Left = 425
    Top = 301
    object rxCantProgramadasContrato: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object rxCantProgramadaiItemOrden: TIntegerField
      FieldName = 'iItemOrden'
    end
    object rxCantProgramadasIdClave: TStringField
      FieldName = 'sIdClave'
      Size = 15
    end
    object rxCantProgramadasDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 60
    end
    object rxCantProgramadasMedida: TStringField
      FieldName = 'sMedida'
      Size = 8
    end
    object rxCantProgramadaiAnno: TIntegerField
      FieldName = 'iAnno'
    end
    object rxCantProgramadaiMes: TIntegerField
      FieldName = 'iMes'
    end
    object rxCantProgramadasRenglon: TStringField
      FieldName = 'sRenglon'
    end
    object rxCantProgramadadCantidad: TFloatField
      FieldName = 'dCantidad'
    end
  end
  object dsCantProgramada: TfrxDBDataset
    UserName = 'dsCantProgramada'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'iItemOrden=iItemOrden'
      'sIdClave=sIdClave'
      'sDescripcion=sDescripcion'
      'sMedida=sMedida'
      'iAnno=iAnno'
      'iMes=iMes'
      'sRenglon=sRenglon'
      'dCantidad=dCantidad')
    DataSet = rxCantProgramada
    BCDToCurrency = False
    Left = 391
    Top = 307
  end
  object rxCostoProgramado: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'iItemOrden'
        DataType = ftInteger
      end
      item
        Name = 'sIdClave'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'sDescripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'sMedida'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'iAnno'
        DataType = ftInteger
      end
      item
        Name = 'iMes'
        DataType = ftInteger
      end
      item
        Name = 'sRenglon'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dCostoMN'
        DataType = ftCurrency
      end>
    Left = 279
    Top = 259
    object StringField1: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object IntegerField1: TIntegerField
      FieldName = 'iItemOrden'
    end
    object StringField2: TStringField
      FieldName = 'sIdClave'
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'sDescripcion'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'sMedida'
      Size = 8
    end
    object IntegerField2: TIntegerField
      FieldName = 'iAnno'
    end
    object IntegerField3: TIntegerField
      FieldName = 'iMes'
    end
    object StringField5: TStringField
      FieldName = 'sRenglon'
    end
    object rxCostoProgramadodCostoMN: TCurrencyField
      FieldName = 'dCostoMN'
    end
  end
  object dbCostoProgramado: TfrxDBDataset
    UserName = 'dbCostoProgramado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'iItemOrden=iItemOrden'
      'sIdClave=sIdClave'
      'sDescripcion=sDescripcion'
      'sMedida=sMedida'
      'iAnno=iAnno'
      'iMes=iMes'
      'sRenglon=sRenglon'
      'dCostoMN=dCostoMN'
      'dCostoDLL=dCostoDLL')
    DataSet = rxCostoProgramado
    BCDToCurrency = False
    Left = 265
    Top = 233
  end
  object rxAnexoGenerado: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sNumeroOrden'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'sNumeroActividad'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'sMedida'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'dCantidadAnexo'
        DataType = ftFloat
      end
      item
        Name = 'dPonderado'
        DataType = ftFloat
      end
      item
        Name = 'dVentaMN'
        DataType = ftCurrency
      end
      item
        Name = 'dGenerado'
        DataType = ftFloat
      end
      item
        Name = 'dAdicional'
        DataType = ftFloat
      end
      item
        Name = 'dPendiente'
        DataType = ftFloat
      end>
    Left = 335
    Top = 214
    object StringField6: TStringField
      FieldName = 'sNumeroOrden'
      Size = 35
    end
    object StringField7: TStringField
      FieldName = 'sNumeroActividad'
      Size = 10
    end
    object MemoField1: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object StringField10: TStringField
      FieldName = 'sMedida'
      Size = 8
    end
    object FloatField1: TFloatField
      FieldName = 'dCantidadAnexo'
    end
    object rxAnexoGeneradodPonderado: TFloatField
      FieldName = 'dPonderado'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'dVentaMN'
    end
    object rxAnexoGeneradodGenerado: TFloatField
      FieldName = 'dGenerado'
    end
    object rxAnexoGeneradodAdicional: TFloatField
      FieldName = 'dAdicional'
    end
    object rxAnexoGeneradodPendiente: TFloatField
      FieldName = 'dPendiente'
    end
    object rxAnexoGeneradolTitulo: TStringField
      FieldKind = fkCalculated
      FieldName = 'lTitulo'
      Calculated = True
    end
    object rxAnexoGeneradodVentaDLL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dVentaDLL'
      Calculated = True
    end
  end
  object rxSuministroAnexo: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sNumeroOrden'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'sNumeroActividad'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'sMedida'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'dCantidadAnexo'
        DataType = ftFloat
      end
      item
        Name = 'dPonderado'
        DataType = ftFloat
      end
      item
        Name = 'dVentaMN'
        DataType = ftCurrency
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
        Name = 'dGenerado'
        DataType = ftFloat
      end
      item
        Name = 'dPGenerar'
        DataType = ftFloat
      end
      item
        Name = 'dPReportar'
        DataType = ftFloat
      end
      item
        Name = 'dPSuministrar'
        DataType = ftFloat
      end>
    Left = 337
    Top = 286
    object StringField11: TStringField
      FieldName = 'sNumeroOrden'
      Size = 35
    end
    object StringField12: TStringField
      FieldName = 'sNumeroActividad'
      Size = 10
    end
    object MemoField2: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object StringField13: TStringField
      FieldName = 'sMedida'
      Size = 8
    end
    object FloatField2: TFloatField
      FieldName = 'dCantidadAnexo'
    end
    object FloatField3: TFloatField
      FieldName = 'dPonderado'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'dVentaMN'
    end
    object rxSuministroAnexosReferencia: TStringField
      FieldName = 'sReferencia'
      Size = 30
    end
    object rxSuministroAnexodCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object FloatField6: TFloatField
      FieldName = 'dGenerado'
    end
    object FloatField8: TFloatField
      FieldName = 'dPGenerar'
    end
    object rxSuministroAnexodPReportar: TFloatField
      FieldName = 'dPReportar'
    end
    object rxSuministroAnexodPSuministrar: TFloatField
      FieldName = 'dPSuministrar'
    end
  end
  object ActividadesxAnexo: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = ActividadesxAnexoCalcFields
    SQL.Strings = (
      
        'select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, ' +
        'sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal,'
      
        'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL  from a' +
        'ctividadesxanexo Where sContrato = :contrato and sIdConvenio = :' +
        'convenio order by sWbs, iItemOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'convenio'
        ParamType = ptUnknown
      end>
    Left = 301
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'convenio'
        ParamType = ptUnknown
      end>
    object ActividadesxAnexosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesxAnexoiNivel: TIntegerField
      FieldName = 'iNivel'
      Required = True
    end
    object ActividadesxAnexoiColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
    object ActividadesxAnexosTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Required = True
      Size = 9
    end
    object ActividadesxAnexosWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 30
    end
    object ActividadesxAnexosWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object ActividadesxAnexosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesxAnexomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesxAnexodFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object ActividadesxAnexodFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object ActividadesxAnexosMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 10
    end
    object ActividadesxAnexodCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
      Required = True
    end
    object ActividadesxAnexodPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
    end
    object ActividadesxAnexodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
    end
    object ActividadesxAnexodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
    end
    object ActividadesxAnexodMontoMN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoMN'
      Calculated = True
    end
    object ActividadesxAnexodMontoDLL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoDLL'
      Calculated = True
    end
    object ActividadesxAnexodReportado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dReportado'
      Calculated = True
    end
    object ActividadesxAnexodSuministrado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dSuministrado'
      Calculated = True
    end
    object ActividadesxAnexodGenerado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dGenerado'
      Calculated = True
    end
    object ActividadesxAnexodEstimado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dEstimado'
      Calculated = True
    end
    object ActividadesxAnexodSubContrato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dSubContrato'
      Calculated = True
    end
  end
  object ActividadesxOrden: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = ActividadesxOrdenCalcFields
    SQL.Strings = (
      
        'select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, ' +
        'sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio' +
        ', dFechaFinal, '
      
        'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoDLL, ' +
        'dCostoMN  from actividadesxorden'
      
        'Where sContrato = :contrato and sIdConvenio = :convenio and sNum' +
        'eroOrden = :orden order by sWbs, iItemOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'orden'
        ParamType = ptUnknown
      end>
    Left = 301
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'orden'
        ParamType = ptUnknown
      end>
    object ActividadesxOrdeniNivel: TIntegerField
      FieldName = 'iNivel'
      Required = True
    end
    object ActividadesxOrdensContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesxOrdeniColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
    object ActividadesxOrdensTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Required = True
      Size = 10
    end
    object ActividadesxOrdensWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object ActividadesxOrdensNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesxOrdenmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesxOrdensMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object ActividadesxOrdendCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object ActividadesxOrdendPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
    end
    object ActividadesxOrdendVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
    end
    object ActividadesxOrdendReportado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dReportado'
      Calculated = True
    end
    object ActividadesxOrdendSuministrado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dSuministrado'
      Calculated = True
    end
    object ActividadesxOrdendGenerado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dGenerado'
      Calculated = True
    end
    object ActividadesxOrdensNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object ActividadesxOrdensWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 30
    end
    object ActividadesxOrdendFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object ActividadesxOrdendFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object ActividadesxOrdendMontoMN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dCostoMN'
      Calculated = True
    end
    object ActividadesxOrdendSubContrato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dSubContrato'
      Calculated = True
    end
    object ActividadesxOrdendMontoDLL: TFloatField
      FieldName = 'dCostoDLL'
    end
    object ActividadesxOrdendVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
    end
    object ActividadesxOrdencancelada: TStringField
      FieldName = 'cancelada'
      Size = 5
    end
  end
  object rInforme: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 41207.482874722200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function espaces (paramNivel :Integer) : String ;'
      'var'
      '   pos : integer ;'
      '   sCadena : String ;'
      'begin'
      '    sCadena := '#39#39' ;'
      '    for pos := 0 to (paramNivel * 2) do'
      '       sCadena := sCadena + '#39#160#39' ;'
      '    result := sCadena ;'
      'end ;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rInformeGetValue
    Left = 475
    Top = 139
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dbActividadesxOrden
        DataSetName = 'dbActividadesxOrden'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 15790320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object PageFooter1: TfrxPageFooter
        Height = 41.574830000000000000
        Top = 457.323130000000000000
        Width = 980.410082000000000000
        object Memo32: TfrxMemoView
          Left = 275.905690000000000000
          Top = 18.897650000000000000
          Width = 702.992580000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'rptSetup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Setup."sSlogan"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 400.630180000000000000
          Top = 3.779530000000020000
          Width = 226.771800000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897649999999900000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSetName = 'rptSetup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 173.858380000000000000
        Width = 980.410082000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo25: TfrxMemoView
          Left = 1.779530000000000000
          Width = 976.629921260000000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo26: TfrxMemoView
          Left = 160.858380000000000000
          Top = 3.000000000000000000
          Width = 635.740570000000000000
          Height = 74.590600000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'CONTRATO No.: [contrato."sContrato"]'
            
              'INFORME COMPARATIVO DE CANTIDAD ANEXO CONTRA INSTALADO AL DIA: [' +
              'MI_FECHA]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 820.039890000000000000
          Top = 1.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 2.779530000000000000
          Top = 1.000000000000000000
          Width = 155.181200000000000000
          Height = 60.252010000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo27: TfrxMemoView
          Left = 3.559060000000000000
          Top = 60.031540000000000000
          Width = 154.401670000000000000
          Height = 21.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 46.913420000000000000
        Top = 317.480520000000000000
        Width = 980.410082000000000000
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.559060000000000000
          Width = 976.629921260000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo16: TfrxMemoView
          Left = 10.582686930000000000
          Top = 3.779530000000020000
          Width = 364.346215040000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DETALLE DE MOVIMIENTOS DE LA ORDEN [ORDEN]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 22.677180000000000000
          Width = 60.850393700000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 62.362204720000000000
          Top = 22.677180000000000000
          Width = 370.393608030000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 595.275588110000000000
          Top = 22.677180000000000000
          Width = 52.913376060000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT. INSTALAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 549.543329060000000000
          Top = 22.677180000000000000
          Width = 45.732285910000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 757.795246300000000000
          Top = 22.677180000000000000
          Width = 57.070861260000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 920.692908500000000000
          Top = 22.677180000000000000
          Width = 58.204729290000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%'
            'AVANCE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 814.866158820000000000
          Top = 22.677180000000000000
          Width = 54.047236770000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'EXCEDIDO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 693.543287560000000000
          Top = 22.677180000000000000
          Width = 64.251963620000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'P.U.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 648.188973940000000000
          Top = 22.677180000000000000
          Width = 45.354323390000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '% POND.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 869.291900000000000000
          Top = 22.677180000000000000
          Width = 51.401565040000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PENDIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 432.866420000000000000
          Top = 22.677180000000000000
          Width = 60.850393700000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 492.338900000000000000
          Top = 22.677180000000000000
          Width = 57.070863700000000000
          Height = 24.236240000000000000
          ShowHint = False
          Color = 13479519
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA FINAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 133.614217170000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Width = 976.629921260000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 160.858380000000000000
          Top = 3.000000000000000000
          Width = 631.961040000000000000
          Height = 48.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'CONTRATO No.: [contrato."sContrato"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 98.488250000000000000
          Width = 976.629921260000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo8: TfrxMemoView
          Left = 10.582686930000000000
          Top = 90.708720000000000000
          Width = 439.936815040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              'INFORME COMPARATIVO DE CANTIDAD ANEXO CONTRA INSTALADO AL DIA: [' +
              'MI_FECHA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 1.889763780000000000
          Top = 109.047310000000000000
          Width = 976.629921259842000000
          Height = 24.566907170000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[Contrato."mDescripcion"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 821.039890000000000000
          Top = 2.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture3: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 155.181200000000000000
          Height = 60.252010000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo7: TfrxMemoView
          Left = 4.559060000000000000
          Top = 61.031540000000000000
          Width = 154.401670000000000000
          Height = 21.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 12.897650000000000000
        Top = 385.512060000000000000
        Width = 980.410082000000000000
        DataSet = dbActividadesxOrden
        DataSetName = 'dbActividadesxOrden'
        OutlineText = 'dbActividadesxOrden."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Width = 60.850393700787400000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          Color = clWhite
          DataSet = dbActividadesxAnexo
          DataSetName = 'dbActividadesxAnexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dbActividadesxOrden."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            
              '[espaces(<dbActividadesxOrden."iNivel">)] [IIF(<dbActividadesxOr' +
              'den."sTipoActividad"> = '#39'Paquete'#39' , IIF(<dbActividadesxOrden."sW' +
              'bsAnterior"> <> '#39'0'#39', <dbActividadesxOrden."sWbs">, <dbActividade' +
              'sxOrden."sWbs"> )'
            ', <dbActividadesxOrden."sNumeroActividad">)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 62.362204720000000000
          Width = 370.393608030000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSetName = 'frxDBReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dbActividadesxOrden."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dbActividadesxOrden."mDescripcion"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 549.543329060000000000
          Width = 45.732285910000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'sMedida'
          DataSet = dbActividadesxOrden
          DataSetName = 'dbActividadesxOrden'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dbActividadesxOrden."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dbActividadesxOrden."sMedida"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 595.275614960000000000
          Width = 52.913376060000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidad'
          DataSet = dbActividadesxOrden
          DataSetName = 'dbActividadesxOrden'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dbActividadesxOrden."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dbActividadesxOrden."dCantidad"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 920.692913390000000000
          Width = 58.204729290000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dbActividadesxOrden."dReportado"> > <dbActividadesxOrden."dCant' +
            'idad">'
          Memo.UTF8 = (
            
              '[IIF(<dbActividadesxOrden."dReportado"> >= <dbActividadesxOrden.' +
              '"dCantidad">,100,<AVANCE_ORDEN>)] %')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 757.795297560000000000
          Width = 57.070861260000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSetName = 'frxDBReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dbActividadesxOrden."dReportado"> > <dbActividadesxOrden."dCant' +
            'idad">'
          Memo.UTF8 = (
            '[dbActividadesxOrden."dReportado"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 814.866158820000000000
          Width = 54.047236770000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSetName = 'frxDBReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dbActividadesxOrden."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            
              '[IIF(<dbActividadesxOrden."dReportado"> > <dbActividadesxOrden."' +
              'dCantidad">, <dbActividadesxOrden."dReportado"> - <dbActividades' +
              'xOrden."dCantidad">,0)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 693.543329060000000000
          Width = 64.251963620000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSetName = 'frxDBReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dbActividadesxOrden."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dbActividadesxOrden."dVentaMN"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 648.188998350000000000
          Width = 45.354323390000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSetName = 'frxDBReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dbActividadesxOrden."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dbActividadesxOrden."dPonderado"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 869.291348350000000000
          Width = 51.401565040000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSetName = 'frxDBReporte'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dbActividadesxOrden."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            
              '[IIF(<dbActividadesxOrden."dReportado"> < <dbActividadesxOrden."' +
              'dCantidad">,  <dbActividadesxOrden."dCantidad"> -  <dbActividade' +
              'sxOrden."dReportado">,0)]')
          ParentFont = False
        end
        object dbActividadesxOrdendFechaInicio: TfrxMemoView
          Left = 432.866420000000000000
          Width = 60.472480000000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaInicio'
          DataSet = dbActividadesxOrden
          DataSetName = 'dbActividadesxOrden'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbActividadesxOrden."dFechaInicio"]')
          ParentFont = False
        end
        object dbActividadesxOrdendFechaFinal: TfrxMemoView
          Left = 493.338900000000000000
          Width = 56.692950000000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dbActividadesxOrden
          DataSetName = 'dbActividadesxOrden'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbActividadesxOrden."dFechaFinal"]')
          ParentFont = False
        end
      end
    end
  end
  object dbActividadesxAnexo: TfrxDBDataset
    UserName = 'dbActividadesxAnexo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'iNivel=iNivel'
      'iColor=iColor'
      'sTipoActividad=sTipoActividad'
      'sWbsAnterior=sWbsAnterior'
      'sWbs=sWbs'
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'sMedida=sMedida'
      'dCantidadAnexo=dCantidadAnexo'
      'dPonderado=dPonderado'
      'dVentaMN=dVentaMN'
      'dVentaDLL=dVentaDLL'
      'dMontoMN=dMontoMN'
      'dMontoDLL=dMontoDLL'
      'dReportado=dReportado'
      'dSuministrado=dSuministrado'
      'dGenerado=dGenerado'
      'dEstimado=dEstimado'
      'dSubContrato=dSubContrato')
    DataSet = ActividadesxAnexo
    BCDToCurrency = False
    Left = 335
    Top = 99
  end
  object dbActividadesxOrden: TfrxDBDataset
    UserName = 'dbActividadesxOrden'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'iNivel=iNivel'
      'iColor=iColor'
      'sTipoActividad=sTipoActividad'
      'sWbs=sWbs'
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'sMedida=sMedida'
      'dCantidad=dCantidad'
      'dPonderado=dPonderado'
      'dVentaMN=dVentaMN'
      'dReportado=dReportado'
      'dSuministrado=dSuministrado'
      'dGenerado=dGenerado'
      'sNumeroOrden=sNumeroOrden'
      'sWbsAnterior=sWbsAnterior'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'dCostoMN=dCostoMN'
      'dSubContrato=dSubContrato'
      'dCostoDLL=dCostoDLL'
      'dVentaDLL=dVentaDLL')
    DataSet = ActividadesxOrden
    BCDToCurrency = False
    Left = 335
    Top = 135
  end
  object Reporte: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select ct.*, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGe' +
        'nerador, Sum(e.dCantidad * a.dVentaMN) as dEstimado From estimac' +
        'ionxpartida e'
      
        'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.' +
        'sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNume' +
        'roGenerador And e2.lStatus = "Autorizado" '
      
        'And Month(e2.dFechaFinal) = :Mes And Year(e2.dFechaFinal) = :Ann' +
        'o)'
      
        'INNER JOIN contrato_trinomio ct ON (e.sContrato = ct.sContrato A' +
        'nd e.sInstalacion = ct.sInstalacion)'
      
        'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And' +
        ' e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Co' +
        'nvenio And a.sTipoActividad = "Actividad")'
      'Where e.sContrato = :Contrato And e.lEstima = "Si"'
      
        'Group By ct.sInstalacion, e2.iNumeroEstimacion, e2.sNumeroOrden,' +
        ' e2.sNumeroGenerador')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Anno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 431
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Anno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object qryBuscaP: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      '')
    Params = <>
    Left = 463
    Top = 203
  end
  object dsPartidas: TfrxDBDataset
    UserName = 'dsPartidas'
    CloseDataSource = False
    DataSet = qryBuscaP
    BCDToCurrency = False
    Left = 463
    Top = 171
  end
  object roqOrdenes: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select'
      '  snumeroorden,'
      '  mdescripcion'
      'from'
      #9'ordenesdetrabajo'
      'where'
      '  scontrato = :contrato and'
      '  sIdTipoOrden <> :status'
      'order by'
      '  sNumeroOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
    Left = 463
    Top = 291
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
  end
  object rx_Isometricos: TRxMemoryData
    FieldDefs = <>
    Left = 128
    Top = 367
    object rx_IsometricossContrato: TStringField
      FieldName = 'sContrato'
    end
    object rx_IsometricossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
    end
    object rx_IsometricossWbs: TStringField
      FieldName = 'sWbs'
    end
    object rx_IsometricossWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
    end
    object rx_IsometricosmIsometrico: TStringField
      FieldName = 'mIsometrico'
      Size = 200
    end
    object rx_IsometricosdIdFecha: TDateField
      FieldName = 'dIdFecha'
    end
    object rx_IsometricossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
    end
    object rx_IsometricosmDescripcion: TStringField
      FieldName = 'mDescripcion'
      Size = 250
    end
    object rx_IsometricosdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object rx_IsometricosdReportado: TFloatField
      FieldName = 'dReportado'
    end
    object rx_IsometricosdAvanceReportado: TFloatField
      FieldName = 'dAvanceReportado'
    end
    object rx_IsometricosdGenerado: TFloatField
      FieldName = 'dGenerado'
    end
    object rx_IsometricosdAvanceGenerado: TFloatField
      FieldName = 'dAvanceGenerado'
    end
  end
  object ds_isometricos: TfrxDBDataset
    UserName = 'ds_isometricos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sNumeroOrden=sNumeroOrden'
      'sWbs=sWbs'
      'sWbsAnterior=sWbsAnterior'
      'mIsometrico=mIsometrico'
      'dIdFecha=dIdFecha'
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'dCantidad=dCantidad'
      'dReportado=dReportado'
      'dAvanceReportado=dAvanceReportado'
      'dGenerado=dGenerado'
      'dAvanceGenerado=dAvanceGenerado')
    DataSet = rx_Isometricos
    BCDToCurrency = False
    Left = 64
    Top = 368
  end
  object RxMDValida: TRxMemoryData
    FieldDefs = <
      item
        Name = 'numero'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'mensaje'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'actividad'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'wbs'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'descripcion'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'cantidadAnexo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ventaMN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ventaDLL'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'DT'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DEMN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DEDLL'
        DataType = ftString
        Size = 20
      end>
    Left = 159
    Top = 366
    object RxMDValidasNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Size = 10
    end
    object RxMDValidasWbs: TStringField
      FieldName = 'sWbs'
      Size = 30
    end
    object RxMDValidadCantidad: TStringField
      FieldName = 'dCantidad'
      Size = 30
    end
    object RxMDValidasuma: TStringField
      FieldName = 'suma'
      Size = 30
    end
    object RxMDValidaaMN: TStringField
      FieldName = 'aMN'
    end
    object RxMDValidaaDLL: TStringField
      FieldName = 'aDLL'
    end
    object RxMDValidabMN: TStringField
      FieldName = 'bMN'
    end
    object RxMDValidabDLL: TStringField
      FieldName = 'bDLL'
    end
    object RxMDValidadCantidadAnexo: TStringField
      FieldName = 'dCantidadAnexo'
    end
    object RxMDValidadescripcion: TStringField
      FieldName = 'descripcion'
      Size = 255
    end
    object RxMDValidamensaje: TStringField
      FieldName = 'mensaje'
      Size = 200
    end
    object RxMDValidasNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 35
    end
    object RxMDValidasWbs2: TStringField
      DisplayLabel = 'wbs2'
      FieldName = 'sWbs2'
      Size = 30
    end
  end
  object frxDBValida: TfrxDBDataset
    UserName = 'frxDBValida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'sWbs=sWbs'
      'dCantidad=dCantidad'
      'suma=suma'
      'aMN=aMN'
      'aDLL=aDLL'
      'bMN=bMN'
      'bDLL=bDLL'
      'dCantidadAnexo=dCantidadAnexo'
      'descripcion=descripcion'
      'mensaje=mensaje'
      'sNumeroOrden=sNumeroOrden'
      'sWbs2=sWbs2')
    DataSet = RxMDValida
    BCDToCurrency = False
    Left = 96
    Top = 368
  end
  object SaveDialog1: TSaveDialog
    Left = 496
    Top = 360
  end
end
