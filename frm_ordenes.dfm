object frmOrdenes: TfrmOrdenes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sitios de Trabajo'
  ClientHeight = 496
  ClientWidth = 1360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Pnl_Principal: TPanel
    Left = 72
    Top = 0
    Width = 1288
    Height = 496
    Align = alClient
    TabOrder = 0
    object grid_ordenes: TcxGrid
      Left = 1
      Top = 1
      Width = 1286
      Height = 223
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupPrincipal
      TabOrder = 0
      OnEnter = grid_ordenesEnter
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        OnKeyDown = cxgrdbtblvwGrid1DBTableView1KeyDown
        OnKeyUp = cxgrdbtblvwGrid1DBTableView1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxgrdbtblvwGrid1DBTableView1CellClick
        DataController.DataSource = ds_ordenesdetrabajo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = '<No hay datos>'
        OptionsView.ColumnAutoWidth = True
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Sitio de Trabajo'
          DataBinding.FieldName = 'sNumeroOrden'
          Width = 129
        end
        object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Titulo'
          DataBinding.FieldName = 'sIdFolio'
          Width = 64
        end
        object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Cuenta Bancaria'
          DataBinding.FieldName = 'sNombreCuenta'
          Width = 133
        end
        object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Compa'#241'ia'
          DataBinding.FieldName = 'sIdCompania'
          Width = 122
        end
        object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Descripcion Corta'
          DataBinding.FieldName = 'sDescripcionCorta'
          Width = 223
        end
        object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = 'Incio. Prog.'
          DataBinding.FieldName = 'dFiProgramado'
          Width = 119
        end
        object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = 'Fin Prog'
          DataBinding.FieldName = 'dFfProgramado'
          Width = 123
        end
        object cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'cIdStatus'
          Visible = False
          GroupIndex = 0
          Width = 70
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 224
      Width = 1286
      Height = 271
      Align = alBottom
      TabOrder = 1
      object dxLayoutControl9: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 1284
        Height = 269
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
        object cxPageControl1: TcxPageControl
          Left = 10
          Top = 10
          Width = 1264
          Height = 248
          Color = 14803425
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 246
          ClientRectLeft = 2
          ClientRectRight = 1262
          ClientRectTop = 29
          object cxTabSheet1: TcxTabSheet
            Caption = 'Datos Generales'
            ImageIndex = 0
            object dxLayoutControl1: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 1260
              Height = 217
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object tsOficioAutorizacion: TcxDBTextEdit
                Left = 134
                Top = 64
                DataBinding.DataField = 'sOficioAutorizacion'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 3
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 143
              end
              object tmDescripcion: TcxDBMemo
                Left = 134
                Top = 91
                DataBinding.DataField = 'mDescripcion'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Properties.ScrollBars = ssVertical
                Style.HotTrack = False
                TabOrder = 5
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 46
                Width = 395
              end
              object tsCliente: TcxDBLookupComboBox
                Left = 134
                Top = 143
                DataBinding.DataField = 'sIdCompania'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Properties.KeyFieldNames = 'sIdCompania'
                Properties.ListColumns = <
                  item
                    FieldName = 'sRazonSocial'
                  end>
                Properties.ListSource = dzQCliente
                Style.HotTrack = False
                TabOrder = 6
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 356
              end
              object cxPedido: TcxDBTextEdit
                Left = 380
                Top = 64
                DataBinding.DataField = 'sPedidoAsociado'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 4
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 149
              end
              object btn1: TcxButton
                Left = 496
                Top = 143
                Width = 33
                Height = 25
                TabOrder = 7
                TabStop = False
                OnClick = btn1Click
                OptionsImage.ImageIndex = 0
                OptionsImage.Images = frmInteligent.cxImageList1
              end
              object tsNumeroOrden: TcxDBTextEdit
                Left = 134
                Top = 10
                DataBinding.DataField = 'sNumeroOrden'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 0
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 143
              end
              object tdFechaInicio: TcxDBDateEdit
                Left = 645
                Top = 10
                DataBinding.DataField = 'dFiProgramado'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 10
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 180
              end
              object lMostrarAvancesP: TcxComboBox
                Left = 645
                Top = 37
                ParentFont = False
                Properties.Items.Strings = (
                  'Si'
                  'No')
                Style.HotTrack = False
                TabOrder = 12
                Text = 'lMostrarAvancesP'
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 180
              end
              object tsIdPlataforma: TcxDBLookupComboBox
                Left = 645
                Top = 64
                DataBinding.DataField = 'sIdPlataforma'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Properties.KeyFieldNames = 'sIdPlataforma'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListSource = ds_Plataformas
                Style.HotTrack = False
                TabOrder = 14
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 424
              end
              object tsIdPernocta: TcxDBLookupComboBox
                Left = 645
                Top = 95
                DataBinding.DataField = 'sIdPernocta'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Properties.KeyFieldNames = 'sIdPernocta'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListSource = ds_Pernoctan
                Style.HotTrack = False
                TabOrder = 16
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 424
              end
              object btnPernocta: TcxButton
                Left = 1075
                Top = 95
                Width = 33
                Height = 25
                TabOrder = 17
                TabStop = False
                OnClick = btnPernoctaClick
                OptionsImage.ImageIndex = 0
                OptionsImage.Images = frmInteligent.cxImageList1
              end
              object btnPlataformas: TcxButton
                Left = 1075
                Top = 64
                Width = 33
                Height = 25
                TabOrder = 15
                TabStop = False
                OnClick = btnPlataformasClick
                OptionsImage.ImageIndex = 0
                OptionsImage.Images = frmInteligent.cxImageList1
              end
              object tsDescripcionCorta: TcxDBTextEdit
                Left = 134
                Top = 37
                DataBinding.DataField = 'sDescripcionCorta'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 2
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 395
              end
              object memDatos: TcxDBMemo
                Left = 1114
                Top = 33
                TabStop = False
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 21
                Height = 136
                Width = 119
              end
              object Progreso: TcxProgressBar
                Left = 1114
                Top = 175
                TabStop = False
                ParentFont = False
                TabOrder = 22
                Width = 119
              end
              object lblDetalles: TcxLabel
                Left = 1114
                Top = 10
                Caption = '   '
                ParentFont = False
                Style.HotTrack = False
              end
              object tsIdFolio: TcxDBTextEdit
                Left = 380
                Top = 10
                DataBinding.DataField = 'sIdFolio'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 1
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 149
              end
              object tdFechaFinal: TcxDBDateEdit
                Left = 951
                Top = 10
                DataBinding.DataField = 'dFfProgramado'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 11
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 157
              end
              object tsNumeroCuenta: TcxDBLookupComboBox
                Left = 134
                Top = 174
                DataBinding.DataField = 'sIdNumeroCuenta'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Properties.KeyFieldNames = 'sIdNumeroCuenta'
                Properties.ListColumns = <
                  item
                    FieldName = 'sNombreCuenta'
                  end>
                Properties.ListSource = dszQCuentasBancarias
                Style.HotTrack = False
                TabOrder = 8
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 356
              end
              object btn2: TcxButton
                Left = 496
                Top = 174
                Width = 33
                Height = 25
                TabOrder = 9
                TabStop = False
                OnClick = btn2Click
                OptionsImage.ImageIndex = 0
                OptionsImage.Images = frmInteligent.cxImageList1
              end
              object tmComentarios: TcxDBMemo
                Left = 645
                Top = 153
                DataBinding.DataField = 'mcomentarios'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 19
                OnEnter = EnterControl
                OnExit = SalidaControl
                Height = 46
                Width = 463
              end
              object tcIdStatus: TcxDBLookupComboBox
                Left = 645
                Top = 126
                DataBinding.DataField = 'cIdStatus'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Properties.KeyFieldNames = 'cIdStatus'
                Properties.ListColumns = <
                  item
                    FieldName = 'sDescripcion'
                  end>
                Properties.ListSource = ds_estatus
                Style.HotTrack = False
                TabOrder = 18
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 463
              end
              object cbbEMostrarGuardia: TcxComboBox
                Left = 981
                Top = 37
                ParentFont = False
                Properties.Items.Strings = (
                  'Si'
                  'No')
                Style.HotTrack = False
                TabOrder = 13
                Text = 'cbbEMostrarGuardia'
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 127
              end
              object dxLayoutControl1Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                CaptionOptions.Visible = False
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                Index = -1
              end
              object dxLayoutControl1Item4: TdxLayoutItem
                Parent = dxLayoutControl1Group2
                CaptionOptions.Text = 'Orden de Surtimiento'
                Control = tsOficioAutorizacion
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Item6: TdxLayoutItem
                Parent = dxLayoutControl1Group9
                CaptionOptions.AlignVert = tavTop
                CaptionOptions.Text = 'Descripci'#243'n'
                Control = tmDescripcion
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutControl1Item7: TdxLayoutItem
                Parent = dxLayoutControl1Group5
                AlignHorz = ahClient
                CaptionOptions.Text = 'Cliente'
                Control = tsCliente
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Item5: TdxLayoutItem
                Parent = dxLayoutControl1Group2
                CaptionOptions.Text = 'Pedido Asociado'
                Control = cxPedido
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group9
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
              object dxLayoutControl1Item17: TdxLayoutItem
                Parent = dxLayoutControl1Group5
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = btn1
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group9
                LayoutDirection = ldHorizontal
                Index = 4
                AutoCreated = True
              end
              object dxLayoutControl1Item2: TdxLayoutItem
                Parent = dxLayoutControl1Group11
                CaptionOptions.Text = 'Id Sitio '
                Control = tsNumeroOrden
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group12
                AlignHorz = ahLeft
                AlignVert = avClient
                Index = 0
                AutoCreated = True
              end
              object dxLayoutControl1Item9: TdxLayoutItem
                Parent = dxLayoutControl1Group10
                AlignHorz = ahLeft
                CaptionOptions.Text = 'Inicio Programado'
                Control = tdFechaInicio
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Group9: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                Index = 0
                AutoCreated = True
              end
              object dxLayoutControl1Item11: TdxLayoutItem
                Parent = dxLayoutControl1Group4
                AlignHorz = ahLeft
                CaptionOptions.Text = 'Avance Prog. R. D.?'
                Control = lMostrarAvancesP
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Item15: TdxLayoutItem
                Parent = dxLayoutControl1Group7
                AlignHorz = ahClient
                CaptionOptions.Text = 'Sitio/Plataforma'
                Control = tsIdPlataforma
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Group8: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group3
                LayoutDirection = ldHorizontal
                Index = 3
                AutoCreated = True
              end
              object dxLayoutControl1Item16: TdxLayoutItem
                Parent = dxLayoutControl1Group8
                AlignHorz = ahClient
                CaptionOptions.Text = 'Pernocta en'
                Control = tsIdPernocta
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Item20: TdxLayoutItem
                Parent = dxLayoutControl1Group8
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = btnPernocta
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Item19: TdxLayoutItem
                Parent = dxLayoutControl1Group7
                CaptionOptions.Text = 'cxButton3'
                CaptionOptions.Visible = False
                Control = btnPlataformas
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Group7: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group3
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
              object dxLayoutControl1Item3: TdxLayoutItem
                Parent = dxLayoutControl1Group9
                AlignHorz = ahClient
                CaptionOptions.Text = 'Descripci'#243'n Corta'
                Control = tsDescripcionCorta
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Group10: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group3
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutControl1Item21: TdxLayoutItem
                Parent = dxLayoutControl1Group1
                CaptionOptions.Text = 'cxDBMemo1'
                CaptionOptions.Visible = False
                Visible = False
                Control = memDatos
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Item22: TdxLayoutItem
                Parent = dxLayoutControl1Group1
                AlignHorz = ahClient
                CaptionOptions.Text = 'cxProgressBar1'
                CaptionOptions.Visible = False
                Visible = False
                Control = Progreso
                ControlOptions.ShowBorder = False
                Index = 2
              end
              object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                Index = 2
                AutoCreated = True
              end
              object dxLayoutControl1Item25: TdxLayoutItem
                Parent = dxLayoutControl1Group1
                AlignHorz = ahClient
                CaptionOptions.Text = 'cxLabel3'
                CaptionOptions.Visible = False
                Visible = False
                Control = lblDetalles
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Item1: TdxLayoutItem
                Parent = dxLayoutControl1Group11
                AlignHorz = ahClient
                CaptionOptions.Text = 'Titulo Sitio'
                Control = tsIdFolio
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Group11: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group9
                LayoutDirection = ldHorizontal
                Index = 0
                AutoCreated = True
              end
              object dxLayoutControl1Item10: TdxLayoutItem
                Parent = dxLayoutControl1Group10
                CaptionOptions.Text = 'Fin Programado'
                Control = tdFechaFinal
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Item8: TdxLayoutItem
                Parent = dxLayoutControl1Group6
                AlignHorz = ahClient
                CaptionOptions.Text = 'Cuenta/Proyecto'
                Control = tsNumeroCuenta
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl1Item18: TdxLayoutItem
                Parent = dxLayoutControl1Group6
                CaptionOptions.Text = 'cxButton2'
                CaptionOptions.Visible = False
                Control = btn2
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group9
                LayoutDirection = ldHorizontal
                Index = 5
                AutoCreated = True
              end
              object dxLayoutControl1Item12: TdxLayoutItem
                Parent = dxLayoutControl1Group12
                CaptionOptions.AlignVert = tavTop
                CaptionOptions.Text = 'Comentarios'
                Control = tmComentarios
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Group12: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group_Root
                AlignHorz = ahLeft
                Index = 1
                AutoCreated = True
              end
              object dxLayoutControl1Item13: TdxLayoutItem
                Parent = dxLayoutControl1Group3
                CaptionOptions.Text = 'Estatus'
                Control = tcIdStatus
                ControlOptions.ShowBorder = False
                Index = 4
              end
              object dxLayoutControl1Item14: TdxLayoutItem
                Parent = dxLayoutControl1Group4
                AlignHorz = ahLeft
                CaptionOptions.Text = 'Mostrar en Guardia:  '
                Padding.Left = 30
                Padding.AssignedValues = [lpavLeft]
                Control = cbbEMostrarGuardia
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl1Group3
                LayoutDirection = ldHorizontal
                Index = 1
                AutoCreated = True
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = 'Formato de Reporte Diario'
            ImageIndex = 1
            object dxLayoutControl2: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 1260
              Height = 217
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object tsFormato: TcxDBTextEdit
                Left = 120
                Top = 10
                DataBinding.DataField = 'sFormato'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 0
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 225
              end
              object tiJornada: TcxDBTextEdit
                Left = 120
                Top = 37
                DataBinding.DataField = 'iJornada'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 1
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 65
              end
              object tiConsecutivo: TcxDBTextEdit
                Left = 120
                Top = 64
                DataBinding.DataField = 'iConsecutivo'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 2
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 65
              end
              object tiConsecutivoTierra: TcxDBTextEdit
                Left = 120
                Top = 91
                DataBinding.DataField = 'iConsecutivoTierra'
                DataBinding.DataSource = ds_ordenesdetrabajo
                ParentFont = False
                Style.HotTrack = False
                TabOrder = 4
                OnEnter = EnterControl
                OnExit = SalidaControl
                OnKeyUp = GlobalKeyUp
                Width = 65
              end
              object progreso2: TcxProgressBar
                Left = 191
                Top = 64
                ParentFont = False
                TabOrder = 3
                Width = 154
              end
              object dxLayoutControl2Group_Root: TdxLayoutGroup
                AlignHorz = ahLeft
                AlignVert = avTop
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                Index = -1
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignVert = avClient
                CaptionOptions.Text = 'Formato'
                Control = tsFormato
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Jornada'
                Control = tiJornada
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl2Item3: TdxLayoutItem
                Parent = dxLayoutControl2Group1
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Consecutivo'
                Control = tiConsecutivo
                ControlOptions.ShowBorder = False
                Index = 0
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                Parent = dxLayoutControl2Group_Root
                AlignHorz = ahLeft
                AlignVert = avClient
                CaptionOptions.Text = 'Consecutivo Tierra'
                Control = tiConsecutivoTierra
                ControlOptions.ShowBorder = False
                Index = 3
              end
              object dxLayoutControl2Item5: TdxLayoutItem
                Parent = dxLayoutControl2Group1
                CaptionOptions.Text = 'cxProgressBar1'
                CaptionOptions.Visible = False
                Visible = False
                Control = progreso2
                ControlOptions.ShowBorder = False
                Index = 1
              end
              object dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup
                Parent = dxLayoutControl2Group_Root
                AlignVert = avClient
                LayoutDirection = ldHorizontal
                Index = 2
                AutoCreated = True
              end
            end
          end
          object cxTabSheet3: TcxTabSheet
            Caption = 'Impresi'#243'n de Reporte Diario'
            ImageIndex = 2
            object dxLayoutControl3: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 1260
              Height = 217
              Align = alClient
              TabOrder = 0
              LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
              object sPageControl1: TcxPageControl
                Left = 10
                Top = 10
                Width = 1240
                Height = 197
                Color = 14803425
                ParentBackground = False
                ParentColor = False
                TabOrder = 0
                Properties.ActivePage = pgContenido
                Properties.CustomButtons.Buttons = <>
                ClientRectBottom = 195
                ClientRectLeft = 2
                ClientRectRight = 1238
                ClientRectTop = 29
                object pgContenido: TcxTabSheet
                  Caption = 'Contenido'
                  ImageIndex = 0
                  object dxLayoutControl4: TdxLayoutControl
                    Left = 0
                    Top = 0
                    Width = 1236
                    Height = 166
                    Align = alClient
                    TabOrder = 0
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object ChkReal: TcxDBCheckBox
                      Left = 10
                      Top = 10
                      Caption = 'Avance Frente Trabajo'
                      DataBinding.DataField = 'bAvanceFrente'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 0
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 271
                    end
                    object ChkProg: TcxDBCheckBox
                      Left = 10
                      Top = 35
                      Caption = 'Avance General Contrato'
                      DataBinding.DataField = 'bAvanceContrato'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 1
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 271
                    end
                    object chkComent: TcxDBCheckBox
                      Left = 10
                      Top = 60
                      Caption = 'Comentarios'
                      DataBinding.DataField = 'bComentarios'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 2
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 271
                    end
                    object ChkPermiso: TcxDBCheckBox
                      Left = 287
                      Top = 10
                      Caption = 'Permisos'
                      DataBinding.DataField = 'bPermisos'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 3
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 271
                    end
                    object DBCheckBox1: TcxDBCheckBox
                      Left = 287
                      Top = 35
                      Caption = 'Tipo Administracion'
                      DataBinding.DataField = 'bTipoAdmon'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 4
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 271
                    end
                    object dxLayoutControl4Group_Root: TdxLayoutGroup
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutControl4Item1: TdxLayoutItem
                      Parent = dxLayoutControl4Group1
                      AlignVert = avTop
                      CaptionOptions.Text = 'cxDBCheckBox1'
                      CaptionOptions.Visible = False
                      Control = ChkReal
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutControl4Item2: TdxLayoutItem
                      Parent = dxLayoutControl4Group1
                      CaptionOptions.Text = 'cxDBCheckBox2'
                      CaptionOptions.Visible = False
                      Control = ChkProg
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutControl4Item3: TdxLayoutItem
                      Parent = dxLayoutControl4Group1
                      CaptionOptions.Text = 'cxDBCheckBox3'
                      CaptionOptions.Visible = False
                      Control = chkComent
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                    object dxLayoutControl4Item4: TdxLayoutItem
                      Parent = dxLayoutControl4Group2
                      CaptionOptions.Text = 'cxDBCheckBox4'
                      CaptionOptions.Visible = False
                      Control = ChkPermiso
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutControl4Group1: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutControl4Group_Root
                      Index = 0
                      AutoCreated = True
                    end
                    object dxLayoutControl4Item5: TdxLayoutItem
                      Parent = dxLayoutControl4Group2
                      CaptionOptions.Text = 'cxDBCheckBox5'
                      CaptionOptions.Visible = False
                      Control = DBCheckBox1
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutControl4Group_Root
                      Index = 1
                      AutoCreated = True
                    end
                  end
                end
                object pgConfiguracion: TcxTabSheet
                  Caption = 'Setup'
                  ImageIndex = 1
                  object dxLayoutControl7: TdxLayoutControl
                    Left = 0
                    Top = 0
                    Width = 1236
                    Height = 166
                    Align = alClient
                    TabOrder = 0
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object ChkCostaFuera: TcxDBCheckBox
                      Left = 10
                      Top = 10
                      Caption = 'Costa Fuera'
                      DataBinding.DataField = 'bCostaFuera'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 0
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 255
                    end
                    object chkImprimeAct: TcxDBCheckBox
                      Left = 10
                      Top = 35
                      Caption = 'Imprime como Actividad'
                      DataBinding.DataField = 'sTipoImpresionActividad'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 1
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 255
                    end
                    object ChkAvReal: TcxDBCheckBox
                      Left = 10
                      Top = 60
                      Caption = 'Av. Real Tipo Administrativa'
                      DataBinding.DataField = 'sTipoAvanceAdmon'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 2
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 255
                    end
                    object RxDBCalcEdit1: TcxDBCalcEdit
                      Left = 348
                      Top = 10
                      DataBinding.DataField = 'iNiveles'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Style.HotTrack = False
                      TabOrder = 3
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 74
                    end
                    object iDecimales: TcxDBCalcEdit
                      Left = 348
                      Top = 37
                      DataBinding.DataField = 'iDecimales'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      Enabled = False
                      ParentFont = False
                      Style.HotTrack = False
                      TabOrder = 4
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 74
                    end
                    object dxLayoutControl7Group_Root: TdxLayoutGroup
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutControl7Item1: TdxLayoutItem
                      Parent = dxLayoutControl7Group1
                      CaptionOptions.Text = 'cxDBCheckBox1'
                      CaptionOptions.Visible = False
                      Control = ChkCostaFuera
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutControl7Item2: TdxLayoutItem
                      Parent = dxLayoutControl7Group1
                      CaptionOptions.Text = 'cxDBCheckBox2'
                      CaptionOptions.Visible = False
                      Control = chkImprimeAct
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutControl7Item3: TdxLayoutItem
                      Parent = dxLayoutControl7Group1
                      CaptionOptions.Text = 'cxDBCheckBox3'
                      CaptionOptions.Visible = False
                      Control = ChkAvReal
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                    object dxLayoutControl7Item4: TdxLayoutItem
                      Parent = dxLayoutControl7Group2
                      AlignHorz = ahLeft
                      CaptionOptions.Text = 'No. Paquetes'
                      Control = RxDBCalcEdit1
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutControl7Group1: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutControl7Group_Root
                      Index = 0
                      AutoCreated = True
                    end
                    object dxLayoutControl7Item5: TdxLayoutItem
                      Parent = dxLayoutControl7Group2
                      AlignHorz = ahLeft
                      CaptionOptions.Text = 'Decimales'
                      Control = iDecimales
                      ControlOptions.ShowBorder = False
                      Enabled = False
                      Index = 1
                    end
                    object dxLayoutControl7Group2: TdxLayoutAutoCreatedGroup
                      Parent = dxLayoutControl7Group_Root
                      AlignHorz = ahLeft
                      Index = 1
                      AutoCreated = True
                    end
                  end
                end
                object pgImpresion: TcxTabSheet
                  Caption = 'Impresion'
                  ImageIndex = 2
                  object dxLayoutControl6: TdxLayoutControl
                    Left = 0
                    Top = 0
                    Width = 1236
                    Height = 166
                    Align = alClient
                    TabOrder = 0
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object ChkImprimeProgramado: TcxDBCheckBox
                      Left = 10
                      Top = 10
                      Caption = 'Imprime Programado'
                      DataBinding.DataField = 'lImprimeProgramado'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 0
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 199
                    end
                    object ChkImprimeFisico: TcxDBCheckBox
                      Left = 10
                      Top = 35
                      Caption = 'Imprime Fisico'
                      DataBinding.DataField = 'lImprimeFisico'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 1
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 199
                    end
                    object ChkImprimePlaticas: TcxDBCheckBox
                      Left = 10
                      Top = 60
                      Caption = 'Imprime Platicas de Seguridad'
                      DataBinding.DataField = 'lImprimePlaticas'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 2
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 199
                    end
                    object dxLayoutControl6Group_Root: TdxLayoutGroup
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutControl6Item1: TdxLayoutItem
                      Parent = dxLayoutControl6Group_Root
                      CaptionOptions.Text = 'cxDBCheckBox1'
                      CaptionOptions.Visible = False
                      Control = ChkImprimeProgramado
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutControl6Item2: TdxLayoutItem
                      Parent = dxLayoutControl6Group_Root
                      CaptionOptions.Text = 'cxDBCheckBox2'
                      CaptionOptions.Visible = False
                      Control = ChkImprimeFisico
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutControl6Item3: TdxLayoutItem
                      Parent = dxLayoutControl6Group_Root
                      CaptionOptions.Text = 'cxDBCheckBox3'
                      CaptionOptions.Visible = False
                      Control = ChkImprimePlaticas
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                  end
                end
                object pgHistorialPartidas: TcxTabSheet
                  Caption = 'Historial Partidas'
                  ImageIndex = 3
                  object dxLayoutControl5: TdxLayoutControl
                    Left = 0
                    Top = 0
                    Width = 329
                    Height = 166
                    Align = alLeft
                    TabOrder = 0
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object cxLabel1: TcxLabel
                      Left = 10
                      Top = 10
                      Caption = 'Reportes Diarios'
                      ParentFont = False
                      Style.HotTrack = False
                    end
                    object ChkMostrarPartidasReportes: TcxDBCheckBox
                      Left = 10
                      Top = 33
                      Caption = 'Partidas Anteriores'
                      DataBinding.DataField = 'lMostrarPartidasReportes'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 1
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 175
                    end
                    object TFechaIniPReportes: TcxDBDateEdit
                      Left = 44
                      Top = 58
                      DataBinding.DataField = 'dFechaIniPReportes'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Style.HotTrack = False
                      TabOrder = 2
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 141
                    end
                    object TFechaFinPReportes: TcxDBDateEdit
                      Left = 44
                      Top = 85
                      DataBinding.DataField = 'dFechaFinPReportes'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Style.HotTrack = False
                      TabOrder = 3
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 141
                    end
                    object dxLayoutControl5Group_Root: TdxLayoutGroup
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutControl5Item1: TdxLayoutItem
                      Parent = dxLayoutControl5Group_Root
                      CaptionOptions.Text = 'cxLabel1'
                      CaptionOptions.Visible = False
                      Control = cxLabel1
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutControl5Item2: TdxLayoutItem
                      Parent = dxLayoutControl5Group_Root
                      CaptionOptions.Text = 'cxDBCheckBox1'
                      CaptionOptions.Visible = False
                      Control = ChkMostrarPartidasReportes
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutControl5Item3: TdxLayoutItem
                      Parent = dxLayoutControl5Group_Root
                      CaptionOptions.Text = 'Inicio'
                      Control = TFechaIniPReportes
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                    object dxLayoutControl5Item4: TdxLayoutItem
                      Parent = dxLayoutControl5Group_Root
                      CaptionOptions.Text = 'Final'
                      Control = TFechaFinPReportes
                      ControlOptions.ShowBorder = False
                      Index = 3
                    end
                  end
                  object dxLayoutControl8: TdxLayoutControl
                    Left = 329
                    Top = 0
                    Width = 907
                    Height = 166
                    Align = alClient
                    TabOrder = 1
                    LayoutLookAndFeel = connection.dxLayoutSkinLookAndFeel1
                    object cxLabel2: TcxLabel
                      Left = 10
                      Top = 10
                      Caption = 'Generadores'
                      ParentFont = False
                      Style.HotTrack = False
                    end
                    object DBCheckBox2: TcxDBCheckBox
                      Left = 10
                      Top = 33
                      Caption = 'Partidas Anteriores'
                      DataBinding.DataField = 'lMostrarPartidasGeneradores'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Properties.ValueChecked = 'Si'
                      Properties.ValueUnchecked = 'No'
                      Style.HotTrack = False
                      TabOrder = 1
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 151
                    end
                    object TFechaIniGeneradores: TcxDBDateEdit
                      Left = 44
                      Top = 58
                      DataBinding.DataField = 'dFechaIniPGeneradores'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Style.HotTrack = False
                      TabOrder = 2
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 117
                    end
                    object TFechaFinGeneradores: TcxDBDateEdit
                      Left = 44
                      Top = 85
                      DataBinding.DataField = 'dFechaFinPGeneradores'
                      DataBinding.DataSource = ds_ordenesdetrabajo
                      ParentFont = False
                      Style.HotTrack = False
                      TabOrder = 3
                      OnEnter = EnterControl
                      OnExit = SalidaControl
                      OnKeyUp = GlobalKeyUp
                      Width = 117
                    end
                    object dxLayoutControl8Group_Root: TdxLayoutGroup
                      AlignHorz = ahLeft
                      AlignVert = avTop
                      ButtonOptions.Buttons = <>
                      Hidden = True
                      ShowBorder = False
                      Index = -1
                    end
                    object dxLayoutControl8Item1: TdxLayoutItem
                      Parent = dxLayoutControl8Group_Root
                      CaptionOptions.Text = 'cxLabel2'
                      CaptionOptions.Visible = False
                      Control = cxLabel2
                      ControlOptions.ShowBorder = False
                      Index = 0
                    end
                    object dxLayoutControl8Item2: TdxLayoutItem
                      Parent = dxLayoutControl8Group_Root
                      CaptionOptions.Text = 'cxDBCheckBox2'
                      CaptionOptions.Visible = False
                      Control = DBCheckBox2
                      ControlOptions.ShowBorder = False
                      Index = 1
                    end
                    object dxLayoutControl8Item3: TdxLayoutItem
                      Parent = dxLayoutControl8Group_Root
                      CaptionOptions.Text = 'Inicio'
                      Control = TFechaIniGeneradores
                      ControlOptions.ShowBorder = False
                      Index = 2
                    end
                    object dxLayoutControl8Item4: TdxLayoutItem
                      Parent = dxLayoutControl8Group_Root
                      CaptionOptions.Text = 'Final'
                      Control = TFechaFinGeneradores
                      ControlOptions.ShowBorder = False
                      Index = 3
                    end
                  end
                end
              end
              object dxLayoutControl3Group_Root: TdxLayoutGroup
                AlignHorz = ahClient
                AlignVert = avClient
                ButtonOptions.Buttons = <>
                Hidden = True
                Padding.AssignedValues = [lpavTop]
                ShowBorder = False
                Index = -1
              end
              object dxLayoutControl3Item1: TdxLayoutItem
                Parent = dxLayoutControl3Group_Root
                AlignHorz = ahClient
                AlignVert = avClient
                CaptionOptions.Text = 'cxPageControl1'
                CaptionOptions.Visible = False
                Control = sPageControl1
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
                Index = 0
              end
            end
          end
        end
        object dxLayoutControl9Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl9Item1: TdxLayoutItem
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Text = 'cxPageControl1'
          CaptionOptions.Visible = False
          Control = cxPageControl1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 72
    Height = 496
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alLeft
    TabOrder = 3
    ExplicitWidth = 72
    ExplicitHeight = 496
    inherited AdvPanel1: TAdvPanel
      Width = 72
      Height = 496
      ExplicitWidth = 72
      ExplicitHeight = 496
      FullHeight = 0
      inherited btnEdit: TcxButton
        OnClick = frmBarra1btnEditClick
      end
      inherited btnPost: TcxButton
        OnClick = frmBarra1btnPostClick
      end
      inherited btnCancel: TcxButton
        OnClick = frmBarra1btnCancelClick
      end
      inherited btnDelete: TcxButton
        OnClick = frmBarra1btnDeleteClick
      end
      inherited btnRefresh: TcxButton
        OnClick = frmBarra1btnRefreshClick
      end
      inherited btnExit: TcxButton
        OnClick = frmBarra1btnExitClick
      end
      inherited btnAdd: TcxButton
        OnClick = frmBarra1btnAddClick
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
        494C010108000900600010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object ds_estatus: TDataSource
    AutoEdit = False
    DataSet = Estatus
    Left = 832
    Top = 99
  end
  object ds_tiposdeorden: TDataSource
    AutoEdit = False
    DataSet = TiposdeOrden
    Left = 704
    Top = 34
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = OrdenesdeTrabajo
    Left = 556
    Top = 80
  end
  object PopupPrincipal: TPopupMenu
    Images = connection.IconosBarra
    Left = 441
    Top = 112
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16429
      OnClick = frmBarra1btnAddClick
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16453
      OnClick = frmBarra1btnEditClick
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
      OnClick = frmBarra1btnPostClick
    end
    object Can1: TMenuItem
      Tag = 9
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 122
      OnClick = frmBarra1btnCancelClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
      OnClick = frmBarra1btnDeleteClick
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
      OnClick = frmBarra1btnRefreshClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
      OnClick = frmBarra1btnExitClick
    end
  end
  object OrdenesdeTrabajo: TZQuery
    Connection = connection.zConnection
    BeforePost = OrdenesdeTrabajoBeforePost
    SQL.Strings = (
      
        'Select * from ordenesdetrabajo Where sContrato = :Contrato Order' +
        ' By sIdFolio, sNumeroOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 600
    Top = 77
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object OrdenesdeTrabajosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object OrdenesdeTrabajosIdFolio: TStringField
      FieldName = 'sIdFolio'
      Required = True
      Size = 35
    end
    object OrdenesdeTrabajosNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object OrdenesdeTrabajosDescripcionCorta: TStringField
      FieldName = 'sDescripcionCorta'
      Required = True
      Size = 200
    end
    object OrdenesdeTrabajosOficioAutorizacion: TStringField
      FieldName = 'sOficioAutorizacion'
      Required = True
      Size = 100
    end
    object OrdenesdeTrabajomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object OrdenesdeTrabajosIdTipoOrden: TStringField
      FieldName = 'sIdTipoOrden'
      Required = True
      Size = 4
    end
    object OrdenesdeTrabajosApoyo: TStringField
      FieldName = 'sApoyo'
      Required = True
      Size = 10
    end
    object OrdenesdeTrabajosIdPlataforma: TStringField
      FieldName = 'sIdPlataforma'
      Required = True
      Size = 10
    end
    object OrdenesdeTrabajosIdPernocta: TStringField
      FieldName = 'sIdPernocta'
      Required = True
      Size = 10
    end
    object OrdenesdeTrabajodFiProgramado: TDateField
      FieldName = 'dFiProgramado'
      Required = True
    end
    object OrdenesdeTrabajodFfProgramado: TDateField
      FieldName = 'dFfProgramado'
      Required = True
    end
    object OrdenesdeTrabajocIdStatus: TStringField
      FieldName = 'cIdStatus'
      Required = True
      Size = 1
    end
    object OrdenesdeTrabajomComentarios: TMemoField
      FieldName = 'mComentarios'
      BlobType = ftMemo
    end
    object OrdenesdeTrabajosFormato: TStringField
      FieldName = 'sFormato'
      Required = True
      Size = 30
    end
    object OrdenesdeTrabajoiConsecutivo: TIntegerField
      FieldName = 'iConsecutivo'
      Required = True
      OnSetText = OrdenesdeTrabajoiConsecutivoSetText
    end
    object OrdenesdeTrabajoiConsecutivoTierra: TIntegerField
      FieldName = 'iConsecutivoTierra'
      Required = True
      OnSetText = OrdenesdeTrabajoiConsecutivoTierraSetText
    end
    object OrdenesdeTrabajoiJornada: TIntegerField
      FieldName = 'iJornada'
      Required = True
      OnSetText = OrdenesdeTrabajoiJornadaSetText
    end
    object OrdenesdeTrabajolGeneraAnexo: TStringField
      FieldName = 'lGeneraAnexo'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajolGeneraConsumibles: TStringField
      FieldName = 'lGeneraConsumibles'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajolGeneraPersonal: TStringField
      FieldName = 'lGeneraPersonal'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajolGeneraEquipo: TStringField
      FieldName = 'lGeneraEquipo'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajosDepsolicitante: TStringField
      FieldName = 'sDepsolicitante'
      Size = 45
    end
    object OrdenesdeTrabajodFechaInicioT: TDateField
      FieldName = 'dFechaInicioT'
    end
    object OrdenesdeTrabajodFechaSitioM: TDateField
      FieldName = 'dFechaSitioM'
    end
    object OrdenesdeTrabajosEquipo: TStringField
      FieldName = 'sEquipo'
    end
    object OrdenesdeTrabajosPozo: TStringField
      FieldName = 'sPozo'
    end
    object OrdenesdeTrabajodFechaElaboracion: TDateField
      FieldName = 'dFechaElaboracion'
    end
    object OrdenesdeTrabajosPuestoPep: TStringField
      FieldName = 'sPuestoPep'
      Size = 60
    end
    object OrdenesdeTrabajosFirmantePep: TStringField
      FieldName = 'sFirmantePep'
      Size = 60
    end
    object OrdenesdeTrabajosPuestocia: TStringField
      FieldName = 'sPuestocia'
      Size = 60
    end
    object OrdenesdeTrabajosFirmantecia: TStringField
      FieldName = 'sFirmantecia'
      Size = 60
    end
    object OrdenesdeTrabajolMostrarAvanceProgramado: TStringField
      FieldName = 'lMostrarAvanceProgramado'
      Size = 2
    end
    object OrdenesdeTrabajosTipoOrden: TStringField
      FieldName = 'sTipoOrden'
    end
    object OrdenesdeTrabajobAvanceFrente: TStringField
      FieldName = 'bAvanceFrente'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajobAvanceContrato: TStringField
      FieldName = 'bAvanceContrato'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajobComentarios: TStringField
      FieldName = 'bComentarios'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajobPermisos: TStringField
      FieldName = 'bPermisos'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajobTipoAdmon: TStringField
      FieldName = 'bTipoAdmon'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajobCostaFuera: TStringField
      FieldName = 'bCostaFuera'
      Size = 2
    end
    object OrdenesdeTrabajosTipoPrograma: TStringField
      FieldName = 'sTipoPrograma'
      Required = True
      Size = 21
    end
    object OrdenesdeTrabajosTipoImpresionActividad: TStringField
      FieldName = 'sTipoImpresionActividad'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajosTipoAvanceAdmon: TStringField
      FieldName = 'sTipoAvanceAdmon'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajoiDecimales: TIntegerField
      FieldName = 'iDecimales'
      Required = True
    end
    object OrdenesdeTrabajoiNiveles: TIntegerField
      FieldName = 'iNiveles'
      Required = True
    end
    object OrdenesdeTrabajolImprimeProgramado: TStringField
      FieldName = 'lImprimeProgramado'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajolImprimeFisico: TStringField
      FieldName = 'lImprimeFisico'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajolImprimePlaticas: TStringField
      FieldName = 'lImprimePlaticas'
      Required = True
      Size = 2
    end
    object OrdenesdeTrabajolMostrarPartidasReportes: TStringField
      FieldName = 'lMostrarPartidasReportes'
      Required = True
      Size = 10
    end
    object OrdenesdeTrabajolMostrarPartidasGeneradores: TStringField
      FieldName = 'lMostrarPartidasGeneradores'
      Required = True
      Size = 10
    end
    object OrdenesdeTrabajodFechaIniPReportes: TDateField
      FieldName = 'dFechaIniPReportes'
    end
    object OrdenesdeTrabajodFechaFinPReportes: TDateField
      FieldName = 'dFechaFinPReportes'
    end
    object OrdenesdeTrabajodFechaIniPGeneradores: TDateField
      FieldName = 'dFechaIniPGeneradores'
    end
    object OrdenesdeTrabajodFechaFinPGeneradores: TDateField
      FieldName = 'dFechaFinPGeneradores'
    end
    object OrdenesdeTrabajosPedidoAsociado: TStringField
      FieldName = 'sPedidoAsociado'
      Required = True
      Size = 100
    end
    object OrdenesdeTrabajosIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object OrdenesdeTrabajosNombreCuenta: TStringField
      FieldKind = fkLookup
      FieldName = 'sNombreCuenta'
      LookupDataSet = zQCuentasBancarias
      LookupKeyFields = 'sIdNumeroCuenta'
      LookupResultField = 'sNombreCuenta'
      KeyFields = 'sIdNumeroCuenta'
      Size = 50
      Lookup = True
    end
    object OrdenesdeTrabajosDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'sDescripcion'
      LookupDataSet = pernoctan
      LookupKeyFields = 'sIdPernocta'
      LookupResultField = 'sDescripcion'
      KeyFields = 'sIdPernocta'
      Size = 50
      Lookup = True
    end
    object OrdenesdeTrabajosIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object strngfldOrdenesdeTrabajoeMostrarGuardia: TStringField
      FieldName = 'eMostrarGuardia'
      Size = 2
    end
  end
  object TiposdeOrden: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from tiposdeorden order by sIdTipoOrden')
    Params = <>
    Left = 744
    Top = 53
  end
  object Estatus: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * from estatus order by sDescripcion')
    Params = <>
    Left = 864
    Top = 101
  end
  object ds_Plataformas: TDataSource
    AutoEdit = False
    DataSet = Plataformas
    Left = 832
    Top = 67
  end
  object Plataformas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select sIdPlataforma, sDescripcion'
      'from plataformas'
      'where lStatus = '#39'Activa'#39
      'order by sDescripcion')
    Params = <>
    Left = 864
    Top = 61
  end
  object ds_Pernoctan: TDataSource
    AutoEdit = False
    DataSet = pernoctan
    Left = 832
    Top = 35
  end
  object pernoctan: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sIdPernocta, sDescripcion from pernoctan order by sDescri' +
        'pcion')
    Params = <>
    Left = 864
    Top = 29
  end
  object dszQCuentasBancarias: TDataSource
    AutoEdit = False
    DataSet = zQCuentasBancarias
    Left = 835
    Top = 129
  end
  object zQCuentasBancarias: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select * from con_cuentasbancarias Where sidCompaniaConf =:Contr' +
        'ato order by sIdNumeroCuenta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 864
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object zQCuentasBancariassIdNumeroCuenta: TStringField
      DisplayLabel = 'No. de Cuenta'
      DisplayWidth = 25
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zQCuentasBancariassNombreCuenta: TStringField
      DisplayLabel = 'Nombre de Cuenta'
      DisplayWidth = 50
      FieldName = 'sNombreCuenta'
      Required = True
      Size = 50
    end
    object zQCuentasBancariassFirmanCuenta: TStringField
      DisplayLabel = 'Firman Cuenta'
      DisplayWidth = 61
      FieldName = 'sFirmanCuenta'
      Required = True
      Size = 100
    end
    object zQCuentasBancariassInterbancaria: TStringField
      FieldName = 'sInterbancaria'
      Required = True
      Size = 35
    end
    object strngfldQCuentasBancariassFolioCheque: TStringField
      FieldName = 'sFolioCheque'
      Size = 12
    end
    object strngfldQCuentasBancariassFolioSinCheque: TStringField
      FieldName = 'sFolioSinCheque'
      Size = 12
    end
  end
  object dzQCliente: TDataSource
    AutoEdit = False
    DataSet = zQClientes
    Left = 835
    Top = 161
  end
  object zQClientes: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sIdCompania, sRazonSocial from con_companias Where sIdCom' +
        'pania=:Contrato order by sRazonSocial')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 864
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object zQClientessIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object zQClientessRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
  end
  object FormAutoScaler1: TFormAutoScaler
    Left = 584
    Top = 152
    DesignDPI = 96
    DesignHeight = 496
    DesignWidth = 1360
    DesignTextHeight = 14
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
    Left = 648
    Top = 248
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
      OnClick = frmBarra1btnAddClick
      AutoGrayScale = False
    end
    object dxEditar: TdxBarLargeButton
      Tag = 1
      Caption = '&Editar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 1
      ShortCut = 16453
      OnClick = frmBarra1btnEditClick
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
      OnClick = frmBarra1btnPostClick
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
      OnClick = frmBarra1btnCancelClick
      AutoGrayScale = False
    end
    object dxEliminar: TdxBarLargeButton
      Tag = 1
      Caption = 'Eliminar'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 4
      ShortCut = 16452
      OnClick = frmBarra1btnDeleteClick
      AutoGrayScale = False
    end
    object dxRefrescar: TdxBarLargeButton
      Tag = 1
      Caption = 'Actualizar'
      Category = 1
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 116
      OnClick = frmBarra1btnRefreshClick
      AutoGrayScale = False
    end
    object dxSalir: TdxBarLargeButton
      Tag = 1
      Caption = 'Salir'
      Category = 1
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 16472
      OnClick = frmBarra1btnExitClick
      AutoGrayScale = False
    end
    object dxImprimir: TdxBarLargeButton
      Tag = 1
      Caption = 'Imprimir'
      Category = 1
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 5
      AutoGrayScale = False
    end
  end
end
