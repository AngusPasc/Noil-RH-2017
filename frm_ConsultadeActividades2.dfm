object frmConsultaActividad2: TfrmConsultaActividad2
  Left = 177
  Top = 134
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta x Partida Anexo'
  ClientHeight = 561
  ClientWidth = 927
  Color = 14145495
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object imgNotas: TImage
    Left = 167
    Top = 4
    Width = 13
    Height = 17
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
    Stretch = True
    Visible = False
    OnDblClick = imgNotasDblClick
  end
  object tNewGroupBox1: tNewGroupBox
    Left = 8
    Top = 363
    Width = 912
    Height = 178
    Caption = 'Coincidencias encontradas en los siguientes Reportes Diarios'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 912
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
    object grid_bitacora: TDBGrid
      Left = 3
      Top = 23
      Width = 907
      Height = 150
      Cursor = crHelp
      Hint = 'Bitacora de Movimientos de la Partida'
      Color = 15138559
      Ctl3D = False
      DataSource = ds_bitacora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
          Title.Caption = 'Fecha'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'iIdDiario'
          Title.Alignment = taRightJustify
          Title.Caption = '#'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sNumeroReporte'
          Title.Caption = 'No. de Reporte'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sDescripcionTurno'
          Title.Caption = 'Turno'
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sTitulo'
          Title.Caption = 'Descripcion'
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 82
          Visible = True
        end
        item
          Color = cl3DLight
          Expanded = False
          FieldName = 'dAvance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taRightJustify
          Title.Caption = 'Avance'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sIsometrico'
          Title.Caption = 'Isometrico'
          Width = 166
          Visible = True
        end>
    end
  end
  object PanelPartidas: tNewGroupBox
    Left = 8
    Top = 217
    Width = 912
    Height = 142
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
    TabOrder = 2
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 912
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
      Width = 907
      Height = 116
      Hint = 'Aqu'#237' se reflejan los resultados obtenidos de la consulta.'
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
          Width = 97
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
  object sbPaquete: TStatusBar
    Left = 0
    Top = 542
    Width = 927
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
  object btnSalir: TBitBtn
    Left = 831
    Top = 17
    Width = 88
    Height = 30
    Caption = '&Salir'
    TabOrder = 0
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
  object PanelHistorico: TGroupBox
    Left = 221
    Top = 94
    Width = 509
    Height = 326
    Hint = 'Click derecho Ver/ocultar historial de suministros para ocultar.'
    Caption = 'Kardex'
    Color = clGray
    DockSite = True
    DragKind = dkDock
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Visible = False
    object Grid_Historico: TRxDBGrid
      Left = 5
      Top = 16
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
      ParentShowHint = False
      PopupMenu = PopupMenu2
      ShowHint = True
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
          FieldName = 'dFechaAviso'
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
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
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
  object tNewGroupBox2: tNewGroupBox
    Left = 8
    Top = 91
    Width = 912
    Height = 125
    Caption = 'Detalles y Alcances de Conceptos/Partidas por Anexo'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 912
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
    object Grid_Resumen: TDBGrid
      Left = 3
      Top = 25
      Width = 568
      Height = 92
      Hint = 'Aqu'#237' se reflejan los resultados obtenidos de la consulta.'
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
      PopupMenu = PopupPrincipal
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnMouseMove = Grid_ResumenMouseMove
      OnMouseUp = Grid_ResumenMouseUp
      OnTitleClick = Grid_ResumenTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'sDescripcion'
          Title.Caption = 'Fase'
          Width = 338
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dPonderado'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 89
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 577
      Top = 20
      Width = 311
      Height = 102
      Caption = 'Actividad Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label5: TLabel
        Left = 163
        Top = 21
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
        Left = 163
        Top = 43
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
        Left = 8
        Top = 22
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
        Left = 163
        Top = 84
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
        Left = 8
        Top = 42
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
        Left = 8
        Top = 63
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
        Left = 8
        Top = 84
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
        Left = 163
        Top = 64
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
        Left = 70
        Top = 13
        Width = 80
        Height = 21
        Hint = 'muestra ponderado'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        Color = clBtnHighlight
        DecimalPlaces = 4
        DisplayFormat = '##0.0### %'
        ReadOnly = True
        TabOrder = 0
      end
      object tdVentaMN: TCurrencyEdit
        Left = 70
        Top = 57
        Width = 80
        Height = 21
        Hint = 'Muestra precio en moneda nacional.'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        Color = clBtnHighlight
        ReadOnly = True
        TabOrder = 2
      end
      object tdCantidadAnexo: TCurrencyEdit
        Left = 228
        Top = 15
        Width = 80
        Height = 21
        Hint = 'Muestra la cantidad de anexo.'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        Color = clBtnHighlight
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0###'
        ReadOnly = True
        TabOrder = 4
      end
      object tdInstalado: TCurrencyEdit
        Left = 228
        Top = 36
        Width = 80
        Height = 21
        Hint = 'Muestra lo instalado.'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        Color = clBtnHighlight
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0###'
        ReadOnly = True
        TabOrder = 5
      end
      object tdPendiente: TCurrencyEdit
        Left = 228
        Top = 57
        Width = 80
        Height = 21
        Hint = 'Muestra pendientes.'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        Color = clBtnHighlight
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0###'
        ReadOnly = True
        TabOrder = 6
      end
      object tdExcedente: TCurrencyEdit
        Left = 228
        Top = 78
        Width = 80
        Height = 21
        Hint = 'Muestra el excedente.'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        Color = clBtnHighlight
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0###'
        ReadOnly = True
        TabOrder = 7
      end
      object tsWbs: TEdit
        Left = 70
        Top = 78
        Width = 80
        Height = 22
        Hint = 'Muestra WBS.'
        Color = clBtnHighlight
        ReadOnly = True
        TabOrder = 3
      end
      object tsMedida: TEdit
        Left = 70
        Top = 36
        Width = 80
        Height = 22
        Hint = 'Muestra medida'
        Color = clBtnHighlight
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object tNewGroupBox3: tNewGroupBox
    Left = 8
    Top = 0
    Width = 817
    Height = 90
    Caption = 'Conceptos/Partidas por Anexo'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 912
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
    object Label2: TLabel
      Left = 2
      Top = 40
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
    object gridActividadesAnexo: TDBGrid
      Left = 166
      Top = 20
      Width = 648
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnMouseMove = Grid_ResumenMouseMove
      OnMouseUp = Grid_ResumenMouseUp
      OnTitleClick = Grid_ResumenTitleClick
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
    object tsNumeroActividad: TRxDBLookupCombo
      Left = 73
      Top = 40
      Width = 90
      Height = 22
      Hint = 'Seleccione un numero de concepto.'
      DropDownCount = 8
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
      TabOrder = 1
      OnChange = tsNumeroActividadChange
      OnEnter = tsNumeroActividadEnter
      OnExit = tsNumeroActividadExit
      OnKeyPress = tsNumeroActividadKeyPress
    end
  end
  object ds_bitacora: TDataSource
    AutoEdit = False
    DataSet = Bitacora
    Left = 112
    Top = 280
  end
  object ds_actividadesxorden: TDataSource
    AutoEdit = False
    DataSet = ActividadesxOrden
    Left = 200
  end
  object ds_Resumen: TDataSource
    AutoEdit = False
    DataSet = ResumendeAlcances
    Left = 124
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.ImageList1
    Left = 193
    Top = 128
    object HistorialdeSuministros1: TMenuItem
      Caption = 'Ver/ocultar Historial de Suministros'
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
    Left = 296
    Top = 222
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
    ReportOptions.LastChange = 42043.844194398150000000
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
      'function esColor (iColor :Integer) : tColor ;'
      'var'
      '    sColor : tColor ;'
      'begin'
      '  Case iColor Of'
      '        0 : sColor := clBlack ;'
      '        1 : sColor := clMaroon ;'
      '        2 : sColor := clGreen ;'
      '        3 : sColor := clOlive ;'
      '        4 : sColor := clNavy ;'
      '        5 : sColor := clPurple ;'
      '        6 : sColor := clTeal ;'
      '        7 : sColor := clGray ;'
      '        8 : sColor := clSilver ;'
      '        9 : sColor := clRed ;'
      '        10 : sColor := clLime ;'
      '        11 : sColor := clYellow ;'
      '        12 : sColor := clBlue ;'
      '        13 : sColor := clFuchsia ;'
      '        14 : sColor := clAqua ;'
      '        15 : sColor := clWhite ;'
      '    End ;'
      '    result := sColor ;'
      'end ;'
      ''
      'procedure Memo31OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo31.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo10.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo16.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo12.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo14OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo14.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo25OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo25.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo26OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo26.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo27OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo27.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'procedure Memo15OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo15.Font.Color := esColor( <dbActividadesxOrden."iColor">' +
        ' ) ;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    Left = 32
    Top = 312
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
        Value = 
          'IIF(<dbActividadesxOrden."sTipoActividad"> = '#39'Actividad'#39',<dbActi' +
          'vidadesxOrden."dCantidad"> * <dbActividadesxOrden."dVentaMN">,0)'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object PageFooter1: TfrxPageFooter
        Height = 49.133890000000000000
        Top = 597.165740000000000000
        Width = 740.409927000000000000
        object Memo32: TfrxMemoView
          Left = 188.976500000000000000
          Top = 30.236239999999960000
          Width = 551.811380000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236239999999960000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
        object Memo35: TfrxMemoView
          Left = 257.008040000000000000
          Top = 7.559059999999817000
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
      object MasterData1: TfrxMasterData
        Height = 17.007874020000000000
        Top = 442.205010000000000000
        Width = 740.409927000000000000
        OutlineText = 'dbActividadesxOrden."sWBS"'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 73.700811810000000000
          Width = 308.031444800000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dbActividadesxOrden."mDescripcion"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 427.086890000000000000
          Width = 49.133890000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo12OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaFinal'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dFechaFinal"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 476.220780000000000000
          Width = 49.133890000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dCantidad"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 696.566931570000000000
          Width = 42.330706220000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo15OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dPonderado"] %')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 381.732266380000000000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dFechaInicio'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dFechaInicio"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 559.370440000000000000
          Width = 65.763786850000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo26OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dVentaMN'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dVentaMN"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 625.133853390000000000
          Width = 71.433078190000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo27OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dMontoMN'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbActividadesxOrden."dMontoMN"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 1.889763780000000000
          Width = 71.811070000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[espaces(<dbActividadesxOrden."iNivel">)] [IIF(<dbActividadesxOr' +
              'den."sTipoActividad"> = '#39'Paquete'#39' , IIF(<dbActividadesxOrden."sW' +
              'bsAnterior"> <> '#39'0'#39', <dbActividadesxOrden."sWbs">, <dbActividade' +
              'sxOrden."sWbs"> )'
            ', <dbActividadesxOrden."sNumeroActividad">)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 525.354670000000000000
          Width = 34.015770000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sMedida'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbActividadesxOrden."sMedida"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 185.417440000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
        end
        object Memo4: TfrxMemoView
          Left = 159.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
          Height = 78.370130000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]'
            ''
            'ORDEN DE TRABAJO')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 5.779530000000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 77.149660000000000000
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
          Height = 79.149660000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 87.149660000000000000
          Width = 735.874015750000000000
          Height = 94.488250000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Frame.Width = 1.500000000000000000
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          Left = 9.448823780000000000
          Top = 90.708666300000000000
          Width = 720.755895750000000000
          Height = 82.393720310000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'CONTRATO: [Contrato."sContrato"]'
            'CODIGO: [Contrato."sCodigo"]'
            'NOMBRE DEL PROYECTO: [Contrato."mDescripcion"]'
            'PROGRAMA: [dsOrden."sDescripcion"]'
            'SUBPROGRAMA: [Contrato."sConvenio"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 86.929190000000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
        end
        object Memo5: TfrxMemoView
          Left = 159.078850000000000000
          Top = 3.000000000000000000
          Width = 401.409710000000000000
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
            '[contrato."mCliente"]'
            ''
            'ORDEN DE TRABAJO')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 5.779530000000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 77.149660000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 564.268090000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 79.149660000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 374.173470000000000000
        Width = 740.409927000000000000
        Condition = 'dbActividadesxOrden."sContrato"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Memo18: TfrxMemoView
          Left = 73.700811810000000000
          Top = 3.779530000000022000
          Width = 308.031444800000000000
          Height = 18.897650000000000000
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
        object Memo19: TfrxMemoView
          Left = 381.732266380000000000
          Top = 3.779530000000022000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
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
            'F. INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 427.086592200000000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
            'F. TERM.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 476.220780000000000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
        object Memo23: TfrxMemoView
          Left = 696.566931570000000000
          Top = 3.779530000000022000
          Width = 42.330706220000000000
          Height = 18.897650000000000000
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
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000022000
          Width = 65.763786850000000000
          Height = 18.897650000000000000
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
            'P.U. M.N.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 625.133853390000000000
          Top = 3.779530000000022000
          Width = 71.433078190000000000
          Height = 18.897650000000000000
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
            'TOTAL M.N.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 1.889763780000000000
          Top = 3.779530000000022000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
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
            'CONCEPTO/'
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 525.354670000000000000
          Top = 3.779530000000022000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
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
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 22.677170240000000000
        Top = 514.016080000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo29: TfrxMemoView
          Left = 349.606523780000000000
          Top = 3.779527560000020000
          Width = 210.519345750000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total General de la Orden de Trabajo')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 574.488193860000000000
          Top = 3.779527560000020000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<TotalMN>,MasterData1)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 691.653990000000000000
          Top = 3.779530000000022000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '100 %')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 419.527830000000000000
        Width = 740.409927000000000000
        Condition = 'dbActividadesxOrden."iItemOrden"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 7.559060000000000000
        Top = 483.779840000000000000
        Width = 740.409927000000000000
      end
    end
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
        'io = :Convenio And sNumeroActividad = :Actividad and sWbsContrat' +
        'o=:wbs and sTipoActividad = '#39'Actividad'#39' order by sNumeroOrden, i' +
        'ItemOrden')
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
        Name = 'wbs'
        ParamType = ptUnknown
      end>
    Left = 229
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
        Name = 'wbs'
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
  object AvGeneral: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sum(dAvance) as dAvance from bitacoradeactividades b'
      
        'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato AND' +
        ' b.sIdTipoMovimiento = t.sIdTipoMovimiento)'
      
        'where b.sContrato = :contrato and b.sNumeroOrden = :Orden and b.' +
        'sWbs = :Wbs and b.sNumeroActividad= :actividad Group By b.sContr' +
        'ato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 90
    Top = 187
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
  end
  object ResumendeAlcances: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select a2.iFase, a2.dAvance as dPonderado, a2.sDescripcion, Sum(' +
        'b.dCantidad) as dCantidad  From alcancesxactividad a2'
      
        'INNER JOIN actividadesxorden ao ON ( a2.sContrato=ao.sContrato a' +
        'nd a2.sNumeroActividad=ao.sNumeroActividad and a2.sWbs=ao.sWbsCo' +
        'ntrato  )'
      
        'LEFT JOIN bitacoradealcances b ON (b.sContrato = ao.sContrato An' +
        'd b.sNumeroActividad = ao.sNumeroActividad and b.sWbs=ao.sWbs  A' +
        'nd b.iFase = a2.iFase)'
      
        'Where a2.sContrato = :Contrato And a2.sNumeroActividad = :Activi' +
        'dad and a2.sWbs=:wbs Group By a2.iFase')
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
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end>
    Left = 152
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
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
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
  object Bitacora: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = BitacoraCalcFields
    SQL.Strings = (
      
        'select b.sContrato, b.dIdFecha, b.iIdDiario, b.sIdTurno, b.sNume' +
        'roOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance, b.s' +
        'IdTipoMovimiento, b.lAlcance,'
      
        'r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra, tu.sDescripci' +
        'on as sDescripcionTurno from bitacoradeactividades b'
      
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.s' +
        'NumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.s' +
        'IdTurno = b.sIdTurno)'
      
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTur' +
        'no = tu.sIdTurno)'
      
        'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And' +
        ' b.sIdTipoMovimiento = t.sIdTipoMovimiento and t.sClasificacion ' +
        '= '#39'Tiempo en Operacion'#39')'
      
        'Where b.sContrato = :contrato and b.sNumeroOrden = :Orden and b.' +
        'sWbs = :Wbs and b.sNumeroActividad= :Actividad'
      'Order By b.dIdFecha, b.iIdDiario asc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 82
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object BitacorasContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object BitacoradIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object BitacoraiIdDiario: TIntegerField
      FieldName = 'iIdDiario'
      Required = True
    end
    object BitacorasIdTurno: TStringField
      FieldName = 'sIdTurno'
      Required = True
      Size = 2
    end
    object BitacorasNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object BitacorasNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object BitacoradCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object BitacoradAvance: TFloatField
      FieldName = 'dAvance'
      Required = True
      DisplayFormat = '##0.0### %'
    end
    object BitacorasIdTipoMovimiento: TStringField
      FieldName = 'sIdTipoMovimiento'
      Required = True
      Size = 4
    end
    object BitacoralAlcance: TStringField
      FieldName = 'lAlcance'
      Required = True
      Size = 2
    end
    object BitacorasNumeroReporte: TStringField
      FieldName = 'sNumeroReporte'
      Required = True
      Size = 35
    end
    object BitacorasIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object BitacorasOrigenTierra: TStringField
      FieldName = 'sOrigenTierra'
      Required = True
      Size = 2
    end
    object BitacorasTitulo: TStringField
      FieldKind = fkCalculated
      FieldName = 'sTitulo'
      Size = 35
      Calculated = True
    end
    object BitacorasDescripcionTurno: TStringField
      FieldName = 'sDescripcionTurno'
      Required = True
      Size = 30
    end
    object BitacorasWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
  end
  object Historico: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select f.dFechaAviso, f.iFolio, f.sReferencia, m.sDescripcion, f' +
        '.mComentarios, e.sNumeroActividad, e.dCantidad'
      'From anexo_psuministro e'
      
        'inner join anexo_suministro f on (e.sContrato = f.sContrato And ' +
        'e.iFolio = f.iFolio)'
      'inner join movimientosdealmacen m on (f.sIdTipo = m.sIdTipo)'
      'where e.sContrato = :contrato  and e.sWbs=:wbs'
      'And e.sNumeroActividad = :Actividad Order By dFechaAviso')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    Left = 338
    Top = 222
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object HistoricodFechaAviso: TDateField
      FieldName = 'dFechaAviso'
      Required = True
    end
    object HistoricoiFolio: TIntegerField
      FieldName = 'iFolio'
      Required = True
    end
    object HistoricosReferencia: TStringField
      FieldName = 'sReferencia'
      Required = True
      Size = 30
    end
    object HistoricosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object HistoricomComentarios: TMemoField
      FieldName = 'mComentarios'
      Required = True
      BlobType = ftMemo
    end
    object HistoricosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object HistoricodCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
  end
  object ds_Partidas: TDataSource
    AutoEdit = False
    DataSet = QryPartidas
    Left = 45
  end
  object QryPartidas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sNumeroActividad from actividadesxanexo Where sContrato =' +
        ' :Contrato And sIdConvenio = :Convenio and sTipoActividad = '#39'Act' +
        'ividad'#39' Order By iItemOrden')
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
    Left = 73
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
    Left = 448
    Top = 280
    object VerocultarHistorialdeSuministros1: TMenuItem
      Caption = 'Ver/ocultar Historial de Suministros'
      ImageIndex = 9
      ShortCut = 113
      OnClick = VerocultarHistorialdeSuministros1Click
    end
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
    Left = 481
    Top = 40
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
  object dsPartidasDelAnexo: TDataSource
    AutoEdit = False
    DataSet = qryPartidasDelAnexo
    Left = 453
    Top = 40
  end
end
