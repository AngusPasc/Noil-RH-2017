object frmConsultaActividad4: TfrmConsultaActividad4
  Left = 236
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Partidas x Paquete de Trabajo'
  ClientHeight = 510
  ClientWidth = 772
  Color = 14145495
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object imgNotas: TImage
    Left = 720
    Top = 87
    Width = 19
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
  object Panel1: TPanel
    Left = 0
    Top = 104
    Width = 769
    Height = 378
    BevelInner = bvSpace
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 7847370
    TabOrder = 3
    object Grid_Resumen: TDBGrid
      Left = 438
      Top = 58
      Width = 327
      Height = 139
      Hint = 'Aqu'#237' se reflejan los resultados de las consultas.'
      Color = clWhite
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
      TabOrder = 0
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
    object GroupBox2: TGroupBox
      Left = 5
      Top = 197
      Width = 759
      Height = 177
      Caption = 'Bitacora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object grid_bitacora: TDBGrid
        Left = 2
        Top = 16
        Width = 755
        Height = 159
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
        PopupMenu = PopupPrincipal
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'dIdFecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 66
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sNumeroReporte'
            Title.Alignment = taCenter
            Title.Caption = 'No. de Reporte'
            Width = 135
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sTitulo'
            Title.Alignment = taCenter
            Title.Caption = 'Alcance'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dCantidad'
            Title.Alignment = taRightJustify
            Title.Caption = 'Cantidad'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dAvance'
            Title.Alignment = taRightJustify
            Title.Caption = 'Avance'
            Width = 66
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sReferencia'
            Title.Alignment = taCenter
            Title.Caption = 'Referencia'
            Width = 209
            Visible = True
          end>
      end
    end
    object GridActividades: TRxDBGrid
      Left = 4
      Top = 57
      Width = 433
      Height = 139
      Hint = 'Aqu'#237' se reflejan los resultados de las consultas.'
      Color = 15138559
      Ctl3D = False
      DataSource = ds_actividadesiguales
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnMouseMove = GridActividadesMouseMove
      OnMouseUp = GridActividadesMouseUp
      OnTitleClick = GridActividadesTitleClick
      OnGetCellParams = GridActividadesGetCellParams
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sNumeroActividad'
          Title.Alignment = taCenter
          Title.Caption = 'Partida'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dInstalado'
          Title.Alignment = taRightJustify
          Title.Caption = 'Instalado'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dPendiente'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pendiente'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dExcedente'
          Title.Alignment = taRightJustify
          Title.Caption = 'Excedente'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dPonderado'
          Title.Alignment = taRightJustify
          Title.Caption = 'Ponderado'
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sMedida'
          Title.Alignment = taCenter
          Title.Caption = 'Unidad'
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
          Visible = True
        end>
    end
    object tmDescripcion: TDBMemo
      Left = 2
      Top = 4
      Width = 760
      Height = 52
      Hint = 'Descripci'#243'n general'
      Color = 14145495
      DataField = 'mDescripcion'
      DataSource = ds_actividadesiguales
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
  object sbPaquete: TStatusBar
    Left = 0
    Top = 491
    Width = 772
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
        Text = 'Instalado'
        Width = 80
      end
      item
        Text = '0'
        Width = 80
      end
      item
        Width = 50
      end>
  end
  object GroupBox3: TGroupBox
    Left = 1
    Top = 39
    Width = 720
    Height = 63
    Caption = '&Parametros de la Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 22
      Width = 57
      Height = 14
      Caption = 'Frente de T.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 44
      Width = 39
      Height = 14
      Caption = 'Paquete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object tsPaquete: TRxDBLookupCombo
      Left = 64
      Top = 38
      Width = 649
      Height = 21
      Hint = 'Seleccione un paquete.'
      DropDownCount = 8
      DropDownWidth = 800
      EmptyItemColor = 15138559
      FieldsDelimiter = #0
      LookupField = 'sWbs'
      LookupDisplay = 'sWbs;sDescripcion'
      LookupDisplayIndex = 1
      LookupSource = ds_Paquetes
      TabOrder = 0
      OnChange = tsPaqueteChange
      OnEnter = tsPaqueteEnter
      OnExit = tsPaqueteExit
      OnKeyPress = tsPaqueteKeyPress
    end
    object tsNumeroOrden: TRxDBLookupCombo
      Left = 64
      Top = 17
      Width = 145
      Height = 21
      Hint = 'Seleccione un frente de trabajo.'
      DropDownCount = 8
      ListStyle = lsDelimited
      LookupField = 'sNumeroOrden'
      LookupDisplay = 'sNumeroOrden'
      LookupSource = ds_ordenesdetrabajo
      TabOrder = 1
      OnChange = tsNumeroOrdenChange
      OnEnter = tsNumeroOrdenEnter
      OnExit = tsNumeroOrdenExit
      OnKeyPress = tsNumeroOrdenKeyPress
    end
  end
  object PanelHistorico: TGroupBox
    Left = 275
    Top = 121
    Width = 512
    Height = 364
    Caption = 'Kardex'
    Color = clBtnShadow
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
    TabOrder = 1
    Visible = False
    object Grid_Historico: TRxDBGrid
      Left = 5
      Top = 13
      Width = 504
      Height = 346
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
  object OptionsBar: TSpeedBar
    Left = 0
    Top = 0
    Width = 772
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [sbAllowDrag, sbFlatBtns, sbGrayedBtns]
    BtnOffsetHorz = 3
    BtnOffsetVert = 3
    BtnWidth = 90
    BtnHeight = 30
    Images = connection.ImageList1
    TabOrder = 4
    InternalVer = 1
    object Reportes: TSpeedbarSection
      Caption = 'Reportes'
    end
    object btnDetalle: TSpeedItem
      BtnCaption = 'Detalle de Partidas'
      Caption = 'Detalle de Partidas'
      Glyph.Data = {
        56080000424D560800000000000036000000280000001A0000001A0000000100
        18000000000020080000C40E0000C40E00000000000000000000BFC0BFC1C0C1
        BFBEC1C2C0BFC3C1C1BFBFBFC0C0C0C0C0C0BFC0C0C0BFBFC2C0BFC1C0BFC0BF
        BEC0C0BFC0C0BFC0C0BFC3C3C4C0C0C0BFBEC1C1C0C1BFC0BFC0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0BFC0C0BFBFBFBFBFBFBFBFBFBFC0BFBFC0
        C0C0C0C0C0C0BFBEC0BFBEC0BFBEC0BFBE242444242444242444C0C0BFC0C0BF
        C0C0BFBFC0C0C0C0BFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C2BFC0C0C0BF
        8083824841424942446D6E6DC0C0BFBFBFBFC0C0BFC0BFBEC0BFBE2424442424
        441415E51315EA090AE2242444C0C0BFC0C0BFBEC0BFC0C0C0C0C0C0C0C0C0C0
        C0C0BFC0C0BFC0C00000C0C0BFC0C0BF0D3232145F5F135C5C153F3E707576C0
        C0BFC0C0C0C0BFBE2424442424441111D50E0DE7090AE2090AE2090AE2242444
        C0C0BFBFC0BFC0C0C0BFC0C0BFC0C0BFC0C0C0C0C0C1C0BF0000C0C0BF214949
        4B7F817EFFFF7EFFFF7EFFFF033030727D7BC0C0BFC0BFBE242444090AE2090A
        E2090AE2090AE2090AE2242444C0C0BFC0C0BFC0C0BFBFC0C0C0C0C0C0C0C0BF
        C0BFC1C0C0C2BFC00000C0C0BF234C4C65FFFF7EFFFF7EFFFF7EFFFF7EFFFF01
        2D2D798685C0BFBE242444090AE2090AE2090AE2090AE2242444C0C0BFC0C0BF
        BFBEBFC0C0BFBFC0C0C2C0C0C2C0C0C2C0BEC1C0C0BFBEC10000C0C0BFC0C0BF
        2650507EFFFF7EFFFF7EFFFF7EFFFF1D4846000000C0BFBEC0C0BF242444090A
        E2090AE220204DC0C0BFC0C0BFC0C0BFBFBFBFC0C0C0BFC0C0C0BFBEC4C3C3C1
        C0BFC0C0C0BFBFC00000C0BFBFC0C0BFC0C0BF1C39387EFFFF7EFFFF47636200
        00007B7E7EBFBFBFBFBFBFC0C0BF20204D20204DC0C0BFC0C0BFBFBFBFBFBFBF
        C1C1C1C0C0C0C0BFBE363636C0BFBEC4C4C4BFC0C0BFC0BF0000BEBEBEC1BFBF
        C0C0BFAFC8C7000000000000000000838689C0C0BFBFBFBFBFBFBFBFBFBFC7C7
        C6C7C7C6C4C4C3C0BEC0C0C0BFBFBFBFC2C2C2C0BFBE3D3D3D000000232324C0
        BFBEBFBFBFBFBFBF0000C0C0C0C0C0BFC0C0BFC0C0BFC0C0BFC0C0BFC0C0BFBF
        BFBFBFBFBFBFBFBFC0C0BFBFBFBFBFBFBFBFBFC0C0C0BFC0BEC1C0C0BFC3C3C3
        C0BFBE3E3E3E000000000000464647C0BFBEBFBFBFC1C1C10000C0C0C0C0C0BF
        C0BEC1C0C0C0C0BFBFC0C0BFC0C0BF2D2E0E2D2E0E2D2E0E2D2E0EC0C0BFC4C4
        C3BFBFC0C0C0C0C0C0BFC1C1C1C0BFBE424242000000000000494949C0BFBEC0
        C0C0C0C0C0BFBFBF0000C0C0C0C0C0C0BFBEBFBFBFC0C0C0BF2D2E0E2D2E0EDD
        DD35CDCE46CDCE462D2E0EC0C0BFC6C6C5BFBFC0C0C0C0C0BFBEC0BFBE3A3A3A
        0000000000004D4E4EC0BFBEC0C1C1BFBFBFC0C0C0C0C0C00000C0C0C0C0C0C0
        BFBFBFC1C1C3C0C0BF2D2E0ECDCE46CDCE46CDCE46CDCE462D2E0EBFC0C0C3C3
        C3BFBFC0C1C1C1C0BFBE404040000000000000454646C0BFBEC0C2C2BEBFBFC1
        C1C1BFC0BFBFC0BF0000C0C0C0BFBFC0C0C1BEC0C0BF000000D7D774CDCE46CD
        CE46CDCE46CDCE462D2E0EBFC0C0C7C7C6C3C3C3C9C9C9383838000000000000
        4E4E4EC0BFBEC1C1C1C0C0C0C0BFBFBFC0BFC1BEC0C2BEC10000C0C0C0BFBFC0
        C0C0BFC0C0BF3C3C310A0A00CDCE46CDCE46CDCE462D2E0EC0C0BFC0C0BFC1C1
        C1C9C9C94343430000000000004B4C4BC0BFBEC0C0C0BFBFBFC0C0C0BFBFBFBF
        C0BFC0BFC0C1BFC00000C0C0C0C0BFC0C0C1BEC0C0C2BFC0C00A0A000A0A000A
        0A002D2E0E2D2E0EC0C0BFC1BFC0C0BFBE3738380000000000004B4C4AC0BFBE
        C0C0C0C0C0C0C0C0C0BFBFBFBFC0C0BFC0BFC3C2C4BFBFC30000BEBEBEC0C0C0
        BEBFBEBFBFC0C5C4BEBFC0C0C0C0BFC0C0BFC0C0BFC0C0BFC4C2BFC0BFBE3F40
        400000000000004B4B4BC0BFBEC2C2C1C0C0BFC0C0C0C0C0BFBFC0BFC0C0BFC7
        C6C731303EB8B8CE0000C0C0C0C0C0C0C0BFC0BFBFC0BFBFC0C1C1C2C5C5C6C5
        C5C6C6C4C5C0BFBEC0BFBE2E34330000000000004D4B4BC0BFBEC2C2C2C0BFC1
        BFBFC7C0C0C4C1C1C0BFBFC0C3C2C231303E31303E31303E0000C0C0C0C0C0C0
        C0C0BFC0BEC1BFC0C0BFC0C0BFC0C0BFC0C0C1C2C23A57574B4C4A2C46460000
        00494D4DC0BFBEC0C0C0C0C0BFBFC0C731303EC0C0BFBDBDBFC0BFC1BFBEC1C6
        C6C531303EBFBEC40000C0C0C0BFBFC0BFBFC0BFC0C0BFC0C0BFBFC0BFBFC0BF
        BFC0BFBFC04B545489DFDF89DFDF4B5454C0BFBEC0BFBFC0C0C0C0C0C031303E
        31303E31303EBABABAC1C1C2C1C0C1C3C3C2C3C3C3C1C1C00000C0C0C0BFBFC0
        BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC04B545489DFDF89DFDF4B54
        54C1C1C1BFBFBFC0C0C0C0C0C0C1C1C131303EBBBABAC4C2C2C1C2C1BCBBBC31
        303EC5C5C6C0C0BF0000C0C0C0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BF
        BFC0BFBFC04B54544B54544B54544B5454C0BEC1C1C1C1C3C3C3C3C3C2C0C0C0
        C0C0C0C1C1C2C0BFC1C4C4C331303E31303E31303EC2C2C20000C0C0C0BFBFC0
        BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0C3C0C0C0C0
        C0C0BFC1BEBEC431303EC0C0BFC2C3C2C1C1C1BFC0C0BFBFC0C5C5C3B9B8C031
        303EC2C2CBC0C0C00000C0C0C0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BF
        BFC0BFBFC0BFBFC0BFBFC0BFBFBFC0C0C0C1C1C231303E31303E31303EC4C4C3
        C0C0C0C0C0BFC6C5C631303EC8C6C9C2C1C4BFBFC0C0C0BF0000C0C0C0BFBFC0
        BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFBFC0C0
        BFBFBFBFC1C1C731303EBEBEC4C1C1C0BEBFC0C2C3C231303E31303E31303EC3
        C3C4C0C0BFC0C0C00000C0C0C0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BF
        BFC0BFBFC0BFBFC0BFBFC0C0C0C0C0C0C0C0C0BFC0C0BFC1C1C1C0C0C0C0BFBF
        BDC0C1C0C1C1C0BFC331303EC0C0BFC0BFC2C0C0BFC0C0C00000}
      Hint = 'Detalle de Partidas|'
      ImageIndex = 14
      Layout = blGlyphRight
      Spacing = 1
      Left = 3
      Top = 3
      Visible = True
      WordWrap = True
      OnClick = btnDetalleClick
      SectionName = 'Reportes'
    end
    object btnStatus: TSpeedItem
      BtnCaption = 'Status de Partidas'
      Caption = 'Status de Partidas'
      Hint = 'Status de Partidas|'
      ImageIndex = 14
      Layout = blGlyphRight
      Spacing = 1
      Left = 93
      Top = 3
      Visible = True
      WordWrap = True
      OnClick = btnStatusClick
      SectionName = 'Reportes'
    end
    object btnRetraso: TSpeedItem
      BtnCaption = 'Partidas con Retraso'
      Caption = 'Partidas con Retraso'
      Hint = 'Partidas con Retraso|'
      ImageIndex = 14
      Layout = blGlyphRight
      Spacing = 1
      Left = 183
      Top = 3
      Visible = True
      WordWrap = True
      OnClick = btnRetrasoClick
      SectionName = 'Reportes'
    end
    object btnAlcances: TSpeedItem
      BtnCaption = 'Detalle de Alcances'
      Hint = 'Detalle de alcances.|'
      ImageIndex = 14
      Layout = blGlyphRight
      Spacing = 1
      Left = 273
      Top = 3
      Visible = True
      WordWrap = True
      OnClick = btnAlcancesClick
      SectionName = 'Reportes'
    end
  end
  object ds_bitacora: TDataSource
    AutoEdit = False
    DataSet = QryBitacora
    Left = 680
    Top = 269
  end
  object ds_actividadesiguales: TDataSource
    AutoEdit = False
    DataSet = ActividadesIguales
    Left = 120
    Top = 253
  end
  object ds_Resumen: TDataSource
    AutoEdit = False
    DataSet = QryResumendeAlcances
    Left = 470
    Top = 132
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.ImageList1
    Left = 81
    Top = 112
    object HistorialdeSuministros1: TMenuItem
      Caption = 'Ver/Ocultar Historial de Suministros'
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
      OnClick = Salir1Click
    end
  end
  object ds_Historico: TDataSource
    AutoEdit = False
    DataSet = Historico
    Left = 400
    Top = 382
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = OrdenesdeTrabajo
    Left = 280
    Top = 54
  end
  object ds_Paquetes: TDataSource
    AutoEdit = False
    DataSet = Paquetes
    Left = 432
    Top = 54
  end
  object dbReporte: TfrxDBDataset
    UserName = 'dbReporte'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sIdConvenio=sIdConvenio'
      'sNumeroOrden=sNumeroOrden'
      'sPaquete=sPaquete'
      'sNumeroActividad=sNumeroActividad'
      'sTipoActividad=sTipoActividad'
      'iItemOrden=iItemOrden'
      'mDescripcion=mDescripcion'
      'dFechaInicio=dFechaInicio'
      'sHoraInicio=sHoraInicio'
      'dDuracion=dDuracion'
      'dFechaFinal=dFechaFinal'
      'sHoraFinal=sHoraFinal'
      'dPonderado=dPonderado'
      'dCantidad=dCantidad'
      'dCargado=dCargado'
      'dInstalado=dInstalado'
      'dExcedente=dExcedente'
      'sIdPlataforma=sIdPlataforma'
      'sIdPernocta=sIdPernocta'
      'mComentarios=mComentarios'
      'lGerencial=lGerencial'
      'lCalculo=lCalculo'
      'iColor=iColor'
      'lGenerado=lGenerado'
      'sMedida=sMedida'
      'dVentaMN=dVentaMN'
      'dVentaDLL=dVentaDLL'
      'dCantidadAnexo=dCantidadAnexo'
      'dPendiente=dPendiente')
    BCDToCurrency = False
    Left = 248
    Top = 120
  end
  object rxAnexo: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sNumeroOrden'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'swbs'
        DataType = ftString
        Size = 30
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
        Name = 'dReportado'
        DataType = ftFloat
      end
      item
        Name = 'dGenerado'
        DataType = ftFloat
      end
      item
        Name = 'dPReportar'
        DataType = ftFloat
      end
      item
        Name = 'dPGenerar'
        DataType = ftFloat
      end>
    Left = 248
    Top = 155
    object rxAnexosNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 35
    end
    object rxAnexoswbs: TStringField
      FieldName = 'swbs'
      Size = 30
    end
    object rxAnexosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Size = 10
    end
    object rxAnexomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object rxAnexosMedida: TStringField
      FieldName = 'sMedida'
      Size = 8
    end
    object rxAnexodCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
    end
    object rxAnexodPonderado: TFloatField
      FieldName = 'dPonderado'
    end
    object rxAnexodVentaMN: TCurrencyField
      FieldName = 'dVentaMN'
    end
    object rxAnexodReportado: TFloatField
      FieldName = 'dReportado'
    end
    object rxAnexodGenerado: TFloatField
      FieldName = 'dGenerado'
    end
    object rxAnexodPReportar: TFloatField
      FieldName = 'dPReportar'
    end
    object rxAnexodPGenerar: TFloatField
      FieldName = 'dPGenerar'
    end
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
        Name = 'sPaquete'
        DataType = ftString
        Size = 20
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
      end>
    Left = 248
    Top = 187
    object rxPartidasAvancesContrato: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object rxPartidasAvancesPaquete: TStringField
      FieldName = 'sPaquete'
    end
    object StringField8: TStringField
      FieldName = 'sNumeroActividad'
      Size = 10
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
    ReportOptions.CreateDate = 39222.523141817130000000
    ReportOptions.LastChange = 39222.523141817130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    Left = 32
    Top = 336
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.419312533333400000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
      end
    end
  end
  object ActividadesIguales: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = ActividadesIgualesAfterScroll
    OnCalcFields = ActividadesIgualesCalcFields
    SQL.Strings = (
      
        'Select sContrato, sNumeroOrden, iItemOrden, sWbsAnterior, sWbs, ' +
        'sNumeroActividad, mDescripcion, dCantidad, sMedida,'
      
        'dVentaMN, dVentaDLL, dPonderado, dInstalado, dExcedente From act' +
        'ividadesxorden'
      
        'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdCon' +
        'venio = :Convenio And sWbsAnterior = :Wbs and sTipoActividad = '#39 +
        'Actividad'#39
      'order by :Ordenado ')
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
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ordenado'
        ParamType = ptUnknown
      end>
    Left = 153
    Top = 247
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
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ordenado'
        ParamType = ptUnknown
      end>
    object ActividadesIgualessContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesIgualessNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object ActividadesIgualessWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object ActividadesIgualessWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 30
    end
    object ActividadesIgualessNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesIgualesmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesIgualesdPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
      DisplayFormat = '##0.0### %'
    end
    object ActividadesIgualessMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object ActividadesIgualesdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesIgualesdInstalado: TFloatField
      FieldName = 'dInstalado'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesIgualesdExcedente: TFloatField
      FieldName = 'dExcedente'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesIgualesdVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object ActividadesIgualesdVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      currency = True
    end
    object ActividadesIgualesdPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dPendiente'
      DisplayFormat = '###,###,##0.0###'
      Calculated = True
    end
    object ActividadesIgualesiItemOrden: TStringField
      FieldName = 'iItemOrden'
      Required = True
      Size = 48
    end
  end
  object Paquetes: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = PaquetesCalcFields
    SQL.Strings = (
      'Select sWbs, mDescripcion From actividadesxorden'
      'Where sContrato = :contrato And sNumeroOrden = :Orden'
      
        'And sIdConvenio = :Convenio And sTipoActividad = "Paquete"  Orde' +
        'r By iItemOrden')
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
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
    Left = 457
    Top = 55
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
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
    object PaquetessWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object PaquetesmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object PaquetessDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 70
      Calculated = True
    end
  end
  object OrdenesdeTrabajo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sNumeroOrden, sDescripcionCorta from ordenesdetrabajo whe' +
        're sContrato = :Contrato and cIdStatus = :status order by sNumer' +
        'oOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
    Left = 313
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
  end
  object QryResumendeAlcances: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select a2.iFase, a2.dAvance as dPonderado, a2.sDescripcion, Sum(' +
        'b.dCantidad) as dCantidad  From alcancesxactividad a2'
      
        'INNER JOIN actividadesxorden ao ON (  ao.sContrato = a2.sContrat' +
        'o and ao.sNumeroActividad=a2.sNumeroActividad and ao.sWbsContrat' +
        'o=a2.sWbs )'
      
        'LEFT JOIN bitacoradealcances b ON (b.sContrato = ao.sContrato an' +
        'd b.sNumeroOrden=ao.sNumeroOrden  And b.sWbs =ao.sWbs  And b.sNu' +
        'meroActividad = ao.sNumeroActividad And b.iFase = a2.iFase)'
      
        'Where b.sContrato = :Contrato And b.sNumeroActividad = :Activida' +
        'd and b.sWbs=:wbs  Group By a2.iFase')
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
        Name = 'Wbs'
        ParamType = ptUnknown
      end>
    Left = 435
    Top = 136
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
        Name = 'Wbs'
        ParamType = ptUnknown
      end>
    object QryResumendeAlcancesiFase: TIntegerField
      FieldName = 'iFase'
      Required = True
    end
    object QryResumendeAlcancesdPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
      DisplayFormat = '##0.0### %'
    end
    object QryResumendeAlcancessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object QryResumendeAlcancesdCantidad: TFloatField
      FieldName = 'dCantidad'
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
      
        'where e.sContrato = :contrato And e.sNumeroActividad = :Activida' +
        'd Order By dFechaAviso')
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
    Left = 427
    Top = 376
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
  object AvGeneral: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 259
    Top = 368
  end
  object QryBitacora: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = QryBitacoraCalcFields
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
    Left = 642
    Top = 267
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
    object QryBitacorasContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object QryBitacoradIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object QryBitacoraiIdDiario: TIntegerField
      FieldName = 'iIdDiario'
      Required = True
    end
    object QryBitacorasIdTurno: TStringField
      FieldName = 'sIdTurno'
      Required = True
      Size = 2
    end
    object QryBitacorasNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object QryBitacorasNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object QryBitacoradCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object QryBitacoradAvance: TFloatField
      FieldName = 'dAvance'
      Required = True
      DisplayFormat = '##0.0### %'
    end
    object QryBitacorasIdTipoMovimiento: TStringField
      FieldName = 'sIdTipoMovimiento'
      Required = True
      Size = 4
    end
    object QryBitacoralAlcance: TStringField
      FieldName = 'lAlcance'
      Required = True
      Size = 2
    end
    object QryBitacorasNumeroReporte: TStringField
      FieldName = 'sNumeroReporte'
      Required = True
      Size = 35
    end
    object QryBitacorasIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object QryBitacorasOrigenTierra: TStringField
      FieldName = 'sOrigenTierra'
      Required = True
      Size = 2
    end
    object QryBitacorasTitulo: TStringField
      FieldKind = fkCalculated
      FieldName = 'sTitulo'
      Size = 35
      Calculated = True
    end
    object QryBitacorasDescripcionTurno: TStringField
      FieldName = 'sDescripcionTurno'
      Required = True
      Size = 30
    end
    object QryBitacorasWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
  end
end
