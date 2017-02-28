object FrmProgramaDeSalud: TFrmProgramaDeSalud
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Programa de Salud'
  ClientHeight = 662
  ClientWidth = 1287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RibbonMenuPrincipal: TdxRibbon
    Left = 0
    Top = 0
    Width = 1287
    Height = 126
    BarManager = barManagerManagerProgramaDeSalud
    ColorSchemeName = 'Office2010Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    OnTabChanged = RibbonMenuPrincipalTabChanged
    object tdxFechasProgramadas: TdxRibbonTab
      Active = True
      Caption = 'Fechas Programadas'
      Groups = <
        item
          Caption = 'Programacion de Fechas'
          ToolbarName = 'dxToolBarManagerDocumentos1Bar'
        end
        item
        end
        item
          Caption = 'Marcar/Desmarcar Realizado'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar1'
        end>
      Index = 0
    end
    object tdxExamenMedico: TdxRibbonTab
      Caption = 'Ex'#225'men M'#233'dico'
      Groups = <
        item
          Caption = 'Opciones de Ex'#225'men M'#233'dico'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar2'
        end
        item
          Caption = 'Opciones de Cat'#225'logo'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar3'
        end>
      Index = 1
    end
    object tdxResumenGeneral: TdxRibbonTab
      Caption = 'Res'#250'men General'
      Groups = <
        item
          Caption = 'Opciones'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar4'
        end
        item
          Caption = 'Ver'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar13'
        end>
      Index = 2
    end
    object tdxDocumentosMedicos: TdxRibbonTab
      Caption = 'Documentos'
      Groups = <
        item
          Caption = 'Opciones de Documentos M'#233'dicos'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar5'
        end
        item
          Caption = 'Opciones de Cat'#225'logo'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar6'
        end>
      Index = 3
    end
    object tdxReportes: TdxRibbonTab
      Caption = 'Reportes'
      Groups = <
        item
          Caption = '&Opciones'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar11'
        end
        item
          Caption = 'Ex'#225'menes M'#233'dicos'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar12'
        end>
      Index = 4
    end
    object tdxVigencias: TdxRibbonTab
      Caption = 'Vigencia'
      Groups = <
        item
          Caption = 'Opciones de Vigencias'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar7'
        end
        item
          Caption = 'Avisos'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar9'
        end>
      Index = 5
    end
    object tdxHistorial: TdxRibbonTab
      Caption = 'Historial'
      Groups = <
        item
          Caption = 'Opciones'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar10'
        end>
      Index = 6
    end
    object tdxFirmantes: TdxRibbonTab
      Caption = 'Firmantes'
      Groups = <
        item
          Caption = 'Opciones'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar8'
        end>
      Index = 7
    end
    object tdxBajas: TdxRibbonTab
      Caption = 'Bajas'
      Groups = <
        item
          Caption = 'Ayuda'
          ToolbarName = 'dxToolBarManagerManagerProgramaDeSaludBar14'
        end>
      Index = 8
    end
  end
  object pageContenedorPrincipal: TcxPageControl
    Left = 0
    Top = 126
    Width = 1287
    Height = 536
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = pageFechasProgramadas
    Properties.CustomButtons.Buttons = <>
    Properties.TabPosition = tpBottom
    OnChange = pageContenedorPrincipalChange
    ClientRectBottom = 508
    ClientRectLeft = 2
    ClientRectRight = 1285
    ClientRectTop = 2
    object pageFechasProgramadas: TcxTabSheet
      Caption = 'Fechas Programadas'
      ImageIndex = 0
      object schedulerFechas: TcxScheduler
        AlignWithMargins = True
        Left = 456
        Top = 3
        Width = 824
        Height = 500
        DateNavigator.Visible = False
        ViewDay.TimeRulerPopupMenu.UseBuiltInPopupMenu = False
        ViewYear.Active = True
        ViewYear.MaxSelectedDaysCount = 1
        ViewYear.MonthHeaderPopupMenu.UseBuiltInPopupMenu = False
        Align = alClient
        ContentPopupMenu.UseBuiltInPopupMenu = False
        ContentPopupMenu.Items = []
        ControlBox.Visible = False
        DialogsLookAndFeel.NativeStyle = False
        DialogsLookAndFeel.SkinName = 'Office2007Black'
        Enabled = False
        EventOperations.Creating = False
        EventOperations.Deleting = False
        EventOperations.DialogEditing = False
        EventOperations.DialogShowing = False
        EventOperations.InplaceEditing = False
        EventOperations.Intersection = False
        EventOperations.MovingBetweenResources = False
        EventOperations.Moving = False
        EventOperations.Recurrence = False
        EventOperations.Sizing = False
        EventPopupMenu.UseBuiltInPopupMenu = False
        EventPopupMenu.Items = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013LightGray'
        OptionsView.DayBorderColor = clActiveCaption
        OptionsView.HideSelection = True
        OptionsView.ResourceHeaders.MultilineCaptions = True
        OptionsView.ShowNavigationButtons = False
        OptionsView.ViewPosition = vpRight
        OptionsView.WorkDays = [dSunday, dMonday, dTuesday, dWednesday, dThursday, dFriday, dSaturday]
        PopupMenu = popupScheduler
        Storage = storageScheduler
        TabOrder = 0
        OnClick = schedulerFechasClick
        Splitters = {
          0100000096000000A90000009B000000A900000001000000AE000000E8000000}
        StoredClientBounds = {010000000100000037030000F3010000}
      end
      object panelFechasEmpleados: TPanel
        Left = 459
        Top = 105
        Width = 845
        Height = 240
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object gridFechasEmpleados: TcxGrid
          Left = -3
          Top = -1
          Width = 824
          Height = 200
          TabOrder = 0
          object vistaFechasEmpleados: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsFechasEmpleados
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = 'Click aqu'#237' para definir un filtro'
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.Background = cxstylFondo
            object tcxFechasEmpleadosFicha: TcxGridDBColumn
              Caption = 'Ficha'
              DataBinding.FieldName = 'codigopersonal'
              Width = 112
            end
            object tcxFechasEmpleadosNombreCompleto: TcxGridDBColumn
              Caption = 'Nombre'
              DataBinding.FieldName = 'NombreCompleto'
              Width = 167
            end
            object tcxFechasEmpleadosPuesto: TcxGridDBColumn
              Caption = 'Puesto'
              DataBinding.FieldName = 'TituloCargo'
              Width = 187
            end
            object tcxFechasEmpleadosTelefono: TcxGridDBColumn
              Caption = 'Tel'#233'fono'
              DataBinding.FieldName = 'telefono'
              Width = 90
            end
            object tcxFechasEmpleadosPlataforma: TcxGridDBColumn
              Caption = 'Plataforma'
              DataBinding.FieldName = 'plataforma'
              Width = 149
            end
            object tcxFechasEmpleadosEstatus: TcxGridDBColumn
              DataBinding.FieldName = 'Status'
              Width = 117
            end
          end
          object nivelFechasEmpleados: TcxGridLevel
            GridView = vistaFechasEmpleados
          end
        end
      end
      object panel6: TPanel
        Left = 0
        Top = 0
        Width = 445
        Height = 506
        Margins.Top = 30
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object panel7: TPanel
          Left = 0
          Top = 398
          Width = 445
          Height = 108
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object panel4: TPanel
            Left = 0
            Top = 6
            Width = 448
            Height = 15
            Alignment = taLeftJustify
            Caption = 'Otros Datos del Personal'
            Color = clActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object lblcxlbl1: TcxLabel
            Left = 9
            Top = 27
            Caption = 'Tel'#233'fono:'
            ParentFont = False
            Transparent = True
          end
          object lblcxlbl2: TcxLabel
            Left = 9
            Top = 48
            Caption = 'Grupo Sangu'#237'neo:'
            ParentFont = False
            Transparent = True
          end
          object lblcxlbl3: TcxLabel
            Left = 9
            Top = 69
            Caption = 'Plataforma:'
            ParentFont = False
            Transparent = True
          end
          object lblTelefono: TcxDBLabel
            Left = 114
            Top = 27
            DataBinding.DataField = 'telefono'
            DataBinding.DataSource = dsPersonal
            ParentFont = False
            Transparent = True
            Height = 21
            Width = 203
          end
          object lblTelefono1: TcxDBLabel
            Left = 114
            Top = 48
            DataBinding.DataField = 'Gruposanguineo'
            DataBinding.DataSource = dsPersonalUPDATE
            ParentFont = False
            Transparent = True
            Height = 21
            Width = 331
          end
          object lblTelefono2: TcxDBLabel
            Left = 114
            Top = 69
            DataBinding.DataField = 'plataforma'
            DataBinding.DataSource = dsPersonal
            ParentFont = False
            Transparent = True
            Height = 21
            Width = 331
          end
        end
        object gridEmpleados: TcxGrid
          AlignWithMargins = True
          Left = 0
          Top = 30
          Width = 445
          Height = 368
          Margins.Left = 0
          Margins.Top = 30
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          TabOrder = 1
          LookAndFeel.SkinName = 'DevExpressStyle'
          object vistaEmpleados: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = vistaEmpleadosCellClick
            DataController.DataSource = dsPersonal
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = 'Click aqu'#237' para definir un filtro'
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '<No hay Registros para mostrar>'
            OptionsView.GroupByBox = False
            Styles.Background = cxstylFondo
            Styles.Selection = estiloProgramados
            object tcxFicha: TcxGridDBColumn
              Caption = 'Ficha'
              DataBinding.FieldName = 'codigopersonal'
              Width = 83
            end
            object tcxNombreCompleto: TcxGridDBColumn
              Caption = 'Nombre'
              DataBinding.FieldName = 'NombreCompleto'
              Width = 187
            end
            object tcxCategoria: TcxGridDBColumn
              Caption = 'Categor'#237'a'
              DataBinding.FieldName = 'TituloCargo'
              Width = 162
            end
            object tcxTitulo: TcxGridDBColumn
              Caption = 'N'#243'mina'
              DataBinding.FieldName = 'Titulo'
              Width = 114
            end
            object tcxIdPersonal: TcxGridDBColumn
              DataBinding.FieldName = 'idpersonal'
              Visible = False
            end
          end
          object nivelEmpleados: TcxGridLevel
            GridView = vistaEmpleados
          end
        end
        object checkMostrarGeneral: TcxCheckBox
          Left = 50
          Top = 8
          Caption = 'Mostrar General'
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment = taLeftJustify
          ShowHint = False
          Style.HotTrack = True
          Style.Shadow = False
          Style.TransparentBorder = True
          TabOrder = 2
          Transparent = True
          OnClick = checkMostrarGeneralClick
          Width = 121
        end
        object panelpnl1: TPanel
          Left = 221
          Top = 9
          Width = 74
          Height = 16
          Caption = 'Programado'
          Color = 16760445
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
        end
        object panelpnl2: TPanel
          Left = 300
          Top = 9
          Width = 58
          Height = 16
          Caption = 'Realizado'
          Color = 7918184
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
        end
        object panelpnl4: TPanel
          Left = 362
          Top = 9
          Width = 83
          Height = 16
          Caption = 'Fecha Vencida'
          Color = 7829503
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
        end
        object panel5: TPanel
          Left = 152
          Top = 9
          Width = 62
          Height = 16
          Caption = 'Ex'#225'menes'
          Color = 6993407
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 6
        end
      end
      object spliter1: TcxSplitter
        Left = 445
        Top = 0
        Width = 8
        Height = 506
        Control = panel6
      end
    end
    object pageExamenMedico: TcxTabSheet
      Caption = 'Ex'#225'men M'#233'dico'
      ImageIndex = 1
      object gridDatosEmpleado: TcxGrid
        Left = 0
        Top = 0
        Width = 1283
        Height = 41
        Align = alTop
        Enabled = False
        TabOrder = 0
        LookAndFeel.SkinName = 'Office2010Blue'
        object vistaDatosEmpleado: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPersonal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay Registros para Mostrar>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Background = cxstylFondo
          object tcxDatosEmpleadoFicha: TcxGridDBColumn
            Caption = 'Ficha'
            DataBinding.FieldName = 'codigopersonal'
            Width = 101
          end
          object tcxDatosEmpleadoNombre: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreCompleto'
            Width = 230
          end
          object tcxDatosEmpleadoCategoria: TcxGridDBColumn
            Caption = 'Categor'#237'a'
            DataBinding.FieldName = 'TituloCargo'
            Width = 278
          end
          object tcxDatosEmpleadoTelefono: TcxGridDBColumn
            Caption = 'Tel'#233'fono'
            DataBinding.FieldName = 'telefono'
            Width = 166
          end
          object tcxDatosEmpleadoGrupoSanguineo: TcxGridDBColumn
            Caption = 'Grupo Sangu'#237'neo'
            DataBinding.FieldName = 'Gruposanguineo'
            Visible = False
            Width = 167
          end
          object tcxDatosEmpleadoPlataforma: TcxGridDBColumn
            Caption = 'Plataforma'
            Width = 207
          end
        end
        object nivelDatosEmpleado: TcxGridLevel
          GridView = vistaDatosEmpleado
        end
      end
      object pageTipoExamen: TcxPageControl
        Left = 0
        Top = 41
        Width = 1283
        Height = 465
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = pageAntidoping
        Properties.CustomButtons.Buttons = <>
        OnChange = pageTipoExamenChange
        ClientRectBottom = 463
        ClientRectLeft = 2
        ClientRectRight = 1281
        ClientRectTop = 28
        object pageFormularioExamenMedico: TcxTabSheet
          Caption = 'Ex'#225'men M'#233'dico'
          ImageIndex = 0
          object gridCatalogoExamenMedico: TcxGrid
            Left = 660
            Top = 0
            Width = 619
            Height = 435
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'DevExpressStyle'
            object vistaCatalogoExamenMedico: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsCatalogoExamenMedico
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylFondo
              object tcxCodigo: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'codigo'
                Width = 101
              end
              object tcxDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n:'
                DataBinding.FieldName = 'Descripcion'
                Width = 301
              end
              object tcxValorMinimo: TcxGridDBColumn
                Caption = 'Valor M'#237'nimo'
                DataBinding.FieldName = 'ValorMinimo'
                Width = 91
              end
              object tcxValorMaximo: TcxGridDBColumn
                Caption = 'Valor M'#225'ximo'
                DataBinding.FieldName = 'ValorMaximo'
                Width = 84
              end
              object tcxMedida: TcxGridDBColumn
                DataBinding.FieldName = 'Medida'
                Width = 119
              end
            end
            object nivelCatalogoExamenMedico: TcxGridLevel
              GridView = vistaCatalogoExamenMedico
            end
          end
          object panelScroll: TcxScrollBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 649
            Height = 429
            Margins.Right = 0
            Align = alLeft
            LookAndFeel.SkinName = 'DevExpressStyle'
            TabOrder = 1
            object cxlbl4: TcxLabel
              Left = 49
              Top = 5
              Caption = 'Grupo Sangu'#237'neo:'
              ParentFont = False
              Transparent = True
            end
            object edtGrupoSanguineo: TcxDBTextEdit
              Left = 139
              Top = 4
              DataBinding.DataField = 'Gruposanguineo'
              DataBinding.DataSource = dsPersonalUPDATE
              ParentFont = False
              TabOrder = 1
              Width = 212
            end
          end
          object panelFormularioCatalogoExamenMedico: TPanel
            Left = 370
            Top = 17
            Width = 279
            Height = 152
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            Visible = False
            object cxlbl14: TcxLabel
              Left = 6
              Top = 13
              Caption = 'C'#243'digo:'
              ParentFont = False
              Transparent = True
            end
            object cxlbl15: TcxLabel
              Left = 6
              Top = 38
              Caption = 'Descripci'#243'n:'
              ParentFont = False
              Transparent = True
            end
            object cxlbl16: TcxLabel
              Left = 6
              Top = 63
              Caption = 'Rango:'
              ParentFont = False
              Transparent = True
            end
            object cxlbl17: TcxLabel
              Left = 155
              Top = 63
              Caption = '-'
              ParentFont = False
            end
            object cxlbl18: TcxLabel
              Left = 6
              Top = 86
              Caption = 'Medida:'
              ParentFont = False
              Transparent = True
            end
            object edtCodigo: TcxDBTextEdit
              Left = 72
              Top = 12
              DataBinding.DataField = 'codigo'
              DataBinding.DataSource = dsCatalogoExamenMedico
              ParentFont = False
              StyleFocused.Color = 16776176
              TabOrder = 5
              OnKeyPress = edtCodigoKeyPress
              Width = 175
            end
            object edtDescripcion: TcxDBTextEdit
              Left = 72
              Top = 37
              DataBinding.DataField = 'Descripcion'
              DataBinding.DataSource = dsCatalogoExamenMedico
              ParentFont = False
              StyleFocused.Color = 16776176
              TabOrder = 6
              Width = 175
            end
            object edtMedida: TcxDBTextEdit
              Left = 72
              Top = 85
              DataBinding.DataField = 'Medida'
              DataBinding.DataSource = dsCatalogoExamenMedico
              ParentFont = False
              StyleFocused.Color = 16776176
              TabOrder = 9
              Width = 175
            end
            object spinValorMinimo: TcxDBSpinEdit
              Left = 72
              Top = 62
              DataBinding.DataField = 'ValorMinimo'
              DataBinding.DataSource = dsCatalogoExamenMedico
              ParentFont = False
              Properties.AssignedValues.MinValue = True
              Properties.MaxValue = 100000.000000000000000000
              StyleFocused.Color = 16776176
              TabOrder = 7
              Width = 75
            end
            object spinValorMaximo: TcxDBSpinEdit
              Left = 169
              Top = 62
              DataBinding.DataField = 'ValorMaximo'
              DataBinding.DataSource = dsCatalogoExamenMedico
              ParentFont = False
              Properties.MaxValue = 100000.000000000000000000
              StyleFocused.Color = 16776176
              TabOrder = 8
              Width = 78
            end
            object btnGuardarCatalogoExamenMedico: TcxButton
              Left = 93
              Top = 109
              Width = 74
              Height = 27
              Caption = 'Guardar'
              TabOrder = 10
              OnClick = btnGuardarCatalogoExamenMedicoClick
              OptionsImage.ImageIndex = 174
              OptionsImage.Images = frmrepositorio.IconosTodos16
            end
            object btnCancelarCatalogoExamenMedico: TcxButton
              Left = 173
              Top = 109
              Width = 74
              Height = 27
              Caption = 'Cancelar'
              TabOrder = 11
              OnClick = btnCancelarCatalogoExamenMedicoClick
              OptionsImage.ImageIndex = 306
              OptionsImage.Images = frmrepositorio.IconosTodos16
            end
          end
          object spliter7: TcxSplitter
            Left = 652
            Top = 0
            Width = 8
            Height = 435
            Control = panelScroll
          end
        end
        object pageAntidoping: TcxTabSheet
          Caption = 'Antidoping'
          ImageIndex = 1
          object panelScrollAntidoping: TcxScrollBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 658
            Height = 429
            Margins.Right = 5
            Align = alLeft
            TabOrder = 0
            Visible = False
          end
          object gridAntidoping: TcxGrid
            Left = 666
            Top = 0
            Width = 613
            Height = 435
            Align = alClient
            TabOrder = 1
            LookAndFeel.SkinName = 'DevExpressStyle'
            object vistaAntidoping: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsCatalogoExamenMedico
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylFondo
              object tcxAntidopingCodigo: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'codigo'
              end
              object tcxAntidopingDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
              end
            end
            object nivelAntidoping: TcxGridLevel
              GridView = vistaAntidoping
            end
          end
          object panelInsertarCatalogoAntidoping: TPanel
            Left = 275
            Top = 110
            Width = 278
            Height = 114
            Color = clWindow
            ParentBackground = False
            TabOrder = 2
            Visible = False
            object cxlbl19: TcxLabel
              Left = 25
              Top = 17
              Caption = 'C'#243'digo:'
              ParentFont = False
            end
            object cxlbl20: TcxLabel
              Left = 25
              Top = 44
              Caption = 'Descripci'#243'n:'
              ParentFont = False
            end
            object edtCodigoAntidoping: TcxDBTextEdit
              Left = 89
              Top = 16
              DataBinding.DataField = 'codigo'
              DataBinding.DataSource = dsCatalogoExamenMedico
              ParentFont = False
              TabOrder = 2
              OnKeyPress = edtCodigoAntidopingKeyPress
              Width = 176
            end
            object edtDescripcionAntidoping: TcxDBTextEdit
              Left = 89
              Top = 43
              DataBinding.DataField = 'Descripcion'
              DataBinding.DataSource = dsCatalogoExamenMedico
              ParentFont = False
              TabOrder = 3
              Width = 176
            end
            object btnCancelarCatalogoAntidoping: TcxButton
              Left = 191
              Top = 72
              Width = 74
              Height = 27
              Caption = 'Cancelar'
              TabOrder = 4
              OnClick = btnCancelarCatalogoAntidopingClick
              OptionsImage.ImageIndex = 306
              OptionsImage.Images = frmrepositorio.IconosTodos16
            end
            object btnGuardarCatalogoAntidoping: TcxButton
              Left = 111
              Top = 71
              Width = 74
              Height = 27
              Caption = 'Guardar'
              TabOrder = 5
              OnClick = btnGuardarCatalogoExamenMedicoClick
              OptionsImage.ImageIndex = 174
              OptionsImage.Images = frmrepositorio.IconosTodos16
            end
          end
        end
        object pageAntecedentes: TcxTabSheet
          Caption = 'Antecedentes de Salud'
          ImageIndex = 2
          object panelScrollAntecedentes: TcxScrollBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 652
            Height = 429
            Margins.Right = 5
            Align = alLeft
            TabOrder = 0
            Visible = False
          end
          object gridAntecedentes: TcxGrid
            Left = 660
            Top = 0
            Width = 619
            Height = 435
            Align = alClient
            TabOrder = 1
            LookAndFeel.SkinName = 'Office2010Blue'
            object vistaAntecedentes: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsCatalogoAntecedentes
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Click aqui para definir un filtro'
              FilterRow.ApplyChanges = fracImmediately
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylFondo
              object tcxAntecedentesCodigo: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'codigo'
                Width = 281
              end
              object tcxAntecedentesDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 283
              end
            end
            object nivelAntecedentes: TcxGridLevel
              GridView = vistaAntecedentes
            end
          end
          object panelFormularioAntecedentes: TPanel
            Left = 239
            Top = 153
            Width = 326
            Height = 133
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            Visible = False
            object cxlbl5: TcxLabel
              Left = 24
              Top = 16
              Caption = 'C'#243'digo:'
              ParentFont = False
            end
            object cxlbl6: TcxLabel
              Left = 24
              Top = 43
              Caption = 'Descripci'#243'n:'
              ParentFont = False
            end
            object edtCodigoAntecedentes: TcxDBTextEdit
              Left = 92
              Top = 15
              DataBinding.DataField = 'codigo'
              DataBinding.DataSource = dsCatalogoAntecedentes
              ParentFont = False
              TabOrder = 2
              OnKeyPress = edtCodigoAntecedentesKeyPress
              Width = 121
            end
            object edtDescripcionAntecedentes: TcxDBTextEdit
              Left = 92
              Top = 42
              DataBinding.DataField = 'Descripcion'
              DataBinding.DataSource = dsCatalogoAntecedentes
              ParentFont = False
              TabOrder = 3
              Width = 213
            end
            object btnGuardarCatalogoAntecedentes: TcxButton
              Left = 149
              Top = 96
              Width = 75
              Height = 25
              Caption = 'Guardar'
              TabOrder = 4
              OnClick = btnGuardarCatalogoAntecedentesClick
              OptionsImage.ImageIndex = 174
              OptionsImage.Images = frmrepositorio.IconosTodos16
            end
            object btnCancelarCatalogoAntecedentes: TcxButton
              Left = 230
              Top = 96
              Width = 75
              Height = 25
              Caption = 'Cancelar'
              TabOrder = 5
              OnClick = btnCancelarCatalogoAntecedentesClick
              OptionsImage.ImageIndex = 306
              OptionsImage.Images = frmrepositorio.IconosTodos16
            end
          end
        end
        object pageObservaciones: TcxTabSheet
          Caption = 'Observaciones'
          ImageIndex = 3
          object cxlbl7: TcxLabel
            Left = 16
            Top = 24
            Caption = 'Observaciones:'
            ParentFont = False
            Transparent = True
          end
          object memoObservaciones: TcxMemo
            Left = 101
            Top = 23
            ParentFont = False
            TabOrder = 1
            Height = 234
            Width = 532
          end
        end
      end
    end
    object pageResumenGeneral: TcxTabSheet
      Caption = 'Res'#250'men General'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ExcelLibro: TcxSpreadSheetBook
        Left = 0
        Top = 0
        Width = 1283
        Height = 506
        Protected = True
        Align = alClient
        DefaultStyle.Font.Name = 'Tahoma'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        PainterType = ptOfficeXPStyle
        RowHeaderWidth = 45
      end
    end
    object pageDocumentosMedicos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 3
      object gridCatalogoDocumentos: TcxGrid
        Left = 790
        Top = 41
        Width = 493
        Height = 465
        Align = alClient
        TabOrder = 0
        object vistaCatalogoDocumentos: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCatalogoDocumentosUPDATE
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Background = cxstylFondo
          object tcxCodigoDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'codigo'
            Width = 93
          end
          object tcxNombreDocumento: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'nombredocumento'
            Width = 166
          end
          object tcxTipoDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Visible = False
            Width = 103
          end
        end
        object nivelCatalogoDocumentos: TcxGridLevel
          GridView = vistaCatalogoDocumentos
        end
      end
      object gridEmpleadosDocumentos: TcxGrid
        Left = 0
        Top = 0
        Width = 1283
        Height = 41
        Align = alTop
        Enabled = False
        TabOrder = 1
        LookAndFeel.SkinName = 'Office2010Blue'
        object vistaEmpleadosDocumentos: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPersonal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay Registros para Mostrar>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Background = cxstylFondo
          object tcx2: TcxGridDBColumn
            Caption = 'Ficha'
            DataBinding.FieldName = 'codigopersonal'
            Width = 101
          end
          object tcx3: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NombreCompleto'
            Width = 230
          end
          object tcx4: TcxGridDBColumn
            Caption = 'Categor'#237'a'
            DataBinding.FieldName = 'TituloCargo'
            Width = 278
          end
          object tcx5: TcxGridDBColumn
            Caption = 'Tel'#233'fono'
            DataBinding.FieldName = 'telefono'
            Width = 166
          end
          object tcx6: TcxGridDBColumn
            Caption = 'Grupo Sangu'#237'neo'
            DataBinding.FieldName = 'Gruposanguineo'
            Visible = False
            Width = 167
          end
          object tcx7: TcxGridDBColumn
            Caption = 'Plataforma'
            Width = 207
          end
        end
        object nivelEmpleadosDocumentos: TcxGridLevel
          GridView = vistaEmpleadosDocumentos
        end
      end
      object panelScrollDocumentos: TcxScrollBox
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 782
        Height = 459
        Margins.Right = 5
        Align = alLeft
        LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 2
        Visible = False
        object panelVistaPreviaArchivo: TPanel
          Left = 148
          Top = 4
          Width = 613
          Height = 317
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          Visible = False
        end
      end
      object panelCatalogoDocumentos: TPanel
        Left = 806
        Top = 108
        Width = 281
        Height = 121
        TabOrder = 3
        Visible = False
        object cxlbl8: TcxLabel
          Left = 13
          Top = 18
          Caption = 'C'#243'digo:'
          ParentFont = False
          Transparent = True
        end
        object edtCodigoDocumento: TcxDBTextEdit
          Left = 81
          Top = 17
          DataBinding.DataField = 'codigo'
          DataBinding.DataSource = dsCatalogoDocumentosUPDATE
          ParentFont = False
          TabOrder = 1
          OnKeyPress = edtCodigoDocumentoKeyPress
          Width = 177
        end
        object cxlbl9: TcxLabel
          Left = 13
          Top = 47
          Caption = 'Documento:'
          ParentFont = False
          Transparent = True
        end
        object edtDocumento: TcxDBTextEdit
          Left = 81
          Top = 46
          DataBinding.DataField = 'nombredocumento'
          DataBinding.DataSource = dsCatalogoDocumentosUPDATE
          ParentFont = False
          TabOrder = 3
          Width = 177
        end
        object btnGuardarCatalogoDocumentos: TcxButton
          Left = 102
          Top = 77
          Width = 75
          Height = 25
          Caption = 'Guardar'
          TabOrder = 4
          OnClick = btnGuardarCatalogoDocumentosClick
          OptionsImage.ImageIndex = 174
          OptionsImage.Images = frmrepositorio.IconosTodos16
        end
        object btnCancelarCatalogoDocumentos: TcxButton
          Left = 183
          Top = 77
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 5
          OnClick = btnCancelarCatalogoDocumentosClick
          OptionsImage.ImageIndex = 306
          OptionsImage.Images = frmrepositorio.IconosTodos16
        end
      end
    end
    object pageReportes: TcxTabSheet
      Caption = 'Reportes'
      ImageIndex = 4
      object panelScrollReportes: TcxScrollBox
        Left = 0
        Top = 0
        Width = 1283
        Height = 506
        Align = alClient
        TabOrder = 0
        object panelEmpleadosParaReportes: TPanel
          Left = 4
          Top = 23
          Width = 69
          Height = 170
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          Visible = False
          object gridEmpleadosParaReportes: TcxGrid
            Left = -2
            Top = 1
            Width = 729
            Height = 328
            TabOrder = 0
            LookAndFeel.SkinName = 'DevExpressStyle'
            object vistaEmpleadosParaReportes: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellClick = vistaEmpleadosParaReportesCellClick
              DataController.DataSource = dsEmpleadosParaReportes
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.Active = True
              DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Click aqu'#237' para definir un filtro'
              FilterRow.Visible = True
              FilterRow.ApplyChanges = fracImmediately
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylFondo
              object tcxReportesFicha: TcxGridDBColumn
                Caption = 'Ficha'
                DataBinding.FieldName = 'codigopersonal'
                Width = 77
              end
              object tcxReportesNombre: TcxGridDBColumn
                Caption = 'Nombre Completo'
                DataBinding.FieldName = 'NombreCompleto'
                Width = 192
              end
              object tcxReportesPuesto: TcxGridDBColumn
                Caption = 'Puesto'
                DataBinding.FieldName = 'TituloCargo'
                Width = 149
              end
              object tcxReportesGrupoSanguineo: TcxGridDBColumn
                Caption = 'Grupo Sangu'#237'neo'
                DataBinding.FieldName = 'Gruposanguineo'
                Width = 105
              end
              object tcxReportesTelefono: TcxGridDBColumn
                Caption = 'Tel'#233'fono'
                DataBinding.FieldName = 'telefono'
                Width = 64
              end
              object tcxEmpleadosPlataforma: TcxGridDBColumn
                Caption = 'Plataforma'
                DataBinding.FieldName = 'plataforma'
                Width = 140
              end
              object tcxReportesIdPersonal: TcxGridDBColumn
                DataBinding.FieldName = 'idPersonal'
                Visible = False
              end
            end
            object nivelEmpleadosParaReportes: TcxGridLevel
              GridView = vistaEmpleadosParaReportes
            end
          end
          object gridFechas: TcxGrid
            Left = -75
            Top = 1
            Width = 143
            Height = 168
            Align = alRight
            TabOrder = 1
            LookAndFeel.SkinName = 'DevExpressStyle'
            object vistaFechas: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = vistaFechasCellDblClick
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Click para definir un filtro'
              FilterRow.Visible = True
              FilterRow.ApplyChanges = fracImmediately
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylFondo
              object tcxFechasFechaProgramada: TcxGridDBColumn
                Caption = 'Fechas'
                DataBinding.FieldName = 'fechaProgramada'
              end
              object tcxFechasIdProgramaRecursivo: TcxGridDBColumn
                Caption = 'IdProgramaRecursivo'
                DataBinding.FieldName = 'idProgramaRecursivo'
                Visible = False
              end
            end
            object nivelFechas: TcxGridLevel
              GridView = vistaFechas
            end
          end
        end
        object panelReportesExamenMedico: TPanel
          Left = 80
          Top = 24
          Width = 1007
          Height = 365
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          Visible = False
          DesignSize = (
            1007
            365)
          object gridEmpleadosParaReportesExamenMedico: TcxGrid
            Left = -1
            Top = 49
            Width = 732
            Height = 314
            Anchors = [akLeft, akTop, akBottom]
            TabOrder = 0
            LookAndFeel.SkinName = 'DevExpressStyle'
            object vistaEmpleadosParaReportesExamenMedico: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsEmpleadosParaReportes
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Click aqu'#237' para definir un filtro'
              FilterRow.Visible = True
              FilterRow.ApplyChanges = fracImmediately
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylFondo
              Styles.Selection = estiloProgramados
              object tcxEmpleadosReportesExamenMedicoFicha: TcxGridDBColumn
                Caption = 'Ficha'
                DataBinding.FieldName = 'codigopersonal'
                Width = 75
              end
              object tcxEmpleadosReportesExamenMedicoNombreCompleto: TcxGridDBColumn
                Caption = 'Nombre Completo'
                DataBinding.FieldName = 'NombreCompleto'
                Width = 182
              end
              object tcxEmpleadosReportesExamenMedicoPuesto: TcxGridDBColumn
                Caption = 'Puesto'
                DataBinding.FieldName = 'TituloCargo'
                Width = 177
              end
              object tcxEmpleadosReportesExamenMedicoGrupoSanguineo: TcxGridDBColumn
                Caption = 'Grupo Sangu'#237'neo'
                DataBinding.FieldName = 'Gruposanguineo'
                Width = 126
              end
              object tcxEmpleadosReportesExamenMedicoTelefono: TcxGridDBColumn
                Caption = 'Tel'#233'fono'
                DataBinding.FieldName = 'telefono'
                Width = 67
              end
              object tcxEmpleadosReportesExamenMedicoPlataforma: TcxGridDBColumn
                Caption = 'Plataforma'
                DataBinding.FieldName = 'plataforma'
                Width = 100
              end
              object tcxEmpleadosReportesExamenMedicoIdPersonal: TcxGridDBColumn
                Caption = 'Id Personal'
                DataBinding.FieldName = 'IdPersonal'
                Visible = False
              end
            end
            object nivelEmpleadosParaReportesExamenMedico: TcxGridLevel
              GridView = vistaEmpleadosParaReportesExamenMedico
            end
          end
          object gridTiposExamenes: TcxGrid
            Left = 733
            Top = 0
            Width = 246
            Height = 329
            TabOrder = 1
            LookAndFeel.SkinName = 'DevExpressStyle'
            object vistaTiposExamenes: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = vistaTiposExamenesCellDblClick
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Click aqu'#237' para definir un filtro'
              FilterRow.Visible = True
              FilterRow.ApplyChanges = fracImmediately
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.Background = cxstylFondo
              object tcxTiposExamenesDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
              end
              object tcxTiposExamenesTipo: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'Titulo'
              end
              object tcxTiposExamenesIdCatalogoExamen: TcxGridDBColumn
                DataBinding.FieldName = 'idcatalogoexamenmedico'
                Visible = False
              end
              object tcxTiposExamenesidTipoExamen_Medico: TcxGridDBColumn
                DataBinding.FieldName = 'idTipoExamen_Medico'
                Visible = False
              end
            end
            object nivelTiposExamenes: TcxGridLevel
              GridView = vistaTiposExamenes
            end
          end
          object cbbDel: TcxDateEdit
            Left = 208
            Top = 19
            ParentFont = False
            TabOrder = 2
            Width = 98
          end
          object cbbAl: TcxDateEdit
            Left = 331
            Top = 19
            ParentFont = False
            TabOrder = 3
            Width = 98
          end
          object lbl1: TcxLabel
            Left = 185
            Top = 20
            Caption = 'Del:'
            ParentFont = False
            Transparent = True
          end
          object lbl2: TcxLabel
            Left = 313
            Top = 20
            Caption = 'Al:'
            ParentFont = False
            Transparent = True
          end
          object checkAplicarRangoFechas: TcxCheckBox
            Left = 7
            Top = 18
            Caption = 'Aplicar Rango de Fechas'
            ParentFont = False
            TabOrder = 6
            OnClick = checkAplicarRangoFechasClick
            Width = 143
          end
          object checkSeleccionarTodos: TcxCheckBox
            Left = 496
            Top = 18
            Caption = 'Seleccionar Todos'
            ParentFont = False
            TabOrder = 7
            Transparent = True
            OnClick = checkSeleccionarTodosClick
            Width = 121
          end
        end
      end
    end
    object pageVigencias: TcxTabSheet
      Caption = 'Vigencia'
      ImageIndex = 5
      object pageTipoVigencias: TcxPageControl
        Left = 0
        Top = 0
        Width = 1283
        Height = 506
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = pageVigenciasDocumentos
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 504
        ClientRectLeft = 2
        ClientRectRight = 1281
        ClientRectTop = 28
        object pageVigenciasDocumentos: TcxTabSheet
          Caption = 'Documentos'
          ImageIndex = 1
          object panelScrollVigenciasDocumentosTodos: TcxScrollBox
            Left = 0
            Top = 0
            Width = 719
            Height = 476
            Margins.Right = 0
            Align = alLeft
            LookAndFeel.SkinName = 'DevExpressStyle'
            TabOrder = 0
          end
          object panelDocumentosVencidos: TPanel
            Left = 44
            Top = 11
            Width = 95
            Height = 198
            Align = alCustom
            TabOrder = 1
            Visible = False
            object gridDocumentosPorCaducar: TcxGrid
              Left = 0
              Top = 6
              Width = 789
              Height = 338
              Align = alCustom
              TabOrder = 0
              object vistaDocumentosPorCaducar: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                OnCellDblClick = vistaDocumentosPorCaducarCellDblClick
                DataController.DataSource = dsDocumentosVencidosMEMORIA
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                Styles.Background = cxstylFondo
                object tcxNombre: TcxGridDBColumn
                  Caption = 'Nombre'
                  DataBinding.FieldName = 'NombreCompleto'
                  Width = 152
                end
                object tcxPuesto: TcxGridDBColumn
                  Caption = 'Puesto'
                  DataBinding.FieldName = 'titulocargo'
                  Width = 150
                end
                object tcxVencidosTelefono: TcxGridDBColumn
                  Caption = 'Tel'#233'fono'
                  DataBinding.FieldName = 'telefono'
                  Width = 82
                end
                object tcxVencidosCorreo: TcxGridDBColumn
                  DataBinding.FieldName = 'Correo'
                  Width = 93
                end
                object tcxVencidosCodigo: TcxGridDBColumn
                  Caption = 'C'#243'digo Documento'
                  DataBinding.FieldName = 'codigo'
                  Visible = False
                end
                object tcxDocumento: TcxGridDBColumn
                  Caption = 'Documento'
                  DataBinding.FieldName = 'nombreDocumento'
                  Width = 140
                end
                object tcxVencidosInicioVigencia: TcxGridDBColumn
                  Caption = 'Inicio Vigencia'
                  DataBinding.FieldName = 'fechaInicioVigencia'
                  Width = 84
                end
                object tcxVencidosTerminoVigencia: TcxGridDBColumn
                  Caption = 'Termino Vigencia'
                  DataBinding.FieldName = 'fechaTerminoVigencia'
                  Width = 86
                end
                object tcxVencidosIdDoctosxCargo: TcxGridDBColumn
                  DataBinding.FieldName = 'idDoctosxCargo'
                  Visible = False
                  Width = 77
                end
                object tcxVencidosIdPersonal: TcxGridDBColumn
                  DataBinding.FieldName = 'idPersonal'
                  Visible = False
                end
                object tcxVencidosidDocumento: TcxGridDBColumn
                  DataBinding.FieldName = 'idDocumento'
                  Visible = False
                end
              end
              object nivelDocumentosPorCaducar: TcxGridLevel
                GridView = vistaDocumentosPorCaducar
              end
            end
          end
          object panel11: TPanel
            Left = 729
            Top = 0
            Width = 550
            Height = 476
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            object lblcxlbl10: TcxLabel
              Left = 50
              Top = 24
              Caption = 'NOTA:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lblcxlbl11: TcxLabel
              Left = 50
              Top = 50
              Caption = 
                'Si el Numero es 0. Entonces no se mandar'#225'n avisos de ese Documen' +
                'to.'
              ParentFont = False
              Transparent = True
            end
          end
          object spliter5: TcxSplitter
            Left = 719
            Top = 0
            Width = 10
            Height = 476
            Control = panelScrollVigenciasDocumentosTodos
          end
        end
      end
      object panelArchivoCaducado: TPanel
        Left = 150
        Top = 41
        Width = 68
        Height = 131
        TabOrder = 1
        Visible = False
      end
    end
    object pageHistorial: TcxTabSheet
      Caption = 'Historial'
      ImageIndex = 6
      object gridGrafica: TcxGrid
        Left = 596
        Top = 0
        Width = 687
        Height = 506
        Align = alClient
        TabOrder = 1
        Visible = False
        LookAndFeel.SkinName = 'Metropolis'
        object vistaGrafica: TcxGridDBChartView
          DataController.DataSource = dsGrafica
          DiagramColumn.Active = True
          ToolBox.DiagramSelector = True
          object grupoFECHA: TcxGridDBChartDataGroup
            DataBinding.FieldName = 'fechaProgramada'
            DisplayText = 'FECHA'
          end
          object grupoExamen: TcxGridDBChartDataGroup
            DataBinding.FieldName = 'idExamenMedico'
            DisplayText = 'EXAMEN'
          end
          object cxSeriesGrafica: TcxGridDBChartSeries
            DataBinding.FieldName = 'ResultadoEstudioExamen'
            DisplayText = 'RESULTADOS'
          end
        end
        object nivelGrafica: TcxGridLevel
          GridView = vistaGrafica
        end
      end
      object panelHistorialEmpleado: TPanel
        Left = 735
        Top = 77
        Width = 82
        Height = 193
        TabOrder = 0
        Visible = False
        object gridHistorialEmpleados: TcxGrid
          Left = 4
          Top = 0
          Width = 729
          Height = 297
          TabOrder = 0
          object vistaHistorialEmpleados: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = vistaHistorialEmpleadosCellDblClick
            DataController.DataSource = dsHistorialPersonal
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = 'Click aqu'#237' para definir un filtro'
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.Background = cxstylFondo
            object tcxHistorialNombre: TcxGridDBColumn
              Caption = 'Nombre'
              DataBinding.FieldName = 'NombreCompleto'
              Width = 209
            end
            object tcxHistorialPuesto: TcxGridDBColumn
              Caption = 'Puesto'
              DataBinding.FieldName = 'TituloCargo'
              Width = 166
            end
            object tcxHistorialGrupoSanguineo: TcxGridDBColumn
              Caption = 'Grupo Sangu'#237'neo'
              DataBinding.FieldName = 'Gruposanguineo'
              Width = 98
            end
            object tcxHistorialTelefono: TcxGridDBColumn
              Caption = 'Tel'#233'fono'
              DataBinding.FieldName = 'telefono'
              Width = 120
            end
            object tcxHistorialCorreo: TcxGridDBColumn
              Caption = 'Correo'
              DataBinding.FieldName = 'correo'
              Width = 133
            end
          end
          object nivelHistorialEmpleados: TcxGridLevel
            GridView = vistaHistorialEmpleados
          end
        end
      end
      object panel10: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 585
        Height = 500
        Margins.Right = 0
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object panelScrollHistorial: TcxScrollBox
          Left = 0
          Top = 0
          Width = 585
          Height = 500
          Align = alClient
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          object lblIndicativoNombre: TcxLabel
            Left = 57
            Top = 6
            Caption = 'Nombre:'
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object lblNombreEmpleado: TcxLabel
            Left = 108
            Top = 6
            Caption = 'Nombre Del Empleado'
            ParentFont = False
            Transparent = True
            Visible = False
          end
        end
      end
      object spliter4: TcxSplitter
        Left = 588
        Top = 0
        Width = 8
        Height = 506
        Control = panel10
      end
    end
    object pageFirmantes: TcxTabSheet
      Caption = 'Firmantes'
      ImageIndex = 7
      object gridFirmantes: TcxGrid
        AlignWithMargins = True
        Left = 428
        Top = 3
        Width = 852
        Height = 500
        Margins.Left = 0
        Align = alClient
        TabOrder = 0
        object vistaFirmantes: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsFirmantes
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Click aqu'#237' para definir un filtro'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Background = cxstylFondo
          object tcxFirmante1: TcxGridDBColumn
            Caption = 'Firmante 1'
            DataBinding.FieldName = 'Firmante1'
            Width = 133
          end
          object tcxPuesto1: TcxGridDBColumn
            Caption = 'Puesto 1'
            DataBinding.FieldName = 'Puesto1'
            Width = 132
          end
          object tcxFirmante2: TcxGridDBColumn
            Caption = 'Firmante 2'
            DataBinding.FieldName = 'Firmante2'
            Width = 174
          end
          object tcxPuesto2: TcxGridDBColumn
            Caption = 'Puesto 2'
            DataBinding.FieldName = 'Puesto2'
            Width = 180
          end
          object tcxIdFirmanteMedico: TcxGridDBColumn
            DataBinding.FieldName = 'idFirmanteMedico'
            Visible = False
          end
          object tcxFirmanteInicioVigencia: TcxGridDBColumn
            Caption = 'Inicio Vigencia'
            DataBinding.FieldName = 'fechaInicioFirmante'
            Width = 87
          end
          object tcxFirmanteTerminoVigencia: TcxGridDBColumn
            Caption = 'T'#233'rmino Vigencia'
            DataBinding.FieldName = 'fechaTerminoFirmante'
            Width = 90
          end
        end
        object nivelFirmantes: TcxGridLevel
          GridView = vistaFirmantes
        end
      end
      object panel8: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 418
        Height = 500
        Margins.Right = 0
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object TDBFechaTDBFechaInicioFirmante: TcxDBDateEdit
          Left = 99
          Top = 14
          DataBinding.DataField = 'fechaInicioFirmante'
          DataBinding.DataSource = dsFirmantes
          ParentFont = False
          StyleFocused.Color = 16776176
          TabOrder = 0
          Width = 90
        end
        object lbl7: TcxLabel
          Left = 65
          Top = 15
          Caption = 'Inicio:'
          ParentFont = False
          Transparent = True
        end
        object TDBFechaTDBFechaTerminoFirmante: TcxDBDateEdit
          Left = 248
          Top = 14
          DataBinding.DataField = 'fechaTerminoFirmante'
          DataBinding.DataSource = dsFirmantes
          ParentFont = False
          StyleFocused.Color = 16776176
          TabOrder = 2
          Width = 91
        end
        object lbl8: TcxLabel
          Left = 202
          Top = 16
          Caption = 'T'#233'rmino:'
          ParentFont = False
          Transparent = True
        end
        object panel2: TPanel
          Left = 1
          Top = 45
          Width = 404
          Height = 17
          Caption = 'Firmante a la izquierda'
          Color = clActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
        end
        object edtFirmante1: TcxDBTextEdit
          Left = 89
          Top = 79
          DataBinding.DataField = 'Firmante1'
          DataBinding.DataSource = dsFirmantes
          ParentFont = False
          StyleFocused.Color = 16776176
          TabOrder = 5
          Width = 316
        end
        object edtPuesto1: TcxDBTextEdit
          Left = 89
          Top = 106
          DataBinding.DataField = 'Puesto1'
          DataBinding.DataSource = dsFirmantes
          ParentFont = False
          StyleFocused.Color = 16776176
          TabOrder = 6
          Width = 316
        end
        object lbl3: TcxLabel
          Left = 23
          Top = 80
          Caption = 'Firmante 1:'
          ParentFont = False
          Transparent = True
        end
        object lbl4: TcxLabel
          Left = 41
          Top = 107
          Caption = 'Puesto:'
          ParentFont = False
          Transparent = True
        end
        object edtFirmante2: TcxDBTextEdit
          Left = 89
          Top = 186
          DataBinding.DataField = 'Firmante2'
          DataBinding.DataSource = dsFirmantes
          ParentFont = False
          StyleFocused.Color = 16776176
          TabOrder = 9
          Width = 316
        end
        object lbl5: TcxLabel
          Left = 23
          Top = 187
          Caption = 'Firmante 2:'
          ParentFont = False
          Transparent = True
        end
        object lbl6: TcxLabel
          Left = 41
          Top = 214
          Caption = 'Puesto:'
          ParentFont = False
          Transparent = True
        end
        object edtPuesto2: TcxDBTextEdit
          Left = 89
          Top = 213
          DataBinding.DataField = 'Puesto2'
          DataBinding.DataSource = dsFirmantes
          ParentFont = False
          StyleFocused.Color = 16776176
          TabOrder = 12
          Width = 316
        end
        object panel3: TPanel
          Left = 1
          Top = 156
          Width = 404
          Height = 17
          Caption = 'Firmante a la derecha'
          Color = clActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 13
        end
      end
      object spliter2: TcxSplitter
        Left = 421
        Top = 0
        Width = 7
        Height = 506
        Control = panel8
      end
    end
    object pageBajas: TcxTabSheet
      Caption = 'Bajas'
      ImageIndex = 8
      object listaBajas: TcxListBox
        Left = 713
        Top = 0
        Width = 570
        Height = 506
        Align = alClient
        DragMode = dmAutomatic
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnDragDrop = listaBajasDragDrop
        OnDragOver = listaBajasDragOver
        OnStartDrag = listaBajasStartDrag
      end
      object panel9: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 703
        Height = 500
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Bottom = 3
        TabOrder = 2
        object gridBajas: TcxGrid
          Left = 3
          Top = 3
          Width = 700
          Height = 494
          Align = alClient
          TabOrder = 0
          object vistaBajas: TcxGridDBTableView
            DragMode = dmAutomatic
            OnDragDrop = vistaBajasDragDrop
            OnDragOver = vistaBajasDragOver
            OnStartDrag = vistaBajasStartDrag
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsEmpleadosParaBajas
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = 'Click aqu'#237' para definir un filtro'
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = '<No hay registros para mostrar>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.Background = cxstylFondo
            object tcxBajasFicha: TcxGridDBColumn
              Caption = 'Ficha'
              DataBinding.FieldName = 'codigopersonal'
              Width = 95
            end
            object tcxBajasNombreCompleto: TcxGridDBColumn
              Caption = 'Nombre'
              DataBinding.FieldName = 'NombreCompleto'
              Width = 190
            end
            object tcxBajasPuesto: TcxGridDBColumn
              Caption = 'Puesto'
              DataBinding.FieldName = 'TituloCargo'
              Width = 185
            end
            object tcxBajasNomina: TcxGridDBColumn
              Caption = 'Nomina'
              DataBinding.FieldName = 'Titulo'
              Width = 131
            end
            object tcxBajasTelefono: TcxGridDBColumn
              Caption = 'Telefono'
              DataBinding.FieldName = 'telefono'
              Width = 90
            end
            object tcxBajasPlataforma: TcxGridDBColumn
              Caption = 'Plataforma'
              DataBinding.FieldName = 'plataforma'
              Width = 134
            end
            object tcxBajasId: TcxGridDBColumn
              DataBinding.FieldName = 'idPersonal'
              Visible = False
            end
          end
          object nivelBajas: TcxGridLevel
            GridView = vistaBajas
          end
        end
      end
      object panelAyuda: TPanel
        Left = 432
        Top = 296
        Width = 380
        Height = 146
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object lbl9: TcxLabel
          Left = 22
          Top = 15
          Caption = 
            '1.- Arrastrar un empleado de la tabla hacia la lista para dar de' +
            ' Baja'
          ParentColor = False
          ParentFont = False
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextStyle = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl10: TcxLabel
          Left = 22
          Top = 32
          Caption = 
            'En los reportes los datos de los empleados de la lista no aparec' +
            'er'#225'n'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl11: TcxLabel
          Left = 22
          Top = 57
          Caption = 
            '1.- Arrastrar de la lista hacia la tabla para dar de Alta Nuevam' +
            'amente'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl12: TcxLabel
          Left = 22
          Top = 75
          Caption = 'Los datos del empleado aparecer'#225'n en los reportes'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl13: TcxLabel
          Left = 22
          Top = 103
          Caption = 'NOTA: Aplica solo para este m'#243'dulo (Programa de Salud)'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object spliter3: TcxSplitter
        Left = 709
        Top = 0
        Width = 4
        Height = 506
        Control = panel9
      end
    end
  end
  object barManagerManagerProgramaDeSalud: TdxBarManager
    AlwaysMerge = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = frmrepositorio.IconosTodos32
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 1089
    Top = 29
    DockControlHeights = (
      0
      0
      0
      0)
    object dxToolBarManagerDocumentos1Bar: TdxBar
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1049
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnProgramarFecha'
        end
        item
          Visible = True
          ItemName = 'btnEliminarFechaProgramada'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 180
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnMarcarRealizado'
        end
        item
          Visible = True
          ItemName = 'btnDesmarcarRealizado'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGuardarExamenMedico'
        end
        item
          Visible = True
          ItemName = 'btnCancelarExamenMedico'
        end
        item
          Visible = True
          ItemName = 'btnEliminarExamen'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar3: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 194
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAgregarCatalogoExamenMedico'
        end
        item
          Visible = True
          ItemName = 'btnEditarCatalogoExamenMedico'
        end
        item
          Visible = True
          ItemName = 'btnEliminarCatalogoExamenMedico'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar4: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnImprimirReporteConFormato'
        end
        item
          Visible = True
          ItemName = 'btn2'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar5: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGuardarDocumentosMedicos'
        end
        item
          Visible = True
          ItemName = 'btnCancelarDocumentosMedicos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar6: TdxBar
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockedLeft = 200
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNuevoCatalogoDocumentos'
        end
        item
          Visible = True
          ItemName = 'btnEditarCatalogoDocumentos'
        end
        item
          Visible = True
          ItemName = 'btnEliminarCatalogoDocumentos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar7: TdxBar
      Caption = 'Custom 6'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGuardarVigencias'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar9: TdxBar
      Caption = 'Custom 8'
      CaptionButtons = <>
      DockedLeft = 134
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnDocumentosPorCaducar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar10: TdxBar
      Caption = 'Custom 9'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnHistorialEmpleado'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar11: TdxBar
      Caption = 'Custom 10'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnReporteExamenMedico'
        end
        item
          Visible = True
          ItemName = 'btnReporteAntecedentes'
        end
        item
          Visible = True
          ItemName = 'btnReporteDocumentos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar12: TdxBar
      Caption = 'Custom 11'
      CaptionButtons = <>
      DockedLeft = 244
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnProReaVen'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar8: TdxBar
      Caption = 'Custom 7'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNuevoFirmantes'
        end
        item
          Visible = True
          ItemName = 'btnEditarFirmantes'
        end
        item
          Visible = True
          ItemName = 'btnGuardarFirmantes'
        end
        item
          Visible = True
          ItemName = 'btnCancelarFirmantes'
        end
        item
          Visible = True
          ItemName = 'btnEliminarFirmantes'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar13: TdxBar
      Caption = 'Custom 12'
      CaptionButtons = <>
      DockedLeft = 215
      DockedTop = 0
      FloatLeft = 1183
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPorFechas'
        end
        item
          Visible = True
          ItemName = 'btnPorPlataformas'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxToolBarManagerManagerProgramaDeSaludBar14: TdxBar
      Caption = 'Custom 13'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1318
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAyuda'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnProgramarFecha: TdxBarLargeButton
      Caption = '&Programar Fecha'
      Category = 0
      Hint = 'Programar Fecha'
      Visible = ivAlways
      LargeImageIndex = 60
      OnClick = btnProgramarFechaClick
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnMarcarRealizado: TdxBarLargeButton
      Caption = '&Marcar como Realizado'
      Category = 0
      Hint = 'Marcar como Realizado'
      Visible = ivAlways
      LargeImageIndex = 30
      OnClick = btnMarcarRealizadoClick
    end
    object btnEliminarFechaProgramada: TdxBarLargeButton
      Caption = '&Eliminar Fecha Programada'
      Category = 0
      Hint = 'Eliminar Fecha Programada'
      Visible = ivAlways
      LargeImageIndex = 59
      OnClick = btnEliminarFechaProgramadaClick
    end
    object btnDesmarcarRealizado: TdxBarLargeButton
      Caption = '&Desmarcar Realizado'
      Category = 0
      Hint = 'Desmarcar Realizado'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = btnDesmarcarRealizadoClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btnGuardarExamenMedico: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnGuardarExamenMedicoClick
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btnCancelarExamenMedico: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 136
      OnClick = btnCancelarExamenMedicoClick
    end
    object btnAgregarCatalogoExamenMedico: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 134
      OnClick = btnAgregarCatalogoExamenMedicoClick
    end
    object btnEditarCatalogoExamenMedico: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 23
      OnClick = btnEditarCatalogoExamenMedicoClick
    end
    object btnEliminarCatalogoExamenMedico: TdxBarLargeButton
      Caption = 'E&liminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 137
      OnClick = btnEliminarCatalogoExamenMedicoClick
    end
    object btnImprimirReporteConFormato: TdxBarLargeButton
      Caption = '&Exportar Ex'#225'men M'#233'dico'
      Category = 0
      Hint = 'Exportar Ex'#225'men M'#233'dico'
      Visible = ivAlways
      LargeImageIndex = 32
      OnClick = btnImprimirReporteConFormatoClick
    end
    object btn2: TdxBarLargeButton
      Caption = '&Importar Ex'#225'men M'#233'dico'
      Category = 0
      Hint = 'Importar Ex'#225'men M'#233'dico'
      Visible = ivNever
      LargeImageIndex = 25
    end
    object btnGuardarDocumentosMedicos: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnGuardarDocumentosMedicosClick
    end
    object btnCancelarDocumentosMedicos: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 136
      OnClick = btnCancelarDocumentosMedicosClick
    end
    object btnNuevoCatalogoDocumentos: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 134
      OnClick = btnNuevoCatalogoDocumentosClick
    end
    object btnEditarCatalogoDocumentos: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 23
      OnClick = btnEditarCatalogoDocumentosClick
    end
    object btnEliminarCatalogoDocumentos: TdxBarLargeButton
      Caption = 'E&liminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 137
      OnClick = btnEliminarCatalogoDocumentosClick
    end
    object btnGuardarVigencias: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnGuardarVigenciasClick
    end
    object btnCancelarVigencias: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 127
    end
    object btnVigenciasAplicarATodos: TdxBarLargeButton
      Caption = '&Todos'
      Category = 0
      Hint = 'Todos'
      Visible = ivAlways
      LargeImageIndex = 838
    end
    object btnVigenciasPersonalizado: TdxBarLargeButton
      Caption = '&Personalizado'
      Category = 0
      Hint = 'Personalizado'
      Visible = ivAlways
      LargeImageIndex = 1
    end
    object btnDocumentosPorCaducar: TdxBarLargeButton
      Caption = '&Documentos Por Caducar'
      Category = 0
      Hint = 'Documentos Por Caducar'
      Visible = ivAlways
      LargeImageIndex = 19
      OnClick = btnDocumentosPorCaducarClick
    end
    object btnHistorialEmpleado: TdxBarLargeButton
      Caption = '&Empleado'
      Category = 0
      Hint = 'Empleado'
      Visible = ivAlways
      LargeImageIndex = 6
      OnClick = btnHistorialEmpleadoClick
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnReporteExamenMedico: TdxBarLargeButton
      Caption = '&Ex'#225'men M'#233'dico'
      Category = 0
      Hint = 'Ex'#225'men M'#233'dico'
      Visible = ivAlways
      LargeImageIndex = 72
      OnClick = btnReporteExamenMedicoClick
    end
    object btnEliminarExamen: TdxBarLargeButton
      Caption = 'Eli&minar Ex'#225'men'
      Category = 0
      Hint = 'Eliminar Ex'#225'men'
      Visible = ivAlways
      LargeImageIndex = 59
      OnClick = btnEliminarExamenClick
    end
    object btnReporteAntecedentes: TdxBarLargeButton
      Caption = '&Reporte Antecedentes'
      Category = 0
      Hint = 'Reporte Antecedentes'
      Visible = ivAlways
      LargeImageIndex = 84
      OnClick = btnReporteAntecedentesClick
    end
    object btnReporteDocumentos: TdxBarLargeButton
      Caption = 'Reporte Documentos'
      Category = 0
      Hint = 'Reporte Documentos'
      Visible = ivAlways
      LargeImageIndex = 108
      OnClick = btnReporteDocumentosClick
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btnProReaVen: TdxBarLargeButton
      Caption = 'Programados/'#13#10'Realizados/Vencidos'
      Category = 0
      Hint = 'Programados/'#13#10'Realizados/Vencidos'
      Visible = ivAlways
      LargeImageIndex = 107
      OnClick = btnProReaVenClick
    end
    object btnConfigurarFirmantes: TdxBarLargeButton
      Caption = '&Configurar Firmantes'
      Category = 0
      Hint = 'Configurar Firmantes'
      Visible = ivAlways
      LargeImageIndex = 101
    end
    object btnNuevoFirmantes: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 134
      OnClick = btnNuevoFirmantesClick
    end
    object btnEditarFirmantes: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 23
      OnClick = btnEditarFirmantesClick
    end
    object btnEliminarFirmantes: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      LargeImageIndex = 137
      OnClick = btnEliminarFirmantesClick
    end
    object btnGuardarFirmantes: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnGuardarFirmantesClick
    end
    object btnCancelarFirmantes: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 136
      OnClick = btnCancelarFirmantesClick
    end
    object btn3: TdxBarLargeButton
      Caption = 'Ver por'
      Category = 0
      Hint = 'Ver por'
      Visible = ivAlways
    end
    object btnPorPlataformas: TdxBarLargeButton
      Caption = 'P&or Plataformas'
      Category = 0
      Hint = 'Por Plataformas'
      Visible = ivAlways
      LargeImageIndex = 112
      OnClick = btnPorPlataformasClick
    end
    object btnPorFechas: TdxBarLargeButton
      Caption = '&Por Fechas'
      Category = 0
      Hint = 'Por Fechas'
      Visible = ivAlways
      LargeImageIndex = 113
      OnClick = btnPorFechasClick
    end
    object btnAyuda: TdxBarLargeButton
      Caption = '&Ayuda'
      Category = 0
      Hint = 'Ayuda'
      Visible = ivAlways
      LargeImageIndex = 2
      OnClick = btnAyudaClick
    end
  end
  object fondo: TcxStyleRepository
    Left = 1120
    Top = 28
    PixelsPerInch = 96
    object cxstylFondo: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object estiloProgramados: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
    object estiloRealizados: TcxStyle
      AssignedValues = [svColor]
      Color = 1751401
    end
    object estiloVencidas: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
  object dsPersonal: TDataSource
    DataSet = zqryPersonal
    Left = 1250
    Top = 549
  end
  object zqryPersonal: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 1248
    Top = 514
  end
  object zqryProgramaRecursivo: TZQuery
    Params = <>
    Left = 1219
    Top = 514
  end
  object zqryCatalogoExamenMedico: TZQuery
    Params = <>
    Left = 1185
    Top = 484
  end
  object dsCatalogoExamenMedico: TDataSource
    DataSet = zqryCatalogoExamenMedico
    Left = 1185
    Top = 516
  end
  object zqryExamenMedico: TZQuery
    Params = <>
    Left = 1154
    Top = 517
  end
  object zqryExamenMedicoUPDATE: TZQuery
    Params = <>
    Left = 1122
    Top = 520
  end
  object zqryPersonalUPDATE: TZQuery
    Params = <>
    Left = 1216
    Top = 484
  end
  object dsPersonalUPDATE: TDataSource
    DataSet = zqryPersonalUPDATE
    Left = 1248
    Top = 484
  end
  object zqryCatalogoAntecedentes: TZQuery
    Params = <>
    Left = 1154
    Top = 449
  end
  object dsCatalogoAntecedentes: TDataSource
    DataSet = zqryCatalogoAntecedentes
    Left = 1122
    Top = 488
  end
  object dsExamenMedicoUPDATE: TDataSource
    DataSet = zqryExamenMedicoUPDATE
    Left = 1122
    Top = 549
  end
  object zqryProgramaRecursivoSELECT: TZQuery
    Params = <>
    Left = 1184
    Top = 418
  end
  object zqryCatalogoExamenMedicoCATALOGO: TZQuery
    Params = <>
    Left = 1216
    Top = 417
  end
  object zqryProgramaRecursivoSELECT2: TZQuery
    Params = <>
    Left = 1154
    Top = 485
  end
  object zqryCatalogoDocumentosUPDATE: TZQuery
    Params = <>
    Left = 1248
    Top = 416
  end
  object dsCatalogoDocumentosUPDATE: TDataSource
    DataSet = zqryCatalogoDocumentosUPDATE
    Left = 1248
    Top = 448
  end
  object ruta: TOpenDialog
    Filter = 'PDF(*.pdf)|*.pdf|Archivo de Imagen(*.jpg)|*.jpg'
    Left = 1217
    Top = 448
  end
  object zqryDoctosXCargoUPDATE: TZQuery
    Params = <>
    Left = 1122
    Top = 451
  end
  object dsDocumentosVencidosMEMORIA: TDataSource
    DataSet = cdDocumentosVencidosMEMORIA
    Left = 1123
    Top = 420
  end
  object cdDocumentosVencidosMEMORIA: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1153
    Top = 419
  end
  object zqryHistorialPersonal: TZQuery
    Params = <>
    Left = 1248
    Top = 360
  end
  object dsHistorialPersonal: TDataSource
    DataSet = zqryHistorialPersonal
    Left = 1248
    Top = 392
  end
  object reporteDocumentoVencido: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42045.430678865700000000
    ReportOptions.LastChange = 42045.465971979170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1088
    Top = 480
    Datasets = <
      item
        DataSet = frxDBDocumentoVencido
        DataSetName = 'frxDBDocumentoVencido'
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
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 876.850960000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDocumentoVencido
        DataSetName = 'frxDBDocumentoVencido'
        RowCount = 0
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 725.669760000000000000
          Height = 744.567410000000000000
          ShowHint = False
          DataField = 'archivo'
          DataSet = frxDBDocumentoVencido
          DataSetName = 'frxDBDocumentoVencido'
          HightQuality = False
        end
      end
    end
  end
  object frxDBDocumentoVencido: TfrxDBDataset
    UserName = 'frxDBDocumentoVencido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'archivo=archivo')
    DataSet = cdDocumentosVencidosMEMORIA
    BCDToCurrency = False
    Left = 1088
    Top = 520
  end
  object popupDocumentoVencido: TPopupMenu
    Left = 1088
    Top = 549
    object btnExportar: TMenuItem
      Caption = 'Exportar'
      OnClick = btnExportarClick
    end
  end
  object dlgGuardar: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Archivo PDF'
        FileMask = '*.pdf'
      end>
    Options = []
    Title = 'Guardar Documento'
    Left = 1088
    Top = 448
  end
  object frxPDFExportar: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 1088
    Top = 416
  end
  object cdEmpleadosParaReportes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1248
    Top = 293
  end
  object dsEmpleadosParaReportes: TDataSource
    DataSet = cdEmpleadosParaReportes
    Left = 1248
    Top = 328
  end
  object reportes: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42049.848047314820000000
    ReportOptions.LastChange = 42049.908560902780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1216
    Top = 328
    Datasets = <
      item
        DataSet = frxDBReportePorTipoExamen
        DataSetName = 'frxDBReportePorTipoExamen'
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
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo6: TfrxMemoView
          Left = 143.622140000000000000
          Top = 52.913420000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[NombreCompleto]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 3.779530000000000000
        Top = 234.330860000000000000
        Width = 740.787880000000000000
        DataSet = frxDBReportePorTipoExamen
        DataSetName = 'frxDBReportePorTipoExamen'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 52.913420000000000000
        Top = 393.071120000000000000
        Width = 740.787880000000000000
        object Memo1: TfrxMemoView
          Left = 665.197280000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
        object Memo4: TfrxMemoView
          Left = 45.354360000000000000
          Top = 11.338590000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Nombre y firma del empleado:')
        end
        object Memo5: TfrxMemoView
          Left = 245.669450000000000000
          Top = 11.338590000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 260.787570000000000000
        Width = 740.787880000000000000
        Condition = 'frxDBReportePorTipoExamen."fechaProgramada"'
        object Memo2: TfrxMemoView
          Left = 26.795300000000000000
          Top = 2.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxDBReportePorTipoExamen."fechaProgramada"]')
        end
        object Memo3: TfrxMemoView
          Left = 53.252010000000000000
          Top = 25.472480000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxDBReportePorTipoExamen."Resultado"]')
        end
      end
      object MasterData2: TfrxMasterData
        Top = 332.598640000000000000
        Width = 740.787880000000000000
        DataSet = frxDBReportePorTipoExamen
        DataSetName = 'frxDBReportePorTipoExamen'
        RowCount = 0
      end
      object Header1: TfrxHeader
        Height = 49.133890000000000000
        Top = 162.519790000000000000
        Width = 740.787880000000000000
        object Memo7: TfrxMemoView
          Left = 30.236240000000000000
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[TipoExamen]')
        end
      end
    end
  end
  object frxDBReportes: TfrxDBDataset
    UserName = 'frxDBReportes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NombreCompleto=NombreCompleto'
      'fechaProgramada=fechaProgramada'
      'Evaluado=Evaluado'
      'Descripcion=Descripcion'
      'EtiquetaEspecificar=EtiquetaEspecificar'
      'EspecificacionesAntecedentes=EspecificacionesAntecedentes')
    BCDToCurrency = False
    Left = 1216
    Top = 296
  end
  object cdDatosParaReporteAntecedente: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1184
    Top = 296
  end
  object popupMostrarReporteCompleto: TPopupMenu
    Left = 1184
    Top = 328
    object btnMostrarReporteCompleto: TMenuItem
      Caption = 'Mostrar Reporte Completo'
      OnClick = btnMostrarReporteCompletoClick
    end
  end
  object zqryTipoExamenMedicoUPDATE: TZQuery
    Params = <>
    Left = 1184
    Top = 448
  end
  object frxDBReportePorTipoExamen: TfrxDBDataset
    UserName = 'frxDBReportePorTipoExamen'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Resultado=Resultado'
      'idProgramaRecursivo=idProgramaRecursivo'
      'fechaProgramada=fechaProgramada'
      'Status=Status'
      'idPersonal=idPersonal'
      'codigopersonal=codigopersonal'
      'NombreCompleto=NombreCompleto'
      'telefono=telefono'
      'gruposanguineo=gruposanguineo'
      'titulocargo=titulocargo'
      'idcatalogoexamenmedico=idcatalogoexamenmedico'
      'Descripcion=Descripcion'
      'ValorMinimo=ValorMinimo'
      'ValorMaximo=ValorMaximo'
      'idTipoExamen_Medico=idTipoExamen_Medico'
      'Titulo=Titulo')
    BCDToCurrency = False
    Left = 1186
    Top = 265
  end
  object reportes2: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42051.457125173600000000
    ReportOptions.LastChange = 42059.498771527770000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = reportes2GetValue
    Left = 1218
    Top = 265
    Datasets = <
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
      end
      item
        DataSet = frxDBReporteProReaVen
        DataSetName = 'frxDBReporteProReaVen'
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
      object ReportTitle1: TfrxReportTitle
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Width = 151.181200000000000000
          Height = 98.267780000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionRH
          DataSetName = 'frxDBConfiguracionRH'
          HightQuality = False
        end
        object Memo2: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sNombre"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sRfc"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 52.913420000000000000
          Width = 529.134200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion1"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 188.976500000000000000
          Top = 69.590600000000000000
          Width = 529.134200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion2"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Top = 87.267780000000000000
          Width = 529.134200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion3"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = -0.220470000000000000
          Top = 141.622140000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 587.795610000000000000
          Top = 119.504020000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha Actual:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 661.401980000000000000
          Top = 119.504020000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[FechaActual]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        DataSet = frxDBReporteProReaVen
        DataSetName = 'frxDBReporteProReaVen'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 665.197280000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 15.118120000000000000
        Top = 272.126160000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBReporteProReaVen."idProgramaRecursivo"'
        object Memo10: TfrxMemoView
          Left = 18.897637800000000000
          Width = 294.803149606299200000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBReporteProReaVen."NombreCompleto"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 314.078740160000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBReporteProReaVen."fechaProgramada"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 450.141732280000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBReporteProReaVen."Status"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Left = 18.897650000000000000
          Top = 2.559060000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 314.228510000000000000
          Top = 2.559060000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA DE EXAMEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 450.291590000000000000
          Top = 2.559060000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTATUS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object popupReporteXTipoCompleto: TPopupMenu
    Left = 1248
    Top = 265
    object btnImprimirReporteXTipoCompleto: TMenuItem
      Caption = 'Mostrar Reporte Completo'
      OnClick = btnImprimirReporteXTipoCompletoClick
    end
  end
  object reportesDocumentos: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42051.358463923600000000
    ReportOptions.LastChange = 42059.427544432870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = reportesDocumentosGetValue
    Left = 1088
    Top = 265
    Datasets = <
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
      end
      item
        DataSet = frxDBReporteDocumentos
        DataSetName = 'frxDBReporteDocumentos'
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
      object ReportTitle1: TfrxReportTitle
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 98.267780000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionRH
          DataSetName = 'frxDBConfiguracionRH'
          HightQuality = False
        end
        object Memo6: TfrxMemoView
          Left = 157.960730000000000000
          Top = 4.338590000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 158.740260000000000000
          Top = 28.236240000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sRfc"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 158.740260000000000000
          Top = 51.472480000000000000
          Width = 563.149970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion1"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 158.740260000000000000
          Top = 69.929190000000000000
          Width = 563.149970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion2"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 158.740260000000000000
          Top = 89.488250000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion3"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = -0.220470000000000000
          Top = 140.385900000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 659.299630000000000000
          Top = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[FechaActual]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 586.252320000000000000
          Top = 117.165430000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fecha Actual:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        DataSet = frxDBReporteDocumentos
        DataSetName = 'frxDBReporteDocumentos'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 665.197280000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 15.118120000000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBReporteDocumentos."idDoctosxCargo"'
        object Memo2: TfrxMemoView
          Left = 9.118120000000000000
          Top = 0.779530000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBReporteDocumentos."NombreCompleto"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 428.976377950000000000
          Top = 0.779530000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBReporteDocumentos."StatusDocumento"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 265.834645670000000000
          Top = 0.779530000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBReporteDocumentos."rangoFechas"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 508.897960000000000000
          Top = 0.779530000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBReporteDocumentos."nombreDocumento"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 18.118120000000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Left = 9.118120000000000000
          Top = 3.000000000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 265.756030000000000000
          Top = 3.000000000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'RANGO DE FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 429.055350000000000000
          Top = 3.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 508.543600000000000000
          Top = 3.000000000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DOCUMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object popupReporteDocumentos: TPopupMenu
    Left = 1120
    Top = 265
    object VerTamaocompleto1: TMenuItem
      Caption = 'Mostrar Reporte completo'
      OnClick = VerTamaocompleto1Click
    end
  end
  object frxDBReporteDocumentos: TfrxDBDataset
    UserName = 'frxDBReporteDocumentos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'rangoFechas=rangoFechas'
      'NombreCompleto=NombreCompleto'
      'StatusDocumento=StatusDocumento'
      'nombreDocumento=nombreDocumento'
      'idDoctosxCargo=idDoctosxCargo')
    BCDToCurrency = False
    Left = 1152
    Top = 265
  end
  object reporteProReaVen: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42051.457125173600000000
    ReportOptions.LastChange = 42051.502394340280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = reporteProReaVenGetValue
    Left = 1008
    Top = 305
    Datasets = <
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
      end
      item
        DataSet = frxDBReporteProReaVen
        DataSetName = 'frxDBReporteProReaVen'
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
      object ReportTitle1: TfrxReportTitle
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Width = 151.181200000000000000
          Height = 98.267780000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionRH
          DataSetName = 'frxDBConfiguracionRH'
          HightQuality = False
        end
        object Memo2: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sNombre"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sRfc"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 52.913420000000000000
          Width = 529.134200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion1"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 188.976500000000000000
          Top = 69.590600000000000000
          Width = 529.134200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion2"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Top = 87.267780000000000000
          Width = 529.134200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sDireccion3"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = -0.220470000000000000
          Top = 141.622140000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 587.795610000000000000
          Top = 119.504020000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fecha Actual:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 661.401980000000000000
          Top = 119.504020000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[FechaActual]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Top = 298.582870000000000000
        Width = 740.409927000000000000
        DataSet = frxDBReporteProReaVen
        DataSetName = 'frxDBReporteProReaVen'
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 665.197280000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBReporteProReaVen."idProgramaRecursivo"'
        object Memo10: TfrxMemoView
          Left = 34.015770000000000000
          Top = 7.000000000000000000
          Width = 646.299630000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporteProReaVen."NombreCompleto"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 42.574830000000000000
          Top = 24.456710000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ex'#195#161'men M'#195#169'dico con fecha:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 180.196970000000000000
          Top = 24.897650000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBReporteProReaVen."fechaProgramada"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 262.023810000000000000
          Top = 24.118120000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Estatus:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 307.378170000000000000
          Top = 23.897650000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBReporteProReaVen."Status"]')
          ParentFont = False
        end
      end
    end
  end
  object popupReporteProReaVen: TPopupMenu
    Left = 1008
    Top = 265
    object MostrarTamaoCompleto1: TMenuItem
      Caption = 'Mostrar Reporte Completo'
      OnClick = MostrarTamaoCompleto1Click
    end
  end
  object frxDBReporteProReaVen: TfrxDBDataset
    UserName = 'frxDBReporteProReaVen'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idPersonal=idPersonal'
      'codigopersonal=codigopersonal'
      'NombreCompleto=NombreCompleto'
      'grupoSanguineo=grupoSanguineo'
      'idProgramaRecursivo=idProgramaRecursivo'
      'fechaProgramada=fechaProgramada'
      'Status=Status')
    BCDToCurrency = False
    Left = 1048
    Top = 265
  end
  object dsGrafica: TDataSource
    DataSet = cdGrafica
    Left = 1248
    Top = 232
  end
  object zqryGrafica: TZQuery
    Params = <>
    Left = 1248
    Top = 200
  end
  object cdGrafica: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1216
    Top = 201
  end
  object memDataScheduler: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 1032
    Top = 424
    object atncfldDataSchedulerID: TAutoIncField
      FieldName = 'ID'
    end
    object intgrfldDataSchedulerParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object intgrfldDataSchedulerType: TIntegerField
      FieldName = 'Type'
    end
    object memDataSchedulerStart: TDateTimeField
      FieldName = 'Start'
    end
    object memDataSchedulerFinish: TDateTimeField
      FieldName = 'Finish'
    end
    object intgrfldDataSchedulerOptions: TIntegerField
      FieldName = 'Options'
    end
    object strngfldDataSchedulerCaption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object intgrfldDataSchedulerRecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
    end
    object blbfldDataSchedulerRecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
    end
    object mfldDataSchedulerResourceID: TMemoField
      FieldName = 'ResourceID'
      BlobType = ftWideString
    end
    object strngfldDataSchedulerLocation: TStringField
      FieldName = 'Location'
    end
    object strngfldDataSchedulerMessage: TStringField
      FieldName = 'Message'
      Size = 255
    end
    object memDataSchedulerReminderDate: TDateTimeField
      FieldName = 'ReminderDate'
    end
    object intgrfldDataSchedulerReminderMinutes: TIntegerField
      FieldName = 'ReminderMinutes'
    end
    object intgrfldDataSchedulerState: TIntegerField
      FieldName = 'State'
    end
    object intgrfldDataSchedulerLabelColor: TIntegerField
      FieldName = 'LabelColor'
    end
    object memDataSchedulerActualStart: TDateTimeField
      FieldName = 'ActualStart'
    end
    object memDataSchedulerActualFinish: TDateTimeField
      FieldName = 'ActualFinish'
    end
    object strngfldDataSchedulerSyncIDField: TStringField
      FieldName = 'SyncIDField'
      Size = 255
    end
    object intgrfldDataSchedulerGroupId: TIntegerField
      FieldName = 'GroupId'
    end
    object strngfldDataSchedulerTesCustomField: TStringField
      FieldName = 'TesCustomField'
    end
  end
  object storageScheduler: TcxSchedulerDBStorage
    Resources.Items = <>
    Resources.ResourceColor = 'ResourceColor'
    Resources.ResourceID = 'ResourceID'
    Resources.ResourceImageIndex = 'ResourceImageIndex'
    Resources.ResourceName = 'ResourceName'
    CustomFields = <>
    DataSource = dsScheduler
    FieldNames.ActualFinish = 'ActualFinish'
    FieldNames.ActualStart = 'ActualStart'
    FieldNames.Caption = 'Caption'
    FieldNames.GroupID = 'GroupId'
    FieldNames.EventType = 'Type'
    FieldNames.Finish = 'Finish'
    FieldNames.ID = 'ID'
    FieldNames.LabelColor = 'LabelColor'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'Message'
    FieldNames.Options = 'Options'
    FieldNames.ParentID = 'ParentID'
    FieldNames.RecurrenceIndex = 'RecurrenceIndex'
    FieldNames.RecurrenceInfo = 'RecurrenceInfo'
    FieldNames.ReminderDate = 'ReminderDate'
    FieldNames.ReminderMinutesBeforeStart = 'ReminderMinutes'
    FieldNames.ResourceID = 'ResourceID'
    FieldNames.Start = 'Start'
    FieldNames.State = 'State'
    OnEventInserted = storageSchedulerEventInserted
    Left = 1000
    Top = 392
  end
  object dsScheduler: TDataSource
    DataSet = memDataScheduler
    Left = 1032
    Top = 392
  end
  object zqryFirmantes: TZQuery
    Params = <>
    Left = 1120
    Top = 296
  end
  object dsFirmantes: TDataSource
    DataSet = zqryFirmantes
    Left = 1120
    Top = 328
  end
  object cdEmpleadosParaBajas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1016
    Top = 152
  end
  object dsEmpleadosParaBajas: TDataSource
    DataSet = cdEmpleadosParaBajas
    Left = 1016
    Top = 184
  end
  object popupScheduler: TPopupMenu
    Left = 648
    Top = 64
    object btnVerEmpleados: TMenuItem
      Caption = 'Ver Empleados'
      OnClick = btnVerEmpleadosClick
    end
  end
  object dsFechasEmpleados: TDataSource
    DataSet = cdFechasEmpleados
    Left = 232
    Top = 272
  end
  object cdFechasEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 240
  end
end
