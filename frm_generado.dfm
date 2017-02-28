object frmGenerado: TfrmGenerado
  Left = 185
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Comparativo Cantidad a Instalar Vs Generadores Vs Reportes Diari' +
    'os'
  ClientHeight = 558
  ClientWidth = 915
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 624
    Top = 52
    Width = 85
    Height = 14
    Caption = 'Frente de Trabajo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object tNewGroupBox2: tNewGroupBox
    Left = 2
    Top = 0
    Width = 388
    Height = 90
    Caption = 'Parametros de Visualizaci'#243'n'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    HighLightColor = clBtnHighlight
    ShadowColor = clBlack
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 200
    Title.HighLightColor = 10928586
    Title.ShadowColor = clBlack
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 0
    Title.Bevel = bnNone
    Title.Border = True
    Title.TextAlign = ttLeft
    Title.Align = taTop
    Title.Height = 15
    Title.BkColor = 7847370
    TransparentMode = False
    Border = True
    Shape = tsRectRound
    object Label13: TLabel
      Left = 5
      Top = 50
      Width = 68
      Height = 14
      Caption = 'Fecha Calculo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 27
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
    object imgNotas: TImage
      Left = 168
      Top = 23
      Width = 18
      Height = 20
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
    object tdIdFecha: TDateTimePicker
      Left = 76
      Top = 44
      Width = 90
      Height = 22
      Hint = 'Seleccione la fecha de calculo.'
      Date = 38632.000000000000000000
      Time = 38632.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = tdIdFechaChange
      OnEnter = tdIdFechaEnter
      OnExit = tdIdFechaExit
      OnKeyPress = tdIdFechaKeyPress
    end
    object chkAnexo: TCheckBox
      Left = 4
      Top = 69
      Width = 137
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Consol. por Part. Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = tdIdFechaChange
    end
    object grAcumulados: TGroupBox
      Left = 200
      Top = 16
      Width = 184
      Height = 70
      Caption = 'Acumulados'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 5
        Top = 12
        Width = 57
        Height = 14
        Caption = 'Reportado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 5
        Top = 28
        Width = 54
        Height = 14
        Caption = 'Generado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelComparativo: TLabel
        Left = 10
        Top = 48
        Width = 6
        Height = 14
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdTotalBitacora: TCurrencyEdit
        Left = 94
        Top = 9
        Width = 86
        Height = 19
        Hint = 'Acumulado reportado.'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DecimalPlaces = 5
        DisplayFormat = '###,###,##0.0####'
        TabOrder = 0
        ZeroEmpty = False
        OnEnter = tdTotalBitacoraEnter
        OnExit = tdTotalBitacoraExit
        OnKeyPress = tdTotalBitacoraKeyPress
      end
      object tdTotalGenerado: TCurrencyEdit
        Left = 94
        Top = 27
        Width = 86
        Height = 19
        Hint = 'acumulado generado.'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DecimalPlaces = 5
        DisplayFormat = '###,###,##0.0####'
        TabOrder = 1
        ZeroEmpty = False
        OnEnter = tdTotalGeneradoEnter
        OnExit = tdTotalGeneradoExit
        OnKeyPress = tdTotalGeneradoKeyPress
      end
      object tdPendiente: TCurrencyEdit
        Left = 94
        Top = 46
        Width = 86
        Height = 19
        Hint = 'Total.'
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DecimalPlaces = 5
        DisplayFormat = '###,###,##0.0####'
        TabOrder = 2
        ZeroEmpty = False
        OnEnter = tdPendienteEnter
        OnExit = tdPendienteExit
        OnKeyPress = tdPendienteKeyPress
      end
    end
    object tsNumeroActividad: TRxDBLookupCombo
      Left = 76
      Top = 22
      Width = 90
      Height = 22
      Hint = 'Seleccione el n'#250'mero de concepto'
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
      TabOrder = 3
      OnChange = tsNumeroActividadChange
      OnEnter = tsNumeroActividadEnter
      OnExit = tsNumeroActividadExit
      OnKeyPress = tsNumeroActividadKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 89
    Width = 911
    Height = 95
    Caption = 'Actividad Anexo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 758
      Top = 13
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
    object Label8: TLabel
      Left = 758
      Top = 35
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
    object Label9: TLabel
      Left = 603
      Top = 14
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
    object Label10: TLabel
      Left = 758
      Top = 76
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
    object Label14: TLabel
      Left = 603
      Top = 34
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
    object Label19: TLabel
      Left = 603
      Top = 55
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
    object Label20: TLabel
      Left = 603
      Top = 76
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
    object Label21: TLabel
      Left = 758
      Top = 56
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
      Left = 665
      Top = 11
      Width = 80
      Height = 21
      Hint = 'Ponderado.'
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '##0.0### %'
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = tdPonderadoKeyPress
    end
    object tdVentaMN: TCurrencyEdit
      Left = 665
      Top = 53
      Width = 80
      Height = 21
      Hint = 'Precio en MN.'
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = tdVentaMNKeyPress
    end
    object tdCantidadAnexo: TCurrencyEdit
      Left = 823
      Top = 9
      Width = 80
      Height = 19
      Hint = 'Cantidad Anexo.'
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.0###'
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = tdCantidadAnexoKeyPress
    end
    object tdInstalado: TCurrencyEdit
      Left = 823
      Top = 30
      Width = 80
      Height = 19
      Hint = 'Instalado.'
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      ReadOnly = True
      TabOrder = 5
      OnKeyPress = tdInstaladoKeyPress
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 823
      Top = 51
      Width = 80
      Height = 19
      Hint = 'Pendiente.'
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      ReadOnly = True
      TabOrder = 6
      OnKeyPress = CurrencyEdit1KeyPress
    end
    object tdExcedente: TCurrencyEdit
      Left = 823
      Top = 72
      Width = 80
      Height = 19
      Hint = 'Excedente.'
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      ReadOnly = True
      TabOrder = 7
      OnKeyPress = tdExcedenteKeyPress
    end
    object tsWbs: TEdit
      Left = 665
      Top = 74
      Width = 80
      Height = 22
      Hint = 'WBS.'
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = tsWbsKeyPress
    end
    object tsMedida: TEdit
      Left = 665
      Top = 32
      Width = 80
      Height = 22
      Hint = 'Medida.'
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = tsMedidaKeyPress
    end
    object gridActividadesAnexo: TDBGrid
      Left = 4
      Top = 12
      Width = 582
      Height = 78
      Hint = 'Aqu'#237' se reflejan los resultados obtenidos de la consulta.'
      Color = 14342874
      Ctl3D = False
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
    Left = 2
    Top = 188
    Width = 912
    Height = 158
    Caption = 'Grafica Comparativa de Avances Programados/Fisico/Financiero'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
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
      Width = 905
      Height = 130
      Hint = 'Aqu'#237' se reflejan los resultados obtenidos de las consultas.'
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
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          Title.Caption = 'Frente de Trabajo'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sWbs'
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
  object PageHistorico: TPageControl
    Left = 0
    Top = 348
    Width = 913
    Height = 209
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = '&Reportes Diarios'
      DesignSize = (
        905
        180)
      object LabelBitacora: TLabel
        Left = 715
        Top = 162
        Width = 62
        Height = 14
        Alignment = taRightJustify
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Acumulado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 226
      end
      object Grid_Bitacora: TRxDBGrid
        Left = 3
        Top = 3
        Width = 905
        Height = 149
        Cursor = crHelp
        Hint = 'Aqu'#237' se reflejan los resultados obtenidos de las consultas.'
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 15138559
        Ctl3D = False
        DataSource = ds_bitacora
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDblClick = Grid_BitacoraDblClick
        OnKeyPress = Grid_BitacoraKeyPress
        OnMouseMove = Grid_BitacoraMouseMove
        OnMouseUp = Grid_BitacoraMouseUp
        OnTitleClick = Grid_BitacoraTitleClick
        TitleButtons = True
        OnTitleBtnClick = Grid_BitacoraTitleBtnClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dIdFecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sNumeroOrden'
            Title.Alignment = taCenter
            Title.Caption = 'Frente de Trabajo'
            Width = 185
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 11795455
            Expanded = False
            FieldName = 'sNumeroReporte'
            Title.Alignment = taCenter
            Title.Caption = 'No. de Reporte'
            Width = 173
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sDescripcionTurno'
            Title.Alignment = taCenter
            Title.Caption = 'Turno'
            Width = 142
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 11795455
            Expanded = False
            FieldName = 'sWbs'
            Title.Alignment = taCenter
            Title.Caption = 'WBS'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dCantidad'
            Title.Alignment = taRightJustify
            Title.Caption = 'Cantidad'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dAvance'
            Title.Alignment = taRightJustify
            Title.Caption = 'Avance'
            Width = 81
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sIsometrico'
            Title.Alignment = taCenter
            Title.Caption = 'Isometrico'
            Width = 116
            Visible = True
          end>
      end
      object tdAcumulado: TCurrencyEdit
        Left = 784
        Top = 156
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        Color = 7847370
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Generadores de Obra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        905
        180)
      object LabelGenerador: TLabel
        Left = 381
        Top = 164
        Width = 62
        Height = 14
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        Caption = 'Acumulado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 228
      end
      object grid_Generado: TRxDBGrid
        Left = 0
        Top = 1
        Width = 571
        Height = 154
        Cursor = crHelp
        Hint = 'Aqu'#237' se reflejan los resultados obtenidos de las consultas.'
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 15138559
        Ctl3D = False
        DataSource = ds_generado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = grid_GeneradoMouseMove
        OnMouseUp = grid_GeneradoMouseUp
        OnTitleClick = grid_GeneradoTitleClick
        TitleButtons = True
        OnGetCellParams = grid_GeneradoGetCellParams
        OnTitleBtnClick = grid_GeneradoTitleBtnClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iConsecutivo'
            Title.Alignment = taCenter
            Title.Caption = '#'
            Width = 27
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iNumeroEstimacion'
            Title.Alignment = taCenter
            Title.Caption = 'Est.'
            Width = 33
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sNumeroOrden'
            Title.Alignment = taCenter
            Title.Caption = 'Frente de T.'
            Width = 113
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 11795455
            Expanded = False
            FieldName = 'sNumeroGenerador'
            Title.Alignment = taCenter
            Title.Caption = 'Gen.'
            Width = 35
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lStatus'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 61
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Alignment = taCenter
            Title.Caption = 'F. Inicio'
            Width = 55
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Alignment = taCenter
            Title.Caption = 'F. Final'
            Width = 59
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'sIsometrico'
            Title.Alignment = taCenter
            Title.Caption = 'Isometrico'
            Width = 113
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sPrefijo'
            Title.Alignment = taCenter
            Title.Caption = 'Pref.'
            Width = 35
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sIsometricoReferencia'
            Title.Alignment = taCenter
            Title.Caption = 'Isom. Referencia'
            Width = 104
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iOrdenCambio'
            Title.Alignment = taCenter
            Title.Caption = 'O.C.'
            Width = 45
            Visible = True
          end>
      end
      object gIsometrico: tNewGroupBox
        Left = 573
        Top = -64
        Width = 334
        Height = 242
        Anchors = [akRight, akBottom]
        Color = clBtnFace
        DragKind = dkDock
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        HighLightColor = clBtnHighlight
        ShadowColor = 10928586
        Arc = 15
        Bevel = bnRaisedLine
        Title.Offset = 0
        Title.Width = 334
        Title.HighLightColor = 10928586
        Title.ShadowColor = clWhite
        Title.Arc = 15
        Title.Shape = tsRect
        Title.Separation = 0
        Title.Bevel = bnRaisedLine
        Title.Border = True
        Title.TextAlign = ttCenter
        Title.Align = taTop
        Title.Height = 20
        Title.BkColor = 4079166
        TransparentMode = False
        Border = True
        Shape = tsRectRound
        DesignSize = (
          334
          242)
        object bImagen: TImage
          Left = 60
          Top = 20
          Width = 231
          Height = 187
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          PopupMenu = popImage
          Stretch = True
        end
        object Label11: TLabel
          Left = 176
          Top = 223
          Width = 46
          Height = 15
          Anchors = [akRight, akBottom]
          Caption = 'Reg. No.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnNext: TBitBtn
          Left = 136
          Top = 210
          Width = 33
          Height = 25
          Anchors = [akRight, akBottom]
          TabOrder = 0
          OnClick = btnNextClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777777777777777777777777707777777777777770077777
            7777777770007777777777777000077777777777700000777777777770000007
            7777777770000077777777777000077777777777700077777777777770077777
            7777777770777777777777777777777777777777777777777777}
        end
        object btnPrevious: TBitBtn
          Left = 101
          Top = 210
          Width = 36
          Height = 25
          Anchors = [akRight, akBottom]
          TabOrder = 1
          OnClick = btnPreviousClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777777777777777777777777777777077777777777777007
            7777777777770007777777777770000777777777770000077777777770000007
            7777777777000007777777777770000777777777777700077777777777777007
            7777777777777707777777777777777777777777777777777777}
        end
        object tiRegistro: TCurrencyEdit
          Left = 226
          Top = 217
          Width = 56
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          Color = 16697018
          DecimalPlaces = 0
          DisplayFormat = '##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Anchors = [akRight, akBottom]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object tdAcumuladoGenerado: TCurrencyEdit
        Left = 450
        Top = 159
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        Color = 16697018
        DecimalPlaces = 4
        DisplayFormat = '###,###,##0.0###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Estimaciones Autorizadas'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Grid_Estimaciones: TRxDBGrid
        Left = 0
        Top = 0
        Width = 905
        Height = 180
        Hint = 'Aqu'#237' se reflejan los resultados obtenidos de las consultas.'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = ds_Estimaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = Grid_EstimacionesMouseMove
        OnMouseUp = Grid_EstimacionesMouseUp
        OnTitleClick = Grid_EstimacionesTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iNumeroEstimacion'
            Title.Caption = 'Estimaci'#243'n'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Tipo'
            Width = 158
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Caption = 'F. Inicio'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Caption = 'F. Final'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dCantidad'
            Title.Alignment = taRightJustify
            Title.Caption = 'Cantidad'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dAcumuladoActual'
            Title.Alignment = taRightJustify
            Title.Caption = 'Acumulado'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dMontoMN'
            Title.Alignment = taRightJustify
            Title.Caption = 'Importe'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dMontoAcumuladoMN'
            Title.Alignment = taRightJustify
            Title.Caption = 'Importe Act.'
            Width = 112
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Estimaciones SubContratos'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GridSubContratos: TRxDBGrid
        Left = 0
        Top = 0
        Width = 905
        Height = 180
        Hint = 'Aqu'#237' se reflejan los resultados obtenidos de las consultas.'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = ds_SubContratos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = GridSubContratosMouseMove
        OnMouseUp = GridSubContratosMouseUp
        OnTitleClick = GridSubContratosTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sSubContrato'
            Title.Caption = 'SubContrato'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iNumeroEstimacion'
            Title.Caption = 'Estimacion'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Alignment = taRightJustify
            Title.Caption = 'F. Inicio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Alignment = taRightJustify
            Title.Caption = 'F. Final'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sNumeroOrden'
            Title.Caption = 'Frente de Trabajo'
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sNumeroGenerador'
            Title.Caption = 'Generador'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIsometrico'
            Title.Caption = 'Isometrico'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sPrefijo'
            Title.Caption = 'Prefijo'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dCantidad'
            Title.Alignment = taRightJustify
            Title.Caption = 'Cantidad'
            Width = 76
            Visible = True
          end>
      end
    end
  end
  object Panel: tNewGroupBox
    Left = 77
    Top = 189
    Width = 698
    Height = 152
    Caption = 'Historial de la Partida en los Distintos Convenios'
    Color = 4079166
    DragKind = dkDock
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    HighLightColor = clBtnHighlight
    ShadowColor = 10928586
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 2
    Title.Width = 698
    Title.HighLightColor = 10928586
    Title.ShadowColor = clWhite
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 2
    Title.Bevel = bnRaisedLine
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 20
    Title.BkColor = 4079166
    TransparentMode = False
    Border = True
    Shape = tsRectRound
    DesignSize = (
      698
      152)
    object Grid_PartidasConvenios: TRxDBGrid
      Left = 3
      Top = 25
      Width = 692
      Height = 123
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 15138559
      Ctl3D = False
      DataSource = ds_AnexoConvenio
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'sIdConvenio'
          Title.Caption = 'Convenio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sDescripcion'
          Title.Caption = 'Descripcion'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dFechaInicio'
          Title.Alignment = taCenter
          Title.Caption = 'Inicio'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dFechaFinal'
          Title.Alignment = taCenter
          Title.Caption = 'Termino'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidadAnexo'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dVentaMN'
          Title.Alignment = taRightJustify
          Title.Caption = 'Venta MN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dVentaDLL'
          Title.Alignment = taRightJustify
          Title.Caption = 'Venta DLL'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dPonderado'
          Title.Alignment = taRightJustify
          Title.Caption = '%'
          Visible = True
        end>
    end
  end
  object btnExit: TBitBtn
    Left = 713
    Top = 22
    Width = 85
    Height = 22
    Hint = 'Salir'
    Caption = '&Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnExitClick
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
  object btnPrinter: TBitBtn
    Left = 713
    Top = 0
    Width = 85
    Height = 22
    Hint = 'Imprimir'
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnPrinterClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF0000000000FF00FF0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FF
      FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084848400848484008484
      8400FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0000000000FF00FF000000000000000000FF00FF00FF00
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FF00FF0000000000FF00FF0000000000FF00FF00FF00
      FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object tsNumeroOrden: TDBLookupComboBox
    Left = 715
    Top = 49
    Width = 199
    Height = 22
    Hint = 'Seleccione un programa.'
    Color = 15138559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sNumeroOrden'
    ListField = 'sNumeroOrden'
    ListSource = ds_ordenesdetrabajo
    ParentFont = False
    TabOrder = 7
  end
  object GroupBox2: TGroupBox
    Left = 804
    Top = 0
    Width = 107
    Height = 37
    Caption = 'Excel'
    TabOrder = 8
    object chkAprecia: TCheckBox
      Left = 8
      Top = 13
      Width = 89
      Height = 21
      Caption = 'Ver Impresion'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
  end
  object PanelProgress: TPanel
    Left = 285
    Top = 185
    Width = 380
    Height = 41
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 9
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
    object Label17: TLabel
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
    object Label18: TLabel
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
  object ds_bitacora: TDataSource
    AutoEdit = False
    DataSet = Bitacora
    Left = 704
    Top = 192
  end
  object ds_generado: TDataSource
    AutoEdit = False
    DataSet = Generado
    Left = 56
    Top = 432
  end
  object dsBitacora: TfrxDBDataset
    UserName = 'dsBitacora'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'dIdFecha=dIdFecha'
      'iIdDiario=iIdDiario'
      'sNumeroOrden=sNumeroOrden'
      'sIdTurno=sIdTurno'
      'dCantidad=dCantidad'
      'dAvance=dAvance'
      'sIsometrico=sIsometrico'
      'sDescripcion=sDescripcion'
      'sNumeroReporte=sNumeroReporte'
      'sOrigenTierra=sOrigenTierra'
      'sDescripcionTurno=sDescripcionTurno'
      'sWbs=sWbs')
    DataSet = Bitacora
    BCDToCurrency = False
    Left = 672
    Top = 184
  end
  object dsGenerado: TfrxDBDataset
    UserName = 'dsGenerado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iConsecutivo=iConsecutivo'
      'iNumeroEstimacion=iNumeroEstimacion'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'lStatus=lStatus'
      'sContrato=sContrato'
      'sNumeroOrden=sNumeroOrden'
      'sNumeroGenerador=sNumeroGenerador'
      'sWbs=sWbs'
      'sNumeroActividad=sNumeroActividad'
      'sIsometrico=sIsometrico'
      'sPrefijo=sPrefijo'
      'dCantidad=dCantidad'
      'dAcumulado=dAcumulado'
      'iOrdenCambio=iOrdenCambio'
      'sIsometricoReferencia=sIsometricoReferencia'
      'sInstalacion=sInstalacion'
      'mComentarios=mComentarios'
      'lEstima=lEstima')
    DataSet = Generado
    BCDToCurrency = False
    Left = 208
    Top = 464
  end
  object rInforme: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38377.989148298600000000
    ReportOptions.LastChange = 42043.876287060190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    lblValida.Visible := NOT <dsGenerador."lValida"> ;'
      '    lblAutoriza.Visible := NOT <dsGenerador."lAutoriza">'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rInformeGetValue
    Left = 416
    Top = 424
    Datasets = <
      item
        DataSet = frmDiarioTurno2.dsConfiguracion
        DataSetName = 'dsConfiguracion'
      end
      item
        DataSet = frmDiarioTurno2.dsGenerador
        DataSetName = 'dsGenerador'
      end>
    Variables = <>
    Style = <>
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        Height = 17.007876460000000000
        Top = 328.819110000000000000
        Width = 980.410082000000000000
        Condition = 'dsGenerador."sNumeroActividad"'
        KeepTogether = True
        Stretched = True
        object Memo41: TfrxMemoView
          Left = 1.889763780000000000
          Width = 976.629921260000000000
          Height = 17.007876460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.559059999999988000
          Width = 45.354360000000000000
          Height = 13.228346456692900000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerador."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 52.913420000000000000
          Top = 1.559059999999988000
          Width = 491.338900000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsGenerador."mDescripcion"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 910.866730000000000000
          Top = 1.559059999999988000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidadAnexo'
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsGenerador."dCantidadAnexo"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 548.031850000000000000
          Top = 1.559059999999988000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sMedida'
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerador."sMedida"]')
          ParentFont = False
        end
        object Acumulado: TfrxMemoView
          Left = 839.055660000000000000
          Top = 1.559059999999988000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dsGenerador."dAcumuladoAnexo"> > <dsGenerador."dCantidadAnexo">'
          Memo.UTF8 = (
            '[dsGenerador."dAcumuladoAnexo"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 13.228346460000000000
        Top = 370.393940000000000000
        Width = 980.410082000000000000
        DataSet = frmDiarioTurno2.dsGenerador
        DataSetName = 'dsGenerador'
        OutlineText = '<dsGenerador."sIsometrico">'
        RowCount = 0
        Stretched = True
        object Memo40: TfrxMemoView
          Left = 1.889763780000000000
          Width = 976.629921260000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight]
          ParentFont = False
        end
        object sIsometrico: TfrxMemoView
          Left = 612.283860000000000000
          Width = 147.401670000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smActualHeight
          Cursor = crHandPoint
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            '[dsGenerador."sIsometrico"]  [dsGenerador."sPrefijo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 763.465060000000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dCantidad'
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[dsGenerador."dCantidad"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 604.724800000000000000
          Height = 5.291333700000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dsGenerador."mProblematica"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 13.228346460000000000
        Top = 408.189240000000000000
        Width = 980.410082000000000000
        KeepChild = True
        PrintChildIfInvisible = True
        object Memo39: TfrxMemoView
          Left = 1.889763780000000000
          Width = 976.629921260000000000
          Height = 13.228346456692900000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 762.330708660000000000
          Width = 72.188976380000000000
          Height = 13.228346456692900000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
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
            '[SUM(<dsGenerador."dCantidad">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 611.149606300000000000
          Width = 151.181102360000000000
          Height = 13.228346456692900000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL A GENERAR')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 29.858267710000000000
        Top = 253.228510000000000000
        Width = 980.410082000000000000
        ReprintOnNewPage = True
        object Memo8: TfrxMemoView
          Left = 1.889763780000000000
          Top = 3.401574800000020000
          Width = 51.023617170000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PARTIDA ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 52.913420000000000000
          Top = 3.401574800000020000
          Width = 493.606304090000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONCEPTO/DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 546.519685040000000000
          Top = 3.401574799999964000
          Width = 64.629921260000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 611.149606300000000000
          Top = 3.401574800000020000
          Width = 151.181200000000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ISOMETRICO DE REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 762.330708660000000000
          Top = 3.401574799999964000
          Width = 72.188976380000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 834.519685040000000000
          Top = 3.401574799999964000
          Width = 72.188976380000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD ACUMULADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 906.708661420000000000
          Top = 3.401574799999964000
          Width = 71.811070000000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 173.858262830000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo24: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 714.331170000000000000
          Top = 136.062992125984000000
          Width = 94.488188980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'GENERADOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 808.818858580000000000
          Top = 136.062992125984000000
          Width = 169.700787400000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'sNumeroGenerador'
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerador."sNumeroGenerador"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 1.889763780000000000
          Top = 90.708661420000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'CONTRATO')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 1.889763780000000000
          Top = 105.826771653543000000
          Width = 75.590551180000000000
          Height = 68.031488740000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            'OBRA')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 77.480314960000000000
          Top = 90.708661420000000000
          Width = 636.850393700000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            '[dsConfiguracion."sContrato"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 77.480314960000000000
          Top = 105.826771650000000000
          Width = 636.850393700000000000
          Height = 68.031488740000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            '[dsConfiguracion."mDescripcion"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 714.331170000000000000
          Top = 90.708720000000000000
          Width = 94.488188980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'No. ESTIMACI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 714.331170000000000000
          Top = 120.944879450000000000
          Width = 94.488188980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIPO DE MONEDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 808.819376360000000000
          Top = 105.826771650000000000
          Width = 169.700787400000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              'DEL [<dsGenerador."dFechaInicio">] AL [<dsGenerador."dFechaFinal' +
              '">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 808.819376360000000000
          Top = 90.708720000000000000
          Width = 169.700787400000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerador."iNumeroEstimacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 808.819376360000000000
          Top = 120.944879450000000000
          Width = 169.700787400000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerador."sMoneda"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 714.331170000000000000
          Top = 105.826771653543000000
          Width = 94.488188980000000000
          Height = 15.118110236220500000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'PERIODO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 714.331170000000000000
          Top = 151.181097480000000000
          Width = 94.488188980000000000
          Height = 22.677165354330700000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'PERIODO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 808.819346770000000000
          Top = 151.181097480000000000
          Width = 169.700787400000000000
          Height = 22.677165350000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SEMANA #[dsGenerador."iSemana"] '
            
              'DEL [dsGenerador."dFechaIniciog"] AL [dsGenerador."dFechaFinalg"' +
              ']')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 1.889763780000000000
          Width = 977.007874020000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          Left = 174.196970000000000000
          Top = 3.000000000000000000
          Width = 609.283860000000000000
          Height = 48.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 5.779530000000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 46.913420000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          DataSet = frmDiarioTurno2.dsConfiguracion
          DataSetName = 'dsConfiguracion'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 806.158010000000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = frmDiarioTurno2.dsConfiguracion
          DataSetName = 'dsConfiguracion'
          HightQuality = False
        end
        object Memo22: TfrxMemoView
          Left = 803.158010000000000000
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
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 109.606370000000000000
        Top = 510.236550000000000000
        Width = 980.410082000000000000
        object lblValida: TfrxMemoView
          Left = 41.574830000000000000
          Width = 211.653680000000000000
          Height = 109.606370000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VALIDACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object lblAutoriza: TfrxMemoView
          Left = 676.535870000000000000
          Width = 230.551330000000000000
          Height = 109.606370000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN '
            'AUTORIZARIZACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 3.000000000000000000
          Top = 85.338590000000010000
          Width = 275.905690000000000000
          Height = 22.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsConfiguracion."sWeb"]'
            '[dsConfiguracion."sEmail"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 292.023810000000000000
          Top = 85.338590000000010000
          Width = 687.874460000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 1.889763780000000000
          Width = 302.362204720000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<SUPERINTENDENTE> = '#39#39
          Memo.UTF8 = (
            'POR EL CONTRATISTA'
            'REALIZO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 1.889763780000000000
          Top = 41.574803150000040000
          Width = 302.362204720000000000
          Height = 26.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERINTENDENTE]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 1.889763780000000000
          Top = 26.456692909999960000
          Width = 302.362204720000000000
          Height = 13.984251970000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERINTENDENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 678.315400000000000000
          Top = 41.574803150000040000
          Width = 302.362204720000000000
          Height = 26.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 678.315400000000000000
          Top = 26.456692909999960000
          Width = 302.362204720000000000
          Height = 13.984251970000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 432.748300000000000000
          Top = 71.165119999999950000
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
        object Memo35: TfrxMemoView
          Left = 676.535870000000000000
          Width = 302.362204720000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<SUPERVISOR_TIERRA> = '#39#39' '
          Memo.UTF8 = (
            'POR PEMEX'
            'REVISO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 3.779530000000000000
        Top = 445.984540000000000000
        Width = 980.410082000000000000
        object Memo49: TfrxMemoView
          Left = 3.779530000000000000
          Width = 971.339210000000000000
          Height = 3.779530000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsGenerador
          DataSetName = 'dsGenerador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsGenerador."mComentarios"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 306.141930000000000000
        Width = 980.410082000000000000
        Condition = 'dsGenerador."sContrato"'
      end
    end
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.ImageList1
    Left = 225
    Top = 176
    object ComentariosAdicionales: TMenuItem
      Tag = 4
      Caption = 'Comentarios Adicionales a la Partida'
      ImageIndex = 11
      ShortCut = 115
      OnClick = ComentariosAdicionalesClick
    end
    object nmFichaTecnica: TMenuItem
      Tag = 4
      Caption = 'Ficha Tecnica'
      ImageIndex = 9
      ShortCut = 16454
      OnClick = nmFichaTecnicaClick
    end
    object Imprimir1: TMenuItem
      Tag = 4
      Caption = 'Imprimir'
      ImageIndex = 14
      ShortCut = 16464
      OnClick = Imprimir1Click
    end
    object ReportadovsGenerado: TMenuItem
      Caption = 'Imprimir Reportado vs Generado (Excel)'
      ImageIndex = 41
      OnClick = ReportadovsGeneradoClick
    end
    object ImprimirEstimaciones1: TMenuItem
      Caption = 'Imprimir Estimacion x Generador (Excel)'
      ImageIndex = 41
      OnClick = ImprimirEstimaciones1Click
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Copy1: TMenuItem
      Tag = 1
      Caption = 'Copiar'
      ImageIndex = 1
      ShortCut = 16451
      OnClick = Copy1Click
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
  object ds_AnexoConvenio: TDataSource
    AutoEdit = False
    DataSet = AnexoConvenio
    Left = 56
    Top = 400
  end
  object ds_Estimaciones: TDataSource
    AutoEdit = False
    DataSet = Estimaciones
    Left = 56
    Top = 336
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
    ReportOptions.LastChange = 42043.874263391200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    Left = 40
    Top = 88
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dsBitacora
        DataSetName = 'dsBitacora'
      end
      item
        DataSet = dsEstimaciones
        DataSetName = 'dsEstimaciones'
      end
      item
        DataSet = dsGenerado
        DataSetName = 'dsGenerado'
      end
      item
        DataSet = dsSubContratos
        DataSetName = 'dsSubContratos'
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
      PaperHeight = 379.400000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object MasterData3: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 13.228346460000000000
        ParentFont = False
        Top = 415.748300000000000000
        Width = 740.409927000000000000
        DataSet = dsBitacora
        DataSetName = 'dsBitacora'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo14: TfrxMemoView
          Left = 170.078850000000000000
          Width = 102.047310000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sDescripcionTurno'
          DataSet = dsBitacora
          DataSetName = 'dsBitacora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora."sDescripcionTurno"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 381.732412830000000000
          Width = 83.149589210000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sWbs'
          DataSet = dsBitacora
          DataSetName = 'dsBitacora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora."sWbs"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 464.881953230000000000
          Width = 213.543246060000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sDescripcion'
          DataSet = dsBitacora
          DataSetName = 'dsBitacora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora."sDescripcion"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Width = 58.582669840000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dIdFecha'
          DataSet = dsBitacora
          DataSetName = 'dsBitacora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora."dIdFecha"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 678.425199290000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DataSet = dsBitacora
          DataSetName = 'dsBitacora'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora."dCantidad"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 272.126160000000000000
          Width = 109.606299210000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroOrden'
          DataSet = dsBitacora
          DataSetName = 'dsBitacora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora."sNumeroOrden"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 60.472480000000000000
          Width = 109.606299212598000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroReporte'
          DataSet = dsBitacora
          DataSetName = 'dsBitacora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora."sNumeroReporte"]')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 13.228346460000000000
        ParentFont = False
        Top = 544.252320000000000000
        Width = 740.409927000000000000
        DataSet = dsGenerado
        DataSetName = 'dsGenerado'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 298.582723540000000000
          Width = 128.504020000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIsometrico'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerado."sIsometrico"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 35.905511810000000000
          Width = 35.905511811023600000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iNumeroEstimacion'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."iNumeroEstimacion"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 1.889763780000000000
          Width = 34.015748030000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iConsecutivo'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."iConsecutivo"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          Left = 188.976377950000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroGenerador'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."sNumeroGenerador"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          Left = 670.866141730000000000
          Width = 68.787401574803200000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dsGenerado."dCantidad"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          ShiftMode = smDontShift
          Left = 464.882190000000000000
          Width = 120.944960000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIsometricoReferencia'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."sIsometricoReferencia"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 71.811070000000000000
          Width = 117.165354330709000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."sNumeroOrden"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Left = 427.086890000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sPrefijo'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerado."sPrefijo"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 226.771800000000000000
          Width = 71.811045590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'lStatus'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."lStatus"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          ShiftMode = smDontShift
          Left = 585.827150000000000000
          Width = 85.039370078740200000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sInstalacion'
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerado."sInstalacion"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 166.299300480000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo47: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo48: TfrxMemoView
          Left = 159.118110240000000000
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
          Left = 3.779527559055120000
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
          Top = 45.133890000000000000
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
        object Memo15: TfrxMemoView
          Left = 96.377952760000000000
          Top = 136.063080000000000000
          Width = 476.220484650000000000
          Height = 30.236220470000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSetName = 'rptAnexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DESCRIPCION]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 1.889763780000000000
          Top = 136.063080000000000000
          Width = 94.488188980000000000
          Height = 30.236220470000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONCEPTO No.'
            '[PARTIDA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 576.377964960000000000
          Top = 151.181190240000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          AllowExpressions = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'PRECIO M.N.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 576.377964960000000000
          Top = 136.063080000000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 640.629935910000000000
          Top = 136.063080000000000000
          Width = 98.267711650000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'rptAnexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[CANTIDAD_ANEXO] [MEDIDA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape3: TfrxShapeView
          Left = 1.889763780000000000
          Top = 94.488250000000000000
          Width = 735.874015750000000000
          Height = 26.456710000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 86.929136300000000000
          Width = 165.567100000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clBlack
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'mm.dd.aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHAL LIMITE: [MI_FECHA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 1.889763780000000000
          Top = 105.826786300000000000
          Width = 735.874015750000000000
          Height = 25.700770310000000000
          ShowHint = False
          Color = clWhite
          DataField = 'mDescripcion'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 640.629933460000000000
          Top = 151.181200000000000000
          Width = 98.267711650000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'rptAnexo'
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
            '[PRECIO]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 43.338590000000000000
        Top = 1031.811690000000000000
        Width = 740.409927000000000000
        object Memo32: TfrxMemoView
          Left = 287.803340000000000000
          Top = 17.574830000000000000
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
          Top = 17.000000000000000000
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
          Left = 259.008040000000000000
          Top = 3.236239999999950000
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
      end
      object ReportSummary1: TfrxReportSummary
        Height = 85.708720000000000000
        Top = 922.205320000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo59: TfrxMemoView
          Left = 330.708529610000000000
          Top = 20.787401570000000000
          Width = 102.047244090000000000
          Height = 22.677165354330700000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 209.763647720000000000
          Top = 43.464566930000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CANTIDAD TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 330.708529610000000000
          Top = 5.669291338582640000
          Width = 408.189108190000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FLUJO DE EFECTIVO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 330.708529610000000000
          Top = 43.464566930000000000
          Width = 102.047244090000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsBitacora."dCantidad">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 432.755773700000000000
          Top = 20.787401570000000000
          Width = 102.047244090000000000
          Height = 22.677165354330700000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'GENERADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 432.755773700000000000
          Top = 43.464566930000000000
          Width = 102.047244090000000000
          Height = 15.118110240000000000
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
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 534.803174020000000000
          Top = 20.787401570000000000
          Width = 102.047244090000000000
          Height = 22.677165354330700000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTIMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 534.803174020000000000
          Top = 43.464566930000000000
          Width = 102.047244090000000000
          Height = 15.118110240000000000
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
            '[SUM(<dsEstimaciones."dCantidad">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 636.850418110000000000
          Top = 20.787401570000000000
          Width = 102.047244090000000000
          Height = 22.677165354330700000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTIMADO SUBCONTRATOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 636.850418110000000000
          Top = 43.464566930000000000
          Width = 102.047244090000000000
          Height = 15.118110240000000000
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
            '[SUM(<dsSubContratos."dCantidad">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 42.708673620000000000
        Top = 351.496290000000000000
        Width = 740.409927000000000000
        Condition = 'dsBitacora."sContrato"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.338590000000000000
          Width = 735.874015750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo9: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 1.889763780000000000
          Top = 23.811018740000000000
          Width = 58.582657640000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
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
          Left = 381.732530000000000000
          Top = 23.811018740000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'WBS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 464.882190000000000000
          Top = 23.811018740000000000
          Width = 213.543246060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 170.078850000000000000
          Top = 23.811018740000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
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
        object Memo51: TfrxMemoView
          Left = 9.338590000000000000
          Top = 3.000000000000000000
          Width = 102.488250000000000000
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
            'REPORTES DIARIOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 678.425199290000000000
          Top = 23.811018740000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 272.126160000000000000
          Top = 23.811018740000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. DE ORDEN')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 60.472480000000000000
          Top = 23.811023620000000000
          Width = 109.606299212598000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTE DIARIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 453.543600000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 43.464566930000000000
        Top = 476.220780000000000000
        Width = 740.409927000000000000
        Condition = 'dsGenerado."sContrato"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 13.228339130000100000
          Width = 737.385826771654000000
          Height = 26.456710000000000000
          ShowHint = False
          Curve = 3
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Shape = skRoundRectangle
        end
        object Memo12: TfrxMemoView
          Left = 35.905533780000000000
          Top = 24.566929133858300000
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
          Left = 1.889763780000000000
          Top = 24.566929130000000000
          Width = 34.015748030000000000
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
            '#')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 188.976500000000000000
          Top = 24.566929130000000000
          Width = 37.795300000000000000
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
        object Memo40: TfrxMemoView
          Left = 298.582870000000000000
          Top = 24.566929130000000000
          Width = 128.504020000000000000
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
          Left = 670.866141730000000000
          Top = 24.566929130000000000
          Width = 68.787401570000000000
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
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 464.882190000000000000
          Top = 24.566929130000000000
          Width = 120.944857480000000000
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
          Left = 9.338590000000000000
          Top = 3.779530000000020000
          Width = 128.944960000000000000
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
            'GENERADORES DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 71.810994330000000000
          Top = 24.566929133858300000
          Width = 117.165368980000000000
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
        object Memo30: TfrxMemoView
          Left = 427.086890000000000000
          Top = 24.566929130000000000
          Width = 37.795300000000000000
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
            'PREF.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 226.771800000000000000
          Top = 24.566929130000000000
          Width = 71.811070000000000000
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
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 585.827150000000000000
          Top = 24.566929133858300000
          Width = 85.039370078740200000
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
            'INSTALACION')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 3.779530000000000000
        Top = 582.047620000000000000
        Width = 740.409927000000000000
      end
      object Header1: TfrxHeader
        Height = 83.149660000000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 1.889763780000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 159.078850000000000000
          Top = 3.000000000000030000
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
          Left = 3.779527559055120000
          Top = 3.000000000000030000
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
          Top = 3.000000000000030000
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
          Top = 45.133890000000100000
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
      object GroupHeader3: TfrxGroupHeader
        Height = 60.472455590000000000
        Top = 608.504330000000000000
        Width = 740.409927000000000000
        Condition = 'dsEstimaciones."sContrato"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape4: TfrxShapeView
          Left = 1.889763780000000000
          Top = 20.787399130000000000
          Width = 735.118110240000000000
          Height = 26.456710000000000000
          ShowHint = False
          Curve = 3
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Shape = skRoundRectangle
        end
        object Memo54: TfrxMemoView
          Left = 1.889763780000000000
          Top = 34.015748031496100000
          Width = 28.346427400000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'EST.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 9.338590000000000000
          Top = 15.118120000000000000
          Width = 83.590600000000000000
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
            'ESTIMACIONES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 30.236164330000000000
          Top = 34.015748029999900000
          Width = 109.606308980000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLASIFICACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 264.567100000000000000
          Top = 47.244109130000000000
          Width = 75.590548740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 139.842610000000000000
          Top = 34.015748029999900000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PERIODO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 340.157700000000000000
          Top = 47.244094490000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 264.567100000000000000
          Top = 34.015770000000000000
          Width = 154.960730000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'ACUMULADO ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 419.527830000000000000
          Top = 47.244109130000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 498.897960000000000000
          Top = 47.244094490000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 419.527830000000000000
          Top = 34.015770000000000000
          Width = 158.740260000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'ESTA ESTIMACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 578.268090000000000000
          Top = 47.244109130000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 657.638220000000000000
          Top = 47.244094490000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 578.268090000000000000
          Top = 34.015770000000000000
          Width = 158.740260000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'ACUMULADOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 13.228346460000000000
        ParentFont = False
        Top = 691.653990000000000000
        Width = 740.409927000000000000
        DataSet = dsEstimaciones
        DataSetName = 'dsEstimaciones'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo72: TfrxMemoView
          Left = 1.889741810000000000
          Width = 28.346451810000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iNumeroEstimacion'
          DataSet = dsEstimaciones
          DataSetName = 'dsEstimaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEstimaciones."iNumeroEstimacion"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo77: TfrxMemoView
          Left = 30.236240000000000000
          Width = 109.606294330000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sDescripcion'
          DataSet = dsEstimaciones
          DataSetName = 'dsEstimaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEstimaciones."sDescripcion"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo78: TfrxMemoView
          ShiftMode = smDontShift
          Left = 264.567100000000000000
          Width = 75.590575590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dAcumuladoAnterior'
          DataSet = dsEstimaciones
          DataSetName = 'dsEstimaciones'
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
            '[dsEstimaciones."dAcumuladoAnterior"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 139.842610000000000000
          Width = 124.724465590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              'DEL [<dsEstimaciones."dFechaInicio">] AL [<dsEstimaciones."dFech' +
              'aFinal">]')
          ParentFont = False
          WordWrap = False
        end
        object Memo74: TfrxMemoView
          ShiftMode = smDontShift
          Left = 340.157700000000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dMontoAcumuladoAnteriorMN'
          DataSet = dsEstimaciones
          DataSetName = 'dsEstimaciones'
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
            '[dsEstimaciones."dMontoAcumuladoAnteriorMN"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          ShiftMode = smDontShift
          Left = 419.527830000000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DataSet = dsEstimaciones
          DataSetName = 'dsEstimaciones'
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
            '[dsEstimaciones."dCantidad"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          ShiftMode = smDontShift
          Left = 498.897960000000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dMontoMN'
          DataSet = dsEstimaciones
          DataSetName = 'dsEstimaciones'
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
            '[dsEstimaciones."dMontoMN"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          ShiftMode = smDontShift
          Left = 578.268090000000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dAcumuladoActual'
          DataSet = dsEstimaciones
          DataSetName = 'dsEstimaciones'
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
            '[dsEstimaciones."dAcumuladoActual"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          ShiftMode = smDontShift
          Left = 657.638220000000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dMontoAcumuladoMN'
          DataSet = dsEstimaciones
          DataSetName = 'dsEstimaciones'
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
            '[dsEstimaciones."dMontoAcumuladoMN"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 3.779530000000000000
        Top = 729.449290000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader4: TfrxGroupHeader
        Height = 39.685049130000000000
        Top = 755.906000000000000000
        Width = 740.409927000000000000
        Condition = 'dsSubContratos."sContrato"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape5: TfrxShapeView
          Left = 1.889763780000000000
          Top = 17.007869130000000000
          Width = 735.118110240000000000
          Height = 22.677180000000000000
          ShowHint = False
          Curve = 3
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Shape = skRoundRectangle
        end
        object Memo82: TfrxMemoView
          Left = 1.889763780000000000
          Top = 26.456680710000000000
          Width = 28.346427400000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'EST.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 9.338590000000000000
          Top = 7.559060000000040000
          Width = 178.078850000000000000
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
            'ESTIMADO POR SUBCONTRATISTAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 30.236164330000000000
          Top = 26.456680710000000000
          Width = 94.488188980000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SUBCONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 268.346630000000000000
          Top = 26.456680710000000000
          Width = 136.063028740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'No. DE ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 124.724490000000000000
          Top = 26.456680710000000000
          Width = 143.622140000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PERIODO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 404.409710000000000000
          Top = 26.456680710000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'GENERADOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 483.779840000000000000
          Top = 26.456680710000000000
          Width = 120.944908740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'ISOMETRICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 604.724800000000000000
          Top = 26.456680710000000000
          Width = 52.913368740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'PREF.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 657.638220000000000000
          Top = 26.456680710000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12052165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 13.228346460000000000
        ParentFont = False
        Top = 820.158010000000000000
        Width = 740.409927000000000000
        DataSet = dsSubContratos
        DataSetName = 'dsSubContratos'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo95: TfrxMemoView
          Left = 1.889741810000000000
          Width = 28.346451810000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iNumeroEstimacion'
          DataSet = dsSubContratos
          DataSetName = 'dsSubContratos'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsSubContratos."iNumeroEstimacion"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo96: TfrxMemoView
          Left = 30.236240000000000000
          Width = 94.488174330000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sSubContrato'
          DataSet = dsSubContratos
          DataSetName = 'dsSubContratos'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsSubContratos."sSubContrato"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo97: TfrxMemoView
          ShiftMode = smDontShift
          Left = 268.346630000000000000
          Width = 136.063055590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroOrden'
          DataSet = dsSubContratos
          DataSetName = 'dsSubContratos'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dsSubContratos."sNumeroOrden"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 124.724490000000000000
          Width = 143.622115590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dsGenerado
          DataSetName = 'dsGenerado'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              'DEL [dsSubContratos."dFechaInicio"] AL [dsSubContratos."dFechaFi' +
              'nal"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo99: TfrxMemoView
          ShiftMode = smDontShift
          Left = 404.409710000000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroGenerador'
          DataSet = dsSubContratos
          DataSetName = 'dsSubContratos'
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
            '[dsSubContratos."sNumeroGenerador"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          ShiftMode = smDontShift
          Left = 483.779840000000000000
          Width = 120.944935590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIsometrico'
          DataSet = dsSubContratos
          DataSetName = 'dsSubContratos'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dsSubContratos."sIsometrico"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          ShiftMode = smDontShift
          Left = 604.724800000000000000
          Width = 52.913395590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sPrefijo'
          DataSet = dsSubContratos
          DataSetName = 'dsSubContratos'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dsSubContratos."sPrefijo"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          ShiftMode = smDontShift
          Left = 657.638220000000000000
          Width = 79.370105590000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DataSet = dsSubContratos
          DataSetName = 'dsSubContratos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dsSubContratos."dCantidad"]')
          ParentFont = False
        end
      end
      object GroupFooter4: TfrxGroupFooter
        Height = 3.779530000000000000
        Top = 857.953310000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object SaveImage: TSaveDialog
    DefaultExt = 'jpg'
    FileName = 'Inteligent'
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 552
    Top = 192
  end
  object popImage: TPopupMenu
    Images = connection.ImageList1
    Left = 760
    Top = 399
    object Grabar1: TMenuItem
      Tag = 1
      Caption = 'Grabar'
      ImageIndex = 8
      OnClick = Grabar1Click
    end
  end
  object ds_actividadesxorden: TDataSource
    AutoEdit = False
    DataSet = ActividadesxOrden
    Left = 56
    Top = 368
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
        'o=:wbsContrato  and sTipoActividad = '#39'Actividad'#39' order by sNumer' +
        'oOrden, iItemOrden')
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
    Left = 18
    Top = 363
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
  object AnexoConvenio: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select a.sWbs, a.sNumeroActividad, a.dCantidadAnexo, a.sMedida, ' +
        'a.dVentaMN, a.dVentaDLL, a.dFechaInicio, a.dFechaFinal, a.dPonde' +
        'rado,'
      
        'c.sDescripcion From actividadesxanexo a INNER JOIN convenios c O' +
        'N'
      '(a.sContrato = c.sContrato And a.sIdConvenio = c.sIdConvenio)'
      
        'Where a.sContrato = :Contrato And a.sNumeroActividad = :Activida' +
        'd and a.sWbs=:wbs And a.sTipoActividad = "Actividad" Order By c.' +
        'dFecha')
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
    Left = 20
    Top = 401
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
    object AnexoConveniosWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object AnexoConveniosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object AnexoConveniodCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object AnexoConveniosMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object AnexoConveniodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object AnexoConveniodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      currency = True
    end
    object AnexoConveniodFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object AnexoConveniodFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object AnexoConveniodPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
      DisplayFormat = '##0.0### %'
    end
    object AnexoConveniosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 30
    end
  end
  object Estimaciones: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select e.sContrato, e.iNumeroEstimacion, t.sDescripcion, e.dFech' +
        'aInicio, e.dFechaFinal,'
      'a.dAcumuladoAnterior, a.dCantidad, a.dAcumuladoActual,'
      
        'a.dMontoAcumuladoAnteriorMN, a.dMontoMN, a.dMontoAcumuladoMN Fro' +
        'm actividadesxestimacion a'
      
        'inner join estimacionperiodo e on (e.sContrato = a.sContrato and' +
        ' e.iNumeroEstimacion = a.iNumeroEstimacion)'
      
        'inner join tiposdeestimacion t on (t.sIdTipoEstimacion = e.sIdTi' +
        'poEstimacion)'
      
        'where a.sContrato = :Contrato And a.sNumeroActividad = :Activida' +
        'd Order By e.iNumeroEstimacion')
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
    Left = 20
    Top = 329
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
    object EstimacionessContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object EstimacionesiNumeroEstimacion: TStringField
      FieldName = 'iNumeroEstimacion'
      Required = True
      Size = 10
    end
    object EstimacionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 30
    end
    object EstimacionesdFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object EstimacionesdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object EstimacionesdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '###,###,##0.0####'
    end
    object EstimacionesdMontoMN: TFloatField
      FieldName = 'dMontoMN'
      Required = True
      currency = True
    end
    object EstimacionesdAcumuladoAnterior: TFloatField
      FieldName = 'dAcumuladoAnterior'
      Required = True
      DisplayFormat = '###,###,##0.0####'
    end
    object EstimacionesdAcumuladoActual: TFloatField
      FieldName = 'dAcumuladoActual'
      Required = True
      DisplayFormat = '###,###,##0.0####'
    end
    object EstimacionesdMontoAcumuladoAnteriorMN: TFloatField
      FieldName = 'dMontoAcumuladoAnteriorMN'
      Required = True
      currency = True
    end
    object EstimacionesdMontoAcumuladoMN: TFloatField
      FieldName = 'dMontoAcumuladoMN'
      Required = True
      currency = True
    end
  end
  object Bitacora: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = BitacoraAfterScroll
    SQL.Strings = (
      
        'Select b.sContrato, b.dIdFecha, b.iIdDiario, b.sNumeroOrden, b.s' +
        'IdTurno, b.sWbs, b.dCantidad, b.dAvance, b.sIsometrico,'
      
        't.sDescripcion, r.sNumeroReporte, tu.sOrigenTierra, tu.sDescripc' +
        'ion as sDescripcionTurno From bitacoradeactividades b INNER JOIN' +
        ' tiposdemovimiento t ON'
      
        '(b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMo' +
        'vimiento And t.sClasificacion <> "Notas" And t.sClasificacion <>' +
        ' "Tiempo Muerto")'
      
        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.s' +
        'NumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.s' +
        'IdTurno = b.sIdTurno)'
      
        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTur' +
        'no = tu.sIdTurno)'
      
        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.' +
        'sNumeroActividad = :Actividad'
      'And b.dIdFecha <= :Fecha And b.dCantidad > 0 Order By :Ordenado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ordenado'
        ParamType = ptUnknown
      end>
    Left = 738
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ordenado'
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
    object BitacorasNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object BitacorasIdTurno: TStringField
      FieldName = 'sIdTurno'
      Required = True
      Size = 2
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
    object BitacorasIsometrico: TStringField
      FieldName = 'sIsometrico'
      Required = True
      Size = 35
    end
    object BitacorasDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object BitacorasNumeroReporte: TStringField
      FieldName = 'sNumeroReporte'
      Required = True
      Size = 35
    end
    object BitacorasOrigenTierra: TStringField
      FieldName = 'sOrigenTierra'
      Required = True
      Size = 2
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
  object Generado: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = GeneradoAfterScroll
    SQL.Strings = (
      
        'Select e2.iConsecutivo, e2.iNumeroEstimacion, e2.dFechaInicio, e' +
        '2.dFechaFinal, e2.lStatus, e.* From estimacionxpartida e  '
      
        'inner join estimaciones e2 on (e.sContrato = e2.sContrato And e.' +
        'sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNume' +
        'roGenerador)'
      
        'where e.sContrato = :Contrato And e.sNumeroActividad = :Activida' +
        'd And e2.dFechaFinal <= :Fecha'
      'Order By e2.iConsecutivo, e.sIsometrico')
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
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
    Left = 20
    Top = 433
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
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
  end
  object QryIsometricos: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = QryIsometricosAfterScroll
    SQL.Strings = (
      
        'Select bIsometrico From estimacionxisometrico Where sContrato = ' +
        ':contrato And'
      'sNumeroOrden = :Orden and sNumeroGenerador = :Generador and'
      'sIsometrico = :Isometrico And sPrefijo = :Prefijo')
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
        Name = 'Generador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Isometrico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Prefijo'
        ParamType = ptUnknown
      end>
    Left = 817
    Top = 401
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
        Name = 'Generador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Isometrico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Prefijo'
        ParamType = ptUnknown
      end>
  end
  object ds_Partidas: TDataSource
    AutoEdit = False
    DataSet = QryPartidas
    Left = 101
    Top = 8
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
    Left = 122
    Top = 9
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
  object SubContratos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select e.*, e2.dFechaInicio, e2.dFechaFinal from estimacionxpart' +
        'idaprov e'
      
        'inner join estimacionxproveedor e2 on (e.sContrato = e2.sContrat' +
        'o and e.sSubContrato = e2.sSubContrato and e.iNumeroEstimacion =' +
        ' e2.iNumeroEstimacion)'
      
        'Where e.sContrato = :contrato and sNumeroOrden = :Orden and sWbs' +
        ' = :wbs and sNumeroActividad = :Actividad'
      
        'order by e.sSubContrato, e2.iConsecutivo, e.sNumeroOrden, e.sNum' +
        'eroGenerador')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
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
    Left = 20
    Top = 473
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
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
    object SubContratossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object SubContratossSubContrato: TStringField
      FieldName = 'sSubContrato'
      Required = True
      Size = 15
    end
    object SubContratosiNumeroEstimacion: TStringField
      FieldName = 'iNumeroEstimacion'
      Required = True
      Size = 10
    end
    object SubContratossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object SubContratossNumeroGenerador: TStringField
      FieldName = 'sNumeroGenerador'
      Required = True
      Size = 5
    end
    object SubContratossWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object SubContratossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object SubContratossIsometrico: TStringField
      FieldName = 'sIsometrico'
      Required = True
      Size = 35
    end
    object SubContratossPrefijo: TStringField
      FieldName = 'sPrefijo'
      Required = True
      Size = 4
    end
    object SubContratosdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object SubContratosdFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object SubContratosdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
  end
  object ds_SubContratos: TDataSource
    AutoEdit = False
    DataSet = SubContratos
    Left = 56
    Top = 472
  end
  object dsEstimaciones: TfrxDBDataset
    UserName = 'dsEstimaciones'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'iNumeroEstimacion=iNumeroEstimacion'
      'sDescripcion=sDescripcion'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'dCantidad=dCantidad'
      'dMontoMN=dMontoMN'
      'dAcumuladoAnterior=dAcumuladoAnterior'
      'dAcumuladoActual=dAcumuladoActual'
      'dMontoAcumuladoAnteriorMN=dMontoAcumuladoAnteriorMN'
      'dMontoAcumuladoMN=dMontoAcumuladoMN')
    DataSet = Estimaciones
    BCDToCurrency = False
    Left = 96
    Top = 328
  end
  object dsSubContratos: TfrxDBDataset
    UserName = 'dsSubContratos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sSubContrato=sSubContrato'
      'iNumeroEstimacion=iNumeroEstimacion'
      'sNumeroOrden=sNumeroOrden'
      'sNumeroGenerador=sNumeroGenerador'
      'sWbs=sWbs'
      'sNumeroActividad=sNumeroActividad'
      'sIsometrico=sIsometrico'
      'sPrefijo=sPrefijo'
      'dCantidad=dCantidad'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal')
    DataSet = SubContratos
    BCDToCurrency = False
    Left = 88
    Top = 472
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    ScreenSnap = True
    TitleButtons = <>
    Left = 10
    Top = 85
  end
  object ordenesdetrabajo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select sNumeroOrden'
      ' from ordenesdetrabajo'
      'where sContrato = :Contrato order by sIdFolio, sNumeroOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 788
    Top = 221
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object ordenesdetrabajosNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
    end
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = ordenesdetrabajo
    Left = 845
    Top = 222
  end
  object SaveDialog1: TSaveDialog
    Left = 816
    Top = 224
  end
  object ResumendeAlcances: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select a2.ifase, a2.davance as dponderado, a2.sdescripcion, sum(' +
        'b.dcantidad) as dcantidad  from alcancesxactividad a2'
      
        'left join bitacoradealcances b on (b.scontrato = a2.scontrato an' +
        'd b.snumeroactividad = a2.snumeroactividad and b.ifase = a2.ifas' +
        'e)'
      
        'where a2.scontrato = :contrato and a2.snumeroactividad = :activi' +
        'dad group by a2.ifase')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    Left = 481
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'actividad'
        ParamType = ptUnknown
      end>
    object ResumendeAlcancesifase: TIntegerField
      FieldName = 'ifase'
      Required = True
    end
    object ResumendeAlcancesdponderado: TFloatField
      FieldName = 'dponderado'
      Required = True
      DisplayFormat = '##0.0### %'
    end
    object ResumendeAlcancessdescripcion: TStringField
      FieldName = 'sdescripcion'
      Required = True
      Size = 50
    end
    object ResumendeAlcancesdcantidad: TFloatField
      FieldName = 'dcantidad'
      DisplayFormat = '###,###,##0.0###'
    end
  end
  object ds_Resumen: TDataSource
    AutoEdit = False
    DataSet = ResumendeAlcances
    Left = 444
    Top = 128
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
    Left = 185
    Top = 128
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
    Left = 157
    Top = 128
  end
end
