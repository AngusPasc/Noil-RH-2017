object frmListadeAsistencia: TfrmListadeAsistencia
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Lista de Asistencia'
  ClientHeight = 475
  ClientWidth = 1327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbmuestranombre: TLabel
    Left = 94
    Top = 10
    Width = 3
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Splitter1: TSplitter
    Left = 1138
    Top = 0
    Height = 475
    Align = alRight
    ExplicitLeft = 0
    ExplicitTop = 48
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 1141
    Top = 0
    Width = 186
    Height = 475
    Align = alRight
    Color = clGradientActiveCaption
    Padding.Left = 20
    Padding.Top = 20
    Padding.Right = 20
    Padding.Bottom = 20
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      186
      475)
    object Label3: TLabel
      Left = 14
      Top = 52
      Width = 84
      Height = 13
      Caption = 'Fecha de Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 93
      Width = 69
      Height = 13
      Caption = 'Fehca de Fin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 12
      Width = 128
      Height = 28
      Align = alCustom
      Alignment = taCenter
      Caption = 'Impresion de Listas '#13#10'por Rango de Fechas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rbgOpciones: TRadioGroup
      Left = 14
      Top = 137
      Width = 155
      Height = 76
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Opciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object rbGenAsistencia: TRadioButton
      Left = 39
      Top = 162
      Width = 122
      Height = 17
      Caption = 'Generador Asistencia'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object rbAsistencia: TRadioButton
      Left = 39
      Top = 185
      Width = 77
      Height = 17
      Caption = 'Asistencia'
      TabOrder = 2
    end
    object btnImprimir: TAdvGlowButton
      Left = 21
      Top = 422
      Width = 144
      Height = 32
      Hint = 'Imprimir'
      Align = alBottom
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 45
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnImprimirClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object tdFechaI: TJvDateEdit
      Left = 14
      Top = 66
      Width = 106
      Height = 21
      DateFormat = 'dd/mm/YYYY'
      Color = 11009259
      DialogTitle = 'Seleccione una Fecha'
      DirectInput = False
      Anchors = [akLeft, akTop, akRight]
      ShowNullDate = False
      TabOrder = 4
    end
    object tdFechaF: TJvDateEdit
      Left = 14
      Top = 107
      Width = 106
      Height = 21
      DateFormat = 'dd/mm/YYYY'
      Color = 11009259
      DialogTitle = 'Seleccione una Fecha'
      Anchors = [akLeft, akTop, akRight]
      ShowNullDate = False
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1138
    Height = 475
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1138
      Height = 169
      Align = alTop
      TabOrder = 0
      object label1: TLabel
        Left = 12
        Top = 8
        Width = 74
        Height = 16
        Caption = 'Empleados.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 478
        Top = 12
        Width = 35
        Height = 14
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdFecha: TDateTimePicker
        Left = 519
        Top = 8
        Width = 97
        Height = 22
        Date = 41332.840285821760000000
        Time = 41332.840285821760000000
        Color = 11009259
        TabOrder = 0
        OnChange = tdFechaChange
      end
      object Panel6: TPanel
        Left = 1
        Top = 32
        Width = 1136
        Height = 136
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          1136
          136)
        object JvLabel1: TJvLabel
          Left = 293
          Top = 68
          Width = 18
          Height = 13
          Caption = '><'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object CkEstatus: TCheckBox
          Left = 13
          Top = 3
          Width = 73
          Height = 17
          Caption = 'Estatus'
          TabOrder = 0
        end
        object cbestatus: TDBLookupComboBox
          Left = 13
          Top = 20
          Width = 277
          Height = 21
          KeyField = 'iIdEstatusDiario'
          ListField = 'sDescripcion'
          ListSource = DsEstDiarioEmp
          TabOrder = 1
        end
        object CkEntrada: TCheckBox
          Left = 13
          Top = 47
          Width = 97
          Height = 17
          Caption = 'Hora de Entrada'
          TabOrder = 2
        end
        object HEntrada: TJvTimeEdit
          Left = 13
          Top = 66
          Width = 276
          Height = 21
          Hour24 = False
          TabOrder = 3
        end
        object HSalida: TJvTimeEdit
          Left = 312
          Top = 64
          Width = 725
          Height = 21
          Hour24 = False
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 4
        end
        object CkSalida: TCheckBox
          Left = 312
          Top = 45
          Width = 97
          Height = 17
          Caption = 'Hora de Salida'
          TabOrder = 5
        end
        object CbAsistencia: TComboBox
          Left = 311
          Top = 20
          Width = 725
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 6
          OnChange = CbAsistenciaChange
          Items.Strings = (
            'Si'
            'No')
        end
        object CkAsistencia: TCheckBox
          Left = 312
          Top = 3
          Width = 97
          Height = 17
          Caption = 'Asistencia'
          TabOrder = 7
          OnClick = CkAsistenciaClick
        end
        object BtnFiltrar: TAdvGlowButton
          Left = 1061
          Top = 1
          Width = 74
          Height = 134
          Align = alRight
          Caption = 'Filtrar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 8
          OnClick = BtnFiltrarClick
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object CkCodigo: TCheckBox
          Left = 14
          Top = 91
          Width = 97
          Height = 17
          Caption = 'Codigo Personal'
          TabOrder = 9
        end
        object CkNombreCompleto: TCheckBox
          Left = 314
          Top = 91
          Width = 119
          Height = 17
          Caption = 'Nombre Completo'
          TabOrder = 10
        end
        object edtcodigo: TEdit
          Left = 14
          Top = 110
          Width = 273
          Height = 21
          TabOrder = 11
        end
        object edtnomnrecompleto: TEdit
          Left = 314
          Top = 107
          Width = 722
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 12
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 434
      Width = 1138
      Height = 41
      Align = alBottom
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object btGuardar: TAdvGlowButton
        Left = 6
        Top = 6
        Width = 80
        Height = 29
        Align = alLeft
        Caption = 'Guardar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = btGuardarClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btGuardar2: TAdvGlowButton
        Left = 1048
        Top = 6
        Width = 84
        Height = 29
        Align = alRight
        Caption = 'Guardar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btGuardar2Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btnTodos: TcxButton
        Left = 438
        Top = 6
        Width = 75
        Height = 32
        Caption = 'Elegir Todos'
        TabOrder = 2
        OnClick = btnTodosClick
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 169
      Width = 1138
      Height = 265
      Align = alClient
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      TabOrder = 2
      object NXLista: TNextGrid
        Left = 11
        Top = 11
        Width = 1116
        Height = 243
        Align = alClient
        Color = 15138559
        GridLinesColor = 15138559
        InputSize = 5
        Options = [goHeader, goInput, goSelectFullRow]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TabStop = True
        OnEditExit = NXListaEditExit
        OnHeaderClick = NXListaHeaderClick
        OnSelectCell = NXListaSelectCell
        object NxTextColumn1: TNxTextColumn
          Color = 15138559
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Clave'
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
        end
        object NxNombre: TNxTextColumn
          Color = 15138559
          DefaultWidth = 220
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Nombre'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 220
        end
        object NxEstatus: TNxListColumn
          DefaultValue = '0'
          DefaultWidth = 50
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Estatus'
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coEditorAutoSelect, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 2
          SortType = stNumeric
          Width = 50
          OnCloseUp = NxEstatusCloseUp
        end
        object NxAsistencia: TNxCheckBoxColumn
          Alignment = taCenter
          Color = 15138559
          DefaultWidth = 50
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Asistencia'
          Options = [coCanClick, coCanInput, coEditing, coPublicUsing]
          ParentFont = False
          Position = 3
          SortType = stBoolean
          Width = 50
        end
        object NxFecha: TNxTextColumn
          Color = 15138559
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Fecha'
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Visible = False
        end
        object NxEntrada: TNxTextColumn
          Alignment = taCenter
          Color = 15138559
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.FormatMask = '00:00'
          Header.Caption = 'Entrada'
          MinWidth = 10
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 5
          SortType = stAlphabetic
          MaxLength = 10
        end
        object NxSalida: TNxTextColumn
          Color = 15138559
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Salida'
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 6
          SortType = stAlphabetic
        end
        object nxCategoria: TNxTextColumn
          Color = 15138559
          DefaultWidth = 150
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Categoria'
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 7
          SortType = stAlphabetic
          Width = 150
        end
        object nxSalario: TNxTextColumn
          Color = 15138559
          DefaultWidth = 150
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Salario'
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 8
          SortType = stAlphabetic
          Width = 150
        end
      end
    end
  end
  object zqLista: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT'
      ' em.sIdEmpleado, '
      ' em.sNombreCompleto,'
      ' em.sApellidoPaterno,'
      ' em.sApellidoMaterno, rs.salario, rs.titulosalario,'
      ' ra.*, '
      ' IF(IFNULL(dFecha, '#39'True'#39'), '#39'Si'#39' , '#39'No'#39') AS Existe '
      'FROM rh_asistencia AS ra'
      
        'RIGHT JOIN empleados AS em ON (em.sIdEmpleado = ra.sIdEmpleado A' +
        'ND ra.dFecha =:fecha ) '
      'INNER JOIN nuc_cargo nc On (nc.IdCargo=em.iId_Puesto)'
      'INNER JOIN rhu_salario rs On (rs.idSalario=nc.IdSalario)'
      'WHERE '
      'em.lLabora = '#39'Si'#39' and'
      
        '(:iIdEstatusDiario = -1 or ( :iIdEstatusDiario <> -1 and ra.iIdE' +
        'statusDiario = :iIdEstatusDiario)) and'
      
        '(:sAsistencia = -1 or ( :sAsistencia <> -1 and ra.sAsistencia Li' +
        'ke :sAsistencia)) and'
      
        '(:sSalida = -1 or ( :sSalida <> -1 and time(ra.sSalida) <= time(' +
        ':sSalida))) and'
      
        '(:sEntrada = -1 or ( :sEntrada <> -1 and time(ra.sEntrada) >= ti' +
        'me(:sEntrada))) and'
      
        '(:sIdEmpleado = -1 or ( :sIdEmpleado <> -1 and em.sIdEmpleado Li' +
        'ke CONCAT("%"+:sIdEmpleado+"%"))) and'
      
        '(:sNombreCompleto = -1 or ( :sNombreCompleto <> -1 and em.sNombr' +
        'eCompleto Like concat("%", :sNombreCompleto, "%")))'
      'ORDER BY  rs.TituloSalario,em.sNombreCompleto;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdEstatusDiario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sAsistencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sSalida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEntrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdEmpleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNombreCompleto'
        ParamType = ptUnknown
      end>
    Left = 323
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdEstatusDiario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sAsistencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sSalida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEntrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdEmpleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNombreCompleto'
        ParamType = ptUnknown
      end>
    object zqListasIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Required = True
    end
    object zqListasNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object zqListasApellidoPaterno: TStringField
      FieldName = 'sApellidoPaterno'
      Size = 35
    end
    object zqListasApellidoMaterno: TStringField
      FieldName = 'sApellidoMaterno'
      Size = 35
    end
    object fltfldzqListasalario: TFloatField
      FieldName = 'salario'
      Required = True
    end
    object zqListatitulosalario: TStringField
      FieldName = 'titulosalario'
      Required = True
      Size = 145
    end
    object intgrfldzqListaiIdListaAsistencia: TIntegerField
      FieldName = 'iIdListaAsistencia'
    end
    object zqListasIdEmpleado_1: TStringField
      FieldName = 'sIdEmpleado_1'
    end
    object dtfldzqListadFecha: TDateField
      FieldName = 'dFecha'
    end
    object zqListasAsistencia: TStringField
      FieldName = 'sAsistencia'
      Required = True
      Size = 2
    end
    object zqListasEntrada: TStringField
      FieldName = 'sEntrada'
      Size = 5
    end
    object zqListasSalida: TStringField
      FieldName = 'sSalida'
      Size = 5
    end
    object intgrfldzqListaiIdEstatusDiario: TIntegerField
      FieldName = 'iIdEstatusDiario'
      Required = True
    end
    object zqListaExiste: TStringField
      FieldName = 'Existe'
      ReadOnly = True
      Size = 2
    end
  end
  object ds_Lista: TDataSource
    DataSet = zqLista
    Left = 355
    Top = 288
  end
  object zAsistencia: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select *'
      'from rh_asistencia')
    Params = <>
    Left = 352
    Top = 224
    object zAsistenciaiIdListaAsistencia: TIntegerField
      FieldName = 'iIdListaAsistencia'
    end
    object zAsistenciasIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
    end
    object zAsistenciadFecha: TDateField
      FieldName = 'dFecha'
    end
    object zAsistenciasAsistencia: TStringField
      FieldName = 'sAsistencia'
      Required = True
      Size = 2
    end
    object zAsistenciasEntrada: TStringField
      FieldName = 'sEntrada'
      Size = 10
    end
    object zAsistenciasSalida: TStringField
      FieldName = 'sSalida'
      Size = 5
    end
    object zAsistenciaiIdEstatusDiario: TIntegerField
      FieldName = 'iIdEstatusDiario'
    end
  end
  object ds_Asistencia: TDataSource
    DataSet = zAsistencia
    Left = 392
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 168
    object ImprimirLista1: TMenuItem
      Caption = 'Imprimir Categorias'
      ImageIndex = 10
      OnClick = ImprimirLista1Click
    end
    object mniImprimirListadeldia1: TMenuItem
      Caption = 'Imprimir Lista del dia'
      ImageIndex = 16
      OnClick = mniImprimirListadeldia1Click
    end
    object ImportarDatosdelDiaAnterior1: TMenuItem
      Caption = 'Importar Datos del Dia Anterior'
      ImageIndex = 11
      OnClick = ImportarDatosdelDiaAnterior1Click
    end
    object InsertarListadePersonal1: TMenuItem
      Caption = 'Insertar Lista de Personal'
      ImageIndex = 13
      OnClick = InsertarListadePersonal1Click
    end
  end
  object dsLista: TfrxDBDataset
    UserName = 'dsLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdEmpleado=sIdEmpleado'
      'sNombreCompleto=sNombreCompleto'
      'dFecha=dFecha'
      'sAsistencia=sAsistencia'
      'iIdListaAsistencia=iIdListaAsistencia'
      'sIdEmpleado_1=sIdEmpleado_1'
      'sEntrada=sEntrada'
      'Existe=Existe'
      'sSalida=sSalida'
      'iIdEstatusDiario=iIdEstatusDiario'
      'sApellidoPaterno=sApellidoPaterno'
      'sApellidoMaterno=sApellidoMaterno'
      'titulosalario=titulosalario'
      'sumtotal=sumtotal')
    DataSet = zqrReporte
    BCDToCurrency = False
    Left = 464
    Top = 346
  end
  object rDiario: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 42412.875947893520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   xCaracter : byte ;'
      '   Separador : string;'
      '   mes, cadena : string;'
      '   semana: array[1..7] of string;       '
      '     '
      'procedure Memo128OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '   fecha : tdate;'
      '   mes   : string;                                          '
      'begin'
      '   { if cadena <> '#39'02'#39' then'
      '    begin                 '
      
        '        memo128.text := '#39'29'#39' ;                                  ' +
        '                                                          '
      '        memo129.text := '#39'30'#39' ;'
      '    end;'
      '                '
      
        '    if (cadena = '#39'01'#39') or (cadena = '#39'03'#39') or (cadena = '#39'05'#39') or ' +
        '(cadena = '#39'07'#39') or (cadena = '#39'08'#39')'
      
        '       or (cadena = '#39'10'#39') or (cadena = '#39'12'#39') then               ' +
        ' '
      '           memo130.text := '#39'31'#39' ;'
      ''
      '    if cadena = '#39'02'#39' then'
      '    begin               '
      
        '        if 29 = DaysInMonth(<ds_ListaXRango."anio">,<ds_ListaXRa' +
        'ngo."mes">) then           '
      '           memo128.text := '#39'29'#39';                                '
      '    end; }  '
      'end;'
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '     if Length(<ds_ListaXRango."mes">) = 1 then                 ' +
        '                      '
      '       cadena := '#39'0'#39' + IntToStr(<ds_ListaXRango."mes">)'
      '     else'
      
        '       cadena := IntToStr(<ds_ListaXRango."mes">);              ' +
        '      '
      ''
      '     if cadena = '#39'01'#39' then'
      '        mes := '#39'ENERO'#39';'
      '     if cadena = '#39'02'#39' then'
      '        mes := '#39'FEBRERO'#39';'
      '     if cadena = '#39'03'#39' then'
      '        mes := '#39'MARZO'#39';'
      '     if cadena = '#39'04'#39' then'
      '        mes := '#39'ABRIL'#39';            '
      '     if cadena = '#39'05'#39' then'
      '        mes := '#39'MAYO'#39';'
      '     if cadena = '#39'06'#39' then'
      '        mes := '#39'JUNIO'#39';'
      '     if cadena = '#39'07'#39' then'
      '        mes := '#39'JULIO'#39';'
      '     if cadena = '#39'08'#39' then'
      '        mes := '#39'AGOSTO'#39';'
      '     if cadena = '#39'09'#39' then'
      '        mes := '#39'SEPTIEMBRE'#39';'
      '     if cadena = '#39'10'#39' then'
      '        mes := '#39'OCTUBRE'#39';'
      '     if cadena = '#39'11'#39' then'
      '        mes := '#39'NOVIEMBRE'#39';'
      '     if cadena = '#39'12'#39' then'
      '        mes := '#39'DICIEMBRE'#39';    '
      'end;'
      ''
      'procedure Memo100OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' if copy(DateTostr(<ds_ListaXRango."Fecha1">),1,4 ) <> '#39'1899'#39' th' +
        'en  '
      ' begin    '
      
        '     memo100.Text := copy(DateTostr(<ds_ListaXRango."Fecha1">),9' +
        ',10 );'
      
        '     memo25.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha1">)' +
        '];'
      ' end;             '
      'end;'
      ''
      'procedure Memo101OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' if copy(DateTostr(<ds_ListaXRango."Fecha2">),1,4 ) <> '#39'1899'#39' th' +
        'en  '
      ' begin    '
      
        '    memo101.Text := copy(DateTostr(<ds_ListaXRango."Fecha2">),9,' +
        '10 );'
      
        '    memo32.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha2">)]' +
        ';'
      ' end;              '
      'end;    '
      ''
      'procedure Memo102OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' if copy(DateTostr(<ds_ListaXRango."Fecha3">),1,4 ) <> '#39'1899'#39' th' +
        'en  '
      ' begin    '
      
        '    memo102.Text := copy(DateTostr(<ds_ListaXRango."Fecha3">),9,' +
        '10 );'
      
        '    memo31.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha3">)]' +
        ';'
      ' end;                   '
      'end;'
      ''
      'procedure Memo103OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' if copy(DateTostr(<ds_ListaXRango."Fecha4">),1,4 ) <> '#39'1899'#39' th' +
        'en  '
      ' begin    '
      
        '    memo103.Text := copy(DateTostr(<ds_ListaXRango."Fecha4">),9,' +
        '10 );'
      
        '    memo30.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha4">)]' +
        ';'
      ' end;              '
      'end;'
      ''
      'procedure Memo104OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' if copy(DateTostr(<ds_ListaXRango."Fecha5">),1,4 ) <> '#39'1899'#39' th' +
        'en  '
      ' begin    '
      
        '    memo104.Text := copy(DateTostr(<ds_ListaXRango."Fecha5">),9,' +
        '10 );'
      
        '    memo29.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha5">)]' +
        ';'
      ' end;              '
      'end;'
      ''
      'procedure Memo105OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha6">),1,4 ) <> '#39'1899'#39' t' +
        'hen  '
      '  begin    '
      
        '     memo105.Text := copy(DateTostr(<ds_ListaXRango."Fecha6">),9' +
        ',10 );'
      
        '     memo48.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha6">)' +
        '];'
      '  end;               '
      'end;'
      ''
      'procedure Memo106OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha7">),1,4 ) <> '#39'1899'#39' t' +
        'hen  '
      '  begin    '
      
        '     memo106.Text := copy(DateTostr(<ds_ListaXRango."Fecha7">),9' +
        ',10 );'
      
        '     memo47.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha7">)' +
        '];'
      '  end;               '
      'end;'
      ''
      'procedure Memo107OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha8">),1,4 ) <> '#39'1899'#39' t' +
        'hen  '
      '  begin    '
      
        '     memo107.Text := copy(DateTostr(<ds_ListaXRango."Fecha8">),9' +
        ',10 );'
      
        '     memo44.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha8">)' +
        '];'
      '  end;               '
      'end;'
      ''
      'procedure Memo108OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha9">),1,4 ) <> '#39'1899'#39' t' +
        'hen  '
      '  begin    '
      
        '     memo108.Text := copy(DateTostr(<ds_ListaXRango."Fecha9">),9' +
        ',10 );'
      
        '    memo28.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha9">)]' +
        ';'
      '  end;              '
      'end;'
      ''
      'procedure Memo109OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha10">),1,4 ) <> '#39'1899'#39' ' +
        'then  '
      '  begin        '
      
        '     memo109.Text := copy(DateTostr(<ds_ListaXRango."Fecha10">),' +
        '9,10 );'
      
        '     memo27.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha10">' +
        ')];'
      '  end;               '
      'end;'
      ''
      'procedure Memo110OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha11">),1,4 ) <> '#39'1899'#39' ' +
        'then  '
      '  begin    '
      
        '     memo110.Text := copy(DateTostr(<ds_ListaXRango."Fecha11">),' +
        '9,10 );'
      
        '     memo26.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha11">' +
        ')];'
      '  end;               '
      'end;'
      ''
      'procedure Memo111OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' if copy(DateTostr(<ds_ListaXRango."Fecha12">),1,4 ) <> '#39'1899'#39' t' +
        'hen  '
      ' begin    '
      
        '    memo111.Text := copy(DateTostr(<ds_ListaXRango."Fecha12">),9' +
        ',10 );'
      
        '    memo40.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha12">)' +
        '];'
      ' end;              '
      'end;'
      ''
      'procedure Memo112OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha13">),1,4 ) <> '#39'1899'#39' ' +
        'then  '
      '  begin    '
      
        '     memo112.Text := copy(DateTostr(<ds_ListaXRango."Fecha13">),' +
        '9,10 );'
      
        '     memo36.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha13">' +
        ')];'
      '  end;               '
      'end;'
      ''
      'procedure Memo114OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha14">),1,4 ) <> '#39'1899'#39' ' +
        'then  '
      '  begin    '
      
        '     memo114.Text := copy(DateTostr(<ds_ListaXRango."Fecha14">),' +
        '9,10 );'
      
        '     memo35.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha14">' +
        ')];'
      '  end;               '
      'end;'
      ''
      'procedure Memo113OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha15">),1,4 ) <> '#39'1899'#39' ' +
        'then  '
      '  begin    '
      
        '      memo113.Text := copy(DateTostr(<ds_ListaXRango."Fecha15">)' +
        ',9,10 );'
      
        '     memo34.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha15">' +
        ')];'
      '  end;                 '
      'end;'
      ''
      'procedure Memo21OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha16">),1,4 ) <> '#39'1899'#39' ' +
        'then  '
      '  begin                                          '
      
        '     memo21.Text := copy(DateTostr(<ds_ListaXRango."Fecha16">),9' +
        ',10 );'
      
        '     memo33.Text  := semana[DayofWeek(<ds_ListaXRango."Fecha16">' +
        ')];'
      '  end;                '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '      '
      '  memo3.Visible := False;'
      '  memo5.Visible := False;'
      '  memo46.Visible := False;'
      '  memo8.Visible := False;'
      '  memo16.Visible := False;'
      '  memo7.Visible := False;'
      '  memo15.Visible := False;'
      '  memo14.Visible := False;'
      '  memo2.Visible := False;'
      '  memo20.Visible := False;'
      '  memo19.Visible := False;'
      '  memo18.Visible := False;'
      '  memo17.Visible := False;'
      '  memo10.Visible := False;'
      '  memo12.Visible := False;        '
      '  memo9.Visible := False;'
      ''
      '  memo49.Visible := False;'
      '  memo53.Visible := False;'
      '  memo54.Visible := False;'
      '  memo55.Visible := False;'
      '  memo56.Visible := False;'
      '  memo57.Visible := False;'
      '  memo58.Visible := False;'
      '  memo59.Visible := False;'
      '  memo60.Visible := False;'
      '  memo61.Visible := False;'
      '  memo62.Visible := False;'
      '  memo63.Visible := False;'
      '  memo64.Visible := False;'
      '  memo65.Visible := False;'
      '  memo66.Visible := False;'
      '  memo66.Visible := False;'
      '  memo67.Visible := False;'
      ''
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha1">),9,10 ) <> '#39'1'#39' the' +
        'n'
      '  begin'
      '    memo3.Visible := true;'
      '    memo5.Visible := true;'
      '    memo46.Visible := true;'
      '    memo8.Visible := true;'
      '    memo16.Visible := true;'
      '    memo7.Visible := true;'
      '    memo15.Visible := true;'
      '    memo14.Visible := true;'
      '    memo2.Visible := true;'
      '    memo20.Visible := true;'
      '    memo19.Visible := true;'
      '    memo18.Visible := true;'
      '    memo17.Visible := true;'
      '    memo10.Visible := true;'
      '    memo12.Visible := true;        '
      '    memo9.Visible := true;  '
      '  end;            '
      '    '
      
        '  if copy(DateTostr(<ds_ListaXRango."Fecha1">),9,10 ) <> '#39'16'#39' th' +
        'en'
      '  begin          '
      '    memo49.Visible := true;'
      '    memo53.Visible := true;'
      '    memo54.Visible := true;'
      '    memo55.Visible := true;'
      '    memo56.Visible := true;'
      '    memo57.Visible := true;'
      '    memo58.Visible := true;'
      '    memo59.Visible := true;'
      '    memo60.Visible := true;'
      '    memo61.Visible := true;'
      '    memo62.Visible := true;'
      '    memo63.Visible := true;'
      '    memo64.Visible := true;'
      '    memo65.Visible := true;'
      '    memo66.Visible := true;'
      '    memo66.Visible := true;'
      '    memo67.Visible := true;  '
      '  end;          '
      '    '
      'end;'
      ''
      'Begin'
      '    semana[1] := '#39'D'#39';'
      '    semana[2] := '#39'L'#39';'
      '    semana[3] := '#39'M'#39';'
      '    semana[4] := '#39'M'#39';'
      '    semana[5] := '#39'J'#39';'
      '    semana[6] := '#39'V'#39';'
      '    semana[7] := '#39'S'#39';  '
      '  '
      '  '
      
        '    {memo100.text := '#39'1'#39' ;                                      ' +
        '                                                      '
      
        '    memo101.text := '#39'2'#39' ;                                       ' +
        '                                                     '
      
        '    memo102.text := '#39'3'#39' ;                                       ' +
        '                                                     '
      
        '    memo103.text := '#39'4'#39' ;                                       ' +
        '                                                     '
      
        '    memo104.text := '#39'5'#39' ;                                       ' +
        '                                                     '
      
        '    memo105.text := '#39'6'#39' ;                                       ' +
        '                                                     '
      
        '    memo106.text := '#39'7'#39' ;                                       ' +
        '                                                     '
      
        '    memo107.text := '#39'8'#39' ;                                       ' +
        '                                                     '
      
        '    memo108.text := '#39'9'#39' ;                                       ' +
        '                                                     '
      
        '    memo109.text := '#39'10'#39' ;                                      ' +
        '                                                      '
      
        '    memo110.text := '#39'11'#39' ;                                      ' +
        '                                                      '
      
        '    memo111.text := '#39'12'#39' ;                                      ' +
        '                                                      '
      
        '    memo112.text := '#39'13'#39' ;                                      ' +
        '                                                      '
      
        '    memo113.text := '#39'14'#39' ;                                      ' +
        '                                                      '
      
        '    memo114.text := '#39'15'#39' ; }                                    ' +
        '                                                                ' +
        '  '
      'End.')
    OnGetValue = rDiarioGetValue
    OnReportPrint = 'no '
    Left = 272
    Top = 219
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
      end
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 223.000000000000000000
      Left = 613.000000000000000000
      Top = 186.000000000000000000
      Width = 336.000000000000000000
    end
    object ListaAsistenciaRango: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 8.500000000000000000
      RightMargin = 8.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      PrintOnPreviousPage = True
      OnBeforePrint = 'ListaAsistenciaRangoOnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 22.677165350000000000
        Top = 275.905690000000000000
        Width = 991.748672000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 380.362282830000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 415.502241320000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          ShiftMode = smDontShift
          Left = 449.967678810000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 519.533766770000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Left = 727.839112920000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia11"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          ShiftMode = smDontShift
          Left = 41.574803150000000000
          Width = 178.771641340000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."Nombre"] [ds_ListaXRango."Apellido"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          ShiftMode = smDontShift
          Left = 938.456692910000000000
          Width = 49.133858270000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            
              '[<ds_ListaXRango."dia1">+<ds_ListaXRango."dia2">+<ds_ListaXRango' +
              '."dia3">+<ds_ListaXRango."dia4">+<ds_ListaXRango."dia5">+<ds_Lis' +
              'taXRango."dia6">+<ds_ListaXRango."dia7">+<ds_ListaXRango."dia8">' +
              '+<ds_ListaXRango."dia9">+<ds_ListaXRango."dia10">+<ds_ListaXRang' +
              'o."dia11">+<ds_ListaXRango."dia12">+<ds_ListaXRango."dia13">+<ds' +
              '_ListaXRango."dia14">+<ds_ListaXRango."dia15">+<ds_ListaXRango."' +
              'dia16">+<ds_ListaXRango."dia17">+<ds_ListaXRango."dia18">+<ds_Li' +
              'staXRango."dia19">+<ds_ListaXRango."dia20">+<ds_ListaXRango."dia' +
              '21">+<ds_ListaXRango."dia22">+<ds_ListaXRango."dia23">+<ds_Lista' +
              'XRango."dia24">+<ds_ListaXRango."dia25">+<ds_ListaXRango."dia26"' +
              '>+<ds_ListaXRango."dia27">+<ds_ListaXRango."dia28">+<ds_ListaXRa' +
              'ngo."dia29">+<ds_ListaXRango."dia30">+<ds_ListaXRango."dia31">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Left = 485.487443580000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Left = 693.262350760000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia10"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          ShiftMode = smDontShift
          Left = 658.685588590000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia9"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 903.307670000000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          ShiftMode = smDontShift
          Left = 868.660835180000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 833.455404600000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia14"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          ShiftMode = smDontShift
          Left = 798.289265820000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia13"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 763.044543480000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia12"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          ShiftMode = smDontShift
          Left = 623.480158030000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 589.532064260000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 554.870169930000000000
          Width = 34.576762160000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."dia6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          ShiftMode = smDontShift
          Left = 220.724409450000000000
          Width = 159.873991340000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."titulocargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          ShiftMode = smDontShift
          Width = 41.574815350000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[ds_ListaXRango."IdEmpleado"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 34.015770000000000000
        Top = 381.732530000000000000
        Width = 991.748672000000000000
        object Memo45: TfrxMemoView
          Left = 266.275510000000000000
          Top = 14.370130000000000000
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
        object Memo50: TfrxMemoView
          Top = 6.811070000000000000
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
        object Memo6: TfrxMemoView
          Left = 302.850340000000000000
          Top = 4.692950000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
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
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 991.748672000000000000
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 185.196970000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionRH
          DataSetName = 'frxDBConfiguracionRH'
          KeepAspectRatio = False
          HightQuality = False
        end
        object Memo80: TfrxMemoView
          Left = 79.370130000000000000
          Top = 45.354360000000000000
          Width = 903.307670000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = connection.frxDBConfiguracionRH
          DataSetName = 'frxDBConfiguracionRH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<contrato."mDescripcion">]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          ShiftMode = smDontShift
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 71.811055350000000000
          Height = 26.456700240000000000
          ShowHint = False
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            'OBRA:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          ShiftMode = smDontShift
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 71.811055350000000000
          Height = 22.677170240000000000
          ShowHint = False
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            'CONTRATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 75.590600000000000000
          Top = 71.811070000000000000
          Width = 264.567085350000000000
          Height = 22.677170240000000000
          ShowHint = False
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[<frxDBConfiguracionRH."sNombre">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 185.196955350000000000
          Height = 22.677170240000000000
          ShowHint = False
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            'PERIODO LABORADO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 188.976500000000000000
          Top = 94.488250000000000000
          Width = 340.157685350000000000
          Height = 22.677170240000000000
          ShowHint = False
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            ' DEL [FECHAI] AL [FECHAF]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 907.087200000000000000
          Top = 94.488250000000000000
          Width = 71.811055350000000000
          Height = 22.677170240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          DisplayFormat.FormatStr = '%2.n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            'NOMINA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 56.681693440000000000
        Top = 196.535560000000000000
        Width = 991.748672000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'ds_ListaXRango."titulodepartamento"'
        ReprintOnNewPage = True
        StartNewPage = True
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 938.635168820000000000
          Top = 18.716640400000000000
          Width = 49.105374330000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            'DIAS LAB.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          ShiftMode = smDontShift
          Left = 519.307086610000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo104OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          ShiftMode = smDontShift
          Left = 485.291338580000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo103OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          ShiftMode = smDontShift
          Left = 450.141732280000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo102OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          ShiftMode = smDontShift
          Left = 415.370078740000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo101OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          ShiftMode = smDontShift
          Left = 380.598425200000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo100OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Left = 41.574795830000000000
          Top = 0.047231890000000000
          Width = 178.771660870000000000
          Height = 37.784043440000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Top = 0.047231890000000000
          Width = 41.574803150000000000
          Height = 37.784043440000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          ShiftMode = smDontShift
          Left = 903.307086610000000000
          Top = 18.897650000000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo21OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          ShiftMode = smDontShift
          Left = 868.535433070000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo113OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          ShiftMode = smDontShift
          Left = 833.396347180000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo114OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          ShiftMode = smDontShift
          Left = 798.387548040000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo112OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          ShiftMode = smDontShift
          Left = 763.086614170000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo111OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          ShiftMode = smDontShift
          Left = 623.244094490000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo107OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          ShiftMode = smDontShift
          Left = 589.606299210000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo106OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          ShiftMode = smDontShift
          Left = 554.834645670000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo105OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Top = 37.795300000000000000
          Width = 987.590551180000000000
          Height = 18.886393440000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ds_ListaXRango."titulodepartamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 938.456692910000000000
          Width = 49.105374330000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 519.307086610000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 485.291338580000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 450.213725320000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Left = 415.370078740000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 903.307086610000000000
          Top = 0.181009600000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Left = 868.535433070000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 833.385826770000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          ShiftMode = smDontShift
          Left = 798.236220470000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Left = 763.225156480000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          ShiftMode = smDontShift
          Left = 623.244094490000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          ShiftMode = smDontShift
          Left = 589.606299210000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 554.834645670000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 380.732530000000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Left = 220.724409450000000000
          Width = 159.874010870000000000
          Height = 37.784043440000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CATEGORIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          ShiftMode = smDontShift
          Left = 727.937007870000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo110OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          ShiftMode = smDontShift
          Left = 693.165354330000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo109OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          ShiftMode = smDontShift
          Left = 658.771653540000000000
          Top = 18.897637800000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo108OnBeforePrint'
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 727.937007870000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Left = 693.165354330000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 658.846523230000000000
          Top = 0.180997400000000000
          Width = 34.576762160000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 16700346
          DataSet = ds_ListaXRango
          DataSetName = 'ds_ListaXRango'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 321.260050000000000000
        Width = 991.748672000000000000
      end
      object Memo49: TfrxMemoView
        ShiftMode = smDontShift
        Left = 381.732530000000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia1"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo53: TfrxMemoView
        ShiftMode = smDontShift
        Left = 416.872488490000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia2"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo54: TfrxMemoView
        ShiftMode = smDontShift
        Left = 451.337925980000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia3"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo55: TfrxMemoView
        ShiftMode = smDontShift
        Left = 520.904013940000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia5"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo56: TfrxMemoView
        ShiftMode = smDontShift
        Left = 729.209360090000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia11"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo57: TfrxMemoView
        ShiftMode = smDontShift
        Left = 486.857690750000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia4"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo58: TfrxMemoView
        ShiftMode = smDontShift
        Left = 694.632597930000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia10"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo59: TfrxMemoView
        ShiftMode = smDontShift
        Left = 660.055835760000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia9"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo60: TfrxMemoView
        ShiftMode = smDontShift
        Left = 904.677917170000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo61: TfrxMemoView
        ShiftMode = smDontShift
        Left = 870.031082350000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia15"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo62: TfrxMemoView
        ShiftMode = smDontShift
        Left = 834.825651770000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia14"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo63: TfrxMemoView
        ShiftMode = smDontShift
        Left = 799.659512990000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia13"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo64: TfrxMemoView
        ShiftMode = smDontShift
        Left = 764.414790650000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia12"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo65: TfrxMemoView
        ShiftMode = smDontShift
        Left = 624.850405200000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia8"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo66: TfrxMemoView
        ShiftMode = smDontShift
        Left = 590.902311430000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia7"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo67: TfrxMemoView
        ShiftMode = smDontShift
        Left = 556.240417100000000000
        Top = 325.039580000000000000
        Width = 34.576762160000000000
        Height = 22.677170240000000000
        ShowHint = False
        StretchMode = smMaxHeight
        Color = clWhite
        DataSet = ds_ListaXRango
        DataSetName = 'ds_ListaXRango'
        DisplayFormat.FormatStr = '%g'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8 = (
          '[ds_ListaXRango."dia6"]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object ds_ListaXRango: TfrxDBDataset
    UserName = 'ds_ListaXRango'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdEmpleado=IdEmpleado'
      'Nombre=Nombre'
      'Apellido=Apellido'
      'mes=mes'
      'anio=anio'
      'dia1=dia1'
      'dia2=dia2'
      'dia3=dia3'
      'dia4=dia4'
      'dia5=dia5'
      'dia6=dia6'
      'dia7=dia7'
      'dia8=dia8'
      'dia9=dia9'
      'dia10=dia10'
      'dia11=dia11'
      'dia12=dia12'
      'dia13=dia13'
      'dia14=dia14'
      'dia15=dia15'
      'dia16=dia16'
      'dia17=dia17'
      'dia18=dia18'
      'dia19=dia19'
      'dia20=dia20'
      'dia21=dia21'
      'dia22=dia22'
      'dia23=dia23'
      'dia24=dia24'
      'dia25=dia25'
      'dia26=dia26'
      'dia27=dia27'
      'dia28=dia28'
      'dia29=dia29'
      'dia30=dia30'
      'dia31=dia31'
      'diaest1=diaest1'
      'diaest2=diaest2'
      'diaest3=diaest3'
      'diaest4=diaest4'
      'diaest5=diaest5'
      'diaest6=diaest6'
      'diaest7=diaest7'
      'diaest8=diaest8'
      'diaest9=diaest9'
      'diaest10=diaest10'
      'diaest11=diaest11'
      'diaest12=diaest12'
      'diaest13=diaest13'
      'diaest14=diaest14'
      'diaest15=diaest15'
      'diaest16=diaest16'
      'diaest17=diaest17'
      'diaest18=diaest18'
      'diaest19=diaest19'
      'diaest20=diaest20'
      'diaest21=diaest21'
      'diaest22=diaest22'
      'diaest23=diaest23'
      'diaest24=diaest24'
      'diaest25=diaest25'
      'diaest26=diaest26'
      'diaest27=diaest27'
      'diaest28=diaest28'
      'diaest29=diaest29'
      'diaest30=diaest30'
      'diaest31=diaest31'
      'asistencias=asistencias'
      'faltas=faltas'
      'aux1=aux1'
      'aux2=aux2'
      'aux3=aux3'
      'aux4=aux4'
      'aux5=aux5'
      'aux6=aux6'
      'aux7=aux7'
      'aux8=aux8'
      'aux9=aux9'
      'aux10=aux10'
      'aux11=aux11'
      'aux12=aux12'
      'aux13=aux13'
      'aux14=aux14'
      'aux15=aux15'
      'aux16=aux16'
      'aux17=aux17'
      'aux18=aux18'
      'aux19=aux19'
      'aux20=aux20'
      'aux21=aux21'
      'aux22=aux22'
      'aux23=aux23'
      'aux24=aux24'
      'aux25=aux25'
      'aux26=aux26'
      'aux27=aux27'
      'aux28=aux28'
      'aux29=aux29'
      'aux30=aux30'
      'aux31=aux31'
      'diact1=diact1'
      'diact2=diact2'
      'diact3=diact3'
      'diact4=diact4'
      'diact5=diact5'
      'diact6=diact6'
      'diact7=diact7'
      'diact8=diact8'
      'diact9=diact9'
      'diact10=diact10'
      'diact11=diact11'
      'diact12=diact12'
      'diact13=diact13'
      'diact14=diact14'
      'diact15=diact15'
      'diact16=diact16'
      'diact17=diact17'
      'diact18=diact18'
      'diact19=diact19'
      'diact20=diact20'
      'diact21=diact21'
      'diact22=diact22'
      'diact23=diact23'
      'diact24=diact24'
      'diact25=diact25'
      'diact26=diact26'
      'diact27=diact27'
      'diact28=diact28'
      'diact29=diact29'
      'diact30=diact30'
      'diact31=diact31'
      'categoria=categoria'
      'titulocargo=titulocargo'
      'titulodepartamento=titulodepartamento'
      'Fecha1=Fecha1'
      'Fecha2=Fecha2'
      'Fecha3=Fecha3'
      'Fecha4=Fecha4'
      'Fecha5=Fecha5'
      'Fecha6=Fecha6'
      'Fecha7=Fecha7'
      'Fecha8=Fecha8'
      'Fecha9=Fecha9'
      'Fecha10=Fecha10'
      'Fecha11=Fecha11'
      'Fecha13=Fecha13'
      'Fecha12=Fecha12'
      'Fecha14=Fecha14'
      'Fecha15=Fecha15'
      'Fecha16=Fecha16')
    DataSet = zQListaXRango
    BCDToCurrency = False
    Left = 608
    Top = 312
  end
  object zQListaXRango: TRxMemoryData
    FieldDefs = <
      item
        Name = 'IdEmpleado'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'Apellido'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'mes'
        DataType = ftInteger
      end
      item
        Name = 'anio'
        DataType = ftInteger
      end
      item
        Name = 'dia1'
        DataType = ftFloat
      end
      item
        Name = 'dia2'
        DataType = ftFloat
      end
      item
        Name = 'dia3'
        DataType = ftFloat
      end
      item
        Name = 'dia4'
        DataType = ftFloat
      end
      item
        Name = 'dia5'
        DataType = ftFloat
      end
      item
        Name = 'dia6'
        DataType = ftFloat
      end
      item
        Name = 'dia7'
        DataType = ftFloat
      end
      item
        Name = 'dia8'
        DataType = ftFloat
      end
      item
        Name = 'dia9'
        DataType = ftFloat
      end
      item
        Name = 'dia10'
        DataType = ftFloat
      end
      item
        Name = 'dia11'
        DataType = ftFloat
      end
      item
        Name = 'dia12'
        DataType = ftFloat
      end
      item
        Name = 'dia13'
        DataType = ftFloat
      end
      item
        Name = 'dia14'
        DataType = ftFloat
      end
      item
        Name = 'dia15'
        DataType = ftFloat
      end
      item
        Name = 'dia16'
        DataType = ftFloat
      end
      item
        Name = 'dia17'
        DataType = ftFloat
      end
      item
        Name = 'dia18'
        DataType = ftFloat
      end
      item
        Name = 'dia19'
        DataType = ftFloat
      end
      item
        Name = 'dia20'
        DataType = ftFloat
      end
      item
        Name = 'dia21'
        DataType = ftFloat
      end
      item
        Name = 'dia22'
        DataType = ftFloat
      end
      item
        Name = 'dia23'
        DataType = ftFloat
      end
      item
        Name = 'dia24'
        DataType = ftFloat
      end
      item
        Name = 'dia25'
        DataType = ftFloat
      end
      item
        Name = 'dia26'
        DataType = ftFloat
      end
      item
        Name = 'dia27'
        DataType = ftFloat
      end
      item
        Name = 'dia28'
        DataType = ftFloat
      end
      item
        Name = 'dia29'
        DataType = ftFloat
      end
      item
        Name = 'dia30'
        DataType = ftFloat
      end
      item
        Name = 'dia31'
        DataType = ftFloat
      end
      item
        Name = 'diaest1'
        DataType = ftVariant
      end
      item
        Name = 'diaest2'
        DataType = ftVariant
      end
      item
        Name = 'diaest3'
        DataType = ftVariant
      end
      item
        Name = 'diaest4'
        DataType = ftVariant
      end
      item
        Name = 'diaest5'
        DataType = ftVariant
      end
      item
        Name = 'diaest6'
        DataType = ftVariant
      end
      item
        Name = 'diaest7'
        DataType = ftVariant
      end
      item
        Name = 'diaest8'
        DataType = ftVariant
      end
      item
        Name = 'diaest9'
        DataType = ftVariant
      end
      item
        Name = 'diaest10'
        DataType = ftVariant
      end
      item
        Name = 'diaest11'
        DataType = ftVariant
      end
      item
        Name = 'diaest12'
        DataType = ftVariant
      end
      item
        Name = 'diaest13'
        DataType = ftVariant
      end
      item
        Name = 'diaest14'
        DataType = ftVariant
      end
      item
        Name = 'diaest15'
        DataType = ftVariant
      end
      item
        Name = 'diaest16'
        DataType = ftVariant
      end
      item
        Name = 'diaest17'
        DataType = ftVariant
      end
      item
        Name = 'diaest18'
        DataType = ftVariant
      end
      item
        Name = 'diaest19'
        DataType = ftVariant
      end
      item
        Name = 'diaest20'
        DataType = ftVariant
      end
      item
        Name = 'diaest21'
        DataType = ftVariant
      end
      item
        Name = 'diaest22'
        DataType = ftVariant
      end
      item
        Name = 'diaest23'
        DataType = ftVariant
      end
      item
        Name = 'diaest24'
        DataType = ftVariant
      end
      item
        Name = 'diaest25'
        DataType = ftVariant
      end
      item
        Name = 'diaest26'
        DataType = ftVariant
      end
      item
        Name = 'diaest27'
        DataType = ftVariant
      end
      item
        Name = 'diaest28'
        DataType = ftVariant
      end
      item
        Name = 'diaest29'
        DataType = ftVariant
      end
      item
        Name = 'diaest30'
        DataType = ftVariant
      end
      item
        Name = 'diaest31'
        DataType = ftVariant
      end
      item
        Name = 'asistencias'
        DataType = ftInteger
      end
      item
        Name = 'faltas'
        DataType = ftInteger
      end
      item
        Name = 'aux1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux10'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux11'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux12'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux13'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux14'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux15'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux16'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux17'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux18'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux19'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux20'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux21'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux22'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux23'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux24'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux25'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux26'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux27'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux28'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux29'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux30'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'aux31'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'diact1'
        DataType = ftVariant
      end
      item
        Name = 'diact2'
        DataType = ftVariant
      end
      item
        Name = 'diact3'
        DataType = ftVariant
      end
      item
        Name = 'diact4'
        DataType = ftVariant
      end
      item
        Name = 'diact5'
        DataType = ftVariant
      end
      item
        Name = 'diact6'
        DataType = ftVariant
      end
      item
        Name = 'diact7'
        DataType = ftVariant
      end
      item
        Name = 'diact8'
        DataType = ftVariant
      end
      item
        Name = 'diact9'
        DataType = ftVariant
      end
      item
        Name = 'diact10'
        DataType = ftVariant
      end
      item
        Name = 'diact11'
        DataType = ftVariant
      end
      item
        Name = 'diact12'
        DataType = ftVariant
      end
      item
        Name = 'diact13'
        DataType = ftVariant
      end
      item
        Name = 'diact14'
        DataType = ftVariant
      end
      item
        Name = 'diact15'
        DataType = ftVariant
      end
      item
        Name = 'diact16'
        DataType = ftVariant
      end
      item
        Name = 'diact17'
        DataType = ftVariant
      end
      item
        Name = 'diact18'
        DataType = ftVariant
      end
      item
        Name = 'diact19'
        DataType = ftVariant
      end
      item
        Name = 'diact20'
        DataType = ftVariant
      end
      item
        Name = 'diact21'
        DataType = ftVariant
      end
      item
        Name = 'diact22'
        DataType = ftVariant
      end
      item
        Name = 'diact23'
        DataType = ftVariant
      end
      item
        Name = 'diact24'
        DataType = ftVariant
      end
      item
        Name = 'diact25'
        DataType = ftVariant
      end
      item
        Name = 'diact26'
        DataType = ftVariant
      end
      item
        Name = 'diact27'
        DataType = ftVariant
      end
      item
        Name = 'diact28'
        DataType = ftVariant
      end
      item
        Name = 'diact29'
        DataType = ftVariant
      end
      item
        Name = 'diact30'
        DataType = ftVariant
      end
      item
        Name = 'diact31'
        DataType = ftVariant
      end
      item
        Name = 'categoria'
        DataType = ftString
        Size = 20
      end>
    Left = 576
    Top = 312
    object zQListaXRangoIdEmpleado: TStringField
      FieldName = 'IdEmpleado'
    end
    object zQListaXRangoNombre: TStringField
      FieldName = 'Nombre'
      Size = 300
    end
    object zqzQListaXRangoApellido: TStringField
      FieldName = 'Apellido'
    end
    object zQListaXRangomes: TIntegerField
      FieldName = 'mes'
    end
    object zQListaXRangoanio: TIntegerField
      FieldName = 'anio'
    end
    object fltfldzQListaXRangodia1: TFloatField
      FieldName = 'dia1'
    end
    object fltfldzQListaXRangodia2: TFloatField
      FieldName = 'dia2'
    end
    object fltfldzQListaXRangodia3: TFloatField
      FieldName = 'dia3'
    end
    object fltfldzQListaXRangodia4: TFloatField
      FieldName = 'dia4'
    end
    object fltfldzQListaXRangodia5: TFloatField
      FieldName = 'dia5'
    end
    object fltfldzQListaXRangodia6: TFloatField
      FieldName = 'dia6'
    end
    object fltfldzQListaXRangodia7: TFloatField
      FieldName = 'dia7'
    end
    object fltfldzQListaXRangodia8: TFloatField
      FieldName = 'dia8'
    end
    object fltfldzQListaXRangodia9: TFloatField
      FieldName = 'dia9'
    end
    object fltfldzQListaXRangodia10: TFloatField
      FieldName = 'dia10'
    end
    object fltfldzQListaXRangodia11: TFloatField
      FieldName = 'dia11'
    end
    object fltfldzQListaXRangodia12: TFloatField
      FieldName = 'dia12'
    end
    object fltfldzQListaXRangodia13: TFloatField
      FieldName = 'dia13'
    end
    object fltfldzQListaXRangodia14: TFloatField
      FieldName = 'dia14'
    end
    object fltfldzQListaXRangodia15: TFloatField
      FieldName = 'dia15'
    end
    object fltfldzQListaXRangodia16: TFloatField
      FieldName = 'dia16'
    end
    object fltfldzQListaXRangodia17: TFloatField
      FieldName = 'dia17'
    end
    object fltfldzQListaXRangodia18: TFloatField
      FieldName = 'dia18'
    end
    object fltfldzQListaXRangodia19: TFloatField
      FieldName = 'dia19'
    end
    object fltfldzQListaXRangodia20: TFloatField
      FieldName = 'dia20'
    end
    object fltfldzQListaXRangodia21: TFloatField
      FieldName = 'dia21'
    end
    object fltfldzQListaXRangodia22: TFloatField
      FieldName = 'dia22'
    end
    object fltfldzQListaXRangodia23: TFloatField
      FieldName = 'dia23'
    end
    object fltfldzQListaXRangodia24: TFloatField
      FieldName = 'dia24'
    end
    object fltfldzQListaXRangodia25: TFloatField
      FieldName = 'dia25'
    end
    object fltfldzQListaXRangodia26: TFloatField
      FieldName = 'dia26'
    end
    object fltfldzQListaXRangodia27: TFloatField
      FieldName = 'dia27'
    end
    object fltfldzQListaXRangodia28: TFloatField
      FieldName = 'dia28'
    end
    object fltfldzQListaXRangodia29: TFloatField
      FieldName = 'dia29'
    end
    object fltfldzQListaXRangodia30: TFloatField
      FieldName = 'dia30'
    end
    object fltfldzQListaXRangodia31: TFloatField
      FieldName = 'dia31'
    end
    object zQListaXRangodiaest1: TVariantField
      FieldName = 'diaest1'
    end
    object zQListaXRangodiaest2: TVariantField
      FieldName = 'diaest2'
    end
    object zQListaXRangodiaest3: TVariantField
      FieldName = 'diaest3'
    end
    object zQListaXRangodiaest4: TVariantField
      FieldName = 'diaest4'
    end
    object zQListaXRangodiaest5: TVariantField
      FieldName = 'diaest5'
    end
    object zQListaXRangodiaest6: TVariantField
      FieldName = 'diaest6'
    end
    object zQListaXRangodiaest7: TVariantField
      FieldName = 'diaest7'
    end
    object zQListaXRangodiaest8: TVariantField
      FieldName = 'diaest8'
    end
    object zQListaXRangodiaest9: TVariantField
      FieldName = 'diaest9'
    end
    object zQListaXRangodiaest10: TVariantField
      FieldName = 'diaest10'
    end
    object zQListaXRangodiaest11: TVariantField
      FieldName = 'diaest11'
    end
    object zQListaXRangodiaest12: TVariantField
      FieldName = 'diaest12'
    end
    object zQListaXRangodiaest13: TVariantField
      FieldName = 'diaest13'
    end
    object zQListaXRangodiaest14: TVariantField
      FieldName = 'diaest14'
    end
    object zQListaXRangodiaest15: TVariantField
      FieldName = 'diaest15'
    end
    object zQListaXRangodiaest16: TVariantField
      FieldName = 'diaest16'
    end
    object zQListaXRangodiaest17: TVariantField
      FieldName = 'diaest17'
    end
    object zQListaXRangodiaest18: TVariantField
      FieldName = 'diaest18'
    end
    object zQListaXRangodiaest19: TVariantField
      FieldName = 'diaest19'
    end
    object zQListaXRangodiaest20: TVariantField
      FieldName = 'diaest20'
    end
    object zQListaXRangodiaest21: TVariantField
      FieldName = 'diaest21'
    end
    object zQListaXRangodiaest22: TVariantField
      FieldName = 'diaest22'
    end
    object zQListaXRangodiaest23: TVariantField
      FieldName = 'diaest23'
    end
    object zQListaXRangodiaest24: TVariantField
      FieldName = 'diaest24'
    end
    object zQListaXRangodiaest25: TVariantField
      FieldName = 'diaest25'
    end
    object zQListaXRangodiaest26: TVariantField
      FieldName = 'diaest26'
    end
    object zQListaXRangodiaest27: TVariantField
      FieldName = 'diaest27'
    end
    object zQListaXRangodiaest28: TVariantField
      FieldName = 'diaest28'
    end
    object zQListaXRangodiaest29: TVariantField
      FieldName = 'diaest29'
    end
    object zQListaXRangodiaest30: TVariantField
      FieldName = 'diaest30'
    end
    object zQListaXRangodiaest31: TVariantField
      FieldName = 'diaest31'
    end
    object zQListaXRangoasistencias: TIntegerField
      FieldName = 'asistencias'
    end
    object zQListaXRangofaltas: TIntegerField
      FieldName = 'faltas'
    end
    object zQListaXRangoaux1: TStringField
      FieldName = 'aux1'
    end
    object zQListaXRangoaux2: TStringField
      FieldName = 'aux2'
    end
    object zQListaXRangoaux3: TStringField
      FieldName = 'aux3'
    end
    object zQListaXRangoaux4: TStringField
      FieldName = 'aux4'
    end
    object zQListaXRangoaux5: TStringField
      FieldName = 'aux5'
    end
    object zQListaXRangoaux6: TStringField
      FieldName = 'aux6'
    end
    object zQListaXRangoaux7: TStringField
      FieldName = 'aux7'
    end
    object zQListaXRangoaux8: TStringField
      FieldName = 'aux8'
    end
    object zQListaXRangoaux9: TStringField
      FieldName = 'aux9'
    end
    object zQListaXRangoaux10: TStringField
      FieldName = 'aux10'
    end
    object zQListaXRangoaux11: TStringField
      FieldName = 'aux11'
    end
    object zQListaXRangoaux12: TStringField
      FieldName = 'aux12'
    end
    object zQListaXRangoaux13: TStringField
      FieldName = 'aux13'
    end
    object zQListaXRangoaux14: TStringField
      FieldName = 'aux14'
    end
    object zQListaXRangoaux15: TStringField
      FieldName = 'aux15'
    end
    object zQListaXRangoaux16: TStringField
      FieldName = 'aux16'
    end
    object zQListaXRangoaux17: TStringField
      FieldName = 'aux17'
    end
    object zQListaXRangoaux18: TStringField
      FieldName = 'aux18'
    end
    object zQListaXRangoaux19: TStringField
      FieldName = 'aux19'
      Size = 0
    end
    object zQListaXRangoaux20: TStringField
      FieldName = 'aux20'
    end
    object zQListaXRangoaux21: TStringField
      FieldName = 'aux21'
    end
    object zQListaXRangoaux22: TStringField
      FieldName = 'aux22'
    end
    object zQListaXRangoaux23: TStringField
      FieldName = 'aux23'
    end
    object zQListaXRangoaux24: TStringField
      FieldName = 'aux24'
    end
    object zQListaXRangoaux25: TStringField
      FieldName = 'aux25'
    end
    object zQListaXRangoaux26: TStringField
      FieldName = 'aux26'
    end
    object zQListaXRangoaux27: TStringField
      FieldName = 'aux27'
    end
    object zQListaXRangoaux28: TStringField
      FieldName = 'aux28'
    end
    object zQListaXRangoaux29: TStringField
      FieldName = 'aux29'
    end
    object zQListaXRangoaux30: TStringField
      FieldName = 'aux30'
    end
    object zQListaXRangoaux31: TStringField
      FieldName = 'aux31'
    end
    object zQListaXRangodiact1: TVariantField
      FieldName = 'diact1'
    end
    object zQListaXRangodiact2: TVariantField
      FieldName = 'diact2'
    end
    object zQListaXRangodiact3: TVariantField
      FieldName = 'diact3'
    end
    object zQListaXRangodiact4: TVariantField
      FieldName = 'diact4'
    end
    object zQListaXRangodiact5: TVariantField
      FieldName = 'diact5'
    end
    object zQListaXRangodiact6: TVariantField
      FieldName = 'diact6'
    end
    object zQListaXRangodiact7: TVariantField
      FieldName = 'diact7'
    end
    object zQListaXRangodiact8: TVariantField
      FieldName = 'diact8'
    end
    object zQListaXRangodiact9: TVariantField
      FieldName = 'diact9'
    end
    object zQListaXRangodiact10: TVariantField
      FieldName = 'diact10'
    end
    object zQListaXRangodiact11: TVariantField
      FieldName = 'diact11'
    end
    object zQListaXRangodiact12: TVariantField
      FieldName = 'diact12'
    end
    object zQListaXRangodiact13: TVariantField
      FieldName = 'diact13'
    end
    object zQListaXRangodiact14: TVariantField
      FieldName = 'diact14'
    end
    object zQListaXRangodiact15: TVariantField
      FieldName = 'diact15'
    end
    object zQListaXRangodiact16: TVariantField
      FieldName = 'diact16'
    end
    object zQListaXRangodiact17: TVariantField
      FieldName = 'diact17'
    end
    object zQListaXRangodiact18: TVariantField
      FieldName = 'diact18'
    end
    object zQListaXRangodiact19: TVariantField
      FieldName = 'diact19'
    end
    object zQListaXRangodiact20: TVariantField
      FieldName = 'diact20'
    end
    object zQListaXRangodaict21: TVariantField
      FieldName = 'diact21'
    end
    object zQListaXRangodiact22: TVariantField
      FieldName = 'diact22'
    end
    object zQListaXRangodiact23: TVariantField
      FieldName = 'diact23'
    end
    object zQListaXRangodiact24: TVariantField
      FieldName = 'diact24'
    end
    object zQListaXRangodiact25: TVariantField
      FieldName = 'diact25'
    end
    object zQListaXRangodiact26: TVariantField
      FieldName = 'diact26'
    end
    object zQListaXRangodiact27: TVariantField
      FieldName = 'diact27'
    end
    object zQListaXRangodiact28: TVariantField
      FieldName = 'diact28'
    end
    object zQListaXRangodiact29: TVariantField
      FieldName = 'diact29'
    end
    object zQListaXRangodiact30: TVariantField
      FieldName = 'diact30'
    end
    object zQListaXRangodiact31: TVariantField
      FieldName = 'diact31'
    end
    object zqzQListaXRangocategoria: TStringField
      FieldName = 'categoria'
    end
    object zQListaXRangotitulocargo: TStringField
      FieldName = 'titulocargo'
      Size = 200
    end
    object zQListaXRangotitulodepartamento: TStringField
      FieldName = 'titulodepartamento'
      Size = 200
    end
    object zQListaXRangoFecha1: TDateField
      FieldName = 'Fecha1'
    end
    object zQListaXRangoFecha2: TDateField
      FieldName = 'Fecha2'
    end
    object zQListaXRangoFecha3: TDateField
      FieldName = 'Fecha3'
    end
    object zQListaXRangoFecha4: TDateField
      FieldName = 'Fecha4'
    end
    object zQListaXRangoFecha5: TDateField
      FieldName = 'Fecha5'
    end
    object zQListaXRangoFecha6: TDateField
      FieldName = 'Fecha6'
    end
    object zQListaXRangoFecha7: TDateField
      FieldName = 'Fecha7'
    end
    object zQListaXRangoFecha8: TDateField
      FieldName = 'Fecha8'
    end
    object zQListaXRangoFecha9: TDateField
      FieldName = 'Fecha9'
    end
    object zQListaXRangoFecha10: TDateField
      FieldName = 'Fecha10'
    end
    object zQListaXRangoFecha11: TDateField
      FieldName = 'Fecha11'
    end
    object zQListaXRangoFecha13: TDateField
      FieldName = 'Fecha13'
    end
    object zQListaXRangoFecha12: TDateField
      FieldName = 'Fecha12'
    end
    object zQListaXRangoFecha14: TDateField
      FieldName = 'Fecha14'
    end
    object zQListaXRangoFecha15: TDateField
      FieldName = 'Fecha15'
    end
    object zQListaXRangoFecha16: TDateField
      FieldName = 'Fecha16'
    end
  end
  object frxEstDiarioEmp: TfrxDBDataset
    UserName = 'frxEstDiarioEmp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iIdEstatusDiario=iIdEstatusDiario'
      'sDescripcion=sDescripcion'
      'iColor=iColor')
    DataSet = ZQEstDiarioEmp
    BCDToCurrency = False
    Left = 760
    Top = 224
  end
  object ZQEstDiarioEmp: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from rh_estatusdiarioempleados')
    Params = <>
    Left = 144
    Top = 39
    object ZQEstDiarioEmpiIdEstatusDiario: TIntegerField
      FieldName = 'iIdEstatusDiario'
    end
    object ZQEstDiarioEmpsDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 25
    end
    object ZQEstDiarioEmpiColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
  end
  object DsEstDiarioEmp: TDataSource
    DataSet = ZQEstDiarioEmp
    Left = 192
    Top = 48
  end
  object ZQImpDatosAnt: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT'
      ' em.sIdEmpleado, '
      ' em.sNombreCompleto, '
      ' em.sIdEmpleado, rs.salario, rs.titulosalario,'
      ' em.sApellidoPaterno, em.sApellidoMaterno,'
      ' ra.*, '
      ' IF(IFNULL(dFecha, '#39'True'#39'), '#39'Si'#39' , '#39'No'#39') AS Existe '
      'FROM rh_asistencia AS ra'
      
        'RIGHT JOIN empleados AS em ON (em.sIdEmpleado = ra.sIdEmpleado A' +
        'ND ra.dFecha =:fecha) '
      'INNER JOIN rhu_salario rs On (rs.IdSalario=em.iId_Puesto)'
      'WHERE '
      'em.lLabora = '#39'Si'#39' and'
      
        '(:iIdEstatusDiario = -1 or ( :iIdEstatusDiario <> -1 and ra.iIdE' +
        'statusDiario = :iIdEstatusDiario)) and'
      
        '(:sAsistencia = -1 or ( :sAsistencia <> -1 and ra.sAsistencia Li' +
        'ke :sAsistencia)) and'
      
        '(:sSalida = -1 or ( :sSalida <> -1 and time(ra.sSalida) <= time(' +
        ':sSalida))) and'
      
        '(:sEntrada = -1 or ( :sEntrada <> -1 and time(ra.sEntrada) >= ti' +
        'me(:sEntrada))) and'
      
        '(:sIdEmpleado = -1 or ( :sIdEmpleado <> -1 and em.sIdEmpleado Li' +
        'ke CONCAT("%"+:sIdEmpleado+"%"))) and'
      
        '(:sNombreCompleto = -1 or ( :sNombreCompleto <> -1 and em.sNombr' +
        'eCompleto Like concat("%", :sNombreCompleto, "%")))'
      'GROUP BY em.sIdEmpleado'
      'ORDER BY  em.sNombreCompleto;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdEstatusDiario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sAsistencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sSalida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEntrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdEmpleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNombreCompleto'
        ParamType = ptUnknown
      end>
    Left = 192
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdEstatusDiario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sAsistencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sSalida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEntrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdEmpleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNombreCompleto'
        ParamType = ptUnknown
      end>
    object zqZQImpDatosAntsIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Required = True
    end
    object zqZQImpDatosAntsNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object zqZQImpDatosAntsIdEmpleado_1: TStringField
      FieldName = 'sIdEmpleado_1'
      Required = True
    end
    object intgrfldZQImpDatosAntiIdListaAsistencia: TIntegerField
      FieldName = 'iIdListaAsistencia'
    end
    object zqZQImpDatosAntsIdEmpleado_2: TStringField
      FieldName = 'sIdEmpleado_2'
    end
    object dtfldZQImpDatosAntdFecha: TDateField
      FieldName = 'dFecha'
    end
    object zqZQImpDatosAntsAsistencia: TStringField
      FieldName = 'sAsistencia'
      Required = True
      Size = 2
    end
    object zqZQImpDatosAntsEntrada: TStringField
      FieldName = 'sEntrada'
      Size = 5
    end
    object zqZQImpDatosAntsSalida: TStringField
      FieldName = 'sSalida'
      Size = 5
    end
    object intgrfldZQImpDatosAntiIdEstatusDiario: TIntegerField
      FieldName = 'iIdEstatusDiario'
      Required = True
    end
    object zqZQImpDatosAntExiste: TStringField
      FieldName = 'Existe'
      ReadOnly = True
      Size = 2
    end
    object zqZQImpDatosAntsApellidoPaterno: TStringField
      FieldName = 'sApellidoPaterno'
      Size = 35
    end
    object zqZQImpDatosAntsApellidoMaterno: TStringField
      FieldName = 'sApellidoMaterno'
      Size = 35
    end
    object fltfldZQImpDatosAntsalario: TFloatField
      FieldName = 'salario'
      Required = True
    end
    object zqZQImpDatosAnttitulosalario: TStringField
      FieldName = 'titulosalario'
      Required = True
      Size = 145
    end
  end
  object zqrReporte: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT'
      ' em.sIdEmpleado, '
      ' em.sNombreCompleto,'
      ' em.sApellidoPaterno,'
      
        ' em.sApellidoMaterno, SUM(rs.salario) as sumtotal, rs.titulosala' +
        'rio,'
      ' ra.*, '
      ' IF(IFNULL(dFecha, '#39'True'#39'), '#39'Si'#39' , '#39'No'#39') AS Existe '
      'FROM rh_asistencia AS ra'
      
        'INNER JOIN empleados AS em ON (em.sIdEmpleado = ra.sIdEmpleado A' +
        'ND ra.dFecha >=:fecha and ra.dFecha <=:fecha2) '
      'INNER JOIN nuc_cargo nc On (nc.IdCargo=em.iId_Puesto)'
      'INNER JOIN rhu_salario rs On (rs.idSalario=nc.IdSalario)'
      ''
      'WHERE '
      'ra.sAsistencia='#39'Si'#39' and em.lLabora = '#39'Si'#39' and'
      
        '(:iIdEstatusDiario = -1 or ( :iIdEstatusDiario <> -1 and ra.iIdE' +
        'statusDiario = :iIdEstatusDiario)) and'
      
        '(:sAsistencia = -1 or ( :sAsistencia <> -1 and ra.sAsistencia Li' +
        'ke :sAsistencia)) and'
      
        '(:sSalida = -1 or ( :sSalida <> -1 and time(ra.sSalida) <= time(' +
        ':sSalida))) and'
      
        '(:sEntrada = -1 or ( :sEntrada <> -1 and time(ra.sEntrada) >= ti' +
        'me(:sEntrada))) and'
      
        '(:sIdEmpleado = -1 or ( :sIdEmpleado <> -1 and em.sIdEmpleado Li' +
        'ke CONCAT("%"+:sIdEmpleado+"%"))) and'
      
        '(:sNombreCompleto = -1 or ( :sNombreCompleto <> -1 and em.sNombr' +
        'eCompleto Like concat("%", :sNombreCompleto, "%")))'
      'GROUP BY rs.titulosalario'
      'ORDER BY  em.sNombreCompleto;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdEstatusDiario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sAsistencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sSalida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEntrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdEmpleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNombreCompleto'
        ParamType = ptUnknown
      end>
    Left = 427
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iIdEstatusDiario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sAsistencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sSalida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sEntrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdEmpleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sNombreCompleto'
        ParamType = ptUnknown
      end>
    object zq1: TStringField
      FieldName = 'sIdEmpleado'
    end
    object zq2: TStringField
      FieldName = 'sNombreCompleto'
      Size = 50
    end
    object dtfld1: TDateField
      FieldName = 'dFecha'
    end
    object zq3: TStringField
      FieldName = 'sAsistencia'
      Size = 2
    end
    object intgrfld1: TIntegerField
      FieldName = 'iIdListaAsistencia'
    end
    object zq4: TStringField
      FieldName = 'sIdEmpleado_1'
      Size = 8
    end
    object zq5: TStringField
      FieldName = 'sEntrada'
      Size = 10
    end
    object zq6: TStringField
      FieldName = 'Existe'
      ReadOnly = True
      Size = 2
    end
    object zq7: TStringField
      FieldName = 'sSalida'
      Size = 5
    end
    object intgrfld2: TIntegerField
      FieldName = 'iIdEstatusDiario'
    end
    object zq8: TStringField
      FieldName = 'sApellidoPaterno'
      Size = 35
    end
    object zq9: TStringField
      FieldName = 'sApellidoMaterno'
      Size = 35
    end
    object zq10: TStringField
      FieldName = 'titulosalario'
      Required = True
      Size = 145
    end
    object fltfldzqrReportesumtotal: TFloatField
      FieldName = 'sumtotal'
      ReadOnly = True
    end
  end
  object frxlista2: TfrxDBDataset
    UserName = 'frxLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdEmpleado=sIdEmpleado'
      'sNombreCompleto=sNombreCompleto'
      'dFecha=dFecha'
      'sAsistencia=sAsistencia'
      'iIdListaAsistencia=iIdListaAsistencia'
      'sIdEmpleado_1=sIdEmpleado_1'
      'sEntrada=sEntrada'
      'Existe=Existe'
      'sSalida=sSalida'
      'iIdEstatusDiario=iIdEstatusDiario'
      'sApellidoPaterno=sApellidoPaterno'
      'sApellidoMaterno=sApellidoMaterno'
      'titulosalario=titulosalario'
      'salario=salario')
    DataSet = zqLista
    BCDToCurrency = False
    Left = 280
    Top = 290
  end
end
