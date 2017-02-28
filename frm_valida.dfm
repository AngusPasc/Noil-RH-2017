object frmValida: TfrmValida
  Left = 121
  Top = 269
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Validaci'#243'n/Autorizaci'#243'n Reportes Diarios/Generadores/Requisicion' +
    'es/Ordenes Compra'
  ClientHeight = 355
  ClientWidth = 972
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Progress: TsGauge
    Left = 0
    Top = 339
    Width = 972
    Height = 16
    Align = alBottom
    SkinData.SkinSection = 'GAUGE'
    ForeColor = clBlack
    Progress = 0
    Suffix = '%'
    ExplicitLeft = 4
    ExplicitTop = 332
    ExplicitWidth = 762
  end
  object SecretPanel1: TSecretPanel
    Left = 860
    Top = 0
    Width = 112
    Height = 339
    Align = alRight
    BevelInner = bvLowered
    BevelOuter = bvRaised
    ParentColor = True
    TabOrder = 1
    object BtnValida: TAdvGlowButton
      Left = 3
      Top = 2
      Width = 106
      Height = 46
      Caption = 'Valida Reportes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 59
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnValidaClick
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
    object btnExit: TAdvGlowButton
      Left = 3
      Top = 95
      Width = 106
      Height = 47
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 58
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnExitClick
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
    object btnAutoriza: TAdvGlowButton
      Left = 2
      Top = 48
      Width = 107
      Height = 47
      Caption = 'Autoriza Reportes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 57
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnAutorizaClick
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
    object chkOrdenEntregada: TcxCheckBox
      Left = -3
      Top = 154
      Caption = 'Orden Entregada'
      ParentFont = False
      TabOrder = 3
      Width = 121
    end
  end
  object pgValidacion: TPageControl
    Left = 0
    Top = 0
    Width = 860
    Height = 339
    Cursor = crHelp
    ActivePage = TabRequisicion
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Images = connection.ImageList1
    ParentFont = False
    TabOrder = 0
    OnChange = pgValidacionChange
    object tabReportes: TTabSheet
      Caption = '&Reportes Diario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 52
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 862
      ExplicitHeight = 299
      object Grid_reportes: TRxDBGrid
        Left = 0
        Top = 30
        Width = 852
        Height = 279
        Cursor = crHelp
        Hint = 'Aqu'#237' se reflejan los resultados de las consultas'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = ds_reportediario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDblClick = Grid_reportesDblClick
        MultiSelect = True
        OnGetCellParams = Grid_reportesGetCellParams
        Columns = <
          item
            Color = 13675935
            Expanded = False
            FieldName = 'dIdFecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Color = 13675935
            Expanded = False
            FieldName = 'sNumeroReporte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'No. Reporte'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sOrigen'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Turno/Origen'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 90
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
            Title.Alignment = taCenter
            Title.Caption = 'Convenio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Color = clInactiveCaptionText
            Expanded = False
            FieldName = 'lStatus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdUsuario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Creador'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdUsuarioAutoriza'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Autoriz'#243
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end>
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 852
        Height = 30
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 862
        object Label2: TLabel
          Left = 5
          Top = 7
          Width = 64
          Height = 15
          Caption = 'Frente de T.'
        end
        object tsNumeroOrden: TDBLookupComboBox
          Left = 73
          Top = 4
          Width = 171
          Height = 23
          Hint = 'No. de Orden'
          Color = 15138559
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          KeyField = 'sNumeroOrden'
          ListField = 'sNumeroOrden'
          ListSource = ds_ordenesdetrabajo
          ParentFont = False
          TabOrder = 0
          OnEnter = tsNumeroOrdenEnter
          OnExit = tsNumeroOrdenExit
          OnKeyPress = tsNumeroOrdenKeyPress
        end
      end
    end
    object TabGeneradores: TTabSheet
      Caption = '&Generadores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 46
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 862
      ExplicitHeight = 299
      object Grid_Generadores: TRxDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 309
        Cursor = crHelp
        Hint = 'Aqu'#237' se reflejan los resultados de las consultas'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = ds_estimaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDblClick = Grid_GeneradoresDblClick
        OnGetCellParams = Grid_reportesGetCellParams
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'iConsecutivo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = '#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iNumeroEstimacion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Est.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 35
            Visible = True
          end
          item
            Color = 13675935
            Expanded = False
            FieldName = 'sNumeroOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'Frente de Trabajo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 155
            Visible = True
          end
          item
            Color = 13675935
            Expanded = False
            FieldName = 'sNumeroGenerador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Generador'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaInicio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Inicio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaFinal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Termino'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Color = clInactiveCaptionText
            Expanded = False
            FieldName = 'lStatus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdUsuario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Creador'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdUsuarioAutoriza'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Autoriz'#243
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
    end
    object TabEstimaciones: TTabSheet
      Caption = '&Estimaciones'
      ImageIndex = 55
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 862
      ExplicitHeight = 299
      object Grid_Estimaciones: TRxDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 309
        Hint = 'Aqu'#237' se reflejan los resultados de las consultas'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = dsEstimacionPeriodo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnGetCellParams = Grid_EstimacionesGetCellParams
        Columns = <
          item
            Alignment = taCenter
            Color = 13675935
            Expanded = False
            FieldName = 'iNumeroEstimacion'
            Title.Alignment = taCenter
            Title.Caption = 'Estimacion'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Tipo de Estimacion'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lEstimado'
            Title.Alignment = taCenter
            Title.Caption = 'Autorizada?'
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Alignment = taCenter
            Title.Caption = 'F-Inicio'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Alignment = taCenter
            Title.Caption = 'F-Final'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dMontoMN'
            Title.Alignment = taRightJustify
            Title.Caption = '$ Estimado MN'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dRetencion'
            Title.Alignment = taRightJustify
            Title.Caption = '$ Retencion'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdUsuarioAutoriza'
            Title.Caption = 'Autorizo'
            Width = 90
            Visible = True
          end>
      end
    end
    object TabRequisicion: TTabSheet
      Caption = 'Requisiciones'
      ImageIndex = 56
      object Grid_requisicion: TRxDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 309
        Cursor = crHelp
        Hint = 'Aqu'#237' se reflejan los resultados de las consultas'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = ds_requisicion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        MultiSelect = True
        OnGetCellParams = Grid_requisicionGetCellParams
        Columns = <
          item
            Expanded = False
            FieldName = 'iFolioRequisicion'
            Title.Caption = 'Folio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 51
            Visible = True
          end
          item
            Color = 13675935
            Expanded = False
            FieldName = 'sNumFolio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Requisicion'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sNumeroOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Referencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaSolicitado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'F. Solicitado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaRequerido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'F. Requerido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sRecibido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Recibe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sRevision'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valida'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sStatus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end>
      end
    end
    object TabOrdenCompra: TTabSheet
      Caption = 'Orden Compra'
      ImageIndex = 54
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 862
      ExplicitHeight = 299
      object Grid_OrdenCompra: TRxDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 309
        Cursor = crHelp
        Hint = 'Aqu'#237' se reflejan los resultados de las consultas.'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = ds_OrdenCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        MultiSelect = True
        OnGetCellParams = Grid_OrdenCompraGetCellParams
        Columns = <
          item
            Color = 13675935
            Expanded = False
            FieldName = 'sOrdenCompra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Orden Compra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sNumeroOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Referencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dIdFecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'F. Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaEntrega'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'F. Entrega'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sElaboro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Recibe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sReviso1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valida'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sStatus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Recepci'#243'n Materiales'
      ImageIndex = 57
      OnShow = TabSheet1Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 862
      ExplicitHeight = 299
      object Grid_RecepcionDeMateriales: TRxDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 309
        Cursor = crHelp
        Hint = 'Aqu'#237' se reflejan los resultados de las consultas.'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = ds_recepciondemateriales
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        MultiSelect = True
        OnGetCellParams = Grid_RecepcionDeMaterialesGetCellParams
        Columns = <
          item
            Color = 13675935
            Expanded = False
            FieldName = 'sFolio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Recepci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdAlmacen'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'Almac'#233'n Destino'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaRecepcion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sStatus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Estado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Salida Materiales'
      ImageIndex = 41
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 862
      ExplicitHeight = 299
      object grid_salidas: TRxDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 309
        Cursor = crHelp
        Hint = 'Salida de Mateiales'
        Align = alClient
        Color = 15138559
        Ctl3D = False
        DataSource = ds_salida
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        MultiSelect = True
        OnGetCellParams = grid_salidasGetCellParams
        Columns = <
          item
            Color = 13675935
            Expanded = False
            FieldName = 'sFolioSalida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Folio Salida'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sNumeroOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Referencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Movimiento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaSalida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Salida'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdUsuario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Usuario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sEstatus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object ds_reportediario: TDataSource
    AutoEdit = False
    DataSet = ReporteDiario
    Left = 64
    Top = 248
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = ordenesdetrabajo
    Left = 286
    Top = 192
  end
  object ds_estimaciones: TDataSource
    AutoEdit = False
    DataSet = Estimaciones
    Left = 136
    Top = 179
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
    Left = 584
    Top = 101
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
      object GroupHeader1: TfrxGroupHeader
        Height = 25.322834650000000000
        Top = 359.055350000000000000
        Width = 740.409927000000000000
        Condition = 'dsGenerador."sIsometricoReferencia"'
        ReprintOnNewPage = True
        OutlineText = 'dsGenerador."sIsometricoReferencia"'
        StartNewPage = True
        Stretched = True
        object Memo24: TfrxMemoView
          Left = 1.889763780000000000
          Width = 142.110219130000000000
          Height = 25.322834650000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PLANO REF. DE LA CIA.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 143.999982910000000000
          Width = 69.165354330000000000
          Height = 25.322834650000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PARTIDA ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 213.165337240000000000
          Width = 376.440961970000000000
          Height = 25.322834650000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONCEPTO/DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 649.322834650000000000
          Width = 89.574803150000000000
          Height = 25.322834650000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD GENERADA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 589.606299212598000000
          Width = 59.716535433070900000
          Height = 25.322834650000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
        DataSet = frmDiarioTurno2.dsGenerador
        DataSetName = 'dsGenerador'
        OutlineText = '<dsGenerador."sNumeroActividad">'
        RowCount = 0
        Stretched = True
        object Memo30: TfrxMemoView
          Left = 143.999982910000000000
          Width = 69.165354330000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerador."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 213.165337240000000000
          Width = 376.440961970000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerador."mDescripcion"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 589.606299210000000000
          Width = 59.716535430000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsGenerador."sMedida"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 649.322834650000000000
          Width = 89.574803150000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
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
            '[dsGenerador."dGenerado"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 1.889763780000000000
          Width = 142.110219130000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ISOMETRICOS]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 279.976377950000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
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
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 153.299320000000000000
          Height = 46.913420000000000000
          ShowHint = False
          Center = True
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
        object Memo4: TfrxMemoView
          Left = 1.779530000000000000
          Top = 83.149606299212610000
          Width = 324.307360000000000000
          Height = 52.157480314960600000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NUMEROS GENERADORES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 320.086890000000000000
          Top = 83.149606300000000000
          Width = 421.819110000000000000
          Height = 52.157480310000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'PROCEDIMIENTO ADMINISTRATIVO PARA LA ELABORACION'
            'Y TR'#195#129'MITE DE GENERADORES DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 1.889763780000000000
          Top = 248.314945980000000000
          Width = 150.803149610000000000
          Height = 13.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CONTRATO No.: [contrato."sContrato"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 152.519790000000000000
          Top = 248.314945980000000000
          Width = 132.661417322835000000
          Height = 13.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CONTRATISTA: [setup."sNombreCorto"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 285.244280000000000000
          Top = 248.314945980000000000
          Width = 144.842610000000000000
          Height = 13.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CENTRO GESTOR: [contrato."sCentroGestor"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 430.086890000000000000
          Top = 248.314945980000000000
          Width = 143.842610000000000000
          Height = 13.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CENTRO BENEFICIO: [contrato."sCentroBeneficio"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 573.929500000000000000
          Top = 248.314945980000000000
          Width = 165.165354330000000000
          Height = 13.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'POSICION FINANCIERA: [contrato."sPosicionFinanciera"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 1.889763780000000000
          Top = 262.299197950000000000
          Width = 168.188976380000000000
          Height = 13.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ELEMENTO PEP: [contrato."sElementoPEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 169.858380000000000000
          Top = 262.299197950000000000
          Width = 150.267780000000000000
          Height = 13.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CENTRO DE COSTO: [contrato."sCentroCosto"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 320.039580000000000000
          Top = 262.299197950000000000
          Width = 138.330708660000000000
          Height = 13.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FONDO: [contrato."sFondo"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 458.220780000000000000
          Top = 262.299197950000000000
          Width = 129.826840000000000000
          Height = 13.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CUENTA DE MAYOR: [contrato."sCuentaMayor"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 587.504330000000000000
          Top = 262.299197950000000000
          Width = 151.559055120000000000
          Height = 13.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIPO: [contrato."sTipoObra"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo42: TfrxMemoView
          Left = 436.535408660000000000
          Top = 230.551181100000000000
          Width = 98.267706770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'REF. DE PEMEX')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 534.803115430000000000
          Top = 230.551181100000000000
          Width = 203.338582680000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerador."sIsometricoReferencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 436.535408660000000000
          Top = 190.866141730000000000
          Width = 98.267706770000000000
          Height = 18.897632910000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SEMANA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 436.535408660000000000
          Top = 137.952755910000000000
          Width = 98.267706770000000000
          Height = 13.228346460000000000
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
        object Memo61: TfrxMemoView
          Left = 583.937078660000000000
          Top = 164.409448820000000000
          Width = 64.251936770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'MONEDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 534.803115430000000000
          Top = 151.181102360000000000
          Width = 203.338592440000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              'DEL [dsGenerador."dFechaInicioEst"] AL [dsGenerador."dFechaFinal' +
              'Est"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 534.803115430000000000
          Top = 137.952755910000000000
          Width = 203.338592440000000000
          Height = 13.228346460000000000
          ShowHint = False
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
        object Memo64: TfrxMemoView
          Left = 648.189015430000000000
          Top = 164.409448820000000000
          Width = 89.952692440000000000
          Height = 13.228346460000000000
          ShowHint = False
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
        object Memo65: TfrxMemoView
          Left = 534.803115430000000000
          Top = 190.866141730000000000
          Width = 203.338592440000000000
          Height = 18.897632910000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              'SEMANA #[dsGenerador."iSemana"] GENERADOR No. [dsGenerador."sNum' +
              'eroGenerador"]'
            'DEL [dsGenerador."dFechaInicio"] AL [dsGenerador."dFechaFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 436.535408660000000000
          Top = 151.181102360000000000
          Width = 98.267706770000000000
          Height = 13.228346460000000000
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
        object Memo67: TfrxMemoView
          Left = 436.535408660000000000
          Top = 164.409448820000000000
          Width = 98.267706770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ANEXO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 534.803115430000000000
          Top = 164.409448820000000000
          Width = 49.133858270000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ANEXO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 436.535408660000000000
          Top = 209.763774650000000000
          Width = 98.267706770000000000
          Height = 20.787406460000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FASE DE LA OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 534.803115430000000000
          Top = 209.763774650000000000
          Width = 203.338592440000000000
          Height = 20.787406460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerador."sFaseObra"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 1.889763780000000000
          Top = 137.952755910000000000
          Width = 434.645669290000000000
          Height = 105.826771650000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'OBRA: [contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 436.535433070000000000
          Top = 177.637795280000000000
          Width = 98.267706770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 16300221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NO. DE ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 534.803149610000000000
          Top = 177.637795280000000000
          Width = 203.338592440000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsGenerador."sNumeroOrden"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 115.236240000000000000
        Top = 514.016080000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 288.244280000000000000
          Top = 89.118119999999970000
          Width = 449.764070000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
        object Memo35: TfrxMemoView
          Left = 3.000000000000000000
          Top = 89.118119999999970000
          Width = 275.905690000000000000
          Height = 22.338590000000000000
          ShowHint = False
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
        object Memo37: TfrxMemoView
          Left = 4.000000000000000000
          Width = 238.110236220472000000
          Height = 24.944881889763800000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'POR EL CONTRATISTA'
            'REALIZO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 251.126160000000000000
          Width = 238.110236220000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'POR PEMEX'
            'REVISO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 4.220470000000000000
          Top = 41.574803149606280000
          Width = 238.110236220472000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERINTENDENTE]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 4.220470000000000000
          Top = 26.456692913385840000
          Width = 238.110236220472000000
          Height = 13.984251968503900000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERINTENDENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 251.228510000000000000
          Top = 41.574803150000090000
          Width = 238.110236220000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 251.228510000000000000
          Top = 26.456692910000020000
          Width = 238.110236220000000000
          Height = 13.984251970000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 251.330860000000000000
          Top = 71.165120000000000000
          Width = 234.330708660000000000
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
        object Memo50: TfrxMemoView
          Left = 498.897960000000000000
          Width = 238.110236220000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'POR PEMEX'
            'AUTORIZO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 499.000310000000000000
          Top = 41.574803150000090000
          Width = 238.110236220000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR_TIERRA]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 499.000310000000000000
          Top = 26.456692910000020000
          Width = 238.110236220000000000
          Height = 13.984251970000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR_TIERRA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object lblValida: TfrxMemoView
          Left = 18.897650000000000000
          Width = 211.653680000000000000
          Height = 113.385900000000000000
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
          Left = 253.228510000000000000
          Width = 230.551330000000000000
          Height = 113.385900000000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 3.779530000000000000
        Top = 449.764070000000000000
        Width = 740.409927000000000000
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Width = 729.449290000000000000
          Height = 3.779530000000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
    end
  end
  object rDiario: TfrxReport
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
    ReportOptions.LastChange = 38906.196374641200000000
    ReportOptions.Picture.Data = {
      0A544A504547496D616765C88E0000FFD8FFE000104A4649460001010100C800
      C80000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC00011080124042103012200021101031101
      FFC4001F0000010501010101010100000000000000000102030405060708090A
      0BFFC400B5100002010303020403050504040000017D01020300041105122131
      410613516107227114328191A1082342B1C11552D1F02433627282090A161718
      191A25262728292A3435363738393A434445464748494A535455565758595A63
      6465666768696A737475767778797A838485868788898A92939495969798999A
      A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
      D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
      01010101010101010000000000000102030405060708090A0BFFC400B5110002
      0102040403040705040400010277000102031104052131061241510761711322
      328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
      292A35363738393A434445464748494A535455565758595A636465666768696A
      737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
      A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
      E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
      A28A2800A2909C570DE23F8EFF000D7C1DACDC691AF7C41F0B689AB5BEDF3AC7
      51D66DE09E2DCA197723B861956523239041EF401DD515574BD56CB5CD36D351
      D36EE0D434FBB8927B7BAB5904914D1B00CAE8CA4865208208E08356A800A28A
      2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
      2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2B2
      FC4BE28D1BC19A35C6AFE20D5AC743D26DF6F9D7DA8DC25BC116E60ABB9DC851
      966503279240EF587E10F8C7E01F883A949A7785FC6DE1DF11EA11C4677B5D27
      5582EA558C10A5CAA3921416519E9961EB401D85145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      145140051451400514514005145140051451401F9D7FF055CFDA635DF05C1A4F
      C28F0E5DCFA62EB7A7B5FEB775128569ED5DDA38EDD240D90AC639BCC1B46E5D
      8BB8AB48A7F2CC924E49C9F7AFA63FE0A4673FB67FC42FFB87FF00E9BEDABE67
      ACDEE6C9687B9FECA7FB55F8AFF66CF881A4DD5A6AD7D2F8364BB0758D043196
      09E1728B3491C2CEAA27088BB24CA9CA2AB128594FEF62B06504742335FCD057
      F429FB3173FB36FC29FF00B1534AFF00D248A9C499A3D328A28AB330A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A6C876A311D403401F057EDBDFF00
      051EFF008545AD5CF80FE183596A5E29B7F321D5B599D3CE834D936951144B9D
      AF708C43316DC8857632BB1758FE41F0D7FC14E7F680D0B5AB6BEBDF14597886
      D62DDBF4DD4749B64826CA903718123906090C36B8E40CE4641F9A3C57E23D47
      C63E28D635ED5EE3ED7AB6A97935EDE5C6C54F36691CBBB6D501465989C0000C
      F00565D67766CA28FE803F663FDA6FC2DFB50780135FD01FEC7A9DB6D8B56D12
      69034FA7CC41C027037C6D8629200030078565745F60AFC96FF823DF89351B5F
      8DDE32D022B8DBA4DF787CDF5C5BEC53BE682E22489B76370DAB7130C0201DFC
      83818FD69AB4EE66D598514514C90A28A2800A28A2800A28A2800A28A2800A28
      A2800AA9AAEAB67A1E9779A96A175058D859C2F71717573208E2863452CCEECC
      4055001249380055BAF33FDA77FE4DB7E2B7FD8A9AAFFE924B401F883FB48FED
      17E25FDA4BE23EA3E24D6E79ED74E6998E9DA18BB926B6D3A3DA89B620C70198
      4685D95543BE5B68E00F33D2B55BDD0B53B4D474DBB9EC350B49527B7BAB590C
      72C32290CAE8CA4156040208E4115568AC8E83F71FF604FDA6F51FDA5FE0DCD7
      BE237B2FF84B343BBFECFBF36B2287B94F2D5A2BA78401E5799975C0F94B4521
      5DA3E45FA66BF33FFE08C9FF003577FEE13FFB795FA615A2D8C1E8C28A28A620
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A4240193C0A005A2B0BC21E3BF0D7C41D365D43C2DE21D2FC496114A6DE4B
      AD26F63BA8924003142D1B101806538EB861EB5BB40051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      140051451401F86FFF000523FF0093CFF885FF0070FF00FD37DB57CCF5F4C7FC
      148FFE4F3FE217FDC3FF00F4DF6D5F33D64F7375B057F429FB317FC9B6FC29FF
      00B1534AFF00D248ABF9EBAFE853F662FF00936DF853FF0062A695FF00A49155
      4499EC7A65145156641457CF3FB41FEDD9F0AFF671D68687AFDF5EEB1E235F2D
      A6D1B4381669EDE3756657959D9234E02FC85F7E2446DBB5B7561FC14FF828DF
      C1FF008DBE2C83C356975AA786759BC9520B083C416C90ADEC8C1B091C91BC88
      1B2A000E54B33A2A6E2714AE3B33EA2A28A42428C9381EF4C42D15F3D7C44FDB
      F3E04FC37F3E2BAF1ED96B57A968D7515AF87D5B50F3F1BB11ACB1030AC8C548
      0AEEB8CA96DAA41AF20FF87BE7C1DFFA16FC6DFF0080369FFC954AE87667DC94
      57CA9F0F3FE0A69F027C79E4C575AF5EF846F67BB5B58AD7C4162D1EECEDC48D
      2C5E6451C796C16775C6D62D85C13F50E97AAD96B9A6DA6A3A6DDC1A869F7712
      4F6F756B209229A360195D19490CA410411C106985AC5AA28A28105325FF0054
      FF00434E2715C278A3E3BFC35F07EAB75A3EBDF107C2DA2EAD6E079D61A8EB36
      F04F16E50CBB91DC30CAB29191C820F7A00FE7765FF5AFF534DA74873231F734
      DAC8E83EE4FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAFC66FF00825978
      EFC35F0F7F680D7F51F14F8834BF0DE9F2F86A7812EB56BC8ED62790DD5AB040
      D2100B10AC71D70A7D2BF537FE1A77E0F1FF009AADE09FFC286D3FF8E55AD8CA
      5B9E994520218641C8F6A5AA2028A28A0028A4240192703DEBC5FE23FED9BF05
      7E146A434EF11FC42D2E2BF12CB0496B61E65FCB6F24442C8932DBAB9898138C
      3ED2486C6769C007B4D15F126A9FF0571F83161A95DDAC1A478BF5282195E34B
      CB6B0B7114EA090244124EAE1580C8DCAAD83C8078A34BFF0082B8FC18BFD4AD
      2D67D23C5FA6C134A91BDE5CD85B98A0524032388E7672AA0E4ED566C0E013C5
      2BA2B959F6DD15E2DF0E3F6CDF82BF15F523A77873E216972DF9962823B5BFF3
      2C25B892525634856E150CAC48C6137104AE71B867DA0104641C8F6A648B4514
      50015E67FB4EFF00C9B6FC56FF00B15355FF00D2496BD32BCCFF0069DFF936DF
      8ADFF62A6ABFFA492D035B9FCF5D1451591B9FA61FF0464FF9ABBFF709FF00DB
      CAFD30AFCCFF00F82327FCD5DFFB84FF00EDE57E98568B63196E14514532428A
      28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A4240193C
      0AF873F6A9FF00829EF85BE167DA3C3FF0CFEC5E36F14AF92C753DE26D1E056C
      B3AF991C81A69028518421419397DC8D195B0D2B9F50FC6BF8F9E09FD9FBC273
      EBBE32D6A0B05589E4B5D3D6453797ECA5418EDE224191B2E80FF0AEE058AAE5
      87E4B7ED5DFF00050EF1B7C7FB8BED07C3D2CFE0FF0001F9B2A4769692B4779A
      840C9E5EDBC756219482E4C4B84FDE61BCC28AF5F38FC44F89BE2AF8B3E259F5
      FF00186BD7DE20D5A5DC3ED17B297F2D0BB3F971AFDD8E30CEC446802AEE3802
      B99A86EE6AA363D0BE0A7C7CF1B7ECFDE2C835EF06EB53D83ACA925D69ED231B
      3BF550C04771102048B877033F32EE254AB6187EB4FECA3FF050EF04FC7FB7B1
      D07C432C1E0FF1E795124969772AC767A84ECFE5EDB37662598928444D87FDE6
      17CC08CF5F8A940241C8E0D09D81A4CFE9828AFC83FD95BFE0A7BE29F859F67F
      0FFC4CFB6F8DBC2CBE730D4F799B58819B0C8BE6492059A30C1861C86024E1F6
      A2C67F557E1DFC4DF0AFC59F0D41AFF83F5EB1F106932ED1F68B2943F96E515F
      CB917EF47205752637019770C81569DCC9A68E9E8A28A620A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803
      F0DFFE0A47FF00279FF10BFEE1FF00FA6FB6AF99EBE98FF8291FFC9E7FC42FFB
      87FF00E9BEDABE67AC9EE6EB60AFE853F662FF00936DF853FF0062A695FF00A4
      9157F3D75FD0A7ECC5FF0026DBF0A7FEC54D2BFF004922AA8933D8F4CAE63E28
      78CFFE15C7C35F1678B05A7F681D0B49BAD4FEC9E6797E7F930B49B37E0EDCED
      C670719CE0D74F5E67FB4EFF00C9B6FC56FF00B15355FF00D2496ACC8FE7FBC5
      3E25D47C67E26D5BC41AC5C7DAF56D56EE5BEBCB8D8A9E6CD239776DAA028CB3
      13800019E00ACC048391C1A28AC8E83F687F657FDAC74DB4FD86ADFE2378F75F
      BDD6EE7C2FE769FACDCF90D25D3CCB305B68B2401248D1CD6A3CC2704BE5DC10
      E47E7B7ED7FF00B6FF008ABF697F12DDD969F757DE1EF87B17EE6D341498A7DA
      903AB09AEC29DB2485911829CAC7B405C9DCEFE07278E75E93C110783CEA738F
      0CC3A849AAAE98A42C46E9E3489A5603EF3048D546ECED05B6E37B66D7C3CF86
      7E2AF8B3E248740F07E837DE21D5A5DA7ECF65117F2D0BAA799237DD8E30CEA0
      C8E42AEE19229DC9492D4E668AFB6B4BFF0082477C67BFD36D2EA7D5FC21A6CF
      344923D9DCDFDC1960620131B98E0642CA4E0ED665C8E091CD7907C78FD87FE2
      CFECF3A6DE6B1E23D120BEF0CDACB142DAF69172B3DB6E900DA4A9DB2A2EE3B3
      73C6ABBF0013B9772B31DD1E095ED3FB347ED61E36FD997C5B697DA25F4F7FE1
      C3296D43C357170C2CEED5828760BC88E6C226D940DC3680772EE46F16A2819F
      D137C17F8D1E15F8F9E00B0F177846FF00ED9A6DCFC92C3200B3DA4C002F04C8
      09D922E46464820AB29656563DD57E337FC12E3E364BF0DBF6844F0A5D5C430E
      85E338BEC531B8992254BB895DED5C33292CC4992158C32EE6B81F78AA8AFD99
      AD13B98B5667C23FF0564F8D9AF7C3DF85FE1AF06E87713E9EBE2E96E9750BDB
      7982335A40B187B6236E76C86742C432FCB19421964615F91A492724E4FBD7EF
      27ED97FB2CD9FED53F0B97468EEA0D2FC4DA64A6F347D4A68832AC9B4AB43236
      D2EB0C831BB67219236C3ECDA7F317C4DFF04C7F8FFA0EB3736567E17B2F105A
      C5B76EA5A76AD6C904D9504ED13BC720C1254EE41CA9C646099699716AC7CAB4
      50460907A8A2A4B0A2BB9F841F04BC69F1E7C4B73A0781746FEDCD5ADAD1AFA5
      B7FB4C36FB6157442DBA57553F3488300E79E9C1AF68D2FF00E09A3FB42EA1A9
      5A5ACFE0A834D86695237BCB9D62CCC502920191C472B39551C9DAACD81C0278
      A2C2BA3DCFFE090FF163C4B73F10BC4BF0FEEB529EF7C329A236A56B6B733C92
      2D9491DCA2910296D91AB9BA919C05CB32A1C8C1CFEA657C95FB0CFEC3317ECB
      56FA8F887C43A8C1AC78F35289ACE496C247FB1DA5A6F56F2E3DC14BB3944667
      6518C0550006693EB5AD16C652D58578FF00ED37FB4E7857F65FF00BEBFAFBFD
      B353B9DD1695A2432059F509801900E0EC8D72A5E420850470CCC88DD37C71F8
      B1A77C0DF84DE26F1CEA89E75B68F68664B7CB2FDA26621218772AB15DF2B226
      EDA42EEC9E01AFC12F8D1F1A3C55F1F3C7F7FE2EF175FF00DB352B9F92286305
      60B4841252085093B235C9C0C92496662CCCCC46EC11573D0FF68FFDB53E247E
      D1FA9DFC3A9EAF3E8DE109652D6FE18D3E5D96D1C7942AB33285370C0C68DBA4
      C80FB8A2A03B4781939A2BD5BF677FD99FC6DFB4DF8B27D0FC1F6B0AA5A45E75
      EEA97ECD1D9D9A9076091D558EE720855552C70C71B55D973DCD763CA68AFD5F
      F07FFC11DFC0565A6489E29F1CF88758D40CA5927D26282C2258F030A6391672
      5B3B8EEDC06081B4632733E23FFC11DFC3573A687F0178E754D3F508A294983C
      451477515CC981E52F9912C6615C8219B6C870C085F970CECC5CC8FCB30715EF
      9FB387EDA9F123F670D4EC21D33579F59F0845286B8F0C6A12EFB6923CB96585
      9831B7626476DD1E017DA5D5C0DA78FF008EFF00B3978EFF00671F1245A478DB
      48FB17DABCC6B1BFB7904B6B7B1A3ED2F1483FE0276305750E8595770CF99D2D
      87B9FD007ECC9FB4E7857F6A0F00A6BFA03FD8F53B6DB16ABA24D2069F4F9883
      804E06F8DB0C524000600F0ACAE8BEC15FCF17C03F8D9AF7ECFDF14745F19683
      713AB5A4CAB7B6714C235BFB42CA65B6725586D703192A76B0570372A91FBEDF
      0CFE21E8FF00167C01A0F8C3409BCED2759B44BB872C8CF1EE1F346FB1994488
      DB91D413B595876AD13B994958E9EBCCFF0069DFF936DF8ADFF62A6ABFFA492D
      7A65799FED3BFF0026DBF15BFEC54D57FF004925A625B9FCF5D1451591B9FA61
      FF000464FF009ABBFF00709FFDBCAFD30AFCCFFF0082327FCD5DFF00B84FFEDE
      57E98568B63196E14514532428A28A0028A28A0028A28A0028A28A0028A28A00
      28A29090064F028016BCF3E35FC7CF04FECFDE139F5DF196B50582AC4F25AE9E
      B229BCBF652A0C76F1120C8D97407F857702C5572C3E5EFDAA7FE0A7BE16F859
      F68F0FFC33FB178DBC52BE4B1D4F789B47815B2CEBE6472069A40A1461085064
      E5F723467F2A7E227C4DF157C59F12CFAFF8C35EBEF106AD2EE1F68BD94BF968
      5D9FCB8D7EEC7186762234015771C0152D96A37DCFA3BF6AEFF828778DBE3FDC
      5F683E1E967F07F80FCD9523B4B495A3BCD42064F2F6DE3AB10CA4172625C27E
      F30DE61457AF92E8A2A0D12B05145140C28A28A002BD0BE0A7C7CF1B7ECFDE2C
      835DF06EB53D832CA925D69ED231B3BF550C04771102048B87703F897712A55B
      0C3CF68A00FDABFD947FE0A1DE09F8FF006F63A0F886583C1FE3CF2A2492D2EE
      558ECF509D9FCBDB66ECC4B31250889B0FFBCC2F98119EBEB5AFE67C120E4706
      BEE4FD95BFE0A7BE29F859F67F0FFC4CFB6F8DBC2CBE730D4F799B58819B0C8B
      E6492059A30C1861C86024E1F6A2C6693EE66E3D8FD7CA2B98F877F137C2BF16
      7C3506BFE0FD7AC7C41A4CBB47DA2CA50FE5B9457F2E45FBD1C815D498DC065D
      C320574F56661451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      450014514500145145007E1BFF00C148FF00E4F3FE217FDC3FFF004DF6D5F33D
      7D31FF000523FF0093CFF885FF0070FF00FD37DB57CCF593DCDD6C15FD0A7ECC
      5FF26DBF0A7FEC54D2BFF4922AFE7AEBFA14FD98BFE4DB7E14FF00D8A9A57FE9
      245551267B1E995E67FB4EFF00C9B6FC56FF00B15355FF00D2496BD32BCCFF00
      69DFF936DF8ADFF62A6ABFFA492D599ADCFE7AE8A28AC8DCE9BE19FC3CD63E2C
      F8FF0041F07E810F9DAB6B3769690E55D923DC7E691F62B308D1773BB0076AAB
      1ED5FBDBFB3FFECFFE15FD9E7C01A6787BC3DA658C57D1DA430EA5ABC16A229F
      5399012D34AC4B31CBBC8CAA598207DAB850057E687FC122BC31FDABFB446BDA
      C4DA4FDAEDB4AF0FCDE5DFBDBEF4B4B992685530E4612478C5C0182095120191
      BABF5F2AE26527D02AA6ABA5596BBA5DDE9BA8DA417FA7DE42F6F716B7318922
      9A3605591D5810CA412083C106ADD15441FCF17ED0BF0B25F829F1B3C63E0A78
      E78E0D2750923B43732A492C968DF3DB48EC9F2EE685E36380305B0429040F3C
      AFB47FE0ACDE1BD3B43FDA8AD6F6C6DFC9B9D63C3F6B7D7CFBD9BCE99649A00D
      82485FDDC112E1703E5CE32493F17564CDD6C74FF0BBC65FF0AEBE25F84FC57F
      64FED0FEC3D5AD353FB2799E5F9FE4CCB26CDF83B776DC670719CE0D7F470ADB
      941F519AFE68A2FF005A9F515FD2DC5FEA93E82AA244C7D325FF0054FF00434F
      A64BFEA9FE86ACCCFE6925FF005AFF00534DA74BFEB5FEA69B591D07DC9FF048
      3FF9392F127FD8A971FF00A57695FAF95F907FF0483FF9392F127FD8A971FF00
      A57695FAF9571D8CA5B85145213815441F967FF0579F8D92EA7E2CF0D7C2DB0B
      885F4FD3225D6B52114C9231BA903A431BAEDDD1B245B9F1BBE65B95257E5527
      F3B2BD57F6ACF1C4BF117F690F88FAEC9A9C1AC4336B77305A5F5B14314B6B13
      986DCA327CACA218E3018677019249249F2AAC9EE6E9591A7E16F0D6A3E33F13
      693E1FD1EDFED7AB6AB77158D9DBEF54F36691C222EE621465980C9200CF2457
      F413F00FE09E85FB3F7C2ED17C1DA15BC08B690AB5EDE45098DAFEECAA896E5C
      1663B9C8CE0B1DAA1501DAAA07E4FF00FC12C7C1ABE27FDAC2C3536BC16A3C3B
      A55E6A7E518F77DA3728B5D99C8DB8FB56FCE0FDCC639C8FDA1F353FBEBF9D5C
      4893E83E8A679A9FDF5FCE8F353FBEBF9D5199E57FB50FC0CB2FDA23E0A788BC
      1B3AC09A84F0FDA34BBA9C002DAF63F9A17DC51CA293F23951B8C724807DEAFC
      00D574BBCD0F53BBD3751B49EC350B399EDEE2D6E6331CB0C8A4AB23A9C15604
      1041E4115FD29F9A9FDF5FCEBF077F6F0F08D97827F6B8F893A7D84B34D04FA8
      2EA4CD3B066125D431DCC801000DA1E660A3A8503249C93123483E878257EA1F
      FC120BE344FA968BE2DF861A95FF009BFD9DB758D22DDC4AEEB0BB6CBA50C494
      48D64303041B4969E46F9B276FE5E57D57FF0004C6F126A3A17ED81E16B2B1B8
      F26DB58B4BEB1BE4D8ADE742B6D24E172412BFBC8226CAE0FCB8CE09052DCA96
      C7EDAD799FED3BFF0026DBF15BFEC54D57FF004925AF4CAF33FDA77FE4DB7E2B
      7FD8A9AAFF00E924B5A192DCFE7AE8A28AC8DCFD30FF0082327FCD5DFF00B84F
      FEDE57E9857E67FF00C1193FE6AEFF00DC27FF006F2BF4C2B45B18CB70A28A29
      921451450014514500145145001451450014521214649C0F7AFCFF00FDABFF00
      E0A8DA178360BEF0CFC23783C49AEBC52C327894E4D9E9D287D9989197172D80
      EC181F2B98D81941650AF61A573EB4F8EFFB46F813F671F0D45ABF8D757FB19B
      9F316C6C2DE332DD5EC889B8A4518FF808DEC5514BA0665DC33F92FF00B4DFFC
      144BE217ED096AFA2E9EBFF082F849B70934DD2EEE469EF11E208F1DCCE36F9B
      19CC9FBB088A43E18395561F38F8E3C73AF7C4AF166A7E26F13EA93EB1AE6A52
      99AEAF2E08DCED8C0000C0550005555015540500000561543773551B05145148
      A0A28A2800A28A2800A28A2800A28A2800A28A2803D0BE0A7C7CF1B7ECFDE2C8
      35DF06EB53D832CA925D69ED231B3BF550C04771102048B87703F897712A55B0
      C3F5A7F651FF0082877827E3FDBD8E83E21960F07F8F3CA8924B4BB9563B3D42
      767F2F6D9BB312CC4942226C3FEF30BE60467AFC54A0120E47069A7625A4CFE9
      828AFC83FD95BFE0A7BE29F859F67F0FFC4CFB6F8DBC2CBE730D4F799B58819B
      0C8BE6492059A30C1861C86024E1F6A2C67F557E1DFC4DF0AFC59F0D41AFF83F
      5EB1F106932ED1F68B2943F96E515FCB917EF47205752637019770C81569DCC9
      A68E9E8A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2803F0DFFE0A47FF00279FF10BFEE1FF00FA6FB6AF99EBE98FF8291FFC9E7F
      C42FFB87FF00E9BEDABE67AC9EE6EB60AFE853F662FF00936DF853FF0062A695
      FF00A49157F3D75FD0A7ECC5FF0026DBF0A7FEC54D2BFF004922AA8933D8F4CA
      F33FDA77FE4DB7E2B7FD8A9AAFFE924B5E995E67FB4EFF00C9B6FC56FF00B153
      55FF00D2496ACCD6E7F3D745145646E7E987FC1193FE6AEFFDC27FF6F2BF4C2B
      F33FFE08C9FF003577FEE13FFB795FA615A2D8C65B8514514C93F20FFE0AF9FF
      002725E1BFFB152DFF00F4AEEEBE1BAFB93FE0AF9FF2725E1BFF00B152DFFF00
      4AEEEBE1BACDEE6EB61D17FAD4FA8AFE96E2FF00549F415FCD245FEB53EA2BFA
      5B8BFD527D05389131F4C97FD53FD0D3E992FF00AA7FA1AB333F9A497FD6BFD4
      D369D2FF00AD7FA9A6D64741F727FC120FFE4E4BC49FF62A5C7FE95DA57EBE57
      E41FFC120FFE4E4BC49FF62A5C7FE95DA57EBE55C763296E14C97FD53FD0D3E9
      B20CC6C3D8D5107F3472FF00AD7FA9A6D5BD634CBCD1756BDD3F50B49EC2FED2
      7782E2D6E6331CB0C8AC5591D480558104107904554AC8E800C54F048FA53BCD
      7FEFB7E75EE1FB20FECCBFF0D57F12752F09FF00C247FF0008C7D8F4A9353FB5
      FD8BED7BF64D0C7B3679898CF9D9CE7F8718E723EBEFF87327FD55DFFCB6FF00
      FBAA9D989B48FCD1F35FFBEDF9D1E6BFF7DBF3AFD2EFF87327FD55DFFCB6FF00
      FBAA8FF87327FD55DFFCB6FF00FBAA8B317323F347CD7FEFB7E74D249392727D
      EBF4C3FE1CC9FF005577FF002DBFFEEAA3FE1CC9FF005577FF002DBFFEEAA2CC
      3991F99F5F5F7FC12DFE1DEB3E2BFDA9B4AF1159418D23C316973757F72E8FB0
      79D0496F14618295F319A52C1588CAC52119DB83F4C782FF00E08E9E0EB0377F
      F0967C40D6F5ADDB3ECDFD8F690E9FE5E33BF7F99E7EFCFCB8C6DC60E776463E
      DAF855F08BC21F04BC271F86BC13A241A168E92BCE60899DDA4918FCCEF23967
      76C0032C490AAAA385003489725D0EC2BCCFF69DFF00936DF8ADFF0062A6ABFF
      00A492D7A65799FED3BFF26DBF15BFEC54D57FF4925AB216E7F3D745145646E7
      E987FC1193FE6AEFFDC27FF6F2BF4C2BF33FFE08C9FF003577FEE13FFB795FA6
      15A2D8C65B8514514C90A28A2800A28A2800A28A42428C9381EF400B5E65F1DF
      F68DF027ECE3E1A8B57F1AEAFF0063373E62D8D85BC665BABD91137148A31FF0
      11BD8AA29740CCBB867E4BFDABFF00E0A8DA178360BEF0CFC23783C49AEBC52C
      327894E4D9E9D287D9989197172D80EC181F2B98D81941651F97BE38F1CEBDF1
      2BC59A9F89BC4FAA4FAC6B9A94A66BABCB82373B630000301540015554055501
      40000152D96A37DCF7BFDAA3F6F4F1DFED306E3471FF0014AF8164F25BFE11DB
      4944BE6BC793BE79F62B4B9739098541B233B4B2EF3F33D14541ADAC14514500
      1451450014514500145145001451450014514500145145001451450015E85F05
      3E3E78DBF67EF1641AEF8375A9EC1965492EB4F6918D9DFAA86023B88810245C
      3B81FC4BB8952AD861E7B45007ED5FECA3FF00050EF04FC7FB7B1D07C432C1E0
      FF001E795124969772AC767A84ECFE5EDB37662598928444D87FDE617CC08CF5
      F5AD7F33E090723835F727ECADFF00053DF14FC2CFB3F87FE267DB7C6DE165F3
      986A7BCCDAC40CD8645F324902CD1860C30E4301270FB5163349F73371EC7EBE
      515C77C2BF8BDE10F8DBE138FC4BE09D720D7747795E03344AC8D1C8A7E6478D
      C2BA3608386504AB2B0E1813D8D5998514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      145140051451401F86FF00F0523FF93CFF00885FF70FFF00D37DB57CCF5F4C7F
      C148FF00E4F3FE217FDC3FFF004DF6D5F33D64F7375B057F429FB317FC9B6FC2
      9FFB1534AFFD248ABF9EBAFE853F662FF936DF853FF62A695FFA491554499EC7
      A65799FED3BFF26DBF15BFEC54D57FF4925AF4CAF33FDA77FE4DB7E2B7FD8A9A
      AFFE924B5666B73F9EBA28A2B2373F4C3FE08C9FF3577FEE13FF00B795FA615F
      99FF00F0464FF9ABBFF709FF00DBCAFD30AD16C632DC28A28A649F907FF057CF
      F9392F0DFF00D8A96FFF00A57775F0DD7DC9FF00057CFF009392F0DFFD8A96FF
      00FA57775F0DD66F7375B0E8BFD6A7D457F4B717FAA4FA0AFE6922FF005A9F51
      5FD2DC5FEA93E829C4898FA64BFEA9FE869F4D9066361EC6ACCCFE68E5FF005A
      FF00534DAB7AC69979A2EAD7BA7EA1693D85FDA4EF05C5ADCC6639619158AB23
      A900AB020820F208AA9591D07DC9FF000483FF009392F127FD8A971FFA57695F
      AF95F8A7FF0004C1F89165F0FF00F6A9D36D2FC411C1E25D3EE3445B9B8B910A
      C123149A3C6461D9DE0589532096946092029FDABCF19ED571D8CA5B8B4533CD
      4FEFAFE74E0735441F825FB70F82FF00E102FDAC7E2669BF6BFB6F9FAAB6A7E6
      F95E5E3ED6AB75B31939D9E7ECCE79DB9C0CE0786D7EAB7FC15B7E017FC243E0
      CD1FE2C6990E6F741D9A66ADF37DEB3924FDCBFCCE00F2E690AE150B37DA7248
      58EBF2A6B37B9BA7747D09FB01FC44FF00856FFB58F80AEA59EF63B2D4EECE8D
      710D93E3CFFB4A98625906E01A3599A1720E71E58600B2815FBB95FCCF825482
      3822BF65FF00610FDBBECBF684D320F06F8C6782C3E24D9C2763E04716B31A8C
      99620301660012F10E300BA0DBB962716449753EC9A28A2ACCC2AAEA9AA59687
      A6DDEA3A8DDC161A7DA44F3DC5DDD48238A18D41667766202A800924F000ACCF
      1C78E741F86BE13D4FC4DE27D520D1F43D362335D5E5C13B51738000192CC490
      AAAA0B3310A01240AFC83FDBBBF6EFBDFDA17529FC1DE0D9E7B0F86D69282CE4
      18E5D66453959655382B08201488F3901DC6EDAB126EC52573EBEF8A9FF055DF
      863E04F1649A1E83A4EA9E324B4D412DAF754B278A3B33063F7B2DB396267653
      C2A95447C1224DBB59BE85FD9E3F697F04FED37E13B8D73C1F753ABDA4BE4DEE
      977EAB1DE59B127619115986D700956562A70C33B95D57F9F5AFD00FF823BE9D
      AF49F16FC737F6ED38F0CC3A22437AAB38111BB79D4DB168F3F33048EEB0D83B
      416191BF0653D4A71491FAC15E67FB4EFF00C9B6FC56FF00B15355FF00D2496B
      D32BCCFF0069DFF936DF8ADFF62A6ABFFA492D590B73F9EBA28A2B2373F4C3FE
      08C9FF003577FEE13FFB795FA615F99FFF000464FF009ABBFF00709FFDBCAFD3
      0AD16C632DC28A28A648514514005148485192703DEBF3FF00F6AFFF0082A368
      5E0D82FBC33F08DE0F126BAF14B0C9E2539367A74A1F6662465C5CB603B0607C
      AE63606505942BD8695CFAD3E3BFED1BE04FD9C7C3516AFE35D5FEC66E7CC5B1
      B0B78CCB757B2226E291463FE0237B15452E8199770CFE427ED51FB7A78EFF00
      698371A38FF8A57C0B2792DFF08EDA4A25F35E3C9DF3CFB15A5CB9C84C2A0D91
      9DA59779F04F1C78E75EF895E2CD4FC4DE27D527D635CD4A5335D5E5C11B9DB1
      8000180AA000AAAA02AA80A00000AC2A86EE6AA360A28A291414514500145145
      0014515D0F82FC03AD78FB506B4D22D7CDF2F699A776DB1C2A4E01663F89C0C9
      201C03835955AB4E8C1D4AB24A2B76CDA8D1A988A8A9528B949EC96ACE7A8009
      E8335F56780FF65CD074E804BE2395F5ABB75E618DDA1823276F4DA43310430D
      C48041FBA0D7BA7873C2DA378744BFD95A4D8E99E763CCFB1DB245BF19C6EDA0
      671938CFA9AF82C6F19E0F0F271C3C1D4B75D97EAFF03EEB0BC1B8CA9152C4CD
      53F2DDFE8BF13F383637F74FE541523A835FA9B668BB4FCA3F2ABB7BA2E9FAEE
      9F258EA5636DA8594B8F32DAEA259237C10465581070403F502BC397882A1ACB
      0BA7F8FF00FB5359F0838A76AFFF0092FF00F6C7E52515FA23E38FD917C01E39
      B6B992CEC3FE11AD524F992EF4CF9630C10AA8307DCDB9DA4850A491F786493F
      2D7C63FD93FC63F0ADE7BCB5B797C4BE1C8E3121D52CA1C18805667F36205990
      2ED625F94C15CB02768FA0CA38DB28CDE6A8A9FB3A8FECCF4BFA3D9F92BDDF63
      E671B9262F057935CD1EEBF55BFE9E6789D14515F7C780145145001451450014
      51450014514500761F0AFE2F78BFE0978B23F12F8275C9F42D6122780CD12ABA
      C91B0F991E370C8EB900E19480CAAC395047EB47ECA1FF000523F087C759EC7C
      35E2F8E0F05F8E2E258AD6D602EEF67A9C8C9C98A42B8898BAB0114849F9A355
      7919881F8CF4038A69D84D267F4BE0E696BF19FF00650FF8291F8BFE054163E1
      AF17C73F8D3C0F6F1456B6B01744BCD32357E4C5215CCAA119808A4207CB1AAB
      C6AA41FD67F857F17BC21F1B7C271F897C13AE41AEE8EF2BC06689591A3914FC
      C8F1B85746C1070CA0956561C3026D3B9934D1D8D14514C90A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2803F0DFF00E0A4631FB67FC42FFB87FF00E9BEDABE67AFD55F
      F82A4FECA9E29F89D77E1FF88FE0CD2AF7C457BA7DA0D2753D2EC54CD3887CD6
      782586154DCF879650F82480632176ABB0FCAA208383C1ACDEE6C9E815FD0A7E
      CC5C7ECDBF0A7FEC54D2BFF4922AFC5EFD94FF00654F15FED27F10349B5B4D26
      FA2F06C77606B1AF053141042851A68E3999194CE51D764786397566010330FD
      EC550AA00E80629C499B16BCCFF69DFF00936DF8ADFF0062A6ABFF00A492D7A6
      554D574AB3D734BBCD3750B582FAC2F217B7B8B5B98C4914D1BA956475604329
      048208C106ACCCFE6AA8AF60FDA73F664F157ECC1F1024D075E8FED9A65C9797
      4AD6E18CAC17F082391C9D922E543C6492A48E59591DBCA74AD2AF75DD4ED34E
      D36D27BFD42EE5482DED6D63324B348C42AA22A82598920003924D64741FA4DF
      F0464FF9ABBFF709FF00DBCAFD30AF99BF604FD99351FD9A3E0DCD65E234B2FF
      0084B35CBBFED0BF16B1A97B64F2D562B579813E6F97876C8F9434B205DC3E76
      FA66B45B183D58514514C47E41FF00C15F3FE4E4BC37FF0062A5BFFE95DDD7C3
      75FB0BFF000532FD9475DF8E7E12D1BC61E0DB182FFC45E198674BAD3E1B706F
      351B462AC16371CBB4455D9623F7BCD936FCD857FC7A20A9C1183EF59BDCDA2F
      41D17FAD4FA8AFE96E2FF549F415F889FB06FECA1AF7C7FF008A3A56BD358C31
      F80FC3BA84173AA5DEA36FE6DBDE346CB27D8910F12B38C0707E5446CB64B223
      FEDE8181551226C5A28A2A883F06BF6EBF87179F0CFF006A9F1FDA5D19E58354
      D41F5BB5B996D8C2B347744CC76649DEA8EF245BC1C1689B8072A3C12BF71FF6
      D6FD8C74EFDAABC356371A7DCD9685E36D2B77D93579EDD9FED10EC722D25656
      044664646DE55CC787DAA77B03F8E5F15FE0678F3E07EB49A5F8E3C317DA05CC
      99F2649943C17185466F2A64263936891376C63B4B60E0F159B46D1773850715
      E85A67ED15F15B45D36D74ED3FE2678BEC74FB4892DEDED6DB5DBA8E28635015
      51144802A8000007000AF3DA00CD228779AFFDF6FCEBF5C3FE0937F1B35EF885
      F0BFC4BE0DD72E27D417C232DAAE9F7B7130765B49D64096C06DCED8CC0E5496
      6F9640802AC6A2BF31FE147C0CF1E7C70D6DF4AF03F862FB5FB98F1E7490A048
      2DF2AECBE6CCE4471EE11BEDDEC3715C0C9E2BF683F630FD9234EFD94BC01716
      8F79FDABE2DD6BCA9B5ABF8D9BC82E81BCB861538C471F98F8620339666381B5
      12A244AD63DEF55D2ACB5DD2EEF4DD46D20BFD3EF217B7B8B5B98C4914D1B02A
      C8EAC0865209041E0835F873FB65FEC6BAF7ECB3E2D13C267D63C07A94C4697A
      D328DC8D82DF66B8C00166001208016450594021D13F746B0BC71E06D07E2578
      4F53F0CF89B4C8358D0B5288C37567700ED75C82082305581019594865601810
      40354D5C84EC7F3795674BD52F743D4AD351D3AEE7B0D42D2549EDEEED6431CB
      0C8A432BA329055810082390457E857ED21FF049CD774ED4B50D73E105E41ABE
      9734A644F0BDFCC21B9B6525008E19E46D92A82D21FDE3232A228CCAC727E25F
      885F02BE21FC2833378BFC17AE6816D15DB58FDB6F2C645B59261BBE58E7C797
      2642310518860A48247359DAC6A9A67B97C3CFF829A7C76F01F9315D6BD65E2E
      B282D16D62B5F1058AC9B71B71234B17972C92617059DDB3B98B65B0474DE24F
      F82B37C6CD7345B8B1B2B5F0BF87EE65DBB351D3B4E91E7870C09DA279648F90
      0A9DC878638C1C11F171041C1183EF45176164773F15FE38F8F3E38EB29AA78E
      7C4F7DE20B98B3E4C73B0482DF2A8ADE54280471EE11A6ED8A3715C9C9E6B86A
      D4F0DF8575AF196B36FA4681A45F6B7AADCEEF26C74EB679E7976A966DA880B1
      C2AB1381C004F6AFAABE017FC1327E29FC5D316A1E2587FE15C787DB3FBED620
      66BE93FD60F92D32AC30E8A0F9AD1FCAE19778E28DC2E91F2F781BC0DAF7C4AF
      16E99E19F0CE993EB1AE6A52886D6CEDC0DCED8C9249C0550016666215541624
      004D7EED7EC87FB3BC5FB32FC14D33C24F3C17BAD4B2BDFEAF796DBFCA9EEE4C
      03B039CED4448E30405DC23DC554B11567F67BFD953E1EFECD3A2FD93C27A579
      BA9BF982E35FD45639751B85765631B4CA8B88C6C4C46A157E40C4162CC7D82A
      D2B19CA570AF33FDA77FE4DB7E2B7FD8A9AAFF00E924B5E9955355D2ACF5CD2E
      F34DD42D60BEB0BC85EDEE2D6E631245346EA5591D5810CA4120823041AA20FE
      6AA8AF60FDA73F664F157ECC1F1024D075E8FED9A65C97974AD6E18CAC17F082
      391C9D922E543C6492A48E59591DBCA74AD2AF75DD4ED34ED36D27BFD42EE548
      2DED6D63324B348C42AA22A82598920003924D64741FA4DFF0464FF9ABBFF709
      FF00DBCAFD30AF99BF604FD99351FD9A3E0DCD65E234B2FF0084B35CBBFED0BF
      16B1A97B64F2D562B579813E6F97876C8F9434B205DC3E76FA66B45B183D5851
      4521214649C0F7A6216BCCBE3BFED1BE04FD9C7C3516AFE35D5FEC66E7CC5B1B
      0B78CCB757B2226E291463FE0237B15452E8199770CFC97FB57FFC151B42F06C
      17DE19F846F078935D78A5864F129C9B3D3A50FB331232E2E5B01D8303E5731B
      03282CA3F2F7C71E39D7BE2578B353F13789F549F58D735294CD75797046E76C
      60000602A8002AAA80AAA02800002A5B2D46FB9EF7FB547EDE9E3BFDA60DC68E
      3FE295F02C9E4B7FC23B692897CD78F277CF3EC56972E72130A8364676965DE7
      E67A28A835B5828A28A0028A28A0028A28A0028A2B77C11E1793C5FE25B3D394
      3085DB74F22FF04639639C1C1EC3231923D6B3A95234A0EA4DE8B537C3D0A98A
      AB1A1495E52692F566F7C2EF85973F10AF1A5797EC9A55BC8AB3CB83BDF2092B
      1F1B49E067278DC0E0F43F5D787348B3D074CB7B0B0B74B5B48142C7120E00FE
      A49E493C92493589E1ED2ED344B0B7B1B1812DAD6150A91A7403FA927924F249
      24D74F65D07E15F8A6799A55CC6A6BA416CBF57E7F91FD2392E414323A165AD5
      7F14BF45E4BF1DDF96C59F6ADBB5E82B12CFB56DDAF415F0B5373D0AA6DD9FDD
      35B16DD0563D9FDD35B16DD0579189F819E255DCD6B2E82B7ECC64006B02CBA0
      ADFB2E83EB5F9EE2373CAAC7C9BFB4E7EC516977A4CFE29F86DA6FD9EFA0DF2D
      EE836F965B8524B17B75E76B8C9FDD2FCA54008030DAFF000AF4AFDBCB1E7F5A
      FCEDFDB97F66CB7F857AFDB78C3C3563159784F57904335B472002D6F48772A9
      1E06D8DD54B28190A55C7C8BB16BF79F0EF8D6A626AAC9733A9CD27FC393DDF7
      8B6DEAFF0097AEEAFB23F34CE72F8D37EDE8AB2EABF5FF0033E55A28A2BFA24F
      920A28A2800A28A2800A28A2800A28A2800AEC3E15FC5EF17FC12F1647E25F04
      EB93E85AC244F019A2557592361F323C6E191D7201C32901955872A08E3E8A00
      FD98FD943FE0A47E10F8EB3D8F86BC5F1C1E0BF1C5C4B15ADAC05DDECF539193
      931485711317560229093F346AAF233103EC70735FCD0038AFB23F650FF8291F
      8BFE054163E1AF17C73F8D3C0F6F1456B6B01744BCD32357E4C5215CCAA11980
      8A4207CB1AABC6AA41A4FB99B8F63F6628AE3BE15FC5EF087C6DF09C7E25F04E
      B906BBA3BCAF019A256468E453F323C6E15D1B041C32825595870C09EC6ACCC2
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A002BF1BFE0F785F46F197FC151F5CD1F5FD26C75BD2
      6E3C57E22F3AC351B749E0976A5E32EE47054E19548C8E0807B57EC857E3CFC0
      AD52CF48FF0082AD6A53DF5DC1650BF8C3C4102C971204532482F238D013FC4E
      ECAAA3A96600649152CB8F53F5F34BD2ACB43D36D34ED36D20D3F4FB48920B7B
      5B58C471431A80AA88AA0055000000E00156A8A2A880A28A28032FC4BE17D1BC
      67A35C691E20D26C75CD26E36F9D63A8DBA5C412ED60CBB91C15386552323820
      1ED587E10F839E01F87DA949A8F85FC13E1DF0E6A1244607BAD274A82D6568C9
      0C50B22025495538E9951E95D8514005145140051451400570BE24F811F0D7C6
      3AD5C6AFAF7C3EF0B6B7AB5CEDF3AFF51D1ADE79E5DAA15773BA163855503278
      000ED5DD51401574BD2ACB43D36D34ED36D20D3F4FB48920B7B5B58C471431A8
      0AA88AA0055000000E00156A8A2800A28A2800A6B22BFDE00FD453A8A00F33FF
      008662F83C7FE694F827FF0009EB4FFE375674CFD9D7E14E89A95A6A1A7FC33F
      0858DFDA4A93DBDD5B6856B1CB0C8A432BA304055810082390457A1D140EE22A
      85E800FA0A5A28A04145145001485430E403F5A5A280385F11FC08F86BE31D66
      E357D7BE1F785B5BD5AE36F9D7DA8E8D6F3CF2ED50ABB9DD0B1C2AA8193C0007
      6ACDFF008662F83BFF0044A7C13FF84F5A7FF1BAF4CA281DCA9A5E9163A1E9D6
      9A7E9D676F61616912416F6B6B12C71431A80AA88AA0055000000E00156E8A28
      10514514005145140197E25F0BE8DE33D1AE348F1069363AE69371B7CEB1D46D
      D2E20976B065DC8E0A9C32A9191C100F6AC3F087C1CF00FC3ED4A4D47C2FE09F
      0EF87350922303DD693A5416B2B4648628591012A4AA9C74CA8F4AEC28A0028A
      42428C9381EF5F9FFF00B57FFC151B42F06C17DE19F846F078935D78A5864F12
      9C9B3D3A50FB331232E2E5B01D8303E5731B03282CA15EC34AE7D69F1DFF0068
      DF027ECE3E1A8B57F1AEAFF63373E62D8D85BC665BABD91137148A31FF00011B
      D8AA29740CCBB867F213F6A8FDBD3C77FB4C1B8D1C7FC52BE0593C96FF008476
      D2512F9AF1E4EF9E7D8AD2E5CE4261506C8CED2CBBCF8278E3C73AF7C4AF166A
      7E26F13EA93EB1AE6A5299AEAF2E08DCED8C0000C05500055550155405000005
      61543773551B05145148A0A28A2800A28A2800A28A2800A28A2800AFA13E04F8
      7DB4AF0DBDECD16C9EFE4DE09CE4C4A3099078EA58823A861CFA7CF63935F5D7
      86EC534CD36D2CE22CD1DBC4B1297EA4280067DF8AF94E21ACE1878D25F69FE5
      FD23F57F0F7031AF8DAB8B97FCBB492F595D5FEE4D7CCEAACFA8ADDB2E83F0AC
      2B3EA2B76CBA0FC2BF20C56E7ED758D8B3ED5B76BD056259F6ADBB5E82BC0A9B
      9E2D536ECFEE9AD8B6E82B1ECFEE9AD8B6E82BC8C4FC0CF12AEE6B597415BF65
      D07D6B02CBA0ADFB2E83EB5F9EE2773CAAC74361DBF1AABF133E1BD8FC5DF86B
      AF7847506F2A0D52D8C493619BC99461A29768652DB24546DB901B6E0F04D5AB
      0EDF8D74DA6FF0FD6BE7E55EAE16AC311465CB3834D35D1A774FE4CF9DC5C54A
      2E2F667E126A5A75D68FA8DD585F5B4D677B6B2B433DBDC21492291490CACA79
      56041041E41155EBDBFF006D6D02C7C37FB4FF008EAD34E83ECF6F25CC378C9B
      D9B32CD6F1CD2B65893F34923B63A0CE0000015E215FE87E578D59960286352B
      2AB08CADDB9927FA9F96D487B39B876760A28A2BD3330A28A2800A28A2800A28
      A2800A28A2800A28A2803B0F857F17BC5FF04BC591F897C13AE4FA16B0913C06
      68955D648D87CC8F1B86475C8070CA4065561CA823F5A3F650FF008291F843E3
      ACF63E1AF17C70782FC71712C56B6B01777B3D4E464E4C5215C44C5D5808A424
      FCD1AABC8CC40FC67A01C534EC26933FA5F0734B5F8CFF00B287FC148FC5FF00
      02A0B1F0D78BE39FC69E07B78A2B5B580BA25E6991ABF26290AE65508CC04521
      03E58D55E35520FEB3FC2BF8BDE10F8DBE138FC4BE09D720D7747795E03344AC
      8D1C8A7E6478DC2BA3608386504AB2B0E181369DCC9A68EC68A28A6485145140
      0514514005145140051451400514514005145140051451400514514005145140
      0514514005145140051451400514514005145140051451400514514005145140
      0514514005145140051451400514514005145140051451400514514005145140
      057E0D7C60F105E7C21FDB8FC53E25BED267927D13C7736B6BA7DC66DDAE235B
      D3711E18A9DAB226D2AF820AB86008233FBCB5E1BF127F625F831F177C69A878
      B3C59E0EFED5D7F50F2FED377FDA7790F99B2358D3E48E655184451C01D3279C
      D26AE545D8F907FE1F37FF00548BFF002E4FFEE5A3FE1F37FF00548BFF002E4F
      FEE5AFA63FE1DB9FB3AFFD13DFFCACEA1FFC7E8FF876E7ECEBFF0044F7FF002B
      3A87FF001FA5A8EF13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522
      FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB
      3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF8
      7CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9F
      B3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968
      FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87
      FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD52
      2FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3
      A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522
      FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF
      0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F
      13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E
      7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67
      FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96B
      E98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CA
      CEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522
      FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB
      3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF8
      7CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9F
      B3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968
      FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87
      FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD52
      2FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3
      A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522
      FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF
      0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F
      13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E
      7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67
      FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96B
      E98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CA
      CEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13F33FF006A7FDBD3C79FB4C7DA3471FF0014AF81A4F25BFE11DB
      4944BE6C91E4EF9E7D8AD2FCE72130A8364676965DE7E67AFD2FFDAA3FE09518
      171E22F8283FE78A3783AEA7FAAC924175349FEE318E43FF003D087FB91D7E6D
      6ABA55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB0208
      20F208A977EA5AB742AD145148A0A28A2800A28A2800A28A2800A28A2800A28A
      2801F0B22CC8655678C302CA8DB491DC038383EF835EBD6DFB427D9801FD83BB
      1FF4F98FFD92BC787515F49587C22F09CCA0BE95BBFEDE25FF00E2ABE7B379E0
      E9A83C5C1CB7B5BE57EA8FD1784686755E35D6515A34D2E5E6E64B5BF35ADEEC
      B6B3EDB9CFC3FB4DF958FF008A733FF6FBFF00DAEAF43FB577923FE458CFFDBF
      FF00F6BAEAEDBE09782E4C6ED1B3FF006F337FF175AB6DF013C0B201BB43CFFD
      BDCFFF00C5D7C556C570FAF8F0F37F37FF00C99F695303C5CBE2C5D3FB97FF00
      2B38B87F6BEF2BFE654CFF00DC47FF00B555E8BF6D1F2BFE650CFF00DC4BFF00
      B557716DFB3CFC3F93EF6819FF00B7C9FF00F8BAD5B7FD9AFE1CBE3778773FF6
      FB71FF00C72BCB963385FAE167F7BFFE5879F3C1F13AF8B150FB97FF002072BE
      0DFDB1BFE123F14E8FA37FC225F67FED1BC86D3CFF00ED1DDE5EF70BBB6F9433
      8CE71915F555B7415E3DA07ECE7F0F746D4ECF52B3F0FF00937B67325C412FDB
      276D8EA4329C19307040E08C57B0DB7415F0F9FD6CB2B59E5949C15B5BF57FF8
      148ECC0D2C7D284963EA29BBE96EDF7235ACBA0ADFB2E83EB58165D056FD9741
      F5AFC7F13B9758E86C3B7E35D369BFC3F5AE66C3B7E35D369BFC3F5AF98C4EC7
      CFE24FCDAFF829E8FF008BF3A07FD8B507FE94DD57C835F477FC14175FBED67F
      69FF0010DA5DCFE75BE956D6767669B1479511B7498AE40C9FDE4D2364E4FCD8
      CE0003E71AFEF4E0AA32C3F0E60612DFD9C5FF00E04B997E0CFCC714EF5E6FCC
      28A28AFB539428A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BB0
      F857F17BC5FF0004BC591F897C13AE4FA16B0913C0668955D648D87CC8F1B864
      75C8070CA4065561CA8238FAFAD3F651FF008278F8DBE3FDC58EBDE218A7F07F
      80FCD89E4BBBB89A3BCD42064F33759A3290CA4140256C27EF32BE61464A109F
      99EE5A5FFC165EF21D32D23D47E14C175A82C28B713DB6BA618A49001B99236B
      7728A4E4852CC40E371EA6D7FC3E6FFEA917FE5C9FFDCB5F63F81FF635F831E0
      5F09E99A0C3F0EFC3DAC258C4233A86B5A5DBDE5E5C3672D24B2BA12CC49278C
      28CE142A80A377FE198BE0EFFD129F04FF00E13D69FF00C6EAF533BC7B1F0DFF
      00C3E6FF00EA917FE5C9FF00DCB47FC3E6FF00EA917FE5C9FF00DCB5F727FC33
      17C1DFFA253E09FF00C27AD3FF008DD1FF000CC5F077FE894F827FF09EB4FF00
      E3746A178F63E1BFF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE
      E4FF008662F83BFF0044A7C13FF84F5A7FF1BA3FE198BE0EFF00D129F04FFE13
      D69FFC6E8D42F1EC7C37FF000F9BFF00AA45FF009727FF0072D1FF000F9BFF00
      AA45FF009727FF0072D7DC9FF0CC5F077FE894F827FF0009EB4FFE3747FC3317
      C1DFFA253E09FF00C27AD3FF008DD1A85E3D8F86FF00E1F37FF548BFF2E4FF00
      EE5A3FE1F37FF548BFF2E4FF00EE5AFB93FE198BE0EFFD129F04FF00E13D69FF
      00C6E8FF008662F83BFF0044A7C13FF84F5A7FF1BA350BC7B1F0DFFC3E6FFEA9
      17FE5C9FFDCB47FC3E6FFEA917FE5C9FFDCB5F727FC3317C1DFF00A253E09FFC
      27AD3FF8DD1FF0CC5F077FE894F827FF0009EB4FFE3746A178F63E1BFF0087CD
      FF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BEE4FF866
      2F83BFF44A7C13FF0084F5A7FF001BA3FE198BE0EFFD129F04FF00E13D69FF00
      C6E8D42F1EC7C37FF0F9BFFAA45FF9727FF72D1FF0F9BFFAA45FF9727FF72D7D
      C9FF000CC5F077FE894F827FF09EB4FF00E3747FC3317C1DFF00A253E09FFC27
      AD3FF8DD1A85E3D8F86FFE1F37FF00548BFF002E4FFEE5A3FE1F37FF00548BFF
      002E4FFEE5AFB93FE198BE0EFF00D129F04FFE13D69FFC6E8FF8662F83BFF44A
      7C13FF0084F5A7FF001BA350BC7B1F0DFF00C3E6FF00EA917FE5C9FF00DCB47F
      C3E6FF00EA917FE5C9FF00DCB5F727FC3317C1DFFA253E09FF00C27AD3FF008D
      D1FF000CC5F077FE894F827FF09EB4FF00E3746A178F63E1BFF87CDFFD522FFC
      B93FFB968FF87CDFFD522FFCB93FFB96BEE4FF008662F83BFF0044A7C13FF84F
      5A7FF1BA3FE198BE0EFF00D129F04FFE13D69FFC6E8D42F1EC7C37FF000F9BFF
      00AA45FF009727FF0072D1FF000F9BFF00AA45FF009727FF0072D7DC9FF0CC5F
      077FE894F827FF0009EB4FFE3747FC3317C1DFFA253E09FF00C27AD3FF008DD1
      A85E3D8F86FF00E1F37FF548BFF2E4FF00EE5A3FE1F37FF548BFF2E4FF00EE5A
      FB93FE198BE0EFFD129F04FF00E13D69FF00C6E8FF008662F83BFF0044A7C13F
      F84F5A7FF1BA350BC7B1F0DFFC3E6FFEA917FE5C9FFDCB47FC3E6FFEA917FE5C
      9FFDCB5F727FC3317C1DFF00A253E09FFC27AD3FF8DD1FF0CC5F077FE894F827
      FF0009EB4FFE3746A178F63E1BFF0087CDFF00D522FF00CB93FF00B968FF0087
      CDFF00D522FF00CB93FF00B96BEE4FF8662F83BFF44A7C13FF0084F5A7FF001B
      A3FE198BE0EFFD129F04FF00E13D69FF00C6E8D42F1EC7C37FF0F9BFFAA45FF9
      727FF72D1FF0F9BFFAA45FF9727FF72D7DC9FF000CC5F077FE894F827FF09EB4
      FF00E3747FC3317C1DFF00A253E09FFC27AD3FF8DD1A85E3D8F86FFE1F37FF00
      548BFF002E4FFEE5A3FE1F37FF00548BFF002E4FFEE5AFB93FE198BE0EFF00D1
      29F04FFE13D69FFC6E8FF8662F83BFF44A7C13FF0084F5A7FF001BA350BC7B1F
      0DFF00C3E6FF00EA917FE5C9FF00DCB47FC3E6FF00EA917FE5C9FF00DCB5F727
      FC3317C1DFFA253E09FF00C27AD3FF008DD1FF000CC5F077FE894F827FF09EB4
      FF00E3746A178F63E1BFF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB
      96BEE4FF008662F83BFF0044A7C13FF84F5A7FF1BA3FE198BE0EFF00D129F04F
      FE13D69FFC6E8D42F1EC7C37FF000F9BFF00AA45FF009727FF0072D1FF000F9B
      FF00AA45FF009727FF0072D7DC9FF0CC5F077FE894F827FF0009EB4FFE3747FC
      3317C1DFFA253E09FF00C27AD3FF008DD1A85E3D8F86FF00E1F37FF548BFF2E4
      FF00EE5AE9BE187FC15A3FE163FC49F0A784FF00E1577F67FF006EEAB6BA67DA
      FF00B7FCCF23CE9963DFB3ECC376DDD9C646718C8EB5F5F7FC3317C1DFFA253E
      09FF00C27AD3FF008DD7E5E7C61F0C68FE0DFF0082A3E87A3E81A4D9687A4DBF
      8AFC3BE4D869D6E96F045B92CD9B6A200A32CCC4E072493DE8D50D599FB1F451
      4551985145140051451400514514005145140051451400514514005145140051
      4514005145140051451400514514005145140051451400514514005145140051
      4514005145140051451400514514005145140051451400514514005145140057
      867ED35FB1FF0080FF0069FD15FF00B76CFF00B3FC536F68D6DA6F88ED41F3ED
      32C1D43A821668C303F23F40F26C28CC5ABDCE8A00FC11FDA6BF63FF001E7ECC
      1AD3FF006ED9FF0068785AE2EDADB4DF11DA81E45DE143A87504B4321527E47E
      A524D85D54B5786D7F4ABAAE9565AEE9977A76A56905FE9F7713C1716B751892
      29A3605591D5810CA412083C106BF36BF6A9FF008254FF00C7C788FE0A0FF9E2
      8DE0EBA9FEAB24905D4D27FB8C6390FF00CF421FEE4750D1AA9773F33E8AB5AA
      E957BA16A777A76A5693D86A1692BC1716B75198E5864525591D5802AC082083
      C822AAD4961451450014514500145145001451450015F4CFC20D65759F06581C
      A996D81B6902820294002F5EA76ED3C7AFE15F3357A57C11F192E83AF1D2EE9D
      85A6A0CA91E016093670BC6780D9C138EA17A006BC0CEB0CF11846E2B58EBFE6
      7DEF05E671CBB3451AAED0A8B95FAEE9FDFA7CCFA6ACFA8ADDB2E83F0AC2B3ED
      5BB65D07E15F8A62B73FA16B1B167DAB6ED7A0AC4B3ED5B76BD057815373C5AA
      6DD9FDD35B16DD0563D9FDD35B16DD0579189F819E255DCD6B2E82B7ECBA0FAD
      60597415BF65D07D6BF3DC4EE79558E86C3B7E35BBFDA36BA3E9D717F7D730D9
      D95AC6D34F7170E1238A355CB3331E1540049278005615876FC6BE63FDBFFE3D
      47E0CF010F87DA55CCB16BFAFC6B2DDB46AEA22B0DCC18070C39919366DF9814
      12860372E70CAB27AD9F6634B2FA0B59BD5F68F57F25FE47CBE615A3429CAA4B
      A1F9FDF10FC55FF09D78FBC49E24FB37D8BFB6352B9D43ECDE6799E579B2B3EC
      DD81BB1BB19C0CE3A0AE7E8A2BFD04A54A1429C6953568C524BD1688FCC1B6DD
      D8514515A8828A28A0028A28A0028A28A0028A28A0028A28A002BA6F877F0CBC
      55F167C4B0681E0FD06FBC41AB4BB4FD9ECA22FE5A1754F3246FBB1C619D4191
      C855DC32457D1DFB28FF00C13C7C6DF1FEE2C75EF10C53F83FC07E6C4F25DDDC
      4D1DE6A1032799BACD19486520A012B613F7995F30A3257EB4FC14F807E09FD9
      FBC270685E0DD160B0558923BAD41A353797ECA58892E2500191B2EE47F0AEE2
      142AE1434AE4B958F97BF656FF008261785BE167D9FC41F133EC5E36F14AF9CA
      34CD826D1E056C2A37972461A69028639701419384DC8B21FB8C00060702968A
      BD8C9BB851452138A62168AF99BF686FF8281FC2BF805F6CD37FB4BFE12EF164
      1BE3FEC4D11D64F2651E62EDB89BEE438923D8EB96957703E5915F0E7C49FF00
      82B77C53F137F685B784F46D13C19653F97F66B8F2DAFAFADB1B4BFEF24C44FB
      8861CC3C2B607CC0352BA2945B3F5F28AFC07F187ED9FF001C7C71A9477DA8FC
      4FF115BCD1C42109A4DD9D3A22A093931DB79685B2C7E623711819C00061FF00
      C34EFC62FF00A2ADE36FFC286EFF00F8E52E62B90FE8528AFC1AF07FEDE3F1EF
      C0FA6C963A77C49D52E609263316D5D21D4650C4018125CA48E170A3E5076839
      38C924FD31F0DFFE0B11E25B6D48C7E3DF03697A869F24B1289FC3B2C96B2DBC
      793E6B7972B48266C1055774632A416F9B2A732172B3F5368AF29F81BFB50FC3
      7FDA234D59FC1BE2282E75058BCDB8D1AEBF737F6C3085B7C2DC955322A99137
      465B80E6BD5AA880A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A2BF3AFF00E0A17FB7A78BFE
      127C46B7F879F0D7518348D434E863BAD67546B549E512488592D95268CA0511
      B472175DC497550576386F8234CFDABFE33E93A9DADFC1F153C5EF3DB4CB322D
      CEB5713C45948203C723B23AE472AC0A91C1041C54B65A8B67F417457CBBFB00
      FED5979FB4E7C2FBD5F1118078CFC3B2C76BA93DBA145BA8DD4986E4AED088CE
      5255644240688B6115D547D45544B560A28A28105145140057E41FED0BFF0029
      61D2FF00EC6BF0DFFE8AB2AFD7CAFC83FDA17FE52C3A5FFD8D7E1BFF00D15655
      2CB8EE7EBE514515440514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      400514514005145140051451401E19FB4D7EC7FE03FDA7F457FEDDB3FECFF14D
      BDA35B69BE23B507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84FDA6BF
      63FF001E7ECC1AD3FF006ED9FF0068785AE2EDADB4DF11DA81E45DE143A87504
      B4321527E47EA524D85D54B57EF7554D574AB2D774CBBD3B52B482FF004FBB89
      E0B8B5BA8C4914D1B02AC8EAC0865209041E08349AB94A563F9AAA2BF4C3F6A9
      FF008254FF00C7C788FE0A0FF9E28DE0EBA9FEAB24905D4D27FB8C6390FF00CF
      421FEE475F9B3AAE957BA16A777A76A5693D86A1692BC1716B75198E58645255
      91D5802AC082083C822B36AC6A9DCAB45145030A28A2800A28A2800A28A2803E
      98F82DF14A0F13DA41A3DFC9E56B30205567627ED4AA3EF02792F81961DF9238
      C85F69B2E83F0AF80ADEE25B4B88E782478668983A491B156560720823A107BD
      7D05F0C3F68F823805978B9DD660C766A5143952BC9C488A32083800A839C8C8
      1824FE619F70F54BBC460D5D758ADD7A775E5BF6F2FDA387F8BE9D5A71C26632
      B4968A4F66BFBDD9F9ECFAEBBFD2767DAB6ED7A0AE6F43D4AD357B48EEEC6EA1
      BCB5933B26B7903A360907047079047E15D25AF415F93554E3269AD4FBEA9252
      5CD1774CDBB3FBA6B62DBA0AC7B3FBA6B62DBA0AF1F13F033C6ABB9AD65D056F
      D9741F5AC0B320004F02BC3FE30FEDA7E18F87D6AD63E157B6F16EBADB94B432
      9FB25B6532AED228C4BCB2FC887B382C840CFCA61328C76735FEAF81A4E72F2D
      979B7B25EBF99E0E3B13470B073AD2B2FEB63DA3E33FC74D03E03F83DF57D5DB
      ED37D36E8F4FD2E270B2DE4A00E075DA8320B3904282382C555BF283C59E2CD5
      FC73E23BFD775DBF9752D56FA432CF7331F998F40001C0000002800280000000
      2AE78F3E21F887E26EBEFAD789B549755D45A35884B20555445E8AA8A02A8E49
      C2819249EA493CED7F52F0770851E17C3CA536A75E7F14BA25FCB1BEB6EEF793
      D5EC92FCA332CC258EA9A2B456CBF561451457E8C78E14514500145145001451
      45001451450014515F4C7ECAFF00B05F8EFF0069836FAC1FF8A57C0B279CBFF0
      915DC425F35E3C0D9041BD5A5CB9C17CAA0D920DC5976102F63C13C0FE06D7BE
      2578B34CF0CF8634B9F58D735294436B676E06E76C64924E02A800B33310AAA0
      B120026BF50BF650FF00825CE85E0D82C7C4DF17120F126BAF145347E1AE4D9E
      9D287DF895D5B172D808A548F2B99148941561F5A7C08FD9CBC09FB38F86A5D2
      3C15A47D8CDCF96D7D7F712196EAF6444DA1E590FF00C08EC50A8A5DCAAAEE39
      F4DAB48C9CAFB08000303814B4515440514555D5354B3D0F4CBBD4751BB82C34
      FB485EE2E2EAE6411C50C6A0B33BB1202A800924F000A00CCF1CF8E741F86BE1
      2D4FC4DE26D4E0D1F43D362335D5E5C13B51738000192CC490AAAA0B3310A012
      40AFC84FDABFFE0A47E2FF008EB05F786BC211CFE0BF03DC452DADD401D1EF35
      38D9F832C81731294550628C91F348ACF22B00399FDBBFF6BCBDFDA4FE234FA7
      689A9CEDF0DB47940D26D0C460175204DAF752A924B3125C26E00AC647CA8CD2
      6EF976A1B358C7B8139A28AFA17F664FD883E21FED3176977616BFF08EF84D76
      BC9E22D5619160953CD31BADB003FD2245DB2700850536B3A165CC97B1F3D515
      FB0BF0AFFE0939F09FC216F1CBE30BCD53C7BA8189E3956599AC2CF717CAC891
      C2C24560A02FCD2B29CB1C0CA85F43FF00876E7ECEBFF44F7FF2B3A87FF1FA7C
      AC8E647E1BD15FABFF0015FF00E090DE09D5F4DD46EBE1F789754F0FEB2F2C93
      DBD9EAEEB756014872B6E085595177141E6334AC141CAB939AFCD9F8D1F05BC5
      5F00FC7D7FE11F17D87D8F52B6F9E39A325A0BB849212785C81BE36C1C1C0208
      6560ACACA06AC52699C8695AADEE85A9DA6A3A6DDCF61A85A4A93DBDD5AC8639
      61914865746520AB0201047208AFD42FD8CFFE0A6F67E21B73E15F8D7ABC161A
      C9940B0F13B4022B7BA0EE008AE046A121652DC4B858F603BCA95DD27E59D00E
      0D24EC0D5CFE97C1C8A5AF86BFE09A3FB5FEB1F1BB45D47C01E33BBFB7F8A740
      B44B9B2D4E42ED3EA1661823198E36992266894B96DD2091490595DDBEE5AD16
      A62D5828A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
      28A2800A28A2800A28A2803F9F4FDABB54BCD5FF0069AF8A93DF5DCF7B3A789B
      508164B890BB08E3B878E3404FF0A222AA8E815401800579557A67ED3BFF0027
      25F15BFEC6BD57FF004AE5AF33AC8E83EE4FF82419FF008C92F127FD8A971FFA
      57695FAF95F907FF000483FF009392F127FD8A971FFA57695FAF9571D8CA5B85
      145154405145140057E41FED0BFF002961D2FF00EC6BF0DFFE8AB2AFD7CAFC83
      FDA17FE52C3A5FFD8D7E1BFF00D156552CB8EE7EBE5145154405145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      40057867ED35FB1FF80FF69FD15FFB76CFFB3FC536F68D6DA6F88ED41F3ED32C
      1D43A821668C303F23F40F26C28CC5ABDCE8A00FC11FDA6BF63FF1E7ECC1AD3F
      F6ED9FF68785AE2EDADB4DF11DA81E45DE143A87504B4321527E47EA524D85D5
      4B5786D7F4ABAAE9565AEE9977A76A56905FE9F7713C1716B75189229A360559
      1D5810CA412083C106BF36BF6A9FF8254FFC7C788FE0A0FF009E28DE0EBA9FEA
      B24905D4D27FB8C6390FFCF421FEE4750D1AA9773F33E8AB5AAE957BA16A777A
      76A5693D86A1692BC1716B75198E5864525591D5802AC082083C822AAD496145
      1450014514500145145006B7877C5DAD784AE7CFD1F54BAD39CBA3B08242AB21
      5395DEBD180C9E1811C9F5AF4FD13F6B0F1CE916CD14E74ED55CB96135E5B156
      5181F28F2D90638CF233C9E7A63C6A8AF371396E0F18EF88A5193EED6BF7EE7A
      187CC7178456A156515D93D3EED8FA22CBF6D6F1441617693687A4CB78DB3ECD
      32095638F07E7DE85897C8E06197079E7A54173FB6D78F66B39A18ACB43B5924
      4645B88ADA52F192301943485723A8C8238E41AF9FA8AF33FD5BCA2EDBC3C7F1
      3AE59DE633567599DAF8CBE34F8DFC7F0B41AEF892F6EED5D1637B48D8430385
      6DC37451854621B9C904F039E0638AA28AF730F86A18487B3C3C1423D92497DC
      8F26A55A95A5CD524DBEEDDC28A28AE9320A28A2800A28A2800A28A2800A28A2
      800ADDF03F81B5EF895E2CD33C33E18D2E7D635CD4A510DAD9DB81B9DB192493
      80AA002CCCC42AA82C48009AF7BFD95FF60BF1DFED306DF583FF0014AF8164F3
      97FE122BB884BE6BC781B20837AB4B97382F9541B241B8B2EC3FAF7F023F672F
      027ECE3E1A9748F05691F63373E5B5F5FDC4865BABD91136879643FF00023B14
      2A29772AABB8E5A5725CAC7C97FB287FC12E742F06C163E26F8B89078935D78A
      29A3F0D726CF4E943EFC4AEAD8B96C0452A4795CC8A44A0AB0FD000028C0181E
      D4B455DAC64DDC28A28A620A28A2800AF86FFE0AA5FB437FC2BBF84D6DF0EF47
      BDF2B5FF0016E7ED9E4CB8920D350FCF9DAE197CE7C4632AC8E8B70A7915F719
      3815F825FB6C7C5AFF0085CDFB4BF8D75C82EBED3A4DB5D9D2F4D31DEFDAA0FB
      35BFEE95E171F288E56579805E333372D92C65951576786D1452AA9660075271
      506C7D55FB027EC81FF0D2DE3F9B53F12DA5EC7F0F344F9EF2E211B12FAE4152
      B6424C8619562EEC8095500650C88C3F6AF4AD2ACB43D32D34ED3AD20B0D3ED2
      24B7B7B4B68C471431A80AA88AA0055000000E0015E65FB2F7C0DB3FD9E3E09F
      873C1B02C0FA8410FDA354BA84022E6F64F9A67DC110BA83F22161B8471C60FD
      DAF57AD12B18B770A28A299215E65FB46FC07D1BF68EF84FABF82B5897EC46EB
      6CD67A924092C965728731CA81BF15600A9647750CBBB23D368A00FE717E26FC
      3BD67E1378FF005EF07EBF0791AB68F76F693611D524DA7E5923DEAAC6375DAE
      8C40DCACA7BD7335FAD3FF000551FD98E7F883E0CB6F8ABA147E66AFE17B436F
      AA5B2472C925CD819372BA05CAAF90CF2BB7CA328EECCE3CB507F25AB36AC6E9
      DD1E87FB3CFC539BE0A7C6CF06F8D239278E1D2B518E4BB16D12492C96ADF25C
      468AFF002EE685E45192305B20A9008FE8714EE507D466BF9B5F0A786F51F18F
      8A347D0747B7FB66ADAA5E4365676FBD53CD9A47088BB9885196603248033C91
      5FD24C636A283D4015512263A8A28AA330A2B98F889F137C2BF09BC353EBFE30
      D7AC7C3FA4C5B87DA2F6509E638467F2E35FBD248551888D0166DA700D7E687C
      7DFF0082B6F88BC43E7699F09F47FF00845EC8E3FE279AC471CF7CDFEADBE487
      E6862E44887719772B023CB6149BB0D26CFD55660BD481F535E7BA9FED15F0A7
      44D4AEF4FD43E267842C6FED25782E2D6E75DB58E5864525591D4B82AC082083
      C822BF027C67F14BC65F118DA1F15F8B35CF137D8F7FD9BFB5F519AEBC8DFB77
      ECF318EDDDB5738EBB467A0AE609CD4F317C87F43BA67ED15F0A75BD4AD34FD3
      FE267842FAFEEE5482DED6DB5DB59259A462155114392CC490001C926BD09583
      7420FD0D7F3400E2BB0F873F18BC6FF08F5237DE0DF156ABE1D9DA58A6956C6E
      9922B868893189A3CEC954166F95C3290CC0820904E60E43FA30A2BF2A7E017F
      C15B7C45E1F31699F16346FF0084A2C867FE279A3C71C17CBFEB1BE787E5865E
      4C683698B6AA927CC635FA71E06F1CE83F12BC27A6789BC33A9C1AC687A94226
      B5BCB7276BAE70410705581055958065605480411549DC869A37A8A28A620A28
      A2800A2BE2EFDAABFE0A5DE15F81BAD6ABE11F0969BFF09878CACB30CF299426
      9D6336D7051DD4969648DC26F89428F9994C8AEACA3F3AFE247EDD7F1C7E266A
      42E6F3C7FAA6890472CB24167E1D94E9D142B2107CBCC3B5E4550005F359D80C
      F3966265B2945B3F78BCD4FEFAFE74A1D5BA303F435FCD1F9AFF00DF6FCEB73C
      23E3EF137C3FD4A4D43C31E22D57C397F2C4607BAD26F64B595E3243142C8C09
      52554E3A6547A52E62B90FE90A8AFC66F827FF000547F8B1F0DAE2DED7C56F07
      C44D0A38921106A1B6DEF11511954ADD2292CC4942ED32CACDB3AA962D5FA99F
      023F68DF027ED1DE1A9758F04EAFF6D36DE5ADF584F198AEACA474DC1258CFFC
      086F52C8C51C2B36D38A4EE4B4D1F871FB4EFF00C9C97C56FF00B1AF55FF00D2
      B96BCCEBD33F69DFF9392F8ADFF635EABFFA572D799D666C7DC9FF000483FF00
      9392F127FD8A971FFA57695FAF95F907FF000483FF009392F127FD8A971FFA57
      695FAF9571D8CA5B8514515440515E65F1DFF68DF027ECE3E1A8B58F1B6AFF00
      62373E62D8D8411996EAF6444DC5228C7FC046F62A8A5D0332EE19FCB3F8D9FF
      000547F8B1F126E2E2D7C28F07C3BD0A489E13069FB6E2F1D5D1558B5D3A82AC
      08728D0AC4CBBFAB150D49BB149367EC76A9ABD8E87A75DEA1A8DE5BD8585A44
      F3DC5D5D4AB1C50C6A0B33BB31015400492780057E38FC75F1DF86B57FF829AE
      9BE29B1F106977BE194F13787E76D66DEF237B311C71D9891CCC0ECDA855B71C
      E06D39C60D7C99E24F156B5E32D66E357D7F57BED6F55B9DBE75F6A372F3CF2E
      D50ABB9DC963855503278000ED59750DDCB51B1FD17F847E327807E206A5269F
      E18F1BF877C477F144677B5D275582E6548C10A5CAA3921416519E9961EB5D80
      208C8391ED5FCD0062A78247D2BD5BE167ED55F167E0B431DB7843C75AAE9B61
      144F0C5A74CEB756712BBF98C52DE60F1A316C9DCAA1BE66E7E66CBE61721FD0
      5515F047ECC7FF000551F0EFC40BB4D0BE2ADB59782B577DAB6FACDAB4874EB9
      91A52A11D5B735B61593E777643B646668F0AA7EF6041191C8AABDC86AC2D145
      14C4145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      450014514500145145007867ED35FB1FF80FF69FD15FFB76CFFB3FC536F68D6D
      A6F88ED41F3ED32C1D43A821668C303F23F40F26C28CC5ABF213F69AFD8FFC79
      FB306B4FFDBB67FDA1E16B8BB6B6D37C476A079177850EA1D412D0C8549F91FA
      9493617552D5FBDD55355D2ACB5DD32EF4ED4AD20BFD3EEE2782E2D6EA312453
      46C0AB23AB02194824107820D26AE52958FE6AA8AFD30FDAA7FE0953FF001F1E
      23F8283FE78A3783AEA7FAAC924175349FEE318E43FF003D087FB91D7E6CEABA
      55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB020820F2
      08ACDAB1AA772AD145140C28A28A0028A28A0028A28A0028A28A0028A28A0028
      A28A0028A28A0028A2BE98FD95FF0060BF1DFED306DF583FF14AF8164F397FE1
      22BB884BE6BC781B20837AB4B97382F9541B241B8B2EC205EC782781FC0DAF7C
      4AF16699E19F0C6973EB1AE6A52886D6CEDC0DCED8C9249C0550016666215541
      624004D7EA17ECA1FF0004B9D0BC1B058F89BE2E241E24D75E28A68FC35C9B3D
      3A50FBF12BAB62E5B0114A91E5732291282AC3EB4F811FB397813F671F0D4BA4
      782B48FB19B9F2DAFAFEE2432DD5EC889B43CB21FF00811D8A1514BB9555DC73
      E9B56919395F61000A300607B52D14551014514500145145001451450071DF19
      3C5D79F0FF00E1178DFC4FA7C704D7FA2E897BA8DBC772A5A2792181E450E010
      4A92A3201071DC57F3A0C77313EA735FBA3FF0512D52F348FD8E3E224F63773D
      94CF15A40D25BC8518C725E411C8848FE17466561D0AB107826BF0BAA246B0D8
      2BDC7F61FF0005FF00C27BFB587C33D33ED7F62F23555D4FCDF2BCCDDF6456BA
      D98C8FBFE46CCE78DD9C1C60F8757DA3FF000499F0DE9DAE7ED45757B7D6FE75
      CE8FE1FBABEB17DECBE4CCD243016C02037EEE79570D91F3671900895B94F63F
      63E8A28AD4C028A28A0028A28A004203020F20D7C13F167FE0915E04F166B697
      DE06F13DEF816D9F3E7E9B3DB9D4E01F2A05F28BCA922721D9B7BC992FC6D030
      7EF7A295AE34DA3E5DFD953F600F04FECC7A97FC242D7B3F8BBC6662685756BD
      81628AD558B6E36D082DE5B321546667762030528AECA7EA2A28A60DDC2B98F8
      9BF11346F84DE00D7BC61AFCFE4693A3DA3DDCD874579368F9638F7B2A991DB6
      A2292373328EF5D3D7E54FFC15B7E3EFFC241E34D1BE13E992E6CB41D9A9EADF
      2FDEBC923FDCA7CC808F2E190B655CAB7DA704068E937604AECF953F69BFDA6F
      C55FB5078FDF5FD7DFEC7A65B6E8B49D12190B41A7C248E07037C8D852F2100B
      1038555445F20A2800B100724D666E0016380327DABDEFC1FF00B07FC7BF1C69
      925FE9DF0DB54B782394C257567874E94B000E44772F1B95C30F980DA4E46720
      81FA39FB087EC2165FB3DE97078C7C63041A87C49BC84ED4C8922D1A36183144
      46434C4121E51C609443B77349F64D52899B9763F06BC61FB07FC7BF03E991DF
      EA3F0DB54B88249442174978751943104E4C76CF2385C29F988DA0E0672403E0
      8410707835FD3057C5BFB6FF00FC13F746F8DBA25D78AFC01A6D8E87F10ADBCC
      9E482044B7835BDCC5DD65C6145C16662B31FBC4ED90E0ABC638829773F1C6BD
      83F663FDA73C55FB2FF8FE3D7B4193ED9A65CED8B56D12690AC17F082783D764
      8B96292004A9278656746F1F20A920F045152687F485E06F1CE85F12BC25A678
      9BC33A9C1AC687A94226B6BCB7276BAE704107055810559580656054804115BD
      5F953FF0492F8FBFF08FF8D359F84FA9CB8B2D7B7EA7A4FCBF76F238FF007C9F
      2A127CC8630D9670ABF66C005A4AFD56AD13B98356615F03FF00C147BF6DED47
      E1187F861E03B9FB2F8A2FAD166D535BB7994C9A6C32676C31053B92E1D46EDC
      D8288E8C9967578FEC8F8C1F11ECFE10FC2DF14F8CEF840F0E8BA7CD78B05C5C
      8B75B89554F97089083B5A47DB1AF0496700024807F9E2F14F89751F19F89B56
      F106B171F6BD5B55BB96FAF2E362A79B348E5DDB6A80A32CC4E0000678029365
      455CCC249393C9A28AEE7E0BFC17F14FC7CF1FD87843C2363F6CD4AE7E792590
      9582D2104079E6700EC8D72327049255543332A9835387552C700127DABD2BFE
      198BE30E33FF000AA7C6DFF84F5DFF00F1BAFDABFD9A3F64FF00047ECCDE12B4
      B1D16C20D43C44622BA87896E2DD45E5E33152EA1B931C3944DB103B46D04EE6
      DCEDED555CA67CE7F340CA54E0820FBD771F05FE3478ABE01F8FEC3C5DE11BFF
      00B1EA56DF24B0C80B41770920BC1320237C6D819190410ACA5595587EE87C72
      FD97BE1BFED0FA6341E31F0EC173A82C462B7D66D47937F6C30E1764CBC95532
      3B88DF7465B9286BF133F698FD9DF5EFD993E28DD783F5C9E1BF46885E69FA8D
      BE02DE5A3332A485324C6D9475643D194E0B2ED664D58A4D338EF89DE33FF858
      FF00127C57E2CFB1FF0067FF006EEAB75A9FD93CCF33C8F3A669366FC0DDB776
      33819C6703A573545148A3EE4FF8241FFC9C97893FEC54B8FF00D2BB4AFD7CAF
      C83FF8241FFC9C97893FEC54B8FF00D2BB4AFD7CAB8EC652DC2BCA7F698FDA23
      41FD993E175D78C35C826BF769459E9FA75BE435E5DB2B32465F0446B8476673
      D154E0336D56F56AFC5DFF00829B7C7DFF0085BBF1F66F0D69F2EFF0FF0082BC
      DD322F971E65E161F6B7E515861D122C12CBFB8DEA70E69B76125767CF5F1A3E
      3478ABE3E78FEFFC5DE2EBFF00B66A573F2450C60AC1690824A410A127646B93
      8192492CCC599998F0D45773F03BE13EA3F1CBE2CF867C0DA5BF9373AC5D885E
      E30ADF67854179A6DACCA1B644AEFB7702DB703922B336D83E13FC0EF1DFC71D
      65F4BF037866FBC4173163CE92050905BE55D97CD99C88E3DC237DBBD86E2B81
      93C57D43A5FF00C123BE33DFE9B69753EAFE10D3679A2491ECEE6FEE0CB03100
      98DCC703216527076B32E47048E6BF533E0BFC17F0AFC03F00587847C2361F63
      D36DBE796690869EEE620079E67006F91B0327000015542AAAA8EEAAF94C9CBB
      1F849F19FF0060BF8CBF042D6FB51D53C33FDB5A059F326B3A049F6B80279464
      79190013471A0560D2491AA82BD70549F9E88C57F4BE466BF2F3FE0AA3FB2A69
      BE1A16BF17BC25A57D923BEBB3078961B556F2FCE9398AEF62AED4DEC192472C
      033BC5F29777629A294AFB9F9C75FA4DFF0004CDFDB4EF06A765F07FC77AB40D
      60D108BC35A95F4A44A9202AA9A796C10CA413E56E20A95F2C6EDD1AA7E6CD5A
      D2B54BCD0F53B4D4B4EBB9EC350B3992E2DEEADA431CB0C8A432BA30C1560402
      08E411529D8A6AE7F4AD457997ECD3F17FFE17CFC0CF0878E5ADFEC973AA5A1F
      B5C213622DCC4ED0CFB06E6223F3237299627695CE0E457A6D6A601451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450015E19FB4D7EC7FE03FDA7F457FEDDB3FECFF0014DBDA35B69B
      E23B507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AF73A2803F047F69AFD8
      FF00C79FB306B4FF00DBB67FDA1E16B8BB6B6D37C476A079177850EA1D412D0C
      8549F91FA9493617552D5E1B5FD2AEABA5596BBA65DE9DA95A417FA7DDC4F05C
      5ADD46248A68D815647560432904820F041AFCDAFDAA7FE0953FF1F1E23F8283
      FE78A3783AEA7FAAC924175349FEE318E43FF3D087FB91D4346AA5DCFCCFA2AD
      6ABA55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB0208
      20F208AAB5258514514005145140051451400514514005145140056EF81FC0DA
      F7C4AF16699E19F0C6973EB1AE6A52886D6CEDC0DCED8C9249C0550016666215
      541624004D7BDFECAFFB05F8EFF69836FAC1FF008A57C0B279CBFF000915DC42
      5F35E3C0D9041BD5A5CB9C17CAA0D920DC59761FD7BF811FB397813F671F0D4B
      A4782B48FB19B9F2DAFAFEE2432DD5EC889B43CB21FF00811D8A1514BB9555DC
      72D2B92E563E4BFD943FE0973A178360B1F137C5C483C49AEBC514D1F86B9367
      A74A1F7E25756C5CB60229523CAE64522505587E800014600C0F6A5A2AED6326
      EE14514531051451400514514005145140051451401F33FF00C148FF00E4CC3E
      217FDC3FFF004E16D5F86F5FBDDFB707833FE13CFD93BE2669BF6CFB0F91A536
      A7E6F97E66EFB232DD6CC647DFF236673C6ECE0E307F046A246B0D82BEE4FF00
      8241FF00C9C97893FEC54B8FFD2BB4AF86EBEBEFF8257F8CFF00E117FDAC6C34
      DFB1FDA7FE122D2AF34CF37CCD9F67DAA2EB7E307767ECBB3191F7F39E3052DC
      A7B1FB454514568601451450014514500145213815F217C44FF82A4FC14F0178
      967D1ED65D6FC5DE46E596FF00C3F691C96AB22BB294579658FCCFBB90E81908
      652AC79C034AE7D7D45781FECF1FB6DFC30FDA4E7B8B1F0FEA3368FAEC72F971
      E89AF7956F7972BB0BF990A2C8E255015F3B4965D84B05054B7BE502D8466DAA
      4FA0CD7F3A1F18BE235E7C5CF8A7E2AF195F09D27D6B519AED60B8B9370D6F1B
      31F2E11210372C69B635E000A800000007EF6FED15A9DE68BFB3F7C4CD434FBB
      9EC2FED3C33A94F6F756D218E58645B59195D181055810082390457F3C44E4D4
      48D2015F50FF00C1373E15C5F143F6A9F0F49771C1369FE1A8A4F104F14B2BA3
      3342556029B3AB2DC4903ED2429546CE7EEB7CBD5FA3BFF046BF0DE9D75E25F8
      9FAFCB6FBB56B1B4B0B1B7B8DEC36433BCCF2AEDCED3B9ADE1392091B3823272
      96E5BD8FD43A28A2B4300A28A2803F103FE0A47F0AE2F85FFB54F8864B48E087
      4FF12C51F88208A295DD95A62CB397DFD19AE239DF682542BAE31F757E5EAFD1
      DFF82CA786F4EB5F12FC30D7E2B7DBAB5F5A5FD8DC5C6F63BE181E178976E768
      DAD7131C8009DFC93818FCE2ACDEE6EB63B0F83BF11AF3E11FC53F0AF8CAC44E
      F3E8BA8C376D05BDC9B76B88D58799099003B5644DD1B70415720820907FA2F5
      6DCA0FA8CD7F3400E0D7F43BFB3AEA779AD7ECFDF0CF50D42EE7BFBFBBF0CE9B
      3DC5D5CC86496691AD636677624966249249E4934E244CF9EBFE0AB7E30BCF0D
      7ECACDA75B4703C3E20D6ED34DBA69549648D449720A608C36FB6419391B4B71
      9208FC67AFD30FF82CD9FF009245FF00716FFDB3AFCCFA4F72A3B057EB4FFC12
      47E0BC1E1BF84FACFC47BEB0DBAB788EEDECEC6E64313FFA040769319037A6F9
      C4A1D588DDE44476F00B7E4B57F403FB20786F4EF0A7ECBBF0BACB4BB7FB2DB4
      BE1FB4BE74DECF99AE2313CCD9624FCD24AED8E83760000001C452D8F5FA28A2
      ACC82BE37FF82A3FC138BE24FECF6FE2BB5B79A6D77C192FDB6116F0BCACF692
      B225D215560154011CCD2156DAB6E7EE86635F64560F8FBC2367F103C0BE22F0
      C6A124F0D86B5A75C69D7125B30595239A368D8A12080C031C1208CF63498D3B
      33F9BDA295C6D761E87149599B9F727FC120FF00E4E4BC49FF0062A5C7FE95DA
      57EBE57E41FF00C120FF00E4E4BC49FF0062A5C7FE95DA57EBE55C763296E731
      F143C67FF0AE7E1A78B3C57F64FED0FEC2D26EF53FB2799E5F9DE4C2D26CDF83
      B73B719C1C673835FCE86ABAADE6B9AA5E6A5A85D4F7D7F7933DC5C5D5CC8649
      6691D8B33BB312598924924E4935FB8FFF000512D52F348FD8E3E224F63773D9
      4CF15A40D25BC8518C725E411C8848FE17466561D0AB107826BF0BA948A8057E
      97FF00C11D3E1B7FC940F1FDD69DFF003C344D3F50F3BFEDB5D45E586FFAF36D
      CCBECA7EF8AFCD0AF5FF00841FB5B7C56F80DE1AB9D03C0BE29FEC4D26E6EDAF
      A5B7FECFB5B8DD3322216DD2C4CC3E58D0601C71D3934968535747F403457E1B
      FF00C3C8FF0068AFFA285FF946D3FF00F8C51FF0F23FDA2BFE8A17FE51B4FF00
      FE3155CC8CF919FB915C2FC75F87BFF0B5FE0D78D3C20B0D94F73AC693736B6B
      FDA2BBA08EE4C67C891BE5623649B1C3004A950472057E38FF00C3C8FF0068AF
      FA285FF946D3FF00F8C521FF0082917ED144107E21707FEA0DA7FF00F18A3990
      72B3E6861B588F438A28272493D4D1506A7EAB7FC11D3C69F6FF0086DF103C27
      F64D9FD97AAC1A9FDAFCDCF99F6987CBD9B31C6DFB1E73939F33181B79FD0AAF
      CD8FF823469779169BF15B517B49D34F9E5D36086E9A32229248C5CB488ADD0B
      28923240E4075CFDE19FD27AD16C632DC28A28A6485145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451401E19FB4D7EC7FE03FDA7F457FEDDB3FECFF0014DBDA35B69BE23B50
      7CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84FDA6BF63FF1E7ECC1AD3F
      F6ED9FF68785AE2EDADB4DF11DA81E45DE143A87504B4321527E47EA524D85D5
      4B57EF7554D574AB2D774CBBD3B52B482FF4FBB89E0B8B5BA8C4914D1B02AC8E
      AC0865209041E08349AB94A563F9AAA2BF4C3F6A9FF8254FFC7C788FE0A0FF00
      9E28DE0EBA9FEAB24905D4D27FB8C6390FFCF421FEE475F9B3AAE957BA16A777
      A76A5693D86A1692BC1716B75198E5864525591D5802AC082083C822B36AC6A9
      DCAB45145030A28A2800A28AFA63F657FD82FC77FB4C1B7D60FF00C52BE0593C
      E5FF00848AEE212F9AF1E06C820DEAD2E5CE0BE5506C906E2CBB0817B1E09E07
      F036BDF12BC59A67867C31A5CFAC6B9A94A21B5B3B70373B6324927015400599
      988555058900135FA85FB287FC12E742F06C163E26F8B89078935D78A29A3F0D
      726CF4E943EFC4AEAD8B96C0452A4795CC8A44A0AB0FAD3E047ECE5E04FD9C7C
      352E91E0AD23EC66E7CB6BEBFB890CB757B2226D0F2C87FE0476285452EE5557
      71CFA6D5A464E57D840028C0181ED4B451544051451400514514005145140051
      451400514514005145140197E2AF0DE9FE32F0C6AFA06AF6FF006BD2B55B496C
      6EEDF7B279B0C8851D77290C32AC46410467822BF9C7F15786F50F06F89F57D0
      357B7FB26ABA55DCB63776FBD5FCA9A3728EBB9495386523209071C135FD2657
      E337FC151FE09CBF0DBF6847F15DADBC30E85E338BEDB08B7852254BB89512E9
      0AAB12CC498E6690AAEE6B83F78AB1A9917067C715E99FB33FC48FF8547F1FBC
      07E2B7D43FB2ACAC35687EDD77E4F9DE5D9BB79773F26D62730BCA3E505B9CAF
      CD8AF33A2A0D4FE97C10C011C834B5F2A7FC1397F684D3BE33FC03D2B40FF53E
      24F05DA5BE93A85BAC2C919855592D65462CC1B747161B9077A3FCAAA533F55D
      6A60F40A28A2810514521200C9E05007CA9FF051FF008FFA8FC0CF802F0F87B5
      2FECDF147892ED74CB4B882E962BAB6876979E789482C70AAB16E5DA50DC2306
      0C173F8964E4D7D69FF0523FDA3ECFE3C7C6B8B4BF0FEA106A5E10F0AC4D6765
      756CC1E2BAB87DAD733236C04A92A918F99908837A1C495F25D66F7368AB2353
      C2BE25D47C19E26D23C41A45C7D9356D2AEE2BEB4B8D8AFE54D1B8746DAC0A9C
      3283820838E41AFE8BBC05E2FB3F883E07F0F78A34F8E786C35BD3ADF52B78EE
      542CAB1CD1AC8A1C024060186402467B9AFE747C2BE1BD43C65E27D2340D22DF
      ED9AAEA9790D8DA5BEF54F36691C222EE621465980C9200CF2457F483A469769
      A1E9567A769F690585859C296F6F6B6D188E2863550AA88A000AA0000003000A
      7126679F7ED3BFF26DBF15BFEC54D57FF4925AFE7AEBFA55D5F4BB4D734ABCD3
      B50B482FEC2F217B7B8B5B98C4914D1B2956475208652090411820D7F37DE2AF
      0DEA1E0DF13EAFA06AF6FF0063D574BBC9AC6EEDF7ABF95346E51D77292A70CA
      464120E382689040CBAFD2FF00F82321E7E2EFFDC27FF6F2BF342BEC7FF8252F
      8C6CFC33FB54AE9D751CEF3788344BBD36D5A200AA48A63B925F2461765B4832
      327715E3049096E54B63F6668A28AD0C428A28A00FCCEFF82CD9E7E117FDC5BF
      F6CEBF342BEC7FF82AD78C6CFC4DFB54B69D6B1CE93787F44B4D36E9A5002BC8
      C64B905304E5765CC632707706E30013F1C566F7368EC15FD0A7ECC5C7ECDBF0
      A7FEC54D2BFF004922AFE7FF00C29E1BD47C63E28D2341D22DFED7AAEA9790D9
      5A5BEF54F36691C222EE621465980C9200CF2457F49518DB1A8F414E24CCFCD1
      FF0082CDFF00CD22FF00B8B7FED9D7E67D7EC2FF00C15ABC0F2F88BF670D375E
      B5D320B99BC3FADC335C5F30412DADACA8F0B0563F36D699AD8155CE48524613
      23F1EA93DCA8EC15FD09FECC273FB367C29FFB1534AFFD248ABF9ECAFD98FF00
      82567C48B3F177ECC36FE1C410C3A8785750B8B39A15B90F2C91CD235CC73347
      80635632C918CE41303107A857114B63EC8A28A2ACC82A9EB1A9D9E8BA4DEEA1
      A85DC161616903CF717573208E2863552CCEEC480AA002493C002AE5781FEDD7
      F11ECFE19FECADE3FBBBA104B3EA9A7BE896B6D2DC885A692E8184ECC83BD911
      E49760192B137206580347E0EC873231F734DA28AC8DCFB93FE0907FF2725E24
      FF00B152E3FF004AED2BF5F2BF20FF00E0907FF2725E24FF00B152E3FF004AED
      2BF5F2AE3B194B73E67FF8291FFC9987C42FFB87FF00E9C2DABF0DEBFA1DFDA2
      3C112FC48F811E3FF0D5B69906B17FA8E89770D959DC04DAF75E531B720BE155
      84A23656246D601B2319AFE7888C120F514A454360AF5FF841FB24FC56F8F3E1
      AB9D7FC0BE16FEDBD26DAEDAC65B8FED0B5B7DB32A2395DB2CAAC7E5910E40C7
      3D7835E415FA87FF000473F887F68F0D7C41F02CF35947F64BB8359B487762EA
      6F353CA9DB05BE68D3C9B7190BF2997927728096A537647CA9FF000EDCFDA2BF
      E89EFF00E5674FFF00E3F47FC3B73F68AFFA27BFF959D3FF00F8FD7EE45155CA
      8CF9D9F86FFF000EDCFDA2BFE89EFF00E5674FFF00E3F47FC3B73F68AFFA27BF
      F959D3FF00F8FD7EE451472A0E767E1BFF00C3B73F68AFFA27BFF959D3FF00F8
      FD7A67C36FF8248FC53F131D3AE7C5BACE89E0CB29BCCFB4DBF98D7D7D6D8DC1
      3F771E227DC429E26E15B27E6056BF5EC90064F02BC87FE1AFBE0A7FC24BFD85
      FF000B47C2FF006EFB2FDB3CDFED28FECBB37ECDBF69CF93E667FE59EFDF8F9B
      6EDE68B20E6674BF05FE0BF85BE01F802C3C21E11B1FB1E9B6DF3C92C8434F77
      31003CF338037C8D819380000AAA15555477548082323914B544051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      514005145140051451400514514005145140057867ED35FB1FF80FF69FD15FFB
      76CFFB3FC536F68D6DA6F88ED41F3ED32C1D43A821668C303F23F40F26C28CC5
      ABDCE8A00FC11FDA6BF63FF1E7ECC1AD3FF6ED9FF68785AE2EDADB4DF11DA81E
      45DE143A87504B4321527E47EA524D85D54B5786D7F4ABAAE9565AEE9977A76A
      56905FE9F7713C1716B75189229A3605591D5810CA412083C106BF36BF6A9FF8
      254FFC7C788FE0A0FF009E28DE0EBA9FEAB24905D4D27FB8C6390FFCF421FEE4
      750D1AA9773F33EB77C0FE06D7BE2578B34CF0CF8634B9F58D735294436B676E
      06E76C64924E02A800B33310AAA0B120026BE85FD9AFFE09F1F11FE3EEA8F3EA
      5693F81BC2B6F35CDADCEB1AA5B6651710B6C7863B66647761265589DA8A5241
      BB7A6C3FAE3F023F672F027ECE3E1A9748F05691F63373E5B5F5FDC4865BABD9
      1136879643FF00023B142A29772AABB8E52571B958F92FF650FF00825CE85E0D
      82C7C4DF17120F126BAF145347E1AE4D9E9D287DF895D5B172D808A548F2B991
      48941561FA00005180303DA968ABB58C9BB8514514C414514500145145001451
      45001451450014514500145145001451450015E19FB687C031FB45FC02D77C37
      6B1799E20B4C6A9A2FCD8CDE44ADB539745FDE2349165CED5F377E09515EE745
      01B1FCD46A9A5DE687A9DDE9DA8DA4F61A85A4CF6F716B73198E5864525591D4
      80558104107904556AFD56FF008281FF00C13F7FE138FED2F89DF0C74EFF008A
      97E6B8D6BC3F6A9FF212EED71028FF00978EA5907FADE48FDE644BF952410707
      8359356374EE773F05FE3478ABE01F8FEC3C5DE11BFF00B1EA56DF24B0C80B41
      770920BC1320237C6D819190410ACA5595587ED0FECC9FB6FF00C3CFDA62CD2D
      6C6E87873C58BB525F0EEAB346B3CAFE51776B639FDFC6BB64E400C026E6440C
      B9FC25A0120E41C1F6A69D84D5CFE97C1CD2D7F3FDF0F3F6BCF8CBF0B7C95F0F
      7C44D6E1B682D16C60B2BD9FEDB6B042BB76AC704E1E34DA11402AA081900804
      83DC1FF82917ED1447FC942FFCA369FF00FC62AB988E467EDF6ABAB59685A6DD
      EA3A95E41A7E9F6913DC5C5D5D48B1C50C6A0B33BB31015400492780057E63FE
      D9FF00F0533D3BC63E1BD77E1F7C2B83ED7A4EA9682D2FBC53751B279B0C88C2
      7820B791030CAB2A195F046640A83E492BE09F19FC51F197C47FB27FC259E2CD
      6FC4DF64DFF66FED8D466BAF277EDDFB3CC63B776D5CE3AED19E82B98A4D94A3
      60A28AF5FF00D993F664F157ED41E3F4D03404FB1E996DB65D5B5B9A32D069F0
      92793C8DF23618246082C41E5555DD64B3E85FF8256FECF1FF000B0FE2C5CFC4
      4D62CBCDF0FF0084B1F63F3A2CC771A8B8F931B90AB7929990E195D1DADD8706
      BF5F2B8FF845F0AB41F825F0E744F04F86A39A3D1F4988C711B994C92C8CCECF
      248EDFDE777763801416C2850001D8568958C1BBB0AFC66FF82A3FC1397E1B7E
      D08FE2BB5B7861D0BC6717DB6116F0A44A97712A25D215562598931CCD2155DC
      D707EF15635FB335E65FB46FC08D1FF68EF84DABF82B5797EC66E76CD67A8A40
      92C965728731CA81BF15600A9647750CBBB206AE34ECCFE7B2B4FC2DE25D47C1
      9E26D27C41A3DC7D9356D2AEE2BEB3B8D8AFE54D1B8746DAC0A9C3283820838E
      41AB5E39F036BBF0D7C5BA9F867C4DA64FA3EB9A6CC61B9B3B80372363208232
      1948219594956521812083585599B1FD007ECC7FB4DF857F6A0F0047AF68127D
      8F53B6DB16ADA24D2069F4F9883C1E06F8DB0C524000600F0ACAE8BEC15FCE7F
      C2AF8BBE2FF825E2C8FC4BE09D6E7D0B58489E033C4A8EB246C3E6478DC323AE
      4038604065561CA823EE3F07FF00C163FC4B65A6491F8A7E1C697AC6A0652527
      D275192C2258F030A63912725B3B8EEDC06081B46326D48C9C7B1FA9B5E2DFB5
      7FED2FA0FECC9F0BAFB5BBEBB81BC47770CB0E83A5BA991AEEEC2FCA590329F2
      5095691B70C29001DCC8ADF08F8D3FE0B17E31BF169FF089FC3FD1345DBBFED3
      FDB17736A1E6671B36797E46CC7CD9CEECE4636E0E7E1CF889F137C55F167C4B
      3EBFE30D7AFBC41AB4BB87DA2F652FE5A1767F2E35FBB1C619D888D0055DC700
      50E40A3DCCCF14789752F19F89756F106B171F6CD5B55BB96FAF2E362A79B348
      E5DDB6A80A32CC4E000067802B328ADDF03781B5DF895E2DD33C33E19D327D63
      5CD4A610DB59DB81B9DB19249380AA002CCCC42AA82C48009A8353EAAFF825C7
      C1397E24FED089E2BBAB7866D0BC1917DB661710A4AAF772ABA5AA0566055811
      24CB2056DAD6E3EE96535FB335E65FB397C08D1FF671F84DA4782B4897ED86DB
      74D79A8BC091497B72E7324AE17F05504B1544452CDB727D36B44AC62DDD9E79
      FB42FC2C8BE35FC13F18F829E38249F56D3E48ED0DCCAF1C51DDAFCF6D23B27C
      DB56648D8E01C85C10C0907F9ECD574BBCD0F53BBD3751B49EC350B399EDEE2D
      6E6331CB0C8A4AB23A9C156041041E4115FD2B57E4B7FC150BF654D4BC21E3FB
      BF8B3E1CD2B7F84F5AF2CEB0D6AAB8B1BF276191D1546D8E6F90F984B6666937
      105D032921C5F43E08AF7BFD8D3F6A6BCFD95FE289D664B59F54F0CEA710B3D6
      34E8652ACD1EE05678D770469A339DBBF82AF22E537EE1E094541AEE7F487E06
      F1CE83F12BC25A6789BC33A9C1AC687A94426B5BCB7276BAE704107055810559
      580656054804115BB5FCF5FC20FDA57E267C06FB42F81BC5D7DA25ADC6E32D96
      12E2D599B6664F225568C4988D07981776063382457D2E3FE0AF9F18B1FF0022
      E782BFF006EFFF0092AAF98CB959FAE7AAEAB65A1E9977A8EA37705869F6913D
      C5C5DDCC8238A18D41667766202A800924F000AFC5DFDBFF00F6CA8BF699F16D
      9687E1959E0F01E81348D6B2C8CE8DA9CE405372F11202A80088C32EF0AEE490
      64289E67F1AFF6C5F8B3F1F609EC7C55E2A9FF00B0A595E41A269C8B6B66159D
      5D6364400CCA8513679C5D976E739249F21D2B4ABDD7353B4D3B4EB49EFF0050
      BB952DEDED2DA3324B348C42AA22A82598920003924D26EE528DB72AD15A5E27
      F0DEA3E0DF126ABA06B16FF63D5B4BBB96C6F2DF7ABF95346E51D77292A70CA4
      64120E3826B36A4B3EE4FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAFC83
      FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAB8EC652DC4232083D0D7E097
      EDA1F00CFECEBF1FB5EF0E5AC5E5E81778D5345F9B38B3959B6A72EEDFBB7592
      2CB9DCDE56FC00C2BF7BABE66FDBCFF6571FB4C7C26CE8F6FE6F8EBC3FBEE744
      DD75E4C72EF29E7C0F9054F98918DA4EDC3A265D54BE5B57145D99F8715ED1FB
      21FED0F2FECCBF1AF4CF17496F3DEE8D244F61AB59DB6CF366B49304EC2E3EF2
      3AC72000AEE31ED2CA189AF21D574ABDD0F53BBD3B51B49EC350B495EDEE2D2E
      6331CB0C8A4AB23AB00558104107904555ACCDB73FA43F0378E741F895E12D33
      C4DE19D4E0D6343D4A2135ADE5B93B5D738208382AC082ACAC032B02A40208AD
      DAFC1AFD967F6CBF1B7ECAFA95D47A30835AF0CDFCA92DF6837ECC226605774B
      0B03FBA98A294DF865236EE47D89B7EE4F07FF00C1623C057BA6C8FE29F03788
      B47D404A4241A4CB05FC4D1E0618C92340436770DBB48C00771CE05DCC9C59FA
      0355355D56CB42D32EF51D4AEE0B0D3ED2279EE2EAEA411C50C6A0B33BB31015
      400492780057E7FF008D3FE0B19E0FB1169FF089FC3FD6F5ADDBFED3FDB1770E
      9FE5631B36797E7EFCFCD9CEDC6063764E3E13FDA1FF006BDF891FB4D5C409E2
      DD4E18746B597CFB5D0F4C8BC9B3824D810BE096776C0620C8CC57CC70BB4311
      45C1459ED1FB6F7FC140F59F8DDADDCF857E1FEA57DA1FC3DB6F32092781DEDE
      7D6F7294769718616E55982C27EF03BA4192A91FC5D456EF81BC0DAEFC4AF16E
      99E19F0CE993EB1AE6A53086DACEDC0DCED8C9249C0550016666215541624004
      D46E68958FD85FF825B7C43D67C79FB2EC56BAC4DF69FF008477559F46B399D9
      DE46B658E29515CB31CECF3CC6A06004445038C9FAFAB85F81BF09F4EF81BF09
      BC31E06D2DFCEB6D1ED044F71865FB44CC4BCD36D6662BBE5677DBB885DD81C0
      15DD5688C5EE1451453105145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      514005145140098C52D145001451450014514500145145001451450014514500
      145145001451450014514500145145001451450015F1BFED5DFF0004DCF087C7
      59EFBC4BE11960F05F8E2E2596EAEA708EF67A9C8C9C09630DFBA62EAA4CB182
      7E691992466047D91451B8D3B1FCFAFC72FD97BE247ECF1A9B41E32F0E4F6DA7
      B4BE55BEB36A3CEB0B93970BB265E03308DD846FB640BC9415E535FD2FB28618
      2011EF5E1DE34FD87FE04F8F7EC9FDA5F0CF44B6FB2EFF002FFB1E36D3376EC6
      77FD99A3F33EE8C6ECE39C632731CA5A9F73F0468AFD8FF127FC1267E09EB9AD
      5C5F595D78A3C3F6D2EDD9A769DA8C6F0438500ED33C5249C9058EE73CB1C606
      00CCFF008741FC1DFF00A193C6DFF81D69FF00C8B4B9595CC8FC83AB5A5E957B
      AE6A569A769B693EA1A85DCA905BDADAC664966918855445504B31240007249A
      FD98F067FC12C3E04F85FED9FDA561ADF8BBCFD9E5FF006C6A6D1FD9F1BB3B3E
      CC21CEEC8CEFDDF74631CE7E84F87BF02FE1E7C27F21FC21E0BD13C3F7315A2D
      8FDB6CAC635BA9211B7E5927C799264A2925D8962A0924F34F945CE8FCAAFD99
      3FE0993E3BF8B7769AA78FE1BDF879E164DAEA975001A8DEE252AF1A42C4341F
      2ABFEF255FE28CAA48A491FAABF05FE0BF857E01F806C7C23E10B0FB1E9B6DF3
      C9348434F7731003CF338037C8D819380000AAA15555477545525621B6C28A28
      A64851451401E19FB4DFEC7FE04FDA7F457FEDDB3FECFF0014DBDA35B69BE23B
      507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84F8F9FB17FC54FD9D4CB
      75E23D07EDFE1F4C7FC541A316B9B119F2C7CEDB4343F3C8A83CD54DCC0EDDC0
      66BF7BA9080C304647BD26AE529347F341457EF778D3F61FF813E3DFB27F697C
      33D12DBECBBFCBFEC78DB4CDDBB19DFF006668FCCFBA31BB38E718C9CF8B6A9F
      F048EF8317FA95DDD41ABF8BF4D82695E44B3B6BFB73140A4922343240CE5541
      C0DCCCD81C9279A9E565F323F1EA8AFD85D2FF00E091DF062C352B4BA9F57F17
      EA50432A48F67737F6E229D4104C6E63815C2B0183B595B07820F35ED3E0BFD8
      7FE04F80BED7FD9BF0CF44B9FB56CF33FB6236D4F6EDDD8D9F69693CBFBC73B7
      19E339C0C1CAC3991F907F00FF0062FF008A9FB4518AEBC39A0FD83C3EF9FF00
      8A83592D6D6271E60F91B6969BE78D90F94AFB588DDB41CD7EBDFECC9FB1FF00
      813F660D153FB0ACFF00B43C537168B6DA9788EE81F3EEF0C5D822925618CB11
      F2275091EF2ECA1ABDC800A300607B52D525621C9B0A28A2992155755D2ACB5C
      D32EF4ED46D20BFD3EEE27B7B8B4B98C4914D1B02AC8EAC0865209041E08356A
      8A00FC7AFDB4FF00E09D9AF7C1FD4F56F187C3BB09F5AF874B13DEDC5B2C824B
      9D19411B91813BE58406DC241B99515BCCE13CC7F890820E08C1F7AFE97C8CD7
      907C57FD917E10FC6ED65357F187822C751D5973BAFEDE496CE79BE5451E6BC0
      E8D2E16350BBCB6D030B8C9CCB89A29773F9FF00A2BF5F0FFC120FE0EE7FE463
      F1AFFE075A7FF22D74DE0BFF0082587C09F0B1BBFED2B0D6FC5DE7ECF2FF00B6
      35368FECFB739D9F6610E7764677EEFBA318E733CAC7CC8FC8DF857F087C5FF1
      B7C591F86BC13A1CFAEEB0F13CE6189951638D47CCEF2395445C9032CC016655
      1CB007F5EFF634FD80741FD99A73E26D72F60F14F8F268824778B015B7D31590
      0952DC31259892EA662158A6142A0670FF004BF83FC05E1AF87BA6C9A7785BC3
      DA5F86EC2494CEF6BA4D9476B13C84052E563500B10AA33D70A3D2B7AA92B12E
      573F0B7FE0A0FF000AE5F857FB54F8C2311CE34FD7E5FF008482CE5B8951DA55
      B925A6236E36A8B813A2AB00DB5067390C7E71AFE89BE2C7C0EF027C72D1534B
      F1CF866C7C416D167C99275293DBE5919BCA9908922DC634DDB186E0B8391C57
      CD1E1BFF00824D7C13D0B5BB7BEBDBAF147882DA2DDBB4DD47518D209B2A40DC
      608A39382430DAE39519C8C829C46A48F0DFF823DFC27D4A4F1278CBE25CAFE4
      E930DA1F0F5BA614FDA26778A794E776E5F2D521EAB86F3B83F2115FA87597E1
      AF0BE8DE0CD16DF47F0FE9363A1E936DBBC9B0D3ADD2DE08B73166DA88028CB3
      31381C924F7AD4AA4AC43776145145311F257ED97FB00E83FB4CCE3C4DA1DEC1
      E16F1E4311492F1A02D6FA9AAA11125C0520AB021144C03304CA9570A813F23B
      E2C7C0DF1E7C0ED6934BF1C7862FBC3F73267C992750F05C61519BCA99098E4D
      A244DDB18ED2D8383C57F44D55355D2ACB5CD36EB4FD4ACE0D42C2EE2782E2D6
      EA259229A3605591D5810CA412083C106A5AB94A563F9AAA2BF793C61FB077C0
      4F1C6A51DF6A3F0DB4BB69E38442174879B4E88A824E4C76CF1A16CB1F988DC4
      60670001E2E7FE0907F0773FF231F8D7FF0003AD3FF916972B2F991F907457EC
      2E97FF00048EF83161A95A5D4FABF8BF5282195247B3B9BFB7114EA08263731C
      0AE1580C1DACAD83C1079AF69F05FEC3FF00027C05F6BFECDF867A25CFDAB679
      9FDB11B6A7B76EEC6CFB4B49E5FDE39DB8CF19CE060E561CC8FC83F807FB17FC
      54FDA28C575E1CD07EC1E1F7CFFC541AC96B6B138F307C8DB4B4DF3C6C87CA57
      DAC46EDA0E6BF5CBF659FD8D3C13FB2BE9973268C66D6BC4F7F12457DAF5FAA8
      959405DD142A07EEA12EA5F665989DBB9DF6263DEC00A300607B52D525621C9B
      0A28A29921451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      014514500145145001451450014514500145145007FFD9}
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    If <setup."lLicencia"> = '#39'No'#39' Then'
      '    Begin'
      '         Picture1.DataField := '#39#39';'
      '         Picture2.DataField := '#39#39';'
      '         lblLicencia.Visible := True'
      '    End'
      '    Else'
      '    Begin'
      '         Picture1.DataField := '#39'bImagen'#39' ;'
      '         Picture2.DataField := '#39'bImagen'#39' ;'
      '         lblLicencia.Visible := False'
      '    End ;'
      ''
      '    If <dsReporteDiario."sIdUsuarioValida"> = '#39#39' Then'
      '         lblValida.Visible := True'
      '    Else'
      '         lblValida.Visible := False ;'
      ''
      '    If <dsReporteDiario."sIdUsuarioAutoriza"> = '#39#39' Then'
      '         lblAutoriza.Visible := True'
      '    Else'
      '         lblAutoriza.Visible := False ;'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rDiarioGetValue
    Left = 552
    Top = 144
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' Financiero'
        Value = Null
      end
      item
        Name = 'dAcumulado'
        Value = '<CANTIDAD_ANTERIOR> + <dsmBitacora1."dCantidad">'
      end
      item
        Name = 'dAvanceAcumulado'
        Value = '<AVANCE_ANTERIOR> + <dsmBitacora1."dAvance">'
      end
      item
        Name = 'sTexto'
        Value = 'IIF(lblAvance.Value <> '#39#39','#39'O B S E R V A C I O N E S'#39','#39#39')'
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object GroupHeader4: TfrxGroupHeader
        Height = 66.141732289999990000
        Top = 396.850650000000000000
        Width = 740.409927000000000000
        Condition = 'dsmBitacora1."sContrato"'
        ReprintOnNewPage = True
        object Shape3: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.559059999999990000
          Width = 735.874015750000000000
          Height = 30.236240000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo58: TfrxMemoView
          Left = 77.480305200000000000
          Top = 47.244094490000010000
          Width = 289.511820790000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
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
        object Memo71: TfrxMemoView
          Left = 366.992125980000000000
          Top = 47.244094490000010000
          Width = 55.181102360000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.  A INSTALAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 422.173228350000000000
          Top = 47.244094490000010000
          Width = 46.110236220000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
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
        object Memo74: TfrxMemoView
          Left = 468.283464570000000000
          Top = 37.039370080000030000
          Width = 89.952755905511800000
          Height = 10.204724410000000000
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
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 558.236220470000000000
          Top = 37.039370080000030000
          Width = 89.952755905511800000
          Height = 10.204724410000000000
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
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 648.188976380000000000
          Top = 37.039370078740090000
          Width = 89.574803150000000000
          Height = 10.204724409448800000
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
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 1.889763780000000000
          Top = 26.456597719999990000
          Width = 466.393700790000000000
          Height = 20.787404020000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 468.283464570000000000
          Top = 26.456597719999990000
          Width = 269.480314960000000000
          Height = 10.582677165354300000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCES DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 18.141744490000000000
          Top = 3.779530000000022000
          Width = 171.590185040000000000
          Height = 13.220470000000000000
          ShowHint = False
          AutoWidth = True
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DETALLE DE MOVIMIENTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 1.889763780000000000
          Top = 47.244094490000010000
          Width = 33.637787950000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PQ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 468.283464570000000000
          Top = 47.244094490000010000
          Width = 49.511811020000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
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
        object Memo119: TfrxMemoView
          Left = 517.795275590551000000
          Top = 47.244094490000010000
          Width = 40.440944881889800000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12315881
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
        object Memo120: TfrxMemoView
          Left = 558.236220470000000000
          Top = 47.244094490000010000
          Width = 49.511811020000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
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
        object Memo122: TfrxMemoView
          Left = 607.748031500000000000
          Top = 47.244094490000010000
          Width = 40.440944881889800000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12315881
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
        object Memo123: TfrxMemoView
          Left = 648.188976380000000000
          Top = 47.244094490000010000
          Width = 49.511811023622000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
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
        object Memo124: TfrxMemoView
          Left = 697.700787400000000000
          Top = 47.244094490000010000
          Width = 40.062987240000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12315881
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
        object Memo169: TfrxMemoView
          Left = 35.527551730000000000
          Top = 47.244094490000010000
          Width = 41.952753460000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
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
      end
      object PageFooter1: TfrxPageFooter
        Height = 122.795300000000000000
        Top = 1084.725110000000000000
        Width = 740.409927000000000000
        object lblAutoriza: TfrxMemoView
          Left = 257.008040000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN AUTORIZARIZACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object lblValida: TfrxMemoView
          Left = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 120.944960000000000000
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
        object Memo32: TfrxMemoView
          Left = 292.023810000000000000
          Top = 89.118119999999410000
          Width = 449.764070000000000000
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
        object Memo50: TfrxMemoView
          Left = 3.000000000000000000
          Top = 85.338589999999620000
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
        object Memo30: TfrxMemoView
          Left = 4.000000000000000000
          Top = 2.794989999999871000
          Width = 226.771653543307000000
          Height = 25.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'POR EL CONTRATISTA'
            'REALIZO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 254.905690000000000000
          Top = 2.794989999999871000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'POR PEMEX'
            'REVISO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 4.220470000000000000
          Top = 39.928879999999940000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERINTENDENTE]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 4.220470000000000000
          Top = 27.031230000000960000
          Width = 226.771653543307000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERINTENDENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 255.008040000000000000
          Top = 39.369820000000350000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 255.008040000000000000
          Top = 26.472169999999550000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 308.023810000000000000
          Top = 71.165119999999880000
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
        object Memo144: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000250000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'POR PEMEX'
            'AUTORIZO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 506.559370000000000000
          Top = 40.354359999999820000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR_TIERRA]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 506.559370000000000000
          Top = 27.456709999999930000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR_TIERRA]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData7: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 11.338582680000000000
        ParentFont = False
        Top = 672.756340000000000000
        Width = 740.409927000000000000
        KeepChild = True
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo78: TfrxMemoView
          Left = 2.267716535433070000
          Width = 94.866141732283490000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsPermisos."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 97.133858270000000000
          Width = 641.007874015748000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsPermisos."sFolios"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.007874020000000000
        Top = 487.559370000000000000
        Width = 740.409927000000000000
        KeepChild = True
        KeepFooter = True
        OutlineText = 'dsmBitacora1."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 77.480305200000000000
          Width = 289.511820790000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '(<dsmBitacora1."sTipo"> = '#39'Paquete'#39') OR (<dsmBitacora1."iFase"> ' +
            '> 0)'
          Memo.UTF8 = (
            '[dsmBitacora1."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 422.173228350000000000
          Width = 46.110236220000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sMedida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dsmBitacora1."sMedida"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 558.236220470000000000
          Width = 49.511811020000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidad'
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
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidad"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 468.283464570000000000
          Width = 49.511811020000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidadAnterior'
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
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 648.188976380000000000
          Width = 49.511811020000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidadActual'
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
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadActual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1.889763780000000000
          Width = 33.637787950000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsmBitacora1."sTipo"> <> '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."sPaquete"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 366.992125980000000000
          Width = 55.181102360000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
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
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsmBitacora1."dCantidadActual"> > <dsmBitacora1."dCantidadAnexo' +
            '">'
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadAnexo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 517.795275590000000000
          Width = 40.440944880000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataField = 'dAvanceAnterior'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dAvanceAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 607.748031500000000000
          Width = 40.440944880000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataField = 'dAvance'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dAvance"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 697.700787400000000000
          Width = 40.062987240000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataField = 'dAvanceActual'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dAvanceActual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          ShiftMode = smDontShift
          Left = 35.527551730000000000
          Width = 41.952753460000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroActividad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsmBitacora1."dCantidadActual"> > <dsmBitacora1."dCantidadAnexo' +
            '">'
          Memo.UTF8 = (
            '[dsmBitacora1."sNumeroActividad"]')
          ParentFont = False
          SuppressRepeated = True
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Top = 529.134200000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader6: TfrxGroupHeader
        Height = 98.267762910000000000
        Top = 551.811380000000000000
        Width = 740.409927000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Memo82: TfrxMemoView
          Left = 119.055118110000000000
          Top = 18.897640239999990000
          Width = 147.779527560000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 119.055118110000000000
          Top = 34.015750470000060000
          Width = 147.779527560000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 266.622176610000000000
          Top = 3.779530000000022000
          Width = 94.488188976378000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 456.188954410000000000
          Top = 3.779530000000022000
          Width = 94.488188980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 266.622176610000000000
          Top = 18.897640239999990000
          Width = 94.488188980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 266.622176610000000000
          Top = 34.015750470000060000
          Width = 94.488188980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 360.944864800000000000
          Top = 18.897640239999990000
          Width = 95.244094490000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 456.188954410000000000
          Top = 18.897640239999990000
          Width = 94.488188980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 360.944864800000000000
          Top = 34.015750469999940000
          Width = 95.244094489999990000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 456.188954410000000000
          Top = 34.015750470000060000
          Width = 94.488188980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 360.944864800000000000
          Top = 3.779530000000022000
          Width = 95.244094490000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape5: TfrxShapeView
          Left = 1.889763780000000000
          Top = 74.078781650000000000
          Width = 735.874015750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo76: TfrxMemoView
          Left = 2.267716540000000000
          Top = 85.795321970000030000
          Width = 94.866141730000000000
          Height = 12.472440940000000000
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
            'CLASE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 97.133858270000000000
          Top = 85.795321970000030000
          Width = 641.007874020000000000
          Height = 12.472440940000000000
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
            'FOLIOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 16.251968500000000000
          Top = 66.141771339999990000
          Width = 145.133475040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PERMISOS UTILIZADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object lblAvance: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913419999999970000
          Width = 774.803649999999900000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[IMPRIME_AVANCES]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 266.834645670000000000
          Top = 18.897650000000000000
          Width = 283.464566930000000000
          Height = 15.118120000000000000
          ShowHint = False
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Color = clBlack
          Highlight.Condition = 'Value <> '#39#39
          Memo.UTF8 = (
            '[sTexto]')
        end
      end
      object GroupFooter4: TfrxGroupFooter
        Top = 706.772110000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader7: TfrxGroupHeader
        Height = 22.897650000000000000
        Top = 891.969080000000000000
        Width = 740.409927000000000000
        Condition = 'dsBitacora3."sContrato"'
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.338582679999950000
          Width = 735.874015750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo48: TfrxMemoView
          Left = 18.141732280000000000
          Top = 3.779527559999906000
          Width = 95.999585040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'COMENTARIOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter5: TfrxGroupFooter
        Top = 978.898270000000000000
        Width = 740.409927000000000000
        object Memo130: TfrxMemoView
          Left = 1.889763780000000000
          Width = 735.874015748031000000
          ShowHint = False
          Frame.Typ = [ftBottom]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 110.740157480000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        object Memo6: TfrxMemoView
          Left = 2.000000000000000000
          Top = 0.779529999999994100
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo19: TfrxMemoView
          Left = 197.315090000000000000
          Top = 2.779529999999994000
          Width = 356.614410000000000000
          Height = 76.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mDescripcion"]'
            ''
            'CONTRATO No.: [Contrato."sContrato"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 7.779530000000000000
          Top = 6.559059999999988000
          Width = 175.976500000000000000
          Height = 39.354360000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 562.488560000000000000
          Top = 6.559059999999988000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo21: TfrxMemoView
          Left = 559.488560000000000000
          Top = 48.692950000000200000
          Width = 173.299320000000000000
          Height = 32.354360000000000000
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
        object Memo24: TfrxMemoView
          Left = 2.779530000000000000
          Top = 45.133889999999810000
          Width = 185.078850000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mCliente"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 1.889763779527560000
          Top = 83.905511811023500000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 115.275590550000000000
          Top = 83.905511810000200000
          Width = 239.244094490000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 1.889763779527560000
          Top = 97.133858267716700000
          Width = 113.385826770000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 115.275590551181000000
          Top = 97.133858267716700000
          Width = 239.244094490000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sNumeroReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData5: TfrxMasterData
        Height = 24.220160000000000000
        Top = 1001.575450000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        Columns = 3
        ColumnWidth = 244.157480314961000000
        ColumnGap = 3.779527559055120000
        RowCount = 1
        Stretched = True
        object Subreport4: TfrxSubreport
          Left = 1.133858270000000000
          Top = 2.267716540000038000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = rDiario.Page5
        end
        object Subreport1: TfrxSubreport
          Left = 249.070866140000000000
          Top = 2.267716540000038000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = rDiario.Page3
        end
        object Subreport2: TfrxSubreport
          Left = 497.007874020000000000
          Top = 2.267716540000038000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = rDiario.Page2
        end
      end
      object GroupHeader8: TfrxGroupHeader
        Height = 47.622061880000000000
        Top = 729.449290000000000000
        Width = 740.409927000000000000
        Condition = 'dsTiempoMuerto."sNumeroOrden"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.559060000000160000
          Width = 736.251968500000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo16: TfrxMemoView
          Left = 20.031498500000000000
          Top = 3.779530000000136000
          Width = 130.015355040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TIEMPOS MUERTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 141.354377090000000000
          Top = 23.811030940000020000
          Width = 37.795275590551200000
          Height = 23.811023620000000000
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
            'HORA'
            'INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 216.566975510000000000
          Top = 23.811030940000020000
          Width = 56.692913390000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 377.952802280000000000
          Top = 23.811030940000020000
          Width = 359.810977240000000000
          Height = 23.811030940000000000
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
        object Memo101: TfrxMemoView
          Left = 1.889763780000000000
          Top = 23.811030940000020000
          Width = 63.874013310000000000
          Height = 23.811023620000000000
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
            'AREA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 178.771699920000000000
          Top = 23.811030940000020000
          Width = 37.795275590000000000
          Height = 23.811023620000000000
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
            'HORA'
            'FINAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 273.259888900000000000
          Top = 23.811030940000020000
          Width = 56.314960630000000000
          Height = 23.811030940000000000
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
            'PERSONAL AFECTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 329.574849530000000000
          Top = 23.811030940000020000
          Width = 48.377508500000000000
          Height = 23.811030940000000000
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
            'TIEMPO MUERTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 65.763777090000000000
          Top = 23.811023620000010000
          Width = 75.590553620000000000
          Height = 23.811023620000000000
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
            'CLASIFICACI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData8: TfrxMasterData
        Height = 14.118120000000000000
        Top = 801.260360000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo96: TfrxMemoView
          Left = 141.354377090000000000
          Width = 37.795275590000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[iif(<dsTiempoMuerto."sHoraInicio"> = '#39'00:00'#39' , '#39'N/A'#39' , <dsTiemp' +
              'oMuerto."sHoraInicio">)]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 178.771699920000000000
          Width = 37.795275590000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[iif(<dsTiempoMuerto."sHoraFinal"> = '#39'00:00'#39' , '#39'N/A'#39' , <dsTiempo' +
              'Muerto."sHoraFinal">)]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 216.566975510000000000
          Width = 56.692913390000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            
              '[Iif (<dsTiempoMuerto."dPersonal"> <> 0 , <dsTiempoMuerto."dPers' +
              'onal"> , '#39'N/A'#39')]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 273.259888900000000000
          Width = 56.314960630000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            
              '[Iif (<dsTiempoMuerto."dFrente"> <> 0 , <dsTiempoMuerto."dFrente' +
              '"> , '#39'N/A'#39')]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 329.574849530000000000
          Width = 48.377952760000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuerto."sTiempoMuerto"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 377.952802280000000000
          Width = 359.810977240000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuerto."mDescripcion"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 1.889763780000000000
          Width = 63.874013310000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sArea'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuerto."sArea"]')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 65.763779530000000000
          Width = 75.590551180000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuerto."sDescripcion"]')
          ParentFont = False
        end
      end
      object GroupFooter6: TfrxGroupFooter
        Height = 30.236222920000000000
        Top = 839.055660000000000000
        Width = 740.409927000000000000
        object Memo131: TfrxMemoView
          Left = 66.141732280000000000
          Top = 13.228346460000010000
          Width = 262.677165350000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TIEMPO MUERTO REAL EN [DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 328.818880550000000000
          Top = 13.228346460000010000
          Width = 49.133819210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuerto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 66.141732280000000000
          Width = 262.677165350000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TIEMPO ADICIONAL DE DISPONIBILIDAD DEL SITIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 328.818897640000000000
          Width = 49.133819210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoAdicional"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 184.440922910000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 2.000000000000000000
          Top = 0.779530000000001200
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo4: TfrxMemoView
          Left = 197.315090000000000000
          Top = 2.779530000000001000
          Width = 356.614410000000000000
          Height = 76.133889999999990000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mDescripcion"]'
            ''
            'CONTRATO No.: [Contrato."sContrato"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 7.779530000000000000
          Top = 6.559059999999999000
          Width = 175.976500000000000000
          Height = 39.354360000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 562.488560000000000000
          Top = 6.559059999999999000
          Width = 166.519790000000000000
          Height = 41.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo5: TfrxMemoView
          Left = 559.488560000000000000
          Top = 48.692950000000000000
          Width = 173.299320000000000000
          Height = 32.354360000000000000
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
          Left = 2.779530000000000000
          Top = 45.133889999999990000
          Width = 185.078850000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Contrato."mCliente"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 1.889763780000000000
          Top = 87.685039370000000000
          Width = 222.992125980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 1.889763780000000000
          Top = 129.259820550000000000
          Width = 117.165356770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CIERRE DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 1.889763780000000000
          Top = 142.464574250000000000
          Width = 117.165356770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO EFECTIVO DE LA ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 1.889763780000000000
          Top = 155.692920710000000000
          Width = 117.165356770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO MUERTO DE LA ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 119.054964330000000000
          Top = 102.779534880000000000
          Width = 105.826769210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[PERIODO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 119.054964330000000000
          Top = 129.259820550000000000
          Width = 105.826769210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sOperacionFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 119.054964330000000000
          Top = 142.464574250000000000
          Width = 105.826769210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoEfectivo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 119.054964330000000000
          Top = 155.692920710000000000
          Width = 105.826769210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuerto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 1.889763780000000000
          Top = 102.779534880000000000
          Width = 117.165356770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'PERIODO DE CONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 119.054964330000000000
          Top = 116.031496060000000000
          Width = 105.826769210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sOperacionInicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 1.889763780000000000
          Top = 116.031496060000000000
          Width = 117.165356770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'INICIO DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 472.441250000000000000
          Top = 87.685007639999990000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 472.441250000000000000
          Top = 100.913354090000000000
          Width = 113.385826770000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 472.441250000000000000
          Top = 114.519653310000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'ESTADO DEL TIEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 472.441250000000000000
          Top = 127.747999760000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'PLATICAS DE SEGURIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 472.441250000000000000
          Top = 140.976346220000000000
          Width = 113.385826771654000000
          Height = 28.346456692913400000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'TEMA DE LA PLATICA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 585.693218500000000000
          Top = 114.519653310000000000
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 585.693218500000000000
          Top = 127.747999760000000000
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '[<dsReporteDiario."sInicioPlatica"> + '#39' A '#39' + <dsReporteDiario."' +
              'sFinalPlatica">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 585.693218500000000000
          Top = 140.976346220000000000
          Width = 151.181102360000000000
          Height = 28.346456692913400000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTema"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 585.693218500000000000
          Top = 87.685007639999990000
          Width = 63.874015750000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8 = (
            '[dsReporteDiario."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 585.693218500000000000
          Top = 100.913354090000000000
          Width = 151.181102360000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sNumeroReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 649.322827320000000000
          Top = 87.685039370000000000
          Width = 87.684997870000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TURNO [dsReporteDiario."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object lblLicencia: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 102.047310000000000000
          Top = 41.574781180000000000
          Width = 540.472790000000000000
          Height = 34.015818820000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -43
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          HAlign = haCenter
          Memo.UTF8 = (
            'VERSI'#195#8220'N SIN REGISTRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 1.889763780000000000
          Top = 168.944881890000000000
          Width = 117.165356770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO MUERTO DEL CONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 119.055120550000000000
          Top = 168.944881890000000000
          Width = 105.826769210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuertoReal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 119.055118110000000000
          Top = 168.944881890000000000
          Width = 105.826656930000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Color = clBlack
          Highlight.Condition = 'Value <> '#39#39
          Memo.UTF8 = (
            '[sNewTexto]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897637800000000000
        Top = 937.323440000000000000
        Width = 740.409927000000000000
        KeepChild = True
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo15: TfrxMemoView
          Left = 2.000000000000000000
          Width = 735.874015750000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora3."mDescripcion"]')
          ParentFont = False
        end
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
      object GroupHeader5: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'dsPersonal."sContrato"'
        ReprintOnNewPage = True
        object Memo2: TfrxMemoView
          Left = 211.275590550000000000
          Top = 19.653543310000000000
          Width = 34.015748030000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 2.322820000000000000
          Top = 19.653543307086600000
          Width = 209.181102360000000000
          Height = 12.472440944881900000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CATEGORIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 242.984251970000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 11.897650000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        Condition = 'dsPersonal."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo17: TfrxMemoView
          Left = 2.322820000000000000
          Width = 243.023622050000000000
          Height = 11.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsPersonal."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        Height = 10.897650000000000000
        Top = 109.606370000000000000
        Width = 740.409927000000000000
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo20: TfrxMemoView
          Left = 2.322820000000000000
          Width = 243.023622047244000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 213.322820000000000000
          Top = 0.755905510000005100
          Width = 28.488250000000000000
          Height = 9.897650000000000000
          ShowHint = False
          DataField = 'dCantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsPersonal."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 2.322820000000000000
          Top = 0.755905510000005100
          Width = 209.488250000000000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsPersonal."sPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 10.897650000000000000
        Top = 143.622140000000000000
        Width = 740.409927000000000000
        object Memo43: TfrxMemoView
          Left = 2.267716540000000000
          Width = 243.023622047244000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 202.000000000000000000
          Top = 1.511811023622044000
          Width = 40.488250000000000000
          Height = 8.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsPersonal."dCantidad">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 5.000000000000000000
          Top = 1.464439999999996000
          Width = 181.488250000000000000
          Height = 8.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL DEL FRENTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 11.338582680000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          Left = 2.267716540000000000
          Width = 243.023622050000000000
          Height = 11.338582677165400000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 202.000000000000000000
          Top = 1.511811023622044000
          Width = 40.488250000000000000
          Height = 8.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsPersonal."dCantidad">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 5.000000000000000000
          Top = 1.464439999999996000
          Width = 181.488250000000000000
          Height = 8.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
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
      object GroupHeader9: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'dsEquipos."sContrato"'
        ReprintOnNewPage = True
        object Memo40: TfrxMemoView
          Left = 211.275590550000000000
          Top = 19.653543310000000000
          Width = 34.015748030000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 2.322820000000000000
          Top = 19.653543310000000000
          Width = 209.181102360000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 242.984251970000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE HERRAMIENTA Y EQUIPOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 11.897650000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        Condition = 'dsEquipos."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo61: TfrxMemoView
          Left = 2.322820000000000000
          Width = 243.023622047244000000
          Height = 11.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEquipos."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData6: TfrxMasterData
        Height = 11.677180000000000000
        Top = 109.606370000000000000
        Width = 740.409927000000000000
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo63: TfrxMemoView
          Left = 2.322820000000000000
          Width = 243.023622047244000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 211.322820000000000000
          Top = 0.779529999999994000
          Width = 29.488250000000000000
          Height = 9.826771653543310000
          ShowHint = False
          DataField = 'dCantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEquipos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 5.322820000000000000
          Top = 0.755905510000018900
          Width = 201.488250000000000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sEquipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEquipos."sEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter8: TfrxGroupFooter
        Top = 143.622140000000000000
        Width = 740.409927000000000000
      end
      object GroupFooter9: TfrxGroupFooter
        Top = 166.299320000000000000
        Width = 740.409927000000000000
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
      object GroupHeader10: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'dsSeguridad."sContrato"'
        ReprintOnNewPage = True
        object Memo117: TfrxMemoView
          Left = 211.275590550000000000
          Top = 19.653543310000000000
          Width = 34.015748030000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 2.322820000000000000
          Top = 19.653543310000000000
          Width = 209.181102360000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 242.984251970000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE EQUIPOS DE SEGURIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 11.897650000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        Condition = 'dsSeguridad."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo67: TfrxMemoView
          Left = 2.322820000000000000
          Width = 243.023622047244000000
          Height = 11.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsSeguridad."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 10.897650000000000000
        Top = 109.606370000000000000
        Width = 740.409927000000000000
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo68: TfrxMemoView
          Left = 2.322820000000000000
          Width = 243.023622047244000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 212.322820000000000000
          Top = 0.755905510000018900
          Width = 28.488250000000000000
          Height = 9.826771653543310000
          ShowHint = False
          DataField = 'dCantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsSeguridad."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 4.322820000000000000
          Top = 0.755905510000018900
          Width = 203.488250000000000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sEquipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsSeguridad."sEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter7: TfrxGroupFooter
        Top = 143.622140000000000000
        Width = 740.409927000000000000
      end
      object GroupFooter10: TfrxGroupFooter
        Top = 166.299320000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object PopSistemas: TPopupMenu
    Left = 589
    Top = 139
    object mnTiemposMuertos: TMenuItem
      Tag = 1
      Caption = 'Regenera Tiempos Muertos en las Fechas Seleccionadas'
      OnClick = mnTiemposMuertosClick
    end
    object mnRegeneraAvances: TMenuItem
      Tag = 1
      Caption = 
        'Regenera Avances Fisicos del Contrato/Ordenes de Trabajo en la F' +
        'echa Seleccionada'
      OnClick = mnRegeneraAvancesClick
    end
    object mnValidacionReportes: TMenuItem
      Tag = 1
      Caption = 
        'Genera Proceso de Validacion de Reportes Diarios (Almacenamiento' +
        ' de Avances de Paquetes)'
      OnClick = mnValidacionReportesClick
    end
  end
  object ordenesdetrabajo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sNumeroOrden, iJornada from ordenesdetrabajo where sContr' +
        'ato = :Contrato and cIdStatus = :status order by sNumeroOrden')
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
    Left = 256
    Top = 200
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
  object ReporteDiario: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = ReporteDiarioCalcFields
    SQL.Strings = (
      
        'select r.sContrato, r.sNumeroOrden, r.dIdFecha, r.sNumeroReporte' +
        ', r.sIdTurno, r.sIdConvenio, r.lStatus, '
      'r.sIdUsuario, r.sIdUsuarioValida,'
      
        'r.sIdUsuarioAutoriza, r.sTiempoMuerto, t.sDescripcion as sOrigen' +
        ', t.sOrigenTierra, r.sIdUsuarioBarco from '
      'reportediario r'
      
        'inner join turnos t on (r.sContrato = t.sContrato And r.sIdTurno' +
        ' = t.sIdTurno)'
      
        'where r.sContrato = :contrato And r.sNumeroOrden = :Orden And r.' +
        'lStatus <> '#39'Autorizado'#39
      'order by r.dIdFecha desc')
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
      end>
    Left = 37
    Top = 251
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
      end>
    object ReporteDiariosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ReporteDiariosNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object ReporteDiariodIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object ReporteDiariosNumeroReporte: TStringField
      FieldName = 'sNumeroReporte'
      Required = True
      Size = 35
    end
    object ReporteDiariosIdTurno: TStringField
      FieldName = 'sIdTurno'
      Required = True
      Size = 2
    end
    object ReporteDiariosIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object ReporteDiariolStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 10
    end
    object ReporteDiariosIdUsuario: TStringField
      FieldName = 'sIdUsuario'
      Required = True
      Size = 10
    end
    object ReporteDiariosIdUsuarioValida: TStringField
      FieldName = 'sIdUsuarioValida'
      Required = True
      Size = 10
    end
    object ReporteDiariosIdUsuarioAutoriza: TStringField
      FieldName = 'sIdUsuarioAutoriza'
      Required = True
      Size = 10
    end
    object ReporteDiariosTiempoMuerto: TStringField
      FieldName = 'sTiempoMuerto'
      Required = True
      Size = 5
    end
    object ReporteDiariosOrigen: TStringField
      FieldName = 'sOrigen'
      Required = True
      Size = 30
    end
    object ReporteDiariosOrigenTierra: TStringField
      FieldName = 'sOrigenTierra'
      Required = True
      Size = 2
    end
    object ReporteDiariosDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 35
      Calculated = True
    end
    object ReporteDiariosIdUsuarioBarco: TStringField
      FieldName = 'sIdUsuarioBarco'
    end
  end
  object Estimaciones: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from estimaciones where sContrato = :contrato'
      'and lStatus <> "Autorizado" Order By iConsecutivo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 101
    Top = 179
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
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
    object EstimacionessNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object EstimacionessNumeroGenerador: TStringField
      FieldName = 'sNumeroGenerador'
      Required = True
      Size = 10
    end
    object EstimacionesiSemana: TIntegerField
      FieldName = 'iSemana'
      Required = True
    end
    object EstimacionesiConsecutivo: TIntegerField
      FieldName = 'iConsecutivo'
      Required = True
    end
    object EstimacionesdFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object EstimacionesdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object EstimacionesdBitacoraInicio: TDateField
      FieldName = 'dBitacoraInicio'
      Required = True
    end
    object EstimacionesdBitacoraFinal: TDateField
      FieldName = 'dBitacoraFinal'
      Required = True
    end
    object EstimacionessFaseObra: TStringField
      FieldName = 'sFaseObra'
      Required = True
      Size = 50
    end
    object EstimacionesmComentarios: TMemoField
      FieldName = 'mComentarios'
      Required = True
      BlobType = ftMemo
    end
    object EstimacioneslStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 10
    end
    object EstimacionesdMontoMN: TFloatField
      FieldName = 'dMontoMN'
      Required = True
      currency = True
    end
    object EstimacionesdMontoDLL: TFloatField
      FieldName = 'dMontoDLL'
      Required = True
      currency = True
    end
    object EstimacionesdFinancieroGenerador: TFloatField
      FieldName = 'dFinancieroGenerador'
      Required = True
    end
    object EstimacionessIdUsuario: TStringField
      FieldName = 'sIdUsuario'
      Required = True
      Size = 10
    end
    object EstimacionessIdUsuarioValida: TStringField
      FieldName = 'sIdUsuarioValida'
      Required = True
      Size = 10
    end
    object EstimacionessIdUsuarioAutoriza: TStringField
      FieldName = 'sIdUsuarioAutoriza'
      Required = True
      Size = 10
    end
    object EstimacionessIdUsuarioResidente: TStringField
      FieldName = 'sIdUsuarioResidente'
      Required = True
      Size = 10
    end
  end
  object dsEstimacionPeriodo: TDataSource
    AutoEdit = False
    DataSet = EstimacionPeriodo
    Left = 483
    Top = 205
  end
  object EstimacionPeriodo: TZReadOnlyQuery
    Connection = connection.zConnection
    OnCalcFields = EstimacionPeriodoCalcFields
    SQL.Strings = (
      
        'Select iNumeroEstimacion, sIdTipoEstimacion, lEstimado, dFechaIn' +
        'icio, dFechaFinal, '
      
        'dMontoMN, dRetencionMN, sIdUsuarioAutoriza From estimacionperiod' +
        'o Where sContrato = :Contrato And lEstimado = "No" Order By iNum' +
        'eroEstimacion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 437
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object EstimacionPeriodoiNumeroEstimacion: TStringField
      FieldName = 'iNumeroEstimacion'
      Required = True
      Size = 10
    end
    object EstimacionPeriodosIdTipoEstimacion: TStringField
      FieldName = 'sIdTipoEstimacion'
      Required = True
      Size = 2
    end
    object EstimacionPeriodolEstimado: TStringField
      FieldName = 'lEstimado'
      Required = True
      Size = 2
    end
    object EstimacionPeriododFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object EstimacionPeriododFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object EstimacionPeriododMontoMN: TFloatField
      FieldName = 'dMontoMN'
      Required = True
      currency = True
    end
    object EstimacionPeriododRetencionMN: TFloatField
      FieldName = 'dRetencionMN'
      Required = True
      currency = True
    end
    object EstimacionPeriodosDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 30
      Calculated = True
    end
    object EstimacionPeriodosIdUsuarioAutoriza: TStringField
      FieldName = 'sIdUsuarioAutoriza'
      Required = True
      Size = 10
    end
  end
  object Requisicion: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * from anexo_requisicion  '
      'where sContrato =:Contrato'
      'and sStatus <> '#39'AUTORIZADO'#39
      'order by dIdFecha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 253
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object ds_requisicion: TDataSource
    AutoEdit = False
    DataSet = Requisicion
    Left = 288
    Top = 248
  end
  object OrdenCompra: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * from anexo_pedidos'
      'where sContrato =:Contrato'
      'and sStatus <> '#39'AUTORIZADO'#39
      'order by dFechaEntrega')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 341
    Top = 267
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object ds_OrdenCompra: TDataSource
    AutoEdit = False
    DataSet = OrdenCompra
    Left = 373
    Top = 256
  end
  object zq_recepciondemateriales: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT * FROM alm_recepciondemateriales WHERE sContrato = :Contr' +
        'ato AND sStatus <> '#39'Autorizado'#39';')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 485
    Top = 123
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    object zq_recepciondematerialesiId: TIntegerField
      FieldName = 'iId'
    end
    object zq_recepciondematerialessContrato: TStringField
      FieldName = 'sContrato'
      Size = 50
    end
    object zq_recepciondematerialessFolio: TStringField
      FieldName = 'sFolio'
      Size = 50
    end
    object zq_recepciondematerialessTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Size = 100
    end
    object zq_recepciondematerialesdFechaRecepcion: TDateField
      FieldName = 'dFechaRecepcion'
    end
    object zq_recepciondematerialessIdAlmacen: TStringField
      FieldName = 'sIdAlmacen'
      Size = 100
    end
    object zq_recepciondematerialesmNotas: TMemoField
      FieldName = 'mNotas'
      BlobType = ftMemo
    end
    object zq_recepciondematerialessStatus: TStringField
      FieldName = 'sStatus'
      Size = 50
    end
    object zq_recepciondematerialesQuienValida: TStringField
      FieldName = 'QuienValida'
      Size = 50
    end
  end
  object ds_recepciondemateriales: TDataSource
    AutoEdit = False
    DataSet = zq_recepciondemateriales
    Left = 520
    Top = 123
  end
  object zq_recepciondemateriales_detalles: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT armd.*,arm.sidalmacen FROM alm_recepciondemateriales_deta' +
        'lle armd '
      'inner join  alm_recepciondemateriales arm'
      'on(armd.iId_recepcion=arm.iId)'
      'WHERE armd.iId_recepcion = :IdRecepcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdRecepcion'
        ParamType = ptUnknown
      end>
    Left = 485
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdRecepcion'
        ParamType = ptUnknown
      end>
  end
  object QrySalida: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select s.*, m.sDescripcion from almacen_salida s'
      'inner join movimientosdealmacen  m on (s.sIdTipo = m.sIdTipo) '
      'where s.sContrato =:Contrato'
      'and s.sEstatus <> '#39'AUTORIZADO'#39
      'order by s.dFechaSalida')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 637
    Top = 195
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object ds_salida: TDataSource
    AutoEdit = False
    DataSet = QrySalida
    Left = 672
    Top = 184
  end
  object FrmScaler1: TFormAutoScaler
    Left = 536
    Top = 176
    DesignDPI = 96
    DesignHeight = 355
    DesignWidth = 972
    DesignTextHeight = 14
  end
end
