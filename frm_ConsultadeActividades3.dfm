object frmConsultaActividad3: TfrmConsultaActividad3
  Left = 250
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Comparativo Suministrado Vs. Generado'
  ClientHeight = 409
  ClientWidth = 954
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
  object Grid_Resumen: TDBGrid
    Left = 615
    Top = 2
    Width = 339
    Height = 93
    Hint = 'Aqu'#237' se refleja el resultado de la consulta.'
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
    PopupMenu = PopupPrincipal1
    TabOrder = 1
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
        FieldName = 'sdescripcion'
        Title.Caption = 'Fase'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dponderado'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcantidad'
        Title.Alignment = taRightJustify
        Title.Caption = 'Cantidad'
        Visible = True
      end>
  end
  object GroupBox3: TGroupBox
    Left = 1
    Top = 0
    Width = 612
    Height = 93
    Caption = '&Parametros de la Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 6
      Top = 38
      Width = 57
      Height = 14
      Caption = 'Descripci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object imgNotas: TImage
      Left = 234
      Top = 14
      Width = 15
      Height = 19
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
    object Label2: TLabel
      Left = 6
      Top = 18
      Width = 52
      Height = 14
      Caption = 'No. &Partida'
      FocusControl = tsNumeroActividad
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object tmDescripcion: TDBMemo
      Left = 68
      Top = 35
      Width = 540
      Height = 56
      Hint = 'Decripcion general.'
      Color = 14342874
      DataField = 'mDescripcion'
      DataSource = ds_Partidas
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object tsNumeroActividad: TRxDBLookupCombo
      Left = 69
      Top = 12
      Width = 90
      Height = 22
      Hint = 'Seleccione numero de partida.'
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
      TabOrder = 1
      OnChange = tsNumeroActividadChange
      OnEnter = tsNumeroActividadEnter
      OnExit = tsNumeroActividadExit
      OnKeyPress = tsNumeroActividadKeyPress
    end
  end
  object PanelHistorico: TGroupBox
    Left = 2
    Top = 97
    Width = 388
    Height = 312
    Caption = 'Suministros'
    DockSite = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label9: TLabel
      Left = 161
      Top = 293
      Width = 103
      Height = 14
      Caption = 'Total Suministrado'
    end
    object Grid_Historico: TRxDBGrid
      Left = 4
      Top = 14
      Width = 381
      Height = 272
      Hint = 'Aqu'#237' se refleja el resultado de la consulta'
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
      PopupMenu = PopupPrincipal1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnMouseMove = Grid_HistoricoMouseMove
      OnMouseUp = Grid_HistoricoMouseUp
      OnTitleClick = Grid_HistoricoTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'dFechaAviso'
          Title.Caption = 'Fecha'
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sNumeroOrden'
          Title.Alignment = taCenter
          Title.Caption = 'Frente de Trabajo'
          Width = 108
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sReferencia'
          Title.Alignment = taCenter
          Title.Caption = 'Referencia'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 59
          Visible = True
        end>
    end
    object tdSuministro: TCurrencyEdit
      Left = 296
      Top = 287
      Width = 90
      Height = 21
      Hint = 'Total suministrado.'
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      Color = clBtnHighlight
      DecimalPlaces = 4
      DisplayFormat = ',0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Group_Generado: TGroupBox
    Left = 391
    Top = 97
    Width = 562
    Height = 312
    Caption = 'Generado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      562
      312)
    object LabelGenerador: TLabel
      Left = 378
      Top = 293
      Width = 83
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Generado'
    end
    object tmComentarios: TDBMemo
      Left = 5
      Top = 205
      Width = 554
      Height = 82
      Hint = 'Comentarios.'
      Color = clBtnHighlight
      DataField = 'mComentarios'
      DataSource = ds_generado
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object tdTotalGenerado: TCurrencyEdit
      Left = 473
      Top = 287
      Width = 86
      Height = 21
      Hint = 'Total que se ha generado.'
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      Color = clBtnHighlight
      DecimalPlaces = 5
      DisplayFormat = '0.00000'
      TabOrder = 1
      ZeroEmpty = False
    end
    object grid_Generado: TRxDBGrid
      Left = 4
      Top = 15
      Width = 554
      Height = 187
      Cursor = crHelp
      Hint = 'Aqu'#237' se refleja el resultado de la consulta'
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
      PopupMenu = PopupPrincipal1
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDblClick = Grid_GeneradoDblClick
      OnMouseMove = grid_GeneradoMouseMove
      OnMouseUp = grid_GeneradoMouseUp
      OnTitleClick = grid_GeneradoTitleClick
      TitleButtons = True
      OnGetCellParams = grid_GeneradoGetCellParams
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
  end
  object pnlFase: TPanel
    Left = 620
    Top = 40
    Width = 296
    Height = 52
    BevelOuter = bvNone
    Caption = 'NO TIENE FASES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Locked = True
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object ds_Partidas: TDataSource
    AutoEdit = False
    DataSet = QryPartidas
    Left = 101
    Top = 8
  end
  object ds_Resumen: TDataSource
    AutoEdit = False
    DataSet = ResumendeAlcances
    Left = 556
    Top = 24
  end
  object PopupPrincipal1: TPopupMenu
    Images = connection.ImageList1
    Left = 65
    Top = 192
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
    Left = 232
    Top = 310
  end
  object ds_generado: TDataSource
    AutoEdit = False
    DataSet = Generado
    Left = 776
    Top = 120
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
    Left = 752
    Top = 189
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
      OnBeforePrint = 'Page1OnBeforePrint'
    end
  end
  object QryPartidas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sNumeroActividad, mDescripcion from actividadesxanexo Whe' +
        're sContrato = :Contrato And sIdConvenio = :Convenio and sTipoAc' +
        'tividad = '#39'Actividad'#39'Order By iItemOrden')
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
  object QrySuministro: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select Sum(dCantidad) as dCantidad From anexo_psuministro Where'
      
        ' sContrato = :Contrato And sNumeroActividad = :Actividad  Group ' +
        'By sNumeroActividad')
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
    Left = 218
    Top = 241
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
      
        'Select f.dFechaAviso, f.iFolio, f.sReferencia, f.sNumeroOrden, m' +
        '.sDescripcion, f.mComentarios, e.sNumeroActividad, e.dCantidad'
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
    Left = 274
    Top = 305
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
    Left = 593
    Top = 64
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
  object TotalGenerado: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select sum(dCantidad) as dCantidad'
      
        'From estimacionxpartida where sContrato = :Contrato And sNumeroA' +
        'ctividad = :Actividad Group By sNumeroActividad')
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
    Left = 519
    Top = 313
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
  object Generado: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select ep.sContrato, ep.sNumeroOrden, ep.sNumeroGenerador, ep.sI' +
        'sometrico, ep.sPrefijo, ep.dCantidad, ep.mComentarios, ep.lEstim' +
        'a, e.iNumeroEstimacion, e.lStatus, e.dFechaInicio, e.dFechaFinal'
      'From estimacionxpartida ep'
      
        'inner join estimaciones e on (ep.sContrato = e.sContrato And ep.' +
        'sNumeroOrden = e.sNumeroOrden And ep.sNumeroGenerador = e.sNumer' +
        'oGenerador)'
      
        'inner join estimacionperiodo eper on (e.sContrato = eper.sContra' +
        'to And e.iNumeroEstimacion = eper.iNumeroEstimacion)'
      
        'where ep.sContrato = :Contrato And ep.sNumeroActividad = :Activi' +
        'dad Order By e.iConsecutivo, ep.sIsometrico')
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
    Left = 743
    Top = 121
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
end
