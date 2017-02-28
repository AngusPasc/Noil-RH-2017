object frmRepErrores: TfrmRepErrores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Reporte del Errores del Sistema'
  ClientHeight = 679
  ClientWidth = 1362
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = pmPopupPrincipal
  Position = poDesigned
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 1362
    Height = 679
    Align = alClient
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HeaderSize = 30
    ParentHeaderFont = False
    TabOrder = 0
    FullWidth = 1362
    object tdFechaInicio: TDateTimePicker
      Left = 9
      Top = 5
      Width = 130
      Height = 25
      Date = 39765.594495983790000000
      Time = 39765.594495983790000000
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnChange = tdFechaInicioChange
    end
    object tdFechaFinal: TDateTimePicker
      Left = 146
      Top = 5
      Width = 130
      Height = 25
      Date = 39765.594495983790000000
      Time = 39765.594495983790000000
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnChange = tdFechaFinalChange
    end
    object dxlytcntrl1: TdxLayoutControl
      Left = 9
      Top = 359
      Width = 1343
      Height = 314
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        1343
        314)
      object pnlInformacion: TNxHeaderPanel
        Left = 13
        Top = 13
        Width = 1256
        Height = 297
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informaci'#243'n'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HeaderSize = 15
        ParentHeaderFont = False
        TabOrder = 0
        FullWidth = 1256
        object lbl1: TLabel
          Left = 18
          Top = 29
          Width = 46
          Height = 17
          Caption = 'Modulo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 18
          Top = 109
          Width = 88
          Height = 17
          Caption = 'Desarrollador'
          FocusControl = dbDesarrollador
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 18
          Top = 52
          Width = 47
          Height = 17
          Caption = 'Solicita'
          FocusControl = dbSolicita
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 394
          Top = 236
          Width = 68
          Height = 32
          Caption = 'Descripcion'#13#10'Problema'
          FocusControl = dbDescripcion
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 18
          Top = 167
          Width = 101
          Height = 17
          Caption = 'Fecha Soluci'#243'n'
          FocusControl = dbDesarrollador
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 18
          Top = 138
          Width = 48
          Height = 17
          Caption = 'Versi'#243'n'
          FocusControl = dbVersion
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 451
          Top = 29
          Width = 45
          Height = 17
          Caption = 'Cliente'
          FocusControl = dbDescripcion
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl10: TLabel
          Left = 446
          Top = 67
          Width = 65
          Height = 17
          Caption = 'Programa'
          FocusControl = dbDescripcion
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 18
          Top = 82
          Width = 80
          Height = 17
          Caption = 'Tipo Errores'
          FocusControl = dbDesarrollador
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl11: TLabel
          Left = 17
          Top = 205
          Width = 106
          Height = 17
          Caption = 'Estado del Error'
          FocusControl = dbDesarrollador
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl12: TLabel
          Left = 16
          Top = 235
          Width = 97
          Height = 17
          Caption = 'Aplica SCRIPT'
          FocusControl = dbVersion
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl13: TLabel
          Left = 216
          Top = 235
          Width = 103
          Height = 17
          Caption = 'Aplica Reportes'
          FocusControl = dbVersion
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbDesarrollador: TcxDBTextEdit
          Left = 135
          Top = 109
          DataBinding.DataField = 'sDesarrollador'
          DataBinding.DataSource = dsReporteerrores
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyPress = dbDesarrolladorKeyPress
          Width = 304
        end
        object dbDescripcion: TcxDBMemo
          Left = 465
          Top = 96
          DataBinding.DataField = 'sDescripcion'
          DataBinding.DataSource = dsReporteerrores
          ParentFont = False
          Properties.ScrollBars = ssVertical
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 185
          Width = 472
        end
        object dbSolicita: TcxDBTextEdit
          Left = 135
          Top = 51
          DataBinding.DataField = 'sTester'
          DataBinding.DataSource = dsReporteerrores
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnKeyPress = dbSolicitaKeyPress
          Width = 305
        end
        object dbFechaActualizacion: TDBDateTimePicker
          Left = 135
          Top = 167
          Width = 113
          Height = 24
          Date = 42306.714396701390000000
          Time = 42306.714396701390000000
          Checked = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = dbFechaActualizacionKeyPress
          DataField = 'dFechaActualizacion'
          Datasource = dsReporteerrores
        end
        object dbVersion: TcxDBTextEdit
          Left = 135
          Top = 138
          DataBinding.DataField = 'sVersion'
          DataBinding.DataSource = dsReporteerrores
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyPress = dbVersionKeyPress
          Width = 304
        end
        object grp1: TGroupBox
          Left = 943
          Top = 36
          Width = 309
          Height = 237
          Caption = 'Imagen'
          TabOrder = 5
          object bImagen: TImage
            Left = 3
            Top = 16
            Width = 293
            Height = 200
            OnClick = bImagenClick
          end
        end
        object dbModulo: TcxDBLookupComboBox
          Left = 135
          Top = 26
          DataBinding.DataField = 'sModulo'
          DataBinding.DataSource = dsReporteerrores
          ParentFont = False
          Properties.KeyFieldNames = 'sDescripcion'
          Properties.ListColumns = <
            item
              Caption = 'Descripcion'
              FieldName = 'sDescripcion'
            end>
          Properties.ListSource = dsModulos
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          OnKeyPress = dbModuloKeyPress
          Width = 302
        end
        object cbbTipoError: TComboBox
          Left = 135
          Top = 82
          Width = 302
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 7
          Text = 'Tipo Error'
          OnKeyPress = cbbTipoErrorKeyPress
          Items.Strings = (
            'Bloqueantes'
            'Actualizacion'
            'No Bloqueantes'
            'Interfaz'
            'Mejoras Futuras'
            'Critico'
            'Perdida Mayor Funcionalidad'
            'Trivial'
            'Normal Error Componente'
            ''
            ''
            ''
            '')
        end
        object dbCliente: TcxDBLookupComboBox
          Left = 523
          Top = 25
          DataBinding.DataField = 'sCliente'
          DataBinding.DataSource = dsReporteerrores
          ParentFont = False
          Properties.KeyFieldNames = 'sRazonsocial'
          Properties.ListColumns = <
            item
              Caption = 'Razon Social'
              FieldName = 'sRazonsocial'
            end>
          Properties.ListSource = dsClientes
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          OnKeyPress = dbClienteKeyPress
          Width = 347
        end
        object cbbProgramas: TComboBox
          Left = 517
          Top = 66
          Width = 347
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 9
          Text = 'Tipo Programa'
          OnKeyPress = cbbProgramasKeyPress
          Items.Strings = (
            'ERP 2015'
            'INTELI-RESOURCES'
            'EXE CIAS.'
            'LINEAS'
            'TARIFA DIARIA'
            'KOOBEN'
            'APP'
            'PHP'
            'EXE UTIDEL')
        end
        object btnPDF: TButton
          Left = 371
          Top = 167
          Width = 58
          Height = 33
          Caption = 'PDF'
          TabOrder = 10
          OnClick = btnPDFClick
        end
        object cbbEstado: TComboBox
          Left = 137
          Top = 206
          Width = 295
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 11
          Text = 'Estado del Error'
          OnKeyPress = cbbTipoErrorKeyPress
          Items.Strings = (
            'Atendido'
            'Procesos'
            'Pendientes'
            'Resueltos'
            'Sin Solucion'
            'Sin Atencion'
            '')
        end
        object btnDetalle: TcxButton
          Left = 255
          Top = 167
          Width = 95
          Height = 34
          Caption = 'Detalle Ticket'
          TabOrder = 12
          OnClick = btnDetalleClick
        end
        object cxdblAplicaScript: TcxDBCheckBox
          Left = 137
          Top = 236
          DataBinding.DataField = 'lAplicaScript'
          DataBinding.DataSource = dsReporteerrores
          ParentFont = False
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 24
        end
        object cxdblAplicaReporte: TcxDBCheckBox
          Left = 335
          Top = 237
          DataBinding.DataField = 'lAplicaReporte'
          DataBinding.DataSource = dsReporteerrores
          ParentFont = False
          Properties.ValueChecked = 'Si'
          Properties.ValueUnchecked = 'No'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Width = 26
        end
      end
      object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dbCClientesdxlytcntrl1Item1: TdxLayoutItem
        Parent = dxlytgrpLayoutControl1Group_Root
        CaptionOptions.Visible = False
        Control = pnlInformacion
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object cxspltr1: TcxSplitter
      Left = 9
      Top = 350
      Width = 1343
      Height = 9
      AlignSplitter = salBottom
    end
    object cxgrpbx1: TcxGroupBox
      Left = 9
      Top = 35
      Align = alClient
      PanelStyle.Active = True
      ParentFont = False
      TabOrder = 4
      Height = 315
      Width = 1343
      inline frmBarra1: TfrmBarra
        Left = 2
        Top = 2
        Width = 87
        Height = 311
        Margins.Right = 5
        VertScrollBar.Style = ssHotTrack
        Align = alLeft
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitWidth = 87
        ExplicitHeight = 311
        inherited AdvPanel1: TAdvPanel
          Width = 87
          Height = 311
          ExplicitWidth = 87
          ExplicitHeight = 311
          FullHeight = 0
          inherited btnEdit: TcxButton
            Left = 0
            Width = 88
            Height = 33
            Font.Height = -15
            OnClick = btnEditClick
            ExplicitLeft = 0
            ExplicitWidth = 88
            ExplicitHeight = 33
          end
          inherited btnPost: TcxButton
            Left = 0
            Top = 63
            Width = 88
            Height = 32
            Font.Height = -15
            OnClick = btnPostClick
            ExplicitLeft = 0
            ExplicitTop = 63
            ExplicitWidth = 88
            ExplicitHeight = 32
          end
          inherited btnCancel: TcxButton
            Left = 0
            Top = 94
            Width = 88
            Height = 33
            Font.Height = -15
            ExplicitLeft = 0
            ExplicitTop = 94
            ExplicitWidth = 88
            ExplicitHeight = 33
          end
          inherited btnDelete: TcxButton
            Left = 0
            Top = 126
            Width = 88
            Height = 32
            Font.Height = -15
            OnClick = btnDeleteClick
            ExplicitLeft = 0
            ExplicitTop = 126
            ExplicitWidth = 88
            ExplicitHeight = 32
          end
          inherited btnPrinter: TcxButton
            Left = 0
            Top = 157
            Width = 88
            Height = 33
            Enabled = False
            Font.Height = -15
            ExplicitLeft = 0
            ExplicitTop = 157
            ExplicitWidth = 88
            ExplicitHeight = 33
          end
          inherited btnRefresh: TcxButton
            Left = -1
            Top = 189
            Width = 88
            Height = 33
            Font.Height = -15
            OnClick = btnRefreshClick
            ExplicitLeft = -1
            ExplicitTop = 189
            ExplicitWidth = 88
            ExplicitHeight = 33
          end
          inherited btnExit: TcxButton
            Left = -2
            Top = 221
            Width = 88
            Height = 32
            Font.Height = -15
            OnClick = btnExitClick
            ExplicitLeft = -2
            ExplicitTop = 221
            ExplicitWidth = 88
            ExplicitHeight = 32
          end
          inherited btnAdd: TcxButton
            Left = -2
            Top = -1
            Width = 88
            Height = 33
            Font.Height = -15
            OnClick = btnAddClick
            ExplicitLeft = -2
            ExplicitTop = -1
            ExplicitWidth = 88
            ExplicitHeight = 33
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
            494C010108000900D00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      object cxGridActualizaciones: TcxGrid
        Left = 89
        Top = 2
        Width = 1252
        Height = 311
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object dbg_actualizaciones: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsReporteerrores
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Click aqui para definir un filtro'
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Preview.Column = Col_Grid__actualizacionesColumn2
          object Col_Grid__actualizacionesColumn4: TcxGridDBColumn
            Caption = 'Consecut.'
            DataBinding.FieldName = 'iOrden'
            Width = 79
          end
          object Col__actualizacionessIdUsuario1: TcxGridDBColumn
            Caption = 'Usuario'
            DataBinding.FieldName = 'sIdUsuario'
            HeaderAlignmentHorz = taCenter
            Width = 71
          end
          object Col__actualizacionesColumn1: TcxGridDBColumn
            Caption = 'Programa o Sistema'
            DataBinding.FieldName = 'sPrograma'
            Width = 140
          end
          object Col__actualizacionesdIdFecha1: TcxGridDBColumn
            Caption = 'Fecha Creacion'
            DataBinding.FieldName = 'dIdFecha'
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
          object Col_Grid__actualizacionesColumn2: TcxGridDBColumn
            Caption = 'Fecha Soluci'#243'n'
            DataBinding.FieldName = 'dFechaActualizacion'
            Width = 101
          end
          object Col__actualizacionessModulo1: TcxGridDBColumn
            Caption = 'Modulo'
            DataBinding.FieldName = 'sModulo'
            HeaderAlignmentHorz = taCenter
            Width = 166
          end
          object Col__actualizacioneseTipoActualizacion1: TcxGridDBColumn
            Caption = 'Tipo de ERROR'
            DataBinding.FieldName = 'sTipoError'
            HeaderAlignmentHorz = taCenter
            Width = 121
          end
          object Col_Grid__actualizacionesColumn5: TcxGridDBColumn
            Caption = 'Estado ERROR'
            DataBinding.FieldName = 'sEstado'
            Width = 120
          end
          object Col__actualizacionessDesarrollador1: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'sCliente'
            HeaderAlignmentHorz = taCenter
            Width = 115
          end
          object Col__actualizacionessTester1: TcxGridDBColumn
            Caption = 'Tester'
            DataBinding.FieldName = 'sTester'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object Col_Grid__actualizacionesColumn3: TcxGridDBColumn
            Caption = 'Desarrollador'
            DataBinding.FieldName = 'sDesarrollador'
            Width = 111
          end
          object Col__actualizacionessDescripcion1: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'sDescripcion'
            HeaderAlignmentHorz = taCenter
            Width = 188
          end
        end
        object dbggridactualizacioneslevel: TcxGridLevel
          GridView = dbg_actualizaciones
        end
      end
    end
  end
  object dsReporteerrores: TDataSource
    DataSet = qryReporteErrores
    Left = 160
    Top = 232
  end
  object qryReporteErrores: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from nuc_reporterrores'
      'where (dIdFecha >= :fechaI and dIdFecha <= :fechaF)'
      'Order by iOrden DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaF'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fechaF'
        ParamType = ptUnknown
      end>
    object cReporteErroressId: TStringField
      FieldName = 'sId'
      Required = True
      Size = 40
    end
    object cReporteErroressIdUsuario: TStringField
      FieldName = 'sIdUsuario'
      Required = True
      Size = 50
    end
    object dtfldActualizacionesdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object cReporteErroressModulo: TStringField
      FieldName = 'sModulo'
      Required = True
      Size = 100
    end
    object cReporteErroressDesarrollador: TStringField
      FieldName = 'sDesarrollador'
      Required = True
      Size = 75
    end
    object cReporteErroressTester: TStringField
      FieldName = 'sTester'
      Required = True
      Size = 75
    end
    object mfldReporteErroressDescripcion: TMemoField
      FieldName = 'sDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object intgrfldActualizacionesiOrden: TIntegerField
      FieldName = 'iOrden'
    end
    object dtfldActualizacionesdFechaActualizacion: TDateField
      FieldName = 'dFechaActualizacion'
    end
    object cReporteErroressVersion: TStringField
      FieldName = 'sVersion'
    end
    object cReporteErroressTipoError: TStringField
      FieldName = 'sTipoError'
      Required = True
      Size = 50
    end
    object cReporteErroressCliente: TStringField
      FieldName = 'sCliente'
      Required = True
      Size = 80
    end
    object qryReporteErroressImagen: TBlobField
      FieldName = 'bImagen'
    end
    object cReporteErroressPrograma: TStringField
      FieldName = 'sPrograma'
      Required = True
      Size = 40
    end
    object cReporteErroressEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 40
    end
    object zqqryReporteErroreslAplicaScript: TStringField
      FieldName = 'lAplicaScript'
      Size = 2
    end
    object zqqryReporteErroreslAplicaReporte: TStringField
      FieldName = 'lAplicaReporte'
      Required = True
      Size = 2
    end
  end
  object pmPopupPrincipal: TPopupMenu
    Left = 217
    Top = 128
    object mniInsertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16457
      OnClick = mniInsertar1Click
    end
    object mniEditar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16453
      OnClick = mniEditar1Click
    end
    object mniN1: TMenuItem
      Caption = '-'
    end
    object mniRegistrar1: TMenuItem
      Tag = 9
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
      OnClick = mniRegistrar1Click
    end
    object mniCan1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
      OnClick = mniCan1Click
    end
    object mniN2: TMenuItem
      Caption = '-'
    end
    object mniExportarExcel1: TMenuItem
      Caption = 'Exportar Excel'
      ImageIndex = 15
      OnClick = mniExportarExcel1Click
    end
    object mniEliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
      OnClick = mniEliminar1Click
    end
    object mniRefresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
      OnClick = mniRefresh1Click
    end
    object mniImpSQL: TMenuItem
      Caption = 'Imprimir Script SQL '
      ImageIndex = 14
      OnClick = mniImpSQLClick
    end
    object mniImprimirReporte1: TMenuItem
      Caption = 'Imprimir Reporte'
      ImageIndex = 16
      OnClick = mniImprimirReporte1Click
    end
    object mniN3: TMenuItem
      Caption = '-'
    end
    object mniCopy1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
      OnClick = mniCopy1Click
    end
    object mniPaste1: TMenuItem
      Tag = 1
      Caption = 'Pegar'
      ImageIndex = 12
      ShortCut = 16470
      OnClick = mniPaste1Click
    end
    object mniN4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object mniSalir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
      OnClick = mniSalir1Click
    end
  end
  object dlgSave1: TSaveDialog
    Left = 496
    Top = 200
  end
  object qryClientes: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sRazonsocial from con_companias '
      'Where sIdCompaniaConf =:Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 760
    Top = 395
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 712
    Top = 399
  end
  object dsModulos: TDataSource
    DataSet = qryModulos
    Left = 256
    Top = 360
  end
  object qryModulos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select  sDescripcion from nuc_modulos')
    Params = <>
    Left = 296
    Top = 360
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 865
    Top = 373
  end
  object QFile: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select * from con_files where iIdFolio=:Folio and sTipoMovimient' +
        'o=:Movimiento and sTipoFile=:TipoFile')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Movimiento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoFile'
        ParamType = ptUnknown
      end>
    Left = 332
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Movimiento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoFile'
        ParamType = ptUnknown
      end>
  end
  object styleGrid: TcxStyleRepository
    Left = 888
    Top = 72
    PixelsPerInch = 96
    object cxstylBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
    object cxstylRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clRed
    end
    object cxstylGreen: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clGreen
    end
    object cxstylMaroon: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxstylOliva: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clOlive
    end
    object cxstylPurple: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = 16711808
    end
    object cxStylVerblan: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clLime
    end
    object cxstylfuchsia: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
  end
  object frmtsclr1: TFormAutoScaler
    Left = 640
    Top = 328
    DesignDPI = 96
    DesignHeight = 679
    DesignWidth = 1362
    DesignTextHeight = 17
  end
  object zqScript: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select dr.dFecha,re.dFechaActualizacion,re.sTipoError, re.sProgr' +
        'ama, re.sModulo,'
      're.sDesarrollador, dr.mDescripcion '
      'from nuc_reporterrores re'
      'Inner Join nuc_detallereperrores dr On (dr.idError=re.iOrden)'
      'Where re.lAplicaScript="Si" and sTipoSolucion="Script"')
    Params = <>
    Left = 624
    Top = 208
  end
  object frxScript: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41904.429600810200000000
    ReportOptions.LastChange = 42381.584737962960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Picture4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '     Picture3.Visible := False;'
      '     Picture2.Visible := False;'
      '      '
      '    if <frxDBReporte."sStatus"> = '#39'AUTORIZADO'#39' then'
      '    begin     '
      '        Picture3.Visible := True;'
      '        Picture2.Visible := True;            '
      '    end;'
      ''
      '    if <frxDBReporte."sStatus"> = '#39'VALIDADO'#39' then'
      '    begin'
      '        Picture2.Visible := True;                          '
      '    end;            '
      ''
      '  '
      '       '
      'end;'
      ''
      'procedure Memo57OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frxDBReporte."mComentarios"> <> '#39#39' then'
      '    begin     '
      '        Memo57.Visible := True;                            '
      '    end;  '
      'end;'
      ''
      'procedure Memo55OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <frxDBReporte."mComentarios">= '#39#39' then'
      '    begin     '
      '        Memo55.Visible := True;                            '
      '    end;  '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if <frxDBReporte."sIdInsumo"> <> '#39#39' then'
      '    begin     '
      '        Memo44.Visible := True;                            '
      '    end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 672
    Top = 208
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSetName = 'datasetfrximgfirmas'
      end
      item
        DataSet = frmRequisicionPerf.frxDBReporte
        DataSetName = 'frxDBReporte'
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
      object PageHeader1: TfrxPageHeader
        Height = 181.417440000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo3: TfrxMemoView
          Left = 517.795610000000000000
          Top = 64.252010000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'ID. ORD-COMP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 529.134200000000000000
          Top = 81.708720000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'REQUIS. NO. :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 551.811380000000000000
          Top = 95.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'FECHA:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 128.504020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CONTRATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 626.181510000000000000
          Top = 68.031540000000000000
          Width = 109.606272360000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBReporte."sOrdenCompra"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 623.622450000000000000
          Top = 83.708720000000000000
          Width = 117.165332360000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBReporte."sFolioRequisicion"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 623.622450000000000000
          Top = 98.165430000000000000
          Width = 105.826742360000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd-mmm-yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBReporte."dIdFecha"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 83.149660000000000000
          Top = 109.606370000000000000
          Width = 449.763972360000000000
          Height = 68.031540000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[contrato."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 291.803340000000000000
          Top = 5.559060000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Style = fsDouble
          Memo.UTF8 = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 283.464750000000000000
          Top = 86.929190000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haCenter
          Memo.UTF8 = (
            'ORDEN DE COMPRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 537.354670000000000000
          Top = 110.063080000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NUM. PAGS.: ')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 616.063390000000000000
          Top = 110.622140000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 7.338590000000000000
          Top = 0.338590000000000000
          Width = 245.669342600000000000
          Height = 90.708671180000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          Frame.Style = fsDouble
          HightQuality = False
        end
        object Picture5: TfrxPictureView
          Left = 665.197280000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Picture.Data = {
            0D546478536D617274496D616765FFD8FFE000104A4649460001010100960096
            0000FFDB0043000A07070907060A0908090B0B0A0C0F19100F0E0E0F1E161712
            192420262523202322282D3930282A362B2223324432363B3D4040402630464B
            453E4A393F403DFFDB0043010B0B0B0F0D0F1D10101D3D2923293D3D3D3D3D3D
            3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
            3D3D3D3D3D3D3D3D3D3D3D3DFFC000110801E901FD03012200021101031101FF
            C4001F0000010501010101010100000000000000000102030405060708090A0B
            FFC400B5100002010303020403050504040000017D0102030004110512213141
            0613516107227114328191A1082342B1C11552D1F02433627282090A16171819
            1A25262728292A3435363738393A434445464748494A535455565758595A6364
            65666768696A737475767778797A838485868788898A92939495969798999AA2
            A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7
            D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101
            010101010101010000000000000102030405060708090A0BFFC400B511000201
            0204040304070504040001027700010203110405213106124151076171132232
            8108144291A1B1C109233352F0156272D10A162434E125F11718191A26272829
            2A35363738393A434445464748494A535455565758595A636465666768696A73
            7475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8
            A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4
            E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F66A28
            A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
            A2800A28A2800A28A2800A28A2800A28A42703268016B175EF1241A2958B6192
            E1C6E0BD0019C649FC0D4EDE23D2526311BE8B7038E3247E7D2B8AF166AB6DAA
            DF44D6CB206894A3EF5033CF6E7EB401E8FD6B93D7A2D7DB5973A71B836D8520
            23055E83356343F11DCEA1716D6C74E91222B869F248E17AF4C73F5EF49E26F1
            25DE8B791436F142CAF1EECC809E7247623DA803A6AF3BBBBDD43C49AF9B3867
            68E22ECA89B8850A33C9C753815D5EA973ABB5A5AC9A4411C8D22EE9371036E4
            0C63247BD70FA47F682EBBFE84A9F6D05FE56C633CE7DBD6803AED17C3171A56
            A0B7125F9991411B002012463D699E1C8B5A8F5598EA667F20C676091F70CEE1
            8EFE99AD2D1E4D53ECD31D5D112456F936E30463D8D51F0C788AE75B9A74B88A
            1411A8398C11924FB93401D15150DD5D43656ED3DCC823893AB1AE6A5F1E5B09
            76DB59CD28F5242E7F0E6803ABA2B9CB0F1B585D4A22B8492D589C65F95FCFB7
            E55D10208041C83400B451450014514500145145001451450014514500145145
            0014514500145145001451450014514500145145001451450014514500145145
            0014514500145145001451450014514500145145001451450014514500145477
            13C56B03CD3B848D06598F615C6DCEBBAA788AEDAD745478611D5C1C1C7A96ED
            F41CD0076335D416E479D3C51E7FBEE07F3A58AE21B85CC32A483D5181FE55C9
            43E01DCBBAEEFD8C8793B13BFD4F5AA175E14D5749B98E5D36569B2D80F17CAC
            BF51E9FA5007A052330552CC40503249E82A0B11742CA217C633718F9CC7D09A
            E63C77A8C91A41611310241BE4C7719C01F9E7F4A00B97DE36D3EDA431DBAC97
            2C38CA70B9FAFF00F5AA1B6F1DD9C936CBAB796019C6ECEE03EBDEB5748D1AD3
            45B25F963128506499BA93DF9EC2B1BC53A86877966F134C925D28CC6F10DC41
            F427A62803AA8A549E2592275746195653904579ADCDC5F5A6AF7D649348ED3B
            1832EE49C1618FD38FC6B6FC057D2B2CF64FB8C6A3CC438E17D47EA0FE7547C5
            D17D87C4F15D01C38497F1538FE828036AD3C0F630AC4D34B3493290C4820292
            3B631D2A1F1CD9C49A4C32C5122159B9DAA07507FA8AEAD58328653904641AC6
            F16C3E7786EE70394DAE3F0619FD334012785E5F3BC3966DE8857F2247F4AE7B
            E204789ECA4FEF2BAFE447F8D6A781A5F3341299FF0057332FF23FD6AA7C404C
            D9D9BFF76465FCC7FF005A803A2D21FCCD1AC9BD6043FF008E8AE2FC3E31E389
            07A4937F5AEB7C38FBFC3D647FE9981F9715C9E8C0AF8FE51FF4DE71FF00A150
            077572DB6D656F4427F4AE43E1F2FCF7EDE8231FFA15759A81DBA6DC9F489CFE
            86B98F87EB8B6BD6F5751F903FE340157C6B752DDEAD6FA7447E5500E33D5DBA
            7E9FCCD75BA66976FA55A2C16E80607CCF8E5CFA9AE3B5E02D7C7504D3711B49
            0C993E83009FD0D77B40183E27D05754B1692DA1537884142300B0CF20935378
            6A2BDB5D1961D4236492162AA090C4AF51D3F11F85685DDF5B58223DD4C912BB
            6D058E326A3BCD52D2C6C0DE4B2830FF000943BB71F41EB401CA4BA86BDAEEA9
            25B59799671A7386CA151EAC719CFD2A7934DF14D88F360BF1738E4A6EDC4FE0
            C294F8F7739F2B4C77407AF9B83F96D352278FAD7389ACE743DC2907FC28024D
            0BC58D7B762CB508843724ED5600804FA107A1AE9EBCEAD655D6FC6F15C408C8
            8D32C80100101403CFE5FAD777A86A1069966F7372D845EC3AB1F41EF4016A8A
            E257C55AD6A72BFF0065D8AF96BE88588FA9E9572CBC5B7105DADAEB9686D99B
            8120040FC41EDEE2803A4B9BA86CE0335CC8B1C6080598F1CF14F8E449630F13
            ABA372194E41AE2FC73A899AE21D3A124EDC3B81DD8FDD1F97F315D3685A68D2
            B4886DC81E663749EEC7AFF87E1401A345145001451450014514500145145001
            4514500145145001451450014514500145145001451450014514500145145001
            45145001451450014514500145145001451450071BE3DBE75FB3D9236158798E
            3D79C0FEB5D0681A7C7A768F044806E650EEC3F8988E6B9AF1FDAB0B8B4BA03E
            52A6327D08391FCCFE55D1F872FD750D0EDE4072E8A2371E8C38FD7AFE3401A9
            451450015C578FED1BCDB5BC032BB4C4C7D0F51FCCFE556BC6BAA5DD835A25A5
            C345E6072E17193D31FD6B612CD756F0E5BC17BB98CB6E8598FDE0DB473F5CD0
            0737A768175E22B68EF2FF005469226E88A4B11EDCF00FE15D059785B4AB2C15
            B5595C7F14BF39FCBA7E95CD4365AFF862E1C59C46E6063D114BAB7BE0720D5A
            92FF00C4FABC6608AC8DA2B70CE54A1C7D5BFA734017B4DF11BDEEBE74EB6B68
            96DA36705D4FF08CE081D3938FCEABF8FAD77D8DB5C81CC72143F461FF00D6FD
            6B4BC3BE1E8F448599D8497320C3B8E807A0F6AD3BCB28350B6305D462489882
            572474E7B50055F0FDCFDAF41B397393E58527DC707F955BBBB75BBB39ADDF85
            950A13E9918A2D6D61B28161B68D638D7A2AD4D401C15A689E26D29E48AC7E58
            DCF2CB2260FBF3C8FCABA1D7F47BAD6B47B7855A24B856577DE4E3EE904700F7
            35B94C9644862792460A88A5989EC075A00A7A258C9A6E9105ACCCAD24608257
            38E493DFEB59F69E17FB2F885F54175BB73BBF95E5E3EF67BE7DFD2B3B43D4F5
            AD77537912E3C9B047CB0F2D4F19E101C7271DFF00FAD5D8500417B0B5CD85C4
            31901E48D9149E80918ACBF0C68B3E8B6734572F133C926E063248C63DC0ADBA
            28031BC47A026B76CA51825CC7F718F423D0FB5635BEA7E24D2A316D3E9CF741
            0615C29638FAAF5AECA8A00E18E99ACF8A2F524D4A336B6C9D8A95C0EF853CE7
            DCD5AF1BD998749B25B74C5B40C5481D07000FE47F3AEBE992469346D1CA8AE8
            C3055864114018FE17BEB19346B786DE48D64440248F2036EEE71EE7BD49AEEB
            369A6D948CCF1BDC152234E09CFF008555B8F04E953C85904D0E7B46E31FA835
            5EF3C116ABA6CA96219AE8E36BCCFD39E7A0C74F6A00A7E02B2DD25D5F38CE31
            129F73C9FE95178CA792FF005CB7D3A23C2ED007FB6DFF00D6C5749E1AD3E5D3
            3468E0B840936E62E01073CF078F6C5739AEE34FF1BDB5DCE3F72E51F71E800F
            94FE58CD007616165169D6515B4030918C67D4F727DEB3FC576915CE8170D201
            BA21BD1BB823FC7A56C0218020820F422B94F1BEAC91DA0D3A260659483201FC
            2A3903F138A00C8F08E9EFA9EB3F6B9C974B6C312DCE5BA28FD33F857A0BBAC6
            859D82A8EA58E00ACCF0E69634AD2228986257F9E4FF0078F6FC3A554F11F876
            E75A962686F3622F0627FBA3D48C77FAFE7401B50DDDBDC12219E2908EA11C1F
            E55357252780A15881B5BD99275E433018CFE1C8A82CFC437FA15F0B0D701923
            E312E7240F5CFF0010FD7F950076945202194329041190477A5A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
            A28A0028A28A0028A28A0028A28A0028ACED5F5AB5D1ADC3DC312EDF7235FBCD
            FF00D6F7AE4EE7C51AF4E9F69B7B7686D873B9612CB8F7623FC2803BDA2B0BC3
            7E235D66268A70A976832547471EA2B768029EA9A745AAE9F25ACDC061956FEE
            B7635C1D85EDE784756786E632636E244ECC3B32FF009F6AF48AA9A86996BAA4
            1E55DC41C0E87A15FA1A004B3D56CAFE1125B5CC6C08E46EC11F51DA997FADD8
            69A85AE2E503632114EE63F80AE7A6F87F13484C17EE89D83C418FE791562CBC
            09650306BA9A4B823F840D8A7FAFEB4018D14573E31D7BCF7429691E01F4551D
            B3EA6BD01542A85500003000ED4C8208ADA258A08D638D7A2A8C015250014515
            93E22D6468BA71954069E43B2253EBEA7D87F850068CF710DAC7BEE268E24CE3
            73B0519FA9A8E0D46CEEA4F2EDEEEDE57C676A48AC7F206BCFB4FD1F52F13CAF
            7324D950DB5A59493EF803F1E9C0A9350F086A5A7CF1B5AE6E559C0578810CA7
            B123B7D738A00F46AE434BF195C5FEB70DACB0430C12315EE581C1C0CE7D703A
            5743A3A5F47A6C49A93235C01C9539E3B67DEBCFAFC9D33C5B2C8C98115D79A1
            471F2EEDC3F4A00F4D7758A3679182A2825989C00077AF3FD57C55A86A97660D
            34C91445B08B10FDE3FBE473F80AEABC56ED1F86AF0A3152428C8F42C01FD0D7
            3DE00B6492F2EEE1B978915578E9BB393FF8EFEB4014DB45F1346CD73FE95E66
            DE596E01723F06C9FA55BD03C5D710DD25A6A8FBE263B3CC7E1A33EE7B8FAD77
            55E73E35B54B6D7CB4600F3E3123003183920FF2CFE3401E8D5E6371E21BF4D5
            E69EDEF27F2BCE6648DA42576E7818E98C577F6173B340B6B9998B6DB5591C9E
            A7E504D798DA594B7A2E0C4326088CCC3D54119FE79A00F56B2BB8EFACA1B988
            FC92A861CE71EDF51D2B987F16DE7FC249FD9E9141E4FDA44392ADBB1BB04F5C
            7E951F81354C8974E95BA7EF22C9FF00BE87F5C7D6B1F452BA8F8CA395860493
            BCD81D88CB0FE5401E95451450014515CCF887C5C34CB916D6491CD329FDE96C
            ED5FF678EFFCBF90074D54356D22DB58B5F26E4104728EBF794FB557D035F4D7
            6195960685E2203296DC39CE307F0F4AD7A00E463F0DEBB6A0416BAB85B61C0F
            998103D860E3F3ACCD034596E7C4AFF6A594A5B3798C65520B9CFCB907D7AFE1
            5E834500731E30D7A7D3562B5B46D92CABB99FBAAF4E3EBCFE559F6DA1788CC0
            9749A8B2C8C37796F3367F1ED5A9E2CF0FCBAB471DC5A60CF1020A1E37AFB7BF
            F8D41A778C638235B6D5E2960B88C6D66D8707DC8EA0D0042BE23D6B493B757D
            3CC918EB2A8C7EA3E5FE5591E21D597C47A85AA5942FC0D8A180DC589FE5D2B6
            B59F1B5B8B578B4C2EF2B8C79A57684F719E7349E0AD0FCB8FFB4EE17E771884
            1EC3BB7E3FE7AD0074F6301B5B0B7B763B8C512A13EB80054F45140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005473CAB6F04933FDD8D4B1FA019AAB79AD69FA7C
            9E5DD5D471BFF773923F01D2A6496DB52B36F2A44961914A92873C1EB401C778
            76D4789358BAD43513E608882233D39CE07D063A574DADEAF6FA358979406760
            5638BFBC7FC2AAE9FA4DAF8574EB9B9691E5609B9D8F19C7400562E89632F89F
            539354D48EE8236DAB1F627A85FA0CFE3F9D00629B5D434A5B6D5D6310AC8E5A
            3DA3007B11E8467F0AF42D1F558B58B04B88B86E8E99E55BD2A9F8B9E28FC377
            025C7CC55507FB59078FC8D60F87F45D6AC2F609EDCC6904F1ABB96395C1E704
            75CF3401DCD145140051451401CCF8A7C4D71A45C2DADAC49BDE3DFE6B738C92
            381EBC7FF5AA3F0E78B96F596D3516549CF092F4573E87D0FE87F9E778FE12BA
            95ACD8F95E2DA3F024FF00ECD54EF3C3864D16DB53D383488D103347D4AB0186
            61EA320FD3E9D003D1EB8CF885D34FFF00B69FFB2D43E1BF171836DA6A6E5A2E
            8931E4A7B37A8F7EDFCB7FC4DA61D634522DF0F2C644B163F8B8E9F883F9E280
            23F064A92786E154FBD1BBABF1DF24FF00222B7ABCDBC31AF8D12EA48EE158DB
            4B8DD8EA8C3BE3F9FF00F5B15D36A3E34D3E1B37365299E72308363000FA9C81
            C5006CC3A9D8DC4A2282F2DA491BA2A4AA49FC01AE13C6F6E21F1017073E744A
            E7DBF87FF65A5F04D8CB3EB6B740622B7562CDD8920803F5CFE15B9E30D12EF5
            492D64B18048E8195CEF0BC718EA7EB401A173049ADF84C26732CF6E8E31DDF0
            1B1F98AE2FC33AB268BAB13741962914C7271CA1CF5C7B63F5AEEBC3D6B3D968
            76D6F74BB6640C18641C7CC48E47B62A9EB1E12B3D56569D18DBDC31CB328C86
            F723D7F2A00D06D6F4C58CB9D42D7006789549FCBAD79EEBBA836BDAE17B7566
            5388A15C7247FF005C93F9D6EFFC2BDFFA897FE40FFECAB6B45F0C59E8CC255C
            CD738C79AE3A7D076FE7400BA8A8D37C233452367CAB4F2723B9DBB47EB5CE78
            0202D7F773FF000A4410FF00C08E7FF65AEBB57D3FFB574C9ACFCDF2BCCC7CFB
            7763041E991E9547C3BE1F6D08DC8338984C57042EDC633EFEF401C6EA304BE1
            9F126E83808DE6459EE87B7F31567C0F0ACBAF976EB142CE3EB903FA9AE97C59
            A1C9ABD9C725AA06B984F03206E53D464FE7F9D54F07E8577A65CDCCD7D0F94C
            C8113E656C8CE4F427D0500755451587E25F10268D6BE5C455AEE41F22F5DA3F
            BC68020F14F89174B88DADA30378E3923FE5903DFEBE83F1F4CF1F0E8F34DA2D
            D6A931658D30133D64258027E9C9FC6ABAD9DF5FA4B76904F3AEE3BE40A5B9EA
            735A573E2A9EF344934E9EDE200AA2A3C7F2ED0A41E9D3B76C5006BFC3E3F2DF
            8F78FF00F66AECAB8CF87BFF00310FFB67FF00B35753A95FC7A669F2DD4DCAC6
            3207F78F61F89A00CDD5BC536BA46A31DACA8F2657748C847EEFD38EFF00E18E
            B5A9677D6DA84225B499254F553D3EA3B7E35E6FA6594FE24D7184AE7E726499
            C7F08F6FD00AB3A868BA9785E61776D39310381347C63D987FFAC5007A3D4535
            B41718F3E18E4C74DEA0E3F3AC9F0C6BADADD9C9E7205B88480E57A3039C1FD0
            D6DD0072DACF851AFB57B69A05896D72AB2468A10819E4FBD74EAAA8A15400AA
            3000EC29D4500155353D4A0D2AC9EE6E1B0A380A3AB1EC055BAE0FC5724BAA78
            9A0D3636C04DA833D0336093F911F950035757D7BC4574CBA7968625ED19DA14
            7BB7AFF9C55A73E28D0D7ED12B8BB8179705B7E07F3FCA8BBD0EFBC3537DBB46
            91E5840FDEC6DC9C7B8EE3F515BFA26BD6DADC198FE49947CF131E47B8F51401
            268DACC1AD59F9D0FCAEBC49193CA9FF000F7AD1AE1B462B63E3C9EDAD8E2091
            9D4A8E8300B7E8462BB9A0028A28A0028A28A0028A28A0028A28A0028A28A002
            8A28A0028A28A0028A28A0028A28A002B9DF14EB935888AC6C326F2E3A11C950
            7818F726BA2AE17C4AD3E95E2C875168FCC8BE564CF43818233EBDFF001A00BD
            67E0581ADF76A1712BDC3F2DB18614FE239AD117DA4785ED23B36982B28C9551
            B9D8FA9C7F5AE7EF3C53A96B520B5D26078B775D872E7F1FE11FE7356F4DF032
            91E6EAB333C8DCEC8CF4FA9EF401B32CF69E26D16E61B29D58BAE39E0A9EA323
            EA2B8FD3B59D43C2EF2D9CB6D90CD9D926460F4C83DC55DD1EDBFB2BC76D676C
            ECD0E19589F4D9BB07E8715DD50071D6761A8F89AFA3BBD5D0C56719CA438C6E
            FC3AFD49AEC29698B2C6F23C6AEA5D31B941E573D323B500457F7B169D652DD4
            E4F9718C9C0C93D80FC4D7013DF6B3E2ABA923B757F247FCB246C228EDB8F73C
            77FC2BA1F1E67FB0E2C7FCFC2E7FEF96A67809E33A4DC2295F344D961DF040C7
            F23FAD006258786F5CB4D4E25883DB16E4CCAE0A80319CE0F3F43D6BD0D410A0
            125881C93DE96B9AD6BC609A55F3DA25A3492478DCCCE147201E319CF07DA802
            97C41076D81EC0C83FF41AC3B2D4358BCB48B4CD3CC9E5A023108C13924E59BB
            0E71D8574DE3D453A3C0F8F984E003EC55B3FC853FC0A8EBA14859480D3B1524
            751B5791F8E68030A4F046A11E9ED3EE8DA71CF90BC9C77E7D7DBF5AB3E0ED43
            538E71682DE59ACF7618918F24F7E4FF002FCBDFB9A28031F53F0BE9DAA4BE6C
            A8F14A7EF3C4402DF5E08FC7AD538FC0BA5A48ACCF7520079567183F9006BA4A
            28022B6B586CE0586DA358E35180AA2A5A28A0028A28A0028A28A0028A28A002
            8A28A002B2B53F0DE9FAB3B4B3C4CB33000CB1B61B8FD0FE22B568A0086D6D62
            B2B68EDEDD024518C2A8AC4F1858DB3E877374608FED09B3126DC37DE03AF7E0
            D7434C92249A368E545746E0AB0C83F850071FF0F7FE621FF6CFFF0066AA7E35
            D63ED97C2C616CC36E7E7C7F13FF00F5BA7D735D8C1A4DB592DC9D3E35B69671
            CB28C80467076F4E33D062B97D23C1F7706B8B26A011E088F981D5B2246EC3D7
            AF3C8ED401936B73AB78566DC6031ACC012B2A655F8E39F519F5FAD59D6BC5F2
            6ADA71B44B510AB905CEFDD900E703818E40AF409628E78DA39516446E0AB0C8
            3F85662F85B474984A2C537039C1662BF9138A00CBF0258CB6F63717520DAB70
            54203D485CF3FAFE949E26F15BD85D25AE9ECA658DB33311903FD9FF001ABBE2
            6D79745B310DB95FB5483083FB8BFDEC7F2FFEB5725E19D263D6B546FB5480C7
            1FCEEA5BE693DBD71EA7FC6803B2D0FC496BACA04E22BA1D6227AFBA9EF5B35C
            1EBFE13934DDD7DA6331850EF2809DD177C83DC0FCC7BF5AD7F0978864D515ED
            2EFE6B8897707FEFAF4E7DC647D73401D2D719E2AB59B4DD72DF598537C61977
            FB11C73F51C57674C96249A268E54574618656190450057D3F53B5D4E012DACA
            AE08E573F32FB115CEEAFA00799B52F0FCCAB711B7CF1C4C3AF7C63A1F6EFF00
            CDD7BE03B59A52F6972F6EA7AA15DE07D3915A1A0F86D743924717724A5C60AE
            D0AA7DF1CF3F8D0066F8374496067D4AF1596470446ADD707AB1FAD58F1178AD
            74D636B63B64BACFCC4F2A9EDEE6AB7893C54519AC34B62D313B5E55E707D17D
            FDEA2D23C1025884DAABB876E4448791FEF1F5A00EAB4FB992EEC629A68BCA91
            972C99CED3566B8BD57C3D3E828750D1AE65558F9923273C7F51EC6BA1D03585
            D6B4E13602CAA76C8A3B1F6F63401A7451450014514500145145001451450014
            51450014514500145145001597AD6BF6BA2C63CECBCCC32B12F53EE7D05684D2
            AC10492BFDD8D4B1FA019AE33C336635ED52EB53D40094A30DA879193FD00A00
            47F1CEA03127D823584F427774FAD6C695E24B0D787D96E215495BFE594A032B
            FD0F7A93C4FADC7A4D898902BDCCC308846401EA4567E83A30D0F4D9755BB85A
            4BA119758C0E517FC7D7D05006BEA77B67E1BD38CD1DB46BB982AC71A84DC7F0
            1F5AC4B8F1D79D0F97A7D9C9F697E177E0807D80EB5A7E1DD607886CEE16EA18
            CB46FCA632A54F4EBF43F956A41A7D9DABEFB7B48227E9BA38C29FD050063F86
            34192C37DF5F12D7B3F5C9C9507939F735D0D15C4F8ABC4C6766D3B4E6254FCB
            2C8BFC7FEC8F6F5F5FE601D86F5BAB566B69D70EA424A98600F4C8EC706BCD9E
            4D47C35AEB3C8CC67072CCC4913293EBDC1FE7EE2BB1F0AE913E91A73B5D48C1
            A53BCC44FCB1FF00F5FD7F0F4ABBAD68F06B565E54B8575E62900E50FF0087A8
            A00877DAF8A7407546C2CAB839E4C6E39E7E871F515C259DD5E7863593B930E8
            76C919E03AFD7F5069F67797DE15D5D95D3041C4B113C48BEA3FA1FF00EB8AEE
            66B3D33C4F611CEC81D587CB22F0E9EDFF00D6E94015D3C67A435BF9866757C6
            7CA319DD9F4F4FD6B8F944DE29F11BB41195F39867BEC4000C9FC07E75D47FC2
            05A6FF00CF7BCFFBED7FF89ADAD3B4BB4D2A0F2ACE2080E3737566FA9A009E7B
            786E502DC431CAA0EE01D43007D79A968A2800A28A2800A28A2800A28A2800A2
            8A2800A28A2800A28A8A49D223863CFA0A695F613696E4B4551FB6C9E8BF953D
            2F7FBEBF88AAF6722154896E8A4560CA08390696A0D028A28A0028A28A002A8E
            AFAA45A3E9EF73282D8F95107F1376157AA3B8B78AEA078678D648DC61958641
            A00F33B2B4BBF146B4C5DBE673BA5931C22FF9E00AB3E24D1BFE11FBF825B399
            D63972D19DDF32118CF3F88AEEB4CD26D34885A3B48F68762CC49C93E833E82B
            97F88322996C63FE250EC7E876FF0081A00CCB8F18EA373A6BDA4A22CC8BB1E5
            0B8620F5F6FD2B53C09A64E934BA848A56268CC6991F7F90491EC31FE715ABE1
            8B3B7B9F0E5949716F14AEA1C2B3A0623E76E84D59D73C416DA244BE6032CEE3
            29129C123D49EC3FCFAD006B515E6F3F8CF589A52D1CC908FEE246A47EB93577
            4AF1C5CC5308F53026889E64550197F01C11401DDD6478961D467D2D934C6C39
            38751C332FB1AD48A549E2496270F1B8CAB0E8453E8039EF0EF85E2D2945C5C8
            592EC8EBD447EC3DFDEBA1A4270326B92D7BC5C439B3D23F792B1DA65519C1F4
            5F53EF40177C55AF5BD8D8CD668C24B9990A6D1FC008C64FE155BC096535BD95
            C5C4AA55272BE583DC0CF3FAFE950E87E0F25C5E6B197918EE10939E7D58F7FA
            575E0000003005002D1451400514514005145140051451400514514005145140
            0514565788AE3668F730C52AADC4913145CE1980FBD81F4A007C7A8D96B49796
            56D38760851C8E9823191EA2B8DD07596F0D5DDDDB5E44C41E0A8EA1C74FC0FF
            00856DF8234D823D37EDF80D3CA5973FDD50718FD2B435CF0DDB6B43793E55C0
            1812A8CE7D88EF4018DE1CD3A5D6B517D6B521B9777EE90F4247F41DBDEBA4D6
            2FA1D3F4B9E69C8C6D2AAA7F8988E057211E81E24D29CA58485A3CFF00CB3940
            53F8362AD5A785752D4AE526D76E58C6BFF2CF7EE63EDC7007D2802C780ECE48
            6C2E2E5C10B3B0099EE173CFE64FE55D5D3238D218D638D42228C2A81800563F
            8A35A9347D394DBA9F3A63B51C8CAA7A9FAFA0FF000A006F8B64D423D218D82F
            C9CF9ECA7E655F6F6F5FFF005D723E14BBB0B3D583DFAE09188A43F7636F53FE
            3DBF51D4787FC590EA416DEF0AC3764E076593E9E87DBF2AA5E24F080903DE69
            6987EAF02FF17BAFBFB7E5EE0153C4FE246D465FECED349688B6D664E4CA7FBA
            3DBF9FF3E9FC3B6175A76931C37B29793A85CE4463B2E7BD70BE1AD52DF48D53
            CDBB837291B3CCC65A2F703F9F7FE47D2E29527896489D5D1865594E41140197
            E20D022D6ED78C25CA0FDDC87F91F6FE5FCE9784B43BED256592F24D82418FB3
            820E0FF7891C67E95D25140051451400514C92548C7CC71ED5525BC66E13E51E
            BDEA945B265351DCBD4554B494728C792720FAD5BA52567608CB995C28A28A45
            05145140051451400514541733796981F78FE94D2BBB09BB2BB1EF3222925812
            3B03CD67331662C7A9A4A2BA2315139A73720A28A2A882586E1A2E072BE957A3
            91655CA9FF00EB566549031599707A9C1ACE704F53484DAD0B52492C2724074F
            5E869D1DD46FC13B4FBD4B55AE6DD021751823B0E959AB3D19ABE68EA8B54566
            C73BC5D0E47A1AB71DD23F07E53EF44A0D046A264F4514541A0560789BC39FDB
            48B34126DB98970A1BEEB0F4F63EF5BF450065E9D11D17C37189D4EEB784C922
            823AF2C45703676D75E25D6C867FDE4A4BC8E7908BFF00D6E001F4AF4ABFB737
            7A7DCDBA901A5899013D01208AF3FF000ADEC7A46BCCB7BFBA0EAD0B16E36364
            75FC462803BCD3B4BB5D2ADC45691051C6E63CB39F526B1FC65A55BDC69325E8
            455B8870778E0B0C8183EBD7F4AE8F70DBBB236E339ED5C478BBC4915DC474FB
            170F19399641D1B07803F1E734016FC037724B67756CE7290B2B267B6ECE47D3
            8CFE26BADAE5FC0BA7CB6DA7CD75282A2E4AEC523F8573CFE393F97BD74B24B1
            C201964540485058E324F41400EACFB2D06C34FBB96E6DE002590E7279D9ECBE
            82B468A0028A2A333C4B3AC264512B02C133C903BE28024A2B95F1B6AD71650C
            16D6CED199B25DD4E0E063806B33FB1359D1EC9752B6BBDCC143C91AB1381D79
            1D0D0077B4567687AB26B3A72DC280B203B6451FC2DFE15A3400514514005145
            140051451400514514005739E23F0C3EAF30BAB7B82B3AAE023FDDC0F4F4AB3A
            EF89ADB45222DA66B8233E5838C0F73DAB0078F6F158349650EC3D002C09FC68
            02969BA9EA1E14BB682EA06F25CE5A36EFFED29E95DBE99ACD9EAD16FB594160
            3E68DB865FA8ACEB2D734AF1247F65B9882C8DFF002CA5EE7FD93FFEA3595A97
            832E2CE5FB568B33654E4465B0EBF43DE803B5A2B3B427BE934A89B53E2E0E78
            DB82076C8F5AD1A00A5AB6A71691A7BDD4C37638540705D8F415069DA8D9F893
            4E93F72C633F2491C8BC67AF5E87FF00D5D2B89F156B5FDADA91489B36D06563
            FF0068F76FC7B7B5769E1C6D3C693145A74CB22A0F9CE30DB8F52C3A8CD0072B
            E20F084B61BEE6C034B6C3964EAD18FEA3FCFBD4DA078C9EDF6DB6A8CD245D16
            6EACBF5F51FAFD6BBAAE5FC41E108EFB7DCE9E162B83CB47D1643FD0FE9FCE80
            1FAFF8660D62137BA79417046ECA91B661F5F5F7FCFD459F0B69171A4E9ECB75
            231790EEF2B3958FE9EE7BD51F05E9FA8D98B8377E6450676AC2E3AB7761E83E
            9D73ED5D550014514D6608A4B1C01400EAAB3DDE3E58F93EB514F72D2F0BC2FF
            003A82B68D3EACC2757A214924E49C9A4A29F0C4657C0E9DCFA569B18A57180E
            0E4569C4FE6461B18CD316D625FE1C9F7A940C0C0E958CE4A5B1D14E0E3B8B45
            145666A14514500145145004534EB08F56EC2A83BB48DB98E4D587B372C48707
            3EB50BDBC88A599781EF5BC3951CF3E67BA23A28A5DA76EEC719C66B432128A2
            8A009ED512466571CE38A996CC2C81839C039C1154D58A30653822AFC1389979
            C061D45653E65AA36A7CAF464D505DBED871DD8E2A7AAF7814C4327041E3DEB3
            87C48D67F0B28D14515D272134570F171D57D0D5E47122061D0D66A2348C1547
            35A51A08E30A3B56351237A4DFC8751451591B05739E21F09A6AAE6E6D1D62BA
            3F7837DD7FAFA1AE8E8A00F343E14D776ECFB292BE9E7263F9D6C68BE0865916
            7D54A90391029CFF00DF47FA0FCEBB09A510C2F2B062114B10A324E3D0579F6B
            5E2FBAD4B74369BADED8F1C1F9DC7B9EDF41FAD00749ACF8AECF495305B059EE
            146DD8A7E54FA9FE83D3B570F7D7F7FACCAF3DC349288C6485076C63E9DBB54D
            3F87351B6D2CDF4F0EC8C100A37DF03D48EC3F5F6AEB3C1D7D6B7BA435898A24
            9231891001FBD53C6E23BFA1FF00EBD004FE14D73FB56C7C99DB37500C364F2E
            BD9BFA1FFEBD6FD799DCEEF0BF8A1BECCC59616040CFDE4233B4FE071FAD7A65
            0015C35BA49AA78FE532C8E9F67762B8383B578007B1FEA6BB9AE43C47693E91
            AC45AE59A6E4C8132FBF4E7D88FD68026F1E59F9BA6437207304983F46FF00EB
            815A7E1EBD5B9F0E5B4D2B0C247B5CB76DBC73F80CD636B5E2AD36FF00419A18
            8C866954011942369C83927A559F02A4834397CC07CB69894CF71800FEB4019D
            E0A980D72FE2B7CFD9994BA8FA300BFA135DBD50D3746B3D24CCD6B1ED32B6E6
            24F41D80F61562DEF6DAEDE44B79E395A2203EC39DB9A009E8A28A0028A28A00
            28A28A002919B6A963D86696B1FC4979A859D8A3E990B4926FCB909BB6A8F6F7
            A00C4F0959C7AADE5DEA97AA2597CCC286E429EB9FE4057612451CD1949515D0
            F5561907F0AF3AF0EF883FB1AFA613C78B799BE7541FEACFB03F9577F67A8DA6
            A1187B4B88E51E8A791F51D450072BE25F0B456B036A1A6E62317CCF183C01EA
            BE98ADDF0D6A6DAAE8D1CB29CCA84C721F523BFE208A6789B56B7B0D2A789DD4
            CF3466348F3CF2319C7A547E0FB17B2D094CA0AB4EE65C1EA01000FD067F1A00
            DDAE7FC637F3D9E9063B78DCF9F947902E422F7C9EC4E71F9D74158F378A3464
            768A4BC46EC708CCA7F103068039DD13C1E9A86906E2EDDE2925398481F757D4
            8EE0FF0041CF35977BA46A9E1CB913A965553F2CF1138FC7D3E87AFBD7A54124
            52C2AF6EE8F111F29420AE3DB14F650CA55802A46083D0D0071FA3F8E5582C5A
            AA6D3D3CF41C1FA8FF000FCABAE8A58E7896486449236E8C8720FE35CD6B1E0A
            B6BB2D2E9EC2DA53CEC3FEACFF0087E1C7B56BE85A52E8DA625B643484EF9187
            42C7AE3DB803F0A00D1A28A6BB88D0B37414009248B1AEE63C550966699B2781
            D8524B234AFB9BF01E94CAE8842C734E7CDA20A28A2ACCC2B42D5408010393D6
            B3EB4E2FF529FEE8ACEAEC6B456A3E8A28AC0E80A28A2800A28A2800A28A2801
            09C0C9ACE9A532B939F97B0ABB700981F1E959D8CF4AD692EA6155BD85552EC1
            47535A2B1288BCB23231CD55B589C4C18A90077357A8A92D6C3A51D2ECCE9A13
            0B7AA9E86A2AD5650CA430C8359F710F94FC7DD3D2AA13BE8C89D3E5D51154B6
            A7170B9A8A8AB6AEAC4276773572075359D3B97958E7233C7D2A3A2A630E52E7
            539829F144657C0E9DCFA532AF597FA93FEF539BB2B9308F33B12C712C430A3E
            A69F4515CCDDCEB4AC145145001451450015E7FE2AD21F47D492FECFE48647DC
            BB7FE59C839FFEB8FC6BD02A0BCB48AFECE5B69C66391707DBDC7BD0052D1755
            875ED2F73042F8D93C5D81FA7A1AF3E4B7986BB25BE912B17123AC2E9205240C
            FF00171D47E757AEBC19AAC170C9044B3C7FC322BAAE47B827835B3E17F0ADC5
            85EADF5FE2374044712B027241049238E9FCE80336C7C1DA95DDF87D4C18A32D
            BA476903B3FD304F3EE6BD028A2800A4655752AC032918208C834B4500643785
            B47697CC36280E73C3301F967154F51F1769FA5A7D9EC916774180B1E022FE3F
            E15278CEE65B7D01BCA62BE6481188FEE9CE7F9550F0AF86ACDF4F8AFAED04F2
            4996556E554671D3B9FAD006534FAFF8A58AC6196DCF50BF2463EA7BFEB5D278
            77C3274491A692E4C92BAED645184FF13FA56F2A8550140007000ED4B4005148
            082480464751E94B4005145140051451400540F796D1C9E5C9710ABFF759C03F
            9566F8A7537D2F467785B6CD2B08D0FA67A9FC81AE6AC3C15737F64B753DD089
            E51BD54A16241EE4E78FD6803B0BED1AC3535FF4AB647623EF8E1BF31CD7337F
            E036525F4DB9E472125E0FFDF43FC2AB7F6578934239B3779621DA26DEBFF7C9
            FF000AB369E3A9A17F2B53B33B8705A3F948FF00809FF1A00C44B6BAF0FDF2CD
            A869A25507FE5A64AE7D411C67EB9AEC74EF1869B7D8595CDB4A7F865E9FF7D7
            4FCF15AD697516A36493C6098A51901D7191F4AA13785F4B9AEA3B816E237460
            D88CE15B073C8E940143C6DAA1B4D392D227224B9CEEC1E883AFE7D3F3AC2B0F
            065CDF690B78265491C6E8E165FBC3B64F6CFD3D2A96B9A947AAEBEF348CC6D5
            5846BB393E583D4671D793CFAD751A9F89F4F3E1D9469F2A891904491636B264
            63A7B0CF238CE28031BC1DACC7A6CB731DDCE23B529BFE6C9F9B20703D483DBD
            3DAB6AE7C77A7C7BC410CF330385380AADF8E73FA573BA27856E758845C798B0
            5B9240660496C7A0EE33C75AE82DFC05648A3ED1733CAD9FE1C203F873FCE803
            6744D4DF57D3C5DBDBF90ACC420DFBB701DFA0EF91F85685476F6F15ADBA4102
            048E350AAA3B0A9280109C0C9E9542E26F35F03EE8E952DE4BFF002CC7D4D54A
            DA9C7AB30AB3E8828A28AD4C428A28A00746A1A4553D09C5698000C0E82B361F
            F5C9FEF0AD3AC6AEE6F4766145145646C1451450014514500145145002328652
            18641A454545C280053A8A0028A29AEEB1AEE6381400EAA97C0E10F6E69AD7AD
            BBE5518F7A95654B9428DF2B1AD145C5DD9939292B228D36491228D9E4654451
            966638007B9A65EDCC3A7DBCB3DC3811C6324819CFB01DC93C01DCD73D2C726A
            B289F5053E58398AD49CA27A161D19BF41DBD4EF7495D98C60E4CB92789A290E
            34EB5B8BE1FF003D530917E0CC46EFAA835049E20D52242DFD88B263F863BC5C
            9FCD40FD6A4A2B3F6DDA3F99B2A51399FF0085BB6D6B7C6DB54D1AF2D194E1BE
            60CC3F038E2BD0BC3BACD8EB7602E74EB849E163C15EA0F7047507A706BCFF00
            C6DE1A8F5DD21E48907DB6DD4B44C3AB01D57DF3DBDFF1AF3EF0178AA5F0B788
            6290C8459CE44770B9E31D9BEA339FA6477AF463429E2A8B9525692E84F2F23B
            9F4C5154FEDD95E10671D73C546F75238C676FD2BCA54E45BAB12EBC8918F998
            0A85AF507DD04FE95489C9E68AD1535D4CDD57D095AE6466CEEC7B0AB56D3F9A
            B86FBC3F5AA14A8C51832F514E504D1319B4EECD5A2991C82440C3BFE94FAE73
            AB7333C4325EC3A44B3E9D2F97345F39C206DCBDC73F9FE15C3FFC259AE6D27E
            D6703A9F2538FF00C76BD2EA1BCB58EF6CE5B698652552A7DBDC7BD0079B41A8
            EBD7AADF669EFE60BF78C5B8E3F2A6DCDDEBB68AA6EAE350843703CC91D73F4C
            F5A9B48D525F0C6AB731CF19700346E8A71961D0FF009EC699145A878B3572CC
            7731FBCD8F9225F4FF00EB77A00DEF046AB757735CDB5D4B34E028915DD8B6DE
            70464FAF1F91AEC2A9697A5DBE9366B6F6CBC75663D5CFA9ABB4014F54D3D354
            D3A6B590E378E1BFBA7A83F9D731A4EAF3F8641D3F5882458558F952A8C819FE
            63F5AECEB9CD6FC3371ACEA42437A63B5DA3319CB61BD874F4A0065DF8EB4F85
            4FD9A39677EDC6D5FCCF3FA562BEB7AFEBCC52C6378E33C7EE0600FAB9FF0011
            5D2D8784B4BB2C3187CF71FC531DDFA74ADA555450AA02A8E800C01401CF785B
            44BED25A77BC950898025012C411DC9FCEBA2A28A0028A28A0028A28A00E77C6
            B6A2E344DE194342E1C0240DC304103F3FD2B4745D4EDB52D3E26B775DCA803C
            79E50E3D2B8FFB35D78C35DB86137976F11C0623211738000F538CD599BC0775
            09DF677C8CC391B94A1FCC66803B8AAF75636D7A9B6EA08E51FEDA838FA7A571
            81BC57A475134F18F5C4A0FF00322B6BC39E21BAD5EE2682E6D56368972CEA48
            E73D307F1EFDA8037A2892085228942A2285551D80A7D15C8F8DF569ED25B5B7
            B4B89217C191F6315C8E8391F46A00D5D43C2BA5EA1963079321FE387E5FD3A7
            E95CBEA1E07BFB605AD1D2E90761F2BFE478FD6BAD82F9EC7C351DEDFC864916
            11239202924F2178FA81468BAF5BEB8B29B78E54316DDDBC0EF9E983ED401C35
            96BBAB682C2DCEE555FF009613A1C0CFE447AF15DB787F5C3AE5AC921B6684C6
            C149CE558E3B1FE9EE29DABDFE8F1C8B69AAB4459D772AC9192003919CE38E86
            AE58D85B69B6FE45A44238F25B0093927DCD0059A64B208A32C7F0A7D51BB937
            49B4745FE75508DD913972A2024B124F53494515D2728514514005145140125B
            8DD3A0F7CD5F9245897731ACF85F64AAC7A03CD3A473713003A13802B3946ECD
            613E58F997D5B7206F519A7520014003A0E296B03A028A28A0028A28A0028ACD
            D5F5FB0D1117ED72933480F956F12979652074551CFE3D07722B9F9BC4DAF5DB
            86B1B1B3B187279BC6696461DBE54202FF00DF46AD536D5DE88573B2A2BCFB50
            F1178D2DA167B38344BA239DBE5CA8C7E80BE3F5AE774CF8DF7D05F183C41A4C
            4AA1F6BB5BEE468BD72AC4E7E9915BD3C1D4AA9BA767F313925B9EBB2DC2C2C0
            3027233C534DC412AE1CF07B115996BA9DBEB16D1DE59CC934128CA321E3152D
            47B2B68F731755DC96E163571E590463B1CD4545327996DE092690E12352CC7D
            80C9AB4BA19B776605FCDFDA3ADB459CDB58E38ECD3119FF00C7548FC58F702B
            9DF17F8CA2F0DA2C10A09AF645DCAA7EEA0F56FF000AD6B097EC9A17DB2EB866
            46BA9FD99B2EDF9648FC2BC599EE7C4BE234F31F3717D70A80F61B8803F015D7
            84C3C6BD56E7F0C7FAFF00826FF046C76BE19F0DEADE3F63A8EB97F3A69A1F0A
            8A71E611D428E807BFF91E86BE12B3D3AD02E8886D258C7C8BE6318E4F67049C
            E7D7A8FD2B62C6CA0D36C60B3B54090C0811147602A7A9AD5DCDD9691EDD0C79
            9DEE7396972B796A932A95DD9055BAAB03820FB8208FC2BC37C4D662C3C4BA85
            BAA8545998A81D94F23F435ED3F68834ED475649A548A04BA0EA5DB001745623
            EA58B1FC6BCB3C596179AC78E2ED34FB2B995E511B2A794C1B1B146483C81C77
            C56F962E4AD25D2DFD7E66D2778A67B2F836F4EA1E0FD2EE18E58DBAAB1F52BF
            29FD456D560F8274BBAD17C2161637EA12E620FBD4306C65D980C8F622B7AB92
            ADBDA4ADB5D9CE145145660145145004F6B2F97260FDD6ABF5935A16D2F9910C
            FDE1C1AC6A47A9BD297426AA5ABEA1FD97A5CD77E5993CB030B9EE4E07E1CD5D
            A8AE204BAB6920946524528DF422B2363CCED2CEFBC51ABBB9397721A5948F95
            0741FA0C01ED5E8DA6E9B6FA559ADBDB2E1472CC7AB1F535CC1F13587874369F
            61632B985D96469182EE60704E4673FA5665CF8DB559F02230C183FC09927EBB
            B3401E8B51457504EEE90CD1C8F1F0EA8E095FAFA579BFD835FD6301E3BC994F
            CC3CE62ABF51BB03F2AB5E0F91EC3C4CD6B32E1DD5E1619FBAC39FFD948FC680
            3D0E8A28A0028A2B293C49A7CBAA25843299256246E51F28206719FF000A00D5
            A29AECA88CEE40551924F615C35F78CEFEEAF0C5A54616307E5C26F77F7C5007
            774571DA478CA61762D7588C21276F99B76953FED0AEC6800A8E69A3B785E599
            8246837331EC2A4AAF7D671EA1652DB4A5824830C54E0D0071FE1AD46CF47D5A
            F2D259E3304CC0C53061B78CE327B707F4AED91D6450C8C194F420E41AE4A7F8
            7F01CFD9EF644F691037F2C5533E0DD5ECDB7595DC7FF009191BFCFE3401DDD2
            60673DEB871278BB4EFBC934CA3B10B2E7F2C9AECAC9E692C607B950B3346A5D
            40C61B1C8C5004F5E73AC13ACF8CCDB82E53CD583DD40E1B1F8EE35E8D5C05F7
            82353579258A68AE496CFDEDAED9EFCF1FAD006CF8EAF3C9D1E3B756C35C4832
            31D55793FAEDA9BC156BF67D01643F7A7767E9D07DD03F4CFE35C55E695AADAC
            7B2EADAE4451720E0B22E719E4647A55FD3FC65A8585BC70148658A3015772E0
            850318C8FF000A005BF1FDB5E3730ED2C8671195CFF0AF0D8FC89AF45AE07C0B
            6A67D5E6BA71B8431FDE27A3371FCB7577D400C91FCB8D9BD2B30924927A9AB7
            7AFF00753F13552B7A6ACAE73D595DD828A28AD0C828A28A0028A28A002ACD92
            65CB9EDC0AAD566D2709F237009E0D4CEF6D0B85B9B52ED154B57D52DF45D2E7
            BFBC2FE4C206422EE662480001EA4903F1AE4B5AF1BEAF069B737763A4C36B14
            09E607BE9773B003A79687039E33BFF0ACA14A53D8E96EC7755525BCDAF88C02
            07735E6D07C623ADEBF69A6699A5B470DC4EB199A793E6D848C9DA0601C67B9A
            EFAB6961A74ADED15AE653A9D11752F15B871B7DFAD66EBDAFFD80476961E5CB
            A8CE3722B72B1274323E3B7603AB1E0742432FEF63D3AC65BA9B25631C2AF562
            780A3DC9200F73585690C8A64B8B921AEAE0EF948E83D147B28E07E27A9350E3
            18AE61D394A5B896B6296F2CB3C8ED3DDCE7335C4982F21FE807651C0ED45C6A
            5656926CB9BCB785FAED925553F9135C0F8CBC7F2ACEFA7E8B2ED54CACB72BD4
            9F453DBEBF97BE8FC3BF8623578575CF1223BC120DF05BB920CD9FE37EFB7B81
            DFAF4EBD5F53B53F6D8895AFB2EA5737447691C892A078D95D1864329C835C6F
            C43F0C26A1A73EA76D181776EBBA4C7FCB441D73EE3AFD33ED5DA5F6891D8446
            EB47B7589E3197B6886D499475014701FD0F7E87D44714B15D5BAC9190F148B9
            07B106B9E12961E6AA41FF005D81494D1E5BF0CBC54FA26BA9637121FB0DEB04
            604F0921E15BFA1FFEB57B9D7CD1E21D34E8FAFDE598C858A43B3279DA795FD0
            8AF7EF086AE75CF0AD85EBB66578F6C87FDB5F95BF3233F8D7AB98538B51AD1D
            99CF246CD6578A58AF85F5100E0BC0D18FF810DBFD6B56B2BC50A5BC31A89504
            94819C01FEC8DDFD2BCEA7F1225185E28CAF85B52083FE5DDC63DB1CFE95E4DE
            07DBFF0009B691BFA7DA17F3EDFAD7B3DDDB47A8584F6CE7F7771134648F4618
            E3F3AF11BAB2BFF096BF134D1949ADA559627C7CAFB4E4107B8E2BBB2B9274E7
            4EFAB3A2A23E92A2B1BC39E29D3BC4D64B3594CBE6EDCC9031F9E33EE3D3DFA5
            6CD70CA2E2ED25A9CE534D26C535192FC5AC5F6B931BA6232DC003827A70074A
            B4B1A23BB2A28673962072DC639A75149B6F700A28A290051451400514514005
            4F6926C9B07A37150500E0E4526AEAC34ECEE6B514D8DF7C6AC3B8A75729D879
            D78CED85AF888CB80566459318C0F423F4CFE35DD58DAD8C30A4B630431A4880
            868D029653C8F7ACDF15E88FAC58A35BF371012517FBC0F51F5E0571D6FE20D5
            F488FEC82468C47C08E58C657DB919A00F4EAF389E4824F1DA3DA303135E47F3
            0E84E46EFD7355A5D5F5AD64F90269E6C8398E15C647B851C8FAD745E19F09C9
            673A5EEA21448BCC7175DA7D4F6CFA50075D451450073DE33D45EC7481142C56
            4B86D848FEEE39FE83F1AA9E14F0D431DB43A8DD2979DF0F12E7010763EE7BD3
            7E20444D9D9CBCE16465FCC7FF005ABA2D22459747B374C60C29D3B702802B78
            9E530F872F581C12817F3207F5AC7F00DBA0B1BAB8C0DED27979C76001FEB5A1
            E326DBE1B9C7F79907FE3C0FF4A83C0A9B74173FDE9D8FE807F4A006F8DB4C4B
            8D2FEDAAA04D01192072549C63F5CFE757FC2F7AD7DA0DBBB925D018D89F6E9F
            A6297C513C70787AEFCC206F5D8A3D49AA1E0452BA1484F469D88FA616802ADF
            EA9787C6F0D9DBDC3A421915D01E08C6E3FA1AEBEB86D37FD2BE21CF27511C92
            7E80AD77340192FE22B58F5CFECB31CC672400C00DB9233EB5AD5C369FFE95F1
            12673C88E493F4056BB9A00CBD57C4169A45CC50DCACACD28C8D8A0E3B73CD6A
            570DE23FF4BF1B5941D94C487FEFAC9FE75DCD0015923C4BA73EA91D84529924
            73B7728F901F4CFF00866A0F185F4965A0BF944869DC45B81E80824FE831F8D6
            0F84BC37F6BF2B53B891911240D12AFF001153D4FB6462803BBACA56D175D925
            40B6B732A655B2A378038E0F5C7B8AD19E3696DE48D2431B3A950E3AA923AD79
            A6A7A65E78635289D26E7EF43328C671D411FCC7BD007A1E9FA4D9E96AE2CA11
            109082DF3139C74EA6AE5416571F6BB0B7B82BB4CB1ABE3D323353D00675CB6E
            9DBD07151529258927A9A4AEA4ACAC71B77770A28A298828A28A0028A28A0028
            A28A00CBF1ADD2B7872DADD9771BBBEB787E989039FD10D729E3D9BC9F06DF60
            E0B8441F8B0CFE99AE8BC4C04971A3C479FF004C3263FDD8A4E7F322B8DF8A33
            18FC331460F325CA823D82B1FE78AD28C17B6A715DEFF8FF00C03A232BC6E71D
            F0D6113F8F74D0DD14BBFE48C47EB5F405788FC20B35B9F19BCA58836D68F280
            07524AA63F273F957B8B7976B6D2DDDE37956F021924623A281927F215D7994B
            F7D6F232716DE8737AA4DF6ED712D41CC364A25907ACADF741FA2E4E3FDA53DA
            B93F887E233A4E982C6D9CADD5D03920F289DCFE3D3F3ADFD1B7FF006735F5D0
            11CD78ED77302784DDC85E7B2AED5FF80D78CF897566D6F5EB9BB24EC2DB6307
            B20E056783A0AB57D7689AFC31B1BBF0D7C2CBE21D78CF769BECACF0F2023876
            FE15FA7049FA7BD7D0AB73118F19DA71D315C7F817411E1FF0ADADBBA6DB8947
            9D3FAEF6EC7E8303F0AE8AA31B53DBD4F25B1929B5B0572F6C9F65D4751B2E8B
            1CFE6C63FD8906EFFD0B78FC2BA8AE77515F2BC54AC3FE5E2CB9FF00B66FFF00
            DB6B9DABC5A1D27691E59F146DC45E24865518F3ADD493EA4123F962BB5F8397
            465F0B5CC0C73E4DD1C7B02AA7F9E6B9AF8B2804BA5BF76128FCB6FF008D69FC
            139098B598FB2B42C3F1DFFE15EA7C7804FB7F9D8753767A9523A2C88C8E032B
            0C107B8A5A2BCB32396D391ECE33A74C4F9D698404F578FF0081FF00103F3047
            6A92FB4FB4D4ED8C17B0473C47F85C74F71E87DC56B6A7A58BF11C91C861BA8B
            3E5CA06783D55877538191EC3041AC692F5EC1847AAC3F6539C09B3BA17FA3F6
            FA360FD6A27097373C0E884D3566717A9FC3692DA7FB67876F6482643B963762
            083FECB8E47E3F9D269FF1275EF0E5D2D9789AC9AE147F190164C7A83F7587F9
            CD7A00218020820F422AB5FE9D69A9DB182F6DE39A33D9C671EE0F63EE2BA218
            E6D72D75CCBF11CA9A668E85E26D2FC476FE6E9B74B23019688F0E9F55EBF8F4
            AD5AF9DBC45A3DCF843C403ECB3488BFEB6DA65386033EA3B8E9FF00EBAF64F0
            278A7FE129D044D2E16F203E5CEA3B9C70C3D8FF00306B7AF865182AB4DDE2CC
            251B1D2D14515C64851451400514514005145140176C9B31119E86ACD52B26F9
            D97D466AED73CD5A47553778915CDC2DADACD7120252242EC17AE00CF159B67E
            29D26F000B74B139192B37C98FC4F1FAD695CC0B756B2C1212125428D8EB8231
            5C2EBBE0F1A5D8CB7905D178E323E475C1C120751D7AFA0A82CEF9583286520A
            919047434B5E57A743ABAC06E74D5BAF2F7EC63012724007903EB5A76BE37D4E
            D9F6DD2473807E6DCBB1BE9C703F2A00F41A2B2341F1045AEC729485E278B1BD
            4904739C60FE1E95AF4019FAE69A355D2A6B6E0391BA327B30E9FE1F8D729A0F
            88DB4257D3B538650B1B1DA40E53D411E9DEBBBAA77DA4D8EA58FB65B24A4701
            B9047E239A00E2FC4FE248F598E2B4B2493CB0FB98B0C163D0003F1AEBBC3F60
            DA6E8B6F04831263738F4279C7E1D2A1B6D3343D2A512C496D1483A33C9923E9
            B8F15624D7F4B8FEF6A16C7FDD9037F2A00E5F57D1758D635E96262E6D51FE49
            1F84553CF03BFA7E15D7E9F63169B6315AC39D918C64F527B9FCE8B5D42DAF6D
            5AE2DA51244B905803DBAD64A78CF4B7242B4DC77298FEB4018BE13FDF78B6FA
            5FF6646FCDC57735E6F1E8DE20B29DE6B6B79E276C82D1B0C919CF635655BC5A
            A723ED7F88068027F098F3BC597D2FFB3237E6E2BB8AF34B1B5F1069B33CB696
            B731C920C31F243679CF715A1FDAFE2B8C80D6D3B7FDBAE73F90A00737FA47C4
            803FBB20FF00C753FF00AD5DCD709E1EB5D466F152DEDF5A4F196DECCED132AE
            4A91DC5777401CFF008D6D64B9D00B4433E4C82561DF1820FF003CFE1599E12F
            125ADB58AD85EB884A31F2DCFDD209CE09EDC93CF4AEC880C0860083C107BD72
            5AA78152691A5D36658B3FF2CA4CED1F42391F4C1A00E87FB634DFFA085A7FDF
            E5FF001AE27C61ACC1AB5DC115A1DF1C0186F1FC44E3A7B714FF00F840B52FF9
            EF67FF007DB7FF00135B7A1783E2D3665B9BC759E75E5140F910FAFB9FE5401B
            9A6C2F6DA5DA4328C3C70A230CE7042806A790E2363E80D3A992FF00A97FF74D
            35B89EC66514515D471851451400514514005145140051451401CFEB47CCF116
            9D1F68EDE790FD731A8FD0B579FF00C59988874C841E0B48E47D3681FCCD77B7
            87CCF15CFE90D9C407D59E427F455AF31F8A9396D7AD21EC96E1BF12C7FC0575
            60E37C545765FA7FC1375A40DEF81364ADA9EA97AD90C91242BEFB8EE3FF00A0
            0AF44F1DCA4E80962BBF76A1731DB650E30B9DEF9F6288E3F1AE3BE0A45E4681
            7572463CCBB2BF8055FF00E28D74BE2B659FC57A3C024F9ADEDEE2E193D32511
            4FEAFF00AD4E31DF14E5DBF45FE6383BAB1CFF008DB50FECEF0ADDB2901E55F2
            573DF775FD335E57E0FD306B1E2CD3ACD8651A60CE3D557E661F9035D9FC55BA
            2B67656C39566676F63C6D3FFA1553F8396426F135D5D30C8B7B6207B33103F9
            035D9825ECB072A9D5DFFC89A8F53DA28A28AF2CC42B9FD5FF00E467B1FF00AF
            39FF00F438ABA0AE7B533BFC5310FF009E76449FF8138FFE229F47E85D3F891E
            7BF16BAE93EDE77FEC957FE09038D68F63E40FFD19595F162606F74E87BAC6EF
            F9903FA56EFC15876E9BAA4DFDF9913F204FFECD5E9474CBD2FEB72AA6ECF4CA
            28A2BCC320A4650CA55802A46083D0D2D14018B3F87228C9934A94D93F5F2C0D
            D0B7D53B7FC0707EB55629A559DADAEE210DCA8DC5436E575E9B94F71F5C11DC
            74CF49587E24511DC69772A30CB726163FEC3A3647FDF4A87F0A24B9D6BB9A53
            9B4EC713F146C167D021BB03F796F2E33FECB0C1FD42D637C1FD41EDFC552DA6
            7F777501C8FF00697907F2DDF9D751F10C81E0EBACF52C98FF00BE85713F0B03
            1F1E5991D047213F4D86BD2C1BE6C1493E97FF0032AA6E7BCD14515E69885145
            1400514514005145140135A1C5C01EA08AD0ACC80E274C7AD69D615773A296C1
            58BE2D78C7876E63791119C0D819802C430381EB5B55E7B2F86755D5358BA2E1
            C46256513CE48C8078C0EA463A76ACCD4A9A3F896E345B19A082247691F78672
            70BC60F1F977A7476BADF8A26591CC92A03C4927CB1AF638EDF90CD759A6783B
            4FB0C3CEBF6B9477907CA3E8BD3F3CD6F0000000C01D00A00C6F0E787FFB0A19
            774DE6CB36DDF81855C6781F99E7F4ADAA28A002B8697C13A9CF2B192F21284F
            19766E3F2AEE6B9DF1178A3FB2A6169691896E8819CF44CF4E3B9A00CA4F87F2
            9FF597E8BFEEC64FF515613E1FC43FD65FBB7FBB181FD4D6F69F7D2FF6125DEA
            48D148A85A50CBB48C67B7D2B966F17EAF7B348FA7DA0F263E4AAC65C81FED1A
            00EAB48D1E2D22C5ED6291E44662C4BE33C803B7D2B397C11A528E44EDF593FF
            00AD56BC3DAEA6B968CC50473C44091474E7A11ED5AF40051451400514514005
            145140051451400514514005325FF52FFEE9A7D35C6E461EA29ADC4F632E8A28
            AEA38C28A28A0028A28A0028A28A0028A28A00E650F99AF6AF27F7668E21F411
            21FE6E6BC8FE224E66F18DD2E72224441FF7C83FCCD7AC69A7CC37B37FCF4BD9
            FF00257283F45AF17F15CE6E3C55A939ED70EA3E80E3FA577E5D1BE264FB2B7E
            4743D208F63F85B6FE4780ECDB18333C8E7FEFB23FA55CBF22E3C65712E0EE86
            C208B3EE5E563FA6DAB1E0CB7FB2F837488F183F654723FDE1BBFAD540777887
            573FDD9224FF00C86A7FF66AE4C44AF2A92FEB7229FC479A7C519D9B5C86307E
            4585463D0824FF002615D1FC15B7DB63AADC63979238F3F404FF00ECD5C5FC43
            919BC637684FCA81303D328B5E8FF056D5A5F08DE48A40FF004E6539F68D3FC6
            BD2A9EE6023E697F984936DD8EEE8ABAB64B8F99893ED51BD930E50EEF6E95E3
            73C4974E48AD5CD337DA3C47A94DDA2115B0FF0080A973FF00A37F4AE9882A70
            4608F5AE4F476F3EC9AEBFE7EE592E01FF00659895FF00C776D54DDA0FFAFEB6
            2A92F78F31F89B7227F150881FF510221FA9CB7FECC2BD07E11DA7D9FC162523
            FE3E6E1E407D8617FF006535E47E28BDFED0F136A170082A662AA47755E07E80
            57BE784AC3FB33C27A65A91864B752C3D188DC7F526BD6C4AF6785853F414D9A
            37D791E9F6171793EEF2ADE2695F68C9DAA0938FCAB98D7357D63FB22F2EA374
            D3D2185A4554024949033CB1F947D003F5ADEF10426E3C37A9C23AC9692AFE68
            4562DD44354D0E58874BAB72BFF7D2FF00F5EBCBE6E4B3F31D38A77B9C941F14
            B50D73C51A6D95940967652DD468F9F9E4752C0104F419F61F8D7ABD7CC1A7DD
            369DAADADD0CEEB79924FF00BE581FE95F4F23AC88AE8432B0C823B8AEFC7D18
            D271E456466D0B587E246F32E34AB71D5AE4CA7FDD446E7F32BF9D6E573226FE
            D4D51F505E604430DB1FEF2E4167FA31031ECA0F7AF3EFCA9B2A9ABC8E57E28D
            C795E1A8A1046E96E178F6009FE78AC5F83B6866F155C5C11F2C16ADCFBB3003
            F4CD54F89BAB8BDD6E3B289834768B86C7F7DBAFE807EB5DD7C26D0DB4CF0D35
            F4C9B66BF60E33D7CB1C2FE7927F115E9C17B1C0D9EF2FD7FE01551EA7774514
            57986414514500145145003E24F32555CE33574DAC44636E3DF3552D88170B9A
            D1AC6A369E86F4A29AD4A1E43433C79E41618357E9300F5A5A894B98D231E5D8
            28A28A92828A28A0028A28A002B8DD2225BBF1E5FC93005A1DE501F504283F95
            7655C66BB677DA36BC758D3E33246FCB803201C60820763D73401A5E35BCFB36
            84D10386B8709F8753FCB1F8D3FC1B67F65D023765C3CEC643F4E83F419FC6B9
            6B9BBD43C61A84112C215138C2825533D589FF003D2BACF105C5DE95A3429A5A
            12FB9610021621769E40F5E050064F86D445E32D5238B88807E0741F38FF00EB
            D7635CDF843459B4E826B9BC52B713E3E53D557DFDC9AE92800A28A2800A28A2
            800A2B98369AFF00FC249E68790D809B38F3571B09E78CD74F401CA7C43F13DF
            F85744B4BAD322B5927B8BC4B6FF00490C51432B1CFCA41EAA2B8CD53C4DE34D
            06E2CF53D5F56B3FB01BD8D2E2D6D2DD7688C9F9B0CCBBBA0C75CFBD755F172D
            84FF000DF52709BA480C52C67BA1122E48FF008096AE5FC66A355F879733A0FB
            D0C770BED82ADFCB3401EB94552D1EFF00FB5744B1BFDBB7ED56F1CFB476DCA1
            B1FAD5DA0028A28A00CA75DAECBE8714953DDAED9C9F519A82BA93BAB9C72567
            60A28A298828A28A0028A28A0028270327A515475BB8FB2683A85C0EB15B48E3
            F05269A57760303413BB43B595B8F353CE39FF006FE6FEB5E1377335D5ECD31C
            EE96466FCCD7BA5E1FECCF0C4F8EB6D66D8FF80A7FF5ABC5343B7FB678834FB7
            233E75CC687F1602BD2CAED7A953FAEA744F4B23E93B1B7FB2585BDB8E9144A9
            F9002B9F879D735BCFFCFDA0FC3ECF17FF005EBAA8A3F35F6E40FAD72D223C1E
            2FD6A07185220990E3EF029B73F9A11F857972778CBFAEA88A49DEE7907C4104
            78D6FF003DFCB23FEFDAD7A97C0D607C1B78B91B85FB9233C81E5C7FE06BCEFE
            27DAF93E264980E2781589F52091FC80AEAFE035E209759B3693F78CB14A91FA
            81B831FD53F315EB57F7F2F4D744BFC8B5F11EC2CC114B31000EA49A090A0962
            001C927B572BE3A905CA69BA391B92F67F36652A0AB451618839F57318FA66B8
            BF1926A7A77836F6C74D769B4C9426F85C966B655607319CE769C0054E71DB03
            35E3D2A2A6E316ECDFFC31A3763D07C67786CBC39398768BAB82B6D6F9383BDC
            ED047AE012D8FF0064D731ABDD2687E1CB99E3C22DB4188F3D8E30A3F3C5725F
            0F2E756D62DE34BFBA926D374E7CDB249CE242BB783D70AA4E076DD4DF8A5ACE
            CB7B7D2A26F9A43E74B8F41C28FCF27F015D2B0AFDBC70F7BD9DDFF5E9F9937D
            398E27C35A61D6FC4B616246E59A61E67FB8396FD01AFA53A0E2BC9FE0DE85BA
            6BBD6A55E107D9E1CFA9C163F9607E26BD62BA731ABCD53957439A42328742AC
            32A4608AE5343DCBA3DBC2E7325BA9B77FF7A3250FEAB5D6573B7F07F65EA725
            C74B3BC6059BB452E00E7D03607FC0BFDE15E7C97345A45D29599E6DE32F01DD
            2DECDA8693119A195B73C29CBA31EB81DC7D2BA3F0378BF53B7D3D34CD5B47D4
            6436EBB229E38BA81D15B76002077CFF008D757456AF1F295254EA2BDB666AE9
            A641713DF6AC0A5CAADADA1EB02B6E7907A3B0E00FF64673EB8E2B3BC4DAF41E
            1BD1DA73B7CD236411FF0079BB71E82A3D7BC5DA66811B09A512DC8E9046416C
            FBFF0077F1AE2ADBC3DE21F88BAA7DB2E51AD2C7F8249548455F441FC47DFA7B
            D561F0EEAB552B6905F8FA036A0AC8CAF07F86EE3C63E223E71636EADE6DDCA7
            D09E99F527FA9ED5F40C71A4312471A8444015540C00074154342D0ACBC3BA64
            763611ED8D79663F7A46EECC7B9AD1AD31588F6D2D365B1CEDDC28A28AE51051
            451400514F1148D8C2373ED52A59BB7DF217F5A4E496E528B7B22BD5C86ED768
            126411DFD69459263966CD579ADDA2E7AAFAD43719E8525386A5F5915FEEB03F
            434EAAB64B8466F538AB558C959D8DE2EEAEC28A28A450D7758D19E460A8A32C
            CC7000F535E3FA06BFE3ED674E87578358B0F2E67665B5B8B6508006231B9577
            638C75CE3BD7A178F2FA3D3FC07ADCF292A0D9C91A91D7738D8BFAB0AE4B4141
            A3F82ECF78C791662471EFB771FD73401D17C3DF136A1E28D1EF6E3548ED12E2
            DAFA4B5FF450C1182AA9CFCC49EAC7F4AEAEB89F8436CB0FC3AB19B6912DD492
            CF293FC4C64619FF00BE556BB6A002B12E7C5DA4DB4CD119D9D94E09442467EB
            5A97DE61B0B8F20132F94DB00EBBB0715C8F87BC231CD04CFABDB4AAFBB08A58
            AF18EBC5006CA78C3467EB74C9FEF46DFD054C7C4DA51899A3BD88B004807232
            7F1AA72781F4A7FBBE7C7FEEC9FE20D66EA7E0AB4B3B0B8B98EEA6FDD46CE158
            039C0E9DA8035BC3FE245D4ED647BC92DA0915F6AAEFC646073826B711D6450C
            8C194F420E41AF3BD23C252EAFA72DDA5CA47B9880AC84F4F7AEBFC3BA65DE91
            62D6B732C52206DD194278CF51C8F5FE668035E8AE67C53A96AB63736E9A6EED
            B2A1CED8B79C83F43EA2B1041E2BBF1CB5DA83D773F943F2E2803BF665452CEC
            140EE4E2A9CDAD69B6F9F36FADC11D84809FC8579E69DA3DEEBB78F1A4A1D633
            F3CCEC4A8FA7AE6BA683C0168ABFE91773BB7FB0028FD734017A6F1969117DD9
            DE53FEC467FAE2B6D1C491ABA9CAB0047D2B87D5BC267478FEDD66C2E628B978
            A65078F5E3A8FCABABD16FE2D4B4A86785422E36941FC04718A005D6B4D1AC68
            77FA73388C5DDBC906FDBBB66E52338EF8CE6BC125916E201A6E9DAF6BDAE59C
            71AC423B2D38411BA000152ECC48E38C943F8D7D135E4BE1183FB2353F10683B
            1A35B0BE668558F2217E53F419FC6803B0F871ADC5ACF84A18E2B49AD0E9ADFD
            9ED14B2076063551CB00327046781CE6BAAAF36F024874DF88DE22D2F6B7977B
            0C7A847CF03076BF1EA59FFF001DAF49A0028A28A00AD791E5038FE1EB54AB55
            9432953D08C565BA9472A7A835BD37A58E7AB1B3B89451456864145145001451
            45001591E2A6FF008A76E23FF9ECD1C3FF007DC8A9FF00B356BD62789DB30E9F
            07FCF6BD41FF007C8693FF0064AA8692B8E3AB303C6D39B7F07EA2E3A98C27FD
            F4C07F5AF35F8776A6F3C79A5440671297FF00BE54B7F4AEE7E26DC187C29B07
            FCB69D13F427FA573FF066DFCEF1E2C98FF516D23FE785FF00D9ABBF05EE60E7
            2F5FC8DE7ABB1EEF1D9ED6562FC839C015CB788D1ADBC6B6B2B3AF977B62D12A
            F7DD13EEFE529FC8D7675CEF8DED1E4D0C5FC0A5A7D364174A0632C801122FE2
            85B8F502BC9A7272959F5D3FAF996A2A2B43CFFE23E86DA9E86B770AE66B225C
            81DD0FDEFCB00FE06B83F02F893FE116F15DADFC85BECC7315C05EF1B753EF83
            86C77DB5ED31BA4F0ABA10F1BA8652390C0D79E7897E1ABCB70F73A198C2B64B
            5BB9C60FFB27A63D8D7A381C54153787ADB1328BBDD1EB1AEE84FABCB6DAA699
            748977144523DE7743346D83838E99201DCBF883C0AC3B6B9176B3433C2D0DC4
            47CBB8B79704A1C743D88239047041AC0F054FE33D02C5F4F9E3B37B5500426E
            642E61E7B6D392319F9491DB0477E82D6D5A179269E792E6EE6C196E24C6E7C7
            4181C003B01C0FCEB86B4230BC7993B6CD14B5208E1B0F0E690FE5AADBDA401A
            46E73EE7EA6BC5B50BABAF13F88DE48E367B8BB9824518EBC9C2AFF215ED3AC6
            990EB9A3CF65237C932F0E39C1EA0FE75E2FFF00132F08F8852452D05EDA4819
            18743FE2A47E60D7A59572BE795EF3F3FEBBEE4CCFA2FC3FE1A1A0787ACB4F89
            959A0880908E8CE79623EAC4D59208383C1A8BC29E28B2F1668D1DF59B00F802
            78739689FB83EDE87B8AD0BC8FA483E86BCD729F3B5537227056BA2A53648D26
            8DA39515D1C1565619047A114EA2A8C4C57F0C44A7FD0EFEFECD3FE79C6E8EA3
            E82456C0F615CD6B90C2AE6D63D46FEEB1C48CD30419F41E585CFF002AD8F107
            883EF5A593FB49203FA0FF001ACBD13486D52E72F916E87E76F5F615C75B1529
            4BD9D2DFBFFC13E8F01808D2A7F5AC5FC2B64FF5FD1127837C21A6425EF9F4F8
            58F0B119177E31D48DD9FCFEB5D26BDAEDB787EC0DC5C65998ED8E253CBB7F87
            A9AD18D1628D51142AA8C003A015CC6AAF1C7E3FD35EF5C25BC76923C4CE7081
            C6771C9E3EEE3F4AF430F17269546E5657F53C4C4D655EAB9A565D91046DAC6B
            D66F7B73ACDB699603F86D5D58AFFBD26783C8EFF80A87EC90C443DBF8E58483
            91E6DCA48BF916AC1693EC9A2EA5A7A4A8D693C71DE23861B4E782A3DF78031F
            EC9AB725E349796234D96DA69868AB13465836E3FC4839FBF8E80E7E95E9FB36
            B6D17A2FC74313A0B4F10DFE9935BC3AFA40F6D71858750B76CC6C4F4DDE99F5
            E07E1CD75F1DABC833F747BD71720D1E5F861726DE57369143850482EB31390A
            DC75DC467D8F1C5765E1D2CDE19D2CB9258D9C4493D73B0579B8AB25CD156776
            8B8413DCB49671AFDE258D48B046872A83352515C0E4D9B28A5D028A28A45051
            4514008005180001ED4B45140051451401C57C58BDB6B7F061B3BAB4B8BB5D46
            E62B658ADE511B96CEF1862AC3AA63A1EB5E67A7F9D7D731E897BE22D734A6BE
            FF0046586FB4D12AB17F942090302739C67681F4AEDFC78E352F891E1BD37636
            DB2865BE90E78393B578F664FD6AA6A11AEA9F11FC2FA6316D90C8F7D26DEC50
            653F0DCB8FC6803D1F44D31746D0EC34D57120B4B7487785DBBF6A805B1DB38C
            FE357A8A280239E78EDA079A67091A0DCCC7B0AE32EBC65A85EDC345A45A9DA3
            A1D85DCFBE3A0FD6AF78F2E9A2D360B6438F3E4CB01DC2F6FCC8ADCD2B4C874A
            B18EDE15008037B63976EE4D007127C5DAE59CFB2E82EF1C98E58769FE86BA4D
            13C4B6BAE836B3C4B1CE4731B7CCAE3BE3FC2B374C02FF00C7D7D31F99610C39
            E9C613FC6AB78AAC63D1755B4D42C9447BDB7145E006523A7D73401DB430456F
            108E08D228C745450A07E02A4A28A002AAEA41DB4BBB1167CC30B85C7AED38AB
            5450072FE039626D2668D71E6ACA4B8EF82060FE86BA8AE2F54F0E6A1A5EA0D7
            DA116D8C72510FCCBEA307A8AACDAAF8AE7010417299EE2DB6FEA450074FE24D
            461B0D1AE04AC37CC8D1C69DD8918FC866A9F81E178B402CE08124CCEB9F4C01
            FCC1AC9B0F08DFEA1742E35A9582F52A5F73B7B67B0AED2348EDE38E28C2A201
            B51471D07414012579778BADAFF41F88B26B161A36A3A85B5FD8AA4DF6488C9F
            BE56C0CE3A7CA17F335EA3581E3AB1BCD47C13AB5B69D34B15D340590C44866D
            A431418E7E600AFF00C0A803CC20F10358FC44D2B58F1145068B05BC5245246F
            72259983236D0D1A02CBCB03F3003DEBDB410464720D78BF87BC33A16ADE0A57
            B3B28925BCB728F337CCEB2743C9E461876AEEBE17EB0FAB7826DA2B8C8BBD3D
            8D8CE08C61A3E07D7E52B93EB9A00EBE8A28A002A9DE4782241DF835729AE81D
            0A9E86AA2ECEE4CE3CCAC65D14ACA55883D471495D2720514514005145140056
            0EBCDBF59D261FEE89A7FF00BE5427FED4ADEAE77516F33C54ABFF003C2CB3F4
            F31FFF00B5D3D937E45D3F891C27C58B82B65A741D9E4773FF0001007FECD537
            C0DB7DDAB6A5727F8238E307FDE24FFECB591F15AE376AF656FD9202FF009B11
            FF00B2D751F05EDF66817F73D0C972133FEEA83FFB357A515CB97DBBFF009973
            76773D728A642FE644ADDFBD3EBC17A1BA77385D4AC1BC2D3BB6D274595CB23A
            AFFC79B13CA301D23CF46E83A1C0C1332BABA06460CA464107208AECC80460F2
            2B04F81F41F39E48ACE4B72FC95B6BA9605FC151801F80AD5CA33D65B88C5BAB
            CB6B184CD773C70C63F8A460A3F5AE0BC41E3C975363A5F86219E79A6F97CD8D
            0976F508A39FC7FF00D75EB30F827C3D11767D2ADEE59F196BBCDC37E0642C47
            E15774AB3D2EC85C47A4DA5ADB2AC9B2516F12A02C003CE072466B5A5528527C
            CD393E97D17EA1CB26B43CDBC2BA76B3E18D22D6DBC4108861B8722DCEEDC626
            3FC0F8E06EE48E7D41E702B3BE27C503E910B0B6F32E836E122A9CC718C06248
            ED9651CF735EC9776905FDA4B6B7712CB04ABB5D186411589A478462D3750BB9
            EE2E5AFA39A016D124E9931C5925958E7E7DD91924670A339EB570C447DAFB77
            A3ECBAFF005D44D6963C97E0A58DD5C78C64B9865963B6B6818CE173B642DC2A
            37EAC3FDCAF799103A153DC5637873C25A5F8556F174A89905D4BE63EE6CEDE3
            8507FBA39C672793CD6DD4E3710ABD5E78EC118D959992410483D45731E20F10
            7DEB4B27F69241FC87F8D3BC4BE24596696DB4E7CA670F28EFEA17DBDFF2AE6A
            DADE4BBB848615DCEE700579D88C4F37B94CF732CCA543F7F89E9B27F9B26D37
            4F9752BB5862E07566ECA3D6BBEB4B58ACAD92085708A3F3F7350697A6C7A65A
            0893973CBBFF0078D5DAE8C350F64AEF73CDCD33178B9F2C7E05B79F985666BB
            A1C5ADDAA2191A0B885B7C13A7DE8DBFC3FC2B4E8AEB8C9C5F34773CA3968B57
            D7F486106ABA5BDFC6381736437123DD7D7F2A9A5F16CDB3FD1FC3FACBC87A09
            2DF62FE7CFF2AE8E9F10DD320C679AD1D583D5C06B5398B7F0D6B3E25B9827F1
            33A5B5844FE647A7C67258FF00B67FFD67923E5CD7754515C756B4AADAFA25B2
            475A49051451590C28A28A0028A28A0028A28A0028A2B94F897ADBE89E09BC36
            F9FB5DE62CEDC0CE4BC99070474217711EE050079E5E7889AF7E236A5AC682B0
            6B704B0C7045125C08E645551B8246E033FCC09F9411CF5AE97E1FDAEA1A978D
            F56D7AFF004EBED3A34B48ED208AEE068CB82773119EB829DBFBC2B0359F0C68
            7A478209BFB286492CEDB0255F95DA4EDF30E7963DFD6BD1BC01657961E04D22
            0D425925B9100763212594312CAA73CFCA085C76C5007454514500733E38D3E4
            BAD322B8894B1B662580FEE9EA7F4156740D7BFB434696E2E10ABDB2E246ECD8
            19C8A961F14E933CAD11B911B0257F78300FE3D2A63A6D9CFA4CF6B60C91433E
            72D1608C9EB401CEF82EE2DE15BEBCBBB8863795C0F9DC03DC93CFD7F4A8F55B
            B5F14F886D2CACFE7B78492CF8E08E371FA606054C3E1F2EEE7513B7D3C9E7FF
            0042AE8B49D12D34684A5B292EDF7A46E59A803428A28A0028A28A002B0AFF00
            C5FA6593322C8D7120E36C4323F3E9567C4B23C5E1DBC68C90DB31C7A1201FD0
            9AE6FC2BE1AB3D42C1AEEF0349B98AAA038031DF8EF400DB9F1CDF5C314B1B54
            8F3D33976FF0AA9A45E5DDFF0088ED9F51BF31BC4D90250467FD903A0CD69787
            E77D035E9B47B920C72B662723BF6FCC7EB5BDAFE8D0EAF60E0A0FB4229313E3
            907D3E86803568AC1F086AAFA9693B2662D35B9D8C4F523B1FE9F856F50078DC
            37967E02F136B9A3EA328B6B1327DB6C8953828FD554724E0F1FF013567E1B6B
            30C9F103556B457834DD5A013446E17CB334C8707CBC9F9860B938F4E718ADFF
            008B30496DE183ABD859593DE5B48824BA96D63965861C9C94DC0F2188FA649E
            3AD71979E0E8BFB08EB3A55EDCDE6B2A52F61BE9642EF232F23AFA8E9EF8A00F
            6FA2B27C2DAFC3E27F0E596AB000A278F2E83F81C70CBF8107EBD6B5A800A28A
            2802ADDC1B8798BD475AA75AD542E60F2DB728F94FE95B53974661521D510514
            515A98851451400572375A8C31F8A75252259265486211431B48C4052DD00381
            FBC3C9E2BAEA29AB59A7D4A8CB95DCF19F14F85BC41E27F13B3DB6953C512C68
            81A72AA00C6739CE0F5ED9FCF8AF46F04787A6F0C78723B1B978DE7F31A47319
            25727EA07602BA0A2B79E2653A6A95AC909C9B2D59C801319EFC8AB9542CD733
            E7D066AFD79F53E23A293F7428A29B2489146D248C151016663D001D4D41A6E6
            5F88B581A3E9ACEA47DA24F9621EFEBF41FE1EB547C0CCCFA34ECE4B335CB124
            9E49DAB5C86BBAB3EB1A93CE72221F2C4A7B2FF89EB5D9782136E819FEF4AC7F
            90FE95CD0A9CF57C8F731184586C0FBDF136AFFE474345149D2BA4F0C5AE1FC5
            3E29FB4EFB0D3DFF0073D25954FDFF00F647B7BF7FA754F1478A7ED5BEC74F7F
            DCF496507FD67B0F6F7EFF004EBCA571D6AD7F7627D165B9672DAB565AF45FAB
            000B1000249E0015DD687A19D2ADC493A62E655CB67F847A7F8D43E10F0E8509
            A95E27CC79811BB7FB47FA7E7E95D6C91ACABB5BFF00D55A6169F2BE791CF9C6
            37DADE8527A75F3F23328A749198DCAB75A6D7A67CC05145140053E27F2E40DE
            94CA28DC13B1A8AEAEB953914EACB47643952454E97AE3EF00DFA560E9BE8742
            AABA9768A6472ACAB953F853EB3D8D53B851451400514514005145140057937C
            4BD5D13C75A48B98E4B8D374988DCCFF006602468A5638532283F281F21048FE
            2E335E8DE23D76DFC35E1FBCD56E86E8EDA3DC1338DEC7855CE0E324819ED9AF
            23B1F07C773A3B6B9AC5DDC5A6B333BDF497B0B94684B7CDD0703039F6E40A00
            B3777F65E3DD7B43D134D985C59CB3FDA6F480C311C633B5BB8CF23EA457B357
            05F096196F3C36758D42D6D7EDB71348B1DE2DB471CD3C2081972A3249656EBD
            700F3D6BBDA002908C820F434B58BABF89EDB46BE8EDA68DDF726E6298CAF3C7
            1F9D0057BCF04E99719307996EDFEC3647E46B166F076ABA7B9974EB91211D36
            318DFF00C3F5AEB2C75DD3B51C0B6BA42E7F818ED6FC8D6850079DC3E28D734E
            9CC171FBC75E0C7347CFE6306BB2D0B539357D316EA48444598800364103BFE7
            9FCAB0BC72CB6D369F73110B728E4A91D48183FCFF009D75AA30A38C77C5003A
            8A28A0028A28A0086EEDD2EED26B793EECA850FE22B91F0B6A4BA35C5CE93A8B
            0848909566385CF719F7C022BB4AC7D6FC376BAD61DC98A75181228EA3D08EF4
            014FC4FA52EB364977A7324B7101E0C6C0EE1E991DC75158CDE38BC5B036ED6E
            A2E42EC33163F4CEDC75FC6BA7D03446D0EDA584DCF9EAEFBC7C9B769C60F73E
            D536A171A5D8B09EF8DBA49D416505CFD3BD0063F81B4E9AD2CA7B8994A7DA0A
            EC52307033CFE39FD2BA8AE3350F1DB3131E996FC9E0492F27F051FE7DABAAD3
            E696E34F825B88CC733202EA7B1A0092EADA1BDB49ADAE63124132347221E8CA
            4608FC8D791E85709E11BFD53C35AB5CAC71E9EC66B59A6600496EC7239EE467
            9C772476AF61AE37E2268DA4368F37882FB424D56F34E8818D0BB2E577027763
            8655C962083C03EA68039DF8557E1FC53AEDBE911CD268137FA424C63658E39F
            2A19549E39073EB8515EA95E21FD85AB78B3448B52B8D5C4722C625D36D2C479
            56F6A472A001DC74CF51EA715E97E05F148F15787D2699447A85BB7917B0F429
            28EA71D81EA3F11D8D007494514500148C030208C834B4500674F0185BD54F43
            5156A3A8752AC383542681A13CF2BD8D6F09DF46735485B54454514568661451
            450014AAA5D80519268552EC154649AD082110A63A93D4D44A5CA5C21CCC2087
            C94E7EF1EB52D14560DDF53A52B2B20AE37C6DAD7034C81BD1A723F30BFD7F2A
            E9758BF3A66957176177B46A3683D3248033ED935E552C8F34AF248C59DC9666
            3D4935CB88A965CABA9EDE4F845527EDA5B2DBD7FE00DAF4BF08FF00C8B369FF
            0003FF00D0DABCD2BD2FC27F2F866D33C0C39FFC7DAB2C37C6CEECEFFDDE3EBF
            A3363A570DE28F147DAB7D8E9EFF00B8E924A3FE5A7B0F6FE7F4EA78A3C53F6B
            DF63A7BE20E924A3FE5A7B0F6FE7F4EBCAD556AD7F7626596E5BCB6AD596BD17
            EAC2BA4F0A7874EA330BCBB4FF00458CFCAADFF2D187F41FFD6F5AA3E1ED0A4D
            6AF30D95B68CE657FE83DCFE95E9714490449144A151005551D00A5429737BCF
            634CD31FEC97B1A6FDE7BF97FC11F45145769F3043731092227BA8C8359F5A37
            0E1226C9E48C0159D5BD3BD8E7AB6B8514515A1905145140051451400A18A9CA
            920FB5598AF0E409071EA2AAD4B040663E8A3A9A99256D4A83927A1A0082320E
            452D35542285518029D5CC75851451400514572BE3FF001549E1AD1922B05326
            AF7EDE458C6003F3F7720F65C8FC48CF0680396F8B37CE35ED0ED7548668FC3D
            1B8B89EE044591E6F982A12071800F1DC31E38AA1E21BE4F144FA6F86F45BA49
            1B5570669A260C23817963D7AF078EF823BD565D0B55F06E8F2DEE9BAC875F28
            BEA1697C3CCB6B9247CFC1E84E31EA7A66BB8F877A3E8EFA5C3E25B2D0934ABD
            D4626F32357720297FE10780ADB430000E08A00EB6D2D21B0B382D2D50470411
            AC51A024ED5518039F61535145001552F74BB3D4571776D1CBDB711F30FA1EB5
            4BC49A9DD69760B2D9C06472FF00336D2CAAA3AE7159FA6F8E6D2E3097D1B5BB
            FF00787CC87FA8A0082FFC0513E5B4FB9319FEE4BC8FCC723F5AC89AEBC41E1B
            658E59A458CF0A588910FD09E95E850CF15CC4248244910F464391595E2DF287
            872E7CD00FDDD9EBBB2318A00E774CD2B53D7F568AF755590431E0E645DBB80E
            4051E9EF5DDD657866579BC3B66D2125B66DE7D01207E82B56800A28A2800A28
            A2800AC8D4BC4DA769995926F3651FF2CE2F98FE3D855FBEB517B6335B162BE6
            A15DC3B1F5AE574DF018187D4A7DDFF4CE2E9F89FF000A00CFD4BC6D7D7794B4
            02D633DD7973F8F6FC2AD693E0E9AFD45DEAD348BE67CDB33976F724F4A778A6
            D2DB4CBCD29638123B35725C28EB82B9CFAF15DAAB0650CA41046411DE80315B
            C21A3B43E58B520FF7848D9FE758FA6493F86FC4A34A925692D2E31E5EEED9E8
            7F31835D84922431B492BAA228CB331C002B86FB4FFC245E36B796D8130C0CA4
            311FC28739FC49FD450077948CAAEA55806523041190452D1401E4B6F687C0DE
            309340932349D44B4FA639CE2339F9A2C9F4FA9EDDDAA183558B41F8AB647499
            05C3EAAC2DB50B38893B79E2538E015EA73D81F526BD1FC51E16B0F16E98B65A
            8F9C82391658A681B6C9130EEA4823A64720F5F5C11E511588975BD4BC2BA047
            FD8B65687CBBEB8739BDBE19EBB8F446C0381C60E7A362803DC28AF2BF0AEB32
            7807574F0FEAB2BBE8976FFF0012FBB7391039EB1B9EC0FAFAF3D09DBEA94005
            1451400521008C11914B4500529ED4AE5A3E47A7A556AD6A826B659391F2B7F3
            AD6353A3319D2EA8A14753C539E368DB0C31562D213BBCC61C0E95A3924AE64A
            2DBB12DB41E50DCDF78FE953D14573B77776752492B20A28A290CABA9DAFDB74
            CB9B70016923655CF4DD8E3F5C5792D7B257946B56BF62D66EE00A1156425547
            653C8FD08AE4C52D99F4191D4D674FE7FD7E052AD9B9D7E4FEC4B7D32D4948D5
            3F7CFD0B92738FA73F8FF3C6A2B9949AD8F76A5285469C95EDA855CD2B4C9B56
            BE4B6838CF2CD8E117B93505B5B4B7972905BA17964385515E99A26910E89602
            25DA656E6593FBC7FC076FFEBD694A973BF238F30C72C2C34F89EDFE65AB0B08
            34DB34B6B65DA8BDCF563DC9F7A9D9820CB1007BD432DDAAF09F31FD2A9BBB48
            72C726BD38D33E2EA56BB6DEACB525E81C4633EE6A17BA95FF008B03DAA1A2B6
            5048C1CE4C524B1C9249F7A4A28AA2028A28A0028A28A0028A500B1C0049F6AB
            70DA63E697AFF76A6524B72A3172D88ADED8C8773F0BFCEAF0014600C01452D6
            129391D318A8A0A28A2A4A0A28A2800AF18D0B5787C4FE38D4756D55C41A8C4C
            6DAD2C25055EDE35CE783FC5D738E84B7AE06AF8B75B97C71ACC9E1BD26464D2
            2D5BFE2657687FD6B0FF009649ED91C9EE7D87CDCDDCE8D1DAEBFA6787B59075
            4B4BC7586C6E636D97D643381F301F322E4F0D9031C6318A00DC96D1BC7BE2C1
            A144DFF127D39966D49C123CC6CFCB1023E873F43DC0CFAC471A451AC71AAA22
            80AAAA30001D001595E19F0D58F853481A7E9E6564F31A5792660CF23B756620
            004E001D3A015AF400532491218DA49182A28CB313C014FAE63C653CB2AD9E99
            01C3DDC983F404003F33FA500473F8F6D1272915ACB2C60E37EE0B9F702A73A4
            68BE27B4FB55B2989C9C168C6D20FA30E9FE7AD5B4F0C6950E9C6DDEDE36017E
            69987CFEE73DAB17E1F87FF4EC67CAF931F5E68029CDE1CD6B4398CDA74AF2AF
            F7A13827EABDFF005A67D87C41E22B88E2BF13A448725A58FCB55F7C6064D74B
            A4F89E1D4F56B8B309B02E4C2DFDF03AE7DFBFD2B768022B6B74B4B68A088612
            350ABF4152D1450014514500145145001451450050D67498B58D3DADE43B5BEF
            23E33B5BD6B928DFC4FA12FD9638649A25FB8563F3401EC4723E86BBCA6B32A2
            16760AAA32493800500702DA6F88BC4328179E647103FF002D46C55FF80FFF00
            5ABA5B2B2D3BC2760CF34CA19BEFCAFF0079CFA01FD2B3F58F1B4306E874C513
            49D0CADF707D3D7F97D6B36C7C39A96BF38BBD5659238DB9CBFDF61EC3B0FF00
            38A00BC9E31B9BFD5E1874EB3678377CE319761EBE82BAFAA36B6763A259B794
            B1C1128CBBB1EBEE4D55D37C4D65AA6A125A4058151946618127AE280362B89F
            1EF83E7D48C5AF682445AED8AE54638BA8C758DBDFAE3F2EE08EDA8A00F19D47
            C4FE1FD73C1D249AB3F961C147B6EB34728ECA3D41EFD3D7BD773F0D24D71FC1
            D02F88A19239E2731C0665DB2BC200DA5C6786EA39C1C019F53A09E0AF0FA788
            5F5C5D2E0FED276DE663923771F305CED0DC750339C9EF5BB400514514011CF3
            C56B6F24F3C89143129777738555032493D80154743F11697E24B3375A3DE477
            5086DAC541054FA152011F88AF3DF146AEFF00103596D0B4C958683652037F72
            8702E5C722353DC03DFD79EC098AF3C3536937ABAC784E54D3F508570D17482E
            107F0BAF4FC7F1E0F2003D668AE73C0BE2D5F19787FEDFF6636F3452B41326E0
            CBBC004953DD4861FAF5EA7A3A004650C30C011EF4B451400514514005145140
            05701E39B5F27588E755C2CF18CB7AB0E0FE9B6BBFAE5FC776A24D2E0B800968
            65C64740AC39FD40AC6BC6F067A195D5F67898F9E9FD7CCE0E9511A475440599
            8E001D49A4AEBBC39A27D9905DDCAFEF987C8A7F807AFD6B928D27565647D2E3
            B190C252E796FD1772E681A4FF00644264620DCC8B876FEE8F415AACCCC7E662
            7EA6928AF66108C15A27C1D7AF52BCDCEA3BB614514559885145140051451400
            514AAA58E14127DAAC259B9FBE428FCCD2724B71A8B7B15AA68AD5E4E48DABEF
            57238123FBA39F53D6A4AC9D4EC6D1A5DC647124430A3F1A7D145657B9B2560A
            2B87F1778EEE2CB517D03C376BF6BD6B00C8EE088AD54804331EE7046074E7BF
            4381A2F88B59F056BB141E28D49F50D2B5261FE992938B59CF6E7A21F4E00EA3
            183900F57A28A2800AE5BE234BAF47E109C78662924BB7609218866548883B8A
            0EA5BA0E39E491C8C8EA68A00F18D27C4DE1DD0BC1AB2E98FB962F97C83C4D24
            A7B30F53EBD3038E95D7F807C213D9BBF88BC4037EB97ABC230E2D233D114763
            8EA7F0F527725F05F87E6F1047ADBE9701D4636DCB30C8F9B9F98A83B4B73F78
            8CF4E7815B94005145140115CCDF67B6925F2DE428B9088A4B37B015E797BE23
            9EE756B2B9BAB6114968F92AB9191907183DEBD22B3F54D12CF578B6DCC43781
            F2C8BC32FE3FD28033BC43AD427C30F3D9CA1C5C622520F4CF5CFA1C66ACF85F
            4EFECED0E15618925FDEBFD4F4FD315C66AFE1ABDD1C9703ED16A0EEDEA0E07F
            BC3B55F9FC71797569F67B6B558AE1FE5DE8C4FF00DF231C1FC4D0058B28D27F
            8893496A079516E6723A676ED3FF008F1AED2B0FC2DA23693605E71FE933E19F
            FD91D856E5001451450014514500145145001451450041793496D672CD144667
            452C230705AB0FC35AF4FAE1BA8AEE01B472A554ECC1E0A93EBFFD7AE8EA091E
            DB4FB667731C10AF24F0A050066E9BE16D3F4DB869D50CB26E250C9CEC1D801F
            D69DACF892CF4752ACDE6DC76890F3F89ED5CF6B1E329AEDCDAE8E8EA18EDF33
            1F3B7FBA3B7F3FA54DA2F8319985CEAE4927E610E793FEF1FE94019E916B1E30
            B9DF237976AA7AE311AFD07735D658E99A7786EC9E5C85DABFBC9E4FBC7FCFA0
            A9353D5ACB41B45F330BC623850004FD07615C5C8FAB78C6ECF96B8810F03388
            E3FA9EE7F5A00EBF42F1045ADF9E11191A26E01EEA7A1FAFB56BD71B6FA46BDE
            1D819EC64B7B88F3B9E20B927F404FE06B7342D7E1D6A1200F2EE107EF223FCC
            7B5006B51451400579EF8F3C4F7779A87FC225E1E7DB793266FAE87FCBAC47B0
            FF006883F8023B9C8D4F1EF8C24D02D61D3B490B36BB7FF2DAC239F2C7791876
            039C67A91E80D61F86F404D0AC583C86E2F6E1BCDBAB9724B4B21E4924F3DCFF
            003EF4016F49D2AD745D362B2B24D91463F163DC9F73585A9B5E78C75B3E18D1
            1CA40983A9DE2F4853FB80F763D31FD03627F11EAF76F770681A08126B17DC29
            ED6E9DE46F4C0CFF003F407B9F097856CFC23A2A58DA132484EF9EE1861A690F
            563E9EC3B0F5EA402DDADBE99E17D0A2823682CB4FB440A1A4708AA33D4B1EE4
            9E49EA4D73CFF16BC1892143AD2E41C716D311F984C5731AA67C79E34D412F8B
            B68BA2CC6DA1B63F2ACB38E1D9B9E707207B63D4E74EFE5D1B43D3F37AB696B6
            B9DA14A00A4FA05039A00EDF4AD734CD72DCCDA55F5BDDC6002DE54818AE7A06
            1D54FB1ABF5E3A9E1ED0F5A2354F0C5E8B0BD8CFCB7360DB7693D99063AF3C71
            9AE8FC2FE39BE87578BC3FE2F48E2BE978B4BD8C622BBF63D95FDBA127180719
            00EFE8A28A0028A28A0086579573E5C79F7CFF004AC9D5ADE5BBD3AE23915896
            438C8EFDBF5ADCA2AB995AD6124D49493DB53CF7C37A279ECB7B72BFBB53FBB5
            3FC47D7E95D65688B685515162455518014600147D9A2FEE0A28F2D28D91AE36
            B54C5D57393D3A2EC8CEA2B43ECB0FF73F5347D961FEE7EA6B5F6A8E3F65233E
            8AD0FB2C3FDCFD4D3960897A20FC79A3DAA0F62CCD00938033522C12B7443F8F
            15A2000303814B52EA94A8AEACA4B64C7EF301F4E6A65B38D7AE5BEB53D150E7
            265AA7142050A30A001ED4B45152585159FAC6BDA6787ED3ED3AB5EC36B17383
            2372D8ECABD58FB006B913F18746777FB1E97AE5E42A4813DBD9828C3D46581C
            7D40A00EFA8AE77C37E3BD0BC52C62D3EE8A5DA8CBDACEBE5CABD7B1FBD8C73B
            49C77ABBE26D761F0CF872F7569D0BA5B26420FE26242A8F6CB1033DA803808F
            2FF173C53221CC6B15B2B1078DDE5AF1FA1AD8D474EB6D5B4F9ACEF2312412AE
            D61FD47B8AC4F09DAB69DA14FAB6A72A1BBD419AFAEA5E001BBE6EDC600E7F13
            597E18F17DFCD7502EBD118ADB552F269B39501480E54C648EE08E33CF23D450
            0747E03F10CFA0EA2BE0FD7A566651FF0012BBB6E9347DA327B30EDF97A67D22
            BCDFC45A0C5AFE9DE4B3986E233E65BCEBC344E3A106B5FC01E2E9F5B867D275
            A0B16BBA7FCB3A74F397A09547A1E338E32474040A00EC68A28A0028A28A0028
            AE77C41E2296CEE574FD363F36F5F19E33B33D38EE7BD64BD878B42F9DE7C85B
            AEC128CFE5D2803B8A2B8AD33C65736D73F66D6A33C1C19366D64FA8AECE3912
            58D648D83230CAB039045002D41169F6704BE6C36B04727F7D6300FE75628A00
            28A28A0028A28A0028A28A0028A28A0028A28A002AAEA3610EA76325B4E32AE3
            83DD4F622AD5140195A3787AD3468F312F99391F34CC39FC3D056AD1450079B6
            9B6927897C4720BE91875790679C038DA3F3AD5BDD2EFBC2B39BED29DE5B3CE6
            489B9C0F7F51EFD452EBDA7DC687ABAEB560B988B66551D013D73EC7F9D6CDBF
            8B349B8B512497022247CD1B8391EDEF4012697E23B1D520DEB2AC3201F34723
            0047F88AE5A4BA8878F63934D6051E655629D1B380FF00D6B56EBC23A76AE8B7
            7A7CE605946E1B57721FA0E3152D8689A6785CFDAEF2E95A5C10AEE36E3D76AF
            3CD0074B4573CFE37D255F00CEE3FBCB1F1FA9AD1D3B5DD3F543B6D6E14C9FDC
            6F95BF23D7F0A00F26D2259748F1AEA0BE30468B5EBC7FDCDC3F30CB1F6589BB
            0E9C7B01D78ADDF137881742B2410C66E2FEE5BCAB4B6519691CF0381CE391FA
            0EF5DCEBFE1ED3BC4DA5C961AADBACB0B72ADD1A36ECCA7B1FFF0051C824573B
            E14F8711F877596D4EF7539B55B98E3F26D1A74C1B74E720727270719E3BFAD0
            058F01F838F876D25BED4984FAE5F7CF7739E4AFA46BE8A3DBA9F6031D1C3A9D
            8DCDE4D6705E5B4B7507FAD85255678FFDE50723F1AB55E13E18F0CC1E24D106
            B9713CF6FABDD5D4B702F2DE428E8C588E31C63209FC68037B4CDDA278F3C43A
            35E7CAF7972DA8DB363025493938CF5C74FA86F4A778BF47BABE5B1D474F8A1B
            8BAD36532ADB4E81A39C1C65483DF8E3FA1AC7B9B2F10EBFE22B5F0EDF5DC173
            A8DAC0D7763AB46A5248147004A00C1562A17D4160727953B9E1FF0010CD7773
            3693ACC06CB5AB5E2681BA38FEFAFA83D78F5EE28039DB8D7BC3FF00F094683A
            B68891E9325D99ADF55B36223589942E372F00724E1B8071D88615D178D34F83
            54F09DEB311BA089AE61901E55946E041F7031F8D6678CFC2A93B1D6F4FB5865
            BC85499EDE44DC9751E30411FDEC742307D082010FB7F01CFAEF85A3BCF046B2
            F6DA76A51912E9F7CC5D22C921D55F048C11B7A7382775007A7F86EF26D47C2F
            A4DEDCB069EE6CE19646000CB32024E07B9AD3AC3BCD434DF02F84A27BC99C5A
            58409027197936A855503BB1C7D3B9C004D702EDE26F1B0373AB5FCFA3699203
            E5D859B6D9190E7FD63F53907A1E3D85007AD515E403E19F870260DB4C5BFBE6
            76CFF3C5491785F56D1141F0C7892FED0203B6DAE184D0F3FEC9E07D704D007A
            DD15C1787BE215C0D521D17C5B66961A84DC5BDC44736F7273D01FE13D382793
            E84807BDA0028A28A0028A2AA5FEADA7E948AFA95F5ADA239C2B5C4CB186FA64
            8A00B745630F19786C9C0F10E904FF00D7EC5FFC556BC7224B1AC91B2BA300CA
            CA72083D083400EA28AC5F1378B34BF09582DCEA92B0321DB0C318DD24C7D157
            F2E781C8E791401B5457984BE29F1CEBCA5B4FB2B1D0AD9B055EE732CE3F0C63
            9F42A298C3C7B12878BC576F33839F2E4B08D54FB12066803D4AB9DF1BF8A7FE
            114D04DCC308B8BE9E4105A4073FBC95BA671CE0727DFA6466B2BC2DE3E9AFB5
            51A1F892CD74FD5C8262319261B91FEC139C1C76C9E9F80A3F12367FC269E0CF
            3794F32EBAFF007B6A6DFD714018B0787E0B64975FF18DD0BFBF0BBE5927F9A3
            8075DA8BD38278E3E8054D69E3BD3269ADA396DAFACA1BAE2DAE2E60F2E19B1C
            7CAD9A97C7B6725F7833508E1CEF4412E0770AC18FE80D7646D74CF1FF0081A0
            59E24FB25F5BABA8420981B1FC27B329E3F020F71401C9788BC3106B7189E03F
            65D4E0C3DB5DC7F2BA30E4648E71FCBB56F7837C409E33D06F34BD76DD7FB46D
            47D9B5081970AE082038C718600F4E841ED8AE6BC237B771ADDE85AB1CEA5A4C
            9E4BB1CFEF53F81C679208EFDC60F7A8F589FF00E114F17E99E288CECB691859
            EA381D626E8C7E8403FF0001514014EEBC0FE24B7D47FE110B56964F0FDCCA24
            5D41864C30672D193D376718F5F604E3D1F5FF0007E9DAF7858686C9E4410A2A
            DABAF26DCA8C2119F41C75E466B7E8A00F2AF0EEAB7905ECFE1ED7F09ABD971B
            F3F2DCC7DA453DF8FF003D407789745B99E5B7D67457F275AB03BE171FF2D57B
            C6DEA08CFE6477AE9FC79E0F3E23B28AF74E6106B963F3DA4E0E377AC6DEAA7D
            FA1F6241E42C2C3C57E3664B4B9B3B8F0FE9E800BC9E452B34C71CAC60F201F5
            E9EE7A100EFF00C21E28B7F176831EA16E8F148AC62B885C7314A00DCBEE3904
            1F423A1C81B959BA0E81A7F86B4A8F4FD2A010C08771EECEC7AB31EE4FF403A0
            02B4A800ACAF106AF268D60278A032B160B93F757DCD4B75AF69B65298EE2F22
            571D541C91F5C74A92DEFAC35689D219A1B84230C99CF1EE0D0072DE14B98750
            F13DF5DB0C4922978C375009E7FA0AED6B82D6344B9F0DDEAEA5A6163029CFA9
            8FD8FA835D0E95E2AB0D4615F3654B69FF0089246C0CFB13D68017C4DA1C5AAD
            83CAAA05D44A5918756C7F09AA1E03BD927B0B8B57248B760509EC1B3C7E60FE
            756F5EF12D9D958CA96F3C735CBA95458DB76DCF724533C19A549A7E98F34EA5
            64B921B69EA1474CFE66803A2A28A2800A28A2800A28A2800A28A2800A28A280
            0A28A2800A28A2800A28A2801080CA5580208C107BD60DDF82F4ABA94C8AB2C0
            4F5113000FE041C7E15BF450054D374D834AB416F6C1F6039F998939A8F58D26
            1D66C4DBCC769CEE4703254D6468FE2B7D435992C9A0CA33B7952276519FBD5D
            350061DBF83F488230AD6E656EED239C9FCB02B3757F062221B9D1D9E3993E61
            16E3CFFBA7A835D751401CDF85BC44DA92B59DE717718E0918DE07F515D25703
            798B2F8849F67F9774F1E40FF6C0DDFCCFE75DF50015E41A0E3C1FAF5E784EFC
            98D44AD369D2B9E2689B903381F30EFEF91DABD7EB1BC4BE15D33C59A78B5D52
            12DB0E62990ED9226F556EDDBD8E064500707AA8D4F41F13DB789B48B537BB20
            36B7768BC349113B815E3A838E9CF03B66A96BBE22B7F1BF88B439746D1B52B6
            BCB2B80F3DDDCC4230B07F121C139CF3D7A738FBC6AECD63E2EF07B7953DAC9E
            22D306025C5B2FFA420F464E4B7E19F73DAA08BE24F86DD3325EC90B7749207D
            C3F20450075354BE0E6CFF00847756300FF473ABCE61F4D9B5318F6AC01AAEA7
            E39CE9FE15B59E2B49494B8D5668CAC71AF1B827F79B07A75E7B751E9FA0E8B6
            BE1DD12D74BB10C20B64DAA58E4B1CE4B1F72493F8D0079FF8A253E27F8951E9
            AE18E9DA146B34A87EEC93B8CAE79E405C633DC30EF5A9A8DFC3A5E9D3DEDCB6
            D86042EDEBC761EE7A562785901D6FC57393991B599E33EBB54F1FCCD45E3951
            7C9A368EECC916A7A94304A57AECDDCFE3920FE14016B40F09EB5E31B38758D6
            75ABCD32D2E47996F65A7B6C658CFDD2CFEA7AE3078C74E821BDB7D6BC07A958
            45AA6A3FDABA3DF4BF674B974DB2C121FBA1B93907D73D8F4C73EAEAAA8A1540
            55030001800579EFC5B916EA3F0EE909937375A9A4CB81C048C1DC7F0DE3F5A0
            04D7F44B7D7F489ACAE547CE328F8E637ECC2B63E1AEBB73AEF842337ECCD7D6
            52BD9DCB375674C739EE7695C9F5CD41557E12CAB3E95AF4D1FDC935BB8653EA
            0AA50077B4514500713E3DF14DFD8DDD9F87FC3ECABABDF2991A665C8B6841C1
            7E78C92081D7A1F6AE524F09787F47B59352F104AD7D30F9A6BBBD919CB1FA67
            9FA726AF80B27C5CF13BB92648A1B648F3D94C6A481F8E2AAF8B634B8F107852
            DEE9049672EA68B2A30CAB9C80A083C107278FAD0050D36EFC0BAE5CAD8DBD8D
            9ACADC22BDB7965FE8D8EBF8E6AD49A75FF809CEABE169257B28C97BBD2E490B
            472271B99739C300073D78EE383D47C60B3B797C01777AF1AFDAAC5E292DA6E8
            D1319114E0FB83FCBD0516AED35942F28F9DE352C08EE473401D5E8DABDAEBDA
            45AEA562E5ADEE503A67A8F507DC1C83EE2BCD2D37788FE20EB9AB5F0DEBA6DC
            1B0B38CF223D870CC3DC9E7FE047DAB5BE14486CA6F1168201F2B4FBD12C3939
            DA92824281DB1B33FF00023597E1790A6BFE2CB561874D626971ECE4E3FF0041
            A005D6E7D4353F13E99E1BD2EF3EC0F788F34D74137B22282400323A907F4A6C
            916ABE09F11D8E99AB6A2DA9E9DA902B6F75226D78E51FC07939CE475F5F634F
            D4644D3BE2478535190379724B259B11FDE75DA9FAB7E95D1FC56D31F50F01DD
            CD02B1B9D3DD2F612A71B4A1F98FE085CD006078C3467D5746325A129A859B0B
            8B4950E195D79C03EF8FCF1E94FF0014DD49E32F859A7789EC630B7BA7BADE95
            0BD0A12B2A8E785C82DEE14569E9D78BA869B6D769F767896403D3233557E159
            5B5B9F14686631E4DADF79CB9E415954E171E8027EB401634FBD8356D320BB87
            0D0DC461803CF5EA0FF2AA5F0EB506F0F6BF7DE10BB622162D77A6331EA87968
            C73DB93803B39ACC8613E01F14C9A0DD12BA45FBB4DA64CC4E2324F31124F627
            D7D0FF00171A5E22F0F8D6E08648676B5BFB47F36D6E53AC6C3FA703F2A007FC
            41B4FEC5F17E87E2280055BB9069B780103786E6338EE461B27FD95151F8C2D5
            2EFC21AAC720042DB3C833EAA370FD4552B9B3F14F896E34E8BC4D71A6AD969F
            30B8C5A2B6FB8914614B67A77E98EA78E98678B3537BEC78674702E355D40794
            514F10A1FBCCE7B719FC39FA807A2F84E692E3C1DA2CD33B3CB25840EECC7258
            98D4926B5EA9E93A7AE93A3D969E8E645B48238039182C1542E7F4AB94005145
            14005727E24D62EAE7514D174B62B2B902470707279C67B0C726BACAE3F4ED26
            F93C6D71766122DD6572646E010C0E31EBD45005AB5F03584700172F2CB2FF00
            1306DA3F015CF78834A8BC3D7B13D85EB7987E6099F9D3DF23B7F9E6BA3D73C5
            6B6AE6CF4C1F68BC63B72A37043FD4FB53342F0B98E437FABFEFAEDCEE08FF00
            3053EA7D4FF2A00B1E19D786B768F05C8537318F9C63875F5C7F3AC0F137855A
            C4B5E58296B6EAF18E4C7FFD6FE54BA244B6BE3C961B5FF52AF22903B2E0F1F8
            1C577846460F4A00E23C21FD8F3C8A935BA8BF5E54C8C487F700F19AEE2B8AF1
            0F84A48A6FB66908DCB65A14EAA7D57DBF95755A625D47A742B7F22BDC05F9CA
            8FF393EF4016E8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
            8A0028A28A0028A28A00F3ED080D1BC62D6F73F2F2D1027DFEE9FC78FCEBD06B
            03C4BE1C5D62313DB9097718E09E038F43FD0D64D878B6EB4A6FB1EB56F2B327
            1BF1F3E3DC1EBF5FE7401DAD417B791585A497370DB638C64FBFB0F7AC297C73
            A62445A359E47ECBB31FAD7337DA8EA3E2BBE48228CEC072912745F763FD6802
            7F0FA4BADF8B0DE480E118CCDEDFDD1FCBF2AF43ACCD0B468F45B011290D2BFC
            D2BFA9FF00015A74005145729AE6BFABC1A97D8AC6C8A13F71CAEF320F51DB14
            01D5D15C69D63C4DA6AF9D7F64258072DF28E07D57A7E22BA0D1F5CB5D6A12D6
            E4AC8BF7E36FBCBFE23DE8034A8A28A00F289A3FF8453E24EA36770192CB5C6F
            B5DA4AC7832FFCB44CF4CE49E3D36FAD5AF1468D71AB5842F61288750B29D6E6
            D6461C075E403FE7D2BB6F12F8634FF15E966CB528D8A83BA3950E1E26FEF29E
            C6B819ACBC63E121E5DC599F1158270B716BC5C019C0DC9C963F4CFB9A00D1B6
            F8AED6B0245AE786B5986F87CAE2D6012C4C7D558B0EBCF1CE3D4D66E990EA5E
            20F1349E26D76DBEC8E22F22CAD09C9863E7249F5393D79E4F4E2A15F88DA123
            BC57D25CD8CF192AF0DC5B387423A8200383449F10B4A9A4106911DE6AB76D9D
            905AC0C4B1FC47F2CD0068F8AF5A5D0BC3F71720FEFD8797028EAD21E063E9D7
            F0AEB3C0FA01F0CF83F4FD3A4005C247BE7E99F318EE6191D704E33E805735E1
            8F06EA7AA6B507887C5A8913DB9DD63A729DC203D9D8F42DDFF2E98C0F44A002
            8A28A00F34F1F585C7873C4D0F8BACE079ACE5885BEA71C6B96503EEC9FC87B6
            D1EBC25E5B695E34D0CC6B3ACF6EE43249137CD1B0E87D8FB1AE8BC6DE368FC2
            46C6DC69B3EA175A833A430A30553B719049CFF787183DFF001F27F106817FAA
            F997FA5783E0D11954BBF977A599C8FEEA290074E0051CD006AEBD629A75BDBC
            FE2EF135E6A76B69F3DBD9498065619C6464973C9E4F638CE2BAFD2B505D574A
            B6BE8D1A35B88C4815BA8CD70134BE0787C1A7FB16D8DEF896FE0102C538795E
            277C07C6E01415E70C067A577BA65B2E91A15ADBCCEAAB6B6EA8EE4E00DABC9F
            D2800F00E3FE13BF18E3FE9CBFF45B550D7226D0FE2D34B216FB36BB6ABB588C
            0F3A201768FF0080807FE05577E13C325E0D77C42DBC47AA5DED8032E3314590
            ADFF008F11FF0001ADBF1EF85DFC4FA0EDB3611EA766E2E2CA5E32245FE1CFA1
            E9F5C1ED401C9F8DF4E9AFFC372BDA332DDD9B2DD40C9F783273C7BE338F7AEA
            CEBB63E25F86B75A99755B6B8D3E5F3C29CF967610EBCF70723DEB94D07C596D
            A8E6CF50C58EAD09D93DACDF21DDFECE7A8FD6AADF780F406B892E6632DBC123
            8796059F642EDEA47E7D08A00B5E03321F05699E6821BCB38CFA6E38FD315A3F
            0FDD64F1CF8C8A1040366323D446E0D635DF8BEC6031E97E1C87FB4F5023CB82
            DAD06E45C0EE470140F4F4EDD6BB3F01785A5F0CE8D2B5FC8B2EA97D29B8BC90
            72371E8A0E3A0FE64F6A00D6D7FC3FA7F89B49934ED52012C0FC83D191874653
            D88FF10720915C3A7827C65A3CA60D2359D36FEC47FABFED3571220F4CA039C7
            AE7F015E95450079A9F05F8D3559BCAD535BD3B4FB423E6FECD47691BDB2E015
            FA83F8575DE1AF07E91E13B764D32DCF9B27FADB994EF9653FED37F4181ED5B9
            4500145626B1E29B2D258C5CCF703FE59A1FBBF53DAB04788FC45A91DF6369B6
            3EC5212C3F33C50077345707FF000956B9A6CC06A36C0A9ED245B33F423FFAF5
            D4E8FAF5A6B5113036D95465E26FBC3FC47BD0069D676BB69777BA5C9158CE62
            98FA71BC7F773DB35A3450079B685AA27876FA55BEB1264E85B18913E99E315B
            579E37FB4A08348B599A79380645191F4009CD75371676D7400B9B78A6C74F31
            0363F3A4B7B2B6B5CFD9ADE1873D7CB40B9FCA8031BC2FA03E971BDCDD9DD793
            0F9B9CEC1D719EE7D6BA0A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A002A0BAB3B7BD8FCBBA8239
            57D1D738FA54F4500637FC225A2EECFD8867FEBA3FF8D695AD9DBD945E5DAC31
            C49DC22E33F5F5A9E8A0028A28A00E57C6BAC4D631DBDADAC8D1C8E7CC665382
            00E83F3FE5505978BAEAC1A3875CB571B802B305C123D48E87F0A678F6CA4F36
            DAF946E8C2F96DEC7391F9E4D74B0C963AFE9A8E5239A171CAB73B4FA7B11401
            3DA5EDB5FC3E6DACC92A1EEA7A7D476AE2A451A3F8F634B4C2C72488A507401F
            191FAE7F2AB5AC786D7458DF51D32F9AD7CBE76331E7D81FE87359FE1B82E35B
            F120BDB962FE5112C8F8C648E147E9FA50077D73711DADB493CA711C6A598FB0
            ACED27C456BAA5ABCD836E232158CA40193E87BD64F8EB53F2AD22B08CFCF31D
            EF8FEE8E83F13FCAA1D2BC0E925A249A94B28761B844840DB9F5CF7A00EBE29A
            39937C5223AFAA90453EB86D5B45B8F0C15D434AB997CA0C03AB1E9E99EC4575
            7A46A49AAE9915D28C161865FEEB0EA2802F51451400514514005145140185E2
            FF000ADBF8B746FB1CD2BDBCF1B89ADAE13EF4320E8DEE3D47F23823844D47C5
            1A138B3D77C397B7CCBC2DDE991F9CB281C64A8FBA7EB8FA0AF58A2803C8FF00
            B6CC3335C5B7823C402E5BABFF0065ED27EAC39AB117863C4FE362A9ACC5FD85
            A29C33C0AE1AE271E87FBA3EB8C7A1AF54A28020B3B3834FB286D2D2258ADE04
            091A2F4551C0153D14500636BDE11D0FC4C17FB634D86E593016439590019E37
            A90D8E4F19C562FF00C2A3F05839FEC6FF00C9A9BFF8BAECE8A00A3A5E89A6E8
            901874BB0B6B44200610C614B6380588E49F7357A8A6BBAC68CEEC15541249E8
            05003A8AE265D6755F12DF496DA4136F6CBD64CED38F527A8FA0A26F06EA7129
            9ADF51F3271CE32CA49F639A00EDAB9CF167880E9900B5B56C5D4A32587FCB35
            F5FAD52F0D7896E0DEFF0066EAA49933B51DC61830FE16FF001A83C75A718EE2
            1D462070FF0024847661D0FE5FCA802DF86FC2B1A44B7BA9A79933FCC91BF217
            DCFA9AEAC00A0000003A015CD47E35B28F4A8659B73DD32E1A241FC438C93D00
            A8B44D7757D5F55593ECBB6C3956C0C05F7DC7A9FA7E5401D35C5BC5750B4371
            1AC91B0C1561915E79ABD84FE16D6A39ACDD8464EF898FEAA7D7FC0D7A4573DE
            368165F0FB4840DD148AC0FD4E3FAD006C69F7A9A8D8437517DD91738F43DC7E
            7566B9AF023B3E84E09E127603E9853FD6BA5A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
            28A28A0028A28A0028A28A0028A28A008E7823B981E19D15E3718656E86B979F
            C1D716B3B4BA2DFBDBEEFE06623F51D47D457594500716DE0ED56FA653A96A4A
            E83B866723E80818AE9EC34FB5D1AC7CA80048D06E776EA7D493576B9CF1AEA7
            F63D285B21C4B72769F641D7FA0FC4D0073FA74DFDBFE3449E5FF57BCBAA9ECA
            A3E51FA0AF43AF36B3B1BDD1AD6CB5C890BAEE25D31D17A73EC4679FA575B078
            C3489A10EF70626C728E8723F21400FF0016CC917872E77632FB5147A9C8AA7E
            04561A1484F46B8623E9B56B0B5CD5E5F13DFC367A7C6E6256F9411CB1FEF1F4
            03FC6BB6D2B4F4D334D86D539D8BF31FEF3773F9D005CA42428249C01C934B59
            DAFDCFD9342BC97383E59507DCF03F9D0061785355BED4F59BB32DC3B5B00CE1
            0E30096E07E59AEBAB93F00DB6CB0BAB8239924083E8A3FF00B2AEB280312DFC
            4A971E207D2C5BB065665F337647009E98F6ADA2428249000E4935C27848FDAF
            C597571D7E5924CFD587F8D59F1C6AB28962D36062032EE942FF00164F03FCFB
            5006BDD78C349B590A099A62383E52E47E7D0FE14EB3F16695792AC6B398DDB8
            0255DA0FE3D29347F0C5969F689E7411CD70465DE450D83E833D0543E20F0CD9
            DDD84B2DB4090DC46A594C6BB4363B11401D0D65CDE20B383575D35FCCFB4332
            AF0BF2E4F4E7F1ACBF056AF25EDAC96770DB9E000A31EA57D3F0FEB597AF1F2B
            C776CFFF004D216FD47F85006E6B5E2B8F47BD36CD69248DB436EDC0020FA55D
            D135DB7D6E07785591E3203A376CF4FC2AECF6905CAB09A18DF72ED2594138AE
            23C10E6DF5EB9B663D6361F8AB0FFEBD00741E27F101D16048E0556B9973B777
            451EB5930F87359D5E313EA5A93C3BC6447C9C7D5410053FC6DA45CDCCD0DF5B
            46F2844F2DD5064AE0920E3F135562F1E5DC3184B8B38DE40305B715CFE1400C
            BDD1357F0F3C77363772CEA5803B01CE7DD79C8AE9E44BCD63C36D1C91FD96EA
            74DACAFD073CFE63F9D61A7C41527E7D3C81EA26CFF4ADFD3757B5D7ACE4FB33
            BA1C6D753C326475FF00EBD0053D26D2D3C2B63225E5EC3BE47DE49F94E31D00
            EA7BFE755AF3C736AADE5E9F0497321E0123683FD4FE55CBDADADBDB7881ADB5
            CDFB031576DC473D893D707FAD7A25958D85843BACE18634C677AE391FEF77A0
            0F3AD67FB49AED351BEB7FB33CC72985DBCAE3B75F4EB5DFCD6EBAEF87D524C2
            FDA6157071F7588041FCEB96F13DE8D7F55B5B0D3BF7BE59237AF42C719FC001
            D6BB6B5816D6D21814E56245407D80C50060E99E0BB1B3DAF759BA947F786107
            E1DFF1AE89555142A80AA38000C01587E29B6D4EE2C00D3643B47FAC8D38761E
            C7FA573D69E35D42C63F22F6DC4CEBC65F28FF008FAD0077D5C678D3574B8D9A
            5DA9F324DE0C9B79E7B2FD73FD2A26D5BC45AFAF95676E6DE16EAE80AF1FEF1F
            E95B1A078561D2985C5C309AEFB37F0A7D3DFDE802EF87F4C3A568F15BBFFAD3
            F3C9FEF1FF000E07E15A74514005145140051451400514514005145140051451
            4005145140051451400514514005145140051451400514514005145140051451
            4005145140051451400514514005711AFE8DA9EA9E2342F0B7D99D8469229C84
            41D49F4EE6BB7A2801890C71C0B0AA811AAED0BDB1D3159571E15D22E642ED68
            AAC7AF96C547E438AD8A2802A58E9765A6A91676E9167824724FD49E6ADD1450
            015CEF8DD98787C851C195437B0E7FAE2BA2A86EAD62BDB692DEE103C520C303
            4018DE0B9227F0F4691B02E8EC241DC12491FA62B4F56BD4D3F4BB8B876C6D43
            B7DDBB0FCEB9A7F05DE59CE64D275131E7FBC4A9C7A123AFE54B2F84B50B9B79
            1F50BF7BB9950F951073B77638E4FF00850041F0FE2CDC5ECBFDD555FCC9FF00
            0AA9E243E578D15E5E23DD1373FDDE33FD6BA1F0869175A55ADC8BC8BCB92471
            81B81C803D8FB9A7789FC3BFDB312CD6E42DD443033D1C7A5006FD473BAC56F2
            3B9C2AA924FA002B8EB4F126A9A344B6BA969F2CBB06D5739538FAE08351DF6B
            BAAF886336761612451C9C3919248F42700014011780518EAF70E3EE88083F52
            C31FC8D1E323E4F89EDE4FFA668DF931FF000AEA3C3DA1AE89625090F3C98691
            874FA0F615CF78DEC6E6E755B77B7B79A5FDCED3E5A16FE23E9F5A00EDEBCFF4
            C3F63F1FBA74569E45FC0E71FD2BADD5AEF50B7D3A3974EB659E7660191C1E06
            0E4F51DF15C05ECBA845E20F3E745B7BD2EAE001C2938C7AD007A65D5C25A5AC
            971206291A966DA32702B274EF1469BAACAF1B110953F209F0377D3B7E157347
            8B508EC4AEAD224B397272B8C6DE38E83DEB3EEBC15A5DCCC64513439392B130
            03F220D0049AA5F6836F6AE2E45A4BC1FDDA05663F974FAD61F80AD26FB5DC5D
            ED220F2FCB04F42720FE98FD6B62DBC15A55BB86659A7C73891F8FD00ADD8E24
            86358E245445180AA30050066EB1E1EB3D680698324CA30B2A75C7A1F515883C
            003386D49CC79FBA22C7FECD5D8514019DA568765A3A116D192E461A473963FE
            7DAB468A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A86F3FE3CA7FF00AE6DFCA80399D6BC5B22DEA5968C165977
            6D67C6413D303FC6BA7B55996DA3172E1E6DBF3B28C027DABCDBC31FF2345AFF
            00BEDFFA09AF4EA002B0FC41E233A1490AFD97CEF34139F336E318F63EB5B95C
            57C41FF5961F493FF65A00EBECE7FB55941718DBE6C6AF8F4C8CD72DE21F0F5E
            6ABE228DED80488C4A5E56E8A413F99E95D2697FF209B3FF00AE09FF00A08AB7
            40094B4514005145140051451400514514005145140051451400514514005145
            1400514514005145140051451400514514005145140051451401FFD9}
          HightQuality = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 41.913420000000000000
        Top = 487.559370000000000000
        Width = 740.787880000000000000
        Condition = 'frxDBReporte."iFolioPedido"'
        object Memo11: TfrxMemoView
          Top = 6.779530000000000000
          Width = 45.354360000000000000
          Height = 34.015748030000000000
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
        object Memo12: TfrxMemoView
          Left = 105.826840000000000000
          Top = 6.779530000000000000
          Width = 52.913420000000000000
          Height = 34.015748030000000000
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
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 6.779530000000000000
          Width = 49.133890000000000000
          Height = 34.015748030000000000
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
        object Memo14: TfrxMemoView
          Left = 207.874150000000000000
          Top = 6.779530000000000000
          Width = 393.071120000000000000
          Height = 34.015748030000000000
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
            'DESCRIPCION DEL PRODUCTO O SERVICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 600.276130000000000000
          Top = 6.897650000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
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
            'P.U.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 675.866730000000000000
          Top = 6.897650000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
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
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 45.354360000000000000
          Top = 6.803149610000000000
          Width = 60.472480000000000000
          Height = 34.015748030000000000
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
            'CODIGO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 551.811380000000000000
        Width = 740.787880000000000000
        DataSet = frmRequisicionPerf.frxDBReporte
        DataSetName = 'frxDBReporte'
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Top = 1.000000000000000000
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 105.826840000000000000
          Top = 1.000000000000000000
          Width = 49.133890000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBReporte."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 154.960730000000000000
          Top = 1.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBReporte."sMedida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 207.874150000000000000
          Top = 1.000000000000000000
          Width = 393.071120000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."mDescripcion"]'
            '[frxDBReporte."sComentarioPart"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 600.276130000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[<frxDBReporte."DescuentoMat"> ]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 675.866730000000000000
          Top = 1.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[(<frxDBReporte."dCantidad"> *<frxDBReporte."DescuentoMat">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 45.354360000000000000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdInsumo'
          DataSet = frmRequisicionPerf.frxDBReporte
          DataSetName = 'frxDBReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBReporte."sIdInsumo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 21.913420000000000000
        Top = 593.386210000000000000
        Width = 740.787880000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 298.031686460000000000
        Top = 676.535870000000000000
        Width = 740.787880000000000000
        object Memo55: TfrxMemoView
          Left = 3.118120000000000000
          Top = 14.866110000000000000
          Width = 188.976500000000000000
          Height = 11.338565590000000000
          Visible = False
          OnBeforePrint = 'Memo55OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'OBSERVACIONES')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 0.779530000000000000
          Top = 10.779530000000000000
          Width = 740.787584650000000000
          Height = 15.118095590000000000
          Visible = False
          OnBeforePrint = 'Memo57OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            '[frxDBReporte."mComentarios"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 535.244590000000000000
          Top = 170.464750000000000000
          Width = 173.858380000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Center = True
          DataField = 'bimagen16'
          DataSetName = 'datasetfrximgfirmas'
          HightQuality = False
        end
        object Memo30: TfrxMemoView
          Left = 1.000000000000000000
          Top = 147.023810000000000000
          Width = 738.519685039370100000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 547.362710000000000000
          Top = 27.740260000000010000
          Width = 64.251978270000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            'Suma:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 547.362710000000000000
          Top = 46.637910000000010000
          Width = 64.251978270000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            'Descuento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 547.362710000000000000
          Top = 65.535560000000010000
          Width = 64.251978270000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            'Sub-Total:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 547.362710000000000000
          Top = 84.433210000000010000
          Width = 64.251978270000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            'Retenci'#195#179'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 547.362710000000000000
          Top = 103.330860000000000000
          Width = 64.251978270000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            'I.V.A. [<frxDBReporte."dIva">]%:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 547.362710000000000000
          Top = 122.228510000000000000
          Width = 64.251978270000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 611.614720000000000000
          Top = 27.740260000000010000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
            
              '[SUM(<frxDBReporte."dCantidad">*<frxDBReporte."DescuentoMat">,Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 611.614720000000000000
          Top = 46.637910000000010000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
            '[frxDBReporte."dDescuento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 611.614720000000000000
          Top = 65.535560000000010000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
            
              '[SUM(<frxDBReporte."dCantidad">*<frxDBReporte."DescuentoMat">,Ma' +
              'sterData1) - <frxDBReporte."dDescuento">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 611.614720000000000000
          Top = 84.433210000000010000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 611.614720000000000000
          Top = 103.330860000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
            
              '[((SUM(<frxDBReporte."dCantidad">*<frxDBReporte."DescuentoMat">,' +
              'MasterData1) - <frxDBReporte."dDescuento">))* (<frxDBReporte."dI' +
              'va">/100)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 611.614720000000000000
          Top = 122.228510000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
            
              '[(SUM(<frxDBReporte."dCantidad">*<frxDBReporte."DescuentoMat">,M' +
              'asterData1)  - <frxDBReporte."dDescuento">) + '
            
              ' ((SUM(<frxDBReporte."dCantidad">*<frxDBReporte."DescuentoMat">,' +
              'MasterData1)) - <frxDBReporte."dDescuento">) *  (<frxDBReporte."' +
              'dIva">/100)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 5.889920000000000000
          Top = 64.315090000000010000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Contacto:')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 4.110390000000000000
          Top = 42.858380000000010000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Condiciones Comerciales:')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 5.889920000000000000
          Top = 52.976500000000010000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Entrega de Materiales:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 6.889920000000000000
          Top = 74.874150000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Forma de Pago:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 141.953000000000000000
          Top = 42.858380000000010000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."sCondiciones"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 141.953000000000000000
          Top = 65.535560000000010000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."sVendedor"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 141.953000000000000000
          Top = 54.196970000000010000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."sLugarEntrega"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 96.598640000000000000
          Top = 76.874150000000010000
          Width = 325.039580000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."fp"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 0.440940000000000000
          Top = 26.220470000000000000
          Width = 548.031850000000000000
          Height = 113.385900000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 41.574830000000000000
          Top = 185.582870000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Center = True
          DataField = 'bimagen14'
          DataSetName = 'datasetfrximgfirmas'
          HightQuality = False
        end
        object Memo86: TfrxMemoView
          Left = 7.559060000000000000
          Top = 153.685220000000000000
          Width = 211.653680000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SOLICITA'
            'GERENTE DE OPERACIONES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 7.559060000000000000
          Top = 180.685220000000000000
          Width = 211.653680000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[REALIZO_FIRMA]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo89: TfrxMemoView
          Left = 528.583180000000000000
          Top = 152.567100000000000000
          Width = 177.637910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'AUTORIZA'
            'DIRECTOR GENERAL')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 486.110700000000000000
          Top = 185.023810000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AUTORIZO_FIRMA]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 233.551330000000000000
          Top = 185.141930000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[REVISO_FIRMA]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 60.031540000000000000
          Top = 210.598640000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 328.819110000000000000
          Top = 215.039580000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 272.126160000000000000
          Top = 153.582870000000000000
          Width = 177.637910000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'REVISA'
            'GERENTE ADMINISTRATIVO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 588.047620000000000000
          Top = 215.378170000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'FIRMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 226.771800000000000000
          Top = 243.354670000000000000
          Width = 506.457020000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[setup."sSlogan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 612.283860000000000000
          Top = 275.905690000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Hoja [ <Page>] de [TotalPages#]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 202.315090000000000000
        Top = 260.787570000000000000
        Width = 740.787880000000000000
        object Memo43: TfrxMemoView
          Left = 65.551330000000000000
          Top = 37.559060000000000000
          Width = 275.905690000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8 = (
            '[setup."sDireccion1"]'
            '[setup."sDireccion2"]'
            '[setup."sCiudad"]'
            'R.F.C:[setup."sRfc"]'
            '[setup."sEmail"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 3.779530000000000000
          Top = 119.267780000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'PROVEEDOR:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 336.378170000000000000
          Top = 154.063080000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'FECHA, SUMINISTRO:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 551.811380000000000000
          Top = 129.385900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TEL. Y FAX:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 82.031540000000000000
          Top = 119.267780000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."sRazon"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 451.543600000000000000
          Top = 119.267780000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."sDomicilio"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 453.543600000000000000
          Top = 145.724490000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd-mmm-yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."dFechaEntrega"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 625.401980000000000000
          Top = 128.385900000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."stelefono"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 529.134200000000000000
          Top = 38.559060000000000000
          Width = 204.094620000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."sdireccionEnviar"]'
            '[frxDBReporte."sCiudadEnviar"]'
            '[frxDBReporte."sTelefonoEnviar"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 0.338590000000000000
          Top = 115.133890000000000000
          Width = 740.787880000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 8.677180000000000000
          Top = 25.220470000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8 = (
            'FACTURAR A:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 490.771800000000000000
          Top = 23.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8 = (
            'ENVIAR A:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 1.015770000000000000
          Top = 19.929190000000000000
          Width = 740.787880000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 154.960730000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENTREGAR EN :')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 90.708720000000000000
          Top = 154.960730000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBReporte."sLugarEntrega"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C.P. [frxDBReporte."sCP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 128.504020000000000000
          Top = 136.063080000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'R.F.C. [<frxDBReporte."sRfc">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.102350000000000000
          Width = 415.748300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBScript: TfrxDBDataset
    UserName = 'frxDBScript'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dFecha=dFecha'
      'dFechaActualizacion=dFechaActualizacion'
      'sTipoError=sTipoError'
      'sPrograma=sPrograma'
      'sModulo=sModulo'
      'sDesarrollador=sDesarrollador'
      'mDescripcion=mDescripcion')
    DataSet = zqScript
    BCDToCurrency = False
    Left = 712
    Top = 208
  end
end
