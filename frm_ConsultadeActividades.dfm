object frmConsultaActividad: TfrmConsultaActividad
  Left = 244
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Partidas x Alcance'
  ClientHeight = 592
  ClientWidth = 946
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 4
    Top = 10
    Width = 65
    Height = 14
    Caption = 'No. &Concepto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 195
    Top = 11
    Width = 89
    Height = 14
    Caption = 'Detalle de Alcance'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object imgNotas: TImage
    Left = 167
    Top = 9
    Width = 15
    Height = 15
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
    OnDblClick = imgNotasDblClick
  end
  object btnSalir: TBitBtn
    Left = 830
    Top = 545
    Width = 95
    Height = 28
    Caption = '&Salir'
    TabOrder = 3
    OnClick = btnSalirClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888880888
      8888888888800888888888888804088888888888804E08888888000004EE0000
      000088880EEE0770888888880EE00770888888880EE00770888888880EEE0770
      888888880EEE0770888888880EEE0770888888880EEE0770888888880EE40770
      888888880E407770888888880407777088888888000000008888}
  end
  object sbPaquete: TStatusBar
    Left = 0
    Top = 573
    Width = 946
    Height = 19
    Panels = <
      item
        Text = 'Avance General Paq/Partida'
        Width = 180
      end
      item
        Text = '0'
        Width = 80
      end
      item
        Width = 50
      end>
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 385
    Width = 932
    Height = 159
    Cursor = crHelp
    Caption = 'Bitacora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object grid_bitacora: TDBGrid
      Left = 2
      Top = 16
      Width = 928
      Height = 141
      Cursor = crHelp
      Hint = 'Bitacora de Movimientos de la Partida'
      Align = alClient
      Color = 15138559
      Ctl3D = False
      DataSource = ds_bitacora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = grid_bitacoraDblClick
      OnKeyPress = grid_bitacoraKeyPress
      OnMouseMove = grid_bitacoraMouseMove
      OnMouseUp = grid_bitacoraMouseUp
      OnTitleClick = grid_bitacoraTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'dIdFecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Fecha'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sNumeroReporte'
          Title.Caption = 'No. Reporte'
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sDescripcion'
          Title.Caption = 'Alcance'
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Caption = 'Cantidad'
          Visible = True
        end
        item
          Color = cl3DLight
          Expanded = False
          FieldName = 'dAvance'
          Title.Caption = 'Avance'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sReferencia'
          Title.Caption = 'Referencia'
          Width = 177
          Visible = True
        end>
    end
  end
  object Grid_Resumen: TDBGrid
    Left = 590
    Top = 5
    Width = 349
    Height = 157
    Color = 14342874
    Ctl3D = False
    DataSource = ds_Resumen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'sDescripcion'
        Title.Caption = 'Fase'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dPonderado'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dCantidad'
        Title.Alignment = taRightJustify
        Title.Caption = 'Cantidad'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 33
    Width = 581
    Height = 129
    Caption = 'Actividad Anexo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Label5: TLabel
      Left = 289
      Top = 89
      Width = 59
      Height = 14
      Caption = 'Cant. Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 289
      Top = 111
      Width = 43
      Height = 14
      Caption = 'Instalado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 90
      Width = 52
      Height = 14
      Caption = 'Ponderado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 440
      Top = 110
      Width = 51
      Height = 14
      Caption = 'Excedente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 4
      Top = 110
      Width = 34
      Height = 14
      Caption = 'Medida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 151
      Top = 88
      Width = 48
      Height = 14
      Caption = 'Precio MN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 151
      Top = 109
      Width = 24
      Height = 14
      Caption = 'WBS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 440
      Top = 90
      Width = 47
      Height = 14
      Caption = 'Pendiente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object tdPonderado: TCurrencyEdit
      Left = 66
      Top = 83
      Width = 80
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '##0.0### %'
      ReadOnly = True
      TabOrder = 0
      OnEnter = tdPonderadoEnter
      OnExit = tdPonderadoExit
      OnKeyPress = tdPonderadoKeyPress
    end
    object tdVentaMN: TCurrencyEdit
      Left = 205
      Top = 82
      Width = 80
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      ReadOnly = True
      TabOrder = 2
      OnEnter = tdVentaMNEnter
      OnExit = tdVentaMNExit
      OnKeyPress = tdVentaMNKeyPress
    end
    object tdCantidadAnexo: TCurrencyEdit
      Left = 353
      Top = 83
      Width = 80
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0###'
      ReadOnly = True
      TabOrder = 4
      OnEnter = tdCantidadAnexoEnter
      OnExit = tdCantidadAnexoExit
      OnKeyPress = tdCantidadAnexoKeyPress
    end
    object tdInstalado: TCurrencyEdit
      Left = 353
      Top = 104
      Width = 80
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0###'
      ReadOnly = True
      TabOrder = 5
      OnEnter = tdInstaladoEnter
      OnExit = tdInstaladoExit
      OnKeyPress = tdInstaladoKeyPress
    end
    object tdPendiente: TCurrencyEdit
      Left = 496
      Top = 83
      Width = 80
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0###'
      ReadOnly = True
      TabOrder = 6
      OnEnter = tdPendienteEnter
      OnExit = tdPendienteExit
      OnKeyPress = tdPendienteKeyPress
    end
    object tdExcedente: TCurrencyEdit
      Left = 496
      Top = 104
      Width = 80
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0###'
      ReadOnly = True
      TabOrder = 7
      OnEnter = tdExcedenteEnter
      OnExit = tdExcedenteExit
    end
    object tsWbs: TEdit
      Left = 205
      Top = 103
      Width = 80
      Height = 22
      ReadOnly = True
      TabOrder = 3
      OnEnter = tsWbsEnter
      OnExit = tsWbsExit
      OnKeyPress = tsWbsKeyPress
    end
    object tsMedida: TEdit
      Left = 66
      Top = 104
      Width = 80
      Height = 22
      ReadOnly = True
      TabOrder = 1
      OnEnter = tsMedidaEnter
      OnExit = tsMedidaExit
      OnKeyPress = tsMedidaKeyPress
    end
    object gridActividadesAnexo: TDBGrid
      Left = 2
      Top = 12
      Width = 576
      Height = 68
      Hint = 'Aqu'#237' se reflejan los resultados obtenidos de la consulta.'
      Color = 14342874
      Ctl3D = False
      DataSource = dsPartidasDelAnexo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'sNumeroActividad'
          Title.Caption = 'Actividad'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidadAnexo'
          Title.Caption = 'Cantidad Anexo'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mDescripcion'
          Title.Caption = 'Contenido en paquete:'
          Width = 552
          Visible = True
        end>
    end
  end
  object PanelPartidas: tNewGroupBox
    Left = 4
    Top = 164
    Width = 934
    Height = 220
    Caption = 'Conceptos/Partidas por Frente de Trabajo'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 934
    Title.HighLightColor = clBlack
    Title.ShadowColor = clBlack
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 1
    Title.Bevel = bnRaised
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 18
    Title.BkColor = clSilver
    TransparentMode = False
    Border = True
    Shape = tsRectRound
    object GridActividades: TDBGrid
      Left = 3
      Top = 23
      Width = 929
      Height = 193
      Hint = 'Aqu'#237' se reflejan los resultados de las consultas.'
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 15138559
      Ctl3D = False
      DataSource = ds_actividadesxorden
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnMouseMove = GridActividadesMouseMove
      OnMouseUp = GridActividadesMouseUp
      OnTitleClick = GridActividadesTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'sNumeroOrden'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = 'Frente'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sWbs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = 'WBS'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Descripcion'
          Width = 233
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sMedida'
          Title.Caption = 'UM'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dVentaMN'
          Title.Alignment = taRightJustify
          Title.Caption = 'P. U.'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dInstaladoTotal'
          Title.Alignment = taRightJustify
          Title.Caption = 'Instalado'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dPendiente'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pendiente'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dExcedente'
          Title.Alignment = taRightJustify
          Title.Caption = 'Excedente'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dPonderado'
          Title.Alignment = taRightJustify
          Title.Caption = 'Ponderado'
          Width = 72
          Visible = True
        end>
    end
  end
  object PanelHistorico: TGroupBox
    Left = 108
    Top = 187
    Width = 508
    Height = 325
    Hint = 'Click derecho Ver/ocultar historial de suministros para ocultar.'
    Caption = 'Kardex'
    Color = 10928586
    DockSite = True
    DragKind = dkDock
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    Visible = False
    object Grid_Historico: TRxDBGrid
      Left = 4
      Top = 14
      Width = 501
      Height = 307
      Hint = 'Click derecho Ver/ocultar historial de suministros para ocultar.'
      Color = 15138559
      Ctl3D = False
      DataSource = ds_Historico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'sNumeroActividad'
          Title.Caption = 'Partida'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dIdFecha'
          Title.Caption = 'Fecha'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sDescripcion'
          Title.Caption = 'Descripcion'
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'iFolio'
          Title.Caption = 'Folio'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Caption = 'Cantidad'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sReferencia'
          Title.Caption = 'Referencia'
          Width = 128
          Visible = True
        end>
    end
  end
  object tsFiltro: TComboBox
    Left = 288
    Top = 5
    Width = 297
    Height = 22
    Hint = 'Seleccione el detalle del alcance.'
    Style = csDropDownList
    ItemHeight = 14
    TabOrder = 1
    OnEnter = tsFiltroEnter
    OnExit = tsFiltroExit
    OnKeyPress = tsFiltroKeyPress
  end
  object tsNumeroActividad: TRxDBLookupCombo
    Left = 75
    Top = 5
    Width = 90
    Height = 22
    Hint = 'Seleccione el n'#250'mero de concepto.'
    DropDownCount = 8
    EmptyItemColor = 15138559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ListStyle = lsDelimited
    LookupField = 'sNumeroActividad'
    LookupDisplay = 'sNumeroActividad'
    LookupSource = ds_Partidas
    ParentFont = False
    TabOrder = 0
    OnChange = tsNumeroActividadChange
    OnEnter = tsNumeroActividadEnter
    OnExit = tsNumeroActividadExit
    OnKeyPress = tsNumeroActividadKeyPress
  end
  object ds_bitacora: TDataSource
    AutoEdit = False
    DataSet = QryBitacora
    Left = 678
    Top = 397
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.ImageList1
    Left = 151
    Top = 248
    object HistorialdeSuministros1: TMenuItem
      Caption = 'Historial de Suministros'
      ImageIndex = 9
      ShortCut = 113
      OnClick = HistorialdeSuministros1Click
    end
    object ComentariosAdicionales: TMenuItem
      Caption = 'Comentarios Adicionales a la Partida'
      ImageIndex = 11
      ShortCut = 115
      OnClick = ComentariosAdicionalesClick
    end
    object mnFichaTecnica: TMenuItem
      Tag = 4
      Caption = 'Ficha Tecnica'
      ImageIndex = 9
      ShortCut = 16454
      OnClick = mnFichaTecnicaClick
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Cut1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 1
      ShortCut = 16451
      OnClick = Cut1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 43
      ShortCut = 16472
    end
  end
  object ds_Historico: TDataSource
    AutoEdit = False
    DataSet = Historico
    Left = 230
    Top = 470
  end
  object rDiario: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 42043.845894814820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    Left = 30
    Top = 472
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
      end
      item
      end
      item
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object MasterData2: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 52.535435510000000000
        ParentFont = False
        Top = 321.260050000000000000
        Width = 740.409927000000000000
        RowCount = 0
        Stretched = True
        object Memo46: TfrxMemoView
          Left = 551.811380000000000000
          Width = 185.952755910000000000
          Height = 52.535433070866140000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo15: TfrxMemoView
          Left = 96.377952760000000000
          Width = 455.433070870000000000
          Height = 52.535435510000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'rptAnexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsAnexo."mDescripcion"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 1.889763780000000000
          Width = 94.488188980000000000
          Height = 52.535435510000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PARTIDA No.'
            '[dsAnexo."sNumeroActividad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.630490000000000000
          Top = 17.763779527559110000
          Width = 66.141727400000000000
          Height = 15.496062990000000000
          ShowHint = False
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PRECIO M.N.:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 555.622760000000000000
          Top = 35.149606299999960000
          Width = 66.141727400000000000
          Height = 15.496062990000000000
          ShowHint = False
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PRECIO DLL:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 555.669760000000000000
          Width = 66.141727400000000000
          Height = 15.496062990000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CANTIDAD:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 627.401916540000000000
          Width = 105.826771650000000000
          Height = 15.496062990000000000
          ShowHint = False
          DataSetName = 'rptAnexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsAnexo."dCantidadAnexo"] [dsAnexo."sMedida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 627.401916540000000000
          Top = 17.763779529999960000
          Width = 98.267711650000000000
          Height = 15.496062990000000000
          ShowHint = False
          AllowExpressions = False
          DataField = 'dVentaMN'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsAnexo."dVentaMN"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 627.401916540000000000
          Top = 35.149606299999960000
          Width = 98.267711650000000000
          Height = 15.496062990000000000
          ShowHint = False
          AllowExpressions = False
          DataField = 'dVentaDLL'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsAnexo."dVentaDLL"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 16.897650000000000000
        ParentFont = False
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        RowCount = 0
        object Memo63: TfrxMemoView
          Left = 1.889763780000000000
          Width = 735.874015750000000000
          Height = 16.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 94.488250000000000000
          Top = 0.755905509999990900
          Width = 37.795300000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdTurno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsBitacora."sIdTurno"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 138.063080000000000000
          Top = 0.755905509999990900
          Width = 60.031540000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sPaquete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsBitacora."sPaquete"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 202.315090000000000000
          Top = 0.755905509999990900
          Width = 225.181200000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsBitacora."sDescripcion"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 439.834880000000000000
          Top = 0.755905509999990900
          Width = 139.842610000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIsometrico'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsBitacora."sIsometrico"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 659.417750000000000000
          Top = 0.755905509999990900
          Width = 75.590600000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<dsBitacora."dCantidad">*<dsAnexo."dVentaMN">]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 9.338590000000000000
          Top = 0.755905509999934100
          Width = 75.590600000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dIdFecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsBitacora."dIdFecha"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 585.827150000000000000
          Top = 0.755905509999990900
          Width = 64.252010000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsBitacora."dCantidad"]')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 17.677180000000000000
        ParentFont = False
        Top = 612.283860000000000000
        Width = 740.409927000000000000
        RowCount = 0
        Stretched = True
        object Memo65: TfrxMemoView
          Left = 1.889763780000000000
          Width = 737.007874015748000000
          Height = 17.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 257.008040000000000000
          Top = 0.755905510000047700
          Width = 136.063080000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIsometrico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsGenerado."sIsometrico"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 7.559060000000000000
          Top = 0.755905510000047700
          Width = 26.456710000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iNumeroEstimacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."iNumeroEstimacion"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Left = 41.574830000000000000
          Top = 0.755905510000047700
          Width = 34.015770000000010000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdTipoEstimacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."sIdTipoEstimacion"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          ShiftMode = smDontShift
          Left = 638.740570000000000000
          Top = 0.755905510000047700
          Width = 94.488250000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<dsGenerado."dCantidad">*<dsAnexo."dVentaMN">]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 81.590600000000000000
          Top = 0.755905510000047700
          Width = 28.015770000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."iSemana"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          Left = 221.433210000000000000
          Top = 0.755905510000047700
          Width = 31.015770000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsGenerado."sNumeroGenerador"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          Left = 551.811380000000000000
          Top = 0.755905510000047700
          Width = 79.370130000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsGenerado."dCantidad"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          ShiftMode = smDontShift
          Left = 404.409710000000000000
          Top = 0.755905511811079200
          Width = 139.842610000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIsometricoReferencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsGenerado."sIsometricoReferencia"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 117.165430000000000000
          Top = 0.755905511811079200
          Width = 99.047310000000000000
          Height = 11.716535430000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsGenerado."sNumeroOrden"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo47: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo48: TfrxMemoView
          Left = 143.999990240000000000
          Top = 3.000000000000000000
          Width = 397.630180000000000000
          Height = 67.031540000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'CONTRATO No: [contrato."sContrato"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 3.779527559055118000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 62.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 566.157856220000000000
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
        object Memo49: TfrxMemoView
          Left = 561.259842519685000000
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
      object PageFooter1: TfrxPageFooter
        Height = 50.897650000000000000
        Top = 835.276130000000000000
        Width = 740.409927000000000000
        object Memo32: TfrxMemoView
          Left = 287.803340000000000000
          Top = 25.133889999999950000
          Width = 449.764070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'rptSetup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[setup."sSlogan"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 1.779530000000000000
          Top = 24.559060000000040000
          Width = 275.905690000000000000
          Height = 26.338590000000000000
          ShowHint = False
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[setup."sWeb"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 243.889920000000000000
          Top = 3.236239999999953000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
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
      object ReportSummary1: TfrxReportSummary
        Height = 85.708720000000000000
        Top = 725.669760000000000000
        Width = 740.409927000000000000
        object Memo59: TfrxMemoView
          Left = 518.330860000000000000
          Top = 22.015769999999970000
          Width = 106.582677170000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTADO')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 397.385900000000000000
          Top = 40.913419999999970000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'VOLUMEN')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 397.385900000000000000
          Top = 59.811069999999970000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'IMPORTE MN')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 518.330860000000000000
          Top = 3.118119999999976000
          Width = 215.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FLUJO DE EFECTIVO')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 518.330860000000000000
          Top = 40.913419999999970000
          Width = 106.582677170000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsBitacora."dCantidad">,MasterData3)]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 518.330860000000000000
          Top = 59.811069999999970000
          Width = 106.582677170000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(Memo54.Value,MasterData3)]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 624.669291340000000000
          Top = 22.015769999999970000
          Width = 108.472440940000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'GENERADO')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 624.669291340000000000
          Top = 40.913419999999970000
          Width = 108.472440940000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsGenerado."dCantidad">,MasterData4)]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 624.669291340000000000
          Top = 59.811069999999970000
          Width = 108.472440940000000000
          Height = 18.897650000000000000
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
            '[SUM(Memo56.Value,MasterData4)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 50.267728740000000000
        Top = 396.850650000000000000
        Width = 740.409927000000000000
        Condition = 'dsBitacora."sContrato"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 15.118119999999980000
          Width = 735.874015750000000000
          Height = 30.236240000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 1.889763780000000000
          Top = 31.370078739999990000
          Width = 88.818897637795280000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 136.063080000000000000
          Top = 31.370078739999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PAQUETE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 200.315090000000000000
          Top = 31.370078739999990000
          Width = 237.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MOVIMIENTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 90.708720000000000000
          Top = 31.370078740000050000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TURNO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 438.055350000000000000
          Top = 31.370078739999990000
          Width = 144.000021970000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ISOMETRICO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 653.858690000000000000
          Top = 31.370078739999990000
          Width = 83.905511809999990000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 20.677180000000000000
          Top = 6.779530000000023000
          Width = 419.968770000000000000
          Height = 15.338590000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clAqua
          Memo.UTF8 = (
            ' VOLUMENES REPORTADOS EN LA ORDEN No: [ORDEN]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 582.047620000000000000
          Top = 31.370078739999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'INSTALADO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 510.236550000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 49.511813470000000000
        Top = 540.472790000000000000
        Width = 740.409927000000000000
        Condition = 'dsGenerado."sContrato"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 14.740159920000000000
          Width = 736.629921259842400000
          Height = 26.456710000000000000
          ShowHint = False
          Curve = 3
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Shape = skRoundRectangle
        end
        object Memo12: TfrxMemoView
          Left = 1.889763780000000000
          Top = 30.614175670000010000
          Width = 35.905487400000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'EST.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 79.370130000000000000
          Top = 30.614175670000010000
          Width = 34.015770000000010000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SEM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 219.212740000000000000
          Top = 30.614175670000010000
          Width = 34.015770000000010000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'GEN.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 37.795300000000000000
          Top = 30.614175670000010000
          Width = 41.574830000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 253.228510000000000000
          Top = 30.614175670000010000
          Width = 147.401670000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ISOMETRICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 548.031849999999900000
          Top = 30.614175670000010000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
          Left = 634.961040000000000000
          Top = 30.614175670000010000
          Width = 103.559055120000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 400.630180000000000000
          Top = 30.614175670000010000
          Width = 147.401567480000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ISOM. DE REF.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 20.677180000000000000
          Top = 7.559060000000045000
          Width = 181.858380000000000000
          Height = 15.338590000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clAqua
          Memo.UTF8 = (
            'VOLUMENES GENERADOS')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 113.385824330000000000
          Top = 30.614173230000010000
          Width = 105.826778980000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. DE ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 653.858690000000000000
        Width = 740.409927000000000000
      end
      object Header1: TfrxHeader
        Height = 135.307086610000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Shape3: TfrxShapeView
          Left = 1.889763780000000000
          Top = 102.047310000000000000
          Width = 735.874015750000000000
          Height = 26.456710000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 159.078850000000000000
          Top = 3.000000000000000000
          Width = 397.630180000000000000
          Height = 78.370130000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'CONTRATO No: [contrato."sContrato"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779527559055118000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 62.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 564.268090000000000000
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
          Left = 561.268090000000000000
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
        object Memo7: TfrxMemoView
          Left = 22.677180000000000000
          Top = 90.708666300000000000
          Width = 218.480520000000000000
          Height = 21.921240310000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'mm.dd.aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA DE CALCULO: [MI_FECHA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 1.889763780000000000
          Top = 113.385846300000000000
          Width = 735.874015750000000000
          Height = 21.921240310000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'mDescripcion'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[contrato."mDescripcion"]')
          ParentFont = False
        end
      end
    end
  end
  object ds_actividadesxorden: TDataSource
    AutoEdit = False
    DataSet = ActividadesxOrden
    Left = 70
    Top = 224
  end
  object ActividadesxOrden: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = ActividadesxOrdenAfterScroll
    OnCalcFields = ActividadesxOrdenCalcFields
    SQL.Strings = (
      
        'Select sNumeroOrden, sWbsAnterior, sWbs, sNumeroActividad, mDesc' +
        'ripcion, sMedida, dCantidad, dVentaMN, dFechaInicio, dFechaFinal' +
        ', dInstalado, dExcedente, dPonderado'
      
        'From actividadesxorden Where sContrato = :Contrato And sIdConven' +
        'io = :Convenio And sNumeroActividad = :Actividad  and sWbsContra' +
        'to=:wbsContrato and sTipoActividad = '#39'Actividad'#39' '
      'order by sNumeroOrden, iItemOrden')
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
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbsContrato'
        ParamType = ptUnknown
      end>
    Left = 104
    Top = 227
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
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbsContrato'
        ParamType = ptUnknown
      end>
    object ActividadesxOrdensNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object ActividadesxOrdensWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
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
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxOrdendVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object ActividadesxOrdendFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object ActividadesxOrdendFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object ActividadesxOrdendInstalado: TFloatField
      FieldName = 'dInstalado'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxOrdendExcedente: TFloatField
      FieldName = 'dExcedente'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxOrdendPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
      DisplayFormat = '##0.0### %'
    end
    object ActividadesxOrdensDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 255
      Calculated = True
    end
    object ActividadesxOrdendPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dPendiente'
      DisplayFormat = '###,###,##0.0###'
      Calculated = True
    end
    object ActividadesxOrdendInstaladoTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dInstaladoTotal'
      Calculated = True
    end
    object ActividadesxOrdensWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 30
    end
    object ActividadesxOrdensNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
  end
  object ds_Resumen: TDataSource
    AutoEdit = False
    DataSet = ResumendeAlcances
    Left = 594
    Top = 160
  end
  object ResumendeAlcances: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select a2.iFase, a2.dAvance as dPonderado, a2.sDescripcion, Sum(' +
        'b.dCantidad) as dCantidad  From alcancesxactividad a2'
      
        'LEFT JOIN bitacoradealcances b ON (b.sContrato = a2.sContrato An' +
        'd b.sNumeroActividad = a2.sNumeroActividad And b.iFase = a2.iFas' +
        'e)'
      
        'Where a2.sContrato = :Contrato And a2.sNumeroActividad = :Activi' +
        'dad Group By a2.iFase')
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
    Left = 624
    Top = 72
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
    object ResumendeAlcancesiFase: TIntegerField
      FieldName = 'iFase'
      Required = True
    end
    object ResumendeAlcancesdPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
      DisplayFormat = '##0.0### %'
    end
    object ResumendeAlcancessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object ResumendeAlcancesdCantidad: TFloatField
      FieldName = 'dCantidad'
      DisplayFormat = '###,###,##0.0###'
    end
  end
  object AvGeneral: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 120
    Top = 339
  end
  object Historico: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select f.dIdFecha, f.iFolio, f.sReferencia, m.sDescripcion, f.mC' +
        'omentarios, e.sNumeroActividad, e.dCantidad From anexo_psuminist' +
        'ro e'
      
        'inner join anexo_suministro f on (e.sContrato = f.sContrato And ' +
        'e.iFolio = f.iFolio)'
      'inner join movimientosdealmacen m on (f.sIdTipo = m.sIdTipo)'
      
        'where e.sContrato = :contrato And e.sNumeroActividad = :Activida' +
        'd Order By dIdFecha')
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
    Left = 270
    Top = 473
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
  object QryBitacora: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 648
    Top = 398
  end
  object ds_Partidas: TDataSource
    AutoEdit = False
    DataSet = QryPartidas
    Left = 101
    Top = 24
  end
  object QryPartidas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT DISTINCT ao.sNumeroActividad FROM actividadesxanexo ao'
      
        'WHERE EXISTS (SELECT distinct a.sNumeroActividad from alcancesxa' +
        'ctividad  a where a.sContrato = ao.scontrato and a.sNumeroActivi' +
        'dad = ao.sNumeroActividad) AND'
      
        'ao.sContrato = :Contrato And ao.sIdConvenio = :Convenio and ao.s' +
        'TipoActividad = "Actividad" Order By ao.iItemOrden')
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
    Left = 130
    Top = 17
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
  object PopupMenu2: TPopupMenu
    Images = connection.ImageList1
    Left = 446
    Top = 360
    object VerocultarHistorialdeSuministros1: TMenuItem
      Caption = 'Ver/ocultar Historial de Suministros'
      ImageIndex = 9
      ShortCut = 113
      OnClick = VerocultarHistorialdeSuministros1Click
    end
  end
  object dsPartidasDelAnexo: TDataSource
    AutoEdit = False
    DataSet = qryPartidasDelAnexo
    Left = 253
    Top = 56
  end
  object qryPartidasDelAnexo: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = qryPartidasDelAnexoAfterScroll
    SQL.Strings = (
      'Select'
      '  a.sContrato,'
      '  a.sNumeroActividad,'
      '  a.sWbs,'
      '  a.dCantidadAnexo, '
      '  a.dInstalado,'
      '  a.dExcedente,'
      '  a.dVentaMN,'
      '  a.sMedida,'
      '  a.dPonderado,'
      
        '  (select substr(tmp.mDescripcion,1,100) from actividadesxanexo ' +
        'tmp where tmp.sContrato=a.sContrato and tmp.sIdConvenio=a.sIdCon' +
        'venio'
      ' and tmp.sWbs=a.sWbsAnterior) as mDescripcion'
      '  from actividadesxanexo a Where a.sContrato =  :Contrato '
      'And a.sIdConvenio =:Convenio'
      'and a.sNumeroActividad=:actividad'
      'and a.sTipoActividad = '#39'Actividad'#39' Order By a.iItemOrden')
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
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    Left = 281
    Top = 56
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
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
  end
end
