object frm_Notificaciones: Tfrm_Notificaciones
  Left = 0
  Top = 0
  Caption = 'Notificaciones'
  ClientHeight = 550
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grid_Notificaciones: TcxGrid
    Left = 73
    Top = 0
    Width = 854
    Height = 320
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupPrincipal
    TabOrder = 0
    ExplicitLeft = 288
    ExplicitWidth = 639
    object Grid_NotificacionesDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_Notificaciones
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object Grid_NotificacionesDBTableView1Column2: TcxGridDBColumn
        Caption = 'Fecha de Alerta'
        DataBinding.FieldName = 'dFecha'
        Options.Editing = False
        Width = 93
      end
      object ColFechaE: TcxGridDBColumn
        Caption = 'Fecha de Evento'
        DataBinding.FieldName = 'dFechaEvento'
        Options.Editing = False
        Width = 98
      end
      object ColFechaI: TcxGridDBColumn
        Caption = 'Fecha Inicio'
        DataBinding.FieldName = 'dFechaInicio'
        Width = 73
      end
      object ColFechaF: TcxGridDBColumn
        Caption = 'Fecha Final'
        DataBinding.FieldName = 'dFechaFinal'
        Width = 71
      end
      object ColTitulo: TcxGridDBColumn
        Caption = 'Titulo'
        Width = 179
      end
      object ColConcepto: TcxGridDBColumn
        Caption = 'Concepto'
        DataBinding.FieldName = 'sConcepto'
        Options.Editing = False
        Width = 169
      end
      object Grid_NotificacionesDBTableView1Column4: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'sDescripcion'
        Options.Editing = False
        Width = 273
      end
      object ColReceptor: TcxGridDBColumn
        Caption = 'Receptor'
        DataBinding.FieldName = 'sIdUsuarioR'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'sIdUsuario'
        Properties.ListColumns = <
          item
            FieldName = 'sNombre'
          end>
        Properties.ListSource = ds_Usuarios
        Options.Editing = False
        Width = 167
      end
      object Grid_NotificacionesDBTableView1Column7: TcxGridDBColumn
        Caption = 'Estatus'
        DataBinding.FieldName = 'sStatus'
        Options.Editing = False
        Width = 84
      end
    end
    object Grid_NotificacionesLevel1: TcxGridLevel
      GridView = Grid_NotificacionesDBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 320
    Align = alBottom
    Caption = 'Elegir Tipo de Notificacion'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Arial'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Height = 230
    Width = 927
    object cxPageControl1: TcxPageControl
      Left = 3
      Top = 42
      Width = 921
      Height = 178
      Align = alBottom
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 176
      ClientRectLeft = 2
      ClientRectRight = 919
      ClientRectTop = 30
      object cxTabSheet1: TcxTabSheet
        Caption = 'Eventos'
        ImageIndex = 0
        object cxLabel9: TcxLabel
          Left = 8
          Top = 15
          Caption = 'Titulo'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 8
          Top = 41
          Caption = 'Fecha de Alerta'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 68
          Caption = 'Fecha de Evento'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edtFechaE: TcxDBDateEdit
          Left = 104
          Top = 67
          DataBinding.DataField = 'dFechaEvento'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          OnEnter = edtFechaEEnter
          OnExit = edtFechaEExit
          OnKeyPress = edtFechaEKeyPress
          Width = 121
        end
        object edtFechaA: TcxDBDateEdit
          Left = 104
          Top = 40
          DataBinding.DataField = 'dFecha'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnEnter = edtFechaAVEnter
          OnExit = edtFechaAVExit
          OnKeyPress = edtFechaAVKeyPress
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 331
          Top = 14
          Caption = 'Descripci'#243'n'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edtDesc: TcxDBMemo
          Left = 402
          Top = 14
          DataBinding.DataField = 'sDescripcion'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          OnEnter = edtDescEnter
          OnExit = edtDescExit
          OnKeyPress = edtDescKeyPress
          Height = 75
          Width = 224
        end
        object lkpReceptor: TcxDBLookupComboBox
          Left = 711
          Top = 14
          DataBinding.DataField = 'sIdUsuarioR'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.KeyFieldNames = 'sIdUsuario'
          Properties.ListColumns = <
            item
              FieldName = 'sNombre'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_Usuarios
          Properties.ReadOnly = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          OnEnter = lkpReceptorEnter
          OnExit = lkpReceptorExit
          OnKeyPress = lkpReceptorKeyPress
          Width = 193
        end
        object cxLabel5: TcxLabel
          Left = 654
          Top = 15
          Caption = 'Receptor'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 654
          Top = 42
          Caption = 'Repetir'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edtRepetir: TcxDBComboBox
          Left = 711
          Top = 41
          DataBinding.DataField = 'sRepetir'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.Items.Strings = (
            'Todos los d'#237'as'
            'Todas las semanas'
            'Todos los meses')
          Properties.ReadOnly = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          OnEnter = edtRepetirEnter
          OnExit = edtRepetirExit
          OnKeyPress = edtRepetirKeyPress
          Width = 193
        end
        object cxLabel7: TcxLabel
          Left = 654
          Top = 69
          Caption = 'Estatus'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cbStatus: TcxDBComboBox
          Left = 711
          Top = 68
          DataBinding.DataField = 'sStatus'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.Items.Strings = (
            'Cerrado'
            'Abierto')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          OnEnter = cbStatusEnter
          OnExit = cbStatusExit
          OnKeyPress = cbStatusKeyPress
          Width = 193
        end
        object edtTitulo: TcxDBTextEdit
          Left = 104
          Top = 13
          DataBinding.DataField = 'sTitulo'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 13
          OnEnter = edtTituloEnter
          OnExit = edtTituloExit
          OnKeyPress = edtTituloKeyPress
          Width = 193
        end
        object edtTiempo: TcxDBTimeEdit
          Left = 711
          Top = 95
          DataBinding.DataField = 'tTiempo'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.TimeFormat = tfHourMin
          TabOrder = 14
          Width = 95
        end
        object cxLabel23: TcxLabel
          Left = 654
          Top = 96
          Caption = 'Tiempo'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel24: TcxLabel
          Left = 812
          Top = 96
          Caption = '(Horas:Minutos)'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Vigencias'
        ImageIndex = 1
        object cxLabel1: TcxLabel
          Left = 8
          Top = 15
          Caption = 'Modulo'
          ParentFont = False
          Transparent = True
        end
        object cxLabel10: TcxLabel
          Left = 8
          Top = 42
          Caption = 'Concepto'
          ParentFont = False
          Transparent = True
        end
        object cxLabel11: TcxLabel
          Left = 8
          Top = 68
          Caption = 'Fecha de Alerta'
          ParentFont = False
          Transparent = True
        end
        object edtFechaAV: TcxDBDateEdit
          Left = 99
          Top = 67
          DataBinding.DataField = 'dFecha'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          TabOrder = 3
          OnEnter = edtFechaAVEnter
          OnExit = edtFechaAVExit
          OnKeyPress = edtFechaAVKeyPress
          Width = 121
        end
        object cbConceptoV: TcxDBComboBox
          Left = 99
          Top = 41
          DataBinding.DataField = 'sConcepto'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          TabOrder = 4
          OnEnter = cbConceptoVEnter
          OnExit = cbConceptoVExit
          OnKeyPress = cbConceptoVKeyPress
          Width = 193
        end
        object lkpModuloV: TcxComboBox
          Left = 99
          Top = 14
          ParentFont = False
          Properties.Items.Strings = (
            'Almac'#233'n'
            'Control Administrativo'
            'Control de obra'
            'Nomina'
            'Precios Unitarios'
            'Recursos Humanos'
            'Ventas')
          Properties.OnChange = lkpModuloVPropertiesChange
          TabOrder = 5
          OnEnter = lkpModuloVEnter
          OnExit = lkpModuloVExit
          OnKeyPress = lkpModuloVKeyPress
          Width = 193
        end
        object edtDescV: TcxDBMemo
          Left = 397
          Top = 14
          DataBinding.DataField = 'sDescripcion'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          TabOrder = 6
          OnEnter = edtDescVEnter
          OnExit = edtDescVExit
          OnKeyPress = edtDescVKeyPress
          Height = 95
          Width = 224
        end
        object cxLabel13: TcxLabel
          Left = 333
          Top = 15
          Caption = 'Descripci'#243'n'
          ParentFont = False
          Transparent = True
        end
        object cxLabel15: TcxLabel
          Left = 651
          Top = 15
          Caption = 'Repetir'
          ParentFont = False
          Transparent = True
        end
        object cxLabel16: TcxLabel
          Left = 651
          Top = 42
          Caption = 'Estatus'
          ParentFont = False
          Transparent = True
        end
        object cbStatusV: TcxDBComboBox
          Left = 709
          Top = 41
          DataBinding.DataField = 'sStatus'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.Items.Strings = (
            'Cerrado'
            'Abierto')
          TabOrder = 10
          OnEnter = cbStatusVEnter
          OnExit = cbStatusVExit
          OnKeyPress = cbStatusVKeyPress
          Width = 193
        end
        object edtRepetirV: TcxDBComboBox
          Left = 709
          Top = 14
          DataBinding.DataField = 'sRepetir'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.Items.Strings = (
            'Todos los d'#237'as'
            'Todas las semanas'
            'Todos los meses')
          Properties.ReadOnly = False
          TabOrder = 11
          OnEnter = edtRepetirVEnter
          OnExit = edtRepetirVExit
          OnKeyPress = edtRepetirVKeyPress
          Width = 193
        end
        object cxLabel12: TcxLabel
          Left = 651
          Top = 68
          Caption = 'A partir de'
          ParentFont = False
          Transparent = True
        end
        object edtFechaIV: TcxDBDateEdit
          Left = 709
          Top = 67
          DataBinding.DataField = 'dFechaInicio'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          TabOrder = 13
          OnEnter = edtFechaIVEnter
          OnExit = edtFechaIVExit
          OnKeyPress = edtFechaIVKeyPress
          Width = 85
        end
        object cxLabel14: TcxLabel
          Left = 654
          Top = 96
          Caption = 'Tiempo'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edtTiempoV: TcxDBTimeEdit
          Left = 711
          Top = 95
          DataBinding.DataField = 'tTiempo'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.TimeFormat = tfHourMin
          TabOrder = 15
          OnEnter = edtTiempoVEnter
          OnExit = edtTiempoVExit
          Width = 95
        end
        object cxLabel17: TcxLabel
          Left = 812
          Top = 96
          Caption = '(Horas:Minutos)'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Criterios'
        ImageIndex = 2
        object cxLabel8: TcxLabel
          Left = 8
          Top = 15
          Caption = 'Modulo'
          ParentFont = False
          Transparent = True
        end
        object cxLabel18: TcxLabel
          Left = 8
          Top = 42
          Caption = 'Concepto'
          ParentFont = False
          Transparent = True
        end
        object cxLabel19: TcxLabel
          Left = 8
          Top = 68
          Caption = 'Fecha de Alerta'
          ParentFont = False
          Transparent = True
        end
        object edtFechaAC: TcxDBDateEdit
          Left = 94
          Top = 68
          DataBinding.DataField = 'dFecha'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          TabOrder = 3
          OnEnter = edtFechaACEnter
          OnExit = edtFechaACExit
          OnKeyPress = edtFechaACKeyPress
          Width = 121
        end
        object cbConceptoC: TcxDBComboBox
          Left = 94
          Top = 41
          DataBinding.DataField = 'sConcepto'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          TabOrder = 4
          OnEnter = cbConceptoCEnter
          OnExit = cbConceptoCExit
          OnKeyPress = cbConceptoCKeyPress
          Width = 193
        end
        object lkpModuloC: TcxComboBox
          Left = 94
          Top = 14
          ParentFont = False
          Properties.Items.Strings = (
            'Almacen'
            'Control Administrativo'
            'Control de obra'
            'Nomina'
            'Precios Unitarios'
            'Recursos Humanos'
            'Ventas')
          Properties.OnChange = lkpModuloCPropertiesChange
          TabOrder = 5
          OnEnter = lkpModuloCEnter
          OnExit = lkpModuloCExit
          OnKeyPress = lkpModuloCKeyPress
          Width = 193
        end
        object cxLabel20: TcxLabel
          Left = 337
          Top = 14
          Caption = 'Descripci'#243'n'
          ParentFont = False
          Transparent = True
        end
        object edtDescC: TcxDBMemo
          Left = 401
          Top = 14
          DataBinding.DataField = 'sDescripcion'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          TabOrder = 7
          OnEnter = edtDescCEnter
          OnExit = edtDescCExit
          OnKeyPress = edtDescCKeyPress
          Height = 75
          Width = 224
        end
        object cxLabel21: TcxLabel
          Left = 654
          Top = 15
          Caption = 'Repetir'
          ParentFont = False
          Transparent = True
        end
        object cxLabel22: TcxLabel
          Left = 654
          Top = 42
          Caption = 'Estatus'
          ParentFont = False
          Transparent = True
        end
        object cbStatusC: TcxDBComboBox
          Left = 709
          Top = 41
          DataBinding.DataField = 'sStatus'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.Items.Strings = (
            'Cerrado'
            'Abierto')
          TabOrder = 10
          OnEnter = cbStatusCEnter
          OnExit = cbStatusCExit
          OnKeyPress = cbStatusCKeyPress
          Width = 193
        end
        object edtRepetirC: TcxDBComboBox
          Left = 709
          Top = 14
          DataBinding.DataField = 'sRepetir'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.Items.Strings = (
            'Todos los d'#237'as'
            'Todas las semanas'
            'Todos los meses')
          Properties.ReadOnly = False
          TabOrder = 11
          OnEnter = edtRepetirCEnter
          OnExit = edtRepetirCExit
          OnKeyPress = edtRepetirCKeyPress
          Width = 193
        end
        object cxLabel25: TcxLabel
          Left = 654
          Top = 68
          Caption = 'Tiempo'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edtTiempoC: TcxDBTimeEdit
          Left = 711
          Top = 67
          DataBinding.DataField = 'tTiempo'
          DataBinding.DataSource = ds_Notificaciones
          ParentFont = False
          Properties.TimeFormat = tfHourMin
          TabOrder = 13
          Width = 95
        end
        object cxLabel26: TcxLabel
          Left = 812
          Top = 68
          Caption = '(Horas:Minutos)'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
    end
    object rbEventos: TcxRadioButton
      Left = 13
      Top = 19
      Width = 68
      Height = 17
      Caption = 'Eventos'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbEventosClick
    end
    object rbVigencias: TcxRadioButton
      Left = 89
      Top = 19
      Width = 79
      Height = 17
      Caption = 'Vigencias'
      TabOrder = 2
      OnClick = rbVigenciasClick
    end
    object rbRegistros: TcxRadioButton
      Left = 176
      Top = 19
      Width = 75
      Height = 17
      Caption = 'Criterios'
      TabOrder = 3
      OnClick = rbRegistrosClick
    end
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 73
    Height = 320
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alLeft
    TabOrder = 6
    ExplicitLeft = 432
    ExplicitTop = 280
    inherited AdvPanel1: TAdvPanel
      Height = 320
      ExplicitHeight = 195
      FullHeight = 0
      inherited btnEdit: TcxButton
        OnClick = dxEditarClick
      end
      inherited btnPost: TcxButton
        OnClick = dxGuardarClick
      end
      inherited btnCancel: TcxButton
        OnClick = dxCancelarClick
      end
      inherited btnDelete: TcxButton
        OnClick = dxEliminarClick
      end
      inherited btnRefresh: TcxButton
        OnClick = dxRefrescarClick
      end
      inherited btnExit: TcxButton
        OnClick = dxSalirClick
      end
      inherited btnAdd: TcxButton
        OnClick = dxInsertarClick
      end
    end
    inherited IconosBarra: TcxImageList
      FormatVersion = 1
    end
    inherited dxbrmngrPrincipal: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        0)
    end
    inherited ImgBtns: TImageList
      Bitmap = {
        494C010108000900380010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
        0000000000003600000028000000400000003000000001002000000000000030
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
        00000000000000000000000000000000000000000000000000008F8F8F001C1C
        1C00262626002626260026262600262626002626260026262600262626002626
        26001C1C1C009F9F9F0000000000000000000000000000000000000000000000
        000000000000F4F7FB00A0B6D900000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EFF0FC00303E
        D600CFD2F500000000000000000000000000000000000000000000000000CFCF
        F4003030CE00EFEFFB00000000000000000000000000303030001C1C1C005757
        5700000000000000000000000000F9F9F900F2F2F200E5E5E500DFDFDF00D8D8
        D800555555001C1C1C0030303000000000000000000000000000000000000000
        000000000000F4F4F6002F69BC001B7DF000165EC000D5DCEB00000000000000
        00000000000000000000000000000000000053575500B3B9B700BAC0BE00BDC3
        C100BEC4C200BFC5C300BFC5C300BFC5C300BFC5C300BFC5C300BDC2C0000000
        00000000000000000000000000000000000000000000EFF0FC003042D600144B
        EC00101ECD00CFD2F50000000000000000000000000000000000CFD0F4001010
        C7000000E9003030CE00EFEFFB0000000000BFBFBF0094949400B7B7B700CACA
        CA00F6F6F600F6F6F600F6F6F600F5F5F500EFEFEF00E3E3E300DDDDDD00D6D6
        D600CACACA00AAAAAA0094949400BFBFBF000000000000000000000000000000
        000085A0CF00306DC100166BD200228AFF00238CFF001761C500648AC500E2E8
        F4000000000000000000000000000000000053575500AEAEAE00B0B1B100AFB5
        B300CACFCE00D1D5D400D3D7D500D3D7D600D3D7D600D3D7D600CFD4D2000000
        000000000000000000000000000000000000000000003045DA001C59ED003371
        FE001246EB00101ECD00CFD2F5000000000000000000CFD0F4001013C8000000
        E9000000FE000000E9003030CE000000000050505000B8B8B8008A8A8A000000
        00008E8E8E0096969600969696009696960095959500909090008D8D8D008A8A
        8A000000000082828200B8B8B80060606000000000000000000000000000CDD6
        E9001A7DEB00228FFF00248FFF00278FFF001E8DFF0078BAFF00245DB200CFD7
        EB000000000000000000000000000000000053575500ABABAB00ABABAB00ABAB
        AB00999A9900AFB1B100DADDDC00E4E6E600E5E8E700E5E8E700E0E2E2000000
        00000000000000000000000000000000000000000000CFD5F700102BD4001E5E
        EE003371FE002B68FE001246EB00CFD2F500CFD1F500031CEA000219FE00000A
        FE000000E9001010C700CFCFF4000000000020202000CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC00CCCCCC002020200000000000F4F5F900346DBD00218E
        FD0061B1FF00549DEF002668C000B4E2FF0096C7F700D6DAEC00000000000000
        00000000000000000000000000000000000053575500ABABAB00AAAAAA00A4A4
        A4009C9C9C009B9B9B0096969600C5C6C600F1F2F200F2F3F200DFE0DF00E7E7
        E7000A0AA900E8E8E800F7F7F700000000000000000000000000CFD5F700102B
        D4003B7AFE003371FE002B68FE00101ECD00101DCC000B34FE000628FE000219
        FE001013C800CFD0F40000000000000000001F1F1F00D6D6D600D6D6D600D6D6
        D600D9D9D900DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DBDBDB00D9D9
        D900D6D6D600D6D6D600D6D6D6001F1F1F00000000008AA4D000197CE800369E
        FF00337ED7006488C400B9BEDC0094C7F800396EBA000000000000000000F4F7
        FB00D3DAEA00D1DAEA00EBEFF7000000000053575500ABABAB00AAAAAA00A1A1
        A100989898009090900096969600C5C5C500F7F7F700E7E7E700D0D1D1000A0A
        A8003535D300CCCCCC00DDDDDD00EFEFEF00000000000000000000000000CFD5
        F7001E5EEE003B7AFE003371FE00144AEE001042EE00103FFE000B34FE00031C
        EA00CFD0F4000000000000000000000000001D1D1D00E5E5E500E9E9E900ECEC
        EC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
        ED00EDEDED00E9E9E900E5E5E5001D1D1D00000000002F6CBF002898FF0064B9
        FF006F8DC60000000000FBFBFC003B71BC00E9EBF4000000000000000000B5C5
        E1001565D1000D5BCD006188C6000000000053575500ABABAB00A8A8A8009F9F
        9F00959595008A8A8A0091919100EFF0F000FCFCFC00EBEBEB000909A8003030
        D6003A3AD8004242D9004646DA000303A5000000000000000000000000000000
        0000CFD5F700102BD4002464F1003371FE002B68FE001042EE00101DCC00CFD1
        F5000000000000000000000000000000000050505000D5EDD50032A13200B5D2
        B500FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
        FC00FCFCFC00FCFCFC00FCFCFC005050500000000000177BE7004FB7FF0078BB
        F60000000000000000000000000000000000000000000000000000000000D4DA
        EA00258FFF001D7EFF004477C4000000000053575500ABABAB00A5A5A5009C9C
        9C0093939300BFBFBF0085858500EEEFEF00FCFCFC000C0CAB002D2DD5000000
        CC000000CC000000CC000000CC000303A6000000000000000000000000000000
        0000CFD5F700102ED600296BF1003B7AFE003371FE00144AEE00101ECD00CFD2
        F500000000000000000000000000000000009F9F9F00E5ECE500D7EBD700EDF4
        ED00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000F5F5F5009F9F9F00000000001882EF0055C0FF007FB8
        ED0000000000000000000000000000000000000000000000000000000000AEBE
        DC00238BFF001A7AFC005782C5000000000053575500ABABAB00A3A3A3009A9A
        9A009191910094949400A9A9A900EEEFEF00E5E5F4004040CB003737D7003A3A
        D8004040D9003939D7003D3DD8000303A600000000000000000000000000CFD8
        F800347CF00065A0FE005E9AFE00296BF1002464F1003371FE002B68FE001246
        EB00CFD2F50000000000000000000000000000000000BFBFBF00505050003F3F
        3F00000000000000000000000000F9F9F900F1F1F100E3E3E300DBDBDB00D4D4
        D4003838380050505000BFBFBF000000000000000000376FBA005184C5003E75
        BE00000000000000000000000000497EC000177BD20000000000869FCD001B7E
        DA003F93FF001D61C500D3DAEA000000000053575500AAAAAA00A0A0A0009797
        97008E8E8E0076767600BBBBBB00EEEEEE00FCFCFC00E6E7F5005151CD005656
        DE005858DD005B5BDE005555DD000303A6000000000000000000CFD9F900103E
        E00077ADFE006FA7FE0065A0FE00102ED600102BD4003B7AFE003371FE002B68
        FE00101ECD00CFD2F50000000000000000000000000000000000EFEFEF001919
        1900636363007B7B7B0078787800727272006F6F6F0068686800656565004949
        490019191900EFEFEF00000000000000000000000000F8F8FA00F7F7F900F7F7
        FA000000000000000000E8E9F40030B0F4002EACF200618EC9001D83DB002497
        FF005197F6005A83C300000000000000000053575500A8A8A8009E9E9E009595
        95008C8C8C00AAAAAA008E8E8E00EDEEEE00FCFCFC00FCFCFC00E6E7F3005959
        CF00A5A5EC000E0EAB000E0EAB002929B40000000000CFDAFA001044E400448F
        F3007FB3FE0077ADFE00347CF000CFD5F700CFD5F7001E5EEE003B7AFE003371
        FE001246EB00101ECD00CFD2F500000000000000000000000000000000009F9F
        9F00C5C5C500FAFAFA00F4F4F400E8E8E800E2E2E200D5D5D500CFCFCF007979
        79009F9F9F000000000000000000000000000000000000000000000000000000
        000000000000DFE2F0003473BC003BC7FF0033B3F80029A4FB00279CFF004C9F
        FF003068BD00DEE2EF00000000000000000053575500A6A6A6009B9B9B009292
        9200898989007F7F7F0083838300EDEEEE00FCFCFC00FCFCFC00F8F9F900F1F1
        FA005858CC00000000000000000000000000000000003066EC004F9CF600A1CB
        FE00448FF300103EE000CFD8F8000000000000000000CFD5F700102BD4001E5E
        EE003371FE00144BEC00303ED600000000000000000000000000000000000000
        0000BCBCBC000000000000000000F4F4F400EEEEEE00E2E2E200DBDBDB007272
        7200000000000000000000000000000000000000000000000000000000000000
        00002A61B10031B3F40046DBFF0034C2FF005FC8FF008ECBFE00659DE3004374
        BD000000000000000000000000000000000053575500A3A3A300979797008989
        890080808000767676007B7B7B00EBECEC00FCFCFC00FCFCFC00F8F9F9000000
        0000F5F5FB0000000000000000000000000000000000EFF3FE003066EC004F9C
        F6001044E400CFD9F90000000000000000000000000000000000CFD5F700102B
        D4001C59ED003042D600EFF0FC00000000000000000000000000000000000000
        0000B7B7B7000000000000000000FAFAFA00F4F4F400E8E8E800E2E2E2006F6F
        6F00000000000000000000000000000000000000000000000000000000000000
        0000C0CFE7005283C300247DC70065D7FF0090E0FF004C79BD009EB0D700F6F6
        F90000000000000000000000000000000000535755009A9A9A008A8A8A007E7E
        7E00747474006C6C6C0072727200E8E9E900FBFCFC00FCFCFC00F8F8F8000000
        0000000000000000000000000000000000000000000000000000EFF3FE003066
        EC00CFDAFA00000000000000000000000000000000000000000000000000CFD5
        F7003045DA00EFF0FC0000000000000000000000000000000000000000000000
        0000B2B2B200000000000000000000000000FAFAFA00EEEEEE00E8E8E8006C6C
        6C00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C8CFE600367DC3008FCEF900C8CCE500000000000000
        0000000000000000000000000000000000005357550090909000818181007676
        76006B6B6B006363630067676700E1E3E300F7F8F800F8F9F900F5F6F6000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000181818001818180018181800181818001818180018181800181818001212
        1200000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000F3F6FA00000000000000
        000000000000000000000000000000000000A8AAA90053575500535755005357
        55005357550053575500565A5800676A680074777600757977006D706E000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000084777300847773008477
        7300847773008477730084777300847773008477730084777300847773008477
        7300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000ECEAEAFFE2DDDCFFE3DFDFFF00000000000000000000
        000000000000000000000000000000000000DED3CF00FAF7F500FAF7F500FAF7
        F500EDE9E700ECE7E500ECE7E500E8E0DE00F1EAE800F1E9E700F0E8E600EEE6
        E300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000534B4AFF262626FF1D1D1DFFE4E0DFFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F7005E70A800E2DDDB00E1DBD900E0D8D600E0D8D600EAE2E000F1E9E700F0E7
        E500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFF5EF00005A
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000BAD0E200DAE9F60000000000000000000000000000000000000000000000
        000000000000000000007F7978FF565656FF303030FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F700818BA2006680C000E1DBD900E0D8D600E0D8D600DCD3D100DED5D300E6DD
        DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000009FC19F00006C
        0000609860000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EAF0F400186D
        B4002399F7002194F400B5D3ED00000000000000000000000000000000000000
        00000000000000000000595453FF383838FF404040FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F700C9E7FE00A5E1FE0088C9F800E0D8D600E0D8D600DCD3D100DBD2D000DAD0
        CF00E8E6E600E8E6E600EDECEC00FFFFFF0000000000000000001065100000BA
        000000C0000000760000307A3000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000E6ECF200356B99001052
        8B00218EE5002297F70053A1E100000000000000000000000000000000000000
        00000000000000000000837E7CFF676767FF3E3E3EFFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F70076E2FE0059D4FE0060CBFE00AFB0CD00E0D9D700DBD2D000DAD1CF00D8CF
        CD00E8E6E600E8E6E600E8E6E600EAE9E90000000000AFCDAF000075000000D1
        000000D1000000D10000008A0000EFF5EF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B2C6D700104C
        800012558E00259BF800249AF800000000000000000000000000FCFCFCFFFCFB
        FBFFFCFBFBFFFCFBFBFF747171FF606060FF565656FFD1CBCAFFFAFAFAFFFAFA
        FAFFFAFAFAFFFDFDFDFF0000000000000000DED3CF00FAF8F600FAF8F600FAF8
        F60061EFFE0050D1FE004DCBFE00688BD200F4EDEB00E0D8D600DAD0CF00DAD0
        CF00E8E6E600E8E6E600E8E6E600E8E6E6000000000070AA700000A0000000DA
        000000DA000000DA000000DA000010711000CFE3CF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FBFCFD00104C
        8000104D8300279DF800269BF8000000000000000000CAB5B2FF242424FF1B1B
        1BFF202020FF1F1F1FFF555555FF626262FF686868FF201F1FFF1F1F1FFF2020
        20FF262626FF3B3635FFFBFBFBFF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF0038C0F90040E7FE0036C4FE0044A4FE005C77C200EDE4E100EDE4E100EBE2
        DF00F5F4F400EAE9E900E8E6E600FAFAFA0000000000007B000000EC000000EC
        000000D6000000E5000000EC000000EC000000BF00009FCB9F00000000000000
        000000000000000000000000000000000000000000003869930014578D003CB3
        FA003AB1F90035A1E700429FDE0000000000000000000000000000000000104C
        8000115289002AA0F800299FF8000000000000000000C2B3B0FF7F7F7FFF6B6B
        6BFF676767FF797979FF646464FF666666FF696969FF6F6F6FFF7F7F7FFF7979
        79FF7F7F7FFF525252FFF5F4F4FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF009FD2F9002EE2FD002ECFFE0035A4FE002971DC00ECE3E000EBE2DF00E9DF
        DC00FFFFFF00FFFFFF00F8F7F700FFFFFF000000000000A8000000F6000000F6
        0000108210000081000000B7000000F6000000F60000008200009FCD9F000000
        000000000000000000000000000000000000000000000F4A7C00155A91003DB4
        FA003CB3FA0039ADF5007FB5DD0000000000000000000000000000000000104C
        8000196AAA002CA2F8002BA1F8000000000000000000EBD9D6FFD2D2D2FFD2D2
        D2FFCACACAFFC4C4C4FFACACACFF9E9E9EFFB1B1B1FFCCCCCCFFC5C5C5FFC7C7
        C7FFD3D3D3FFC1C0C0FFFAF9F9FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF007FC5F70019E7FE0017B4FE002392FE00E3D9D500E3D7D400E2D6
        D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8EF002AF72A0017D31700108F
        100000000000000000000000000060B46000028E020027F827002AF72A000B9D
        0B0000000000000000000000000000000000000000000F4A7C001860960040B7
        FA003FB6FA003DB4FA0045A7E4000000000000000000000000008AA8C2002689
        D00031A8F9002FA5F900399AE3000000000000000000FCFBFBFFEAE8E7FFEAE8
        E8FFEAE8E8FFEAE8E8FFC2BDBCFFB0B0B0FF999999FFD1CBCAFFEBE9E9FFEBE9
        E9FFEBE9E9FFF4F3F3FF0000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EEF6FC0008B6F70011B0FE00149EFE008992BF00DCD0CC00DBCF
        CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFDCAF0035D5350010941000CFE9
        CF0000000000000000000000000000000000DFF0DF000594050028C728004FF1
        4F0040AA4000EFF8EF000000000000000000000000000F4A7C001A649B003CAE
        EF0040B7F9003EB6FA003DB4FA005EABDF009EC9E7009EC3DF002376B40034AB
        F90033AAF90031A7F80090C0E400000000000000000000000000000000000000
        00000000000000000000C3BDBCFF9D9D9DFFB3B3B3FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FEFEFD005EB0F2000BB1FE000AAAFE001F51C400DACDC900D9CC
        C800FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BC6000109B1000CFEACF000000
        00000000000000000000000000000000000000000000DFF1DF0060BC6000089B
        08002DB52D0030A83000EFF8EF0000000000000000000F4A7C00276799001157
        9300125894003FB5F60040B7FA003EB5FA003DB4FA003BB2FA0039B0FA0037AE
        F90036ADF900DAEAF50000000000000000000000000000000000000000000000
        00000000000000000000D4CFCEFFCDCDCDFFB1B1B1FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FDFCFB00FBF9F80000DFFE0002A6FE000E73FE003F6CD200C8B6
        B100FFFFFF00FFFFFF00FFFFFF00FFFFFF0040B8410000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000DFF3DF0060C4600000A10300CFEED000000000006F92B000E6ECF2002B6B
        A100125A98001969A800339BDC003FB7FA003EB6FA003CB3FA003BB2FA0038AD
        F60056A5DC000000000000000000000000000000000000000000000000000000
        00000000000000000000E4E0DFFFDDDDDDFFBEBEBEFFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FDFCFB00FBF8F70000C5F80000BEFE000587FE000959E400BFC7
        E600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DFF4E10010B326000000000000000000000000000000
        0000000000007AA5CA003879B1001461A3001964A50084ADD000DDEAF4000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000E2D3D0FFF6E2DDFFF3DEDAFFFCFCFBFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FEFEFD00FBF9F800F9F5F30037ADE80000DBFE000AA0FE002E8CFE006584
        D100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F3F7FA00F7F9FC0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DDD1CD00DED3CF00DED3CF00DED3
        CF00DED3CF00DACEC900D5C8C300C8B6B1002088DF004D77CA009FAAD900FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000424D3E000000000000003E000000
        2800000040000000300000000100010000000000800100000000000000000000
        000000000000000000000000FFFFFF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000FFFFC003F9FFFFFFC7E38E01F83F001F
        83C10000F00F001F81810000E00F001F80010000803F0001C003000080610000
        E007000084610000F00F00008FE10000F00F0FFC8FE10000E0078E018E410000
        C003C0038C0300008001E007F80300078181F60FF00F001783C1F60FF00F001F
        C7E3F70FFC3F001FFFFFF00FFFBF001FFFFF8000FFFFFFFFFC7F0000FFFFFFFF
        FC3F0000CFFFFFF3FC3F0000C7FFFFC1FC3F0000C1FFFF81FC3F000080FFFFC1
        C0030000807FFFC180010000803F81E180010000801F81E1800100000E0F81C1
        800300000F038001FC3F00001F818003FC3F00007FF08007FC3F0000FFFCF81F
        FC3F0000FFFFFE7FFFFF0000FFFFFFFF00000000000000000000000000000000
        000000000000}
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PopupPrincipal')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = frmrepositorio.IconosBarra
    ImageOptions.LargeImages = frmrepositorio.IconosBarra
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <
      item
      end>
    UseSystemFont = False
    Left = 496
    Top = 112
    DockControlHeights = (
      0
      0
      0
      0)
    object dxInsertar: TdxBarLargeButton
      Tag = 1
      Caption = '&Insertar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 0
      ShortCut = 16429
      OnClick = dxInsertarClick
      AutoGrayScale = False
    end
    object dxEditar: TdxBarLargeButton
      Tag = 2
      Caption = '&Editar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 16453
      OnClick = dxEditarClick
      AutoGrayScale = False
    end
    object dxGuardar: TdxBarLargeButton
      Tag = 9
      Caption = '&Guardar'
      Category = 1
      Enabled = False
      Hint = 'Guardar'
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 121
      OnClick = dxGuardarClick
      AutoGrayScale = False
    end
    object dxCancelar: TdxBarLargeButton
      Tag = 9
      Caption = '&Cancelar'
      Category = 1
      Enabled = False
      Visible = ivAlways
      LargeImageIndex = 3
      ShortCut = 122
      OnClick = dxCancelarClick
      AutoGrayScale = False
    end
    object dxEliminar: TdxBarLargeButton
      Tag = 3
      Caption = 'Eliminar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 16452
      OnClick = dxEliminarClick
      AutoGrayScale = False
    end
    object dxRefrescar: TdxBarLargeButton
      Caption = 'Actualizar'
      Category = 1
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 116
      OnClick = dxRefrescarClick
      AutoGrayScale = False
    end
    object dxSalir: TdxBarLargeButton
      Caption = 'Salir'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 16472
      OnClick = dxSalirClick
      AutoGrayScale = False
    end
    object dxImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 5
      AutoGrayScale = False
    end
  end
  object zq_Notificaciones: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select n.*'
      'from nuc_notificaciones n'
      ' where (n.sIdUsuarioE=:Usuario or n.sIdUsuarioR=:Usuario) and'
      'n.sTipoAlert=:TipoAlert')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoAlert'
        ParamType = ptUnknown
      end>
    Left = 536
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoAlert'
        ParamType = ptUnknown
      end>
  end
  object ds_Notificaciones: TDataSource
    DataSet = zq_Notificaciones
    Left = 576
    Top = 72
  end
  object zq_Usuarios: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM usuarios ORDER BY sNombre')
    Params = <>
    Left = 536
    Top = 112
  end
  object ds_Usuarios: TDataSource
    DataSet = zq_Usuarios
    Left = 576
    Top = 112
  end
  object PopupPrincipal: TPopupMenu
    Images = frmBarra1.IconosBarra
    Left = 233
    Top = 192
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      ImageIndex = 1
      ShortCut = 16453
      OnClick = Editar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Tag = 9
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
      OnClick = Registrar1Click
    end
    object Can1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
      OnClick = Can1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
      OnClick = Eliminar1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
      OnClick = Refresh1Click
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
      ImageIndex = 11
      ShortCut = 16451
      OnClick = Cut1Click
    end
    object Copy1: TMenuItem
      Tag = 1
      Caption = 'Pegar'
      ImageIndex = 12
      ShortCut = 16470
      OnClick = Copy1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
    end
  end
end
