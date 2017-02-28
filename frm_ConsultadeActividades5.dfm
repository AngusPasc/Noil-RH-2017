object frmConsultaActividad5: TfrmConsultaActividad5
  Left = 195
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Historico de Movimientos de Partidas Anexo'
  ClientHeight = 549
  ClientWidth = 927
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poDesigned
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    927
    549)
  PixelsPerInch = 96
  TextHeight = 14
  object bAvance: TGauge
    Left = 529
    Top = 1
    Width = 393
    Height = 17
    BackColor = clBtnHighlight
    Color = 15138559
    ForeColor = 15138559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    MaxValue = 10
    ParentColor = False
    ParentFont = False
    Progress = 0
  end
  object gbOrdenesdeCompra: TGroupBox
    Left = 144
    Top = 137
    Width = 782
    Height = 412
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Ordenes de Compra'
    Color = 16697018
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    object GridOrdenesdeCompra: TRxDBGrid
      Left = 2
      Top = 17
      Width = 778
      Height = 393
      Align = alClient
      Color = clWhite
      Ctl3D = False
      DataSource = ds_OrdendeCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Color = 16301768
          Expanded = False
          FieldName = 'iFolioPedido'
          Title.Alignment = taCenter
          Title.Caption = 'Folio'
          Width = 57
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 16301768
          Expanded = False
          FieldName = 'dIdFecha'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 78
          Visible = True
        end
        item
          Color = 16301768
          Expanded = False
          FieldName = 'sReferencia'
          Title.Alignment = taCenter
          Title.Caption = 'Referencia'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sNumeroOrden'
          Title.Alignment = taCenter
          Title.Caption = 'No. de Orden'
          Width = 185
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'dfechaEntrega'
          Title.Alignment = taCenter
          Title.Caption = 'F. Entrega'
          Width = 89
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'iItem'
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 87
          Visible = True
        end>
    end
  end
  object gbSuministrado: TGroupBox
    Left = 144
    Top = 137
    Width = 782
    Height = 412
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Suministrado'
    Color = 16697018
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    Visible = False
    object GridSuministrado: TRxDBGrid
      Left = 2
      Top = 17
      Width = 778
      Height = 393
      Align = alClient
      Ctl3D = False
      DataSource = ds_Historico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Color = 16301768
          Expanded = False
          FieldName = 'iFolio'
          Title.Alignment = taCenter
          Title.Caption = 'Folio'
          Width = 59
          Visible = True
        end
        item
          Color = 16301768
          Expanded = False
          FieldName = 'sDescripcion'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo de Movto.'
          Width = 154
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 16301768
          Expanded = False
          FieldName = 'dFechaAviso'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 99
          Visible = True
        end
        item
          Color = 16301768
          Expanded = False
          FieldName = 'sReferencia'
          Title.Alignment = taCenter
          Title.Caption = 'Referencia'
          Width = 175
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'dIdFecha'
          Title.Alignment = taCenter
          Title.Caption = 'F. de Captura'
          Width = 89
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sNumeroOrden'
          Title.Alignment = taCenter
          Title.Caption = 'No. de Orden'
          Width = 188
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 86
          Visible = True
        end>
    end
  end
  object gbReportesDiarios: TGroupBox
    Left = 144
    Top = 137
    Width = 782
    Height = 412
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Reportes Diarios'
    Color = 16697018
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Visible = False
    object GridReportesDiarios: TRxDBGrid
      Left = 2
      Top = 17
      Width = 778
      Height = 393
      Cursor = crHelp
      Align = alClient
      Color = clWhite
      Ctl3D = False
      DataSource = ds_bitacora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = GridReportesDiariosDblClick
      TitleButtons = True
      Columns = <
        item
          Alignment = taCenter
          Color = 16301768
          Expanded = False
          FieldName = 'dIdFecha'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 72
          Visible = True
        end
        item
          Color = 16301768
          Expanded = False
          FieldName = 'sNumeroOrden'
          Title.Alignment = taCenter
          Title.Caption = 'No. de Orden'
          Width = 139
          Visible = True
        end
        item
          Color = 16301768
          Expanded = False
          FieldName = 'sNumeroReporte'
          Title.Alignment = taCenter
          Title.Caption = 'No. de Reporte'
          Width = 140
          Visible = True
        end
        item
          Color = 16301768
          Expanded = False
          FieldName = 'sConvenio'
          Title.Alignment = taCenter
          Title.Caption = 'Convenio'
          Width = 222
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'iIdDiario'
          Title.Alignment = taCenter
          Title.Caption = '#'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sDescripcion'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Movto.'
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sPaquete'
          Title.Alignment = taCenter
          Title.Caption = 'Pq'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dAvance'
          Title.Alignment = taRightJustify
          Title.Caption = 'Avance'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sIsometrico'
          Title.Alignment = taCenter
          Title.Caption = 'Isometrico'
          Width = 201
          Visible = True
        end>
    end
  end
  object gbGeneradores: TGroupBox
    Left = 144
    Top = 137
    Width = 782
    Height = 412
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Generadores'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    Visible = False
    object GridGeneradores: TRxDBGrid
      Left = 2
      Top = 17
      Width = 778
      Height = 393
      Cursor = crHelp
      Hint = 'Aqu'#237' se refleja el resultado de la consulta.'
      Align = alClient
      Color = clWhite
      Ctl3D = False
      DataSource = ds_generado
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = GridGeneradoresDblClick
      OnMouseMove = GridGeneradoresMouseMove
      OnMouseUp = GridGeneradoresMouseUp
      OnTitleClick = GridGeneradoresTitleClick
      OnGetCellParams = GridGeneradoresGetCellParams
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'iNumeroEstimacion'
          Title.Alignment = taCenter
          Title.Caption = 'Est.'
          Width = 52
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'iConsecutivo'
          Title.Alignment = taCenter
          Title.Caption = '#'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sNumeroOrden'
          Title.Alignment = taCenter
          Title.Caption = 'Frente de Trabajo'
          Width = 171
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sNumeroGenerador'
          Title.Alignment = taCenter
          Title.Caption = 'Gen.'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'dFechaInicio'
          Title.Alignment = taCenter
          Title.Caption = 'F. Inicio'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'dFechaFinal'
          Title.Alignment = taCenter
          Title.Caption = 'F. Final'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sIsometrico'
          Title.Alignment = taCenter
          Title.Caption = 'Isometrico'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sIsometricoReferencia'
          Title.Alignment = taCenter
          Title.Caption = 'Referencia'
          Width = 115
          Visible = True
        end>
    end
  end
  object gbRequisiciones: TGroupBox
    Left = 146
    Top = 137
    Width = 782
    Height = 412
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Requisiciones'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object GridRequisiciones: TRxDBGrid
      Left = 2
      Top = 17
      Width = 778
      Height = 393
      Align = alClient
      Color = clWhite
      Ctl3D = False
      DataSource = ds_Requisiciones
      FixedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnKeyDown = GridRequisicionesKeyDown
      Columns = <
        item
          Alignment = taCenter
          Color = 16301768
          Expanded = False
          FieldName = 'iFolioRequisicion'
          Title.Alignment = taCenter
          Title.Caption = 'Folio'
          Width = 46
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 16301768
          Expanded = False
          FieldName = 'dIdFecha'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 82
          Visible = True
        end
        item
          Color = 16301768
          Expanded = False
          FieldName = 'sReferencia'
          Title.Alignment = taCenter
          Title.Caption = 'Referencia'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sNumeroOrden'
          Title.Alignment = taCenter
          Title.Caption = 'No. de Orden'
          Width = 161
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'iItem'
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 86
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sMedida'
          Title.Alignment = taCenter
          Title.Caption = 'Medida'
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'dfechaRequerimiento'
          Title.Alignment = taCenter
          Title.Caption = 'F. Requerido'
          Width = 92
          Visible = True
        end>
    end
  end
  object Grid_Resumen: TDBGrid
    Left = 529
    Top = 22
    Width = 395
    Height = 117
    Hint = 'Aqu'#237' se muestra el resultado de la consulta.'
    Anchors = [akLeft, akTop, akRight]
    Color = clWhite
    Ctl3D = False
    DataSource = ds_rxAcumulados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupPrincipal
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnKeyDown = Grid_ResumenKeyDown
    OnMouseMove = Grid_ResumenMouseMove
    OnMouseUp = Grid_ResumenMouseUp
    OnTitleClick = Grid_ResumenTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'sFase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Caption = 'Fase'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dCantidad'
        Title.Alignment = taRightJustify
        Title.Caption = 'Cantidad'
        Width = 60
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dAvance'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 68
        Visible = True
      end>
  end
  object grEstimaciones: tNewGroupBox
    Left = 0
    Top = 1
    Width = 529
    Height = 134
    Caption = 'Parametros de la Consulta'
    Color = 14145495
    DragKind = dkDock
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    PopupMenu = PopupPrincipal
    TabOrder = 7
    HighLightColor = clBtnHighlight
    ShadowColor = 10928586
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 524
    Title.HighLightColor = 14145495
    Title.ShadowColor = clWhite
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaisedLine
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 20
    Title.BkColor = 14145495
    TransparentMode = False
    Border = True
    Shape = tsRectRound
    object Label3: TLabel
      Left = 6
      Top = 75
      Width = 66
      Height = 15
      Caption = 'Descripci'#243'n'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -8929846
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 28
      Width = 61
      Height = 15
      Caption = 'No. &Partida'
      Color = 14145495
      FocusControl = tsNumeroActividad
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -8929846
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 50
      Width = 40
      Height = 15
      Caption = 'Medida'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -8929846
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 305
      Top = 30
      Width = 64
      Height = 15
      Caption = 'Cant. Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -8929846
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 152
      Top = 28
      Width = 61
      Height = 15
      Caption = 'Ponderado'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -8929846
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 152
      Top = 52
      Width = 56
      Height = 15
      Caption = 'Precio MN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -8929846
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object imgNotas: TImage
      Left = 465
      Top = 27
      Width = 16
      Height = 22
      Picture.Data = {
        07544269746D617052020000424D520200000000000036000000280000000C00
        00000F00000001001800000000001C0200000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF8000FF8000
        FF8000FF8000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FF80
        00FF8000FF8000FF8000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
        0000FF8000FF8000FF8000FF8000000000C0C0C0C0C0C0C0C0C0C0C0C0000000
        000000000000000000000000FF8000FF8000000000C0C0C0C0C0C0C0C0C0C0C0
        C000000000FEFE00FEFE00FEFE000000FF8000FF8000000000C0C0C0C0C0C0C0
        C0C0C0C0C000000000FEFE00FEFE00FEFE000000FF8000FF8000000000C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FF8000FF8000FF8000FF80000000
        00000000000000000000000000000000000000000000000000000000FF8000FF
        8000FF8000FF8000FF8000FF8000FF800000000000FFFF00FFFF00FFFF000000
        000000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF800000FFFF00FF
        FF00FFFF000000000000FF8000FF8000FF8000000000000000000000000000FF
        800000FFFF00FFFF00FFFF000000FF8000FF8000FF800000000000FFFF00FFFF
        000000FF800000000000FFFF00FFFF000000FF8000FF8000FF800000000000FF
        FF00FFFF00FFFF00000000FFFF00FFFF00FFFF000000FF8000FF8000FF8000FF
        800000000000FFFF00FFFF00FFFF00FFFF00FFFF000000FF8000FF8000FF8000
        FF8000FF8000FF8000000000000000000000000000000000FF8000FF8000}
      Visible = False
    end
    object tmDescripcion: TDBMemo
      Left = 66
      Top = 67
      Width = 460
      Height = 63
      Hint = 'Descripci'#243'n general'
      DataField = 'mDescripcion'
      DataSource = ds_Anexo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupPrincipal
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 5
      OnEnter = tmDescripcionEnter
      OnExit = tmDescripcionExit
    end
    object tsNumeroActividad: TRxDBLookupCombo
      Left = 66
      Top = 23
      Width = 80
      Height = 23
      Hint = 'Seleccione el n'#250'mero de partida.'
      DropDownCount = 8
      EmptyItemColor = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ListStyle = lsDelimited
      LookupField = 'sNumeroActividad'
      LookupDisplay = 'sNumeroActividad'
      LookupSource = ds_Anexo
      ParentFont = False
      TabOrder = 0
      OnChange = tsNumeroActividadChange
      OnEnter = tsNumeroActividadEnter
      OnExit = tsNumeroActividadExit
      OnKeyPress = tsNumeroActividadKeyPress
    end
    object tdPonderadoAnexo: TDBEdit
      Left = 217
      Top = 23
      Width = 80
      Height = 23
      Hint = 'Ponderado.'
      DataField = 'dPonderado'
      DataSource = ds_Anexo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = tdPonderadoAnexoEnter
      OnExit = tdPonderadoAnexoExit
      OnKeyPress = tdPonderadoAnexoKeyPress
    end
    object tdCantidadAnexo: TDBEdit
      Left = 369
      Top = 23
      Width = 88
      Height = 23
      Hint = 'Muestra la cantidad.'
      DataField = 'dCantidadAnexo'
      DataSource = ds_Anexo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = tdCantidadAnexoEnter
      OnExit = tdCantidadAnexoExit
      OnKeyPress = tdCantidadAnexoKeyPress
    end
    object tsMedidaAnexo: TDBEdit
      Left = 66
      Top = 45
      Width = 80
      Height = 23
      Hint = 'Muestra la medida.'
      DataField = 'sMedida'
      DataSource = ds_Anexo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = tsMedidaAnexoEnter
      OnExit = tsMedidaAnexoExit
      OnKeyPress = tsMedidaAnexoKeyPress
    end
    object tdPrecioMN: TDBEdit
      Left = 217
      Top = 45
      Width = 80
      Height = 23
      Hint = 'muestra el precio en moneda nacional.'
      DataField = 'dVentaMN'
      DataSource = ds_Anexo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnEnter = tdPrecioMNEnter
      OnExit = tdPrecioMNExit
      OnKeyPress = tdPrecioMNKeyPress
    end
  end
  object PanelPrincipal: TListView
    Left = 0
    Top = 138
    Width = 140
    Height = 409
    Anchors = [akLeft, akTop, akBottom]
    Color = clGradientActiveCaption
    Columns = <>
    ColumnClick = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FlatScrollBars = True
    FullDrag = True
    GridLines = True
    HideSelection = False
    HotTrack = True
    Items.ItemData = {
      01DC0000000500000000000000FFFFFFFFFFFFFFFF00000000000000000B5200
      65007100750069007300690063006900F3006E0001000000FFFFFFFFFFFFFFFF
      00000000000000000F4F007200640065006E00200064006500200043006F006D
      0070007200610002000000FFFFFFFFFFFFFFFF00000000000000000C53007500
      6D0069006E006900730074007200610064006F0003000000FFFFFFFFFFFFFFFF
      0000000000000000095200650070006F0072007400610064006F0004000000FF
      FFFFFFFFFFFFFF000000000000000008470065006E0065007200610064006F00}
    LargeImages = Panel
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    ShowWorkAreas = True
    SmallImages = Panel
    StateImages = Panel
    TabOrder = 0
    OnClick = PanelPrincipalClick
  end
  object Panel1: TPanel
    Left = 263
    Top = 208
    Width = 377
    Height = 73
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object Label4: TLabel
      Left = 14
      Top = 12
      Width = 49
      Height = 15
      Caption = 'Partidas:'
      Color = 14145495
      FocusControl = tsNumeroActividad
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -8929846
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object chPartidas: TcxCheckComboBox
      Left = 62
      Top = 8
      ParentFont = False
      Properties.EmptySelectionText = 'Seleccione las partidas'
      Properties.EditValueFormat = cvfStatesString
      Properties.Items = <>
      TabOrder = 0
      Width = 307
    end
    object cxButton1: TcxButton
      Left = 211
      Top = 35
      Width = 75
      Height = 25
      Caption = 'Reporte'
      ModalResult = 1
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 292
      Top = 36
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 2
    end
  end
  object ds_bitacora: TDataSource
    AutoEdit = False
    DataSet = Bitacora
    Left = 672
    Top = 272
  end
  object ds_Anexo: TDataSource
    AutoEdit = False
    DataSet = Anexo
    Left = 93
    Top = 208
  end
  object ds_rxAcumulados: TDataSource
    AutoEdit = False
    DataSet = rxAcumulados
    Left = 460
    Top = 80
  end
  object ds_Historico: TDataSource
    AutoEdit = False
    DataSet = Historico
    Left = 672
    Top = 238
  end
  object ds_generado: TDataSource
    AutoEdit = False
    DataSet = Generado
    Left = 672
    Top = 312
  end
  object rxAcumulados: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sFase'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dCantidad'
        DataType = ftFloat
      end
      item
        Name = 'dAvance'
        DataType = ftString
        Size = 10
      end>
    Left = 496
    Top = 80
    object rxAcumuladossFase: TStringField
      FieldName = 'sFase'
      Size = 30
    end
    object rxAcumuladosdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object rxAcumuladosdAvance: TStringField
      FieldName = 'dAvance'
      Size = 10
    end
  end
  object ds_Requisiciones: TDataSource
    AutoEdit = False
    DataSet = Requisiciones
    Left = 672
    Top = 190
  end
  object ds_OrdendeCompra: TDataSource
    AutoEdit = False
    DataSet = OrdendeCompra
    Left = 680
    Top = 350
  end
  object Panel: TImageList
    Height = 25
    Width = 25
    Left = 115
    Top = 90
    Bitmap = {
      494C010105000900840019001900FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000064000000320000000100200000000000204E
      0000000000000000000000000000000000000000000000000000FEFEFEFFFAFA
      FAFFF3F3F3FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFF3F3F3FFFAFAFAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAEAEBFFCECDCEFFB5B5B6FFA7A7A8FFA7A7A8FFA7A7
      A8FFA7A7A8FFA7A7A8FFA7A6A8FFA7A7A8FFA7A7A8FFA7A7A8FFA7A6A8FFA7A7
      A8FFA7A7A8FFA7A7A8FFA7A7A8FFA7A6A8FFB5B5B6FFCECDCEFFEAEAEBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAEAEBFF6C6B6CFF7D7D
      7DFF7F7F7FFF8D8D8DFF8D8D8DFF909090FFB1B1B1FF767777FF757575FF7D7D
      7DFF7B7B7BFF737372FF747473FF797979FFB1B1B1FF8C8C8CFF949594FF9999
      99FFA3A3A3FFCACACAFF9E9D9DFFEBEBEBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFAFFCBCBCCFF7A7A7AFF777777FF828282FF7C7C7CFF5E5D5DFFACAC
      ADFFBFBFC0FF8E8E8EFF303131FF313131FF2F2E2FFF262626FF272727FF9D9D
      9EFFBFC0C0FF9F9FA0FF606060FF7D7D7DFF828282FF7A7A7AFFB7B8B8FFCECE
      CEFFFAFAFBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4FF999999FF757575FF8181
      81FF808080FF636363FFB3B3B3FFCDCDCDFFCECFCFFF4D4D4DFF454545FF3434
      33FF2F2F2FFF2A2A2AFF454545FF404040FFCECECEFFCDCDCDFFA7A7A7FF6161
      61FF808080FF818181FF777777FFAAA9AAFFF4F4F4FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FF969493FFD6D6D6FFDCDCDCFFE4E4E4FFE3E4E3FFD9D9D9FF8989
      89FF919191FF232323FF303031FF363736FF373838FF373737FF2D2D2DFF3132
      32FFAAAAAAFF858585FFE3E3E3FFE3E4E3FFE4E4E4FFDADBDAFFD6D7D7FF9292
      92FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFA3A0A0FFECECECFFEDED
      EDFFEAEAEAFF989898FFC2C3C2FF565656FF575757FF3D3D3CFF404040FF4040
      40FF414040FF404040FF404040FF393939FF454545FF676667FFAEAEAEFFADAE
      AEFFEDEDEDFFEDEDEDFFECECEDFF8D8C8CFFF0EFF0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FFAEACAAFFD6D6D5FF7B7B7BFFDADAD9FF929292FF3C3C3CFF5354
      54FF3B3B3BFF4B4A4AFF4A4A4AFF4B4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF424242FF5A5A5AFF3E3E3EFFA7A7A7FFE1E1E1FF888888FFBBBBBBFF8C8B
      8BFFF0EFF0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFB6B3B2FF898A8AFF4D4D
      4DFF8A8A8AFF4C4D4CFF40403FFF383838FF3E3F3EFF545454FF545554FF5757
      57FF797978FF585858FF545454FF545454FF282828FF424242FF323232FF4849
      49FF888888FF464645FF777777FF8C8B8BFFF0EFF0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FFBEBCBAFF6E6E6EFF6B6B6BFF6C6C6CFF3D3D3DFF40403FFF3939
      39FF575757FF6B6B6BFF6C6B6BFF4B4B4BFF636363FF777777FF6B6B6AFF6B6B
      6BFF6F6F6EFF727171FF717171FF717171FF6B6B6BFF6E6E6EFF6B6B6AFF8C8B
      8BFFF0EFF0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFBFBDBBFF434343FF5A5A
      5AFF7A7979FF3C3D3DFF3B3B3BFF404040FF4A4A4AFF787878FF787878FF6464
      64FF4C4D4CFF747474FF797878FF787878FF4D4D4DFF343434FF444444FF3333
      34FF787878FF3D3D3DFF343434FF8E8C8CFFF0EFF0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FFC0BDBBFF393939FF6D6D6CFF858584FF3A3A3AFF3D3D3DFF3737
      37FF373737FF848484FF848484FF848484FF848483FF848484FF848484FF8484
      84FF313131FF414141FF353535FF3A3A3AFF848484FF808080FF505050FF908F
      8EFFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFC1BEBBFF8E8E8FFF9292
      92FF929192FF323232FF343534FF363636FF6F6F6FFF919191FF919291FF9191
      92FF919191FF919192FF919191FF929293FF3D3E3EFF343534FF3E3D3EFF3232
      32FF919191FF898A8AFF7E7E7EFF929191FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FFC1BEBBFF343434FF454545FFA8A8A8FF9C9C9CFFB4B4B4FFA4A4
      A5FF575857FF464646FF686868FF828282FF9D9C9DFFB9B9B9FF6B6B6CFF5353
      53FF585858FF474747FF474747FF939394FFADADADFF696969FF363736FF9897
      97FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFC1BEBBFF515151FFB5B5
      B5FFB9BABAFFC4C4C5FF9D9D9DFF454545FF5B5B5BFF626261FF525252FF6161
      61FF545353FFAFAFAFFF9C9C9CFF4D4D4DFF525252FF5B5B5BFF828282FFC6C6
      C7FF8F8F90FF9E9E9EFF5D5D5DFF9C9B9AFFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FFC1BDBBFF656565FF6D6D6DFF595959FFD2D2D2FFCECFCFFF6A6A
      6BFF535353FF5D5E5DFF6C6C6CFF5D5D5CFF595959FF969596FFCBCCCCFF5F5F
      5FFF5B5B5AFF848484FFD1D1D1FFD1D1D2FF5E5E5EFF646464FF666666FF9F9D
      9DFFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFC0BDBBFF787978FF8181
      81FF8C8C8CFF838383FF767675FFE7E7E7FFE6E6E6FF9C9B9CFF767676FF6262
      62FF545454FF494949FFD3D3D3FFD1D1D1FFE6E6E6FFE6E6E5FF999999FF7070
      70FF8F8F8FFF7E7E7DFF7F7F7FFFA6A5A4FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FFBEBBBAFF8D8D8DFF878787FF8B8B8BFF888888FFABABACFFEAEA
      EAFFA8A8A8FFECECECFFEEEEEEFFEAEAEAFFE2E2E2FFEBEBEBFFECECECFFECEC
      ECFF797979FFDADADAFFC4C4C4FF8A8A8AFF8B8B8BFF8A8A8AFF89898AFFA8A7
      A6FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFBBB9B7FF949494FF9898
      98FF959595FF969696FFC0C0C0FFA7A7A7FF868686FFEBEBEBFF9F9F9FFFF3F3
      F3FFE4E4E4FFF2F2F2FF979797FFD7D7D7FF878787FF919292FFC0C0C0FF9292
      92FF969696FF979797FF979797FFA8A7A6FFF0F0F0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0FFB7B5B3FFA3A4A4FFA3A3A3FFA4A4A4FFA3A3A4FFA6A6A6FFA3A3
      A3FFA2A2A2FFB5B5B5FF919292FFE9E9EAFFACACACFFF8F8F7FF999999FF9E9E
      9EFF9C9C9CFFA4A3A4FFA2A2A2FFA4A4A4FFA4A4A4FFA4A4A4FFA3A3A4FFA4A3
      A2FFF0F0F0FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FFB1AFAEFFB9B9B9FFBCBC
      BDFFBABABBFFBBBBBBFFBABABBFFBCBCBCFFB9B9BAFFB9B9B9FFBDBDBDFFBABA
      BBFFB7B7B8FFBEBEBEFFB7B8B8FFBDBEBEFFBDBDBDFFB8B9B9FFBDBDBDFFB9BA
      BAFFBABABBFFBBBBBBFFBCBCBCFF999898FFF5F4F5FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFBFFAEADACFFC6C6C7FFC3C4C4FFC6C7C7FFC5C6C6FFC6C6C7FFC4C4
      C5FFC7C7C8FFC8C8C9FFC2C2C2FFC8C8C9FFC9C9C9FFC1C1C2FFC9C9C9FFC1C1
      C2FFC2C2C2FFC8C8C9FFC3C3C3FFC7C7C8FFC6C6C7FFC5C5C6FFC0C0C1FFA3A3
      A3FFFBFBFBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CACACAFFA5A5A6FFCFD0
      CFFFCDCDCDFFCFCFCFFFCECFCEFFD1D1D1FFCCCDCDFFCBCBCCFFD3D3D3FFCACA
      CAFFCACACAFFD3D3D3FFCACACBFFD3D3D3FFD3D3D3FFCBCBCBFFD2D2D2FFCDCD
      CCFFCECECEFFCDCDCDFF9F9F9FFFD5D5D6FFFEFEFEFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BBB9B9FFA9A7A7FF929191FF9C9C9AFFA1A09FFFA6A5
      A3FFA6A5A3FFA7A6A5FFABAAA9FFA8A7A5FFA8A7A5FFACAAA8FFA8A6A5FFABAA
      A8FFA8A7A6FFA2A19FFF9F9E9DFF949393FF7E7D7CFF807F7EFFA5A5A5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFDEDD
      DDFFC9C8C8FFC1C0BEFFD8D6D5FFE2E0DFFFE6E4E2FFE9E7E5FFEAE8E6FFEBE8
      E6FFEBE8E5FFEBE8E6FFEAE8E6FFE9E7E5FFE5E4E1FFE0DFDCFFC9C7C5FFB6B5
      B5FFBAB9B9FFDEDEDEFFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6F6F6FFF2F2F2FFEEEEEEFFECECECFFE6E6E6FFE4E4E4FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE4E4E4FFEAEAEAFFECECECFFF0F0F0FFF4F4F4FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6FFDEDE
      DEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
      DEFFDEDEDEFFDEDEDEFFDEDEDEFFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
      E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFECECECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFDEDEDEFFC4C4C4FF9298
      9BFF818E93FF758990FF6E858EFF74888FFF828F95FF969B9DFFC2C2C2FFDCDC
      DCFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEE9
      D0FF3EA477FF498F67FF508862FF57805CFF667351FF6E6B4BFF756445FF7D5C
      40FF8A4D35FF8A4837FF83463FFF754352FF6E415CFF663F65FF5F3D6EFF5039
      80FF493889FF413693FF3A349CFFF0F0F0FFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF659FB8FFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFE7E7E7FFE7E7E7FFE8E8E8FFE4E4E4FFE0E0E0FFDCDCDCFFD5D5
      D5FFCECECEFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFEFEFEFFFD2D2D2FFF8F8F8FFF8F8
      F8FFF8F8F8FFF9F9F9FFFBFBFBFFFBFBFBFFFBFBFBFFF6F6F6FFF2F2F2FFECEB
      EBFFE4E4E4FFD4D4D4FFEEEEEEFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFF385A
      7DFF0A4B94FF0054B0FF0066C5FF0089DCFF0096E2FF009EE5FF00A6E4FF009E
      DEFF0094D4FF0088C9FF006CABFF005D9AFF085087FF2E577BFFCACACAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0FFF8F8F8FFF7F7
      F7FFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFDFDFDFFFDFDFDFFFEFEFEFFF9F9
      F9FFF4F4F4FFEEEEEEFFE5E4E4FFCECECEFFA8AAAAFF0E0E0EFF121212FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF649EB7FFCACACAFFD9D9D9FFDDDDDDFFE6E6E6FFFDFDFDFFFDFDFDFFE8E8
      E8FFF9F9F9FFF4F4F4FFDBDBDBFFE4E4E4FFD5D5D5FFCACACAFFEAEAEAFFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FFF5F5F5FFF2F2F2FFDEDEDEFFE5E5E5FFDFDFDFFFDDDDDDFFE7E7E7FFE0E0
      E0FFDEDEDEFFE4E4E4FFDADADAFFD4D4D4FFD4D4D4FFCECECEFFCFCFCFFFE5E5
      E5FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8C8C8CFF002472FF003995FF004FB1FF0065C5FF0089
      DCFF0096E2FF009EE5FF00A6E4FF009EDEFF0094D4FF0088C9FF006CABFF005D
      9AFF004D88FF003E74FF88898BFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA0A0A0FFF8F8F8FFF7F7F7FFFAFAFAFFFAFAFAFFFBFBFBFFFBFB
      FBFFFDFDFDFFFDFDFDFFFEFEFEFFF9F9F9FFF4F4F4FFEEEEEEFFE4E4E4FF92A2
      A7FF6BA8BBFF2C5562FF828282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF6AA6C0FFC1C1C1FFCCCCCCFFCFCF
      CFFFD6D6D6FFE7E7E7FFE7E7E7FFD7D7D7FFE5E5E5FFE1E1E1FFCECECEFFD7D7
      D7FFC1C1C1FFDBDBDBFFC8C8C8FFE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFEFEFEFFFD4D4D4FFE5E5E5FFF0F0
      F0FFE8E8E8FFE7E7E7FFF2F2F2FFEAEAEAFFE8E8E8FFEEEEEEFFE3E3E3FFDBDB
      DBFFDFDFDFFFC5C5C5FFD9D9D9FFCDCDCDFFE9E9E9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838384FF0023
      72FF003995FF004FB1FF0066C5FF0089DCFF0096E2FF009EE5FF00A6E4FF009E
      DEFF0094D4FF0088C9FF006CABFF005D9AFF004D88FF003E74FF7F8285FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0FFF8F8F8FFF7F7
      F7FFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFDFDFDFFFDFDFDFFFEFEFEFFF9F9
      F9FFF4F4F4FFEEEEEEFFD5D6D6FF7CB9CCFF57A8C1FF5394A9FFDBDCDCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF6AA6C0FFC1C1C1FFCCCCCCFFCFCFCFFFD6D6D6FFE7E7E7FFE7E7E7FFD7D7
      D7FFE6E6E6FFE3E3E3FFD1D1D1FFDBDBDBFF9C9C9CFFFEFEFEFFF3F3F3FFDADA
      DAFFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FFEFEFEFFFD2D2D2FFD3D3D3FFD8D8D8FFD5D5D5FFEAEAEAFFFAFAFAFFF2F2
      F2FFEFEFEFFFF9F9F9FFEEEEEEFFE6E6E6FFECECECFFB5B5B5FFF0F0F0FFF1F1
      F1FFD5D5D5FFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF838384FF002372FF003995FF004FB1FF0066C5FF0089
      DCFF0096E2FF009EE5FF00A6E4FF009EDEFF0094D4FF0088C9FF006CABFF005D
      9AFF004D88FF003E74FF7F8285FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFFFCFF48D49BFF85FBCBFFDFF7EEFFF9F9F9FFFAFAFAFFFBFBFBFFFBFB
      FBFFFCFCFCFFFDFDFDFFFEFEFEFFFBFBFBFF999B9CFFAABEC6FF96C4D4FF409E
      BAFF579BB0FFE6E6E6FFDADADAFFEDEDEDFFD0D0FEFF6E6EFFFF9494FFFFF8F8
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF659FB8FFCACACAFFD9D9D9FFDDDD
      DDFFE6E6E6FFFCFCFCFFFDFDFDFFE8E8E8FFFDFDFDFFFAFAFAFFE1E1E1FFF1F1
      F1FFBFBEBEFF9E9E9DFFB6B6B5FFCACACAFFCBCBCBFFF2F2F2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFF5F5F4FFF2F2F2FFCCCCCCFFCCCC
      CCFFCACACAFFDBDBDBFFE6E6E6FFE0E0E0FFDFDFDFFFE7E7E7FFDEDEDEFFDADA
      DAFFDFDFDFFFB4B4B4FFA2A2A2FFB6B6B6FFCCCCCBFFCFCFCFFFEBEBEBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838384FF0023
      72FF003995FF004FB1FF0065C5FF0089DCFF0096E2FF009EE5FF00A6E4FF009E
      DEFF0094D4FF0088C9FF006CABFF005D9AFF004D88FF003E74FF7F8285FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AFFD6FF30E199FF49FCB4FF5DFB
      BBFFF9F9F9FFFAFAFAFFFAFAFAFFFBFBFBFFFCFCFCFFFDFDFDFFFDFDFDFFA9A9
      A9FF131313FF475459FF67A0B2FF48A1BCFF79939AFFB6B6B5FFCACACAFFBFBF
      CFFF5050FAFF4C4CFEFF4C4CFFFF9A9AFFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF659FB8FFC1C1C1FFCCCCCCFFCFCFCFFFD6D6D6FFE6E6E6FFE7E7E7FFD7D7
      D7FFE8E8E8FFE6E6E6FFD4D4D4FFE1E1E1FFD5D5D5FFC2C2C2FFC8C8C8FFC1C0
      C0FFDBDBDBFFD5D5D5FFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FFEFEFEEFFD3D3D3FFCFCFCFFFD2D2D2FFD0D0D0FFE3E3E3FFF1F1F1FFEAEA
      EAFFE7E7E7FFF2F2F2FFE9E9E9FFE3E3E3FFEAEAEAFFD5D5D5FFC9C9C9FFCCCB
      CBFFC7C7C6FFD2D2D2FFD9D9D9FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF838384FF002371FF003995FF004FB1FF0066C5FF0089
      DCFF0096E1FF009EE5FF00A6E4FF009EDDFF0094D4FF0088C9FF006CABFF005D
      9AFF004D88FF003E74FF7F8285FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5CFFBDFF30E199FF49FCB4FF49FCB4FFF9F9F9FFFAFAFAFFFAFAFAFFFBFB
      FBFFFCFCFCFFFDFDFDFFFDFDFDFF1A1A1AFF1B1B1BFF242424FF272C2EFF62A1
      B4FFD1D2D2FFD8D8D8FFD0D0D0FFA9A9E3FF3F3FF1FF4A4AFCFF4C4CFFFF6868
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF6AA6C0FFCACACAFFD9D9D9FFDDDD
      DDFFE6E6E6FFFCFCFCFFFCFCFCFFE7E7E7FFFEFEFEFFFDFDFDFFE6E6E6FFF8F8
      F8FFF2F2F2FFDDDDDDFFEDEDEDFFEBEBEBFFEBEBEBFFEFEFEFFFE4E4E4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFF3F3F3FFECECECFFCECECEFFD1D1
      D1FFCFCFCFFFE1E1E1FFEFEFEFFFE7E7E7FFE5E5E5FFF1F1F1FFE9E9E9FFE4E4
      E4FFEDEDEDFFE0E0E0FFDBDBDBFFE2E2E2FFE1E1E1FFE2E2E2FFECECECFFE7E7
      E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838384FF0023
      72FF003995FF004FB1FF0066C5FF0089DCFF0096E2FF009EE4FF00A6E3FF009E
      DDFF0094D4FF0088C9FF006CABFF005D9AFF004D88FF003E74FF7F8285FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6CFFC3FF30E199FF49FCB3FF49FC
      B3FFF8F8F8FFF9F9F9FFFAFAFAFFFBFBFBFFFCFCFCFFFCFCFCFFE5E5E5FF1F1F
      1FFF262626FF252525FF1C1C1CFF89969AFFEFEFEFFFEDEDEDFFEBEBEBFFCCCC
      EEFF4747F9FF4444F6FF4C4CFFFF7E7EFFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF6AA6C0FFCACACAFFD9D9D9FFDDDDDDFFE5E5E5FFFBFBFBFFFCFCFCFFE7E7
      E7FFFDFDFDFFFDFDFDFFE8E8E8FFFDFDFDFFFBFBFBFFE4E4E4FFF8F8F8FFF7F7
      F7FFF7F7F7FFF9F9F9FFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FFF3F3F3FFF0F0F0FFCBCBCBFFCCCCCCFFCACACAFFDADADAFFE6E6E6FFDFDF
      DFFFDEDEDEFFE7E7E7FFE1E1E1FFDFDFDFFFE8E8E8FFDFDFDFFFDDDDDDFFE4E4
      E4FFE4E4E4FFEDEDEDFFF8F8F8FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF838384FF002372FF003995FF004FB1FF0065C5FF0089
      DCFF0097E1FF009FE4FF00A6E4FF009EDDFF0094D4FF0088C9FF006CABFF005D
      9AFF004D88FF003E74FF7F8285FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF74B89CFFCBF8E5FFF5F5F5FFF7F7F7FFF8F8F8FFF9F9F9FFFAFA
      FAFFFBFBFBFF6F6F6FFF232323FF252525FF242424FF222222FF272727FFFBFB
      FBFFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFF9F9F9FFC6C6DFFFF8F8FFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF639CB6FFC1C1C1FFCCCCCCFFCFCF
      CFFFD5D5D5FFE6E6E6FFE6E6E6FFD6D6D6FFE7E7E7FFE7E7E7FFD7D7D7FFE8E8
      E8FFE7E7E7FFD7D7D7FFE6E6E6FFE6E6E6FFFBFBFBFFFCFCFCFFDEDEDEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFEDEDEDFFD2D2D2FFCFCFCFFFD2D2
      D2FFD0D0D0FFE2E2E2FFF0F0F0FFE8E8E8FFE7E7E7FFF2F2F2FFEAEAEAFFE8E8
      E8FFF3F3F3FFEAEAEAFFE6E6E6FFF0F0F0FFF0F0F0FFF0F0F0FFFBFBFBFFDFDF
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838384FF0023
      72FF003D95FF015CB1FF137DC5FF50B0DBFF68BEE0FF78C6E4FF80C7E3FF76BF
      DDFF65B1D4FF4C9FC9FF1372ABFF025D9AFF004D88FF003E74FF7F8285FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0FFF6F6F6FFF4F4
      F4FFF7F7F7FFF8F8F8FFF9F9F9FFFAFAFAFF999999FF2F2F2FFF383838FF2424
      24FF1C1C1CFF373737FFCECECEFFFDFDFDFFFCFCFCFFFCFCFCFFFBFBFBFFFBFB
      FBFFFCFCFCFFDBDADCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF66A1BBFFCACACAFFD9D9D9FFDDDDDDFFE5E5E5FFFAFAFAFFFBFBFBFFE6E6
      E6FFFCFCFCFFFCFCFCFFE7E7E7FFFDFDFDFFFEFEFEFFE8E8E8FFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FFF2F2F1FFEAEAEAFFCECECEFFD1D1D1FFCFCFCFFFE1E1E1FFEEEEEEFFE6E6
      E6FFE3E3E3FFEFEFEFFFE8E8E8FFE5E5E5FFF0F0F0FFE9E9E9FFE6E6E6FFF1F1
      F1FFF1F1F1FFF3F3F3FFFDFDFDFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF838384FF20456EFF517189FF87959EFFAEAFB2FFD0D0
      D3FFDADADDFFE0E0E3FFE1E1E3FFDBDBDDFFD1D1D4FFC6C6C9FFA8A8ABFF8891
      9AFF587288FF284F74FF7F8285FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6FDF6FF38BC38FF68DD68FFC8ECC8FFF6F6F6FFF7F7F7FFF8F8F8FFF9F9
      F9FF404040FF424242FF252525FF212121FF3A3A3AFFAFAFAFFFFDFDFDFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE5C1F2FFAE4CD0FFC776E3FFF8EE
      FBFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF6AA6C0FFC1C1C1FFCCCCCCFFCFCF
      CFFFD5D5D5FFE5E5E5FFE5E5E5FFD6D6D6FFE6E6E6FFE6E6E6FFD7D7D7FFE7E7
      E7FFE7E7E7FFD7D7D7FFE8E8E8FFE8E8E8FFFEFEFEFFFEFEFEFFDEDEDEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFEDEDECFFD0D0D0FFD3D2D1FFD9D8
      D7FFD6D5D4FFE8E8E8FFF7F7F7FFEEEEEEFFD2D2D2FFFAFAFAFFF1F1F1FFEEEE
      EEFFFBFBFBFFF2F2F2FFEFEFEFFFFCFCFCFFFCFCFCFFF3F3F3FFFDFDFDFFDFDF
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838484FF5656
      58FF78787AFF959597FFAEAEB0FFD0D1D3FFDADADDFFE0E0E3FFE1E1E4FFDBDB
      DDFFD1D1D4FFC5C5C9FFA8A8ABFF97979AFF858588FF717174FF818385FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92E992FF30BE30FF49D849FF50D8
      50FFF5F5F5FFF6F6F6FFF7F7F7FFD7D7D7FF4C4C4CFF282828FF252525FF3030
      30FF808080FFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFF6EA
      FAFFB74FDBFFAB42D1FFB64CDBFFCE86E6FFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF6AA6C0FFC1C1C1FFCCCCCCFFCFCFCFFFD4D4D4FFE4E4E4FFE5E5E5FFD5D5
      D5FFE6E6E6FFE6E6E6FFD6D6D6FFE6E6E6FFE6E6E6FFD7D7D7FFE7E7E7FFE7E7
      E7FFFCFCFCFFFDFDFDFFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FFECECEBFFD1D1D1FFF4D0B7FFF4C9AEFFF5C3A2FFF8E1D1FFF9F0E9FFEFE6
      E0FFE4E2E0FFF0F0F0FFE8E8E8FFE6E6E6FFF1F1F1FFE9E9E9FFE7E7E7FFF1F1
      F1FFF1F1F1FFF1F1F1FFFCFCFCFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF838383FF555658FF78787AFF959597FFAEAEB0FFD0D1
      D3FFDADADDFFE0E0E3FFE1E1E3FFDBDBDDFFD1D1D4FFC6C6C9FFA8A8ABFF9797
      9AFF858588FF717174FF848485FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7AE37AFF30BE30FF48D848FF48D647FFF4F4F4FFF2F2F1FF7F7F7FFF6969
      69FF252525FF222222FF282828FFECECECFFFBFBFBFFFBFBFBFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4E8F8FFB64DDAFFAB42D1FFB64CDBFFCD84
      E5FFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF659EB8FFCACACAFFD9D9D9FFDDDD
      DDFFE2E2E2FFF8F8F8FFF9F9F9FFE5E5E5FFFAFAFAFFFAFAFAFFE6E6E6FFFBFB
      FBFFFBFBFBFFE6E6E6FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFDEDEDEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFF0F0EFFFE8E8E7FFD2CECBFFD5D0
      CDFFDCCFC6FFF9CDB1FFFED2B6FFFDCEB0FFDBCDC3FFD2D2D2FFCDCDCDFFCCCC
      CCFFD2D2D2FFCECECEFFCCCCCCFFD3D3D3FFD3D3D3FFF1F1F1FFFBFBFBFFDFDF
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FF5556
      58FF78787AFF959597FFAEAEB0FFD1D1D3FFDBDBDDFFE1E1E3FFE2E2E4FFDBDB
      DDFFD2D2D4FFC6C6C9FFA8A8ABFF97979AFF858588FF717174FF848485FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEF8DEFF30BE30FF49D749FF9BE4
      9BFFF3F3F3FF939392FF777777FF505050FF242424FF1F1F1FFF5A5A5AFFFAFA
      FAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFE1B7EFFFAE4AD0FFC46EE1FFF5E8FAFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF66A1BBFFC1C1C1FFCCCCCCFFCFCFCFFFD3D3D3FFE3E3E3FFE3E3E3FFD5D5
      D5FFE5E5E5FFE5E5E5FFD6D6D6FFE5E5E5FFE6E6E6FFD6D6D6FFE6E6E6FFE6E6
      E6FFFBFBFBFFFCFCFCFFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FFEBEBEBFFCFCFCFFFD2D2D1FFD8D8D8FFDED6D1FFF9CBACFFFDCCACFFFDCA
      A8FFE1D1C7FFD8D8D8FFD3D3D3FFD1D1D1FFD8D8D8FFD3D3D3FFD1D1D1FFD8D8
      D8FFD8D8D8FFF0F0F0FFFBFBFBFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF838383FF555658FF78787AFF969697FFAEAEB0FFD1D1
      D3FFDBDBDDFFE1E1E3FFE2E2E4FFDBDBDDFFD2D2D4FFC6C6C9FFA9A9ABFF9898
      9AFF858588FF717174FF848485FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF86A686FFDDEFDCFFF0F0F0FFA8A8A6FF7A7A7AFF5F5F5FFF2525
      25FF1F1F1FFF222222FFC6C6C6FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFF7F2F6FFFCFCFCFFDAD6DBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF6AA6C0FFC1C1C1FFCCCCCCFFCFCF
      CFFFD2D2D2FFE1E1E1FFE2E2E2FFD3D3D3FFE3E3E3FFE4E4E4FFD5D5D5FFE5E5
      E5FFE5E5E5FFD5D5D5FFE5E5E5FFE5E5E5FFFAFAFAFFFBFBFBFFDEDEDEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFD7E3D8FFBDC8BEFFDEE9DEFFDFEA
      DFFFE0EAE1FFE0EBE2FFE2EDE3FFE3EDE4FFE3EEE5FFE5F0E7FFE6F0E8FFE6F1
      E8FFE7F1E9FFE8F2EAFFE8F2EAFFE8F2EAFFE8F2EAFFE8F2EBFFE9F3ECFFDFDF
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FF5656
      58FF78787AFF969697FFAEAEB0FFD1D1D3FFDBDBDDFFE1E1E3FFE2E2E4FFDBDB
      DEFFD2D2D4FFC6C6C9FFA9A9ABFF98989AFF858588FF717174FF868686FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0FFE6E6D1FF9F9F
      41FF6B6B6BFF2E2E2EFF252525FF1C1C1CFF7A7A7AFFF6F6F5FFF6F6F6FFF7F7
      F7FFF8F8F8FFF9F9F9FFF9F9F9FFFAFAFAFFFAFAFAFFD7A1C5FFB54A92FFB54A
      92FFB54A92FFD3B4C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF6AA6C0FFCACACAFFD9D9D9FFDDDDDDFFDFDFDFFFF4F4F3FFF4F4F4FFE2E2
      E1FFF6F6F6FFF7F7F7FFE3E3E3FFF8F8F8FFF8F8F8FFE4E4E4FFF9F9F9FFF9F9
      F9FFF9F9F9FFFAFAFAFFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FF64B66BFF67B46FFF77C17FFF82C68AFF83C78BFF84C88DFF7CC487FF6CBD
      79FF6BBD78FF6DBE7BFF6DBE7CFF6FC07DFF70C07FFF72C182FF72C183FF73C1
      84FF74C286FF76C388FF76C48AFFDDDFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF838383FF565658FF78787AFF969697FFAEAEB0FFD1D1
      D3FFDBDBDDFFE1E1E3FFE2E2E4FFDBDBDEFFD2D2D4FFC6C6C9FFA9A9ABFF9898
      9AFF858588FF717174FF868686FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA0A0A0FFD1D1A7FF52523EFF343434FF252525FF212120FF2C2C
      2CFFEEEEEDFFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8
      F8FFF9F9F9FFC97EB0FFB44A92FFB44A92FFB44A92FFCB98BBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF67A3BCFFD7C4B7FFE2CFC3FFE5D2
      C6FFD0CCC8FFD8D8D8FFD9D9D8FFADADADFFE2E2E1FFE2E2E2FFD3D3D3FFE3E3
      E3FFE3E3E3FFD4D4D4FFE4E4E3FFE4E4E4FFF8F8F8FFF9F9F9FFDEDEDEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FF56AA5AFF6AA96FFFBCDFBFFFE0EF
      E1FFE0EFE1FFE0EFE2FFC0E2C5FF69BD75FF58B564FF5AB668FF5AB769FF5CB7
      6AFF5CB76CFF5EB96FFF60B970FF61BA72FF62BB74FF63BB76FF64BB78FFDDDE
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FF5656
      58FF78787AFF969697FFAEAEB0FFD1D1D3FFDBDBDDFFE1E1E3FFE3E3E5FFDBDB
      DEFFD2D2D4FFC6C6C9FFA9A9ABFF98989AFF858588FF717174FF868686FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0FF6A6A68FF5B5B
      5BFF252525FF232323FF0A0A09FF494949FFE3A995FFE3A38EFFEDD4CCFFF5F5
      F5FFF6F6F6FFE8D2D9FFCD8CA2FFEAD6DCFFF7F7F7FFD7A4C6FFB44992FFB449
      92FFB44992FFD4B8CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF67A3BCFFFACBACFFFFD0B0FFFFCAA7FFF4E1D4FFF2F2F1FFF2F2F2FFD8D8
      D8FFF4F4F4FFF5F5F4FFE1E1E1FFF5F5F5FFF6F6F6FFE2E2E2FFF6F6F6FFF6F6
      F6FFF6F6F6FFF8F8F8FFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FF56A352FF5BA759FFDEEDDDFF97CB98FF73BB76FF73BD77FFE0EFE1FF71BF
      78FF54B35EFF56B461FF57B562FF58B564FF59B565FF5AB668FF5BB76AFF5CB7
      6BFF5DB76CFF5FB86FFF60B971FFDDDEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF838383FF565658FF78787AFF969697FFAEAEB0FFD1D1
      D3FFDBDBDDFFE1E1E3FFE2E2E4FFDBDBDEFFD2D2D4FFC6C6C9FFA9A9ABFF9898
      9AFF858588FF717174FF868686FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF636363FF464646FF3A3A3AFF242424FF0D0D0CFF1B1B1BFFC3B9
      B5FFD76B47FFD76B48FFD76E4AFFF4F4F4FFE7D1D8FFB54D70FFB3496CFFB64F
      72FFEBDAE0FFF4F1F3FFCA84B3FFB54D93FFD7A2C6FFDEDEDEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF6AA6C0FFDBDBD9FFEDEDECFFEDED
      EDFFFFCBA9FFFFD4B7FFFFD4B7FFE0CDC0FFD6D6D6FFD6D6D6FFCACACAFFD6D6
      D6FFD6D6D6FFCACACAFFD6D6D6FFD6D6D6FFF4F4F3FFF6F6F6FFDEDEDEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FF599749FF5D9C52FFC7DCC2FF74AE
      6BFF569F4CFF56A14EFFDFEDDFFF71B56FFF54A853FF54AC56FF54AD57FF54AF
      59FF54B15AFF54B35DFF55B35FFF55B460FF56B462FF58B564FF59B666FFDDDE
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FF6262
      64FF9B9B9DFFC0C0C1FFD5D5D6FFE1E1E2FFE2E2E3FFE2E2E3FFE3E3E3FFE2E2
      E2FFE0E0E1FFDDDDDEFFCDCDCEFFBABABCFFA0A0A2FF79797BFF868686FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4FFDADADAFF828282FF2727
      27FF040404FF787877FFEDEDEDFFE4B7A7FFD66B47FFD66B47FFD66B47FFF2F2
      F1FFCF93A6FFB2486BFFB3486BFFB3486CFFD39DAEFFF4F4F3FFF4F4F3FFF4F4
      F3FFF6F6F6FFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94
      AEFF6AA6C0FFCDCDCDFFDADADAFFDBDBDAFFFFC198FFFFC6A0FFFFC6A0FFDAC7
      BAFFCECECEFFCECECEFFC4C4C4FFCECECEFFCECECEFFC4C4C4FFCECECEFFCECE
      CEFFF3F3F2FFF6F6F5FFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8FF5C9248FF6C9B65FF86B27AFF6AA35CFF73AB68FF7AB170FFE0ECDFFF72B0
      6CFF55A24FFF54A552FF54A752FF54A954FF54AB55FF54AE58FF54B059FF54B1
      5BFF53B25CFF55B35FFF56B561FFDDDEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF858585FFB7B7B9FFB8B8B9FFB4B4B6FFB1B2B3FFB0B0
      B2FFB5B5B7FFC2C2C3FFC8C8C9FFBFBFC0FFB4B5B6FFB0B0B2FFB1B1B3FFB4B4
      B6FFB7B7B9FFB8B8B9FF888888FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
      E9FF313131FF9E9E9EFFDBDBDBFF979797FF4B4B4BFFEAEAE9FFECECEBFFEBE4
      E0FFD66A46FFD66B46FFD66E4BFFF0F0F0FFE8D8DDFFB65373FFB2486BFFB856
      77FFEBDEE2FFF2F2F2FFF3F3F2FFF3F3F2FFF6F6F5FFDEDEDEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C9C9CFF5F94AEFF659EB8FFE9E9E8FFEAEAE9FFEBEB
      EAFFECECEBFFEDEDECFFEEEEEDFFEEEEEEFFEFEFEFFFF0F0EFFFF0F0EFFFF0F0
      F0FFF1F1F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF5F5F4FFDEDEDEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FF5A883DFF598A3CFFC7D7BDFF88AF
      77FFC7D9C0FFDFE8DAFFBED4B7FF6AA35BFF579B4AFF569E4CFF56A04DFF56A2
      4FFF56A34FFF55A752FF54A853FF54A954FF53AC56FF53AF58FF53B05AFFDDDE
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF979797FF8787
      88FF89898BFF8E8E90FF8E8E91FF929293FFCACACAFFE3E3E4FFDCDCDDFFC8C8
      C9FFADADAEFF8B8B8DFF8F8F91FF8E8E90FF8A8A8CFF878789FF969696FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF767676FF151515FF272727FF7B7B7BFFBEBE
      BEFFDEDEDDFFEAEAE9FFEBEBEAFFECECEBFFE1AD9BFFE1A793FFEAD6CFFFEFEF
      EFFFF0F0EFFFE8DBDFFFD29EAFFFEBE1E4FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF5F5F4FFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FFA0A0
      A0FF9C9C9CFFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
      B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
      B4FFB4B4B4FFBEBEBEFFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FFB5B9B1FFB5B9B1FFB5B9B2FFB5BAB2FFB5BAB2FFB5BAB2FFB5BAB2FFB5BA
      B2FFB5BBB3FFB5BBB3FFB5BBB3FFB5BBB3FFB5BBB3FFB5BCB3FFB5BCB4FFB4BC
      B4FFB4BCB4FFB4BDB4FFBBC3BBFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFEEEEEEFFD8D8D8FFC8C8C8FFA4A4
      A4FF939393FF878787FF838384FF868686FF919191FFA0A0A0FFC8C8C8FFD8D8
      D8FFECECECFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBCBCBCFF0B0B0BFF040404FF8A8A8AFFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
      B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
      B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFBEBEBEFFECECECFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFFFFFAFAFAFFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF8F8F8FFFCFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFFCFC
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CFF9C9C9CFFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF8F8F8FFFCFCFCFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000064000000320000000100010000000000200300000000000000000000
      000000000000000000000000FFFFFF00C0000380000000000000000000000000
      C000018000000000000000000000000080000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000000000000000000000
      C0000180000000000000000000000000C0000180000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object frxRequisiciones: TfrxDBDataset
    UserName = 'frxRequisiciones'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'sReferencia=sReferencia'
      'dCantidad=dCantidad'
      'sNumeroOrden=sNumeroOrden'
      'dIdFecha=dIdFecha'
      'iFolioRequisicion=iFolioRequisicion'
      'iItem=iItem'
      'dfechaRequerimiento=dfechaRequerimiento'
      'sContrato=sContrato'
      'sMedida=sMedida')
    DataSet = Requisiciones
    BCDToCurrency = False
    Left = 701
    Top = 190
  end
  object frxSuministros: TfrxDBDataset
    UserName = 'frxSuministros'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iFolio=iFolio'
      'sNumeroActividad=sNumeroActividad'
      'sReferencia=sReferencia'
      'sDescripcion=sDescripcion'
      'mComentarios=mComentarios'
      'dCantidad=dCantidad'
      'dFechaAviso=dFechaAviso'
      'sNumeroOrden=sNumeroOrden'
      'dIdFecha=dIdFecha'
      'sContrato=sContrato')
    DataSet = Historico
    BCDToCurrency = False
    Left = 709
    Top = 238
  end
  object frxBitacora: TfrxDBDataset
    UserName = 'frxBitacora'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'dIdFecha=dIdFecha'
      'iIdDiario=iIdDiario'
      'sNumeroOrden=sNumeroOrden'
      'sPaquete=sPaquete'
      'sNumeroActividad=sNumeroActividad'
      'sIdTipoMovimiento=sIdTipoMovimiento'
      'dCantidad=dCantidad'
      'dAvance=dAvance'
      'sIsometrico=sIsometrico'
      'sDescripcion=sDescripcion'
      'sNumeroReporte=sNumeroReporte')
    DataSet = Bitacora
    BCDToCurrency = False
    Left = 709
    Top = 270
  end
  object frxGenerado: TfrxDBDataset
    UserName = 'frxGenerado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sIsometrico=sIsometrico'
      'dCantidad=dCantidad'
      'sIsometricoReferencia=sIsometricoReferencia'
      'iOrdenCambio=iOrdenCambio'
      'iNumeroEstimacion=iNumeroEstimacion'
      'iConsecutivo=iConsecutivo'
      'sNumeroOrden=sNumeroOrden'
      'sNumeroGenerador=sNumeroGenerador'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'lStatus=lStatus')
    DataSet = Generado
    BCDToCurrency = False
    Left = 709
    Top = 310
  end
  object frxOrdendeCompra: TfrxDBDataset
    UserName = 'frxOrdendeCompra'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'sReferencia=sReferencia'
      'dCantidad=dCantidad'
      'sNumeroOrden=sNumeroOrden'
      'dIdFecha=dIdFecha'
      'iItem=iItem'
      'dfechaEntrega=dfechaEntrega'
      'iFolioPedido=iFolioPedido'
      'sContrato=sContrato')
    DataSet = OrdendeCompra
    BCDToCurrency = False
    Left = 709
    Top = 350
  end
  object frxReporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 42044.701327835600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 438
    Top = 283
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frxAnexo
        DataSetName = 'frxAnexo'
      end
      item
        DataSet = frxBitacora
        DataSetName = 'frxBitacora'
      end
      item
        DataSet = frxGenerado
        DataSetName = 'frxGenerado'
      end
      item
        DataSet = frxOrdendeCompra
        DataSetName = 'frxOrdendeCompra'
      end
      item
        DataSet = frxRequisiciones
        DataSetName = 'frxRequisiciones'
      end
      item
        DataSet = frxSuministros
        DataSetName = 'frxSuministros'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' InformeGeneral'
        Value = Null
      end
      item
        Name = 'Financiero_001'
        Value = '<frxDBReporte."dSuministrado">- Generado.Value'
      end>
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
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 17
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object PageFooter1: TfrxPageFooter
        Height = 11.338590000000000000
        Top = 464.882190000000000000
        Width = 1556.410454000000000000
        object Memo35: TfrxMemoView
          Left = 752.126470000000000000
          Width = 166.299320000000000000
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
      end
      object Header1: TfrxHeader
        Height = 52.913410240000000000
        Top = 317.480520000000000000
        Width = 1556.410454000000000000
        ReprintOnNewPage = True
        object Shape3: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.559060000000000000
          Width = 1553.763779530000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo46: TfrxMemoView
          Left = 1.889763780000000000
          Top = 24.566885200000000000
          Width = 26.456690470000000000
          Height = 28.346456690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. PART')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 28.346454250000000000
          Top = 24.566885200000000000
          Width = 308.031437480000000000
          Height = 28.346456690000000000
          ShowHint = False
          Color = 14218221
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
        object Memo48: TfrxMemoView
          Left = 370.393671500000000000
          Top = 24.566885200000000000
          Width = 45.354360000000000000
          Height = 28.346456690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT. ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 336.377925910000000000
          Top = 24.566885200000000000
          Width = 34.015770000000000000
          Height = 28.346456690000000000
          ShowHint = False
          Color = 14218221
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
        object Memo53: TfrxMemoView
          Left = 449.763755120000000000
          Top = 24.566885200000000000
          Width = 60.472443390000000000
          Height = 28.346456690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PRECIO'
            'UNITARIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 415.748300000000000000
          Top = 24.566912050000000000
          Width = 34.015740710000000000
          Height = 28.346456690000000000
          ShowHint = False
          Color = 14218221
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
        object Memo33: TfrxMemoView
          Left = 16.251980710000000000
          Top = 3.779530000000020000
          Width = 264.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DETALLE DE ACTIVIDADES')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 510.236550000000000000
          Top = 24.566909610000000000
          Width = 219.212740000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REQUISICIONES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 557.480297870000000000
          Top = 37.795256060000000000
          Width = 66.141705430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 644.409790550000000000
          Top = 37.795256060000000000
          Width = 43.464525430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 510.236550000000000000
          Top = 37.795300000000000000
          Width = 47.244055430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 623.622020390000000000
          Top = 37.795300000000000000
          Width = 20.787345430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CPT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 729.449290000000000000
          Top = 24.566909610000000000
          Width = 192.756030000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ORDENES DE COMPRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 776.692913390000000000
          Top = 37.795256060000000000
          Width = 81.259825430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 878.740650550000000000
          Top = 37.795256060000000000
          Width = 43.464525430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 729.449290000000000000
          Top = 37.795256060000000000
          Width = 47.244055430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 857.952755910000000000
          Top = 37.795256060000000000
          Width = 20.787345430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CPT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 922.205320000000000000
          Top = 24.566909610000000000
          Width = 192.756030000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVISOS DE EMBARQUE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 990.237240790000000000
          Top = 37.795256060000000000
          Width = 81.259825430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 1071.496680550000000000
          Top = 37.795256060000000000
          Width = 43.464525430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 922.205320000000000000
          Top = 37.795256060000000000
          Width = 47.244055430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 969.449084960000000000
          Top = 37.795256060000000000
          Width = 20.787345430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '#')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 1114.961350000000000000
          Top = 24.566909610000000000
          Width = 179.527559060000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTES DIARIOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 1162.204729290000000000
          Top = 37.795256060000000000
          Width = 88.818900080000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 1251.023634250000000000
          Top = 37.795256060000000000
          Width = 43.464525430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 1114.961350000000000000
          Top = 37.795256060000000000
          Width = 47.244055430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 1294.488196300000000000
          Top = 24.566909610000000000
          Width = 260.787457720000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'GENERADORES DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 1315.275578350000000000
          Top = 37.795256060000000000
          Width = 88.818885430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 1511.811104170000000000
          Top = 37.795256060000000000
          Width = 43.464566930000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 1294.488196300000000000
          Top = 37.795256060000000000
          Width = 20.787345430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'EST')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 1404.094515040000000000
          Top = 37.795300000000000000
          Width = 24.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'GEN.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 1428.662340000000000000
          Top = 37.795300000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ISOMETRICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 687.874460000000000000
          Top = 37.795300000000000000
          Width = 41.574810470000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MEDIDA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 173.858380000000000000
        Width = 1556.410454000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Width = 1550.740157480310000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 157.078850000000000000
          Top = 3.000000000000000000
          Width = 1212.236860000000000000
          Height = 78.370130000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mCliente"]'
            'CONTRATO No.: [Contrato."sContrato"]'
            'KARDEX GENERAL POR PARTIDA ANEXO')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 1378.646570000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo4: TfrxMemoView
          Left = 1377.637795275590000000
          Top = 48.913420000000000000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
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
      object ReportTitle1: TfrxReportTitle
        Height = 133.614217170000000000
        Top = 18.897650000000000000
        Width = 1556.410454000000000000
        Stretched = True
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 94.708720000000000000
          Width = 1550.740528500000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo36: TfrxMemoView
          Left = 16.251980710000000000
          Top = 86.929190000000000000
          Width = 264.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KARDEX GENERAL POR PARTIDA ANEXO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 1.889763780000000000
          Top = 105.267780000000000000
          Width = 1550.740528500000000000
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
        object Memo38: TfrxMemoView
          Left = 1.889763780000000000
          Width = 1550.740528500000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo39: TfrxMemoView
          Left = 162.897637800000000000
          Top = 3.000000000000000000
          Width = 1214.008660000000000000
          Height = 48.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mCliente"]'
            ''
            'CONTRATO No. [Contrato."sContrato"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 5.669291340000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 1378.756806220000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo40: TfrxMemoView
          Left = 1377.638166300000000000
          Top = 48.913420000000000000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
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
      object MasterData1: TfrxMasterData
        Height = 11.338590000000000000
        Top = 393.071120000000000000
        Width = 1556.410454000000000000
        RowCount = 1
        Stretched = True
        object Subreport1: TfrxSubreport
          Left = 510.236222910000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Page = frxReporte.Page2
        end
        object Subreport2: TfrxSubreport
          Left = 729.449290000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Page = frxReporte.Page3
        end
        object Subreport3: TfrxSubreport
          Left = 922.205320000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Page = frxReporte.Page4
        end
        object Subreport4: TfrxSubreport
          Left = 1114.961350000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Page = frxReporte.Page5
        end
        object Subreport5: TfrxSubreport
          Left = 1294.488135280000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Page = frxReporte.Page6
        end
        object Subreport6: TfrxSubreport
          Left = 1.889763780000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Page = frxReporte.Page7
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 12.897650000000000000
        Top = 41.574830000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = frxRequisiciones
        DataSetName = 'frxRequisiciones'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 47.244094490000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dIdFecha'
          DataSet = frxRequisiciones
          DataSetName = 'frxRequisiciones'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxRequisiciones."dIdFecha"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 113.385817010000000000
          Width = 20.787401570000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'iItem'
          DataSet = frxRequisiciones
          DataSetName = 'frxRequisiciones'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxRequisiciones."iItem"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 47.244094490000000000
          Width = 66.141722520000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sReferencia'
          DataSet = frxRequisiciones
          DataSetName = 'frxRequisiciones'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxRequisiciones."sReferencia"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 134.172891500000000000
          Width = 43.464566930000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dCantidad'
          DataSet = frxRequisiciones
          DataSetName = 'frxRequisiciones'
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
          Memo.UTF8 = (
            '[frxRequisiciones."dCantidad"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 177.637910000000000000
          Width = 41.574808030000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataSet = frxRequisiciones
          DataSetName = 'frxRequisiciones'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxRequisiciones."sMedida"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxRequisiciones."sContrato"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          ShiftMode = smWhenOverlapped
          Left = 134.173218580000000000
          Width = 85.039396930000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxRequisiciones."dCantidad">,MasterData2,2)]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 134.173218580000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL REQUISITADO')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 12.897650000000000000
        Top = 41.574830000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = frxOrdendeCompra
        DataSetName = 'frxOrdendeCompra'
        RowCount = 0
        object Memo15: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 47.244094490000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dIdFecha'
          DataSet = frxOrdendeCompra
          DataSetName = 'frxOrdendeCompra'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxOrdendeCompra."dIdFecha"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 128.503937010000000000
          Width = 20.787401570000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'iItem'
          DataSet = frxOrdendeCompra
          DataSetName = 'frxOrdendeCompra'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxOrdendeCompra."iItem"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 47.244094488189000000
          Width = 81.259842520000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sReferencia'
          DataSet = frxOrdendeCompra
          DataSetName = 'frxOrdendeCompra'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxOrdendeCompra."sReferencia"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 149.291011500000000000
          Width = 43.464566929133900000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dCantidad'
          DataSet = frxOrdendeCompra
          DataSetName = 'frxOrdendeCompra'
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
          Memo.UTF8 = (
            '[frxOrdendeCompra."dCantidad"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        object SysMemo2: TfrxSysMemoView
          ShiftMode = smWhenOverlapped
          Left = 149.291338580000000000
          Width = 43.464566930000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxOrdendeCompra."dCantidad">,MasterData3,2)]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 149.291338580000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL EN ORDENES DE COMPRA')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxOrdendeCompra."sContrato"'
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        Height = 12.897650000000000000
        Top = 41.574830000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = frxSuministros
        DataSetName = 'frxSuministros'
        RowCount = 0
        object Memo20: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 47.244094488189000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dIdFecha'
          DataSet = frxSuministros
          DataSetName = 'frxSuministros'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxSuministros."dIdFecha"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 47.244094488189000000
          Width = 20.787401574803100000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'iFolio'
          DataSet = frxSuministros
          DataSetName = 'frxSuministros'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxSuministros."iFolio"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 68.031540000000000000
          Width = 81.259842520000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sReferencia'
          DataSet = frxSuministros
          DataSetName = 'frxSuministros'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxSuministros."sReferencia"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 149.291011500000000000
          Width = 43.464566930000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dCantidad'
          DataSet = frxSuministros
          DataSetName = 'frxSuministros'
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
          Memo.UTF8 = (
            '[frxSuministros."dCantidad"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        object SysMemo3: TfrxSysMemoView
          ShiftMode = smWhenOverlapped
          Left = 149.291338580000000000
          Width = 43.464566930000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxSuministros."dCantidad">,MasterData4,2)]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 149.291338580000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL SUMINISTRADO')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxSuministros."sContrato"'
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData5: TfrxMasterData
        Height = 12.897650000000000000
        Top = 41.574830000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = frxBitacora
        DataSetName = 'frxBitacora'
        RowCount = 0
        object Memo27: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 47.244094490000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dIdFecha'
          DataSet = frxBitacora
          DataSetName = 'frxBitacora'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxBitacora."dIdFecha"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 47.244094490000000000
          Width = 88.818897640000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sNumeroOrden'
          DataSet = frxBitacora
          DataSetName = 'frxBitacora'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxBitacora."sNumeroOrden"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 136.062992130000000000
          Width = 43.464566930000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dCantidad'
          DataSet = frxBitacora
          DataSetName = 'frxBitacora'
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
          Memo.UTF8 = (
            '[frxBitacora."dCantidad"]')
          ParentFont = False
        end
      end
      object GroupFooter4: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        object SysMemo4: TfrxSysMemoView
          ShiftMode = smWhenOverlapped
          Left = 136.062992130000000000
          Width = 43.464566930000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxBitacora."dCantidad">,MasterData5,2)]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 136.062992130000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL REPORTADO')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxBitacora."sContrato"'
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData6: TfrxMasterData
        Height = 12.897650000000000000
        Top = 41.574830000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = frxGenerado
        DataSetName = 'frxGenerado'
        RowCount = 0
        Stretched = True
        object Memo31: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 20.787401570000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'iNumeroEstimacion'
          DataSet = frxGenerado
          DataSetName = 'frxGenerado'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxGenerado."iNumeroEstimacion"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 20.787401570000000000
          Width = 88.818897640000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sNumeroOrden'
          DataSet = frxGenerado
          DataSetName = 'frxGenerado'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxGenerado."sNumeroOrden"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 109.606299210000000000
          Width = 24.566929130000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sNumeroGenerador'
          DataSet = frxGenerado
          DataSetName = 'frxGenerado'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxGenerado."sNumeroGenerador"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 217.322895670000000000
          Width = 43.464566930000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'dCantidad'
          DataSet = frxGenerado
          DataSetName = 'frxGenerado'
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
          Memo.UTF8 = (
            '[frxGenerado."dCantidad"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 134.173228350000000000
          Width = 83.149606300000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sIsometrico'
          DataSet = frxGenerado
          DataSetName = 'frxGenerado'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxGenerado."sIsometrico"]')
          ParentFont = False
        end
      end
      object GroupFooter5: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        object SysMemo5: TfrxSysMemoView
          ShiftMode = smWhenOverlapped
          Left = 217.322888350000000000
          Width = 43.464566930000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxGenerado."dCantidad">,MasterData6,2)]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 217.322888350000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 15443862
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL GENERADO')
          ParentFont = False
        end
      end
      object GroupHeader5: TfrxGroupHeader
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxGenerado."sContrato"'
      end
    end
    object Page7: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData7: TfrxMasterData
        Height = 13.228346460000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        AllowSplit = True
        RowCount = 1
        Stretched = True
        object Memo8: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 26.456690470000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sNumeroActividad'
          DataSet = frxAnexo
          DataSetName = 'frxAnexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxAnexo."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 26.456690470000000000
          Width = 308.031491180000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frxAnexo
          DataSetName = 'frxAnexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxAnexo."mDescripcion"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 368.503873540000000000
          Width = 45.354318500000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidadAnexo'
          DataSet = frxAnexo
          DataSetName = 'frxAnexo'
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
          Memo.UTF8 = (
            '[frxAnexo."dCantidadAnexo"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 447.873942520000000000
          Width = 60.472443390000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dVentaMN'
          DataSet = frxAnexo
          DataSetName = 'frxAnexo'
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
          Memo.UTF8 = (
            '[frxAnexo."dVentaMN"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 334.488127950000000000
          Width = 34.015738270000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sMedida'
          DataSet = frxAnexo
          DataSetName = 'frxAnexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxAnexo."sMedida"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 413.858199370000000000
          Width = 34.015740710000000000
          Height = 12.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dPonderado'
          DataSet = frxAnexo
          DataSetName = 'frxAnexo'
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
          Memo.UTF8 = (
            '[frxAnexo."dPonderado"]')
          ParentFont = False
        end
      end
    end
  end
  object frxAnexo: TfrxDBDataset
    UserName = 'frxAnexo'
    OnNext = frxAnexoNext
    CloseDataSource = False
    FieldAliases.Strings = (
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'sMedida=sMedida'
      'dCantidadAnexo=dCantidadAnexo'
      'dVentaMN=dVentaMN'
      'dPonderado=dPonderado')
    DataSet = Anexo
    BCDToCurrency = False
    Left = 133
    Top = 270
  end
  object rDiario: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38413.901132002300000000
    ReportOptions.LastChange = 41310.876507152810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    Left = 216
    Top = 320
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmReportePeriodo.dbReporte
        DataSetName = 'dbReporte'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' Totales'
        Value = Null
      end
      item
        Name = 'TotalMN'
        Value = '<dbReporte."dCantidad"> * <dbReporte."dVentaMN">'
      end
      item
        Name = 'TotalDLL'
        Value = '<dbReporte."dCantidad"> * <dbReporte."dVentaDLL">'
      end>
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
        Height = 13.228346460000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        DataSet = frmReportePeriodo.dbReporte
        DataSetName = 'dbReporte'
        OutlineText = 'dbReporte."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo30: TfrxMemoView
          Left = 1.889763780000000000
          Width = 39.685039370000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'sNumeroActividad'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbReporte."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 41.574803150000000000
          Width = 457.322905430000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'mDescripcion'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbReporte."mDescripcion"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 498.897708580000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'sMedida'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbReporte."sMedida"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 536.692984170000000000
          Width = 49.133858270000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidad'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
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
          Memo.UTF8 = (
            '[dbReporte."dCantidad"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 642.141793310000000000
          Width = 52.913376060000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
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
          Memo.UTF8 = (
            '[TotalMN]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 695.055188900000000000
          Width = 43.464566930000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dPonderado'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
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
          Memo.UTF8 = (
            '[dbReporte."dPonderado"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 585.827150000000000000
          Width = 56.692918270000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dVentaMN'
          DataSet = frmReportePeriodo.dbReporte
          DataSetName = 'dbReporte'
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
          Memo.UTF8 = (
            '[dbReporte."dVentaMN"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 129.834687170000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo2: TfrxMemoView
          Left = 157.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
          Height = 48.133890000000000000
          ShowHint = False
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
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 562.268090000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo3: TfrxMemoView
          Left = 559.268090000000000000
          Top = 45.133889999999990000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
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
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 94.708720000000000000
          Width = 735.874015750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 8.692923150000000000
          Top = 86.929190000000000000
          Width = 307.653265040000000000
          Height = 13.220470000000000000
          ShowHint = False
          AutoWidth = True
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DETALLE DE CONCEPTOS POR ENTREGABLE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 1.889763780000000000
          Top = 105.267780000000000000
          Width = 735.874015750000000000
          Height = 20.787377170000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[dbReporte."descripcionfrente"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 154.960730000000000000
          Top = 51.692949999999990000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              'N'#195#353'MERO DE '#195#8220'RDEN DE SURTIMIENTO: [dbReporte."soficioautorizacio' +
              'n"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 170.078850000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 1.779530000000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo8: TfrxMemoView
          Left = 157.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
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
            'DETALLE DE PARTIDAS POR ENTREGABLE')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 562.268090000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo9: TfrxMemoView
          Left = 559.268090000000000000
          Top = 45.133890000000010000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 45.354350240000000000
        ParentFont = False
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        Condition = 'dbReporte."sContrato"'
        ReprintOnNewPage = True
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 19.118119999999980000
          Width = 737.008325590000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 8.692923150000000000
          Top = 11.338590000000010000
          Width = 307.653265040000000000
          Height = 13.220470000000000000
          ShowHint = False
          AutoWidth = True
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ORDEN] - [ENTREGABLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 1.889763780000000000
          Top = 30.236240000000010000
          Width = 39.685039370000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONCEP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 41.574803150000000000
          Top = 30.236240000000010000
          Width = 457.322905430000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 536.692984170000000000
          Top = 30.236240000000010000
          Width = 49.133858270000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 498.897708580000000000
          Top = 30.236240000000010000
          Width = 37.795275590000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
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
        object Memo24: TfrxMemoView
          Left = 642.141790870000000000
          Top = 30.236240000000010000
          Width = 52.913373620000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL MN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 695.055188900000000000
          Top = 30.236240000000010000
          Width = 43.464566930000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'POND.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 585.826842440000000000
          Top = 30.236240000000010000
          Width = 56.692918270000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
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
      end
      object PageFooter1: TfrxPageFooter
        Height = 43.425170000000000000
        Top = 495.118430000000000000
        Width = 740.409927000000000000
        object Memo29: TfrxMemoView
          Left = 239.110390000000000000
          Top = 21.086579999999910000
          Width = 498.897960000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Setup."sSlogan"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = -0.779530000000000000
          Top = 21.086580000000140000
          Width = 275.905690000000000000
          Height = 22.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 323.141930000000000000
          Top = 3.133579999999995000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'P'#195#161'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 15.118110240000000000
        Top = 419.527830000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 642.520100000000000000
          Width = 95.999975590000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<TotalMN>,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 498.897960000000000000
          Width = 143.622140000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'IMPORTE DEL ENTREGABLE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frGenerador: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38413.901132002300000000
    ReportOptions.LastChange = 38924.640822997690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    If <dsGenerador."sIdUsuarioValida"> = '#39#39' Then'
      '         lblValida.Visible := True'
      '    Else'
      '         lblValida.Visible := False ;'
      ''
      '    If <dsGenerador."sIdUsuarioAutoriza"> = '#39#39' Then'
      '         lblAutoriza.Visible := True'
      '    Else'
      '         lblAutoriza.Visible := False'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frGeneradorGetValue
    Left = 216
    Top = 381
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmDiarioTurno2.dsGenerador
        DataSetName = 'dsGenerador'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
    end
  end
  object frxReporteGral: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 42025.502283611110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 438
    Top = 323
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dsAcumuladosGral
        DataSetName = 'dsAcumuladosGral'
      end
      item
        DataSet = frxDBInsumos
        DataSetName = 'frxDBInsumos'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' InformeGeneral'
        Value = Null
      end
      item
        Name = 'Financiero_001'
        Value = '<frxDBReporte."dSuministrado">- Generado.Value'
      end>
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
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 17
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object PageFooter1: TfrxPageFooter
        Height = 11.338590000000000000
        Top = 642.520100000000000000
        Width = 1556.410454000000000000
        object Memo35: TfrxMemoView
          Left = 582.047620000000000000
          Width = 166.299320000000000000
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
      end
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 173.858380000000000000
        Width = 1556.410454000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Width = 1552.252154020000000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 157.078850000000000000
          Top = 3.000000000000000000
          Width = 1216.016390000000000000
          Height = 78.370130000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mCliente"]'
            ''
            'CONTRATO No.: [Contrato."sContrato"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 1382.426100000000000000
          Top = 6.779529999999990000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo4: TfrxMemoView
          Left = 1377.637795280000000000
          Top = 52.692950000000000000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
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
      object ReportTitle1: TfrxReportTitle
        Height = 133.614217170000000000
        Top = 18.897650000000000000
        Width = 1556.410454000000000000
        Stretched = True
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 98.488250000000000000
          Width = 1552.251968500000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo36: TfrxMemoView
          Left = 16.251980710000000000
          Top = 90.708720000000000000
          Width = 269.857965040000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCE GENERAL DE PARTIDAS ANEXO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 1.889763780000000000
          Top = 109.047310000000000000
          Width = 1552.252154020000000000
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
        object Memo38: TfrxMemoView
          Left = 1.889763780000000000
          Width = 1552.252154020000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo39: TfrxMemoView
          Left = 159.118107800000000000
          Top = 3.000000000000000000
          Width = 1210.229130000000000000
          Height = 78.370130000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mCliente"]'
            ''
            'CONTRATO No. [Contrato."sContrato"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 5.669291340000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 1382.536336220000000000
          Top = 6.779530000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo40: TfrxMemoView
          Left = 1377.638166300000000000
          Top = 52.692950000000000000
          Width = 173.299320000000000000
          Height = 24.795300000000000000
          ShowHint = False
          DataField = 'sNombre'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
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
      object MasterData1: TfrxMasterData
        Height = 13.228368430000000000
        Top = 411.968770000000000000
        Width = 1556.410454000000000000
        Child = frxReporteGral.Child1
        DataSet = dsAcumuladosGral
        DataSetName = 'dsAcumuladosGral'
        OutlineText = 'dsAcumuladosGral."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo12: TfrxMemoView
          Left = 578.267672600000000000
          Top = 0.000021970000000010
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dCantidadRequisicion'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dCantidadRequisicion"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 623.621995980000000000
          Top = 0.000021970000000010
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dAvanceRequisicion'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dAvanceRequisicion"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Top = 0.000021970000000010
          Width = 30.236220470000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          Color = 15790320
          DataField = 'sNumeroActividad'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 32.125984250000000000
          Top = 0.000021970000000010
          Width = 398.740211180000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'mDescripcion'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."mDescripcion"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 464.881942790000000000
          Top = 0.000021970000000010
          Width = 45.354314730000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dCantidadAnexo'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dCantidadAnexo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 510.236240000000000000
          Top = 0.000021970000000010
          Width = 68.031503390000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dVentaMN'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dVentaMN"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 430.866195430000000000
          Top = 0.000021970000000010
          Width = 34.015738270000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'sMedida'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."sMedida"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 740.787345430000000000
          Top = 0.000021970000000010
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dCantidadFincado'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dCantidadFincado"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 786.141668820000000000
          Top = 0.000021970000000010
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dAvanceFincado'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dAvanceFincado"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 903.307018270000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dCantidadSuministro'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dCantidadSuministro"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 948.661341650000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dAvanceSuministro'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dAvanceSuministro"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 1065.826691100000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dCantidadReportado'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dCantidadReportado"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 1111.181014490000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dAvanceReportado'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dAvanceReportado"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 1228.346363940000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dCantidadGenerado'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dCantidadGenerado"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 1273.700687320000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dAvanceGenerado'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dAvanceGenerado"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 668.976324250000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            
              '[<dsAcumuladosGral."dCantidadRequisicion"> * <dsAcumuladosGral."' +
              'dVentaMN">]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 831.495997090000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            
              '[<dsAcumuladosGral."dCantidadFincado"> * <dsAcumuladosGral."dVen' +
              'taMN">]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 994.016390000000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            
              '[<dsAcumuladosGral."dCantidadSuministro"> * <dsAcumuladosGral."d' +
              'VentaMN">]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 1156.535342760000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            
              '[<dsAcumuladosGral."dCantidadReportado"> * <dsAcumuladosGral."dV' +
              'entaMN">]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 1319.055015590000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            
              '[<dsAcumuladosGral."dCantidadGenerado"> * <dsAcumuladosGral."dVe' +
              'ntaMN">]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 1390.867040000000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataField = 'dCantidadEstimado'
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dCantidadEstimado"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 1436.221363380000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[dsAcumuladosGral."dAvanceEstimado"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 1481.575691650000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            
              '[<dsAcumuladosGral."dCantidadEstimado"> * <dsAcumuladosGral."dVe' +
              'ntaMN">]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 317.480520000000000000
        Width = 1556.410454000000000000
        Condition = 'dsAcumuladosGral."sContrato"'
        ReprintOnNewPage = True
        Stretched = True
        object Shape3: TfrxShapeView
          Left = 13.228353780000000000
          Top = 11.559060000000000000
          Width = 1551.496248500000000000
          Height = 26.456710000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          Left = 1.889763780000000000
          Top = 24.566885200000000000
          Width = 30.236220470000000000
          Height = 24.566926690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. PART.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 32.125984250000000000
          Top = 24.566885200000000000
          Width = 398.740157480000000000
          Height = 24.566926690000000000
          ShowHint = False
          Color = 14218221
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
        object Memo11: TfrxMemoView
          Left = 464.881921500000000000
          Top = 24.566885200000000000
          Width = 45.354360000000000000
          Height = 24.566926690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT. ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 430.866175910000000000
          Top = 24.566885200000000000
          Width = 34.015770000000000000
          Height = 24.566926690000000000
          ShowHint = False
          Color = 14218221
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
        object Memo15: TfrxMemoView
          Left = 510.236235120000000000
          Top = 24.566885200000000000
          Width = 68.031503390000000000
          Height = 24.566926690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PRECIO'
            'UNITARIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 16.251980710000000000
          Top = 3.779527560000020000
          Width = 269.857965040000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DETALLE DE ACTIVIDADES')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 578.267672600000000000
          Top = 24.566931570000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REQUISITADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 578.267672600000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 623.622450000000000000
          Top = 37.795278030000000000
          Width = 45.354333150000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '% AV.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 740.787345430000000000
          Top = 24.566931570000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FINCADO/COMPRADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 740.787345430000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 786.141668820000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '% AV.')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 903.307018270000000000
          Top = 24.566931570000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SUMINISTRADO (AV. EMBARQUE)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 903.307018270000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 948.661341650000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '% AV.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 1065.826691100000000000
          Top = 24.566931570000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
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
        object Memo42: TfrxMemoView
          Left = 1065.826691100000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 1111.181014490000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '% AV.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 1228.346363940000000000
          Top = 24.566931570000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'GENERADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 1228.346363940000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 1273.700687320000000000
          Top = 37.795278030000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '% AV.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 668.976324250000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MONTO')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 831.495997090000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MONTO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 994.016390000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MONTO')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 1156.535342760000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MONTO')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 1319.055015590000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MONTO')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 1390.867040000000000000
          Top = 24.677180000000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTIMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 1390.867040000000000000
          Top = 37.795300000000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 1436.221363380000000000
          Top = 37.795300000000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '% AV.')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 1481.575691650000000000
          Top = 37.795321970000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MONTO')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 71.811070000000000000
        Top = 510.236550000000000000
        Width = 1556.410454000000000000
        object Memo56: TfrxMemoView
          Left = 1.889763780000000000
          Top = 3.779530000000020000
          Width = 141.732283460000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'REQUISITADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 1.889763780000000000
          Top = 17.007874015748000000
          Width = 141.732283464567000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FINCADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 1.889763780000000000
          Top = 30.236239999999900000
          Width = 141.732283464567000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SUMINISTRADO (AV. EMBARQUE)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 1.889763780000000000
          Top = 43.464566929133800000
          Width = 141.732283464567000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 1.889763780000000000
          Top = 56.692949999999900000
          Width = 141.732283464567000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'GENERADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000020000
          Width = 86.929190000000000000
          Height = 13.228346460000000000
          ShowHint = False
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
          Memo.UTF8 = (
            
              '[SUM(<dsAcumuladosGral."dCantidadRequisicion"> * <dsAcumuladosGr' +
              'al."dVentaMN">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 143.622140000000000000
          Top = 17.007874019999900000
          Width = 86.929190000000000000
          Height = 13.228346460000000000
          ShowHint = False
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
          Memo.UTF8 = (
            
              '[SUM(<dsAcumuladosGral."dCantidadFincado"> * <dsAcumuladosGral."' +
              'dVentaMN">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 143.622140000000000000
          Top = 30.236239999999900000
          Width = 86.929190000000000000
          Height = 13.228346460000000000
          ShowHint = False
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
          Memo.UTF8 = (
            
              '[SUM(<dsAcumuladosGral."dCantidadSuministro"> * <dsAcumuladosGra' +
              'l."dVentaMN">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 143.622140000000000000
          Top = 43.464566929999900000
          Width = 86.929190000000000000
          Height = 13.228346460000000000
          ShowHint = False
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
          Memo.UTF8 = (
            
              '[SUM(<dsAcumuladosGral."dCantidadReportado"> * <dsAcumuladosGral' +
              '."dVentaMN">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 143.622140000000000000
          Top = 56.692949999999900000
          Width = 86.929190000000000000
          Height = 13.228346460000000000
          ShowHint = False
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
          Memo.UTF8 = (
            
              '[SUM(<dsAcumuladosGral."dCantidadGenerado"> * <dsAcumuladosGral.' +
              '"dVentaMN">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 389.291590000000000000
        Width = 1556.410454000000000000
        Condition = 'dsAcumuladosGral."sIdFase"'
        OutlineText = 'dsAcumuladosGral."sIdFase"'
        Stretched = True
      end
      object GroupFooter2: TfrxGroupFooter
        Top = 487.559370000000000000
        Width = 1556.410454000000000000
      end
      object Child1: TfrxChild
        Height = 15.118120000000000000
        Top = 449.764070000000000000
        Width = 1556.410454000000000000
        Stretched = True
        object Subreport1: TfrxSubreport
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Page = frxReporteGral.Page2
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 431.800000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 13.228368430000000000
        Top = 68.031540000000000000
        Width = 1556.410454000000000000
        DataSet = frxDBInsumos
        DataSetName = 'frxDBInsumos'
        OutlineText = 'dsAcumuladosGral."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo61: TfrxMemoView
          Left = 578.267672600000000000
          Top = 0.000021970000000003
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."dFechaReq"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 623.621995980000000000
          Top = 0.000021970000000003
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidadReq'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."dCantidadReq"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 32.126003780000000000
          Top = 0.000021970000000003
          Width = 102.047290470000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataField = 'sIdInsumo'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."sIdInsumo"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 134.173294250000000000
          Top = 0.000021970000000003
          Width = 444.094571180000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
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
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."mDescripcion"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 740.787345430000000000
          Top = 0.000021970000000003
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."dFechaOC"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 786.141668820000000000
          Top = 0.000021970000000003
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidadOC'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."dCantidadOC"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 1065.826691100000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."dFechaRep"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 1111.181014490000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidadRep'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."dCantidadRep"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 1228.346363940000000000
          Width = 162.519753390000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 668.976324250000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sReferenciaReq'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."sReferenciaReq"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 831.495997090000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sReferenciaOC'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."sReferenciaOC"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 1156.535342760000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sReferenciaRep'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."sReferenciaRep"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 1390.867040000000000000
          Width = 162.519753390000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dsAcumuladosGral
          DataSetName = 'dsAcumuladosGral'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 903.307670000000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaSum'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."dFechaSum"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 948.661993390000000000
          Width = 45.354330710000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidadSum'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."dCantidadSum"]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 994.016321660000000000
          Width = 71.811023620000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sReferenciaSum'
          DataSet = frxDBInsumos
          DataSetName = 'frxDBInsumos'
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsAcumuladosGral."dCantidadGenerado"> > <dsAcumuladosGral."dCan' +
            'tidadSuministro">'
          Memo.UTF8 = (
            '[frxDBInsumos."sReferenciaSum"]')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 24.567004800000000000
        Top = 18.897650000000000000
        Width = 1556.410454000000000000
        Condition = 'dsAcumuladosGral."sNumeroActividad"'
        Stretched = True
        object Memo81: TfrxMemoView
          Left = 32.126003780000000000
          Width = 102.047290470000000000
          Height = 24.566926690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MATERIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 134.173294250000000000
          Width = 444.094517480000000000
          Height = 24.566926690000000000
          ShowHint = False
          Color = 14218221
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
        object Memo83: TfrxMemoView
          Left = 578.268090000000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REQUISITADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 578.268090000000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 623.622867400000000000
          Top = 13.228346460000000000
          Width = 45.354333150000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 740.787762830000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FINCADO/COMPRADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 740.787762830000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 786.142086220000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 903.307435670000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SUMINISTRADO (AV. EMBARQUE)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 903.307435670000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 948.661759050000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 1065.827108500000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
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
        object Memo93: TfrxMemoView
          Left = 1065.827108500000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 1111.181431890000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 1228.346781340000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'GENERADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 1228.346781340000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 1273.701104720000000000
          Top = 13.228346460000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 668.976741650000000000
          Top = 13.228368430000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 831.496414490000000000
          Top = 13.228368430000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 994.016807400000000000
          Top = 13.228368430000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 1156.535760160000000000
          Top = 13.228368430000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 1319.055432990000000000
          Top = 13.228368430000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 1390.867457400000000000
          Top = 0.110248430000000000
          Width = 162.519685040000000000
          Height = 13.228336690000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTIMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 1390.867457400000000000
          Top = 13.228368430000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 1436.221780780000000000
          Top = 13.228368430000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 1481.576109050000000000
          Top = 13.228390400000000000
          Width = 71.811023620000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 14218221
          DataSetName = 'frxAcumulados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
        end
      end
    end
  end
  object rxAcumuladosGral: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'sIdFase'
        DataType = ftString
        Size = 4
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
        Name = 'dVentaMN'
        DataType = ftCurrency
      end
      item
        Name = 'dVentaDLL'
        DataType = ftCurrency
      end
      item
        Name = 'dCantidadRequisicion'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadFincado'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadSuministro'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadReportado'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadGenerado'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceRequisicion'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dAvanceFincado'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dAvanceSuministro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dAvanceReportado'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dAvanceGenerado'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dCantidadEstimado'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceEstimado'
        DataType = ftString
        Size = 20
      end>
    AfterScroll = rxAcumuladosGralAfterScroll
    Left = 496
    Top = 184
    object rxAcumuladosGralsContrato: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object rxAcumuladosGralsIdFase: TStringField
      FieldName = 'sIdFase'
      Size = 4
    end
    object rxAcumuladosGralsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Size = 10
    end
    object rxAcumuladosGralmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object rxAcumuladosGralsMedida: TStringField
      FieldName = 'sMedida'
      Size = 8
    end
    object rxAcumuladosGraldCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
    end
    object rxAcumuladosGraldVentaMN: TCurrencyField
      FieldName = 'dVentaMN'
    end
    object rxAcumuladosGraldVentaDLL: TCurrencyField
      FieldName = 'dVentaDLL'
    end
    object rxAcumuladosGraldCantidadRequisicion: TFloatField
      FieldName = 'dCantidadRequisicion'
    end
    object rxAcumuladosGraldCantidadFincado: TFloatField
      FieldName = 'dCantidadFincado'
    end
    object rxAcumuladosGraldCantidadSuministro: TFloatField
      FieldName = 'dCantidadSuministro'
    end
    object rxAcumuladosGraldCantidadReportado: TFloatField
      FieldName = 'dCantidadReportado'
    end
    object rxAcumuladosGraldCantidadGenerado: TFloatField
      FieldName = 'dCantidadGenerado'
    end
    object rxAcumuladosGraldAvanceRequisicion: TStringField
      FieldName = 'dAvanceRequisicion'
    end
    object rxAcumuladosGraldAvanceFincado: TStringField
      FieldName = 'dAvanceFincado'
    end
    object rxAcumuladosGraldAvanceSuministro: TStringField
      FieldName = 'dAvanceSuministro'
    end
    object rxAcumuladosGraldAvanceReportado: TStringField
      FieldName = 'dAvanceReportado'
    end
    object rxAcumuladosGraldAvanceGenerado: TStringField
      FieldName = 'dAvanceGenerado'
    end
    object rxAcumuladosGraldCantidadEstimado: TFloatField
      FieldName = 'dCantidadEstimado'
    end
    object rxAcumuladosGraldAvanceEstimado: TStringField
      FieldName = 'dAvanceEstimado'
    end
  end
  object ds_rxAcumuladosGral: TDataSource
    AutoEdit = False
    DataSet = rxAcumuladosGral
    Left = 460
    Top = 184
  end
  object dsAcumuladosGral: TfrxDBDataset
    UserName = 'dsAcumuladosGral'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sIdFase=sIdFase'
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'sMedida=sMedida'
      'dCantidadAnexo=dCantidadAnexo'
      'dVentaMN=dVentaMN'
      'dVentaDLL=dVentaDLL'
      'dCantidadRequisicion=dCantidadRequisicion'
      'dCantidadFincado=dCantidadFincado'
      'dCantidadSuministro=dCantidadSuministro'
      'dCantidadReportado=dCantidadReportado'
      'dCantidadGenerado=dCantidadGenerado'
      'dAvanceRequisicion=dAvanceRequisicion'
      'dAvanceFincado=dAvanceFincado'
      'dAvanceSuministro=dAvanceSuministro'
      'dAvanceReportado=dAvanceReportado'
      'dAvanceGenerado=dAvanceGenerado'
      'dCantidadEstimado=dCantidadEstimado'
      'dAvanceEstimado=dAvanceEstimado')
    DataSet = rxAcumuladosGral
    BCDToCurrency = False
    Left = 421
    Top = 182
  end
  object Anexo: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = AnexoAfterScroll
    SQL.Strings = (
      
        'Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, ' +
        'dVentaMN, dPonderado'
      
        ' from actividadesxanexo Where sContrato = :Contrato And sIdConve' +
        'nio = :Convenio And sTipoActividad = "Actividad" Order By iItemO' +
        'rden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
    Left = 93
    Top = 231
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
  end
  object OrdendeCompra: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select f.sContrato, f.dIdFecha, f.dfechaEntrega, f.iFolioPedido,' +
        ' f.sReferencia, f.sNumeroOrden,'
      'e.sNumeroActividad, e.iItem, e.dCantidad From anexo_ppedido e'
      
        'inner join anexo_pedidos f on (e.sContrato = f.sContrato And e.i' +
        'FolioPedido = f.iFolioPedido)'
      
        'where e.sContrato = :contrato And e.sNumeroActividad = :Activida' +
        'd Order By f.dIdFecha,  e.iItem')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 645
    Top = 351
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
  end
  object Generado: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select e.sContrato, e.sIsometrico, e.dCantidad, e.sIsometricoRef' +
        'erencia, e.iOrdenCambio,'
      
        'e2.iNumeroEstimacion, e2.iConsecutivo, e2.sNumeroOrden, e2.sNume' +
        'roGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.lStatus From es' +
        'timacionxpartida e'
      
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.' +
        'sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNume' +
        'roGenerador)'
      
        'inner join estimacionperiodo e3 on (e2.sContrato = e3.sContrato ' +
        'And e2.iNumeroEstimacion = e3.iNumeroEstimacion)'
      
        'where e.sContrato = :Contrato And e.sNumeroActividad = :Activida' +
        'd Order By e2.iConsecutivo, e.sIsometrico')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 637
    Top = 311
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
  end
  object Bitacora: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select b.sContrato, b.dIdFecha, b.sNumeroOrden, b.sWbs, b.sNumer' +
        'oActividad, b.dCantidad, b.dAvance, t.sDescripcion, r.sNumeroRep' +
        'orte, r.sIdConvenio, r.sIdTurno,'
      
        'c.sDescripcion as sConvenio, tu.sOrigenTierra From bitacoradeact' +
        'ividades b'
      
        'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And' +
        ' b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion ' +
        '<> '#39'Notas'#39' And t.sClasificacion <> '#39'Tiempo Muerto'#39')'
      
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.s' +
        'NumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.s' +
        'IdTurno = b.sIdTurno)'
      
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTur' +
        'no = tu.sIdTurno)'
      
        'INNER JOIN convenios c ON (c.sContrato = r.sContrato And c.sIdCo' +
        'nvenio = r.sIdConvenio)'
      
        'Where b.sContrato = :Contrato And b.sNumeroActividad = :Activida' +
        'd And b.dCantidad > 0'
      'Order By b.dIdFecha, b.iIdDiario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 637
    Top = 271
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
  end
  object Historico: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select f.sContrato, f.dFechaAviso, f.dIdFecha, f.iFolio, f.sRefe' +
        'rencia, f.sNumeroOrden,'
      
        'm.sDescripcion, f.mComentarios, e.sNumeroActividad, e.dCantidad ' +
        'From anexo_psuministro e'
      
        'inner join anexo_suministro f on (e.sContrato = f.sContrato And ' +
        'e.iFolio = f.iFolio)'
      'inner join movimientosdealmacen m on (f.sIdTipo = m.sIdTipo)'
      
        'where e.sContrato = :contrato And e.sNumeroActividad = :Activida' +
        'd Order By f.iFolio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 637
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
  end
  object Requisiciones: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select f.sContrato, f.dIdFecha, f.sNumFolio, f.sReferencia, f.sN' +
        'umeroOrden, '
      
        'e.sNumeroActividad, e.iItem, e.dCantidad, e.sMedida, e.dfechaReq' +
        'uerimiento'
      'From anexo_prequisicion e'
      
        'inner join anexo_requisicion f on (e.sContrato = f.sContrato And' +
        ' e.iFolioRequisicion = f.sNumFolio)'
      
        'where e.sContrato = :contrato And e.sNumeroActividad = :Activida' +
        'd Order By f.dIdFecha, e.iItem')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 637
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
  end
  object cd_insumos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 392
    object cd_insumossIdInsumo: TStringField
      FieldName = 'sIdInsumo'
    end
    object cd_insumosmDescripcion: TStringField
      FieldName = 'mDescripcion'
      Size = 250
    end
    object cd_insumossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
    end
    object cd_insumossContrato: TStringField
      FieldName = 'sContrato'
    end
    object cd_insumosiFolioReq: TIntegerField
      FieldName = 'iFolioReq'
    end
    object cd_insumossReferenciaReq: TStringField
      FieldName = 'sReferenciaReq'
    end
    object cd_insumosdCantidadReq: TFloatField
      FieldName = 'dCantidadReq'
    end
    object cd_insumosiFolioOC: TIntegerField
      FieldName = 'iFolioOC'
    end
    object cd_insumossReferenciaOC: TStringField
      FieldName = 'sReferenciaOC'
    end
    object cd_insumosdCantidadOC: TFloatField
      FieldName = 'dCantidadOC'
    end
    object cd_insumossReferenciaRep: TStringField
      FieldName = 'sReferenciaRep'
    end
    object cd_insumosdCantidadRep: TFloatField
      FieldName = 'dCantidadRep'
    end
    object cd_insumosdFechaReq: TDateField
      FieldName = 'dFechaReq'
    end
    object cd_insumosdFechaOC: TDateField
      FieldName = 'dFechaOC'
    end
    object cd_insumosdFechaRep: TDateField
      FieldName = 'dFechaRep'
    end
    object cd_insumosdFechaSum: TDateField
      FieldName = 'dFechaSum'
    end
    object cd_insumossReferenciaSum: TStringField
      FieldName = 'sReferenciaSum'
    end
    object cd_insumosdCantidadSum: TFloatField
      FieldName = 'dCantidadSum'
    end
  end
  object frxDBInsumos: TfrxDBDataset
    UserName = 'frxDBInsumos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdInsumo=sIdInsumo'
      'mDescripcion=mDescripcion'
      'sNumeroActividad=sNumeroActividad'
      'sContrato=sContrato'
      'iFolioReq=iFolioReq'
      'sReferenciaReq=sReferenciaReq'
      'dCantidadReq=dCantidadReq'
      'iFolioOC=iFolioOC'
      'sReferenciaOC=sReferenciaOC'
      'dCantidadOC=dCantidadOC'
      'sReferenciaRep=sReferenciaRep'
      'dCantidadRep=dCantidadRep'
      'dFechaReq=dFechaReq'
      'dFechaOC=dFechaOC'
      'dFechaRep=dFechaRep'
      'dFechaSum=dFechaSum'
      'sReferenciaSum=sReferenciaSum'
      'dCantidadSum=dCantidadSum')
    DataSet = cd_insumos
    BCDToCurrency = False
    Left = 680
    Top = 392
  end
  object zq_InsxPar: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * from recursosanexosnuevos Where sContrato = :Contrato'
      
        'And sWbs = :wbs and sNumeroActividad = :actividad Order By sIdin' +
        'sumo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    Left = 648
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
  end
  object partidas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select sNumeroActividad'
      
        ' from actividadesxanexo Where sContrato = :Contrato And sIdConve' +
        'nio = :Convenio And sTipoActividad = "Actividad" Order By iItemO' +
        'rden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
    Left = 397
    Top = 255
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.IconosBarra
    Left = 281
    Top = 88
    object ImprimirKardexdelaPartida1: TMenuItem
      Tag = 4
      Caption = 'Imprimir Kardex de la Partida'
      SubMenuImages = connection.ImageList1
      ImageIndex = 5
      ShortCut = 16464
      OnClick = ImprimirKardexdelaPartida1Click
    end
    object ImprimirKardexdelasPartidasSeleccionads1: TMenuItem
      Caption = 'Imprimir Kardex de la Partida Seleccionada'
      ImageIndex = 5
      OnClick = ImprimirKardexdelasPartidasSeleccionads1Click
    end
    object ImprimirKardexGeneral1: TMenuItem
      Tag = 4
      Caption = 'Imprimir Kardex General'
      ImageIndex = 5
      OnClick = ImprimirKardexGeneral1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
      OnClick = Salir1Click
    end
  end
  object frmtsclr1: TFormAutoScaler
    Left = 696
    Top = 136
    DesignDPI = 96
    DesignHeight = 549
    DesignWidth = 927
    DesignTextHeight = 14
  end
end
